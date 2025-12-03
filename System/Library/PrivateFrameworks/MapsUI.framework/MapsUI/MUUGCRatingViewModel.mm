@interface MUUGCRatingViewModel
- (MUUGCRatingViewModel)initWithCategory:(id)category value:(id)value;
@end

@implementation MUUGCRatingViewModel

- (MUUGCRatingViewModel)initWithCategory:(id)category value:(id)value
{
  categoryCopy = category;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = MUUGCRatingViewModel;
  v9 = [(MUUGCRatingViewModel *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_category, category);
    objc_storeStrong(&v10->_value, value);
  }

  return v10;
}

@end