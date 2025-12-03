@interface ArtworkView
- (CGRect)frame;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ArtworkView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  ArtworkView.traitCollectionDidChange(_:)(v9);
}

- (void)setBackgroundColor:(id)color
{
  if (color)
  {
    selfCopy2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor);
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor) = color;
    sub_24E77ACC8();
    colorCopy = color;
    selfCopy = self;
    if ((sub_24F92C408() & 1) == 0)
    {
      sub_24F357100();
    }

    v7 = colorCopy;
  }

  else
  {
    v8 = objc_opt_self();
    selfCopy2 = self;
    clearColor = [v8 clearColor];
    v7 = *(&selfCopy2->super.super.super.super.isa + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor);
    *(&selfCopy2->super.super.super.super.isa + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor) = clearColor;
    sub_24E77ACC8();
    colorCopy = clearColor;
    if ((sub_24F92C408() & 1) == 0)
    {
      sub_24F357100();
    }
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  ArtworkView.layoutSubviews()();
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  [(ArtworkView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v23.receiver = self;
  v23.super_class = ObjectType;
  selfCopy = self;
  [(ArtworkView *)&v23 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v22.receiver = selfCopy;
  v22.super_class = ObjectType;
  [(ArtworkView *)&v22 frame];
  if (v19 != width || v18 != height)
  {
    *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_isCornerRadiusInvalid) = 1;
  }

  v21.receiver = selfCopy;
  v21.super_class = ObjectType;
  [(ArtworkView *)&v21 setFrame:x, y, width, height];
  sub_24F358818(v11, v13, v15, v17);
}

@end