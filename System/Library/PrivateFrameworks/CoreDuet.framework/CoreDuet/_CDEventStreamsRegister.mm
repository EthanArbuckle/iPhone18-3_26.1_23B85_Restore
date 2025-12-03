@interface _CDEventStreamsRegister
- (id)getEventHandler:(id)handler;
- (id)getEventHandlerDictForStreams;
- (void)initWithEventStreams:(void *)streams;
@end

@implementation _CDEventStreamsRegister

- (void)initWithEventStreams:(void *)streams
{
  v32[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (streams)
  {
    v26.receiver = streams;
    v26.super_class = _CDEventStreamsRegister;
    v4 = objc_msgSendSuper2(&v26, sel_init);
    streams = v4;
    if (v4)
    {
      v21 = v4;
      if (!v3)
      {
        v5 = +[_DKSystemEventStreams deviceActivityLevelStream];
        v32[0] = v5;
        v6 = +[_DKSystemEventStreams appInFocusStream];
        v32[1] = v6;
        v7 = +[_DKSystemEventStreams watchNearbyStream];
        v32[2] = v7;
        v8 = +[_DKSystemEventStreams defaultPairedDeviceNearbyStream];
        v32[3] = v8;
        v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
      }

      v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v3 = v3;
      v10 = [v3 countByEnumeratingWithState:&v22 objects:v31 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v23;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(v3);
            }

            v14 = *(*(&v22 + 1) + 8 * i);
            [v9 addObject:v14];
            v15 = +[_CDLogging dataCollectionChannel];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              name = [v14 name];
              *buf = 138412546;
              v28 = @"enabled";
              v29 = 2112;
              v30 = name;
              _os_log_impl(&dword_191750000, v15, OS_LOG_TYPE_INFO, "Data collection %@ for stream %@", buf, 0x16u);
            }
          }

          v11 = [v3 countByEnumeratingWithState:&v22 objects:v31 count:16];
        }

        while (v11);
      }

      v17 = [v9 copy];
      streams = v21;
      v18 = v21[1];
      v21[1] = v17;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return streams;
}

- (id)getEventHandler:(id)handler
{
  v4 = a2;
  if (handler)
  {
    v5 = +[_DKSystemEventStreams deviceActivityLevelStream];
    name = [v5 name];
    v7 = OUTLINED_FUNCTION_2_21(name);

    if (v7)
    {
      v8 = off_1E7366190;
LABEL_10:
      handler = objc_alloc_init(*v8);
      goto LABEL_11;
    }

    v9 = +[_DKSystemEventStreams appInFocusStream];
    name2 = [v9 name];
    v11 = OUTLINED_FUNCTION_2_21(name2);

    if (v11)
    {
      v8 = off_1E7366198;
      goto LABEL_10;
    }

    v12 = +[_DKSystemEventStreams watchActiveStream];
    name3 = [v12 name];
    v14 = OUTLINED_FUNCTION_2_21(name3);

    if (v14)
    {
      v8 = off_1E73661A8;
      goto LABEL_10;
    }

    v15 = +[_DKSystemEventStreams defaultPairedDeviceNearbyStream];
    name4 = [v15 name];
    v17 = OUTLINED_FUNCTION_2_21(name4);

    if (v17)
    {
      v8 = off_1E73661A0;
      goto LABEL_10;
    }

    handler = 0;
  }

LABEL_11:

  return handler;
}

- (id)getEventHandlerDictForStreams
{
  selfCopy = self;
  v24 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v3 = selfCopy[1];
    v4 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v18;
      *&v5 = 138412290;
      v16 = v5;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          name = [v9 name];
          v11 = [(_CDEventStreamsRegister *)selfCopy getEventHandler:name];

          if (v11)
          {
            name2 = [v9 name];
            [v2 setObject:v11 forKey:name2];
          }

          else
          {
            name2 = +[_CDLogging dataCollectionChannel];
            if (os_log_type_enabled(name2, OS_LOG_TYPE_DEBUG))
            {
              name3 = [v9 name];
              *buf = v16;
              v22 = name3;
              _os_log_debug_impl(&dword_191750000, name2, OS_LOG_TYPE_DEBUG, "Event handler for %@ not defined in getEventHandler method", buf, 0xCu);
            }
          }
        }

        v6 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v6);
    }

    selfCopy = [v2 copy];
  }

  v14 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

@end