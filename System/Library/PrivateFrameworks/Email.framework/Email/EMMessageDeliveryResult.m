@interface EMMessageDeliveryResult
- (EMMessageDeliveryResult)initWithCoder:(id)a3;
- (EMMessageDeliveryResult)initWithStatus:(int64_t)a3 error:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMMessageDeliveryResult

- (EMMessageDeliveryResult)initWithStatus:(int64_t)a3 error:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = EMMessageDeliveryResult;
  v8 = [(EMMessageDeliveryResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_status = a3;
    objc_storeStrong(&v8->_error, a4);
  }

  return v9;
}

- (EMMessageDeliveryResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"EFPropertyKey_status"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_error"];
  v7 = [(EMMessageDeliveryResult *)self initWithStatus:v5 error:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:-[EMMessageDeliveryResult status](self forKey:{"status"), @"EFPropertyKey_status"}];
  v4 = [(EMMessageDeliveryResult *)self error];
  [v5 encodeObject:v4 forKey:@"EFPropertyKey_error"];
}

@end