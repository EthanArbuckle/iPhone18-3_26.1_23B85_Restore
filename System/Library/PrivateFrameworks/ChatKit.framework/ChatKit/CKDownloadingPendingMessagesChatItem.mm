@interface CKDownloadingPendingMessagesChatItem
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
@end

@implementation CKDownloadingPendingMessagesChatItem

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  if (a4)
  {
    a3 = *MEMORY[0x1E69DDCE0];
    *&a3.height = *(MEMORY[0x1E69DDCE0] + 16);
    *&a4->top = *MEMORY[0x1E69DDCE0];
    *&a4->bottom = *&a3.height;
  }

  v4 = [CKUIBehavior sharedBehaviors:a3.width];
  [v4 transcriptDownloadingPendingMessagesViewDefaultSize];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end