@interface OSALog(OSASubmitterExtension)
- (id)getFilenames;
@end

@implementation OSALog(OSASubmitterExtension)

- (id)getFilenames
{
  v1 = [a1 filepath];
  v2 = [v1 lastPathComponent];

  return v2;
}

@end