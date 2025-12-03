@interface CSVoiceTriggerSecondPassConfig
- (CSVoiceTriggerSecondPassConfig)initWithPreTriggerAudioTime:(float)time prependingAudioTime:(float)audioTime trailingAudioTime:(float)trailingAudioTime resourcePath:(id)path configPathNDAPI:(id)i useRecognizerCombination:(BOOL)combination configPathRecognizer:(id)recognizer useKeywordSpotting:(BOOL)self0 phraseConfigs:(id)self1 wearerDetectionConfig:(id)self2 quasarCheckerResultCutOffCount:(id)self3 useTimeBasedTriggerLength:(BOOL)self4;
- (id)phraseNamesHash;
@end

@implementation CSVoiceTriggerSecondPassConfig

- (id)phraseNamesHash
{
  v19 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
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

        name = [*(*(&v14 + 1) + 8 * i) name];
        v10 = name;
        if (name && ([name isEqualToString:@"NULL"] & 1) == 0)
        {
          v11 = [CSFHashUtils sha256HashStringFromInputString:v10];
          if (v11)
          {
            [array addObject:v11];
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return array;
}

- (CSVoiceTriggerSecondPassConfig)initWithPreTriggerAudioTime:(float)time prependingAudioTime:(float)audioTime trailingAudioTime:(float)trailingAudioTime resourcePath:(id)path configPathNDAPI:(id)i useRecognizerCombination:(BOOL)combination configPathRecognizer:(id)recognizer useKeywordSpotting:(BOOL)self0 phraseConfigs:(id)self1 wearerDetectionConfig:(id)self2 quasarCheckerResultCutOffCount:(id)self3 useTimeBasedTriggerLength:(BOOL)self4
{
  pathCopy = path;
  iCopy = i;
  recognizerCopy = recognizer;
  configsCopy = configs;
  configCopy = config;
  countCopy = count;
  v33.receiver = self;
  v33.super_class = CSVoiceTriggerSecondPassConfig;
  v25 = [(CSVoiceTriggerSecondPassConfig *)&v33 init];
  v26 = v25;
  if (v25)
  {
    v25->_preTriggerAudioTime = time;
    v25->_prependingAudioTime = audioTime;
    v25->_trailingAudioTime = trailingAudioTime;
    objc_storeStrong(&v25->_resourcePath, path);
    objc_storeStrong(&v26->_configPathNDAPI, i);
    v26->_useRecognizerCombination = combination;
    objc_storeStrong(&v26->_configPathRecognizer, recognizer);
    v26->_useKeywordSpotting = spotting;
    objc_storeStrong(&v26->_phraseConfigs, configs);
    objc_storeStrong(&v26->_wearerDetectionConfig, config);
    objc_storeStrong(&v26->_quasarCheckerResultCutOffCount, count);
    v26->_useTimeBasedTriggerLength = length;
  }

  return v26;
}

@end