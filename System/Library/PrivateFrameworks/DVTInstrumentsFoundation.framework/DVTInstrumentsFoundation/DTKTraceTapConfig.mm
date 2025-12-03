@interface DTKTraceTapConfig
+ (void)initialize;
- (BOOL)bufferSizeOverrideClamping;
- (BOOL)canUseRawKtraceFile;
- (DTKTraceTapConfig)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)_addTriggerConfig:(id)config;
- (unint64_t)bufferSizeOverride;
- (unint64_t)collectionInterval;
- (unint64_t)triggerConfigCount;
- (unsigned)recordingPriority;
- (void)enumerateTriggerConfigs:(id)configs;
- (void)setBufferSizeOverride:(unint64_t)override;
- (void)setCollectionInterval:(unint64_t)interval;
- (void)setSessionHandler:(id)handler;
@end

@implementation DTKTraceTapConfig

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = MEMORY[0x277CCAAC8];
    objc_opt_class();

    MEMORY[0x2821F9670](v2, sel_setClass_forClassName_);
  }
}

- (DTKTraceTapConfig)init
{
  v6.receiver = self;
  v6.super_class = DTKTraceTapConfig;
  v2 = [(DTTapConfig *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_kdebugTriggerIndex = -1;
    [(DTTapConfig *)v2 setBufferMode:0];
    [(DTTapConfig *)v3 setPollingInterval:500000000];
    array = [MEMORY[0x277CBEB18] array];
    [(DTTapConfig *)v3 _setSerializableObject:array forKey:@"tc"];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = DTKTraceTapConfig;
  v4 = [(DTTapConfig *)&v12 copyWithZone:zone];
  v4[20] = self->_kdebugTriggerIndex;
  v5 = [self->_sessionHandler copy];
  v6 = *(v4 + 11);
  *(v4 + 11) = v5;

  v7 = [self->_stackshotHandler copy];
  v8 = *(v4 + 12);
  *(v4 + 12) = v7;

  providerOptions = [(DTKTraceTapConfig *)self providerOptions];
  v10 = [providerOptions copy];
  [v4 setProviderOptions:v10];

  return v4;
}

- (BOOL)canUseRawKtraceFile
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"curkt"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (unsigned)recordingPriority
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"rp"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 10;
  }

  return intValue;
}

- (unint64_t)bufferSizeOverride
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"bso"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setBufferSizeOverride:(unint64_t)override
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:override];
  [(DTTapConfig *)self _setSerializableObject:v4 forKey:@"bso"];
}

- (BOOL)bufferSizeOverrideClamping
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"bsoc"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (unint64_t)collectionInterval
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"kco"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setCollectionInterval:(unint64_t)interval
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:interval];
  [(DTTapConfig *)self _setSerializableObject:v4 forKey:@"kco"];
}

- (void)setSessionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  sessionHandler = self->_sessionHandler;
  self->_sessionHandler = v4;
}

- (void)enumerateTriggerConfigs:(id)configs
{
  v18 = *MEMORY[0x277D85DE8];
  configsCopy = configs;
  v5 = [(DTTapConfig *)self _getSerializableObjectForKey:@"tc"];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = objc_opt_new();
        [v11 _SetTriggerDict:v10];
        configsCopy[2](configsCopy, v11);

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (unint64_t)triggerConfigCount
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"tc"];
  v3 = [v2 count];

  return v3;
}

- (int)_addTriggerConfig:(id)config
{
  configCopy = config;
  v5 = [(DTTapConfig *)self _getSerializableObjectForKey:@"tc"];
  _GetTriggerDict = [configCopy _GetTriggerDict];
  [v5 addObject:_GetTriggerDict];

  v7 = [v5 count] - 1;
  if ([configCopy kind] == 3)
  {
    if (self->_kdebugTriggerIndex != -1)
    {
      sub_24802FC7C();
    }

    self->_kdebugTriggerIndex = v7;
  }

  return v7;
}

@end