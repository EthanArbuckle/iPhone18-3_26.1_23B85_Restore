@interface CSFModelConfigDecoder
+ (id)decodeJsonFromFile:(id)file;
+ (id)getAftmCheckerConfigFromConfigDict:(id)dict;
+ (id)getAftmRecognizerRelativeConfigFromConfigDict:(id)dict;
+ (id)getNCModelFileFromConfigDict:(id)dict resourcePath:(id)path;
+ (id)getOdldModelFileFromConfigDict:(id)dict resourcePath:(id)path;
+ (id)getOdldValueForKey:(id)key categoryKey:(id)categoryKey configDict:(id)dict;
@end

@implementation CSFModelConfigDecoder

+ (id)getOdldValueForKey:(id)key categoryKey:(id)categoryKey configDict:(id)dict
{
  keyCopy = key;
  categoryKeyCopy = categoryKey;
  dictCopy = dict;
  v10 = dictCopy;
  if (!dictCopy)
  {
    goto LABEL_5;
  }

  v11 = [dictCopy objectForKeyedSubscript:categoryKeyCopy];
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = [v10 objectForKeyedSubscript:categoryKeyCopy];
  v13 = [v12 objectForKeyedSubscript:keyCopy];

  if (v13)
  {
    v14 = [v10 objectForKeyedSubscript:categoryKeyCopy];
    v11 = [v14 objectForKeyedSubscript:keyCopy];
  }

  else
  {
LABEL_5:
    v11 = 0;
  }

LABEL_6:

  return v11;
}

+ (id)decodeJsonFromFile:(id)file
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:file];
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

+ (id)getNCModelFileFromConfigDict:(id)dict resourcePath:(id)path
{
  dictCopy = dict;
  pathCopy = path;
  v7 = pathCopy;
  v8 = 0;
  if (dictCopy)
  {
    if (pathCopy)
    {
      v8 = [dictCopy objectForKeyedSubscript:@"ModelFile"];

      if (v8)
      {
        v9 = [dictCopy objectForKeyedSubscript:@"ModelFile"];
        v8 = [v7 stringByAppendingPathComponent:v9];
      }
    }
  }

  return v8;
}

+ (id)getOdldModelFileFromConfigDict:(id)dict resourcePath:(id)path
{
  pathCopy = path;
  v6 = pathCopy;
  v7 = 0;
  if (dict && pathCopy)
  {
    v8 = [CSFModelConfigDecoder getOdldValueForKey:@"model" categoryKey:@"pipeline" configDict:dict];
    v7 = [v8 objectForKeyedSubscript:@"modelFile"];

    if (v7)
    {
      v9 = [v8 objectForKeyedSubscript:@"modelFile"];
      v7 = [v6 stringByAppendingPathComponent:v9];
    }
  }

  return v7;
}

+ (id)getAftmCheckerConfigFromConfigDict:(id)dict
{
  if (dict)
  {
    v4 = [dict objectForKeyedSubscript:@"checkerConfig"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)getAftmRecognizerRelativeConfigFromConfigDict:(id)dict
{
  dictCopy = dict;
  v4 = dictCopy;
  if (dictCopy)
  {
    v5 = [dictCopy objectForKeyedSubscript:@"checkerConfig"];

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