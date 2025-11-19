@interface DOCTagMakerAppearance
- (DOCTagContainerAppearanceProviding)container;
- (NSDirectionalEdgeInsets)inputFieldRoundedCornerBackgroundMargins;
- (NSDirectionalEdgeInsets)rowOfTagsContentInsets;
- (id)_init;
@end

@implementation DOCTagMakerAppearance

- (id)_init
{
  v3.receiver = self;
  v3.super_class = DOCTagMakerAppearance;
  return [(DOCTagMakerAppearance *)&v3 init];
}

- (DOCTagContainerAppearanceProviding)container
{
  v2 = [[DOCTagPickerPanelAppearance alloc] initWithTopMargin:18.0 bottomMargin:18.0 maxHeight:-12341234.0];

  return v2;
}

- (NSDirectionalEdgeInsets)inputFieldRoundedCornerBackgroundMargins
{
  v2 = *MEMORY[0x277D75060];
  v3 = *(MEMORY[0x277D75060] + 8);
  v4 = *(MEMORY[0x277D75060] + 16);
  v5 = *(MEMORY[0x277D75060] + 24);
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (NSDirectionalEdgeInsets)rowOfTagsContentInsets
{
  v2 = +[DOCTagAppearance pickerList];
  [v2 cellExternalMargins];
  v4 = v3 + -8.0;

  v5 = +[DOCTagAppearance pickerList];
  [v5 cellExternalMargins];
  v7 = v6 + -8.0;

  v8 = 8.0;
  v9 = 8.0;
  v10 = v4;
  v11 = v7;
  result.trailing = v11;
  result.bottom = v9;
  result.leading = v10;
  result.top = v8;
  return result;
}

@end