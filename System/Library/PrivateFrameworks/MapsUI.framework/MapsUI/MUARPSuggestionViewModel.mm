@interface MUARPSuggestionViewModel
- (MUARPSuggestionViewModel)initWithTitle:(id)title subtitle:(id)subtitle isRatingSuggestion:(BOOL)suggestion isPhotoSuggestion:(BOOL)photoSuggestion canAddPhotos:(BOOL)photos hasNearbyPhotos:(BOOL)nearbyPhotos canRate:(BOOL)rate isPinned:(BOOL)self0 hasVisited:(BOOL)self1 isNearbyLocation:(BOOL)self2;
@end

@implementation MUARPSuggestionViewModel

- (MUARPSuggestionViewModel)initWithTitle:(id)title subtitle:(id)subtitle isRatingSuggestion:(BOOL)suggestion isPhotoSuggestion:(BOOL)photoSuggestion canAddPhotos:(BOOL)photos hasNearbyPhotos:(BOOL)nearbyPhotos canRate:(BOOL)rate isPinned:(BOOL)self0 hasVisited:(BOOL)self1 isNearbyLocation:(BOOL)self2
{
  titleCopy = title;
  subtitleCopy = subtitle;
  v24.receiver = self;
  v24.super_class = MUARPSuggestionViewModel;
  v21 = [(MUARPSuggestionViewModel *)&v24 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_title, title);
    objc_storeStrong(&v22->_subtitle, subtitle);
    v22->_isRatingSuggestion = suggestion;
    v22->_isPhotoSuggestion = photoSuggestion;
    v22->_canAddPhotos = photos;
    v22->_hasNearbyPhotos = nearbyPhotos;
    v22->_canRate = rate;
    v22->_isPinned = pinned;
    v22->_hasVisited = visited;
    v22->_isNearbyLocation = location;
  }

  return v22;
}

@end