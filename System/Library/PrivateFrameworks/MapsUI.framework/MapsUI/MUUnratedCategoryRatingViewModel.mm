@interface MUUnratedCategoryRatingViewModel
- (BOOL)isEqual:(id)equal;
- (MUUnratedCategoryRatingViewModel)initWithCategoryTitle:(id)title clientCountAdjustment:(int64_t)adjustment;
@end

@implementation MUUnratedCategoryRatingViewModel

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    categoryTitle = self->_categoryTitle;
    categoryTitle = [(MUUnratedCategoryRatingViewModel *)v6 categoryTitle];
    v9 = (categoryTitle == categoryTitle || [(NSString *)categoryTitle isEqual:categoryTitle]) && self->_countAdjustment == v6->_countAdjustment;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (MUUnratedCategoryRatingViewModel)initWithCategoryTitle:(id)title clientCountAdjustment:(int64_t)adjustment
{
  titleCopy = title;
  v11.receiver = self;
  v11.super_class = MUUnratedCategoryRatingViewModel;
  v7 = [(MUUnratedCategoryRatingViewModel *)&v11 init];
  if (v7)
  {
    v8 = [titleCopy copy];
    categoryTitle = v7->_categoryTitle;
    v7->_categoryTitle = v8;

    v7->_countAdjustment = adjustment;
  }

  return v7;
}

@end