@interface CPUITableHeaderFooterView
+ (NSString)reuseIdentifier;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CPUITableHeaderFooterView)initWithCoder:(id)coder;
- (CPUITableHeaderFooterView)initWithReuseIdentifier:(id)identifier;
- (NSString)title;
- (id)action;
- (void)observeViewModel;
- (void)prepareForReuse;
- (void)setAction:(id)action;
- (void)setTitle:(id)title;
@end

@implementation CPUITableHeaderFooterView

+ (NSString)reuseIdentifier
{
  v2 = MEMORY[0x245D2BBE0](0xD00000000000001FLL, 0x80000002431EA500);

  return v2;
}

- (NSString)title
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___CPUITableHeaderFooterView_viewModel);
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel, type metadata accessor for CPUITableHeaderFooterView.ViewModel);
  selfCopy = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 16);
  v6 = *(v3 + 24);

  v7 = MEMORY[0x245D2BBE0](v5, v6);

  return v7;
}

- (void)setTitle:(id)title
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  CPUITableHeaderFooterView.ViewModel.title.setter(v4, v6);
}

- (id)action
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___CPUITableHeaderFooterView_viewModel);
  swift_getKeyPath();
  v8[0] = v3;
  lazy protocol witness table accessor for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel, type metadata accessor for CPUITableHeaderFooterView.ViewModel);
  selfCopy = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  _sxRi_zRi0_zlyytIsegr_SgWOy_0(v5);

  if (v5)
  {
    v8[4] = v5;
    v8[5] = v6;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed () -> ();
    v8[3] = &block_descriptor_2;
    v5 = _Block_copy(v8);
  }

  return v5;
}

- (void)setAction:(id)action
{
  v4 = _Block_copy(action);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
  }

  else
  {
    v5 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  lazy protocol witness table accessor for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel, type metadata accessor for CPUITableHeaderFooterView.ViewModel);
  selfCopy = self;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
}

- (CPUITableHeaderFooterView)initWithReuseIdentifier:(id)identifier
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

  return CPUITableHeaderFooterView.init(reuseIdentifier:)(v3, v4);
}

- (CPUITableHeaderFooterView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___CPUITableHeaderFooterView_hostingView);
  selfCopy = self;
  v5 = v3;
  contentView = [(CPUITableHeaderFooterView *)selfCopy contentView];
  [contentView bounds];
  v8 = v7;

  [v5 sizeThatFits_];
  v10 = v9;

  contentView2 = [(CPUITableHeaderFooterView *)selfCopy contentView];
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
  v3.super_class = CPUITableHeaderFooterView;
  selfCopy = self;
  [(CPUITableHeaderFooterView *)&v3 prepareForReuse];
  CPUITableHeaderFooterView.ViewModel.title.setter(0, 0xE000000000000000);
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel, type metadata accessor for CPUITableHeaderFooterView.ViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

- (void)observeViewModel
{
  selfCopy = self;
  withObservationTracking<A>(_:onChange:)();
}

@end