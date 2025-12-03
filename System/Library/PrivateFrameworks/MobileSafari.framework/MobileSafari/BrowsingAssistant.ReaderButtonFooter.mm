@interface BrowsingAssistant.ReaderButtonFooter
- (void)setHideReader:(id)reader;
- (void)setShowReader:(id)reader;
- (void)setShowingReader:(BOOL)reader;
- (void)toggleReader:(id)reader;
@end

@implementation BrowsingAssistant.ReaderButtonFooter

- (void)setShowingReader:(BOOL)reader
{
  v4 = *(self + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant18ReaderButtonFooter_isShowingReader);
  *(self + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant18ReaderButtonFooter_isShowingReader) = reader;
  if (v4 != reader)
  {
    selfCopy = self;
    if (reader)
    {
      sub_18BAAE234();
    }

    else
    {
      sub_18BAADEAC();
    }
  }
}

- (void)setShowReader:(id)reader
{
  v4 = _Block_copy(reader);
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
  selfCopy = self;
  sub_18B7E0A10(v8);
}

- (void)setHideReader:(id)reader
{
  v4 = _Block_copy(reader);
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
  selfCopy = self;
  sub_18B7E0A10(v8);
}

- (void)toggleReader:(id)reader
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_18BC218B8();
  swift_unknownObjectRelease();
  sub_18BAAE8C4();

  __swift_destroy_boxed_opaque_existential_1Tm(&v5);
}

@end