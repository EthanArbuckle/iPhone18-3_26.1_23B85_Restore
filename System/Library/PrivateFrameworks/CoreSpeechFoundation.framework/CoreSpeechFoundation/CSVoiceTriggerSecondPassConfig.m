@interface CSVoiceTriggerSecondPassConfig
- (CSVoiceTriggerSecondPassConfig)initWithPreTriggerAudioTime:(float)a3 prependingAudioTime:(float)a4 trailingAudioTime:(float)a5 resourcePath:(id)a6 configPathNDAPI:(id)a7 useRecognizerCombination:(BOOL)a8 configPathRecognizer:(id)a9 useKeywordSpotting:(BOOL)a10 phraseConfigs:(id)a11 wearerDetectionConfig:(id)a12 quasarCheckerResultCutOffCount:(id)a13 useTimeBasedTriggerLength:(BOOL)a14;
- (id)phraseNamesHash;
@end

@implementation CSVoiceTriggerSecondPassConfig

- (id)phraseNamesHash
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_phraseConfigs;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) name];
        v10 = v9;
        if (v9 && ([v9 isEqualToString:@"NULL"] & 1) == 0)
        {
          v11 = [CSFHashUtils sha256HashStringFromInputString:v10];
          if (v11)
          {
            [v3 addObject:v11];
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (CSVoiceTriggerSecondPassConfig)initWithPreTriggerAudioTime:(float)a3 prependingAudioTime:(float)a4 trailingAudioTime:(float)a5 resourcePath:(id)a6 configPathNDAPI:(id)a7 useRecognizerCombination:(BOOL)a8 configPathRecognizer:(id)a9 useKeywordSpotting:(BOOL)a10 phraseConfigs:(id)a11 wearerDetectionConfig:(id)a12 quasarCheckerResultCutOffCount:(id)a13 useTimeBasedTriggerLength:(BOOL)a14
{
  v22 = a6;
  v32 = a7;
  v31 = a9;
  v30 = a11;
  v23 = a12;
  v24 = a13;
  v33.receiver = self;
  v33.super_class = CSVoiceTriggerSecondPassConfig;
  v25 = [(CSVoiceTriggerSecondPassConfig *)&v33 init];
  v26 = v25;
  if (v25)
  {
    v25->_preTriggerAudioTime = a3;
    v25->_prependingAudioTime = a4;
    v25->_trailingAudioTime = a5;
    objc_storeStrong(&v25->_resourcePath, a6);
    objc_storeStrong(&v26->_configPathNDAPI, a7);
    v26->_useRecognizerCombination = a8;
    objc_storeStrong(&v26->_configPathRecognizer, a9);
    v26->_useKeywordSpotting = a10;
    objc_storeStrong(&v26->_phraseConfigs, a11);
    objc_storeStrong(&v26->_wearerDetectionConfig, a12);
    objc_storeStrong(&v26->_quasarCheckerResultCutOffCount, a13);
    v26->_useTimeBasedTriggerLength = a14;
  }

  return v26;
}

@end