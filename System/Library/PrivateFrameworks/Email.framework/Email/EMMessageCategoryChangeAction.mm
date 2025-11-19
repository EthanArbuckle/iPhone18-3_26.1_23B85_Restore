@interface EMMessageCategoryChangeAction
- (BOOL)isModelCategoryRestoration;
- (EMMessageCategoryChangeAction)initWithCoder:(id)a3;
- (EMMessageCategoryChangeAction)initWithMessageListItems:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 categoryType:(unint64_t)a6 changeOptions:(unint64_t)a7;
- (EMMessageCategoryChangeAction)initWithSenderAddress:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 categoryType:(unint64_t)a6 changeOptions:(unint64_t)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMMessageCategoryChangeAction

- (EMMessageCategoryChangeAction)initWithMessageListItems:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 categoryType:(unint64_t)a6 changeOptions:(unint64_t)a7
{
  v10.receiver = self;
  v10.super_class = EMMessageCategoryChangeAction;
  result = [(EMMessageChangeAction *)&v10 initWithMessageListItems:a3 origin:a4 actor:a5];
  if (result)
  {
    result->_categoryType = a6;
    result->_changeOptions = a7;
  }

  return result;
}

- (EMMessageCategoryChangeAction)initWithSenderAddress:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 categoryType:(unint64_t)a6 changeOptions:(unint64_t)a7
{
  v13 = a3;
  v17.receiver = self;
  v17.super_class = EMMessageCategoryChangeAction;
  v14 = [(EMMessageChangeAction *)&v17 initWithMessageListItems:0 origin:a4 actor:a5];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_senderAddress, a3);
    v15->_categoryType = a6;
    v15->_changeOptions = a7;
  }

  return v15;
}

- (BOOL)isModelCategoryRestoration
{
  v2 = [(EMMessageCategoryChangeAction *)self changeOptions];

  return [EMMessageCategoryChangeAction isModelCategoryRestoration:v2];
}

- (EMMessageCategoryChangeAction)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EMMessageCategoryChangeAction;
  v5 = [(EMMessageChangeAction *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_categoryType = [v4 decodeIntegerForKey:@"EFPropertyKey_categoryType"];
    v5->_changeOptions = [v4 decodeIntegerForKey:@"EFPropertyKey_changeOptions"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_senderAddress"];
    senderAddress = v5->_senderAddress;
    v5->_senderAddress = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = EMMessageCategoryChangeAction;
  [(EMMessageChangeAction *)&v6 encodeWithCoder:v4];
  [v4 encodeInteger:-[EMMessageCategoryChangeAction categoryType](self forKey:{"categoryType"), @"EFPropertyKey_categoryType"}];
  [v4 encodeInteger:-[EMMessageCategoryChangeAction changeOptions](self forKey:{"changeOptions"), @"EFPropertyKey_changeOptions"}];
  v5 = [(EMMessageCategoryChangeAction *)self senderAddress];
  [v4 encodeObject:v5 forKey:@"EFPropertyKey_senderAddress"];
}

@end