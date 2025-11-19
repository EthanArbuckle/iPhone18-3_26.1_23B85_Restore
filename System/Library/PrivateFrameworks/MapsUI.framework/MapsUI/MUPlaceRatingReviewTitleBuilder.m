@interface MUPlaceRatingReviewTitleBuilder
- (id)buildTitleString;
- (unint64_t)titleType;
@end

@implementation MUPlaceRatingReviewTitleBuilder

- (id)buildTitleString
{
  if ([(MUPlaceRatingReviewTitleBuilder *)self titleType]&& (v3 = [(MUPlaceRatingReviewTitleBuilder *)self titleType]- 1, v3 <= 6))
  {
    v4 = _MULocalizedStringFromThisBundle(off_1E8218DB8[v3]);
  }

  else
  {
    v4 = &stru_1F44CA030;
  }

  return v4;
}

- (unint64_t)titleType
{
  v3 = [(MUPlaceRatingReviewTitleBuilder *)self supportsRatings];
  v4 = [(MUPlaceRatingReviewTitleBuilder *)self supportsReviews];
  v5 = v4;
  if (v3)
  {
    if (v4 && [(MUPlaceRatingReviewTitleBuilder *)self supportsGuides])
    {
      return 4;
    }

    else if ([(MUPlaceRatingReviewTitleBuilder *)self supportsReviews])
    {
      return 2;
    }

    else if ([(MUPlaceRatingReviewTitleBuilder *)self supportsGuides])
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v7 = [(MUPlaceRatingReviewTitleBuilder *)self supportsGuides];
    v8 = 7;
    if (!v7)
    {
      v8 = 0;
    }

    v9 = 5;
    if (v7)
    {
      v9 = 6;
    }

    if (v5)
    {
      return v9;
    }

    else
    {
      return v8;
    }
  }
}

@end