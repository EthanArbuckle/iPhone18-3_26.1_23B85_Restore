@interface EMMessageReadLaterAction
- (EMMessageReadLaterAction)initWithCoder:(id)a3;
- (EMMessageReadLaterAction)initWithMessageListItems:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 readLaterDate:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMMessageReadLaterAction

- (EMMessageReadLaterAction)initWithMessageListItems:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 readLaterDate:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = EMMessageReadLaterAction;
  v12 = [(EMMessageChangeAction *)&v15 initWithMessageListItems:a3 origin:a4 actor:a5];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_readLaterDate, a6);
  }

  return v13;
}

- (EMMessageReadLaterAction)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EMMessageReadLaterAction;
  v5 = [(EMMessageChangeAction *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_readLaterDate"];
    readLaterDate = v5->_readLaterDate;
    v5->_readLaterDate = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = EMMessageReadLaterAction;
  [(EMMessageChangeAction *)&v6 encodeWithCoder:v4];
  v5 = [(EMMessageReadLaterAction *)self readLaterDate];
  [v4 encodeObject:v5 forKey:@"EFPropertyKey_readLaterDate"];
}

@end