@interface PhotosGridSaveToPhotosActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4;
+ (id)systemImageNameForActionManager:(id)a3;
- (_TtC7ChatKit37PhotosGridSaveToPhotosActionPerformer)initWithActionType:(id)a3;
- (void)performBackgroundTask;
@end

@implementation PhotosGridSaveToPhotosActionPerformer

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

+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4
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

+ (id)systemImageNameForActionManager:(id)a3
{
  v3 = sub_190D56ED0();

  return v3;
}

- (void)performBackgroundTask
{
  v2 = self;
  sub_190B269C8();
}

- (_TtC7ChatKit37PhotosGridSaveToPhotosActionPerformer)initWithActionType:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PhotosGridSaveToPhotosActionPerformer();
  return [(PXActionPerformer *)&v5 initWithActionType:a3];
}

@end