@interface CSStateCapture
- (CSStateCapture)initWithName:(id)name;
- (os_state_data_s)_stateCapture;
- (os_state_data_s)stateDataForDictionary:(id)dictionary title:(id)title;
- (void)dealloc;
- (void)registerHandlerforStateCapture;
- (void)unregisterHandlerforStateCapture;
@end

@implementation CSStateCapture

- (os_state_data_s)stateDataForDictionary:(id)dictionary title:(id)title
{
  v28 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  titleCopy = title;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v23 = "[CSStateCapture stateDataForDictionary:title:]";
    v24 = 2112;
    v25 = titleCopy;
    v26 = 2112;
    v27 = dictionaryCopy;
    _os_log_debug_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEBUG, "%s Persisting the state for %@ data: \n %@", buf, 0x20u);
    if (dictionaryCopy)
    {
      goto LABEL_3;
    }

LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  if (!dictionaryCopy)
  {
    goto LABEL_16;
  }

LABEL_3:
  v21 = 0;
  v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:dictionaryCopy format:200 options:0 error:&v21];
  v9 = v21;
  if (v9)
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[CSStateCapture stateDataForDictionary:title:]";
      v24 = 2112;
      v25 = v9;
      _os_log_error_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_ERROR, "%s Error serializing dictionary for State Capture: %@", buf, 0x16u);
    }

    v11 = 0;
  }

  else
  {
    v12 = [v8 length];
    v13 = malloc_type_calloc(1uLL, v12 + 200, 0x1000040BEF03554uLL);
    v11 = v13;
    if (v13)
    {
      v13->var0 = 1;
      v13->var1.var1 = v12;
      v14 = [titleCopy dataUsingEncoding:4];
      v15 = v14;
      if (v14)
      {
        bytes = [v14 bytes];
        v17 = [v15 length];
        if (v17 >= 0x3F)
        {
          v18 = 63;
        }

        else
        {
          v18 = v17;
        }

        memcpy(v11->var3, bytes, v18);
      }

      memcpy(v11->var4, [v8 bytes], v12);
    }
  }

LABEL_17:
  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

- (os_state_data_s)_stateCapture
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[CSStateCapture _stateCapture]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Starting state capture", &v13, 0xCu);
  }

  stateCaptureBlock = [(CSStateCapture *)self stateCaptureBlock];

  if (stateCaptureBlock)
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315138;
      v14 = "[CSStateCapture _stateCapture]";
      _os_log_debug_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEBUG, "%s Running capture block", &v13, 0xCu);
    }

    stateCaptureBlock2 = [(CSStateCapture *)self stateCaptureBlock];
    stateCaptureBlock = stateCaptureBlock2[2]();
  }

  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[CSStateCapture _stateCapture]";
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Finished capturing state", &v13, 0xCu);
  }

  stateData = [stateCaptureBlock stateData];
  stateDataTitle = [stateCaptureBlock stateDataTitle];
  v10 = [(CSStateCapture *)self stateDataForDictionary:stateData title:stateDataTitle];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)unregisterHandlerforStateCapture
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSStateCapture unregisterHandlerforStateCapture]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Removing state capture handler", &v5, 0xCu);
  }

  if ([(CSStateCapture *)self handle])
  {
    [(CSStateCapture *)self handle];
    os_state_remove_handler();
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)registerHandlerforStateCapture
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[CSStateCapture registerHandlerforStateCapture]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Registering state capture handler", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v4 = MEMORY[0x1E69E96A0];
  objc_copyWeak(&v6, buf);
  [(CSStateCapture *)self setHandle:os_state_add_handler()];

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __48__CSStateCapture_registerHandlerforStateCapture__block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 3)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _stateCapture];

  return v3;
}

- (void)dealloc
{
  [(CSStateCapture *)self unregisterHandlerforStateCapture];
  v3.receiver = self;
  v3.super_class = CSStateCapture;
  [(CSStateCapture *)&v3 dealloc];
}

- (CSStateCapture)initWithName:(id)name
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v6.receiver = self;
    v6.super_class = CSStateCapture;
    self = [(CSStateCapture *)&v6 init];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end