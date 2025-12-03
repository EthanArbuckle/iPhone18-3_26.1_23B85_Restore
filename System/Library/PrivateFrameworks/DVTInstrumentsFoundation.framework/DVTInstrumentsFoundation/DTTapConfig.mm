@interface DTTapConfig
- (BOOL)discardHeartbeatsWhenPossible;
- (BOOL)isDeferredDisplay;
- (BOOL)spoolToDiskWhenPossible;
- (DTTapConfig)init;
- (DTTapConfig)initWithPlist:(id)plist;
- (id)copyWithZone:(_NSZone *)zone;
- (id)plist;
- (unint64_t)bufferMode;
- (unint64_t)pollingInterval;
- (unint64_t)windowSize;
- (void)_dispatchStatus:(unsigned int)status timestamp:(unint64_t)timestamp notice:(id)notice info:(id)info;
- (void)_runningMetadataChanged:(id)changed;
- (void)refreshUUID;
- (void)setBufferMode:(unint64_t)mode;
- (void)setIsDeferredDisplay:(BOOL)display;
- (void)setPollingInterval:(unint64_t)interval;
- (void)setRunningMetadataChangedHandler:(id)handler;
- (void)setStatusHandler:(id)handler;
- (void)setWindowSize:(unint64_t)size;
@end

@implementation DTTapConfig

- (DTTapConfig)init
{
  v8.receiver = self;
  v8.super_class = DTTapConfig;
  v2 = [(DTTapConfig *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    dict = v2->_dict;
    v2->_dict = v3;

    v2->_serviceVersion = -1;
    [(DTTapConfig *)v2 setBufferMode:0];
    v5 = sub_247FBAB8C();
    uuid = v2->_uuid;
    v2->_uuid = v5;
  }

  return v2;
}

- (DTTapConfig)initWithPlist:(id)plist
{
  plistCopy = plist;
  v12.receiver = self;
  v12.super_class = DTTapConfig;
  v5 = [(DTTapConfig *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_serviceVersion = -1;
    v7 = [plistCopy mutableCopy];
    dict = v6->_dict;
    v6->_dict = v7;

    v9 = sub_247FBAB8C();
    uuid = v6->_uuid;
    v6->_uuid = v9;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = objc_opt_new();
  v7 = v5[1];
  v5[1] = v6;

  dict = self->_dict;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = sub_247FBADB0;
  v24 = &unk_278EF3018;
  zoneCopy = zone;
  v9 = v5;
  v25 = v9;
  [(NSMutableDictionary *)dict enumerateKeysAndObjectsUsingBlock:&v21];
  v10 = [(NSString *)self->_serviceName copy:v21];
  v11 = v9[3];
  v9[3] = v10;

  v9[4] = self->_serviceVersion;
  v9[6] = self->_bulkDataReceiver;
  v12 = [self->_runningMetadataChangedHandler copy];
  v13 = v9[7];
  v9[7] = v12;

  v14 = [self->_statusHandler copy];
  v15 = v9[8];
  v9[8] = v14;

  v16 = [self->_recordingInfoHandler copy];
  v17 = v9[9];
  v9[9] = v16;

  v18 = [(NSString *)self->_uuid copy];
  v19 = v9[5];
  v9[5] = v18;

  return v9;
}

- (id)plist
{
  v2 = [(NSMutableDictionary *)self->_dict copy];

  return v2;
}

- (void)refreshUUID
{
  v3 = sub_247FBAB8C();
  uuid = self->_uuid;
  self->_uuid = v3;
}

- (void)setRunningMetadataChangedHandler:(id)handler
{
  v4 = _Block_copy(handler);
  runningMetadataChangedHandler = self->_runningMetadataChangedHandler;
  self->_runningMetadataChangedHandler = v4;
}

- (void)setStatusHandler:(id)handler
{
  v4 = _Block_copy(handler);
  statusHandler = self->_statusHandler;
  self->_statusHandler = v4;
}

- (void)_runningMetadataChanged:(id)changed
{
  changedCopy = changed;
  runningMetadataChangedHandler = self->_runningMetadataChangedHandler;
  if (runningMetadataChangedHandler)
  {
    v6 = _Block_copy(runningMetadataChangedHandler);
    v7 = dispatch_get_global_queue(0, 0);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_247FBB00C;
    v9[3] = &unk_278EF3040;
    v11 = v6;
    v10 = changedCopy;
    v8 = v6;
    dispatch_async(v7, v9);
  }
}

- (void)_dispatchStatus:(unsigned int)status timestamp:(unint64_t)timestamp notice:(id)notice info:(id)info
{
  noticeCopy = notice;
  infoCopy = info;
  statusHandler = self->_statusHandler;
  if (statusHandler)
  {
    v13 = _Block_copy(statusHandler);
    v14 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_247FBB130;
    block[3] = &unk_278EF3068;
    statusCopy = status;
    v19 = v13;
    timestampCopy = timestamp;
    v17 = noticeCopy;
    v18 = infoCopy;
    v15 = v13;
    dispatch_async(v14, block);
  }
}

- (BOOL)isDeferredDisplay
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"ur"];
  v3 = v2 == 0;

  return v3;
}

- (void)setIsDeferredDisplay:(BOOL)display
{
  if (display)
  {

    MEMORY[0x2821F9670](self, sel__removeSerializableObjectForKey_);
  }

  else
  {
    v4 = [(DTTapConfig *)self _getSerializableObjectForKey:@"ur"];

    if (!v4)
    {
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:500];
      [(DTTapConfig *)self _setSerializableObject:v5 forKey:@"ur"];
    }
  }
}

- (BOOL)spoolToDiskWhenPossible
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"s2d"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)discardHeartbeatsWhenPossible
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"nohb"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setPollingInterval:(unint64_t)interval
{
  if (interval)
  {
    0xF4240 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:interval / 0xF4240];
    [(DTTapConfig *)self _setSerializableObject:0xF4240 forKey:@"ur"];
  }

  else
  {

    MEMORY[0x2821F9670](self, sel_setIsDeferredDisplay_);
  }
}

- (unint64_t)pollingInterval
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"ur"];
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return 1000000 * unsignedLongLongValue;
}

- (void)setBufferMode:(unint64_t)mode
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [DTTapConfig _setSerializableObject:"_setSerializableObject:forKey:" forKey:?];
  if (mode - 1 <= 1)
  {
    [(DTTapConfig *)self setPollingInterval:0];
  }
}

- (unint64_t)bufferMode
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"bm"];
  intValue = [v2 intValue];
  if (v2)
  {
    v4 = intValue > 2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (v2)
    {
      NSLog(&cfstr_UnsupportedBuf_0.isa, intValue);
    }

    v5 = 1;
  }

  else
  {
    v5 = intValue;
  }

  return v5;
}

- (unint64_t)windowSize
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"ws"];
  v3 = v2;
  if (v2)
  {
    v4 = 1000000 * [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setWindowSize:(unint64_t)size
{
  if (size <= 0xF423FFFFFFFFFLL)
  {
    0xF4240 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:size / 0xF4240];
    [(DTTapConfig *)self _setSerializableObject:0xF4240 forKey:@"ws"];
  }
}

@end