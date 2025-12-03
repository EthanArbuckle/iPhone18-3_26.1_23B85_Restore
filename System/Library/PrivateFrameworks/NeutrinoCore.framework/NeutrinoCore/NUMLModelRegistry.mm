@interface NUMLModelRegistry
- (NUMLModelRegistry)init;
- (id)loadModelAtURL:(id)l options:(unint64_t)options error:(id *)error;
- (id)modelForKey:(id)key;
- (void)registerModel:(id)model forKey:(id)key;
- (void)unregisterModelForKey:(id)key;
@end

@implementation NUMLModelRegistry

- (id)modelForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__28143;
  v16 = __Block_byref_object_dispose__28144;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__NUMLModelRegistry_modelForKey___block_invoke;
  block[3] = &unk_1E810B500;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __33__NUMLModelRegistry_modelForKey___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];

  return MEMORY[0x1EEE66BB8]();
}

- (void)unregisterModelForKey:(id)key
{
  v12 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__NUMLModelRegistry_unregisterModelForKey___block_invoke;
  v8[3] = &unk_1E810B958;
  v8[4] = self;
  v6 = keyCopy;
  v9 = v6;
  dispatch_sync(queue, v8);
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_28145);
  }

  v7 = _NULogger;
  if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_1C0184000, v7, OS_LOG_TYPE_INFO, "Unregistered model for key: %{public}@", buf, 0xCu);
  }
}

- (void)registerModel:(id)model forKey:(id)key
{
  v17 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  keyCopy = key;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__NUMLModelRegistry_registerModel_forKey___block_invoke;
  block[3] = &unk_1E810B3A0;
  block[4] = self;
  v9 = keyCopy;
  v13 = v9;
  v10 = modelCopy;
  v14 = v10;
  dispatch_sync(queue, block);
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_28145);
  }

  v11 = _NULogger;
  if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v16 = v9;
    _os_log_impl(&dword_1C0184000, v11, OS_LOG_TYPE_INFO, "Registered model for key: %{public}@", buf, 0xCu);
  }
}

- (id)loadModelAtURL:(id)l options:(unint64_t)options error:(id *)error
{
  optionsCopy = options;
  lCopy = l;
  v9 = self->_log;
  v10 = v9;
  signpost = self->_signpost;
  if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C0184000, v10, OS_SIGNPOST_INTERVAL_BEGIN, signpost, "NUMLModelRegistry.loadModel", "", buf, 2u);
  }

  v12 = objc_alloc_init(MEMORY[0x1E695FEB0]);
  v13 = v12;
  if (optionsCopy)
  {
    [v12 setUsePrecompiledE5Bundle:1];
  }

  v14 = optionsCopy & 0xE;
  switch(v14)
  {
    case 2:
      v15 = 0;
      goto LABEL_12;
    case 10:
      v15 = 3;
      goto LABEL_12;
    case 6:
      v15 = 1;
LABEL_12:
      [v13 setComputeUnits:v15];
      break;
  }

  v16 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:lCopy configuration:v13 error:error];
  v17 = self->_log;
  v18 = v17;
  v19 = self->_signpost;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *v21 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C0184000, v18, OS_SIGNPOST_INTERVAL_END, v19, "NUMLModelRegistry.loadModel", "", v21, 2u);
  }

  return v16;
}

- (NUMLModelRegistry)init
{
  v11.receiver = self;
  v11.super_class = NUMLModelRegistry;
  v2 = [(NUMLModelRegistry *)&v11 init];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = *(v2 + 1);
  *(v2 + 1) = dictionary;

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("NUMLModelRegistery", v5);
  v7 = *(v2 + 2);
  *(v2 + 2) = v6;

  v8 = os_log_create("com.apple.photos.Neutrino", "MLModelRegistry");
  v9 = *(v2 + 3);
  *(v2 + 3) = v8;

  *(v2 + 4) = os_signpost_id_make_with_pointer(*(v2 + 3), v2);
  return v2;
}

@end