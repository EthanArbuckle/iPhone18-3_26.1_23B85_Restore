@interface RTAuthorizedLocationZDRLocationsEnumerationOptions
- (RTAuthorizedLocationZDRLocationsEnumerationOptions)init;
- (RTAuthorizedLocationZDRLocationsEnumerationOptions)initWithCoder:(id)a3;
- (RTAuthorizedLocationZDRLocationsEnumerationOptions)initWithOptions:(unint64_t)a3 startDate:(id)a4 endDate:(id)a5 maximumNumberOfItems:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
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

- (RTAuthorizedLocationZDRLocationsEnumerationOptions)initWithOptions:(unint64_t)a3 startDate:(id)a4 endDate:(id)a5 maximumNumberOfItems:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = RTAuthorizedLocationZDRLocationsEnumerationOptions;
  v14 = [(RTAuthorizedLocationZDRLocationsEnumerationOptions *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_batchSize = a3;
    objc_storeStrong(&v14->_startDate, a4);
    objc_storeStrong(&v15->_endDate, a5);
    objc_storeStrong(&v15->_maximumNumberOfItems, a6);
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;

  return [(RTAuthorizedLocationZDRLocationsEnumerationOptions *)v3 init];
}

- (void)encodeWithCoder:(id)a3
{
  batchSize = self->_batchSize;
  v5 = a3;
  [v5 encodeInteger:batchSize forKey:@"batchSize"];
  [v5 encodeObject:self->_startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
  [v5 encodeObject:self->_maximumNumberOfItems forKey:@"maximumNumberOfItems"];
}

- (RTAuthorizedLocationZDRLocationsEnumerationOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"batchSize"];
  v6 = [v4 decodeObjectForKey:@"startDate"];
  v7 = [v4 decodeObjectForKey:@"endDate"];
  v8 = [v4 decodeObjectForKey:@"maximumNumberOfItems"];

  v9 = [(RTAuthorizedLocationZDRLocationsEnumerationOptions *)self initWithOptions:v5 startDate:v6 endDate:v7 maximumNumberOfItems:v8];
  return v9;
}

@end