@interface IDSDataChannelLinkContext
- (BOOL)isQUICPod;
- (IDSDataChannelLinkContext)initWithAttributes:(id *)a3 maxBitrate:(unsigned int)a4 relayServerProvider:(int64_t)a5 relaySessionToken:(id)a6 relaySessionKey:(id)a7 hbhEncryptionkey:(id)a8 hbhDecryptionkey:(id)a9 relayProtocolStackDescription:(id)a10 qrExperiments:(id)a11 featureFlags:(id)a12 linkEngineUniqueID:(id)a13 estimatedPerPacketConstantOverhead:(unsigned __int16)a14;
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
    v4 = self;
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
    v9 = [MEMORY[0x1E696AFB0] UUID];
    v10 = self->_internal;
    uniqueID = v10->_uniqueID;
    v10->_uniqueID = v9;

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
  v4 = 0;
LABEL_10:

  return v4;
}

- (IDSDataChannelLinkContext)initWithAttributes:(id *)a3 maxBitrate:(unsigned int)a4 relayServerProvider:(int64_t)a5 relaySessionToken:(id)a6 relaySessionKey:(id)a7 hbhEncryptionkey:(id)a8 hbhDecryptionkey:(id)a9 relayProtocolStackDescription:(id)a10 qrExperiments:(id)a11 featureFlags:(id)a12 linkEngineUniqueID:(id)a13 estimatedPerPacketConstantOverhead:(unsigned __int16)a14
{
  v49 = a6;
  obj = a7;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v51 = a12;
  v50 = a13;
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

    v23->_internal->_linkID = a3->var3;
    v28 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a3];
    v29 = v23->_internal;
    uniqueID = v29->_uniqueID;
    v29->_uniqueID = v28;

    objc_storeStrong(&v23->_internal->_linkEngineUniqueID, a13);
    v31 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a3->var1];
    v32 = v23->_internal;
    linkUUID = v32->_linkUUID;
    v32->_linkUUID = v31;

    v34 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a3->var2];
    v35 = v23->_internal;
    QRSessionID = v35->_QRSessionID;
    v35->_QRSessionID = v34;

    v23->_internal->_networkType = a3->var4;
    v23->_internal->_connectionType = a3->var5;
    v23->_internal->_RATType = a3->var6;
    v23->_internal->_maxMTU = a3->var16;
    v23->_internal->_isPartialTLEUPlusOneEnabled = a3->var20;
    v23->_internal->_isQualityMetadataEnabled = a3->var21;
    v23->_internal->_relayServerProvider = a5;
    objc_storeStrong(&v23->_internal->_relaySessionToken, a6);
    objc_storeStrong(&v23->_internal->_relaySessionKey, obj);
    v23->_internal->_serverIsDegraded = a3->var10 != 0;
    v23->_internal->_localLinkFlags |= a3->var11 & 1;
    v23->_internal->_localLinkFlags |= a3->var11 & 2;
    v23->_internal->_localLinkFlags |= a3->var11 & 4;
    v23->_internal->_localLinkFlags |= a3->var11 & 8;
    v23->_internal->_localLinkFlags |= a3->var11 & 0x10;
    v23->_internal->_localLinkFlags |= a3->var11 & 0x20;
    v23->_internal->_localLinkFlags |= a3->var11 & 0x40;
    v23->_internal->_localLinkFlags |= a3->var11 & 0x80;
    v23->_internal->_maxBitrate = a4;
    v23->_internal->_localDataSoMask = a3->var13;
    v23->_internal->_isVirtualRelayLink = a3->var19;
    a3->var24[15] = 0;
    v37 = [MEMORY[0x1E696AEC0] stringWithCString:a3->var24 encoding:4];
    v38 = v23->_internal;
    localInterfaceName = v38->_localInterfaceName;
    v38->_localInterfaceName = v37;

    objc_storeStrong(&v23->_internal->_relayProtocolStackDescription, a10);
    objc_storeStrong(&v23->_internal->_qrExperiments, a11);
    objc_storeStrong(&v23->_internal->_featureFlags, a12);
    v23->_internal->_remoteNetworkType = a3->var7;
    v23->_internal->_remoteConnectionType = a3->var8;
    v23->_internal->_remoteRATType = a3->var9;
    v23->_internal->_remoteLinkFlags |= a3->var12 & 1;
    v23->_internal->_remoteLinkFlags |= a3->var12 & 2;
    v23->_internal->_remoteLinkFlags |= a3->var12 & 4;
    v23->_internal->_remoteLinkFlags |= a3->var12 & 8;
    v23->_internal->_remoteLinkFlags |= a3->var12 & 0x10;
    v23->_internal->_remoteLinkFlags |= a3->var12 & 0x20;
    v23->_internal->_remoteLinkFlags |= a3->var12 & 0x40;
    v23->_internal->_remoteLinkFlags |= a3->var12 & 0x80;
    v23->_internal->_remoteDataSoMask = a3->var14;
    v23->_internal->_delegatedLinkID = a3->var23;
    v23->_internal->_localRelayLinkID = a3->var17;
    v23->_internal->_remoteRelayLinkID = a3->var18;
    v23->_internal->_channelNumber = a3->var15;
    objc_storeStrong(&v23->_internal->_hbhEncryptionkey, a8);
    objc_storeStrong(&v23->_internal->_hbhDecryptionkey, a9);
    v40 = objc_alloc_init(_IDSDataChannelLinkConnections);
    v41 = v23->_internal;
    connections = v41->_connections;
    v41->_connections = v40;

    v23->_internal->_estimatedPerPacketConstantOverhead = a14;
  }

  v43 = v23;
LABEL_6:

  return v43;
}

- (BOOL)isQUICPod
{
  v2 = [(_IDSDataChannelLinkConnections *)self->_internal->_connections qpod];
  v3 = v2;
  v4 = v2 && ([v2 allowOutgoing] & 1) != 0;

  return v4;
}

- (id)_connection
{
  v3 = [(IDSDataChannelLinkContext *)self isQUICPod];
  connections = self->_internal->_connections;
  if (v3)
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
  v2 = [(IDSDataChannelLinkContext *)self _connection];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 protocolStack];
  }

  else
  {
    v4 = @"(unknown)";
  }

  return v4;
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