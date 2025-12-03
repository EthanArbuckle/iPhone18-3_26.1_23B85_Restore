@interface CKContextDonation
- (IOSurface)internal_bestLeadImage;
- (IOSurface)internal_bestSnapshot;
- (NSString)internal_bestDebugUrlString;
- (NSString)internal_bestRawHTML;
- (NSString)internal_bestTitle;
@end

@implementation CKContextDonation

- (NSString)internal_bestTitle
{
  [(CKContextDonation *)self items];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(v2);
      }

      title = [*(*(&v9 + 1) + 8 * v6) title];
      if ([title length])
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    title = 0;
  }

  return title;
}

- (NSString)internal_bestDebugUrlString
{
  [(CKContextDonation *)self items];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(v2);
      }

      debugUrlString = [*(*(&v9 + 1) + 8 * v6) debugUrlString];
      if ([debugUrlString length])
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    debugUrlString = 0;
  }

  return debugUrlString;
}

- (NSString)internal_bestRawHTML
{
  [(CKContextDonation *)self items];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(v2);
      }

      rawHTML = [*(*(&v9 + 1) + 8 * v6) rawHTML];
      if ([rawHTML length])
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    rawHTML = 0;
  }

  return rawHTML;
}

- (IOSurface)internal_bestLeadImage
{
  items = [(CKContextDonation *)self items];
  memset(v5, 0, sizeof(v5));
  if ([items countByEnumeratingWithState:v5 objects:v6 count:16])
  {
    leadImage = [**(&v5[0] + 1) leadImage];
  }

  else
  {
    leadImage = 0;
  }

  return leadImage;
}

- (IOSurface)internal_bestSnapshot
{
  items = [(CKContextDonation *)self items];
  memset(v5, 0, sizeof(v5));
  if ([items countByEnumeratingWithState:v5 objects:v6 count:16])
  {
    snapshot = [**(&v5[0] + 1) snapshot];
  }

  else
  {
    snapshot = 0;
  }

  return snapshot;
}

@end