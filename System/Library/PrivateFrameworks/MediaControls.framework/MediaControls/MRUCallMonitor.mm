@interface MRUCallMonitor
+ (MRUCallMonitor)sharedMonitor;
- (BOOL)isCallActive;
- (MRUCallMonitor)init;
- (void)setOnCall:(BOOL)a3;
- (void)updateOnCall;
@end

@implementation MRUCallMonitor

- (void)updateOnCall
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__MRUCallMonitor_updateOnCall__block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __30__MRUCallMonitor_updateOnCall__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isCallActive];
  v3 = *(a1 + 32);

  return [v3 setOnCall:v2];
}

- (BOOL)isCallActive
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(CXCallObserver *)self->_callObserver calls];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v7 + 1) + 8 * i) hasEnded])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

+ (MRUCallMonitor)sharedMonitor
{
  if (sharedMonitor___once != -1)
  {
    +[MRUCallMonitor sharedMonitor];
  }

  v3 = sharedMonitor___sharedMonitor;

  return v3;
}

uint64_t __31__MRUCallMonitor_sharedMonitor__block_invoke()
{
  v0 = objc_alloc_init(MRUCallMonitor);
  v1 = sharedMonitor___sharedMonitor;
  sharedMonitor___sharedMonitor = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (MRUCallMonitor)init
{
  v11.receiver = self;
  v11.super_class = MRUCallMonitor;
  v2 = [(MRUCallMonitor *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.amp.MediaRemote.UI.MRUCallMonitor.shared", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695AEF8]);
    callObserver = v2->_callObserver;
    v2->_callObserver = v8;

    [(CXCallObserver *)v2->_callObserver setDelegate:v2 queue:v2->_queue];
    [(MRUCallMonitor *)v2 updateOnCall];
  }

  return v2;
}

- (void)setOnCall:(BOOL)a3
{
  if (self->_onCall != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_onCall = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __28__MRUCallMonitor_setOnCall___block_invoke;
    v5[3] = &unk_1E7663F38;
    v5[4] = self;
    v6 = a3;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

void __28__MRUCallMonitor_setOnCall___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 copy];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) callMonitorDidUpdateOnCall:*(a1 + 32) isOnCall:*(a1 + 40)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end