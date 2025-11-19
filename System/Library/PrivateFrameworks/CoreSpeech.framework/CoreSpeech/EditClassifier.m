@interface EditClassifier
+ (void)initialize;
- (EditClassifier)initWithLanguage:(id)a3 task:(id)a4 samplingRate:(unint64_t)a5;
- (id)classifyWithUUID:(id)a3 parameters:(id)a4 nbestTokens:(id)a5 recognizedText:(id)a6 correctedText:(id)a7;
- (id)labelConfusionPair:(id)a3 errorType:(int64_t)a4 alignedSourceIndex:(unint64_t)a5 alignedTargetIndex:(unint64_t)a6;
@end

@implementation EditClassifier

- (id)labelConfusionPair:(id)a3 errorType:(int64_t)a4 alignedSourceIndex:(unint64_t)a5 alignedTargetIndex:(unint64_t)a6
{
  v10 = a3;
  [v10 setErrorType:a4];
  [v10 setAlignedSourceIndex:a5];
  [v10 setAlignedTargetIndex:a6];
  [(NSMutableArray *)self->_confusionPairs addObject:v10];

  return 0;
}

- (id)classifyWithUUID:(id)a3 parameters:(id)a4 nbestTokens:(id)a5 recognizedText:(id)a6 correctedText:(id)a7
{
  v12 = a3;
  v63 = a4;
  v62 = a5;
  v13 = a6;
  v64 = a7;
  v65 = v12;
  v61 = v13;
  v14 = [[ConfusionPairAligner alloc] initWithUttId:v12 recognizedText:v13 correctedText:v64 errorType:0 editMethod:0];
  v15 = v14;
  if (!v14)
  {
    v34 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:355 userInfo:0];
    goto LABEL_49;
  }

  v60 = [(ConfusionPairAligner *)v14 confusionPairs];
  if ([v60 count])
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v16 = v60;
    v17 = [v16 countByEnumeratingWithState:&v79 objects:v94 count:16];
    if (v17)
    {
      v18 = 0;
      v19 = *v80;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v80 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v79 + 1) + 8 * i);
          if ([v21 isPunctuationEdit])
          {
            v22 = [(EditClassifier *)self labelConfusionPair:v21 errorType:3];
          }

          else
          {
            v18 = 1;
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v79 objects:v94 count:16];
      }

      while (v17);

      if (v18)
      {
        v23 = objc_alloc_init(NSMutableArray);
        v24 = qword_10003FF20;
        if (os_log_type_enabled(qword_10003FF20, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "User Edit: Start TTS", buf, 2u);
        }

        synthesizer = self->_synthesizer;
        v92 = v65;
        v93 = v64;
        v26 = [NSDictionary dictionaryWithObjects:&v93 forKeys:&v92 count:1];
        v27 = [(SRAudioGenerator *)synthesizer generateTTSAudiosFromTexts:v26 language:self->_language downsample:0];

        if (v27 && [v27 count])
        {
          v28 = qword_10003FF20;
          if (os_log_type_enabled(qword_10003FF20, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "User Edit: Successfully received TTS audio", buf, 2u);
          }

          *buf = 0;
          v74 = buf;
          v75 = 0x3032000000;
          v76 = sub_10000DF04;
          v77 = sub_10000DF14;
          v78 = 0;
          recognizer = self->_recognizer;
          language = self->_language;
          task = self->_task;
          samplingRate = self->_samplingRate;
          v70[0] = _NSConcreteStackBlock;
          v70[1] = 3221225472;
          v70[2] = sub_10000DF1C;
          v70[3] = &unk_100038A10;
          v72 = buf;
          v33 = v23;
          v71 = v33;
          [(CoreEmbeddedSpeechRecognizer *)recognizer redecodeWithAudioDatas:v27 language:language task:task samplingRate:samplingRate completion:v70];
          if ([v33 count] && !*(v74 + 5))
          {
            v36 = qword_10003FF20;
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              v37 = [v62 count];
              v38 = [v33 count];
              v39 = [v63 nbestAlignmentSourceBound];
              v40 = [v63 nbestAlignmentTargetBound];
              *v84 = 134218752;
              v85 = v37;
              v86 = 2048;
              v87 = v38;
              v88 = 2048;
              v89 = v39;
              v90 = 2048;
              v91 = v40;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "User Edit: Aligning original decoding nbest result and redecoded nbest result, original nbest size: %lu, redecoded nbest size: %lu, alignment source bound: %lu, alignment target bound: %lu", v84, 0x2Au);
            }

            v58 = sub_10000E088(v62);
            v59 = objc_alloc_init(NSMutableDictionary);
            v41 = sub_10000E338(self->_aligner, v33, v58, [v63 nbestAlignmentSourceBound], objc_msgSend(v63, "nbestAlignmentTargetBound"), v59);
            v42 = [v59 objectForKeyedSubscript:@"sourceIndex"];
            v43 = [v42 intValue];

            v44 = [v59 objectForKeyedSubscript:@"targetIndex"];
            v45 = [v44 intValue];

            v56 = v27;
            v57 = v23;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v46 = v16;
            v47 = [v46 countByEnumeratingWithState:&v66 objects:v83 count:16];
            if (v47)
            {
              v48 = *v67;
              do
              {
                for (j = 0; j != v47; j = j + 1)
                {
                  if (*v67 != v48)
                  {
                    objc_enumerationMutation(v46);
                  }

                  v50 = *(*(&v66 + 1) + 8 * j);
                  if (([v50 isPunctuationEdit] & 1) == 0)
                  {
                    if (v41)
                    {
                      v51 = [(EditClassifier *)self labelConfusionPair:v50 errorType:1 alignedSourceIndex:v43 alignedTargetIndex:v45];
                    }

                    else
                    {
                      v52 = [(EditClassifier *)self labelConfusionPair:v50 errorType:2];
                    }
                  }
                }

                v47 = [v46 countByEnumeratingWithState:&v66 objects:v83 count:16];
              }

              while (v47);
            }

            v27 = v56;
            v23 = v57;
            v53 = qword_10003FF20;
            if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
            {
              v54 = [v46 count];
              *v84 = 138412546;
              v85 = v65;
              v86 = 2048;
              v87 = v54;
              _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "User Edit: Added confusion pairs, uuid: %@, count: %zu", v84, 0x16u);
            }

            v34 = 0;
          }

          else
          {
            v34 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:353 userInfo:0];
          }

          _Block_object_dispose(buf, 8);
        }

        else
        {
          v34 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:354 userInfo:0];
        }

        goto LABEL_48;
      }
    }

    else
    {
    }

    v35 = qword_10003FF20;
    if (os_log_type_enabled(qword_10003FF20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "User Edit: Skip classification because there is no text edit", buf, 2u);
    }

    v34 = 0;
    goto LABEL_48;
  }

  v34 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:355 userInfo:0];
LABEL_48:

LABEL_49:

  return v34;
}

- (EditClassifier)initWithLanguage:(id)a3 task:(id)a4 samplingRate:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v26.receiver = self;
  v26.super_class = EditClassifier;
  v10 = [(EditClassifier *)&v26 init];
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = [[CoreEmbeddedSpeechRecognizer alloc] initWithDelegate:0 instanceUUID:&CoreEmbeddedSpeechRecognizerInstanceUUIDBackground];
  recognizer = v10->_recognizer;
  v10->_recognizer = v11;

  if (!v10->_recognizer)
  {
    goto LABEL_10;
  }

  v13 = objc_alloc_init(SRAudioGenerator);
  synthesizer = v10->_synthesizer;
  v10->_synthesizer = v13;

  if (!v10->_synthesizer || (v15 = objc_alloc_init(_EAREditDistance), aligner = v10->_aligner, v10->_aligner = v15, aligner, !v10->_aligner) || ![v8 length])
  {
LABEL_10:
    v18 = 0;
    goto LABEL_11;
  }

  v17 = [v9 length];
  v18 = 0;
  if (a5 && v17)
  {
    v19 = [v8 copy];
    language = v10->_language;
    v10->_language = v19;

    v21 = [v9 copy];
    task = v10->_task;
    v10->_task = v21;

    v10->_samplingRate = a5;
    v23 = objc_alloc_init(NSMutableArray);
    confusionPairs = v10->_confusionPairs;
    v10->_confusionPairs = v23;

LABEL_9:
    v18 = v10;
  }

LABEL_11:

  return v18;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_10003FF20 = os_log_create("com.apple.speech.speechmodeltraining", "useredit");

    _objc_release_x1();
  }
}

@end