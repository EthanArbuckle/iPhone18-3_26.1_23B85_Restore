@interface IMDiMessageIDSDelegateHandlerRegistry
- (BOOL)canAddCommand:(id)command;
- (id)noopHandlerForCommand:(id)command;
@end

@implementation IMDiMessageIDSDelegateHandlerRegistry

- (BOOL)canAddCommand:(id)command
{
  integerValue = [command integerValue];

  return [IMBlastdoor _commandReadyForBlastdoor:integerValue];
}

- (id)noopHandlerForCommand:(id)command
{
  commandCopy = command;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B69B734;
  aBlock[3] = &unk_278707B90;
  v8 = commandCopy;
  v4 = commandCopy;
  v5 = _Block_copy(aBlock);

  return v5;
}

@end