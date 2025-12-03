@interface HDTinkerPairedUserInfo
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation HDTinkerPairedUserInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      firstName = [(HDTinkerPairedUserInfo *)self firstName];
      firstName2 = [(HDTinkerPairedUserInfo *)v5 firstName];
      v8 = firstName2;
      if (firstName == firstName2)
      {
      }

      else
      {
        firstName3 = [(HDTinkerPairedUserInfo *)v5 firstName];
        if (!firstName3)
        {
          goto LABEL_19;
        }

        v10 = firstName3;
        firstName4 = [(HDTinkerPairedUserInfo *)self firstName];
        firstName5 = [(HDTinkerPairedUserInfo *)v5 firstName];
        v13 = [firstName4 isEqualToString:firstName5];

        if (!v13)
        {
          goto LABEL_20;
        }
      }

      firstName = [(HDTinkerPairedUserInfo *)self lastName];
      lastName = [(HDTinkerPairedUserInfo *)v5 lastName];
      v8 = lastName;
      if (firstName == lastName)
      {
      }

      else
      {
        lastName2 = [(HDTinkerPairedUserInfo *)v5 lastName];
        if (!lastName2)
        {
          goto LABEL_19;
        }

        v17 = lastName2;
        lastName3 = [(HDTinkerPairedUserInfo *)self lastName];
        lastName4 = [(HDTinkerPairedUserInfo *)v5 lastName];
        v20 = [lastName3 isEqualToString:lastName4];

        if (!v20)
        {
          goto LABEL_20;
        }
      }

      firstName = [(HDTinkerPairedUserInfo *)self dsid];
      dsid = [(HDTinkerPairedUserInfo *)v5 dsid];
      v8 = dsid;
      if (firstName == dsid)
      {

LABEL_24:
        v14 = 1;
        goto LABEL_21;
      }

      dsid2 = [(HDTinkerPairedUserInfo *)v5 dsid];
      if (dsid2)
      {
        v23 = dsid2;
        dsid3 = [(HDTinkerPairedUserInfo *)self dsid];
        dsid4 = [(HDTinkerPairedUserInfo *)v5 dsid];
        v26 = [dsid3 isEqual:dsid4];

        if (v26)
        {
          goto LABEL_24;
        }

LABEL_20:
        v14 = 0;
LABEL_21:

        goto LABEL_22;
      }

LABEL_19:

      goto LABEL_20;
    }

    v14 = 0;
  }

LABEL_22:

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  firstName = [(HDTinkerPairedUserInfo *)self firstName];
  lastName = [(HDTinkerPairedUserInfo *)self lastName];
  dsid = [(HDTinkerPairedUserInfo *)self dsid];
  v8 = [v3 stringWithFormat:@"<%@:%p firstName:%@ lastName:%@ DSID:%@>", v4, self, firstName, lastName, dsid];

  return v8;
}

@end