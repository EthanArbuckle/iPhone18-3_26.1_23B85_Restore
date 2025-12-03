@interface SRAudioGenerator
+ (void)initialize;
- (SRAudioGenerator)init;
- (id)generateTTSAudiosFromTexts:(id)texts language:(id)language downsample:(BOOL)downsample;
@end

@implementation SRAudioGenerator

- (id)generateTTSAudiosFromTexts:(id)texts language:(id)language downsample:(BOOL)downsample
{
  textsCopy = texts;
  languageCopy = language;
  v7 = qword_10003FF78;
  if (os_log_type_enabled(qword_10003FF78, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v53 = languageCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "SRAudioGenerator: Start generating TTS audio with language: %@", buf, 0xCu);
  }

  v36 = objc_opt_new();
  v8 = objc_alloc_init(SiriTTSDaemonSession);
  synthesizer = self->_synthesizer;
  self->_synthesizer = v8;

  if (self->_synthesizer)
  {
    group = dispatch_group_create();
    if (textsCopy && [textsCopy count])
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v34 = textsCopy;
      v10 = textsCopy;
      v11 = [v10 countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (v11)
      {
        v12 = v11;
        v38 = *v48;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v48 != v38)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v47 + 1) + 8 * i);
            v15 = [v10 objectForKeyedSubscript:v14];
            v16 = [v15 length];

            if (v16)
            {
              v17 = [[SiriTTSSynthesisVoice alloc] initWithLanguage:languageCopy name:0];
              v18 = [SiriTTSSynthesisRequest alloc];
              v19 = [v10 objectForKeyedSubscript:v14];
              v20 = [v18 initWithText:v19 voice:v17];

              [v20 setPrivacySensitive:1];
              dispatch_group_enter(group);
              v21 = objc_alloc_init(NSMutableArray);
              v45[0] = _NSConcreteStackBlock;
              v45[1] = 3221225472;
              v45[2] = sub_10001FFAC;
              v45[3] = &unk_100039150;
              v22 = v21;
              v46 = v22;
              [v20 setDidGenerateAudio:v45];
              v23 = qword_10003FF78;
              if (os_log_type_enabled(qword_10003FF78, OS_LOG_TYPE_INFO))
              {
                v24 = v23;
                v25 = [v10 objectForKeyedSubscript:v14];
                *buf = 138412290;
                v53 = v25;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "SRAudioGenerator: Start TTS request, text: %@", buf, 0xCu);
              }

              v26 = self->_synthesizer;
              v40[0] = _NSConcreteStackBlock;
              v40[1] = 3221225472;
              v40[2] = sub_1000200B8;
              v40[3] = &unk_100039178;
              v27 = group;
              v41 = v27;
              v42 = v22;
              v43 = v14;
              v44 = v36;
              v28 = v22;
              [(SiriTTSDaemonSession *)v26 synthesizeWithRequest:v20 didFinish:v40];
              v29 = dispatch_time(0, ((v16 * 0.2 + 10.0) * 1000000000.0));
              dispatch_group_wait(v27, v29);
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v47 objects:v51 count:16];
        }

        while (v12);
      }

      v30 = v36;
      textsCopy = v34;
    }

    else
    {
      v31 = qword_10003FF78;
      if (os_log_type_enabled(qword_10003FF78, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "SRAudioGenerator: No texts found", buf, 2u);
      }

      v30 = 0;
    }
  }

  else
  {
    v32 = qword_10003FF78;
    if (os_log_type_enabled(qword_10003FF78, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "SRAudioGenerator: Synthesizer initialize failed", buf, 2u);
    }

    v30 = 0;
  }

  return v30;
}

- (SRAudioGenerator)init
{
  v3.receiver = self;
  v3.super_class = SRAudioGenerator;
  return [(SRAudioGenerator *)&v3 init];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_10003FF78 = os_log_create("com.apple.speech.speechmodeltraining", "SRAudioGenerator");

    _objc_release_x1();
  }
}

@end