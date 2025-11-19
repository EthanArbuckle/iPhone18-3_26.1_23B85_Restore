@interface MSSenderBlockingTriageAction
- (MSSenderBlockingTriageAction)initWithMessageListSelection:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 delegate:(id)a6 blockSender:(BOOL)a7;
- (id)_changeAction;
@end

@implementation MSSenderBlockingTriageAction

- (MSSenderBlockingTriageAction)initWithMessageListSelection:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 delegate:(id)a6 blockSender:(BOOL)a7
{
  v9.receiver = self;
  v9.super_class = MSSenderBlockingTriageAction;
  result = [(MSTriageAction *)&v9 initWithMessageListSelection:a3 origin:a4 actor:a5 delegate:a6];
  if (result)
  {
    result->_blockSender = a7;
  }

  return result;
}

- (id)_changeAction
{
  v3 = objc_alloc(MEMORY[0x277D06EB0]);
  v4 = [(MSTriageAction *)self messageListItemSelection];
  v5 = [v4 messageListItems];
  v6 = [(MSTriageAction *)self origin];
  v7 = [(MSTriageAction *)self actor];
  if (self)
  {
    blockSender = self->_blockSender;
  }

  else
  {
    blockSender = 0;
  }

  v9 = [v3 initWithMessageListItems:v5 origin:v6 actor:v7 blockSender:blockSender];

  return v9;
}

@end