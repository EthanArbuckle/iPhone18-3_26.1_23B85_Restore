@interface BMPendingWrite
+ (id)pendingWriteWithEvent:(id)event timestamp:(double)timestamp;
@end

@implementation BMPendingWrite

+ (id)pendingWriteWithEvent:(id)event timestamp:(double)timestamp
{
  eventCopy = event;
  v8 = objc_alloc_init(self);
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 1, event);
    v9[2] = timestamp;
  }

  return v9;
}

@end