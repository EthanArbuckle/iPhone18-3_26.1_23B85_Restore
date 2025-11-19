@interface WFProcessedContacts
- (BOOL)isEqual:(id)a3;
- (WFProcessedContacts)initWithCoder:(id)a3;
- (WFProcessedContacts)initWithEntries:(id)a3 attributionSet:(id)a4 communicationMethod:(id)a5;
- (id)contentCollection;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFProcessedContacts

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFProcessedContacts *)v4 entries];
      v6 = [(WFProcessedContacts *)self entries];
      if (![v5 isEqualToArray:v6])
      {
        LOBYTE(v12) = 0;
LABEL_21:

        goto LABEL_22;
      }

      v7 = [(WFProcessedContacts *)v4 attributionSet];
      v8 = [(WFProcessedContacts *)self attributionSet];
      v9 = v7;
      v10 = v8;
      v11 = v10;
      if (v9 == v10)
      {
      }

      else
      {
        LOBYTE(v12) = 0;
        v13 = v10;
        v14 = v9;
        if (!v9 || !v10)
        {
LABEL_19:

LABEL_20:
          goto LABEL_21;
        }

        v12 = [v9 isEqual:v10];

        if (!v12)
        {
          goto LABEL_20;
        }
      }

      v15 = [(WFProcessedContacts *)v4 communicationMethod];
      v16 = [(WFProcessedContacts *)self communicationMethod];
      v14 = v15;
      v17 = v16;
      v13 = v17;
      if (v14 == v17)
      {
        LOBYTE(v12) = 1;
      }

      else
      {
        LOBYTE(v12) = 0;
        if (v14 && v17)
        {
          LOBYTE(v12) = [v14 isEqual:v17];
        }
      }

      goto LABEL_19;
    }

    LOBYTE(v12) = 0;
  }

LABEL_22:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(WFProcessedContacts *)self entries];
  v4 = [v3 hash];
  v5 = [(WFProcessedContacts *)self attributionSet];
  v6 = [v5 hash] ^ v4;
  v7 = [(WFProcessedContacts *)self communicationMethod];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFProcessedContacts *)self entries];
  [v4 encodeObject:v5 forKey:@"entries"];

  v6 = [(WFProcessedContacts *)self attributionSet];
  [v4 encodeObject:v6 forKey:@"attributionSet"];

  v7 = [(WFProcessedContacts *)self communicationMethod];
  [v4 encodeObject:v7 forKey:@"communicationMethod"];
}

- (WFProcessedContacts)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"entries"];

  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"attributionSet"];
  v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"communicationMethod"];

  v11 = [(WFProcessedContacts *)self initWithEntries:v8 attributionSet:v9 communicationMethod:v10];
  return v11;
}

- (WFProcessedContacts)initWithEntries:(id)a3 attributionSet:(id)a4 communicationMethod:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"WFProcessedContacts.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"entries"}];
  }

  v19.receiver = self;
  v19.super_class = WFProcessedContacts;
  v12 = [(WFProcessedContacts *)&v19 init];
  if (v12)
  {
    if (!v10)
    {
      v13 = [v9 if_compactMap:&__block_literal_global_1781];
      if ([v13 count])
      {
        v10 = [WFContentAttributionSet attributionSetByMergingAttributionSets:v13];
      }

      else
      {
        v10 = 0;
      }
    }

    v14 = [v9 copy];
    entries = v12->_entries;
    v12->_entries = v14;

    objc_storeStrong(&v12->_attributionSet, v10);
    objc_storeStrong(&v12->_communicationMethod, a5);
    v16 = v12;
  }

  return v12;
}

id __74__WFProcessedContacts_initWithEntries_attributionSet_communicationMethod___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 contact];
  v3 = [v2 attributionSetWithCachingIdentifier:0];

  return v3;
}

- (id)contentCollection
{
  v3 = [(WFProcessedContacts *)self entries];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__WFProcessedContacts_ContentCollection__contentCollection__block_invoke;
  v7[3] = &unk_2783451B0;
  v7[4] = self;
  v4 = [v3 if_map:v7];

  v5 = [WFContentCollection collectionWithItems:v4];

  return v5;
}

id __59__WFProcessedContacts_ContentCollection__contentCollection__block_invoke(uint64_t a1, void *a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = [a2 contentItem];
  v4 = [*(a1 + 32) attributionSet];

  if (v4)
  {
    v5 = [v3 attributionSet];

    if (v5)
    {
      v6 = [v3 attributionSet];
      v12[0] = v6;
      v7 = [*(a1 + 32) attributionSet];
      v12[1] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
      v9 = [WFContentAttributionSet attributionSetByMergingAttributionSets:v8];
      [v3 setAttributionSet:v9];
    }

    else
    {
      v10 = [*(a1 + 32) attributionSet];
      [v3 setAttributionSet:v10];
    }
  }

  return v3;
}

@end