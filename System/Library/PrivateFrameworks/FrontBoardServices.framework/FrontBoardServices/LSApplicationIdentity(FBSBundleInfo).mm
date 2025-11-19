@interface LSApplicationIdentity(FBSBundleInfo)
- (id)fbs_mediumDescription;
- (id)fbs_shortDescription;
@end

@implementation LSApplicationIdentity(FBSBundleInfo)

- (id)fbs_shortDescription
{
  v2 = objc_getAssociatedObject(a1, &__FBSShortDescription);
  if (!v2)
  {
    v3 = MEMORY[0x1E69635D8];
    v4 = [a1 identityString];
    v5 = [v3 bundleIdentifierForIdentityString:v4 error:0];

    v6 = [a1 fbs_personaUniqueString];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 componentsSeparatedByString:@"-"];
      v9 = [v8 lastObject];

      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v5, v9];
    }

    else
    {
      v2 = v5;
    }

    objc_setAssociatedObject(a1, &__FBSShortDescription, v2, 0x303);
  }

  return v2;
}

- (id)fbs_mediumDescription
{
  v2 = objc_getAssociatedObject(a1, &__FBSMediumDescription);
  if (!v2)
  {
    v3 = MEMORY[0x1E69635D8];
    v4 = [a1 identityString];
    v5 = [v3 bundleIdentifierForIdentityString:v4 error:0];

    v6 = [a1 fbs_personaUniqueString];
    if (v6)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v5, v6];
    }

    else
    {
      v7 = v5;
    }

    v2 = v7;
    objc_setAssociatedObject(a1, &__FBSMediumDescription, v7, 0x303);
  }

  return v2;
}

@end