@interface ICTTTextEditGroup
- (BOOL)isEqual:(id)equal;
- (ICTTTextEditGroup)initWithEdits:(id)edits latestTimestamp:(id)timestamp userID:(id)d range:(_NSRange)range;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation ICTTTextEditGroup

- (ICTTTextEditGroup)initWithEdits:(id)edits latestTimestamp:(id)timestamp userID:(id)d range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  editsCopy = edits;
  timestampCopy = timestamp;
  dCopy = d;
  v18.receiver = self;
  v18.super_class = ICTTTextEditGroup;
  v15 = [(ICTTTextEditGroup *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_edits, edits);
    objc_storeStrong(&v16->_latestTimestamp, timestamp);
    objc_storeStrong(&v16->_userID, d);
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
  edits = [(ICTTTextEditGroup *)self edits];
  latestTimestamp = [(ICTTTextEditGroup *)self latestTimestamp];
  userID = [(ICTTTextEditGroup *)self userID];
  v13.location = [(ICTTTextEditGroup *)self range];
  v9 = NSStringFromRange(v13);
  v10 = [v3 stringWithFormat:@"<%@: %p, edits: %@, latestTimestamp: %@, userID: %@, range: %@>", v5, self, edits, latestTimestamp, userID, v9];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  if (equal != self)
  {
    equalCopy = equal;
    objc_opt_class();
    v5 = ICDynamicCast();

    edits = [v5 edits];
    edits2 = [(ICTTTextEditGroup *)self edits];
    if (![edits isEqual:edits2])
    {
      v28 = 0;
LABEL_37:

      return v28;
    }

    latestTimestamp = [(ICTTTextEditGroup *)self latestTimestamp];
    latestTimestamp2 = [v5 latestTimestamp];
    v10 = *MEMORY[0x277CBEEE8];
    if (*MEMORY[0x277CBEEE8] == latestTimestamp)
    {
      v11 = 0;
    }

    else
    {
      v11 = latestTimestamp;
    }

    userID = v11;
    if (v10 == latestTimestamp2)
    {
      v13 = 0;
    }

    else
    {
      v13 = latestTimestamp2;
    }

    v14 = v13;
    if (userID | v14)
    {
      userID2 = v14;
      if (userID)
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

      v17 = [userID isEqual:v14];

      if (!v17)
      {
        v28 = 0;
        goto LABEL_36;
      }
    }

    userID = [(ICTTTextEditGroup *)self userID];
    userID2 = [v5 userID];
    if (v10 == userID)
    {
      v18 = 0;
    }

    else
    {
      v18 = userID;
    }

    v19 = v18;
    if (v10 == userID2)
    {
      v20 = 0;
    }

    else
    {
      v20 = userID2;
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
        range = [v5 range];
        v25 = v24;
        v28 = range == [(ICTTTextEditGroup *)self range]&& v25 == v26;
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
    edits = [(ICTTTextEditGroup *)self edits];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v6 hash];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = edits;
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

    latestTimestamp = [(ICTTTextEditGroup *)self latestTimestamp];
    v14 = [latestTimestamp hash];
    userID = [(ICTTTextEditGroup *)self userID];
    [userID hash];
    [(ICTTTextEditGroup *)self range];
    [(ICTTTextEditGroup *)self range];
    self->_hash = ICHashWithHashKeys(v7, v16, v17, v18, v19, v20, v21, v22, v14);

    return self->_hash;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ICTTTextEditGroup allocWithZone:zone];
  v5 = objc_alloc(MEMORY[0x277CBEA60]);
  edits = [(ICTTTextEditGroup *)self edits];
  v7 = [v5 initWithArray:edits copyItems:1];
  latestTimestamp = [(ICTTTextEditGroup *)self latestTimestamp];
  userID = [(ICTTTextEditGroup *)self userID];
  range = [(ICTTTextEditGroup *)self range];
  v12 = [(ICTTTextEditGroup *)v4 initWithEdits:v7 latestTimestamp:latestTimestamp userID:userID range:range, v11];

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