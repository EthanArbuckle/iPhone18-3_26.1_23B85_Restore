@interface Header.HeaderView
- (CGSize)sizeThatFits:(CGSize)a3;
- (UITraitCollection)traitCollection;
- (_TtCV20CommunicationDetails6Header10HeaderView)initWithCoder:(id)a3;
- (_TtCV20CommunicationDetails6Header10HeaderView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation Header.HeaderView

- (UITraitCollection)traitCollection
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0x230);
  v4 = self;
  v5 = v3();
  if (!v5)
  {
    v8.receiver = v4;
    v8.super_class = type metadata accessor for Header.HeaderView();
    v5 = [(Header.HeaderView *)&v8 traitCollection];
  }

  v6 = v5;

  return v6;
}

- (_TtCV20CommunicationDetails6Header10HeaderView)initWithFrame:(CGRect)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  specialized Header.HeaderView.init(frame:)();
}

- (_TtCV20CommunicationDetails6Header10HeaderView)initWithCoder:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  specialized Header.HeaderView.init(frame:)();
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

  v3 = self;
  Header.HeaderView.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = self;
  v7 = Header.HeaderView.expandedSizeThatFits(_:)(width, height);
  v9 = v8;
  v10.n128_f64[0] = Header.HeaderView.collapsedStateSizeThatFits(_:)(width, height);
  v12 = v11;
  v13 = (*((*MEMORY[0x1E69E7D40] & v6->super.super.super.isa) + 0x1E0))(v10);
  v14 = static Geometry.lerp(t:min:max:)(v13, v12, v9);

  v15 = v7;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

@end