@interface MetalRenderer
- (_TtC14MentalHealthUI13MetalRenderer)init;
- (id)displayLinkWillRenderFrame;
- (void)setDisplayLinkWillRenderFrame:(id)frame;
@end

@implementation MetalRenderer

- (id)displayLinkWillRenderFrame
{
  if (*(self + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLinkWillRenderFrame))
  {
    v2 = *(self + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLinkWillRenderFrame + 8);
    v5[4] = *(self + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLinkWillRenderFrame);
    v5[5] = v2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_258A0ED00;
    v5[3] = &block_descriptor_68;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDisplayLinkWillRenderFrame:(id)frame
{
  v4 = _Block_copy(frame);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_258A1059C;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLinkWillRenderFrame);
  v8 = *(self + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLinkWillRenderFrame);
  v9 = *(self + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLinkWillRenderFrame + 8);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_258A1040C(v8);
}

- (_TtC14MentalHealthUI13MetalRenderer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end