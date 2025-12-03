@interface Header.HeaderView
- (CGSize)sizeThatFits:(CGSize)fits;
- (UITraitCollection)traitCollection;
- (_TtCV20CommunicationDetails6Header10HeaderView)initWithCoder:(id)coder;
- (_TtCV20CommunicationDetails6Header10HeaderView)initWithFrame:(CGRect)frame;
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
  selfCopy = self;
  traitCollection = v3();
  if (!traitCollection)
  {
    v8.receiver = selfCopy;
    v8.super_class = type metadata accessor for Header.HeaderView();
    traitCollection = [(Header.HeaderView *)&v8 traitCollection];
  }

  v6 = traitCollection;

  return v6;
}

- (_TtCV20CommunicationDetails6Header10HeaderView)initWithFrame:(CGRect)frame
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

- (_TtCV20CommunicationDetails6Header10HeaderView)initWithCoder:(id)coder
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
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

  selfCopy = self;
  Header.HeaderView.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  v7 = Header.HeaderView.expandedSizeThatFits(_:)(width, height);
  v9 = v8;
  v10.n128_f64[0] = Header.HeaderView.collapsedStateSizeThatFits(_:)(width, height);
  v12 = v11;
  v13 = (*((*MEMORY[0x1E69E7D40] & selfCopy->super.super.super.isa) + 0x1E0))(v10);
  v14 = static Geometry.lerp(t:min:max:)(v13, v12, v9);

  v15 = v7;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

@end