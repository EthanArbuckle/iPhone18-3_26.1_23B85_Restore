@interface NTKSnapshotFileQueue
+ (NTKSnapshotFileQueue)defaultFileQueue;
- (NTKSnapshotFileQueue)init;
@end

@implementation NTKSnapshotFileQueue

+ (NTKSnapshotFileQueue)defaultFileQueue
{
  if (defaultFileQueue_onceToken != -1)
  {
    +[NTKSnapshotFileQueue defaultFileQueue];
  }

  v3 = defaultFileQueue___fileQueue;

  return v3;
}

void __40__NTKSnapshotFileQueue_defaultFileQueue__block_invoke()
{
  v0 = objc_opt_new();
  v1 = defaultFileQueue___fileQueue;
  defaultFileQueue___fileQueue = v0;
}

- (NTKSnapshotFileQueue)init
{
  v6.receiver = self;
  v6.super_class = NTKSnapshotFileQueue;
  v2 = [(NTKSnapshotFileQueue *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.nanotimekit.composablesnapshotting.filequeue", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

@end