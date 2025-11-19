@interface NRDeviceInfo
- (BOOL)isEqual:(id)a3;
- (NRDeviceInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NRDeviceInfo

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(NRDeviceInfo *)self connectedLinkType];
      if (v6 != [v5 connectedLinkType])
      {
        goto LABEL_27;
      }

      v7 = [(NRDeviceInfo *)self connectedLinkSubtype];
      if (v7 != [v5 connectedLinkSubtype])
      {
        goto LABEL_27;
      }

      v8 = [(NRDeviceInfo *)self nrDeviceIdentifier];
      if (v8)
      {
      }

      else
      {
        v10 = [v5 nrDeviceIdentifier];

        if (!v10)
        {
          goto LABEL_10;
        }
      }

      v11 = [(NRDeviceInfo *)self nrDeviceIdentifier];
      v12 = [v5 nrDeviceIdentifier];
      v13 = [v11 isEqual:v12];

      if (!v13)
      {
        goto LABEL_27;
      }

LABEL_10:
      v14 = [(NRDeviceInfo *)self connectedInterfaceName];
      if (v14)
      {
      }

      else
      {
        v15 = [v5 connectedInterfaceName];

        if (!v15)
        {
          goto LABEL_14;
        }
      }

      v16 = [(NRDeviceInfo *)self connectedInterfaceName];
      v17 = [v5 connectedInterfaceName];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_27;
      }

LABEL_14:
      v19 = [(NRDeviceInfo *)self localEndpoint];
      if (v19)
      {
      }

      else
      {
        v20 = [v5 localEndpoint];

        if (!v20)
        {
          goto LABEL_18;
        }
      }

      v21 = [(NRDeviceInfo *)self localEndpoint];
      v22 = [v5 localEndpoint];
      v23 = [v21 isEqual:v22];

      if (!v23)
      {
        goto LABEL_27;
      }

LABEL_18:
      v24 = [(NRDeviceInfo *)self remoteEndpoint];
      if (v24)
      {
      }

      else
      {
        v25 = [v5 remoteEndpoint];

        if (!v25)
        {
LABEL_22:
          v29 = [(NRDeviceInfo *)self proxyInfo];
          if (v29)
          {
          }

          else
          {
            v30 = [v5 proxyInfo];

            if (!v30)
            {
LABEL_26:
              v9 = 1;
LABEL_28:

              goto LABEL_29;
            }
          }

          v31 = [(NRDeviceInfo *)self proxyInfo];
          v32 = [v5 proxyInfo];
          v33 = [v31 isEqual:v32];

          if (v33)
          {
            goto LABEL_26;
          }

LABEL_27:
          v9 = 0;
          goto LABEL_28;
        }
      }

      v26 = [(NRDeviceInfo *)self remoteEndpoint];
      v27 = [v5 remoteEndpoint];
      v28 = [v26 isEqual:v27];

      if (!v28)
      {
        goto LABEL_27;
      }

      goto LABEL_22;
    }
  }

  v9 = 0;
LABEL_29:

  return v9;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"NRDeviceInfo["];
  v4 = v3;
  if (self->_connectedInterfaceName)
  {
    [v3 appendFormat:@"%@, ", self->_connectedInterfaceName];
  }

  if (self->_localEndpoint)
  {
    [v4 appendFormat:@"local: %@, ", self->_localEndpoint];
  }

  if (self->_remoteEndpoint)
  {
    [v4 appendFormat:@"remote: %@, ", self->_remoteEndpoint];
  }

  StringFromNRLinkType = createStringFromNRLinkType(self->_connectedLinkType);
  StringFromNRLinkSubtype = createStringFromNRLinkSubtype(self->_connectedLinkSubtype);
  [v4 appendFormat:@"link: %@ (%@)", StringFromNRLinkType, StringFromNRLinkSubtype];

  if (self->_proxyInfo)
  {
    [v4 appendFormat:@" %@", self->_proxyInfo];
  }

  [v4 appendString:@"]"];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NRDeviceInfo *)self nrDeviceIdentifier];
  [v4 encodeObject:v5 forKey:@"nrDeviceIdentifier"];

  v6 = [(NRDeviceInfo *)self connectedInterfaceName];
  [v4 encodeObject:v6 forKey:@"connectedInterfaceName"];

  v7 = [(NRDeviceInfo *)self localEndpoint];
  [v4 encodeObject:v7 forKey:@"localEndpoint"];

  v8 = [(NRDeviceInfo *)self remoteEndpoint];
  [v4 encodeObject:v8 forKey:@"remoteEndpoint"];

  [v4 encodeInt32:-[NRDeviceInfo connectedLinkType](self forKey:{"connectedLinkType"), @"connectedLinkType"}];
  [v4 encodeInt32:-[NRDeviceInfo connectedLinkSubtype](self forKey:{"connectedLinkSubtype"), @"connectedLinkSubtype"}];
  v9 = [(NRDeviceInfo *)self proxyInfo];
  [v4 encodeObject:v9 forKey:@"proxyInfo"];
}

- (NRDeviceInfo)initWithCoder:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = NRDeviceInfo;
  v5 = [(NRDeviceInfo *)&v28 init];
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
    *(v26 + 4) = "[NRDeviceInfo initWithCoder:]";
    v27 = nrCopyLogObj_966();
    _NRLogAbortWithPack(v27);
  }

  v6 = v5;
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nrDeviceIdentifier"];
  [(NRDeviceInfo *)v6 setNrDeviceIdentifier:v7];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"connectedInterfaceName"];
  [(NRDeviceInfo *)v6 setConnectedInterfaceName:v8];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localEndpoint"];
  [(NRDeviceInfo *)v6 setLocalEndpoint:v9];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteEndpoint"];
  [(NRDeviceInfo *)v6 setRemoteEndpoint:v10];

  -[NRDeviceInfo setConnectedLinkType:](v6, "setConnectedLinkType:", [v4 decodeInt32ForKey:@"connectedLinkType"]);
  -[NRDeviceInfo setConnectedLinkSubtype:](v6, "setConnectedLinkSubtype:", [v4 decodeInt32ForKey:@"connectedLinkSubtype"]);
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyInfo"];
  [(NRDeviceInfo *)v6 setProxyInfo:v11];

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NRDeviceInfo *)self nrDeviceIdentifier];
  [v4 setNrDeviceIdentifier:v5];

  [v4 setConnectedLinkType:{-[NRDeviceInfo connectedLinkType](self, "connectedLinkType")}];
  [v4 setConnectedLinkSubtype:{-[NRDeviceInfo connectedLinkSubtype](self, "connectedLinkSubtype")}];
  v6 = [(NRDeviceInfo *)self connectedInterfaceName];
  [v4 setConnectedInterfaceName:v6];

  v7 = [(NRDeviceInfo *)self localEndpoint];
  v8 = [v7 copy];
  [v4 setLocalEndpoint:v8];

  v9 = [(NRDeviceInfo *)self remoteEndpoint];
  v10 = [v9 copy];
  [v4 setRemoteEndpoint:v10];

  return v4;
}

@end