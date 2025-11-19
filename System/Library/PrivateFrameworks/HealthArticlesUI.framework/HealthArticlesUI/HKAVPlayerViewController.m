@interface HKAVPlayerViewController
- (_TtC16HealthArticlesUIP33_5654D5C4E01B31C9F970FE0D4B22B66D24HKAVPlayerViewController)init;
- (_TtC16HealthArticlesUIP33_5654D5C4E01B31C9F970FE0D4B22B66D24HKAVPlayerViewController)initWithCoder:(id)a3;
- (_TtC16HealthArticlesUIP33_5654D5C4E01B31C9F970FE0D4B22B66D24HKAVPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC16HealthArticlesUIP33_5654D5C4E01B31C9F970FE0D4B22B66D24HKAVPlayerViewController)initWithPlayerLayerView:(id)a3;
@end

@implementation HKAVPlayerViewController

- (_TtC16HealthArticlesUIP33_5654D5C4E01B31C9F970FE0D4B22B66D24HKAVPlayerViewController)init
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self + OBJC_IVAR____TtC16HealthArticlesUIP33_5654D5C4E01B31C9F970FE0D4B22B66D24HKAVPlayerViewController_timeControlStatusBeforeBackground;
  *v3 = 0;
  v3[8] = 1;
  v10.receiver = self;
  v10.super_class = type metadata accessor for HKAVPlayerViewController();
  v4 = [(HKAVPlayerViewController *)&v10 initWithNibName:0 bundle:0];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 defaultCenter];
  [v7 addObserver:v6 selector:sel_didBecomeActive name:*MEMORY[0x277D76648] object:0];

  v8 = [v5 defaultCenter];
  [v8 addObserver:v6 selector:sel_willResignActive name:*MEMORY[0x277D76768] object:0];

  return v6;
}

- (_TtC16HealthArticlesUIP33_5654D5C4E01B31C9F970FE0D4B22B66D24HKAVPlayerViewController)initWithCoder:(id)a3
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = self + OBJC_IVAR____TtC16HealthArticlesUIP33_5654D5C4E01B31C9F970FE0D4B22B66D24HKAVPlayerViewController_timeControlStatusBeforeBackground;
  *v4 = 0;
  v4[8] = 1;
  result = sub_25133FC14();
  __break(1u);
  return result;
}

- (_TtC16HealthArticlesUIP33_5654D5C4E01B31C9F970FE0D4B22B66D24HKAVPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4
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

- (_TtC16HealthArticlesUIP33_5654D5C4E01B31C9F970FE0D4B22B66D24HKAVPlayerViewController)initWithPlayerLayerView:(id)a3
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

@end