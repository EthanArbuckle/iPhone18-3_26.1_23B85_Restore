@interface EMMessageReadLaterAction
- (EMMessageReadLaterAction)initWithCoder:(id)coder;
- (EMMessageReadLaterAction)initWithMessageListItems:(id)items origin:(int64_t)origin actor:(int64_t)actor readLaterDate:(id)date;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMMessageReadLaterAction

- (EMMessageReadLaterAction)initWithMessageListItems:(id)items origin:(int64_t)origin actor:(int64_t)actor readLaterDate:(id)date
{
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = EMMessageReadLaterAction;
  v12 = [(EMMessageChangeAction *)&v15 initWithMessageListItems:items origin:origin actor:actor];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_readLaterDate, date);
  }

  return v13;
}

- (EMMessageReadLaterAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = EMMessageReadLaterAction;
  v5 = [(EMMessageChangeAction *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_readLaterDate"];
    readLaterDate = v5->_readLaterDate;
    v5->_readLaterDate = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = EMMessageReadLaterAction;
  [(EMMessageChangeAction *)&v6 encodeWithCoder:coderCopy];
  readLaterDate = [(EMMessageReadLaterAction *)self readLaterDate];
  [coderCopy encodeObject:readLaterDate forKey:@"EFPropertyKey_readLaterDate"];
}

@end