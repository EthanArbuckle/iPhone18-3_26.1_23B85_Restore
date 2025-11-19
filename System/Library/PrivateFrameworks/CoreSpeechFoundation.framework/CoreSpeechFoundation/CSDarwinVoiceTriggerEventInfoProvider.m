@interface CSDarwinVoiceTriggerEventInfoProvider
+ (id)sharedInstance;
+ (id)voiceTriggerEventInfoWithAdjustedMachTime:(id)a3 deviceUUID:(id)a4 anchorHostMachTime:(unint64_t)a5 anchorDarwinMachTime:(unint64_t)a6;
- (CSDarwinVoiceTriggerEventInfoProvider)init;
- (id)getMachTimeAdjustedVoiceTriggerEventInfoForDeviceUUID:(id)a3;
- (void)setRawVoiceTriggerEventInfo:(id)a3 fromDeviceUUID:(id)a4 anchorHostMachTime:(unint64_t)a5 anchorDarwinMachTime:(unint64_t)a6;
@end

@implementation CSDarwinVoiceTriggerEventInfoProvider

- (id)getMachTimeAdjustedVoiceTriggerEventInfoForDeviceUUID:(id)a3
{
  v4 = a3;
  v5 = v4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__4952;
  v17 = __Block_byref_object_dispose__4953;
  v18 = 0;
  if (v4)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__CSDarwinVoiceTriggerEventInfoProvider_getMachTimeAdjustedVoiceTriggerEventInfoForDeviceUUID___block_invoke;
    block[3] = &unk_1E865CC08;
    block[4] = self;
    v11 = v4;
    v12 = &v13;
    dispatch_async_and_wait(queue, block);

    v7 = v14[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __95__CSDarwinVoiceTriggerEventInfoProvider_getMachTimeAdjustedVoiceTriggerEventInfoForDeviceUUID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];

  if (v2)
  {
    v3 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setRawVoiceTriggerEventInfo:(id)a3 fromDeviceUUID:(id)a4 anchorHostMachTime:(unint64_t)a5 anchorDarwinMachTime:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  if (v11)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __124__CSDarwinVoiceTriggerEventInfoProvider_setRawVoiceTriggerEventInfo_fromDeviceUUID_anchorHostMachTime_anchorDarwinMachTime___block_invoke;
    block[3] = &unk_1E865C378;
    v14 = v10;
    v17 = a5;
    v18 = a6;
    v15 = v11;
    v16 = self;
    dispatch_async(queue, block);
  }
}

void __124__CSDarwinVoiceTriggerEventInfoProvider_setRawVoiceTriggerEventInfo_fromDeviceUUID_anchorHostMachTime_anchorDarwinMachTime___block_invoke(void *a1)
{
  v2 = [CSDarwinVoiceTriggerEventInfoProvider voiceTriggerEventInfoWithAdjustedMachTime:a1[4] deviceUUID:a1[5] anchorHostMachTime:a1[7] anchorDarwinMachTime:a1[8]];
  [*(a1[6] + 8) setObject:v2 forKey:a1[5]];
}

- (CSDarwinVoiceTriggerEventInfoProvider)init
{
  v8.receiver = self;
  v8.super_class = CSDarwinVoiceTriggerEventInfoProvider;
  v2 = [(CSDarwinVoiceTriggerEventInfoProvider *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSDarwinVoiceTriggerEventInfoProvider", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    triggerInfos = v2->_triggerInfos;
    v2->_triggerInfos = v5;
  }

  return v2;
}

+ (id)voiceTriggerEventInfoWithAdjustedMachTime:(id)a3 deviceUUID:(id)a4 anchorHostMachTime:(unint64_t)a5 anchorDarwinMachTime:(unint64_t)a6
{
  v8 = a3;
  v9 = [v8 mutableCopy];
  if (!+[CSUtils isExclaveHardware])
  {
    [v9 setObject:@"Darwin" forKey:@"firstPassTriggerSource"];
  }

  if (v8)
  {
    if (a5)
    {
      if (a6)
      {
        v10 = [v8 objectForKeyedSubscript:@"earlyDetectFiredMachTime"];
        if (v10)
        {
          v11 = v10;
          v12 = [v8 objectForKeyedSubscript:@"triggerStartMachTime"];
          if (v12)
          {
            v13 = v12;
            v14 = [v8 objectForKeyedSubscript:@"triggerFireMachTime"];
            if (v14)
            {
              v15 = v14;
              v16 = [v8 objectForKeyedSubscript:@"triggerEndMachTime"];
              if (v16)
              {
                v17 = v16;
                v18 = [v8 objectForKeyedSubscript:@"triggerFireSeconds"];
                if (v18)
                {
                  v19 = v18;
                  v20 = [v8 objectForKeyedSubscript:@"triggerEndSeconds"];

                  if (!v20)
                  {
                    goto LABEL_26;
                  }

                  v21 = [v8 objectForKeyedSubscript:@"earlyDetectFiredMachTime"];
                  v22 = [v21 unsignedLongLongValue];

                  v23 = 0.0;
                  v24 = 0.0;
                  if (v22 < a6)
                  {
                    v25 = [v8 objectForKeyedSubscript:@"earlyDetectFiredMachTime"];
                    v24 = (a6 - [v25 unsignedLongLongValue]);
                  }

                  v26 = [v8 objectForKeyedSubscript:@"triggerStartMachTime"];
                  v27 = [v26 unsignedLongLongValue];

                  if (v27 < a6)
                  {
                    v28 = [v8 objectForKeyedSubscript:@"triggerStartMachTime"];
                    v23 = (a6 - [v28 unsignedLongLongValue]);
                  }

                  v29 = [v8 objectForKeyedSubscript:@"triggerEndMachTime"];
                  v30 = [v29 unsignedLongLongValue];

                  v31 = 0.0;
                  v32 = 0.0;
                  if (v30 < a6)
                  {
                    v33 = [v8 objectForKeyedSubscript:@"triggerEndMachTime"];
                    v32 = (a6 - [v33 unsignedLongLongValue]);
                  }

                  v34 = [v8 objectForKeyedSubscript:@"triggerFireMachTime"];
                  v35 = [v34 unsignedLongLongValue];

                  if (v35 < a6)
                  {
                    v36 = [v8 objectForKeyedSubscript:@"triggerFireMachTime"];
                    v31 = (a6 - [v36 unsignedLongLongValue]);
                  }

                  v37 = [v8 objectForKeyedSubscript:@"triggerFireMachTime"];
                  v38 = [v37 unsignedLongLongValue];
                  v39 = [v8 objectForKeyedSubscript:@"triggerEndMachTime"];
                  v40 = (v38 - [v39 unsignedLongLongValue]);
                  v41 = [v8 objectForKeyedSubscript:@"triggerFireSeconds"];
                  [v41 floatValue];
                  v43 = v42;
                  v44 = [v8 objectForKeyedSubscript:@"triggerEndSeconds"];
                  [v44 floatValue];
                  v46 = v40 / (v43 - v45);

                  v47 = v24 / v46;
                  +[CSFTimeUtils getHostClockFrequency];
                  if ((v47 * v48) >= a5)
                  {
                    v50 = 0;
                  }

                  else
                  {
                    +[CSFTimeUtils getHostClockFrequency];
                    v50 = a5 - (v47 * v49);
                  }

                  v53 = v23 / v46;
                  +[CSFTimeUtils getHostClockFrequency];
                  if ((v53 * v54) >= a5)
                  {
                    v56 = 0;
                  }

                  else
                  {
                    +[CSFTimeUtils getHostClockFrequency];
                    v56 = a5 - (v53 * v55);
                  }

                  +[CSFTimeUtils getHostClockFrequency];
                  if ((v32 / v46 * v57) >= a5)
                  {
                    v59 = 0;
                  }

                  else
                  {
                    +[CSFTimeUtils getHostClockFrequency];
                    v59 = a5 - (v32 / v46 * v58);
                  }

                  v60 = v31 / v46;
                  +[CSFTimeUtils getHostClockFrequency];
                  if ((v60 * v61) >= a5)
                  {
                    v63 = 0;
                  }

                  else
                  {
                    +[CSFTimeUtils getHostClockFrequency];
                    v63 = a5 - (v60 * v62);
                  }

                  v64 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v50];
                  [v9 setObject:v64 forKey:@"earlyDetectFiredMachTime"];

                  v65 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v56];
                  [v9 setObject:v65 forKey:@"triggerStartMachTime"];

                  v66 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v59];
                  [v9 setObject:v66 forKey:@"triggerEndMachTime"];

                  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v63];
                  [v9 setObject:v11 forKey:@"triggerFireMachTime"];
                  goto LABEL_25;
                }
              }
            }
          }

LABEL_25:
        }
      }
    }
  }

LABEL_26:
  v51 = [v9 copy];

  return v51;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4967 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_4967, &__block_literal_global_4968);
  }

  v3 = sharedInstance_sharedInstance_4969;

  return v3;
}

uint64_t __55__CSDarwinVoiceTriggerEventInfoProvider_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_4969 = objc_alloc_init(CSDarwinVoiceTriggerEventInfoProvider);

  return MEMORY[0x1EEE66BB8]();
}

@end