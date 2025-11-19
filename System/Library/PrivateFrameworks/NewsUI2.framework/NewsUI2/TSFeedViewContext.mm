@interface TSFeedViewContext
- (BOOL)showSubscribedAlert;
- (NSNumber)displayRank;
- (NSNumber)externalAnalyticsFeedReferrer;
- (NSNumber)feedPickerSection;
- (NSNumber)feedPickerType;
- (NSNumber)maximumAdRequestsForCurrentAdPreviewID;
- (NSNumber)presentationReason;
- (NSNumber)previousArticleVersion;
- (NSURL)sourceURL;
- (TSAnalyticsReferral)referral;
- (uint64_t)setWithShowSubscribedAlert:(char)a3;
- (void)setFeedTagType:(unint64_t)a3;
- (void)setSourceURL:(id)a3;
- (void)setWithSourceURL:(id)a3;
@end

@implementation TSFeedViewContext

- (uint64_t)setWithShowSubscribedAlert:(char)a3
{
  v5 = OBJC_IVAR___TSFeedViewContext_showSubscribedAlert;
  result = swift_beginAccess();
  *(a1 + v5) = a3;
  return result;
}

- (NSNumber)presentationReason
{
  v3 = OBJC_IVAR___TSFeedViewContext_presentationReason;
  swift_beginAccess();
  return *(self + v3);
}

- (NSNumber)feedPickerSection
{
  v3 = OBJC_IVAR___TSFeedViewContext_feedPickerSection;
  swift_beginAccess();
  return *(self + v3);
}

- (NSNumber)feedPickerType
{
  v3 = OBJC_IVAR___TSFeedViewContext_feedPickerType;
  swift_beginAccess();
  return *(self + v3);
}

- (NSNumber)displayRank
{
  v3 = OBJC_IVAR___TSFeedViewContext_displayRank;
  swift_beginAccess();
  return *(self + v3);
}

- (NSNumber)externalAnalyticsFeedReferrer
{
  v3 = OBJC_IVAR___TSFeedViewContext_externalAnalyticsFeedReferrer;
  swift_beginAccess();
  return *(self + v3);
}

- (NSNumber)previousArticleVersion
{
  v3 = OBJC_IVAR___TSFeedViewContext_previousArticleVersion;
  swift_beginAccess();
  return *(self + v3);
}

- (BOOL)showSubscribedAlert
{
  v3 = OBJC_IVAR___TSFeedViewContext_showSubscribedAlert;
  swift_beginAccess();
  return *(self + v3);
}

- (TSAnalyticsReferral)referral
{
  v3 = OBJC_IVAR___TSFeedViewContext_referral;
  swift_beginAccess();
  return *(self + v3);
}

- (NSURL)sourceURL
{
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___TSFeedViewContext_sourceURL;
  swift_beginAccess();
  sub_2188383F8(self + v6, v5);
  v7 = sub_219BDB954();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_219BDB854();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)setSourceURL:(id)a3
{
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    sub_219BDB8B4();
    v8 = sub_219BDB954();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_219BDB954();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR___TSFeedViewContext_sourceURL;
  swift_beginAccess();
  v11 = self;
  sub_218FA6590(v7, self + v10);
  swift_endAccess();
}

- (NSNumber)maximumAdRequestsForCurrentAdPreviewID
{
  v3 = OBJC_IVAR___TSFeedViewContext_maximumAdRequestsForCurrentAdPreviewID;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setWithSourceURL:(id)a3
{
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDB954();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDB8B4();
  (*(v8 + 32))(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v11 = OBJC_IVAR___TSFeedViewContext_sourceURL;
  swift_beginAccess();
  v12 = self;
  sub_218FA6590(v6, self + v11);
  swift_endAccess();
}

- (void)setFeedTagType:(unint64_t)a3
{
  v4 = self + OBJC_IVAR___TSFeedViewContext_feedTagType;
  swift_beginAccess();
  *v4 = a3;
  v4[8] = 0;
}

@end