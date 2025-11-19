@interface EMUndoMessageAction
- (EMUndoMessageAction)initWithCoder:(id)a3;
- (EMUndoMessageAction)initWithIndividualActions:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMUndoMessageAction

- (EMUndoMessageAction)initWithIndividualActions:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = EMUndoMessageAction;
  v10 = [(EMMessageChangeAction *)&v13 initWithMessageListItems:0 origin:a4 actor:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_individualActions, a3);
  }

  return v11;
}

- (EMUndoMessageAction)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = EMUndoMessageAction;
  v5 = [(EMMessageChangeAction *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"EFPropertyKey_individualActions"];
    individualActions = v5->_individualActions;
    v5->_individualActions = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = EMUndoMessageAction;
  [(EMMessageChangeAction *)&v6 encodeWithCoder:v4];
  v5 = [(EMUndoMessageAction *)self individualActions];
  [v4 encodeObject:v5 forKey:@"EFPropertyKey_individualActions"];
}

@end