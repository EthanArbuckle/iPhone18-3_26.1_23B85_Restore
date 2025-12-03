@interface PackageView
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
- (void)mru_applyVisualStylingWith:(id)with;
- (void)mt_applyVisualStyling:(id)styling;
@end

@implementation PackageView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1A211C0D8();
}

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC13MediaControls11PackageView_packageLayer);
  if (v2)
  {
    selfCopy = self;
    v4 = [v2 size];
    (*((*MEMORY[0x1E69E7D40] & selfCopy->super.super.super.isa) + 0xA8))(v4);
    sub_1A22E6BF8();
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v6 = 0.0;
    v8 = 0.0;
  }

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)mt_applyVisualStyling:(id)styling
{
  if (styling)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = self;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1A22E0884;
    *(v6 + 24) = v5;
    v10[4] = sub_1A22E0888;
    v10[5] = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1A22E03B0;
    v10[3] = &block_descriptor_23;
    v7 = _Block_copy(v10);
    selfCopy = self;
    stylingCopy = styling;

    [stylingCopy applyToView:selfCopy withColorBlock:v7];
    _Block_release(v7);
  }

  else
  {
    __break(1u);
  }
}

- (void)mru_applyVisualStylingWith:(id)with
{
  v5 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0xC8);
  withCopy = with;
  selfCopy = self;
  v5(with);
}

@end