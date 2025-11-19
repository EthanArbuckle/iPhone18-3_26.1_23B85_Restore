@interface PhotosGridDeleteAssetActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4;
+ (id)systemImageNameForActionManager:(id)a3;
- (_TtC7ChatKit36PhotosGridDeleteAssetActionPerformer)initWithActionType:(id)a3;
- (void)performUserInteractionTask;
@end

@implementation PhotosGridDeleteAssetActionPerformer

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
  v4 = a4;
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

+ (id)systemImageNameForActionManager:(id)a3
{
  v3 = sub_190D56ED0();

  return v3;
}

- (void)performUserInteractionTask
{
  v2 = self;
  sub_190D23194();
}

- (_TtC7ChatKit36PhotosGridDeleteAssetActionPerformer)initWithActionType:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PhotosGridDeleteAssetActionPerformer();
  return [(PXActionPerformer *)&v5 initWithActionType:a3];
}

@end