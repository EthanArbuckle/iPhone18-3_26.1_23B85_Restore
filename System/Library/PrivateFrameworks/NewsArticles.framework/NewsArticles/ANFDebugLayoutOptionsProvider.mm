@interface ANFDebugLayoutOptionsProvider
- (CGSize)overrideViewportSize:(CGSize)size;
- (_TtC12NewsArticles29ANFDebugLayoutOptionsProvider)init;
- (double)overrideContentScaleFactor:(double)factor;
- (id)overrideConditionKeys:(id)keys;
- (id)overrideContentSizeCategory:(id)category;
- (id)overrideOfferIdentifier:(id)identifier;
- (id)overrideTagSubscriptionStatus:(id)status;
- (int64_t)overrideBundleSubscriptionStatus:(int64_t)status;
- (int64_t)overrideChannelSubscriptionStatus:(int64_t)status;
- (int64_t)overrideOfferUpsellScenario:(int64_t)scenario;
- (int64_t)overrideSubscriptionActivationEligibility:(int64_t)eligibility;
- (unint64_t)overrideNewsletterSubscriptionStatus:(unint64_t)status;
- (unint64_t)overrideViewingLocation:(unint64_t)location;
@end

@implementation ANFDebugLayoutOptionsProvider

- (_TtC12NewsArticles29ANFDebugLayoutOptionsProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CGSize)overrideViewportSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 128];
  v20 = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 112];
  v21[0] = v5;
  *(v21 + 9) = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 137];
  v6 = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 64];
  v16 = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 48];
  v17 = v6;
  v7 = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 96];
  v18 = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 80];
  v19 = v7;
  v8 = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides];
  v12 = *(&self->super.isa + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides);
  v13 = v8;
  v9 = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 32];
  v14 = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 16];
  v15 = v9;
  if (sub_1D7AE2F50(&v12) != 1 && (v13 & 1) == 0)
  {
    height = *(&v12 + 1);
    width = *&v12;
  }

  v10 = width;
  v11 = height;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)overrideContentSizeCategory:(id)category
{
  v4 = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 128];
  v20 = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 112];
  v21[0] = v4;
  *(v21 + 9) = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 137];
  v5 = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 64];
  v16 = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 48];
  v17 = v5;
  v6 = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 96];
  v18 = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 80];
  v19 = v6;
  v7 = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides];
  v14[0] = *(&self->super.isa + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides);
  v14[1] = v7;
  v8 = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 32];
  v14[2] = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 16];
  v15 = v8;
  v9 = sub_1D7AE2F50(v14);
  categoryCopy = *(&v15 + 1);
  if (*(&v15 + 1))
  {
    v11 = v9 == 1;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    categoryCopy = category;
  }

  v12 = categoryCopy;

  return v12;
}

- (double)overrideContentScaleFactor:(double)factor
{
  v4 = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 128];
  v14 = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 112];
  v15[0] = v4;
  *(v15 + 9) = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 137];
  v5 = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 64];
  v10[4] = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 48];
  v11 = v5;
  v6 = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 96];
  v12 = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 80];
  v13 = v6;
  v7 = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides];
  v10[0] = *(&self->super.isa + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides);
  v10[1] = v7;
  v8 = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 32];
  v10[2] = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 16];
  v10[3] = v8;
  if (sub_1D7AE2F50(v10) != 1 && (BYTE8(v11) & 1) == 0)
  {
    return *&v11;
  }

  return factor;
}

- (unint64_t)overrideViewingLocation:(unint64_t)location
{
  selfCopy = self;
  v5 = sub_1D7AE2004(location);

  return v5;
}

- (int64_t)overrideBundleSubscriptionStatus:(int64_t)status
{
  selfCopy = self;
  v5 = sub_1D7AE2188(status);

  return v5;
}

- (int64_t)overrideChannelSubscriptionStatus:(int64_t)status
{
  selfCopy = self;
  v5 = sub_1D7AE230C(status);

  return v5;
}

- (unint64_t)overrideNewsletterSubscriptionStatus:(unint64_t)status
{
  selfCopy = self;
  v5 = sub_1D7AE2488(status);

  return v5;
}

- (int64_t)overrideOfferUpsellScenario:(int64_t)scenario
{
  selfCopy = self;
  v5 = sub_1D7AE260C(scenario);

  return v5;
}

- (int64_t)overrideSubscriptionActivationEligibility:(int64_t)eligibility
{
  selfCopy = self;
  v5 = sub_1D7AE27C0(eligibility);

  return v5;
}

- (id)overrideOfferIdentifier:(id)identifier
{
  v4 = sub_1D7D3034C();
  selfCopy = self;
  sub_1D7AE2944(v4);

  v6 = sub_1D7D3031C();

  return v6;
}

- (id)overrideConditionKeys:(id)keys
{
  if (keys)
  {
    v4 = sub_1D7D309AC();
  }

  else
  {
    v4 = 0;
  }

  v5 = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 128];
  v11[8] = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 112];
  *v12 = v5;
  *&v12[9] = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 137];
  v6 = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 64];
  v11[4] = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 48];
  v11[5] = v6;
  v7 = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 96];
  v11[6] = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 80];
  v11[7] = v7;
  v8 = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides];
  v11[0] = *(&self->super.isa + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides);
  v11[1] = v8;
  v9 = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 32];
  v11[2] = *&self->anfOverrides[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 16];
  v11[3] = v9;
  if (sub_1D7AE2F50(v11) == 1 || !*&v12[16])
  {
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v4 = sub_1D7D3099C();

LABEL_9:

  return v4;
}

- (id)overrideTagSubscriptionStatus:(id)status
{
  statusCopy = status;
  selfCopy = self;
  v6 = sub_1D7AE2C48(statusCopy);

  return v6;
}

@end