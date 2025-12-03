@interface EMMessageDeliveryResult
- (EMMessageDeliveryResult)initWithCoder:(id)coder;
- (EMMessageDeliveryResult)initWithStatus:(int64_t)status error:(id)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMMessageDeliveryResult

- (EMMessageDeliveryResult)initWithStatus:(int64_t)status error:(id)error
{
  errorCopy = error;
  v11.receiver = self;
  v11.super_class = EMMessageDeliveryResult;
  v8 = [(EMMessageDeliveryResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_status = status;
    objc_storeStrong(&v8->_error, error);
  }

  return v9;
}

- (EMMessageDeliveryResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"EFPropertyKey_status"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_error"];
  v7 = [(EMMessageDeliveryResult *)self initWithStatus:v5 error:v6];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[EMMessageDeliveryResult status](self forKey:{"status"), @"EFPropertyKey_status"}];
  error = [(EMMessageDeliveryResult *)self error];
  [coderCopy encodeObject:error forKey:@"EFPropertyKey_error"];
}

@end