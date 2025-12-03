@interface DAWiFiAwarePairingInfo
- (DAWiFiAwarePairingInfo)initWithWiFiAwareIdentifier:(unint64_t)identifier pairingType:(int64_t)type;
- (DAWiFiAwarePairingInfo)initWithXPCObject:(id)object error:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation DAWiFiAwarePairingInfo

- (DAWiFiAwarePairingInfo)initWithWiFiAwareIdentifier:(unint64_t)identifier pairingType:(int64_t)type
{
  v11.receiver = self;
  v11.super_class = DAWiFiAwarePairingInfo;
  v6 = [(DAWiFiAwarePairingInfo *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_accept = 0;
    v6->_wifiAwareIdentifier = identifier;
    v6->_pairingType = type;
    passkey = v6->_passkey;
    v6->_passkey = 0;

    v9 = v7;
  }

  return v7;
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  v5 = objectCopy;
  if (self->_accept)
  {
    xpc_dictionary_set_BOOL(objectCopy, "wFPA", 1);
  }

  passkey = self->_passkey;
  xdict = v5;
  uTF8String = [(NSString *)passkey UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(xdict, "wFPk", uTF8String);
  }

  pairingType = self->_pairingType;
  if (pairingType)
  {
    xpc_dictionary_set_int64(xdict, "wFPT", pairingType);
  }

  wifiAwareIdentifier = self->_wifiAwareIdentifier;
  if (wifiAwareIdentifier)
  {
    xpc_dictionary_set_uint64(xdict, "wFPi", wifiAwareIdentifier);
  }
}

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    CUAppendF();
    v4 = 0;
  }

  wifiAwareIdentifier = self->_wifiAwareIdentifier;
  CUAppendF();
  v5 = v4;

  self->_pairingType;
  CUAppendF();
  v6 = v5;

  passkey = self->_passkey;
  CUAppendF();
  v7 = v6;

  self->_accept;
  CUAppendF();
  v8 = v7;

  v9 = &stru_285B4C350;
  if (v8)
  {
    v9 = v8;
  }

  v10 = v9;

  return v10;
}

- (DAWiFiAwarePairingInfo)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  if (!self || !CUXPCDecodeBool() || !CUXPCDecodeNSString())
  {
    goto LABEL_12;
  }

  v6 = CUXPCDecodeSInt64RangedEx();
  if (v6 == 6)
  {
    self->_pairingType = 0;
  }

  else if (v6 == 5)
  {
    goto LABEL_12;
  }

  v7 = CUXPCDecodeUInt64RangedEx();
  if (v7 != 6)
  {
    if (v7 != 5)
    {
      goto LABEL_10;
    }

LABEL_12:
    selfCopy = 0;
    goto LABEL_11;
  }

  self->_wifiAwareIdentifier = 0;
LABEL_10:
  selfCopy = self;
LABEL_11:

  return selfCopy;
}

@end