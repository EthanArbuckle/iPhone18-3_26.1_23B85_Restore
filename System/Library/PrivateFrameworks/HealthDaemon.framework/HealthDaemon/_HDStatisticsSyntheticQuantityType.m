@interface _HDStatisticsSyntheticQuantityType
+ (BOOL)supportsSecureCoding;
+ (id)syntheticQuantityTypeWithConfigurationProviding:(id)a3;
+ (id)syntheticQuantityTypeWithUnderlyingSampleType:(id)a3 aggregationStyle:(int64_t)a4 canonicalUnit:(id)a5;
+ (id)syntheticQuantityTypeWithUnderlyingSampleType:(id)a3 aggregationStyle:(int64_t)a4 canonicalUnit:(id)a5 shouldUseUnderlyingTypeForStatistics:(BOOL)a6;
- (_HDStatisticsSyntheticQuantityType)initWithCoder:(id)a3;
- (id)_initWithUnderlyingSampleType:(uint64_t)a3 aggregationStyle:(void *)a4 canonicalUnit:(char)a5 shouldUseUnderlyingTypeForStatistics:;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HDStatisticsSyntheticQuantityType

+ (id)syntheticQuantityTypeWithUnderlyingSampleType:(id)a3 aggregationStyle:(int64_t)a4 canonicalUnit:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[_HDStatisticsSyntheticQuantityType alloc] _initWithUnderlyingSampleType:v8 aggregationStyle:a4 canonicalUnit:v7 shouldUseUnderlyingTypeForStatistics:1];

  return v9;
}

- (id)_initWithUnderlyingSampleType:(uint64_t)a3 aggregationStyle:(void *)a4 canonicalUnit:(char)a5 shouldUseUnderlyingTypeForStatistics:
{
  v9 = a2;
  v10 = a4;
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = _HDStatisticsSyntheticQuantityType;
    a1 = objc_msgSendSuper2(&v16, sel__initWithCode_, [v9 code]);
    if (a1)
    {
      v11 = [v9 copy];
      v12 = *(a1 + 6);
      *(a1 + 6) = v11;

      *(a1 + 7) = a3;
      v13 = [v10 copy];
      v14 = *(a1 + 8);
      *(a1 + 8) = v13;

      *(a1 + 40) = a5;
    }
  }

  return a1;
}

+ (id)syntheticQuantityTypeWithUnderlyingSampleType:(id)a3 aggregationStyle:(int64_t)a4 canonicalUnit:(id)a5 shouldUseUnderlyingTypeForStatistics:(BOOL)a6
{
  v9 = a5;
  v10 = a3;
  v11 = [[_HDStatisticsSyntheticQuantityType alloc] _initWithUnderlyingSampleType:v10 aggregationStyle:a4 canonicalUnit:v9 shouldUseUnderlyingTypeForStatistics:a6];

  return v11;
}

+ (id)syntheticQuantityTypeWithConfigurationProviding:(id)a3
{
  v3 = a3;
  v4 = [_HDStatisticsSyntheticQuantityType alloc];
  v5 = [v3 underlyingSampleType];
  v6 = [v3 aggregationStyleForStatistics];
  v7 = [v3 canonicalUnitForStatistics];

  v8 = [(_HDStatisticsSyntheticQuantityType *)v4 _initWithUnderlyingSampleType:v5 aggregationStyle:v6 canonicalUnit:v7 shouldUseUnderlyingTypeForStatistics:1];

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

- (void)encodeWithCoder:(id)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];
}

- (_HDStatisticsSyntheticQuantityType)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The -%@ method is not available on %@", v6, objc_opt_class()}];

  return 0;
}

@end