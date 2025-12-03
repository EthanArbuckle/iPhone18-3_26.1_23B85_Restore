@interface CPUIEnhancedSectionHeaderView
- (BOOL)enabled;
- (UIImage)buttonImage;
- (UIImage)image;
- (id)buttonAction;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)setButtonAction:(id)action;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation CPUIEnhancedSectionHeaderView

- (UIImage)image
{
  v3 = OBJC_IVAR___CPUIEnhancedSectionHeaderView_image;
  swift_beginAccess();
  return *(self + v3);
}

- (UIImage)buttonImage
{
  v3 = OBJC_IVAR___CPUIEnhancedSectionHeaderView_buttonImage;
  swift_beginAccess();
  return *(self + v3);
}

- (id)buttonAction
{
  v2 = (self + OBJC_IVAR___CPUIEnhancedSectionHeaderView_buttonAction);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_4;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setButtonAction:(id)action
{
  v4 = _Block_copy(action);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___CPUIEnhancedSectionHeaderView_buttonAction);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  _sxRi_zRi0_zlyytIsegr_SgWOy(v4);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
  [(CPUIEnhancedSectionHeaderView *)selfCopy setNeedsUpdateConfiguration];

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v4);
}

- (BOOL)enabled
{
  v3 = OBJC_IVAR___CPUIEnhancedSectionHeaderView_enabled;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEnabled:(BOOL)enabled
{
  v5 = OBJC_IVAR___CPUIEnhancedSectionHeaderView_enabled;
  swift_beginAccess();
  *(self + v5) = enabled;
  [(CPUIEnhancedSectionHeaderView *)self setNeedsUpdateConfiguration];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UIViewConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIViewConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  CPUIEnhancedSectionHeaderView.updateConfiguration(using:)(v7);

  (*(v5 + 8))(v7, v4);
}

@end