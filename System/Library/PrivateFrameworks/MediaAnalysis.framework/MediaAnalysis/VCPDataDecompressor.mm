@interface VCPDataDecompressor
+ (id)decompressor;
- (VCPDataDecompressor)init;
- (id)decompressData:(id)data;
@end

@implementation VCPDataDecompressor

- (VCPDataDecompressor)init
{
  v9.receiver = self;
  v9.super_class = VCPDataDecompressor;
  v2 = [(VCPDataDecompressor *)&v9 init];
  if (v2)
  {
    v3 = compression_decode_scratch_buffer_size(COMPRESSION_ZLIB);
    if (v3)
    {
      v4 = [NSMutableData dataWithLength:v3];
      scratchData = v2->_scratchData;
      v2->_scratchData = v4;
    }

    v6 = [NSMutableData dataWithLength:0x200000];
    resultData = v2->_resultData;
    v2->_resultData = v6;
  }

  return v2;
}

+ (id)decompressor
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)decompressData:(id)data
{
  resultData = self->_resultData;
  dataCopy = data;
  mutableBytes = [(NSMutableData *)resultData mutableBytes];
  v7 = [(NSMutableData *)self->_resultData length];
  bytes = [dataCopy bytes];
  v9 = [dataCopy length];

  v10 = compression_decode_buffer(mutableBytes, v7, bytes, v9, [(NSMutableData *)self->_scratchData mutableBytes], COMPRESSION_ZLIB);
  if (v10)
  {
    v10 = [NSData dataWithBytesNoCopy:[(NSMutableData *)self->_resultData mutableBytes] length:v10 freeWhenDone:0];
  }

  return v10;
}

@end