@interface CKRichCardCarouselBalloonView
- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5;
- (CKRichCardCarouselBalloonView)initWithCoder:(id)a3;
- (CKRichCardCarouselBalloonView)initWithFrame:(CGRect)a3;
- (void)chatBotActionButton:(id)a3 didSelectChipAction:(id)a4;
- (void)configureForMessagePart:(id)a3;
- (void)didTapTruncatedCaptionForRichCard:(id)a3;
- (void)openAppFromNotificationExtensionWith:(id)a3;
- (void)prepareForReuse;
@end

@implementation CKRichCardCarouselBalloonView

- (void)configureForMessagePart:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1908CD3B8(a3);
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

- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  v8 = sub_1908CE09C(width, height);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CKRichCardCarouselBalloonView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___CKRichCardCarouselBalloonView_richCards) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for RichCardCarouselBalloonView();
  return [(CKCarouselBalloonView *)&v8 initWithFrame:x, y, width, height];
}

- (CKRichCardCarouselBalloonView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___CKRichCardCarouselBalloonView_richCards) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for RichCardCarouselBalloonView();
  v4 = a3;
  v5 = [(CKCarouselBalloonView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (void)openAppFromNotificationExtensionWith:(id)a3
{
  v5 = self;
  v3 = [(CKBalloonView *)v5 delegate];
  if (v3)
  {
    v4 = v3;
    if (([(CKBalloonViewDelegate *)v3 respondsToSelector:sel_didTapChipListFromNotificationExtensionWithBalloonView_]& 1) != 0)
    {
      [(CKBalloonViewDelegate *)v4 didTapChipListFromNotificationExtensionWithBalloonView:v5];
    }

    swift_unknownObjectRelease();
  }
}

- (void)chatBotActionButton:(id)a3 didSelectChipAction:(id)a4
{
  v5 = a4;
  v8 = self;
  v6 = [(CKBalloonView *)v8 delegate];
  if (v6)
  {
    v7 = v6;
    if (([(CKBalloonViewDelegate *)v6 respondsToSelector:sel_balloonView_selectedChipAction_]& 1) != 0)
    {
      [(CKBalloonViewDelegate *)v7 balloonView:v8 selectedChipAction:v5];
    }

    swift_unknownObjectRelease();
  }
}

- (void)didTapTruncatedCaptionForRichCard:(id)a3
{
  v4 = a3;
  v7 = self;
  v5 = [(CKBalloonView *)v7 delegate];
  if (v5)
  {
    v6 = v5;
    if (([(CKBalloonViewDelegate *)v5 respondsToSelector:sel_didTapTruncatedCaptionForRichCard_onBalloonView_]& 1) != 0)
    {
      [(CKBalloonViewDelegate *)v6 didTapTruncatedCaptionForRichCard:v4 onBalloonView:v7];
    }

    swift_unknownObjectRelease();
  }
}

@end