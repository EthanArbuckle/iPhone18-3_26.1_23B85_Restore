@interface MUTitleOnlyCategoryRatingViewModel
- (BOOL)isEqual:(id)a3;
- (MUTitleOnlyCategoryRatingViewModel)initWithCategoryTitle:(id)a3;
@end

@implementation MUTitleOnlyCategoryRatingViewModel

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
    categoryTitle = self->_categoryTitle;
    v7 = [(MUTitleOnlyCategoryRatingViewModel *)v5 categoryTitle];
    if (categoryTitle == v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = [(NSString *)categoryTitle isEqual:v7];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (MUTitleOnlyCategoryRatingViewModel)initWithCategoryTitle:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MUTitleOnlyCategoryRatingViewModel;
  v5 = [(MUTitleOnlyCategoryRatingViewModel *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    categoryTitle = v5->_categoryTitle;
    v5->_categoryTitle = v6;
  }

  return v5;
}

@end