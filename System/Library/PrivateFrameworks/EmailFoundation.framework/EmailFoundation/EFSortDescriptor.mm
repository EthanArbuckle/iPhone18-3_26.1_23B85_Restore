@interface EFSortDescriptor
- (unint64_t)hash;
@end

@implementation EFSortDescriptor

- (unint64_t)hash
{
  v3 = [(EFSortDescriptor *)self key];
  v4 = [v3 hash];

  ascending = [(EFSortDescriptor *)self ascending];
  v6 = NSStringFromSelector([(EFSortDescriptor *)self selector]);
  v7 = [v6 hash] + 193376997;

  return 33 * (33 * v4 + ascending) + v7;
}

@end