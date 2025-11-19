@interface MLDSpotlightIndexMusicAppEntityAssociator
- (void)associateAppEntityForEntityOfType:(int64_t)a3 persistentID:(int64_t)a4 library:(id)a5 properties:(id)a6 withSearchableItemWithAttributeSet:(id)a7;
@end

@implementation MLDSpotlightIndexMusicAppEntityAssociator

- (void)associateAppEntityForEntityOfType:(int64_t)a3 persistentID:(int64_t)a4 library:(id)a5 properties:(id)a6 withSearchableItemWithAttributeSet:(id)a7
{
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a5;
  v14 = a7;
  v15 = self;
  MLDSpotlightIndexMusicAppEntityAssociator.associateAppEntityForEntity(of:persistentID:library:properties:with:)(a3, a4, v13, v12, v14);
}

@end