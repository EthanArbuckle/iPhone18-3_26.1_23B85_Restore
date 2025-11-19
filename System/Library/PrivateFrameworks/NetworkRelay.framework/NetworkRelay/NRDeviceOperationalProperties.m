@interface NRDeviceOperationalProperties
+ (id)copyPropertiesForDefaultPairedPhone;
+ (id)copyPropertiesForDefaultPairedWatch;
- (BOOL)isEqual:(id)a3;
- (NRDeviceOperationalProperties)init;
- (NRDeviceOperationalProperties)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)mergeProperties:(id)a3;
- (void)setAllowsApplicationServiceConnections:(BOOL)a3;
@end

@implementation NRDeviceOperationalProperties

- (void)setAllowsApplicationServiceConnections:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFFFFFFFFFFFDLL | v3;
}

- (id)description
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"["];
  [v3 appendFormat:@" v:%u", -[NRDeviceOperationalProperties version](self, "version")];
  [v3 appendFormat:@" prx:%llu", -[NRDeviceOperationalProperties proxyCapability](self, "proxyCapability")];
  [v3 appendFormat:@", bt:%llu", -[NRDeviceOperationalProperties bluetoothRole](self, "bluetoothRole")];
  v36 = v3;
  [v3 appendFormat:@", bt-end:%llu", -[NRDeviceOperationalProperties bluetoothEndpointType](self, "bluetoothEndpointType")];
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v37 = self;
  v5 = [(NRDeviceOperationalProperties *)self allowedLinkTypes];
  v6 = [v5 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v43;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v42 + 1) + 8 * i) unsignedShortValue];
        if ((v11 - 1) < 4u)
        {
          v10 = off_27996AE50[(v11 - 1)];
          goto LABEL_6;
        }

        v12 = v11;
        v13 = objc_alloc(MEMORY[0x277CCACA8]);
        if (v12 == 5)
        {
          v14 = "Wired";
          goto LABEL_14;
        }

        if (!v12)
        {
          v14 = "Invalid";
LABEL_14:
          v10 = [v13 initWithUTF8String:v14];
          goto LABEL_6;
        }

        v10 = [v13 initWithFormat:@"Unknown(%lld)", v12];
LABEL_6:
        [v4 appendFormat:@" %@ ", v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v7);
  }

  v15 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v16 = [(NRDeviceOperationalProperties *)v37 allowedLinkSubtypes];
  v17 = [v16 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v39;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v39 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v22 = [*(*(&v38 + 1) + 8 * j) unsignedShortValue];
        if (v22 > 0x67u)
        {
          if (v22 == 104)
          {
            StringFromNRLinkSubtype = @"IR";
            goto LABEL_21;
          }

          if (v22 != 120)
          {
            if (v22 == 121)
            {
              StringFromNRLinkSubtype = @"L2C";
              goto LABEL_21;
            }

            goto LABEL_34;
          }

          StringFromNRLinkSubtype = @"P";
        }

        else
        {
          if (v22 == 101)
          {
            StringFromNRLinkSubtype = @"Ifr";
            goto LABEL_21;
          }

          if (v22 != 102)
          {
            if (v22 == 103)
            {
              StringFromNRLinkSubtype = @"N";
              goto LABEL_21;
            }

LABEL_34:
            StringFromNRLinkSubtype = createStringFromNRLinkSubtype(v22);
            goto LABEL_21;
          }

          StringFromNRLinkSubtype = @"A";
        }

LABEL_21:
        [v15 appendFormat:@" %@ ", StringFromNRLinkSubtype];
      }

      v18 = [v16 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v18);
  }

  [v36 appendFormat:@", lnks:[%@][%@]", v4, v15];
  if ([(NRDeviceOperationalProperties *)v37 handlesLinkRecommendations])
  {
    [v36 appendString:{@", lnkRec"}];
  }

  if ([(NRDeviceOperationalProperties *)v37 requiresReachability])
  {
    [v36 appendString:{@", rch"}];
  }

  if ([(NRDeviceOperationalProperties *)v37 proxyProviderRequiresWiFi])
  {
    [v36 appendString:{@", prx-wifi"}];
  }

  if ([(NRDeviceOperationalProperties *)v37 usesTLS])
  {
    [v36 appendString:{@", tls"}];
  }

  if ([(NRDeviceOperationalProperties *)v37 providesPhoneCallRelaySupport])
  {
    [v36 appendString:{@", pcr"}];
  }

  if ([(NRDeviceOperationalProperties *)v37 allowsPermittedClientsOnly])
  {
    [v36 appendString:{@", prm"}];
  }

  if ([(NRDeviceOperationalProperties *)v37 allowsDirectToCloud])
  {
    [v36 appendString:{@", dtc"}];
  }

  if ([(NRDeviceOperationalProperties *)v37 allowsDeviceDiscovery])
  {
    [v36 appendString:{@", disc"}];
  }

  if ([(NRDeviceOperationalProperties *)v37 allowsDeadPeerDetection])
  {
    [v36 appendString:{@", dpd"}];
  }

  if ([(NRDeviceOperationalProperties *)v37 hasCompanionDatapath])
  {
    [v36 appendString:{@", cmpn-dp"}];
  }

  v23 = [(NRDeviceOperationalProperties *)v37 proxyProviderCriteria];

  if (v23)
  {
    v24 = [(NRDeviceOperationalProperties *)v37 proxyProviderCriteria];
    [v36 appendFormat:@", %@", v24];
  }

  if ([(NRDeviceOperationalProperties *)v37 operationalScope])
  {
    [v36 appendFormat:@", sc %#llx", -[NRDeviceOperationalProperties operationalScope](v37, "operationalScope")];
  }

  if ([(NRDeviceOperationalProperties *)v37 flags])
  {
    [v36 appendFormat:@", fl %#llx", -[NRDeviceOperationalProperties flags](v37, "flags")];
  }

  if ([(NRDeviceOperationalProperties *)v37 proxyCapability]== 1)
  {
    v25 = [(NRDeviceOperationalProperties *)v37 proxyProviderType];
    v26 = objc_alloc(MEMORY[0x277CCACA8]);
    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v27 = "SHOES";
        goto LABEL_74;
      }

      if (v25 == 3)
      {
        v27 = "HTTPConnect";
        goto LABEL_74;
      }
    }

    else
    {
      if (!v25)
      {
        v27 = "Default";
        goto LABEL_74;
      }

      if (v25 == 1)
      {
        v27 = "MASQUE";
LABEL_74:
        v28 = [v26 initWithUTF8String:v27];
        goto LABEL_75;
      }
    }

    v28 = [v26 initWithFormat:@"Unknown(%llu)", v25];
LABEL_75:
    v29 = v28;
    v30 = [(NRDeviceOperationalProperties *)v37 proxyProviderAuthMode];
    v31 = objc_alloc(MEMORY[0x277CCACA8]);
    if (v30 == 2)
    {
      v32 = [v31 initWithUTF8String:"ImportedPSK"];
    }

    else if (v30 == 1)
    {
      v32 = [v31 initWithUTF8String:"RawPSK"];
    }

    else if (v30)
    {
      v32 = [v31 initWithFormat:@"Unknown(%llu)", v30];
    }

    else
    {
      v32 = [v31 initWithUTF8String:"Default"];
    }

    v33 = v32;
    [v36 appendFormat:@", prx-type:%@ prx-auth:%@", v29, v32];
  }

  [v36 appendString:@"]"];

  v34 = *MEMORY[0x277D85DE8];

  return v36;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = NRDeviceOperationalProperties;
  v4 = a3;
  [(NRDeviceProperties *)&v8 encodeWithCoder:v4];
  [v4 encodeInt32:-[NRDeviceOperationalProperties version](self forKey:{"version", v8.receiver, v8.super_class), @"version"}];
  [v4 encodeInt64:-[NRDeviceOperationalProperties proxyCapability](self forKey:{"proxyCapability"), @"proxyCapability"}];
  [v4 encodeInt64:-[NRDeviceOperationalProperties bluetoothRole](self forKey:{"bluetoothRole"), @"bluetoothRole"}];
  [v4 encodeInt64:-[NRDeviceOperationalProperties bluetoothEndpointType](self forKey:{"bluetoothEndpointType"), @"bluetoothEndpointType"}];
  [v4 encodeBool:-[NRDeviceOperationalProperties handlesLinkRecommendations](self forKey:{"handlesLinkRecommendations"), @"handlesLinkRecommendations"}];
  [v4 encodeBool:-[NRDeviceOperationalProperties requiresReachability](self forKey:{"requiresReachability"), @"requiresReachability"}];
  [v4 encodeBool:-[NRDeviceOperationalProperties proxyProviderRequiresWiFi](self forKey:{"proxyProviderRequiresWiFi"), @"proxyProviderRequiresWiFi"}];
  [v4 encodeBool:-[NRDeviceOperationalProperties usesTLS](self forKey:{"usesTLS"), @"usesTLS"}];
  [v4 encodeBool:-[NRDeviceOperationalProperties providesPhoneCallRelaySupport](self forKey:{"providesPhoneCallRelaySupport"), @"providesPhoneCallRelaySupport"}];
  [v4 encodeBool:-[NRDeviceOperationalProperties allowsPermittedClientsOnly](self forKey:{"allowsPermittedClientsOnly"), @"allowsPermittedClientsOnly"}];
  [v4 encodeBool:-[NRDeviceOperationalProperties allowsDirectToCloud](self forKey:{"allowsDirectToCloud"), @"allowsDirectToCloud"}];
  [v4 encodeBool:-[NRDeviceOperationalProperties allowsDeviceDiscovery](self forKey:{"allowsDeviceDiscovery"), @"allowsDeviceDiscovery"}];
  [v4 encodeInt32:-[NRDeviceOperationalProperties allowedPeerDeviceType](self forKey:{"allowedPeerDeviceType"), @"allowedPeerDeviceType"}];
  [v4 encodeBool:-[NRDeviceOperationalProperties allowsDeadPeerDetection](self forKey:{"allowsDeadPeerDetection"), @"allowsDeadPeerDetection"}];
  [v4 encodeBool:-[NRDeviceOperationalProperties isReachableOverWiFi](self forKey:{"isReachableOverWiFi"), @"isReachableOverWiFi"}];
  [v4 encodeInt64:-[NRDeviceOperationalProperties operationalScope](self forKey:{"operationalScope"), @"operationalScope"}];
  [v4 encodeInt64:-[NRDeviceOperationalProperties flags](self forKey:{"flags"), @"flags"}];
  v5 = [(NRDeviceOperationalProperties *)self allowedLinkTypes];
  [v4 encodeObject:v5 forKey:@"allowedLinkTypes"];

  v6 = [(NRDeviceOperationalProperties *)self allowedLinkSubtypes];
  [v4 encodeObject:v6 forKey:@"allowedLinkSubtypes"];

  v7 = [(NRDeviceOperationalProperties *)self proxyProviderCriteria];
  [v4 encodeObject:v7 forKey:@"proxyProviderCriteria"];

  [v4 encodeInt64:-[NRDeviceOperationalProperties proxyProviderType](self forKey:{"proxyProviderType"), @"proxyProviderType"}];
  [v4 encodeInt64:-[NRDeviceOperationalProperties proxyProviderAuthMode](self forKey:{"proxyProviderAuthMode"), @"proxyProviderAuthMode"}];
}

- (NRDeviceOperationalProperties)initWithCoder:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = NRDeviceOperationalProperties;
  v5 = [(NRDeviceProperties *)&v26 initWithCoder:v4];
  if (!v5)
  {
    v12 = nrCopyLogObj_1215();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v13 = v12;
      v14 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

      if (!v14)
      {
        goto LABEL_7;
      }
    }

    v15 = nrCopyLogObj_1215();
    _NRLogWithArgs(v15, 16, "%s%.30s:%-4d ABORTING: [super initWithCoder:] failed", v16, v17, v18, v19, v20, "");

LABEL_7:
    v21 = _os_log_pack_size();
    MEMORY[0x28223BE20](v21, v22);
    v23 = *__error();
    v24 = _os_log_pack_fill();
    *v24 = 136446210;
    *(v24 + 4) = "[NRDeviceOperationalProperties initWithCoder:]";
    v25 = nrCopyLogObj_1215();
    _NRLogAbortWithPack(v25);
  }

  v6 = v5;
  -[NRDeviceOperationalProperties setVersion:](v5, "setVersion:", [v4 decodeInt32ForKey:@"version"]);
  -[NRDeviceOperationalProperties setProxyCapability:](v6, "setProxyCapability:", [v4 decodeInt64ForKey:@"proxyCapability"]);
  -[NRDeviceOperationalProperties setBluetoothRole:](v6, "setBluetoothRole:", [v4 decodeInt64ForKey:@"bluetoothRole"]);
  -[NRDeviceOperationalProperties setBluetoothEndpointType:](v6, "setBluetoothEndpointType:", [v4 decodeInt64ForKey:@"bluetoothEndpointType"]);
  -[NRDeviceOperationalProperties setHandlesLinkRecommendations:](v6, "setHandlesLinkRecommendations:", [v4 decodeBoolForKey:@"handlesLinkRecommendations"]);
  -[NRDeviceOperationalProperties setRequiresReachability:](v6, "setRequiresReachability:", [v4 decodeBoolForKey:@"requiresReachability"]);
  -[NRDeviceOperationalProperties setProxyProviderRequiresWiFi:](v6, "setProxyProviderRequiresWiFi:", [v4 decodeBoolForKey:@"proxyProviderRequiresWiFi"]);
  -[NRDeviceOperationalProperties setUsesTLS:](v6, "setUsesTLS:", [v4 decodeBoolForKey:@"usesTLS"]);
  -[NRDeviceOperationalProperties setProvidesPhoneCallRelaySupport:](v6, "setProvidesPhoneCallRelaySupport:", [v4 decodeBoolForKey:@"providesPhoneCallRelaySupport"]);
  -[NRDeviceOperationalProperties setAllowsPermittedClientsOnly:](v6, "setAllowsPermittedClientsOnly:", [v4 decodeBoolForKey:@"allowsPermittedClientsOnly"]);
  -[NRDeviceOperationalProperties setAllowsDirectToCloud:](v6, "setAllowsDirectToCloud:", [v4 decodeBoolForKey:@"allowsDirectToCloud"]);
  -[NRDeviceOperationalProperties setAllowsDeviceDiscovery:](v6, "setAllowsDeviceDiscovery:", [v4 decodeBoolForKey:@"allowsDeviceDiscovery"]);
  -[NRDeviceOperationalProperties setAllowedPeerDeviceType:](v6, "setAllowedPeerDeviceType:", [v4 decodeInt32ForKey:@"allowedPeerDeviceType"]);
  -[NRDeviceOperationalProperties setAllowsDeadPeerDetection:](v6, "setAllowsDeadPeerDetection:", [v4 decodeBoolForKey:@"allowsDeadPeerDetection"]);
  -[NRDeviceOperationalProperties setIsReachableOverWiFi:](v6, "setIsReachableOverWiFi:", [v4 decodeBoolForKey:@"isReachableOverWiFi"]);
  -[NRDeviceOperationalProperties setOperationalScope:](v6, "setOperationalScope:", [v4 decodeInt64ForKey:@"operationalScope"]);
  -[NRDeviceOperationalProperties setFlags:](v6, "setFlags:", [v4 decodeInt64ForKey:@"flags"]);
  v7 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"allowedLinkTypes"];
  [(NRDeviceOperationalProperties *)v6 setAllowedLinkTypes:v7];

  v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"allowedLinkSubtypes"];
  [(NRDeviceOperationalProperties *)v6 setAllowedLinkSubtypes:v8];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyProviderCriteria"];
  [(NRDeviceOperationalProperties *)v6 setProxyProviderCriteria:v9];

  -[NRDeviceOperationalProperties setProxyProviderType:](v6, "setProxyProviderType:", [v4 decodeInt64ForKey:@"proxyProviderType"]);
  -[NRDeviceOperationalProperties setProxyProviderAuthMode:](v6, "setProxyProviderAuthMode:", [v4 decodeInt64ForKey:@"proxyProviderAuthMode"]);

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = NRDeviceOperationalProperties;
  v4 = [(NRDeviceProperties *)&v12 copyWithZone:a3];
  [v4 setVersion:{-[NRDeviceOperationalProperties version](self, "version")}];
  [v4 setProxyCapability:{-[NRDeviceOperationalProperties proxyCapability](self, "proxyCapability")}];
  [v4 setBluetoothRole:{-[NRDeviceOperationalProperties bluetoothRole](self, "bluetoothRole")}];
  [v4 setHandlesLinkRecommendations:{-[NRDeviceOperationalProperties handlesLinkRecommendations](self, "handlesLinkRecommendations")}];
  [v4 setRequiresReachability:{-[NRDeviceOperationalProperties requiresReachability](self, "requiresReachability")}];
  [v4 setProxyProviderRequiresWiFi:{-[NRDeviceOperationalProperties proxyProviderRequiresWiFi](self, "proxyProviderRequiresWiFi")}];
  [v4 setUsesTLS:{-[NRDeviceOperationalProperties usesTLS](self, "usesTLS")}];
  [v4 setProvidesPhoneCallRelaySupport:{-[NRDeviceOperationalProperties providesPhoneCallRelaySupport](self, "providesPhoneCallRelaySupport")}];
  [v4 setAllowsPermittedClientsOnly:{-[NRDeviceOperationalProperties allowsPermittedClientsOnly](self, "allowsPermittedClientsOnly")}];
  [v4 setBluetoothEndpointType:{-[NRDeviceOperationalProperties bluetoothEndpointType](self, "bluetoothEndpointType")}];
  [v4 setAllowsDirectToCloud:{-[NRDeviceOperationalProperties allowsDirectToCloud](self, "allowsDirectToCloud")}];
  [v4 setAllowsDeviceDiscovery:{-[NRDeviceOperationalProperties allowsDeviceDiscovery](self, "allowsDeviceDiscovery")}];
  [v4 setAllowedPeerDeviceType:{-[NRDeviceOperationalProperties allowedPeerDeviceType](self, "allowedPeerDeviceType")}];
  [v4 setAllowsDeadPeerDetection:{-[NRDeviceOperationalProperties allowsDeadPeerDetection](self, "allowsDeadPeerDetection")}];
  [v4 setIsReachableOverWiFi:{-[NRDeviceOperationalProperties isReachableOverWiFi](self, "isReachableOverWiFi")}];
  [v4 setOperationalScope:{-[NRDeviceOperationalProperties operationalScope](self, "operationalScope")}];
  [v4 setFlags:{-[NRDeviceOperationalProperties flags](self, "flags")}];
  v5 = [(NRDeviceOperationalProperties *)self allowedLinkTypes];
  v6 = [v5 copy];
  [v4 setAllowedLinkTypes:v6];

  v7 = [(NRDeviceOperationalProperties *)self allowedLinkSubtypes];
  v8 = [v7 copy];
  [v4 setAllowedLinkSubtypes:v8];

  v9 = [(NRDeviceOperationalProperties *)self proxyProviderCriteria];
  v10 = [v9 copy];
  [v4 setProxyProviderCriteria:v10];

  [v4 setProxyProviderType:{-[NRDeviceOperationalProperties proxyProviderType](self, "proxyProviderType")}];
  [v4 setProxyProviderAuthMode:{-[NRDeviceOperationalProperties proxyProviderAuthMode](self, "proxyProviderAuthMode")}];
  return v4;
}

- (void)mergeProperties:(id)a3
{
  v4 = a3;
  v25 = v4;
  if (v4)
  {
    -[NRDeviceOperationalProperties setVersion:](self, "setVersion:", [v4 version]);
    -[NRDeviceOperationalProperties setProxyCapability:](self, "setProxyCapability:", [v25 proxyCapability]);
    -[NRDeviceOperationalProperties setBluetoothRole:](self, "setBluetoothRole:", [v25 bluetoothRole]);
    -[NRDeviceOperationalProperties setHandlesLinkRecommendations:](self, "setHandlesLinkRecommendations:", [v25 handlesLinkRecommendations]);
    -[NRDeviceOperationalProperties setRequiresReachability:](self, "setRequiresReachability:", [v25 requiresReachability]);
    -[NRDeviceOperationalProperties setProxyProviderRequiresWiFi:](self, "setProxyProviderRequiresWiFi:", [v25 proxyProviderRequiresWiFi]);
    -[NRDeviceOperationalProperties setUsesTLS:](self, "setUsesTLS:", [v25 usesTLS]);
    -[NRDeviceOperationalProperties setProvidesPhoneCallRelaySupport:](self, "setProvidesPhoneCallRelaySupport:", [v25 providesPhoneCallRelaySupport]);
    -[NRDeviceOperationalProperties setAllowsPermittedClientsOnly:](self, "setAllowsPermittedClientsOnly:", [v25 allowsPermittedClientsOnly]);
    -[NRDeviceOperationalProperties setBluetoothEndpointType:](self, "setBluetoothEndpointType:", [v25 bluetoothEndpointType]);
    -[NRDeviceOperationalProperties setAllowsDirectToCloud:](self, "setAllowsDirectToCloud:", [v25 allowsDirectToCloud]);
    -[NRDeviceOperationalProperties setAllowsDeviceDiscovery:](self, "setAllowsDeviceDiscovery:", [v25 allowsDeviceDiscovery]);
    -[NRDeviceOperationalProperties setAllowedPeerDeviceType:](self, "setAllowedPeerDeviceType:", [v25 allowedPeerDeviceType]);
    -[NRDeviceOperationalProperties setAllowsDeadPeerDetection:](self, "setAllowsDeadPeerDetection:", [v25 allowsDeadPeerDetection]);
    -[NRDeviceOperationalProperties setIsReachableOverWiFi:](self, "setIsReachableOverWiFi:", [v25 isReachableOverWiFi]);
    -[NRDeviceOperationalProperties setOperationalScope:](self, "setOperationalScope:", [v25 operationalScope]);
    -[NRDeviceOperationalProperties setFlags:](self, "setFlags:", [v25 flags]);
    v5 = [v25 allowedLinkTypes];
    v6 = [v5 copy];
    [(NRDeviceOperationalProperties *)self setAllowedLinkTypes:v6];

    v7 = [v25 allowedLinkSubtypes];
    v8 = [v7 copy];
    [(NRDeviceOperationalProperties *)self setAllowedLinkSubtypes:v8];

    v9 = [v25 proxyProviderCriteria];
    v10 = [v9 copy];
    [(NRDeviceOperationalProperties *)self setProxyProviderCriteria:v10];

    -[NRDeviceOperationalProperties setProxyProviderType:](self, "setProxyProviderType:", [v25 proxyProviderType]);
    -[NRDeviceOperationalProperties setProxyProviderAuthMode:](self, "setProxyProviderAuthMode:", [v25 proxyProviderAuthMode]);
    if (nrCopyLogObj_onceToken_1219 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1219, &__block_literal_global_498);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1220, OS_LOG_TYPE_DEFAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1220, 0, "%s%.30s:%-4d merged properties: %@", v11, v12, v13, v14, v15, "");
    }
  }

  else
  {
    v16 = nrCopyLogObj_1215();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v17 = v16;
      v18 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);

      if (!v18)
      {
        goto LABEL_7;
      }
    }

    v19 = nrCopyLogObj_1215();
    _NRLogWithArgs(v19, 17, "%s called with null prop", v20, v21, v22, v23, v24, "[NRDeviceOperationalProperties mergeProperties:]");
  }

LABEL_7:
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(NRDeviceOperationalProperties *)self version];
      if (v6 != [v5 version])
      {
        goto LABEL_35;
      }

      v7 = [(NRDeviceOperationalProperties *)self proxyCapability];
      if (v7 != [v5 proxyCapability])
      {
        goto LABEL_35;
      }

      v8 = [(NRDeviceOperationalProperties *)self bluetoothRole];
      if (v8 != [v5 bluetoothRole])
      {
        goto LABEL_35;
      }

      v9 = [(NRDeviceOperationalProperties *)self handlesLinkRecommendations];
      if (v9 != [v5 handlesLinkRecommendations])
      {
        goto LABEL_35;
      }

      v10 = [(NRDeviceOperationalProperties *)self requiresReachability];
      if (v10 != [v5 requiresReachability])
      {
        goto LABEL_35;
      }

      v11 = [(NRDeviceOperationalProperties *)self proxyProviderRequiresWiFi];
      if (v11 != [v5 proxyProviderRequiresWiFi])
      {
        goto LABEL_35;
      }

      v12 = [(NRDeviceOperationalProperties *)self usesTLS];
      if (v12 != [v5 usesTLS])
      {
        goto LABEL_35;
      }

      v13 = [(NRDeviceOperationalProperties *)self providesPhoneCallRelaySupport];
      if (v13 != [v5 providesPhoneCallRelaySupport])
      {
        goto LABEL_35;
      }

      v14 = [(NRDeviceOperationalProperties *)self allowsPermittedClientsOnly];
      if (v14 != [v5 allowsPermittedClientsOnly])
      {
        goto LABEL_35;
      }

      v15 = [(NRDeviceOperationalProperties *)self bluetoothEndpointType];
      if (v15 != [v5 bluetoothEndpointType])
      {
        goto LABEL_35;
      }

      v16 = [(NRDeviceOperationalProperties *)self allowsDirectToCloud];
      if (v16 != [v5 allowsDirectToCloud])
      {
        goto LABEL_35;
      }

      v17 = [(NRDeviceOperationalProperties *)self allowsDeviceDiscovery];
      if (v17 != [v5 allowsDeviceDiscovery])
      {
        goto LABEL_35;
      }

      v18 = [(NRDeviceOperationalProperties *)self allowedPeerDeviceType];
      if (v18 != [v5 allowedPeerDeviceType])
      {
        goto LABEL_35;
      }

      v19 = [(NRDeviceOperationalProperties *)self allowsDeadPeerDetection];
      if (v19 != [v5 allowsDeadPeerDetection])
      {
        goto LABEL_35;
      }

      v20 = [(NRDeviceOperationalProperties *)self isReachableOverWiFi];
      if (v20 != [v5 isReachableOverWiFi])
      {
        goto LABEL_35;
      }

      v21 = [(NRDeviceOperationalProperties *)self operationalScope];
      if (v21 != [v5 operationalScope])
      {
        goto LABEL_35;
      }

      v22 = [(NRDeviceOperationalProperties *)self flags];
      if (v22 != [v5 flags])
      {
        goto LABEL_35;
      }

      v23 = [(NRDeviceOperationalProperties *)self allowedLinkTypes];
      if (v23)
      {
      }

      else
      {
        v25 = [v5 allowedLinkTypes];

        if (!v25)
        {
          goto LABEL_25;
        }
      }

      v26 = [(NRDeviceOperationalProperties *)self allowedLinkTypes];
      v27 = [v5 allowedLinkTypes];
      v28 = [v26 isEqual:v27];

      if (!v28)
      {
        goto LABEL_35;
      }

LABEL_25:
      v29 = [(NRDeviceOperationalProperties *)self allowedLinkSubtypes];
      if (v29)
      {
      }

      else
      {
        v30 = [v5 allowedLinkSubtypes];

        if (!v30)
        {
          goto LABEL_29;
        }
      }

      v31 = [(NRDeviceOperationalProperties *)self allowedLinkSubtypes];
      v32 = [v5 allowedLinkSubtypes];
      v33 = [v31 isEqual:v32];

      if (!v33)
      {
        goto LABEL_35;
      }

LABEL_29:
      v34 = [(NRDeviceOperationalProperties *)self proxyProviderCriteria];
      if (v34)
      {
      }

      else
      {
        v35 = [v5 proxyProviderCriteria];

        if (!v35)
        {
LABEL_33:
          v39 = [(NRDeviceOperationalProperties *)self proxyProviderType];
          if (v39 == [v5 proxyProviderType])
          {
            v40 = [(NRDeviceOperationalProperties *)self proxyProviderAuthMode];
            v24 = v40 == [v5 proxyProviderAuthMode];
LABEL_36:

            goto LABEL_37;
          }

LABEL_35:
          v24 = 0;
          goto LABEL_36;
        }
      }

      v36 = [(NRDeviceOperationalProperties *)self proxyProviderCriteria];
      v37 = [v5 proxyProviderCriteria];
      v38 = [v36 isEqual:v37];

      if (!v38)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }
  }

  v24 = 0;
LABEL_37:

  return v24;
}

- (NRDeviceOperationalProperties)init
{
  v21 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = NRDeviceOperationalProperties;
  v2 = [(NRDeviceOperationalProperties *)&v20 init];
  if (!v2)
  {
    v6 = nrCopyLogObj_1215();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v7 = v6;
      v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

      if (!v8)
      {
        goto LABEL_7;
      }
    }

    v9 = nrCopyLogObj_1215();
    _NRLogWithArgs(v9, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v10, v11, v12, v13, v14, "");

LABEL_7:
    v15 = _os_log_pack_size();
    MEMORY[0x28223BE20](v15, v16);
    v17 = *__error();
    v18 = _os_log_pack_fill();
    *v18 = 136446210;
    *(v18 + 4) = "[NRDeviceOperationalProperties init]";
    v19 = nrCopyLogObj_1215();
    _NRLogAbortWithPack(v19);
  }

  v3 = v2;
  [(NRDeviceOperationalProperties *)v2 setVersion:1];
  [(NRDeviceOperationalProperties *)v3 setAllowedLinkTypes:&unk_286D2D130];
  [(NRDeviceOperationalProperties *)v3 setBluetoothEndpointType:3];
  [(NRDeviceOperationalProperties *)v3 setIsReachableOverWiFi:1];
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (id)copyPropertiesForDefaultPairedWatch
{
  v2 = objc_alloc_init(NRDeviceOperationalProperties);
  [(NRDeviceOperationalProperties *)v2 setProxyCapability:2];
  [(NRDeviceOperationalProperties *)v2 setBluetoothRole:2];
  [(NRDeviceOperationalProperties *)v2 setBluetoothEndpointType:1];
  [(NRDeviceOperationalProperties *)v2 setHandlesLinkRecommendations:1];
  [(NRDeviceOperationalProperties *)v2 setRequiresReachability:1];
  [(NRDeviceOperationalProperties *)v2 setAllowsDirectToCloud:1];
  [(NRDeviceOperationalProperties *)v2 setProvidesPhoneCallRelaySupport:1];
  [(NRDeviceOperationalProperties *)v2 setAllowedLinkTypes:&unk_286D2D178];
  [(NRDeviceOperationalProperties *)v2 setAllowedLinkSubtypes:&unk_286D2D190];
  [(NRDeviceOperationalProperties *)v2 setAllowsApplicationServiceConnections:1];
  [(NRDeviceOperationalProperties *)v2 setFlags:[(NRDeviceOperationalProperties *)v2 flags]| 1];
  return v2;
}

+ (id)copyPropertiesForDefaultPairedPhone
{
  v2 = objc_alloc_init(NRDeviceOperationalProperties);
  [(NRDeviceOperationalProperties *)v2 setProxyCapability:1];
  [(NRDeviceOperationalProperties *)v2 setBluetoothRole:1];
  [(NRDeviceOperationalProperties *)v2 setBluetoothEndpointType:2];
  [(NRDeviceOperationalProperties *)v2 setAllowsPermittedClientsOnly:1];
  [(NRDeviceOperationalProperties *)v2 setIsReachableOverWiFi:1];
  [(NRDeviceOperationalProperties *)v2 setProvidesPhoneCallRelaySupport:1];
  [(NRDeviceOperationalProperties *)v2 setAllowedLinkTypes:&unk_286D2D148];
  [(NRDeviceOperationalProperties *)v2 setAllowedLinkSubtypes:&unk_286D2D160];
  [(NRDeviceOperationalProperties *)v2 setAllowsApplicationServiceConnections:1];
  [(NRDeviceOperationalProperties *)v2 setFlags:[(NRDeviceOperationalProperties *)v2 flags]| 1];
  return v2;
}

@end