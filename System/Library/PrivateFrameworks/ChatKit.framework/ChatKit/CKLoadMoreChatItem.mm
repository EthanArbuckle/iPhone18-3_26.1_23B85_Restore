@interface CKLoadMoreChatItem
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (UIEdgeInsets)contentInsets;
- (UIEdgeInsets)transcriptTextAlignmentInsets;
- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7;
@end

@implementation CKLoadMoreChatItem

- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7
{
  v7 = [CKUIBehavior sharedBehaviors:a3];
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

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  if (a4)
  {
    a3 = *MEMORY[0x1E69DDCE0];
    *&a3.height = *(MEMORY[0x1E69DDCE0] + 16);
    *&a4->top = *MEMORY[0x1E69DDCE0];
    *&a4->bottom = *&a3.height;
  }

  v4 = [CKPrintController sharedInstance:a3.width];
  v5 = [v4 isPrinting];

  if (v5)
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