@interface PKPassTileStateForeignView
+ (id)createWithPreferredStyle:(int64_t)style adaptorProvider:(id)provider;
@end

@implementation PKPassTileStateForeignView

+ (id)createWithPreferredStyle:(int64_t)style adaptorProvider:(id)provider
{
  providerCopy = provider;
  v7 = [self createResolvedStateWithType:5];
  v7[9] = style;
  v8 = _Block_copy(providerCopy);

  v9 = v7[8];
  v7[8] = v8;

  return v7;
}

@end