@interface VCPDataCompressor
+ (id)compressor;
- (VCPDataCompressor)init;
- (id)compressData:(id)a3;
@end

@implementation VCPDataCompressor

- (VCPDataCompressor)init
{
  v9.receiver = self;
  v9.super_class = VCPDataCompressor;
  v2 = [(VCPDataCompressor *)&v9 init];
  if (v2)
  {
    v3 = compression_encode_scratch_buffer_size(COMPRESSION_ZLIB);
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

+ (id)compressor
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)compressData:(id)a3
{
  resultData = self->_resultData;
  v5 = a3;
  v6 = [(NSMutableData *)resultData mutableBytes];
  v7 = [(NSMutableData *)self->_resultData length];
  v8 = [v5 bytes];
  v9 = [v5 length];

  v10 = compression_encode_buffer(v6, v7, v8, v9, [(NSMutableData *)self->_scratchData mutableBytes], COMPRESSION_ZLIB);
  if (v10)
  {
    v10 = [NSData dataWithBytesNoCopy:[(NSMutableData *)self->_resultData mutableBytes] length:v10 freeWhenDone:0];
  }

  return v10;
}

@end