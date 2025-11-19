@interface MPCScriptedSceneCollectionParser
+ (id)_instructionsForSceneDictionaries:(id)a3;
+ (id)sceneCollectionForMetadataItems:(id)a3;
+ (id)sceneCollectionForScriptData:(id)a3;
@end

@implementation MPCScriptedSceneCollectionParser

+ (id)_instructionsForSceneDictionaries:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (_NSIsNSDictionary())
        {
          v11 = objc_alloc_init(MPCScene);
          v12 = [v10 objectForKeyedSubscript:{@"start_frame", v16}];
          if (_NSIsNSNumber())
          {
            -[MPCScene setStartFrame:](v11, "setStartFrame:", [v12 integerValue]);
          }

          v13 = [v10 objectForKeyedSubscript:@"end_frame"];
          if (_NSIsNSNumber())
          {
            -[MPCScene setEndFrame:](v11, "setEndFrame:", [v13 integerValue]);
          }

          v14 = [v10 objectForKeyedSubscript:@"iterations"];
          if (_NSIsNSNumber())
          {
            -[MPCScene setIterations:](v11, "setIterations:", [v14 integerValue]);
          }

          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)sceneCollectionForScriptData:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v34 = 0;
  v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:0 error:&v34];
  v6 = v34;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "ScriptedLooper");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v37 = v6;
      v38 = 2114;
      v39 = v4;
      _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_ERROR, "Error serializing JSONObject with scriptData. error=%{public}@ scriptData=%{public}@", buf, 0x16u);
    }
  }

  if (_NSIsNSDictionary())
  {
    v8 = [v5 objectForKeyedSubscript:@"motion-timeline"];
    if (_NSIsNSDictionary())
    {
      v9 = [v8 objectForKeyedSubscript:@"versions"];
      if (_NSIsNSArray())
      {
        v24 = a1;
        v25 = v9;
        v26 = v8;
        v27 = v6;
        v28 = v5;
        v29 = v4;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v31;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v31 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v30 + 1) + 8 * i);
              if (_NSIsNSDictionary())
              {
                v16 = [v15 objectForKeyedSubscript:@"version"];
                if (_NSIsNSString() && [v16 isEqual:@"1.0"])
                {
                  v17 = [v15 objectForKeyedSubscript:@"fps"];
                  if (_NSIsNSNumber())
                  {
                    [v17 doubleValue];
                    if (v18 > 0.0)
                    {
                      v19 = [v15 objectForKeyedSubscript:@"scenes"];
                      if (_NSIsNSArray())
                      {
                        v23 = [v24 _instructionsForSceneDictionaries:v19];
                        v21 = objc_alloc_init(MPCSceneCollection);
                        [(MPCSceneCollection *)v21 setVersion:v16];
                        [v17 doubleValue];
                        [(MPCSceneCollection *)v21 setFrameRate:?];
                        [(MPCSceneCollection *)v21 setScenes:v23];

                        v5 = v28;
                        v4 = v29;
                        v20 = v26;
                        v6 = v27;
                        goto LABEL_30;
                      }
                    }
                  }
                }
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v5 = v28;
        v4 = v29;
        v8 = v26;
        v6 = v27;
        v9 = v25;
      }
    }
  }

  v20 = os_log_create("com.apple.amp.mediaplaybackcore", "ScriptedLooper");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v37 = v5;
    _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_ERROR, "MPCScriptedSceneCollectionParser: sceneCollectionForScriptData: Well-formatted V1 scene script not found [returning nil] JSONObject=%{public}@", buf, 0xCu);
  }

  v21 = 0;
LABEL_30:

  return v21;
}

+ (id)sceneCollectionForMetadataItems:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 key];
        v11 = [v10 isEqual:@"com.apple.music.scenes"];

        if (v11)
        {
          v12 = [v9 value];
          if (_NSIsNSString())
          {
            v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v12 options:0];
            v14 = [a1 sceneCollectionForScriptData:v15];

            v13 = v4;
            goto LABEL_15;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "ScriptedLooper");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v22 = @"com.apple.music.scenes";
    v23 = 2114;
    v24 = v4;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_ERROR, "MPCScriptedSceneCollectionParser: sceneCollectionForMetadataItems: Well-defined string script data corresponding to %{public}@ not found [returning nil] metadataItems=%{public}@", buf, 0x16u);
  }

  v14 = 0;
LABEL_15:

  return v14;
}

@end