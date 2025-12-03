@interface CalendarViewLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (_TtC8HealthUI18CalendarViewLayout)init;
- (_TtC8HealthUI18CalendarViewLayout)initWithCoder:(id)coder;
- (id)invalidationContextForBoundsChange:(CGRect)change;
- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (void)invalidateLayoutWithContext:(id)context;
- (void)prepareLayout;
@end

@implementation CalendarViewLayout

- (_TtC8HealthUI18CalendarViewLayout)initWithCoder:(id)coder
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_1C3D20944();
  __break(1u);
  return result;
}

- (void)prepareLayout
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_1C3CFD770();
}

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = objc_allocWithZone(type metadata accessor for CalendarLayoutInvalidationContext());
  selfCopy = self;
  v10 = [v8 init];
  collectionView = [(CalendarViewLayout *)selfCopy collectionView];
  if (collectionView)
  {
    v12 = collectionView;
    [collectionView bounds];
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    v13 = CGRectEqualToRect(v16, v17);

    if (!v13)
    {
      v10[OBJC_IVAR____TtC8HealthUI33CalendarLayoutInvalidationContext_shouldInvalidateAllDecorationViews] = 1;
    }
  }

  return v10;
}

- (void)invalidateLayoutWithContext:(id)context
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  contextCopy = context;
  selfCopy = self;
  sub_1C3CFDE4C(contextCopy);
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  v9 = sub_1C3CFE0B4(x, y, width, height);

  if (v9)
  {
    sub_1C3CFF178();
    v10 = sub_1C3D202A4();
  }

  else
  {

    v10 = 0;
  }

  return v10;
}

- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path
{
  v5 = sub_1C3D1E5B4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_1C3D20104();
  v11 = v10;
  sub_1C3D1E564();
  selfCopy = self;
  v13 = sub_1C3CFE6B8(v9, v11, v8);

  (*(v6 + 8))(v8, v5);

  return v13;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 1;
}

- (_TtC8HealthUI18CalendarViewLayout)init
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end