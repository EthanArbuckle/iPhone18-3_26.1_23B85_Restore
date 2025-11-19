@interface IDSInterfaceAddress
+ (id)addressesFromInterfaceAddresses:(id)a3;
+ (id)interfaceAddress:(ifaddrs *)a3 eflags:(unint64_t)a4 v6flags:(int)a5 iftype:(int)a6;
+ (id)interfaceAddressWithTransmittedBytes:(char *)a3 length:(int64_t)a4 withLocalInterfaceName:(id)a5;
- (IDSInterfaceAddress)initWithInterfaceAddress:(ifaddrs *)a3 bflags:(unsigned __int8)a4;
- (id)description;
- (int64_t)getTransmittableBytes:(char *)a3 withPrefixByte:(unsigned __int8)a4;
@end

@implementation IDSInterfaceAddress

+ (id)interfaceAddressWithTransmittedBytes:(char *)a3 length:(int64_t)a4 withLocalInterfaceName:(id)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36 = v8;
  v37 = v8;
  v35 = v8;
  memset(v45, 0, sizeof(v45));
  memset(v44, 0, sizeof(v44));
  memset(v43, 0, sizeof(v43));
  if (a4 < 2)
  {
    goto LABEL_34;
  }

  v9 = a3[1];
  if (v9 + 2 > a4)
  {
    goto LABEL_34;
  }

  v10 = *a3;
  if (a3[1])
  {
    if (v9 >= 0x81)
    {
      v11 = [IDSFoundationLog interface:v35];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:

LABEL_34:
        v28 = 0;
        goto LABEL_35;
      }

      *buf = 67109376;
      v40 = v9;
      v41 = 2048;
      v42 = 128;
      v12 = "Error: addr length = %u > sizeof(struct sockaddr_storage) = %lu";
      goto LABEL_7;
    }

    v16 = a3[2];
    if (v16 == 2)
    {
      if (v9 <= 0xF)
      {
        v11 = [IDSFoundationLog interface:v35];
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_9;
        }

        *buf = 67109376;
        v40 = v9;
        v41 = 2048;
        v42 = 16;
        v12 = "Error: addr length = %d < sizeof(struct sockaddr_in) = %lu";
        goto LABEL_7;
      }
    }

    else
    {
      if (v16 != 30)
      {
        v11 = [IDSFoundationLog interface:v35];
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_9;
        }

        *buf = 67109120;
        v40 = v16;
        v12 = "Error: addr sa_family = %d not AF_INET (2) or AF_INET6 (30)";
        goto LABEL_27;
      }

      if (v9 <= 0x1B)
      {
        v11 = [IDSFoundationLog interface:v35];
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_9;
        }

        *buf = 67109376;
        v40 = v9;
        v41 = 2048;
        v42 = 28;
        v12 = "Error: addr length = %d < sizeof(struct sockaddr_in6) = %lu";
        goto LABEL_7;
      }
    }

    v19 = v45 + 1;
    v17 = v9 + 1;
    v15 = v45;
    __memcpy_chk();
    v18 = &v45[1] + 8;
    LOBYTE(v45[0]) = v9;
    BYTE1(v45[0]) = v16;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 2;
    v18 = 24;
    v19 = 1;
  }

  *(&v36 + 1) = v15;
  v20 = &a3[v17];
  v21 = *v20;
  v22 = v17 + 1;
  if (v17 + 1 + v21 > a4)
  {
    goto LABEL_34;
  }

  if (*v20)
  {
    if (v21 >= 0x81)
    {
      v11 = [IDSFoundationLog interface:v35];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      *buf = 67109376;
      v40 = v21;
      v41 = 2048;
      v42 = 128;
      v12 = "Error: netmask length = %u > sizeof(struct sockaddr_storage) = %lu";
      goto LABEL_7;
    }

    v23 = v20[1];
    if (v23 != v16)
    {
      v11 = [IDSFoundationLog interface:v35];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      *buf = 67109376;
      v40 = v23;
      v41 = 1024;
      LODWORD(v42) = BYTE1(v45[0]);
      v12 = "Error: netmask sa_family %d != addr sa_family %d";
      goto LABEL_44;
    }

    if (v21 >= 3)
    {
      v24 = v18;
      __memcpy_chk();
      v18 = v24;
    }

    LOBYTE(v44[0]) = v21;
    BYTE1(v44[0]) = v16;
    *&v37 = v44;
    v22 = v17 + v21;
  }

  else
  {
    *&v37 = 0;
  }

  v25 = &a3[v22];
  v26 = *v25;
  v27 = v22 + 1;
  if (v22 + 1 + v26 > a4)
  {
    goto LABEL_34;
  }

  if (!*v25)
  {
    *(&v37 + 1) = 0;
    goto LABEL_55;
  }

  if (v26 >= 0x81)
  {
    v11 = [IDSFoundationLog interface:v35];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 67109376;
    v40 = v26;
    v41 = 2048;
    v42 = 128;
    v12 = "Error: dstaddr length = %u > sizeof(struct sockaddr_storage) = %lu";
    goto LABEL_7;
  }

  v30 = v25[1];
  if (v30 == 2)
  {
    if (v26 <= 0xF)
    {
      v11 = [IDSFoundationLog interface:v35];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      *buf = 67109376;
      v40 = v26;
      v41 = 2048;
      v42 = 16;
      v12 = "Error: dstaddr length = %d < sizeof(struct sockaddr_in) = %lu";
LABEL_7:
      v13 = v11;
      v14 = 18;
LABEL_8:
      _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
      goto LABEL_9;
    }

    goto LABEL_54;
  }

  if (v30 != 30)
  {
    v11 = [IDSFoundationLog interface:v35];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 67109120;
    v40 = v30;
    v12 = "Error: dstaddr sa_family = %d not AF_INET (2) or AF_INET6 (30)";
LABEL_27:
    v13 = v11;
    v14 = 8;
    goto LABEL_8;
  }

  if (v26 <= 0x1B)
  {
    v11 = [IDSFoundationLog interface:v35];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 67109376;
    v40 = v26;
    v41 = 2048;
    v42 = 28;
    v12 = "Error: dstaddr length = %d < sizeof(struct sockaddr_in6) = %lu";
    goto LABEL_7;
  }

LABEL_54:
  v31 = v18;
  __memcpy_chk();
  v18 = v31;
  LOBYTE(v43[0]) = v26;
  BYTE1(v43[0]) = v30;
  v27 = v22 + v26;
  *(&v37 + 1) = v43;
LABEL_55:
  v32 = a3[v27];
  v33 = v27 + 1 + v32;
  v34 = v33 + 1;
  if (v34 > a4)
  {
    goto LABEL_34;
  }

  if (a3[v27])
  {
    *(&v35 + 1) = &a3[v27 + 1];
    if (v32 >= 0x11)
    {
      v11 = [IDSFoundationLog interface:v35];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      *buf = 67109376;
      v40 = v32;
      v41 = 1024;
      LODWORD(v42) = 16;
      v12 = "Error: len: %u is greater than IFNAMSIZ: %d";
LABEL_44:
      v13 = v11;
      v14 = 14;
      goto LABEL_8;
    }
  }

  else
  {
    *(&v35 + 1) = 0;
    v33 = v27 + 2;
    LODWORD(v34) = v27 + 3;
  }

  if (v34 + a3[v33] > a4)
  {
    goto LABEL_34;
  }

  if (v7 && v15 && *v19 == 30)
  {
    *v18 = if_nametoindex([v7 UTF8String]);
  }

  v28 = [[IDSInterfaceAddress alloc] initWithInterfaceAddress:&v35 bflags:v10];
LABEL_35:

  return v28;
}

+ (id)interfaceAddress:(ifaddrs *)a3 eflags:(unint64_t)a4 v6flags:(int)a5 iftype:(int)a6
{
  v6 = [[IDSInterfaceAddress alloc] initWithInterfaceAddress:a3 bflags:(a5 >> 5) & 4 | ((a4 & 0x100000) != 0) | (a4 >> 10) & 0x10 | (a4 >> 11) & 2 | (8 * (a6 == 5)) | (32 * (a6 == 7)) | ((a6 == 2) << 6)];

  return v6;
}

+ (id)addressesFromInterfaceAddresses:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (!v6)
        {
          v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
          if (!v6)
          {
            continue;
          }
        }

        v10 = [v9 address];

        if (v10)
        {
          v11 = [v9 address];
          CFArrayAppendValue(v6, v11);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v2 = @"NO";
  if (self->_AWDL)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_Cellular)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (self->_expensive)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if (self->_constrained)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (self->_companionLink)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (self->_wired)
  {
    v2 = @"YES";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@/%@/%@/%@/%@/%@/%@/%@/%@/%@/%@>", self->_address, self->_netmask, self->_destination, self->_name, self->_delegatedName, v3, v4, v5, v6, v7, v2];
}

- (int64_t)getTransmittableBytes:(char *)a3 withPrefixByte:(unsigned __int8)a4
{
  *a3 = a4;
  a3[1] = self->_AWDL;
  v6 = [(IDSSockAddrWrapper *)self->_address sa];
  if (v6)
  {
    v7 = v6;
    memcpy(a3 + 2, v6, v6->sa_len);
    v8 = v7->sa_len + 2;
  }

  else
  {
    a3[2] = 0;
    v8 = 3;
  }

  v9 = [(IDSSockAddrWrapper *)self->_netmask sa];
  if (v9)
  {
    v10 = v9;
    memcpy(&a3[v8], v9, v9->sa_len);
    sa_len = v10->sa_len;
  }

  else
  {
    a3[v8] = 0;
    sa_len = 1;
  }

  v12 = sa_len + v8;
  v13 = [(IDSSockAddrWrapper *)self->_destination sa];
  if (v13)
  {
    v14 = v13;
    memcpy(&a3[v12], v13, v13->sa_len);
    v15 = v14->sa_len;
  }

  else
  {
    a3[v12] = 0;
    v15 = 1;
  }

  v16 = v15 + v12;
  v17 = [(NSString *)self->_name length];
  a3[v16] = v17 + 1;
  memcpy(&a3[v16 + 1], [(NSString *)self->_name UTF8String], v17);
  v18 = v16 + 1 + v17;
  *&a3[v18] = 0;
  return v18 + 2;
}

- (IDSInterfaceAddress)initWithInterfaceAddress:(ifaddrs *)a3 bflags:(unsigned __int8)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = IDSInterfaceAddress;
  v6 = [(IDSInterfaceAddress *)&v22 init];
  if (!v6)
  {
    goto LABEL_29;
  }

  if (a3->ifa_addr)
  {
    v7 = [[IDSSockAddrWrapper alloc] initWithSockAddr:a3->ifa_addr];
    address = v6->_address;
    v6->_address = v7;
  }

  if (a3->ifa_netmask)
  {
    v9 = [[IDSSockAddrWrapper alloc] initWithSockAddr:a3->ifa_netmask];
    netmask = v6->_netmask;
    v6->_netmask = v9;
  }

  if (a3->ifa_dstaddr)
  {
    v11 = [[IDSSockAddrWrapper alloc] initWithSockAddr:a3->ifa_dstaddr];
    destination = v6->_destination;
    v6->_destination = v11;
  }

  if (!v6->_address)
  {
    v20 = 0;
    goto LABEL_31;
  }

  if (a3->ifa_name)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:a3->ifa_name encoding:4];
    name = v6->_name;
    v6->_name = v14;

    v6->_index = if_nametoindex(a3->ifa_name);
    memset(buf, 170, 16);
    ifa_addr = a3->ifa_addr;
    if (ifa_addr)
    {
      if (getEffectiveInterface(a3->ifa_name, ifa_addr->sa_family, buf, &v6->_delegatedIndex))
      {
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:buf encoding:4];
        delegatedName = v6->_delegatedName;
        v6->_delegatedName = v17;
      }

      v6->_constrained = isInterfaceConstrained(a3->ifa_name, a3->ifa_addr->sa_family);
    }

    objc_autoreleasePoolPop(v13);
  }

  if ((a4 & 0x20) != 0)
  {
    v6->_companionLink = 1;
    v19 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "interface is CompanionLink", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"IDSInterface", @"IDS", @"interface is CompanionLink");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"IDSInterface", @"interface is CompanionLink");
        }
      }
    }
  }

  if (a4)
  {
    v6->_AWDL = 1;
    if ((a4 & 8) == 0)
    {
LABEL_24:
      if ((a4 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_34;
    }
  }

  else if ((a4 & 8) == 0)
  {
    goto LABEL_24;
  }

  v6->_Cellular = 1;
  if ((a4 & 4) == 0)
  {
LABEL_25:
    if ((a4 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_35;
  }

LABEL_34:
  v6->_temporary = 1;
  if ((a4 & 0x10) == 0)
  {
LABEL_26:
    if ((a4 & 0x40) == 0)
    {
      goto LABEL_27;
    }

LABEL_36:
    v6->_wired = 1;
    if ((a4 & 2) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_35:
  v6->_expensive = 1;
  if ((a4 & 0x40) != 0)
  {
    goto LABEL_36;
  }

LABEL_27:
  if ((a4 & 2) != 0)
  {
LABEL_28:
    v6->_clat46 = 1;
  }

LABEL_29:
  v20 = v6;
LABEL_31:

  return v20;
}

@end