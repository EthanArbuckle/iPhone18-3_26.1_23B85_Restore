@interface EMMessageFlagChangeAction
- (EMMessageFlagChangeAction)initWithCoder:(id)coder;
- (EMMessageFlagChangeAction)initWithMessageListItems:(id)items origin:(int64_t)origin actor:(int64_t)actor flagChange:(id)change;
- (EMMessageFlagChangeAction)initWithObjectIDs:(id)ds origin:(int64_t)origin actor:(int64_t)actor flagChange:(id)change;
- (EMMessageFlagChangeAction)initWithQuery:(id)query origin:(int64_t)origin actor:(int64_t)actor flagChange:(id)change;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMMessageFlagChangeAction

- (EMMessageFlagChangeAction)initWithMessageListItems:(id)items origin:(int64_t)origin actor:(int64_t)actor flagChange:(id)change
{
  changeCopy = change;
  v15.receiver = self;
  v15.super_class = EMMessageFlagChangeAction;
  v12 = [(EMMessageChangeAction *)&v15 initWithMessageListItems:items origin:origin actor:actor];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_flagChange, change);
  }

  return v13;
}

- (EMMessageFlagChangeAction)initWithQuery:(id)query origin:(int64_t)origin actor:(int64_t)actor flagChange:(id)change
{
  changeCopy = change;
  v15.receiver = self;
  v15.super_class = EMMessageFlagChangeAction;
  v12 = [(EMMessageChangeAction *)&v15 initWithQuery:query origin:origin actor:actor];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_flagChange, change);
  }

  return v13;
}

- (EMMessageFlagChangeAction)initWithObjectIDs:(id)ds origin:(int64_t)origin actor:(int64_t)actor flagChange:(id)change
{
  changeCopy = change;
  v15.receiver = self;
  v15.super_class = EMMessageFlagChangeAction;
  v12 = [(EMMessageChangeAction *)&v15 initWithObjectIDs:ds origin:origin actor:actor];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_flagChange, change);
  }

  return v13;
}

- (EMMessageFlagChangeAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = EMMessageFlagChangeAction;
  v5 = [(EMMessageChangeAction *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_flagChange"];
    flagChange = v5->_flagChange;
    v5->_flagChange = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = EMMessageFlagChangeAction;
  [(EMMessageChangeAction *)&v6 encodeWithCoder:coderCopy];
  flagChange = [(EMMessageFlagChangeAction *)self flagChange];
  [coderCopy encodeObject:flagChange forKey:@"EFPropertyKey_flagChange"];
}

@end