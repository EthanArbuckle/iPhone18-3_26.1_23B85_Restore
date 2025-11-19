@interface CBSharedFrameLinkRunLoop
+ (id)addDisplayLinkToRunLoop:(id)a3 forMode:(id)a4;
- (CBSharedFrameLinkRunLoop)initWithDisplayLink:(id)a3 forMode:(id)a4;
- (void)dealloc;
@end

@implementation CBSharedFrameLinkRunLoop

+ (id)addDisplayLinkToRunLoop:(id)a3 forMode:(id)a4
{
  pthread_mutex_lock(&_sharedFrameLinkRunLoopMutex);
  if (_sharedFrameLinkRunLoop)
  {
    v5 = MEMORY[0x1E69E5928](_sharedFrameLinkRunLoop);
    [a3 addToRunLoop:objc_msgSend(v5 forMode:{"getRunLoop"), a4}];
  }

  else
  {
    _sharedFrameLinkRunLoop = [[CBSharedFrameLinkRunLoop alloc] initWithDisplayLink:a3 forMode:a4];
    v5 = _sharedFrameLinkRunLoop;
  }

  pthread_mutex_unlock(&_sharedFrameLinkRunLoopMutex);
  return v5;
}

- (CBSharedFrameLinkRunLoop)initWithDisplayLink:(id)a3 forMode:(id)a4
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12.receiver = self;
  v12.super_class = CBSharedFrameLinkRunLoop;
  v16 = [(CBSharedFrameLinkRunLoop *)&v12 init];
  v11 = objc_alloc_init(MEMORY[0x1E696AB30]);
  if (v11)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x20000000;
    v9 = 32;
    v10 = 0;
    v5 = objc_alloc(MEMORY[0x1E696AF00]);
    v16->_thread = [v5 initWithBlock:?];
    if (v16->_thread)
    {
      [(NSThread *)v16->_thread setQualityOfService:33];
      [(NSThread *)v16->_thread start];
      [(NSThread *)v16->_thread setName:@"com.apple.CoreBrightness.CBFrameLink"];
      [v11 lock];
      while ((v7[3] & 1) == 0)
      {
        [v11 wait];
      }

      [v11 unlock];
      MEMORY[0x1E69E5920](v11);
      v17 = v16;
    }

    else
    {
      MEMORY[0x1E69E5920](v11);
      MEMORY[0x1E69E5920](v16);
      v16 = 0;
      v17 = 0;
    }

    _Block_object_dispose(&v6, 8);
  }

  else
  {
    MEMORY[0x1E69E5920](v16);
    v16 = 0;
    return 0;
  }

  return v17;
}

void __56__CBSharedFrameLinkRunLoop_initWithDisplayLink_forMode___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 16) = [MEMORY[0x1E695DFD0] currentRunLoop];
  [*(a1 + 40) addToRunLoop:*(*(a1 + 32) + 16) forMode:*MEMORY[0x1E695DA28]];
  [*(a1 + 48) lock];
  *(*(*(a1 + 56) + 8) + 24) = 1;
  [*(a1 + 48) signal];
  [*(a1 + 48) unlock];
  CFRunLoopRun();
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  pthread_mutex_lock(&_sharedFrameLinkRunLoopMutex);
  if (v4->_thread)
  {
    MEMORY[0x1E69E5920](v4->_thread);
    v4->_thread = 0;
    _sharedFrameLinkRunLoop = 0;
  }

  v2.receiver = v4;
  v2.super_class = CBSharedFrameLinkRunLoop;
  [(CBSharedFrameLinkRunLoop *)&v2 dealloc];
  pthread_mutex_unlock(&_sharedFrameLinkRunLoopMutex);
}

@end