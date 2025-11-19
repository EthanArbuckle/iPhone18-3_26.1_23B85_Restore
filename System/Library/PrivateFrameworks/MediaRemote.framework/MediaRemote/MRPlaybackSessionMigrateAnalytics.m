@interface MRPlaybackSessionMigrateAnalytics
- (MRPlaybackSessionMigrateAnalytics)init;
- (NSNumber)durationApply;
- (NSNumber)durationApply_SetPlaybackSession;
- (NSNumber)durationDetermineRecipe;
- (NSNumber)durationFinalize;
- (NSNumber)durationPrepare;
- (NSNumber)handoffQueueSize;
- (NSNumber)isSuccess;
- (NSNumber)postDuration;
- (NSNumber)preDuration;
- (NSNumber)userPerceivedAudioContinuity;
- (NSNumber)userPerceivedHandoffTime;
- (NSString)errorLevelCore_0;
- (NSString)errorLevelCore_1;
- (NSString)errorLevel_0;
- (NSString)errorLevel_1;
- (NSString)errorOnion;
- (id)dictionaryRepresentation;
- (uint64_t)deviceTypeFromMRDeviceClass:(uint64_t)result;
- (unint64_t)handoffAppBundle;
- (unint64_t)handoffDestinationDeviceType;
- (unint64_t)handoffDestinationPerformanceClass;
- (unint64_t)handoffInitiator;
- (unint64_t)handoffSourceDeviceType;
- (unint64_t)handoffSourcePerformanceClass;
- (void)setHandoffAppBundleFromString:(id)a3;
- (void)setHandoffDestinationFromMRDeviceClass:(int64_t)a3;
- (void)setHandoffInitiatorFromString:(id)a3;
- (void)setHandoffSourceFromMRDeviceClass:(int64_t)a3;
- (void)set_durationApply:(id)a3;
- (void)set_durationApply_SetPlaybackSession:(id)a3;
- (void)set_durationDetermineRecipe:(id)a3;
- (void)set_durationFinalize:(id)a3;
- (void)set_durationPrepare:(id)a3;
- (void)set_errorLevelCore_0:(id)a3;
- (void)set_errorLevelCore_1:(id)a3;
- (void)set_errorLevel_0:(id)a3;
- (void)set_errorLevel_1:(id)a3;
- (void)set_errorOnion:(id)a3;
- (void)set_handoffAppBundle:(unint64_t)a3;
- (void)set_handoffDestinationDeviceType:(unint64_t)a3;
- (void)set_handoffDestinationPerformanceClass:(unint64_t)a3;
- (void)set_handoffInitiator:(unint64_t)a3;
- (void)set_handoffQueueSize:(id)a3;
- (void)set_handoffSourceDeviceType:(unint64_t)a3;
- (void)set_handoffSourcePerformanceClass:(unint64_t)a3;
- (void)set_isSuccess:(id)a3;
- (void)set_postDuration:(id)a3;
- (void)set_preDuration:(id)a3;
- (void)set_userPerceivedAudioContinuity:(id)a3;
- (void)set_userPerceivedHandoffTime:(id)a3;
@end

@implementation MRPlaybackSessionMigrateAnalytics

- (MRPlaybackSessionMigrateAnalytics)init
{
  v6.receiver = self;
  v6.super_class = MRPlaybackSessionMigrateAnalytics;
  v2 = [(MRPlaybackSessionMigrateAnalytics *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(MRPlaybackSessionMigrateAnalytics *)v2 setData:v3];

    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(MRPlaybackSessionMigrateAnalytics *)v2 setPlayPerfFields:v4];
  }

  return v2;
}

- (unint64_t)handoffSourceDeviceType
{
  v2 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"handoffSourceDeviceType"];
  v4 = [v3 intValue];

  return v4;
}

- (void)set_handoffSourceDeviceType:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v4 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [v4 setObject:v5 forKeyedSubscript:@"handoffSourceDeviceType"];
}

- (unint64_t)handoffDestinationDeviceType
{
  v2 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"handoffDestinationDeviceType"];
  v4 = [v3 intValue];

  return v4;
}

- (void)set_handoffDestinationDeviceType:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v4 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [v4 setObject:v5 forKeyedSubscript:@"handoffDestinationDeviceType"];
}

- (unint64_t)handoffInitiator
{
  v2 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"handoffInitiator"];
  v4 = [v3 intValue];

  return v4;
}

- (void)set_handoffInitiator:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v4 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [v4 setObject:v5 forKeyedSubscript:@"handoffInitiator"];
}

- (unint64_t)handoffAppBundle
{
  v2 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"handoffAppBundle"];
  v4 = [v3 intValue];

  return v4;
}

- (void)set_handoffAppBundle:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v4 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [v4 setObject:v5 forKeyedSubscript:@"handoffAppBundle"];
}

- (unint64_t)handoffDestinationPerformanceClass
{
  v2 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"handoffDestinationPerformanceClass"];
  v4 = [v3 intValue];

  return v4;
}

- (void)set_handoffDestinationPerformanceClass:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v4 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [v4 setObject:v5 forKeyedSubscript:@"handoffDestinationPerformanceClass"];
}

- (unint64_t)handoffSourcePerformanceClass
{
  v2 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"handoffSourcePerformanceClass"];
  v4 = [v3 intValue];

  return v4;
}

- (void)set_handoffSourcePerformanceClass:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v4 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [v4 setObject:v5 forKeyedSubscript:@"handoffSourcePerformanceClass"];
}

- (NSNumber)handoffQueueSize
{
  v2 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"handoffQueueSize"];

  return v3;
}

- (void)set_handoffQueueSize:(id)a3
{
  v4 = a3;
  v5 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"handoffQueueSize"];
}

- (NSNumber)isSuccess
{
  v2 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"isSuccess"];

  return v3;
}

- (void)set_isSuccess:(id)a3
{
  v4 = a3;
  v5 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"isSuccess"];
}

- (NSNumber)preDuration
{
  v2 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"preDuration"];

  return v3;
}

- (void)set_preDuration:(id)a3
{
  v4 = a3;
  v5 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"preDuration"];
}

- (NSNumber)durationDetermineRecipe
{
  v2 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"durationDetermineRecipe"];

  return v3;
}

- (void)set_durationDetermineRecipe:(id)a3
{
  v4 = a3;
  v5 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"durationDetermineRecipe"];
}

- (NSNumber)durationPrepare
{
  v2 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"durationPrepare"];

  return v3;
}

- (void)set_durationPrepare:(id)a3
{
  v4 = a3;
  v5 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"durationPrepare"];
}

- (NSNumber)durationApply
{
  v2 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"durationApply"];

  return v3;
}

- (void)set_durationApply:(id)a3
{
  v4 = a3;
  v5 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"durationApply"];
}

- (NSNumber)durationFinalize
{
  v2 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"durationFinalize"];

  return v3;
}

- (void)set_durationFinalize:(id)a3
{
  v4 = a3;
  v5 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"durationFinalize"];
}

- (NSNumber)durationApply_SetPlaybackSession
{
  v2 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"durationApply_SetPlaybackSession"];

  return v3;
}

- (void)set_durationApply_SetPlaybackSession:(id)a3
{
  v4 = a3;
  v5 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"durationApply_SetPlaybackSession"];
}

- (NSNumber)postDuration
{
  v2 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"postDuration"];

  return v3;
}

- (void)set_postDuration:(id)a3
{
  v4 = a3;
  v5 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"postDuration"];
}

- (NSNumber)userPerceivedHandoffTime
{
  v2 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"userPerceivedHandoffTime"];

  return v3;
}

- (void)set_userPerceivedHandoffTime:(id)a3
{
  v4 = a3;
  v5 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"userPerceivedHandoffTime"];
}

- (NSNumber)userPerceivedAudioContinuity
{
  v2 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"userPerceivedAudioContinuity"];

  return v3;
}

- (void)set_userPerceivedAudioContinuity:(id)a3
{
  v4 = a3;
  v5 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"userPerceivedAudioContinuity"];
}

- (NSString)errorLevel_0
{
  v2 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"errorLevel_0"];

  return v3;
}

- (void)set_errorLevel_0:(id)a3
{
  v4 = a3;
  v5 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"errorLevel_0"];
}

- (NSString)errorLevel_1
{
  v2 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"errorLevel_1"];

  return v3;
}

- (void)set_errorLevel_1:(id)a3
{
  v4 = a3;
  v5 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"errorLevel_1"];
}

- (NSString)errorLevelCore_1
{
  v2 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"errorLevelCore_1"];

  return v3;
}

- (void)set_errorLevelCore_1:(id)a3
{
  v4 = a3;
  v5 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"errorLevelCore_1"];
}

- (NSString)errorLevelCore_0
{
  v2 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"errorLevelCore_0"];

  return v3;
}

- (void)set_errorLevelCore_0:(id)a3
{
  v4 = a3;
  v5 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"errorLevelCore_0"];
}

- (NSString)errorOnion
{
  v2 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"errorOnion"];

  return v3;
}

- (void)set_errorOnion:(id)a3
{
  v4 = a3;
  v5 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"errorOnion"];
}

- (void)setHandoffInitiatorFromString:(id)a3
{
  v5 = a3;
  if ([v5 isEqualToString:@"proximity"])
  {
    v4 = 1;
  }

  else if ([v5 isEqualToString:@"routePicker"])
  {
    v4 = 2;
  }

  else if ([v5 isEqualToString:@"shortcuts"])
  {
    v4 = 3;
  }

  else
  {
    if (![v5 isEqualToString:@"papika"])
    {
      goto LABEL_10;
    }

    v4 = 4;
  }

  [(MRPlaybackSessionMigrateAnalytics *)self set_handoffInitiator:v4];
LABEL_10:
}

- (void)setHandoffAppBundleFromString:(id)a3
{
  v5 = a3;
  if ([v5 isEqualToString:@"com.apple.Music"])
  {
    v4 = 1;
  }

  else if ([v5 isEqualToString:@"com.apple.TVMusic"])
  {
    v4 = 2;
  }

  else if ([v5 isEqualToString:@"com.apple.NanoMusic"])
  {
    v4 = 3;
  }

  else if ([v5 isEqualToString:@"com.apple.SonicMusic"])
  {
    v4 = 4;
  }

  else if ([v5 isEqualToString:@"com.apple.SonicPodcasts"])
  {
    v4 = 101;
  }

  else if ([v5 isEqualToString:@"com.apple.Podcasts"])
  {
    v4 = 100;
  }

  else
  {
    v4 = 0;
  }

  [(MRPlaybackSessionMigrateAnalytics *)self set_handoffAppBundle:v4];
}

- (id)dictionaryRepresentation
{
  v3 = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v4 = [v3 mutableCopy];

  v5 = [(MRPlaybackSessionMigrateAnalytics *)self playPerfFields];
  [v4 addEntriesFromDictionary:v5];

  return v4;
}

- (uint64_t)deviceTypeFromMRDeviceClass:(uint64_t)result
{
  if (result)
  {
    if ((a2 - 1) > 0xC)
    {
      return 0;
    }

    else
    {
      return qword_1A2B80CB8[a2 - 1];
    }
  }

  return result;
}

- (void)setHandoffSourceFromMRDeviceClass:(int64_t)a3
{
  v4 = [(MRPlaybackSessionMigrateAnalytics *)self deviceTypeFromMRDeviceClass:a3];

  [(MRPlaybackSessionMigrateAnalytics *)self set_handoffSourceDeviceType:v4];
}

- (void)setHandoffDestinationFromMRDeviceClass:(int64_t)a3
{
  v4 = [(MRPlaybackSessionMigrateAnalytics *)self deviceTypeFromMRDeviceClass:a3];

  [(MRPlaybackSessionMigrateAnalytics *)self set_handoffDestinationDeviceType:v4];
}

@end