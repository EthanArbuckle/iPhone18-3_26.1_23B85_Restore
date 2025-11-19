@interface CKKeyTransparencyStatusChatItem
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (id)loadTranscriptText;
@end

@implementation CKKeyTransparencyStatusChatItem

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  height = a3.height;
  width = a3.width;
  if (a4)
  {
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 transcriptBoldTextAlignmentInsets];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    a4->top = v10;
    a4->left = v12;
    a4->bottom = v14;
    a4->right = v16;
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
  v3 = [(CKKeyTransparencyStatusChatItem *)self underlyingKTChatItem];
  v4 = [v3 affectedHandles];

  v5 = [(CKKeyTransparencyStatusChatItem *)self underlyingKTChatItem];
  v6 = +[CKKeyTransparencyTranscriptUtilities transcriptStringFromHandles:status:](CKKeyTransparencyTranscriptUtilities, "transcriptStringFromHandles:status:", v4, [v5 status]);

  return v6;
}

@end