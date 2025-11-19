@interface HealthArticleViewController
- (_TtC16HealthArticlesUI27HealthArticleViewController)initWithCoder:(id)a3;
- (_TtC16HealthArticlesUI27HealthArticleViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)dismissArticleModal;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)viewDidLoad;
@end

@implementation HealthArticleViewController

- (_TtC16HealthArticlesUI27HealthArticleViewController)initWithCoder:(id)a3
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
  v3 = self;
  [(HealthArticleViewController *)&v10 viewDidLoad];
  sub_251325BCC();
  v4 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v5 = [v4 initWithBarButtonSystemItem:0 target:v3 action:{sel_dismissArticleModal, v10.receiver, v10.super_class}];
  v6 = [(HealthArticleViewController *)v3 navigationItem];
  [v6 setRightBarButtonItem_];

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

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v4 = a4;
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v4)
  {
  }

  else
  {
    v6 = self;
    sub_2513264D8(0);
  }
}

- (_TtC16HealthArticlesUI27HealthArticleViewController)initWithNibName:(id)a3 bundle:(id)a4
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

- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)a3
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [(HealthArticleViewController *)self supportedInterfaceOrientations];

  return v4;
}

@end