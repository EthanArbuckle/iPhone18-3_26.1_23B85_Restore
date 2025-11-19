@interface JPFileStream
- (JPFileStream)initWithPath:(id)a3;
@end

@implementation JPFileStream

- (JPFileStream)initWithPath:(id)a3
{
  v4 = a3;
  [a3 fileSystemRepresentation];
  JetPackCreateFileStream();
}

@end