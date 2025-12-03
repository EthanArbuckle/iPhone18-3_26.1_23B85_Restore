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
  placeNotesSectionController = [(MUPersonalizedSuggestionSectionArbiter *)self placeNotesSectionController];
  hasContentBeforePersonalizedSuggestionArbitration = [placeNotesSectionController hasContentBeforePersonalizedSuggestionArbitration];

  if (hasContentBeforePersonalizedSuggestionArbitration)
  {
    return 1;
  }

  placeCallToActionSectionController = [(MUPersonalizedSuggestionSectionArbiter *)self placeCallToActionSectionController];
  hasContentBeforePersonalizedSuggestionArbitration2 = [placeCallToActionSectionController hasContentBeforePersonalizedSuggestionArbitration];

  if (hasContentBeforePersonalizedSuggestionArbitration2)
  {
    return 2;
  }

  hikingTipSectionController = [(MUPersonalizedSuggestionSectionArbiter *)self hikingTipSectionController];
  hasContentBeforePersonalizedSuggestionArbitration3 = [hikingTipSectionController hasContentBeforePersonalizedSuggestionArbitration];

  if (hasContentBeforePersonalizedSuggestionArbitration3)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

@end