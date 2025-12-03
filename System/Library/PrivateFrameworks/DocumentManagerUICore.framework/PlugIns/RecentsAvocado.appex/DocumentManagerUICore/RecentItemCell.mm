@interface RecentItemCell
- (FPItem)accessibilityItem;
- (UILabel)accessibilitySubtitle;
- (UILabel)accessibilityTitle;
- (_TtC14RecentsAvocado14RecentItemCell)initWithFrame:(CGRect)frame;
- (id)dragInteraction:(id)interaction itemsForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (int64_t)_dragInteraction:(id)interaction dataOwnerForSession:(id)session;
- (void)didMoveToWindow;
- (void)handleTap:(id)tap;
- (void)layoutSubviews;
- (void)thumbnailLoaded:(id)loaded;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation RecentItemCell

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_10001485C();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100014B50();
}

- (void)handleTap:(id)tap
{
  if (tap)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_10001A4D0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000043EC(self);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_10000FBF4(v6, &qword_10002A930, &qword_10001C060);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100015114(change);
}

- (FPItem)accessibilityItem
{
  v2 = self->layoutScale[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind];
  if (v2 >= 2)
  {
    v7 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind);
    swift_getObjectType();
    selfCopy = self;
    sub_100004E04(v4, v2);
    v6 = sub_10001A480();

    sub_100004E18(v4, v2);
    v7 = v6;
  }

  return v7;
}

- (UILabel)accessibilityTitle
{
  selfCopy = self;
  v3 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title, sub_100012088);

  return v3;
}

- (UILabel)accessibilitySubtitle
{
  selfCopy = self;
  v3 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitle, sub_1000123E0);

  return v3;
}

- (_TtC14RecentsAvocado14RecentItemCell)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)thumbnailLoaded:(id)loaded
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100015CB4(loaded);
  swift_unknownObjectRelease();
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  ObjectType = swift_getObjectType();
  sub_1000057B0(0, &qword_10002AE38, UITouch_ptr);
  sub_1000198A4();
  sub_10001A2B0();
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = self;
  *(v8 + 24) = 1;
  aBlock[4] = sub_100019CE4;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019CCC;
  aBlock[3] = &unk_100025628;
  v9 = _Block_copy(aBlock);
  selfCopy = self;
  eventCopy = event;

  [v7 animateWithDuration:v9 animations:0.1];
  _Block_release(v9);
  isa = sub_10001A2A0().super.isa;

  v13.receiver = selfCopy;
  v13.super_class = ObjectType;
  [(RecentItemCell *)&v13 touchesEnded:isa withEvent:eventCopy];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  sub_1000057B0(0, &qword_10002AE38, UITouch_ptr);
  sub_1000198A4();
  v6 = sub_10001A2B0();
  eventCopy = event;
  selfCopy = self;
  sub_100016720(v6, event);
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100018E90();

  swift_unknownObjectRelease();
  sub_1000057B0(0, &qword_10002AE30, UIDragItem_ptr);
  v7.super.isa = sub_10001A240().super.isa;

  return v7.super.isa;
}

- (id)dragInteraction:(id)interaction itemsForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000190EC();

  swift_unknownObjectRelease();
  sub_1000057B0(0, &qword_10002AE30, UIDragItem_ptr);
  v8.super.isa = sub_10001A240().super.isa;

  return v8.super.isa;
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  interactionCopy = interaction;
  itemCopy = item;
  swift_unknownObjectRetain();
  selfCopy = self;
  v10 = sub_10001950C();

  swift_unknownObjectRelease();

  return v10;
}

- (int64_t)_dragInteraction:(id)interaction dataOwnerForSession:(id)session
{
  v4 = self->layoutScale[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind];
  if (v4 >= 2)
  {
    return 0;
  }

  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind);
  swift_getObjectType();
  selfCopy = self;
  sub_100004E04(v6, v4);
  v8 = sub_10001A490();

  sub_100004E18(v6, v4);
  return v8;
}

@end