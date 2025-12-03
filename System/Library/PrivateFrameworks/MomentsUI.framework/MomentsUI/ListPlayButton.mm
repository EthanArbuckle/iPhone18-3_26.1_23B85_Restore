@interface ListPlayButton
- (_TtC9MomentsUI14ListPlayButton)initWithCoder:(id)coder;
- (_TtC9MomentsUI14ListPlayButton)initWithFrame:(CGRect)frame;
@end

@implementation ListPlayButton

- (_TtC9MomentsUI14ListPlayButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9MomentsUI14ListPlayButton_mediaAssetID);
  v9 = type metadata accessor for ListPlayButton();
  *v8 = 0;
  v8[1] = 0;
  v12.receiver = self;
  v12.super_class = v9;
  height = [(OversizedBoundsButton *)&v12 initWithFrame:x, y, width, height];
  ListPlayButton.sharedInit()();

  return height;
}

- (_TtC9MomentsUI14ListPlayButton)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9MomentsUI14ListPlayButton_mediaAssetID);
  *v4 = 0;
  v4[1] = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ListPlayButton();
  coderCopy = coder;
  v6 = [(OversizedBoundsButton *)&v10 initWithCoder:coderCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    ListPlayButton.sharedInit()();
  }

  return v7;
}

@end