@interface HFServiceStateDescriptionFormatter
- (id)stringForObjectValue:(id)value;
@end

@implementation HFServiceStateDescriptionFormatter

- (id)stringForObjectValue:(id)value
{
  v4 = MEMORY[0x277CCACA8];
  valueCopy = value;
  stateClassIdentifier = [objc_opt_class() stateClassIdentifier];
  stateTypeIdentifier = [valueCopy stateTypeIdentifier];

  v8 = [v4 stringWithFormat:@"HFServiceDescription.%@, State:%@", stateClassIdentifier, stateTypeIdentifier];

  descriptionContext = [(HFServiceStateDescriptionFormatter *)self descriptionContext];
  if (descriptionContext == 1)
  {
    v10 = @"Control";
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (descriptionContext != 1 || ([v8 stringByAppendingFormat:@", Context:%@", @"Control"], v12 = objc_claimAutoreleasedReturnValue(), _HFLocalizedStringWithDefaultValue(v12, 0, 0), v13 = objc_claimAutoreleasedReturnValue(), v12, !v13))
  {
    v13 = _HFLocalizedStringWithDefaultValue(v8, v8, 1);
  }

  return v13;
}

__CFString *__59__HFServiceStateDescriptionFormatter_stringForObjectValue___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) descriptionContext] == 1)
  {
    return @"Control";
  }

  else
  {
    return 0;
  }
}

@end