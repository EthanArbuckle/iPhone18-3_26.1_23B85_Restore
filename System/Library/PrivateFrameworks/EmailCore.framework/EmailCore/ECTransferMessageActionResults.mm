@interface ECTransferMessageActionResults
- (ECTransferMessageActionResults)initWithBuilder:(id)a3;
@end

@implementation ECTransferMessageActionResults

- (ECTransferMessageActionResults)initWithBuilder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ECTransferMessageActionResults;
  v5 = [(ECTransferMessageActionResults *)&v7 init];
  if (v5)
  {
    v4[2](v4, v5);
  }

  return v5;
}

@end