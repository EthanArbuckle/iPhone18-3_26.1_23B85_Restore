@interface MUPersonalizedSuggestionSectionArbiter
- (MUHikingTipSectionController)hikingTipSectionController;
- (MUPassiveCallToActionSectionController)placeCallToActionSectionController;
- (_TtC6MapsUI29MUPlaceNotesSectionController)placeNotesSectionController;
- (int64_t)bestSuggestionSectionType;
@end

@implementation MUPersonalizedSuggestionSectionArbiter

- (MUHikingTipSectionController)hikingTipSectionController
{
  WeakRetained = objc_loadWeakRetained(&self->_hikingTipSectionController);

  return WeakRetained;
}

- (MUPassiveCallToActionSectionController)placeCallToActionSectionController
{
  WeakRetained = objc_loadWeakRetained(&self->_placeCallToActionSectionController);

  return WeakRetained;
}

- (_TtC6MapsUI29MUPlaceNotesSectionController)placeNotesSectionController
{
  WeakRetained = objc_loadWeakRetained(&self->_placeNotesSectionController);

  return WeakRetained;
}

- (int64_t)bestSuggestionSectionType
{
  v3 = [(MUPersonalizedSuggestionSectionArbiter *)self placeNotesSectionController];
  v4 = [v3 hasContentBeforePersonalizedSuggestionArbitration];

  if (v4)
  {
    return 1;
  }

  v6 = [(MUPersonalizedSuggestionSectionArbiter *)self placeCallToActionSectionController];
  v7 = [v6 hasContentBeforePersonalizedSuggestionArbitration];

  if (v7)
  {
    return 2;
  }

  v8 = [(MUPersonalizedSuggestionSectionArbiter *)self hikingTipSectionController];
  v9 = [v8 hasContentBeforePersonalizedSuggestionArbitration];

  if (v9)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

@end