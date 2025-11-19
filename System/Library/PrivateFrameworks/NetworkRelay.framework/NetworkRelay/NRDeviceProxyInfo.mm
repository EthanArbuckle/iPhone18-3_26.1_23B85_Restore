@interface NRDeviceProxyInfo
- (BOOL)isEqual:(id)a3;
- (NRDeviceProxyInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NRDeviceProxyInfo

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(NRDeviceProxyInfo *)self proxyProviderType];
      if (v6 != [v5 proxyProviderType])
      {
        goto LABEL_26;
      }

      v7 = [(NRDeviceProxyInfo *)self httpConnectURLs];
      if (v7)
      {
      }

      else
      {
        v9 = [v5 httpConnectURLs];

        if (!v9)
        {
          goto LABEL_9;
        }
      }

      v10 = [(NRDeviceProxyInfo *)self httpConnectURLs];
      v11 = [v5 httpConnectURLs];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_26;
      }

LABEL_9:
      v13 = [(NRDeviceProxyInfo *)self httpConnectUserName];
      if (v13)
      {
      }

      else
      {
        v14 = [v5 httpConnectUserName];

        if (!v14)
        {
          goto LABEL_13;
        }
      }

      v15 = [(NRDeviceProxyInfo *)self httpConnectUserName];
      v16 = [v5 httpConnectUserName];
      v17 = [v15 isEqual:v16];

      if (!v17)
      {
        goto LABEL_26;
      }

LABEL_13:
      v18 = [(NRDeviceProxyInfo *)self httpConnectPassword];
      if (v18)
      {
      }

      else
      {
        v19 = [v5 httpConnectPassword];

        if (!v19)
        {
          goto LABEL_17;
        }
      }

      v20 = [(NRDeviceProxyInfo *)self httpConnectPassword];
      v21 = [v5 httpConnectPassword];
      v22 = [v20 isEqual:v21];

      if (!v22)
      {
        goto LABEL_26;
      }

LABEL_17:
      v23 = [(NRDeviceProxyInfo *)self httpConnectPSKIdentity];
      if (v23)
      {
      }

      else
      {
        v24 = [v5 httpConnectPSKIdentity];

        if (!v24)
        {
LABEL_21:
          v28 = [(NRDeviceProxyInfo *)self httpConnectPSK];
          if (v28)
          {
          }

          else
          {
            v29 = [v5 httpConnectPSK];

            if (!v29)
            {
LABEL_25:
              v8 = 1;
LABEL_27:

              goto LABEL_28;
            }
          }

          v30 = [(NRDeviceProxyInfo *)self httpConnectPSK];
          v31 = [v5 httpConnectPSK];
          v32 = [v30 isEqual:v31];

          if (v32)
          {
            goto LABEL_25;
          }

LABEL_26:
          v8 = 0;
          goto LABEL_27;
        }
      }

      v25 = [(NRDeviceProxyInfo *)self httpConnectPSKIdentity];
      v26 = [v5 httpConnectPSKIdentity];
      v27 = [v25 isEqual:v26];

      if (!v27)
      {
        goto LABEL_26;
      }

      goto LABEL_21;
    }
  }

  v8 = 0;
LABEL_28:

  return v8;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"NRDeviceProxyInfo["];
  if (_NRIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&_NRIsAppleInternal_onceToken, &__block_literal_global_435);
  }

  if (_NRIsAppleInternal_internal == 1)
  {
    proxyProviderType = self->_proxyProviderType;
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    if (proxyProviderType > 1)
    {
      if (proxyProviderType == 2)
      {
        v6 = "SHOES";
        goto LABEL_14;
      }

      if (proxyProviderType == 3)
      {
        v6 = "HTTPConnect";
        goto LABEL_14;
      }
    }

    else
    {
      if (!proxyProviderType)
      {
        v6 = "Default";
        goto LABEL_14;
      }

      if (proxyProviderType == 1)
      {
        v6 = "MASQUE";
LABEL_14:
        v7 = [v5 initWithUTF8String:v6];
        goto LABEL_15;
      }
    }

    v7 = [v5 initWithFormat:@"Unknown(%llu)", proxyProviderType];
LABEL_15:
    v8 = v7;
    [v3 appendFormat:@"type:%@, ", v7];

    if (self->_httpConnectURLs)
    {
      [v3 appendFormat:@"urls:%@, ", self->_httpConnectURLs];
    }

    if (self->_httpConnectUserName)
    {
      [v3 appendFormat:@"username:%@, ", self->_httpConnectUserName];
    }

    if (self->_httpConnectPSKIdentity)
    {
      [v3 appendFormat:@"identity:%@, ", self->_httpConnectPSKIdentity];
    }

    httpConnectPSK = self->_httpConnectPSK;
    if (httpConnectPSK)
    {
      LogString = _NRKeyCreateLogString(httpConnectPSK);
      [v3 appendFormat:@"psk: %@, ", LogString];
    }

    httpConnectPassword = self->_httpConnectPassword;
    if (httpConnectPassword)
    {
      v12 = [(NSString *)httpConnectPassword dataUsingEncoding:4];
      v13 = _NRKeyCreateLogString(v12);
      [v3 appendFormat:@"password: %@ ", v13];
    }
  }

  [v3 appendString:@"]"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[NRDeviceProxyInfo proxyProviderType](self forKey:{"proxyProviderType"), @"proxyProviderType"}];
  v5 = [(NRDeviceProxyInfo *)self httpConnectURLs];
  [v4 encodeObject:v5 forKey:@"httpConnectURLs"];

  v6 = [(NRDeviceProxyInfo *)self httpConnectPSKIdentity];
  [v4 encodeObject:v6 forKey:@"httpConnectPSKIdentity"];

  v7 = [(NRDeviceProxyInfo *)self httpConnectPSK];
  [v4 encodeObject:v7 forKey:@"httpConnectPSK"];

  v8 = [(NRDeviceProxyInfo *)self httpConnectUserName];
  [v4 encodeObject:v8 forKey:@"httpConnectUserName"];

  v9 = [(NRDeviceProxyInfo *)self httpConnectPassword];
  [v4 encodeObject:v9 forKey:@"httpConnectPassword"];
}

- (NRDeviceProxyInfo)initWithCoder:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = NRDeviceProxyInfo;
  v5 = [(NRDeviceProxyInfo *)&v28 init];
  if (!v5)
  {
    v14 = nrCopyLogObj_966();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v15 = v14;
      v16 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

      if (!v16)
      {
        goto LABEL_7;
      }
    }

    v17 = nrCopyLogObj_966();
    _NRLogWithArgs(v17, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v18, v19, v20, v21, v22, "");

LABEL_7:
    v23 = _os_log_pack_size();
    MEMORY[0x28223BE20](v23, v24);
    v25 = *__error();
    v26 = _os_log_pack_fill();
    *v26 = 136446210;
    *(v26 + 4) = "[NRDeviceProxyInfo initWithCoder:]";
    v27 = nrCopyLogObj_966();
    _NRLogAbortWithPack(v27);
  }

  v6 = v5;
  -[NRDeviceProxyInfo setProxyProviderType:](v5, "setProxyProviderType:", [v4 decodeInt64ForKey:@"proxyProviderType"]);
  v7 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"httpConnectURLs"];
  [(NRDeviceProxyInfo *)v6 setHttpConnectURLs:v7];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"httpConnectPSKIdentity"];
  [(NRDeviceProxyInfo *)v6 setHttpConnectPSKIdentity:v8];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"httpConnectPSK"];
  [(NRDeviceProxyInfo *)v6 setHttpConnectPSK:v9];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"httpConnectUserName"];
  [(NRDeviceProxyInfo *)v6 setHttpConnectUserName:v10];

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"httpConnectPassword"];
  [(NRDeviceProxyInfo *)v6 setHttpConnectPassword:v11];

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setProxyProviderType:{-[NRDeviceProxyInfo proxyProviderType](self, "proxyProviderType")}];
  v5 = [(NRDeviceProxyInfo *)self httpConnectURLs];
  v6 = [v5 copy];
  [v4 setHttpConnectURLs:v6];

  v7 = [(NRDeviceProxyInfo *)self httpConnectPSKIdentity];
  v8 = [v7 copy];
  [v4 setHttpConnectPSKIdentity:v8];

  v9 = [(NRDeviceProxyInfo *)self httpConnectPSK];
  v10 = [v9 copy];
  [v4 setHttpConnectPSK:v10];

  v11 = [(NRDeviceProxyInfo *)self httpConnectUserName];
  v12 = [v11 copy];
  [v4 setHttpConnectUserName:v12];

  v13 = [(NRDeviceProxyInfo *)self httpConnectPassword];
  v14 = [v13 copy];
  [v4 setHttpConnectPassword:v14];

  return v4;
}

@end