@interface RTAuthorizedLocationZDRLocationsEnumerationOptions
- (RTAuthorizedLocationZDRLocationsEnumerationOptions)init;
- (RTAuthorizedLocationZDRLocationsEnumerationOptions)initWithCoder:(id)coder;
- (RTAuthorizedLocationZDRLocationsEnumerationOptions)initWithOptions:(unint64_t)options startDate:(id)date endDate:(id)endDate maximumNumberOfItems:(id)items;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTAuthorizedLocationZDRLocationsEnumerationOptions

- (RTAuthorizedLocationZDRLocationsEnumerationOptions)init
{
  v7.receiver = self;
  v7.super_class = RTAuthorizedLocationZDRLocationsEnumerationOptions;
  v2 = [(RTAuthorizedLocationZDRLocationsEnumerationOptions *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_batchSize = 0;
    startDate = v2->_startDate;
    v2->_startDate = 0;

    endDate = v3->_endDate;
    v3->_endDate = 0;
  }

  return v3;
}

- (RTAuthorizedLocationZDRLocationsEnumerationOptions)initWithOptions:(unint64_t)options startDate:(id)date endDate:(id)endDate maximumNumberOfItems:(id)items
{
  dateCopy = date;
  endDateCopy = endDate;
  itemsCopy = items;
  v17.receiver = self;
  v17.super_class = RTAuthorizedLocationZDRLocationsEnumerationOptions;
  v14 = [(RTAuthorizedLocationZDRLocationsEnumerationOptions *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_batchSize = options;
    objc_storeStrong(&v14->_startDate, date);
    objc_storeStrong(&v15->_endDate, endDate);
    objc_storeStrong(&v15->_maximumNumberOfItems, items);
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;

  return [(RTAuthorizedLocationZDRLocationsEnumerationOptions *)selfCopy init];
}

- (void)encodeWithCoder:(id)coder
{
  batchSize = self->_batchSize;
  coderCopy = coder;
  [coderCopy encodeInteger:batchSize forKey:@"batchSize"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeObject:self->_maximumNumberOfItems forKey:@"maximumNumberOfItems"];
}

- (RTAuthorizedLocationZDRLocationsEnumerationOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"batchSize"];
  v6 = [coderCopy decodeObjectForKey:@"startDate"];
  v7 = [coderCopy decodeObjectForKey:@"endDate"];
  v8 = [coderCopy decodeObjectForKey:@"maximumNumberOfItems"];

  v9 = [(RTAuthorizedLocationZDRLocationsEnumerationOptions *)self initWithOptions:v5 startDate:v6 endDate:v7 maximumNumberOfItems:v8];
  return v9;
}

@end