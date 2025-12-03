@interface HKSignedClinicalDataParsingResult
- (BOOL)isEqual:(id)equal;
- (HKSignedClinicalDataParsingResult)init;
- (HKSignedClinicalDataParsingResult)initWithCoder:(id)coder;
- (HKSignedClinicalDataParsingResult)initWithItems:(id)items options:(unint64_t)options;
- (id)copyWithItems:(id)items;
- (id)muxed;
- (void)encodeWithCoder:(id)coder;
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

- (HKSignedClinicalDataParsingResult)initWithItems:(id)items options:(unint64_t)options
{
  itemsCopy = items;
  v11.receiver = self;
  v11.super_class = HKSignedClinicalDataParsingResult;
  v7 = [(HKSignedClinicalDataParsingResult *)&v11 init];
  if (v7)
  {
    v8 = [itemsCopy copy];
    items = v7->_items;
    v7->_items = v8;

    v7->_options = options;
  }

  return v7;
}

- (id)muxed
{
  v2 = [[HKSignedClinicalDataParsingResultMux alloc] initWithSignedClinicalData:self];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  items = self->_items;
  coderCopy = coder;
  [coderCopy encodeObject:items forKey:@"Items"];
  [coderCopy encodeInteger:self->_options forKey:@"Options"];
}

- (HKSignedClinicalDataParsingResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"Items"];
  if (v6 && ([coderCopy containsValueForKey:@"Options"] & 1) != 0)
  {
    self = -[HKSignedClinicalDataParsingResult initWithItems:options:](self, "initWithItems:options:", v6, [coderCopy decodeIntegerForKey:@"Options"]);
    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithItems:(id)items
{
  itemsCopy = items;
  v5 = [[HKSignedClinicalDataParsingResult alloc] initWithItems:itemsCopy options:self->_options];

  return v5;
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
    if (objc_opt_isKindOfClass())
    {
      items = self->_items;
      items = [(HKSignedClinicalDataParsingResult *)v6 items];
      if (items == items)
      {
        options = self->_options;
        v13 = options == [(HKSignedClinicalDataParsingResult *)v6 options];
      }

      else
      {
        items2 = [(HKSignedClinicalDataParsingResult *)v6 items];
        if (items2)
        {
          v10 = self->_items;
          items3 = [(HKSignedClinicalDataParsingResult *)v6 items];
          if ([(NSArray *)v10 isEqualToArray:items3])
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