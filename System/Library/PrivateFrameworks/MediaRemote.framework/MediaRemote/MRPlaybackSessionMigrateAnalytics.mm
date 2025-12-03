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
- (void)setHandoffAppBundleFromString:(id)string;
- (void)setHandoffDestinationFromMRDeviceClass:(int64_t)class;
- (void)setHandoffInitiatorFromString:(id)string;
- (void)setHandoffSourceFromMRDeviceClass:(int64_t)class;
- (void)set_durationApply:(id)apply;
- (void)set_durationApply_SetPlaybackSession:(id)session;
- (void)set_durationDetermineRecipe:(id)recipe;
- (void)set_durationFinalize:(id)finalize;
- (void)set_durationPrepare:(id)prepare;
- (void)set_errorLevelCore_0:(id)core_0;
- (void)set_errorLevelCore_1:(id)core_1;
- (void)set_errorLevel_0:(id)level_0;
- (void)set_errorLevel_1:(id)level_1;
- (void)set_errorOnion:(id)onion;
- (void)set_handoffAppBundle:(unint64_t)bundle;
- (void)set_handoffDestinationDeviceType:(unint64_t)type;
- (void)set_handoffDestinationPerformanceClass:(unint64_t)class;
- (void)set_handoffInitiator:(unint64_t)initiator;
- (void)set_handoffQueueSize:(id)size;
- (void)set_handoffSourceDeviceType:(unint64_t)type;
- (void)set_handoffSourcePerformanceClass:(unint64_t)class;
- (void)set_isSuccess:(id)success;
- (void)set_postDuration:(id)duration;
- (void)set_preDuration:(id)duration;
- (void)set_userPerceivedAudioContinuity:(id)continuity;
- (void)set_userPerceivedHandoffTime:(id)time;
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
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [data objectForKeyedSubscript:@"handoffSourceDeviceType"];
  intValue = [v3 intValue];

  return intValue;
}

- (void)set_handoffSourceDeviceType:(unint64_t)type
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [data setObject:v5 forKeyedSubscript:@"handoffSourceDeviceType"];
}

- (unint64_t)handoffDestinationDeviceType
{
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [data objectForKeyedSubscript:@"handoffDestinationDeviceType"];
  intValue = [v3 intValue];

  return intValue;
}

- (void)set_handoffDestinationDeviceType:(unint64_t)type
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [data setObject:v5 forKeyedSubscript:@"handoffDestinationDeviceType"];
}

- (unint64_t)handoffInitiator
{
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [data objectForKeyedSubscript:@"handoffInitiator"];
  intValue = [v3 intValue];

  return intValue;
}

- (void)set_handoffInitiator:(unint64_t)initiator
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:initiator];
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [data setObject:v5 forKeyedSubscript:@"handoffInitiator"];
}

- (unint64_t)handoffAppBundle
{
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [data objectForKeyedSubscript:@"handoffAppBundle"];
  intValue = [v3 intValue];

  return intValue;
}

- (void)set_handoffAppBundle:(unint64_t)bundle
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:bundle];
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [data setObject:v5 forKeyedSubscript:@"handoffAppBundle"];
}

- (unint64_t)handoffDestinationPerformanceClass
{
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [data objectForKeyedSubscript:@"handoffDestinationPerformanceClass"];
  intValue = [v3 intValue];

  return intValue;
}

- (void)set_handoffDestinationPerformanceClass:(unint64_t)class
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:class];
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [data setObject:v5 forKeyedSubscript:@"handoffDestinationPerformanceClass"];
}

- (unint64_t)handoffSourcePerformanceClass
{
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [data objectForKeyedSubscript:@"handoffSourcePerformanceClass"];
  intValue = [v3 intValue];

  return intValue;
}

- (void)set_handoffSourcePerformanceClass:(unint64_t)class
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:class];
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [data setObject:v5 forKeyedSubscript:@"handoffSourcePerformanceClass"];
}

- (NSNumber)handoffQueueSize
{
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [data objectForKeyedSubscript:@"handoffQueueSize"];

  return v3;
}

- (void)set_handoffQueueSize:(id)size
{
  sizeCopy = size;
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [data setObject:sizeCopy forKeyedSubscript:@"handoffQueueSize"];
}

- (NSNumber)isSuccess
{
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [data objectForKeyedSubscript:@"isSuccess"];

  return v3;
}

- (void)set_isSuccess:(id)success
{
  successCopy = success;
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [data setObject:successCopy forKeyedSubscript:@"isSuccess"];
}

- (NSNumber)preDuration
{
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [data objectForKeyedSubscript:@"preDuration"];

  return v3;
}

- (void)set_preDuration:(id)duration
{
  durationCopy = duration;
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [data setObject:durationCopy forKeyedSubscript:@"preDuration"];
}

- (NSNumber)durationDetermineRecipe
{
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [data objectForKeyedSubscript:@"durationDetermineRecipe"];

  return v3;
}

- (void)set_durationDetermineRecipe:(id)recipe
{
  recipeCopy = recipe;
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [data setObject:recipeCopy forKeyedSubscript:@"durationDetermineRecipe"];
}

- (NSNumber)durationPrepare
{
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [data objectForKeyedSubscript:@"durationPrepare"];

  return v3;
}

- (void)set_durationPrepare:(id)prepare
{
  prepareCopy = prepare;
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [data setObject:prepareCopy forKeyedSubscript:@"durationPrepare"];
}

- (NSNumber)durationApply
{
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [data objectForKeyedSubscript:@"durationApply"];

  return v3;
}

- (void)set_durationApply:(id)apply
{
  applyCopy = apply;
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [data setObject:applyCopy forKeyedSubscript:@"durationApply"];
}

- (NSNumber)durationFinalize
{
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [data objectForKeyedSubscript:@"durationFinalize"];

  return v3;
}

- (void)set_durationFinalize:(id)finalize
{
  finalizeCopy = finalize;
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [data setObject:finalizeCopy forKeyedSubscript:@"durationFinalize"];
}

- (NSNumber)durationApply_SetPlaybackSession
{
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [data objectForKeyedSubscript:@"durationApply_SetPlaybackSession"];

  return v3;
}

- (void)set_durationApply_SetPlaybackSession:(id)session
{
  sessionCopy = session;
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [data setObject:sessionCopy forKeyedSubscript:@"durationApply_SetPlaybackSession"];
}

- (NSNumber)postDuration
{
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [data objectForKeyedSubscript:@"postDuration"];

  return v3;
}

- (void)set_postDuration:(id)duration
{
  durationCopy = duration;
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [data setObject:durationCopy forKeyedSubscript:@"postDuration"];
}

- (NSNumber)userPerceivedHandoffTime
{
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [data objectForKeyedSubscript:@"userPerceivedHandoffTime"];

  return v3;
}

- (void)set_userPerceivedHandoffTime:(id)time
{
  timeCopy = time;
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [data setObject:timeCopy forKeyedSubscript:@"userPerceivedHandoffTime"];
}

- (NSNumber)userPerceivedAudioContinuity
{
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [data objectForKeyedSubscript:@"userPerceivedAudioContinuity"];

  return v3;
}

- (void)set_userPerceivedAudioContinuity:(id)continuity
{
  continuityCopy = continuity;
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [data setObject:continuityCopy forKeyedSubscript:@"userPerceivedAudioContinuity"];
}

- (NSString)errorLevel_0
{
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [data objectForKeyedSubscript:@"errorLevel_0"];

  return v3;
}

- (void)set_errorLevel_0:(id)level_0
{
  level_0Copy = level_0;
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [data setObject:level_0Copy forKeyedSubscript:@"errorLevel_0"];
}

- (NSString)errorLevel_1
{
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [data objectForKeyedSubscript:@"errorLevel_1"];

  return v3;
}

- (void)set_errorLevel_1:(id)level_1
{
  level_1Copy = level_1;
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [data setObject:level_1Copy forKeyedSubscript:@"errorLevel_1"];
}

- (NSString)errorLevelCore_1
{
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [data objectForKeyedSubscript:@"errorLevelCore_1"];

  return v3;
}

- (void)set_errorLevelCore_1:(id)core_1
{
  core_1Copy = core_1;
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [data setObject:core_1Copy forKeyedSubscript:@"errorLevelCore_1"];
}

- (NSString)errorLevelCore_0
{
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [data objectForKeyedSubscript:@"errorLevelCore_0"];

  return v3;
}

- (void)set_errorLevelCore_0:(id)core_0
{
  core_0Copy = core_0;
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [data setObject:core_0Copy forKeyedSubscript:@"errorLevelCore_0"];
}

- (NSString)errorOnion
{
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v3 = [data objectForKeyedSubscript:@"errorOnion"];

  return v3;
}

- (void)set_errorOnion:(id)onion
{
  onionCopy = onion;
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  [data setObject:onionCopy forKeyedSubscript:@"errorOnion"];
}

- (void)setHandoffInitiatorFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"proximity"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"routePicker"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"shortcuts"])
  {
    v4 = 3;
  }

  else
  {
    if (![stringCopy isEqualToString:@"papika"])
    {
      goto LABEL_10;
    }

    v4 = 4;
  }

  [(MRPlaybackSessionMigrateAnalytics *)self set_handoffInitiator:v4];
LABEL_10:
}

- (void)setHandoffAppBundleFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"com.apple.Music"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"com.apple.TVMusic"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"com.apple.NanoMusic"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"com.apple.SonicMusic"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"com.apple.SonicPodcasts"])
  {
    v4 = 101;
  }

  else if ([stringCopy isEqualToString:@"com.apple.Podcasts"])
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
  data = [(MRPlaybackSessionMigrateAnalytics *)self data];
  v4 = [data mutableCopy];

  playPerfFields = [(MRPlaybackSessionMigrateAnalytics *)self playPerfFields];
  [v4 addEntriesFromDictionary:playPerfFields];

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

- (void)setHandoffSourceFromMRDeviceClass:(int64_t)class
{
  v4 = [(MRPlaybackSessionMigrateAnalytics *)self deviceTypeFromMRDeviceClass:class];

  [(MRPlaybackSessionMigrateAnalytics *)self set_handoffSourceDeviceType:v4];
}

- (void)setHandoffDestinationFromMRDeviceClass:(int64_t)class
{
  v4 = [(MRPlaybackSessionMigrateAnalytics *)self deviceTypeFromMRDeviceClass:class];

  [(MRPlaybackSessionMigrateAnalytics *)self set_handoffDestinationDeviceType:v4];
}

@end