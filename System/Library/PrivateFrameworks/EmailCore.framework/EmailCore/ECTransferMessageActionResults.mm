@interface ECTransferMessageActionResults
- (ECTransferMessageActionResults)initWithBuilder:(id)builder;
@end

@implementation ECTransferMessageActionResults

- (ECTransferMessageActionResults)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v7.receiver = self;
  v7.super_class = ECTransferMessageActionResults;
  v5 = [(ECTransferMessageActionResults *)&v7 init];
  if (v5)
  {
    builderCopy[2](builderCopy, v5);
  }

  return v5;
}

@end