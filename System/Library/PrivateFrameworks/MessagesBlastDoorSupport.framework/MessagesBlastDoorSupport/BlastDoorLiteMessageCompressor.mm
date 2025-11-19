@interface BlastDoorLiteMessageCompressor
- (BlastDoorLiteMessageCompressor)init;
- (id)compressData:(id)a3 codecID:(int64_t *)a4;
@end

@implementation BlastDoorLiteMessageCompressor

- (id)compressData:(id)a3 codecID:(int64_t *)a4
{
  v7 = a3;
  v8 = self;
  v9 = sub_258D11628(a3, a4);

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