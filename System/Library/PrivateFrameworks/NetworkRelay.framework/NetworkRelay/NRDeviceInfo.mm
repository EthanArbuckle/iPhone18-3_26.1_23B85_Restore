@interface NRDeviceInfo
- (BOOL)isEqual:(id)equal;
- (NRDeviceInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NRDeviceInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      connectedLinkType = [(NRDeviceInfo *)self connectedLinkType];
      if (connectedLinkType != [v5 connectedLinkType])
      {
        goto LABEL_27;
      }

      connectedLinkSubtype = [(NRDeviceInfo *)self connectedLinkSubtype];
      if (connectedLinkSubtype != [v5 connectedLinkSubtype])
      {
        goto LABEL_27;
      }

      nrDeviceIdentifier = [(NRDeviceInfo *)self nrDeviceIdentifier];
      if (nrDeviceIdentifier)
      {
      }

      else
      {
        nrDeviceIdentifier2 = [v5 nrDeviceIdentifier];

        if (!nrDeviceIdentifier2)
        {
          goto LABEL_10;
        }
      }

      nrDeviceIdentifier3 = [(NRDeviceInfo *)self nrDeviceIdentifier];
      nrDeviceIdentifier4 = [v5 nrDeviceIdentifier];
      v13 = [nrDeviceIdentifier3 isEqual:nrDeviceIdentifier4];

      if (!v13)
      {
        goto LABEL_27;
      }

LABEL_10:
      connectedInterfaceName = [(NRDeviceInfo *)self connectedInterfaceName];
      if (connectedInterfaceName)
      {
      }

      else
      {
        connectedInterfaceName2 = [v5 connectedInterfaceName];

        if (!connectedInterfaceName2)
        {
          goto LABEL_14;
        }
      }

      connectedInterfaceName3 = [(NRDeviceInfo *)self connectedInterfaceName];
      connectedInterfaceName4 = [v5 connectedInterfaceName];
      v18 = [connectedInterfaceName3 isEqual:connectedInterfaceName4];

      if (!v18)
      {
        goto LABEL_27;
      }

LABEL_14:
      localEndpoint = [(NRDeviceInfo *)self localEndpoint];
      if (localEndpoint)
      {
      }

      else
      {
        localEndpoint2 = [v5 localEndpoint];

        if (!localEndpoint2)
        {
          goto LABEL_18;
        }
      }

      localEndpoint3 = [(NRDeviceInfo *)self localEndpoint];
      localEndpoint4 = [v5 localEndpoint];
      v23 = [localEndpoint3 isEqual:localEndpoint4];

      if (!v23)
      {
        goto LABEL_27;
      }

LABEL_18:
      remoteEndpoint = [(NRDeviceInfo *)self remoteEndpoint];
      if (remoteEndpoint)
      {
      }

      else
      {
        remoteEndpoint2 = [v5 remoteEndpoint];

        if (!remoteEndpoint2)
        {
LABEL_22:
          proxyInfo = [(NRDeviceInfo *)self proxyInfo];
          if (proxyInfo)
          {
          }

          else
          {
            proxyInfo2 = [v5 proxyInfo];

            if (!proxyInfo2)
            {
LABEL_26:
              v9 = 1;
LABEL_28:

              goto LABEL_29;
            }
          }

          proxyInfo3 = [(NRDeviceInfo *)self proxyInfo];
          proxyInfo4 = [v5 proxyInfo];
          v33 = [proxyInfo3 isEqual:proxyInfo4];

          if (v33)
          {
            goto LABEL_26;
          }

LABEL_27:
          v9 = 0;
          goto LABEL_28;
        }
      }

      remoteEndpoint3 = [(NRDeviceInfo *)self remoteEndpoint];
      remoteEndpoint4 = [v5 remoteEndpoint];
      v28 = [remoteEndpoint3 isEqual:remoteEndpoint4];

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  nrDeviceIdentifier = [(NRDeviceInfo *)self nrDeviceIdentifier];
  [coderCopy encodeObject:nrDeviceIdentifier forKey:@"nrDeviceIdentifier"];

  connectedInterfaceName = [(NRDeviceInfo *)self connectedInterfaceName];
  [coderCopy encodeObject:connectedInterfaceName forKey:@"connectedInterfaceName"];

  localEndpoint = [(NRDeviceInfo *)self localEndpoint];
  [coderCopy encodeObject:localEndpoint forKey:@"localEndpoint"];

  remoteEndpoint = [(NRDeviceInfo *)self remoteEndpoint];
  [coderCopy encodeObject:remoteEndpoint forKey:@"remoteEndpoint"];

  [coderCopy encodeInt32:-[NRDeviceInfo connectedLinkType](self forKey:{"connectedLinkType"), @"connectedLinkType"}];
  [coderCopy encodeInt32:-[NRDeviceInfo connectedLinkSubtype](self forKey:{"connectedLinkSubtype"), @"connectedLinkSubtype"}];
  proxyInfo = [(NRDeviceInfo *)self proxyInfo];
  [coderCopy encodeObject:proxyInfo forKey:@"proxyInfo"];
}

- (NRDeviceInfo)initWithCoder:(id)coder
{
  v29 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
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
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nrDeviceIdentifier"];
  [(NRDeviceInfo *)v6 setNrDeviceIdentifier:v7];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"connectedInterfaceName"];
  [(NRDeviceInfo *)v6 setConnectedInterfaceName:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localEndpoint"];
  [(NRDeviceInfo *)v6 setLocalEndpoint:v9];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteEndpoint"];
  [(NRDeviceInfo *)v6 setRemoteEndpoint:v10];

  -[NRDeviceInfo setConnectedLinkType:](v6, "setConnectedLinkType:", [coderCopy decodeInt32ForKey:@"connectedLinkType"]);
  -[NRDeviceInfo setConnectedLinkSubtype:](v6, "setConnectedLinkSubtype:", [coderCopy decodeInt32ForKey:@"connectedLinkSubtype"]);
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proxyInfo"];
  [(NRDeviceInfo *)v6 setProxyInfo:v11];

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  nrDeviceIdentifier = [(NRDeviceInfo *)self nrDeviceIdentifier];
  [v4 setNrDeviceIdentifier:nrDeviceIdentifier];

  [v4 setConnectedLinkType:{-[NRDeviceInfo connectedLinkType](self, "connectedLinkType")}];
  [v4 setConnectedLinkSubtype:{-[NRDeviceInfo connectedLinkSubtype](self, "connectedLinkSubtype")}];
  connectedInterfaceName = [(NRDeviceInfo *)self connectedInterfaceName];
  [v4 setConnectedInterfaceName:connectedInterfaceName];

  localEndpoint = [(NRDeviceInfo *)self localEndpoint];
  v8 = [localEndpoint copy];
  [v4 setLocalEndpoint:v8];

  remoteEndpoint = [(NRDeviceInfo *)self remoteEndpoint];
  v10 = [remoteEndpoint copy];
  [v4 setRemoteEndpoint:v10];

  return v4;
}

@end