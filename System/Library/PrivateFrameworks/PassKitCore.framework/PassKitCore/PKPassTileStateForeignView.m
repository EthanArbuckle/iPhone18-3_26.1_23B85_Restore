@interface PKPassTileStateForeignView
+ (id)createWithPreferredStyle:(int64_t)a3 adaptorProvider:(id)a4;
@end

@implementation PKPassTileStateForeignView

+ (id)createWithPreferredStyle:(int64_t)a3 adaptorProvider:(id)a4
{
  v6 = a4;
  v7 = [a1 createResolvedStateWithType:5];
  v7[9] = a3;
  v8 = _Block_copy(v6);

  v9 = v7[8];
  v7[8] = v8;

  return v7;
}

@end