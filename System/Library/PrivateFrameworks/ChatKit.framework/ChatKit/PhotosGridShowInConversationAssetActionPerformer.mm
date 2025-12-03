@interface PhotosGridShowInConversationAssetActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group;
+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager;
+ (id)systemImageNameForActionManager:(id)manager;
- (_TtC7ChatKit48PhotosGridShowInConversationAssetActionPerformer)initWithActionType:(id)type;
- (void)performUserInteractionTask;
@end

@implementation PhotosGridShowInConversationAssetActionPerformer

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  assetCopy = asset;
  collectionCopy = collection;
  personCopy = person;
  groupCopy = group;
  [assetCopy fetchPropertySetsIfNeeded];
  curationProperties = [assetCopy curationProperties];
  syndicationIdentifier = [curationProperties syndicationIdentifier];

  if (syndicationIdentifier)
  {
  }

  return syndicationIdentifier != 0;
}

+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group
{
  snapshotCopy = snapshot;
  selectedIndexPaths = [snapshotCopy selectedIndexPaths];
  v7 = [selectedIndexPaths count];

  return v7 == 1;
}

+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager
{
  sub_190BAE060();
  if (v4)
  {
    v5 = sub_190D56ED0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)systemImageNameForActionManager:(id)manager
{
  v3 = sub_190D56ED0();

  return v3;
}

- (void)performUserInteractionTask
{
  selfCopy = self;
  sub_190BADCE0();
}

- (_TtC7ChatKit48PhotosGridShowInConversationAssetActionPerformer)initWithActionType:(id)type
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PhotosGridShowInConversationAssetActionPerformer();
  return [(PXActionPerformer *)&v5 initWithActionType:type];
}

@end