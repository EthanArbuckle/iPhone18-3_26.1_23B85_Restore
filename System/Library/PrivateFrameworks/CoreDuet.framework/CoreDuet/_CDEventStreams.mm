@interface _CDEventStreams
+ (id)ephemeralitySchedule;
+ (id)eventStreamForName:(id)a3;
+ (id)eventStreamPropertiesForEventStream:(id)a3;
+ (id)eventStreamPropertiesForKBName:(id)a3;
+ (id)eventStreamPropertiesForName:(id)a3;
+ (id)privacyPolicyForEventStreamName:(id)a3;
+ (id)rateLimiterForEventStreamName:(id)a3;
+ (id)sharedInstance;
+ (void)loadAllEventStreams;
- (NSDictionary)allEventStreams;
- (NSDictionary)allKBEventStreams;
- (_CDEventStreams)init;
- (id)_eventStreamForName:(id)a3 orKBName:(id)a4;
@end

@implementation _CDEventStreams

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[_CDEventStreams sharedInstance];
  }

  v3 = sharedInstance__sharedContextStoreEvents;

  return v3;
}

- (_CDEventStreams)init
{
  v8.receiver = self;
  v8.super_class = _CDEventStreams;
  v2 = [(_CDEventStreams *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    allEventStreams = v2->_allEventStreams;
    v2->_allEventStreams = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    allKBEventStreams = v2->_allKBEventStreams;
    v2->_allKBEventStreams = v5;
  }

  return v2;
}

- (id)_eventStreamForName:(id)a3 orKBName:(id)a4
{
  v82 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = __Block_byref_object_copy__1;
  v74 = __Block_byref_object_dispose__1;
  v75 = 0;
  v8 = self;
  objc_sync_enter(v8);
  v49 = v6;
  v50 = v7;
  v48 = (v6 | v7) == 0;
  obj = &v8->super.isa;
  if (v6 | v7)
  {
    if (v6)
    {
      v9 = [(NSDictionary *)v8->_allEventStreams objectForKeyedSubscript:v6];
      v10 = v71[5];
      v71[5] = v9;
    }

    else
    {
      if (!v7)
      {
        goto LABEL_12;
      }

      v11 = [(NSDictionary *)v8->_allKBEventStreams objectForKeyedSubscript:v7];
      v12 = v71[5];
      v71[5] = v11;
    }

    v13 = v71[5];
    if (v13)
    {
      v44 = v13;
      goto LABEL_11;
    }
  }

  else
  {
    if ([(_CDEventStreams *)v8 allStreamsLoaded])
    {
      v44 = 0;
LABEL_11:
      objc_sync_exit(v8);

      goto LABEL_61;
    }

    [(_CDEventStreams *)v8 setAllStreamsLoaded:1];
  }

LABEL_12:
  v14 = [MEMORY[0x1E695DF70] array];
  v42 = +[_CDPaths eventPlistPath];
  if (v42)
  {
    [v14 addObject:?];
  }

  else
  {
    v15 = +[_CDLogging contextChannel];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [_CDEventStreams _eventStreamForName:v15 orKBName:?];
    }
  }

  v47 = obj[2];
  v46 = obj[3];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v45 = v14;
  v16 = [v45 countByEnumeratingWithState:&v66 objects:v81 count:16];
  if (v16)
  {
    v53 = 0;
    v51 = *v67;
    while (2)
    {
      v17 = 0;
      v52 = v16;
      do
      {
        if (*v67 != v51)
        {
          objc_enumerationMutation(v45);
        }

        v18 = *(*(&v66 + 1) + 8 * v17);
        v19 = objc_autoreleasePoolPush();
        v20 = [MEMORY[0x1E695DF70] arrayWithContentsOfFile:v18];
        if ([v20 count])
        {
          v21 = +[_CDPaths eventPlistPath];
          v22 = [v18 isEqualToString:v21];

          if (v22)
          {
            v65 = 0u;
            v63 = 0u;
            v64 = 0u;
            v62 = 0u;
            v23 = v20;
            v24 = [v23 countByEnumeratingWithState:&v62 objects:v80 count:16];
            if (v24)
            {
              v25 = *v63;
              while (2)
              {
                for (i = 0; i != v24; ++i)
                {
                  if (*v63 != v25)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v27 = *(*(&v62 + 1) + 8 * i);
                  v28 = [v27 objectForKeyedSubscript:kCDESPEventNameKey];
                  v29 = [v28 isEqualToString:@"Default"];

                  if (v29)
                  {
                    v32 = [_CDEventStreamProperties eventStreamPropertiesFromDictionary:v27];

                    v53 = v32;
                    goto LABEL_37;
                  }
                }

                v24 = [v23 countByEnumeratingWithState:&v62 objects:v80 count:16];
                if (v24)
                {
                  continue;
                }

                break;
              }
            }

LABEL_37:

            v33 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != 'Default'", kCDESPEventNameKey];
            [v23 filterUsingPredicate:v33];
          }

          v54[0] = MEMORY[0x1E69E9820];
          v54[1] = 3221225472;
          v54[2] = __48___CDEventStreams__eventStreamForName_orKBName___block_invoke;
          v54[3] = &unk_1E7367738;
          v61 = v48;
          v55 = v49;
          v56 = v50;
          v53 = v53;
          v57 = v53;
          v58 = v47;
          v59 = v46;
          v60 = &v70;
          [v20 enumerateObjectsUsingBlock:v54];
          v34 = v71[5];
          if (v34)
          {
            v44 = v34;
            v31 = 1;
          }

          else
          {
            v31 = 0;
          }

          v30 = v55;
        }

        else
        {
          v30 = +[_CDLogging contextChannel];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v77 = v18;
            _os_log_error_impl(&dword_191750000, v30, OS_LOG_TYPE_ERROR, "Unable to load plist from path: %@", buf, 0xCu);
          }

          v31 = 3;
        }

        objc_autoreleasePoolPop(v19);
        if (v31 != 3 && v31)
        {

          v35 = 0;
          goto LABEL_59;
        }

        ++v17;
      }

      while (v17 != v52);
      v16 = [v45 countByEnumeratingWithState:&v66 objects:v81 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v53 = 0;
  }

  v36 = v48;
  if (v71[5])
  {
    v36 = 1;
  }

  if ((v36 & 1) == 0)
  {
    v37 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v77 = v49;
      v78 = 2112;
      v79 = v50;
      _os_log_impl(&dword_191750000, v37, OS_LOG_TYPE_DEFAULT, "unable to find stream (%@, %@) in event stream plists.", buf, 0x16u);
    }

    v38 = [_CDEventStream eventStreamWithProperties:0];
    v39 = v71[5];
    v71[5] = v38;

    if (v49)
    {
      [v47 setObject:v71[5] forKeyedSubscript:v49];
    }

    if (v50)
    {
      [v46 setObject:v71[5] forKeyedSubscript:?];
    }
  }

  v35 = 1;
LABEL_59:

  objc_sync_exit(obj);
  if (v35)
  {
    v44 = v71[5];
  }

LABEL_61:
  _Block_object_dispose(&v70, 8);

  v40 = *MEMORY[0x1E69E9840];

  return v44;
}

+ (void)loadAllEventStreams
{
  v3 = +[_CDEventStreams sharedInstance];
  v2 = [v3 _eventStreamForName:0 orKBName:0];
}

- (NSDictionary)allEventStreams
{
  [objc_opt_class() loadAllEventStreams];
  allEventStreams = self->_allEventStreams;

  return allEventStreams;
}

- (NSDictionary)allKBEventStreams
{
  [objc_opt_class() loadAllEventStreams];
  allKBEventStreams = self->_allKBEventStreams;

  return allKBEventStreams;
}

+ (id)eventStreamForName:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = +[_CDEventStreams sharedInstance];
    v5 = [v4 _eventStreamForName:v3 orKBName:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)eventStreamPropertiesForName:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = +[_CDEventStreams sharedInstance];
    v5 = [v4 _eventStreamForName:v3 orKBName:0];

    v6 = [v5 eventStreamProperties];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)eventStreamPropertiesForKBName:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = +[_CDEventStreams sharedInstance];
    v5 = [v4 _eventStreamForName:0 orKBName:v3];

    v6 = [v5 eventStreamProperties];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)eventStreamPropertiesForEventStream:(id)a3
{
  v4 = [a3 name];
  v5 = [a1 eventStreamPropertiesForKBName:v4];

  return v5;
}

+ (id)ephemeralitySchedule
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = +[_CDEventStreams sharedInstance];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v21 = v2;
  v4 = [v2 allKBEventStreams];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v10 eventStreamProperties];
        v12 = [v11 knowledgeBaseName];

        if (v12)
        {
          v13 = [v10 eventStreamProperties];
          [v13 timeToLive];
          v15 = v14;

          v16 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
          v17 = [v3 objectForKeyedSubscript:v16];

          if (v17)
          {
            [v17 addObject:v12];
          }

          else
          {
            v17 = [MEMORY[0x1E695DFA8] setWithObject:v12];
            v18 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
            [v3 setObject:v17 forKeyedSubscript:v18];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)rateLimiterForEventStreamName:(id)a3
{
  v3 = a3;
  if (rateLimiterForEventStreamName__onceToken != -1)
  {
    +[_CDEventStreams rateLimiterForEventStreamName:];
  }

  v4 = rateLimiterForEventStreamName__policies;
  objc_sync_enter(v4);
  v5 = [rateLimiterForEventStreamName__policies objectForKeyedSubscript:v3];
  if (v5)
  {
    v6 = v5;
    objc_sync_exit(v4);

    v7 = v6;
  }

  else
  {
    v8 = [objc_opt_class() eventStreamPropertiesForKBName:v3];
    if (v8)
    {
      v9 = [_CDRateAndTotalLimiter alloc];
      v10 = [v8 eventsPerPeriod];
      [v8 period];
      v6 = -[_CDRateAndTotalLimiter initWithCount:perPeriod:totalCountLimit:](v9, "initWithCount:perPeriod:totalCountLimit:", v10, [v8 eventCountLimit], v11);
      [rateLimiterForEventStreamName__policies setObject:v6 forKeyedSubscript:v3];
    }

    else
    {
      v6 = 0;
    }

    objc_sync_exit(v4);
    if (v8)
    {
      v6 = v6;
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (id)privacyPolicyForEventStreamName:(id)a3
{
  v3 = a3;
  if (privacyPolicyForEventStreamName__onceToken != -1)
  {
    +[_CDEventStreams privacyPolicyForEventStreamName:];
  }

  v4 = privacyPolicyForEventStreamName__policies;
  objc_sync_enter(v4);
  v5 = [privacyPolicyForEventStreamName__policies objectForKeyedSubscript:v3];
  if (v5)
  {
    v6 = v5;
    objc_sync_exit(v4);

    v7 = v6;
  }

  else
  {
    v8 = [objc_opt_class() eventStreamPropertiesForKBName:v3];
    if (v8)
    {
      v9 = [_CDPrivacyPolicy alloc];
      [v8 temporalPrecision];
      v6 = -[_CDPrivacyPolicy initWithTemporalPrecision:canPersistOnStorage:](v9, "initWithTemporalPrecision:canPersistOnStorage:", [v8 isHistorical], v10);
      [privacyPolicyForEventStreamName__policies setObject:v6 forKeyedSubscript:v3];
    }

    else
    {
      v6 = 0;
    }

    objc_sync_exit(v4);
    if (v8)
    {
      v6 = v6;
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end