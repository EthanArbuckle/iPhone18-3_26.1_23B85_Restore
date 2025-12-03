@interface ECTransferMessageActionItem
- (ECTransferMessageActionItem)initWithBuilder:(id)builder;
@end

@implementation ECTransferMessageActionItem

- (ECTransferMessageActionItem)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v7.receiver = self;
  v7.super_class = ECTransferMessageActionItem;
  v5 = [(ECTransferMessageActionItem *)&v7 init];
  if (v5)
  {
    builderCopy[2](builderCopy, v5);
  }

  return v5;
}

@end