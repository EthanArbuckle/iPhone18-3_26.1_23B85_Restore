@interface NWStatsTCPSource
- (BOOL)updateWithDetails:(nstat_msg_src_details_convenient *)details length:(int64_t)length monitor:(id)monitor;
- (NWStatsTCPSource)initWithDetails:(nstat_msg_src_details_convenient *)details length:(int64_t)length monitor:(id)monitor;
- (id)description;
- (void)deriveAttribution:(id)attribution;
- (void)significantMetadataChange:(nstat_tcp_descriptor *)change monitor:(id)monitor;
@end

@implementation NWStatsTCPSource

- (id)description
{
  p_nstatTCPDetails = &self->_nstatTCPDetails;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  pname = p_nstatTCPDetails->tcp_desc.pname;
  attributedEntity = [(NWStatsSource *)self attributedEntity];
  pid = p_nstatTCPDetails->tcp_desc.pid;
  epid = p_nstatTCPDetails->tcp_desc.epid;
  v9 = [(NWStatsSource *)self _createNSUUIDForBytes:p_nstatTCPDetails->tcp_desc.uuid];
  v10 = [(NWStatsSource *)self _createNSUUIDForBytes:p_nstatTCPDetails->tcp_desc.euuid];
  v11 = [(NWStatsSource *)self _createNSUUIDForBytes:p_nstatTCPDetails->tcp_desc.fuuid];
  [(NWStatsSource *)self creationTimestamp];
  v13 = dateStringMillisecondsFromReferenceInterval(v12);
  v14 = [v4 initWithFormat:@"NWStatsTCPSource %s attributed %@ pid %d epid %d uuid %@ euuid %@ fuuid %@ started %@", pname, attributedEntity, pid, epid, v9, v10, v11, v13];

  return v14;
}

- (void)deriveAttribution:(id)attribution
{
  attributionCopy = attribution;
  v14 = 0;
  v5 = [(NWStatsSource *)self _createNSUUIDForBytes:self->_nstatTCPDetails.tcp_desc.uuid];
  v6 = [(NWStatsSource *)self _createNSUUIDForBytes:self->_nstatTCPDetails.tcp_desc.euuid];
  v7 = [attributionCopy bestIdentifierForUUID:v5 EUUID:v6 pid:self->_nstatTCPDetails.tcp_desc.pid epid:self->_nstatTCPDetails.tcp_desc.epid procname:self->_nstatTCPDetails.tcp_desc.pname derivation:&v14 + 4];
  [(NWStatsSource *)self setAttributedEntity:v7];
  [(NWStatsSource *)self setAttributionReason:HIDWORD(v14)];
  if (HIDWORD(v14) == 2)
  {
    v8 = [attributionCopy extensionNameForUUID:v6];
    [(NWStatsSource *)self setAttributedExtension:v8];
  }

  if (*self->_nstatTCPDetails.tcp_desc.uuid == *self->_nstatTCPDetails.tcp_desc.euuid && *&self->_nstatTCPDetails.tcp_desc.uuid[8] == *&self->_nstatTCPDetails.tcp_desc.euuid[8])
  {
    v11 = 0;
  }

  else
  {
    v10 = [attributionCopy bestIdentifierForUUID:v5 EUUID:0 pid:self->_nstatTCPDetails.tcp_desc.pid epid:0 procname:self->_nstatTCPDetails.tcp_desc.pname derivation:&v14];
    [(NWStatsSource *)self setDelegateName:v10];

    v11 = v14;
  }

  [(NWStatsSource *)self setDelegateAttributionReason:v11];
  if ([attributionCopy debugMode])
  {
    v12 = [attributionCopy allIdentifiersForUUID:v5 EUUID:v6 pid:self->_nstatTCPDetails.tcp_desc.pid epid:self->_nstatTCPDetails.tcp_desc.epid procname:self->_nstatTCPDetails.tcp_desc.pname];
    lookupResults = self->_lookupResults;
    self->_lookupResults = v12;
  }
}

- (NWStatsTCPSource)initWithDetails:(nstat_msg_src_details_convenient *)details length:(int64_t)length monitor:(id)monitor
{
  monitorCopy = monitor;
  v13.receiver = self;
  v13.super_class = NWStatsTCPSource;
  v9 = [(NWStatsTCPSource *)&v13 init];
  v10 = v9;
  if (v9)
  {
    memcpy(&v9->_nstatTCPDetails, details, sizeof(v9->_nstatTCPDetails));
    [NWStatsProtocolSnapshot _referenceIntervalWithContinuousTime:v10->_nstatTCPDetails.tcp_desc.start_timestamp];
    [(NWStatsSource *)v10 setCreationTimestamp:?];
    [(NWStatsSource *)v10 setFlowFlags:[(NWStatsSource *)v10 flagsForProvider:v10->_nstatTCPDetails.provider sockaddr:&v10->_nstatTCPDetails.tcp_desc.remote]];
    [(NWStatsTCPSource *)v10 deriveAttribution:monitorCopy];
    v11 = [monitorCopy currentForegroundStateForProcessWithPid:v10->_nstatTCPDetails.tcp_desc.epid];
    [(NWStatsSource *)v10 setStartAppStateIsForeground:v11];
    [(NWStatsSource *)v10 setUpdateAppStateIsForeground:v11];
    if (details->hdr.hdr.type == 10009)
    {
      [(NWStatsSource *)v10 processExtendedDetails:&details[1] length:length - 832];
    }
  }

  return v10;
}

- (void)significantMetadataChange:(nstat_tcp_descriptor *)change monitor:(id)monitor
{
  monitorCopy = monitor;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v24 = v6;
  if (change->pid == self->_nstatTCPDetails.tcp_desc.pid)
  {
    v7 = 0;
  }

  else
  {
    v8 = v6;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
    [v8 setObject:v9 forKeyedSubscript:@"newPid"];

    v7 = 0x8000;
  }

  if (change->epid == self->_nstatTCPDetails.tcp_desc.epid)
  {
    v10 = v7;
  }

  else
  {
    v10 = v7 | 0x10000;
  }

  if (uuid_compare(change->uuid, self->_nstatTCPDetails.tcp_desc.uuid))
  {
    v10 |= 0x1000u;
  }

  if (uuid_compare(change->euuid, self->_nstatTCPDetails.tcp_desc.euuid))
  {
    if (uuid_compare(self->_nstatTCPDetails.tcp_desc.uuid, self->_nstatTCPDetails.tcp_desc.euuid))
    {
      v10 |= 0x2000u;
    }

    else
    {
      v10 |= 0x4000u;
    }
  }

  if (memcmp(change->pname, self->_nstatTCPDetails.tcp_desc.pname, 0x40uLL))
  {
    v10 |= 0x200000u;
  }

  if (*&change->local.v4.sin_len != *&self->_nstatTCPDetails.tcp_desc.local.v4.sin_len || *change->local.v6.sin6_addr.__u6_addr8 != *self->_nstatTCPDetails.tcp_desc.local.v6.sin6_addr.__u6_addr8 || *&change->local.v6.sin6_addr.__u6_addr32[2] != *&self->_nstatTCPDetails.tcp_desc.local.v6.sin6_addr.__u6_addr32[2] || change->local.v6.sin6_scope_id != self->_nstatTCPDetails.tcp_desc.local.v6.sin6_scope_id)
  {
    HavePortDiffOnly = sockaddrsHavePortDiffOnly(&self->_nstatTCPDetails.tcp_desc.local, &change->local);
    if (HavePortDiffOnly)
    {
      v15 = 0x80000;
    }

    else
    {
      v15 = 0x20000;
    }

    if (HavePortDiffOnly)
    {
      v16 = @"TCP local port";
    }

    else
    {
      v16 = @"TCP local address";
    }

    v10 |= v15;
    [(NWStatsSource *)self logAddressChangeOn:self->_nstatTCPDetails.srcref procName:change->pname variant:v16 oldAddress:&self->_nstatTCPDetails.tcp_desc.local newAddress:&change->local];
  }

  if (*&change->remote.v4.sin_len != *&self->_nstatTCPDetails.tcp_desc.remote.v4.sin_len || *change->remote.v6.sin6_addr.__u6_addr8 != *self->_nstatTCPDetails.tcp_desc.remote.v6.sin6_addr.__u6_addr8 || *&change->remote.v6.sin6_addr.__u6_addr32[2] != *&self->_nstatTCPDetails.tcp_desc.remote.v6.sin6_addr.__u6_addr32[2] || change->remote.v6.sin6_scope_id != self->_nstatTCPDetails.tcp_desc.remote.v6.sin6_scope_id)
  {
    v20 = sockaddrsHavePortDiffOnly(&self->_nstatTCPDetails.tcp_desc.remote, &change->remote);
    if (v20)
    {
      v21 = 0x100000;
    }

    else
    {
      v21 = 0x40000;
    }

    if (v20)
    {
      v22 = @"TCP remote port";
    }

    else
    {
      v22 = @"TCP remote address";
    }

    v10 |= v21;
    [(NWStatsSource *)self logAddressChangeOn:self->_nstatTCPDetails.srcref procName:change->pname variant:v22 oldAddress:&self->_nstatTCPDetails.tcp_desc.remote newAddress:&change->remote];
  }

  if ((v10 & 0x21F000) != 0)
  {
    LODWORD(v23) = change->epid;
    [(NWStatsSource *)self logAttributionChangeOn:self->_nstatTCPDetails.srcref oldProcName:self->_nstatTCPDetails.tcp_desc.pname newProcName:change->pname oldPid:self->_nstatTCPDetails.tcp_desc.pid newPid:change->pid oldEPid:self->_nstatTCPDetails.tcp_desc.epid newEPid:v23 oldUUID:self->_nstatTCPDetails.tcp_desc.uuid newUUID:change->uuid oldEUUID:self->_nstatTCPDetails.tcp_desc.euuid newEUUID:change->euuid monitor:monitorCopy, v24];
    [(NWStatsTCPSource *)self deriveAttribution:monitorCopy];
  }

  [(NWStatsSource *)self setFlowFlags:[(NWStatsSource *)self flowFlags]| v10];
}

- (BOOL)updateWithDetails:(nstat_msg_src_details_convenient *)details length:(int64_t)length monitor:(id)monitor
{
  monitorCopy = monitor;
  type = details->hdr.hdr.type;
  if (type != 10009 && !memcmp(&details->var0, &self->_nstatTCPDetails, 0x158uLL))
  {
    v16 = 0;
  }

  else
  {
    if (details->var0.tcp.pid != self->_nstatTCPDetails.tcp_desc.pid || details->var0.tcp.epid != self->_nstatTCPDetails.tcp_desc.epid || uuid_compare(details->var0.tcp.uuid, self->_nstatTCPDetails.tcp_desc.uuid) || uuid_compare(details->var0.tcp.euuid, self->_nstatTCPDetails.tcp_desc.euuid) || (*details->var0.conn.euuid == *&self->_nstatTCPDetails.tcp_desc.local.v4.sin_len ? (v10 = *&details->var0.conn.euuid[8] == *self->_nstatTCPDetails.tcp_desc.local.v6.sin6_addr.__u6_addr8) : (v10 = 0), v10 ? (v11 = *details->var0.conn.cuuid == *&self->_nstatTCPDetails.tcp_desc.local.v6.sin6_addr.__u6_addr32[2]) : (v11 = 0), v11 ? (v12 = details->var0.tcp.local.v6.sin6_scope_id == self->_nstatTCPDetails.tcp_desc.local.v6.sin6_scope_id) : (v12 = 0), !v12 || (*&details->var0.conn.cuuid[12] == *&self->_nstatTCPDetails.tcp_desc.remote.v4.sin_len ? (v13 = *&details->var0.conn.puuid[4] == *self->_nstatTCPDetails.tcp_desc.remote.v6.sin6_addr.__u6_addr8) : (v13 = 0), v13 ? (v14 = *&details->var0.conn.puuid[12] == *&self->_nstatTCPDetails.tcp_desc.remote.v6.sin6_addr.__u6_addr32[2]) : (v14 = 0), v14 ? (v15 = details->var0.tcp.remote.v6.sin6_scope_id == self->_nstatTCPDetails.tcp_desc.remote.v6.sin6_scope_id) : (v15 = 0), !v15)))
    {
      [(NWStatsTCPSource *)self significantMetadataChange:&details->var0 monitor:monitorCopy];
    }

    [(NWStatsSource *)self saveOldValues:&self->_nstatTCPDetails.detailed_counts];
    memcpy(&self->_nstatTCPDetails, details, sizeof(self->_nstatTCPDetails));
    -[NWStatsSource setUpdateAppStateIsForeground:](self, "setUpdateAppStateIsForeground:", [monitorCopy currentForegroundStateForProcessWithPid:details->var0.tcp.epid]);
    v16 = type != 10009 || [(NWStatsSource *)self processExtendedDetails:&details[1] length:length - 832];
  }

  return v16;
}

@end