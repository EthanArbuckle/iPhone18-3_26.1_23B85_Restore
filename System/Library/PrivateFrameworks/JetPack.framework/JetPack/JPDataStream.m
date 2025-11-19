@interface JPDataStream
- (JPDataStream)initWithData:(id)a3;
@end

@implementation JPDataStream

- (JPDataStream)initWithData:(id)a3
{
  v3 = a3;
  [v3 bytes];
  [v3 length];
  JetPackCreateDataStream();
}

@end