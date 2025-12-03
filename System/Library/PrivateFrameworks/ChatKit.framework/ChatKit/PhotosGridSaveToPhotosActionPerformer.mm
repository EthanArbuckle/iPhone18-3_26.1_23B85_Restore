@interface PhotosGridSaveToPhotosActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager;
+ (id)systemImageNameForActionManager:(id)manager;
- (_TtC7ChatKit37PhotosGridSaveToPhotosActionPerformer)initWithActionType:(id)type;
- (void)performBackgroundTask;
@end

@implementation PhotosGridSaveToPhotosActionPerformer

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

+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager
{
  sub_190B273D8();
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

- (void)performBackgroundTask
{
  selfCopy = self;
  sub_190B269C8();
}

- (_TtC7ChatKit37PhotosGridSaveToPhotosActionPerformer)initWithActionType:(id)type
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PhotosGridSaveToPhotosActionPerformer();
  return [(PXActionPerformer *)&v5 initWithActionType:type];
}

@end