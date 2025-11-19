@interface CNUIContactCardCustomAction
- (CNUIContactCardCustomAction)initWithTitle:(id)a3 contactIdentifier:(id)a4 isDestructive:(BOOL)a5 actionBlock:(id)a6;
- (void)performActionForContactIdentifier:(id)a3 sourceView:(id)a4;
@end

@implementation CNUIContactCardCustomAction

- (CNUIContactCardCustomAction)initWithTitle:(id)a3 contactIdentifier:(id)a4 isDestructive:(BOOL)a5 actionBlock:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = CNUIContactCardCustomAction;
  v14 = [(CNUIContactCardCustomAction *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_title, a3);
    objc_storeStrong(&v15->_contactIdentifier, a4);
    v15->_destructive = a5;
    v16 = [v13 copy];
    actionBlock = v15->_actionBlock;
    v15->_actionBlock = v16;

    v18 = v15;
  }

  return v15;
}

- (void)performActionForContactIdentifier:(id)a3 sourceView:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(CNUIContactCardCustomAction *)self contactIdentifier];

  if (v7 == v6)
  {
    v8 = [(CNUIContactCardCustomAction *)self actionBlock];
    (v8)[2](v8, v9);
  }
}

@end