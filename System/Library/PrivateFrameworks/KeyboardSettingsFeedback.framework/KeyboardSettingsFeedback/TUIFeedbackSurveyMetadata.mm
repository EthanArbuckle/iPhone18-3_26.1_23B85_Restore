@interface TUIFeedbackSurveyMetadata
- (TUIFeedbackSurveyMetadata)initWithBuild:(id)a3 model:(id)a4 language:(id)a5 region:(id)a6 initialPreferenceValue:(BOOL)a7 initialInputModes:(id)a8 initialTimestamp:(id)a9 finalPreferenceValue:(BOOL)a10 finalInputModes:(id)a11 finalTimestamp:(id)a12;
- (int64_t)duration;
@end

@implementation TUIFeedbackSurveyMetadata

- (TUIFeedbackSurveyMetadata)initWithBuild:(id)a3 model:(id)a4 language:(id)a5 region:(id)a6 initialPreferenceValue:(BOOL)a7 initialInputModes:(id)a8 initialTimestamp:(id)a9 finalPreferenceValue:(BOOL)a10 finalInputModes:(id)a11 finalTimestamp:(id)a12
{
  v28 = a7;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a8;
  v22 = a9;
  v23 = a11;
  v24 = a12;
  v29.receiver = self;
  v29.super_class = TUIFeedbackSurveyMetadata;
  v25 = [(TUIFeedbackSurveyMetadata *)&v29 init];
  v26 = v25;
  if (v25)
  {
    [(TUIFeedbackSurveyMetadata *)v25 setBuild:v17];
    [(TUIFeedbackSurveyMetadata *)v26 setModel:v18];
    [(TUIFeedbackSurveyMetadata *)v26 setLanguage:v19];
    [(TUIFeedbackSurveyMetadata *)v26 setRegion:v20];
    [(TUIFeedbackSurveyMetadata *)v26 setInitialPreferenceValue:v28];
    [(TUIFeedbackSurveyMetadata *)v26 setInitialInputModes:v21];
    [(TUIFeedbackSurveyMetadata *)v26 setInitialTimestamp:v22];
    [(TUIFeedbackSurveyMetadata *)v26 setFinalPreferenceValue:a10];
    [(TUIFeedbackSurveyMetadata *)v26 setFinalInputModes:v23];
    [(TUIFeedbackSurveyMetadata *)v26 setFinalTimestamp:v24];
  }

  return v26;
}

- (int64_t)duration
{
  v19 = *MEMORY[0x277D85DE8];
  finalTimestamp = self->_finalTimestamp;
  v3 = [(TUIFeedbackSurveyMetadata *)self initialTimestamp];
  [(NSDate *)finalTimestamp timeIntervalSinceDate:v3];
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