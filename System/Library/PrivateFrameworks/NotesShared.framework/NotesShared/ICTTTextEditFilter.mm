@interface ICTTTextEditFilter
- (BOOL)isEqual:(id)equal;
- (ICTTTextEditFilter)init;
- (id)copyWithZone:(_NSZone *)zone;
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
  allowedUserIDs = [(ICTTTextEditFilter *)self allowedUserIDs];
  allowedAttachmentIDs = [(ICTTTextEditFilter *)self allowedAttachmentIDs];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICTTTextEditFilter allowsMissingTimestamps](self, "allowsMissingTimestamps")}];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICTTTextEditFilter allowsMissingUsers](self, "allowsMissingUsers")}];
  fromDate = [(ICTTTextEditFilter *)self fromDate];
  toDate = [(ICTTTextEditFilter *)self toDate];
  v12 = [v3 stringWithFormat:@"<%@: %p, allowedUserIDs: %@, allowedAttachmentIDs: %@, allowsMissingTimestamps: %@, allowsMissingUsers: %@, fromDate: %@, toDate: %@>", v5, self, allowedUserIDs, allowedAttachmentIDs, v8, v9, fromDate, toDate];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  if (equal != self)
  {
    equalCopy = equal;
    objc_opt_class();
    v5 = ICDynamicCast();

    allowedUserIDs = [(ICTTTextEditFilter *)self allowedUserIDs];
    allowedUserIDs2 = [v5 allowedUserIDs];
    v8 = *MEMORY[0x277CBEEE8];
    if (*MEMORY[0x277CBEEE8] == allowedUserIDs)
    {
      v9 = 0;
    }

    else
    {
      v9 = allowedUserIDs;
    }

    allowedAttachmentIDs = v9;
    if (v8 == allowedUserIDs2)
    {
      v11 = 0;
    }

    else
    {
      v11 = allowedUserIDs2;
    }

    v12 = v11;
    if (allowedAttachmentIDs | v12)
    {
      allowedAttachmentIDs2 = v12;
      if (allowedAttachmentIDs)
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

      v15 = [allowedAttachmentIDs isEqual:v12];

      if (!v15)
      {
        LOBYTE(v22) = 0;
LABEL_58:

        return v22;
      }
    }

    allowedAttachmentIDs = [(ICTTTextEditFilter *)self allowedAttachmentIDs];
    allowedAttachmentIDs2 = [v5 allowedAttachmentIDs];
    if (v8 == allowedAttachmentIDs)
    {
      v16 = 0;
    }

    else
    {
      v16 = allowedAttachmentIDs;
    }

    fromDate = v16;
    if (v8 == allowedAttachmentIDs2)
    {
      v18 = 0;
    }

    else
    {
      v18 = allowedAttachmentIDs2;
    }

    v19 = v18;
    if (fromDate | v19)
    {
      fromDate2 = v19;
      if (fromDate)
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

      LODWORD(v22) = [fromDate isEqual:v19];

      if (!v22)
      {
        goto LABEL_57;
      }
    }

    allowsMissingTimestamps = [v5 allowsMissingTimestamps];
    if (allowsMissingTimestamps != -[ICTTTextEditFilter allowsMissingTimestamps](self, "allowsMissingTimestamps") || (v24 = [v5 allowsMissingUsers], v24 != -[ICTTTextEditFilter allowsMissingUsers](self, "allowsMissingUsers")))
    {
LABEL_31:
      LOBYTE(v22) = 0;
LABEL_57:

      goto LABEL_58;
    }

    fromDate = [(ICTTTextEditFilter *)self fromDate];
    fromDate2 = [v5 fromDate];
    if (v8 == fromDate)
    {
      v25 = 0;
    }

    else
    {
      v25 = fromDate;
    }

    v22 = v25;
    if (v8 == fromDate2)
    {
      v26 = 0;
    }

    else
    {
      v26 = fromDate2;
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
      toDate = [(ICTTTextEditFilter *)self toDate];
      toDate2 = [v5 toDate];
      v41 = toDate;
      if (v8 == toDate)
      {
        v33 = 0;
      }

      else
      {
        v33 = toDate;
      }

      v38 = v33;
      v40 = toDate2;
      if (v8 == toDate2)
      {
        v34 = 0;
      }

      else
      {
        v34 = toDate2;
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
  allowedUserIDs = [(ICTTTextEditFilter *)self allowedUserIDs];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v5 hash];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = allowedUserIDs;
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

  allowedAttachmentIDs = [(ICTTTextEditFilter *)self allowedAttachmentIDs];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [v14 hash];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16 = allowedAttachmentIDs;
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
  fromDate = [(ICTTTextEditFilter *)self fromDate];
  [fromDate hash];
  toDate = [(ICTTTextEditFilter *)self toDate];
  [toDate hash];
  v30 = ICHashWithHashKeys(v6, v23, v24, v25, v26, v27, v28, v29, v15);

  return v30;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ICTTTextEditFilter allocWithZone:?]];
  allowedUserIDs = [(ICTTTextEditFilter *)self allowedUserIDs];
  [(ICTTTextEditFilter *)v4 setAllowedUserIDs:allowedUserIDs];

  allowedAttachmentIDs = [(ICTTTextEditFilter *)self allowedAttachmentIDs];
  [(ICTTTextEditFilter *)v4 setAllowedAttachmentIDs:allowedAttachmentIDs];

  [(ICTTTextEditFilter *)v4 setAllowsMissingTimestamps:[(ICTTTextEditFilter *)self allowsMissingTimestamps]];
  [(ICTTTextEditFilter *)v4 setAllowsMissingUsers:[(ICTTTextEditFilter *)self allowsMissingUsers]];
  fromDate = [(ICTTTextEditFilter *)self fromDate];
  [(ICTTTextEditFilter *)v4 setFromDate:fromDate];

  toDate = [(ICTTTextEditFilter *)self toDate];
  [(ICTTTextEditFilter *)v4 setToDate:toDate];

  return v4;
}

@end