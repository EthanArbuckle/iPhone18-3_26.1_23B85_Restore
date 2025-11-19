@interface CPUIMediaContainerTableHeaderFooterView
+ (NSString)reuseIdentifier;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CPUIMediaContainerTableHeaderFooterView)initWithCoder:(id)a3;
- (CPUIMediaContainerTableHeaderFooterView)initWithReuseIdentifier:(id)a3;
- (NSString)subtitle;
- (NSString)title;
- (void)observeViewModel;
- (void)prepareForReuse;
- (void)setArtworkCatalog:(id)a3;
- (void)setPlayAction:(id)a3;
- (void)setShuffleAction:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation CPUIMediaContainerTableHeaderFooterView

+ (NSString)reuseIdentifier
{
  swift_getObjCClassMetadata();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = MEMORY[0x245D2BBE0](v4);

    v3 = v5;
  }

  return v3;
}

- (void)setArtworkCatalog:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  if (a3)
  {
    v8 = a3;
    v9 = self;
    Artwork.init(_:)();
    v10 = type metadata accessor for Artwork();
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for Artwork();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    v12 = self;
  }

  CPUIMediaContainerTableHeaderFooterView.ViewModel.artwork.setter(v7);
}

- (NSString)title
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___CPUIMediaContainerTableHeaderFooterView_viewModel);
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  v4 = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__title);
  v6 = *(v3 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__title + 8);

  v7 = MEMORY[0x245D2BBE0](v5, v6);

  return v7;
}

- (void)setTitle:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  CPUIMediaContainerTableHeaderFooterView.ViewModel.title.setter(v4, v6);
}

- (NSString)subtitle
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___CPUIMediaContainerTableHeaderFooterView_viewModel);
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  v4 = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v3 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle);
  v5 = *(v3 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle + 8);

  if (v5)
  {
    v7 = MEMORY[0x245D2BBE0](v6, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setSubtitle:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  CPUIMediaContainerTableHeaderFooterView.subtitle.setter(v4, v6);
}

- (void)setPlayAction:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  }

  else
  {
    v5 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  v7 = self;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
}

- (void)setShuffleAction:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = _sIeyB_Ieg_TRTA_0;
  }

  else
  {
    v5 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  v7 = self;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
}

- (CPUIMediaContainerTableHeaderFooterView)initWithReuseIdentifier:(id)a3
{
  if (a3)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return CPUIMediaContainerTableHeaderFooterView.init(reuseIdentifier:)(v3, v4);
}

- (CPUIMediaContainerTableHeaderFooterView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___CPUIMediaContainerTableHeaderFooterView_hostingView);
  v4 = self;
  v5 = v3;
  v6 = [(CPUIMediaContainerTableHeaderFooterView *)v4 contentView];
  [v6 bounds];
  v8 = v7;

  [v5 sizeThatFits_];
  v10 = v9;

  v11 = [(CPUIMediaContainerTableHeaderFooterView *)v4 contentView];
  [v11 bounds];
  v13 = v12;

  v14 = v13;
  v15 = v10;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CPUIMediaContainerTableHeaderFooterView;
  v2 = self;
  [(CPUIMediaContainerTableHeaderFooterView *)&v3 prepareForReuse];
  CPUIMediaContainerTableHeaderFooterView.ViewModel.reset()();
}

- (void)observeViewModel
{
  v2 = self;
  withObservationTracking<A>(_:onChange:)();
}

@end