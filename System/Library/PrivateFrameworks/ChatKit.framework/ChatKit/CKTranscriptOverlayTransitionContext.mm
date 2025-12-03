@interface CKTranscriptOverlayTransitionContext
- (CGRect)parentCollectionViewFrame;
- (UIEdgeInsets)transcriptMarginInsets;
- (UIEdgeInsets)transcriptSafeAreaInsets;
- (id)description;
@end

@implementation CKTranscriptOverlayTransitionContext

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = @"YES";
  if ([(CKTranscriptOverlayTransitionContext *)self wantsModalPresentation])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if (![(CKTranscriptOverlayTransitionContext *)self wantsUnanimatedPresentation])
  {
    v4 = @"NO";
  }

  anchorChatItemGUID = [(CKTranscriptOverlayTransitionContext *)self anchorChatItemGUID];
  visibleChatItemToFrameMap = [(CKTranscriptOverlayTransitionContext *)self visibleChatItemToFrameMap];
  v8 = [v3 stringWithFormat:@"modal %@ unanimated: %@ anchor GUID %@ frames: %@", v5, v4, anchorChatItemGUID, visibleChatItemToFrameMap];

  return v8;
}

- (UIEdgeInsets)transcriptMarginInsets
{
  top = self->_transcriptMarginInsets.top;
  left = self->_transcriptMarginInsets.left;
  bottom = self->_transcriptMarginInsets.bottom;
  right = self->_transcriptMarginInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)transcriptSafeAreaInsets
{
  top = self->_transcriptSafeAreaInsets.top;
  left = self->_transcriptSafeAreaInsets.left;
  bottom = self->_transcriptSafeAreaInsets.bottom;
  right = self->_transcriptSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)parentCollectionViewFrame
{
  x = self->_parentCollectionViewFrame.origin.x;
  y = self->_parentCollectionViewFrame.origin.y;
  width = self->_parentCollectionViewFrame.size.width;
  height = self->_parentCollectionViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end