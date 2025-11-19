@interface TickerWindow
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E12TickerWindow)initWithCoder:(id)a3;
- (_TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E12TickerWindow)initWithFrame:(CGRect)a3;
- (_TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E12TickerWindow)initWithWindowScene:(id)a3;
@end

@implementation TickerWindow

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = sub_190D2A830(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (_TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E12TickerWindow)initWithWindowScene:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E12TickerWindow_tickCounter) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TickerWindow();
  return [(TickerWindow *)&v5 initWithWindowScene:a3];
}

- (_TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E12TickerWindow)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E12TickerWindow_tickCounter) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TickerWindow();
  return [(TickerWindow *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E12TickerWindow)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E12TickerWindow_tickCounter) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TickerWindow();
  v4 = a3;
  v5 = [(TickerWindow *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end