@interface MUAppleCategoryRatingViewModel
- (BOOL)isEqual:(id)equal;
- (MUAppleCategoryRatingViewModel)initWithAppleRating:(id)rating clientCountAdjustment:(int64_t)adjustment;
@end

@implementation MUAppleCategoryRatingViewModel

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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

- (MUAppleCategoryRatingViewModel)initWithAppleRating:(id)rating clientCountAdjustment:(int64_t)adjustment
{
  ratingCopy = rating;
  v11.receiver = self;
  v11.super_class = MUAppleCategoryRatingViewModel;
  v8 = [(MUAppleCategoryRatingViewModel *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_appleRating, rating);
    v9->_countAdjustment = adjustment;
  }

  return v9;
}

@end