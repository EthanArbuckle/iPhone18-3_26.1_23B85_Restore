@interface SFTabOverview
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)isHidden;
- (SFTabOverview)initWithFrame:(CGRect)frame;
- (id)viewForItemAtIndex:(int64_t)index;
- (int64_t)indexInAllItemsForItemView:(id)view;
- (int64_t)totalItemCount;
- (void)cancelKeyPressed;
- (void)contentSizeCategoryDidChange;
- (void)layoutSubviews;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setHidden:(BOOL)hidden;
@end

@implementation SFTabOverview

- (void)scrollViewDidScroll:(id)scroll
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___SFTabOverview_closingItemsContainerView);
  selfCopy = self;
  v4 = sub_18B82FEA0();
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setBounds_];
  [(SFTabOverview *)selfCopy setNeedsLayout];
  v13 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR___SFTabOverview_didScroll);
  v14 = sub_18BC1E1A8();
  v13(v14);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_18B8700D8();
}

- (BOOL)isHidden
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TabOverview();
  return [(SFTabOverview *)&v3 isHidden];
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v5 = type metadata accessor for TabOverview();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isHidden = [(SFTabOverview *)&v9 isHidden];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(SFTabOverview *)&v8 setHidden:hiddenCopy];
  if ([(SFTabOverview *)selfCopy isHidden]&& (isHidden & 1) == 0)
  {
    sub_18B9C3020();
  }
}

- (void)contentSizeCategoryDidChange
{
  selfCopy = self;
  sub_18B9BC480();
}

- (int64_t)indexInAllItemsForItemView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = sub_18B9BD7FC(viewCopy);

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
  selfCopy = self;
  sub_18B82B150(v13, &v12);
  v9 = sub_18B866D50();

  sub_18B82B2F0(v13);
  v10 = *(v9 + 16);

  return v10;
}

- (id)viewForItemAtIndex:(int64_t)index
{
  selfCopy = self;
  v5 = sub_18B9BE0E0(index);

  return v5;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_18BC218B8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = sub_18B9BF64C(action, v10);

  sub_18B988BAC(v10, &qword_1EA9D5220);
  return v8;
}

- (void)cancelKeyPressed
{
  selfCopy = self;
  sub_18B9C19AC();
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  x = offset->x;
  y = offset->y;
  v8 = *(**(&self->super.super.super.super.isa + OBJC_IVAR___SFTabOverview_gridLayout) + 1168);
  selfCopy = self;
  offset->x = v8(x, y);
  offset->y = v9;
}

- (SFTabOverview)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end