@interface SFScribbleSelectionOverlay
- (UIView)effectiveHideButtonView;
- (id)hideButtonHandler;
- (void)fadeIn;
- (void)fadeOutWithCompletion:(id)a3;
- (void)layoutSubviews;
- (void)setHideButtonHandler:(id)a3;
- (void)setShowsHideButton:(BOOL)a3;
@end

@implementation SFScribbleSelectionOverlay

- (id)hideButtonHandler
{
  v2 = *(self + OBJC_IVAR___SFScribbleSelectionOverlay_hideButtonHandler + 8);
  v5[4] = *(self + OBJC_IVAR___SFScribbleSelectionOverlay_hideButtonHandler);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18B7B0DB0;
  v5[3] = &block_descriptor_63_0;
  v3 = _Block_copy(v5);
  sub_18BC1E1A8();

  return v3;
}

- (void)setHideButtonHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR___SFScribbleSelectionOverlay_hideButtonHandler);
  *v6 = sub_18BA2A9D8;
  v6[1] = v5;
}

- (void)setShowsHideButton:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_18BBE55C0(v3);
}

- (UIView)effectiveHideButtonView
{
  if (*(self + OBJC_IVAR___SFScribbleSelectionOverlay_hideButtonTypeThatFits))
  {
    if (*(self + OBJC_IVAR___SFScribbleSelectionOverlay_hideButtonTypeThatFits) == 1)
    {
      v2 = *(self + OBJC_IVAR___SFScribbleSelectionOverlay_smallHideButton);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = [(SFScribbleSelectionOverlay *)self regularHideButton];
  }

  return v2;
}

- (void)layoutSubviews
{
  v2 = self;
  SFScribbleSelectionOverlay.layoutSubviews()();
}

- (void)fadeIn
{
  v2 = self;
  sub_18BBE721C();
}

- (void)fadeOutWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_18BA2A69C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  sub_18BBE750C(v7, v6);
  sub_18B7E0A10(v7);
}

@end