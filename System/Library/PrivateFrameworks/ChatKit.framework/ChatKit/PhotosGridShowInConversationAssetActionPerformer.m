@interface PhotosGridShowInConversationAssetActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
+ (BOOL)canPerformWithSelectionSnapshot:(id)a3 person:(id)a4 socialGroup:(id)a5;
+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4;
+ (id)systemImageNameForActionManager:(id)a3;
- (_TtC7ChatKit48PhotosGridShowInConversationAssetActionPerformer)initWithActionType:(id)a3;
- (void)performUserInteractionTask;
@end

@implementation PhotosGridShowInConversationAssetActionPerformer

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  [v9 fetchPropertySetsIfNeeded];
  v13 = [v9 curationProperties];
  v14 = [v13 syndicationIdentifier];

  if (v14)
  {
  }

  return v14 != 0;
}

+ (BOOL)canPerformWithSelectionSnapshot:(id)a3 person:(id)a4 socialGroup:(id)a5
{
  v5 = a3;
  v6 = [v5 selectedIndexPaths];
  v7 = [v6 count];

  return v7 == 1;
}

+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4
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

+ (id)systemImageNameForActionManager:(id)a3
{
  v3 = sub_190D56ED0();

  return v3;
}

- (void)performUserInteractionTask
{
  v2 = self;
  sub_190BADCE0();
}

- (_TtC7ChatKit48PhotosGridShowInConversationAssetActionPerformer)initWithActionType:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PhotosGridShowInConversationAssetActionPerformer();
  return [(PXActionPerformer *)&v5 initWithActionType:a3];
}

@end