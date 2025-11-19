@interface ESBiomeAsrRecord
- (BOOL)qualify;
- (ESBiomeAsrRecord)initWithAsrId:(id)a3 interactionId:(id)a4 language:(id)a5 taskName:(id)a6 samplingRate:(unint64_t)a7;
- (void)sendEvent;
- (void)setCorrectedText:(id)a3 interactionId:(id)a4;
@end

@implementation ESBiomeAsrRecord

- (void)sendEvent
{
  if ([(ESBiomeAsrRecord *)self qualify])
  {
    v3 = BiomeLibrary();
    v4 = [v3 Dictation];
    v5 = [v4 UserEdit];

    if (v5)
    {
      v26 = v5;
      v6 = [BMDictationUserEditRequestMetadata alloc];
      language = self->_language;
      taskName = self->_taskName;
      v9 = [NSNumber numberWithUnsignedInteger:self->_samplingRate];
      v25 = [v6 initWithTask:taskName language:language sampling_rate:v9];

      v27 = objc_alloc_init(NSMutableArray);
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v24 = self;
      obj = self->_selectedAlternatives;
      v10 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v39 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v30;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v30 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v29 + 1) + 8 * i);
            v15 = [v14 objectForKeyedSubscript:@"replacementText"];
            v16 = [v14 objectForKeyedSubscript:@"originalText"];
            if ([v15 length] && objc_msgSend(v16, "length"))
            {
              v17 = [BMDictationUserEditConfusionPair alloc];
              v38 = v16;
              v18 = [NSArray arrayWithObjects:&v38 count:1];
              v37 = v15;
              v19 = [NSArray arrayWithObjects:&v37 count:1];
              v20 = [v17 initWithIndex:0 recognizedTokens:v18 correctedTokens:v19];

              [v27 addObject:v20];
            }
          }

          v11 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v39 count:16];
        }

        while (v11);
      }

      v21 = [[BMDictationUserEdit alloc] initWithAsrID:v24->_asrId interactionID:v24->_interactionId metadata:v25 startIndex:0 endIndex:0 correctedText:v24->_correctedText recognizedText:v24->_recognizedText recognizedTokens:v24->_recognizedTokens alternativeSelections:v27];
      v22 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v34 = "[ESBiomeAsrRecord sendEvent]";
        v35 = 2112;
        v36 = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Donating edit record to Biome: %@", buf, 0x16u);
      }

      v5 = v26;
      v23 = [v26 source];
      [v23 sendEvent:v21];
    }
  }
}

- (BOOL)qualify
{
  if (self->_hasRecognizedAnything)
  {
    v3 = [(NSArray *)self->_recognizedTokens count];
    if (v3)
    {
      v3 = [(NSString *)self->_recognizedText length];
      if (v3)
      {
        v3 = [(NSString *)self->_correctedText length];
        if (v3)
        {
          LOBYTE(v3) = ![(NSString *)self->_recognizedText isEqualToString:self->_correctedText];
        }
      }
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)setCorrectedText:(id)a3 interactionId:(id)a4
{
  v8 = a3;
  if ([a4 isEqualToString:self->_interactionId])
  {
    v6 = [v8 copy];
    correctedText = self->_correctedText;
    self->_correctedText = v6;
  }
}

- (ESBiomeAsrRecord)initWithAsrId:(id)a3 interactionId:(id)a4 language:(id)a5 taskName:(id)a6 samplingRate:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v31.receiver = self;
  v31.super_class = ESBiomeAsrRecord;
  v16 = [(ESBiomeAsrRecord *)&v31 init];
  if (v16)
  {
    if (![v15 isEqualToString:@"Dictation"])
    {
      goto LABEL_11;
    }

    if (![v12 length])
    {
      goto LABEL_11;
    }

    if (![v13 length])
    {
      goto LABEL_11;
    }

    if (![v14 length])
    {
      goto LABEL_11;
    }

    if (!AFDeviceSupportsSiriUOD())
    {
      goto LABEL_11;
    }

    v17 = +[AFPreferences sharedPreferences];
    v18 = [v17 isDictationHIPAACompliant];

    if ((v18 & 1) != 0 || (+[AFPreferences sharedPreferences](AFPreferences, "sharedPreferences"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 siriDataSharingOptInStatus], v19, v20 != 1))
    {
LABEL_11:
      v29 = 0;
      goto LABEL_12;
    }

    v21 = [v12 copy];
    asrId = v16->_asrId;
    v16->_asrId = v21;

    v23 = [v13 copy];
    interactionId = v16->_interactionId;
    v16->_interactionId = v23;

    v25 = [v14 copy];
    language = v16->_language;
    v16->_language = v25;

    v27 = [v15 copy];
    taskName = v16->_taskName;
    v16->_taskName = v27;

    v16->_samplingRate = a7;
  }

  v29 = v16;
LABEL_12:

  return v29;
}

@end