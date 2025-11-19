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
    v3 = [MEMORY[0x277CBEAA8] distantPast];
    [(BCSItem *)v2 setExpirationDate:v3];
  }

  return v2;
}

- (BOOL)isExpired
{
  v2 = [(BCSItem *)self expirationDate];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [v2 compare:v3] == -1;

  return v4;
}

@end