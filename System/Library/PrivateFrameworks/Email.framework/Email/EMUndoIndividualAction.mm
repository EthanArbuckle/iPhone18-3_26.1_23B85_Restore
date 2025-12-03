@interface EMUndoIndividualAction
- (EMUndoIndividualAction)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMUndoIndividualAction

- (EMUndoIndividualAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = EMUndoIndividualAction;
  v5 = [(EMUndoIndividualAction *)&v22 init];
  if (v5)
  {
    v5->_actionType = [coderCopy decodeIntegerForKey:@"EFPropertyKey_actionType"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"EFPropertyKey_messageDatabaseIDs"];
    messageDatabaseIDs = v5->_messageDatabaseIDs;
    v5->_messageDatabaseIDs = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_destinationMailboxURL"];
    destinationMailboxURL = v5->_destinationMailboxURL;
    v5->_destinationMailboxURL = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_flagChange"];
    flagChange = v5->_flagChange;
    v5->_flagChange = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_readLaterDate"];
    readLaterDate = v5->_readLaterDate;
    v5->_readLaterDate = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_followUp"];
    followUp = v5->_followUp;
    v5->_followUp = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_category"];
    category = v5->_category;
    v5->_category = v19;

    v5->_blockSender = [coderCopy decodeBoolForKey:@"EFPropertyKey_blockSender"];
    v5->_conversationID = [coderCopy decodeInt64ForKey:@"EFPropertyKey_conversationID"];
    v5->_conversationNotificationLevel = [coderCopy decodeIntegerForKey:@"EFPropertyKey_conversationNotificationLevel"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[EMUndoIndividualAction actionType](self forKey:{"actionType"), @"EFPropertyKey_actionType"}];
  messageDatabaseIDs = [(EMUndoIndividualAction *)self messageDatabaseIDs];
  [coderCopy encodeObject:messageDatabaseIDs forKey:@"EFPropertyKey_messageDatabaseIDs"];

  destinationMailboxURL = [(EMUndoIndividualAction *)self destinationMailboxURL];
  [coderCopy encodeObject:destinationMailboxURL forKey:@"EFPropertyKey_destinationMailboxURL"];

  flagChange = [(EMUndoIndividualAction *)self flagChange];
  [coderCopy encodeObject:flagChange forKey:@"EFPropertyKey_flagChange"];

  readLaterDate = [(EMUndoIndividualAction *)self readLaterDate];
  [coderCopy encodeObject:readLaterDate forKey:@"EFPropertyKey_readLaterDate"];

  followUp = [(EMUndoIndividualAction *)self followUp];
  [coderCopy encodeObject:followUp forKey:@"EFPropertyKey_followUp"];

  category = [(EMUndoIndividualAction *)self category];
  [coderCopy encodeObject:category forKey:@"EFPropertyKey_category"];

  [coderCopy encodeBool:-[EMUndoIndividualAction blockSender](self forKey:{"blockSender"), @"EFPropertyKey_blockSender"}];
  [coderCopy encodeInt64:-[EMUndoIndividualAction conversationID](self forKey:{"conversationID"), @"EFPropertyKey_conversationID"}];
  [coderCopy encodeInteger:-[EMUndoIndividualAction conversationNotificationLevel](self forKey:{"conversationNotificationLevel"), @"EFPropertyKey_conversationNotificationLevel"}];
}

@end