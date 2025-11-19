@interface _ComplicationHosting
- (BOOL)paused;
- (BOOL)shouldAccentDesaturatedView;
- (BOOL)shouldCallRenderStatsHandlerOnMainQueue;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CLKMonochromeFilterProvider)filterProvider;
- (NSData)viewData;
- (_TtC19ComplicationDisplay20_ComplicationHosting)init;
- (id)renderStatsHandler;
- (void)dealloc;
- (void)setPaused:(BOOL)a3;
- (void)setRenderStatsHandler:(id)a3;
- (void)setShouldAccentDesaturatedView:(BOOL)a3;
- (void)setShouldCallRenderStatsHandlerOnMainQueue:(BOOL)a3;
- (void)setViewData:(id)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)waitForAsyncRendering;
@end

@implementation _ComplicationHosting

- (CLKMonochromeFilterProvider)filterProvider
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)renderStatsHandler
{
  v2 = (self + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_renderStatsHandler);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243DA09E4;
    aBlock[3] = &block_descriptor_48;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setRenderStatsHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_243DA3384;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_renderStatsHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_243DA0B20(v7);
}

- (BOOL)shouldCallRenderStatsHandlerOnMainQueue
{
  v3 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_shouldCallRenderStatsHandlerOnMainQueue;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldCallRenderStatsHandlerOnMainQueue:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_shouldCallRenderStatsHandlerOnMainQueue;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)shouldAccentDesaturatedView
{
  v3 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_shouldAccentDesaturatedView;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldAccentDesaturatedView:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_shouldAccentDesaturatedView;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (void)dealloc
{
  v3 = *(self + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_hostingViewController);
  v4 = *(self + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_hostingViewController + 8);
  swift_getObjectType();
  v5 = self;
  v6 = v3;
  sub_243DAE080();
  sub_243DADB30();

  v7.receiver = v5;
  v7.super_class = type metadata accessor for _ComplicationHosting();
  [(_ComplicationHosting *)&v7 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = *(self + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_hostingViewController);
  v5 = *(self + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_hostingViewController + 8);
  swift_getObjectType();
  v6 = self;
  sub_243DADAF0();
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (NSData)viewData
{
  v2 = (self + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_viewData);
  swift_beginAccess();
  v3 = 0;
  v4 = v2[1];
  if (v4 >> 60 != 15)
  {
    v5 = *v2;
    sub_243DA2BB8(v5, v4);
    v6 = sub_243DAD790();
    sub_243DA2C0C(v5, v4);
    v3 = v6;
  }

  return v3;
}

- (void)setViewData:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = self;
    v6 = v3;
    v3 = sub_243DAD7A0();
    v8 = v7;
  }

  else
  {
    v9 = self;
    v8 = 0xF000000000000000;
  }

  v10 = (self + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_viewData);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = v3;
  v10[1] = v8;
  sub_243DA2C0C(v11, v12);
}

- (BOOL)paused
{
  v3 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_paused;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPaused:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_paused;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (void)waitForAsyncRendering
{
  v2 = self;
  sub_243DA1B74();
}

- (_TtC19ComplicationDisplay20_ComplicationHosting)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v3 = self;
  _ComplicationHosting.transitionToMonochrome(withFraction:)();
}

@end