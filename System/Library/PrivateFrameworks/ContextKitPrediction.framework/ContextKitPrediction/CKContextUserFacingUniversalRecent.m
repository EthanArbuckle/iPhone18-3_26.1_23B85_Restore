@interface CKContextUserFacingUniversalRecent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation CKContextUserFacingUniversalRecent

- (unint64_t)hash
{
  v2 = [(CKContextUserFacingUniversalRecent *)self event];
  v3 = [v2 title];
  v4 = [v3 hash];
  v5 = [v2 activityType];
  v6 = [v5 hash] ^ v4;
  v7 = [v2 associatedBundleId];
  v8 = [v7 hash];
  v9 = [v2 associatedURLString];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(CKContextUserFacingUniversalRecent *)self event];
    v7 = [v5 event];
    v8 = [v6 associatedURLString];
    v9 = [v7 associatedURLString];
    v10 = [v6 modeIdentifier];
    v11 = [v7 modeIdentifier];
    v12 = [v6 title];
    if (v12 || ([v7 title], (v27 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v13 = [v6 title];
      v3 = [v7 title];
      v33 = v13;
      if (![v13 isEqualToString:v3])
      {
        v14 = 0;
        goto LABEL_36;
      }

      v32 = v11;
      v31 = 1;
    }

    else
    {
      v32 = v11;
      v27 = 0;
      v31 = 0;
    }

    v15 = [v6 activityType];
    if (v15 || ([v7 activityType], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v16 = [v6 activityType];
      v28 = [v7 activityType];
      v29 = v16;
      if (![v16 isEqualToString:?])
      {
        v14 = 0;
        goto LABEL_33;
      }

      *(&v30 + 1) = v8;
      v25 = 1;
    }

    else
    {
      *(&v30 + 1) = v8;
      v24 = 0;
      v25 = 0;
    }

    v26 = v10;
    *&v30 = v9;
    v17 = [v6 associatedBundleId];
    if (v17 || ([v7 associatedBundleId], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = [v6 associatedBundleId];
      v10 = [v7 associatedBundleId];
      if (![v9 isEqualToString:v10])
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
          v9 = v30;
          v10 = v26;
          if (v17)
          {

            if (v25)
            {
LABEL_32:
              v8 = *(&v30 + 1);
LABEL_33:

              if (v15)
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

          v8 = *(&v30 + 1);
          if (v15)
          {
LABEL_34:

            if (v31)
            {
LABEL_35:
              v11 = v32;
LABEL_36:

              if (v12)
              {
LABEL_38:

                goto LABEL_39;
              }

LABEL_37:

              goto LABEL_38;
            }

LABEL_43:
            v11 = v32;
            if (v12)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    v5 = [(CKContextUserFacingUniversalRecent *)self event];
    [v4 setEvent:v5];
  }

  return v4;
}

@end