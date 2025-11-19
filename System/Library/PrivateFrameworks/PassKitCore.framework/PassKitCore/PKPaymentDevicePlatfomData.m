@interface PKPaymentDevicePlatfomData
- (PKPaymentDevicePlatfomData)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentDevicePlatfomData

- (PKPaymentDevicePlatfomData)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPaymentDevicePlatfomData;
  v5 = [(PKPaymentDevicePlatfomData *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"platformData"];
    platformData = v5->_platformData;
    v5->_platformData = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"platformDataSignature"];
    platformDataSignature = v5->_platformDataSignature;
    v5->_platformDataSignature = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  platformData = self->_platformData;
  v5 = a3;
  [v5 encodeObject:platformData forKey:@"platformData"];
  [v5 encodeObject:self->_platformDataSignature forKey:@"platformDataSignature"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPaymentDevicePlatfomData allocWithZone:](PKPaymentDevicePlatfomData init];
  v6 = [(NSData *)self->_platformData copyWithZone:a3];
  platformData = v5->_platformData;
  v5->_platformData = v6;

  v8 = [(NSData *)self->_platformDataSignature copyWithZone:a3];
  platformDataSignature = v5->_platformDataSignature;
  v5->_platformDataSignature = v8;

  return v5;
}

@end