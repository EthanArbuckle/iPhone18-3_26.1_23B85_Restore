@interface LSApplicationIdentity(FBSBundleInfo)
- (id)fbs_mediumDescription;
- (id)fbs_shortDescription;
@end

@implementation LSApplicationIdentity(FBSBundleInfo)

- (id)fbs_shortDescription
{
  v2 = objc_getAssociatedObject(self, &__FBSShortDescription);
  if (!v2)
  {
    v3 = MEMORY[0x1E69635D8];
    identityString = [self identityString];
    v5 = [v3 bundleIdentifierForIdentityString:identityString error:0];

    fbs_personaUniqueString = [self fbs_personaUniqueString];
    v7 = fbs_personaUniqueString;
    if (fbs_personaUniqueString)
    {
      v8 = [fbs_personaUniqueString componentsSeparatedByString:@"-"];
      lastObject = [v8 lastObject];

      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v5, lastObject];
    }

    else
    {
      v2 = v5;
    }

    objc_setAssociatedObject(self, &__FBSShortDescription, v2, 0x303);
  }

  return v2;
}

- (id)fbs_mediumDescription
{
  v2 = objc_getAssociatedObject(self, &__FBSMediumDescription);
  if (!v2)
  {
    v3 = MEMORY[0x1E69635D8];
    identityString = [self identityString];
    v5 = [v3 bundleIdentifierForIdentityString:identityString error:0];

    fbs_personaUniqueString = [self fbs_personaUniqueString];
    if (fbs_personaUniqueString)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v5, fbs_personaUniqueString];
    }

    else
    {
      v7 = v5;
    }

    v2 = v7;
    objc_setAssociatedObject(self, &__FBSMediumDescription, v7, 0x303);
  }

  return v2;
}

@end