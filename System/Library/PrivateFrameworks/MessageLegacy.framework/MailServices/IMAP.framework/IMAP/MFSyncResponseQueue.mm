@interface MFSyncResponseQueue
- (BOOL)addItem:(id)item;
@end

@implementation MFSyncResponseQueue

- (BOOL)addItem:(id)item
{
  if ([item responseType] == 17)
  {
    v6.receiver = self;
    v6.super_class = MFSyncResponseQueue;
    -[MFBufferedQueue addItem:](&v6, sel_addItem_, [item fetchResults]);
  }

  return 1;
}

@end