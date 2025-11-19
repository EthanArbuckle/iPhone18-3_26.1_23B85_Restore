@interface BUEncodedBlockInfoInternal
- (BOOL)isEqual:(id)a3;
- (BUEncodedBlockInfoInternal)initWithEncodedLength:(unint64_t)a3;
- (NSString)description;
@end

@implementation BUEncodedBlockInfoInternal

- (BUEncodedBlockInfoInternal)initWithEncodedLength:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = BUEncodedBlockInfoInternal;
  result = [(BUEncodedBlockInfoInternal *)&v5 init];
  if (result)
  {
    result->_encodedLength = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = BUProtocolCast(&unk_2853FED10, a3);
  if (v4)
  {
    v5 = BUEncodedBlockInfoAreEqual(self, v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_encodedLength(self, a2, v2);
  v8 = objc_msgSend_decodedLength(self, v6, v7);
  return objc_msgSend_stringWithFormat_(v4, v9, @"[EncodedLength=%zu; DecodedLength=%zu]", v5, v8);
}

@end