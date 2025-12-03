@interface MBDatabaseIndexEntry
- (MBDatabaseIndexEntry)initWithOffset:(int64_t)offset flags:(unint64_t)flags;
@end

@implementation MBDatabaseIndexEntry

- (MBDatabaseIndexEntry)initWithOffset:(int64_t)offset flags:(unint64_t)flags
{
  v7.receiver = self;
  v7.super_class = MBDatabaseIndexEntry;
  result = [(MBDatabaseIndexEntry *)&v7 init];
  if (result)
  {
    result->_offset = offset;
    result->_flags = flags;
  }

  return result;
}

@end