@interface NWSQUICSnapshot
- (NWSQUICSnapshot)initWithCounts:(const nstat_counts *)a3 QUICDescriptor:(nstat_tcp_descriptor *)a4 sourceIdent:(unint64_t)a5 events:(unint64_t)a6 seqno:(unint64_t)a7 provider:(unsigned int)a8;
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

@implementation NWSQUICSnapshot

- (id)traditionalDictionary
{
  v51.receiver = self;
  v51.super_class = NWSQUICSnapshot;
  v3 = [(NWSSnapshot *)&v51 _createCountsForProvider:8];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_34;
  }

  [v3 setObject:kNStatProviderUDP forKeyedSubscript:kNStatSrcKeyProvider];
  v5 = [(NWSQUICSnapshot *)self localAddress];

  if (v5)
  {
    v6 = MEMORY[0x277CBEA90];
    v7 = [(NWSQUICSnapshot *)self localAddress];
    v8 = [v6 dataWithData:v7];
    [v4 setObject:v8 forKeyedSubscript:kNStatSrcKeyLocal];
  }

  v9 = [(NWSQUICSnapshot *)self remoteAddress];

  if (v9)
  {
    v10 = MEMORY[0x277CBEA90];
    v11 = [(NWSQUICSnapshot *)self remoteAddress];
    v12 = [v10 dataWithData:v11];
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

  v19 = [(NWSQUICSnapshot *)self uuid];

  if (v19)
  {
    v20 = MEMORY[0x277CCACA8];
    v21 = [(NWSQUICSnapshot *)self uuid];
    v22 = [v20 stringWithString:v21];
    [v4 setObject:v22 forKeyedSubscript:kNStatSrcKeyUUID];
  }

  v23 = [(NWSQUICSnapshot *)self euuid];

  if (v23)
  {
    v24 = MEMORY[0x277CCACA8];
    v25 = [(NWSQUICSnapshot *)self euuid];
    v26 = [v24 stringWithString:v25];
    [v4 setObject:v26 forKeyedSubscript:kNStatSrcKeyEUUID];
  }

  v27 = [(NWSQUICSnapshot *)self fuuid];

  if (v27)
  {
    v28 = MEMORY[0x277CCACA8];
    v29 = [(NWSQUICSnapshot *)self fuuid];
    v30 = [v28 stringWithString:v29];
    [v4 setObject:v30 forKeyedSubscript:kNStatSrcKeyFUUID];
  }

  v31 = [(NWSQUICSnapshot *)self vuuid];

  if (v31)
  {
    v32 = MEMORY[0x277CCACA8];
    v33 = [(NWSQUICSnapshot *)self vuuid];
    v34 = [v32 stringWithString:v33];
    [v4 setObject:v34 forKeyedSubscript:kNStatSrcKeyVUUID];
  }

  v35 = [(NWSQUICSnapshot *)self processName];

  if (v35)
  {
    v36 = MEMORY[0x277CCACA8];
    v37 = [(NWSQUICSnapshot *)self processName];
    v38 = [v36 stringWithString:v37];
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
  if ((self->_descriptor.ifnet_properties & 0x100) != 0 && self->_descriptor.fallback_mode - 2 < 3)
  {
    v44 = off_27996E370[(self->_descriptor.fallback_mode - 2)];
    goto LABEL_24;
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
  if ([(NWSQUICSnapshot *)self countsIncludeHeaderOverhead])
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
    v5 = [v4 UUIDString];
    v6 = self->_uuid;
    self->_uuid = v5;

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
    v5 = [v4 UUIDString];
    v6 = self->_euuid;
    self->_euuid = v5;

    euuid = self->_euuid;
  }

  return euuid;
}

- (id)fuuid
{
  fuuid = self->_fuuid;
  if (!fuuid)
  {
    v4 = [(NWSProtocolSnapshot *)self _createNSUUIDForBytes:self->_descriptor.fuuid];
    v5 = [v4 UUIDString];
    v6 = self->_fuuid;
    self->_fuuid = v5;

    fuuid = self->_fuuid;
  }

  return fuuid;
}

- (id)vuuid
{
  vuuid = self->_vuuid;
  if (!vuuid)
  {
    v4 = [(NWSProtocolSnapshot *)self _createNSUUIDForBytes:self->_descriptor.vuuid];
    v5 = [v4 UUIDString];
    v6 = self->_vuuid;
    self->_vuuid = v5;

    vuuid = self->_vuuid;
  }

  return vuuid;
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

- (id)description
{
  __ret = 0;
  v7.receiver = self;
  v7.super_class = NWSQUICSnapshot;
  v3 = [(NWSSnapshot *)&v7 description];
  v4 = printf_domain();
  asxprintf(&__ret, v4, 0, "NWQUICSnapshot %N<->%N@%I %@", &self->_descriptor.local, &self->_descriptor.remote, self->_descriptor.ifindex, v3);
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

- (NWSQUICSnapshot)initWithCounts:(const nstat_counts *)a3 QUICDescriptor:(nstat_tcp_descriptor *)a4 sourceIdent:(unint64_t)a5 events:(unint64_t)a6 seqno:(unint64_t)a7 provider:(unsigned int)a8
{
  v14.receiver = self;
  v14.super_class = NWSQUICSnapshot;
  v11 = [(NWSSnapshot *)&v14 _initWithCounts:a3 sourceIdent:a5 seqno:a7];
  v12 = v11;
  if (v11)
  {
    memcpy(&v11->_descriptor, a4, sizeof(v11->_descriptor));
    v12->_provider = a8;
    v12->_eventFlags = a6;
  }

  return v12;
}

@end