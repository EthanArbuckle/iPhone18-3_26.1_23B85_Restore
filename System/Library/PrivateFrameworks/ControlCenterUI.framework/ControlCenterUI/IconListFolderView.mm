@interface IconListFolderView
+ (Class)_scrollViewClass;
+ (Class)defaultIconListViewClass;
- (CCUIIconScrollView)scrollView;
- (CGRect)_frameForIconListAtIndex:(int64_t)a3;
- (void)_configureIconListView:(id)a3;
- (void)_layoutSubviews;
- (void)_scrollViewDidInterruptDecelerating:(id)a3;
- (void)_updateIconListContainment:(id)a3 atIndex:(int64_t)a4;
- (void)dealloc;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
@end

@implementation IconListFolderView

- (CCUIIconScrollView)scrollView
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for IconListFolderView();
  v2 = [(SBFolderView *)&v5 scrollView];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();

  return v3;
}

- (void)dealloc
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_scrollPositionProperty);
  if (v2)
  {
    v3 = self;
    [v2 invalidate];
    v4.receiver = v3;
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
  v2 = self;
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

- (void)_configureIconListView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21EA8ED44(v4);
}

- (void)_updateIconListContainment:(id)a3 atIndex:(int64_t)a4
{
  v5 = a3;
  v9 = self;
  v6 = [v5 superview];
  if (!v6 || (v7 = *(&v9->super.super.super.super.isa + OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_contentView), v8 = v6, v6, v8 != v7))
  {
    [*(&v9->super.super.super.super.isa + OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_contentView) addSubview_];
  }
}

- (CGRect)_frameForIconListAtIndex:(int64_t)a3
{
  v4 = self;
  v5 = sub_21EA8EFE4(a3);
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

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21EA8F174(v4);
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for IconListFolderView();
  v4 = v6.receiver;
  [(SBFolderView *)&v6 scrollViewWillBeginDragging:a3];
  v4[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_isTrackingDrag] = 1;
  *&v4[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_numOutstandingScrollAnimations] = 0;
  v5 = &v4[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_animatedTargetContentOffset];
  *v5 = 0;
  v5[8] = 1;
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v11.receiver = self;
  v11.super_class = type metadata accessor for IconListFolderView();
  v9 = a3;
  v10 = v11.receiver;
  [(SBFolderView *)&v11 scrollViewWillEndDragging:v9 withVelocity:a5 targetContentOffset:x, y];
  sub_21EA8DB80(a5->y);
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for IconListFolderView();
  v4 = v6.receiver;
  [(SBFolderView *)&v6 scrollViewDidEndScrollingAnimation:a3];
  v5 = &v4[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_animatedTargetContentOffset];
  *v5 = 0;
  v5[8] = 1;
}

- (void)_scrollViewDidInterruptDecelerating:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_isTrackingDrag) = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_numOutstandingScrollAnimations) = 0;
  v3 = self + OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_animatedTargetContentOffset;
  *v3 = 0;
  v3[8] = 1;
  [(IconListFolderView *)self scrollViewDidScroll:a3];
}

@end