@interface _DPHuffmanEncoder
- (_DPHuffmanEncoder)initWithTableClassName:(id)a3 maxOutputBitLength:(unint64_t)a4;
@end

@implementation _DPHuffmanEncoder

- (_DPHuffmanEncoder)initWithTableClassName:(id)a3 maxOutputBitLength:(unint64_t)a4
{
  v5 = [_DPLog framework:a3];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_DPHuffmanEncoder initWithTableClassName:v5 maxOutputBitLength:?];
  }

  return 0;
}

@end