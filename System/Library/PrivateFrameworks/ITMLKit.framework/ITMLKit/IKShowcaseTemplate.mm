@interface IKShowcaseTemplate
- (NSArray)modes;
- (unint64_t)transition;
@end

@implementation IKShowcaseTemplate

- (NSArray)modes
{
  v2 = [(IKViewElement *)self attributes];
  v3 = [v2 objectForKeyedSubscript:@"mode"];

  v4 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v5 = [v3 componentsSeparatedByCharactersInSet:v4];

  return v5;
}

- (unint64_t)transition
{
  v2 = [(IKViewElement *)self style];
  v3 = [v2 transition];
  v4 = [IKViewElementStyle transitionFromString:v3];

  return v4;
}

@end