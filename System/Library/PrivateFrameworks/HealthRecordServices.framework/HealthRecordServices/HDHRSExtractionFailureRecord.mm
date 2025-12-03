@interface HDHRSExtractionFailureRecord
+ (id)extractionFailureRecordWithCode:(int64_t)code propertyName:(id)name resourceKeyPath:(id)path;
- (HDHRSExtractionFailureRecord)initWithCoder:(id)coder;
- (NSString)internalDisplaySafeDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDHRSExtractionFailureRecord

+ (id)extractionFailureRecordWithCode:(int64_t)code propertyName:(id)name resourceKeyPath:(id)path
{
  nameCopy = name;
  pathCopy = path;
  v10 = objc_alloc_init(self);
  v11 = v10;
  if (v10)
  {
    v10[1] = code;
    v12 = [nameCopy copy];
    v13 = v11[2];
    v11[2] = v12;

    v14 = [pathCopy copy];
    v15 = v11[3];
    v11[3] = v14;
  }

  return v11;
}

- (HDHRSExtractionFailureRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"FailureCode"])
  {
    v12.receiver = self;
    v12.super_class = HDHRSExtractionFailureRecord;
    v5 = [(HDHRSExtractionFailureRecord *)&v12 init];
    if (v5)
    {
      v5->_failureCode = [coderCopy decodeIntegerForKey:@"FailureCode"];
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PropertyName"];
      propertyName = v5->_propertyName;
      v5->_propertyName = v6;

      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ResourceKeyPath"];
      resourceKeyPath = v5->_resourceKeyPath;
      v5->_resourceKeyPath = v8;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  failureCode = self->_failureCode;
  coderCopy = coder;
  [coderCopy encodeInteger:failureCode forKey:@"FailureCode"];
  [coderCopy encodeObject:self->_propertyName forKey:@"PropertyName"];
  [coderCopy encodeObject:self->_resourceKeyPath forKey:@"ResourceKeyPath"];
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