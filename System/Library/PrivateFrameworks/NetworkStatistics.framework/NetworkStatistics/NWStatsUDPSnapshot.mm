@interface NWStatsUDPSnapshot
- (BOOL)flowUsesChannels;
- (BOOL)interfaceCellularViaFallback;
- (BOOL)interfaceCellularViaIndependentFallback;
- (BOOL)isSubFlow;
- (double)flowSnapshotTimeIntervalSinceReferenceDate;
- (double)flowStartTimeIntervalSinceReferenceDate;
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
- (unsigned)localPort;
- (unsigned)remotePort;
@end

@implementation NWStatsUDPSnapshot

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

- (BOOL)isSubFlow
{
  v3.receiver = self;
  v3.super_class = NWStatsUDPSnapshot;
  return *([(NWStatsProtocolSnapshot *)&v3 _details_ptr]+ 120) == 10;
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
    [(NWStatsUDPSnapshot *)self flowStartTimeIntervalSinceReferenceDate];
    v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
    v6 = self->_startTimestamp;
    self->_startTimestamp = v5;

    startTimestamp = self->_startTimestamp;
  }

  return startTimestamp;
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
  v6.super_class = NWStatsUDPSnapshot;
  return *([(NWStatsProtocolSnapshot *)&v6 _details_ptr]+ 120) == 4;
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

- (BOOL)interfaceCellularViaIndependentFallback
{
  if ((~self->_descriptor->ifnet_properties & 0x104) != 0)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = NWStatsUDPSnapshot;
  return *([(NWStatsProtocolSnapshot *)&v5 _details_ptr]+ 120) == 4;
}

- (BOOL)flowUsesChannels
{
  v3.receiver = self;
  v3.super_class = NWStatsUDPSnapshot;
  return *([(NWStatsProtocolSnapshot *)&v3 _details_ptr]+ 120) == 5;
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
    [(NWStatsUDPSnapshot *)self flowSnapshotTimeIntervalSinceReferenceDate];
    v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
    v6 = self->_snapshotTimestamp;
    self->_snapshotTimestamp = v5;

    snapshotTimestamp = self->_snapshotTimestamp;
  }

  return snapshotTimestamp;
}

- (id)descriptorDescription
{
  _details_ptr = [(NWStatsProtocolSnapshot *)self _details_ptr];
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  traffic_mgt_flags = _details_ptr->var0.tcp.traffic_mgt_flags;
  ifnet_properties = _details_ptr->var0.udp.ifnet_properties;
  s_addr = _details_ptr->var0.tcp.local.v4.sin_addr.s_addr;
  epid = _details_ptr->var0.udp.epid;
  v9 = [(NWStatsProtocolSnapshot *)self _createNSUUIDForBytes:&_details_ptr->var0.conn + 1];
  v10 = [(NWStatsProtocolSnapshot *)self _createNSUUIDForBytes:&_details_ptr->var0.conn + 216];
  v11 = [v4 initWithFormat:@"desc  ifidx %d flags 0x%x pid %d epid %d uuid %@ euuid %@ pname %s", traffic_mgt_flags, ifnet_properties, s_addr, epid, v9, v10, &_details_ptr->var0.conn.euuid[8]];

  return v11;
}

@end