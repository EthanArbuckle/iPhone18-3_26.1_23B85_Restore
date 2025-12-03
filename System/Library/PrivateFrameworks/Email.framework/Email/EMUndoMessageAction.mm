@interface EMUndoMessageAction
- (EMUndoMessageAction)initWithCoder:(id)coder;
- (EMUndoMessageAction)initWithIndividualActions:(id)actions origin:(int64_t)origin actor:(int64_t)actor;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMUndoMessageAction

- (EMUndoMessageAction)initWithIndividualActions:(id)actions origin:(int64_t)origin actor:(int64_t)actor
{
  actionsCopy = actions;
  v13.receiver = self;
  v13.super_class = EMUndoMessageAction;
  v10 = [(EMMessageChangeAction *)&v13 initWithMessageListItems:0 origin:origin actor:actor];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_individualActions, actions);
  }

  return v11;
}

- (EMUndoMessageAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = EMUndoMessageAction;
  v5 = [(EMMessageChangeAction *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"EFPropertyKey_individualActions"];
    individualActions = v5->_individualActions;
    v5->_individualActions = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = EMUndoMessageAction;
  [(EMMessageChangeAction *)&v6 encodeWithCoder:coderCopy];
  individualActions = [(EMUndoMessageAction *)self individualActions];
  [coderCopy encodeObject:individualActions forKey:@"EFPropertyKey_individualActions"];
}

@end