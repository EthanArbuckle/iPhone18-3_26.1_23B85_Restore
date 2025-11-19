@interface NSURL(DALeastInfoURLExtension)
- (id)da_leastInfoStringRepresentationRelativeToParentURL:()DALeastInfoURLExtension;
@end

@implementation NSURL(DALeastInfoURLExtension)

- (id)da_leastInfoStringRepresentationRelativeToParentURL:()DALeastInfoURLExtension
{
  v4 = a3;
  v5 = [a1 scheme];
  v6 = [v4 scheme];
  v7 = [a1 host];
  v8 = [v4 host];
  v9 = [a1 user];
  v10 = [v4 user];
  v11 = [a1 port];
  if (v11)
  {
    v12 = [a1 port];
    v23 = [v12 intValue];
  }

  else
  {
    v23 = [MEMORY[0x277CBEBC0] da_classicPortForScheme:v5];
  }

  v13 = [v4 port];
  if (v13)
  {
    [v4 port];
    v15 = v14 = v5;
    v22 = [v15 intValue];

    v5 = v14;
  }

  else
  {
    v22 = [MEMORY[0x277CBEBC0] da_classicPortForScheme:v6];
  }

  v16 = v7;
  if ((!(v5 | v6) || v6 && [v5 isEqualToString:v6]) && (!(v7 | v8) || v8 && objc_msgSend(v7, "isEqualToString:", v8)))
  {
    if (v9 | v10)
    {
      if (v10)
      {
        if (![v9 isEqualToString:v10] || v23 != v22)
        {
LABEL_22:
          if ([v9 isEqualToString:v10])
          {
            goto LABEL_23;
          }

          goto LABEL_25;
        }

LABEL_19:
        [a1 absoluteURL];
        v18 = v17 = v5;
        v19 = [v18 CDVRawPath];
LABEL_24:
        v20 = v19;

        v5 = v17;
        goto LABEL_26;
      }
    }

    else if (v23 == v22)
    {
      goto LABEL_19;
    }
  }

  if (!(v9 | v10))
  {
LABEL_23:
    [a1 da_urlByRemovingUsername];
    v18 = v17 = v5;
    v19 = [v18 absoluteString];
    goto LABEL_24;
  }

  if (v10)
  {
    goto LABEL_22;
  }

LABEL_25:
  v20 = [a1 absoluteString];
LABEL_26:

  return v20;
}

@end