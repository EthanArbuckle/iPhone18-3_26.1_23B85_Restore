@interface RecipeAutoFavoritesResourceManager
- (FCPersonalizationBundleIDMapping)bundleIDMapping;
- (FCPersonalizationURLMapping)urlMapping;
- (FCPersonalizationWhitelist)allowlist;
- (unint64_t)allowlistLevelForTagID:(id)a3;
@end

@implementation RecipeAutoFavoritesResourceManager

- (FCPersonalizationWhitelist)allowlist
{
  v2 = *self->lazyAllowlist;

  sub_1C6D781A0();

  return v4;
}

- (unint64_t)allowlistLevelForTagID:(id)a3
{
  v3 = sub_1C6D795A0();
  v5 = v4;

  v6 = sub_1C6BC0618(v3, v5);

  return v6;
}

- (FCPersonalizationBundleIDMapping)bundleIDMapping
{
  v2 = *self->lazyBundleIdMapping;

  sub_1C6D781A0();

  return v4;
}

- (FCPersonalizationURLMapping)urlMapping
{
  v2 = *self->lazyUrlMapping;

  sub_1C6D781A0();

  return v4;
}

@end