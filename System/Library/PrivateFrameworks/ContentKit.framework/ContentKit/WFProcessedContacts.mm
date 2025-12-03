@interface WFProcessedContacts
- (BOOL)isEqual:(id)equal;
- (WFProcessedContacts)initWithCoder:(id)coder;
- (WFProcessedContacts)initWithEntries:(id)entries attributionSet:(id)set communicationMethod:(id)method;
- (id)contentCollection;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFProcessedContacts

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      entries = [(WFProcessedContacts *)equalCopy entries];
      entries2 = [(WFProcessedContacts *)self entries];
      if (![entries isEqualToArray:entries2])
      {
        LOBYTE(v12) = 0;
LABEL_21:

        goto LABEL_22;
      }

      attributionSet = [(WFProcessedContacts *)equalCopy attributionSet];
      attributionSet2 = [(WFProcessedContacts *)self attributionSet];
      v9 = attributionSet;
      v10 = attributionSet2;
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

      communicationMethod = [(WFProcessedContacts *)equalCopy communicationMethod];
      communicationMethod2 = [(WFProcessedContacts *)self communicationMethod];
      v14 = communicationMethod;
      v17 = communicationMethod2;
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
  entries = [(WFProcessedContacts *)self entries];
  v4 = [entries hash];
  attributionSet = [(WFProcessedContacts *)self attributionSet];
  v6 = [attributionSet hash] ^ v4;
  communicationMethod = [(WFProcessedContacts *)self communicationMethod];
  v8 = [communicationMethod hash];

  return v6 ^ v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  entries = [(WFProcessedContacts *)self entries];
  [coderCopy encodeObject:entries forKey:@"entries"];

  attributionSet = [(WFProcessedContacts *)self attributionSet];
  [coderCopy encodeObject:attributionSet forKey:@"attributionSet"];

  communicationMethod = [(WFProcessedContacts *)self communicationMethod];
  [coderCopy encodeObject:communicationMethod forKey:@"communicationMethod"];
}

- (WFProcessedContacts)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"entries"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attributionSet"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"communicationMethod"];

  v11 = [(WFProcessedContacts *)self initWithEntries:v8 attributionSet:v9 communicationMethod:v10];
  return v11;
}

- (WFProcessedContacts)initWithEntries:(id)entries attributionSet:(id)set communicationMethod:(id)method
{
  entriesCopy = entries;
  setCopy = set;
  methodCopy = method;
  if (!entriesCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFProcessedContacts.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"entries"}];
  }

  v19.receiver = self;
  v19.super_class = WFProcessedContacts;
  v12 = [(WFProcessedContacts *)&v19 init];
  if (v12)
  {
    if (!setCopy)
    {
      v13 = [entriesCopy if_compactMap:&__block_literal_global_1781];
      if ([v13 count])
      {
        setCopy = [WFContentAttributionSet attributionSetByMergingAttributionSets:v13];
      }

      else
      {
        setCopy = 0;
      }
    }

    v14 = [entriesCopy copy];
    entries = v12->_entries;
    v12->_entries = v14;

    objc_storeStrong(&v12->_attributionSet, setCopy);
    objc_storeStrong(&v12->_communicationMethod, method);
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
  entries = [(WFProcessedContacts *)self entries];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__WFProcessedContacts_ContentCollection__contentCollection__block_invoke;
  v7[3] = &unk_2783451B0;
  v7[4] = self;
  v4 = [entries if_map:v7];

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