@interface IKShowcaseTemplate
- (NSArray)modes;
- (unint64_t)transition;
@end

@implementation IKShowcaseTemplate

- (NSArray)modes
{
  attributes = [(IKViewElement *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"mode"];

  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v5 = [v3 componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

  return v5;
}

- (unint64_t)transition
{
  style = [(IKViewElement *)self style];
  transition = [style transition];
  v4 = [IKViewElementStyle transitionFromString:transition];

  return v4;
}

@end