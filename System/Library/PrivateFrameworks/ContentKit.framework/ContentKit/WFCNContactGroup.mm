@interface WFCNContactGroup
+ (id)allContactGroups;
+ (id)contactGroupWithCNGroup:(id)group;
- (BOOL)containsContact:(id)contact;
- (NSArray)cachedMembers;
- (NSArray)contacts;
- (WFCNContactGroup)initWithCNGroup:(id)group;
- (id)name;
@end

@implementation WFCNContactGroup

- (BOOL)containsContact:(id)contact
{
  v31 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    cachedMembers = [(WFCNContactGroup *)self cachedMembers];
    v6 = [cachedMembers countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(cachedMembers);
          }

          identifier = [*(*(&v25 + 1) + 8 * i) identifier];
          contact = [contactCopy contact];
          identifier2 = [contact identifier];
          v13 = [identifier isEqualToString:identifier2];

          if (v13)
          {
            LOBYTE(v14) = 1;
            goto LABEL_23;
          }
        }

        v7 = [cachedMembers countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    LOBYTE(v14) = 0;
  }

  else
  {
    cachedMembers = [contactCopy formattedName];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    cachedMembers2 = [(WFCNContactGroup *)self cachedMembers];
    v14 = [cachedMembers2 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v14)
    {
      v16 = *v22;
      while (2)
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(cachedMembers2);
          }

          v18 = [getCNContactFormatterClass() stringFromContact:*(*(&v21 + 1) + 8 * j) style:0];
          v19 = [v18 isEqualToString:cachedMembers];

          if (v19)
          {
            LOBYTE(v14) = 1;
            goto LABEL_22;
          }
        }

        v14 = [cachedMembers2 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }

LABEL_23:

  return v14;
}

- (NSArray)cachedMembers
{
  v14[1] = *MEMORY[0x277D85DE8];
  cachedMembers = self->_cachedMembers;
  if (!cachedMembers)
  {
    CNContactClass = getCNContactClass();
    group = [(WFCNContactGroup *)self group];
    identifier = [group identifier];
    v7 = [CNContactClass predicateForContactsInGroupWithIdentifier:identifier];

    getCNContactStoreClass();
    v8 = objc_opt_new();
    v9 = [getCNContactFormatterClass() descriptorForRequiredKeysForStyle:0];
    v14[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v11 = [v8 unifiedContactsMatchingPredicate:v7 keysToFetch:v10 error:0];
    v12 = self->_cachedMembers;
    self->_cachedMembers = v11;

    cachedMembers = self->_cachedMembers;
  }

  return cachedMembers;
}

- (NSArray)contacts
{
  CNContactClass = getCNContactClass();
  group = [(WFCNContactGroup *)self group];
  identifier = [group identifier];
  v6 = [CNContactClass predicateForContactsInGroupWithIdentifier:identifier];

  getCNContactStoreClass();
  v7 = objc_opt_new();
  v8 = +[WFCNContact requiredKeysToFetch];
  v9 = [v7 unifiedContactsMatchingPredicate:v6 keysToFetch:v8 error:0];
  v10 = [v9 if_map:&__block_literal_global_262];

  return v10;
}

- (id)name
{
  group = [(WFCNContactGroup *)self group];
  name = [group name];

  return name;
}

- (WFCNContactGroup)initWithCNGroup:(id)group
{
  groupCopy = group;
  if (!groupCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCNContact.m" lineNumber:1000 description:{@"Invalid parameter not satisfying: %@", @"group"}];
  }

  v12.receiver = self;
  v12.super_class = WFCNContactGroup;
  v7 = [(WFCNContactGroup *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_group, group);
    v9 = v8;
  }

  return v8;
}

+ (id)contactGroupWithCNGroup:(id)group
{
  groupCopy = group;
  v5 = [[self alloc] initWithCNGroup:groupCopy];

  return v5;
}

+ (id)allContactGroups
{
  if (WFCNContactAuthorizationStatus() == 3)
  {
    getCNContactStoreClass();
    v3 = objc_opt_new();
    v4 = [v3 groupsMatchingPredicate:0 error:0];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__WFCNContactGroup_allContactGroups__block_invoke;
    v7[3] = &__block_descriptor_40_e20__24__0__CNGroup_8Q16l;
    v7[4] = self;
    v5 = [v4 if_map:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end