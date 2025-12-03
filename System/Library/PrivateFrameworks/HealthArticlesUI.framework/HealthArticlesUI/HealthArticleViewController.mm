@interface HealthArticleViewController
- (_TtC16HealthArticlesUI27HealthArticleViewController)initWithCoder:(id)coder;
- (_TtC16HealthArticlesUI27HealthArticleViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)orientations;
- (unint64_t)supportedInterfaceOrientations;
- (void)dismissArticleModal;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)viewDidLoad;
@end

@implementation HealthArticleViewController

- (_TtC16HealthArticlesUI27HealthArticleViewController)initWithCoder:(id)coder
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___componentViews) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___contentView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___trackingViewToState) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController_scrollView) = 0;
  result = sub_25133FC14();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  swift_getObjectType();
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for HealthArticleViewController();
  selfCopy = self;
  [(HealthArticleViewController *)&v10 viewDidLoad];
  sub_251325BCC();
  v4 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v5 = [v4 initWithBarButtonSystemItem:0 target:selfCopy action:{sel_dismissArticleModal, v10.receiver, v10.super_class}];
  navigationItem = [(HealthArticleViewController *)selfCopy navigationItem];
  [navigationItem setRightBarButtonItem_];

  sub_25131C208();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_251340BD0;
  v8 = sub_25133F6D4();
  v9 = sub_251328004(&unk_27F42B200, MEMORY[0x277D126D0]);
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  sub_25133F9D4();

  swift_unknownObjectRelease();
}

- (unint64_t)supportedInterfaceOrientations
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 2;
}

- (void)dismissArticleModal
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [(HealthArticleViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  decelerateCopy = decelerate;
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (decelerateCopy)
  {
  }

  else
  {
    selfCopy = self;
    sub_2513264D8(0);
  }
}

- (_TtC16HealthArticlesUI27HealthArticleViewController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)orientations
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  supportedInterfaceOrientations = [(HealthArticleViewController *)self supportedInterfaceOrientations];

  return supportedInterfaceOrientations;
}

@end