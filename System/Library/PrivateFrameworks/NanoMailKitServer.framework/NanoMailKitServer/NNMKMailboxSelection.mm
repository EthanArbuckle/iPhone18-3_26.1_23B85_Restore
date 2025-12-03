@interface NNMKMailboxSelection
+ (id)mailboxChangesApplyingSelection:(id)selection previousSelection:(id)previousSelection;
+ (unint64_t)firstFilterTypeFromTypes:(unint64_t)types;
- (BOOL)containsMailboxFilter:(id)filter;
- (BOOL)hasAggregateMailboxesForAllMessagesOnly;
- (BOOL)hasSingleMailboxSelectionOnly;
- (BOOL)isEqual:(id)equal;
- (NNMKMailboxSelection)initWithAccounts:(id)accounts;
- (NNMKMailboxSelection)initWithCoder:(id)coder;
- (NNMKMailboxSelection)initWithMailboxes:(id)mailboxes;
- (NSArray)allMailboxesSyncEnabled;
- (NSMutableDictionary)allMailboxesSyncEnabledById;
- (NSSet)aggregatedMailboxesId;
- (NSSet)mailboxesWithAllMessagesSyncEnabledIds;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mailboxWithId:(id)id;
- (void)_setupWithAccounts:(id)accounts;
- (void)_setupWithMailboxes:(id)mailboxes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NNMKMailboxSelection

- (NNMKMailboxSelection)initWithAccounts:(id)accounts
{
  accountsCopy = accounts;
  v8.receiver = self;
  v8.super_class = NNMKMailboxSelection;
  v5 = [(NNMKMailboxSelection *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(NNMKMailboxSelection *)v5 _setupWithAccounts:accountsCopy];
  }

  return v6;
}

- (NNMKMailboxSelection)initWithMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  v8.receiver = self;
  v8.super_class = NNMKMailboxSelection;
  v5 = [(NNMKMailboxSelection *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(NNMKMailboxSelection *)v5 _setupWithMailboxes:mailboxesCopy];
  }

  return v6;
}

- (NNMKMailboxSelection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = NNMKMailboxSelection;
  v5 = [(NNMKMailboxSelection *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyInboxesFilterTypes"];
    v5->_aggregatedMailboxesFilterTypes = [v6 unsignedIntegerValue];

    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"kNSCodingKeyMailboxesWithAllMessagesSyncEnabled"];
    mailboxesWithAllMessagesSyncEnabled = v5->_mailboxesWithAllMessagesSyncEnabled;
    v5->_mailboxesWithAllMessagesSyncEnabled = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"kNSCodingKeyInboxes"];
    aggregatedMailboxes = v5->_aggregatedMailboxes;
    v5->_aggregatedMailboxes = v15;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NNMKMailboxSelection alloc];
  allMailboxesSyncEnabled = [(NNMKMailboxSelection *)self allMailboxesSyncEnabled];
  v6 = [(NNMKMailboxSelection *)v4 initWithMailboxes:allMailboxesSyncEnabled];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  aggregatedMailboxesFilterTypes = self->_aggregatedMailboxesFilterTypes;
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:aggregatedMailboxesFilterTypes];
  [coderCopy encodeObject:v6 forKey:@"kNSCodingKeyInboxesFilterTypes"];

  [coderCopy encodeObject:self->_mailboxesWithAllMessagesSyncEnabled forKey:@"kNSCodingKeyMailboxesWithAllMessagesSyncEnabled"];
  [coderCopy encodeObject:self->_aggregatedMailboxes forKey:@"kNSCodingKeyInboxes"];
}

- (void)_setupWithMailboxes:(id)mailboxes
{
  selfCopy = self;
  v31 = *MEMORY[0x277D85DE8];
  mailboxesCopy = mailboxes;
  v25 = [MEMORY[0x277CBEB58] set];
  v4 = [MEMORY[0x277CBEB58] set];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = mailboxesCopy;
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
            filterType = [v13 filterType];
            v16 = [v13 hasFilterType:1];
            v9 += v16;
            v8 |= filterType ^ v16;
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
    v18 = selfCopy;
  }

  else
  {
    v18 = selfCopy;
    if ([v4 count] == v10)
    {
      v8 |= [v4 count] == v9;
    }
  }

  allObjects = [v25 allObjects];
  mailboxesWithAllMessagesSyncEnabled = v18->_mailboxesWithAllMessagesSyncEnabled;
  v18->_mailboxesWithAllMessagesSyncEnabled = allObjects;

  v18->_aggregatedMailboxesFilterTypes = v8;
  if (v8)
  {
    allObjects2 = [v4 allObjects];
    aggregatedMailboxes = v18->_aggregatedMailboxes;
    v18->_aggregatedMailboxes = allObjects2;
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_setupWithAccounts:(id)accounts
{
  v18 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = accountsCopy;
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

        mailboxes = [*(*(&v13 + 1) + 8 * v10) mailboxes];
        [array addObjectsFromArray:mailboxes];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(NNMKMailboxSelection *)self _setupWithMailboxes:array];
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

        mailboxId = [*(*(&v15 + 1) + 8 * v9) mailboxId];
        [(NSSet *)v4 addObject:mailboxId];

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

        mailboxId = [*(*(&v15 + 1) + 8 * v9) mailboxId];
        [(NSSet *)v4 addObject:mailboxId];

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
  allMailboxesSyncEnabledById = [(NNMKMailboxSelection *)self allMailboxesSyncEnabledById];
  allValues = [allMailboxesSyncEnabledById allValues];

  return allValues;
}

- (BOOL)hasSingleMailboxSelectionOnly
{
  mailboxesWithAllMessagesSyncEnabled = [(NNMKMailboxSelection *)self mailboxesWithAllMessagesSyncEnabled];
  if ([mailboxesWithAllMessagesSyncEnabled count] == 1)
  {
    aggregatedMailboxes = [(NNMKMailboxSelection *)self aggregatedMailboxes];
    v5 = [aggregatedMailboxes count] == 0;
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
  aggregatedMailboxes = [(NNMKMailboxSelection *)self aggregatedMailboxes];
  if ([aggregatedMailboxes count] < 2)
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
      mailboxesWithAllMessagesSyncEnabled = [(NNMKMailboxSelection *)self mailboxesWithAllMessagesSyncEnabled];
      v6 = [mailboxesWithAllMessagesSyncEnabled countByEnumeratingWithState:&v23 objects:v28 count:16];
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
            objc_enumerationMutation(mailboxesWithAllMessagesSyncEnabled);
          }

          if ([*(*(&v23 + 1) + 8 * v9) type] != 1)
          {
            break;
          }

          if (v7 == ++v9)
          {
            v7 = [mailboxesWithAllMessagesSyncEnabled countByEnumeratingWithState:&v23 objects:v28 count:16];
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

  aggregatedMailboxes2 = [(NNMKMailboxSelection *)self aggregatedMailboxes];
  if ([aggregatedMailboxes2 count] == 1)
  {
    v11 = self->_aggregatedMailboxesFilterTypes;

    if (!v11)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      mailboxesWithAllMessagesSyncEnabled = [(NNMKMailboxSelection *)self mailboxesWithAllMessagesSyncEnabled];
      v12 = [mailboxesWithAllMessagesSyncEnabled countByEnumeratingWithState:&v19 objects:v27 count:16];
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
            objc_enumerationMutation(mailboxesWithAllMessagesSyncEnabled);
          }

          if ([*(*(&v19 + 1) + 8 * v15) type] != 1)
          {
            goto LABEL_26;
          }

          if (v13 == ++v15)
          {
            v13 = [mailboxesWithAllMessagesSyncEnabled countByEnumeratingWithState:&v19 objects:v27 count:16];
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

- (BOOL)containsMailboxFilter:(id)filter
{
  v25 = *MEMORY[0x277D85DE8];
  filterCopy = filter;
  mailboxIds = [filterCopy mailboxIds];
  if ([mailboxIds count] == 1)
  {
    isFilteredByType = [filterCopy isFilteredByType];

    if ((isFilteredByType & 1) == 0)
    {
      mailboxesWithAllMessagesSyncEnabledIds = [(NNMKMailboxSelection *)self mailboxesWithAllMessagesSyncEnabledIds];
      mailboxIds2 = [filterCopy mailboxIds];
      firstObject = [mailboxIds2 firstObject];
      LOBYTE(v10) = [mailboxesWithAllMessagesSyncEnabledIds containsObject:firstObject];

      goto LABEL_16;
    }
  }

  else
  {
  }

  v10 = -[NNMKMailboxSelection isMailboxFilterEnabled:](self, "isMailboxFilterEnabled:", [filterCopy mailboxType]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  mailboxIds3 = [filterCopy mailboxIds];
  v12 = [mailboxIds3 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(mailboxIds3);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        aggregatedMailboxesId = [(NNMKMailboxSelection *)self aggregatedMailboxesId];
        v10 &= [aggregatedMailboxesId containsObject:v16];

        if (v10 != 1)
        {
          LOBYTE(v10) = 0;
          goto LABEL_15;
        }
      }

      v13 = [mailboxIds3 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

+ (unint64_t)firstFilterTypeFromTypes:(unint64_t)types
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
      if ((result & types) != 0)
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

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  mailboxesWithAllMessagesSyncEnabled = [(NNMKMailboxSelection *)self mailboxesWithAllMessagesSyncEnabled];
  v6 = [mailboxesWithAllMessagesSyncEnabled countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(mailboxesWithAllMessagesSyncEnabled);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        mailboxId = [v10 mailboxId];
        [(NSMutableDictionary *)dictionary setObject:v10 forKeyedSubscript:mailboxId];
      }

      v7 = [mailboxesWithAllMessagesSyncEnabled countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v12 = self->_allMailboxesSyncEnabledById;
  self->_allMailboxesSyncEnabledById = dictionary;

  allMailboxesSyncEnabledById = self->_allMailboxesSyncEnabledById;
  if (allMailboxesSyncEnabledById)
  {
LABEL_10:
    dictionary2 = allMailboxesSyncEnabledById;
  }

  else
  {
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  }

  v14 = *MEMORY[0x277D85DE8];

  return dictionary2;
}

- (id)mailboxWithId:(id)id
{
  idCopy = id;
  allMailboxesSyncEnabledById = [(NNMKMailboxSelection *)self allMailboxesSyncEnabledById];
  v6 = [allMailboxesSyncEnabledById objectForKeyedSubscript:idCopy];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v28 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  allMailboxesSyncEnabled = [(NNMKMailboxSelection *)self allMailboxesSyncEnabled];
  v6 = [allMailboxesSyncEnabled count];
  allMailboxesSyncEnabled2 = [equalCopy allMailboxesSyncEnabled];
  v8 = [allMailboxesSyncEnabled2 count];

  if (v6 != v8)
  {
    goto LABEL_14;
  }

  aggregatedMailboxesFilterTypes = [(NNMKMailboxSelection *)self aggregatedMailboxesFilterTypes];
  if (aggregatedMailboxesFilterTypes == [equalCopy aggregatedMailboxesFilterTypes])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    allMailboxesSyncEnabled3 = [(NNMKMailboxSelection *)self allMailboxesSyncEnabled];
    v11 = [allMailboxesSyncEnabled3 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(allMailboxesSyncEnabled3);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          allMailboxesSyncEnabledById = [equalCopy allMailboxesSyncEnabledById];
          mailboxId = [v15 mailboxId];
          v18 = [allMailboxesSyncEnabledById objectForKeyedSubscript:mailboxId];

          if (!v18 || (v19 = [v18 filterType], v19 != objc_msgSend(v15, "filterType")))
          {

            v20 = 0;
            goto LABEL_18;
          }
        }

        v12 = [allMailboxesSyncEnabled3 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
  mailboxesWithAllMessagesSyncEnabledIds = [(NNMKMailboxSelection *)self mailboxesWithAllMessagesSyncEnabledIds];
  v5 = [mailboxesWithAllMessagesSyncEnabledIds countByEnumeratingWithState:&v20 objects:v25 count:16];
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
          objc_enumerationMutation(mailboxesWithAllMessagesSyncEnabledIds);
        }

        [v3 appendFormat:@"%@, ", *(*(&v20 + 1) + 8 * i)];
      }

      v6 = [mailboxesWithAllMessagesSyncEnabledIds countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  [v3 appendString:{@"], "}];
  [v3 appendString:@"Aggregated: ["];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  aggregatedMailboxesId = [(NNMKMailboxSelection *)self aggregatedMailboxesId];
  v10 = [aggregatedMailboxesId countByEnumeratingWithState:&v16 objects:v24 count:16];
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
          objc_enumerationMutation(aggregatedMailboxesId);
        }

        [v3 appendFormat:@"%@, ", *(*(&v16 + 1) + 8 * j)];
      }

      v11 = [aggregatedMailboxesId countByEnumeratingWithState:&v16 objects:v24 count:16];
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

+ (id)mailboxChangesApplyingSelection:(id)selection previousSelection:(id)previousSelection
{
  v33 = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  previousSelectionCopy = previousSelection;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v26 = previousSelectionCopy;
  allMailboxesSyncEnabledById = [previousSelectionCopy allMailboxesSyncEnabledById];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v27 = selectionCopy;
  allMailboxesSyncEnabledById2 = [selectionCopy allMailboxesSyncEnabledById];
  allValues = [allMailboxesSyncEnabledById2 allValues];

  v12 = [allValues countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        mailboxId = [v16 mailboxId];
        v18 = [allMailboxesSyncEnabledById objectForKeyedSubscript:mailboxId];

        if (!v18)
        {
          [v7 addObject:v16];
LABEL_12:
          [v8 addObject:v16];
          goto LABEL_13;
        }

        mailboxId2 = [v16 mailboxId];
        [allMailboxesSyncEnabledById removeObjectForKey:mailboxId2];

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

      v13 = [allValues countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }

  v22 = objc_opt_new();
  [v22 setMailboxesToUpdate:v7];
  [v22 setMailboxesToReSync:v8];
  allValues2 = [allMailboxesSyncEnabledById allValues];
  [v22 setMailboxesToDisableSync:allValues2];

  v24 = *MEMORY[0x277D85DE8];

  return v22;
}

@end