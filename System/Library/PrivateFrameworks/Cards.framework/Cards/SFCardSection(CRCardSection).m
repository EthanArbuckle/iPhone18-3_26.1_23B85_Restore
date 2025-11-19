@interface SFCardSection(CRCardSection)
- (BOOL)hasNextCard;
- (id)actionCommands;
- (id)backingCardSection;
- (id)cardSectionIdentifier;
- (id)parametersForInteraction:()CRCardSection;
- (void)cardSectionIdentifier;
@end

@implementation SFCardSection(CRCardSection)

- (id)backingCardSection
{
  if ([a1 conformsToProtocol:&unk_2856014C0])
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)parametersForInteraction:()CRCardSection
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 intent];
  v31 = [v4 intentResponse];
  v32 = v5;
  v6 = [v5 _intentInstanceDescription];
  v7 = [v6 name];
  v30 = [v6 responseName];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = [a1 backingCardSection];
  v9 = [v8 parameterKeyPaths];

  v10 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v10)
  {

LABEL_23:
    if ([v32 _type] == 2)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_26;
  }

  v11 = v10;
  v28 = v6;
  v29 = v4;
  v12 = 0;
  v13 = *v34;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v34 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v33 + 1) + 8 * i);
      v16 = [v15 rangeOfString:@"."];
      if (v16 == 0x7FFFFFFFFFFFFFFFLL && v17 == 0)
      {
        v21 = 0;
        v22 = 0;
      }

      else
      {
        v19 = v16;
        v20 = v17;
        v21 = [v15 substringToIndex:v16];
        v22 = [v15 substringFromIndex:v19 + v20];
      }

      if (([v21 isEqualToString:v7] & 1) != 0 || objc_msgSend(v21, "isEqualToString:", v30))
      {
        v23 = [MEMORY[0x277CD3E50] parameterForClass:objc_opt_class() keyPath:v22];
        if (v23)
        {
          v24 = v23;
          if (!v12)
          {
            v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
          }

          [v12 addObject:v24];
        }
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
  }

  while (v11);

  v6 = v28;
  v4 = v29;
  if (!v12)
  {
    goto LABEL_23;
  }

LABEL_26:
  v25 = [v12 copy];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)actionCommands
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB18];
  v3 = [a1 backingCardSection];
  v4 = [v3 commands];
  v5 = [v2 arrayWithArray:v4];

  v6 = [a1 backingCardSection];
  v7 = [v6 nextCard];

  if (v7)
  {
    v8 = objc_alloc_init(CRNextCardCommand);
    v9 = [a1 backingCardSection];
    v10 = [v9 nextCard];
    [(CRNextCardCommand *)v8 setNextCard:v10];

    [v5 addObject:v8];
  }

  v11 = [a1 backingCardSection];
  v12 = [v11 punchoutOptions];

  if (v12)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          v19 = objc_alloc_init(CRPunchoutCommand);
          [(CRPunchoutCommand *)v19 setPunchout:v18, v23];
          [v5 addObject:v19];
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }
  }

  v20 = [v5 copy];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (BOOL)hasNextCard
{
  v1 = [a1 backingCardSection];
  v2 = [v1 nextCard];
  v3 = v2 != 0;

  return v3;
}

- (id)cardSectionIdentifier
{
  v2 = [a1 cardSectionId];
  v3 = v2;
  if (!v2 || ![v2 length] || objc_msgSend(v3, "isEqualToString:", @"0"))
  {
    v4 = [MEMORY[0x277CCAD78] UUID];
    v5 = [v4 UUIDString];

    v6 = CRLogContextCards;
    if (os_log_type_enabled(CRLogContextCards, OS_LOG_TYPE_ERROR))
    {
      [(SFCardSection(CRCardSection) *)a1 cardSectionIdentifier];
    }

    [a1 setCardSectionId:v5];
  }

  v7 = [a1 cardSectionId];

  return v7;
}

- (void)cardSectionIdentifier
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_24327C000, log, OS_LOG_TYPE_ERROR, "Card section %@ does not have a card section identifier. This is a requirement. Category CRCardSection on SFCardSection is setting one (%@) on the client's behalf as a workaround", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end