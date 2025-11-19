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

      v7 = [*(*(&v9 + 1) + 8 * v6) title];
      if ([v7 length])
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
    v7 = 0;
  }

  return v7;
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

      v7 = [*(*(&v9 + 1) + 8 * v6) debugUrlString];
      if ([v7 length])
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
    v7 = 0;
  }

  return v7;
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

      v7 = [*(*(&v9 + 1) + 8 * v6) rawHTML];
      if ([v7 length])
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
    v7 = 0;
  }

  return v7;
}

- (IOSurface)internal_bestLeadImage
{
  v2 = [(CKContextDonation *)self items];
  memset(v5, 0, sizeof(v5));
  if ([v2 countByEnumeratingWithState:v5 objects:v6 count:16])
  {
    v3 = [**(&v5[0] + 1) leadImage];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (IOSurface)internal_bestSnapshot
{
  v2 = [(CKContextDonation *)self items];
  memset(v5, 0, sizeof(v5));
  if ([v2 countByEnumeratingWithState:v5 objects:v6 count:16])
  {
    v3 = [**(&v5[0] + 1) snapshot];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end