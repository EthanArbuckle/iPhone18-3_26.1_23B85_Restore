@interface OSALog(OSASubmitterExtension)
- (id)getFilenames;
@end

@implementation OSALog(OSASubmitterExtension)

- (id)getFilenames
{
  filepath = [self filepath];
  lastPathComponent = [filepath lastPathComponent];

  return lastPathComponent;
}

@end