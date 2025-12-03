@interface PKHowToUseWalletCard
+ (id)cardToPrioritize:(id)prioritize otherCard:(id)card;
+ (id)cardsByPriority:(id)priority;
- (PKHowToUseWalletCard)initWithDictionary:(id)dictionary bundle:(id)bundle;
- (PKHowToUseWalletCard)initWithMobileAssetBundle:(id)bundle;
@end

@implementation PKHowToUseWalletCard

- (PKHowToUseWalletCard)initWithMobileAssetBundle:(id)bundle
{
  v17 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  v5 = bundleCopy;
  if (bundleCopy)
  {
    v6 = [bundleCopy URLForResource:@"card" withExtension:@"json"];
    v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v6];
    if ([v7 length])
    {
      v14 = 0;
      v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&v14];
      v9 = v14;
      if (v9)
      {
        v10 = PKLogFacilityTypeGetObject(0xBuLL);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v16 = v9;
          _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Failed to serialize json from mobile assets: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v8 = 0;
    }

    if ([v8 count])
    {
      self = [(PKHowToUseWalletCard *)self initWithDictionary:v8 bundle:v5];
      selfCopy = self;
    }

    else
    {
      v12 = PKLogFacilityTypeGetObject(0xBuLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Empty dictionary found when serializing how to use card data", buf, 2u);
      }

      selfCopy = 0;
    }
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject(0xBuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "No bundle when creating card found", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (PKHowToUseWalletCard)initWithDictionary:(id)dictionary bundle:(id)bundle
{
  v63 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  bundleCopy = bundle;
  v58.receiver = self;
  v58.super_class = PKHowToUseWalletCard;
  v8 = [(PKHowToUseWalletCard *)&v58 init];
  if (!v8)
  {
    goto LABEL_36;
  }

  v9 = [dictionaryCopy PKNumberForKey:@"version"];
  version = v8->_version;
  v8->_version = v9;

  v11 = [dictionaryCopy PKStringForKey:@"identifier"];
  identifier = v8->_identifier;
  v8->_identifier = v11;

  if (!v8->_version || ![(NSString *)v8->_identifier length])
  {
    v13 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v8->_version;
      v24 = v8->_identifier;
      *buf = 138412546;
      v60 = v23;
      v61 = 2112;
      v62 = v24;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Missing required version or identifier and both are required: version=%@ identifier=%@", buf, 0x16u);
    }

    goto LABEL_26;
  }

  v13 = [dictionaryCopy PKStringForKey:@"lotIdentifier"];
  v14 = [v13 length];
  v15 = v13;
  if (!v14)
  {
    v16 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v8->_identifier;
      *buf = 138412290;
      v60 = v17;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "No lotIdentifier for card. Using identifier '%@' instead", buf, 0xCu);
    }

    v15 = v8->_identifier;
  }

  objc_storeStrong(&v8->_lotIdentifier, v15);
  v18 = [dictionaryCopy PKStringForKey:@"cardSizeType"];
  v8->_cardSizeType = PKDiscoveryCardSizeTypeFromString(v18);
  v19 = [dictionaryCopy PKStringForKey:@"discoveryBundlePath"];
  discoveryBundlePath = v8->_discoveryBundlePath;
  v8->_discoveryBundlePath = v19;

  bundleURL = [bundleCopy bundleURL];
  if ([(NSString *)v8->_discoveryBundlePath length])
  {
    v22 = [bundleURL URLByAppendingPathComponent:v8->_discoveryBundlePath];
  }

  else
  {
    v22 = bundleURL;
  }

  v25 = v22;
  if (v22)
  {
    v26 = [v22 URLByAppendingPathComponent:@"layout.json"];
    v27 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v26];
    if ([v27 length])
    {
      v56 = v26;
      v57 = 0;
      v28 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v27 options:0 error:&v57];
      v29 = v57;
      if (v29)
      {
        v30 = v29;
        v54 = v18;
        v31 = v28;
        v32 = PKLogFacilityTypeGetObject(0x11uLL);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v60 = v30;
          _os_log_impl(&dword_1AD337000, v32, OS_LOG_TYPE_DEFAULT, "Error serializing discovery bundle: %@", buf, 0xCu);
        }

        goto LABEL_26;
      }

      v53 = v28;
      v35 = [[PKDiscoveryArticleLayout alloc] initWithDictionary:v28];
      if (v35)
      {
        v36 = v35;
        v55 = v18;
        [(PKDiscoveryArticleLayout *)v35 setItemIdentifier:v8->_identifier];
        v51 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:v25];
        [(PKDiscoveryArticleLayout *)v36 localizeWithBundle:?];
        v37 = [dictionaryCopy PKStringForKey:@"discoveryAssetsPath"];
        v52 = v36;
        if ([v37 length])
        {
          v38 = objc_alloc(MEMORY[0x1E696AAE8]);
          v39 = [bundleURL URLByAppendingPathComponent:v37];
          v40 = [v38 initWithURL:v39];

          v36 = v52;
          [(PKDiscoveryArticleLayout *)v52 setMediaBundle:v40];
        }

        v50 = v37;
        objc_storeStrong(&v8->_article, v36);
        v41 = [dictionaryCopy PKDictionaryForKey:@"requirements"];
        v42 = [[PKHowToUseWalletRequirements alloc] initWithDictionary:v41];
        requirements = v8->_requirements;
        v8->_requirements = v42;

        v44 = v53;
        deviceMeetsRequirements = [(PKHowToUseWalletRequirements *)v8->_requirements deviceMeetsRequirements];
        if (!deviceMeetsRequirements)
        {
          log = PKLogFacilityTypeGetObject(0x11uLL);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            v45 = [(PKHowToUseWalletRequirements *)v8->_requirements description];
            *buf = 138412290;
            v60 = v45;
            _os_log_impl(&dword_1AD337000, log, OS_LOG_TYPE_DEFAULT, "Device does not meet card requirements: %@. Skipping...", buf, 0xCu);

            v44 = v53;
          }
        }

        if (!deviceMeetsRequirements)
        {
          goto LABEL_27;
        }

LABEL_36:
        v34 = v8;
        goto LABEL_37;
      }

      v47 = PKLogFacilityTypeGetObject(0x11uLL);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v60 = v26;
        _os_log_impl(&dword_1AD337000, v47, OS_LOG_TYPE_DEFAULT, "Failed to create a discovery article with contents located at %@", buf, 0xCu);
      }
    }

    else
    {
      v33 = PKLogFacilityTypeGetObject(0x11uLL);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v60 = v26;
        _os_log_impl(&dword_1AD337000, v33, OS_LOG_TYPE_DEFAULT, "No layout.json found at %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v25 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "Missing required discovery bundle", buf, 2u);
    }
  }

LABEL_26:
LABEL_27:
  v34 = 0;
LABEL_37:

  return v34;
}

+ (id)cardsByPriority:(id)priority
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
        lotIdentifier = [v11 lotIdentifier];
        v13 = [v5 objectForKey:lotIdentifier];

        if (v13)
        {
          v14 = [PKHowToUseWalletCard cardToPrioritize:v13 otherCard:v11];
          if (!v14)
          {
            goto LABEL_12;
          }

          lotIdentifier3 = v14;
          if (([v14 isEqual:v13] & 1) == 0)
          {
            [v4 removeObject:v13];
            [v4 addObject:lotIdentifier3];
            lotIdentifier2 = [lotIdentifier3 lotIdentifier];
            [v5 setObject:lotIdentifier3 forKey:lotIdentifier2];
          }
        }

        else
        {
          [v4 addObject:v11];
          lotIdentifier3 = [v11 lotIdentifier];
          [v5 setObject:v11 forKey:lotIdentifier3];
        }

LABEL_12:
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  return v4;
}

+ (id)cardToPrioritize:(id)prioritize otherCard:(id)card
{
  v32 = *MEMORY[0x1E69E9840];
  prioritizeCopy = prioritize;
  cardCopy = card;
  v7 = cardCopy;
  if (!prioritizeCopy)
  {
    v14 = cardCopy;
LABEL_10:
    v15 = v14;
    goto LABEL_30;
  }

  if (!cardCopy)
  {
    v14 = prioritizeCopy;
    goto LABEL_10;
  }

  lotIdentifier = [prioritizeCopy lotIdentifier];
  lotIdentifier2 = [v7 lotIdentifier];
  v10 = lotIdentifier;
  v11 = lotIdentifier2;
  v12 = v11;
  if (v10 == v11)
  {
  }

  else
  {
    if (!v10 || !v11)
    {

LABEL_18:
      v23 = PKLogFacilityTypeGetObject(0x11uLL);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        lotIdentifier3 = [prioritizeCopy lotIdentifier];
        lotIdentifier4 = [v7 lotIdentifier];
        v28 = 138412546;
        v29 = lotIdentifier3;
        v30 = 2112;
        v31 = lotIdentifier4;
        _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "Cannot determine the priority between cards with different lot identifiers. card=%@ otherCard=%@", &v28, 0x16u);
      }

      v15 = 0;
      goto LABEL_30;
    }

    v13 = [v10 isEqualToString:v11];

    if ((v13 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  requirements = [prioritizeCopy requirements];
  requirements2 = [v7 requirements];
  if ([requirements isEqual:requirements2])
  {
    version = [prioritizeCopy version];
    version2 = [v7 version];
    if ([version isEqualToNumber:version2])
    {
      v20 = PKLogFacilityTypeGetObject(0x11uLL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [prioritizeCopy description];
        v28 = 138412290;
        v29 = v21;
        _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "Cards have equivalent parameters and requirements and cannot determine a difference. Using the first card as the priority card. card=%@", &v28, 0xCu);
      }

      v22 = prioritizeCopy;
    }

    else if ([version compare:version2] == 1)
    {
      v22 = prioritizeCopy;
    }

    else
    {
      v22 = v7;
    }

    v15 = v22;
  }

  else
  {
    version = [PKHowToUseWalletRequirements requirementsToPrioritize:requirements otherRequirements:requirements2];
    if (requirements == version)
    {
      v26 = prioritizeCopy;
    }

    else
    {
      v26 = v7;
    }

    v15 = v26;
  }

LABEL_30:

  return v15;
}

@end