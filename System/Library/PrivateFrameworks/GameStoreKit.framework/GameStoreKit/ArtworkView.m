@interface ArtworkView
- (CGRect)frame;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ArtworkView

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  ArtworkView.traitCollectionDidChange(_:)(v9);
}

- (void)setBackgroundColor:(id)a3
{
  if (a3)
  {
    v10 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor);
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor) = a3;
    sub_24E77ACC8();
    v5 = a3;
    v6 = self;
    if ((sub_24F92C408() & 1) == 0)
    {
      sub_24F357100();
    }

    v7 = v5;
  }

  else
  {
    v8 = objc_opt_self();
    v10 = self;
    v9 = [v8 clearColor];
    v7 = *(&v10->super.super.super.super.isa + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor);
    *(&v10->super.super.super.super.isa + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor) = v9;
    sub_24E77ACC8();
    v5 = v9;
    if ((sub_24F92C408() & 1) == 0)
    {
      sub_24F357100();
    }
  }
}

- (void)layoutSubviews
{
  v2 = self;
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v23.receiver = self;
  v23.super_class = ObjectType;
  v9 = self;
  [(ArtworkView *)&v23 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v22.receiver = v9;
  v22.super_class = ObjectType;
  [(ArtworkView *)&v22 frame];
  if (v19 != width || v18 != height)
  {
    *(&v9->super.super.super.super.isa + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_isCornerRadiusInvalid) = 1;
  }

  v21.receiver = v9;
  v21.super_class = ObjectType;
  [(ArtworkView *)&v21 setFrame:x, y, width, height];
  sub_24F358818(v11, v13, v15, v17);
}

@end