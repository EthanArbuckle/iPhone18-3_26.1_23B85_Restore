@interface DAWiFiAwarePairingInfo
- (DAWiFiAwarePairingInfo)initWithWiFiAwareIdentifier:(unint64_t)a3 pairingType:(int64_t)a4;
- (DAWiFiAwarePairingInfo)initWithXPCObject:(id)a3 error:(id *)a4;
- (id)descriptionWithLevel:(int)a3;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation DAWiFiAwarePairingInfo

- (DAWiFiAwarePairingInfo)initWithWiFiAwareIdentifier:(unint64_t)a3 pairingType:(int64_t)a4
{
  v11.receiver = self;
  v11.super_class = DAWiFiAwarePairingInfo;
  v6 = [(DAWiFiAwarePairingInfo *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_accept = 0;
    v6->_wifiAwareIdentifier = a3;
    v6->_pairingType = a4;
    passkey = v6->_passkey;
    v6->_passkey = 0;

    v9 = v7;
  }

  return v7;
}

- (void)encodeWithXPCObject:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_accept)
  {
    xpc_dictionary_set_BOOL(v4, "wFPA", 1);
  }

  passkey = self->_passkey;
  xdict = v5;
  v7 = [(NSString *)passkey UTF8String];
  if (v7)
  {
    xpc_dictionary_set_string(xdict, "wFPk", v7);
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

- (DAWiFiAwarePairingInfo)initWithXPCObject:(id)a3 error:(id *)a4
{
  v5 = a3;
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
    v8 = 0;
    goto LABEL_11;
  }

  self->_wifiAwareIdentifier = 0;
LABEL_10:
  v8 = self;
LABEL_11:

  return v8;
}

@end