@interface MUIAddressListFormatter
- (MUIAddressListFormatter)initWithUserProfileProvider:(id)a3 addressBookManager:(id)a4;
- (id)_addressCommentForAddressList:(id)a3 preferFullDisplayName:(BOOL)a4;
- (id)_attributedAddressCommentForAddressList:(id)a3 preferFullDisplayName:(BOOL)a4;
- (id)attributedStringFromEmailAddressList:(id)a3;
- (id)stringForObjectValue:(id)a3;
- (id)stringFromAddressAddressList:(id)a3 preferFullDisplayName:(BOOL)a4;
- (id)stringFromEmailAddressList:(id)a3 preferFullDisplayName:(BOOL)a4;
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
  v3 = [(MUIAddressListFormatter *)self addressBookManager];
  [v3 removeClient:self];

  v4.receiver = self;
  v4.super_class = MUIAddressListFormatter;
  [(MUIAddressListFormatter *)&v4 dealloc];
}

- (MUIAddressListFormatter)initWithUserProfileProvider:(id)a3 addressBookManager:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    [MUIAddressListFormatter initWithUserProfileProvider:a2 addressBookManager:self];
  }

  v13.receiver = self;
  v13.super_class = MUIAddressListFormatter;
  v10 = [(MUIAddressListFormatter *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_userProfileProvider, a3);
    objc_storeStrong(&v11->_addressBookManager, a4);
    [(MUIAddressListFormatter *)v11 _commonInit];
    [(MFAddressBookManager *)v11->_addressBookManager addClient:v11];
  }

  return v11;
}

- (id)stringForObjectValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MUIAddressListFormatter *)self stringFromAddressAddressList:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)stringFromAddressAddressList:(id)a3 preferFullDisplayName:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 ef_map:&__block_literal_global_12];
  v7 = [v6 componentsJoinedByString:{@", "}];
  if ([v7 length])
  {
    v8 = !v4;
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
    v10 = [(MUIAddressListFormatter *)self commentCache];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __78__MUIAddressListFormatter_stringFromAddressAddressList_preferFullDisplayName___block_invoke_2;
    v13[3] = &unk_278189E38;
    v13[4] = self;
    v14 = v6;
    v15 = v4;
    v11 = [v10 objectForKey:v7 generator:v13];
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

- (id)stringFromEmailAddressList:(id)a3 preferFullDisplayName:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 ef_map:&__block_literal_global_25_0];
  v8 = [v7 componentsJoinedByString:{@", "}];

  addressCache = self->_addressCache;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__MUIAddressListFormatter_stringFromEmailAddressList_preferFullDisplayName___block_invoke_2;
  v16[3] = &unk_278189E80;
  v17 = v6;
  v10 = v6;
  v11 = [(EFLazyCache *)addressCache objectForKey:v8 generator:v16];
  v12 = [v11 firstObject];
  v13 = [v12 length];

  if (v13)
  {
    v14 = [(MUIAddressListFormatter *)self stringFromAddressAddressList:v11 preferFullDisplayName:v4];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)attributedStringFromEmailAddressList:(id)a3
{
  v4 = [a3 ef_map:&__block_literal_global_34];
  if (v4)
  {
    v5 = [(MUIAddressListFormatter *)self attributedAddressCache];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__MUIAddressListFormatter_attributedStringFromEmailAddressList___block_invoke_2;
    v8[3] = &unk_278189EC8;
    v8[4] = self;
    v9 = v4;
    v6 = [v5 objectForKey:v9 generator:v8];
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"MFAddressListsFormatterDidInvalidateCache" object:self];
}

- (id)_addressCommentForAddressList:(id)a3 preferFullDisplayName:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 ef_map:&__block_literal_global_40];
  v7 = [(MUIAddressListFormatter *)self _attributedAddressCommentForAddressList:v6 preferFullDisplayName:v4];
  v8 = [v7 string];

  return v8;
}

- (id)_attributedAddressCommentForAddressList:(id)a3 preferFullDisplayName:(BOOL)a4
{
  v93 = a4;
  v107 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(MUIAddressListFormatter *)self listFormatter];

  if (!v7)
  {
    [MUIAddressListFormatter _attributedAddressCommentForAddressList:a2 preferFullDisplayName:self];
  }

  v8 = [(MUIAddressListFormatter *)self addressBookManager];
  [v8 addressBook];

  if ([v6 count] > 1)
  {
    v89 = self;
    v15 = [(MUIAddressListFormatter *)self userProfileProvider];
    v96 = [v15 allEmailAddresses];

    v94 = [MEMORY[0x277CBEB18] array];
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v6 = v6;
    v16 = [v6 countByEnumeratingWithState:&v101 objects:v106 count:16];
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
            objc_enumerationMutation(v6);
          }

          v21 = *(*(&v101 + 1) + 8 * i);
          v22 = [v21 first];
          v23 = [v22 emailAddressValue];
          v24 = [v23 simpleAddress];
          v25 = v24;
          if (v24)
          {
            v26 = v24;
          }

          else
          {
            v26 = [v22 stringValue];
          }

          v27 = v26;

          if ((v18 & [v96 containsObject:v27] & 1) == 0)
          {
            v28 = MEMORY[0x277D07190];
            v29 = [v21 second];
            v30 = [v28 pairWithFirst:v22 second:v29];
            [v94 addObject:v30];
          }

          v18 = 1;
        }

        v17 = [v6 countByEnumeratingWithState:&v101 objects:v106 count:16];
      }

      while (v17);
    }

    v31 = v94;
    if ([v94 count])
    {
      v32 = v94;

      v6 = v32;
    }

    if ([v6 count] == 1)
    {
      v33 = [v94 lastObject];
      v34 = [v33 first];
      v35 = [v34 emailAddressValue];
      v36 = [v35 simpleAddress];
      v37 = v36;
      if (v36)
      {
        v38 = v36;
      }

      else
      {
        v38 = [v34 stringValue];
      }

      v79 = v38;

      v61 = v34;
      v80 = [v61 emailAddressValue];
      v81 = [v80 displayName];
      v82 = v81;
      if (v81)
      {
        v83 = v81;
      }

      else
      {
        v83 = [v61 stringValue];
      }

      v84 = v83;

      v60 = MFPreferredCompositeNameForAddressAndDisplayName();

      v85 = MEMORY[0x277CCA898];
      v66 = [v33 second];
      v68 = [v85 ec_emailAttributedStringWithString:v60 andEmailAddress:v66];
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
      v87 = v6;
      v39 = v6;
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
            v43 = [v42 first];
            v44 = [v42 second];
            v45 = v43;
            v46 = [v45 emailAddressValue];
            v47 = [v46 simpleAddress];
            v48 = v47;
            if (v47)
            {
              v49 = v47;
            }

            else
            {
              v49 = [v45 stringValue];
            }

            v50 = v49;

            v51 = v45;
            v52 = [v51 emailAddressValue];
            v53 = [v52 displayName];
            v54 = v53;
            if (v53)
            {
              v55 = v53;
            }

            else
            {
              v55 = [v51 stringValue];
            }

            v56 = v55;

            if (v93)
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
              v59 = [MEMORY[0x277D07190] pairWithFirst:v57 second:v44];
              [v92 addObject:v59];
            }
          }

          v95 = [v39 countByEnumeratingWithState:&v97 objects:v105 count:16];
        }

        while (v95);
      }

      v33 = v92;
      v31 = v94;
      v60 = v90;
      v61 = v91;
      if ([v92 count] == 1)
      {
        v62 = [v91 allObjects];
        v63 = [v62 firstObject];

        v64 = [v90 objectForKeyedSubscript:v63];
        v65 = v64;
        if (v63 && v64)
        {
          [v92 removeAllObjects];
          [v92 addObject:v65];
        }
      }

      v66 = [(MUIAddressListFormatter *)v89 listFormatter];
      v67 = [v92 ef_map:&__block_literal_global_50];
      v68 = [v66 attributedLocalizedStringFromList:v67];

      v6 = v88;
    }
  }

  else
  {
    v9 = [v6 lastObject];
    v10 = [v9 first];
    v11 = [v10 emailAddressValue];
    v12 = [v11 simpleAddress];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [v10 stringValue];
    }

    v69 = v14;

    v70 = v10;
    v71 = [v70 emailAddressValue];
    v72 = [v71 displayName];
    v73 = v72;
    if (v72)
    {
      v74 = v72;
    }

    else
    {
      v74 = [v70 stringValue];
    }

    v75 = v74;

    v76 = MFPreferredCompositeNameForAddressAndDisplayName();

    v77 = MEMORY[0x277CCA898];
    v78 = [v9 second];
    v68 = [v77 ec_emailAttributedStringWithString:v76 andEmailAddress:v78];
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