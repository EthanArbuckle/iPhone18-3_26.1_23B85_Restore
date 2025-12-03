@interface WDBlock
- (WDBlock)initWithText:(id)text;
- (id)description;
@end

@implementation WDBlock

- (WDBlock)initWithText:(id)text
{
  v5.receiver = self;
  v5.super_class = WDBlock;
  result = [(WDBlock *)&v5 init];
  if (result)
  {
    result->mText = text;
  }

  return result;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDBlock;
  v2 = [(WDBlock *)&v4 description];

  return v2;
}

@end