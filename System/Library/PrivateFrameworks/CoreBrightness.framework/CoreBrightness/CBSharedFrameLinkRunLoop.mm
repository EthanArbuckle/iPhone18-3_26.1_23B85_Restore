@interface CBSharedFrameLinkRunLoop
+ (id)addDisplayLinkToRunLoop:(id)loop forMode:(id)mode;
- (CBSharedFrameLinkRunLoop)initWithDisplayLink:(id)link forMode:(id)mode;
- (void)dealloc;
@end

@implementation CBSharedFrameLinkRunLoop

+ (id)addDisplayLinkToRunLoop:(id)loop forMode:(id)mode
{
  pthread_mutex_lock(&_sharedFrameLinkRunLoopMutex);
  if (_sharedFrameLinkRunLoop)
  {
    v5 = MEMORY[0x1E69E5928](_sharedFrameLinkRunLoop);
    [loop addToRunLoop:objc_msgSend(v5 forMode:{"getRunLoop"), mode}];
  }

  else
  {
    _sharedFrameLinkRunLoop = [[CBSharedFrameLinkRunLoop alloc] initWithDisplayLink:loop forMode:mode];
    v5 = _sharedFrameLinkRunLoop;
  }

  pthread_mutex_unlock(&_sharedFrameLinkRunLoopMutex);
  return v5;
}

- (CBSharedFrameLinkRunLoop)initWithDisplayLink:(id)link forMode:(id)mode
{
  selfCopy = self;
  v15 = a2;
  linkCopy = link;
  modeCopy = mode;
  v12.receiver = self;
  v12.super_class = CBSharedFrameLinkRunLoop;
  selfCopy = [(CBSharedFrameLinkRunLoop *)&v12 init];
  v11 = objc_alloc_init(MEMORY[0x1E696AB30]);
  if (v11)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x20000000;
    v9 = 32;
    v10 = 0;
    v5 = objc_alloc(MEMORY[0x1E696AF00]);
    selfCopy->_thread = [v5 initWithBlock:?];
    if (selfCopy->_thread)
    {
      [(NSThread *)selfCopy->_thread setQualityOfService:33];
      [(NSThread *)selfCopy->_thread start];
      [(NSThread *)selfCopy->_thread setName:@"com.apple.CoreBrightness.CBFrameLink"];
      [v11 lock];
      while ((v7[3] & 1) == 0)
      {
        [v11 wait];
      }

      [v11 unlock];
      MEMORY[0x1E69E5920](v11);
      v17 = selfCopy;
    }

    else
    {
      MEMORY[0x1E69E5920](v11);
      MEMORY[0x1E69E5920](selfCopy);
      selfCopy = 0;
      v17 = 0;
    }

    _Block_object_dispose(&v6, 8);
  }

  else
  {
    MEMORY[0x1E69E5920](selfCopy);
    selfCopy = 0;
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
  selfCopy = self;
  v3 = a2;
  pthread_mutex_lock(&_sharedFrameLinkRunLoopMutex);
  if (selfCopy->_thread)
  {
    MEMORY[0x1E69E5920](selfCopy->_thread);
    selfCopy->_thread = 0;
    _sharedFrameLinkRunLoop = 0;
  }

  v2.receiver = selfCopy;
  v2.super_class = CBSharedFrameLinkRunLoop;
  [(CBSharedFrameLinkRunLoop *)&v2 dealloc];
  pthread_mutex_unlock(&_sharedFrameLinkRunLoopMutex);
}

@end