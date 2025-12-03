@interface EMMessageCategoryChangeAction
- (BOOL)isModelCategoryRestoration;
- (EMMessageCategoryChangeAction)initWithCoder:(id)coder;
- (EMMessageCategoryChangeAction)initWithMessageListItems:(id)items origin:(int64_t)origin actor:(int64_t)actor categoryType:(unint64_t)type changeOptions:(unint64_t)options;
- (EMMessageCategoryChangeAction)initWithSenderAddress:(id)address origin:(int64_t)origin actor:(int64_t)actor categoryType:(unint64_t)type changeOptions:(unint64_t)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMMessageCategoryChangeAction

- (EMMessageCategoryChangeAction)initWithMessageListItems:(id)items origin:(int64_t)origin actor:(int64_t)actor categoryType:(unint64_t)type changeOptions:(unint64_t)options
{
  v10.receiver = self;
  v10.super_class = EMMessageCategoryChangeAction;
  result = [(EMMessageChangeAction *)&v10 initWithMessageListItems:items origin:origin actor:actor];
  if (result)
  {
    result->_categoryType = type;
    result->_changeOptions = options;
  }

  return result;
}

- (EMMessageCategoryChangeAction)initWithSenderAddress:(id)address origin:(int64_t)origin actor:(int64_t)actor categoryType:(unint64_t)type changeOptions:(unint64_t)options
{
  addressCopy = address;
  v17.receiver = self;
  v17.super_class = EMMessageCategoryChangeAction;
  v14 = [(EMMessageChangeAction *)&v17 initWithMessageListItems:0 origin:origin actor:actor];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_senderAddress, address);
    v15->_categoryType = type;
    v15->_changeOptions = options;
  }

  return v15;
}

- (BOOL)isModelCategoryRestoration
{
  changeOptions = [(EMMessageCategoryChangeAction *)self changeOptions];

  return [EMMessageCategoryChangeAction isModelCategoryRestoration:changeOptions];
}

- (EMMessageCategoryChangeAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = EMMessageCategoryChangeAction;
  v5 = [(EMMessageChangeAction *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_categoryType = [coderCopy decodeIntegerForKey:@"EFPropertyKey_categoryType"];
    v5->_changeOptions = [coderCopy decodeIntegerForKey:@"EFPropertyKey_changeOptions"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_senderAddress"];
    senderAddress = v5->_senderAddress;
    v5->_senderAddress = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = EMMessageCategoryChangeAction;
  [(EMMessageChangeAction *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[EMMessageCategoryChangeAction categoryType](self forKey:{"categoryType"), @"EFPropertyKey_categoryType"}];
  [coderCopy encodeInteger:-[EMMessageCategoryChangeAction changeOptions](self forKey:{"changeOptions"), @"EFPropertyKey_changeOptions"}];
  senderAddress = [(EMMessageCategoryChangeAction *)self senderAddress];
  [coderCopy encodeObject:senderAddress forKey:@"EFPropertyKey_senderAddress"];
}

@end