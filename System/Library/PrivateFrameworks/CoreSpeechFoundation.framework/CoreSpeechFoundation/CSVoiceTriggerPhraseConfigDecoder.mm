@interface CSVoiceTriggerPhraseConfigDecoder
+ (float)adjustTwoShotDelay:(float)a3;
+ (float)defaultTwoShotDelay;
+ (id)decodeConfigFrom:(id)a3 category:(id)a4;
+ (id)decodeConfigV1:(id)a3 category:(id)a4;
+ (id)decodeConfigV2:(id)a3 category:(id)a4;
+ (id)twoShotDelayConfigKey;
@end

@implementation CSVoiceTriggerPhraseConfigDecoder

+ (float)adjustTwoShotDelay:(float)a3
{
  result = a3 + -0.5;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

+ (id)twoShotDelayConfigKey
{
  if (+[CSUtils isDarwinOS]|| AFPreferencesStartAlertEnabled())
  {
    return @"twoShotFeedbackDelayBeep";
  }

  else
  {
    return @"twoShotFeedbackDelayPhatic";
  }
}

+ (float)defaultTwoShotDelay
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  v2 = CSIsHorseman_isHorseman;
  if (!+[CSUtils isDarwinOS])
  {
    AFPreferencesStartAlertEnabled();
  }

  result = 1.5;
  if (v2)
  {
    return 2.0;
  }

  return result;
}

+ (id)decodeConfigV1:(id)a3 category:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 getNumberForKey:@"threshold" category:v6 default:&unk_1F5916B90];
  [v8 floatValue];
  v10 = v9;

  LODWORD(v11) = v10;
  v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  v13 = [v7 getNumberForKey:@"2ndChanceThreshold" category:v6 default:v12];
  [v13 floatValue];
  v57 = v14;

  v55 = [CSVoiceTriggerPhraseConfig alloc];
  v59 = [v7 getNumberForKey:@"loggingThreshold" category:v6 default:&unk_1F5916B90];
  [v59 floatValue];
  v53 = v15;
  v58 = [v7 getNumberForKey:@"ndapiScaleFactor" category:v6 default:&unk_1F5916BA0];
  [v58 floatValue];
  v17 = v16;
  v56 = [v7 getNumberForKey:@"recognizerThresholdOffset" category:v6 default:&unk_1F5916BB0];
  [v56 floatValue];
  v19 = v18;
  v54 = [v7 getNumberForKey:@"recognizerScoreScaleFactor" category:v6 default:&unk_1F5916BA0];
  [v54 floatValue];
  v21 = v20;
  v52 = [v7 getStringForKey:@"recognizerToken" category:v6 default:@"hey_Siri"];
  v22 = [a1 twoShotDelayConfigKey];
  v23 = MEMORY[0x1E696AD98];
  [a1 defaultTwoShotDelay];
  v24 = [v23 numberWithFloat:?];
  v25 = [v7 getNumberForKey:v22 category:v6 default:v24];
  [v25 floatValue];
  [a1 adjustTwoShotDelay:?];
  v27 = v26;
  v28 = MEMORY[0x1E696AD98];
  [a1 defaultRemoraTwoShotDelay];
  v29 = [v28 numberWithFloat:?];
  v30 = [v7 getNumberForKey:@"twoShotFeedbackDelayPhaticRemora" category:v6 default:v29];
  [v30 floatValue];
  [a1 adjustTwoShotDelay:?];
  v32 = v31;
  v33 = [v7 getNumberForKey:@"rejectLoggingThreshold" category:v6 default:&unk_1F5916B90];
  [v33 floatValue];
  v35 = v34;
  v36 = [v7 getNumberForKey:@"phsRejectLoggingThreshold" category:v6 default:&unk_1F5916B90];
  [v36 floatValue];
  v38 = v37;
  v39 = [v7 getNumberForKey:@"preTriggerSilenceOffset" category:v6 default:&unk_1F5916BC0];

  [v39 floatValue];
  LODWORD(v51) = v40;
  LODWORD(v41) = v10;
  LODWORD(v42) = v57;
  LODWORD(v43) = v53;
  LODWORD(v44) = v17;
  LODWORD(v45) = v19;
  LODWORD(v46) = v21;
  LODWORD(v47) = v27;
  LODWORD(v48) = v32;
  v49 = [(CSVoiceTriggerPhraseConfig *)v55 initWithName:@"Hey Siri" threshold:v52 secondChanceThreshold:v41 loggingThreshold:v42 ndapiScaleFactor:v43 recognizerScoreOffset:v44 recognizerScoreScaleFactor:v45 recognizerToken:v46 twoShotFeedbackDelay:v47 remoraTwoShotFeedbackDelay:v48 keywordRejectLoggingThreshold:__PAIR64__(v38 speakerRejectLoggingThreshold:v35) preTriggerSilenceOffset:v51];

  return v49;
}

+ (id)decodeConfigV2:(id)a3 category:(id)a4
{
  v99 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 getValueForKey:@"phrase" category:v7];
  if (v8)
  {
    v68 = v7;
    v69 = v6;
    v73 = [MEMORY[0x1E695DF70] array];
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v67 = v8;
    obj = v8;
    v74 = [obj countByEnumeratingWithState:&v94 objects:v98 count:16];
    if (v74)
    {
      v71 = *v95;
      v72 = a1;
      do
      {
        for (i = 0; i != v74; ++i)
        {
          if (*v95 != v71)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v94 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:@"threshold"];
          if (v11)
          {
            v12 = [v10 objectForKeyedSubscript:@"threshold"];
            [v12 floatValue];
            v14 = v13;
          }

          else
          {
            v14 = 2139095040;
          }

          v15 = [v10 objectForKeyedSubscript:@"2ndChanceThreshold"];
          v16 = v14;
          if (v15)
          {
            v17 = [v10 objectForKeyedSubscript:@"2ndChanceThreshold"];
            [v17 floatValue];
            v16 = v18;
          }

          v89 = [CSVoiceTriggerPhraseConfig alloc];
          v19 = [v10 objectForKeyedSubscript:@"name"];
          v20 = @"Hey Siri";
          v92 = v19;
          if (v19)
          {
            v20 = v19;
          }

          v88 = v20;
          v91 = [v10 objectForKeyedSubscript:@"loggingThreshold"];
          if (v91)
          {
            v83 = [v10 objectForKeyedSubscript:@"loggingThreshold"];
            [v83 floatValue];
            v87 = v21;
          }

          else
          {
            v87 = 2139095040;
          }

          v93 = [v10 objectForKeyedSubscript:@"ndapiScaleFactor"];
          if (v93)
          {
            v82 = [v10 objectForKeyedSubscript:@"ndapiScaleFactor"];
            [v82 floatValue];
          }

          else
          {
            v22 = 1.0;
          }

          v85 = v22;
          v90 = [v10 objectForKeyedSubscript:@"recognizerThresholdOffset"];
          if (v90)
          {
            v81 = [v10 objectForKeyedSubscript:@"recognizerThresholdOffset"];
            [v81 floatValue];
            v24 = v23;
          }

          else
          {
            v24 = 0.5;
          }

          v25 = [v10 objectForKeyedSubscript:@"recognizerScoreScaleFactor"];
          if (v25)
          {
            v80 = [v10 objectForKeyedSubscript:@"recognizerScoreScaleFactor"];
            [v80 floatValue];
            v27 = v26;
          }

          else
          {
            v27 = 1.0;
          }

          v28 = [v10 objectForKeyedSubscript:@"recognizerToken"];
          v29 = v28;
          v30 = @"hey_Siri";
          if (v28)
          {
            v30 = v28;
          }

          v84 = v30;
          v86 = [a1 twoShotDelayConfigKey];
          v31 = [v10 objectForKeyedSubscript:?];
          if (v31)
          {
            v79 = [a1 twoShotDelayConfigKey];
            v75 = [v10 objectForKeyedSubscript:?];
            [v75 floatValue];
          }

          else
          {
            [a1 defaultTwoShotDelay];
          }

          [a1 adjustTwoShotDelay:?];
          v33 = v32;
          v34 = [v10 objectForKeyedSubscript:@"twoShotFeedbackDelayPhaticRemora"];
          if (v34)
          {
            v78 = [v10 objectForKeyedSubscript:@"twoShotFeedbackDelayPhaticRemora"];
            [v78 floatValue];
          }

          else
          {
            LODWORD(v35) = 2.0;
          }

          [a1 adjustTwoShotDelay:v35];
          v37 = v36;
          v38 = [v10 objectForKeyedSubscript:@"rejectLoggingThreshold"];
          if (v38)
          {
            v77 = [v10 objectForKeyedSubscript:@"rejectLoggingThreshold"];
            [v77 floatValue];
            v40 = v39;
          }

          else
          {
            v40 = 2139095040;
          }

          v41 = [v10 objectForKeyedSubscript:@"phsRejectLoggingThreshold"];
          if (v41)
          {
            v76 = [v10 objectForKeyedSubscript:@"phsRejectLoggingThreshold"];
            [v76 floatValue];
            v43 = v42;
          }

          else
          {
            v43 = 2139095040;
          }

          v44 = [v10 objectForKeyedSubscript:@"preTriggerSilenceOffset"];
          if (v44)
          {
            v53 = [v10 objectForKeyedSubscript:@"preTriggerSilenceOffset"];
            [v53 floatValue];
            LODWORD(v66) = v54;
            LODWORD(v55) = v14;
            LODWORD(v56) = v16;
            LODWORD(v57) = v87;
            *&v58 = v85;
            *&v59 = v24;
            *&v60 = v27;
            LODWORD(v61) = v33;
            LODWORD(v62) = v37;
            v63 = [(CSVoiceTriggerPhraseConfig *)v89 initWithName:v88 threshold:v84 secondChanceThreshold:v55 loggingThreshold:v56 ndapiScaleFactor:v57 recognizerScoreOffset:v58 recognizerScoreScaleFactor:v59 recognizerToken:v60 twoShotFeedbackDelay:v61 remoraTwoShotFeedbackDelay:v62 keywordRejectLoggingThreshold:__PAIR64__(v43 speakerRejectLoggingThreshold:v40) preTriggerSilenceOffset:v66];
          }

          else
          {
            LODWORD(v66) = 0;
            LODWORD(v45) = v14;
            LODWORD(v46) = v16;
            LODWORD(v47) = v87;
            *&v48 = v85;
            *&v49 = v24;
            *&v50 = v27;
            LODWORD(v51) = v33;
            LODWORD(v52) = v37;
            v63 = [(CSVoiceTriggerPhraseConfig *)v89 initWithName:v88 threshold:v84 secondChanceThreshold:v45 loggingThreshold:v46 ndapiScaleFactor:v47 recognizerScoreOffset:v48 recognizerScoreScaleFactor:v49 recognizerToken:v50 twoShotFeedbackDelay:v51 remoraTwoShotFeedbackDelay:v52 keywordRejectLoggingThreshold:__PAIR64__(v43 speakerRejectLoggingThreshold:v40) preTriggerSilenceOffset:v66];
          }

          if (v41)
          {
          }

          a1 = v72;
          if (v38)
          {
          }

          if (v34)
          {
          }

          if (v31)
          {
          }

          if (v25)
          {
          }

          if (v90)
          {
          }

          if (v93)
          {
          }

          if (v91)
          {
          }

          [v73 addObject:v63];
        }

        v74 = [obj countByEnumeratingWithState:&v94 objects:v98 count:16];
      }

      while (v74);
    }

    v7 = v68;
    v6 = v69;
    v8 = v67;
  }

  else
  {
    v73 = 0;
  }

  v64 = *MEMORY[0x1E69E9840];

  return v73;
}

+ (id)decodeConfigFrom:(id)a3 category:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  if ([v7 containsKey:@"phrase" category:v6])
  {
    v8 = [a1 decodeConfigV2:v7 category:v6];
  }

  else
  {
    v9 = [a1 decodeConfigV1:v7 category:v6];

    v12[0] = v9;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

@end