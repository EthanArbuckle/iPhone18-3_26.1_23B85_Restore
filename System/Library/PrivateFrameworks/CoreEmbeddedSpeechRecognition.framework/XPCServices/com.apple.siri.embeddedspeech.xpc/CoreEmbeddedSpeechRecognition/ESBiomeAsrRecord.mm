@interface ESBiomeAsrRecord
- (BOOL)qualify;
- (ESBiomeAsrRecord)initWithAsrId:(id)id interactionId:(id)interactionId language:(id)language taskName:(id)name samplingRate:(unint64_t)rate;
- (void)sendEvent;
- (void)setCorrectedText:(id)text interactionId:(id)id;
@end

@implementation ESBiomeAsrRecord

- (void)sendEvent
{
  if ([(ESBiomeAsrRecord *)self qualify])
  {
    v3 = BiomeLibrary();
    dictation = [v3 Dictation];
    userEdit = [dictation UserEdit];

    if (userEdit)
    {
      v26 = userEdit;
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
      selfCopy = self;
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

      v21 = [[BMDictationUserEdit alloc] initWithAsrID:selfCopy->_asrId interactionID:selfCopy->_interactionId metadata:v25 startIndex:0 endIndex:0 correctedText:selfCopy->_correctedText recognizedText:selfCopy->_recognizedText recognizedTokens:selfCopy->_recognizedTokens alternativeSelections:v27];
      v22 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v34 = "[ESBiomeAsrRecord sendEvent]";
        v35 = 2112;
        v36 = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Donating edit record to Biome: %@", buf, 0x16u);
      }

      userEdit = v26;
      source = [v26 source];
      [source sendEvent:v21];
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

- (void)setCorrectedText:(id)text interactionId:(id)id
{
  textCopy = text;
  if ([id isEqualToString:self->_interactionId])
  {
    v6 = [textCopy copy];
    correctedText = self->_correctedText;
    self->_correctedText = v6;
  }
}

- (ESBiomeAsrRecord)initWithAsrId:(id)id interactionId:(id)interactionId language:(id)language taskName:(id)name samplingRate:(unint64_t)rate
{
  idCopy = id;
  interactionIdCopy = interactionId;
  languageCopy = language;
  nameCopy = name;
  v31.receiver = self;
  v31.super_class = ESBiomeAsrRecord;
  v16 = [(ESBiomeAsrRecord *)&v31 init];
  if (v16)
  {
    if (![nameCopy isEqualToString:@"Dictation"])
    {
      goto LABEL_11;
    }

    if (![idCopy length])
    {
      goto LABEL_11;
    }

    if (![interactionIdCopy length])
    {
      goto LABEL_11;
    }

    if (![languageCopy length])
    {
      goto LABEL_11;
    }

    if (!AFDeviceSupportsSiriUOD())
    {
      goto LABEL_11;
    }

    v17 = +[AFPreferences sharedPreferences];
    isDictationHIPAACompliant = [v17 isDictationHIPAACompliant];

    if ((isDictationHIPAACompliant & 1) != 0 || (+[AFPreferences sharedPreferences](AFPreferences, "sharedPreferences"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 siriDataSharingOptInStatus], v19, v20 != 1))
    {
LABEL_11:
      v29 = 0;
      goto LABEL_12;
    }

    v21 = [idCopy copy];
    asrId = v16->_asrId;
    v16->_asrId = v21;

    v23 = [interactionIdCopy copy];
    interactionId = v16->_interactionId;
    v16->_interactionId = v23;

    v25 = [languageCopy copy];
    language = v16->_language;
    v16->_language = v25;

    v27 = [nameCopy copy];
    taskName = v16->_taskName;
    v16->_taskName = v27;

    v16->_samplingRate = rate;
  }

  v29 = v16;
LABEL_12:

  return v29;
}

@end