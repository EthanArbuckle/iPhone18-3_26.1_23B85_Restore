@interface ListPlayButton
- (_TtC9MomentsUI14ListPlayButton)initWithCoder:(id)a3;
- (_TtC9MomentsUI14ListPlayButton)initWithFrame:(CGRect)a3;
@end

@implementation ListPlayButton

- (_TtC9MomentsUI14ListPlayButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9MomentsUI14ListPlayButton_mediaAssetID);
  v9 = type metadata accessor for ListPlayButton();
  *v8 = 0;
  v8[1] = 0;
  v12.receiver = self;
  v12.super_class = v9;
  v10 = [(OversizedBoundsButton *)&v12 initWithFrame:x, y, width, height];
  ListPlayButton.sharedInit()();

  return v10;
}

- (_TtC9MomentsUI14ListPlayButton)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9MomentsUI14ListPlayButton_mediaAssetID);
  *v4 = 0;
  v4[1] = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ListPlayButton();
  v5 = a3;
  v6 = [(OversizedBoundsButton *)&v10 initWithCoder:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    ListPlayButton.sharedInit()();
  }

  return v7;
}

@end