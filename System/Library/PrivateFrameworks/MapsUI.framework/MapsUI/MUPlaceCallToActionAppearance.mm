@interface MUPlaceCallToActionAppearance
+ (id)userRecommendedAppearanceForNumberOfPhotosAdded:(unint64_t)added;
+ (id)userRecommendedAppearanceForRatingState:(int64_t)state;
+ (id)userRecommendedAppearanceForRatingState:(int64_t)state numberOfPhotosAdded:(unint64_t)added;
+ (id)userRecommendedLoadingAppearance;
- (BOOL)isEqual:(id)equal;
- (MUPlaceCallToActionAppearance)initWithType:(int64_t)type;
- (unint64_t)hash;
@end

@implementation MUPlaceCallToActionAppearance

- (unint64_t)hash
{
  type = [(MUPlaceCallToActionAppearance *)self type];
  v4 = [(MUPlaceCallToActionAppearance *)self numberOfPhotosAdded]^ type;
  return v4 ^ [(MKUGCCallToActionViewAppearance *)self ratingState];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      type = self->_type;
      v6 = equalCopy;
      type = [(MUPlaceCallToActionAppearance *)v6 type];
      ratingState = [(MKUGCCallToActionViewAppearance *)self ratingState];
      ratingState2 = [(MKUGCCallToActionViewAppearance *)v6 ratingState];
      numberOfPhotosAdded = [(MUPlaceCallToActionAppearance *)self numberOfPhotosAdded];
      numberOfPhotosAdded2 = [(MUPlaceCallToActionAppearance *)v6 numberOfPhotosAdded];

      v14 = type == type && ratingState == ratingState2 && numberOfPhotosAdded == numberOfPhotosAdded2;
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (MUPlaceCallToActionAppearance)initWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = MUPlaceCallToActionAppearance;
  result = [(MUPlaceCallToActionAppearance *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

+ (id)userRecommendedLoadingAppearance
{
  v2 = [[MUPlaceCallToActionAppearance alloc] initWithType:5];

  return v2;
}

+ (id)userRecommendedAppearanceForRatingState:(int64_t)state
{
  v4 = [[MUPlaceCallToActionAppearance alloc] initWithType:4];
  [(MKUGCCallToActionViewAppearance *)v4 setRatingState:state];

  return v4;
}

+ (id)userRecommendedAppearanceForNumberOfPhotosAdded:(unint64_t)added
{
  v4 = [[MUPlaceCallToActionAppearance alloc] initWithType:4];
  [(MUPlaceCallToActionAppearance *)v4 setNumberOfPhotosAdded:added];

  return v4;
}

+ (id)userRecommendedAppearanceForRatingState:(int64_t)state numberOfPhotosAdded:(unint64_t)added
{
  v6 = [[MUPlaceCallToActionAppearance alloc] initWithType:4];
  [(MKUGCCallToActionViewAppearance *)v6 setRatingState:state];
  [(MUPlaceCallToActionAppearance *)v6 setNumberOfPhotosAdded:added];

  return v6;
}

@end