@interface HKVerifiableHealthRecordsParsingResult
- (BOOL)isEqual:(id)equal;
- (HKVerifiableHealthRecordsParsingResult)init;
- (HKVerifiableHealthRecordsParsingResult)initWithCoder:(id)coder;
- (HKVerifiableHealthRecordsParsingResult)initWithOptions:(unint64_t)options localizedTypeDisplayNames:(id)names;
- (void)encodeWithCoder:(id)coder;
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

- (HKVerifiableHealthRecordsParsingResult)initWithOptions:(unint64_t)options localizedTypeDisplayNames:(id)names
{
  namesCopy = names;
  v12.receiver = self;
  v12.super_class = HKVerifiableHealthRecordsParsingResult;
  v7 = [(HKVerifiableHealthRecordsParsingResult *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_options = options;
    v9 = [namesCopy copy];
    localizedTypeDisplayNames = v8->_localizedTypeDisplayNames;
    v8->_localizedTypeDisplayNames = v9;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (options = self->_options, options == [(HKVerifiableHealthRecordsParsingResult *)v6 options]))
    {
      localizedTypeDisplayNames = self->_localizedTypeDisplayNames;
      localizedTypeDisplayNames = [(HKVerifiableHealthRecordsParsingResult *)v6 localizedTypeDisplayNames];
      if (localizedTypeDisplayNames == localizedTypeDisplayNames)
      {
        v13 = 1;
      }

      else
      {
        localizedTypeDisplayNames2 = [(HKVerifiableHealthRecordsParsingResult *)v6 localizedTypeDisplayNames];
        if (localizedTypeDisplayNames2)
        {
          v11 = self->_localizedTypeDisplayNames;
          localizedTypeDisplayNames3 = [(HKVerifiableHealthRecordsParsingResult *)v6 localizedTypeDisplayNames];
          v13 = [(NSArray *)v11 isEqualToArray:localizedTypeDisplayNames3];
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

- (void)encodeWithCoder:(id)coder
{
  options = self->_options;
  coderCopy = coder;
  [coderCopy encodeInteger:options forKey:@"options"];
  [coderCopy encodeObject:self->_localizedTypeDisplayNames forKey:@"localizedTypeDisplayNames"];
}

- (HKVerifiableHealthRecordsParsingResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"options"])
  {
    v5 = [coderCopy decodeIntegerForKey:@"options"];
    v6 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"localizedTypeDisplayNames"];
    v8 = [[HKVerifiableHealthRecordsParsingResult alloc] initWithOptions:v5 localizedTypeDisplayNames:v7];
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    v8 = 0;
  }

  return v8;
}

@end