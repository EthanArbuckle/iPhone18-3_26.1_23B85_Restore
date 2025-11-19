@interface BBDismissalItem
- (BBDismissalItem)initWithFeeds:(unint64_t)a3;
- (BOOL)hasExpired;
@end

@implementation BBDismissalItem

- (BBDismissalItem)initWithFeeds:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = BBDismissalItem;
  v3 = [(BBDismissalItem *)&v7 init];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:120.0];
    expiration = v3->_expiration;
    v3->_expiration = v4;
  }

  return v3;
}

- (BOOL)hasExpired
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [(BBDismissalItem *)self expiration];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5 >= 0.0;

  return v6;
}

@end