@interface NWSTCPSnapshot
- (BOOL)interfaceCellularViaFallback;
- (NSString)TCPState;
- (NSString)congestionAlgorithm;
- (NWSTCPSnapshot)initWithCounts:(const nstat_counts *)counts TCPDescriptor:(nstat_tcp_descriptor *)descriptor sourceIdent:(unint64_t)ident events:(unint64_t)events seqno:(unint64_t)seqno provider:(unsigned int)provider;
- (double)rttAverage;
- (double)rttMinimum;
- (double)rttVariation;
- (id)description;
- (id)euuid;
- (id)fuuid;
- (id)localAddress;
- (id)processName;
- (id)remoteAddress;
- (id)traditionalDictionary;
- (id)uuid;
- (id)vuuid;
- (unsigned)connectAttempts;
- (unsigned)connectSuccesses;
- (unsigned)rxDuplicateBytes;
- (unsigned)rxOutOfOrderBytes;
- (unsigned)txRetransmittedBytes;
@end

@implementation NWSTCPSnapshot

- (id)traditionalDictionary
{
  v67.receiver = self;
  v67.super_class = NWSTCPSnapshot;
  v3 = [(NWSSnapshot *)&v67 _createCountsForProvider:2];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_38;
  }

  [v3 setObject:kNStatProviderTCP forKeyedSubscript:kNStatSrcKeyProvider];
  localAddress = [(NWSTCPSnapshot *)self localAddress];

  if (localAddress)
  {
    v6 = MEMORY[0x277CBEA90];
    localAddress2 = [(NWSTCPSnapshot *)self localAddress];
    v8 = [v6 dataWithData:localAddress2];
    [v4 setObject:v8 forKeyedSubscript:kNStatSrcKeyLocal];
  }

  remoteAddress = [(NWSTCPSnapshot *)self remoteAddress];

  if (remoteAddress)
  {
    v10 = MEMORY[0x277CBEA90];
    remoteAddress2 = [(NWSTCPSnapshot *)self remoteAddress];
    v12 = [v10 dataWithData:remoteAddress2];
    [v4 setObject:v12 forKeyedSubscript:kNStatSrcKeyRemote];
  }

  p_descriptor = &self->_descriptor;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_descriptor.ifindex];
  [v4 setObject:v14 forKeyedSubscript:kNStatSrcKeyInterface];

  tCPState = [(NWSTCPSnapshot *)self TCPState];

  if (tCPState)
  {
    tCPState2 = [(NWSTCPSnapshot *)self TCPState];
    [v4 setObject:tCPState2 forKeyedSubscript:kNStatSrcKeyTCPState];
  }

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_descriptor.sndbufsize];
  [v4 setObject:v17 forKeyedSubscript:kNStatSrcKeySndBufSize];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_descriptor.sndbufused];
  [v4 setObject:v18 forKeyedSubscript:kNStatSrcKeySndBufUsed];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_descriptor.rcvbufsize];
  [v4 setObject:v19 forKeyedSubscript:kNStatSrcKeyRcvBufSize];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_descriptor.rcvbufused];
  [v4 setObject:v20 forKeyedSubscript:kNStatSrcKeyRcvBufUsed];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_descriptor.txunacked];
  [v4 setObject:v21 forKeyedSubscript:kNStatSrcKeyTCPTxUnacked];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_descriptor.txwindow];
  [v4 setObject:v22 forKeyedSubscript:kNStatSrcKeyTCPTxWindow];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_descriptor.txcwindow];
  [v4 setObject:v23 forKeyedSubscript:kNStatSrcKeyTCPTxCongWindow];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_descriptor.traffic_class];
  [v4 setObject:v24 forKeyedSubscript:kNStatSrcKeyTrafficClass];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_descriptor.traffic_mgt_flags];
  [v4 setObject:v25 forKeyedSubscript:kNStatSrcKeyTrafficMgtFlags];

  congestionAlgorithm = [(NWSTCPSnapshot *)self congestionAlgorithm];

  if (congestionAlgorithm)
  {
    v27 = MEMORY[0x277CCACA8];
    congestionAlgorithm2 = [(NWSTCPSnapshot *)self congestionAlgorithm];
    v29 = [v27 stringWithString:congestionAlgorithm2];
    [v4 setObject:v29 forKeyedSubscript:kNStatSrcKeyTCPCCAlgorithm];
  }

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:p_descriptor->upid];
  [v4 setObject:v30 forKeyedSubscript:kNStatSrcKeyUPID];

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_descriptor.pid];
  [v4 setObject:v31 forKeyedSubscript:kNStatSrcKeyPID];

  processName = [(NWSTCPSnapshot *)self processName];

  if (processName)
  {
    v33 = MEMORY[0x277CCACA8];
    processName2 = [(NWSTCPSnapshot *)self processName];
    v35 = [v33 stringWithString:processName2];
    [v4 setObject:v35 forKeyedSubscript:kNStatSrcKeyProcessName];
  }

  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_descriptor.eupid];
  [v4 setObject:v36 forKeyedSubscript:kNStatSrcKeyEUPID];

  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_descriptor.epid];
  [v4 setObject:v37 forKeyedSubscript:kNStatSrcKeyEPID];

  uuid = [(NWSTCPSnapshot *)self uuid];

  if (uuid)
  {
    v39 = MEMORY[0x277CCACA8];
    uuid2 = [(NWSTCPSnapshot *)self uuid];
    v41 = [v39 stringWithString:uuid2];
    [v4 setObject:v41 forKeyedSubscript:kNStatSrcKeyUUID];
  }

  euuid = [(NWSTCPSnapshot *)self euuid];

  if (euuid)
  {
    v43 = MEMORY[0x277CCACA8];
    euuid2 = [(NWSTCPSnapshot *)self euuid];
    v45 = [v43 stringWithString:euuid2];
    [v4 setObject:v45 forKeyedSubscript:kNStatSrcKeyEUUID];
  }

  fuuid = [(NWSTCPSnapshot *)self fuuid];

  if (fuuid)
  {
    v47 = MEMORY[0x277CCACA8];
    fuuid2 = [(NWSTCPSnapshot *)self fuuid];
    v49 = [v47 stringWithString:fuuid2];
    [v4 setObject:v49 forKeyedSubscript:kNStatSrcKeyFUUID];
  }

  vuuid = [(NWSTCPSnapshot *)self vuuid];

  if (vuuid)
  {
    v51 = MEMORY[0x277CCACA8];
    vuuid2 = [(NWSTCPSnapshot *)self vuuid];
    v53 = [v51 stringWithString:vuuid2];
    [v4 setObject:v53 forKeyedSubscript:kNStatSrcKeyVUUID];
  }

  ifnet_properties = self->_descriptor.ifnet_properties;
  if ((ifnet_properties & 8) != 0)
  {
    v56 = &kNStatSrcKeyInterfaceTypeWiFi;
LABEL_28:
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*v56];
    goto LABEL_29;
  }

  if ((ifnet_properties & 4) == 0)
  {
    v55 = &kNStatSrcKeyInterfaceTypeLoopback;
    if ((ifnet_properties & 2) == 0)
    {
      v55 = &kNStatSrcKeyInterfaceTypeUnknown;
    }

    if ((ifnet_properties & 0x10) != 0)
    {
      v56 = &kNStatSrcKeyInterfaceTypeWired;
    }

    else
    {
      v56 = v55;
    }

    goto LABEL_28;
  }

  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:kNStatSrcKeyInterfaceTypeCellular];
  if ((self->_descriptor.ifnet_properties & 0x100) != 0)
  {
    if (self->_descriptor.fallback_mode - 2 < 3)
    {
      v56 = off_27996E340[(self->_descriptor.fallback_mode - 2)];
      goto LABEL_28;
    }

    if (self->_provider == 2)
    {
      v56 = &kNStatSrcKeyInterfaceIsCellFallback;
      goto LABEL_28;
    }
  }

LABEL_29:
  v57 = self->_descriptor.ifnet_properties;
  if ((v57 & 0x200) == 0)
  {
    if ((v57 & 0x40) == 0)
    {
      goto LABEL_31;
    }

LABEL_42:
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:kNStatSrcKeyInterfaceIsExpensive];
    if ((self->_descriptor.ifnet_properties & 0x20) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:kNStatSrcKeyInterfaceTypeCompanionLink];
  v57 = self->_descriptor.ifnet_properties;
  if ((v57 & 0x40) != 0)
  {
    goto LABEL_42;
  }

LABEL_31:
  if ((v57 & 0x20) != 0)
  {
LABEL_32:
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:kNStatSrcKeyInterfaceIsAWDL];
  }

LABEL_33:
  v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_descriptor.var0.__pad_connstatus[0] & 1];
  [v4 setObject:v58 forKeyedSubscript:kNStatSrcKeyProbeActivated];

  v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_descriptor.var0.__pad_connstatus[0] >> 3) & 1];
  [v4 setObject:v59 forKeyedSubscript:kNStatSrcKeyConnProbeFailed];

  v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_descriptor.var0.__pad_connstatus[0] >> 2) & 1];
  [v4 setObject:v60 forKeyedSubscript:kNStatSrcKeyReadProbeFailed];

  v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_descriptor.var0.__pad_connstatus[0] >> 1) & 1];
  [v4 setObject:v61 forKeyedSubscript:kNStatSrcKeyWriteProbeFailed];

  if ([(NWSTCPSnapshot *)self countsIncludeHeaderOverhead])
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:kNStatSrcKeyChannelArchitecture];
  }

  if (self->_eventFlags)
  {
    v62 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
    [v4 setObject:v62 forKeyedSubscript:kNStatSrcKeyEventFlags];
  }

  v63 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:p_descriptor->start_timestamp];
  [v4 setObject:v63 forKeyedSubscript:kNStatSrcKeyStartAbsoluteTime];

  v64 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:p_descriptor->timestamp - p_descriptor->start_timestamp];
  [v4 setObject:v64 forKeyedSubscript:kNStatSrcKeyDurationAbsoluteTime];

  v65 = v4;
LABEL_38:

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

- (NSString)TCPState
{
  v9 = *MEMORY[0x277D85DE8];
  state = self->_descriptor.state;
  v7[2] = xmmword_27996E308;
  v7[3] = *&off_27996E318;
  v7[4] = xmmword_27996E328;
  v8 = @"TimeWait";
  v7[0] = xmmword_27996E2E8;
  v7[1] = *&off_27996E2F8;
  if (state > 0xA)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v7 + state);
  }

  for (i = 80; i != -8; i -= 8)
  {
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
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

- (NSString)congestionAlgorithm
{
  congestionAlgorithm = self->_congestionAlgorithm;
  if (!congestionAlgorithm)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.16s", self->_descriptor.cc_algo];
    v5 = self->_congestionAlgorithm;
    self->_congestionAlgorithm = v4;

    congestionAlgorithm = self->_congestionAlgorithm;
  }

  return congestionAlgorithm;
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

- (unsigned)rxDuplicateBytes
{
  v3.receiver = self;
  v3.super_class = NWSTCPSnapshot;
  return [(NWSSnapshot *)&v3 _rxDuplicateBytes];
}

- (unsigned)rxOutOfOrderBytes
{
  v3.receiver = self;
  v3.super_class = NWSTCPSnapshot;
  return [(NWSSnapshot *)&v3 _rxOutOfOrderBytes];
}

- (unsigned)txRetransmittedBytes
{
  v3.receiver = self;
  v3.super_class = NWSTCPSnapshot;
  return [(NWSSnapshot *)&v3 _txRetransmittedBytes];
}

- (unsigned)connectAttempts
{
  v3.receiver = self;
  v3.super_class = NWSTCPSnapshot;
  return [(NWSSnapshot *)&v3 _connectAttempts];
}

- (unsigned)connectSuccesses
{
  v3.receiver = self;
  v3.super_class = NWSTCPSnapshot;
  return [(NWSSnapshot *)&v3 _connectSuccesses];
}

- (double)rttMinimum
{
  v3.receiver = self;
  v3.super_class = NWSTCPSnapshot;
  [(NWSSnapshot *)&v3 _rttMinimum];
  return result;
}

- (double)rttAverage
{
  v3.receiver = self;
  v3.super_class = NWSTCPSnapshot;
  [(NWSSnapshot *)&v3 _rttAverage];
  return result;
}

- (double)rttVariation
{
  v3.receiver = self;
  v3.super_class = NWSTCPSnapshot;
  [(NWSSnapshot *)&v3 _rttVariation];
  return result;
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

  return self->_provider == 2;
}

- (id)description
{
  __ret = 0;
  v7.receiver = self;
  v7.super_class = NWSTCPSnapshot;
  v3 = [(NWSSnapshot *)&v7 description];
  v4 = printf_domain();
  asxprintf(&__ret, v4, 0, "NWTCPSnapshot %N<->%N@%I %@", &self->_descriptor.local, &self->_descriptor.remote, self->_descriptor.ifindex, v3);
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

- (NWSTCPSnapshot)initWithCounts:(const nstat_counts *)counts TCPDescriptor:(nstat_tcp_descriptor *)descriptor sourceIdent:(unint64_t)ident events:(unint64_t)events seqno:(unint64_t)seqno provider:(unsigned int)provider
{
  v14.receiver = self;
  v14.super_class = NWSTCPSnapshot;
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