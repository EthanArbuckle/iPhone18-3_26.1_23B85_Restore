@interface MUUnratedCategoryRatingViewModel
- (BOOL)isEqual:(id)a3;
- (MUUnratedCategoryRatingViewModel)initWithCategoryTitle:(id)a3 clientCountAdjustment:(int64_t)a4;
@end

@implementation MUUnratedCategoryRatingViewModel

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v9 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    categoryTitle = self->_categoryTitle;
    v8 = [(MUUnratedCategoryRatingViewModel *)v6 categoryTitle];
    v9 = (categoryTitle == v8 || [(NSString *)categoryTitle isEqual:v8]) && self->_countAdjustment == v6->_countAdjustment;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (MUUnratedCategoryRatingViewModel)initWithCategoryTitle:(id)a3 clientCountAdjustment:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = MUUnratedCategoryRatingViewModel;
  v7 = [(MUUnratedCategoryRatingViewModel *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    categoryTitle = v7->_categoryTitle;
    v7->_categoryTitle = v8;

    v7->_countAdjustment = a4;
  }

  return v7;
}

@end