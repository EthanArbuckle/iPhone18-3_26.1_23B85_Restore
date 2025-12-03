@interface CKDownloadingPendingMessagesChatItem
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
@end

@implementation CKDownloadingPendingMessagesChatItem

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  if (insets)
  {
    fits = *MEMORY[0x1E69DDCE0];
    *&fits.height = *(MEMORY[0x1E69DDCE0] + 16);
    *&insets->top = *MEMORY[0x1E69DDCE0];
    *&insets->bottom = *&fits.height;
  }

  v4 = [CKUIBehavior sharedBehaviors:fits.width];
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