@interface MSMoveTriageAction
- (MSMoveTriageAction)initWithMessageListSelection:(id)selection origin:(int64_t)origin actor:(int64_t)actor delegate:(id)delegate destinationMailbox:(id)mailbox flagChange:(id)change copyMessages:(BOOL)messages;
- (MSMoveTriageAction)initWithMessageListSelection:(id)selection origin:(int64_t)origin actor:(int64_t)actor delegate:(id)delegate destinationMailboxType:(int64_t)type flagChange:(id)change copyMessages:(BOOL)messages;
- (MSMoveTriageAction)initWithQuery:(id)query origin:(int64_t)origin actor:(int64_t)actor delegate:(id)delegate destinationMailboxType:(int64_t)type flagChange:(id)change copyMessages:(BOOL)messages;
- (id)_changeAction;
@end

@implementation MSMoveTriageAction

- (MSMoveTriageAction)initWithMessageListSelection:(id)selection origin:(int64_t)origin actor:(int64_t)actor delegate:(id)delegate destinationMailbox:(id)mailbox flagChange:(id)change copyMessages:(BOOL)messages
{
  mailboxCopy = mailbox;
  changeCopy = change;
  v21.receiver = self;
  v21.super_class = MSMoveTriageAction;
  v18 = [(MSTriageAction *)&v21 initWithMessageListSelection:selection origin:origin actor:actor delegate:delegate];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_destinationMailbox, mailbox);
    objc_storeStrong(&v19->_flagChange, change);
    v19->_copyMessages = messages;
  }

  return v19;
}

- (MSMoveTriageAction)initWithMessageListSelection:(id)selection origin:(int64_t)origin actor:(int64_t)actor delegate:(id)delegate destinationMailboxType:(int64_t)type flagChange:(id)change copyMessages:(BOOL)messages
{
  changeCopy = change;
  v20.receiver = self;
  v20.super_class = MSMoveTriageAction;
  v17 = [(MSTriageAction *)&v20 initWithMessageListSelection:selection origin:origin actor:actor delegate:delegate];
  v18 = v17;
  if (v17)
  {
    v17->_destinationMailboxType = type;
    objc_storeStrong(&v17->_flagChange, change);
    v18->_copyMessages = messages;
  }

  return v18;
}

- (MSMoveTriageAction)initWithQuery:(id)query origin:(int64_t)origin actor:(int64_t)actor delegate:(id)delegate destinationMailboxType:(int64_t)type flagChange:(id)change copyMessages:(BOOL)messages
{
  changeCopy = change;
  v20.receiver = self;
  v20.super_class = MSMoveTriageAction;
  v17 = [(MSTriageAction *)&v20 initWithQuery:query origin:origin actor:actor delegate:delegate];
  v18 = v17;
  if (v17)
  {
    v17->_destinationMailboxType = type;
    objc_storeStrong(&v17->_flagChange, change);
    v18->_copyMessages = messages;
  }

  return v18;
}

- (id)_changeAction
{
  messageListItemSelection = [(MSTriageAction *)self messageListItemSelection];
  isSelectAll = [messageListItemSelection isSelectAll];

  destinationMailbox = self->_destinationMailbox;
  if (!isSelectAll)
  {
    if (destinationMailbox)
    {
      v12 = objc_alloc(MEMORY[0x277D06E40]);
      messageListItemSelection2 = [(MSTriageAction *)self messageListItemSelection];
      messageListItems = [messageListItemSelection2 messageListItems];
      v13 = [v12 initWithMessageListItems:messageListItems origin:-[MSTriageAction origin](self actor:"origin") destinationMailbox:-[MSTriageAction actor](self copyMessages:{"actor"), self->_destinationMailbox, self->_copyMessages}];
    }

    else
    {
      if (!self->_destinationMailboxType)
      {
        goto LABEL_18;
      }

      query = [(MSTriageAction *)self query];

      v18 = objc_alloc(MEMORY[0x277D06E40]);
      if (query)
      {
        messageListItemSelection2 = [(MSTriageAction *)self query];
        v14 = [v18 initWithQuery:messageListItemSelection2 origin:-[MSTriageAction origin](self actor:"origin") specialDestinationMailboxType:-[MSTriageAction actor](self flagChange:"actor") copyMessages:{self->_destinationMailboxType, self->_flagChange, self->_copyMessages}];
        goto LABEL_11;
      }

      messageListItemSelection2 = [(MSTriageAction *)self messageListItemSelection];
      messageListItems = [messageListItemSelection2 messageListItems];
      v13 = [v18 initWithMessageListItems:messageListItems origin:-[MSTriageAction origin](self actor:"origin") specialDestinationMailboxType:-[MSTriageAction actor](self flagChange:"actor") copyMessages:{self->_destinationMailboxType, self->_flagChange, self->_copyMessages}];
    }

    v14 = v13;
LABEL_10:

LABEL_11:
    goto LABEL_12;
  }

  if (destinationMailbox)
  {
    v6 = objc_alloc(MEMORY[0x277D06E48]);
    messageListItemSelection2 = [(MSTriageAction *)self messageListItemSelection];
    messageListItems = [messageListItemSelection2 mailboxes];
    messageListItemSelection3 = [(MSTriageAction *)self messageListItemSelection];
    messageListItems2 = [messageListItemSelection3 messageListItems];
    v11 = [v6 initWithMailboxes:messageListItems messageListItemsToExclude:messageListItems2 destinationMailbox:self->_destinationMailbox copyMessages:self->_copyMessages origin:-[MSTriageAction origin](self actor:{"origin"), -[MSTriageAction actor](self, "actor")}];
LABEL_9:
    v14 = v11;

    goto LABEL_10;
  }

  if (self->_destinationMailboxType)
  {
    v15 = objc_alloc(MEMORY[0x277D06E48]);
    messageListItemSelection2 = [(MSTriageAction *)self messageListItemSelection];
    messageListItems = [messageListItemSelection2 mailboxes];
    messageListItemSelection3 = [(MSTriageAction *)self messageListItemSelection];
    messageListItems2 = [messageListItemSelection3 messageListItems];
    v11 = [v15 initWithMailboxes:messageListItems messageListItemsToExclude:messageListItems2 specialDestinationMailboxType:self->_destinationMailboxType flagChange:self->_flagChange copyMessages:self->_copyMessages origin:-[MSTriageAction origin](self actor:{"origin"), -[MSTriageAction actor](self, "actor")}];
    goto LABEL_9;
  }

LABEL_18:
  v14 = 0;
LABEL_12:

  return v14;
}

@end