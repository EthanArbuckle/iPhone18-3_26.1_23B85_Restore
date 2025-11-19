@interface MSFlagTriageAction
- (BOOL)_isFlagged;
- (BOOL)flagState;
- (NSNumber)flagColor;
- (void)_toggleCachedFlagState;
- (void)_toggleFlagWithBuilder:(id)a3;
@end

@implementation MSFlagTriageAction

- (BOOL)flagState
{
  if (![(MSFlagTriageAction *)self cachedFlagState])
  {
    v3 = [(MSTriageAction *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [v3 shouldOverrideFlageStateForTriageAction:self])
    {
      if (![v3 overrideFlagStateForTriageAction:self])
      {
LABEL_10:
        v9 = 2;
        goto LABEL_11;
      }
    }

    else
    {
      v4 = [(MSTriageAction *)self messageListItemSelection];
      v5 = [v4 isSelectAll];

      if (v5)
      {
        goto LABEL_10;
      }

      v6 = [(MSTriageAction *)self messageListItemSelection];
      v7 = [v6 messageListItems];
      v8 = [v7 ef_any:&__block_literal_global_4];

      if ((v8 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v9 = 1;
LABEL_11:
    [(MSFlagTriageAction *)self setCachedFlagState:v9];
  }

  return [(MSFlagTriageAction *)self cachedFlagState]== 2;
}

- (NSNumber)flagColor
{
  if (!self->_flagColor && ![(MSFlagTriageAction *)self flagState])
  {
    v3 = [(MSTriageAction *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "defaultFlagColorForTriageAction:", self)}];

      goto LABEL_7;
    }
  }

  v4 = self->_flagColor;
LABEL_7:

  return v4;
}

- (BOOL)_isFlagged
{
  v2 = [(MSFlagTriageAction *)self flagColor];
  v3 = v2;
  if (v2)
  {
    [v2 unsignedIntegerValue];
    v4 = [v3 unsignedIntegerValue] < 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_toggleCachedFlagState
{
  if ([(MSFlagTriageAction *)self cachedFlagState]== 2)
  {
    v3 = 1;
  }

  else
  {
    if ([(MSFlagTriageAction *)self cachedFlagState]!= 1)
    {
      return;
    }

    v3 = 2;
  }

  [(MSFlagTriageAction *)self setCachedFlagState:v3];
}

- (void)_toggleFlagWithBuilder:(id)a3
{
  v6 = a3;
  v4 = [(MSFlagTriageAction *)self _isFlagged];
  [v6 changesFlaggedTo:v4];
  if (v4)
  {
    v5 = [(MSFlagTriageAction *)self flagColor];
    [v6 changesFlagColorTo:{objc_msgSend(v5, "unsignedIntegerValue")}];
  }

  [(MSFlagTriageAction *)self _toggleCachedFlagState];
}

@end