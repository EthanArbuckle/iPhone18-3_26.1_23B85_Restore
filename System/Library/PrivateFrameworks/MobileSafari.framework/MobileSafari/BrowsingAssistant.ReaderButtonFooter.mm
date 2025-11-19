@interface BrowsingAssistant.ReaderButtonFooter
- (void)setHideReader:(id)a3;
- (void)setShowReader:(id)a3;
- (void)setShowingReader:(BOOL)a3;
- (void)toggleReader:(id)a3;
@end

@implementation BrowsingAssistant.ReaderButtonFooter

- (void)setShowingReader:(BOOL)a3
{
  v4 = *(self + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant18ReaderButtonFooter_isShowingReader);
  *(self + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant18ReaderButtonFooter_isShowingReader) = a3;
  if (v4 != a3)
  {
    v6 = self;
    if (a3)
    {
      sub_18BAAE234();
    }

    else
    {
      sub_18BAADEAC();
    }
  }
}

- (void)setShowReader:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_18BA2A9D8;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant18ReaderButtonFooter_showReader);
  v8 = *(self + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant18ReaderButtonFooter_showReader);
  *v7 = v6;
  v7[1] = v4;
  v9 = self;
  sub_18B7E0A10(v8);
}

- (void)setHideReader:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_18BA2A69C;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant18ReaderButtonFooter_hideReader);
  v8 = *(self + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant18ReaderButtonFooter_hideReader);
  *v7 = v6;
  v7[1] = v4;
  v9 = self;
  sub_18B7E0A10(v8);
}

- (void)toggleReader:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_18BC218B8();
  swift_unknownObjectRelease();
  sub_18BAAE8C4();

  __swift_destroy_boxed_opaque_existential_1Tm(&v5);
}

@end