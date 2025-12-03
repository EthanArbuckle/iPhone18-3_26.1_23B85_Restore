@interface JPDataStream
- (JPDataStream)initWithData:(id)data;
@end

@implementation JPDataStream

- (JPDataStream)initWithData:(id)data
{
  dataCopy = data;
  [dataCopy bytes];
  [dataCopy length];
  JetPackCreateDataStream();
}

@end