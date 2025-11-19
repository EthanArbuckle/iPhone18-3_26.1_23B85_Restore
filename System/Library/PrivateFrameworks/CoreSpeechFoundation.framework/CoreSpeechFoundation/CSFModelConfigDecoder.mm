@interface CSFModelConfigDecoder
+ (id)decodeJsonFromFile:(id)a3;
+ (id)getAftmCheckerConfigFromConfigDict:(id)a3;
+ (id)getAftmRecognizerRelativeConfigFromConfigDict:(id)a3;
+ (id)getNCModelFileFromConfigDict:(id)a3 resourcePath:(id)a4;
+ (id)getOdldModelFileFromConfigDict:(id)a3 resourcePath:(id)a4;
+ (id)getOdldValueForKey:(id)a3 categoryKey:(id)a4 configDict:(id)a5;
@end

@implementation CSFModelConfigDecoder

+ (id)getOdldValueForKey:(id)a3 categoryKey:(id)a4 configDict:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!v9)
  {
    goto LABEL_5;
  }

  v11 = [v9 objectForKeyedSubscript:v8];
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = [v10 objectForKeyedSubscript:v8];
  v13 = [v12 objectForKeyedSubscript:v7];

  if (v13)
  {
    v14 = [v10 objectForKeyedSubscript:v8];
    v11 = [v14 objectForKeyedSubscript:v7];
  }

  else
  {
LABEL_5:
    v11 = 0;
  }

LABEL_6:

  return v11;
}

+ (id)decodeJsonFromFile:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:a3];
  if (v3)
  {
    v11 = 0;
    v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:0 error:&v11];
    v5 = v11;
    if (v5)
    {
      v6 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v13 = "+[CSFModelConfigDecoder decodeJsonFromFile:]";
        v14 = 2114;
        v15 = v3;
        v16 = 2114;
        v17 = v5;
        _os_log_error_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_ERROR, "%s ERR: read metafile %{public}@ failed with %{public}@ - defaulting to NO", buf, 0x20u);
      }

      v7 = 0;
    }

    else
    {
      v7 = v4;
    }
  }

  else
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "+[CSFModelConfigDecoder decodeJsonFromFile:]";
      v14 = 2114;
      v15 = 0;
      _os_log_error_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_ERROR, "%s ERR: metaData is nil, defaulting to NO for %{public}@", buf, 0x16u);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)getNCModelFileFromConfigDict:(id)a3 resourcePath:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5)
  {
    if (v6)
    {
      v8 = [v5 objectForKeyedSubscript:@"ModelFile"];

      if (v8)
      {
        v9 = [v5 objectForKeyedSubscript:@"ModelFile"];
        v8 = [v7 stringByAppendingPathComponent:v9];
      }
    }
  }

  return v8;
}

+ (id)getOdldModelFileFromConfigDict:(id)a3 resourcePath:(id)a4
{
  v5 = a4;
  v6 = v5;
  v7 = 0;
  if (a3 && v5)
  {
    v8 = [CSFModelConfigDecoder getOdldValueForKey:@"model" categoryKey:@"pipeline" configDict:a3];
    v7 = [v8 objectForKeyedSubscript:@"modelFile"];

    if (v7)
    {
      v9 = [v8 objectForKeyedSubscript:@"modelFile"];
      v7 = [v6 stringByAppendingPathComponent:v9];
    }
  }

  return v7;
}

+ (id)getAftmCheckerConfigFromConfigDict:(id)a3
{
  if (a3)
  {
    v4 = [a3 objectForKeyedSubscript:@"checkerConfig"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)getAftmRecognizerRelativeConfigFromConfigDict:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"checkerConfig"];

    if (v5)
    {
      v6 = [v4 objectForKeyedSubscript:@"checkerConfig"];
      v5 = [v6 objectForKeyedSubscript:@"recognizerConfigs"];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end