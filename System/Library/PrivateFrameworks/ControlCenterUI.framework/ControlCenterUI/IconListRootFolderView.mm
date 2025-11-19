@interface IconListRootFolderView
- (BOOL)canBeginPagingAtLocation:(CGPoint)a3 inView:(id)a4;
- (CGPoint)pageContentScale;
- (CGPoint)pageContentTranslation;
- (SBFolder)folder;
- (id)indicatorDescriptionForPageIndex:(int64_t)a3;
- (void)_didAddIconListView:(id)a3;
- (void)_updatePageControlNumberOfPages;
- (void)addPagingDidChangeHandler:(id)a3;
- (void)handlePageControlInteraction:(id)a3;
- (void)layoutSubviews;
- (void)pageControl:(id)a3 didMoveCurrentPageToPage:(int64_t)a4 withScrubbing:(BOOL)a5;
- (void)setFolder:(id)a3;
- (void)setPageContentAlpha:(double)a3;
- (void)setPageContentScale:(CGPoint)a3;
- (void)setPageContentTranslation:(CGPoint)a3;
- (void)willBeginPagingInteractively:(BOOL)a3;
@end

@implementation IconListRootFolderView

- (CGPoint)pageContentScale
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_pageContentScale);
  v3 = *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_pageContentScale);
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setPageContentScale:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  sub_21EA8A8EC(x, y);
}

- (SBFolder)folder
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for IconListRootFolderView();
  v2 = [(SBFolderView *)&v4 folder];

  return v2;
}

- (void)setFolder:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for IconListRootFolderView();
  v4 = a3;
  v5 = v6.receiver;
  [(SBFolderView *)&v6 setFolder:v4];
  sub_21EA4C948([v5 folder]);
}

- (void)_didAddIconListView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21EA8AADC(v4);
}

- (void)_updatePageControlNumberOfPages
{
  v2 = self;
  v3 = [(SBFolderView *)v2 pageControl];
  v4 = [(SBIconListPageControl *)v3 numberOfPages];

  v7.receiver = v2;
  v7.super_class = type metadata accessor for IconListRootFolderView();
  [(SBFolderView *)&v7 _updatePageControlNumberOfPages];
  v5 = [(SBFolderView *)v2 pageControl];
  v6 = [(SBIconListPageControl *)v5 numberOfPages];

  if (v4 != v6)
  {
    sub_21EA8B85C();
    [(SBFolderView *)v2 setNeedsLayout];
  }
}

- (void)pageControl:(id)a3 didMoveCurrentPageToPage:(int64_t)a4 withScrubbing:(BOOL)a5
{
  v6 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_isScrubbing);
  v7 = self;
  sub_21EA8ADEC(a4, 1, v6);
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IconListRootFolderView();
  v2 = v3.receiver;
  [(SBFolderView *)&v3 layoutSubviews];
  sub_21EA8B44C();
}

- (id)indicatorDescriptionForPageIndex:(int64_t)a3
{
  sub_21EA8BAE0(a3);
  v3 = sub_21EAA8DC0();

  return v3;
}

- (void)handlePageControlInteraction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21EA8BFF8(v4);
}

- (void)setPageContentAlpha:(double)a3
{
  v4 = self;
  sub_21EA8D0BC(a3);
}

- (CGPoint)pageContentTranslation
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewTranslation);
  v3 = *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewTranslation);
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setPageContentTranslation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  sub_21EA8D278(x, y, &unk_28301A150, sub_21EA8D948, &block_descriptor_100);
}

- (void)addPagingDidChangeHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21EA8D904;
  *(v6 + 24) = v5;
  v7 = OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_pagingDidChangeHandlers;
  swift_beginAccess();
  v8 = *(&self->super.super.super.super.super.isa + v7);
  v9 = self;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(&self->super.super.super.super.super.isa + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_21EA48474(0, *(v8 + 2) + 1, 1, v8);
    *(&self->super.super.super.super.super.isa + v7) = v8;
  }

  v12 = *(v8 + 2);
  v11 = *(v8 + 3);
  if (v12 >= v11 >> 1)
  {
    v8 = sub_21EA48474((v11 > 1), v12 + 1, 1, v8);
  }

  *(v8 + 2) = v12 + 1;
  v13 = (v8 + 16 * v12);
  v13[4] = sub_21EA8D91C;
  v13[5] = v6;
  *(&self->super.super.super.super.super.isa + v7) = v8;
  swift_endAccess();
}

- (BOOL)canBeginPagingAtLocation:(CGPoint)a3 inView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  LOBYTE(self) = sub_21EA8D57C(v7, x, y);

  return self & 1;
}

- (void)willBeginPagingInteractively:(BOOL)a3
{
  v3 = self;
  sub_21EA8D774();
}

@end