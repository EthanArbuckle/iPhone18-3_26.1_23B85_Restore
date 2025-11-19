@interface RTAuthorizedLocationConfirmationStatusEnumerationOptions
- (RTAuthorizedLocationConfirmationStatusEnumerationOptions)init;
- (RTAuthorizedLocationConfirmationStatusEnumerationOptions)initWithCoder:(id)a3;
- (RTAuthorizedLocationConfirmationStatusEnumerationOptions)initWithOptions:(unint64_t)a3 startDate:(id)a4 endDate:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTAuthorizedLocationConfirmationStatusEnumerationOptions

- (RTAuthorizedLocationConfirmationStatusEnumerationOptions)init
{
  v3.receiver = self;
  v3.super_class = RTAuthorizedLocationConfirmationStatusEnumerationOptions;
  return [(RTAuthorizedLocationConfirmationStatusEnumerationOptions *)&v3 init];
}

- (RTAuthorizedLocationConfirmationStatusEnumerationOptions)initWithOptions:(unint64_t)a3 startDate:(id)a4 endDate:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = RTAuthorizedLocationConfirmationStatusEnumerationOptions;
  v11 = [(RTAuthorizedLocationConfirmationStatusEnumerationOptions *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_batchSize = a3;
    objc_storeStrong(&v11->_startDate, a4);
    objc_storeStrong(&v12->_endDate, a5);
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;

  return [(RTAuthorizedLocationConfirmationStatusEnumerationOptions *)v3 init];
}

- (void)encodeWithCoder:(id)a3
{
  batchSize = self->_batchSize;
  v5 = a3;
  [v5 encodeInteger:batchSize forKey:@"batchSize"];
  [v5 encodeObject:self->_startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
}

- (RTAuthorizedLocationConfirmationStatusEnumerationOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"batchSize"];
  v6 = [v4 decodeObjectForKey:@"startDate"];
  v7 = [v4 decodeObjectForKey:@"endDate"];

  v8 = [(RTAuthorizedLocationConfirmationStatusEnumerationOptions *)self initWithOptions:v5 startDate:v6 endDate:v7];
  return v8;
}

@end