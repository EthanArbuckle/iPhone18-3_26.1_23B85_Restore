@interface NSError(NFStateMachine)
+ (id)fc_createStateMachineErrorForCode:()NFStateMachine userInfo:;
- (BOOL)fc_isStateMachineError:()NFStateMachine;
@end

@implementation NSError(NFStateMachine)

+ (id)fc_createStateMachineErrorForCode:()NFStateMachine userInfo:
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = a4;
  v7 = [[v5 alloc] initWithDomain:@"com.apple.news.state.machine" code:a3 userInfo:v6];

  return v7;
}

- (BOOL)fc_isStateMachineError:()NFStateMachine
{
  domain = [self domain];
  v6 = [domain isEqualToString:@"com.apple.news.state.machine"];

  return v6 && [self code] == a3;
}

@end