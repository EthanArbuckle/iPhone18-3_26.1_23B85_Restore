@interface TickerWindow
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E12TickerWindow)initWithCoder:(id)coder;
- (_TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E12TickerWindow)initWithFrame:(CGRect)frame;
- (_TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E12TickerWindow)initWithWindowScene:(id)scene;
@end

@implementation TickerWindow

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_190D2A830(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (_TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E12TickerWindow)initWithWindowScene:(id)scene
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E12TickerWindow_tickCounter) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TickerWindow();
  return [(TickerWindow *)&v5 initWithWindowScene:scene];
}

- (_TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E12TickerWindow)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E12TickerWindow_tickCounter) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TickerWindow();
  return [(TickerWindow *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E12TickerWindow)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E12TickerWindow_tickCounter) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TickerWindow();
  coderCopy = coder;
  v5 = [(TickerWindow *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end