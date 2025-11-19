@interface ABMoveLocalAction
- (ABMoveLocalAction)initWithContacts:(id)a3 groups:(id)a4;
@end

@implementation ABMoveLocalAction

- (ABMoveLocalAction)initWithContacts:(id)a3 groups:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ABMoveLocalAction;
  v8 = [(ABMoveLocalAction *)&v14 initWithItemChangeType:5 changedItem:0 serverId:0];
  if (v8)
  {
    v9 = [v6 copy];
    contacts = v8->_contacts;
    v8->_contacts = v9;

    v11 = [v7 copy];
    groups = v8->_groups;
    v8->_groups = v11;
  }

  return v8;
}

@end