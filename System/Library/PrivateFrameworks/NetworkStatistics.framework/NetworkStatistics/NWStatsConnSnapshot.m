@interface NWStatsConnSnapshot
- (BOOL)isNonAppInitiated;
- (BOOL)isSilent;
- (BOOL)isTracker;
- (NSData)ancestralParametersTLV;
- (NSData)parametersTLV;
- (NSData)remoteAddress;
- (NSDate)connSnapshotTimestamp;
- (NSDate)connStartTimestamp;
- (NSUUID)cuuid;
- (NSUUID)flowuuid;
- (NSUUID)puuid;
- (NWStatsConnSnapshot)initWithConnDetails:(const nstat_msg_src_details_conn *)a3 startTime:(double)a4 flowFlags:(unsigned int)a5;
- (double)connSnapshotTimeIntervalSinceReferenceDate;
- (double)connStartTimeIntervalSinceReferenceDate;
- (id)_connDescriptorDictionaryForm:(nstat_connection_descriptor *)a3;
- (id)description;
- (id)dictionaryForm;
- (id)domainAttributedBundleId;
- (id)domainName;
- (id)domainOwner;
- (id)domainTrackerContext;
- (id)euuid;
- (id)processName;
- (id)uuid;
- (unsigned)remotePort;
@end

@implementation NWStatsConnSnapshot

- (BOOL)isSilent
{
  v3 = [(NWStatsConnSnapshot *)self ancestralProperties];
  if (v3)
  {
    v4 = [(NWStatsConnSnapshot *)self ancestralProperties];
    v5 = [v4 isSilent];
  }

  else
  {
    v4 = [(NWStatsConnSnapshot *)self currentProperties];
    if (v4)
    {
      v6 = [(NWStatsConnSnapshot *)self currentProperties];
      v5 = [v6 isSilent];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)description
{
  if ([(NWStatsSnapshot *)self snapshotReason]== 4)
  {
    if (([(NWStatsConnSnapshot *)self eventFlags]& 0x4000) != 0)
    {
      v4 = @"(flowUUID-assigned)";
    }

    else
    {
      v3 = [(NWStatsConnSnapshot *)self eventFlags];
      v4 = @"(flowUUID-changed)";
      if ((v3 & 0x8000) == 0)
      {
        v4 = @"?";
      }
    }
  }

  else
  {
    v4 = &stru_286D30F78;
  }

  v5 = MEMORY[0x277CCACA8];
  v21 = v4;
  v22 = [v5 alloc];
  v20 = [(NWStatsConnSnapshot *)self processName];
  v19 = [(NWStatsConnSnapshot *)self sourceIdentifier];
  v18 = [(NWStatsSnapshot *)self snapshotReasonString];
  v17 = [(NWStatsConnSnapshot *)self hasNetAccess];
  v26 = [(NWStatsConnSnapshot *)self uuid];
  v16 = [(NWStatsConnSnapshot *)self euuid];
  v25 = [(NWStatsConnSnapshot *)self cuuid];
  v24 = [(NWStatsConnSnapshot *)self puuid];
  v6 = [(NWStatsConnSnapshot *)self flowuuid];
  v15 = [(NWStatsConnSnapshot *)self domainName];
  v7 = [(NWStatsConnSnapshot *)self domainOwner];
  v14 = [(NWStatsConnSnapshot *)self domainTrackerContext];
  v8 = [(NWStatsConnSnapshot *)self domainAttributedBundleId];
  v9 = [(NWStatsConnSnapshot *)self isSilent];
  v10 = [(NWStatsConnSnapshot *)self currentProperties];
  v11 = [(NWStatsConnSnapshot *)self ancestralProperties];
  v12 = [(NWStatsSnapshot *)self extensions];
  v23 = [v22 initWithFormat:@"%@ conn id %lld (%@) %@ net-access %d uuid %@ euuid %@ cuuid %@ puuid %@ fuuid %@ domain name %@ owner %@ context %@ attributed %@ silent %d current %@ ancestral %@ extensions %@", v20, v19, v18, v21, v17, v26, v16, v25, v24, v6, v15, v7, v14, v8, v9, v10, v11, v12];

  return v23;
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
    v4 = [(NWStatsSnapshot *)self _createNSUUIDForBytes:self->_descriptor->uuid];
    v5 = self->_uuid;
    self->_uuid = v4;

    uuid = self->_uuid;
  }

  return uuid;
}

- (id)euuid
{
  euuid = self->_euuid;
  if (!euuid)
  {
    v4 = [(NWStatsSnapshot *)self _createNSUUIDForBytes:self->_descriptor->euuid];
    v5 = self->_euuid;
    self->_euuid = v4;

    euuid = self->_euuid;
  }

  return euuid;
}

- (NSUUID)puuid
{
  puuid = self->_puuid;
  if (!puuid)
  {
    v4 = [(NWStatsSnapshot *)self _createNSUUIDForBytes:self->_descriptor->puuid];
    v5 = self->_puuid;
    self->_puuid = v4;

    puuid = self->_puuid;
  }

  return puuid;
}

- (NSUUID)cuuid
{
  cuuid = self->_cuuid;
  if (!cuuid)
  {
    v4 = [(NWStatsSnapshot *)self _createNSUUIDForBytes:self->_descriptor->cuuid];
    v5 = self->_cuuid;
    self->_cuuid = v4;

    cuuid = self->_cuuid;
  }

  return cuuid;
}

- (NSUUID)flowuuid
{
  flowuuid = self->_flowuuid;
  if (!flowuuid)
  {
    v4 = [(NWStatsSnapshot *)self _createNSUUIDForBytes:self->_descriptor->fuuid];
    v5 = self->_flowuuid;
    self->_flowuuid = v4;

    flowuuid = self->_flowuuid;
  }

  return flowuuid;
}

- (id)domainName
{
  v3 = [(NWStatsConnSnapshot *)self ancestralProperties];
  if (v3)
  {
    v4 = [(NWStatsConnSnapshot *)self ancestralProperties];
    v5 = [v4 domainName];
  }

  else
  {
    v4 = [(NWStatsConnSnapshot *)self currentProperties];
    if (v4)
    {
      v6 = [(NWStatsConnSnapshot *)self currentProperties];
      v5 = [v6 domainName];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)domainOwner
{
  v3 = [(NWStatsConnSnapshot *)self currentProperties];
  if (v3)
  {
    v4 = [(NWStatsConnSnapshot *)self currentProperties];
    v5 = [v4 domainOwner];
  }

  else
  {
    v4 = [(NWStatsConnSnapshot *)self ancestralProperties];
    if (v4)
    {
      v6 = [(NWStatsConnSnapshot *)self ancestralProperties];
      v5 = [v6 domainOwner];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)domainTrackerContext
{
  v3 = [(NWStatsConnSnapshot *)self ancestralProperties];
  if (v3)
  {
    v4 = [(NWStatsConnSnapshot *)self ancestralProperties];
    v5 = [v4 domainTrackerContext];
  }

  else
  {
    v4 = [(NWStatsConnSnapshot *)self currentProperties];
    if (v4)
    {
      v6 = [(NWStatsConnSnapshot *)self currentProperties];
      v5 = [v6 domainTrackerContext];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)domainAttributedBundleId
{
  v3 = [(NWStatsConnSnapshot *)self ancestralProperties];
  if (v3)
  {
    v4 = [(NWStatsConnSnapshot *)self ancestralProperties];
    v5 = [v4 domainAttributedBundleId];
  }

  else
  {
    v4 = [(NWStatsConnSnapshot *)self currentProperties];
    if (v4)
    {
      v6 = [(NWStatsConnSnapshot *)self currentProperties];
      v5 = [v6 domainAttributedBundleId];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isTracker
{
  v3 = [(NWStatsConnSnapshot *)self ancestralProperties];
  if (v3 && ([(NWStatsConnSnapshot *)self currentProperties], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [(NWStatsConnSnapshot *)self ancestralProperties];
    if ([v6 isTracker])
    {
      v7 = 1;
    }

    else
    {
      v11 = [(NWStatsConnSnapshot *)self currentProperties];
      v7 = [v11 isTracker];
    }
  }

  else
  {
    v8 = [(NWStatsConnSnapshot *)self currentProperties];
    if (v8)
    {
      v5 = v8;
      v9 = [(NWStatsConnSnapshot *)self currentProperties];
    }

    else
    {
      v10 = [(NWStatsConnSnapshot *)self ancestralProperties];
      if (!v10)
      {
        v7 = 0;
        goto LABEL_12;
      }

      v5 = v10;
      v9 = [(NWStatsConnSnapshot *)self ancestralProperties];
    }

    v6 = v9;
    v7 = [v9 isTracker];
  }

LABEL_12:
  return v7;
}

- (BOOL)isNonAppInitiated
{
  v3 = [(NWStatsConnSnapshot *)self ancestralProperties];
  if (v3)
  {
    v4 = [(NWStatsConnSnapshot *)self ancestralProperties];
    v5 = [v4 isNonAppInitiated];
  }

  else
  {
    v4 = [(NWStatsConnSnapshot *)self currentProperties];
    if (v4)
    {
      v6 = [(NWStatsConnSnapshot *)self currentProperties];
      v5 = [v6 isNonAppInitiated];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (NSData)remoteAddress
{
  v4 = [(NWStatsConnSnapshot *)self ancestralProperties];
  if (v4 && (-[NWStatsConnSnapshot ancestralProperties](self, "ancestralProperties"), v2 = objc_claimAutoreleasedReturnValue(), [v2 remoteAddress], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [(NWStatsConnSnapshot *)self ancestralProperties];
    v8 = [v7 remoteAddress];
  }

  else
  {
    v9 = [(NWStatsConnSnapshot *)self currentProperties];
    if (v9)
    {
      v10 = [(NWStatsConnSnapshot *)self currentProperties];
      v8 = [v10 remoteAddress];
    }

    else
    {
      v8 = 0;
    }

    if (!v4)
    {
      goto LABEL_9;
    }
  }

LABEL_9:

  return v8;
}

- (unsigned)remotePort
{
  v4 = [(NWStatsConnSnapshot *)self ancestralProperties];
  if (v4)
  {
    v2 = [(NWStatsConnSnapshot *)self ancestralProperties];
    v5 = [v2 remoteAddress];
    if (v5)
    {
      v6 = v5;
      v7 = [(NWStatsConnSnapshot *)self ancestralProperties];
      v8 = [v7 remotePort];

LABEL_8:
      goto LABEL_9;
    }
  }

  v9 = [(NWStatsConnSnapshot *)self currentProperties];
  if (v9)
  {
    v10 = [(NWStatsConnSnapshot *)self currentProperties];
    v8 = [v10 remotePort];
  }

  else
  {
    v8 = 0;
  }

  if (v4)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v8;
}

- (NSDate)connStartTimestamp
{
  startTimestamp = self->_startTimestamp;
  if (!startTimestamp)
  {
    v4 = MEMORY[0x277CBEAA8];
    [(NWStatsConnSnapshot *)self connStartTimeIntervalSinceReferenceDate];
    v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
    v6 = self->_startTimestamp;
    self->_startTimestamp = v5;

    startTimestamp = self->_startTimestamp;
  }

  return startTimestamp;
}

- (NSDate)connSnapshotTimestamp
{
  snapshotTimestamp = self->_snapshotTimestamp;
  if (!snapshotTimestamp)
  {
    v4 = MEMORY[0x277CBEAA8];
    [(NWStatsConnSnapshot *)self connSnapshotTimeIntervalSinceReferenceDate];
    v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
    v6 = self->_snapshotTimestamp;
    self->_snapshotTimestamp = v5;

    snapshotTimestamp = self->_snapshotTimestamp;
  }

  return snapshotTimestamp;
}

- (double)connStartTimeIntervalSinceReferenceDate
{
  result = self->_startTimeInterval;
  if (result == 0.0)
  {
    [NWStatsProtocolSnapshot _referenceIntervalWithContinuousTime:self->_descriptor->start_timestamp];
    self->_startTimeInterval = result;
  }

  return result;
}

- (double)connSnapshotTimeIntervalSinceReferenceDate
{
  result = self->_snapshotTimeInterval;
  if (result == 0.0)
  {
    [NWStatsProtocolSnapshot _referenceIntervalWithContinuousTime:self->_descriptor->timestamp];
    self->_snapshotTimeInterval = result;
  }

  return result;
}

- (NSData)parametersTLV
{
  v2 = [(NWStatsSnapshot *)self extensions];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

- (NSData)ancestralParametersTLV
{
  v2 = [(NWStatsSnapshot *)self extensions];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

- (NWStatsConnSnapshot)initWithConnDetails:(const nstat_msg_src_details_conn *)a3 startTime:(double)a4 flowFlags:(unsigned int)a5
{
  v11.receiver = self;
  v11.super_class = NWStatsConnSnapshot;
  v8 = [(NWStatsConnSnapshot *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_flags = a5;
    memcpy(&v8->_nstat_details, a3, sizeof(v8->_nstat_details));
    v9->_descriptor = &v9->_nstat_details.conn_desc;
    v9->_startTimeInterval = a4;
  }

  return v9;
}

- (id)_connDescriptorDictionaryForm:(nstat_connection_descriptor *)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3->upid];
  [v4 setObject:v5 forKeyedSubscript:@"upid"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3->start_timestamp];
  [v4 setObject:v6 forKeyedSubscript:@"start_timestamp"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3->timestamp];
  [v4 setObject:v7 forKeyedSubscript:@"timestamp"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3->pid];
  [v4 setObject:v8 forKeyedSubscript:@"pid"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3->eupid];
  [v4 setObject:v9 forKeyedSubscript:@"eupid"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3->epid];
  [v4 setObject:v10 forKeyedSubscript:@"epid"];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3->pname];
  [v4 setObject:v11 forKeyedSubscript:@"pname"];

  v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3->cuuid];
  v13 = [v12 UUIDString];
  [v4 setObject:v13 forKeyedSubscript:@"cuuid"];

  v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3->fuuid];
  v15 = [v14 UUIDString];
  [v4 setObject:v15 forKeyedSubscript:@"fuuid"];

  v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3->uuid];
  v17 = [v16 UUIDString];
  [v4 setObject:v17 forKeyedSubscript:@"uuid"];

  v18 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3->euuid];
  v19 = [v18 UUIDString];
  [v4 setObject:v19 forKeyedSubscript:@"euuid"];

  v20 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3->puuid];
  v21 = [v20 UUIDString];
  [v4 setObject:v21 forKeyedSubscript:@"puuid"];

  return v4;
}

- (id)dictionaryForm
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = MEMORY[0x277CCABB0];
  [(NWStatsConnSnapshot *)self connStartTimeIntervalSinceReferenceDate];
  *&v5 = v5;
  v6 = [v4 numberWithFloat:v5];
  [v3 setObject:v6 forKeyedSubscript:@"_startStamp"];

  v7 = MEMORY[0x277CCABB0];
  [(NWStatsConnSnapshot *)self connStartTimeIntervalSinceReferenceDate];
  v9 = [v7 numberWithUnsignedLongLong:(v8 * 1000000.0)];
  [v3 setObject:v9 forKeyedSubscript:@"_startStampUsecs"];

  v10 = MEMORY[0x277CCABB0];
  [(NWStatsConnSnapshot *)self connSnapshotTimeIntervalSinceReferenceDate];
  v12 = [v10 numberWithUnsignedLongLong:(v11 * 1000000.0)];
  [v3 setObject:v12 forKeyedSubscript:@"_snapStampUsecs"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_flags];
  [v3 setObject:v13 forKeyedSubscript:@"_flags"];

  v14 = [(NWStatsSnapshot *)self attributedEntity];
  if (v14)
  {
    [v3 setObject:v14 forKeyedSubscript:@"attributedEntity"];
  }

  else
  {
    v15 = [MEMORY[0x277CBEB68] null];
    [v3 setObject:v15 forKeyedSubscript:@"attributedEntity"];
  }

  v16 = [(NWStatsSnapshot *)self delegateName];
  if (v16)
  {
    [v3 setObject:v16 forKeyedSubscript:@"delegateName"];
  }

  else
  {
    v17 = [MEMORY[0x277CBEB68] null];
    [v3 setObject:v17 forKeyedSubscript:@"delegateName"];
  }

  v18 = [MEMORY[0x277CCABB0] numberWithInt:{-[NWStatsSnapshot attributionReason](self, "attributionReason")}];
  [v3 setObject:v18 forKeyedSubscript:@"attributionReason"];

  v19 = [MEMORY[0x277CCABB0] numberWithInt:{-[NWStatsSnapshot snapshotReason](self, "snapshotReason")}];
  [v3 setObject:v19 forKeyedSubscript:@"snapshotReason"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NWStatsSnapshot startAppStateIsForeground](self, "startAppStateIsForeground")}];
  [v3 setObject:v20 forKeyedSubscript:@"startAppStateIsForeground"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NWStatsSnapshot snapshotAppStateIsForeground](self, "snapshotAppStateIsForeground")}];
  [v3 setObject:v21 forKeyedSubscript:@"snapshotAppStateIsForeground"];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[NWStatsSnapshot startScreenStateOn](self, "startScreenStateOn")}];
  [v3 setObject:v22 forKeyedSubscript:@"startScreenStateOn"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[NWStatsSnapshot snapshotScreenStateOn](self, "snapshotScreenStateOn")}];
  [v3 setObject:v23 forKeyedSubscript:@"snapshotScreenStateOn"];

  v24 = [MEMORY[0x277CCABB0] numberWithInt:{-[NWStatsSnapshot delegateAttributionReason](self, "delegateAttributionReason")}];
  [v3 setObject:v24 forKeyedSubscript:@"delegateAttributionReason"];

  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_nstat_details.srcref];
  [v25 setObject:v26 forKeyedSubscript:@"srcref"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_nstat_details.event_flags];
  [v25 setObject:v27 forKeyedSubscript:@"event_flags"];

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_nstat_details.provider];
  [v25 setObject:v28 forKeyedSubscript:@"provider"];

  v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_nstat_details.hdr.context];
  [v29 setObject:v30 forKeyedSubscript:@"context"];

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_nstat_details.hdr.type];
  [v29 setObject:v31 forKeyedSubscript:@"type"];

  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:self->_nstat_details.hdr.length];
  [v29 setObject:v32 forKeyedSubscript:@"length"];

  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:self->_nstat_details.hdr.flags];
  [v29 setObject:v33 forKeyedSubscript:@"flags"];

  [v25 setObject:v29 forKeyedSubscript:@"hdr"];
  v34 = [(NWStatsConnSnapshot *)self _connDescriptorDictionaryForm:self->_descriptor];
  [v25 setObject:v34 forKeyedSubscript:@"conn_descriptor"];

  [v3 setObject:v25 forKeyedSubscript:@"details"];

  return v3;
}

@end