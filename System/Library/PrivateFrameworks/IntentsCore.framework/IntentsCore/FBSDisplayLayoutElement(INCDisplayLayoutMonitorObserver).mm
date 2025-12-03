@interface FBSDisplayLayoutElement(INCDisplayLayoutMonitorObserver)
- (BOOL)_intents_isExpectedElement;
- (id)_intents_SpringBoardElement;
- (uint64_t)_intents_isSiri;
@end

@implementation FBSDisplayLayoutElement(INCDisplayLayoutMonitorObserver)

- (BOOL)_intents_isExpectedElement
{
  _intents_SpringBoardElement = [self _intents_SpringBoardElement];
  v3 = _intents_SpringBoardElement;
  v6 = 1;
  if (_intents_SpringBoardElement)
  {
    if ([_intents_SpringBoardElement layoutRole] == 3)
    {
      identifier = [self identifier];
      v5 = [identifier isEqualToString:*MEMORY[0x277D0ABA0]];

      if (!v5)
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

- (id)_intents_SpringBoardElement
{
  if ([self conformsToProtocol:&unk_286776120])
  {
    selfCopy = self;
    if ([selfCopy isSpringBoardElement])
    {
      goto LABEL_5;
    }
  }

  selfCopy = 0;
LABEL_5:

  return selfCopy;
}

- (uint64_t)_intents_isSiri
{
  _intents_SpringBoardElement = [self _intents_SpringBoardElement];
  if (_intents_SpringBoardElement)
  {
    identifier = [self identifier];
    v4 = [identifier isEqualToString:*MEMORY[0x277D0ABC0]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end