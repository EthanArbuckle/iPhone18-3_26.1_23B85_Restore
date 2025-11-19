@interface ICTTTextEditGroup
- (BOOL)isEqual:(id)a3;
- (ICTTTextEditGroup)initWithEdits:(id)a3 latestTimestamp:(id)a4 userID:(id)a5 range:(_NSRange)a6;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation ICTTTextEditGroup

- (ICTTTextEditGroup)initWithEdits:(id)a3 latestTimestamp:(id)a4 userID:(id)a5 range:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v18.receiver = self;
  v18.super_class = ICTTTextEditGroup;
  v15 = [(ICTTTextEditGroup *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_edits, a3);
    objc_storeStrong(&v16->_latestTimestamp, a4);
    objc_storeStrong(&v16->_userID, a5);
    v16->_range.location = location;
    v16->_range.length = length;
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ICTTTextEditGroup *)self edits];
  v7 = [(ICTTTextEditGroup *)self latestTimestamp];
  v8 = [(ICTTTextEditGroup *)self userID];
  v13.location = [(ICTTTextEditGroup *)self range];
  v9 = NSStringFromRange(v13);
  v10 = [v3 stringWithFormat:@"<%@: %p, edits: %@, latestTimestamp: %@, userID: %@, range: %@>", v5, self, v6, v7, v8, v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 != self)
  {
    v4 = a3;
    objc_opt_class();
    v5 = ICDynamicCast();

    v6 = [v5 edits];
    v7 = [(ICTTTextEditGroup *)self edits];
    if (![v6 isEqual:v7])
    {
      v28 = 0;
LABEL_37:

      return v28;
    }

    v8 = [(ICTTTextEditGroup *)self latestTimestamp];
    v9 = [v5 latestTimestamp];
    v10 = *MEMORY[0x277CBEEE8];
    if (*MEMORY[0x277CBEEE8] == v8)
    {
      v11 = 0;
    }

    else
    {
      v11 = v8;
    }

    v12 = v11;
    if (v10 == v9)
    {
      v13 = 0;
    }

    else
    {
      v13 = v9;
    }

    v14 = v13;
    if (v12 | v14)
    {
      v15 = v14;
      if (v12)
      {
        v16 = v14 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        goto LABEL_34;
      }

      v17 = [v12 isEqual:v14];

      if (!v17)
      {
        v28 = 0;
        goto LABEL_36;
      }
    }

    v12 = [(ICTTTextEditGroup *)self userID];
    v15 = [v5 userID];
    if (v10 == v12)
    {
      v18 = 0;
    }

    else
    {
      v18 = v12;
    }

    v19 = v18;
    if (v10 == v15)
    {
      v20 = 0;
    }

    else
    {
      v20 = v15;
    }

    v21 = v20;
    if (!(v19 | v21))
    {
      goto LABEL_25;
    }

    v22 = v21;
    if (v19 && v21)
    {
      v30 = [v19 isEqual:v21];

      if (v30)
      {
LABEL_25:
        v23 = [v5 range];
        v25 = v24;
        v28 = v23 == [(ICTTTextEditGroup *)self range]&& v25 == v26;
        goto LABEL_35;
      }
    }

    else
    {
    }

LABEL_34:
    v28 = 0;
LABEL_35:

LABEL_36:
    goto LABEL_37;
  }

  return 1;
}

- (unint64_t)hash
{
  v28 = *MEMORY[0x277D85DE8];
  result = self->_hash;
  if (!result)
  {
    v4 = [(ICTTTextEditGroup *)self edits];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v6 hash];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v7 = ICHashWithObject(*(*(&v23 + 1) + 8 * i)) - v7 + 32 * v7;
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    v13 = [(ICTTTextEditGroup *)self latestTimestamp];
    v14 = [v13 hash];
    v15 = [(ICTTTextEditGroup *)self userID];
    [v15 hash];
    [(ICTTTextEditGroup *)self range];
    [(ICTTTextEditGroup *)self range];
    self->_hash = ICHashWithHashKeys(v7, v16, v17, v18, v19, v20, v21, v22, v14);

    return self->_hash;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ICTTTextEditGroup allocWithZone:a3];
  v5 = objc_alloc(MEMORY[0x277CBEA60]);
  v6 = [(ICTTTextEditGroup *)self edits];
  v7 = [v5 initWithArray:v6 copyItems:1];
  v8 = [(ICTTTextEditGroup *)self latestTimestamp];
  v9 = [(ICTTTextEditGroup *)self userID];
  v10 = [(ICTTTextEditGroup *)self range];
  v12 = [(ICTTTextEditGroup *)v4 initWithEdits:v7 latestTimestamp:v8 userID:v9 range:v10, v11];

  return v12;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end