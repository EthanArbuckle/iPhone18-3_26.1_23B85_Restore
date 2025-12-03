@interface PhotosGridCopyAssetActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager;
+ (id)systemImageNameForActionManager:(id)manager;
- (_TtC7ChatKit34PhotosGridCopyAssetActionPerformer)initWithActionType:(id)type;
- (void)performUserInteractionTask;
@end

@implementation PhotosGridCopyAssetActionPerformer

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
  managerCopy = manager;
  result = CKFrameworkBundle();
  if (result)
  {
    v6 = result;
    v7 = sub_190D56ED0();
    v8 = sub_190D56ED0();
    v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

    sub_190D56F10();
    v10 = sub_190D56ED0();

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

+ (id)systemImageNameForActionManager:(id)manager
{
  v3 = sub_190D56ED0();

  return v3;
}

- (void)performUserInteractionTask
{
  selfCopy = self;
  sub_190910284();
}

- (_TtC7ChatKit34PhotosGridCopyAssetActionPerformer)initWithActionType:(id)type
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PhotosGridCopyAssetActionPerformer();
  return [(PXActionPerformer *)&v5 initWithActionType:type];
}

@end