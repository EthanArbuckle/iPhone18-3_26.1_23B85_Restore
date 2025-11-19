@interface MUPlaceCallToActionAppearance
+ (id)userRecommendedAppearanceForNumberOfPhotosAdded:(unint64_t)a3;
+ (id)userRecommendedAppearanceForRatingState:(int64_t)a3;
+ (id)userRecommendedAppearanceForRatingState:(int64_t)a3 numberOfPhotosAdded:(unint64_t)a4;
+ (id)userRecommendedLoadingAppearance;
- (BOOL)isEqual:(id)a3;
- (MUPlaceCallToActionAppearance)initWithType:(int64_t)a3;
- (unint64_t)hash;
@end

@implementation MUPlaceCallToActionAppearance

- (unint64_t)hash
{
  v3 = [(MUPlaceCallToActionAppearance *)self type];
  v4 = [(MUPlaceCallToActionAppearance *)self numberOfPhotosAdded]^ v3;
  return v4 ^ [(MKUGCCallToActionViewAppearance *)self ratingState];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      type = self->_type;
      v6 = v4;
      v7 = [(MUPlaceCallToActionAppearance *)v6 type];
      v8 = [(MKUGCCallToActionViewAppearance *)self ratingState];
      v9 = [(MKUGCCallToActionViewAppearance *)v6 ratingState];
      v10 = [(MUPlaceCallToActionAppearance *)self numberOfPhotosAdded];
      v11 = [(MUPlaceCallToActionAppearance *)v6 numberOfPhotosAdded];

      v14 = type == v7 && v8 == v9 && v10 == v11;
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (MUPlaceCallToActionAppearance)initWithType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = MUPlaceCallToActionAppearance;
  result = [(MUPlaceCallToActionAppearance *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

+ (id)userRecommendedLoadingAppearance
{
  v2 = [[MUPlaceCallToActionAppearance alloc] initWithType:5];

  return v2;
}

+ (id)userRecommendedAppearanceForRatingState:(int64_t)a3
{
  v4 = [[MUPlaceCallToActionAppearance alloc] initWithType:4];
  [(MKUGCCallToActionViewAppearance *)v4 setRatingState:a3];

  return v4;
}

+ (id)userRecommendedAppearanceForNumberOfPhotosAdded:(unint64_t)a3
{
  v4 = [[MUPlaceCallToActionAppearance alloc] initWithType:4];
  [(MUPlaceCallToActionAppearance *)v4 setNumberOfPhotosAdded:a3];

  return v4;
}

+ (id)userRecommendedAppearanceForRatingState:(int64_t)a3 numberOfPhotosAdded:(unint64_t)a4
{
  v6 = [[MUPlaceCallToActionAppearance alloc] initWithType:4];
  [(MKUGCCallToActionViewAppearance *)v6 setRatingState:a3];
  [(MUPlaceCallToActionAppearance *)v6 setNumberOfPhotosAdded:a4];

  return v6;
}

@end