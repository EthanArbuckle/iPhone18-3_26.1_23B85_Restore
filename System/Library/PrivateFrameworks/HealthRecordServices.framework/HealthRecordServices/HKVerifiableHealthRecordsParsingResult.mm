@interface HKVerifiableHealthRecordsParsingResult
- (BOOL)isEqual:(id)a3;
- (HKVerifiableHealthRecordsParsingResult)init;
- (HKVerifiableHealthRecordsParsingResult)initWithCoder:(id)a3;
- (HKVerifiableHealthRecordsParsingResult)initWithOptions:(unint64_t)a3 localizedTypeDisplayNames:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKVerifiableHealthRecordsParsingResult

- (HKVerifiableHealthRecordsParsingResult)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKVerifiableHealthRecordsParsingResult)initWithOptions:(unint64_t)a3 localizedTypeDisplayNames:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = HKVerifiableHealthRecordsParsingResult;
  v7 = [(HKVerifiableHealthRecordsParsingResult *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_options = a3;
    v9 = [v6 copy];
    localizedTypeDisplayNames = v8->_localizedTypeDisplayNames;
    v8->_localizedTypeDisplayNames = v9;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (options = self->_options, options == [(HKVerifiableHealthRecordsParsingResult *)v6 options]))
    {
      localizedTypeDisplayNames = self->_localizedTypeDisplayNames;
      v9 = [(HKVerifiableHealthRecordsParsingResult *)v6 localizedTypeDisplayNames];
      if (localizedTypeDisplayNames == v9)
      {
        v13 = 1;
      }

      else
      {
        v10 = [(HKVerifiableHealthRecordsParsingResult *)v6 localizedTypeDisplayNames];
        if (v10)
        {
          v11 = self->_localizedTypeDisplayNames;
          v12 = [(HKVerifiableHealthRecordsParsingResult *)v6 localizedTypeDisplayNames];
          v13 = [(NSArray *)v11 isEqualToArray:v12];
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  options = self->_options;
  v5 = a3;
  [v5 encodeInteger:options forKey:@"options"];
  [v5 encodeObject:self->_localizedTypeDisplayNames forKey:@"localizedTypeDisplayNames"];
}

- (HKVerifiableHealthRecordsParsingResult)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"options"])
  {
    v5 = [v4 decodeIntegerForKey:@"options"];
    v6 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"localizedTypeDisplayNames"];
    v8 = [[HKVerifiableHealthRecordsParsingResult alloc] initWithOptions:v5 localizedTypeDisplayNames:v7];
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v8 = 0;
  }

  return v8;
}

@end