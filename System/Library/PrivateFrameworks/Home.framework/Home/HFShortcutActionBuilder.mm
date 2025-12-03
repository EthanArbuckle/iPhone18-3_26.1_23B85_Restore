@interface HFShortcutActionBuilder
- (id)containedAccessoryRepresentables;
- (id)performValidation;
- (id)validationError;
@end

@implementation HFShortcutActionBuilder

- (id)containedAccessoryRepresentables
{
  if (qword_27C84C470 != -1)
  {
    dispatch_once(&qword_27C84C470, &__block_literal_global_124);
  }

  v3 = qword_27C84C478;

  return v3;
}

void __59__HFShortcutActionBuilder_containedAccessoryRepresentables__block_invoke_2()
{
  v0 = [MEMORY[0x277CBEA60] array];
  v1 = qword_27C84C478;
  qword_27C84C478 = v0;
}

- (id)performValidation
{
  validationError = [(HFShortcutActionBuilder *)self validationError];
  if (validationError)
  {
    [MEMORY[0x277D2C900] futureWithError:validationError];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithNoResult];
  }
  v3 = ;

  return v3;
}

- (id)validationError
{
  v10[1] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  action = [(HFActionBuilder *)self action];
  if (objc_opt_isKindOfClass())
  {
    v4 = action;
  }

  else
  {
    v4 = 0;
  }

  v5 = 0;
  if (!v4)
  {
    v9 = @"HFActionBuilderFailureReason";
    v10[0] = @"Shortcut action builder has invalid shortcut action";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D2C8B8] code:2 userInfo:v6];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

@end