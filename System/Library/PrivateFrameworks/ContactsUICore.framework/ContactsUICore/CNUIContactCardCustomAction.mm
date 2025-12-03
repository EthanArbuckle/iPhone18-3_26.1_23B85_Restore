@interface CNUIContactCardCustomAction
- (CNUIContactCardCustomAction)initWithTitle:(id)title contactIdentifier:(id)identifier isDestructive:(BOOL)destructive actionBlock:(id)block;
- (void)performActionForContactIdentifier:(id)identifier sourceView:(id)view;
@end

@implementation CNUIContactCardCustomAction

- (CNUIContactCardCustomAction)initWithTitle:(id)title contactIdentifier:(id)identifier isDestructive:(BOOL)destructive actionBlock:(id)block
{
  titleCopy = title;
  identifierCopy = identifier;
  blockCopy = block;
  v20.receiver = self;
  v20.super_class = CNUIContactCardCustomAction;
  v14 = [(CNUIContactCardCustomAction *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_title, title);
    objc_storeStrong(&v15->_contactIdentifier, identifier);
    v15->_destructive = destructive;
    v16 = [blockCopy copy];
    actionBlock = v15->_actionBlock;
    v15->_actionBlock = v16;

    v18 = v15;
  }

  return v15;
}

- (void)performActionForContactIdentifier:(id)identifier sourceView:(id)view
{
  viewCopy = view;
  identifierCopy = identifier;
  contactIdentifier = [(CNUIContactCardCustomAction *)self contactIdentifier];

  if (contactIdentifier == identifierCopy)
  {
    actionBlock = [(CNUIContactCardCustomAction *)self actionBlock];
    (actionBlock)[2](actionBlock, viewCopy);
  }
}

@end