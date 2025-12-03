@interface JPFileStream
- (JPFileStream)initWithPath:(id)path;
@end

@implementation JPFileStream

- (JPFileStream)initWithPath:(id)path
{
  pathCopy = path;
  [path fileSystemRepresentation];
  JetPackCreateFileStream();
}

@end