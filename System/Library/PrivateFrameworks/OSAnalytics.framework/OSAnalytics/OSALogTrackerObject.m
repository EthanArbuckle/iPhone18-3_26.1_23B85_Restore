@interface OSALogTrackerObject
+ (id)sharedTrackers;
+ (id)tracker;
- (OSALogTrackerObject)init;
@end

@implementation OSALogTrackerObject

+ (id)sharedTrackers
{
  if (sharedTrackers_onceToken != -1)
  {
    +[OSALogTrackerObject sharedTrackers];
  }

  v3 = sharedTrackers_sharedLogTrackers;

  return v3;
}

uint64_t __37__OSALogTrackerObject_sharedTrackers__block_invoke()
{
  v0 = dispatch_semaphore_create(1);
  v1 = sAccountingSemaphore;
  sAccountingSemaphore = v0;

  sharedTrackers_sharedLogTrackers = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

- (OSALogTrackerObject)init
{
  v10.receiver = self;
  v10.super_class = OSALogTrackerObject;
  v2 = [(OSALogTrackerObject *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_count = 1;
    v4 = objc_opt_new();
    signatures = v3->_signatures;
    v3->_signatures = v4;

    v6 = [MEMORY[0x1E695DF00] date];
    oldestDate = v3->_oldestDate;
    v3->_oldestDate = v6;

    oldestLogPath = v3->_oldestLogPath;
    v3->_oldestLogPath = 0;
  }

  return v3;
}

+ (id)tracker
{
  v2 = objc_alloc_init(a1);

  return v2;
}

@end