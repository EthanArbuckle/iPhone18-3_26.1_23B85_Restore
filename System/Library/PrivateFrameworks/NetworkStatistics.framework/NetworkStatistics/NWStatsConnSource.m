@interface NWStatsConnSource
- (BOOL)processExtendedDetails:(nstat_msg_src_extended_item_hdr *)a3 length:(int64_t)a4;
- (BOOL)updateWithDetails:(nstat_msg_src_details_convenient *)a3 length:(int64_t)a4 monitor:(id)a5;
- (NWStatsConnSource)initWithDetails:(nstat_msg_src_details_convenient *)a3 length:(int64_t)a4 monitor:(id)a5;
- (id)description;
- (void)deriveAttribution:(id)a3;
- (void)populateConnProperties:(id)a3 fromDomainInfo:(nstat_domain_info *)a4;
- (void)significantMetadataChange:(nstat_connection_descriptor *)a3 monitor:(id)a4;
@end

@implementation NWStatsConnSource

- (id)description
{
  p_nstatConnDetails = &self->_nstatConnDetails;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  pname = p_nstatConnDetails->conn_desc.pname;
  v6 = [(NWStatsSource *)self attributedEntity];
  pid = p_nstatConnDetails->conn_desc.pid;
  epid = p_nstatConnDetails->conn_desc.epid;
  v9 = [(NWStatsSource *)self _createNSUUIDForBytes:p_nstatConnDetails->conn_desc.uuid];
  v10 = [(NWStatsSource *)self _createNSUUIDForBytes:p_nstatConnDetails->conn_desc.euuid];
  v11 = [(NWStatsSource *)self _createNSUUIDForBytes:p_nstatConnDetails->conn_desc.fuuid];
  [(NWStatsSource *)self creationTimestamp];
  v13 = dateStringMillisecondsFromReferenceInterval(v12);
  v14 = [v4 initWithFormat:@"NWStatsConnSource %s attributed %@ pid %d epid %d uuid %@ euuid %@ fuuid %@ started %@", pname, v6, pid, epid, v9, v10, v11, v13];

  return v14;
}

- (void)populateConnProperties:(id)a3 fromDomainInfo:(nstat_domain_info *)a4
{
  v10 = a3;
  [v10 setIsSilent:a4->var7];
  [v10 setIsTracker:a4->var5];
  [v10 setIsNonAppInitiated:a4->var6];
  if (([v10 isSilent] & 1) == 0)
  {
    if (a4->var0[0])
    {
      v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a4];
      [v10 setDomainName:v5];
    }

    else
    {
      [v10 setDomainName:0];
    }

    if (a4->var1[0])
    {
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a4->var1];
      [v10 setDomainOwner:v6];
    }

    else
    {
      [v10 setDomainOwner:0];
    }

    if (a4->var2[0])
    {
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a4->var2];
      [v10 setDomainTrackerContext:v7];
    }

    else
    {
      [v10 setDomainTrackerContext:0];
    }

    if (a4->var3[0])
    {
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a4->var3];
      [v10 setDomainAttributedBundleId:v8];
    }

    else
    {
      [v10 setDomainAttributedBundleId:0];
    }

    if (a4->var4.var0.sin_len)
    {
      v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&a4->var4 length:a4->var4.var0.sin_len];
      [v10 setRemoteAddress:v9];
    }

    else
    {
      [v10 setRemoteAddress:0];
    }
  }
}

- (BOOL)processExtendedDetails:(nstat_msg_src_extended_item_hdr *)a3 length:(int64_t)a4
{
  v4 = self;
  v27 = *MEMORY[0x277D85DE8];
  LOBYTE(self) = 1;
  if (a4 >= 8)
  {
    v5 = a3;
    if (a3)
    {
      while (1)
      {
        var0 = v5->var0;
        v7 = a4 - 8;
        if (a4 - 8 >= v5->var1)
        {
          var1 = v5->var1;
        }

        else
        {
          var1 = a4 - 8;
        }

        if (var0 == 4 || var0 == 1)
        {
          if (var1 <= 0x41F)
          {
            [NWStatsConnSource processExtendedDetails:length:];
          }

          if (v7 <= 0x41F)
          {
            [NWStatsConnSource processExtendedDetails:length:];
          }

          LODWORD(self) = [(NWStatsSource *)v4 handleDomainInfo:&v5[1]];
          if (!self)
          {
            break;
          }

          v10 = objc_alloc_init(NWStatsConnProperties);
          [(NWStatsConnSource *)v4 populateConnProperties:v10 fromDomainInfo:&v5[1]];
          if (var0 == 1)
          {
            v11 = &OBJC_IVAR___NWStatsConnSource__currentProperties;
          }

          else
          {
            v11 = &OBJC_IVAR___NWStatsConnSource__ancestralProperties;
          }

          v12 = *v11;
          v13 = *(&v4->super.super.isa + v12);
          *(&v4->super.super.isa + v12) = v10;
        }

        else
        {
          v14 = [MEMORY[0x277CBEA90] dataWithBytes:&v5[1] length:var1];
          v15 = NStatGetLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109634;
            v22 = var0;
            v23 = 2048;
            v24 = var1;
            v25 = 2112;
            v26 = v14;
            _os_log_impl(&dword_25BA3A000, v15, OS_LOG_TYPE_ERROR, "NWStatsConn Unexpected extended item type: %d, length: %zd contents %@", buf, 0x1Cu);
          }

          v17 = [(NWStatsSource *)v4 handleUnknownExtension:var0 data:v14];
          if (!v17)
          {
            LOBYTE(self) = 0;
            break;
          }
        }

        v18 = (var1 + 7) & 0x1FFFFFFF8;
        a4 = v7 - v18;
        v5 = (v5 + v18 + 8);
        if (v7 - v18 <= 7)
        {
          LOBYTE(self) = 1;
          break;
        }
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return self;
}

- (void)deriveAttribution:(id)a3
{
  v4 = a3;
  v13 = 0;
  [NWStatsProtocolSnapshot _referenceIntervalWithContinuousTime:self->_nstatConnDetails.conn_desc.start_timestamp];
  [(NWStatsSource *)self setCreationTimestamp:?];
  v5 = [(NWStatsSource *)self _createNSUUIDForBytes:self->_nstatConnDetails.conn_desc.uuid];
  v6 = [(NWStatsSource *)self _createNSUUIDForBytes:self->_nstatConnDetails.conn_desc.euuid];
  v7 = [v4 bestIdentifierForUUID:v5 EUUID:v6 pid:self->_nstatConnDetails.conn_desc.pid epid:self->_nstatConnDetails.conn_desc.epid procname:self->_nstatConnDetails.conn_desc.pname derivation:&v13 + 4];
  [(NWStatsSource *)self setAttributedEntity:v7];
  [(NWStatsSource *)self setAttributionReason:HIDWORD(v13)];
  if (HIDWORD(v13) == 2)
  {
    v8 = [v4 extensionNameForUUID:v6];
    [(NWStatsSource *)self setAttributedExtension:v8];
  }

  if (*self->_nstatConnDetails.conn_desc.uuid != *self->_nstatConnDetails.conn_desc.euuid || *&self->_nstatConnDetails.conn_desc.uuid[8] != *&self->_nstatConnDetails.conn_desc.euuid[8])
  {
    v10 = [v4 bestIdentifierForUUID:v5 EUUID:0 pid:self->_nstatConnDetails.conn_desc.pid epid:0 procname:self->_nstatConnDetails.conn_desc.pname derivation:&v13];
    [(NWStatsSource *)self setDelegateName:v10];
  }

  [(NWStatsSource *)self setDelegateAttributionReason:HIDWORD(v13)];
  if ([v4 debugMode])
  {
    v11 = [v4 allIdentifiersForUUID:v5 EUUID:v6 pid:self->_nstatConnDetails.conn_desc.pid epid:self->_nstatConnDetails.conn_desc.epid procname:self->_nstatConnDetails.conn_desc.pname];
    lookupResults = self->_lookupResults;
    self->_lookupResults = v11;
  }
}

- (NWStatsConnSource)initWithDetails:(nstat_msg_src_details_convenient *)a3 length:(int64_t)a4 monitor:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = NWStatsConnSource;
  v9 = [(NWStatsConnSource *)&v13 init];
  v10 = v9;
  if (v9)
  {
    memcpy(&v9->_nstatConnDetails, a3, sizeof(v9->_nstatConnDetails));
    [(NWStatsSource *)v10 setFlowFlags:[(NWStatsSource *)v10 flagsForProvider:v10->_nstatConnDetails.provider]];
    [(NWStatsConnSource *)v10 deriveAttribution:v8];
    v11 = [v8 currentForegroundStateForProcessWithPid:v10->_nstatConnDetails.conn_desc.epid];
    [(NWStatsSource *)v10 setStartAppStateIsForeground:v11];
    [(NWStatsSource *)v10 setUpdateAppStateIsForeground:v11];
    if (a3->hdr.hdr.type == 10009)
    {
      [(NWStatsConnSource *)v10 processExtendedDetails:&a3->var0.conn + 1 length:a4 - 688];
    }
  }

  return v10;
}

- (void)significantMetadataChange:(nstat_connection_descriptor *)a3 monitor:(id)a4
{
  v12 = a4;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (a3->pid == self->_nstatConnDetails.conn_desc.pid)
  {
    v7 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
    [v6 setObject:v8 forKeyedSubscript:@"newPid"];

    v7 = 0x8000;
  }

  if (a3->epid == self->_nstatConnDetails.conn_desc.epid)
  {
    v9 = v7;
  }

  else
  {
    v9 = v7 | 0x10000;
  }

  if (uuid_compare(a3->uuid, self->_nstatConnDetails.conn_desc.uuid))
  {
    v10 = v9 | 0x1000;
  }

  else
  {
    v10 = v9;
  }

  if (uuid_compare(a3->euuid, self->_nstatConnDetails.conn_desc.euuid))
  {
    if (uuid_compare(self->_nstatConnDetails.conn_desc.uuid, self->_nstatConnDetails.conn_desc.euuid))
    {
      v10 |= 0x2000u;
    }

    else
    {
      v10 |= 0x4000u;
    }
  }

  if (memcmp(a3->pname, self->_nstatConnDetails.conn_desc.pname, 0x40uLL))
  {
    v10 |= 0x200000u;
  }

  if ((v10 & 0xFFFFF000) != 0)
  {
    LODWORD(v11) = a3->epid;
    [(NWStatsSource *)self logAttributionChangeOn:self->_nstatConnDetails.srcref oldProcName:self->_nstatConnDetails.conn_desc.pname newProcName:a3->pname oldPid:self->_nstatConnDetails.conn_desc.pid newPid:a3->pid oldEPid:self->_nstatConnDetails.conn_desc.epid newEPid:v11 oldUUID:self->_nstatConnDetails.conn_desc.uuid newUUID:a3->uuid oldEUUID:self->_nstatConnDetails.conn_desc.euuid newEUUID:a3->euuid monitor:v12];
    [(NWStatsConnSource *)self deriveAttribution:v12];
  }

  [(NWStatsSource *)self setFlowFlags:[(NWStatsSource *)self flowFlags]| v10];
}

- (BOOL)updateWithDetails:(nstat_msg_src_details_convenient *)a3 length:(int64_t)a4 monitor:(id)a5
{
  v8 = a5;
  type = a3->hdr.hdr.type;
  if (type != 10009 && !memcmp(&a3->var0, &self->_nstatConnDetails, 0xC8uLL))
  {
    v10 = 0;
  }

  else
  {
    if (a3->var0.route.dst.v6.sin6_addr.__u6_addr32[0] != self->_nstatConnDetails.conn_desc.pid || a3->var0.route.dst.v6.sin6_addr.__u6_addr32[1] != self->_nstatConnDetails.conn_desc.epid || uuid_compare(a3->var0.conn.uuid, self->_nstatConnDetails.conn_desc.uuid) || uuid_compare(&a3->var0.tcp.local.v4.sin_len, self->_nstatConnDetails.conn_desc.euuid))
    {
      [(NWStatsConnSource *)self significantMetadataChange:&a3->var0 monitor:v8];
    }

    [(NWStatsSource *)self saveOldValues:&self->_nstatConnDetails.detailed_counts];
    memcpy(&self->_nstatConnDetails, a3, sizeof(self->_nstatConnDetails));
    -[NWStatsSource setUpdateAppStateIsForeground:](self, "setUpdateAppStateIsForeground:", [v8 currentForegroundStateForProcessWithPid:a3->var0.route.dst.v6.sin6_addr.__u6_addr32[1]]);
    v10 = type != 10009 || [(NWStatsConnSource *)self processExtendedDetails:&a3->var0.conn + 1 length:a4 - 688];
  }

  return v10;
}

@end