@interface NRDeviceProperties
+ (unsigned)getNetworkRelayVersion;
- (NRDeviceProperties)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NRDeviceProperties

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"[NRDeviceProp pairProtVers=%llu/nr:%u]", -[NRDeviceProperties pairingProtocolVersion](self, "pairingProtocolVersion"), -[NRDeviceProperties peerNetworkRelayVersion](self, "peerNetworkRelayVersion")];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[NRDeviceProperties pairingProtocolVersion](self forKey:{"pairingProtocolVersion"), @"pairingProtocolVersion"}];
  [coderCopy encodeInt32:-[NRDeviceProperties peerNetworkRelayVersion](self forKey:{"peerNetworkRelayVersion"), @"peerNetworkRelayVersion"}];
}

- (NRDeviceProperties)initWithCoder:(id)coder
{
  v24 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = NRDeviceProperties;
  v5 = [(NRDeviceProperties *)&v23 init];
  if (!v5)
  {
    v9 = nrCopyLogObj_1215();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v10 = v9;
      v11 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

      if (!v11)
      {
        goto LABEL_7;
      }
    }

    v12 = nrCopyLogObj_1215();
    _NRLogWithArgs(v12, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v13, v14, v15, v16, v17, "");

LABEL_7:
    v18 = _os_log_pack_size();
    MEMORY[0x28223BE20](v18, v19);
    v20 = *__error();
    v21 = _os_log_pack_fill();
    *v21 = 136446210;
    *(v21 + 4) = "[NRDeviceProperties initWithCoder:]";
    v22 = nrCopyLogObj_1215();
    _NRLogAbortWithPack(v22);
  }

  v6 = v5;
  -[NRDeviceProperties setPairingProtocolVersion:](v5, "setPairingProtocolVersion:", [coderCopy decodeInt64ForKey:@"pairingProtocolVersion"]);
  -[NRDeviceProperties setPeerNetworkRelayVersion:](v6, "setPeerNetworkRelayVersion:", [coderCopy decodeInt32ForKey:@"peerNetworkRelayVersion"]);

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setPairingProtocolVersion:{-[NRDeviceProperties pairingProtocolVersion](self, "pairingProtocolVersion")}];
  [v4 setPeerNetworkRelayVersion:{-[NRDeviceProperties peerNetworkRelayVersion](self, "peerNetworkRelayVersion")}];
  return v4;
}

+ (unsigned)getNetworkRelayVersion
{
  if (getNetworkRelayVersion_onceToken != -1)
  {
    dispatch_once(&getNetworkRelayVersion_onceToken, &__block_literal_global_1230);
  }

  return getNetworkRelayVersion_version;
}

uint64_t __44__NRDeviceProperties_getNetworkRelayVersion__block_invoke()
{
  result = nrXPCGetNetworkRelayVersion();
  getNetworkRelayVersion_version = result;
  return result;
}

@end