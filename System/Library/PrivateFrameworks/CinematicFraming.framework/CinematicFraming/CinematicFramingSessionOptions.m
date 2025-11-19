@interface CinematicFramingSessionOptions
- (CinematicFramingSessionOptions)initWithPlist:(id)a3;
- (CinematicFramingSessionOptions)initWithPlistPath:(id)a3;
- (id)asDictionary;
- (id)optionsForFramingStyle:(int)a3;
- (void)loadFramingStyleSpecificOptions:(id)a3;
@end

@implementation CinematicFramingSessionOptions

- (CinematicFramingSessionOptions)initWithPlistPath:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CinematicFramingSessionOptions;
  v5 = [(CinematicFramingSessionOptions *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v4];
    v5 = [(CinematicFramingSessionOptions *)v5 initWithPlist:v6];
  }

  return v5;
}

- (CinematicFramingSessionOptions)initWithPlist:(id)a3
{
  v4 = a3;
  v70.receiver = self;
  v70.super_class = CinematicFramingSessionOptions;
  v5 = [(CinematicFramingSessionOptions *)&v70 init];
  if (v5)
  {
    v6 = [CinematicFramingSessionFramingParameters alloc];
    v7 = [v4 objectForKeyedSubscript:@"singlePersonFramingParameters"];
    v8 = [(CinematicFramingSessionFramingParameters *)v6 initWithPlist:v7];
    [(CinematicFramingSessionOptions *)v5 setSinglePersonFramingParameters:v8];

    v9 = [CinematicFramingSessionFramingParameters alloc];
    v10 = [v4 objectForKeyedSubscript:@"multiPersonFramingParameters"];
    v11 = [(CinematicFramingSessionFramingParameters *)v9 initWithPlist:v10];
    [(CinematicFramingSessionOptions *)v5 setMultiPersonFramingParameters:v11];

    v12 = [v4 objectForKeyedSubscript:@"horizontalSpeedMultiplier"];
    [v12 floatValue];
    [(CinematicFramingSessionOptions *)v5 setHorizontalSpeedMultiplier:?];

    v13 = [v4 objectForKeyedSubscript:@"horizontalAccelerationMultiplier"];
    [v13 floatValue];
    [(CinematicFramingSessionOptions *)v5 setHorizontalAccelerationMultiplier:?];

    v14 = [v4 objectForKeyedSubscript:@"verticalSpeedMultiplier"];
    [v14 floatValue];
    [(CinematicFramingSessionOptions *)v5 setVerticalSpeedMultiplier:?];

    v15 = [v4 objectForKeyedSubscript:@"verticalAccelerationMultiplier"];
    [v15 floatValue];
    [(CinematicFramingSessionOptions *)v5 setVerticalAccelerationMultiplier:?];

    v16 = [v4 objectForKeyedSubscript:@"zoomInSpeedMultiplier"];
    [v16 floatValue];
    [(CinematicFramingSessionOptions *)v5 setZoomInSpeedMultiplier:?];

    v17 = [v4 objectForKeyedSubscript:@"zoomOutSpeedMultiplier"];
    [v17 floatValue];
    [(CinematicFramingSessionOptions *)v5 setZoomOutSpeedMultiplier:?];

    v18 = [v4 objectForKeyedSubscript:@"zoomAccelerationMultiplier"];
    [v18 floatValue];
    [(CinematicFramingSessionOptions *)v5 setZoomAccelerationMultiplier:?];

    v19 = [v4 objectForKeyedSubscript:@"shouldDisableTransitions"];
    -[CinematicFramingSessionOptions setShouldDisableTransitions:](v5, "setShouldDisableTransitions:", [v19 BOOLValue]);

    v20 = [v4 objectForKeyedSubscript:@"zoomEaseInCurve"];
    v21 = [v20 objectForKeyedSubscript:@"A"];
    v22 = v21;
    if (!v21)
    {
      v21 = @"1.0";
    }

    [(__CFString *)v21 floatValue];
    [(CinematicFramingSessionOptions *)v5 setZoomEaseInCurveA:?];

    v23 = [v4 objectForKeyedSubscript:@"zoomEaseInCurve"];
    v24 = [v23 objectForKeyedSubscript:@"B"];
    v25 = v24;
    if (!v24)
    {
      v24 = @"0.2";
    }

    [(__CFString *)v24 floatValue];
    [(CinematicFramingSessionOptions *)v5 setZoomEaseInCurveB:?];

    v26 = [v4 objectForKeyedSubscript:@"xEaseInCurve"];
    v27 = [v26 objectForKeyedSubscript:@"A"];
    v28 = v27;
    if (!v27)
    {
      v27 = @"4.0";
    }

    [(__CFString *)v27 floatValue];
    [(CinematicFramingSessionOptions *)v5 setXEaseInCurveA:?];

    v29 = [v4 objectForKeyedSubscript:@"xEaseInCurve"];
    v30 = [v29 objectForKeyedSubscript:@"B"];
    v31 = v30;
    if (!v30)
    {
      v30 = @"0.2";
    }

    [(__CFString *)v30 floatValue];
    [(CinematicFramingSessionOptions *)v5 setXEaseInCurveB:?];

    v32 = [v4 objectForKeyedSubscript:@"yEaseInCurve"];
    v33 = [v32 objectForKeyedSubscript:@"A"];
    v34 = v33;
    if (!v33)
    {
      v33 = @"2.5";
    }

    [(__CFString *)v33 floatValue];
    [(CinematicFramingSessionOptions *)v5 setYEaseInCurveA:?];

    v35 = [v4 objectForKeyedSubscript:@"yEaseInCurve"];
    v36 = [v35 objectForKeyedSubscript:@"B"];
    v37 = v36;
    if (!v36)
    {
      v36 = @"0.2";
    }

    [(__CFString *)v36 floatValue];
    [(CinematicFramingSessionOptions *)v5 setYEaseInCurveB:?];

    v38 = [v4 objectForKeyedSubscript:@"viewportDefaultFOV"];
    v39 = v38;
    if (!v38)
    {
      v38 = @"0.68";
    }

    [(__CFString *)v38 floatValue];
    [(CinematicFramingSessionOptions *)v5 setViewportDefaultFOV:?];

    v40 = [v4 objectForKeyedSubscript:@"viewportMinimumFOV"];
    v41 = v40;
    if (!v40)
    {
      v40 = @"0.34";
    }

    [(__CFString *)v40 floatValue];
    [(CinematicFramingSessionOptions *)v5 setViewportMinimumFOV:?];

    v42 = [v4 objectForKeyedSubscript:@"deadbandRecenteringInitialDelaySec"];
    v43 = v42;
    if (!v42)
    {
      v42 = @"3.0";
    }

    [(__CFString *)v42 floatValue];
    [(CinematicFramingSessionOptions *)v5 setDeadbandRecenteringInitialDelaySec:?];

    v44 = [v4 objectForKeyedSubscript:@"deadbandRecenteringDurationSec"];
    v45 = v44;
    if (!v44)
    {
      v44 = @"1.5";
    }

    [(__CFString *)v44 floatValue];
    [(CinematicFramingSessionOptions *)v5 setDeadbandRecenteringDurationSec:?];

    v46 = [v4 objectForKeyedSubscript:@"deadbandRecenteringIdleDurationSec"];
    v47 = v46;
    if (!v46)
    {
      v46 = @"5.0";
    }

    [(__CFString *)v46 floatValue];
    [(CinematicFramingSessionOptions *)v5 setDeadbandRecenteringIdleDurationSec:?];

    v48 = [v4 objectForKeyedSubscript:@"noPeopleDelayBeforeReturningHomeSec"];
    v49 = v48;
    if (!v48)
    {
      v48 = @"5.0";
    }

    [(__CFString *)v48 floatValue];
    [(CinematicFramingSessionOptions *)v5 setNoPeopleDelayBeforeReturningHomeSec:?];

    v50 = [v4 objectForKeyedSubscript:@"noPeopleReturningHomeDurationSec"];
    v51 = v50;
    if (!v50)
    {
      v50 = @"5.0";
    }

    [(__CFString *)v50 floatValue];
    [(CinematicFramingSessionOptions *)v5 setNoPeopleReturningHomeDurationSec:?];

    v52 = [v4 objectForKeyedSubscript:@"tinyHeadMinValue"];
    v53 = v52;
    if (!v52)
    {
      v52 = @"0.0";
    }

    [(__CFString *)v52 floatValue];
    [(CinematicFramingSessionOptions *)v5 setTinyHeadMinValue:?];

    v54 = [v4 objectForKeyedSubscript:@"tinyHeadMaxValue"];
    v55 = v54;
    if (!v54)
    {
      v54 = @"0.0";
    }

    [(__CFString *)v54 floatValue];
    [(CinematicFramingSessionOptions *)v5 setTinyHeadMaxValue:?];

    v56 = [v4 objectForKeyedSubscript:@"subjectMovementTolerance"];
    v57 = v56;
    if (!v56)
    {
      v56 = @"0.2";
    }

    [(__CFString *)v56 floatValue];
    [(CinematicFramingSessionOptions *)v5 setSubjectMovementTolerance:?];

    v58 = [v4 objectForKeyedSubscript:@"recenterAfterDriftEnabled"];
    v59 = v58;
    if (!v58)
    {
      v58 = @"true";
    }

    [(CinematicFramingSessionOptions *)v5 setRecenterAfterDriftEnabled:[(__CFString *)v58 BOOLValue]];

    v60 = [v4 objectForKeyedSubscript:@"recenterAfterDriftDurationThreshold"];
    v61 = v60;
    if (!v60)
    {
      v60 = @"1.0";
    }

    *&v62 = [(__CFString *)v60 BOOLValue];
    [(CinematicFramingSessionOptions *)v5 setRecenterAfterDriftDurationThreshold:v62];

    v63 = [v4 objectForKeyedSubscript:@"recenterAfterDriftOffsetThreshold"];
    v64 = v63;
    if (!v63)
    {
      v63 = @"0.25";
    }

    *&v65 = [(__CFString *)v63 BOOLValue];
    [(CinematicFramingSessionOptions *)v5 setRecenterAfterDriftOffsetThreshold:v65];

    v66 = [v4 objectForKeyedSubscript:@"inferSubjectBodyFromFaceLocation"];
    v67 = v66;
    if (!v66)
    {
      v66 = @"true";
    }

    [(CinematicFramingSessionOptions *)v5 setInferSubjectBodyFromFaceLocation:[(__CFString *)v66 BOOLValue]];

    [(CinematicFramingSessionOptions *)v5 loadFramingStyleSpecificOptions:v4];
    v68 = v5;
  }

  return v5;
}

- (id)asDictionary
{
  v71[0] = @"singlePersonFramingParameters";
  v64 = [(CinematicFramingSessionOptions *)self singlePersonFramingParameters];
  v63 = [v64 asDictionary];
  v72[0] = v63;
  v71[1] = @"multiPersonFramingParameters";
  v62 = [(CinematicFramingSessionOptions *)self multiPersonFramingParameters];
  v61 = [v62 asDictionary];
  v72[1] = v61;
  v71[2] = @"horizontalSpeedMultiplier";
  v3 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionOptions *)self horizontalSpeedMultiplier];
  v60 = [v3 numberWithFloat:?];
  v72[2] = v60;
  v71[3] = @"horizontalAccelerationMultiplier";
  v4 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionOptions *)self horizontalAccelerationMultiplier];
  v59 = [v4 numberWithFloat:?];
  v72[3] = v59;
  v71[4] = @"verticalSpeedMultiplier";
  v5 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionOptions *)self verticalSpeedMultiplier];
  v58 = [v5 numberWithFloat:?];
  v72[4] = v58;
  v71[5] = @"verticalAccelerationMultiplier";
  v6 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionOptions *)self verticalAccelerationMultiplier];
  v57 = [v6 numberWithFloat:?];
  v72[5] = v57;
  v71[6] = @"zoomInSpeedMultiplier";
  v7 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionOptions *)self zoomInSpeedMultiplier];
  v56 = [v7 numberWithFloat:?];
  v72[6] = v56;
  v71[7] = @"zoomOutSpeedMultiplier";
  v8 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionOptions *)self zoomOutSpeedMultiplier];
  v55 = [v8 numberWithFloat:?];
  v72[7] = v55;
  v71[8] = @"zoomAccelerationMultiplier";
  v9 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionOptions *)self zoomAccelerationMultiplier];
  v54 = [v9 numberWithFloat:?];
  v72[8] = v54;
  v71[9] = @"shouldDisableTransitions";
  v53 = [MEMORY[0x277CCABB0] numberWithBool:{-[CinematicFramingSessionOptions shouldDisableTransitions](self, "shouldDisableTransitions")}];
  v72[9] = v53;
  v71[10] = @"zoomEaseInCurve";
  v69[0] = @"A";
  v10 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionOptions *)self zoomEaseInCurveA];
  v52 = [v10 numberWithFloat:?];
  v69[1] = @"B";
  v70[0] = v52;
  v11 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionOptions *)self zoomEaseInCurveB];
  v51 = [v11 numberWithFloat:?];
  v70[1] = v51;
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:2];
  v72[10] = v50;
  v71[11] = @"xEaseInCurve";
  v67[0] = @"A";
  v12 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionOptions *)self xEaseInCurveA];
  v49 = [v12 numberWithFloat:?];
  v67[1] = @"B";
  v68[0] = v49;
  v13 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionOptions *)self xEaseInCurveB];
  v48 = [v13 numberWithFloat:?];
  v68[1] = v48;
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:2];
  v72[11] = v47;
  v71[12] = @"yEaseInCurve";
  v65[0] = @"A";
  v14 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionOptions *)self yEaseInCurveA];
  v46 = [v14 numberWithFloat:?];
  v65[1] = @"B";
  v66[0] = v46;
  v15 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionOptions *)self yEaseInCurveB];
  v45 = [v15 numberWithFloat:?];
  v66[1] = v45;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:2];
  v72[12] = v44;
  v71[13] = @"viewportDefaultFOV";
  v16 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionOptions *)self viewportDefaultFOV];
  v43 = [v16 numberWithFloat:?];
  v72[13] = v43;
  v71[14] = @"viewportMinimumFOV";
  v17 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionOptions *)self viewportMinimumFOV];
  v42 = [v17 numberWithFloat:?];
  v72[14] = v42;
  v71[15] = @"deadbandRecenteringInitialDelaySec";
  v18 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionOptions *)self deadbandRecenteringInitialDelaySec];
  v41 = [v18 numberWithFloat:?];
  v72[15] = v41;
  v71[16] = @"deadbandRecenteringDurationSec";
  v19 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionOptions *)self deadbandRecenteringDurationSec];
  v40 = [v19 numberWithFloat:?];
  v72[16] = v40;
  v71[17] = @"deadbandRecenteringIdleDurationSec";
  v20 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionOptions *)self deadbandRecenteringIdleDurationSec];
  v39 = [v20 numberWithFloat:?];
  v72[17] = v39;
  v71[18] = @"noPeopleDelayBeforeReturningHomeSec";
  v21 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionOptions *)self noPeopleDelayBeforeReturningHomeSec];
  v22 = [v21 numberWithFloat:?];
  v72[18] = v22;
  v71[19] = @"noPeopleReturningHomeDurationSec";
  v23 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionOptions *)self noPeopleReturningHomeDurationSec];
  v24 = [v23 numberWithFloat:?];
  v72[19] = v24;
  v71[20] = @"tinyHeadMinValue";
  v25 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionOptions *)self tinyHeadMinValue];
  v26 = [v25 numberWithFloat:?];
  v72[20] = v26;
  v71[21] = @"tinyHeadMaxValue";
  v27 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionOptions *)self tinyHeadMaxValue];
  v28 = [v27 numberWithFloat:?];
  v72[21] = v28;
  v71[22] = @"subjectMovementTolerance";
  v29 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionOptions *)self subjectMovementTolerance];
  v30 = [v29 numberWithFloat:?];
  v72[22] = v30;
  v71[23] = @"recenterAfterDriftEnabled";
  v31 = [MEMORY[0x277CCABB0] numberWithBool:{-[CinematicFramingSessionOptions recenterAfterDriftEnabled](self, "recenterAfterDriftEnabled")}];
  v72[23] = v31;
  v71[24] = @"recenterAfterDriftDurationThreshold";
  v32 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionOptions *)self recenterAfterDriftDurationThreshold];
  v33 = [v32 numberWithFloat:?];
  v72[24] = v33;
  v71[25] = @"recenterAfterDriftOffsetThreshold";
  v34 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionOptions *)self recenterAfterDriftOffsetThreshold];
  v35 = [v34 numberWithFloat:?];
  v72[25] = v35;
  v71[26] = @"inferSubjectBodyFromFaceLocation";
  v36 = [MEMORY[0x277CCABB0] numberWithBool:{-[CinematicFramingSessionOptions inferSubjectBodyFromFaceLocation](self, "inferSubjectBodyFromFaceLocation")}];
  v72[26] = v36;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:27];

  return v37;
}

- (void)loadFramingStyleSpecificOptions:(id)a3
{
  v13 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  framingStyleSpecificOptions = self->_framingStyleSpecificOptions;
  self->_framingStyleSpecificOptions = v4;

  v6 = [v13 objectForKeyedSubscript:@"framingStyleOverrides"];
  if (v6)
  {
    for (i = 0; i <= 2; ++i)
    {
      v8 = off_278DBCD58[i];
      v9 = [(NSMutableDictionary *)self->_framingStyleSpecificOptions objectForKeyedSubscript:v8];

      if (!v9)
      {
        v10 = [v13 mutableCopy];
        [v10 removeObjectForKey:@"framingStyleOverrides"];
        v11 = [v6 objectForKeyedSubscript:v8];
        [v10 setValuesForKeysWithDictionary:v11];
        v12 = [[CinematicFramingSessionOptions alloc] initWithPlist:v10];
        [(NSMutableDictionary *)self->_framingStyleSpecificOptions setObject:v12 forKeyedSubscript:v8];
      }
    }
  }
}

- (id)optionsForFramingStyle:(int)a3
{
  if ((a3 - 2) < 2)
  {
    v4 = @"Newsroom";
LABEL_7:
    v3 = [(NSMutableDictionary *)self->_framingStyleSpecificOptions objectForKeyedSubscript:v4];
    goto LABEL_9;
  }

  if (a3 == 1)
  {
    v4 = @"Floating";
    goto LABEL_7;
  }

  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = self;
  }

LABEL_9:

  return v3;
}

@end