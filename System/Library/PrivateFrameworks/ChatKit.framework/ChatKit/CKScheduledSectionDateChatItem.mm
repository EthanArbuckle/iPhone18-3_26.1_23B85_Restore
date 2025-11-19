@interface CKScheduledSectionDateChatItem
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7;
@end

@implementation CKScheduledSectionDateChatItem

- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  if (a4 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = [v14 objectAtIndex:a4 - 1];
  }

  v17 = +[CKUIBehavior sharedBehaviors];
  [v17 scheduledSectionDateChatItemTopSpacingConstant];
  v19 = v18;

  if (v16 && [v16 layoutType] == 26)
  {
    v20 = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v16 topSpacing:v19 bottomSpacing:0.0];
  }

  else
  {
    v23.receiver = self;
    v23.super_class = CKScheduledSectionDateChatItem;
    v20 = [(CKDateChatItem *)&v23 layoutItemSpacingWithEnvironment:v13 datasourceItemIndex:a4 allDatasourceItems:v14 supplementryItems:v15 sizeOverride:width, height];
  }

  v21 = v20;

  return v21;
}

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  height = a3.height;
  width = a3.width;
  v6 = [MEMORY[0x1E69DC738] buttonWithType:1];
  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = [v7 transcriptEmphasizedFontAttributes];
  v9 = [v8 mutableCopy];

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