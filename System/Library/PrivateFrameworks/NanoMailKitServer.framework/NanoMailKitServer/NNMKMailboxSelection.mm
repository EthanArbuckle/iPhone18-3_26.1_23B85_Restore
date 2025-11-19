@interface NNMKMailboxSelection
+ (id)mailboxChangesApplyingSelection:(id)a3 previousSelection:(id)a4;
+ (unint64_t)firstFilterTypeFromTypes:(unint64_t)a3;
- (BOOL)containsMailboxFilter:(id)a3;
- (BOOL)hasAggregateMailboxesForAllMessagesOnly;
- (BOOL)hasSingleMailboxSelectionOnly;
- (BOOL)isEqual:(id)a3;
- (NNMKMailboxSelection)initWithAccounts:(id)a3;
- (NNMKMailboxSelection)initWithCoder:(id)a3;
- (NNMKMailboxSelection)initWithMailboxes:(id)a3;
- (NSArray)allMailboxesSyncEnabled;
- (NSMutableDictionary)allMailboxesSyncEnabledById;
- (NSSet)aggregatedMailboxesId;
- (NSSet)mailboxesWithAllMessagesSyncEnabledIds;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mailboxWithId:(id)a3;
- (void)_setupWithAccounts:(id)a3;
- (void)_setupWithMailboxes:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NNMKMailboxSelection

- (NNMKMailboxSelection)initWithAccounts:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NNMKMailboxSelection;
  v5 = [(NNMKMailboxSelection *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(NNMKMailboxSelection *)v5 _setupWithAccounts:v4];
  }

  return v6;
}

- (NNMKMailboxSelection)initWithMailboxes:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NNMKMailboxSelection;
  v5 = [(NNMKMailboxSelection *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(NNMKMailboxSelection *)v5 _setupWithMailboxes:v4];
  }

  return v6;
}

- (NNMKMailboxSelection)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = NNMKMailboxSelection;
  v5 = [(NNMKMailboxSelection *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyInboxesFilterTypes"];
    v5->_aggregatedMailboxesFilterTypes = [v6 unsignedIntegerValue];

    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"kNSCodingKeyMailboxesWithAllMessagesSyncEnabled"];
    mailboxesWithAllMessagesSyncEnabled = v5->_mailboxesWithAllMessagesSyncEnabled;
    v5->_mailboxesWithAllMessagesSyncEnabled = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"kNSCodingKeyInboxes"];
    aggregatedMailboxes = v5->_aggregatedMailboxes;
    v5->_aggregatedMailboxes = v15;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NNMKMailboxSelection alloc];
  v5 = [(NNMKMailboxSelection *)self allMailboxesSyncEnabled];
  v6 = [(NNMKMailboxSelection *)v4 initWithMailboxes:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  aggregatedMailboxesFilterTypes = self->_aggregatedMailboxesFilterTypes;
  v7 = a3;
  v6 = [v4 numberWithUnsignedInteger:aggregatedMailboxesFilterTypes];
  [v7 encodeObject:v6 forKey:@"kNSCodingKeyInboxesFilterTypes"];

  [v7 encodeObject:self->_mailboxesWithAllMessagesSyncEnabled forKey:@"kNSCodingKeyMailboxesWithAllMessagesSyncEnabled"];
  [v7 encodeObject:self->_aggregatedMailboxes forKey:@"kNSCodingKeyInboxes"];
}

- (void)_setupWithMailboxes:(id)a3
{
  v24 = self;
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v25 = [MEMORY[0x277CBEB58] set];
  v4 = [MEMORY[0x277CBEB58] set];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        if ([v13 type] == 1)
        {
          v14 = [v13 copy];
          [v4 addObject:v14];
        }

        if (([v13 syncEnabled] & 1) != 0 || objc_msgSend(v13, "syncRequested"))
        {
          if ([v13 type] == 1 && ((objc_msgSend(v13, "syncEnabled") & 1) != 0 || objc_msgSend(v13, "syncRequested")))
          {
            ++v10;
            v15 = [v13 filterType];
            v16 = [v13 hasFilterType:1];
            v9 += v16;
            v8 |= v15 ^ v16;
          }

          if ([v13 hasFilterType:1])
          {
            v17 = [v13 copy];
            [v25 addObject:v17];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  if ([v4 count] < 2)
  {
    v18 = v24;
  }

  else
  {
    v18 = v24;
    if ([v4 count] == v10)
    {
      v8 |= [v4 count] == v9;
    }
  }

  v19 = [v25 allObjects];
  mailboxesWithAllMessagesSyncEnabled = v18->_mailboxesWithAllMessagesSyncEnabled;
  v18->_mailboxesWithAllMessagesSyncEnabled = v19;

  v18->_aggregatedMailboxesFilterTypes = v8;
  if (v8)
  {
    v21 = [v4 allObjects];
    aggregatedMailboxes = v18->_aggregatedMailboxes;
    v18->_aggregatedMailboxes = v21;
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_setupWithAccounts:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) mailboxes];
        [v5 addObjectsFromArray:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(NNMKMailboxSelection *)self _setupWithMailboxes:v5];
  v12 = *MEMORY[0x277D85DE8];
}

- (NSSet)mailboxesWithAllMessagesSyncEnabledIds
{
  v20 = *MEMORY[0x277D85DE8];
  mailboxesWithAllMessagesSyncEnabledIds = self->_mailboxesWithAllMessagesSyncEnabledIds;
  if (mailboxesWithAllMessagesSyncEnabledIds)
  {
    goto LABEL_10;
  }

  v4 = [MEMORY[0x277CBEB58] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_mailboxesWithAllMessagesSyncEnabled;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * v9) mailboxId];
        [(NSSet *)v4 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = self->_mailboxesWithAllMessagesSyncEnabledIds;
  self->_mailboxesWithAllMessagesSyncEnabledIds = v4;

  mailboxesWithAllMessagesSyncEnabledIds = self->_mailboxesWithAllMessagesSyncEnabledIds;
  if (mailboxesWithAllMessagesSyncEnabledIds)
  {
LABEL_10:
    v12 = mailboxesWithAllMessagesSyncEnabledIds;
  }

  else
  {
    v12 = [MEMORY[0x277CBEB98] set];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (NSSet)aggregatedMailboxesId
{
  v20 = *MEMORY[0x277D85DE8];
  aggregatedMailboxesId = self->_aggregatedMailboxesId;
  if (aggregatedMailboxesId)
  {
    goto LABEL_10;
  }

  v4 = [MEMORY[0x277CBEB58] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_aggregatedMailboxes;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * v9) mailboxId];
        [(NSSet *)v4 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = self->_aggregatedMailboxesId;
  self->_aggregatedMailboxesId = v4;

  aggregatedMailboxesId = self->_aggregatedMailboxesId;
  if (aggregatedMailboxesId)
  {
LABEL_10:
    v12 = aggregatedMailboxesId;
  }

  else
  {
    v12 = [MEMORY[0x277CBEB98] set];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (NSArray)allMailboxesSyncEnabled
{
  v2 = [(NNMKMailboxSelection *)self allMailboxesSyncEnabledById];
  v3 = [v2 allValues];

  return v3;
}

- (BOOL)hasSingleMailboxSelectionOnly
{
  v3 = [(NNMKMailboxSelection *)self mailboxesWithAllMessagesSyncEnabled];
  if ([v3 count] == 1)
  {
    v4 = [(NNMKMailboxSelection *)self aggregatedMailboxes];
    v5 = [v4 count] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasAggregateMailboxesForAllMessagesOnly
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(NNMKMailboxSelection *)self aggregatedMailboxes];
  if ([v3 count] < 2)
  {
  }

  else
  {
    aggregatedMailboxesFilterTypes = self->_aggregatedMailboxesFilterTypes;

    if (aggregatedMailboxesFilterTypes == 1)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v5 = [(NNMKMailboxSelection *)self mailboxesWithAllMessagesSyncEnabled];
      v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v24;
LABEL_5:
        v9 = 0;
        while (1)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v23 + 1) + 8 * v9) type] != 1)
          {
            break;
          }

          if (v7 == ++v9)
          {
            v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
            if (v7)
            {
              goto LABEL_5;
            }

            goto LABEL_23;
          }
        }

LABEL_26:
        v16 = 0;
        goto LABEL_27;
      }

      goto LABEL_23;
    }
  }

  v10 = [(NNMKMailboxSelection *)self aggregatedMailboxes];
  if ([v10 count] == 1)
  {
    v11 = self->_aggregatedMailboxesFilterTypes;

    if (!v11)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v5 = [(NNMKMailboxSelection *)self mailboxesWithAllMessagesSyncEnabled];
      v12 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v20;
LABEL_17:
        v15 = 0;
        while (1)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v19 + 1) + 8 * v15) type] != 1)
          {
            goto LABEL_26;
          }

          if (v13 == ++v15)
          {
            v13 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v13)
            {
              goto LABEL_17;
            }

            break;
          }
        }
      }

LABEL_23:
      v16 = 1;
LABEL_27:

      goto LABEL_28;
    }
  }

  else
  {
  }

  v16 = 0;
LABEL_28:
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)containsMailboxFilter:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 mailboxIds];
  if ([v5 count] == 1)
  {
    v6 = [v4 isFilteredByType];

    if ((v6 & 1) == 0)
    {
      v7 = [(NNMKMailboxSelection *)self mailboxesWithAllMessagesSyncEnabledIds];
      v8 = [v4 mailboxIds];
      v9 = [v8 firstObject];
      LOBYTE(v10) = [v7 containsObject:v9];

      goto LABEL_16;
    }
  }

  else
  {
  }

  v10 = -[NNMKMailboxSelection isMailboxFilterEnabled:](self, "isMailboxFilterEnabled:", [v4 mailboxType]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [v4 mailboxIds];
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        v17 = [(NNMKMailboxSelection *)self aggregatedMailboxesId];
        v10 &= [v17 containsObject:v16];

        if (v10 != 1)
        {
          LOBYTE(v10) = 0;
          goto LABEL_15;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v10 = 1;
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

LABEL_16:
  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (unint64_t)firstFilterTypeFromTypes:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  result = [&unk_286C7BF28 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v10;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v10 != v6)
      {
        objc_enumerationMutation(&unk_286C7BF28);
      }

      result = [*(*(&v9 + 1) + 8 * v7) unsignedIntegerValue];
      if ((result & a3) != 0)
      {
        break;
      }

      if (v5 == ++v7)
      {
        result = [&unk_286C7BF28 countByEnumeratingWithState:&v9 objects:v13 count:16];
        v5 = result;
        if (result)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSMutableDictionary)allMailboxesSyncEnabledById
{
  v21 = *MEMORY[0x277D85DE8];
  allMailboxesSyncEnabledById = self->_allMailboxesSyncEnabledById;
  if (allMailboxesSyncEnabledById)
  {
    goto LABEL_10;
  }

  v4 = [MEMORY[0x277CBEB38] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(NNMKMailboxSelection *)self mailboxesWithAllMessagesSyncEnabled];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 mailboxId];
        [(NSMutableDictionary *)v4 setObject:v10 forKeyedSubscript:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v12 = self->_allMailboxesSyncEnabledById;
  self->_allMailboxesSyncEnabledById = v4;

  allMailboxesSyncEnabledById = self->_allMailboxesSyncEnabledById;
  if (allMailboxesSyncEnabledById)
  {
LABEL_10:
    v13 = allMailboxesSyncEnabledById;
  }

  else
  {
    v13 = [MEMORY[0x277CBEB38] dictionary];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)mailboxWithId:(id)a3
{
  v4 = a3;
  v5 = [(NNMKMailboxSelection *)self allMailboxesSyncEnabledById];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  v5 = [(NNMKMailboxSelection *)self allMailboxesSyncEnabled];
  v6 = [v5 count];
  v7 = [v4 allMailboxesSyncEnabled];
  v8 = [v7 count];

  if (v6 != v8)
  {
    goto LABEL_14;
  }

  v9 = [(NNMKMailboxSelection *)self aggregatedMailboxesFilterTypes];
  if (v9 == [v4 aggregatedMailboxesFilterTypes])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [(NNMKMailboxSelection *)self allMailboxesSyncEnabled];
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = [v4 allMailboxesSyncEnabledById];
          v17 = [v15 mailboxId];
          v18 = [v16 objectForKeyedSubscript:v17];

          if (!v18 || (v19 = [v18 filterType], v19 != objc_msgSend(v15, "filterType")))
          {

            v20 = 0;
            goto LABEL_18;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        v20 = 1;
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v20 = 1;
    }

LABEL_18:
  }

  else
  {
LABEL_14:
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)description
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithString:@"Mailboxes: ["];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [(NNMKMailboxSelection *)self mailboxesWithAllMessagesSyncEnabledIds];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 appendFormat:@"%@, ", *(*(&v20 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  [v3 appendString:{@"], "}];
  [v3 appendString:@"Aggregated: ["];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [(NNMKMailboxSelection *)self aggregatedMailboxesId];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v3 appendFormat:@"%@, ", *(*(&v16 + 1) + 8 * j)];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v11);
  }

  [v3 appendString:{@"], "}];
  [v3 appendString:@"Filters: ["];
  if ([(NNMKMailboxSelection *)self isMailboxFilterEnabled:1])
  {
    [v3 appendString:{@"All, "}];
  }

  if ([(NNMKMailboxSelection *)self isMailboxFilterEnabled:2])
  {
    [v3 appendString:{@"VIP, "}];
  }

  if ([(NNMKMailboxSelection *)self isMailboxFilterEnabled:8])
  {
    [v3 appendString:{@"Unread, "}];
  }

  if ([(NNMKMailboxSelection *)self isMailboxFilterEnabled:4])
  {
    [v3 appendString:{@"Flagged, "}];
  }

  if ([(NNMKMailboxSelection *)self isMailboxFilterEnabled:16])
  {
    [v3 appendString:{@"ToOrCC, "}];
  }

  if ([(NNMKMailboxSelection *)self isMailboxFilterEnabled:32])
  {
    [v3 appendString:{@"ImportThread, "}];
  }

  if ([(NNMKMailboxSelection *)self isMailboxFilterEnabled:64])
  {
    [v3 appendString:@"Today"];
  }

  [v3 appendString:@"]"];
  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)mailboxChangesApplyingSelection:(id)a3 previousSelection:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v26 = v6;
  v9 = [v6 allMailboxesSyncEnabledById];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v27 = v5;
  v10 = [v5 allMailboxesSyncEnabledById];
  v11 = [v10 allValues];

  v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        v17 = [v16 mailboxId];
        v18 = [v9 objectForKeyedSubscript:v17];

        if (!v18)
        {
          [v7 addObject:v16];
LABEL_12:
          [v8 addObject:v16];
          goto LABEL_13;
        }

        v19 = [v16 mailboxId];
        [v9 removeObjectForKey:v19];

        if (([v16 isEqual:v18] & 1) == 0)
        {
          [v7 addObject:v16];
          v20 = [v18 hasFilterType:1];
          v21 = [v16 hasFilterType:1];
          if (!v20 || (v21 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

LABEL_13:
      }

      v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }

  v22 = objc_opt_new();
  [v22 setMailboxesToUpdate:v7];
  [v22 setMailboxesToReSync:v8];
  v23 = [v9 allValues];
  [v22 setMailboxesToDisableSync:v23];

  v24 = *MEMORY[0x277D85DE8];

  return v22;
}

@end