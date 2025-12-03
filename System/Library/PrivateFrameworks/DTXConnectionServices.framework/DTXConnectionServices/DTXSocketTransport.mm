@interface DTXSocketTransport
- (DTXSocketTransport)initWithRemoteAddress:(id)address;
- (id)localAddresses;
- (unint64_t)transmit:(const void *)transmit ofLength:(unint64_t)length;
- (void)_commonSocketTransportInit;
- (void)_setupWithLocalPort:(int)port;
- (void)_signalSocketAccepted;
- (void)disconnect;
@end

@implementation DTXSocketTransport

- (void)_setupWithLocalPort:(int)port
{
  v5 = socket(30, 1, 6);
  if ((v5 & 0x80000000) != 0 || (v6 = v5, fcntl(v5, 2, 1) == -1))
  {
    sub_247F5A270();
  }

  v12 = 1;
  if (setsockopt(v6, 0xFFFF, 4, &v12, 4u))
  {
    sub_247F5A1EC();
  }

  *v10 = 7708;
  *&v10[2] = bswap32(port) >> 16;
  *&v10[4] = 0;
  *&v10[8] = *MEMORY[0x277D85EE8];
  v11 = 0;
  if (bind(v6, v10, 0x1Cu))
  {
    sub_247F5A218();
  }

  if (listen(v6, 1))
  {
    sub_247F5A244();
  }

  self->_port = sub_247F4D6FC(v6);
  atomic_store(v6, &self->_socketSemProtector);
  dispatch_semaphore_wait(self->_socketAcceptedSem, 0xFFFFFFFFFFFFFFFFLL);
  v7 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247F4D760;
  block[3] = &unk_278EEEF38;
  v9 = v6;
  block[4] = self;
  dispatch_async(v7, block);
}

- (void)_commonSocketTransportInit
{
  v3 = dispatch_semaphore_create(1);
  socketAcceptedSem = self->_socketAcceptedSem;
  self->_socketAcceptedSem = v3;

  atomic_store(0xFFFFFFFF, &self->_socketSemProtector);
}

- (void)_signalSocketAccepted
{
  v3 = atomic_exchange(&self->_socketSemProtector, 0xFFFFFFFF);
  if (v3 != -1 && self->_socketAcceptedSem)
  {
    close(v3);
    socketAcceptedSem = self->_socketAcceptedSem;

    dispatch_semaphore_signal(socketAcceptedSem);
  }
}

- (DTXSocketTransport)initWithRemoteAddress:(id)address
{
  addressCopy = address;
  v46.receiver = self;
  v46.super_class = DTXSocketTransport;
  v6 = [(DTXTransport *)&v46 initWithRemoteAddress:addressCopy];
  v9 = v6;
  if (v6)
  {
    objc_msgSend__commonSocketTransportInit(v6, v7, v8);
    memset(&v45.ai_addrlen, 0, 32);
    v45.ai_family = 0;
    v45.ai_flags = 5120;
    *&v45.ai_socktype = 0x600000001;
    v44 = 0;
    v12 = objc_msgSend_host(addressCopy, v10, v11);
    v15 = objc_msgSend_port(addressCopy, v13, v14);
    v18 = objc_msgSend_intValue(v15, v16, v17);

    if (v18)
    {
      v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"%d", v18);
      v21 = v12;
      v24 = objc_msgSend_UTF8String(v21, v22, v23);
      v25 = v20;
      v28 = objc_msgSend_UTF8String(v25, v26, v27);
      v29 = getaddrinfo(v24, v28, &v45, &v44);
      if (v29)
      {
        v42 = gai_strerror(v29);
        NSLog(&cfstr_ErrorFindingAd.isa, addressCopy, v42);
      }

      else
      {
        for (i = v44; i; i = i->ai_next)
        {
          v34 = socket(i->ai_family, i->ai_socktype, i->ai_protocol);
          if ((v34 & 0x80000000) == 0)
          {
            v35 = v34;
            if (fcntl(v34, 2, 1) != -1 && (connect(v35, i->ai_addr, i->ai_addrlen) & 0x80000000) == 0)
            {
              freeaddrinfo(v44);
              v39 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v38, addressCopy);
              addresses = v9->_addresses;
              v9->_addresses = v39;

              objc_msgSend__setupChannelWithConnectedSocket_assumingOwnership_orDisconnectBlock_(v9, v41, v35, 1, 0);
              goto LABEL_15;
            }

            close(v35);
          }
        }

        v36 = __error();
        v43 = strerror(*v36);
        NSLog(&cfstr_UnableToConnec_0.isa, addressCopy, v43);
      }
    }

    else
    {
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      v32 = NSStringFromSelector(a2);
      NSLog(&cfstr_MissingPortInU.isa, v31, v32, addressCopy);
    }

    v9 = 0;
  }

LABEL_15:

  return v9;
}

- (unint64_t)transmit:(const void *)transmit ofLength:(unint64_t)length
{
  if (objc_msgSend_status(self, a2, transmit) == 2)
  {
    dispatch_semaphore_wait(self->_socketAcceptedSem, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_semaphore_signal(self->_socketAcceptedSem);
  }

  v8.receiver = self;
  v8.super_class = DTXSocketTransport;
  return [(DTXFileDescriptorTransport *)&v8 transmit:transmit ofLength:length];
}

- (void)disconnect
{
  objc_msgSend__signalSocketAccepted(self, a2, v2);
  v4.receiver = self;
  v4.super_class = DTXSocketTransport;
  [(DTXFileDescriptorTransport *)&v4 disconnect];
}

- (id)localAddresses
{
  v21 = *MEMORY[0x277D85DE8];
  addresses = self->_addresses;
  if (addresses)
  {
    v4 = addresses;
  }

  else
  {
    v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
    v19 = 0;
    if (!getifaddrs(&v19))
    {
      v6 = v19;
      if (v19)
      {
        do
        {
          ifa_addr = v6->ifa_addr;
          sa_family = ifa_addr->sa_family;
          if (sa_family == 2 || sa_family == 30 && !*&ifa_addr[1].sa_data[6])
          {
            v9 = sa_family == 2 ? 4 : 8;
            if (inet_ntop(sa_family, &ifa_addr->sa_len + v9, v20, 0x2Eu) == v20)
            {
              v12 = objc_msgSend_port(self, v10, v11);
              v14 = objc_msgSend_addressForHost_port_(DTXSocketTransport, v13, v20, v12);
              objc_msgSend_addObject_(v4, v15, v14);
            }
          }

          v6 = v6->ifa_next;
        }

        while (v6);
        v16 = v19;
      }

      else
      {
        v16 = 0;
      }

      MEMORY[0x24C1C0820](v16);
    }

    objc_storeStrong(&self->_addresses, v4);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

@end