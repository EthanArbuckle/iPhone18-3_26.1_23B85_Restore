@interface UICellConfigurationState(MailExtensions)
- (uint64_t)isChild;
- (uint64_t)isFocusSystemActive;
- (uint64_t)isFocusingOnMessageListCell;
- (uint64_t)isParent;
- (uint64_t)isPriority;
- (void)setIsChild:()MailExtensions;
- (void)setIsFocusSystemActive:()MailExtensions;
- (void)setIsFocusingOnMessageListCell:()MailExtensions;
- (void)setIsParent:()MailExtensions;
- (void)setIsPriority:()MailExtensions;
@end

@implementation UICellConfigurationState(MailExtensions)

- (uint64_t)isPriority
{
  v1 = [self objectForKeyedSubscript:@"kMessageListCellConfigurationStatePriorityKey"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (uint64_t)isParent
{
  v1 = [self objectForKeyedSubscript:@"kMessageListCellConfigurationStateThreadParentKey"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (uint64_t)isChild
{
  v1 = [self objectForKeyedSubscript:@"kMessageListCellConfigurationStateThreadChildKey"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setIsChild:()MailExtensions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [self setObject:v2 forKeyedSubscript:@"kMessageListCellConfigurationStateThreadChildKey"];
}

- (void)setIsParent:()MailExtensions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [self setObject:v2 forKeyedSubscript:@"kMessageListCellConfigurationStateThreadParentKey"];
}

- (void)setIsPriority:()MailExtensions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [self setObject:v2 forKeyedSubscript:@"kMessageListCellConfigurationStatePriorityKey"];
}

- (uint64_t)isFocusSystemActive
{
  v1 = [self objectForKeyedSubscript:@"kMessageListCellConfigurationStateFocusSystemActiveKey"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setIsFocusSystemActive:()MailExtensions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [self setObject:v2 forKeyedSubscript:@"kMessageListCellConfigurationStateFocusSystemActiveKey"];
}

- (uint64_t)isFocusingOnMessageListCell
{
  v1 = [self objectForKeyedSubscript:@"kMessageListCellConfigurationStateFocusingOnMessageListCellKey"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setIsFocusingOnMessageListCell:()MailExtensions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [self setObject:v2 forKeyedSubscript:@"kMessageListCellConfigurationStateFocusingOnMessageListCellKey"];
}

@end