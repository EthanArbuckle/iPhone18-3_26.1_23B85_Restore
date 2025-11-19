@interface CKSyndicationOnboardingTailedBubble
- (CGRect)bubbleFrame;
- (CGRect)pillRect;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKSyndicationOnboardingTailedBubble)initWithFrame:(CGRect)a3 withAppName:(int64_t)a4 withLPLinkView:(id)a5;
- (void)layoutSubviews;
@end

@implementation CKSyndicationOnboardingTailedBubble

- (CKSyndicationOnboardingTailedBubble)initWithFrame:(CGRect)a3 withAppName:(int64_t)a4 withLPLinkView:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a5;
  [(CKSyndicationOnboardingTailedBubble *)self setAppName:a4];
  v12 = [[CKPinnedConversationRichLinkActivityItem alloc] initWithLinkView:v11];

  v16.receiver = self;
  v16.super_class = CKSyndicationOnboardingTailedBubble;
  v13 = [(CKPinnedConversationRichLinkBubble *)&v16 initWithRichLinkActivityItem:v12];
  v14 = v13;
  if (v13)
  {
    [(CKSyndicationOnboardingTailedBubble *)v13 setBubbleFrame:x, y, width, height];
    [(CKSyndicationOnboardingTailedBubble *)v14 setBounds:x, y, width, height];
    [(CKSyndicationOnboardingTailedBubble *)v14 setAppName:a4];
    if ([(CKSyndicationOnboardingTailedBubble *)v14 appName])
    {
      [(CKPinnedConversationTailedActivityItemView *)v14 setOriginationDirection:1];
      if ([(CKSyndicationOnboardingTailedBubble *)v14 appName]== 1)
      {
        [(CKPinnedConversationTailedActivityItemView *)v14 setOriginationHorizontalDirection:1];
      }
    }

    else
    {
      [(CKPinnedConversationTailedActivityItemView *)v14 setOriginationDirection:0];
    }
  }

  return v14;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CKSyndicationOnboardingTailedBubble;
  [(CKPinnedConversationTailedActivityItemView *)&v3 layoutSubviews];
  if ([(CKSyndicationOnboardingTailedBubble *)self appName]== 1)
  {
    [(CKSyndicationOnboardingTailedBubble *)self bounds];
    [(CKPinnedConversationTailedActivityItemView *)self setPreferredTailAttachmentPointXCoordinate:CGRectGetMaxX(v4)];
  }
}

- (CGRect)pillRect
{
  [(CKSyndicationOnboardingTailedBubble *)self balloonTailHeight];
  v4 = v3;
  [(CKSyndicationOnboardingTailedBubble *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(CKSyndicationOnboardingTailedBubble *)self appName];
  v14 = 0.0;
  if (v13)
  {
    v14 = v4;
  }

  v15 = v8 + v14;
  v16 = v12 - v4;
  v17 = v6;
  v18 = v10;
  result.size.height = v16;
  result.size.width = v18;
  result.origin.y = v15;
  result.origin.x = v17;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = 155.0;
  v4 = 100.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGRect)bubbleFrame
{
  x = self->_bubbleFrame.origin.x;
  y = self->_bubbleFrame.origin.y;
  width = self->_bubbleFrame.size.width;
  height = self->_bubbleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end