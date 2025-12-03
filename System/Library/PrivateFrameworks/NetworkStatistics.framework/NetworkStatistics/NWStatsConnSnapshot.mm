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
- (NWStatsConnSnapshot)initWithConnDetails:(const nstat_msg_src_details_conn *)details startTime:(double)time flowFlags:(unsigned int)flags;
- (double)connSnapshotTimeIntervalSinceReferenceDate;
- (double)connStartTimeIntervalSinceReferenceDate;
- (id)_connDescriptorDictionaryForm:(nstat_connection_descriptor *)form;
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
  ancestralProperties = [(NWStatsConnSnapshot *)self ancestralProperties];
  if (ancestralProperties)
  {
    ancestralProperties2 = [(NWStatsConnSnapshot *)self ancestralProperties];
    isSilent = [ancestralProperties2 isSilent];
  }

  else
  {
    ancestralProperties2 = [(NWStatsConnSnapshot *)self currentProperties];
    if (ancestralProperties2)
    {
      currentProperties = [(NWStatsConnSnapshot *)self currentProperties];
      isSilent = [currentProperties isSilent];
    }

    else
    {
      isSilent = 0;
    }
  }

  return isSilent;
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
      eventFlags = [(NWStatsConnSnapshot *)self eventFlags];
      v4 = @"(flowUUID-changed)";
      if ((eventFlags & 0x8000) == 0)
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
  processName = [(NWStatsConnSnapshot *)self processName];
  sourceIdentifier = [(NWStatsConnSnapshot *)self sourceIdentifier];
  snapshotReasonString = [(NWStatsSnapshot *)self snapshotReasonString];
  hasNetAccess = [(NWStatsConnSnapshot *)self hasNetAccess];
  uuid = [(NWStatsConnSnapshot *)self uuid];
  euuid = [(NWStatsConnSnapshot *)self euuid];
  cuuid = [(NWStatsConnSnapshot *)self cuuid];
  puuid = [(NWStatsConnSnapshot *)self puuid];
  flowuuid = [(NWStatsConnSnapshot *)self flowuuid];
  domainName = [(NWStatsConnSnapshot *)self domainName];
  domainOwner = [(NWStatsConnSnapshot *)self domainOwner];
  domainTrackerContext = [(NWStatsConnSnapshot *)self domainTrackerContext];
  domainAttributedBundleId = [(NWStatsConnSnapshot *)self domainAttributedBundleId];
  isSilent = [(NWStatsConnSnapshot *)self isSilent];
  currentProperties = [(NWStatsConnSnapshot *)self currentProperties];
  ancestralProperties = [(NWStatsConnSnapshot *)self ancestralProperties];
  extensions = [(NWStatsSnapshot *)self extensions];
  v23 = [v22 initWithFormat:@"%@ conn id %lld (%@) %@ net-access %d uuid %@ euuid %@ cuuid %@ puuid %@ fuuid %@ domain name %@ owner %@ context %@ attributed %@ silent %d current %@ ancestral %@ extensions %@", processName, sourceIdentifier, snapshotReasonString, v21, hasNetAccess, uuid, euuid, cuuid, puuid, flowuuid, domainName, domainOwner, domainTrackerContext, domainAttributedBundleId, isSilent, currentProperties, ancestralProperties, extensions];

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
  ancestralProperties = [(NWStatsConnSnapshot *)self ancestralProperties];
  if (ancestralProperties)
  {
    ancestralProperties2 = [(NWStatsConnSnapshot *)self ancestralProperties];
    domainName = [ancestralProperties2 domainName];
  }

  else
  {
    ancestralProperties2 = [(NWStatsConnSnapshot *)self currentProperties];
    if (ancestralProperties2)
    {
      currentProperties = [(NWStatsConnSnapshot *)self currentProperties];
      domainName = [currentProperties domainName];
    }

    else
    {
      domainName = 0;
    }
  }

  return domainName;
}

- (id)domainOwner
{
  currentProperties = [(NWStatsConnSnapshot *)self currentProperties];
  if (currentProperties)
  {
    currentProperties2 = [(NWStatsConnSnapshot *)self currentProperties];
    domainOwner = [currentProperties2 domainOwner];
  }

  else
  {
    currentProperties2 = [(NWStatsConnSnapshot *)self ancestralProperties];
    if (currentProperties2)
    {
      ancestralProperties = [(NWStatsConnSnapshot *)self ancestralProperties];
      domainOwner = [ancestralProperties domainOwner];
    }

    else
    {
      domainOwner = 0;
    }
  }

  return domainOwner;
}

- (id)domainTrackerContext
{
  ancestralProperties = [(NWStatsConnSnapshot *)self ancestralProperties];
  if (ancestralProperties)
  {
    ancestralProperties2 = [(NWStatsConnSnapshot *)self ancestralProperties];
    domainTrackerContext = [ancestralProperties2 domainTrackerContext];
  }

  else
  {
    ancestralProperties2 = [(NWStatsConnSnapshot *)self currentProperties];
    if (ancestralProperties2)
    {
      currentProperties = [(NWStatsConnSnapshot *)self currentProperties];
      domainTrackerContext = [currentProperties domainTrackerContext];
    }

    else
    {
      domainTrackerContext = 0;
    }
  }

  return domainTrackerContext;
}

- (id)domainAttributedBundleId
{
  ancestralProperties = [(NWStatsConnSnapshot *)self ancestralProperties];
  if (ancestralProperties)
  {
    ancestralProperties2 = [(NWStatsConnSnapshot *)self ancestralProperties];
    domainAttributedBundleId = [ancestralProperties2 domainAttributedBundleId];
  }

  else
  {
    ancestralProperties2 = [(NWStatsConnSnapshot *)self currentProperties];
    if (ancestralProperties2)
    {
      currentProperties = [(NWStatsConnSnapshot *)self currentProperties];
      domainAttributedBundleId = [currentProperties domainAttributedBundleId];
    }

    else
    {
      domainAttributedBundleId = 0;
    }
  }

  return domainAttributedBundleId;
}

- (BOOL)isTracker
{
  ancestralProperties = [(NWStatsConnSnapshot *)self ancestralProperties];
  if (ancestralProperties && ([(NWStatsConnSnapshot *)self currentProperties], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    ancestralProperties2 = [(NWStatsConnSnapshot *)self ancestralProperties];
    if ([ancestralProperties2 isTracker])
    {
      isTracker = 1;
    }

    else
    {
      currentProperties = [(NWStatsConnSnapshot *)self currentProperties];
      isTracker = [currentProperties isTracker];
    }
  }

  else
  {
    currentProperties2 = [(NWStatsConnSnapshot *)self currentProperties];
    if (currentProperties2)
    {
      v5 = currentProperties2;
      currentProperties3 = [(NWStatsConnSnapshot *)self currentProperties];
    }

    else
    {
      ancestralProperties3 = [(NWStatsConnSnapshot *)self ancestralProperties];
      if (!ancestralProperties3)
      {
        isTracker = 0;
        goto LABEL_12;
      }

      v5 = ancestralProperties3;
      currentProperties3 = [(NWStatsConnSnapshot *)self ancestralProperties];
    }

    ancestralProperties2 = currentProperties3;
    isTracker = [currentProperties3 isTracker];
  }

LABEL_12:
  return isTracker;
}

- (BOOL)isNonAppInitiated
{
  ancestralProperties = [(NWStatsConnSnapshot *)self ancestralProperties];
  if (ancestralProperties)
  {
    ancestralProperties2 = [(NWStatsConnSnapshot *)self ancestralProperties];
    isNonAppInitiated = [ancestralProperties2 isNonAppInitiated];
  }

  else
  {
    ancestralProperties2 = [(NWStatsConnSnapshot *)self currentProperties];
    if (ancestralProperties2)
    {
      currentProperties = [(NWStatsConnSnapshot *)self currentProperties];
      isNonAppInitiated = [currentProperties isNonAppInitiated];
    }

    else
    {
      isNonAppInitiated = 0;
    }
  }

  return isNonAppInitiated;
}

- (NSData)remoteAddress
{
  ancestralProperties = [(NWStatsConnSnapshot *)self ancestralProperties];
  if (ancestralProperties && (-[NWStatsConnSnapshot ancestralProperties](self, "ancestralProperties"), v2 = objc_claimAutoreleasedReturnValue(), [v2 remoteAddress], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    ancestralProperties2 = [(NWStatsConnSnapshot *)self ancestralProperties];
    remoteAddress = [ancestralProperties2 remoteAddress];
  }

  else
  {
    currentProperties = [(NWStatsConnSnapshot *)self currentProperties];
    if (currentProperties)
    {
      currentProperties2 = [(NWStatsConnSnapshot *)self currentProperties];
      remoteAddress = [currentProperties2 remoteAddress];
    }

    else
    {
      remoteAddress = 0;
    }

    if (!ancestralProperties)
    {
      goto LABEL_9;
    }
  }

LABEL_9:

  return remoteAddress;
}

- (unsigned)remotePort
{
  ancestralProperties = [(NWStatsConnSnapshot *)self ancestralProperties];
  if (ancestralProperties)
  {
    ancestralProperties2 = [(NWStatsConnSnapshot *)self ancestralProperties];
    remoteAddress = [ancestralProperties2 remoteAddress];
    if (remoteAddress)
    {
      v6 = remoteAddress;
      ancestralProperties3 = [(NWStatsConnSnapshot *)self ancestralProperties];
      remotePort = [ancestralProperties3 remotePort];

LABEL_8:
      goto LABEL_9;
    }
  }

  currentProperties = [(NWStatsConnSnapshot *)self currentProperties];
  if (currentProperties)
  {
    currentProperties2 = [(NWStatsConnSnapshot *)self currentProperties];
    remotePort = [currentProperties2 remotePort];
  }

  else
  {
    remotePort = 0;
  }

  if (ancestralProperties)
  {
    goto LABEL_8;
  }

LABEL_9:

  return remotePort;
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
  extensions = [(NWStatsSnapshot *)self extensions];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v4 = [extensions objectForKeyedSubscript:v3];

  return v4;
}

- (NSData)ancestralParametersTLV
{
  extensions = [(NWStatsSnapshot *)self extensions];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v4 = [extensions objectForKeyedSubscript:v3];

  return v4;
}

- (NWStatsConnSnapshot)initWithConnDetails:(const nstat_msg_src_details_conn *)details startTime:(double)time flowFlags:(unsigned int)flags
{
  v11.receiver = self;
  v11.super_class = NWStatsConnSnapshot;
  v8 = [(NWStatsConnSnapshot *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_flags = flags;
    memcpy(&v8->_nstat_details, details, sizeof(v8->_nstat_details));
    v9->_descriptor = &v9->_nstat_details.conn_desc;
    v9->_startTimeInterval = time;
  }

  return v9;
}

- (id)_connDescriptorDictionaryForm:(nstat_connection_descriptor *)form
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:form->upid];
  [v4 setObject:v5 forKeyedSubscript:@"upid"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:form->start_timestamp];
  [v4 setObject:v6 forKeyedSubscript:@"start_timestamp"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:form->timestamp];
  [v4 setObject:v7 forKeyedSubscript:@"timestamp"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:form->pid];
  [v4 setObject:v8 forKeyedSubscript:@"pid"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:form->eupid];
  [v4 setObject:v9 forKeyedSubscript:@"eupid"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:form->epid];
  [v4 setObject:v10 forKeyedSubscript:@"epid"];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:form->pname];
  [v4 setObject:v11 forKeyedSubscript:@"pname"];

  v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:form->cuuid];
  uUIDString = [v12 UUIDString];
  [v4 setObject:uUIDString forKeyedSubscript:@"cuuid"];

  v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:form->fuuid];
  uUIDString2 = [v14 UUIDString];
  [v4 setObject:uUIDString2 forKeyedSubscript:@"fuuid"];

  v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:form->uuid];
  uUIDString3 = [v16 UUIDString];
  [v4 setObject:uUIDString3 forKeyedSubscript:@"uuid"];

  v18 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:form->euuid];
  uUIDString4 = [v18 UUIDString];
  [v4 setObject:uUIDString4 forKeyedSubscript:@"euuid"];

  v20 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:form->puuid];
  uUIDString5 = [v20 UUIDString];
  [v4 setObject:uUIDString5 forKeyedSubscript:@"puuid"];

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

  attributedEntity = [(NWStatsSnapshot *)self attributedEntity];
  if (attributedEntity)
  {
    [v3 setObject:attributedEntity forKeyedSubscript:@"attributedEntity"];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    [v3 setObject:null forKeyedSubscript:@"attributedEntity"];
  }

  delegateName = [(NWStatsSnapshot *)self delegateName];
  if (delegateName)
  {
    [v3 setObject:delegateName forKeyedSubscript:@"delegateName"];
  }

  else
  {
    null2 = [MEMORY[0x277CBEB68] null];
    [v3 setObject:null2 forKeyedSubscript:@"delegateName"];
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