@interface _HDStatisticsSyntheticQuantityType
+ (BOOL)supportsSecureCoding;
+ (id)syntheticQuantityTypeWithConfigurationProviding:(id)providing;
+ (id)syntheticQuantityTypeWithUnderlyingSampleType:(id)type aggregationStyle:(int64_t)style canonicalUnit:(id)unit;
+ (id)syntheticQuantityTypeWithUnderlyingSampleType:(id)type aggregationStyle:(int64_t)style canonicalUnit:(id)unit shouldUseUnderlyingTypeForStatistics:(BOOL)statistics;
- (_HDStatisticsSyntheticQuantityType)initWithCoder:(id)coder;
- (id)_initWithUnderlyingSampleType:(uint64_t)type aggregationStyle:(void *)style canonicalUnit:(char)unit shouldUseUnderlyingTypeForStatistics:;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HDStatisticsSyntheticQuantityType

+ (id)syntheticQuantityTypeWithUnderlyingSampleType:(id)type aggregationStyle:(int64_t)style canonicalUnit:(id)unit
{
  unitCopy = unit;
  typeCopy = type;
  v9 = [[_HDStatisticsSyntheticQuantityType alloc] _initWithUnderlyingSampleType:typeCopy aggregationStyle:style canonicalUnit:unitCopy shouldUseUnderlyingTypeForStatistics:1];

  return v9;
}

- (id)_initWithUnderlyingSampleType:(uint64_t)type aggregationStyle:(void *)style canonicalUnit:(char)unit shouldUseUnderlyingTypeForStatistics:
{
  v9 = a2;
  styleCopy = style;
  if (self)
  {
    v16.receiver = self;
    v16.super_class = _HDStatisticsSyntheticQuantityType;
    self = objc_msgSendSuper2(&v16, sel__initWithCode_, [v9 code]);
    if (self)
    {
      v11 = [v9 copy];
      v12 = *(self + 6);
      *(self + 6) = v11;

      *(self + 7) = type;
      v13 = [styleCopy copy];
      v14 = *(self + 8);
      *(self + 8) = v13;

      *(self + 40) = unit;
    }
  }

  return self;
}

+ (id)syntheticQuantityTypeWithUnderlyingSampleType:(id)type aggregationStyle:(int64_t)style canonicalUnit:(id)unit shouldUseUnderlyingTypeForStatistics:(BOOL)statistics
{
  unitCopy = unit;
  typeCopy = type;
  v11 = [[_HDStatisticsSyntheticQuantityType alloc] _initWithUnderlyingSampleType:typeCopy aggregationStyle:style canonicalUnit:unitCopy shouldUseUnderlyingTypeForStatistics:statistics];

  return v11;
}

+ (id)syntheticQuantityTypeWithConfigurationProviding:(id)providing
{
  providingCopy = providing;
  v4 = [_HDStatisticsSyntheticQuantityType alloc];
  underlyingSampleType = [providingCopy underlyingSampleType];
  aggregationStyleForStatistics = [providingCopy aggregationStyleForStatistics];
  canonicalUnitForStatistics = [providingCopy canonicalUnitForStatistics];

  v8 = [(_HDStatisticsSyntheticQuantityType *)v4 _initWithUnderlyingSampleType:underlyingSampleType aggregationStyle:aggregationStyleForStatistics canonicalUnit:canonicalUnitForStatistics shouldUseUnderlyingTypeForStatistics:1];

  return v8;
}

+ (BOOL)supportsSecureCoding
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"The -%@ method is not available on %@", v4, objc_opt_class()}];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];
}

- (_HDStatisticsSyntheticQuantityType)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The -%@ method is not available on %@", v6, objc_opt_class()}];

  return 0;
}

@end