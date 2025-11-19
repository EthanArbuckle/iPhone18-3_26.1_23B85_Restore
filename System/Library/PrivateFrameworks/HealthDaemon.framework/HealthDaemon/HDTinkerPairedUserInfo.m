@interface HDTinkerPairedUserInfo
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation HDTinkerPairedUserInfo

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HDTinkerPairedUserInfo *)self firstName];
      v7 = [(HDTinkerPairedUserInfo *)v5 firstName];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(HDTinkerPairedUserInfo *)v5 firstName];
        if (!v9)
        {
          goto LABEL_19;
        }

        v10 = v9;
        v11 = [(HDTinkerPairedUserInfo *)self firstName];
        v12 = [(HDTinkerPairedUserInfo *)v5 firstName];
        v13 = [v11 isEqualToString:v12];

        if (!v13)
        {
          goto LABEL_20;
        }
      }

      v6 = [(HDTinkerPairedUserInfo *)self lastName];
      v15 = [(HDTinkerPairedUserInfo *)v5 lastName];
      v8 = v15;
      if (v6 == v15)
      {
      }

      else
      {
        v16 = [(HDTinkerPairedUserInfo *)v5 lastName];
        if (!v16)
        {
          goto LABEL_19;
        }

        v17 = v16;
        v18 = [(HDTinkerPairedUserInfo *)self lastName];
        v19 = [(HDTinkerPairedUserInfo *)v5 lastName];
        v20 = [v18 isEqualToString:v19];

        if (!v20)
        {
          goto LABEL_20;
        }
      }

      v6 = [(HDTinkerPairedUserInfo *)self dsid];
      v21 = [(HDTinkerPairedUserInfo *)v5 dsid];
      v8 = v21;
      if (v6 == v21)
      {

LABEL_24:
        v14 = 1;
        goto LABEL_21;
      }

      v22 = [(HDTinkerPairedUserInfo *)v5 dsid];
      if (v22)
      {
        v23 = v22;
        v24 = [(HDTinkerPairedUserInfo *)self dsid];
        v25 = [(HDTinkerPairedUserInfo *)v5 dsid];
        v26 = [v24 isEqual:v25];

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
  v5 = [(HDTinkerPairedUserInfo *)self firstName];
  v6 = [(HDTinkerPairedUserInfo *)self lastName];
  v7 = [(HDTinkerPairedUserInfo *)self dsid];
  v8 = [v3 stringWithFormat:@"<%@:%p firstName:%@ lastName:%@ DSID:%@>", v4, self, v5, v6, v7];

  return v8;
}

@end