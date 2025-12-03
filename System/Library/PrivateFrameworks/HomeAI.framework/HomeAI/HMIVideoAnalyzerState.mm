@interface HMIVideoAnalyzerState
- (HMIVideoAnalyzerState)initWithConfiguration:(id)configuration dynamicConfiguration:(id)dynamicConfiguration identifier:(id)identifier monitored:(BOOL)monitored analysisFPS:(double)s timeSinceAnalyzerStarted:(double)started timeSinceLastFragmentWasReceived:(double)received bufferFillRatio:(double)self0 bufferSize:(unint64_t)self1 delay:(double)self2 currentPTS:(id *)self3 numDecodedSamples:(unint64_t)self4 numDidAnalyzeFrames:(unint64_t)self5 numDidAnalyzeFragments:(unint64_t)self6 numDidAnalyzePackages:(unint64_t)self7 numDidCreateTimelapseFragments:(unint64_t)self8 averageAnalysisTime:(double)self9 encode:(BOOL)encode encoder:(BOOL)encoder decodeMode:(int64_t)mode;
- (NSArray)tableValues;
- (NSDictionary)JSONObject;
- (void)check;
@end

@implementation HMIVideoAnalyzerState

- (HMIVideoAnalyzerState)initWithConfiguration:(id)configuration dynamicConfiguration:(id)dynamicConfiguration identifier:(id)identifier monitored:(BOOL)monitored analysisFPS:(double)s timeSinceAnalyzerStarted:(double)started timeSinceLastFragmentWasReceived:(double)received bufferFillRatio:(double)self0 bufferSize:(unint64_t)self1 delay:(double)self2 currentPTS:(id *)self3 numDecodedSamples:(unint64_t)self4 numDidAnalyzeFrames:(unint64_t)self5 numDidAnalyzeFragments:(unint64_t)self6 numDidAnalyzePackages:(unint64_t)self7 numDidCreateTimelapseFragments:(unint64_t)self8 averageAnalysisTime:(double)self9 encode:(BOOL)encode encoder:(BOOL)encoder decodeMode:(int64_t)mode
{
  configurationCopy = configuration;
  dynamicConfigurationCopy = dynamicConfiguration;
  identifierCopy = identifier;
  v47.receiver = self;
  v47.super_class = HMIVideoAnalyzerState;
  v38 = [(HMIVideoAnalyzerState *)&v47 init];
  v39 = v38;
  if (v38)
  {
    objc_storeStrong(&v38->_configuration, configuration);
    objc_storeStrong(&v39->_dynamicConfiguration, dynamicConfiguration);
    objc_storeStrong(&v39->_identifier, identifier);
    v39->_monitored = monitored;
    v39->_analysisFPS = s;
    v39->_timeSinceAnalyzerStarted = started;
    v39->_timeSinceLastFragmentWasReceived = received;
    v39->_bufferFillRatio = ratio;
    v39->_bufferSize = size;
    v39->_delay = delay;
    var3 = tS->var3;
    *&v39->_currentPTS.value = *&tS->var0;
    v39->_currentPTS.epoch = var3;
    v39->_numDecodedSamples = samples;
    v39->_numDidAnalyzeFrames = frames;
    v39->_numDidAnalyzeFragments = fragments;
    v39->_numDidAnalyzePackages = packages;
    v39->_numDidCreateTimelapseFragments = timelapseFragments;
    v39->_averageAnalysisTime = time;
    v41 = +[HMIVideoAnalyzerScheduler sharedInstance];
    analyzers = [v41 analyzers];
    v39->_activeAnalyzerCount = [analyzers count];

    v43 = +[HMIVideoAnalyzerScheduler sharedInstance];
    v39->_systemResourceUsageLevel = [v43 usageLevel];

    v44 = +[HMIThermalMonitor sharedInstance];
    v39->_thermalLevel = [v44 thermalLevel];

    v45 = +[HMIVideoAnalyzerScheduler sharedInstance];
    v39->_thermalAndSystemResourceUsageLevelIgnored = [v45 ignoreThermalAndSystemResourceUsageLevel];

    v39->_encode = encode;
    v39->_encoder = encoder;
    v39->_decodeMode = mode;
  }

  return v39;
}

- (NSArray)tableValues
{
  array = [MEMORY[0x277CBEB18] array];
  identifier = [(HMIVideoAnalyzerState *)self identifier];
  v5 = HMIUUIDShortDescription(identifier);
  [array addObject:v5];

  v6 = MEMORY[0x277CCACA8];
  configuration = [(HMIVideoAnalyzerState *)self configuration];
  camera = [configuration camera];
  name = [camera name];
  configuration2 = [(HMIVideoAnalyzerState *)self configuration];
  camera2 = [configuration2 camera];
  model = [camera2 model];
  v13 = [v6 stringWithFormat:@"%@/%@", name, model];
  [array addObject:v13];

  v14 = MEMORY[0x277CCACA8];
  monitored = [(HMIVideoAnalyzerState *)self monitored];
  v16 = @"N";
  if (monitored)
  {
    v16 = @"Y";
  }

  v17 = [v14 stringWithFormat:@"%@", v16];
  [array addObject:v17];

  decodeMode = [(HMIVideoAnalyzerState *)self decodeMode];
  if (decodeMode <= 2)
  {
    [array addObject:off_278755C88[decodeMode]];
  }

  v19 = MEMORY[0x277CCACA8];
  [(HMIVideoAnalyzerState *)self analysisFPS];
  v21 = [v19 stringWithFormat:@"%.2f", v20];
  [array addObject:v21];

  v22 = MEMORY[0x277CCACA8];
  [(HMIVideoAnalyzerState *)self timeSinceAnalyzerStarted];
  v24 = [v22 stringWithFormat:@"%ld", v23];
  [array addObject:v24];

  v25 = MEMORY[0x277CCACA8];
  [(HMIVideoAnalyzerState *)self timeSinceLastFragmentWasReceived];
  v27 = [v25 stringWithFormat:@"%ld", v26];
  [array addObject:v27];

  string = [MEMORY[0x277CCAB68] string];
  [(HMIVideoAnalyzerState *)self bufferFillRatio];
  v30 = (v29 * 10.0);
  v31 = [&stru_284057FB8 stringByPaddingToLength:v30 withString:@"=" startingAtIndex:0];
  [string appendFormat:@"[%@", v31];

  v32 = [&stru_284057FB8 stringByPaddingToLength:10 - v30 withString:@" " startingAtIndex:0];
  [string appendFormat:@"%@", v32];

  [string appendFormat:@"] %5ld KB", -[HMIVideoAnalyzerState bufferSize](self, "bufferSize") >> 10];
  v76 = string;
  [array addObject:string];
  v33 = MEMORY[0x277CCACA8];
  [(HMIVideoAnalyzerState *)self delay];
  v35 = [v33 stringWithFormat:@"%.1f", v34];
  [array addObject:v35];

  v36 = MEMORY[0x277CCACA8];
  numDecodedSamples = [(HMIVideoAnalyzerState *)self numDecodedSamples];
  [(HMIVideoAnalyzerState *)self currentPTS];
  v38 = [v36 stringWithFormat:@"%4ld:%.1f", numDecodedSamples, CMTimeGetSeconds(&time)];
  [array addObject:v38];

  v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld, %ld", -[HMIVideoAnalyzerState numDidAnalyzeFrames](self, "numDidAnalyzeFrames"), -[HMIVideoAnalyzerState numDidAnalyzeFragments](self, "numDidAnalyzeFragments")];
  [array addObject:v39];

  v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", self->_numDidAnalyzePackages];
  [array addObject:v40];

  v41 = MEMORY[0x277CCACA8];
  [(HMIVideoAnalyzerState *)self averageAnalysisTime];
  v43 = [v41 stringWithFormat:@"%.2f", v42];
  [array addObject:v43];

  v74 = MEMORY[0x277CCACA8];
  configuration3 = [(HMIVideoAnalyzerState *)self configuration];
  transcode = [configuration3 transcode];
  encode = [(HMIVideoAnalyzerState *)self encode];
  encoder = [(HMIVideoAnalyzerState *)self encoder];
  configuration4 = [(HMIVideoAnalyzerState *)self configuration];
  v48 = HMIFourCCString([configuration4 transcodeCodecType]);
  configuration5 = [(HMIVideoAnalyzerState *)self configuration];
  v50 = configuration5;
  v51 = @"T";
  if (configuration5)
  {
    v52 = @"t";
    [configuration5 timelapseInterval];
    if (v77)
    {
      v52 = @"T";
    }
  }

  else
  {
    v52 = @"t";
  }

  if (encoder)
  {
    v53 = @"C";
  }

  else
  {
    v53 = @"c";
  }

  if (encode)
  {
    v54 = @"E";
  }

  else
  {
    v54 = @"e";
  }

  if (!transcode)
  {
    v51 = @"t";
  }

  v55 = [v74 stringWithFormat:@"%@%@%@ %@, %@:%ld", v51, v54, v53, v48, v52, -[HMIVideoAnalyzerState numDidCreateTimelapseFragments](self, "numDidCreateTimelapseFragments")];
  [array addObject:v55];

  dynamicConfiguration = [(HMIVideoAnalyzerState *)self dynamicConfiguration];
  v57 = MEMORY[0x277CCACA8];
  recognizeFaces = [dynamicConfiguration recognizeFaces];
  v59 = @"N";
  if (recognizeFaces)
  {
    v59 = @"Y";
  }

  v60 = [v57 stringWithFormat:@"%@", v59];
  [array addObject:v60];

  v61 = MEMORY[0x277CCACA8];
  activityZones = [dynamicConfiguration activityZones];
  v63 = [v61 stringWithFormat:@"%lu", objc_msgSend(activityZones, "count")];
  [array addObject:v63];

  string2 = [MEMORY[0x277CCAB68] string];
  eventTriggers = [dynamicConfiguration eventTriggers];
  if (eventTriggers)
  {
    v66 = @"M";
  }

  else
  {
    v66 = @"m";
  }

  [string2 appendString:v66];
  if ((eventTriggers & 2) != 0)
  {
    v67 = @"P";
  }

  else
  {
    v67 = @"p";
  }

  [string2 appendString:v67];
  if ((eventTriggers & 4) != 0)
  {
    v68 = @"A";
  }

  else
  {
    v68 = @"a";
  }

  [string2 appendString:v68];
  if ((eventTriggers & 8) != 0)
  {
    v69 = @"V";
  }

  else
  {
    v69 = @"v";
  }

  [string2 appendString:v69];
  if ((eventTriggers & 0x10) != 0)
  {
    v70 = @"K";
  }

  else
  {
    v70 = @"k";
  }

  [string2 appendString:v70];
  v71 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", string2];
  [array addObject:v71];

  v72 = [array copy];

  return v72;
}

- (NSDictionary)JSONObject
{
  v63[21] = *MEMORY[0x277D85DE8];
  v62[0] = @"identifier";
  identifier = [(HMIVideoAnalyzerState *)self identifier];
  uUIDString = [identifier UUIDString];
  v63[0] = uUIDString;
  v62[1] = @"monitored";
  v57 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMIVideoAnalyzerState monitored](self, "monitored")}];
  v63[1] = v57;
  v62[2] = @"analysisFPS";
  v3 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerState *)self analysisFPS];
  v56 = [v3 numberWithDouble:?];
  v55 = HMIJSONDecimalNumberForNumber(v56, 3);
  v63[2] = v55;
  v62[3] = @"timeSinceAnalyzerStarted";
  v4 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerState *)self timeSinceAnalyzerStarted];
  v54 = [v4 numberWithDouble:?];
  v53 = HMIJSONDecimalNumberForNumber(v54, 3);
  v63[3] = v53;
  v62[4] = @"timeSinceLastFragmentWasReceived";
  v5 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerState *)self timeSinceLastFragmentWasReceived];
  v52 = [v5 numberWithDouble:?];
  v51 = HMIJSONDecimalNumberForNumber(v52, 3);
  v63[4] = v51;
  v62[5] = @"bufferFillRatio";
  v6 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerState *)self bufferFillRatio];
  v50 = [v6 numberWithDouble:?];
  v49 = HMIJSONDecimalNumberForNumber(v50, 3);
  v63[5] = v49;
  v62[6] = @"bufferSize";
  v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMIVideoAnalyzerState bufferSize](self, "bufferSize")}];
  v63[6] = v48;
  v62[7] = @"delay";
  v7 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerState *)self delay];
  v47 = [v7 numberWithDouble:?];
  v46 = HMIJSONDecimalNumberForNumber(v47, 3);
  v63[7] = v46;
  v62[8] = @"numDecodedSamples";
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMIVideoAnalyzerState numDecodedSamples](self, "numDecodedSamples")}];
  v63[8] = v45;
  v62[9] = @"numDidAnalyzeFrames";
  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMIVideoAnalyzerState numDidAnalyzeFrames](self, "numDidAnalyzeFrames")}];
  v63[9] = v44;
  v62[10] = @"numDidAnalyzePackages";
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMIVideoAnalyzerState numDidAnalyzePackages](self, "numDidAnalyzePackages")}];
  v63[10] = v43;
  v62[11] = @"numDidCreateTimelapseFragments";
  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMIVideoAnalyzerState numDidCreateTimelapseFragments](self, "numDidCreateTimelapseFragments")}];
  v63[11] = v42;
  v62[12] = @"averageAnalysisTime";
  v8 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerState *)self averageAnalysisTime];
  v41 = [v8 numberWithDouble:?];
  v40 = HMIJSONDecimalNumberForNumber(v41, 3);
  v63[12] = v40;
  v62[13] = @"decodeMode";
  v39 = HMIVideoAnalyzerDecodeModeAsString([(HMIVideoAnalyzerState *)self decodeMode]);
  v63[13] = v39;
  v62[14] = @"transcode";
  v9 = MEMORY[0x277CCABB0];
  configuration = [(HMIVideoAnalyzerState *)self configuration];
  v37 = [v9 numberWithBool:{objc_msgSend(configuration, "transcode")}];
  v63[14] = v37;
  v62[15] = @"transcodeCodecType";
  configuration2 = [(HMIVideoAnalyzerState *)self configuration];
  v35 = HMIFourCCString([configuration2 transcodeCodecType]);
  v63[15] = v35;
  v62[16] = @"encode";
  v34 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMIVideoAnalyzerState encode](self, "encode")}];
  v63[16] = v34;
  v62[17] = @"encoder";
  v33 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMIVideoAnalyzerState encoder](self, "encoder")}];
  v63[17] = v33;
  v62[18] = @"recognizeFaces";
  v10 = MEMORY[0x277CCABB0];
  dynamicConfiguration = [(HMIVideoAnalyzerState *)self dynamicConfiguration];
  v12 = [v10 numberWithBool:{objc_msgSend(dynamicConfiguration, "recognizeFaces")}];
  v63[18] = v12;
  v62[19] = @"activityZones";
  v13 = MEMORY[0x277CCABB0];
  dynamicConfiguration2 = [(HMIVideoAnalyzerState *)self dynamicConfiguration];
  activityZones = [dynamicConfiguration2 activityZones];
  v16 = [v13 numberWithUnsignedInteger:{objc_msgSend(activityZones, "count")}];
  v63[19] = v16;
  v62[20] = @"eventTriggers";
  v17 = MEMORY[0x277CCABB0];
  dynamicConfiguration3 = [(HMIVideoAnalyzerState *)self dynamicConfiguration];
  v19 = [v17 numberWithInteger:{objc_msgSend(dynamicConfiguration3, "eventTriggers")}];
  v63[20] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:21];
  v21 = [v20 mutableCopy];

  configuration3 = [(HMIVideoAnalyzerState *)self configuration];
  camera = [configuration3 camera];

  if (camera)
  {
    v60[0] = @"name";
    configuration4 = [(HMIVideoAnalyzerState *)self configuration];
    camera2 = [configuration4 camera];
    name = [camera2 name];
    v60[1] = @"manufacturer";
    v61[0] = name;
    configuration5 = [(HMIVideoAnalyzerState *)self configuration];
    camera3 = [configuration5 camera];
    manufacturer = [camera3 manufacturer];
    v61[1] = manufacturer;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
    [v21 setObject:v30 forKeyedSubscript:@"camera"];
  }

  v31 = [v21 copy];

  return v31;
}

- (void)check
{
  array = [MEMORY[0x277CBEB18] array];
  [(HMIVideoAnalyzerState *)self timeSinceLastFragmentWasReceived];
  if (v3 > 60.0)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Session has not received any new data for over 60 seconds."];
    [array addObject:v4];
  }

  if ([array count])
  {
    v5 = [array componentsJoinedByString:@"\n"];
    HMISimulateCrash(@"Session Check", v5, 1);
  }
}

@end