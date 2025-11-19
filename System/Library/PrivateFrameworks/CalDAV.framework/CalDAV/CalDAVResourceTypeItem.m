@interface CalDAVResourceTypeItem
- (id)copyParseRules;
- (void)write:(id)a3;
@end

@implementation CalDAVResourceTypeItem

- (id)copyParseRules
{
  v24 = objc_alloc(MEMORY[0x277CBEB38]);
  v2 = *MEMORY[0x277CFDDC0];
  v3 = *MEMORY[0x277CFDDD0];
  v28 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:*MEMORY[0x277CFDDC0] elementName:*MEMORY[0x277CFDDD0] objectClass:objc_opt_class() setterMethod:sel_setCalendar_];
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, v3];
  v4 = *MEMORY[0x277CFE008];
  v23 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:*MEMORY[0x277CFE008] objectClass:objc_opt_class() setterMethod:sel_setScheduleInbox_];
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, v4];
  v5 = *MEMORY[0x277CFE010];
  v21 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:*MEMORY[0x277CFE010] objectClass:objc_opt_class() setterMethod:sel_setScheduleOutbox_];
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, v5];
  v6 = *MEMORY[0x277CFDE90];
  v7 = *MEMORY[0x277CFDF40];
  v19 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:*MEMORY[0x277CFDE90] elementName:*MEMORY[0x277CFDF40] objectClass:objc_opt_class() setterMethod:sel_setIsFamilyCalendar_];
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v6, v7];
  v8 = *MEMORY[0x277CFDFB0];
  v17 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v6 elementName:*MEMORY[0x277CFDFB0] objectClass:objc_opt_class() setterMethod:sel_setNotification_];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v6, v8];
  v9 = *MEMORY[0x277CFE020];
  v10 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v6 elementName:*MEMORY[0x277CFE020] objectClass:objc_opt_class() setterMethod:sel_setSubscribed_];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v6, v9];
  v12 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v6 elementName:@"shared-owner" objectClass:objc_opt_class() setterMethod:sel_setSharedOwner_];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v6, @"shared-owner"];
  v25 = [v24 initWithObjectsAndKeys:{v28, v27, v23, v22, v21, v20, v19, v18, v17, v16, v10, v11, v12, v13, 0}];

  v29.receiver = self;
  v29.super_class = CalDAVResourceTypeItem;
  v14 = [(CoreDAVItem *)&v29 copyParseRules];
  [v25 addEntriesFromDictionary:v14];

  return v25;
}

- (void)write:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CoreDAVItem *)self name];
  v6 = [(CoreDAVItem *)self nameSpace];
  [v4 startElement:v5 inNamespace:v6 withAttributeNamesAndValues:0];

  v7 = [(CalDAVResourceTypeItem *)self calendar];

  if (v7)
  {
    v8 = [(CalDAVResourceTypeItem *)self calendar];
    [v8 write:v4];
  }

  v9 = [(CalDAVResourceTypeItem *)self scheduleInbox];

  if (v9)
  {
    v10 = [(CalDAVResourceTypeItem *)self scheduleInbox];
    [v10 write:v4];
  }

  v11 = [(CalDAVResourceTypeItem *)self scheduleOutbox];

  if (v11)
  {
    v12 = [(CalDAVResourceTypeItem *)self scheduleOutbox];
    [v12 write:v4];
  }

  v13 = [(CalDAVResourceTypeItem *)self notification];

  if (v13)
  {
    v14 = [(CalDAVResourceTypeItem *)self notification];
    [v14 write:v4];
  }

  v15 = [(CalDAVResourceTypeItem *)self subscribed];

  if (v15)
  {
    v16 = [(CalDAVResourceTypeItem *)self subscribed];
    [v16 write:v4];
  }

  v17 = [(CalDAVResourceTypeItem *)self sharedOwner];

  if (v17)
  {
    v18 = [(CalDAVResourceTypeItem *)self sharedOwner];
    [v18 write:v4];
  }

  v19 = [(CoreDAVResourceTypeItem *)self shared];

  if (v19)
  {
    v20 = [(CoreDAVResourceTypeItem *)self shared];
    [v20 write:v4];
  }

  v21 = [(CoreDAVResourceTypeItem *)self addressBook];

  if (v21)
  {
    v22 = [(CoreDAVResourceTypeItem *)self addressBook];
    [v22 write:v4];
  }

  v23 = [(CoreDAVResourceTypeItem *)self searchAddressBook];

  if (v23)
  {
    v24 = [(CoreDAVResourceTypeItem *)self searchAddressBook];
    [v24 write:v4];
  }

  v25 = [(CoreDAVResourceTypeItem *)self principal];

  if (v25)
  {
    v26 = [(CoreDAVResourceTypeItem *)self principal];
    [v26 write:v4];
  }

  v27 = [(CoreDAVResourceTypeItem *)self collection];

  if (v27)
  {
    v28 = [(CoreDAVResourceTypeItem *)self collection];
    [v28 write:v4];
  }

  v29 = [(CoreDAVResourceTypeItem *)self unauthenticated];

  if (v29)
  {
    v30 = [(CoreDAVResourceTypeItem *)self unauthenticated];
    [v30 write:v4];
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v31 = [(CoreDAVItem *)self extraChildItems];
  v32 = [v31 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v40;
    do
    {
      v35 = 0;
      do
      {
        if (*v40 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [*(*(&v39 + 1) + 8 * v35++) write:v4];
      }

      while (v33 != v35);
      v33 = [v31 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v33);
  }

  v36 = [(CoreDAVItem *)self name];
  v37 = [(CoreDAVItem *)self nameSpace];
  [v4 endElement:v36 inNamespace:v37];

  v38 = *MEMORY[0x277D85DE8];
}

@end