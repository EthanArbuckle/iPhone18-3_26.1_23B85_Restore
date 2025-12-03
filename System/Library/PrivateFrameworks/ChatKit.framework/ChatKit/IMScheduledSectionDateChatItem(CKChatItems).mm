@interface IMScheduledSectionDateChatItem(CKChatItems)
- (uint64_t)hash;
- (uint64_t)isEqual:()CKChatItems;
- (uint64_t)isEqualToScheduledDateChatItem:()CKChatItems;
@end

@implementation IMScheduledSectionDateChatItem(CKChatItems)

- (uint64_t)hash
{
  date = [self date];
  v2 = [date hash];

  return v2;
}

- (uint64_t)isEqualToScheduledDateChatItem:()CKChatItems
{
  v4 = a3;
  date = [self date];
  date2 = [v4 date];

  v7 = [date isEqualToDate:date2];
  return v7;
}

- (uint64_t)isEqual:()CKChatItems
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [self isEqualToScheduledDateChatItem:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end