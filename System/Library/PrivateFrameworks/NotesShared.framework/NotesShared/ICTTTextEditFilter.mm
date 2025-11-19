@interface ICTTTextEditFilter
- (BOOL)isEqual:(id)a3;
- (ICTTTextEditFilter)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation ICTTTextEditFilter

- (ICTTTextEditFilter)init
{
  v3.receiver = self;
  v3.super_class = ICTTTextEditFilter;
  result = [(ICTTTextEditFilter *)&v3 init];
  if (result)
  {
    *&result->_allowsMissingTimestamps = 257;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ICTTTextEditFilter *)self allowedUserIDs];
  v7 = [(ICTTTextEditFilter *)self allowedAttachmentIDs];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICTTTextEditFilter allowsMissingTimestamps](self, "allowsMissingTimestamps")}];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICTTTextEditFilter allowsMissingUsers](self, "allowsMissingUsers")}];
  v10 = [(ICTTTextEditFilter *)self fromDate];
  v11 = [(ICTTTextEditFilter *)self toDate];
  v12 = [v3 stringWithFormat:@"<%@: %p, allowedUserIDs: %@, allowedAttachmentIDs: %@, allowsMissingTimestamps: %@, allowsMissingUsers: %@, fromDate: %@, toDate: %@>", v5, self, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 != self)
  {
    v4 = a3;
    objc_opt_class();
    v5 = ICDynamicCast();

    v6 = [(ICTTTextEditFilter *)self allowedUserIDs];
    v7 = [v5 allowedUserIDs];
    v8 = *MEMORY[0x277CBEEE8];
    if (*MEMORY[0x277CBEEE8] == v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;
    if (v8 == v7)
    {
      v11 = 0;
    }

    else
    {
      v11 = v7;
    }

    v12 = v11;
    if (v10 | v12)
    {
      v13 = v12;
      if (v10)
      {
        v14 = v12 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        goto LABEL_31;
      }

      v15 = [v10 isEqual:v12];

      if (!v15)
      {
        LOBYTE(v22) = 0;
LABEL_58:

        return v22;
      }
    }

    v10 = [(ICTTTextEditFilter *)self allowedAttachmentIDs];
    v13 = [v5 allowedAttachmentIDs];
    if (v8 == v10)
    {
      v16 = 0;
    }

    else
    {
      v16 = v10;
    }

    v17 = v16;
    if (v8 == v13)
    {
      v18 = 0;
    }

    else
    {
      v18 = v13;
    }

    v19 = v18;
    if (v17 | v19)
    {
      v20 = v19;
      if (v17)
      {
        v21 = v19 == 0;
      }

      else
      {
        v21 = 1;
      }

      if (v21)
      {
        goto LABEL_26;
      }

      LODWORD(v22) = [v17 isEqual:v19];

      if (!v22)
      {
        goto LABEL_57;
      }
    }

    v23 = [v5 allowsMissingTimestamps];
    if (v23 != -[ICTTTextEditFilter allowsMissingTimestamps](self, "allowsMissingTimestamps") || (v24 = [v5 allowsMissingUsers], v24 != -[ICTTTextEditFilter allowsMissingUsers](self, "allowsMissingUsers")))
    {
LABEL_31:
      LOBYTE(v22) = 0;
LABEL_57:

      goto LABEL_58;
    }

    v17 = [(ICTTTextEditFilter *)self fromDate];
    v20 = [v5 fromDate];
    if (v8 == v17)
    {
      v25 = 0;
    }

    else
    {
      v25 = v17;
    }

    v22 = v25;
    if (v8 == v20)
    {
      v26 = 0;
    }

    else
    {
      v26 = v20;
    }

    v27 = v26;
    if (!(v22 | v27))
    {
      goto LABEL_43;
    }

    v28 = v27;
    v29 = v22;
    LOBYTE(v22) = 0;
    v41 = v29;
    if (!v29 || !v27)
    {
LABEL_55:

      goto LABEL_56;
    }

    v30 = v27;
    v39 = [v29 isEqual:v27];

    if (v39)
    {
LABEL_43:
      v31 = [(ICTTTextEditFilter *)self toDate];
      v32 = [v5 toDate];
      v41 = v31;
      if (v8 == v31)
      {
        v33 = 0;
      }

      else
      {
        v33 = v31;
      }

      v38 = v33;
      v40 = v32;
      if (v8 == v32)
      {
        v34 = 0;
      }

      else
      {
        v34 = v32;
      }

      v35 = v34;
      v36 = v35;
      if (v38 | v35)
      {
        LOBYTE(v22) = 0;
        if (v38 && v35)
        {
          LOBYTE(v22) = [v38 isEqual:v35];
        }
      }

      else
      {
        LOBYTE(v22) = 1;
      }

      v28 = v40;
      goto LABEL_55;
    }

LABEL_26:
    LOBYTE(v22) = 0;
LABEL_56:

    goto LABEL_57;
  }

  LOBYTE(v22) = 1;
  return v22;
}

- (unint64_t)hash
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(ICTTTextEditFilter *)self allowedUserIDs];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v5 hash];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v6 += ICHashWithObject(*(*(&v32 + 1) + 8 * i));
      }

      v9 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v9);
  }

  v12 = [(ICTTTextEditFilter *)self allowedAttachmentIDs];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [v14 hash];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16 = v12;
  v17 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v15 += ICHashWithObject(*(*(&v32 + 1) + 8 * j));
      }

      v18 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v18);
  }

  [(ICTTTextEditFilter *)self allowsMissingTimestamps];
  [(ICTTTextEditFilter *)self allowsMissingUsers];
  v21 = [(ICTTTextEditFilter *)self fromDate];
  [v21 hash];
  v22 = [(ICTTTextEditFilter *)self toDate];
  [v22 hash];
  v30 = ICHashWithHashKeys(v6, v23, v24, v25, v26, v27, v28, v29, v15);

  return v30;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[ICTTTextEditFilter allocWithZone:?]];
  v5 = [(ICTTTextEditFilter *)self allowedUserIDs];
  [(ICTTTextEditFilter *)v4 setAllowedUserIDs:v5];

  v6 = [(ICTTTextEditFilter *)self allowedAttachmentIDs];
  [(ICTTTextEditFilter *)v4 setAllowedAttachmentIDs:v6];

  [(ICTTTextEditFilter *)v4 setAllowsMissingTimestamps:[(ICTTTextEditFilter *)self allowsMissingTimestamps]];
  [(ICTTTextEditFilter *)v4 setAllowsMissingUsers:[(ICTTTextEditFilter *)self allowsMissingUsers]];
  v7 = [(ICTTTextEditFilter *)self fromDate];
  [(ICTTTextEditFilter *)v4 setFromDate:v7];

  v8 = [(ICTTTextEditFilter *)self toDate];
  [(ICTTTextEditFilter *)v4 setToDate:v8];

  return v4;
}

@end