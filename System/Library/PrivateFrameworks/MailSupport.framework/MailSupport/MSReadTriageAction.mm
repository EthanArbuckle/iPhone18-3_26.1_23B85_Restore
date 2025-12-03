@interface MSReadTriageAction
- (BOOL)flagState;
- (id)messageFlags;
- (void)_toggleFlagWithBuilder:(id)builder;
@end

@implementation MSReadTriageAction

- (BOOL)flagState
{
  delegate = [(MSTriageAction *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [delegate shouldOverrideFlageStateForTriageAction:self])
  {
    read = [delegate overrideFlagStateForTriageAction:self];
  }

  else
  {
    messageFlags = [(MSReadTriageAction *)self messageFlags];
    read = [messageFlags read];
  }

  return read;
}

- (id)messageFlags
{
  v2 = MEMORY[0x277D06DB8];
  messageListItemSelection = [(MSTriageAction *)self messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];
  v5 = [v2 combinedFlagsForMessageListItems:messageListItems forDisplay:0];

  return v5;
}

- (void)_toggleFlagWithBuilder:(id)builder
{
  builderCopy = builder;
  [builderCopy changesReadTo:{-[MSReadTriageAction flagState](self, "flagState") ^ 1}];
}

@end