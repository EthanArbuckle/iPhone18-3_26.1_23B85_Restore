@interface IconListFolderView
+ (Class)_scrollViewClass;
+ (Class)defaultIconListViewClass;
- (CCUIIconScrollView)scrollView;
- (CGRect)_frameForIconListAtIndex:(int64_t)index;
- (void)_configureIconListView:(id)view;
- (void)_layoutSubviews;
- (void)_scrollViewDidInterruptDecelerating:(id)decelerating;
- (void)_updateIconListContainment:(id)containment atIndex:(int64_t)index;
- (void)dealloc;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
@end

@implementation IconListFolderView

- (CCUIIconScrollView)scrollView
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for IconListFolderView();
  scrollView = [(SBFolderView *)&v5 scrollView];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();

  return v3;
}

- (void)dealloc
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_scrollPositionProperty);
  if (v2)
  {
    selfCopy = self;
    [v2 invalidate];
    v4.receiver = selfCopy;
    v4.super_class = type metadata accessor for IconListFolderView();
    [(SBFolderView *)&v4 dealloc];
  }

  else
  {
    __break(1u);
  }
}

- (void)_layoutSubviews
{
  selfCopy = self;
  sub_21EA8EB50();
}

+ (Class)defaultIconListViewClass
{
  type metadata accessor for IconListFolderView.IconListView();

  return swift_getObjCClassFromMetadata();
}

+ (Class)_scrollViewClass
{
  sub_21E9F8880(0, &qword_28125B7E8);

  return swift_getObjCClassFromMetadata();
}

- (void)_configureIconListView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_21EA8ED44(viewCopy);
}

- (void)_updateIconListContainment:(id)containment atIndex:(int64_t)index
{
  containmentCopy = containment;
  selfCopy = self;
  superview = [containmentCopy superview];
  if (!superview || (v7 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_contentView), v8 = superview, superview, v8 != v7))
  {
    [*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_contentView) addSubview_];
  }
}

- (CGRect)_frameForIconListAtIndex:(int64_t)index
{
  selfCopy = self;
  v5 = sub_21EA8EFE4(index);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_21EA8F174(scrollCopy);
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for IconListFolderView();
  v4 = v6.receiver;
  [(SBFolderView *)&v6 scrollViewWillBeginDragging:dragging];
  v4[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_isTrackingDrag] = 1;
  *&v4[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_numOutstandingScrollAnimations] = 0;
  v5 = &v4[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_animatedTargetContentOffset];
  *v5 = 0;
  v5[8] = 1;
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  v11.receiver = self;
  v11.super_class = type metadata accessor for IconListFolderView();
  draggingCopy = dragging;
  v10 = v11.receiver;
  [(SBFolderView *)&v11 scrollViewWillEndDragging:draggingCopy withVelocity:offset targetContentOffset:x, y];
  sub_21EA8DB80(offset->y);
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for IconListFolderView();
  v4 = v6.receiver;
  [(SBFolderView *)&v6 scrollViewDidEndScrollingAnimation:animation];
  v5 = &v4[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_animatedTargetContentOffset];
  *v5 = 0;
  v5[8] = 1;
}

- (void)_scrollViewDidInterruptDecelerating:(id)decelerating
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_isTrackingDrag) = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_numOutstandingScrollAnimations) = 0;
  v3 = self + OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_animatedTargetContentOffset;
  *v3 = 0;
  v3[8] = 1;
  [(IconListFolderView *)self scrollViewDidScroll:decelerating];
}

@end