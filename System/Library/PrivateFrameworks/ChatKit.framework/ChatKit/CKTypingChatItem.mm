@interface CKTypingChatItem
+ (id)defaultIndicatorLayer;
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (CKTypingIndicatorLayerProtocol)indicatorLayer;
- (UIEdgeInsets)contentInsets;
- (char)transcriptOrientation;
@end

@implementation CKTypingChatItem

- (UIEdgeInsets)contentInsets
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 balloonTranscriptInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (char)transcriptOrientation
{
  if ([(CKChatItem *)self isFromMe])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  if (insets)
  {
    v7 = *(MEMORY[0x1E69DDCE0] + 16);
    *&insets->top = *MEMORY[0x1E69DDCE0];
    *&insets->bottom = v7;
  }

  +[CKTypingIndicatorLayer defaultSize];
  v9 = v8;
  v11 = v10;
  +[CKTypingIndicatorLayer largeBubbleFrame];
  v13 = v9 - v12;
  v15 = v11 - v14;
  indicatorLayer = [(CKTypingChatItem *)self indicatorLayer];
  [indicatorLayer bounds];
  v18 = v17;
  v20 = v19;

  v21 = fmin(fmax(v13 + v18, v9), width);
  v22 = fmin(fmax(v15 + v20, v11), height);
  result.height = v22;
  result.width = v21;
  return result;
}

- (CKTypingIndicatorLayerProtocol)indicatorLayer
{
  defaultIndicatorLayerImpl = self->_defaultIndicatorLayerImpl;
  if (!defaultIndicatorLayerImpl)
  {
    v4 = +[CKTypingChatItem defaultIndicatorLayer];
    v5 = self->_defaultIndicatorLayerImpl;
    self->_defaultIndicatorLayerImpl = v4;

    defaultIndicatorLayerImpl = self->_defaultIndicatorLayerImpl;
  }

  return defaultIndicatorLayerImpl;
}

+ (id)defaultIndicatorLayer
{
  v2 = objc_alloc_init(CKTypingIndicatorLayer);

  return v2;
}

@end