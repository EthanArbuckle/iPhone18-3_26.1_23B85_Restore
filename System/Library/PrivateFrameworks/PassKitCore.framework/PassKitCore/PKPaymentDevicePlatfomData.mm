@interface PKPaymentDevicePlatfomData
- (PKPaymentDevicePlatfomData)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentDevicePlatfomData

- (PKPaymentDevicePlatfomData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPaymentDevicePlatfomData;
  v5 = [(PKPaymentDevicePlatfomData *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"platformData"];
    platformData = v5->_platformData;
    v5->_platformData = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"platformDataSignature"];
    platformDataSignature = v5->_platformDataSignature;
    v5->_platformDataSignature = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  platformData = self->_platformData;
  coderCopy = coder;
  [coderCopy encodeObject:platformData forKey:@"platformData"];
  [coderCopy encodeObject:self->_platformDataSignature forKey:@"platformDataSignature"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPaymentDevicePlatfomData allocWithZone:](PKPaymentDevicePlatfomData init];
  v6 = [(NSData *)self->_platformData copyWithZone:zone];
  platformData = v5->_platformData;
  v5->_platformData = v6;

  v8 = [(NSData *)self->_platformDataSignature copyWithZone:zone];
  platformDataSignature = v5->_platformDataSignature;
  v5->_platformDataSignature = v8;

  return v5;
}

@end