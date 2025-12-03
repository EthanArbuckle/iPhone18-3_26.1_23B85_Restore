@interface BUEncodedBlockInfoWithDecodedLengthInternal
- (BUEncodedBlockInfoWithDecodedLengthInternal)initWithEncodedLength:(unint64_t)length decodedLength:(unint64_t)decodedLength;
@end

@implementation BUEncodedBlockInfoWithDecodedLengthInternal

- (BUEncodedBlockInfoWithDecodedLengthInternal)initWithEncodedLength:(unint64_t)length decodedLength:(unint64_t)decodedLength
{
  v6.receiver = self;
  v6.super_class = BUEncodedBlockInfoWithDecodedLengthInternal;
  result = [(BUEncodedBlockInfoInternal *)&v6 initWithEncodedLength:length];
  if (result)
  {
    result->_decodedLength = decodedLength;
  }

  return result;
}

@end