@interface MLDSpotlightIndexMusicAppEntityAssociator
- (void)associateAppEntityForEntityOfType:(int64_t)type persistentID:(int64_t)d library:(id)library properties:(id)properties withSearchableItemWithAttributeSet:(id)set;
@end

@implementation MLDSpotlightIndexMusicAppEntityAssociator

- (void)associateAppEntityForEntityOfType:(int64_t)type persistentID:(int64_t)d library:(id)library properties:(id)properties withSearchableItemWithAttributeSet:(id)set
{
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  libraryCopy = library;
  setCopy = set;
  selfCopy = self;
  MLDSpotlightIndexMusicAppEntityAssociator.associateAppEntityForEntity(of:persistentID:library:properties:with:)(type, d, libraryCopy, v12, setCopy);
}

@end