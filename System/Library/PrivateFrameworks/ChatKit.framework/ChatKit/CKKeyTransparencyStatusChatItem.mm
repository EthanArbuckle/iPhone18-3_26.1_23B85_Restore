@interface CKKeyTransparencyStatusChatItem
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (id)loadTranscriptText;
@end

@implementation CKKeyTransparencyStatusChatItem

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  if (insets)
  {
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 transcriptBoldTextAlignmentInsets];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    insets->top = v10;
    insets->left = v12;
    insets->bottom = v14;
    insets->right = v16;
  }

  [CKKeyTransparencyTranscriptCell heightForChatItem:self fittingSize:width, height];
  v18 = v17;
  v19 = width;
  result.height = v18;
  result.width = v19;
  return result;
}

- (id)loadTranscriptText
{
  underlyingKTChatItem = [(CKKeyTransparencyStatusChatItem *)self underlyingKTChatItem];
  affectedHandles = [underlyingKTChatItem affectedHandles];

  underlyingKTChatItem2 = [(CKKeyTransparencyStatusChatItem *)self underlyingKTChatItem];
  v6 = +[CKKeyTransparencyTranscriptUtilities transcriptStringFromHandles:status:](CKKeyTransparencyTranscriptUtilities, "transcriptStringFromHandles:status:", affectedHandles, [underlyingKTChatItem2 status]);

  return v6;
}

@end