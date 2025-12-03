@interface CLKUIMetalAtlas
+ (id)_allocateMTLTextureWithBacking:(id)backing numMipmapLevelsToDrop:(unint64_t)drop device:(id)device;
+ (id)_uploadMTLTexture:(id)texture withBacking:(id)backing numMipmapLevelsToDrop:(unint64_t)drop device:(id)device encoder:(id)encoder;
+ (id)createMTLTextureWithBacking:(id)backing numMipmapLevelsToDrop:(unint64_t)drop device:(id)device encoder:(id)encoder;
+ (unint64_t)_computeMTLTextureMemoryUsageWithBacking:(id)backing numMipmapLevelsToDrop:(unint64_t)drop;
- (CLKUIMetalAtlas)initWithUuid:(id)uuid nilTexture:(id)texture streaming:(BOOL)streaming;
- (void)bind:(id)bind slot:(unint64_t)slot;
- (void)dealloc;
- (void)finishPrewarm;
- (void)prewarm;
- (void)purge;
- (void)updateTextureStreaming;
@end

@implementation CLKUIMetalAtlas

- (CLKUIMetalAtlas)initWithUuid:(id)uuid nilTexture:(id)texture streaming:(BOOL)streaming
{
  textureCopy = texture;
  v13.receiver = self;
  v13.super_class = CLKUIMetalAtlas;
  v10 = [(CLKUIAtlas *)&v13 initWithUuid:uuid];
  v11 = v10;
  if (v10)
  {
    v10->_mainQueue_prewarmState = 0;
    objc_storeStrong(&v10->_nilTexture, texture);
    v11->_streaming = streaming;
    v11->_needsStreaming = streaming;
  }

  return v11;
}

- (void)dealloc
{
  [(CLKUIMetalAtlas *)self purge];
  if (self->_loaderQueue)
  {
    v3 = +[CLKUIResourceManager sharedInstance];
    [v3 returnTextureLoadingQueue:self->_loaderQueue];

    loaderQueue = self->_loaderQueue;
    self->_loaderQueue = 0;
  }

  if (self->_texture)
  {
    [CLKUIMetalAtlas dealloc];
  }

  v5.receiver = self;
  v5.super_class = CLKUIMetalAtlas;
  [(CLKUIMetalAtlas *)&v5 dealloc];
}

+ (unint64_t)_computeMTLTextureMemoryUsageWithBacking:(id)backing numMipmapLevelsToDrop:(unint64_t)drop
{
  backingCopy = backing;
  if (backingCopy)
  {
    [backingCopy structure];
    +[CLKUIMetalAtlas _computeMTLTextureMemoryUsageWithBacking:numMipmapLevelsToDrop:];
  }

  return 0;
}

+ (id)_allocateMTLTextureWithBacking:(id)backing numMipmapLevelsToDrop:(unint64_t)drop device:(id)device
{
  backingCopy = backing;
  deviceCopy = device;
  if (backingCopy)
  {
    kdebug_trace();
    [backingCopy structure];
    +[CLKUIMetalAtlas _allocateMTLTextureWithBacking:numMipmapLevelsToDrop:device:];
  }

  return 0;
}

+ (id)_uploadMTLTexture:(id)texture withBacking:(id)backing numMipmapLevelsToDrop:(unint64_t)drop device:(id)device encoder:(id)encoder
{
  textureCopy = texture;
  backingCopy = backing;
  deviceCopy = device;
  encoderCopy = encoder;
  if (backingCopy)
  {
    kdebug_trace();
    [backingCopy structure];
    +[CLKUIMetalAtlas _uploadMTLTexture:withBacking:numMipmapLevelsToDrop:device:encoder:];
  }

  return 0;
}

+ (id)createMTLTextureWithBacking:(id)backing numMipmapLevelsToDrop:(unint64_t)drop device:(id)device encoder:(id)encoder
{
  backingCopy = backing;
  deviceCopy = device;
  encoderCopy = encoder;
  v12 = [CLKUIMetalAtlas _allocateMTLTextureWithBacking:backingCopy numMipmapLevelsToDrop:drop device:deviceCopy];
  v13 = [CLKUIMetalAtlas _uploadMTLTexture:v12 withBacking:backingCopy numMipmapLevelsToDrop:drop device:deviceCopy encoder:encoderCopy];

  return v12;
}

- (void)prewarm
{
  v13 = *MEMORY[0x1E69E9840];
  uuid = [self uuid];
  v6 = @"none";
  if (*a2 == 1)
  {
    v6 = @"prewarming";
  }

  if (*a2 == 2)
  {
    v7 = @"prewarmed";
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;
  v9 = 138412546;
  v10 = uuid;
  v11 = 2112;
  v12 = v8;
  _os_log_error_impl(&dword_1E49C8000, a3, OS_LOG_TYPE_ERROR, "Not prewarming %@ because prewarmState = %@, but the texture is already loaded", &v9, 0x16u);
}

void __26__CLKUIMetalAtlas_prewarm__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [CLKUIMetalAtlas createMTLTextureWithBacking:*(a1 + 32) numMipmapLevelsToDrop:*(a1 + 56) device:*(a1 + 40) encoder:0];
    v4 = WeakRetained[16];
    WeakRetained[16] = v3;

    v5 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [WeakRetained uuid];
      *buf = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1E49C8000, v5, OS_LOG_TYPE_DEFAULT, "Finished prewarming texture %@", buf, 0xCu);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __26__CLKUIMetalAtlas_prewarm__block_invoke_22;
    block[3] = &unk_1E8762C10;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __26__CLKUIMetalAtlas_prewarm__block_invoke_22(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 136) == 1)
  {
    *(v1 + 136) = 2;
  }

  return result;
}

- (void)finishPrewarm
{
  if (self->_loaderQueue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__CLKUIMetalAtlas_finishPrewarm__block_invoke;
    block[3] = &unk_1E8762C10;
    block[4] = self;
    v3 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
    dispatch_sync(self->_loaderQueue, v3);
    v4 = +[CLKUIResourceManager sharedInstance];
    [v4 returnTextureLoadingQueue:self->_loaderQueue];

    loaderQueue = self->_loaderQueue;
    self->_loaderQueue = 0;
  }
}

void __32__CLKUIMetalAtlas_finishPrewarm__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = CLKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) uuid];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1E49C8000, v2, OS_LOG_TYPE_DEFAULT, "Loading prewarmed texture %@", &v6, 0xCu);
  }

  objc_storeStrong((*(a1 + 32) + 80), *(*(a1 + 32) + 128));
  v4 = *(a1 + 32);
  v5 = *(v4 + 128);
  *(v4 + 128) = 0;

  *(*(a1 + 32) + 136) = 2;
}

- (void)bind:(id)bind slot:(unint64_t)slot
{
  v72 = *MEMORY[0x1E69E9840];
  bindCopy = bind;
  uuid = [(CLKUIAtlas *)self uuid];

  if (!uuid)
  {
    goto LABEL_48;
  }

  if (self->_loaderQueue)
  {
    [(CLKUIMetalAtlas *)self finishPrewarm];
  }

  if (self->_streaming)
  {
    if (self->_needsStreaming)
    {
      self->_needsStreaming = 0;
      backing = [(CLKUIAtlas *)self backing];
      if (backing)
      {
        numMipmapLevelsDropped = self->_numMipmapLevelsDropped;
        v10 = [CLKUIMetalAtlas _computeMTLTextureMemoryUsageWithBacking:backing numMipmapLevelsToDrop:numMipmapLevelsDropped];
        v59 = +[CLKUIResourceManager sharedInstance];
        v11 = v10;
        if (([v59 ensureMemoryAvailable:v10] & 1) == 0)
        {
          v12 = CLKLoggingObjectForDomain();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            uuid2 = [(CLKUIAtlas *)self uuid];
            *buf = 138412290;
            v71 = uuid2;
            _os_log_impl(&dword_1E49C8000, v12, OS_LOG_TYPE_DEFAULT, "failed to ensure enough memory for %@", buf, 0xCu);
          }
        }

        device = [bindCopy device];
        v15 = device;
        if (device)
        {
          v16 = device;
        }

        else
        {
          v16 = +[CLKUIMetalResourceManager sharedDevice];
        }

        v29 = v16;

        v30 = [CLKUIMetalAtlas _allocateMTLTextureWithBacking:backing numMipmapLevelsToDrop:numMipmapLevelsDropped device:v29];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __29__CLKUIMetalAtlas_bind_slot___block_invoke;
        aBlock[3] = &unk_1E8762A30;
        aBlock[4] = self;
        v31 = v30;
        v69 = v31;
        v32 = _Block_copy(aBlock);
        v33 = _Block_copy(v32);
        streamingCompletionBlock = self->_streamingCompletionBlock;
        self->_streamingCompletionBlock = v33;

        v35 = +[CLKUIMetalResourceManager textureStreamingQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __29__CLKUIMetalAtlas_bind_slot___block_invoke_2;
        block[3] = &unk_1E8763100;
        v61 = v31;
        backing = backing;
        v67 = numMipmapLevelsDropped;
        v62 = backing;
        v63 = v29;
        v58 = bindCopy;
        v64 = v58;
        selfCopy = self;
        v66 = v32;
        v36 = v32;
        v37 = v29;
        v38 = v31;
        dispatch_async(v35, block);

        self->_mainQueue_prewarmState = 2;
        [(CLKUIAtlas *)self setStatus:3];
        [v59 notifyAtlas:self willChangeToMemoryCost:v11];
        [(CLKUIAtlas *)self setMemoryCost:v11];

        if (!self->_texture)
        {
          v39 = v58;
          width = [backing width];
          height = [backing height];
          v42 = 0;
          while (width > [(CLKUIAtlas *)self maxPlaceholderSize]|| height > [(CLKUIAtlas *)self maxPlaceholderSize])
          {
            ++v42;
            width >>= 1;
            height >>= 1;
          }

          if (self->_numMipmapLevelsDropped <= v42)
          {
            v43 = v42;
          }

          else
          {
            v43 = self->_numMipmapLevelsDropped;
          }

          device2 = [v39 device];
          v45 = device2;
          if (device2)
          {
            v46 = device2;
          }

          else
          {
            v46 = +[CLKUIMetalResourceManager sharedDevice];
          }

          v50 = v46;

          v51 = [CLKUIMetalAtlas createMTLTextureWithBacking:backing numMipmapLevelsToDrop:v43 device:v50 encoder:v39];
          texture = self->_texture;
          self->_texture = v51;

          if (self->_mainQueue_prewarmState != 2)
          {
            [CLKUIMetalAtlas bind:slot:];
          }

          if ([(CLKUIAtlas *)self status]!= 3)
          {
            [CLKUIMetalAtlas bind:slot:];
          }
        }
      }
    }

    else
    {
      backing = 0;
    }

    if (+[CLKUIMetalResourceManager synchronousTextureStreamingEnabled])
    {
      v53 = self->_streamingCompletionBlock;
      if (v53)
      {
        v54 = _Block_copy(v53);
        v55 = self->_streamingCompletionBlock;
        self->_streamingCompletionBlock = 0;

        v56 = +[CLKUIMetalResourceManager textureStreamingQueue];
        dispatch_sync(v56, &__block_literal_global_12);

        v54[2](v54);
      }
    }
  }

  else if (!self->_texture)
  {
    v17 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      uuid3 = [(CLKUIAtlas *)self uuid];
      *buf = 138412290;
      v71 = uuid3;
      _os_log_impl(&dword_1E49C8000, v17, OS_LOG_TYPE_DEFAULT, "Texure not prewarmed. %@", buf, 0xCu);
    }

    backing2 = [(CLKUIAtlas *)self backing];
    if (backing2)
    {
      v20 = self->_numMipmapLevelsDropped;
      v21 = [CLKUIMetalAtlas _computeMTLTextureMemoryUsageWithBacking:backing2 numMipmapLevelsToDrop:v20];
      v22 = +[CLKUIResourceManager sharedInstance];
      if (([v22 ensureMemoryAvailable:v21] & 1) == 0)
      {
        v23 = CLKLoggingObjectForDomain();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          uuid4 = [(CLKUIAtlas *)self uuid];
          *buf = 138412290;
          v71 = uuid4;
          v25 = uuid4;
          _os_log_impl(&dword_1E49C8000, v23, OS_LOG_TYPE_DEFAULT, "failed to ensure enough memory for %@", buf, 0xCu);
        }
      }

      device3 = [bindCopy device];
      v27 = device3;
      if (device3)
      {
        v28 = device3;
      }

      else
      {
        v28 = +[CLKUIMetalResourceManager sharedDevice];
      }

      v47 = v28;

      v48 = [CLKUIMetalAtlas createMTLTextureWithBacking:backing2 numMipmapLevelsToDrop:v20 device:v47 encoder:bindCopy];
      v49 = self->_texture;
      self->_texture = v48;

      self->_mainQueue_prewarmState = 2;
      [(CLKUIAtlas *)self setStatus:3];
      [v22 notifyAtlas:self willChangeToMemoryCost:v21];
      [(CLKUIAtlas *)self setMemoryCost:v21];
    }
  }

  if (self->_texture)
  {
    [(CLKUIAtlas *)self setBoundTime:CACurrentMediaTime()];
    nilTexture = self->_texture;
  }

  else
  {
LABEL_48:
    nilTexture = self->_nilTexture;
  }

  [bindCopy setFragmentTexture:nilTexture atIndex:slot];
}

void __29__CLKUIMetalAtlas_bind_slot___block_invoke_2(void *a1)
{
  v2 = [CLKUIMetalAtlas _uploadMTLTexture:a1[4] withBacking:a1[5] numMipmapLevelsToDrop:a1[10] device:a1[6] encoder:a1[7]];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__CLKUIMetalAtlas_bind_slot___block_invoke_3;
  v4[3] = &unk_1E87630D8;
  v3 = a1[9];
  v4[4] = a1[8];
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

void __29__CLKUIMetalAtlas_bind_slot___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 112);
  if (v3 == v2)
  {
    (*(v3 + 16))();
    v4 = *(a1 + 32);
    v5 = *(v4 + 112);
    *(v4 + 112) = 0;
  }
}

- (void)purge
{
  uuid = [(CLKUIAtlas *)self uuid];

  if (uuid)
  {
    if (self->_loaderQueue)
    {
      [(CLKUIMetalAtlas *)self finishPrewarm];
    }

    if (self->_streaming)
    {
      if ([(CLKUIAtlas *)self isPurgable])
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __24__CLKUIMetalAtlas_purge__block_invoke;
        aBlock[3] = &unk_1E8762C10;
        aBlock[4] = self;
        v4 = _Block_copy(aBlock);
        v5 = _Block_copy(v4);
        streamingCompletionBlock = self->_streamingCompletionBlock;
        self->_streamingCompletionBlock = v5;

        v7 = +[CLKUIMetalResourceManager textureStreamingQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __24__CLKUIMetalAtlas_purge__block_invoke_2;
        block[3] = &unk_1E87630D8;
        block[4] = self;
        v13 = v4;
        v8 = v4;
        dispatch_async(v7, block);

        self->_needsStreaming = 1;
        [(CLKUIAtlas *)self setStatus:4];
        v9 = +[CLKUIResourceManager sharedInstance];
        [v9 notifyAtlas:self willChangeToMemoryCost:0];
        [(CLKUIAtlas *)self setMemoryCost:0];
        self->_mainQueue_prewarmState = 0;
      }
    }

    else if (self->_texture && [(CLKUIAtlas *)self isPurgable])
    {
      texture = self->_texture;
      self->_texture = 0;

      [(CLKUIAtlas *)self setStatus:4];
      v11 = +[CLKUIResourceManager sharedInstance];
      [v11 notifyAtlas:self willChangeToMemoryCost:0];
      [(CLKUIAtlas *)self setMemoryCost:0];
      self->_mainQueue_prewarmState = 0;
    }
  }
}

void __24__CLKUIMetalAtlas_purge__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  *(v1 + 80) = 0;
}

void __24__CLKUIMetalAtlas_purge__block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __24__CLKUIMetalAtlas_purge__block_invoke_3;
  v2[3] = &unk_1E87630D8;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

void __24__CLKUIMetalAtlas_purge__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 112);
  if (v3 == v2)
  {
    (*(v3 + 16))();
    v4 = *(a1 + 32);
    v5 = *(v4 + 112);
    *(v4 + 112) = 0;
  }
}

- (void)updateTextureStreaming
{
  maxMipmapLevelsToDrop = [(CLKUIAtlas *)self maxMipmapLevelsToDrop];
  numMipmapLevelsDropped = self->_numMipmapLevelsDropped;
  if (maxMipmapLevelsToDrop != numMipmapLevelsDropped)
  {
    v5 = numMipmapLevelsDropped - (maxMipmapLevelsToDrop != 0);
    v6 = numMipmapLevelsDropped + 1;
    if (maxMipmapLevelsToDrop <= v5 || maxMipmapLevelsToDrop > v6)
    {
      self->_numMipmapLevelsDropped = maxMipmapLevelsToDrop;
      self->_needsStreaming = 1;
    }
  }

  if (!+[CLKUIMetalResourceManager synchronousTextureStreamingEnabled])
  {
    v8 = CACurrentMediaTime();
    [(CLKUIAtlas *)self boundTime];
    v10 = v9;
    if ([(CLKUIAtlas *)self isPurgable])
    {
      if (v8 - v10 > 1.0)
      {

        [(CLKUIMetalAtlas *)self purge];
      }
    }
  }
}

@end