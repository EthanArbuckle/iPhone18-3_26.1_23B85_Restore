@interface NWStatsQUICSource
- (BOOL)updateWithDetails:(nstat_msg_src_details_convenient *)a3 length:(int64_t)a4 monitor:(id)a5;
- (NWStatsQUICSource)initWithDetails:(nstat_msg_src_details_convenient *)a3 length:(int64_t)a4 monitor:(id)a5;
- (id)description;
- (void)deriveAttribution:(id)a3;
- (void)significantMetadataChange:(nstat_tcp_descriptor *)a3 monitor:(id)a4;
@end

@implementation NWStatsQUICSource

- (id)description
{
  p_nstatQUICDetails = &self->_nstatQUICDetails;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  pname = p_nstatQUICDetails->quic_desc.pname;
  v6 = [(NWStatsSource *)self attributedEntity];
  pid = p_nstatQUICDetails->quic_desc.pid;
  epid = p_nstatQUICDetails->quic_desc.epid;
  v9 = [(NWStatsSource *)self _createNSUUIDForBytes:p_nstatQUICDetails->quic_desc.uuid];
  v10 = [(NWStatsSource *)self _createNSUUIDForBytes:p_nstatQUICDetails->quic_desc.euuid];
  v11 = [(NWStatsSource *)self _createNSUUIDForBytes:p_nstatQUICDetails->quic_desc.fuuid];
  [(NWStatsSource *)self creationTimestamp];
  v13 = dateStringMillisecondsFromReferenceInterval(v12);
  v14 = [v4 initWithFormat:@"NWStatsQUICSource %s attributed %@ pid %d epid %d uuid %@ euuid %@ fuuid %@ started %@", pname, v6, pid, epid, v9, v10, v11, v13];

  return v14;
}

- (void)deriveAttribution:(id)a3
{
  v4 = a3;
  v14 = 0;
  [NWStatsProtocolSnapshot _referenceIntervalWithContinuousTime:self->_nstatQUICDetails.quic_desc.start_timestamp];
  [(NWStatsSource *)self setCreationTimestamp:?];
  v5 = [(NWStatsSource *)self _createNSUUIDForBytes:self->_nstatQUICDetails.quic_desc.uuid];
  v6 = [(NWStatsSource *)self _createNSUUIDForBytes:self->_nstatQUICDetails.quic_desc.euuid];
  v7 = [v4 bestIdentifierForUUID:v5 EUUID:v6 pid:self->_nstatQUICDetails.quic_desc.pid epid:self->_nstatQUICDetails.quic_desc.epid procname:self->_nstatQUICDetails.quic_desc.pname derivation:&v14 + 4];
  [(NWStatsSource *)self setAttributedEntity:v7];
  [(NWStatsSource *)self setAttributionReason:HIDWORD(v14)];
  if (HIDWORD(v14) == 2)
  {
    v8 = [v4 extensionNameForUUID:v6];
    [(NWStatsSource *)self setAttributedExtension:v8];
  }

  if (*self->_nstatQUICDetails.quic_desc.uuid == *self->_nstatQUICDetails.quic_desc.euuid && *&self->_nstatQUICDetails.quic_desc.uuid[8] == *&self->_nstatQUICDetails.quic_desc.euuid[8])
  {
    v11 = 0;
  }

  else
  {
    v10 = [v4 bestIdentifierForUUID:v5 EUUID:0 pid:self->_nstatQUICDetails.quic_desc.pid epid:0 procname:self->_nstatQUICDetails.quic_desc.pname derivation:&v14];
    [(NWStatsSource *)self setDelegateName:v10];

    v11 = v14;
  }

  [(NWStatsSource *)self setDelegateAttributionReason:v11];
  if ([v4 debugMode])
  {
    v12 = [v4 allIdentifiersForUUID:v5 EUUID:v6 pid:self->_nstatQUICDetails.quic_desc.pid epid:self->_nstatQUICDetails.quic_desc.epid procname:self->_nstatQUICDetails.quic_desc.pname];
    lookupResults = self->_lookupResults;
    self->_lookupResults = v12;
  }
}

- (NWStatsQUICSource)initWithDetails:(nstat_msg_src_details_convenient *)a3 length:(int64_t)a4 monitor:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = NWStatsQUICSource;
  v9 = [(NWStatsQUICSource *)&v13 init];
  v10 = v9;
  if (v9)
  {
    memcpy(&v9->_nstatQUICDetails, a3, sizeof(v9->_nstatQUICDetails));
    [(NWStatsSource *)v10 setFlowFlags:[(NWStatsSource *)v10 flagsForProvider:v10->_nstatQUICDetails.provider sockaddr:&v10->_nstatQUICDetails.quic_desc.remote]];
    [(NWStatsQUICSource *)v10 deriveAttribution:v8];
    v11 = [v8 currentForegroundStateForProcessWithPid:v10->_nstatQUICDetails.quic_desc.epid];
    [(NWStatsSource *)v10 setStartAppStateIsForeground:v11];
    [(NWStatsSource *)v10 setUpdateAppStateIsForeground:v11];
    if (a3->hdr.hdr.type == 10009)
    {
      [(NWStatsSource *)v10 processExtendedDetails:&a3[1] length:a4 - 832];
    }
  }

  return v10;
}

- (void)significantMetadataChange:(nstat_tcp_descriptor *)a3 monitor:(id)a4
{
  v25 = a4;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v24 = v6;
  if (a3->pid == self->_nstatQUICDetails.quic_desc.pid)
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

  if (a3->epid == self->_nstatQUICDetails.quic_desc.epid)
  {
    v10 = v7;
  }

  else
  {
    v10 = v7 | 0x10000;
  }

  if (uuid_compare(a3->uuid, self->_nstatQUICDetails.quic_desc.uuid))
  {
    v10 |= 0x1000u;
  }

  if (uuid_compare(a3->euuid, self->_nstatQUICDetails.quic_desc.euuid))
  {
    if (uuid_compare(self->_nstatQUICDetails.quic_desc.uuid, self->_nstatQUICDetails.quic_desc.euuid))
    {
      v10 |= 0x2000u;
    }

    else
    {
      v10 |= 0x4000u;
    }
  }

  if (memcmp(a3->pname, self->_nstatQUICDetails.quic_desc.pname, 0x40uLL))
  {
    v10 |= 0x200000u;
  }

  if (*&a3->local.v4.sin_len != *&self->_nstatQUICDetails.quic_desc.local.v4.sin_len || *a3->local.v6.sin6_addr.__u6_addr8 != *self->_nstatQUICDetails.quic_desc.local.v6.sin6_addr.__u6_addr8 || *&a3->local.v6.sin6_addr.__u6_addr32[2] != *&self->_nstatQUICDetails.quic_desc.local.v6.sin6_addr.__u6_addr32[2] || a3->local.v6.sin6_scope_id != self->_nstatQUICDetails.quic_desc.local.v6.sin6_scope_id)
  {
    HavePortDiffOnly = sockaddrsHavePortDiffOnly(&self->_nstatQUICDetails.quic_desc.local, &a3->local);
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
      v16 = @"QUIC local port";
    }

    else
    {
      v16 = @"QUIC local address";
    }

    v10 |= v15;
    [(NWStatsSource *)self logAddressChangeOn:self->_nstatQUICDetails.srcref procName:a3->pname variant:v16 oldAddress:&self->_nstatQUICDetails.quic_desc.local newAddress:&a3->local];
  }

  if (*&a3->remote.v4.sin_len != *&self->_nstatQUICDetails.quic_desc.remote.v4.sin_len || *a3->remote.v6.sin6_addr.__u6_addr8 != *self->_nstatQUICDetails.quic_desc.remote.v6.sin6_addr.__u6_addr8 || *&a3->remote.v6.sin6_addr.__u6_addr32[2] != *&self->_nstatQUICDetails.quic_desc.remote.v6.sin6_addr.__u6_addr32[2] || a3->remote.v6.sin6_scope_id != self->_nstatQUICDetails.quic_desc.remote.v6.sin6_scope_id)
  {
    v20 = sockaddrsHavePortDiffOnly(&self->_nstatQUICDetails.quic_desc.remote, &a3->remote);
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
      v22 = @"QUIC remote port";
    }

    else
    {
      v22 = @"QUIC remote address";
    }

    v10 |= v21;
    [(NWStatsSource *)self logAddressChangeOn:self->_nstatQUICDetails.srcref procName:a3->pname variant:v22 oldAddress:&self->_nstatQUICDetails.quic_desc.remote newAddress:&a3->remote];
  }

  if ((v10 & 0x21F000) != 0)
  {
    LODWORD(v23) = a3->epid;
    [(NWStatsSource *)self logAttributionChangeOn:self->_nstatQUICDetails.srcref oldProcName:self->_nstatQUICDetails.quic_desc.pname newProcName:a3->pname oldPid:self->_nstatQUICDetails.quic_desc.pid newPid:a3->pid oldEPid:self->_nstatQUICDetails.quic_desc.epid newEPid:v23 oldUUID:self->_nstatQUICDetails.quic_desc.uuid newUUID:a3->uuid oldEUUID:self->_nstatQUICDetails.quic_desc.euuid newEUUID:a3->euuid monitor:v25, v24];
    [(NWStatsQUICSource *)self deriveAttribution:v25];
  }

  [(NWStatsSource *)self setFlowFlags:[(NWStatsSource *)self flowFlags]| v10];
}

- (BOOL)updateWithDetails:(nstat_msg_src_details_convenient *)a3 length:(int64_t)a4 monitor:(id)a5
{
  v8 = a5;
  type = a3->hdr.hdr.type;
  if (type != 10009 && !memcmp(&a3->var0, &self->_nstatQUICDetails, 0x158uLL))
  {
    v16 = 0;
  }

  else
  {
    if (a3->var0.tcp.pid != self->_nstatQUICDetails.quic_desc.pid || a3->var0.tcp.epid != self->_nstatQUICDetails.quic_desc.epid || uuid_compare(a3->var0.tcp.uuid, self->_nstatQUICDetails.quic_desc.uuid) || uuid_compare(a3->var0.tcp.euuid, self->_nstatQUICDetails.quic_desc.euuid) || (*a3->var0.conn.euuid == *&self->_nstatQUICDetails.quic_desc.local.v4.sin_len ? (v10 = *&a3->var0.conn.euuid[8] == *self->_nstatQUICDetails.quic_desc.local.v6.sin6_addr.__u6_addr8) : (v10 = 0), v10 ? (v11 = *a3->var0.conn.cuuid == *&self->_nstatQUICDetails.quic_desc.local.v6.sin6_addr.__u6_addr32[2]) : (v11 = 0), v11 ? (v12 = a3->var0.tcp.local.v6.sin6_scope_id == self->_nstatQUICDetails.quic_desc.local.v6.sin6_scope_id) : (v12 = 0), !v12 || (*&a3->var0.conn.cuuid[12] == *&self->_nstatQUICDetails.quic_desc.remote.v4.sin_len ? (v13 = *&a3->var0.conn.puuid[4] == *self->_nstatQUICDetails.quic_desc.remote.v6.sin6_addr.__u6_addr8) : (v13 = 0), v13 ? (v14 = *&a3->var0.conn.puuid[12] == *&self->_nstatQUICDetails.quic_desc.remote.v6.sin6_addr.__u6_addr32[2]) : (v14 = 0), v14 ? (v15 = a3->var0.tcp.remote.v6.sin6_scope_id == self->_nstatQUICDetails.quic_desc.remote.v6.sin6_scope_id) : (v15 = 0), !v15)))
    {
      [(NWStatsQUICSource *)self significantMetadataChange:&a3->var0 monitor:v8];
    }

    [(NWStatsSource *)self saveOldValues:&self->_nstatQUICDetails.detailed_counts];
    memcpy(&self->_nstatQUICDetails, a3, sizeof(self->_nstatQUICDetails));
    -[NWStatsSource setUpdateAppStateIsForeground:](self, "setUpdateAppStateIsForeground:", [v8 currentForegroundStateForProcessWithPid:a3->var0.tcp.epid]);
    v16 = type != 10009 || [(NWStatsSource *)self processExtendedDetails:&a3[1] length:a4 - 832];
  }

  return v16;
}

@end