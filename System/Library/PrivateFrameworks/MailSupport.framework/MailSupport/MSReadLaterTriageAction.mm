@interface MSReadLaterTriageAction
- (MSReadLaterTriageAction)initWithMessageListSelection:(id)selection origin:(int64_t)origin actor:(int64_t)actor delegate:(id)delegate readLaterDate:(id)date;
- (id)_changeAction;
@end

@implementation MSReadLaterTriageAction

- (MSReadLaterTriageAction)initWithMessageListSelection:(id)selection origin:(int64_t)origin actor:(int64_t)actor delegate:(id)delegate readLaterDate:(id)date
{
  dateCopy = date;
  v17.receiver = self;
  v17.super_class = MSReadLaterTriageAction;
  v14 = [(MSTriageAction *)&v17 initWithMessageListSelection:selection origin:origin actor:actor delegate:delegate];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_readLaterDate, date);
  }

  return v15;
}

- (id)_changeAction
{
  v3 = objc_alloc(MEMORY[0x277D06E20]);
  messageListItemSelection = [(MSTriageAction *)self messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];
  origin = [(MSTriageAction *)self origin];
  actor = [(MSTriageAction *)self actor];
  readLaterDate = [(MSReadLaterTriageAction *)self readLaterDate];
  v9 = [v3 initWithMessageListItems:messageListItems origin:origin actor:actor readLaterDate:readLaterDate];

  return v9;
}

@end