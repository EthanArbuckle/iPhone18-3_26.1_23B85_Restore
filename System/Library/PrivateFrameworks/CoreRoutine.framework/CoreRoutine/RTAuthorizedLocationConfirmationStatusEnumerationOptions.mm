@interface RTAuthorizedLocationConfirmationStatusEnumerationOptions
- (RTAuthorizedLocationConfirmationStatusEnumerationOptions)init;
- (RTAuthorizedLocationConfirmationStatusEnumerationOptions)initWithCoder:(id)coder;
- (RTAuthorizedLocationConfirmationStatusEnumerationOptions)initWithOptions:(unint64_t)options startDate:(id)date endDate:(id)endDate;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTAuthorizedLocationConfirmationStatusEnumerationOptions

- (RTAuthorizedLocationConfirmationStatusEnumerationOptions)init
{
  v3.receiver = self;
  v3.super_class = RTAuthorizedLocationConfirmationStatusEnumerationOptions;
  return [(RTAuthorizedLocationConfirmationStatusEnumerationOptions *)&v3 init];
}

- (RTAuthorizedLocationConfirmationStatusEnumerationOptions)initWithOptions:(unint64_t)options startDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v14.receiver = self;
  v14.super_class = RTAuthorizedLocationConfirmationStatusEnumerationOptions;
  v11 = [(RTAuthorizedLocationConfirmationStatusEnumerationOptions *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_batchSize = options;
    objc_storeStrong(&v11->_startDate, date);
    objc_storeStrong(&v12->_endDate, endDate);
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;

  return [(RTAuthorizedLocationConfirmationStatusEnumerationOptions *)selfCopy init];
}

- (void)encodeWithCoder:(id)coder
{
  batchSize = self->_batchSize;
  coderCopy = coder;
  [coderCopy encodeInteger:batchSize forKey:@"batchSize"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
}

- (RTAuthorizedLocationConfirmationStatusEnumerationOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"batchSize"];
  v6 = [coderCopy decodeObjectForKey:@"startDate"];
  v7 = [coderCopy decodeObjectForKey:@"endDate"];

  v8 = [(RTAuthorizedLocationConfirmationStatusEnumerationOptions *)self initWithOptions:v5 startDate:v6 endDate:v7];
  return v8;
}

@end