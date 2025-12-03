@interface WFContentAttributionSet
+ (id)attributionSetByMergingAttributionSets:(id)sets;
+ (id)attributionSetWithAccountBasedAppDescriptor:(id)descriptor accountIdentifier:(id)identifier disclosureLevel:(unint64_t)level originalItemIdentifier:(id)itemIdentifier;
+ (id)attributionSetWithAppDescriptor:(id)descriptor disclosureLevel:(unint64_t)level originalItemIdentifier:(id)identifier;
+ (id)attributionSetWithAttributions:(id)attributions shouldReduceAttributions:(BOOL)reduceAttributions;
+ (id)attributionSetWithOrigin:(id)origin disclosureLevel:(unint64_t)level;
+ (id)attributionSetWithOrigin:(id)origin disclosureLevel:(unint64_t)level disclosureWarnings:(id)warnings originalItemIdentifier:(id)identifier;
+ (id)attributionSetWithOrigin:(id)origin disclosureLevel:(unint64_t)level originalItemIdentifier:(id)identifier;
+ (id)combiningAttributions:(id)attributions withAttributions:(id)withAttributions;
+ (id)compactAttributionsFrom:(id)from disclosureLevel:(unint64_t)level;
+ (id)objectWithWFSerializedRepresentation:(id)representation;
+ (id)reducedAttributionsFrom:(id)from;
+ (id)shortcutsAppAttributionSet;
+ (id)shortcutsAppAttributionSetWithDisclosureLevel:(unint64_t)level;
- (BOOL)isAllowedToBeSentToDestinationWithManagedLevel:(unint64_t)level;
- (BOOL)isEligibleToShareWithResultManagedLevel:(unint64_t *)level;
- (BOOL)isEligibleToShareWithResultManagedLevel:(unint64_t *)level usingManagedConfigurationManager:(id)manager;
- (BOOL)isEqual:(id)equal;
- (BOOL)isMoreRestrictiveThan:(id)than;
- (BOOL)isSupersetOfAttributionSet:(id)set;
- (NSDictionary)wfSerializedRepresentationWithPrivateItemIdentifiers;
- (WFContentAttributionSet)initWithAttribution:(id)attribution;
- (WFContentAttributionSet)initWithAttributions:(id)attributions;
- (WFContentAttributionSet)initWithCoder:(id)coder;
- (id)allOrigins;
- (id)attributionSetByFilteringNeighborsOfContentItem:(id)item;
- (id)attributionSetByReplacingAccountWithAppOrigins;
- (id)wfSerializedRepresentation;
- (unint64_t)derivedDisclosureLevel;
- (unint64_t)derivedManagedLevel;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFContentAttributionSet

- (NSDictionary)wfSerializedRepresentationWithPrivateItemIdentifiers
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"attributions";
  attributions = [(WFContentAttributionSet *)self attributions];
  v3 = [attributions if_map:&__block_literal_global_97];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (id)wfSerializedRepresentation
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"attributions";
  attributions = [(WFContentAttributionSet *)self attributions];
  v3 = [attributions if_map:&__block_literal_global_95];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  attributions = [(WFContentAttributionSet *)self attributions];
  [coderCopy encodeObject:attributions forKey:@"attributions"];
}

- (WFContentAttributionSet)initWithCoder:(id)coder
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:3];
  v7 = [v4 setWithArray:{v6, v15, v16}];
  v8 = +[WFContentLocation allContentLocationClasses];
  v9 = [v7 setByAddingObjectsFromSet:v8];
  v10 = +[WFDisclosureWarning allDisclosureWarningClasses];
  v11 = [v9 setByAddingObjectsFromSet:v10];

  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"attributions"];

  if (v12)
  {
    self = [(WFContentAttributionSet *)self initWithAttributions:v12];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      attributions = [(WFContentAttributionSet *)self attributions];
      attributions2 = [(WFContentAttributionSet *)v5 attributions];

      v8 = [attributions isEqualToArray:attributions2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)attributionSetByFilteringNeighborsOfContentItem:(id)item
{
  itemCopy = item;
  attributions = [(WFContentAttributionSet *)self attributions];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__WFContentAttributionSet_attributionSetByFilteringNeighborsOfContentItem___block_invoke;
  v10[3] = &unk_2783449C0;
  v11 = itemCopy;
  v6 = itemCopy;
  v7 = [attributions if_map:v10];
  v8 = [WFContentAttributionSet attributionSetWithAttributions:v7];

  return v8;
}

id __75__WFContentAttributionSet_attributionSetByFilteringNeighborsOfContentItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 privateItemIdentifiers];
  if (v4)
  {
    v5 = [*(a1 + 32) cachingIdentifier];
    v6 = [v4 containsObject:v5];

    if (v6)
    {
      v7 = MEMORY[0x277CBEB70];
      v8 = [*(a1 + 32) cachingIdentifier];
      v9 = [v7 orderedSetWithObject:v8];
      [v3 setPrivateItemIdentifiers:v9];
    }
  }

  return v3;
}

- (id)attributionSetByReplacingAccountWithAppOrigins
{
  attributions = [(WFContentAttributionSet *)self attributions];
  v3 = [attributions if_map:&__block_literal_global_84];
  v4 = [WFContentAttributionSet attributionSetWithAttributions:v3 shouldReduceAttributions:0];

  return v4;
}

- (WFContentAttributionSet)initWithAttributions:(id)attributions
{
  attributionsCopy = attributions;
  v10.receiver = self;
  v10.super_class = WFContentAttributionSet;
  v5 = [(WFContentAttributionSet *)&v10 init];
  if (v5)
  {
    v6 = [attributionsCopy copy];
    attributions = v5->_attributions;
    v5->_attributions = v6;

    v8 = v5;
  }

  return v5;
}

- (WFContentAttributionSet)initWithAttribution:(id)attribution
{
  v10[1] = *MEMORY[0x277D85DE8];
  attributionCopy = attribution;
  if (!attributionCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContentAttributionSet.m" lineNumber:162 description:{@"Invalid parameter not satisfying: %@", @"contentAttribution"}];
  }

  v10[0] = attributionCopy;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = [(WFContentAttributionSet *)self initWithAttributions:v6];

  return v7;
}

- (id)allOrigins
{
  attributions = [(WFContentAttributionSet *)self attributions];
  v3 = [attributions if_compactMap:&__block_literal_global_56];

  return v3;
}

- (unint64_t)derivedManagedLevel
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  attributions = [(WFContentAttributionSet *)self attributions];
  v3 = [attributions countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(attributions);
        }

        origin = [*(*(&v10 + 1) + 8 * i) origin];
        v5 |= [origin managedLevel];
      }

      v4 = [attributions countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)derivedDisclosureLevel
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  attributions = [(WFContentAttributionSet *)self attributions];
  v3 = [attributions countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    v6 = 1;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(attributions);
      }

      if ([*(*(&v9 + 1) + 8 * v7) disclosureLevel] == 1)
      {
        break;
      }

      if (v4 == ++v7)
      {
        v4 = [attributions countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEligibleToShareWithResultManagedLevel:(unint64_t *)level usingManagedConfigurationManager:(id)manager
{
  managerCopy = manager;
  if ([managerCopy isOpenInRestrictionInEffect])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    attributions = [(WFContentAttributionSet *)self attributions];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __100__WFContentAttributionSet_isEligibleToShareWithResultManagedLevel_usingManagedConfigurationManager___block_invoke;
    v11[3] = &unk_278344910;
    v11[4] = &v12;
    v11[5] = &v16;
    [attributions enumerateObjectsUsingBlock:v11];

    if (v17[3])
    {
      if (*(v13 + 24))
      {
        if ([managerCopy mayOpenFromUnmanagedToManaged] && (objc_msgSend(managerCopy, "mayOpenFromManagedToUnmanaged") & 1) == 0)
        {
          LOBYTE(mayOpenFromManagedToUnmanaged) = 1;
          v8 = 2;
          if (!level)
          {
            goto LABEL_17;
          }
        }

        else if ([managerCopy mayOpenFromUnmanagedToManaged])
        {
          v8 = 0;
          LOBYTE(mayOpenFromManagedToUnmanaged) = 0;
          if (!level)
          {
            goto LABEL_17;
          }
        }

        else
        {
          mayOpenFromManagedToUnmanaged = [managerCopy mayOpenFromManagedToUnmanaged];
          v8 = mayOpenFromManagedToUnmanaged;
          if (!level)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_16;
      }

      v8 = 1;
    }

    else
    {
      v8 = 2;
      if (!*(v13 + 24))
      {
        v8 = 0;
      }
    }

    LOBYTE(mayOpenFromManagedToUnmanaged) = 1;
    if (!level)
    {
LABEL_17:
      _Block_object_dispose(&v12, 8);
      _Block_object_dispose(&v16, 8);
      goto LABEL_18;
    }

LABEL_16:
    *level = v8;
    goto LABEL_17;
  }

  if (level)
  {
    *level = 0;
  }

  LOBYTE(mayOpenFromManagedToUnmanaged) = 1;
LABEL_18:

  return mayOpenFromManagedToUnmanaged;
}

void __100__WFContentAttributionSet_isEligibleToShareWithResultManagedLevel_usingManagedConfigurationManager___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v6 = [v12 origin];
  v7 = [v6 managedLevel];

  if (v7 == 2)
  {
    v8 = 32;
  }

  else
  {
    v9 = [v12 origin];
    v10 = [v9 managedLevel];

    if (v10 != 1)
    {
      goto LABEL_6;
    }

    v8 = 40;
  }

  *(*(*(a1 + v8) + 8) + 24) = 1;
LABEL_6:
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v11 = *(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v11 = 0;
  }

  *a4 = v11 & 1;
}

- (BOOL)isEligibleToShareWithResultManagedLevel:(unint64_t *)level
{
  v5 = +[WFManagedConfigurationProfile defaultProfile];
  LOBYTE(level) = [(WFContentAttributionSet *)self isEligibleToShareWithResultManagedLevel:level usingManagedConfigurationManager:v5];

  return level;
}

- (BOOL)isMoreRestrictiveThan:(id)than
{
  thanCopy = than;
  attributions = [(WFContentAttributionSet *)self attributions];
  v6 = [attributions if_map:&__block_literal_global_53];

  v7 = MEMORY[0x277CBEAC0];
  attributions2 = [(WFContentAttributionSet *)self attributions];
  v9 = [v7 dictionaryWithObjects:attributions2 forKeys:v6];

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  attributions3 = [thanCopy attributions];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__WFContentAttributionSet_isMoreRestrictiveThan___block_invoke_2;
  v13[3] = &unk_2783448E8;
  v11 = v9;
  v14 = v11;
  v15 = &v16;
  [attributions3 enumerateObjectsUsingBlock:v13];

  LOBYTE(attributions3) = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return attributions3;
}

void __49__WFContentAttributionSet_isMoreRestrictiveThan___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v14 = v6;
  v8 = [v6 origin];
  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    v10 = [v9 disclosureLevel];
    if (v10 >= [v14 disclosureLevel])
    {
      v11 = [v9 origin];
      v12 = [v11 managedLevel];
      v13 = [v14 origin];
      *(*(*(a1 + 40) + 8) + 24) = v12 == [v13 managedLevel];
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = [v14 disclosureLevel] == 0;
  }

  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

- (BOOL)isSupersetOfAttributionSet:(id)set
{
  setCopy = set;
  attributions = [(WFContentAttributionSet *)self attributions];
  v6 = [attributions if_map:&__block_literal_global_91];

  v7 = MEMORY[0x277CBEAC0];
  attributions2 = [(WFContentAttributionSet *)self attributions];
  v9 = [v7 dictionaryWithObjects:attributions2 forKeys:v6];

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  attributions3 = [setCopy attributions];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__WFContentAttributionSet_isSupersetOfAttributionSet___block_invoke_2;
  v13[3] = &unk_2783448E8;
  v11 = v9;
  v14 = v11;
  v15 = &v16;
  [attributions3 enumerateObjectsUsingBlock:v13];

  LOBYTE(attributions3) = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return attributions3;
}

void __54__WFContentAttributionSet_isSupersetOfAttributionSet___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v16 = v6;
  v8 = [v6 origin];
  v9 = [v7 objectForKey:v8];

  if (v9 && (v10 = [v9 disclosureLevel], v10 >= objc_msgSend(v16, "disclosureLevel")))
  {
    v11 = [v9 origin];
    v12 = [v11 managedLevel];
    v13 = [v16 origin];
    if (v12 == [v13 managedLevel])
    {
      v14 = [v16 privateItemIdentifiers];
      v15 = [v9 privateItemIdentifiers];
      *(*(*(a1 + 40) + 8) + 24) = [v14 isSubsetOfOrderedSet:v15];
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

- (BOOL)isAllowedToBeSentToDestinationWithManagedLevel:(unint64_t)level
{
  v5 = +[WFManagedConfigurationProfile defaultProfile];
  v6 = v5;
  if (level)
  {
    v7 = 1;
    if ([v5 isOpenInRestrictionInEffect])
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 1;
      attributions = [(WFContentAttributionSet *)self attributions];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __74__WFContentAttributionSet_isAllowedToBeSentToDestinationWithManagedLevel___block_invoke;
      v10[3] = &unk_2783448A0;
      v12 = &v14;
      v11 = v6;
      levelCopy = level;
      [attributions enumerateObjectsUsingBlock:v10];

      v7 = *(v15 + 24);
      _Block_object_dispose(&v14, 8);
    }
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

void __74__WFContentAttributionSet_isAllowedToBeSentToDestinationWithManagedLevel___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 origin];
  v7 = [v6 managedLevel];

  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = [v11 origin];
  v9 = [v8 managedLevel];

  if (v9 == 3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    goto LABEL_10;
  }

  if (([*(a1 + 32) mayOpenFromManagedToUnmanaged] & 1) == 0 && *(a1 + 48) == 1 || (objc_msgSend(*(a1 + 32), "mayOpenFromUnmanagedToManaged") & 1) == 0 && *(a1 + 48) == 2)
  {
    v10 = [v11 origin];
    *(*(*(a1 + 40) + 8) + 24) = [v10 managedLevel] == *(a1 + 48);
  }

  else
  {
LABEL_9:
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

LABEL_10:
  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

+ (id)objectWithWFSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"attributions"];

  v6 = [v5 if_compactMap:&__block_literal_global_100];

  v7 = [self attributionSetWithAttributions:v6];

  return v7;
}

+ (id)reducedAttributionsFrom:(id)from
{
  v23 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if ([fromCopy count])
  {
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    orderedSet2 = [MEMORY[0x277CBEB40] orderedSet];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = fromCopy;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          if ([v12 disclosureLevel] == 1)
          {
            v13 = orderedSet2;
          }

          else
          {
            v13 = orderedSet;
          }

          [v13 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    v14 = [self compactAttributionsFrom:orderedSet disclosureLevel:0];
    v15 = [self compactAttributionsFrom:orderedSet2 disclosureLevel:1];
    v16 = [v14 arrayByAddingObjectsFromArray:v15];
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  return v16;
}

+ (id)compactAttributionsFrom:(id)from disclosureLevel:(unint64_t)level
{
  v58 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if ([fromCopy count])
  {
    selfCopy = self;
    v40 = a2;
    levelCopy = level;
    v43 = objc_opt_new();
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v42 = fromCopy;
    v10 = fromCopy;
    v11 = [v10 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v53;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v53 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v52 + 1) + 8 * i);
          disclosureWarnings = [v15 disclosureWarnings];
          v17 = [disclosureWarnings count];

          if (v17)
          {
            disclosureWarnings2 = [v15 disclosureWarnings];
            [orderedSet unionOrderedSet:disclosureWarnings2];
          }

          privateItemIdentifiers = [v15 privateItemIdentifiers];

          if (privateItemIdentifiers)
          {
            origin = [v15 origin];
            v21 = [dictionary objectForKey:origin];

            privateItemIdentifiers2 = [v15 privateItemIdentifiers];
            v23 = privateItemIdentifiers2;
            if (v21)
            {
              [v21 unionOrderedSet:privateItemIdentifiers2];
            }

            else
            {
              v24 = [privateItemIdentifiers2 mutableCopy];
              origin2 = [v15 origin];
              [dictionary setObject:v24 forKey:origin2];
            }
          }

          else
          {
            [v43 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v12);
    }

    if (VCIsInternalBuild())
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v26 = v43;
      v27 = [v26 countByEnumeratingWithState:&v48 objects:v56 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v49;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v49 != v29)
            {
              objc_enumerationMutation(v26);
            }

            origin3 = [*(*(&v48 + 1) + 8 * j) origin];
            v32 = [dictionary objectForKey:origin3];

            if (v32)
            {
              currentHandler = [MEMORY[0x277CCA890] currentHandler];
              [currentHandler handleFailureInMethod:v40 object:selfCopy file:@"WFContentAttributionSet.m" lineNumber:273 description:@"Attempting to compact attributions with mix of nonnull and nil privateItemIdentifiers is not supported"];
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v48 objects:v56 count:16];
        }

        while (v28);
      }
    }

    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __67__WFContentAttributionSet_compactAttributionsFrom_disclosureLevel___block_invoke;
    v44[3] = &unk_278344978;
    v47 = levelCopy;
    v45 = orderedSet;
    v34 = v43;
    v46 = v34;
    v35 = orderedSet;
    [dictionary enumerateKeysAndObjectsUsingBlock:v44];
    v36 = v46;
    v37 = v34;

    fromCopy = v42;
  }

  else
  {
    v37 = MEMORY[0x277CBEBF8];
  }

  return v37;
}

void __67__WFContentAttributionSet_compactAttributionsFrom_disclosureLevel___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  v9 = [v6 array];
  v10 = +[WFContentAttribution attributionWithDisclosureLevel:origin:disclosureWarnings:originalItemIdentifiers:count:](WFContentAttribution, "attributionWithDisclosureLevel:origin:disclosureWarnings:originalItemIdentifiers:count:", v5, v8, v9, v7, [v7 count]);

  [*(a1 + 40) addObject:v10];
}

+ (id)combiningAttributions:(id)attributions withAttributions:(id)withAttributions
{
  v5 = [attributions arrayByAddingObjectsFromArray:withAttributions];
  v6 = [self reducedAttributionsFrom:v5];

  return v6;
}

+ (id)shortcutsAppAttributionSetWithDisclosureLevel:(unint64_t)level
{
  v4 = [self alloc];
  v5 = [WFContentAttribution shortcutsAppAttributionWithDisclosureLevel:level];
  v6 = [v4 initWithAttribution:v5];

  return v6;
}

+ (id)shortcutsAppAttributionSet
{
  v2 = [self alloc];
  v3 = +[WFContentAttribution shortcutsAppAttribution];
  v4 = [v2 initWithAttribution:v3];

  return v4;
}

+ (id)attributionSetWithAttributions:(id)attributions shouldReduceAttributions:(BOOL)reduceAttributions
{
  reduceAttributionsCopy = reduceAttributions;
  attributionsCopy = attributions;
  v7 = attributionsCopy;
  if (reduceAttributionsCopy)
  {
    v7 = [self reducedAttributionsFrom:attributionsCopy];
  }

  v8 = [[self alloc] initWithAttributions:v7];

  return v8;
}

+ (id)attributionSetByMergingAttributionSets:(id)sets
{
  v4 = [sets if_flatMap:&__block_literal_global_73];
  v5 = [self reducedAttributionsFrom:v4];

  v6 = [[self alloc] initWithAttributions:v5];

  return v6;
}

+ (id)attributionSetWithAccountBasedAppDescriptor:(id)descriptor accountIdentifier:(id)identifier disclosureLevel:(unint64_t)level originalItemIdentifier:(id)itemIdentifier
{
  itemIdentifierCopy = itemIdentifier;
  identifierCopy = identifier;
  descriptorCopy = descriptor;
  v13 = [self alloc];
  v14 = [WFAccountContentLocation locationWithAccountIdentifier:identifierCopy appDescriptor:descriptorCopy];

  v15 = [WFContentAttribution attributionWithDisclosureLevel:level origin:v14 originalItemIdentifier:itemIdentifierCopy];

  v16 = [v13 initWithAttribution:v15];

  return v16;
}

+ (id)attributionSetWithAppDescriptor:(id)descriptor disclosureLevel:(unint64_t)level originalItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  descriptorCopy = descriptor;
  v10 = [self alloc];
  v11 = [WFAppContentLocation locationWithAppDescriptor:descriptorCopy];

  v12 = [WFContentAttribution attributionWithDisclosureLevel:level origin:v11 originalItemIdentifier:identifierCopy];

  v13 = [v10 initWithAttribution:v12];

  return v13;
}

+ (id)attributionSetWithOrigin:(id)origin disclosureLevel:(unint64_t)level disclosureWarnings:(id)warnings originalItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  warningsCopy = warnings;
  originCopy = origin;
  v13 = [self alloc];
  v14 = [WFContentAttribution attributionWithDisclosureLevel:level origin:originCopy disclosureWarnings:warningsCopy originalItemIdentifier:identifierCopy];

  v15 = [v13 initWithAttribution:v14];

  return v15;
}

+ (id)attributionSetWithOrigin:(id)origin disclosureLevel:(unint64_t)level originalItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  originCopy = origin;
  v10 = [self alloc];
  v11 = [WFContentAttribution attributionWithDisclosureLevel:level origin:originCopy originalItemIdentifier:identifierCopy];

  v12 = [v10 initWithAttribution:v11];

  return v12;
}

+ (id)attributionSetWithOrigin:(id)origin disclosureLevel:(unint64_t)level
{
  originCopy = origin;
  v7 = [self alloc];
  v8 = [WFContentAttribution attributionWithDisclosureLevel:level origin:originCopy originalItemIdentifier:0];

  v9 = [v7 initWithAttribution:v8];

  return v9;
}

@end