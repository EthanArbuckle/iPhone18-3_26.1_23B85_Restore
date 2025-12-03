@interface MUIAddressListFormatter
- (MUIAddressListFormatter)initWithUserProfileProvider:(id)provider addressBookManager:(id)manager;
- (id)_addressCommentForAddressList:(id)list preferFullDisplayName:(BOOL)name;
- (id)_attributedAddressCommentForAddressList:(id)list preferFullDisplayName:(BOOL)name;
- (id)attributedStringFromEmailAddressList:(id)list;
- (id)stringForObjectValue:(id)value;
- (id)stringFromAddressAddressList:(id)list preferFullDisplayName:(BOOL)name;
- (id)stringFromEmailAddressList:(id)list preferFullDisplayName:(BOOL)name;
- (void)_commonInit;
- (void)_invalidateCache;
- (void)dealloc;
@end

@implementation MUIAddressListFormatter

- (void)_commonInit
{
  v3 = [objc_alloc(MEMORY[0x277D07160]) initWithCountLimit:100];
  commentCache = self->_commentCache;
  self->_commentCache = v3;

  v5 = [objc_alloc(MEMORY[0x277D07160]) initWithCountLimit:100];
  addressCache = self->_addressCache;
  self->_addressCache = v5;

  v7 = [objc_alloc(MEMORY[0x277D07160]) initWithCountLimit:100];
  attributedAddressCache = self->_attributedAddressCache;
  self->_attributedAddressCache = v7;

  self->_listFormatter = objc_alloc_init(MUILocalizationListFormatter);

  MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  addressBookManager = [(MUIAddressListFormatter *)self addressBookManager];
  [addressBookManager removeClient:self];

  v4.receiver = self;
  v4.super_class = MUIAddressListFormatter;
  [(MUIAddressListFormatter *)&v4 dealloc];
}

- (MUIAddressListFormatter)initWithUserProfileProvider:(id)provider addressBookManager:(id)manager
{
  providerCopy = provider;
  managerCopy = manager;
  if (!providerCopy)
  {
    [MUIAddressListFormatter initWithUserProfileProvider:a2 addressBookManager:self];
  }

  v13.receiver = self;
  v13.super_class = MUIAddressListFormatter;
  v10 = [(MUIAddressListFormatter *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_userProfileProvider, provider);
    objc_storeStrong(&v11->_addressBookManager, manager);
    [(MUIAddressListFormatter *)v11 _commonInit];
    [(MFAddressBookManager *)v11->_addressBookManager addClient:v11];
  }

  return v11;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MUIAddressListFormatter *)self stringFromAddressAddressList:valueCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)stringFromAddressAddressList:(id)list preferFullDisplayName:(BOOL)name
{
  nameCopy = name;
  v6 = [list ef_map:&__block_literal_global_12];
  v7 = [v6 componentsJoinedByString:{@", "}];
  if ([v7 length])
  {
    v8 = !nameCopy;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = [v7 stringByAppendingString:{@", prefersFullDisplayName"}];

    v7 = v9;
  }

  if (v7 && [v7 length])
  {
    commentCache = [(MUIAddressListFormatter *)self commentCache];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __78__MUIAddressListFormatter_stringFromAddressAddressList_preferFullDisplayName___block_invoke_2;
    v13[3] = &unk_278189E38;
    v13[4] = self;
    v14 = v6;
    v15 = nameCopy;
    v11 = [commentCache objectForKey:v7 generator:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id __78__MUIAddressListFormatter_stringFromAddressAddressList_preferFullDisplayName___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 emailAddressValue];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 displayName];
    v6 = [v5 emailAddressValue];

    if (v6 && ([v6 stringValue], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "simpleAddress"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, (v9 & 1) == 0))
    {
      v10 = [v4 simpleAddress];
    }

    else
    {
      v10 = [v4 stringValue];
    }

    v11 = v10;
  }

  else
  {
    v11 = [v2 stringValue];
  }

  return v11;
}

- (id)stringFromEmailAddressList:(id)list preferFullDisplayName:(BOOL)name
{
  nameCopy = name;
  listCopy = list;
  v7 = [listCopy ef_map:&__block_literal_global_25_0];
  v8 = [v7 componentsJoinedByString:{@", "}];

  addressCache = self->_addressCache;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__MUIAddressListFormatter_stringFromEmailAddressList_preferFullDisplayName___block_invoke_2;
  v16[3] = &unk_278189E80;
  v17 = listCopy;
  v10 = listCopy;
  v11 = [(EFLazyCache *)addressCache objectForKey:v8 generator:v16];
  firstObject = [v11 firstObject];
  v13 = [firstObject length];

  if (v13)
  {
    v14 = [(MUIAddressListFormatter *)self stringFromAddressAddressList:v11 preferFullDisplayName:nameCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)attributedStringFromEmailAddressList:(id)list
{
  v4 = [list ef_map:&__block_literal_global_34];
  if (v4)
  {
    attributedAddressCache = [(MUIAddressListFormatter *)self attributedAddressCache];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__MUIAddressListFormatter_attributedStringFromEmailAddressList___block_invoke_2;
    v8[3] = &unk_278189EC8;
    v8[4] = self;
    v9 = v4;
    v6 = [attributedAddressCache objectForKey:v9 generator:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __64__MUIAddressListFormatter_attributedStringFromEmailAddressList___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 emailAddressValue];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 displayName];
    v6 = [v5 emailAddressValue];

    if (v6 && ([v6 stringValue], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "simpleAddress"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, (v9 & 1) == 0))
    {
      v10 = [v4 simpleAddress];
    }

    else
    {
      v10 = [v4 stringValue];
    }

    v11 = v10;
  }

  else
  {
    v11 = [v2 stringValue];
  }

  v12 = [MEMORY[0x277D07190] pairWithFirst:v11 second:v2];

  return v12;
}

- (void)_invalidateCache
{
  [(EFLazyCache *)self->_commentCache removeAllObjects];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"MFAddressListsFormatterDidInvalidateCache" object:self];
}

- (id)_addressCommentForAddressList:(id)list preferFullDisplayName:(BOOL)name
{
  nameCopy = name;
  v6 = [list ef_map:&__block_literal_global_40];
  v7 = [(MUIAddressListFormatter *)self _attributedAddressCommentForAddressList:v6 preferFullDisplayName:nameCopy];
  string = [v7 string];

  return string;
}

- (id)_attributedAddressCommentForAddressList:(id)list preferFullDisplayName:(BOOL)name
{
  nameCopy = name;
  v107 = *MEMORY[0x277D85DE8];
  listCopy = list;
  listFormatter = [(MUIAddressListFormatter *)self listFormatter];

  if (!listFormatter)
  {
    [MUIAddressListFormatter _attributedAddressCommentForAddressList:a2 preferFullDisplayName:self];
  }

  addressBookManager = [(MUIAddressListFormatter *)self addressBookManager];
  [addressBookManager addressBook];

  if ([listCopy count] > 1)
  {
    selfCopy = self;
    userProfileProvider = [(MUIAddressListFormatter *)self userProfileProvider];
    allEmailAddresses = [userProfileProvider allEmailAddresses];

    array = [MEMORY[0x277CBEB18] array];
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    listCopy = listCopy;
    v16 = [listCopy countByEnumeratingWithState:&v101 objects:v106 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v102;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v102 != v19)
          {
            objc_enumerationMutation(listCopy);
          }

          v21 = *(*(&v101 + 1) + 8 * i);
          first = [v21 first];
          emailAddressValue = [first emailAddressValue];
          simpleAddress = [emailAddressValue simpleAddress];
          v25 = simpleAddress;
          if (simpleAddress)
          {
            stringValue = simpleAddress;
          }

          else
          {
            stringValue = [first stringValue];
          }

          v27 = stringValue;

          if ((v18 & [allEmailAddresses containsObject:v27] & 1) == 0)
          {
            v28 = MEMORY[0x277D07190];
            second = [v21 second];
            v30 = [v28 pairWithFirst:first second:second];
            [array addObject:v30];
          }

          v18 = 1;
        }

        v17 = [listCopy countByEnumeratingWithState:&v101 objects:v106 count:16];
      }

      while (v17);
    }

    v31 = array;
    if ([array count])
    {
      v32 = array;

      listCopy = v32;
    }

    if ([listCopy count] == 1)
    {
      lastObject = [array lastObject];
      first2 = [lastObject first];
      emailAddressValue2 = [first2 emailAddressValue];
      simpleAddress2 = [emailAddressValue2 simpleAddress];
      v37 = simpleAddress2;
      if (simpleAddress2)
      {
        stringValue2 = simpleAddress2;
      }

      else
      {
        stringValue2 = [first2 stringValue];
      }

      v79 = stringValue2;

      v61 = first2;
      emailAddressValue3 = [v61 emailAddressValue];
      displayName = [emailAddressValue3 displayName];
      v82 = displayName;
      if (displayName)
      {
        stringValue3 = displayName;
      }

      else
      {
        stringValue3 = [v61 stringValue];
      }

      v84 = stringValue3;

      v60 = MFPreferredCompositeNameForAddressAndDisplayName();

      v85 = MEMORY[0x277CCA898];
      second2 = [lastObject second];
      v68 = [v85 ec_emailAttributedStringWithString:v60 andEmailAddress:second2];
    }

    else
    {
      v92 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v91 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v90 = objc_opt_new();
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v87 = listCopy;
      v39 = listCopy;
      v95 = [v39 countByEnumeratingWithState:&v97 objects:v105 count:16];
      if (v95)
      {
        v40 = *v98;
        do
        {
          for (j = 0; j != v95; ++j)
          {
            if (*v98 != v40)
            {
              objc_enumerationMutation(v39);
            }

            v42 = *(*(&v97 + 1) + 8 * j);
            first3 = [v42 first];
            second3 = [v42 second];
            v45 = first3;
            emailAddressValue4 = [v45 emailAddressValue];
            simpleAddress3 = [emailAddressValue4 simpleAddress];
            v48 = simpleAddress3;
            if (simpleAddress3)
            {
              stringValue4 = simpleAddress3;
            }

            else
            {
              stringValue4 = [v45 stringValue];
            }

            v50 = stringValue4;

            v51 = v45;
            emailAddressValue5 = [v51 emailAddressValue];
            displayName2 = [emailAddressValue5 displayName];
            v54 = displayName2;
            if (displayName2)
            {
              stringValue5 = displayName2;
            }

            else
            {
              stringValue5 = [v51 stringValue];
            }

            v56 = stringValue5;

            if (nameCopy)
            {
              v57 = v56;
            }

            else
            {
              v57 = MFPreferredAbbreviatedNameForAddressAndDisplayName();
            }

            v58 = v57;
            if (v57)
            {
              v59 = [MEMORY[0x277D07190] pairWithFirst:v57 second:second3];
              [v92 addObject:v59];
            }
          }

          v95 = [v39 countByEnumeratingWithState:&v97 objects:v105 count:16];
        }

        while (v95);
      }

      lastObject = v92;
      v31 = array;
      v60 = v90;
      v61 = v91;
      if ([v92 count] == 1)
      {
        allObjects = [v91 allObjects];
        firstObject = [allObjects firstObject];

        v64 = [v90 objectForKeyedSubscript:firstObject];
        v65 = v64;
        if (firstObject && v64)
        {
          [v92 removeAllObjects];
          [v92 addObject:v65];
        }
      }

      second2 = [(MUIAddressListFormatter *)selfCopy listFormatter];
      v67 = [v92 ef_map:&__block_literal_global_50];
      v68 = [second2 attributedLocalizedStringFromList:v67];

      listCopy = v88;
    }
  }

  else
  {
    lastObject2 = [listCopy lastObject];
    first4 = [lastObject2 first];
    emailAddressValue6 = [first4 emailAddressValue];
    simpleAddress4 = [emailAddressValue6 simpleAddress];
    v13 = simpleAddress4;
    if (simpleAddress4)
    {
      stringValue6 = simpleAddress4;
    }

    else
    {
      stringValue6 = [first4 stringValue];
    }

    v69 = stringValue6;

    v70 = first4;
    emailAddressValue7 = [v70 emailAddressValue];
    displayName3 = [emailAddressValue7 displayName];
    v73 = displayName3;
    if (displayName3)
    {
      stringValue7 = displayName3;
    }

    else
    {
      stringValue7 = [v70 stringValue];
    }

    v75 = stringValue7;

    v76 = MFPreferredCompositeNameForAddressAndDisplayName();

    v77 = MEMORY[0x277CCA898];
    second4 = [lastObject2 second];
    v68 = [v77 ec_emailAttributedStringWithString:v76 andEmailAddress:second4];
  }

  return v68;
}

id __89__MUIAddressListFormatter__attributedAddressCommentForAddressList_preferFullDisplayName___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCA898];
  v3 = a2;
  v4 = [v3 first];
  v5 = [v3 second];

  v6 = [v2 ec_emailAttributedStringWithString:v4 andEmailAddress:v5];

  return v6;
}

- (void)initWithUserProfileProvider:(uint64_t)a1 addressBookManager:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MUIAddressListFormatter.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"userProfileProvider"}];
}

- (void)_attributedAddressCommentForAddressList:(uint64_t)a1 preferFullDisplayName:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MUIAddressListFormatter.m" lineNumber:166 description:@"A valid instance of MFLocalizationListFormatter is needed"];
}

@end