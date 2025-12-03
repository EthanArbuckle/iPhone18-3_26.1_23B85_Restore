@interface TUIFeedbackSurveyMetadata
- (TUIFeedbackSurveyMetadata)initWithBuild:(id)build model:(id)model language:(id)language region:(id)region initialPreferenceValue:(BOOL)value initialInputModes:(id)modes initialTimestamp:(id)timestamp finalPreferenceValue:(BOOL)self0 finalInputModes:(id)self1 finalTimestamp:(id)self2;
- (int64_t)duration;
@end

@implementation TUIFeedbackSurveyMetadata

- (TUIFeedbackSurveyMetadata)initWithBuild:(id)build model:(id)model language:(id)language region:(id)region initialPreferenceValue:(BOOL)value initialInputModes:(id)modes initialTimestamp:(id)timestamp finalPreferenceValue:(BOOL)self0 finalInputModes:(id)self1 finalTimestamp:(id)self2
{
  valueCopy = value;
  buildCopy = build;
  modelCopy = model;
  languageCopy = language;
  regionCopy = region;
  modesCopy = modes;
  timestampCopy = timestamp;
  inputModesCopy = inputModes;
  finalTimestampCopy = finalTimestamp;
  v29.receiver = self;
  v29.super_class = TUIFeedbackSurveyMetadata;
  v25 = [(TUIFeedbackSurveyMetadata *)&v29 init];
  v26 = v25;
  if (v25)
  {
    [(TUIFeedbackSurveyMetadata *)v25 setBuild:buildCopy];
    [(TUIFeedbackSurveyMetadata *)v26 setModel:modelCopy];
    [(TUIFeedbackSurveyMetadata *)v26 setLanguage:languageCopy];
    [(TUIFeedbackSurveyMetadata *)v26 setRegion:regionCopy];
    [(TUIFeedbackSurveyMetadata *)v26 setInitialPreferenceValue:valueCopy];
    [(TUIFeedbackSurveyMetadata *)v26 setInitialInputModes:modesCopy];
    [(TUIFeedbackSurveyMetadata *)v26 setInitialTimestamp:timestampCopy];
    [(TUIFeedbackSurveyMetadata *)v26 setFinalPreferenceValue:preferenceValue];
    [(TUIFeedbackSurveyMetadata *)v26 setFinalInputModes:inputModesCopy];
    [(TUIFeedbackSurveyMetadata *)v26 setFinalTimestamp:finalTimestampCopy];
  }

  return v26;
}

- (int64_t)duration
{
  v19 = *MEMORY[0x277D85DE8];
  finalTimestamp = self->_finalTimestamp;
  initialTimestamp = [(TUIFeedbackSurveyMetadata *)self initialTimestamp];
  [(NSDate *)finalTimestamp timeIntervalSinceDate:initialTimestamp];
  v5 = v4;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [&unk_2867A5A68 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(&unk_2867A5A68);
        }

        if (v5 < [*(*(&v14 + 1) + 8 * v10) intValue])
        {
          v8 = v11;
          goto LABEL_12;
        }

        ++v11;
        ++v10;
      }

      while (v7 != v10);
      v7 = [&unk_2867A5A68 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_12:
  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

@end