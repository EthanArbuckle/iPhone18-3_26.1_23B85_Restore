@interface BCSItem
- (BCSItem)init;
- (BOOL)isExpired;
@end

@implementation BCSItem

- (BCSItem)init
{
  v5.receiver = self;
  v5.super_class = BCSItem;
  v2 = [(BCSItem *)&v5 init];
  if (v2)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    [(BCSItem *)v2 setExpirationDate:distantPast];
  }

  return v2;
}

- (BOOL)isExpired
{
  expirationDate = [(BCSItem *)self expirationDate];
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [expirationDate compare:date] == -1;

  return v4;
}

@end