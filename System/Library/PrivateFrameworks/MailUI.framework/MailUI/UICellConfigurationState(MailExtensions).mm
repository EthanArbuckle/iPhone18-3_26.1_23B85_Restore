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
  v1 = [a1 objectForKeyedSubscript:@"kMessageListCellConfigurationStatePriorityKey"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (uint64_t)isParent
{
  v1 = [a1 objectForKeyedSubscript:@"kMessageListCellConfigurationStateThreadParentKey"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (uint64_t)isChild
{
  v1 = [a1 objectForKeyedSubscript:@"kMessageListCellConfigurationStateThreadChildKey"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setIsChild:()MailExtensions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [a1 setObject:v2 forKeyedSubscript:@"kMessageListCellConfigurationStateThreadChildKey"];
}

- (void)setIsParent:()MailExtensions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [a1 setObject:v2 forKeyedSubscript:@"kMessageListCellConfigurationStateThreadParentKey"];
}

- (void)setIsPriority:()MailExtensions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [a1 setObject:v2 forKeyedSubscript:@"kMessageListCellConfigurationStatePriorityKey"];
}

- (uint64_t)isFocusSystemActive
{
  v1 = [a1 objectForKeyedSubscript:@"kMessageListCellConfigurationStateFocusSystemActiveKey"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setIsFocusSystemActive:()MailExtensions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [a1 setObject:v2 forKeyedSubscript:@"kMessageListCellConfigurationStateFocusSystemActiveKey"];
}

- (uint64_t)isFocusingOnMessageListCell
{
  v1 = [a1 objectForKeyedSubscript:@"kMessageListCellConfigurationStateFocusingOnMessageListCellKey"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setIsFocusingOnMessageListCell:()MailExtensions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [a1 setObject:v2 forKeyedSubscript:@"kMessageListCellConfigurationStateFocusingOnMessageListCellKey"];
}

@end