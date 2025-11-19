@interface DADeviceSettings
- (DADeviceSettings)initWithXPCObject:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithLevel:(int)a3;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation DADeviceSettings

- (void)encodeWithXPCObject:(id)a3
{
  v4 = a3;
  v5 = [(UTType *)self->_iconType identifier];
  v6 = v4;
  v7 = [v5 UTF8String];
  if (v7)
  {
    xpc_dictionary_set_string(v6, "dvPT", v7);
  }

  displayName = self->_displayName;
  v9 = v6;
  v10 = [(NSString *)displayName UTF8String];
  if (v10)
  {
    xpc_dictionary_set_string(v9, "name", v10);
  }

  bridgingIdentifier = self->_bridgingIdentifier;
  if (bridgingIdentifier)
  {
    v12 = bridgingIdentifier;
    v13 = v9;
    v14 = bridgingIdentifier;
    v15 = [(NSData *)v14 bytes];
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = "";
    }

    v17 = [(NSData *)v14 length];

    xpc_dictionary_set_data(v13, "btCa", v16, v17);
  }

  SSID = self->_SSID;
  xdict = v9;
  v19 = [(NSString *)SSID UTF8String];
  if (v19)
  {
    xpc_dictionary_set_string(xdict, "ssID", v19);
  }

  if (self->_userInitiated)
  {
    xpc_dictionary_set_BOOL(xdict, "uItd", 1);
  }
}

- (DADeviceSettings)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(DADeviceSettings *)self init];
  if (v7)
  {
    if (MEMORY[0x24C1DC9E0](v6) == MEMORY[0x277D86468])
    {
      v17 = 0;
      if (CUXPCDecodeNSString() && CUXPCDecodeNSData() && CUXPCDecodeNSString() && CUXPCDecodeNSString() && CUXPCDecodeBool())
      {
        v14 = v7;
      }

      else
      {
        v14 = 0;
      }
    }

    else if (a4)
    {
      DAErrorF(350004, "XPC non-dict", v8, v9, v10, v11, v12, v13, v16);
      *a4 = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    [DADeviceSettings initWithXPCObject:a4 error:&v17];
    v14 = v17;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSData *)self->_bridgingIdentifier copy];
  v6 = v4[5];
  v4[5] = v5;

  v7 = [(NSString *)self->_displayName copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(UTType *)self->_iconType copy];
  v10 = v4[2];
  v4[2] = v9;

  v11 = [(NSString *)self->_SSID copy];
  v12 = v4[4];
  v4[4] = v11;

  return v4;
}

- (id)descriptionWithLevel:(int)a3
{
  if ((a3 & 0x8000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    CUAppendF();
    v4 = 0;
  }

  iconType = self->_iconType;
  if (iconType)
  {
    v6 = iconType;
    v19 = [(UTType *)v6 identifier];
    CUAppendF();
    v7 = v4;

    v4 = v7;
  }

  displayName = self->_displayName;
  if (displayName)
  {
    v20 = displayName;
    CUAppendF();
    v9 = v4;

    v4 = v9;
  }

  bridgingIdentifier = self->_bridgingIdentifier;
  if (bridgingIdentifier)
  {
    v11 = bridgingIdentifier;
    v21 = CUPrintNSDataAddress();
    CUAppendF();
    v12 = v4;

    v4 = v12;
  }

  SSID = self->_SSID;
  if (SSID)
  {
    v22 = SSID;
    CUAppendF();
    v14 = v4;

    v4 = v14;
  }

  if (self->_userInitiated)
  {
    CUAppendF();
    v15 = v4;

    v4 = v15;
  }

  v16 = &stru_285B4C350;
  if (v4)
  {
    v16 = v4;
  }

  v17 = v16;

  return v17;
}

- (void)initWithXPCObject:(void *)a1 error:(void *)a2 .cold.1(void *a1, void *a2)
{
  if (a1)
  {
    v4 = [objc_opt_class() description];
    *a1 = DAErrorF(350004, "%@ init failed", v5, v6, v7, v8, v9, v10, v4);
  }

  *a2 = 0;
}

@end