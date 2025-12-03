@interface CKRichCardCarouselBalloonView
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets;
- (CKRichCardCarouselBalloonView)initWithCoder:(id)coder;
- (CKRichCardCarouselBalloonView)initWithFrame:(CGRect)frame;
- (void)chatBotActionButton:(id)button didSelectChipAction:(id)action;
- (void)configureForMessagePart:(id)part;
- (void)didTapTruncatedCaptionForRichCard:(id)card;
- (void)openAppFromNotificationExtensionWith:(id)with;
- (void)prepareForReuse;
@end

@implementation CKRichCardCarouselBalloonView

- (void)configureForMessagePart:(id)part
{
  partCopy = part;
  selfCopy = self;
  sub_1908CD3B8(part);
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for RichCardCarouselBalloonView();
  v2 = v4.receiver;
  [(CKBalloonView *)&v4 prepareForReuse];
  v3 = *&v2[OBJC_IVAR___CKRichCardCarouselBalloonView_richCards];
  *&v2[OBJC_IVAR___CKRichCardCarouselBalloonView_richCards] = 0;
}

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v8 = sub_1908CE09C(width, height);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CKRichCardCarouselBalloonView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___CKRichCardCarouselBalloonView_richCards) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for RichCardCarouselBalloonView();
  return [(CKCarouselBalloonView *)&v8 initWithFrame:x, y, width, height];
}

- (CKRichCardCarouselBalloonView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___CKRichCardCarouselBalloonView_richCards) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for RichCardCarouselBalloonView();
  coderCopy = coder;
  v5 = [(CKCarouselBalloonView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (void)openAppFromNotificationExtensionWith:(id)with
{
  selfCopy = self;
  delegate = [(CKBalloonView *)selfCopy delegate];
  if (delegate)
  {
    v4 = delegate;
    if (([(CKBalloonViewDelegate *)delegate respondsToSelector:sel_didTapChipListFromNotificationExtensionWithBalloonView_]& 1) != 0)
    {
      [(CKBalloonViewDelegate *)v4 didTapChipListFromNotificationExtensionWithBalloonView:selfCopy];
    }

    swift_unknownObjectRelease();
  }
}

- (void)chatBotActionButton:(id)button didSelectChipAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  delegate = [(CKBalloonView *)selfCopy delegate];
  if (delegate)
  {
    v7 = delegate;
    if (([(CKBalloonViewDelegate *)delegate respondsToSelector:sel_balloonView_selectedChipAction_]& 1) != 0)
    {
      [(CKBalloonViewDelegate *)v7 balloonView:selfCopy selectedChipAction:actionCopy];
    }

    swift_unknownObjectRelease();
  }
}

- (void)didTapTruncatedCaptionForRichCard:(id)card
{
  cardCopy = card;
  selfCopy = self;
  delegate = [(CKBalloonView *)selfCopy delegate];
  if (delegate)
  {
    v6 = delegate;
    if (([(CKBalloonViewDelegate *)delegate respondsToSelector:sel_didTapTruncatedCaptionForRichCard_onBalloonView_]& 1) != 0)
    {
      [(CKBalloonViewDelegate *)v6 didTapTruncatedCaptionForRichCard:cardCopy onBalloonView:selfCopy];
    }

    swift_unknownObjectRelease();
  }
}

@end