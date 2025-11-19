@interface PKIndexOfValueInLabeledValuesForContactKey
@end

@implementation PKIndexOfValueInLabeledValuesForContactKey

uint64_t ___PKIndexOfValueInLabeledValuesForContactKey_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 isEqualIgnoringIdentifiers:*(a1 + 32)])
  {
    v7 = 1;
  }

  else if ([*(a1 + 40) isEqualToString:*MEMORY[0x1E695C360]])
  {
    v8 = [v6 value];
    v9 = [v8 mutableCopy];
    PKCorrectCountryCodeIfNecessaryForPostalAddress(v9);
    objc_claimAutoreleasedReturnValue();
    v10 = [v6 labeledValueBySettingValue:v9];

    v7 = [v10 isEqualIgnoringIdentifiers:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  *a4 = v7;

  return v7;
}

@end