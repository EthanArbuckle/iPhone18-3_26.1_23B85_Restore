@interface BMPendingWrite
+ (id)pendingWriteWithEvent:(id)a3 timestamp:(double)a4;
@end

@implementation BMPendingWrite

+ (id)pendingWriteWithEvent:(id)a3 timestamp:(double)a4
{
  v7 = a3;
  v8 = objc_alloc_init(a1);
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 1, a3);
    v9[2] = a4;
  }

  return v9;
}

@end