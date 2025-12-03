@interface MSSenderBlockingTriageAction
- (MSSenderBlockingTriageAction)initWithMessageListSelection:(id)selection origin:(int64_t)origin actor:(int64_t)actor delegate:(id)delegate blockSender:(BOOL)sender;
- (id)_changeAction;
@end

@implementation MSSenderBlockingTriageAction

- (MSSenderBlockingTriageAction)initWithMessageListSelection:(id)selection origin:(int64_t)origin actor:(int64_t)actor delegate:(id)delegate blockSender:(BOOL)sender
{
  v9.receiver = self;
  v9.super_class = MSSenderBlockingTriageAction;
  result = [(MSTriageAction *)&v9 initWithMessageListSelection:selection origin:origin actor:actor delegate:delegate];
  if (result)
  {
    result->_blockSender = sender;
  }

  return result;
}

- (id)_changeAction
{
  v3 = objc_alloc(MEMORY[0x277D06EB0]);
  messageListItemSelection = [(MSTriageAction *)self messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];
  origin = [(MSTriageAction *)self origin];
  actor = [(MSTriageAction *)self actor];
  if (self)
  {
    blockSender = self->_blockSender;
  }

  else
  {
    blockSender = 0;
  }

  v9 = [v3 initWithMessageListItems:messageListItems origin:origin actor:actor blockSender:blockSender];

  return v9;
}

@end