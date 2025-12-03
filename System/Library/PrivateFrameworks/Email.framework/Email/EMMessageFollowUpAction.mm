@interface EMMessageFollowUpAction
- (EMMessageFollowUpAction)initWithCoder:(id)coder;
- (EMMessageFollowUpAction)initWithMessageListItems:(id)items origin:(int64_t)origin actor:(int64_t)actor followUp:(id)up;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMMessageFollowUpAction

- (EMMessageFollowUpAction)initWithMessageListItems:(id)items origin:(int64_t)origin actor:(int64_t)actor followUp:(id)up
{
  upCopy = up;
  v15.receiver = self;
  v15.super_class = EMMessageFollowUpAction;
  v12 = [(EMMessageChangeAction *)&v15 initWithMessageListItems:items origin:origin actor:actor];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_followUp, up);
  }

  return v13;
}

- (EMMessageFollowUpAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = EMMessageFollowUpAction;
  v5 = [(EMMessageChangeAction *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_followUp"];
    followUp = v5->_followUp;
    v5->_followUp = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = EMMessageFollowUpAction;
  [(EMMessageChangeAction *)&v6 encodeWithCoder:coderCopy];
  followUp = [(EMMessageFollowUpAction *)self followUp];
  [coderCopy encodeObject:followUp forKey:@"EFPropertyKey_followUp"];
}

@end