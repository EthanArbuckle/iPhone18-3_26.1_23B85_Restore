@interface HMIVideoAnalyzerState
- (HMIVideoAnalyzerState)initWithConfiguration:(id)a3 dynamicConfiguration:(id)a4 identifier:(id)a5 monitored:(BOOL)a6 analysisFPS:(double)a7 timeSinceAnalyzerStarted:(double)a8 timeSinceLastFragmentWasReceived:(double)a9 bufferFillRatio:(double)a10 bufferSize:(unint64_t)a11 delay:(double)a12 currentPTS:(id *)a13 numDecodedSamples:(unint64_t)a14 numDidAnalyzeFrames:(unint64_t)a15 numDidAnalyzeFragments:(unint64_t)a16 numDidAnalyzePackages:(unint64_t)a17 numDidCreateTimelapseFragments:(unint64_t)a18 averageAnalysisTime:(double)a19 encode:(BOOL)a20 encoder:(BOOL)a21 decodeMode:(int64_t)a22;
- (NSArray)tableValues;
- (NSDictionary)JSONObject;
- (void)check;
@end

@implementation HMIVideoAnalyzerState

- (HMIVideoAnalyzerState)initWithConfiguration:(id)a3 dynamicConfiguration:(id)a4 identifier:(id)a5 monitored:(BOOL)a6 analysisFPS:(double)a7 timeSinceAnalyzerStarted:(double)a8 timeSinceLastFragmentWasReceived:(double)a9 bufferFillRatio:(double)a10 bufferSize:(unint64_t)a11 delay:(double)a12 currentPTS:(id *)a13 numDecodedSamples:(unint64_t)a14 numDidAnalyzeFrames:(unint64_t)a15 numDidAnalyzeFragments:(unint64_t)a16 numDidAnalyzePackages:(unint64_t)a17 numDidCreateTimelapseFragments:(unint64_t)a18 averageAnalysisTime:(double)a19 encode:(BOOL)a20 encoder:(BOOL)a21 decodeMode:(int64_t)a22
{
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v47.receiver = self;
  v47.super_class = HMIVideoAnalyzerState;
  v38 = [(HMIVideoAnalyzerState *)&v47 init];
  v39 = v38;
  if (v38)
  {
    objc_storeStrong(&v38->_configuration, a3);
    objc_storeStrong(&v39->_dynamicConfiguration, a4);
    objc_storeStrong(&v39->_identifier, a5);
    v39->_monitored = a6;
    v39->_analysisFPS = a7;
    v39->_timeSinceAnalyzerStarted = a8;
    v39->_timeSinceLastFragmentWasReceived = a9;
    v39->_bufferFillRatio = a10;
    v39->_bufferSize = a11;
    v39->_delay = a12;
    var3 = a13->var3;
    *&v39->_currentPTS.value = *&a13->var0;
    v39->_currentPTS.epoch = var3;
    v39->_numDecodedSamples = a14;
    v39->_numDidAnalyzeFrames = a15;
    v39->_numDidAnalyzeFragments = a16;
    v39->_numDidAnalyzePackages = a17;
    v39->_numDidCreateTimelapseFragments = a18;
    v39->_averageAnalysisTime = a19;
    v41 = +[HMIVideoAnalyzerScheduler sharedInstance];
    v42 = [v41 analyzers];
    v39->_activeAnalyzerCount = [v42 count];

    v43 = +[HMIVideoAnalyzerScheduler sharedInstance];
    v39->_systemResourceUsageLevel = [v43 usageLevel];

    v44 = +[HMIThermalMonitor sharedInstance];
    v39->_thermalLevel = [v44 thermalLevel];

    v45 = +[HMIVideoAnalyzerScheduler sharedInstance];
    v39->_thermalAndSystemResourceUsageLevelIgnored = [v45 ignoreThermalAndSystemResourceUsageLevel];

    v39->_encode = a20;
    v39->_encoder = a21;
    v39->_decodeMode = a22;
  }

  return v39;
}

- (NSArray)tableValues
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(HMIVideoAnalyzerState *)self identifier];
  v5 = HMIUUIDShortDescription(v4);
  [v3 addObject:v5];

  v6 = MEMORY[0x277CCACA8];
  v7 = [(HMIVideoAnalyzerState *)self configuration];
  v8 = [v7 camera];
  v9 = [v8 name];
  v10 = [(HMIVideoAnalyzerState *)self configuration];
  v11 = [v10 camera];
  v12 = [v11 model];
  v13 = [v6 stringWithFormat:@"%@/%@", v9, v12];
  [v3 addObject:v13];

  v14 = MEMORY[0x277CCACA8];
  v15 = [(HMIVideoAnalyzerState *)self monitored];
  v16 = @"N";
  if (v15)
  {
    v16 = @"Y";
  }

  v17 = [v14 stringWithFormat:@"%@", v16];
  [v3 addObject:v17];

  v18 = [(HMIVideoAnalyzerState *)self decodeMode];
  if (v18 <= 2)
  {
    [v3 addObject:off_278755C88[v18]];
  }

  v19 = MEMORY[0x277CCACA8];
  [(HMIVideoAnalyzerState *)self analysisFPS];
  v21 = [v19 stringWithFormat:@"%.2f", v20];
  [v3 addObject:v21];

  v22 = MEMORY[0x277CCACA8];
  [(HMIVideoAnalyzerState *)self timeSinceAnalyzerStarted];
  v24 = [v22 stringWithFormat:@"%ld", v23];
  [v3 addObject:v24];

  v25 = MEMORY[0x277CCACA8];
  [(HMIVideoAnalyzerState *)self timeSinceLastFragmentWasReceived];
  v27 = [v25 stringWithFormat:@"%ld", v26];
  [v3 addObject:v27];

  v28 = [MEMORY[0x277CCAB68] string];
  [(HMIVideoAnalyzerState *)self bufferFillRatio];
  v30 = (v29 * 10.0);
  v31 = [&stru_284057FB8 stringByPaddingToLength:v30 withString:@"=" startingAtIndex:0];
  [v28 appendFormat:@"[%@", v31];

  v32 = [&stru_284057FB8 stringByPaddingToLength:10 - v30 withString:@" " startingAtIndex:0];
  [v28 appendFormat:@"%@", v32];

  [v28 appendFormat:@"] %5ld KB", -[HMIVideoAnalyzerState bufferSize](self, "bufferSize") >> 10];
  v76 = v28;
  [v3 addObject:v28];
  v33 = MEMORY[0x277CCACA8];
  [(HMIVideoAnalyzerState *)self delay];
  v35 = [v33 stringWithFormat:@"%.1f", v34];
  [v3 addObject:v35];

  v36 = MEMORY[0x277CCACA8];
  v37 = [(HMIVideoAnalyzerState *)self numDecodedSamples];
  [(HMIVideoAnalyzerState *)self currentPTS];
  v38 = [v36 stringWithFormat:@"%4ld:%.1f", v37, CMTimeGetSeconds(&time)];
  [v3 addObject:v38];

  v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld, %ld", -[HMIVideoAnalyzerState numDidAnalyzeFrames](self, "numDidAnalyzeFrames"), -[HMIVideoAnalyzerState numDidAnalyzeFragments](self, "numDidAnalyzeFragments")];
  [v3 addObject:v39];

  v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", self->_numDidAnalyzePackages];
  [v3 addObject:v40];

  v41 = MEMORY[0x277CCACA8];
  [(HMIVideoAnalyzerState *)self averageAnalysisTime];
  v43 = [v41 stringWithFormat:@"%.2f", v42];
  [v3 addObject:v43];

  v74 = MEMORY[0x277CCACA8];
  v75 = [(HMIVideoAnalyzerState *)self configuration];
  v44 = [v75 transcode];
  v45 = [(HMIVideoAnalyzerState *)self encode];
  v46 = [(HMIVideoAnalyzerState *)self encoder];
  v47 = [(HMIVideoAnalyzerState *)self configuration];
  v48 = HMIFourCCString([v47 transcodeCodecType]);
  v49 = [(HMIVideoAnalyzerState *)self configuration];
  v50 = v49;
  v51 = @"T";
  if (v49)
  {
    v52 = @"t";
    [v49 timelapseInterval];
    if (v77)
    {
      v52 = @"T";
    }
  }

  else
  {
    v52 = @"t";
  }

  if (v46)
  {
    v53 = @"C";
  }

  else
  {
    v53 = @"c";
  }

  if (v45)
  {
    v54 = @"E";
  }

  else
  {
    v54 = @"e";
  }

  if (!v44)
  {
    v51 = @"t";
  }

  v55 = [v74 stringWithFormat:@"%@%@%@ %@, %@:%ld", v51, v54, v53, v48, v52, -[HMIVideoAnalyzerState numDidCreateTimelapseFragments](self, "numDidCreateTimelapseFragments")];
  [v3 addObject:v55];

  v56 = [(HMIVideoAnalyzerState *)self dynamicConfiguration];
  v57 = MEMORY[0x277CCACA8];
  v58 = [v56 recognizeFaces];
  v59 = @"N";
  if (v58)
  {
    v59 = @"Y";
  }

  v60 = [v57 stringWithFormat:@"%@", v59];
  [v3 addObject:v60];

  v61 = MEMORY[0x277CCACA8];
  v62 = [v56 activityZones];
  v63 = [v61 stringWithFormat:@"%lu", objc_msgSend(v62, "count")];
  [v3 addObject:v63];

  v64 = [MEMORY[0x277CCAB68] string];
  v65 = [v56 eventTriggers];
  if (v65)
  {
    v66 = @"M";
  }

  else
  {
    v66 = @"m";
  }

  [v64 appendString:v66];
  if ((v65 & 2) != 0)
  {
    v67 = @"P";
  }

  else
  {
    v67 = @"p";
  }

  [v64 appendString:v67];
  if ((v65 & 4) != 0)
  {
    v68 = @"A";
  }

  else
  {
    v68 = @"a";
  }

  [v64 appendString:v68];
  if ((v65 & 8) != 0)
  {
    v69 = @"V";
  }

  else
  {
    v69 = @"v";
  }

  [v64 appendString:v69];
  if ((v65 & 0x10) != 0)
  {
    v70 = @"K";
  }

  else
  {
    v70 = @"k";
  }

  [v64 appendString:v70];
  v71 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v64];
  [v3 addObject:v71];

  v72 = [v3 copy];

  return v72;
}

- (NSDictionary)JSONObject
{
  v63[21] = *MEMORY[0x277D85DE8];
  v62[0] = @"identifier";
  v59 = [(HMIVideoAnalyzerState *)self identifier];
  v58 = [v59 UUIDString];
  v63[0] = v58;
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
  v38 = [(HMIVideoAnalyzerState *)self configuration];
  v37 = [v9 numberWithBool:{objc_msgSend(v38, "transcode")}];
  v63[14] = v37;
  v62[15] = @"transcodeCodecType";
  v36 = [(HMIVideoAnalyzerState *)self configuration];
  v35 = HMIFourCCString([v36 transcodeCodecType]);
  v63[15] = v35;
  v62[16] = @"encode";
  v34 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMIVideoAnalyzerState encode](self, "encode")}];
  v63[16] = v34;
  v62[17] = @"encoder";
  v33 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMIVideoAnalyzerState encoder](self, "encoder")}];
  v63[17] = v33;
  v62[18] = @"recognizeFaces";
  v10 = MEMORY[0x277CCABB0];
  v11 = [(HMIVideoAnalyzerState *)self dynamicConfiguration];
  v12 = [v10 numberWithBool:{objc_msgSend(v11, "recognizeFaces")}];
  v63[18] = v12;
  v62[19] = @"activityZones";
  v13 = MEMORY[0x277CCABB0];
  v14 = [(HMIVideoAnalyzerState *)self dynamicConfiguration];
  v15 = [v14 activityZones];
  v16 = [v13 numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
  v63[19] = v16;
  v62[20] = @"eventTriggers";
  v17 = MEMORY[0x277CCABB0];
  v18 = [(HMIVideoAnalyzerState *)self dynamicConfiguration];
  v19 = [v17 numberWithInteger:{objc_msgSend(v18, "eventTriggers")}];
  v63[20] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:21];
  v21 = [v20 mutableCopy];

  v22 = [(HMIVideoAnalyzerState *)self configuration];
  v23 = [v22 camera];

  if (v23)
  {
    v60[0] = @"name";
    v24 = [(HMIVideoAnalyzerState *)self configuration];
    v25 = [v24 camera];
    v26 = [v25 name];
    v60[1] = @"manufacturer";
    v61[0] = v26;
    v27 = [(HMIVideoAnalyzerState *)self configuration];
    v28 = [v27 camera];
    v29 = [v28 manufacturer];
    v61[1] = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
    [v21 setObject:v30 forKeyedSubscript:@"camera"];
  }

  v31 = [v21 copy];

  return v31;
}

- (void)check
{
  v6 = [MEMORY[0x277CBEB18] array];
  [(HMIVideoAnalyzerState *)self timeSinceLastFragmentWasReceived];
  if (v3 > 60.0)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Session has not received any new data for over 60 seconds."];
    [v6 addObject:v4];
  }

  if ([v6 count])
  {
    v5 = [v6 componentsJoinedByString:@"\n"];
    HMISimulateCrash(@"Session Check", v5, 1);
  }
}

@end