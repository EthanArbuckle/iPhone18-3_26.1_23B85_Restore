@interface MFSyncResponseQueue
- (BOOL)addItem:(id)item;
@end

@implementation MFSyncResponseQueue

- (BOOL)addItem:(id)item
{
  itemCopy = item;
  if ([itemCopy responseType] == 17)
  {
    fetchResults = [itemCopy fetchResults];
    v7.receiver = self;
    v7.super_class = MFSyncResponseQueue;
    [(MFBufferedQueue *)&v7 addItem:fetchResults];
  }

  return 1;
}

@end