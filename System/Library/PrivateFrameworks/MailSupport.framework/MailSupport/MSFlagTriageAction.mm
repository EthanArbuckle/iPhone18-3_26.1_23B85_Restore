@interface MSFlagTriageAction
- (BOOL)_isFlagged;
- (BOOL)flagState;
- (NSNumber)flagColor;
- (void)_toggleCachedFlagState;
- (void)_toggleFlagWithBuilder:(id)builder;
@end

@implementation MSFlagTriageAction

- (BOOL)flagState
{
  if (![(MSFlagTriageAction *)self cachedFlagState])
  {
    delegate = [(MSTriageAction *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [delegate shouldOverrideFlageStateForTriageAction:self])
    {
      if (![delegate overrideFlagStateForTriageAction:self])
      {
LABEL_10:
        v9 = 2;
        goto LABEL_11;
      }
    }

    else
    {
      messageListItemSelection = [(MSTriageAction *)self messageListItemSelection];
      isSelectAll = [messageListItemSelection isSelectAll];

      if (isSelectAll)
      {
        goto LABEL_10;
      }

      messageListItemSelection2 = [(MSTriageAction *)self messageListItemSelection];
      messageListItems = [messageListItemSelection2 messageListItems];
      v8 = [messageListItems ef_any:&__block_literal_global_4];

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
    delegate = [(MSTriageAction *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(delegate, "defaultFlagColorForTriageAction:", self)}];

      goto LABEL_7;
    }
  }

  v4 = self->_flagColor;
LABEL_7:

  return v4;
}

- (BOOL)_isFlagged
{
  flagColor = [(MSFlagTriageAction *)self flagColor];
  v3 = flagColor;
  if (flagColor)
  {
    [flagColor unsignedIntegerValue];
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

- (void)_toggleFlagWithBuilder:(id)builder
{
  builderCopy = builder;
  _isFlagged = [(MSFlagTriageAction *)self _isFlagged];
  [builderCopy changesFlaggedTo:_isFlagged];
  if (_isFlagged)
  {
    flagColor = [(MSFlagTriageAction *)self flagColor];
    [builderCopy changesFlagColorTo:{objc_msgSend(flagColor, "unsignedIntegerValue")}];
  }

  [(MSFlagTriageAction *)self _toggleCachedFlagState];
}

@end