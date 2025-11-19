@interface FBSDisplayLayoutElement(INCDisplayLayoutMonitorObserver)
- (BOOL)_intents_isExpectedElement;
- (id)_intents_SpringBoardElement;
- (uint64_t)_intents_isSiri;
@end

@implementation FBSDisplayLayoutElement(INCDisplayLayoutMonitorObserver)

- (BOOL)_intents_isExpectedElement
{
  v2 = [a1 _intents_SpringBoardElement];
  v3 = v2;
  v6 = 1;
  if (v2)
  {
    if ([v2 layoutRole] == 3)
    {
      v4 = [a1 identifier];
      v5 = [v4 isEqualToString:*MEMORY[0x277D0ABA0]];

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
  if ([a1 conformsToProtocol:&unk_286776120])
  {
    v2 = a1;
    if ([v2 isSpringBoardElement])
    {
      goto LABEL_5;
    }
  }

  v2 = 0;
LABEL_5:

  return v2;
}

- (uint64_t)_intents_isSiri
{
  v2 = [a1 _intents_SpringBoardElement];
  if (v2)
  {
    v3 = [a1 identifier];
    v4 = [v3 isEqualToString:*MEMORY[0x277D0ABC0]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end