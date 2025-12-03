@interface NWSUDPSnapshot
- (BOOL)interfaceCellularViaFallback;
- (NWSUDPSnapshot)initWithCounts:(const nstat_counts *)counts UDPDescriptor:(nstat_udp_descriptor *)descriptor sourceIdent:(unint64_t)ident events:(unint64_t)events seqno:(unint64_t)seqno provider:(unsigned int)provider;
- (id)description;
- (id)euuid;
- (id)fuuid;
- (id)localAddress;
- (id)processName;
- (id)remoteAddress;
- (id)traditionalDictionary;
- (id)uuid;
- (id)vuuid;
@end

@implementation NWSUDPSnapshot

- (id)traditionalDictionary
{
  v51.receiver = self;
  v51.super_class = NWSUDPSnapshot;
  v3 = [(NWSSnapshot *)&v51 _createCountsForProvider:4];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_34;
  }

  [v3 setObject:kNStatProviderUDP forKeyedSubscript:kNStatSrcKeyProvider];
  localAddress = [(NWSUDPSnapshot *)self localAddress];

  if (localAddress)
  {
    v6 = MEMORY[0x277CBEA90];
    localAddress2 = [(NWSUDPSnapshot *)self localAddress];
    v8 = [v6 dataWithData:localAddress2];
    [v4 setObject:v8 forKeyedSubscript:kNStatSrcKeyLocal];
  }

  remoteAddress = [(NWSUDPSnapshot *)self remoteAddress];

  if (remoteAddress)
  {
    v10 = MEMORY[0x277CBEA90];
    remoteAddress2 = [(NWSUDPSnapshot *)self remoteAddress];
    v12 = [v10 dataWithData:remoteAddress2];
    [v4 setObject:v12 forKeyedSubscript:kNStatSrcKeyRemote];
  }

  p_descriptor = &self->_descriptor;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_descriptor.ifindex];
  [v4 setObject:v14 forKeyedSubscript:kNStatSrcKeyInterface];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_descriptor.pid];
  [v4 setObject:v15 forKeyedSubscript:kNStatSrcKeyPID];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_descriptor.upid];
  [v4 setObject:v16 forKeyedSubscript:kNStatSrcKeyUPID];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_descriptor.epid];
  [v4 setObject:v17 forKeyedSubscript:kNStatSrcKeyEPID];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_descriptor.eupid];
  [v4 setObject:v18 forKeyedSubscript:kNStatSrcKeyEUPID];

  uuid = [(NWSUDPSnapshot *)self uuid];

  if (uuid)
  {
    v20 = MEMORY[0x277CCACA8];
    uuid2 = [(NWSUDPSnapshot *)self uuid];
    v22 = [v20 stringWithString:uuid2];
    [v4 setObject:v22 forKeyedSubscript:kNStatSrcKeyUUID];
  }

  euuid = [(NWSUDPSnapshot *)self euuid];

  if (euuid)
  {
    v24 = MEMORY[0x277CCACA8];
    euuid2 = [(NWSUDPSnapshot *)self euuid];
    v26 = [v24 stringWithString:euuid2];
    [v4 setObject:v26 forKeyedSubscript:kNStatSrcKeyEUUID];
  }

  fuuid = [(NWSUDPSnapshot *)self fuuid];

  if (fuuid)
  {
    v28 = MEMORY[0x277CCACA8];
    fuuid2 = [(NWSUDPSnapshot *)self fuuid];
    v30 = [v28 stringWithString:fuuid2];
    [v4 setObject:v30 forKeyedSubscript:kNStatSrcKeyFUUID];
  }

  vuuid = [(NWSUDPSnapshot *)self vuuid];

  if (vuuid)
  {
    v32 = MEMORY[0x277CCACA8];
    vuuid2 = [(NWSUDPSnapshot *)self vuuid];
    v34 = [v32 stringWithString:vuuid2];
    [v4 setObject:v34 forKeyedSubscript:kNStatSrcKeyVUUID];
  }

  processName = [(NWSUDPSnapshot *)self processName];

  if (processName)
  {
    v36 = MEMORY[0x277CCACA8];
    processName2 = [(NWSUDPSnapshot *)self processName];
    v38 = [v36 stringWithString:processName2];
    [v4 setObject:v38 forKeyedSubscript:kNStatSrcKeyProcessName];
  }

  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_descriptor.rcvbufsize];
  [v4 setObject:v39 forKeyedSubscript:kNStatSrcKeyRcvBufSize];

  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_descriptor.rcvbufused];
  [v4 setObject:v40 forKeyedSubscript:kNStatSrcKeyRcvBufUsed];

  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_descriptor.traffic_class];
  [v4 setObject:v41 forKeyedSubscript:kNStatSrcKeyTrafficClass];

  ifnet_properties = self->_descriptor.ifnet_properties;
  if ((ifnet_properties & 8) != 0)
  {
    v44 = &kNStatSrcKeyInterfaceTypeWiFi;
LABEL_24:
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*v44];
    goto LABEL_25;
  }

  if ((ifnet_properties & 4) == 0)
  {
    v43 = &kNStatSrcKeyInterfaceTypeLoopback;
    if ((ifnet_properties & 2) == 0)
    {
      v43 = &kNStatSrcKeyInterfaceTypeUnknown;
    }

    if ((ifnet_properties & 0x10) != 0)
    {
      v44 = &kNStatSrcKeyInterfaceTypeWired;
    }

    else
    {
      v44 = v43;
    }

    goto LABEL_24;
  }

  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:kNStatSrcKeyInterfaceTypeCellular];
  if ((self->_descriptor.ifnet_properties & 0x100) != 0)
  {
    if (self->_descriptor.fallback_mode - 2 < 3)
    {
      v44 = off_27996E358[(self->_descriptor.fallback_mode - 2)];
      goto LABEL_24;
    }

    if (self->_provider == 4)
    {
      v44 = &kNStatSrcKeyInterfaceIsCellFallback;
      goto LABEL_24;
    }
  }

LABEL_25:
  v45 = self->_descriptor.ifnet_properties;
  if ((v45 & 0x200) == 0)
  {
    if ((v45 & 0x40) == 0)
    {
      goto LABEL_27;
    }

LABEL_38:
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:kNStatSrcKeyInterfaceIsExpensive];
    if ((self->_descriptor.ifnet_properties & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:kNStatSrcKeyInterfaceTypeCompanionLink];
  v45 = self->_descriptor.ifnet_properties;
  if ((v45 & 0x40) != 0)
  {
    goto LABEL_38;
  }

LABEL_27:
  if ((v45 & 0x20) != 0)
  {
LABEL_28:
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:kNStatSrcKeyInterfaceIsAWDL];
  }

LABEL_29:
  if ([(NWSUDPSnapshot *)self countsIncludeHeaderOverhead])
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:kNStatSrcKeyChannelArchitecture];
  }

  if (self->_eventFlags)
  {
    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
    [v4 setObject:v46 forKeyedSubscript:kNStatSrcKeyEventFlags];
  }

  v47 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:p_descriptor->start_timestamp];
  [v4 setObject:v47 forKeyedSubscript:kNStatSrcKeyStartAbsoluteTime];

  v48 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:p_descriptor->timestamp - p_descriptor->start_timestamp];
  [v4 setObject:v48 forKeyedSubscript:kNStatSrcKeyDurationAbsoluteTime];

  v49 = v4;
LABEL_34:

  return v4;
}

- (id)localAddress
{
  if (!self->_localAddress)
  {
    if (self->_descriptor.local.v4.sin_len)
    {
      v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&self->_descriptor.local length:self->_descriptor.local.v4.sin_len];
    }

    else
    {
      v3 = 0;
    }

    localAddress = self->_localAddress;
    self->_localAddress = v3;
  }

  v5 = self->_localAddress;

  return v5;
}

- (id)remoteAddress
{
  if (!self->_remoteAddress)
  {
    if (self->_descriptor.remote.v4.sin_len)
    {
      v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&self->_descriptor.remote length:self->_descriptor.remote.v4.sin_len];
    }

    else
    {
      v3 = 0;
    }

    remoteAddress = self->_remoteAddress;
    self->_remoteAddress = v3;
  }

  v5 = self->_remoteAddress;

  return v5;
}

- (id)uuid
{
  uuid = self->_uuid;
  if (!uuid)
  {
    v4 = [(NWSProtocolSnapshot *)self _createNSUUIDForBytes:self->_descriptor.uuid];
    uUIDString = [v4 UUIDString];
    v6 = self->_uuid;
    self->_uuid = uUIDString;

    uuid = self->_uuid;
  }

  return uuid;
}

- (id)euuid
{
  euuid = self->_euuid;
  if (!euuid)
  {
    v4 = [(NWSProtocolSnapshot *)self _createNSUUIDForBytes:self->_descriptor.euuid];
    uUIDString = [v4 UUIDString];
    v6 = self->_euuid;
    self->_euuid = uUIDString;

    euuid = self->_euuid;
  }

  return euuid;
}

- (id)vuuid
{
  vuuid = self->_vuuid;
  if (!vuuid)
  {
    v4 = [(NWSProtocolSnapshot *)self _createNSUUIDForBytes:self->_descriptor.vuuid];
    uUIDString = [v4 UUIDString];
    v6 = self->_vuuid;
    self->_vuuid = uUIDString;

    vuuid = self->_vuuid;
  }

  return vuuid;
}

- (id)fuuid
{
  fuuid = self->_fuuid;
  if (!fuuid)
  {
    v4 = [(NWSProtocolSnapshot *)self _createNSUUIDForBytes:self->_descriptor.fuuid];
    uUIDString = [v4 UUIDString];
    v6 = self->_fuuid;
    self->_fuuid = uUIDString;

    fuuid = self->_fuuid;
  }

  return fuuid;
}

- (id)processName
{
  processName = self->_processName;
  if (!processName)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.64s", self->_descriptor.pname];
    v5 = self->_processName;
    self->_processName = v4;

    processName = self->_processName;
  }

  return processName;
}

- (BOOL)interfaceCellularViaFallback
{
  if ((~self->_descriptor.ifnet_properties & 0x104) != 0)
  {
    return 0;
  }

  if ((self->_descriptor.fallback_mode & 0xFE) == 2)
  {
    return 1;
  }

  return self->_provider == 4;
}

- (id)description
{
  __ret = 0;
  v7.receiver = self;
  v7.super_class = NWSUDPSnapshot;
  v3 = [(NWSSnapshot *)&v7 description];
  v4 = printf_domain();
  asxprintf(&__ret, v4, 0, "NWUDPSnapshot %N<->%N@%I %@", &self->_descriptor.local, &self->_descriptor.remote, self->_descriptor.ifindex, v3);
  if (__ret)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithCString:__ret encoding:4];
    free(__ret);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NWSUDPSnapshot)initWithCounts:(const nstat_counts *)counts UDPDescriptor:(nstat_udp_descriptor *)descriptor sourceIdent:(unint64_t)ident events:(unint64_t)events seqno:(unint64_t)seqno provider:(unsigned int)provider
{
  v14.receiver = self;
  v14.super_class = NWSUDPSnapshot;
  v11 = [(NWSSnapshot *)&v14 _initWithCounts:counts sourceIdent:ident seqno:seqno];
  v12 = v11;
  if (v11)
  {
    memcpy(&v11->_descriptor, descriptor, sizeof(v11->_descriptor));
    v12->_provider = provider;
    v12->_eventFlags = events;
  }

  return v12;
}

@end