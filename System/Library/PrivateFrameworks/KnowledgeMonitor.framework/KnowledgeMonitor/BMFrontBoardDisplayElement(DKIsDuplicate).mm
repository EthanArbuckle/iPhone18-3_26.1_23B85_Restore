@interface BMFrontBoardDisplayElement(DKIsDuplicate)
- (uint64_t)dk_isDuplicateOf:()DKIsDuplicate;
@end

@implementation BMFrontBoardDisplayElement(DKIsDuplicate)

- (uint64_t)dk_isDuplicateOf:()DKIsDuplicate
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    identifier = [self identifier];
    if (identifier || ([v6 identifier], (bundleIdentifier2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      identifier2 = [self identifier];
      identifier3 = [v6 identifier];
      v10 = [identifier2 isEqualToString:identifier3];

      if (identifier)
      {

        if (!v10)
        {
          goto LABEL_20;
        }
      }

      else
      {

        if ((v10 & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    bundleIdentifier = [self bundleIdentifier];
    if (!bundleIdentifier)
    {
      bundleIdentifier2 = [v6 bundleIdentifier];
      if (!bundleIdentifier2)
      {
        goto LABEL_15;
      }
    }

    bundleIdentifier3 = [self bundleIdentifier];
    bundleIdentifier4 = [v6 bundleIdentifier];
    v15 = [bundleIdentifier3 isEqualToString:bundleIdentifier4];

    if (bundleIdentifier)
    {

      if (!v15)
      {
        goto LABEL_20;
      }

LABEL_15:
      elementType = [self elementType];
      if (elementType != [v6 elementType])
      {
        goto LABEL_20;
      }

      layoutRole = [self layoutRole];
      if (layoutRole != [v6 layoutRole])
      {
        goto LABEL_20;
      }

      level = [self level];
      if (level != [v6 level])
      {
        goto LABEL_20;
      }

      hasKeyboardFocus = [self hasKeyboardFocus];
      if (hasKeyboardFocus != [v6 hasKeyboardFocus])
      {
        goto LABEL_20;
      }

      isUIApplicationElement = [self isUIApplicationElement];
      if (isUIApplicationElement != [v6 isUIApplicationElement])
      {
        goto LABEL_20;
      }

      display = [self display];
      if (display || ([v6 display], (bundleIdentifier2 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        display2 = [self display];
        display3 = [v6 display];
        v11 = [display2 isEqual:display3];

        if (display)
        {
LABEL_29:

          goto LABEL_21;
        }
      }

      else
      {
        v11 = 1;
      }

      goto LABEL_29;
    }

    if (v15)
    {
      goto LABEL_15;
    }

LABEL_20:
    v11 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v11 = 0;
LABEL_22:

  return v11;
}

@end