@interface DOCImageViewContainerView
- (void)effectiveAppearanceDidChange:(id)change;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation DOCImageViewContainerView

- (void)layoutSubviews
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v5 = swift_allocObject();
  *(v5 + 16) = closure #1 in DOCImageViewContainerView.layoutSubviews()partial apply;
  *(v5 + 24) = v4;
  v8[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed () -> ();
  v8[3] = &block_descriptor_147_0;
  v6 = _Block_copy(v8);
  selfCopy = self;

  [v3 performWithoutAnimation_];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

- (void)effectiveAppearanceDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCImageViewContainerView();
  changeCopy = change;
  v5 = v6.receiver;
  [(DOCImageViewContainerView *)&v6 effectiveAppearanceDidChange:changeCopy];
  (*((*MEMORY[0x277D85000] & *v5) + 0xD0))(1);
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCImageViewContainerView();
  v2 = v3.receiver;
  [(DOCImageViewContainerView *)&v3 tintColorDidChange];
  (*((*MEMORY[0x277D85000] & *v2) + 0xD0))(1);
}

@end