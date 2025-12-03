@interface IconListRootFolderView
- (BOOL)canBeginPagingAtLocation:(CGPoint)location inView:(id)view;
- (CGPoint)pageContentScale;
- (CGPoint)pageContentTranslation;
- (SBFolder)folder;
- (id)indicatorDescriptionForPageIndex:(int64_t)index;
- (void)_didAddIconListView:(id)view;
- (void)_updatePageControlNumberOfPages;
- (void)addPagingDidChangeHandler:(id)handler;
- (void)handlePageControlInteraction:(id)interaction;
- (void)layoutSubviews;
- (void)pageControl:(id)control didMoveCurrentPageToPage:(int64_t)page withScrubbing:(BOOL)scrubbing;
- (void)setFolder:(id)folder;
- (void)setPageContentAlpha:(double)alpha;
- (void)setPageContentScale:(CGPoint)scale;
- (void)setPageContentTranslation:(CGPoint)translation;
- (void)willBeginPagingInteractively:(BOOL)interactively;
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

- (void)setPageContentScale:(CGPoint)scale
{
  y = scale.y;
  x = scale.x;
  selfCopy = self;
  sub_21EA8A8EC(x, y);
}

- (SBFolder)folder
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for IconListRootFolderView();
  folder = [(SBFolderView *)&v4 folder];

  return folder;
}

- (void)setFolder:(id)folder
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for IconListRootFolderView();
  folderCopy = folder;
  v5 = v6.receiver;
  [(SBFolderView *)&v6 setFolder:folderCopy];
  sub_21EA4C948([v5 folder]);
}

- (void)_didAddIconListView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_21EA8AADC(viewCopy);
}

- (void)_updatePageControlNumberOfPages
{
  selfCopy = self;
  pageControl = [(SBFolderView *)selfCopy pageControl];
  numberOfPages = [(SBIconListPageControl *)pageControl numberOfPages];

  v7.receiver = selfCopy;
  v7.super_class = type metadata accessor for IconListRootFolderView();
  [(SBFolderView *)&v7 _updatePageControlNumberOfPages];
  pageControl2 = [(SBFolderView *)selfCopy pageControl];
  numberOfPages2 = [(SBIconListPageControl *)pageControl2 numberOfPages];

  if (numberOfPages != numberOfPages2)
  {
    sub_21EA8B85C();
    [(SBFolderView *)selfCopy setNeedsLayout];
  }
}

- (void)pageControl:(id)control didMoveCurrentPageToPage:(int64_t)page withScrubbing:(BOOL)scrubbing
{
  v6 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_isScrubbing);
  selfCopy = self;
  sub_21EA8ADEC(page, 1, v6);
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IconListRootFolderView();
  v2 = v3.receiver;
  [(SBFolderView *)&v3 layoutSubviews];
  sub_21EA8B44C();
}

- (id)indicatorDescriptionForPageIndex:(int64_t)index
{
  sub_21EA8BAE0(index);
  v3 = sub_21EAA8DC0();

  return v3;
}

- (void)handlePageControlInteraction:(id)interaction
{
  interactionCopy = interaction;
  selfCopy = self;
  sub_21EA8BFF8(interactionCopy);
}

- (void)setPageContentAlpha:(double)alpha
{
  selfCopy = self;
  sub_21EA8D0BC(alpha);
}

- (CGPoint)pageContentTranslation
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewTranslation);
  v3 = *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewTranslation);
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setPageContentTranslation:(CGPoint)translation
{
  y = translation.y;
  x = translation.x;
  selfCopy = self;
  sub_21EA8D278(x, y, &unk_28301A150, sub_21EA8D948, &block_descriptor_100);
}

- (void)addPagingDidChangeHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21EA8D904;
  *(v6 + 24) = v5;
  v7 = OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_pagingDidChangeHandlers;
  swift_beginAccess();
  v8 = *(&self->super.super.super.super.super.isa + v7);
  selfCopy = self;

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

- (BOOL)canBeginPagingAtLocation:(CGPoint)location inView:(id)view
{
  y = location.y;
  x = location.x;
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_21EA8D57C(viewCopy, x, y);

  return self & 1;
}

- (void)willBeginPagingInteractively:(BOOL)interactively
{
  selfCopy = self;
  sub_21EA8D774();
}

@end