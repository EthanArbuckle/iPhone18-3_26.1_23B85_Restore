@interface NSMutableSet(ECEmailAddressConvertible)
+ (id)ec_emailAddressConvertiblesSetFromArray:()ECEmailAddressConvertible includeInvalid:;
@end

@implementation NSMutableSet(ECEmailAddressConvertible)

+ (id)ec_emailAddressConvertiblesSetFromArray:()ECEmailAddressConvertible includeInvalid:
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __98__NSMutableSet_ECEmailAddressConvertible__ec_emailAddressConvertiblesSetFromArray_includeInvalid___block_invoke;
  v9[3] = &unk_27874B970;
  v7 = v6;
  v10 = v7;
  v11 = a4;
  [v5 enumerateObjectsUsingBlock:v9];

  return v7;
}

@end