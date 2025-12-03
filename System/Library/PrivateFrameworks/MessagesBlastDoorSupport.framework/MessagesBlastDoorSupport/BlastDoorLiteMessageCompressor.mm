@interface BlastDoorLiteMessageCompressor
- (BlastDoorLiteMessageCompressor)init;
- (id)compressData:(id)data codecID:(int64_t *)d;
@end

@implementation BlastDoorLiteMessageCompressor

- (id)compressData:(id)data codecID:(int64_t *)d
{
  dataCopy = data;
  selfCopy = self;
  v9 = sub_258D11628(data, d);

  return v9;
}

- (BlastDoorLiteMessageCompressor)init
{
  LiteMessageCompressor.init()();
  v4.receiver = self;
  v4.super_class = type metadata accessor for BlastDoorLiteMessageCompressor();
  return [(BlastDoorLiteMessageCompressor *)&v4 init];
}

@end