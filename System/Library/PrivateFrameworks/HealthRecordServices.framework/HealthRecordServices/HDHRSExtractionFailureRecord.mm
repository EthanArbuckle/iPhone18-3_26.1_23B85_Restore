@interface HDHRSExtractionFailureRecord
+ (id)extractionFailureRecordWithCode:(int64_t)a3 propertyName:(id)a4 resourceKeyPath:(id)a5;
- (HDHRSExtractionFailureRecord)initWithCoder:(id)a3;
- (NSString)internalDisplaySafeDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDHRSExtractionFailureRecord

+ (id)extractionFailureRecordWithCode:(int64_t)a3 propertyName:(id)a4 resourceKeyPath:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(a1);
  v11 = v10;
  if (v10)
  {
    v10[1] = a3;
    v12 = [v8 copy];
    v13 = v11[2];
    v11[2] = v12;

    v14 = [v9 copy];
    v15 = v11[3];
    v11[3] = v14;
  }

  return v11;
}

- (HDHRSExtractionFailureRecord)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"FailureCode"])
  {
    v12.receiver = self;
    v12.super_class = HDHRSExtractionFailureRecord;
    v5 = [(HDHRSExtractionFailureRecord *)&v12 init];
    if (v5)
    {
      v5->_failureCode = [v4 decodeIntegerForKey:@"FailureCode"];
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PropertyName"];
      propertyName = v5->_propertyName;
      v5->_propertyName = v6;

      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ResourceKeyPath"];
      resourceKeyPath = v5->_resourceKeyPath;
      v5->_resourceKeyPath = v8;
    }

    self = v5;
    v10 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  failureCode = self->_failureCode;
  v5 = a3;
  [v5 encodeInteger:failureCode forKey:@"FailureCode"];
  [v5 encodeObject:self->_propertyName forKey:@"PropertyName"];
  [v5 encodeObject:self->_resourceKeyPath forKey:@"ResourceKeyPath"];
}

- (NSString)internalDisplaySafeDescription
{
  v3 = NSStringFromHDClinicalAnalyticsExtractionFailureCode(self->_failureCode);
  v4 = [MEMORY[0x277CBEB18] arrayWithObject:v3];
  if (self->_propertyName)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@" for %@", self->_propertyName];
    [v4 addObject:v5];
  }

  if (self->_resourceKeyPath)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@" from %@", self->_resourceKeyPath];
    [v4 addObject:v6];
  }

  v7 = [v4 componentsJoinedByString:&stru_2863E37A8];

  return v7;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  propertyName = self->_propertyName;
  resourceKeyPath = self->_resourceKeyPath;
  v5 = NSStringFromHDClinicalAnalyticsExtractionFailureCode(self->_failureCode);
  v6 = [v2 stringWithFormat:@"%@ → %@, reason: %@", resourceKeyPath, propertyName, v5];

  return v6;
}

@end