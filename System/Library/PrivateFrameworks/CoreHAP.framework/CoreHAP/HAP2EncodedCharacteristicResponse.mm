@interface HAP2EncodedCharacteristicResponse
- (HAP2EncodedCharacteristicResponse)initWithCharacteristics:(id)a3;
- (NSArray)characteristics;
@end

@implementation HAP2EncodedCharacteristicResponse

- (NSArray)characteristics
{
  if (self)
  {
    self = self->_responses;
  }

  return self;
}

- (HAP2EncodedCharacteristicResponse)initWithCharacteristics:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HAP2EncodedCharacteristicResponse;
  v6 = [(HAP2EncodedCharacteristicResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_responses, a3);
  }

  return v7;
}

@end