@interface MUCuratedCollectionsPlacecardAnalyticsManager
- (MUCuratedCollectionsPlacecardAnalyticsManager)init;
- (void)cleanUp;
- (void)logEvent;
- (void)placecardCollectionsScrollBackward;
- (void)placecardCollectionsScrollForward;
- (void)placecardCollectionsSeeAllTapped;
- (void)placecardExploreGuidesButtonTapped;
@end

@implementation MUCuratedCollectionsPlacecardAnalyticsManager

- (void)cleanUp
{
  self->_event.action = 0;
  value = self->_event.value;
  self->_event.value = 0;

  collectionId = self->_event.collectionId;
  self->_event.collectionId = 0;

  collectionCurrentlySaved = self->_event.collectionCurrentlySaved;
  self->_event.collectionCurrentlySaved = 0;

  horizontalIndex = self->_event.horizontalIndex;
  self->_event.horizontalIndex = 0;
}

- (void)logEvent
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A1B10] moduleFromModuleType:31];
  action = self->_event.action;
  value = self->_event.value;
  v15 = MEMORY[0x1E69A1598];
  collectionId = self->_event.collectionId;
  verticalIndex = self->_event.verticalIndex;
  collectionCurrentlySaved = self->_event.collectionCurrentlySaved;
  horizontalIndex = self->_event.horizontalIndex;
  target = self->_event.target;
  v9 = [MEMORY[0x1E696AD98] numberWithInt:self->_event.cardType];
  possibleActions = self->_event.possibleActions;
  impossibleActions = self->_event.impossibleActions;
  v17[0] = v3;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [v15 captureCuratedCollectionUserAction:action target:target value:value publisherId:0 following:0 collectionId:collectionId collectionCategory:0 collectionCurrentlySaved:collectionCurrentlySaved verticalIndex:verticalIndex horizontalIndex:horizontalIndex placeCardType:v9 possibleActions:possibleActions impossibleActions:impossibleActions modules:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)placecardExploreGuidesButtonTapped
{
  [(MUCuratedCollectionsPlacecardAnalyticsManager *)self cleanUp];
  self->_event.action = 180;

  [(MUCuratedCollectionsPlacecardAnalyticsManager *)self logEvent];
}

- (void)placecardCollectionsSeeAllTapped
{
  [(MUCuratedCollectionsPlacecardAnalyticsManager *)self cleanUp];
  self->_event.action = 2094;

  [(MUCuratedCollectionsPlacecardAnalyticsManager *)self logEvent];
}

- (void)placecardCollectionsScrollForward
{
  [(MUCuratedCollectionsPlacecardAnalyticsManager *)self cleanUp];
  self->_event.action = 9036;

  [(MUCuratedCollectionsPlacecardAnalyticsManager *)self logEvent];
}

- (void)placecardCollectionsScrollBackward
{
  [(MUCuratedCollectionsPlacecardAnalyticsManager *)self cleanUp];
  self->_event.action = 9037;

  [(MUCuratedCollectionsPlacecardAnalyticsManager *)self logEvent];
}

- (MUCuratedCollectionsPlacecardAnalyticsManager)init
{
  v8.receiver = self;
  v8.super_class = MUCuratedCollectionsPlacecardAnalyticsManager;
  v2 = [(MUCuratedCollectionsPlacecardAnalyticsManager *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_event.target = 0xE000000C9;
    verticalIndex = v2->_event.verticalIndex;
    v2->_event.verticalIndex = 0;

    possibleActions = v3->_event.possibleActions;
    v3->_event.possibleActions = 0;

    impossibleActions = v3->_event.impossibleActions;
    v3->_event.impossibleActions = 0;
  }

  return v3;
}

@end