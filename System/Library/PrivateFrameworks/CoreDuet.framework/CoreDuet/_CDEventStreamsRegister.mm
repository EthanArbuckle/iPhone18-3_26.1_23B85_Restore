@interface _CDEventStreamsRegister
- (id)getEventHandler:(id)a1;
- (id)getEventHandlerDictForStreams;
- (void)initWithEventStreams:(void *)a1;
@end

@implementation _CDEventStreamsRegister

- (void)initWithEventStreams:(void *)a1
{
  v32[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v26.receiver = a1;
    v26.super_class = _CDEventStreamsRegister;
    v4 = objc_msgSendSuper2(&v26, sel_init);
    a1 = v4;
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
              v16 = [v14 name];
              *buf = 138412546;
              v28 = @"enabled";
              v29 = 2112;
              v30 = v16;
              _os_log_impl(&dword_191750000, v15, OS_LOG_TYPE_INFO, "Data collection %@ for stream %@", buf, 0x16u);
            }
          }

          v11 = [v3 countByEnumeratingWithState:&v22 objects:v31 count:16];
        }

        while (v11);
      }

      v17 = [v9 copy];
      a1 = v21;
      v18 = v21[1];
      v21[1] = v17;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return a1;
}

- (id)getEventHandler:(id)a1
{
  v4 = a2;
  if (a1)
  {
    v5 = +[_DKSystemEventStreams deviceActivityLevelStream];
    v6 = [v5 name];
    v7 = OUTLINED_FUNCTION_2_21(v6);

    if (v7)
    {
      v8 = off_1E7366190;
LABEL_10:
      a1 = objc_alloc_init(*v8);
      goto LABEL_11;
    }

    v9 = +[_DKSystemEventStreams appInFocusStream];
    v10 = [v9 name];
    v11 = OUTLINED_FUNCTION_2_21(v10);

    if (v11)
    {
      v8 = off_1E7366198;
      goto LABEL_10;
    }

    v12 = +[_DKSystemEventStreams watchActiveStream];
    v13 = [v12 name];
    v14 = OUTLINED_FUNCTION_2_21(v13);

    if (v14)
    {
      v8 = off_1E73661A8;
      goto LABEL_10;
    }

    v15 = +[_DKSystemEventStreams defaultPairedDeviceNearbyStream];
    v16 = [v15 name];
    v17 = OUTLINED_FUNCTION_2_21(v16);

    if (v17)
    {
      v8 = off_1E73661A0;
      goto LABEL_10;
    }

    a1 = 0;
  }

LABEL_11:

  return a1;
}

- (id)getEventHandlerDictForStreams
{
  v1 = a1;
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v3 = v1[1];
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
          v10 = [v9 name];
          v11 = [(_CDEventStreamsRegister *)v1 getEventHandler:v10];

          if (v11)
          {
            v12 = [v9 name];
            [v2 setObject:v11 forKey:v12];
          }

          else
          {
            v12 = +[_CDLogging dataCollectionChannel];
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              v13 = [v9 name];
              *buf = v16;
              v22 = v13;
              _os_log_debug_impl(&dword_191750000, v12, OS_LOG_TYPE_DEBUG, "Event handler for %@ not defined in getEventHandler method", buf, 0xCu);
            }
          }
        }

        v6 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v6);
    }

    v1 = [v2 copy];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v1;
}

@end