@interface _DPHuffmanEncoder
- (_DPHuffmanEncoder)initWithTableClassName:(id)name maxOutputBitLength:(unint64_t)length;
@end

@implementation _DPHuffmanEncoder

- (_DPHuffmanEncoder)initWithTableClassName:(id)name maxOutputBitLength:(unint64_t)length
{
  v5 = [_DPLog framework:name];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_DPHuffmanEncoder initWithTableClassName:v5 maxOutputBitLength:?];
  }

  return 0;
}

@end