@interface ABMoveLocalAction
- (ABMoveLocalAction)initWithContacts:(id)contacts groups:(id)groups;
@end

@implementation ABMoveLocalAction

- (ABMoveLocalAction)initWithContacts:(id)contacts groups:(id)groups
{
  contactsCopy = contacts;
  groupsCopy = groups;
  v14.receiver = self;
  v14.super_class = ABMoveLocalAction;
  v8 = [(ABMoveLocalAction *)&v14 initWithItemChangeType:5 changedItem:0 serverId:0];
  if (v8)
  {
    v9 = [contactsCopy copy];
    contacts = v8->_contacts;
    v8->_contacts = v9;

    v11 = [groupsCopy copy];
    groups = v8->_groups;
    v8->_groups = v11;
  }

  return v8;
}

@end