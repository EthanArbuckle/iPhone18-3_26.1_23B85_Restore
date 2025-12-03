@interface NWStatsQUICSnapshot
- (NSString)QUICState;
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
- (unsigned)QUICStateNumber;
- (unsigned)deltaRxDuplicateBytes;
- (unsigned)deltaRxOutOfOrderBytes;
- (unsigned)deltaTxRetransmittedBytes;
- (unsigned)localPort;
- (unsigned)remotePort;
- (unsigned)rxDuplicateBytes;
- (unsigned)rxOutOfOrderBytes;
- (unsigned)txRetransmittedBytes;
@end

@implementation NWStatsQUICSnapshot

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

- (id)flowStartTimestamp
{
  startTimestamp = self->_startTimestamp;
  if (!startTimestamp)
  {
    v4 = MEMORY[0x277CBEAA8];
    [(NWStatsQUICSnapshot *)self flowStartTimeIntervalSinceReferenceDate];
    v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
    v6 = self->_startTimestamp;
    self->_startTimestamp = v5;

    startTimestamp = self->_startTimestamp;
  }

  return startTimestamp;
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
  v3.super_class = NWStatsQUICSnapshot;
  return [(NWStatsProtocolSnapshot *)&v3 _rxDuplicateBytes];
}

- (unsigned)rxOutOfOrderBytes
{
  v3.receiver = self;
  v3.super_class = NWStatsQUICSnapshot;
  return [(NWStatsProtocolSnapshot *)&v3 _rxOutOfOrderBytes];
}

- (unsigned)txRetransmittedBytes
{
  v3.receiver = self;
  v3.super_class = NWStatsQUICSnapshot;
  return [(NWStatsProtocolSnapshot *)&v3 _txRetransmittedBytes];
}

- (unsigned)deltaRxDuplicateBytes
{
  v3.receiver = self;
  v3.super_class = NWStatsQUICSnapshot;
  return [(NWStatsProtocolSnapshot *)&v3 _deltaRxDuplicateBytes];
}

- (unsigned)deltaRxOutOfOrderBytes
{
  v3.receiver = self;
  v3.super_class = NWStatsQUICSnapshot;
  return [(NWStatsProtocolSnapshot *)&v3 _deltaRxOutOfOrderBytes];
}

- (unsigned)deltaTxRetransmittedBytes
{
  v3.receiver = self;
  v3.super_class = NWStatsQUICSnapshot;
  return [(NWStatsProtocolSnapshot *)&v3 _deltaTxRetransmittedBytes];
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
    [(NWStatsQUICSnapshot *)self flowSnapshotTimeIntervalSinceReferenceDate];
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
  v3.super_class = NWStatsQUICSnapshot;
  [(NWStatsProtocolSnapshot *)&v3 _rttMinimum];
  return result;
}

- (double)rttAverage
{
  v3.receiver = self;
  v3.super_class = NWStatsQUICSnapshot;
  [(NWStatsProtocolSnapshot *)&v3 _rttAverage];
  return result;
}

- (double)rttVariation
{
  v3.receiver = self;
  v3.super_class = NWStatsQUICSnapshot;
  [(NWStatsProtocolSnapshot *)&v3 _rttVariation];
  return result;
}

- (id)descriptorDescription
{
  _details_ptr = [(NWStatsProtocolSnapshot *)self _details_ptr];
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  ifindex = _details_ptr->var0.tcp.ifindex;
  ifnet_properties = _details_ptr->var0.tcp.ifnet_properties;
  pid = _details_ptr->var0.tcp.pid;
  epid = _details_ptr->var0.tcp.epid;
  v9 = [(NWStatsProtocolSnapshot *)self _createNSUUIDForBytes:&_details_ptr->var0.conn + 260];
  v10 = [(NWStatsProtocolSnapshot *)self _createNSUUIDForBytes:&_details_ptr->var0.conn + 276];
  v11 = [v4 initWithFormat:@"desc  ifidx %d flags 0x%x pid %d epid %d uuid %@ euuid %@ pname %s", ifindex, ifnet_properties, pid, epid, v9, v10, _details_ptr->var0.conn.reserved];

  return v11;
}

- (NSString)QUICState
{
  v8 = *MEMORY[0x277D85DE8];
  state = self->_descriptor->state;
  v7[2] = xmmword_27996E230;
  v7[3] = *&off_27996E240;
  v7[4] = xmmword_27996E250;
  v7[5] = *&off_27996E260;
  v7[0] = xmmword_27996E210;
  v7[1] = *&off_27996E220;
  if (state > 0xB)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v7 + state);
  }

  for (i = 88; i != -8; i -= 8)
  {
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (unsigned)QUICStateNumber
{
  if (self->_descriptor->state >= 0xC)
  {
    return 99;
  }

  else
  {
    return self->_descriptor->state;
  }
}

@end