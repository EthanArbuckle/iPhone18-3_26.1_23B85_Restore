@interface CKSendAnimationSupplementaryViews
- (NSDictionary)dictionaryRepresentation;
@end

@implementation CKSendAnimationSupplementaryViews

- (NSDictionary)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  whiteTextFadeView = self->_whiteTextFadeView;
  if (whiteTextFadeView)
  {
    [dictionary setObject:whiteTextFadeView forKeyedSubscript:@"CKSendAnimationSupplementaryViewWhiteTextFadeView"];
  }

  imageFadeoutView = self->_imageFadeoutView;
  if (imageFadeoutView)
  {
    [v4 setObject:imageFadeoutView forKeyedSubscript:@"CKSendAnimationSupplementaryViewImageFadeoutView"];
  }

  sendButtonSnapshot = self->_sendButtonSnapshot;
  if (sendButtonSnapshot)
  {
    [v4 setObject:sendButtonSnapshot forKeyedSubscript:@"CKSendAnimationSupplementaryViewSendButtonSnapshot"];
  }

  textViewContainerView = self->_textViewContainerView;
  if (textViewContainerView)
  {
    [v4 setObject:textViewContainerView forKeyedSubscript:@"CKSendAnimationSupplementaryViewTextViewContainerView"];
  }

  behindGlassTextViewContainerView = self->_behindGlassTextViewContainerView;
  if (behindGlassTextViewContainerView)
  {
    [v4 setObject:behindGlassTextViewContainerView forKeyedSubscript:@"CKSendAnimationSupplementaryViewBehindGlassTextViewContainerView"];
  }

  quickReplySnapshot = self->_quickReplySnapshot;
  if (quickReplySnapshot)
  {
    [v4 setObject:quickReplySnapshot forKeyedSubscript:@"CKSendAnimationSupplementaryViewQuickReplySnapshot"];
  }

  audioMessagePillViewSnapshot = self->_audioMessagePillViewSnapshot;
  if (audioMessagePillViewSnapshot)
  {
    [v4 setObject:audioMessagePillViewSnapshot forKeyedSubscript:@"CKSendAnimationSupplementaryViewAudioMessagePillViewSnapshot"];
  }

  whiteTextFadeViewRTL = self->_whiteTextFadeViewRTL;
  if (whiteTextFadeViewRTL)
  {
    [v4 setObject:whiteTextFadeViewRTL forKeyedSubscript:@"CKSendAnimationSupplementaryViewWhiteTextFadeViewRTL"];
  }

  if (self->_whiteTextFadeView)
  {
    [v4 setObject:self->_blueTextFadeViewRTL forKeyedSubscript:@"CKSendAnimationSupplementaryViewBlueTextFadeViewRTL"];
  }

  v13 = [v4 copy];

  return v13;
}

@end