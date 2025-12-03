@interface MUTitleOnlyCategoryRatingViewModel
- (BOOL)isEqual:(id)equal;
- (MUTitleOnlyCategoryRatingViewModel)initWithCategoryTitle:(id)title;
@end

@implementation MUTitleOnlyCategoryRatingViewModel

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
    categoryTitle = self->_categoryTitle;
    categoryTitle = [(MUTitleOnlyCategoryRatingViewModel *)v5 categoryTitle];
    if (categoryTitle == categoryTitle)
    {
      v8 = 1;
    }

    else
    {
      v8 = [(NSString *)categoryTitle isEqual:categoryTitle];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (MUTitleOnlyCategoryRatingViewModel)initWithCategoryTitle:(id)title
{
  titleCopy = title;
  v9.receiver = self;
  v9.super_class = MUTitleOnlyCategoryRatingViewModel;
  v5 = [(MUTitleOnlyCategoryRatingViewModel *)&v9 init];
  if (v5)
  {
    v6 = [titleCopy copy];
    categoryTitle = v5->_categoryTitle;
    v5->_categoryTitle = v6;
  }

  return v5;
}

@end