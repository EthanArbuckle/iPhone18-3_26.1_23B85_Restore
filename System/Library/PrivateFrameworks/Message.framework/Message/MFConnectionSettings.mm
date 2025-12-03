@interface MFConnectionSettings
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)setConnectionServiceType:(__CFString *)type;
@end

@implementation MFConnectionSettings

- (void)dealloc
{
  connectionServiceType = self->_connectionServiceType;
  if (connectionServiceType)
  {
    CFRelease(connectionServiceType);
  }

  v4.receiver = self;
  v4.super_class = MFConnectionSettings;
  [(MFConnectionSettings *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  hostname = [(MFConnectionSettings *)self hostname];
  [v4 setHostname:hostname];

  serviceName = [(MFConnectionSettings *)self serviceName];
  [v4 setServiceName:serviceName];

  certUIService = [(MFConnectionSettings *)self certUIService];
  [v4 setCertUIService:certUIService];

  [v4 setPortNumber:{-[MFConnectionSettings portNumber](self, "portNumber")}];
  [v4 setConnectionServiceType:{-[MFConnectionSettings connectionServiceType](self, "connectionServiceType")}];
  [v4 setUsesSSL:{-[MFConnectionSettings usesSSL](self, "usesSSL")}];
  [v4 setUsesOpportunisticSockets:{-[MFConnectionSettings usesOpportunisticSockets](self, "usesOpportunisticSockets")}];
  [v4 setTryDirectSSL:{-[MFConnectionSettings tryDirectSSL](self, "tryDirectSSL")}];
  [v4 setAllowsTrustPrompt:{-[MFConnectionSettings allowsTrustPrompt](self, "allowsTrustPrompt")}];
  sourceApplicationBundleIdentifier = [(MFConnectionSettings *)self sourceApplicationBundleIdentifier];
  [v4 setSourceApplicationBundleIdentifier:sourceApplicationBundleIdentifier];

  accountIdentifier = [(MFConnectionSettings *)self accountIdentifier];
  [v4 setAccountIdentifier:accountIdentifier];

  networkAccountIdentifier = [(MFConnectionSettings *)self networkAccountIdentifier];
  [v4 setNetworkAccountIdentifier:networkAccountIdentifier];

  [v4 setIsNonAppInitiated:{-[MFConnectionSettings isNonAppInitiated](self, "isNonAppInitiated")}];
  return v4;
}

- (void)setConnectionServiceType:(__CFString *)type
{
  connectionServiceType = self->_connectionServiceType;
  if (connectionServiceType != type)
  {
    if (connectionServiceType)
    {
      CFRelease(connectionServiceType);
    }

    if (type)
    {
      v6 = CFRetain(type);
    }

    else
    {
      v6 = 0;
    }

    self->_connectionServiceType = v6;
  }
}

- (id)description
{
  v2 = "";
  if (self->_usesSSL)
  {
    v3 = "";
  }

  else
  {
    v3 = "No";
  }

  v4 = "indirect";
  if (self->_tryDirectSSLConnection)
  {
    v4 = "direct";
  }

  if (self->_usesOpportunisticSockets)
  {
    v5 = " (opportunistic)";
  }

  else
  {
    v5 = "";
  }

  v6 = " disallows trust prompt";
  if (self->_allowsTrustPrompt)
  {
    v6 = "";
  }

  sourceApplicationBundleIdentifier = self->_sourceApplicationBundleIdentifier;
  if (sourceApplicationBundleIdentifier)
  {
    v2 = ", source application: ";
  }

  else
  {
    sourceApplicationBundleIdentifier = &stru_1F273A5E0;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@<%@>:%d %s SSL (%s)%s%s%s%@", self->_hostname, self->_serviceName, self->_portNumber, v3, v4, v5, v6, v2, sourceApplicationBundleIdentifier];
}

@end