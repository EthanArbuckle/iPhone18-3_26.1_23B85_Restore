@interface CSAudioTimeConverterPool
+ (id)sharedInstance;
- (CSAudioTimeConverterPool)init;
- (id)_getAudioTimeConverterWithAudioStreamId:(unint64_t)id;
- (id)defaultExclaveConverter;
@end

@implementation CSAudioTimeConverterPool

- (id)_getAudioTimeConverterWithAudioStreamId:(unint64_t)id
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__309;
  v11 = __Block_byref_object_dispose__310;
  v12 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__CSAudioTimeConverterPool__getAudioTimeConverterWithAudioStreamId___block_invoke;
  block[3] = &unk_1E865C920;
  block[5] = &v7;
  block[6] = id;
  block[4] = self;
  dispatch_async_and_wait(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __68__CSAudioTimeConverterPool__getAudioTimeConverterWithAudioStreamId___block_invoke(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1[4] + 16);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = *(a1[4] + 16);
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
    v6 = [v5 objectForKeyedSubscript:?];
    v7 = *(a1[5] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v10 = objc_alloc_init(CSAudioTimeConverter);
    v11 = *(a1[5] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = *(*(a1[5] + 8) + 40);
    v14 = *(a1[4] + 16);
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
    [v14 setObject:v13 forKeyedSubscript:v15];

    if (!a1[6])
    {
      v16 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v20 = "[CSAudioTimeConverterPool _getAudioTimeConverterWithAudioStreamId:]_block_invoke";
        _os_log_error_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_ERROR, "%s Requested audioTimeConverter on invalid streamHandleId", buf, 0xCu);
      }
    }

    v17 = *MEMORY[0x1E69E9840];
  }
}

- (id)defaultExclaveConverter
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__309;
  v10 = __Block_byref_object_dispose__310;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__CSAudioTimeConverterPool_defaultExclaveConverter__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __51__CSAudioTimeConverterPool_defaultExclaveConverter__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = objc_alloc_init(CSAudioTimeConverter);
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(*(a1 + 32) + 24);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = v2;
  v8 = *(v6 + 40);
  *(v6 + 40) = v7;

  return MEMORY[0x1EEE66BB8]();
}

- (CSAudioTimeConverterPool)init
{
  v8.receiver = self;
  v8.super_class = CSAudioTimeConverterPool;
  v2 = [(CSAudioTimeConverterPool *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSAudioTimeConverterPool", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    pool = v2->_pool;
    v2->_pool = dictionary;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_319 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_319, &__block_literal_global_320);
  }

  v3 = sharedInstance_sharedInstance_321;

  return v3;
}

uint64_t __42__CSAudioTimeConverterPool_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_321 = objc_alloc_init(CSAudioTimeConverterPool);

  return MEMORY[0x1EEE66BB8]();
}

@end