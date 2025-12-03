@interface PKHowToUseWalletSection
+ (id)_sectionToPrioritize:(id)prioritize otherSection:(id)section;
+ (id)sectionsByPriority:(id)priority;
- (BOOL)containsCardPassingTest:(id)test;
- (PKHowToUseWalletSection)initWithDictionary:(id)dictionary bundle:(id)bundle;
- (id)cardsPassingTest:(id)test;
- (id)localizationBundle;
@end

@implementation PKHowToUseWalletSection

- (PKHowToUseWalletSection)initWithDictionary:(id)dictionary bundle:(id)bundle
{
  v52 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  bundleCopy = bundle;
  v46.receiver = self;
  v46.super_class = PKHowToUseWalletSection;
  v8 = [(PKHowToUseWalletSection *)&v46 init];
  if (v8)
  {
    v9 = [dictionaryCopy PKStringForKey:@"identifier"];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [dictionaryCopy PKStringForKey:@"titleKey"];
    titleKey = v8->_titleKey;
    v8->_titleKey = v11;

    v13 = [dictionaryCopy PKStringForKey:@"localizationBundlePath"];
    bundleURL = [bundleCopy bundleURL];
    if ([v13 length])
    {
      v15 = [bundleURL URLByAppendingPathComponent:v13];
    }

    else
    {
      v15 = bundleURL;
    }

    p_localizationBundleURL = &v8->_localizationBundleURL;
    localizationBundleURL = v8->_localizationBundleURL;
    v8->_localizationBundleURL = v15;

    v18 = v8->_identifier;
    if (v18 && *p_localizationBundleURL)
    {
      v19 = [dictionaryCopy PKDictionaryForKey:@"requirements"];
      v20 = [[PKHowToUseWalletRequirements alloc] initWithDictionary:v19];
      requirements = v8->_requirements;
      v8->_requirements = v20;

      if ([(PKHowToUseWalletRequirements *)v8->_requirements deviceMeetsRequirements])
      {
        v39 = v19;
        v40 = bundleURL;
        v41 = v13;
        v22 = [dictionaryCopy PKArrayForKey:@"cards"];
        v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v24 = v22;
        v25 = [v24 countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v43;
          do
          {
            v28 = 0;
            do
            {
              if (*v43 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = [[PKHowToUseWalletCard alloc] initWithDictionary:*(*(&v42 + 1) + 8 * v28) bundle:bundleCopy];
              [v23 safelyAddObject:v29];

              ++v28;
            }

            while (v26 != v28);
            v26 = [v24 countByEnumeratingWithState:&v42 objects:v47 count:16];
          }

          while (v26);
        }

        v30 = [PKHowToUseWalletCard cardsByPriority:v23];
        cards = v8->_cards;
        v8->_cards = v30;

        goto LABEL_16;
      }

      v35 = PKLogFacilityTypeGetObject(0x11uLL);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        [(PKHowToUseWalletRequirements *)v8->_requirements description];
        v37 = v36 = bundleURL;
        *buf = 138412290;
        v49 = v37;
        _os_log_impl(&dword_1AD337000, v35, OS_LOG_TYPE_DEFAULT, "Device does not meet section requirements: %@. Skipping...", buf, 0xCu);

        bundleURL = v36;
      }
    }

    else
    {
      v33 = PKLogFacilityTypeGetObject(0x11uLL);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *p_localizationBundleURL;
        *buf = 138412546;
        v49 = v18;
        v50 = 2112;
        v51 = v34;
        _os_log_impl(&dword_1AD337000, v33, OS_LOG_TYPE_DEFAULT, "Missing an identifier or localization bundle and both are required: identifier=%@ localization bundle=%@", buf, 0x16u);
      }
    }

    v32 = 0;
    goto LABEL_24;
  }

LABEL_16:
  v32 = v8;
LABEL_24:

  return v32;
}

- (BOOL)containsCardPassingTest:(id)test
{
  testCopy = test;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__PKHowToUseWalletSection_containsCardPassingTest___block_invoke;
  v9[3] = &unk_1E79CA4F0;
  v10 = testCopy;
  v5 = testCopy;
  v6 = [(PKHowToUseWalletSection *)self cardsPassingTest:v9];
  v7 = [v6 count] != 0;

  return v7;
}

uint64_t __51__PKHowToUseWalletSection_containsCardPassingTest___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *a3 = 1;
  }

  return result;
}

- (id)cardsPassingTest:(id)test
{
  testCopy = test;
  cards = self->_cards;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__PKHowToUseWalletSection_cardsPassingTest___block_invoke;
  v9[3] = &unk_1E79CA518;
  v10 = testCopy;
  v6 = testCopy;
  v7 = [(NSArray *)cards pk_objectsPassingTest:v9];

  return v7;
}

- (id)localizationBundle
{
  v2 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:self->_localizationBundleURL];

  return v2;
}

+ (id)sectionsByPriority:(id)priority
{
  v23 = *MEMORY[0x1E69E9840];
  priorityCopy = priority;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = priorityCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        identifier = [v11 identifier];
        v13 = [v5 objectForKey:identifier];

        if (v13)
        {
          v14 = [PKHowToUseWalletSection _sectionToPrioritize:v13 otherSection:v11];
          if (!v14)
          {
            goto LABEL_12;
          }

          identifier3 = v14;
          if (([v14 isEqual:v13] & 1) == 0)
          {
            [v4 removeObject:v13];
            [v4 addObject:identifier3];
            identifier2 = [identifier3 identifier];
            [v5 setObject:identifier3 forKey:identifier2];
          }
        }

        else
        {
          [v4 addObject:v11];
          identifier3 = [v11 identifier];
          [v5 setObject:v11 forKey:identifier3];
        }

LABEL_12:
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  return v4;
}

+ (id)_sectionToPrioritize:(id)prioritize otherSection:(id)section
{
  v31 = *MEMORY[0x1E69E9840];
  prioritizeCopy = prioritize;
  sectionCopy = section;
  v7 = sectionCopy;
  if (!prioritizeCopy)
  {
    v14 = sectionCopy;
LABEL_10:
    v15 = v14;
    goto LABEL_26;
  }

  if (!sectionCopy)
  {
    v14 = prioritizeCopy;
    goto LABEL_10;
  }

  identifier = [prioritizeCopy identifier];
  identifier2 = [v7 identifier];
  v10 = identifier;
  v11 = identifier2;
  v12 = v11;
  if (v10 == v11)
  {

    goto LABEL_12;
  }

  if (v10 && v11)
  {
    v13 = [v10 isEqualToString:v11];

    if ((v13 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_12:
    requirements = [prioritizeCopy requirements];
    requirements2 = [v7 requirements];
    if ([requirements isEqual:requirements2])
    {
      cards = [prioritizeCopy cards];
      v19 = [cards count];
      cards2 = [v7 cards];
      if (v19 >= [cards2 count])
      {
        v21 = prioritizeCopy;
      }

      else
      {
        v21 = v7;
      }

      v15 = v21;
    }

    else
    {
      cards = [PKHowToUseWalletRequirements requirementsToPrioritize:requirements otherRequirements:requirements2];
      if (requirements == cards)
      {
        v25 = prioritizeCopy;
      }

      else
      {
        v25 = v7;
      }

      v15 = v25;
    }

    goto LABEL_26;
  }

LABEL_18:
  v22 = PKLogFacilityTypeGetObject(0x11uLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    identifier3 = [prioritizeCopy identifier];
    identifier4 = [v7 identifier];
    v27 = 138412546;
    v28 = identifier3;
    v29 = 2112;
    v30 = identifier4;
    _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "Cannot determine the priority between sections with different identifiers. section=%@ otherSection=%@", &v27, 0x16u);
  }

  v15 = 0;
LABEL_26:

  return v15;
}

@end