@interface IMDiMessageIDSDelegateHandlerRegistry
- (BOOL)canAddCommand:(id)a3;
- (id)noopHandlerForCommand:(id)a3;
@end

@implementation IMDiMessageIDSDelegateHandlerRegistry

- (BOOL)canAddCommand:(id)a3
{
  v3 = [a3 integerValue];

  return [IMBlastdoor _commandReadyForBlastdoor:v3];
}

- (id)noopHandlerForCommand:(id)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B69B734;
  aBlock[3] = &unk_278707B90;
  v8 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);

  return v5;
}

@end