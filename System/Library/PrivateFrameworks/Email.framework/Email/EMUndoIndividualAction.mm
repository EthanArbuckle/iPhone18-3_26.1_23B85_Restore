@interface EMUndoIndividualAction
- (EMUndoIndividualAction)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMUndoIndividualAction

- (EMUndoIndividualAction)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = EMUndoIndividualAction;
  v5 = [(EMUndoIndividualAction *)&v22 init];
  if (v5)
  {
    v5->_actionType = [v4 decodeIntegerForKey:@"EFPropertyKey_actionType"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"EFPropertyKey_messageDatabaseIDs"];
    messageDatabaseIDs = v5->_messageDatabaseIDs;
    v5->_messageDatabaseIDs = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_destinationMailboxURL"];
    destinationMailboxURL = v5->_destinationMailboxURL;
    v5->_destinationMailboxURL = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_flagChange"];
    flagChange = v5->_flagChange;
    v5->_flagChange = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_readLaterDate"];
    readLaterDate = v5->_readLaterDate;
    v5->_readLaterDate = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_followUp"];
    followUp = v5->_followUp;
    v5->_followUp = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_category"];
    category = v5->_category;
    v5->_category = v19;

    v5->_blockSender = [v4 decodeBoolForKey:@"EFPropertyKey_blockSender"];
    v5->_conversationID = [v4 decodeInt64ForKey:@"EFPropertyKey_conversationID"];
    v5->_conversationNotificationLevel = [v4 decodeIntegerForKey:@"EFPropertyKey_conversationNotificationLevel"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  [v10 encodeInteger:-[EMUndoIndividualAction actionType](self forKey:{"actionType"), @"EFPropertyKey_actionType"}];
  v4 = [(EMUndoIndividualAction *)self messageDatabaseIDs];
  [v10 encodeObject:v4 forKey:@"EFPropertyKey_messageDatabaseIDs"];

  v5 = [(EMUndoIndividualAction *)self destinationMailboxURL];
  [v10 encodeObject:v5 forKey:@"EFPropertyKey_destinationMailboxURL"];

  v6 = [(EMUndoIndividualAction *)self flagChange];
  [v10 encodeObject:v6 forKey:@"EFPropertyKey_flagChange"];

  v7 = [(EMUndoIndividualAction *)self readLaterDate];
  [v10 encodeObject:v7 forKey:@"EFPropertyKey_readLaterDate"];

  v8 = [(EMUndoIndividualAction *)self followUp];
  [v10 encodeObject:v8 forKey:@"EFPropertyKey_followUp"];

  v9 = [(EMUndoIndividualAction *)self category];
  [v10 encodeObject:v9 forKey:@"EFPropertyKey_category"];

  [v10 encodeBool:-[EMUndoIndividualAction blockSender](self forKey:{"blockSender"), @"EFPropertyKey_blockSender"}];
  [v10 encodeInt64:-[EMUndoIndividualAction conversationID](self forKey:{"conversationID"), @"EFPropertyKey_conversationID"}];
  [v10 encodeInteger:-[EMUndoIndividualAction conversationNotificationLevel](self forKey:{"conversationNotificationLevel"), @"EFPropertyKey_conversationNotificationLevel"}];
}

@end