@interface CPUIMediaContainerTableHeaderFooterView
+ (NSString)reuseIdentifier;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CPUIMediaContainerTableHeaderFooterView)initWithCoder:(id)coder;
- (CPUIMediaContainerTableHeaderFooterView)initWithReuseIdentifier:(id)identifier;
- (NSString)subtitle;
- (NSString)title;
- (void)observeViewModel;
- (void)prepareForReuse;
- (void)setArtworkCatalog:(id)catalog;
- (void)setPlayAction:(id)action;
- (void)setShuffleAction:(id)action;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
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

- (void)setArtworkCatalog:(id)catalog
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  if (catalog)
  {
    catalogCopy = catalog;
    selfCopy = self;
    Artwork.init(_:)();
    v10 = type metadata accessor for Artwork();
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for Artwork();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    selfCopy2 = self;
  }

  CPUIMediaContainerTableHeaderFooterView.ViewModel.artwork.setter(v7);
}

- (NSString)title
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___CPUIMediaContainerTableHeaderFooterView_viewModel);
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  selfCopy = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__title);
  v6 = *(v3 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__title + 8);

  v7 = MEMORY[0x245D2BBE0](v5, v6);

  return v7;
}

- (void)setTitle:(id)title
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  CPUIMediaContainerTableHeaderFooterView.ViewModel.title.setter(v4, v6);
}

- (NSString)subtitle
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___CPUIMediaContainerTableHeaderFooterView_viewModel);
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  selfCopy = self;
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

- (void)setSubtitle:(id)subtitle
{
  if (subtitle)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  CPUIMediaContainerTableHeaderFooterView.subtitle.setter(v4, v6);
}

- (void)setPlayAction:(id)action
{
  v4 = _Block_copy(action);
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
  selfCopy = self;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
}

- (void)setShuffleAction:(id)action
{
  v4 = _Block_copy(action);
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
  selfCopy = self;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
}

- (CPUIMediaContainerTableHeaderFooterView)initWithReuseIdentifier:(id)identifier
{
  if (identifier)
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

- (CPUIMediaContainerTableHeaderFooterView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___CPUIMediaContainerTableHeaderFooterView_hostingView);
  selfCopy = self;
  v5 = v3;
  contentView = [(CPUIMediaContainerTableHeaderFooterView *)selfCopy contentView];
  [contentView bounds];
  v8 = v7;

  [v5 sizeThatFits_];
  v10 = v9;

  contentView2 = [(CPUIMediaContainerTableHeaderFooterView *)selfCopy contentView];
  [contentView2 bounds];
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
  selfCopy = self;
  [(CPUIMediaContainerTableHeaderFooterView *)&v3 prepareForReuse];
  CPUIMediaContainerTableHeaderFooterView.ViewModel.reset()();
}

- (void)observeViewModel
{
  selfCopy = self;
  withObservationTracking<A>(_:onChange:)();
}

@end