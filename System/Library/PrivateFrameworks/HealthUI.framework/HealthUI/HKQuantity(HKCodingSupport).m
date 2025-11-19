@interface HKQuantity(HKCodingSupport)
+ (id)createWithCodableQuantity:()HKCodingSupport;
- (HKCodableQuantity)codableRepresentation;
@end

@implementation HKQuantity(HKCodingSupport)

+ (id)createWithCodableQuantity:()HKCodingSupport
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 hasUnitString] && objc_msgSend(v3, "hasValue"))
  {
    v4 = MEMORY[0x1E696C510];
    v5 = [v3 unitString];
    v6 = [v4 unitFromString:v5];

    v7 = MEMORY[0x1E696C348];
    [v3 value];
    v8 = [v7 quantityWithUnit:v6 doubleValue:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (HKCodableQuantity)codableRepresentation
{
  v2 = objc_alloc_init(HKCodableQuantity);
  v3 = [a1 _unit];
  v4 = [v3 unitString];
  [(HKCodableQuantity *)v2 setUnitString:v4];

  [a1 doubleValueForUnit:v3];
  [(HKCodableQuantity *)v2 setValue:?];

  return v2;
}

+ (void)createWithCodableQuantity:()HKCodingSupport .cold.1(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138543618;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  v6 = a1;
  _os_log_error_impl(&dword_1C3942000, a4, OS_LOG_TYPE_ERROR, "Caught exception while decoding %{public}@: %{public}@", a3, 0x16u);
}

@end