@interface ESUaapLm
- (ESUaapLm)init;
- (id)readUaapLMsForLanguage:(id)a3 recognizer:(id)a4;
- (void)dealloc;
- (void)invalidate;
- (void)registerForegroundBundleIdentifiersUpdate;
@end

@implementation ESUaapLm

- (void)invalidate
{
  v2 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "[ESUaapLm invalidate]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s UaaP: Invalidating Uaap LMs", &v3, 0xCu);
  }
}

- (void)dealloc
{
  v3 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v6 = "[ESUaapLm dealloc]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s UaaP: Dealloc-ing", buf, 0xCu);
  }

  [(FBSDisplayLayoutMonitor *)self->_layoutMonitor invalidate];
  v4.receiver = self;
  v4.super_class = ESUaapLm;
  [(ESUaapLm *)&v4 dealloc];
}

- (id)readUaapLMsForLanguage:(id)a3 recognizer:(id)a4
{
  v6 = a3;
  v39 = self;
  v40 = a4;
  v43 = v6;
  if (![(NSString *)self->_language isEqualToString:v6])
  {
    [(ESUaapLm *)self invalidate];
  }

  v7 = +[NSMutableArray array];
  os_unfair_lock_lock(&self->_foregroundBundleIdLock);
  v8 = [(NSMutableArray *)self->_foregroundBundleIdentifiers copy];
  os_unfair_lock_unlock(&self->_foregroundBundleIdLock);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v44 objects:v55 count:16];
  if (v9)
  {
    v42 = *v45;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v45 != v42)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v44 + 1) + 8 * v10);
      v12 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "[ESUaapLm readUaapLMsForLanguage:recognizer:]";
        *&buf[12] = 2112;
        *&buf[14] = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s UaaP: Foreground app bundleId:%@", buf, 0x16u);
      }

      v13 = v11;
      v14 = v43;
      v15 = v13;
      v16 = v14;
      v17 = AFLibraryDirectoryWithSubPath();
      v18 = [v17 stringByAppendingPathComponent:@"SpeechModels"];
      v19 = [v18 stringByAppendingPathComponent:v16];

      v20 = [v19 stringByAppendingPathComponent:v15];

      v21 = [v20 stringByAppendingPathComponent:@"LM"];

      v22 = [v21 stringByDeletingLastPathComponent];

      if (v22)
      {
        v49 = 0;
        v50 = &v49;
        v51 = 0x3032000000;
        v52 = sub_100007418;
        v53 = sub_100007428;
        v54 = 0;
        v48[0] = 0;
        v48[1] = v48;
        v48[2] = 0x2020000000;
        v48[3] = 0;
        v23 = +[NSFileManager defaultManager];
        v24 = [v23 contentsOfDirectoryAtPath:v22 error:0];
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100007430;
        v57 = &unk_100054C20;
        v59 = v48;
        v60 = &v49;
        v58 = v22;
        [v24 enumerateObjectsUsingBlock:buf];

        v25 = v50[5];
        _Block_object_dispose(v48, 8);
        _Block_object_dispose(&v49, 8);
      }

      else
      {
        v25 = 0;
      }

      if (v25 && [_EARArtifact isValid:v25])
      {
        v26 = [[_EARAppLmArtifact alloc] initWithPath:v25];
        if (v26)
        {
          v27 = [v40 modelInfo];
          v28 = [v27 version];
          v29 = [v40 modelInfo];
          v30 = [v29 language];
          v31 = [v26 isAdaptableToSpeechModelVersion:v28 locale:v30];

          if (v31)
          {
            v32 = [v26 loadLmHandle];
            v33 = AFSiriLogContextSpeech;
            if (v32)
            {
              if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                *&buf[4] = "[ESUaapLm readUaapLMsForLanguage:recognizer:]";
                *&buf[12] = 2112;
                *&buf[14] = v25;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s UaaP: Loaded path=%@", buf, 0x16u);
              }

              [v7 addObject:v32];
            }

            else if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "[ESUaapLm readUaapLMsForLanguage:recognizer:]";
              *&buf[12] = 2112;
              *&buf[14] = v25;
              _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s UaaP: Failed to read uaap LM path=%@", buf, 0x16u);
            }
          }

          else
          {
            v34 = AFSiriLogContextSpeech;
            if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              *&buf[4] = "[ESUaapLm readUaapLMsForLanguage:recognizer:]";
              *&buf[12] = 2112;
              *&buf[14] = v25;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s UaaP: Rejecting model at path=%@ for being out of step with the datapack used to load the recognizer", buf, 0x16u);
            }
          }
        }
      }

      v35 = [v7 count] < 6;

      if (!v35)
      {
        break;
      }

      if (v9 == ++v10)
      {
        v9 = [obj countByEnumeratingWithState:&v44 objects:v55 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  language = v39->_language;
  v39->_language = v43;

  v37 = [v7 copy];

  return v37;
}

- (void)registerForegroundBundleIdentifiersUpdate
{
  v3 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
  fbsConfig = self->_fbsConfig;
  self->_fbsConfig = v3;

  objc_initWeak(&location, self);
  v5 = self->_fbsConfig;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000075EC;
  v11 = &unk_100054BF8;
  objc_copyWeak(&v12, &location);
  [(FBSDisplayLayoutMonitorConfiguration *)v5 setTransitionHandler:&v8];
  v6 = [FBSDisplayLayoutMonitor monitorWithConfiguration:self->_fbsConfig, v8, v9, v10, v11];
  layoutMonitor = self->_layoutMonitor;
  self->_layoutMonitor = v6;

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (ESUaapLm)init
{
  v7.receiver = self;
  v7.super_class = ESUaapLm;
  v2 = [(ESUaapLm *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_foregroundBundleIdLock._os_unfair_lock_opaque = 0;
    v4 = +[NSMutableArray array];
    foregroundBundleIdentifiers = v3->_foregroundBundleIdentifiers;
    v3->_foregroundBundleIdentifiers = v4;

    [(ESUaapLm *)v3 registerForegroundBundleIdentifiersUpdate];
  }

  return v3;
}

@end