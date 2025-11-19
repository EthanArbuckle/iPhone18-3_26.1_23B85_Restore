@interface QuickActionCustomButton
- (_TtC20CommunicationDetails23QuickActionCustomButton)initWithCoder:(id)a3;
- (_TtC20CommunicationDetails23QuickActionCustomButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation QuickActionCustomButton

- (_TtC20CommunicationDetails23QuickActionCustomButton)initWithCoder:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for QuickActionCustomButton();
  v3 = self;
  [(QuickActionCustomButton *)&v6 layoutSubviews];
  v4 = [(QuickActionCustomButton *)v3 layer:v6.receiver];
  [(QuickActionCustomButton *)v3 frame];
  [v4 setCornerRadius_];
}

- (_TtC20CommunicationDetails23QuickActionCustomButton)initWithFrame:(CGRect)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end