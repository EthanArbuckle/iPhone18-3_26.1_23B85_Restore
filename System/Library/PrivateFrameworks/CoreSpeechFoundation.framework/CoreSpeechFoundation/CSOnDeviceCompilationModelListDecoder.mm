@interface CSOnDeviceCompilationModelListDecoder
+ (id)decodeConfigFrom:(id)from;
@end

@implementation CSOnDeviceCompilationModelListDecoder

+ (id)decodeConfigFrom:(id)from
{
  v37 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  dictionary = [fromCopy dictionary];
  v5 = [dictionary objectForKeyedSubscript:@"OnDeviceCompilationModelList"];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    dictionary2 = [fromCopy dictionary];
    v8 = [dictionary2 objectForKeyedSubscript:@"OnDeviceCompilationModelList"];

    v9 = v8;
    v10 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (!v10)
    {
      goto LABEL_23;
    }

    v12 = v10;
    v13 = *v31;
    *&v11 = 136315138;
    v29 = v11;
    while (1)
    {
      v14 = 0;
      do
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v30 + 1) + 8 * v14);
        dictionary3 = [fromCopy dictionary];
        v17 = [dictionary3 objectForKeyedSubscript:@"OnDeviceCompilationModelList"];
        v18 = [v17 objectForKeyedSubscript:v15];

        if ([v15 isEqualToString:@"SecondpassChecker"])
        {
          resourcePath = [fromCopy resourcePath];
          v20 = [resourcePath stringByAppendingPathComponent:v18];
          v21 = v6;
          v22 = v20;
          v23 = &unk_1F5916790;
LABEL_17:
          [v21 setObject:v22 forKeyedSubscript:v23];

          goto LABEL_18;
        }

        if ([v15 isEqualToString:@"SpeakerRecognition"])
        {
          resourcePath = [fromCopy resourcePath];
          v20 = [resourcePath stringByAppendingPathComponent:v18];
          v21 = v6;
          v22 = v20;
          v23 = &unk_1F59167A8;
          goto LABEL_17;
        }

        if ([v15 isEqualToString:@"AFTM"])
        {
          resourcePath = [fromCopy resourcePath];
          v20 = [resourcePath stringByAppendingPathComponent:v18];
          v21 = v6;
          v22 = v20;
          v23 = &unk_1F59167D8;
          goto LABEL_17;
        }

        if ([v15 isEqualToString:@"ODLD"])
        {
          resourcePath = [fromCopy resourcePath];
          v20 = [resourcePath stringByAppendingPathComponent:v18];
          v21 = v6;
          v22 = v20;
          v23 = &unk_1F59167C0;
          goto LABEL_17;
        }

        if ([v15 isEqualToString:@"NC"])
        {
          resourcePath = [fromCopy resourcePath];
          v20 = [resourcePath stringByAppendingPathComponent:v18];
          v21 = v6;
          v22 = v20;
          v23 = &unk_1F59167F0;
          goto LABEL_17;
        }

        v24 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = v29;
          v36 = "+[CSOnDeviceCompilationModelListDecoder decodeConfigFrom:]";
          _os_log_error_impl(&dword_1DDA4B000, v24, OS_LOG_TYPE_ERROR, "%s modelType specified in onDeviceCompilation list is not supported", buf, 0xCu);
        }

LABEL_18:

        ++v14;
      }

      while (v12 != v14);
      v25 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
      v12 = v25;
      if (!v25)
      {
LABEL_23:

        goto LABEL_27;
      }
    }
  }

  v26 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v36 = "+[CSOnDeviceCompilationModelListDecoder decodeConfigFrom:]";
    _os_log_impl(&dword_1DDA4B000, v26, OS_LOG_TYPE_DEFAULT, "%s Cannot find onDeviceCompilationModelList in asset json", buf, 0xCu);
  }

  v6 = 0;
LABEL_27:

  v27 = *MEMORY[0x1E69E9840];

  return v6;
}

@end