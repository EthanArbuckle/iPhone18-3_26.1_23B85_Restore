@interface SFTabSwitcher
- (BOOL)isSelectingInteractivelyInsertedItem;
- (BOOL)showsSidebarToggle;
- (BOOL)tabOverviewIsVisible;
- (CGRect)capsuleReferenceFrame;
- (CGRect)frameForLinkedPanningItemWithIdentifier:(id)identifier;
- (SFTabOverviewDisplayItem)tabOverviewDisplayItem;
- (SFTabSwitcher)initWithCoder:(id)coder;
- (SFTabSwitcher)initWithNibName:(id)name bundle:(id)bundle;
- (SFTabSwitcher)initWithTabIconPool:(id)pool tabSnapshotPool:(id)snapshotPool;
- (SFTabSwitcherPage)visiblePage;
- (SFTabSwitcherPresentationObserving)presentationObserver;
- (UIBarButtonItem)sidebarToggleBarButtonItem;
- (UIEdgeInsets)browserContentInsets;
- (UIView)transitionViewForReducedMotion;
- (_UIScrollPocketCollectorInteraction)scrollPocketCollector;
- (double)linkedPanGesturePageWidth;
- (double)quickTabSwitcherPageWidth;
- (id)makeEditAction;
- (int64_t)visibleSnapshotLimitForBounds:(CGRect)bounds traitCollection:(id)collection;
- (void)applyConfiguration:(id)configuration;
- (void)applyContent:(id)content animated:(BOOL)animated;
- (void)beginAnimatedSizeTransition;
- (void)beginSearching;
- (void)beginSearchingWithQuery:(id)query;
- (void)clearHighlightedCapsule;
- (void)didReceivePanGesture:(id)gesture;
- (void)endAnimatedSizeTransition;
- (void)loadView;
- (void)performTransaction:(id)transaction withUpdates:(id)updates;
- (void)present;
- (void)scrollToPage:(id)page;
- (void)scrollVisiblePageToTopWithoutAnimation;
- (void)setBorrowedContentSize:(CGSize)size obscuredInsets:(UIEdgeInsets)insets;
- (void)setBrowserContentInsets:(UIEdgeInsets)insets;
- (void)setCapsuleReferenceFrame:(CGRect)frame;
- (void)setLinkedPanGesturePageWidth:(double)width;
- (void)setShowsSidebarToggle:(BOOL)toggle;
@end

@implementation SFTabSwitcher

- (SFTabSwitcher)initWithTabIconPool:(id)pool tabSnapshotPool:(id)snapshotPool
{
  v7 = *(pool + OBJC_IVAR___SFTabIconPool_wrapped);
  v8 = *(snapshotPool + OBJC_IVAR___SFTabSnapshotPool_wrapped);
  objc_allocWithZone(type metadata accessor for TabSwitcher(0));
  poolCopy = pool;
  snapshotPoolCopy = snapshotPool;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  *(&self->super.super.super.isa + OBJC_IVAR___SFTabSwitcher_wrapped) = sub_18B7DD240(v7, v8);
  v13.receiver = self;
  v13.super_class = SFTabSwitcher;
  v11 = [(SFTabSwitcher *)&v13 initWithNibName:0 bundle:0];

  return v11;
}

- (void)loadView
{
  selfCopy = self;
  SFTabSwitcher.loadView()();
}

- (void)applyConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_18B7EF2B0(configurationCopy);
}

- (void)setShowsSidebarToggle:(BOOL)toggle
{
  selfCopy = self;
  sub_18B7F8070(toggle);
}

- (UIBarButtonItem)sidebarToggleBarButtonItem
{
  selfCopy = self;
  v3 = sub_18B7C5C10();
  v4 = sub_18B7DEE8C();
  swift_beginAccess();
  *(swift_allocObject() + 16) = 13;
  sub_18BC1E3F8();
  v5 = sub_18B7F8244();

  return v5;
}

- (int64_t)visibleSnapshotLimitForBounds:(CGRect)bounds traitCollection:(id)collection
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  collectionCopy = collection;
  selfCopy = self;
  v11 = sub_18B7C5C10();
  v12 = sub_18B7F84B0(collectionCopy, x, y, width, height);

  return v12;
}

- (void)beginAnimatedSizeTransition
{
  selfCopy = self;
  sub_18B7FC98C();
}

- (void)endAnimatedSizeTransition
{
  selfCopy = self;
  sub_18B7FD274();
}

- (void)setBrowserContentInsets:(UIEdgeInsets)insets
{
  *(*(&self->super.super.super.isa + OBJC_IVAR___SFTabSwitcher_wrapped) + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_browserContentInsets) = insets;
  selfCopy = self;
  sub_18B7FE620();
}

- (void)setBorrowedContentSize:(CGSize)size obscuredInsets:(UIEdgeInsets)insets
{
  v4 = (*(&self->super.super.super.isa + OBJC_IVAR___SFTabSwitcher_wrapped) + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedContentMetrics);
  v5 = v4[1];
  v7[0] = *v4;
  v7[1] = v5;
  v7[2] = v4[2];
  *&v4->width = insets;
  v4[2] = size;
  selfCopy = self;
  sub_18B7FE7A8(v7);
}

- (void)setCapsuleReferenceFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
  sub_18B7FE8AC(x, y, width, height);
}

- (void)setLinkedPanGesturePageWidth:(double)width
{
  selfCopy = self;
  sub_18B7FEA50(width);
}

- (void)performTransaction:(id)transaction withUpdates:(id)updates
{
  v6 = _Block_copy(updates);
  _Block_copy(v6);
  transactionCopy = transaction;
  selfCopy = self;
  sub_18B81CA28(transactionCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)applyContent:(id)content animated:(BOOL)animated
{
  contentCopy = content;
  selfCopy = self;
  sub_18B831B0C(contentCopy, animated);
}

- (SFTabSwitcher)initWithCoder:(id)coder
{
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

- (void)beginSearching
{
  selfCopy = self;
  sub_18BA90A18();
}

- (void)beginSearchingWithQuery:(id)query
{
  v4 = sub_18BC20BD8();
  v6 = v5;
  selfCopy = self;
  v7 = sub_18B7C5C10();
  sub_18B9DEAB0(v4, v6);
}

- (UIEdgeInsets)browserContentInsets
{
  v2 = (*(&self->super.super.super.isa + OBJC_IVAR___SFTabSwitcher_wrapped) + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_browserContentInsets);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (CGRect)capsuleReferenceFrame
{
  v2 = (*(&self->super.super.super.isa + OBJC_IVAR___SFTabSwitcher_wrapped) + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_capsuleReferenceFrame);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)clearHighlightedCapsule
{
  selfCopy = self;
  sub_18BA90D2C();
}

- (void)didReceivePanGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_18BAFF620(gestureCopy);
}

- (BOOL)isSelectingInteractivelyInsertedItem
{
  selfCopy = self;
  v3 = sub_18B7C07CC();
  v4 = *&v3[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

  LOBYTE(selfCopy) = v4[qword_1EA9F8540];
  return selfCopy;
}

- (double)linkedPanGesturePageWidth
{
  selfCopy = self;
  v3 = sub_18B7C07CC();
  v4 = *&v3[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

  v5 = *&v4[qword_1EA9F8568 + 112];
  LODWORD(selfCopy) = v4[qword_1EA9F8568 + 120];

  result = 0.0;
  if (!selfCopy)
  {
    return v5;
  }

  return result;
}

- (void)present
{
  selfCopy = self;
  sub_18BB04F20();
}

- (SFTabSwitcherPresentationObserving)presentationObserver
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (double)quickTabSwitcherPageWidth
{
  selfCopy = self;
  v3 = sub_18B7C07CC();
  v4 = *&v3[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

  v5 = *&v4[qword_1EA9F8568 + 48];
  v6 = *&v4[qword_1EA9F8568 + 56];
  v7 = *&v4[qword_1EA9F8568 + 64];
  v8 = *&v4[qword_1EA9F8568 + 72];
  v9 = *&v4[qword_1EA9F8568 + 136];

  v12.origin.x = v5;
  v12.origin.y = v6;
  v12.size.width = v7;
  v12.size.height = v8;
  Width = CGRectGetWidth(v12);

  return v9 + Width;
}

- (CGRect)frameForLinkedPanningItemWithIdentifier:(id)identifier
{
  v4 = sub_18BC1EC08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1EBE8();
  selfCopy = self;
  sub_18BA912E4(v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  (*(v5 + 8))(v7, v4);
  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (id)makeEditAction
{
  selfCopy = self;
  v3 = sub_18BA91844();

  return v3;
}

- (void)scrollToPage:(id)page
{
  pageCopy = page;
  selfCopy = self;
  sub_18BA91B30(pageCopy);
}

- (void)scrollVisiblePageToTopWithoutAnimation
{
  selfCopy = self;
  sub_18BA91EC4();
}

- (_UIScrollPocketCollectorInteraction)scrollPocketCollector
{
  selfCopy = self;
  v3 = sub_18B7C5C10();
  sub_18B7C9974();
  v5 = v4;

  v6 = *&v5[qword_1EA9D6BC8];
  v7 = v6;

  return v6;
}

- (BOOL)showsSidebarToggle
{
  selfCopy = self;
  v3 = sub_18B7C5C10();
  v4 = v3[OBJC_IVAR___SFTabOverviewDisplayItem_showsSidebarToggle];

  return v4;
}

- (SFTabOverviewDisplayItem)tabOverviewDisplayItem
{
  selfCopy = self;
  v3 = sub_18B7C5C10();

  return v3;
}

- (BOOL)tabOverviewIsVisible
{
  selfCopy = self;
  v3 = sub_18B7C5C10();
  v4 = v3[OBJC_IVAR___SFTabOverviewDisplayItem_state + 9];

  return v4;
}

- (UIView)transitionViewForReducedMotion
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (SFTabSwitcherPage)visiblePage
{
  selfCopy = self;
  v3 = sub_18BA928E0();

  return v3;
}

- (SFTabSwitcher)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end