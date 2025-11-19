@interface DOCTagAppearance
+ (id)infoCollection;
+ (id)makerUI;
+ (id)pickerList;
+ (id)renderingAppearance;
@end

@implementation DOCTagAppearance

+ (id)renderingAppearance
{
  if (renderingAppearance_onceToken != -1)
  {
    +[DOCTagAppearance renderingAppearance];
  }

  v3 = renderingAppearance_shared;

  return v3;
}

void __39__DOCTagAppearance_renderingAppearance__block_invoke()
{
  v0 = [[DOCTagRenderingAppearance alloc] _init];
  v1 = renderingAppearance_shared;
  renderingAppearance_shared = v0;
}

+ (id)pickerList
{
  if (pickerList_onceToken != -1)
  {
    +[DOCTagAppearance pickerList];
  }

  v3 = pickerList_shared;

  return v3;
}

void __30__DOCTagAppearance_pickerList__block_invoke()
{
  v0 = [[DOCTagListCellAppearance alloc] _init];
  v1 = pickerList_shared;
  pickerList_shared = v0;
}

+ (id)makerUI
{
  if (makerUI_onceToken != -1)
  {
    +[DOCTagAppearance makerUI];
  }

  v3 = makerUI_shared;

  return v3;
}

void __27__DOCTagAppearance_makerUI__block_invoke()
{
  v0 = [[DOCTagMakerAppearance alloc] _init];
  v1 = makerUI_shared;
  makerUI_shared = v0;
}

+ (id)infoCollection
{
  if (infoCollection_onceToken != -1)
  {
    +[DOCTagAppearance infoCollection];
  }

  v3 = infoCollection_shared;

  return v3;
}

void __34__DOCTagAppearance_infoCollection__block_invoke()
{
  v0 = [[DOCTagInfoCollectionAppearance alloc] _init];
  v1 = infoCollection_shared;
  infoCollection_shared = v0;
}

@end