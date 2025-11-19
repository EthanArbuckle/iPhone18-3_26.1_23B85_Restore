@interface HKSignedClinicalDataParsingResult
- (BOOL)isEqual:(id)a3;
- (HKSignedClinicalDataParsingResult)init;
- (HKSignedClinicalDataParsingResult)initWithCoder:(id)a3;
- (HKSignedClinicalDataParsingResult)initWithItems:(id)a3 options:(unint64_t)a4;
- (id)copyWithItems:(id)a3;
- (id)muxed;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSignedClinicalDataParsingResult

- (HKSignedClinicalDataParsingResult)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKSignedClinicalDataParsingResult)initWithItems:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HKSignedClinicalDataParsingResult;
  v7 = [(HKSignedClinicalDataParsingResult *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    items = v7->_items;
    v7->_items = v8;

    v7->_options = a4;
  }

  return v7;
}

- (id)muxed
{
  v2 = [[HKSignedClinicalDataParsingResultMux alloc] initWithSignedClinicalData:self];

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  items = self->_items;
  v5 = a3;
  [v5 encodeObject:items forKey:@"Items"];
  [v5 encodeInteger:self->_options forKey:@"Options"];
}

- (HKSignedClinicalDataParsingResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"Items"];
  if (v6 && ([v4 containsValueForKey:@"Options"] & 1) != 0)
  {
    self = -[HKSignedClinicalDataParsingResult initWithItems:options:](self, "initWithItems:options:", v6, [v4 decodeIntegerForKey:@"Options"]);
    v7 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v7 = 0;
  }

  return v7;
}

- (id)copyWithItems:(id)a3
{
  v4 = a3;
  v5 = [[HKSignedClinicalDataParsingResult alloc] initWithItems:v4 options:self->_options];

  return v5;
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
    if (objc_opt_isKindOfClass())
    {
      items = self->_items;
      v8 = [(HKSignedClinicalDataParsingResult *)v6 items];
      if (items == v8)
      {
        options = self->_options;
        v13 = options == [(HKSignedClinicalDataParsingResult *)v6 options];
      }

      else
      {
        v9 = [(HKSignedClinicalDataParsingResult *)v6 items];
        if (v9)
        {
          v10 = self->_items;
          v11 = [(HKSignedClinicalDataParsingResult *)v6 items];
          if ([(NSArray *)v10 isEqualToArray:v11])
          {
            v12 = self->_options;
            v13 = v12 == [(HKSignedClinicalDataParsingResult *)v6 options];
          }

          else
          {
            v13 = 0;
          }
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

@end