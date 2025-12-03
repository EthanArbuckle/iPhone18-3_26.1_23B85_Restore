@interface CKContextUserFacingUniversalRecent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation CKContextUserFacingUniversalRecent

- (unint64_t)hash
{
  event = [(CKContextUserFacingUniversalRecent *)self event];
  title = [event title];
  v4 = [title hash];
  activityType = [event activityType];
  v6 = [activityType hash] ^ v4;
  associatedBundleId = [event associatedBundleId];
  v8 = [associatedBundleId hash];
  associatedURLString = [event associatedURLString];
  v10 = v8 ^ [associatedURLString hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    event = [(CKContextUserFacingUniversalRecent *)self event];
    event2 = [equalCopy event];
    associatedURLString = [event associatedURLString];
    associatedURLString2 = [event2 associatedURLString];
    modeIdentifier = [event modeIdentifier];
    modeIdentifier2 = [event2 modeIdentifier];
    title = [event title];
    if (title || ([event2 title], (v27 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      title2 = [event title];
      title3 = [event2 title];
      v33 = title2;
      if (![title2 isEqualToString:title3])
      {
        v14 = 0;
        goto LABEL_36;
      }

      v32 = modeIdentifier2;
      v31 = 1;
    }

    else
    {
      v32 = modeIdentifier2;
      v27 = 0;
      v31 = 0;
    }

    activityType = [event activityType];
    if (activityType || ([event2 activityType], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      activityType2 = [event activityType];
      activityType3 = [event2 activityType];
      v29 = activityType2;
      if (![activityType2 isEqualToString:?])
      {
        v14 = 0;
        goto LABEL_33;
      }

      *(&v30 + 1) = associatedURLString;
      v25 = 1;
    }

    else
    {
      *(&v30 + 1) = associatedURLString;
      v24 = 0;
      v25 = 0;
    }

    v26 = modeIdentifier;
    *&v30 = associatedURLString2;
    associatedBundleId = [event associatedBundleId];
    if (associatedBundleId || ([event2 associatedBundleId], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      associatedURLString2 = [event associatedBundleId];
      modeIdentifier = [event2 associatedBundleId];
      if (![associatedURLString2 isEqualToString:modeIdentifier])
      {
        v14 = 0;
        goto LABEL_29;
      }

      v18 = 1;
    }

    else
    {
      v23 = 0;
      v18 = 0;
    }

    if (v30 == 0 || (v19 = v18, v20 = [*(&v30 + 1) isEqualToString:v30], v18 = v19, v20))
    {
      if (v26 | v32)
      {
        v22 = v18;
        v14 = [v26 isEqualToString:?];
        if ((v22 & 1) == 0)
        {
LABEL_30:
          associatedURLString2 = v30;
          modeIdentifier = v26;
          if (associatedBundleId)
          {

            if (v25)
            {
LABEL_32:
              associatedURLString = *(&v30 + 1);
LABEL_33:

              if (activityType)
              {
                goto LABEL_34;
              }

              goto LABEL_42;
            }
          }

          else
          {

            if (v25)
            {
              goto LABEL_32;
            }
          }

          associatedURLString = *(&v30 + 1);
          if (activityType)
          {
LABEL_34:

            if (v31)
            {
LABEL_35:
              modeIdentifier2 = v32;
LABEL_36:

              if (title)
              {
LABEL_38:

                goto LABEL_39;
              }

LABEL_37:

              goto LABEL_38;
            }

LABEL_43:
            modeIdentifier2 = v32;
            if (title)
            {
              goto LABEL_38;
            }

            goto LABEL_37;
          }

LABEL_42:

          if (v31)
          {
            goto LABEL_35;
          }

          goto LABEL_43;
        }

LABEL_29:

        goto LABEL_30;
      }

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    if (!v18)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v14 = 0;
LABEL_39:

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    event = [(CKContextUserFacingUniversalRecent *)self event];
    [v4 setEvent:event];
  }

  return v4;
}

@end