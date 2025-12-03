@interface IDSDataChannelLinkContext
- (BOOL)isQUICPod;
- (IDSDataChannelLinkContext)initWithAttributes:(id *)attributes maxBitrate:(unsigned int)bitrate relayServerProvider:(int64_t)provider relaySessionToken:(id)token relaySessionKey:(id)key hbhEncryptionkey:(id)encryptionkey hbhDecryptionkey:(id)decryptionkey relayProtocolStackDescription:(id)self0 qrExperiments:(id)self1 featureFlags:(id)self2 linkEngineUniqueID:(id)self3 estimatedPerPacketConstantOverhead:(unsigned __int16)self4;
- (IDSDataChannelLinkContext)initWithDummyInformation;
- (NSString)channelDataBaseProtocolStackDescription;
- (NSString)interfaceName;
- (id)_connection;
- (int64_t)ipFamily;
- (int64_t)kind;
@end

@implementation IDSDataChannelLinkContext

- (IDSDataChannelLinkContext)initWithDummyInformation
{
  if (_IDSRunningInDaemon())
  {
    v3 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_195B2E9C8();
    }

    goto LABEL_5;
  }

  v22.receiver = self;
  v22.super_class = IDSDataChannelLinkContext;
  self = [(IDSDataChannelLinkContext *)&v22 init];
  if (!self)
  {
LABEL_9:
    self = self;
    selfCopy = self;
    goto LABEL_10;
  }

  v5 = objc_alloc_init(_IDSDataChannelLinkContext);
  internal = self->_internal;
  self->_internal = v5;

  if (self->_internal)
  {
    v7 = [objc_alloc(MEMORY[0x1E69A5418]) initWithLink:self addBlock:&unk_1F09E71C0];
    testableLink = self->_testableLink;
    self->_testableLink = v7;

    self->_internal->_linkID = 0;
    self->_internal->_maxMTU = 1450;
    self->_internal->_networkType = 1;
    self->_internal->_connectionType = 0;
    self->_internal->_RATType = 0;
    self->_internal->_remoteNetworkType = 1;
    self->_internal->_remoteConnectionType = 0;
    self->_internal->_remoteRATType = 0;
    self->_internal->_maxBitrate = 100000;
    self->_internal->_localLinkFlags = 0;
    self->_internal->_remoteLinkFlags = 0;
    self->_internal->_localDataSoMask = 0;
    self->_internal->_remoteDataSoMask = 0;
    self->_internal->_localRelayLinkID = 4;
    self->_internal->_remoteRelayLinkID = 6;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v10 = self->_internal;
    uniqueID = v10->_uniqueID;
    v10->_uniqueID = uUID;

    self->_internal->_channelNumber = 96;
    v12 = [MEMORY[0x1E695DEF0] __imDataWithRandomBytes:32];
    objc_storeStrong(&self->_internal->_hbhEncryptionkey, v12);
    v13 = self->_internal;
    hbhDecryptionkey = v13->_hbhDecryptionkey;
    v13->_hbhDecryptionkey = v12;
    v15 = v12;

    v16 = objc_alloc_init(_IDSDataChannelLinkConnection);
    [(_IDSDataChannelLinkConnection *)v16 setType:@"udp"];
    [(_IDSDataChannelLinkConnection *)v16 setAllowOutgoing:1];
    [(_IDSDataChannelLinkConnection *)v16 setClientNWConnectionID:5];
    [(_IDSDataChannelLinkConnection *)v16 setNwConnectionID:4];
    [(_IDSDataChannelLinkConnection *)v16 setIsQUICPod:0];
    [(_IDSDataChannelLinkConnection *)v16 setProtocolStack:@"ip.udp.demux"];
    v17 = objc_alloc_init(_IDSDataChannelLinkConnection);
    [(_IDSDataChannelLinkConnection *)v17 setType:@"qpod"];
    [(_IDSDataChannelLinkConnection *)v17 setAllowOutgoing:1];
    [(_IDSDataChannelLinkConnection *)v17 setClientNWConnectionID:5];
    [(_IDSDataChannelLinkConnection *)v17 setNwConnectionID:4];
    [(_IDSDataChannelLinkConnection *)v17 setIsQUICPod:1];
    [(_IDSDataChannelLinkConnection *)v17 setProtocolStack:@"ip.udp.demux.qpod"];
    v18 = objc_alloc_init(_IDSDataChannelLinkConnections);
    v19 = self->_internal;
    connections = v19->_connections;
    v19->_connections = v18;

    [(_IDSDataChannelLinkConnections *)self->_internal->_connections setUdp:v16];
    [(_IDSDataChannelLinkConnections *)self->_internal->_connections setQpod:v17];

    goto LABEL_9;
  }

LABEL_5:
  selfCopy = 0;
LABEL_10:

  return selfCopy;
}

- (IDSDataChannelLinkContext)initWithAttributes:(id *)attributes maxBitrate:(unsigned int)bitrate relayServerProvider:(int64_t)provider relaySessionToken:(id)token relaySessionKey:(id)key hbhEncryptionkey:(id)encryptionkey hbhDecryptionkey:(id)decryptionkey relayProtocolStackDescription:(id)self0 qrExperiments:(id)self1 featureFlags:(id)self2 linkEngineUniqueID:(id)self3 estimatedPerPacketConstantOverhead:(unsigned __int16)self4
{
  tokenCopy = token;
  obj = key;
  keyCopy = key;
  encryptionkeyCopy = encryptionkey;
  decryptionkeyCopy = decryptionkey;
  descriptionCopy = description;
  experimentsCopy = experiments;
  flagsCopy = flags;
  dCopy = d;
  v52.receiver = self;
  v52.super_class = IDSDataChannelLinkContext;
  v23 = [(IDSDataChannelLinkContext *)&v52 init];
  if (v23)
  {
    v24 = objc_alloc_init(_IDSDataChannelLinkContext);
    internal = v23->_internal;
    v23->_internal = v24;

    if (!v23->_internal)
    {
      v43 = 0;
      goto LABEL_6;
    }

    v26 = [objc_alloc(MEMORY[0x1E69A5418]) initWithLink:v23 addBlock:&unk_1F09E71E0];
    testableLink = v23->_testableLink;
    v23->_testableLink = v26;

    v23->_internal->_linkID = attributes->var3;
    v28 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:attributes];
    v29 = v23->_internal;
    uniqueID = v29->_uniqueID;
    v29->_uniqueID = v28;

    objc_storeStrong(&v23->_internal->_linkEngineUniqueID, d);
    v31 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:attributes->var1];
    v32 = v23->_internal;
    linkUUID = v32->_linkUUID;
    v32->_linkUUID = v31;

    v34 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:attributes->var2];
    v35 = v23->_internal;
    QRSessionID = v35->_QRSessionID;
    v35->_QRSessionID = v34;

    v23->_internal->_networkType = attributes->var4;
    v23->_internal->_connectionType = attributes->var5;
    v23->_internal->_RATType = attributes->var6;
    v23->_internal->_maxMTU = attributes->var16;
    v23->_internal->_isPartialTLEUPlusOneEnabled = attributes->var20;
    v23->_internal->_isQualityMetadataEnabled = attributes->var21;
    v23->_internal->_relayServerProvider = provider;
    objc_storeStrong(&v23->_internal->_relaySessionToken, token);
    objc_storeStrong(&v23->_internal->_relaySessionKey, obj);
    v23->_internal->_serverIsDegraded = attributes->var10 != 0;
    v23->_internal->_localLinkFlags |= attributes->var11 & 1;
    v23->_internal->_localLinkFlags |= attributes->var11 & 2;
    v23->_internal->_localLinkFlags |= attributes->var11 & 4;
    v23->_internal->_localLinkFlags |= attributes->var11 & 8;
    v23->_internal->_localLinkFlags |= attributes->var11 & 0x10;
    v23->_internal->_localLinkFlags |= attributes->var11 & 0x20;
    v23->_internal->_localLinkFlags |= attributes->var11 & 0x40;
    v23->_internal->_localLinkFlags |= attributes->var11 & 0x80;
    v23->_internal->_maxBitrate = bitrate;
    v23->_internal->_localDataSoMask = attributes->var13;
    v23->_internal->_isVirtualRelayLink = attributes->var19;
    attributes->var24[15] = 0;
    v37 = [MEMORY[0x1E696AEC0] stringWithCString:attributes->var24 encoding:4];
    v38 = v23->_internal;
    localInterfaceName = v38->_localInterfaceName;
    v38->_localInterfaceName = v37;

    objc_storeStrong(&v23->_internal->_relayProtocolStackDescription, description);
    objc_storeStrong(&v23->_internal->_qrExperiments, experiments);
    objc_storeStrong(&v23->_internal->_featureFlags, flags);
    v23->_internal->_remoteNetworkType = attributes->var7;
    v23->_internal->_remoteConnectionType = attributes->var8;
    v23->_internal->_remoteRATType = attributes->var9;
    v23->_internal->_remoteLinkFlags |= attributes->var12 & 1;
    v23->_internal->_remoteLinkFlags |= attributes->var12 & 2;
    v23->_internal->_remoteLinkFlags |= attributes->var12 & 4;
    v23->_internal->_remoteLinkFlags |= attributes->var12 & 8;
    v23->_internal->_remoteLinkFlags |= attributes->var12 & 0x10;
    v23->_internal->_remoteLinkFlags |= attributes->var12 & 0x20;
    v23->_internal->_remoteLinkFlags |= attributes->var12 & 0x40;
    v23->_internal->_remoteLinkFlags |= attributes->var12 & 0x80;
    v23->_internal->_remoteDataSoMask = attributes->var14;
    v23->_internal->_delegatedLinkID = attributes->var23;
    v23->_internal->_localRelayLinkID = attributes->var17;
    v23->_internal->_remoteRelayLinkID = attributes->var18;
    v23->_internal->_channelNumber = attributes->var15;
    objc_storeStrong(&v23->_internal->_hbhEncryptionkey, encryptionkey);
    objc_storeStrong(&v23->_internal->_hbhDecryptionkey, decryptionkey);
    v40 = objc_alloc_init(_IDSDataChannelLinkConnections);
    v41 = v23->_internal;
    connections = v41->_connections;
    v41->_connections = v40;

    v23->_internal->_estimatedPerPacketConstantOverhead = overhead;
  }

  v43 = v23;
LABEL_6:

  return v43;
}

- (BOOL)isQUICPod
{
  qpod = [(_IDSDataChannelLinkConnections *)self->_internal->_connections qpod];
  v3 = qpod;
  v4 = qpod && ([qpod allowOutgoing] & 1) != 0;

  return v4;
}

- (id)_connection
{
  isQUICPod = [(IDSDataChannelLinkContext *)self isQUICPod];
  connections = self->_internal->_connections;
  if (isQUICPod)
  {
    [(_IDSDataChannelLinkConnections *)connections qpod];
  }

  else
  {
    [(_IDSDataChannelLinkConnections *)connections udp];
  }
  v5 = ;

  return v5;
}

- (NSString)channelDataBaseProtocolStackDescription
{
  _connection = [(IDSDataChannelLinkContext *)self _connection];
  v3 = _connection;
  if (_connection)
  {
    protocolStack = [_connection protocolStack];
  }

  else
  {
    protocolStack = @"(unknown)";
  }

  return protocolStack;
}

- (int64_t)kind
{
  internal = self->_internal;
  if (internal->_isVirtualRelayLink)
  {
    return 2;
  }

  if (internal->_connectionType == 1)
  {
    return 3;
  }

  return 1;
}

- (NSString)interfaceName
{
  if (self->_internal->_localInterfaceName)
  {
    return self->_internal->_localInterfaceName;
  }

  else
  {
    return @"unknown";
  }
}

- (int64_t)ipFamily
{
  if (self->_internal->_networkType == 1)
  {
    return 4;
  }

  else
  {
    return 6;
  }
}

@end