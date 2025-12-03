@interface ActivityEditViewController
- (_TtC7FocusUI26ActivityEditViewController)initWithActivityDescription:(id)description;
- (_TtC7FocusUI26ActivityEditViewController)initWithCoder:(id)coder;
- (_TtC7FocusUI26ActivityEditViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)willDisappearBlock;
- (void)setWillDisappearBlock:(id)block;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ActivityEditViewController

- (_TtC7FocusUI26ActivityEditViewController)initWithActivityDescription:(id)description
{
  *(self + OBJC_IVAR____TtC7FocusUI26ActivityEditViewController_visibleHeight) = 0x4084000000000000;
  v3 = (self + OBJC_IVAR____TtC7FocusUI26ActivityEditViewController_willDisappearBlock);
  *v3 = 0;
  v3[1] = 0;
  *(self + OBJC_IVAR____TtC7FocusUI26ActivityEditViewController_activityDescription) = description;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ActivityEditViewController();
  swift_unknownObjectRetain();
  return [(ActivityEditViewController *)&v5 initWithNibName:0 bundle:0];
}

- (_TtC7FocusUI26ActivityEditViewController)initWithCoder:(id)coder
{
  *(self + OBJC_IVAR____TtC7FocusUI26ActivityEditViewController_visibleHeight) = 0x4084000000000000;
  v3 = (self + OBJC_IVAR____TtC7FocusUI26ActivityEditViewController_willDisappearBlock);
  *v3 = 0;
  v3[1] = 0;
  result = sub_24BB4B58C();
  __break(1u);
  return result;
}

- (id)willDisappearBlock
{
  v2 = (self + OBJC_IVAR____TtC7FocusUI26ActivityEditViewController_willDisappearBlock);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24BB4926C;
    aBlock[3] = &block_descriptor_14;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setWillDisappearBlock:(id)block
{
  v4 = _Block_copy(block);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_24BB4AD40;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC7FocusUI26ActivityEditViewController_willDisappearBlock);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_24BB493F4(v7);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_24BB495D0();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ActivityEditViewController();
  v4 = v8.receiver;
  v5 = [(ActivityEditViewController *)&v8 viewWillDisappear:disappearCopy];
  v6 = (*((*MEMORY[0x277D85000] & *v4) + 0x70))(v5);
  if (v6)
  {
    v7 = v6;
    v6(v4);

    sub_24BB493F4(v7);
  }

  else
  {
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_24BB49DA0(appear);
}

- (_TtC7FocusUI26ActivityEditViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end