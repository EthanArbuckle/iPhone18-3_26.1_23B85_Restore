@interface OISFUZipFreeSpaceEntry
- (int64_t)compareByOffset:(id)a3;
@end

@implementation OISFUZipFreeSpaceEntry

- (int64_t)compareByOffset:(id)a3
{
  offset = self->offset;
  v4 = *(a3 + 1);
  v5 = offset >= v4;
  v6 = offset > v4;
  if (v5)
  {
    return v6;
  }

  else
  {
    return -1;
  }
}

@end