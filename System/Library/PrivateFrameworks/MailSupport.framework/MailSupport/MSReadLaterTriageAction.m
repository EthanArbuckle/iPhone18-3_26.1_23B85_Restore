@interface MSReadLaterTriageAction
- (MSReadLaterTriageAction)initWithMessageListSelection:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 delegate:(id)a6 readLaterDate:(id)a7;
- (id)_changeAction;
@end

@implementation MSReadLaterTriageAction

- (MSReadLaterTriageAction)initWithMessageListSelection:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 delegate:(id)a6 readLaterDate:(id)a7
{
  v13 = a7;
  v17.receiver = self;
  v17.super_class = MSReadLaterTriageAction;
  v14 = [(MSTriageAction *)&v17 initWithMessageListSelection:a3 origin:a4 actor:a5 delegate:a6];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_readLaterDate, a7);
  }

  return v15;
}

- (id)_changeAction
{
  v3 = objc_alloc(MEMORY[0x277D06E20]);
  v4 = [(MSTriageAction *)self messageListItemSelection];
  v5 = [v4 messageListItems];
  v6 = [(MSTriageAction *)self origin];
  v7 = [(MSTriageAction *)self actor];
  v8 = [(MSReadLaterTriageAction *)self readLaterDate];
  v9 = [v3 initWithMessageListItems:v5 origin:v6 actor:v7 readLaterDate:v8];

  return v9;
}

@end