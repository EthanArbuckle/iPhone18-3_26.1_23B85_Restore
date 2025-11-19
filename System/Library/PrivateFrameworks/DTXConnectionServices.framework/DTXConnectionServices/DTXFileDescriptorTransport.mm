@interface DTXFileDescriptorTransport
- (DTXFileDescriptorTransport)init;
- (DTXFileDescriptorTransport)initWithIncomingFilePath:(id)a3 outgoingFilePath:(id)a4 error:(id *)a5;
- (DTXFileDescriptorTransport)initWithXPCRepresentation:(id)a3;
- (id)serializedXPCRepresentation;
- (unint64_t)transmit:(const void *)a3 ofLength:(unint64_t)a4;
- (unsigned)supportedDirections;
- (void)_setupReadSource:(int)a3;
- (void)dealloc;
- (void)disconnect;
@end

@implementation DTXFileDescriptorTransport

- (DTXFileDescriptorTransport)init
{
  v5.receiver = self;
  v5.super_class = DTXFileDescriptorTransport;
  v2 = [(DTXTransport *)&v5 init];
  v3 = v2;
  if (v2)
  {
    sub_247F58778(v2);
  }

  return v3;
}

- (DTXFileDescriptorTransport)initWithIncomingFilePath:(id)a3 outgoingFilePath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v19.receiver = self;
  v19.super_class = DTXFileDescriptorTransport;
  v10 = [(DTXTransport *)&v19 init];
  v11 = v10;
  if (v10)
  {
    sub_247F58778(v10);
    if (v8)
    {
      v14 = sub_247F589C0(v8, 0x1000000, a5);
      if ((v14 & 0x80000000) == 0)
      {
        v15 = v14;
        memset(&v18, 0, sizeof(v18));
        if (fstat(v14, &v18) || !v18.st_size)
        {
          objc_msgSend_disconnect(v11, v12, v16);
        }

        if (!v9)
        {
          goto LABEL_15;
        }

LABEL_11:
        if ((sub_247F589C0(v9, 16778753, a5) & 0x80000000) != 0)
        {
          goto LABEL_16;
        }

LABEL_15:
        objc_msgSend_setupWithIncomingDescriptor_outgoingDescriptor_disconnectBlock_(v11, v12, v15);
        goto LABEL_17;
      }
    }

    else
    {
      if (v9)
      {
        v15 = 0xFFFFFFFFLL;
        goto LABEL_11;
      }

      if (v8 | v9)
      {
        v15 = 0xFFFFFFFFLL;
        goto LABEL_15;
      }
    }

LABEL_16:
    objc_msgSend_disconnect(v11, v12, v13);

    v11 = 0;
  }

LABEL_17:

  return v11;
}

- (void)_setupReadSource:(int)a3
{
  v5 = dispatch_source_create(MEMORY[0x277D85D28], a3, 0, self->_inputQueue);
  if ((a3 & 0x80000000) == 0)
  {
    v6 = fcntl(a3, 3);
    if ((v6 & 4) == 0)
    {
      fcntl(a3, 4, v6 | 4u);
    }
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_247F58CD0;
  v12[3] = &unk_278EEEF38;
  v13 = a3;
  v12[4] = self;
  v7 = MEMORY[0x24C1C0D80](v12);
  v8 = MEMORY[0x24C1C0D80]();
  inputReaderBlock = self->_inputReaderBlock;
  self->_inputReaderBlock = v8;

  dispatch_source_set_event_handler(v5, self->_inputReaderBlock);
  inputSource = self->_inputSource;
  self->_inputSource = v5;
  v11 = v5;

  dispatch_resume(v11);
}

- (DTXFileDescriptorTransport)initWithXPCRepresentation:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DTXFileDescriptorTransport;
  v5 = [(DTXTransport *)&v11 initWithXPCRepresentation:v4];
  v6 = v5;
  if (v5)
  {
    sub_247F58778(v5);
    v7 = xpc_dictionary_dup_fd(v4, "_inFD");
    v8 = xpc_dictionary_dup_fd(v4, "_outFD");
    if ((v7 & 0x80000000) != 0 && v8 < 0)
    {

      v6 = 0;
    }

    else
    {
      objc_msgSend_setupWithIncomingDescriptor_outgoingDescriptor_disconnectBlock_(v6, v9, v7);
    }
  }

  return v6;
}

- (void)dealloc
{
  outputWaitKQ = self->_outputWaitKQ;
  if ((outputWaitKQ & 0x80000000) == 0)
  {
    close(outputWaitKQ);
    self->_outputWaitKQ = -1;
  }

  v4.receiver = self;
  v4.super_class = DTXFileDescriptorTransport;
  [(DTXTransport *)&v4 dealloc];
}

- (id)serializedXPCRepresentation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_247F592D4;
  v10 = sub_247F592E4;
  v11 = 0;
  outputQueue = self->_outputQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_247F592EC;
  v5[3] = &unk_278EEE668;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(outputQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (unint64_t)transmit:(const void *)a3 ofLength:(unint64_t)a4
{
  if (objc_msgSend_status(self, a2, a3) == 1)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_247F595C4;
    v14[3] = &unk_278EEF510;
    v14[4] = self;
    v14[5] = &v15;
    v14[6] = a3;
    v14[7] = a4;
    v7 = MEMORY[0x24C1C0D80](v14);
    while (v7[2](v7) && v16[3] < a4)
    {
      memset(&eventlist, 0, sizeof(eventlist));
      v10 = kevent(self->_outputWaitKQ, 0, 0, &eventlist, 1, 0);
      if (v10 == 1)
      {
        if (eventlist.flags < 0)
        {
          goto LABEL_10;
        }
      }

      else if (*__error() != 4)
      {
        v11 = __error();
        NSLog(&cfstr_KeventFailureN.isa, v10, *v11);
LABEL_10:
        objc_msgSend_disconnect(self, v8, v9);
        break;
      }
    }

    a4 = v16[3];

    _Block_object_dispose(&v15, 8);
  }

  return a4;
}

- (void)disconnect
{
  inputSource = self->_inputSource;
  if (inputSource)
  {
    dispatch_source_cancel(inputSource);
  }

  inputQueue = self->_inputQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247F59854;
  block[3] = &unk_278EEE708;
  block[4] = self;
  dispatch_sync(inputQueue, block);
  v7.receiver = self;
  v7.super_class = DTXFileDescriptorTransport;
  [(DTXTransport *)&v7 disconnect];
  outputQueue = self->_outputQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_247F598BC;
  v6[3] = &unk_278EEE708;
  v6[4] = self;
  dispatch_async(outputQueue, v6);
}

- (unsigned)supportedDirections
{
  outFD = self->_outFD;
  if (self->_inFD < 0)
  {
    if (outFD < 0)
    {
      v7 = v2;
      v8 = v3;
      v6.receiver = self;
      v6.super_class = DTXFileDescriptorTransport;
      return [(DTXTransport *)&v6 supportedDirections];
    }

    else
    {
      return 2;
    }
  }

  else if (outFD < 0)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

@end