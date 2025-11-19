@interface MUAppleCategoryRatingViewModel
- (BOOL)isEqual:(id)a3;
- (MUAppleCategoryRatingViewModel)initWithAppleRating:(id)a3 clientCountAdjustment:(int64_t)a4;
@end

@implementation MUAppleCategoryRatingViewModel

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    appleRating = self->_appleRating;
    v8 = (appleRating == v6->_appleRating || [(GEOAppleRating *)appleRating isEqual:?]) && self->_countAdjustment == v6->_countAdjustment;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (MUAppleCategoryRatingViewModel)initWithAppleRating:(id)a3 clientCountAdjustment:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MUAppleCategoryRatingViewModel;
  v8 = [(MUAppleCategoryRatingViewModel *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_appleRating, a3);
    v9->_countAdjustment = a4;
  }

  return v9;
}

@end