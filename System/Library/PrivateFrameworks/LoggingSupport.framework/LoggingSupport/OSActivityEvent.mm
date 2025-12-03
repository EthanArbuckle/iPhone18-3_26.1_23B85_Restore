@interface OSActivityEvent
+ (id)activityEventFromStreamEntry:(os_activity_stream_entry_s *)entry;
- (NSTimeZone)timezone;
- (id)description;
- (id)properties;
- (timeval)timeGMT;
- (void)_addProperties:(id)properties;
- (void)_initWithProperties:(id)properties;
- (void)fillFromStreamEntry:(os_activity_stream_entry_s *)entry eventMessage:(const char *)message persisted:(BOOL)persisted;
@end

@implementation OSActivityEvent

- (timeval)timeGMT
{
  v2 = *&self->_timeGMT.tv_usec;
  tv_sec = self->_timeGMT.tv_sec;
  result.tv_usec = v2;
  result.tv_sec = tv_sec;
  return result;
}

- (void)_addProperties:(id)properties
{
  v41 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:{-[OSActivityEvent processID](self, "processID")}];
  [propertiesCopy setObject:v5 forKey:@"processID"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSActivityEvent processUniqueID](self, "processUniqueID")}];
  [propertiesCopy setObject:v6 forKey:@"processUniqueID"];

  processImageUUID = [(OSActivityEvent *)self processImageUUID];

  if (processImageUUID)
  {
    processImageUUID2 = [(OSActivityEvent *)self processImageUUID];
    uUIDString = [processImageUUID2 UUIDString];
    [propertiesCopy setObject:uUIDString forKey:@"processImageUUID"];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[OSActivityEvent userID](self, "userID")}];
  [propertiesCopy setObject:v10 forKey:@"userID"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSActivityEvent traceID](self, "traceID")}];
  [propertiesCopy setObject:v11 forKey:@"traceID"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSActivityEvent threadID](self, "threadID")}];
  [propertiesCopy setObject:v12 forKey:@"threadID"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSActivityEvent machTimestamp](self, "machTimestamp")}];
  [propertiesCopy setObject:v13 forKey:@"machTimestamp"];

  processImagePath = [(OSActivityEvent *)self processImagePath];

  if (processImagePath)
  {
    processImagePath2 = [(OSActivityEvent *)self processImagePath];
    [propertiesCopy setObject:processImagePath2 forKey:@"processImagePath"];
  }

  if ([(OSActivityEvent *)self parentActivityID])
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSActivityEvent parentActivityID](self, "parentActivityID")}];
    [propertiesCopy setObject:v16 forKey:@"parentActivityID"];
  }

  if ([(OSActivityEvent *)self activityID])
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSActivityEvent activityID](self, "activityID")}];
    [propertiesCopy setObject:v17 forKey:@"activityID"];
  }

  senderImageUUID = [(OSActivityEvent *)self senderImageUUID];

  if (senderImageUUID)
  {
    senderImageUUID2 = [(OSActivityEvent *)self senderImageUUID];
    uUIDString2 = [senderImageUUID2 UUIDString];
    [propertiesCopy setObject:uUIDString2 forKey:@"senderImageUUID"];
  }

  senderImagePath = [(OSActivityEvent *)self senderImagePath];

  if (senderImagePath)
  {
    senderImagePath2 = [(OSActivityEvent *)self senderImagePath];
    [propertiesCopy setObject:senderImagePath2 forKey:@"senderImagePath"];
  }

  eventMessage = [(OSActivityEvent *)self eventMessage];

  if (eventMessage)
  {
    eventMessage2 = [(OSActivityEvent *)self eventMessage];
    [propertiesCopy setObject:eventMessage2 forKey:@"eventMessage"];
  }

  memset(&v36, 0, sizeof(v36));
  v40 = 0;
  *v38 = 0u;
  v39 = 0u;
  v35 = self->_timeGMT.tv_sec - 60 * self->_tz.tz_minuteswest + 3600 * self->_tz.tz_dsttime;
  v25 = gmtime_r(&v35, &v36);
  if (v25)
  {
    v26 = v25;
    v27 = self->_tz.tz_minuteswest - 60 * self->_tz.tz_dsttime;
    v28 = ((((2004318071 * v27) >> 32) - v27) >> 5) + ((((2004318071 * v27) >> 32) - v27) >> 31);
    v29 = v27 % 60;
    if (v29 < 0)
    {
      v29 = -v29;
    }

    snprintf(__str, 0x20uLL, "%%F %%T.%06d%+03d%02d", self->_timeGMT.tv_usec, v28, v29);
    strftime(v38, 0x24uLL, __str, v26);
    timestamp = [MEMORY[0x277CCACA8] stringWithUTF8String:v38];
    [propertiesCopy setObject:timestamp forKey:@"timestamp"];
  }

  else
  {
    if (_addProperties__once != -1)
    {
      dispatch_once(&_addProperties__once, &__block_literal_global_398);
    }

    v31 = _addProperties__dateFormat;
    timestamp = [(OSActivityEvent *)self timestamp];
    v32 = [v31 stringFromDate:timestamp];
    [propertiesCopy setObject:v32 forKey:@"timestamp"];
  }

  timezoneName = self->_timezoneName;
  if (timezoneName)
  {
    [propertiesCopy setObject:timezoneName forKeyedSubscript:@"timezoneName"];
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __34__OSActivityEvent__addProperties___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = _addProperties__dateFormat;
  _addProperties__dateFormat = v0;

  v2 = _addProperties__dateFormat;

  return [v2 setDateFormat:@"MMM dd HH:mm:ss.SSSSSS"];
}

- (void)_initWithProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = [propertiesCopy objectForKey:@"processID"];
  v5 = v4;
  if (v4)
  {
    self->_processID = [v4 intValue];
  }

  v6 = [propertiesCopy objectForKey:@"processUniqueID"];

  if (v6)
  {
    self->_processUniqueID = [v6 unsignedLongLongValue];
  }

  v7 = [propertiesCopy objectForKey:@"processImageUUID"];

  if (v7)
  {
    objc_storeStrong(&self->_processImageUUID, v7);
  }

  v8 = [propertiesCopy objectForKey:@"processImagePath"];

  if (v8)
  {
    objc_storeStrong(&self->_processImagePath, v8);
  }

  v9 = [propertiesCopy objectForKey:@"userID"];

  if (v9)
  {
    self->_userID = [v9 unsignedIntValue];
  }

  v10 = [propertiesCopy objectForKey:@"eventType"];

  if (v10)
  {
    self->_eventType = [v10 unsignedLongValue];
  }

  v11 = [propertiesCopy objectForKey:@"parentActivityID"];

  if (v11)
  {
    self->_parentActivityID = [v11 unsignedLongLongValue];
  }

  v12 = [propertiesCopy objectForKey:@"activityID"];

  if (v12)
  {
    self->_activityID = [v12 unsignedLongLongValue];
  }

  v13 = [propertiesCopy objectForKey:@"traceID"];

  if (v13)
  {
    self->_traceID = [v13 unsignedLongLongValue];
  }

  v14 = [propertiesCopy objectForKey:@"threadID"];

  if (v14)
  {
    self->_threadID = [v14 unsignedLongLongValue];
  }

  v15 = [propertiesCopy objectForKey:@"machTimestamp"];

  if (v15)
  {
    self->_machTimestamp = [v15 unsignedLongLongValue];
  }

  v16 = [propertiesCopy objectForKey:@"timestamp"];

  if (v16)
  {
    objc_storeStrong(&self->_timestamp, v16);
  }

  v17 = [propertiesCopy objectForKey:@"senderImageUUID"];

  if (v17)
  {
    v18 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v17];
    senderImageUUID = self->_senderImageUUID;
    self->_senderImageUUID = v18;
  }

  v20 = [propertiesCopy objectForKey:@"senderImagePath"];

  if (v20)
  {
    objc_storeStrong(&self->_senderImagePath, v20);
  }

  v21 = [propertiesCopy objectForKey:@"eventMessage"];

  if (v21)
  {
    objc_storeStrong(&self->_eventMessage, v21);
  }

  v22 = [propertiesCopy objectForKey:@"persisted"];

  if (v22)
  {
    self->_persisted = [v22 BOOLValue];
  }
}

- (id)properties
{
  v3 = objc_opt_new();
  [(OSActivityEvent *)self _addProperties:v3];

  return v3;
}

- (void)fillFromStreamEntry:(os_activity_stream_entry_s *)entry eventMessage:(const char *)message persisted:(BOOL)persisted
{
  var1 = entry->var1;
  self->_eventType = entry->var0;
  self->_processID = var1;
  self->_processUniqueID = entry->var2;
  self->_userID = entry->var3;
  if (*(&entry->var3 + 1))
  {
    v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:*(&entry->var3 + 1)];
    processImageUUID = self->_processImageUUID;
    self->_processImageUUID = v10;
  }

  if (*(&entry->var4 + 4))
  {
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    processImagePath = self->_processImagePath;
    self->_processImagePath = v12;
  }

  self->_parentActivityID = *(&entry->var6 + 4) & 0xFFFFFFFFFFFFFFLL;
  self->_activityID = *(&entry->var5 + 4) & 0xFFFFFFFFFFFFFFLL;
  self->_traceID = *(&entry->var7 + 4);
  self->_threadID = *(&entry->var8.var11.var1 + 4);
  self->_machTimestamp = *(&entry->var8.var3.var0 + 4);
  self->_timeGMT = *(&entry->var8.var12.var4 + 4);
  self->_tz = *(&entry->var8.var12.var5.tv_usec + 1);
  v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:SHIDWORD(entry->var8.var12.var5.tv_sec) / 1000000.0 + *(&entry->var8.var12.var4 + 4)];
  timestamp = self->_timestamp;
  self->_timestamp = v14;

  timezoneName = self->_timezoneName;
  self->_timezoneName = &stru_2841AD290;

  timezone = self->_timezone;
  self->_timezone = 0;

  self->_persisted = persisted;
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:message];
  eventMessage = self->_eventMessage;
  self->_eventMessage = v18;

  if (!self->_eventMessage)
  {
    self->_eventMessage = @"<compose failure [invalid utf8]>";
  }

  if (*(&entry->var8.var12.var2 + 4))
  {
    v20 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:*(&entry->var8.var12.var2 + 4)];
    senderImageUUID = self->_senderImageUUID;
    self->_senderImageUUID = v20;
  }

  if (*(&entry->var8.var12.var3 + 4))
  {
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    senderImagePath = self->_senderImagePath;
    self->_senderImagePath = v22;

    MEMORY[0x2821F96F8]();
  }
}

- (NSTimeZone)timezone
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_timezone)
  {
    if ([(NSString *)selfCopy->_timezoneName length])
    {
      [MEMORY[0x277CBEBB0] timeZoneWithName:selfCopy->_timezoneName];
    }

    else
    {
      [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:-60 * selfCopy->_tz.tz_minuteswest + 3600 * selfCopy->_tz.tz_dsttime];
    }
    v3 = ;
    timezone = selfCopy->_timezone;
    selfCopy->_timezone = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_timezone;

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  process = [(OSActivityEvent *)self process];
  sender = [(OSActivityEvent *)self sender];
  eventMessage = [(OSActivityEvent *)self eventMessage];
  v8 = [v3 stringWithFormat:@"<%@:%p process:%@ sender:%@>{%@}", v4, self, process, sender, eventMessage];

  return v8;
}

+ (id)activityEventFromStreamEntry:(os_activity_stream_entry_s *)entry
{
  var0 = entry->var0;
  if (entry->var0 <= 1023)
  {
    if (var0 > 514)
    {
      if (var0 == 515)
      {
        v4 = off_2787AD408;
        goto LABEL_23;
      }

      if (var0 == 768)
      {
        v4 = off_2787AD3F8;
        goto LABEL_23;
      }
    }

    else
    {
      if (var0 == 513)
      {
        v4 = off_2787AD3B8;
        goto LABEL_23;
      }

      if (var0 == 514)
      {
        v4 = off_2787AD400;
        goto LABEL_23;
      }
    }
  }

  else if (var0 <= 1279)
  {
    if (var0 == 1024 || var0 == 1152)
    {
      v4 = off_2787AD3D0;
      goto LABEL_23;
    }
  }

  else
  {
    switch(var0)
    {
      case 1280:
        v4 = off_2787AD3F0;
        goto LABEL_23;
      case 1792:
        v4 = off_2787AD3D8;
        goto LABEL_23;
      case 2560:
        v4 = off_2787AD3E8;
LABEL_23:
        v5 = [objc_alloc(*v4) initWithEntry:entry];
        goto LABEL_24;
    }
  }

  if ((var0 & 0xFFFFFF00) == 0x600)
  {
    v4 = off_2787AD3E0;
    goto LABEL_23;
  }

  v5 = 0;
LABEL_24:

  return v5;
}

@end