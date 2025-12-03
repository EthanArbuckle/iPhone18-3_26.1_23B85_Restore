@interface CKLoadMoreChatItem
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (UIEdgeInsets)contentInsets;
- (UIEdgeInsets)transcriptTextAlignmentInsets;
- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override;
@end

@implementation CKLoadMoreChatItem

- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override
{
  v7 = [CKUIBehavior sharedBehaviors:environment];
  [v7 topTranscriptSpace];
  v9 = v8;

  v10 = [MEMORY[0x1E6995590] fixedSpacing:v9];
  v11 = [MEMORY[0x1E6995560] spacingForLeading:0 top:v10 trailing:0 bottom:v10];

  return v11;
}

- (UIEdgeInsets)transcriptTextAlignmentInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)contentInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  if (insets)
  {
    fits = *MEMORY[0x1E69DDCE0];
    *&fits.height = *(MEMORY[0x1E69DDCE0] + 16);
    *&insets->top = *MEMORY[0x1E69DDCE0];
    *&insets->bottom = *&fits.height;
  }

  v4 = [CKPrintController sharedInstance:fits.width];
  isPrinting = [v4 isPrinting];

  if (isPrinting)
  {
    v6 = *MEMORY[0x1E695F060];
    v7 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    +[CKTranscriptHeaderCell defaultCellHeight];
    v7 = v8;
    v6 = 0.0;
  }

  result.height = v7;
  result.width = v6;
  return result;
}

@end