@interface ECTransferMessageActionItem
- (ECTransferMessageActionItem)initWithBuilder:(id)a3;
@end

@implementation ECTransferMessageActionItem

- (ECTransferMessageActionItem)initWithBuilder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ECTransferMessageActionItem;
  v5 = [(ECTransferMessageActionItem *)&v7 init];
  if (v5)
  {
    v4[2](v4, v5);
  }

  return v5;
}

@end