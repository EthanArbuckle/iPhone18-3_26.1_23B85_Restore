@interface DTKTraceTapConfig
+ (void)initialize;
- (BOOL)bufferSizeOverrideClamping;
- (BOOL)canUseRawKtraceFile;
- (DTKTraceTapConfig)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int)_addTriggerConfig:(id)a3;
- (unint64_t)bufferSizeOverride;
- (unint64_t)collectionInterval;
- (unint64_t)triggerConfigCount;
- (unsigned)recordingPriority;
- (void)enumerateTriggerConfigs:(id)a3;
- (void)setBufferSizeOverride:(unint64_t)a3;
- (void)setCollectionInterval:(unint64_t)a3;
- (void)setSessionHandler:(id)a3;
@end

@implementation DTKTraceTapConfig

+ (void)initialize
{
  if (objc_opt_class() == a1)
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
    v4 = [MEMORY[0x277CBEB18] array];
    [(DTTapConfig *)v3 _setSerializableObject:v4 forKey:@"tc"];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = DTKTraceTapConfig;
  v4 = [(DTTapConfig *)&v12 copyWithZone:a3];
  v4[20] = self->_kdebugTriggerIndex;
  v5 = [self->_sessionHandler copy];
  v6 = *(v4 + 11);
  *(v4 + 11) = v5;

  v7 = [self->_stackshotHandler copy];
  v8 = *(v4 + 12);
  *(v4 + 12) = v7;

  v9 = [(DTKTraceTapConfig *)self providerOptions];
  v10 = [v9 copy];
  [v4 setProviderOptions:v10];

  return v4;
}

- (BOOL)canUseRawKtraceFile
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"curkt"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (unsigned)recordingPriority
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"rp"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 10;
  }

  return v4;
}

- (unint64_t)bufferSizeOverride
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"bso"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setBufferSizeOverride:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(DTTapConfig *)self _setSerializableObject:v4 forKey:@"bso"];
}

- (BOOL)bufferSizeOverrideClamping
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"bsoc"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (unint64_t)collectionInterval
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"kco"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setCollectionInterval:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(DTTapConfig *)self _setSerializableObject:v4 forKey:@"kco"];
}

- (void)setSessionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  sessionHandler = self->_sessionHandler;
  self->_sessionHandler = v4;
}

- (void)enumerateTriggerConfigs:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
        v4[2](v4, v11);

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

- (int)_addTriggerConfig:(id)a3
{
  v4 = a3;
  v5 = [(DTTapConfig *)self _getSerializableObjectForKey:@"tc"];
  v6 = [v4 _GetTriggerDict];
  [v5 addObject:v6];

  v7 = [v5 count] - 1;
  if ([v4 kind] == 3)
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