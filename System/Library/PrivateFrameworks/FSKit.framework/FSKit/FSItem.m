@interface FSItem
- (FSItem)init;
@end

@implementation FSItem

- (FSItem)init
{
  v7.receiver = self;
  v7.super_class = FSItem;
  v2 = [(FSItem *)&v7 init];
  if (v2)
  {
    v3 = [FSFileHandle alloc];
    atomic_fetch_add(&fileHandleCounter, 1uLL);
    v4 = [(FSFileHandle *)v3 initWithValue:?];
    fileHandle = v2->_fileHandle;
    v2->_fileHandle = v4;
  }

  return v2;
}

@end