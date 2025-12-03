@interface CSDarwinVoiceTriggerEventInfoProvider
+ (id)sharedInstance;
+ (id)voiceTriggerEventInfoWithAdjustedMachTime:(id)time deviceUUID:(id)d anchorHostMachTime:(unint64_t)machTime anchorDarwinMachTime:(unint64_t)darwinMachTime;
- (CSDarwinVoiceTriggerEventInfoProvider)init;
- (id)getMachTimeAdjustedVoiceTriggerEventInfoForDeviceUUID:(id)d;
- (void)setRawVoiceTriggerEventInfo:(id)info fromDeviceUUID:(id)d anchorHostMachTime:(unint64_t)time anchorDarwinMachTime:(unint64_t)machTime;
@end

@implementation CSDarwinVoiceTriggerEventInfoProvider

- (id)getMachTimeAdjustedVoiceTriggerEventInfoForDeviceUUID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__4952;
  v17 = __Block_byref_object_dispose__4953;
  v18 = 0;
  if (dCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__CSDarwinVoiceTriggerEventInfoProvider_getMachTimeAdjustedVoiceTriggerEventInfoForDeviceUUID___block_invoke;
    block[3] = &unk_1E865CC08;
    block[4] = self;
    v11 = dCopy;
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

- (void)setRawVoiceTriggerEventInfo:(id)info fromDeviceUUID:(id)d anchorHostMachTime:(unint64_t)time anchorDarwinMachTime:(unint64_t)machTime
{
  infoCopy = info;
  dCopy = d;
  if (dCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __124__CSDarwinVoiceTriggerEventInfoProvider_setRawVoiceTriggerEventInfo_fromDeviceUUID_anchorHostMachTime_anchorDarwinMachTime___block_invoke;
    block[3] = &unk_1E865C378;
    v14 = infoCopy;
    timeCopy = time;
    machTimeCopy = machTime;
    v15 = dCopy;
    selfCopy = self;
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

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    triggerInfos = v2->_triggerInfos;
    v2->_triggerInfos = dictionary;
  }

  return v2;
}

+ (id)voiceTriggerEventInfoWithAdjustedMachTime:(id)time deviceUUID:(id)d anchorHostMachTime:(unint64_t)machTime anchorDarwinMachTime:(unint64_t)darwinMachTime
{
  timeCopy = time;
  v9 = [timeCopy mutableCopy];
  if (!+[CSUtils isExclaveHardware])
  {
    [v9 setObject:@"Darwin" forKey:@"firstPassTriggerSource"];
  }

  if (timeCopy)
  {
    if (machTime)
    {
      if (darwinMachTime)
      {
        v10 = [timeCopy objectForKeyedSubscript:@"earlyDetectFiredMachTime"];
        if (v10)
        {
          v11 = v10;
          v12 = [timeCopy objectForKeyedSubscript:@"triggerStartMachTime"];
          if (v12)
          {
            v13 = v12;
            v14 = [timeCopy objectForKeyedSubscript:@"triggerFireMachTime"];
            if (v14)
            {
              v15 = v14;
              v16 = [timeCopy objectForKeyedSubscript:@"triggerEndMachTime"];
              if (v16)
              {
                v17 = v16;
                v18 = [timeCopy objectForKeyedSubscript:@"triggerFireSeconds"];
                if (v18)
                {
                  v19 = v18;
                  v20 = [timeCopy objectForKeyedSubscript:@"triggerEndSeconds"];

                  if (!v20)
                  {
                    goto LABEL_26;
                  }

                  v21 = [timeCopy objectForKeyedSubscript:@"earlyDetectFiredMachTime"];
                  unsignedLongLongValue = [v21 unsignedLongLongValue];

                  v23 = 0.0;
                  v24 = 0.0;
                  if (unsignedLongLongValue < darwinMachTime)
                  {
                    v25 = [timeCopy objectForKeyedSubscript:@"earlyDetectFiredMachTime"];
                    v24 = (darwinMachTime - [v25 unsignedLongLongValue]);
                  }

                  v26 = [timeCopy objectForKeyedSubscript:@"triggerStartMachTime"];
                  unsignedLongLongValue2 = [v26 unsignedLongLongValue];

                  if (unsignedLongLongValue2 < darwinMachTime)
                  {
                    v28 = [timeCopy objectForKeyedSubscript:@"triggerStartMachTime"];
                    v23 = (darwinMachTime - [v28 unsignedLongLongValue]);
                  }

                  v29 = [timeCopy objectForKeyedSubscript:@"triggerEndMachTime"];
                  unsignedLongLongValue3 = [v29 unsignedLongLongValue];

                  v31 = 0.0;
                  v32 = 0.0;
                  if (unsignedLongLongValue3 < darwinMachTime)
                  {
                    v33 = [timeCopy objectForKeyedSubscript:@"triggerEndMachTime"];
                    v32 = (darwinMachTime - [v33 unsignedLongLongValue]);
                  }

                  v34 = [timeCopy objectForKeyedSubscript:@"triggerFireMachTime"];
                  unsignedLongLongValue4 = [v34 unsignedLongLongValue];

                  if (unsignedLongLongValue4 < darwinMachTime)
                  {
                    v36 = [timeCopy objectForKeyedSubscript:@"triggerFireMachTime"];
                    v31 = (darwinMachTime - [v36 unsignedLongLongValue]);
                  }

                  v37 = [timeCopy objectForKeyedSubscript:@"triggerFireMachTime"];
                  unsignedLongLongValue5 = [v37 unsignedLongLongValue];
                  v39 = [timeCopy objectForKeyedSubscript:@"triggerEndMachTime"];
                  v40 = (unsignedLongLongValue5 - [v39 unsignedLongLongValue]);
                  v41 = [timeCopy objectForKeyedSubscript:@"triggerFireSeconds"];
                  [v41 floatValue];
                  v43 = v42;
                  v44 = [timeCopy objectForKeyedSubscript:@"triggerEndSeconds"];
                  [v44 floatValue];
                  v46 = v40 / (v43 - v45);

                  v47 = v24 / v46;
                  +[CSFTimeUtils getHostClockFrequency];
                  if ((v47 * v48) >= machTime)
                  {
                    v50 = 0;
                  }

                  else
                  {
                    +[CSFTimeUtils getHostClockFrequency];
                    v50 = machTime - (v47 * v49);
                  }

                  v53 = v23 / v46;
                  +[CSFTimeUtils getHostClockFrequency];
                  if ((v53 * v54) >= machTime)
                  {
                    v56 = 0;
                  }

                  else
                  {
                    +[CSFTimeUtils getHostClockFrequency];
                    v56 = machTime - (v53 * v55);
                  }

                  +[CSFTimeUtils getHostClockFrequency];
                  if ((v32 / v46 * v57) >= machTime)
                  {
                    v59 = 0;
                  }

                  else
                  {
                    +[CSFTimeUtils getHostClockFrequency];
                    v59 = machTime - (v32 / v46 * v58);
                  }

                  v60 = v31 / v46;
                  +[CSFTimeUtils getHostClockFrequency];
                  if ((v60 * v61) >= machTime)
                  {
                    v63 = 0;
                  }

                  else
                  {
                    +[CSFTimeUtils getHostClockFrequency];
                    v63 = machTime - (v60 * v62);
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