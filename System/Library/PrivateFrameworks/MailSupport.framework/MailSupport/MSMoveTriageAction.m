@interface MSMoveTriageAction
- (MSMoveTriageAction)initWithMessageListSelection:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 delegate:(id)a6 destinationMailbox:(id)a7 flagChange:(id)a8 copyMessages:(BOOL)a9;
- (MSMoveTriageAction)initWithMessageListSelection:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 delegate:(id)a6 destinationMailboxType:(int64_t)a7 flagChange:(id)a8 copyMessages:(BOOL)a9;
- (MSMoveTriageAction)initWithQuery:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 delegate:(id)a6 destinationMailboxType:(int64_t)a7 flagChange:(id)a8 copyMessages:(BOOL)a9;
- (id)_changeAction;
@end

@implementation MSMoveTriageAction

- (MSMoveTriageAction)initWithMessageListSelection:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 delegate:(id)a6 destinationMailbox:(id)a7 flagChange:(id)a8 copyMessages:(BOOL)a9
{
  v16 = a7;
  v17 = a8;
  v21.receiver = self;
  v21.super_class = MSMoveTriageAction;
  v18 = [(MSTriageAction *)&v21 initWithMessageListSelection:a3 origin:a4 actor:a5 delegate:a6];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_destinationMailbox, a7);
    objc_storeStrong(&v19->_flagChange, a8);
    v19->_copyMessages = a9;
  }

  return v19;
}

- (MSMoveTriageAction)initWithMessageListSelection:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 delegate:(id)a6 destinationMailboxType:(int64_t)a7 flagChange:(id)a8 copyMessages:(BOOL)a9
{
  v16 = a8;
  v20.receiver = self;
  v20.super_class = MSMoveTriageAction;
  v17 = [(MSTriageAction *)&v20 initWithMessageListSelection:a3 origin:a4 actor:a5 delegate:a6];
  v18 = v17;
  if (v17)
  {
    v17->_destinationMailboxType = a7;
    objc_storeStrong(&v17->_flagChange, a8);
    v18->_copyMessages = a9;
  }

  return v18;
}

- (MSMoveTriageAction)initWithQuery:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 delegate:(id)a6 destinationMailboxType:(int64_t)a7 flagChange:(id)a8 copyMessages:(BOOL)a9
{
  v16 = a8;
  v20.receiver = self;
  v20.super_class = MSMoveTriageAction;
  v17 = [(MSTriageAction *)&v20 initWithQuery:a3 origin:a4 actor:a5 delegate:a6];
  v18 = v17;
  if (v17)
  {
    v17->_destinationMailboxType = a7;
    objc_storeStrong(&v17->_flagChange, a8);
    v18->_copyMessages = a9;
  }

  return v18;
}

- (id)_changeAction
{
  v3 = [(MSTriageAction *)self messageListItemSelection];
  v4 = [v3 isSelectAll];

  destinationMailbox = self->_destinationMailbox;
  if (!v4)
  {
    if (destinationMailbox)
    {
      v12 = objc_alloc(MEMORY[0x277D06E40]);
      v7 = [(MSTriageAction *)self messageListItemSelection];
      v8 = [v7 messageListItems];
      v13 = [v12 initWithMessageListItems:v8 origin:-[MSTriageAction origin](self actor:"origin") destinationMailbox:-[MSTriageAction actor](self copyMessages:{"actor"), self->_destinationMailbox, self->_copyMessages}];
    }

    else
    {
      if (!self->_destinationMailboxType)
      {
        goto LABEL_18;
      }

      v17 = [(MSTriageAction *)self query];

      v18 = objc_alloc(MEMORY[0x277D06E40]);
      if (v17)
      {
        v7 = [(MSTriageAction *)self query];
        v14 = [v18 initWithQuery:v7 origin:-[MSTriageAction origin](self actor:"origin") specialDestinationMailboxType:-[MSTriageAction actor](self flagChange:"actor") copyMessages:{self->_destinationMailboxType, self->_flagChange, self->_copyMessages}];
        goto LABEL_11;
      }

      v7 = [(MSTriageAction *)self messageListItemSelection];
      v8 = [v7 messageListItems];
      v13 = [v18 initWithMessageListItems:v8 origin:-[MSTriageAction origin](self actor:"origin") specialDestinationMailboxType:-[MSTriageAction actor](self flagChange:"actor") copyMessages:{self->_destinationMailboxType, self->_flagChange, self->_copyMessages}];
    }

    v14 = v13;
LABEL_10:

LABEL_11:
    goto LABEL_12;
  }

  if (destinationMailbox)
  {
    v6 = objc_alloc(MEMORY[0x277D06E48]);
    v7 = [(MSTriageAction *)self messageListItemSelection];
    v8 = [v7 mailboxes];
    v9 = [(MSTriageAction *)self messageListItemSelection];
    v10 = [v9 messageListItems];
    v11 = [v6 initWithMailboxes:v8 messageListItemsToExclude:v10 destinationMailbox:self->_destinationMailbox copyMessages:self->_copyMessages origin:-[MSTriageAction origin](self actor:{"origin"), -[MSTriageAction actor](self, "actor")}];
LABEL_9:
    v14 = v11;

    goto LABEL_10;
  }

  if (self->_destinationMailboxType)
  {
    v15 = objc_alloc(MEMORY[0x277D06E48]);
    v7 = [(MSTriageAction *)self messageListItemSelection];
    v8 = [v7 mailboxes];
    v9 = [(MSTriageAction *)self messageListItemSelection];
    v10 = [v9 messageListItems];
    v11 = [v15 initWithMailboxes:v8 messageListItemsToExclude:v10 specialDestinationMailboxType:self->_destinationMailboxType flagChange:self->_flagChange copyMessages:self->_copyMessages origin:-[MSTriageAction origin](self actor:{"origin"), -[MSTriageAction actor](self, "actor")}];
    goto LABEL_9;
  }

LABEL_18:
  v14 = 0;
LABEL_12:

  return v14;
}

@end