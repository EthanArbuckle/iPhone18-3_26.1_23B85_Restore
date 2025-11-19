@interface MarqueeUILabel
- (_TtC16CommunicationsUI14MarqueeUILabel)initWithCoder:(id)a3;
- (_TtC16CommunicationsUI14MarqueeUILabel)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation MarqueeUILabel

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MarqueeUILabel();
  v2 = v3.receiver;
  [(MarqueeUILabel *)&v3 layoutSubviews];
  sub_1C2DC3FF0();
}

- (_TtC16CommunicationsUI14MarqueeUILabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI14MarqueeUILabel_shouldAnimateMarquee) = 1;
  v7 = self + OBJC_IVAR____TtC16CommunicationsUI14MarqueeUILabel_proposedWidth;
  *v7 = 0;
  v7[8] = 1;
  v9.receiver = self;
  v9.super_class = type metadata accessor for MarqueeUILabel();
  return [(MarqueeUILabel *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC16CommunicationsUI14MarqueeUILabel)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI14MarqueeUILabel_shouldAnimateMarquee) = 1;
  v4 = self + OBJC_IVAR____TtC16CommunicationsUI14MarqueeUILabel_proposedWidth;
  *v4 = 0;
  v4[8] = 1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MarqueeUILabel();
  v5 = a3;
  v6 = [(MarqueeUILabel *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end