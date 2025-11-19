@interface SFTabOverview
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)isHidden;
- (SFTabOverview)initWithFrame:(CGRect)a3;
- (id)viewForItemAtIndex:(int64_t)a3;
- (int64_t)indexInAllItemsForItemView:(id)a3;
- (int64_t)totalItemCount;
- (void)cancelKeyPressed;
- (void)contentSizeCategoryDidChange;
- (void)layoutSubviews;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setHidden:(BOOL)a3;
@end

@implementation SFTabOverview

- (void)scrollViewDidScroll:(id)a3
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___SFTabOverview_closingItemsContainerView);
  v15 = self;
  v4 = sub_18B82FEA0();
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setBounds_];
  [(SFTabOverview *)v15 setNeedsLayout];
  v13 = *(&v15->super.super.super.super.isa + OBJC_IVAR___SFTabOverview_didScroll);
  v14 = sub_18BC1E1A8();
  v13(v14);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_18B8700D8();
}

- (BOOL)isHidden
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TabOverview();
  return [(SFTabOverview *)&v3 isHidden];
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for TabOverview();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(SFTabOverview *)&v9 isHidden];
  v8.receiver = v6;
  v8.super_class = v5;
  [(SFTabOverview *)&v8 setHidden:v3];
  if ([(SFTabOverview *)v6 isHidden]&& (v7 & 1) == 0)
  {
    sub_18B9C3020();
  }
}

- (void)contentSizeCategoryDidChange
{
  v2 = self;
  sub_18B9BC480();
}

- (int64_t)indexInAllItemsForItemView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_18B9BD7FC(v4);

  return v6;
}

- (int64_t)totalItemCount
{
  v2 = *(&self->super.super._minimumSafeAreaInsets.bottom + OBJC_IVAR___SFTabOverview_content);
  v13[8] = *(&self->super.super._minimumSafeAreaInsets.top + OBJC_IVAR___SFTabOverview_content);
  v13[9] = v2;
  v3 = *(&self->super.super._viewBackingAux + OBJC_IVAR___SFTabOverview_content);
  v13[10] = *(&self->super.super._clippedSafeAreaCornerInsets.cornerInsets.topLeftWidth + OBJC_IVAR___SFTabOverview_content);
  v13[11] = v3;
  v4 = *(&self->super.super._viewDelegate + OBJC_IVAR___SFTabOverview_content);
  v13[4] = *(&self->super.super._window + OBJC_IVAR___SFTabOverview_content);
  v13[5] = v4;
  v5 = *(&self->super.super._viewFlags + OBJC_IVAR___SFTabOverview_content + 24);
  v13[6] = *(&self->super.super._viewFlags + OBJC_IVAR___SFTabOverview_content + 8);
  v13[7] = v5;
  v6 = *(&self->super.super._constraintsExceptingSubviewAutoresizingConstraints + OBJC_IVAR___SFTabOverview_content);
  v13[0] = *(&self->super.super.super + OBJC_IVAR___SFTabOverview_content);
  v13[1] = v6;
  v7 = *(&self->super.super._layerRetained + OBJC_IVAR___SFTabOverview_content);
  v13[2] = *(&self->super.super._swiftAnimationInfo + OBJC_IVAR___SFTabOverview_content);
  v13[3] = v7;
  v8 = self;
  sub_18B82B150(v13, &v12);
  v9 = sub_18B866D50();

  sub_18B82B2F0(v13);
  v10 = *(v9 + 16);

  return v10;
}

- (id)viewForItemAtIndex:(int64_t)a3
{
  v4 = self;
  v5 = sub_18B9BE0E0(a3);

  return v5;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    sub_18BC218B8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = sub_18B9BF64C(a3, v10);

  sub_18B988BAC(v10, &qword_1EA9D5220);
  return v8;
}

- (void)cancelKeyPressed
{
  v2 = self;
  sub_18B9C19AC();
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  x = a5->x;
  y = a5->y;
  v8 = *(**(&self->super.super.super.super.isa + OBJC_IVAR___SFTabOverview_gridLayout) + 1168);
  v10 = self;
  a5->x = v8(x, y);
  a5->y = v9;
}

- (SFTabOverview)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end