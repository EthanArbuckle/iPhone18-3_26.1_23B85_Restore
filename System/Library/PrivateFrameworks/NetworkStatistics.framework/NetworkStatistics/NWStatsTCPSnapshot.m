@interface NWStatsTCPSnapshot
- (BOOL)flowUsesChannels;
- (BOOL)interfaceCellularViaFallback;
- (BOOL)interfaceCellularViaIndependentFallback;
- (NSString)TCPState;
- (NSString)congestionAlgorithm;
- (double)flowSnapshotTimeIntervalSinceReferenceDate;
- (double)flowStartTimeIntervalSinceReferenceDate;
- (double)rttAverage;
- (double)rttMinimum;
- (double)rttVariation;
- (id)descriptorDescription;
- (id)euuid;
- (id)flowSnapshotTimestamp;
- (id)flowStartTimestamp;
- (id)flowuuid;
- (id)localAddress;
- (id)processName;
- (id)remoteAddress;
- (id)uuid;
- (id)vuuid;
- (unsigned)TCPStateNumber;
- (unsigned)deltaRxDuplicateBytes;
- (unsigned)deltaRxOutOfOrderBytes;
- (unsigned)deltaTxRetransmittedBytes;
- (unsigned)localPort;
- (unsigned)remotePort;
- (unsigned)rxDuplicateBytes;
- (unsigned)rxOutOfOrderBytes;
- (unsigned)txRetransmittedBytes;
@end

@implementation NWStatsTCPSnapshot

- (id)flowStartTimestamp
{
  startTimestamp = self->_startTimestamp;
  if (!startTimestamp)
  {
    v4 = MEMORY[0x277CBEAA8];
    [(NWStatsTCPSnapshot *)self flowStartTimeIntervalSinceReferenceDate];
    v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
    v6 = self->_startTimestamp;
    self->_startTimestamp = v5;

    startTimestamp = self->_startTimestamp;
  }

  return startTimestamp;
}

- (id)remoteAddress
{
  if (!self->_remoteAddress)
  {
    if (self->_descriptor->remote.v4.sin_len)
    {
      v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&self->_descriptor->remote length:self->_descriptor->remote.v4.sin_len];
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
  state = self->_descriptor->state;
  v7[2] = xmmword_27996E2B0;
  v7[3] = *&off_27996E2C0;
  v7[4] = xmmword_27996E2D0;
  v8 = @"TimeWait";
  v7[0] = xmmword_27996E290;
  v7[1] = *&off_27996E2A0;
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

- (id)euuid
{
  euuid = self->_euuid;
  if (!euuid)
  {
    v4 = [(NWStatsProtocolSnapshot *)self _createNSUUIDForBytes:self->_descriptor->euuid];
    v5 = self->_euuid;
    self->_euuid = v4;

    euuid = self->_euuid;
  }

  return euuid;
}

- (double)flowStartTimeIntervalSinceReferenceDate
{
  result = self->_startTimeInterval;
  if (result == 0.0)
  {
    [NWStatsProtocolSnapshot _referenceIntervalWithContinuousTime:self->_descriptor->start_timestamp];
    self->_startTimeInterval = result;
  }

  return result;
}

- (unsigned)rxDuplicateBytes
{
  v3.receiver = self;
  v3.super_class = NWStatsTCPSnapshot;
  return [(NWStatsProtocolSnapshot *)&v3 _rxDuplicateBytes];
}

- (unsigned)rxOutOfOrderBytes
{
  v3.receiver = self;
  v3.super_class = NWStatsTCPSnapshot;
  return [(NWStatsProtocolSnapshot *)&v3 _rxOutOfOrderBytes];
}

- (unsigned)txRetransmittedBytes
{
  v3.receiver = self;
  v3.super_class = NWStatsTCPSnapshot;
  return [(NWStatsProtocolSnapshot *)&v3 _txRetransmittedBytes];
}

- (unsigned)deltaRxDuplicateBytes
{
  v3.receiver = self;
  v3.super_class = NWStatsTCPSnapshot;
  return [(NWStatsProtocolSnapshot *)&v3 _deltaRxDuplicateBytes];
}

- (unsigned)deltaRxOutOfOrderBytes
{
  v3.receiver = self;
  v3.super_class = NWStatsTCPSnapshot;
  return [(NWStatsProtocolSnapshot *)&v3 _deltaRxOutOfOrderBytes];
}

- (unsigned)deltaTxRetransmittedBytes
{
  v3.receiver = self;
  v3.super_class = NWStatsTCPSnapshot;
  return [(NWStatsProtocolSnapshot *)&v3 _deltaTxRetransmittedBytes];
}

- (BOOL)interfaceCellularViaFallback
{
  descriptor = self->_descriptor;
  if ((~descriptor->ifnet_properties & 0x104) != 0)
  {
    return 0;
  }

  if ((descriptor->fallback_mode & 0xFE) == 2)
  {
    return 1;
  }

  v7 = v2;
  v8 = v3;
  v6.receiver = self;
  v6.super_class = NWStatsTCPSnapshot;
  return *([(NWStatsProtocolSnapshot *)&v6 _details_ptr]+ 120) == 2;
}

- (id)localAddress
{
  if (!self->_localAddress)
  {
    if (self->_descriptor->local.v4.sin_len)
    {
      v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&self->_descriptor->local length:self->_descriptor->local.v4.sin_len];
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

- (unsigned)localPort
{
  descriptor = self->_descriptor;
  sin_family = descriptor->local.v4.sin_family;
  if (sin_family == 30 || sin_family == 2)
  {
    return bswap32(descriptor->local.v4.sin_port) >> 16;
  }

  else
  {
    LOWORD(v5) = 0;
  }

  return v5;
}

- (unsigned)remotePort
{
  descriptor = self->_descriptor;
  sin_family = descriptor->remote.v4.sin_family;
  if (sin_family == 30 || sin_family == 2)
  {
    return bswap32(descriptor->remote.v4.sin_port) >> 16;
  }

  else
  {
    LOWORD(v5) = 0;
  }

  return v5;
}

- (id)processName
{
  processName = self->_processName;
  if (!processName)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%.64s", self->_descriptor->pname];
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
    v4 = [(NWStatsProtocolSnapshot *)self _createNSUUIDForBytes:self->_descriptor->uuid];
    v5 = self->_uuid;
    self->_uuid = v4;

    uuid = self->_uuid;
  }

  return uuid;
}

- (id)vuuid
{
  vuuid = self->_vuuid;
  if (!vuuid)
  {
    v4 = [(NWStatsProtocolSnapshot *)self _createNSUUIDForBytes:self->_descriptor->vuuid];
    v5 = self->_vuuid;
    self->_vuuid = v4;

    vuuid = self->_vuuid;
  }

  return vuuid;
}

- (id)flowuuid
{
  flowuuid = self->_flowuuid;
  if (!flowuuid)
  {
    v4 = [(NWStatsProtocolSnapshot *)self _createNSUUIDForBytes:self->_descriptor->fuuid];
    v5 = self->_flowuuid;
    self->_flowuuid = v4;

    flowuuid = self->_flowuuid;
  }

  return flowuuid;
}

- (id)flowSnapshotTimestamp
{
  snapshotTimestamp = self->_snapshotTimestamp;
  if (!snapshotTimestamp)
  {
    v4 = MEMORY[0x277CBEAA8];
    [(NWStatsTCPSnapshot *)self flowSnapshotTimeIntervalSinceReferenceDate];
    v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
    v6 = self->_snapshotTimestamp;
    self->_snapshotTimestamp = v5;

    snapshotTimestamp = self->_snapshotTimestamp;
  }

  return snapshotTimestamp;
}

- (double)flowSnapshotTimeIntervalSinceReferenceDate
{
  result = self->_snapshotTimeInterval;
  if (result == 0.0)
  {
    [NWStatsProtocolSnapshot _referenceIntervalWithContinuousTime:self->_descriptor->timestamp];
    self->_snapshotTimeInterval = result;
  }

  return result;
}

- (double)rttMinimum
{
  v3.receiver = self;
  v3.super_class = NWStatsTCPSnapshot;
  [(NWStatsProtocolSnapshot *)&v3 _rttMinimum];
  return result;
}

- (double)rttAverage
{
  v3.receiver = self;
  v3.super_class = NWStatsTCPSnapshot;
  [(NWStatsProtocolSnapshot *)&v3 _rttAverage];
  return result;
}

- (double)rttVariation
{
  v3.receiver = self;
  v3.super_class = NWStatsTCPSnapshot;
  [(NWStatsProtocolSnapshot *)&v3 _rttVariation];
  return result;
}

- (id)descriptorDescription
{
  v3 = [(NWStatsProtocolSnapshot *)self _details_ptr];
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  ifindex = v3->var0.tcp.ifindex;
  ifnet_properties = v3->var0.tcp.ifnet_properties;
  pid = v3->var0.tcp.pid;
  epid = v3->var0.tcp.epid;
  v9 = [(NWStatsProtocolSnapshot *)self _createNSUUIDForBytes:&v3->var0.conn + 260];
  v10 = [(NWStatsProtocolSnapshot *)self _createNSUUIDForBytes:&v3->var0.conn + 276];
  v11 = [v4 initWithFormat:@"desc  ifidx %d flags 0x%x pid %d epid %d uuid %@ euuid %@ pname %s", ifindex, ifnet_properties, pid, epid, v9, v10, v3->var0.conn.reserved];

  return v11;
}

- (BOOL)flowUsesChannels
{
  v3.receiver = self;
  v3.super_class = NWStatsTCPSnapshot;
  return *([(NWStatsProtocolSnapshot *)&v3 _details_ptr]+ 120) == 3;
}

- (BOOL)interfaceCellularViaIndependentFallback
{
  if ((~self->_descriptor->ifnet_properties & 0x104) != 0)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = NWStatsTCPSnapshot;
  return *([(NWStatsProtocolSnapshot *)&v5 _details_ptr]+ 120) == 2;
}

- (unsigned)TCPStateNumber
{
  if (self->_descriptor->state >= 0xB)
  {
    return 99;
  }

  else
  {
    return self->_descriptor->state;
  }
}

- (NSString)congestionAlgorithm
{
  congestionAlgorithm = self->_congestionAlgorithm;
  if (!congestionAlgorithm)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%.16s", self->_descriptor->cc_algo];
    v5 = self->_congestionAlgorithm;
    self->_congestionAlgorithm = v4;

    congestionAlgorithm = self->_congestionAlgorithm;
  }

  return congestionAlgorithm;
}

@end