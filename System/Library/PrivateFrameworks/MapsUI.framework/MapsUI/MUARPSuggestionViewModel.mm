@interface MUARPSuggestionViewModel
- (MUARPSuggestionViewModel)initWithTitle:(id)a3 subtitle:(id)a4 isRatingSuggestion:(BOOL)a5 isPhotoSuggestion:(BOOL)a6 canAddPhotos:(BOOL)a7 hasNearbyPhotos:(BOOL)a8 canRate:(BOOL)a9 isPinned:(BOOL)a10 hasVisited:(BOOL)a11 isNearbyLocation:(BOOL)a12;
@end

@implementation MUARPSuggestionViewModel

- (MUARPSuggestionViewModel)initWithTitle:(id)a3 subtitle:(id)a4 isRatingSuggestion:(BOOL)a5 isPhotoSuggestion:(BOOL)a6 canAddPhotos:(BOOL)a7 hasNearbyPhotos:(BOOL)a8 canRate:(BOOL)a9 isPinned:(BOOL)a10 hasVisited:(BOOL)a11 isNearbyLocation:(BOOL)a12
{
  v19 = a3;
  v20 = a4;
  v24.receiver = self;
  v24.super_class = MUARPSuggestionViewModel;
  v21 = [(MUARPSuggestionViewModel *)&v24 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_title, a3);
    objc_storeStrong(&v22->_subtitle, a4);
    v22->_isRatingSuggestion = a5;
    v22->_isPhotoSuggestion = a6;
    v22->_canAddPhotos = a7;
    v22->_hasNearbyPhotos = a8;
    v22->_canRate = a9;
    v22->_isPinned = a10;
    v22->_hasVisited = a11;
    v22->_isNearbyLocation = a12;
  }

  return v22;
}

@end