@interface MUUGCRatingViewModel
- (MUUGCRatingViewModel)initWithCategory:(id)a3 value:(id)a4;
@end

@implementation MUUGCRatingViewModel

- (MUUGCRatingViewModel)initWithCategory:(id)a3 value:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MUUGCRatingViewModel;
  v9 = [(MUUGCRatingViewModel *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_category, a3);
    objc_storeStrong(&v10->_value, a4);
  }

  return v10;
}

@end