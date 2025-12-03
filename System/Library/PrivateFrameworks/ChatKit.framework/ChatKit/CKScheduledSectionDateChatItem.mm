@interface CKScheduledSectionDateChatItem
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override;
@end

@implementation CKScheduledSectionDateChatItem

- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override
{
  height = override.height;
  width = override.width;
  environmentCopy = environment;
  itemsCopy = items;
  supplementryItemsCopy = supplementryItems;
  if (index < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = [itemsCopy objectAtIndex:index - 1];
  }

  v17 = +[CKUIBehavior sharedBehaviors];
  [v17 scheduledSectionDateChatItemTopSpacingConstant];
  v19 = v18;

  if (v16 && [v16 layoutType] == 26)
  {
    height = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v16 topSpacing:v19 bottomSpacing:0.0];
  }

  else
  {
    v23.receiver = self;
    v23.super_class = CKScheduledSectionDateChatItem;
    height = [(CKDateChatItem *)&v23 layoutItemSpacingWithEnvironment:environmentCopy datasourceItemIndex:index allDatasourceItems:itemsCopy supplementryItems:supplementryItemsCopy sizeOverride:width, height];
  }

  v21 = height;

  return v21;
}

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  v6 = [MEMORY[0x1E69DC738] buttonWithType:1];
  v7 = +[CKUIBehavior sharedBehaviors];
  transcriptEmphasizedFontAttributes = [v7 transcriptEmphasizedFontAttributes];
  v9 = [transcriptEmphasizedFontAttributes mutableCopy];

  [v9 removeObjectForKey:*MEMORY[0x1E69DB650]];
  v10 = objc_alloc(MEMORY[0x1E696AAB0]);
  v11 = CKFrameworkBundle();
  v12 = [v11 localizedStringForKey:@"EDIT" value:&stru_1F04268F8 table:@"ChatKit"];
  v13 = [v10 initWithString:v12 attributes:v9];
  [v6 setAttributedTitle:v13 forState:0];

  [v6 sizeThatFits:{width, height}];
  v15 = v14;
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

@end