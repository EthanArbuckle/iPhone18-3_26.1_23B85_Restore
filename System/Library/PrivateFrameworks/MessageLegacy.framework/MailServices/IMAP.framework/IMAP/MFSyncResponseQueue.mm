@interface MFSyncResponseQueue
- (BOOL)addItem:(id)a3;
@end

@implementation MFSyncResponseQueue

- (BOOL)addItem:(id)a3
{
  if ([a3 responseType] == 17)
  {
    v6.receiver = self;
    v6.super_class = MFSyncResponseQueue;
    -[MFBufferedQueue addItem:](&v6, sel_addItem_, [a3 fetchResults]);
  }

  return 1;
}

@end