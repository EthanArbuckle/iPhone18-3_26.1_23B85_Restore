@interface PKPaymentSetupProductModel
- (PKPaymentSetupProductModel)init;
- (id)_paymentSetupProductsWithProducts:(id)products existingPaymentSetupProducts:(id)setupProducts;
- (id)allSections;
- (id)availableProductsForFeatureIdentifier:(unint64_t)identifier;
- (id)availableProductsForProductIdentifiers:(id)identifiers;
- (id)description;
- (id)filteredPaymentSetupProductModel:(id)model mobileCarrierRegion:(id)region deviceRegion:(id)deviceRegion cardOnFiles:(id)files;
- (id)identityProductForState:(id)state country:(id)country;
- (id)productsForFeatureIdentifier:(unint64_t)identifier;
- (id)productsForProductIdentifiers:(id)identifiers;
- (id)setupProductsOfType:(unint64_t)type;
- (void)_updatePaymentSetupProduct:(id)product displayName:(id)name localizedDescription:(id)description longLocalizedDescription:(id)localizedDescription partnerArray:(id)array productIdentifier:(id)identifier paymentOptions:(id)options termsURL:(id)self0 provisioningMethodDetailsList:(id)self1 readerModeMetadata:(id)self2 requiredFields:(id)self3 imageAssets:(id)self4 minimumOSVersion:(id)self5 region:(id)self6 regionData:(id)self7 hsa2Requirement:(id)self8 suppressPendingPurchases:(id)self9 supportedTransitNetworkIdentifiers:(id)identifiers onboardingItems:(id)items actionBaseURL:(id)rL productState:(id)state minimumProductAge:(id)age maximumProductAge:(id)productAge minimumTargetUserSupportedAge:(id)supportedAge associatedStoreIdentifiers:(id)storeIdentifiers appLaunchURL:(id)uRL regionIdentifier:(id)regionIdentifier type:(id)product0 localizedNotificationTitle:(id)product1 localizedNotificationMessage:(id)product2 discoveryCardIdentifier:(id)product3 clientInfo:(id)product4 searchTerms:(id)product5 featureIdentifier:(id)product6 criteriaIdentifier:(id)product7 showOtherProviders:(id)product8;
- (void)addCarKeyCategory;
- (void)addManualEntrySection:(id)section;
- (void)removeCarKeyCategory;
- (void)removePaymentSetupProducts:(id)products;
- (void)setAllSections:(id)sections;
- (void)setPaymentSetupProducts:(id)products;
- (void)updatePaymentSetupProducts:(id)products;
- (void)updateWithPaymentSetupProductsResponse:(id)response productsFilter:(id)filter sectionsFilter:(id)sectionsFilter;
@end

@implementation PKPaymentSetupProductModel

- (PKPaymentSetupProductModel)init
{
  v8.receiver = self;
  v8.super_class = PKPaymentSetupProductModel;
  v2 = [(PKPaymentSetupProductModel *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    paymentSetupProducts = v2->_paymentSetupProducts;
    v2->_paymentSetupProducts = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    allSections = v2->_allSections;
    v2->_allSections = v5;
  }

  return v2;
}

- (id)allSections
{
  v2 = [(NSMutableArray *)self->_allSections copy];

  return v2;
}

- (void)setAllSections:(id)sections
{
  v4 = [sections mutableCopy];
  allSections = self->_allSections;
  self->_allSections = v4;
}

- (void)updatePaymentSetupProducts:(id)products
{
  v17 = *MEMORY[0x1E69E9840];
  productsCopy = products;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [productsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(productsCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        paymentSetupProducts = self->_paymentSetupProducts;
        productIdentifier = [v9 productIdentifier];
        [(NSMutableDictionary *)paymentSetupProducts safelySetObject:v9 forKey:productIdentifier];
      }

      v6 = [productsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)removePaymentSetupProducts:(id)products
{
  v16 = *MEMORY[0x1E69E9840];
  productsCopy = products;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [productsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(productsCopy);
        }

        paymentSetupProducts = self->_paymentSetupProducts;
        productIdentifier = [*(*(&v11 + 1) + 8 * v8) productIdentifier];
        [(NSMutableDictionary *)paymentSetupProducts removeObjectForKey:productIdentifier];

        ++v8;
      }

      while (v6 != v8);
      v6 = [productsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)setPaymentSetupProducts:(id)products
{
  paymentSetupProducts = self->_paymentSetupProducts;
  productsCopy = products;
  [(NSMutableDictionary *)paymentSetupProducts removeAllObjects];
  [(PKPaymentSetupProductModel *)self updatePaymentSetupProducts:productsCopy];
}

- (id)setupProductsOfType:(unint64_t)type
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allValues = [(NSMutableDictionary *)self->_paymentSetupProducts allValues];
  v7 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        configuration = [v11 configuration];
        type = [configuration type];

        if (type == type)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

- (id)productsForProductIdentifiers:(id)identifiers
{
  v19 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = identifiersCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMutableDictionary *)self->_paymentSetupProducts objectForKey:*(*(&v14 + 1) + 8 * i), v14];
        [v5 safelyAddObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)availableProductsForProductIdentifiers:(id)identifiers
{
  v21 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = identifiersCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMutableDictionary *)self->_paymentSetupProducts objectForKey:*(*(&v16 + 1) + 8 * i), v16];
        configuration = [v11 configuration];
        state = [configuration state];

        if (state != 2)
        {
          [v5 safelyAddObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

- (id)productsForFeatureIdentifier:(unint64_t)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allValues = [(NSMutableDictionary *)self->_paymentSetupProducts allValues];
  v7 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        configuration = [v11 configuration];
        featureIdentifier = [configuration featureIdentifier];

        if (featureIdentifier == identifier)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

- (id)availableProductsForFeatureIdentifier:(unint64_t)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allValues = [(NSMutableDictionary *)self->_paymentSetupProducts allValues];
  v7 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        configuration = [v11 configuration];
        state = [configuration state];

        configuration2 = [v11 configuration];
        if ([configuration2 featureIdentifier] != identifier || state == 2)
        {
        }

        else
        {

          if (state)
          {
            [v5 addObject:v11];
          }
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v16 = [v5 copy];

  return v16;
}

- (id)identityProductForState:(id)state country:(id)country
{
  v34 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  countryCopy = country;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [(NSMutableDictionary *)self->_paymentSetupProducts allValues];
  v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v30 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v29 + 1) + 8 * v10);
      configuration = [v11 configuration];
      type = [configuration type];

      if (type != 10)
      {
        goto LABEL_21;
      }

      clientInfo = [v11 clientInfo];
      v15 = [clientInfo PKStringForKey:@"administrativeArea"];

      clientInfo2 = [v11 clientInfo];
      v17 = [clientInfo2 PKStringForKey:@"country"];

      v18 = v15;
      v19 = stateCopy;
      v20 = v19;
      if (v18 == v19)
      {
        break;
      }

      if (stateCopy && v18)
      {
        v21 = [v18 isEqualToString:v19];

        if (!v21)
        {
          goto LABEL_20;
        }

        goto LABEL_13;
      }

      v22 = v18;
LABEL_19:

LABEL_20:
LABEL_21:
      if (v8 == ++v10)
      {
        v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_23;
      }
    }

LABEL_13:
    v22 = v17;
    v23 = countryCopy;
    v20 = v23;
    if (v22 == v23)
    {

LABEL_25:
      v25 = v11;

      goto LABEL_26;
    }

    if (countryCopy && v22)
    {
      v24 = [v22 isEqualToString:v23];

      if (v24)
      {
        goto LABEL_25;
      }

      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_23:
  v25 = 0;
LABEL_26:

  return v25;
}

- (void)updateWithPaymentSetupProductsResponse:(id)response productsFilter:(id)filter sectionsFilter:(id)sectionsFilter
{
  v104 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  filterCopy = filter;
  sectionsFilterCopy = sectionsFilter;
  v66 = responseCopy;
  v9 = [responseCopy objectForKeyedSubscript:@"products"];
  objc_opt_class();
  v63 = v9;
  selfCopy = self;
  if (objc_opt_isKindOfClass())
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    allValues = [(NSMutableDictionary *)self->_paymentSetupProducts allValues];
    v12 = [allValues countByEnumeratingWithState:&v93 objects:v103 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v94;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v94 != v14)
          {
            objc_enumerationMutation(allValues);
          }

          v16 = *(*(&v93 + 1) + 8 * i);
          if (([v16 isServerDriven] & 1) == 0)
          {
            productIdentifier = [v16 productIdentifier];
            [(NSMutableDictionary *)v10 safelySetObject:v16 forKey:productIdentifier];
          }
        }

        v13 = [allValues countByEnumeratingWithState:&v93 objects:v103 count:16];
      }

      while (v13);
    }

    v18 = [(PKPaymentSetupProductModel *)selfCopy _paymentSetupProductsWithProducts:v63 existingPaymentSetupProducts:selfCopy->_paymentSetupProducts];
    if (filterCopy)
    {
      v19 = filterCopy[2]();
    }

    else
    {
      v19 = v18;
    }

    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v21 = v19;
    v22 = [v21 countByEnumeratingWithState:&v89 objects:v102 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v90;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v90 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v89 + 1) + 8 * j);
          productIdentifier2 = [v26 productIdentifier];
          [(NSMutableDictionary *)v10 safelySetObject:v26 forKey:productIdentifier2];
        }

        v23 = [v21 countByEnumeratingWithState:&v89 objects:v102 count:16];
      }

      while (v23);
    }

    self = selfCopy;
    paymentSetupProducts = selfCopy->_paymentSetupProducts;
    selfCopy->_paymentSetupProducts = v10;
  }

  else
  {
    v20 = self->_paymentSetupProducts;
    self->_paymentSetupProducts = 0;
  }

  v29 = [v66 objectForKeyedSubscript:@"categories"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    allSections = self->_allSections;
    self->_allSections = 0;
    goto LABEL_87;
  }

  v30 = [v29 PKStringForKey:@"localizedTitle"];
  localizedTitle = self->_localizedTitle;
  self->_localizedTitle = v30;

  v32 = [v29 PKStringForKey:@"localizedSubtitle"];
  localizedSubtitle = self->_localizedSubtitle;
  self->_localizedSubtitle = v32;

  v67 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v62 = v29;
  [v29 PKArrayContaining:objc_opt_class() forKey:@"sections"];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v88 = 0u;
  v70 = [obj countByEnumeratingWithState:&v85 objects:v101 count:16];
  if (!v70)
  {
    goto LABEL_82;
  }

  v69 = *v86;
  do
  {
    for (k = 0; k != v70; ++k)
    {
      if (*v86 != v69)
      {
        objc_enumerationMutation(obj);
      }

      v35 = [[PKPaymentSetupProductSection alloc] initWithDictionary:*(*(&v85 + 1) + 8 * k)];
      if (v35)
      {
        v71 = k;
        v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        categories = [(PKPaymentSetupProductSection *)v35 categories];
        v75 = [categories countByEnumeratingWithState:&v81 objects:v100 count:16];
        if (!v75)
        {
          goto LABEL_74;
        }

        v74 = *v82;
        while (1)
        {
          for (m = 0; m != v75; ++m)
          {
            if (*v82 != v74)
            {
              objc_enumerationMutation(categories);
            }

            v38 = *(*(&v81 + 1) + 8 * m);
            identifier = [v38 identifier];
            if ([identifier isEqualToString:@"transit"])
            {
              selfCopy9 = self;
              v41 = 3;
LABEL_43:
              v42 = [(PKPaymentSetupProductModel *)selfCopy9 setupProductsOfType:v41];
              goto LABEL_44;
            }

            if ([identifier isEqualToString:@"carKey"])
            {
              selfCopy9 = self;
              v41 = 11;
              goto LABEL_43;
            }

            if ([identifier isEqualToString:@"identity"])
            {
              selfCopy9 = self;
              v41 = 10;
              goto LABEL_43;
            }

            if ([identifier isEqualToString:@"eMoney"])
            {
              selfCopy9 = self;
              v41 = 4;
              goto LABEL_43;
            }

            if ([identifier isEqualToString:@"appleCard"])
            {
              selfCopy10 = self;
              v52 = 2;
            }

            else
            {
              if (![identifier isEqualToString:@"asp"])
              {
                if ([identifier isEqualToString:@"creditDebit"])
                {
                  selfCopy9 = self;
                  v41 = 5;
                }

                else if ([identifier isEqualToString:@"Barcode"])
                {
                  selfCopy9 = self;
                  v41 = 9;
                }

                else
                {
                  if (![identifier isEqualToString:@"issuerInstallments"])
                  {
                    v43 = 0;
LABEL_65:
                    v45 = 0;
                    goto LABEL_66;
                  }

                  selfCopy9 = self;
                  v41 = 12;
                }

                goto LABEL_43;
              }

              selfCopy10 = self;
              v52 = 4;
            }

            v42 = [(PKPaymentSetupProductModel *)selfCopy10 productsForFeatureIdentifier:v52];
LABEL_44:
            v43 = v42;
            if (!v42)
            {
              goto LABEL_65;
            }

            v76 = identifier;
            v44 = v35;
            v45 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            v77 = 0u;
            v78 = 0u;
            v79 = 0u;
            v80 = 0u;
            v43 = v43;
            v46 = [v43 countByEnumeratingWithState:&v77 objects:v99 count:16];
            if (v46)
            {
              v47 = v46;
              v48 = *v78;
              do
              {
                for (n = 0; n != v47; ++n)
                {
                  if (*v78 != v48)
                  {
                    objc_enumerationMutation(v43);
                  }

                  productIdentifier3 = [*(*(&v77 + 1) + 8 * n) productIdentifier];
                  [v45 addObject:productIdentifier3];
                }

                v47 = [v43 countByEnumeratingWithState:&v77 objects:v99 count:16];
              }

              while (v47);
            }

            self = selfCopy;
            v35 = v44;
            identifier = v76;
LABEL_66:
            needsProducts = [v38 needsProducts];
            if ([v45 count] || (needsProducts & 1) == 0)
            {
              [v38 setProductIdentifiers:v45];
              [v36 addObject:v38];
            }

            else
            {
              v54 = PKLogFacilityTypeGetObject(7uLL);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                identifier2 = [v38 identifier];
                *buf = 138412290;
                v98 = identifier2;
                _os_log_impl(&dword_1AD337000, v54, OS_LOG_TYPE_DEFAULT, "Dropping category: %@ as no matching products found", buf, 0xCu);
              }
            }

            [(PKPaymentSetupProductSection *)v35 setCategories:v36];
          }

          v75 = [categories countByEnumeratingWithState:&v81 objects:v100 count:16];
          if (!v75)
          {
LABEL_74:

            categories2 = [(PKPaymentSetupProductSection *)v35 categories];
            v57 = [categories2 count];

            if (v57)
            {
              [(NSMutableArray *)v67 addObject:v35];
            }

            else
            {
              v58 = PKLogFacilityTypeGetObject(7uLL);
              if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1AD337000, v58, OS_LOG_TYPE_DEFAULT, "Dropping section as no matching products found for any category", buf, 2u);
              }
            }

            k = v71;
            break;
          }
        }
      }
    }

    v70 = [obj countByEnumeratingWithState:&v85 objects:v101 count:16];
  }

  while (v70);
LABEL_82:
  if (sectionsFilterCopy)
  {
    v59 = sectionsFilterCopy[2]();
  }

  else
  {
    v59 = v67;
  }

  v61 = self->_allSections;
  self->_allSections = v59;

  v29 = v62;
  allSections = v67;
LABEL_87:
}

- (void)addManualEntrySection:(id)section
{
  v10[1] = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  v5 = objc_alloc_init(PKPaymentSetupProductCategory);
  [(PKPaymentSetupProductCategory *)v5 setIdentifier:@"creditDebit"];
  v6 = objc_alloc_init(PKPaymentSetupProductSection);
  v10[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [(PKPaymentSetupProductSection *)v6 setCategories:v7];

  v8 = [MEMORY[0x1E695DF70] arrayWithObject:v6];
  if (sectionCopy)
  {
    v9 = sectionCopy[2](sectionCopy, v8);

    v8 = v9;
  }

  [(NSMutableArray *)self->_allSections addObjectsFromArray:v8];
}

- (void)addCarKeyCategory
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(PKPaymentSetupProductCategory);
  [(PKPaymentSetupProductCategory *)v3 setIdentifier:@"carKey"];
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"carKey", 0}];
  [(PKPaymentSetupProductCategory *)v3 setProductIdentifiers:v4];

  [(PKPaymentSetupProductCategory *)v3 setExcludedContexts:7];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allSections = [(PKPaymentSetupProductModel *)self allSections];
  v6 = [(PKPaymentSetupProductSection *)allSections countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    selfCopy = self;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allSections);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        categories = [v10 categories];
        if ([categories indexOfObjectPassingTest:&__block_literal_global_1119] != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_12;
        }

        if ([categories indexOfObjectPassingTest:&__block_literal_global_1121] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = [categories arrayByAddingObject:v3];
          [v10 setCategories:v13];

LABEL_12:
          goto LABEL_13;
        }
      }

      v7 = [(PKPaymentSetupProductSection *)allSections countByEnumeratingWithState:&v15 objects:v19 count:16];
      self = selfCopy;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  allSections = objc_alloc_init(PKPaymentSetupProductSection);
  v12 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v3, 0}];
  [(PKPaymentSetupProductSection *)allSections setCategories:v12];

  [(NSMutableArray *)self->_allSections addObject:allSections];
LABEL_13:
}

uint64_t __47__PKPaymentSetupProductModel_addCarKeyCategory__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqualToString:@"carKey"];

  return v3;
}

uint64_t __47__PKPaymentSetupProductModel_addCarKeyCategory__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqualToString:@"creditDebit"];

  return v3;
}

- (void)removeCarKeyCategory
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allSections = [(PKPaymentSetupProductModel *)self allSections];
  v3 = [allSections countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(allSections);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        categories = [v7 categories];
        v9 = [categories mutableCopy];

        v10 = [v9 indexOfObjectPassingTest:&__block_literal_global_1123_0];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v9 removeObjectAtIndex:v10];
          [v7 setCategories:v9];

          goto LABEL_11;
        }
      }

      v4 = [allSections countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

uint64_t __50__PKPaymentSetupProductModel_removeCarKeyCategory__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqualToString:@"carKey"];

  return v3;
}

- (id)filteredPaymentSetupProductModel:(id)model mobileCarrierRegion:(id)region deviceRegion:(id)deviceRegion cardOnFiles:(id)files
{
  v99 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  regionCopy = region;
  deviceRegionCopy = deviceRegion;
  filesCopy = files;
  v76 = objc_alloc_init(MEMORY[0x1E695DF70]);
  targetDevice = [modelCopy targetDevice];
  deviceClass = [targetDevice deviceClass];
  if (!deviceClass)
  {
    v13 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Filtering products for target device received no deviceClass. Falling back to PKDeviceClass().", buf, 2u);
    }

    deviceClass = PKDeviceClass();
  }

  deviceVersion = [targetDevice deviceVersion];
  v15 = [deviceVersion versionForDeviceClass:deviceClass];

  v85 = v15;
  if (!v15)
  {
    v16 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Filtering products for target device received no osVersion. Falling back to PKOSVersion().", buf, 2u);
    }

    v85 = PKOSVersion();
  }

  targetDevice2 = [modelCopy targetDevice];
  appleAccountInformation = [targetDevice2 appleAccountInformation];
  isManagedAppleAccount = [appleAccountInformation isManagedAppleAccount];

  v75 = modelCopy;
  paymentSetupSupportedInRegion = [modelCopy paymentSetupSupportedInRegion];
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = [(PKPaymentSetupProductModel *)self allSetupProducts];
  v19 = deviceRegionCopy;
  v86 = [obj countByEnumeratingWithState:&v91 objects:v98 count:16];
  if (v86)
  {
    v80 = *v92;
    v81 = deviceClass;
    do
    {
      for (i = 0; i != v86; ++i)
      {
        if (*v92 != v80)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v91 + 1) + 8 * i);
        v22 = [filesCopy containsObject:v21];
        configuration = [v21 configuration];
        type = [configuration type];

        deviceVersion2 = [targetDevice deviceVersion];
        v26 = [v21 updateSupportWithOSVersion:v85 deviceClass:deviceClass deviceRegion:v19 deviceVersion:deviceVersion2];

        if (v26)
        {
          v27 = paymentSetupSupportedInRegion;
          if ([v21 meetsAgeRequirements])
          {
            v28 = 1;
            goto LABEL_23;
          }

          v29 = PKLogFacilityTypeGetObject(7uLL);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            displayName = [v21 displayName];
            *buf = 138412290;
            v97 = displayName;
            v31 = v29;
            v32 = "Product: %@ is not supported due to current user being a child account and the product requiring an age >= 13.";
            goto LABEL_21;
          }
        }

        else
        {
          v29 = PKLogFacilityTypeGetObject(7uLL);
          v27 = paymentSetupSupportedInRegion;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            displayName = [v21 displayName];
            *buf = 138412290;
            v97 = displayName;
            v31 = v29;
            v32 = "Product: %@ is not supported due to device OS version";
LABEL_21:
            _os_log_impl(&dword_1AD337000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, 0xCu);
          }
        }

        v28 = 0;
LABEL_23:
        regions = [v21 regions];
        v34 = regions;
        if (type <= 0xB && ((1 << type) & 0xC08) != 0 && v27 == 1)
        {
          v40 = 1;
          if (!v28)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v38 = v27 == 1 && type != 7;
          if (v19)
          {
            v39 = [regions containsObject:v19];
          }

          else
          {
            v39 = 0;
          }

          v42 = !v38;
          if (!regionCopy)
          {
            v42 = 1;
          }

          if (v42)
          {
            v43 = 0;
          }

          else
          {
            v43 = [v34 containsObject:?];
          }

          v40 = v39 | v43;
          if (!v28)
          {
LABEL_39:
            v41 = 1;
            goto LABEL_56;
          }
        }

        if (([v34 count] == 0) | v40 & 1)
        {
          v41 = 1;
          v28 = 1;
          goto LABEL_56;
        }

        v44 = PKLogFacilityTypeGetObject(7uLL);
        v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
        if (v22)
        {
          if (v45)
          {
            displayName2 = [v21 displayName];
            *buf = 138412290;
            v97 = displayName2;
            v47 = v44;
            v48 = "Product: %@ is supported due to matching card on file (device/cellular region check)";
LABEL_54:
            _os_log_impl(&dword_1AD337000, v47, OS_LOG_TYPE_DEFAULT, v48, buf, 0xCu);
          }
        }

        else if (v45)
        {
          displayName2 = [v21 displayName];
          *buf = 138412290;
          v97 = displayName2;
          v47 = v44;
          v48 = "Product: %@ is not supported in this device region";
          goto LABEL_54;
        }

        v41 = v22 ^ 1;

        v28 = v22;
LABEL_56:
        configuration2 = [v21 configuration];
        if ([configuration2 type] == 7)
        {
          configuration3 = [v21 configuration];
          v51 = [configuration3 featureIdentifier] != 2;
        }

        else
        {
          v51 = 1;
        }

        v52 = [v21 supportsSetupProductMethodForType:0];
        if (v28 && !v51 && [v21 preventsFeatureApplication])
        {
          v53 = PKLogFacilityTypeGetObject(7uLL);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            displayName3 = [v21 displayName];
            *buf = 138412290;
            v97 = displayName3;
            v55 = v53;
            v56 = "Product: %@ feature application prevented";
            goto LABEL_85;
          }

          goto LABEL_86;
        }

        if ((v28 & v52) == 1)
        {
          v53 = PKLogFacilityTypeGetObject(7uLL);
          v57 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);
          if (!v22)
          {
            if (v57)
            {
              displayName3 = [v21 displayName];
              *buf = 138412290;
              v97 = displayName3;
              v55 = v53;
              v56 = "Product: %@ is not supported due to lack of card on file and unknown provisioning method";
LABEL_85:
              _os_log_impl(&dword_1AD337000, v55, OS_LOG_TYPE_DEFAULT, v56, buf, 0xCu);
            }

LABEL_86:

            paymentOptions = [v21 paymentOptions];
            goto LABEL_99;
          }

          if (v57)
          {
            displayName4 = [v21 displayName];
            *buf = 138412290;
            v97 = displayName4;
            _os_log_impl(&dword_1AD337000, v53, OS_LOG_TYPE_DEFAULT, "Product: %@ is supported due to matching card on file (provisioning method check)", buf, 0xCu);
          }

          paymentOptions = [v21 paymentOptions];
          v41 = 0;
        }

        else
        {
          paymentOptions = [v21 paymentOptions];
          if (!v28)
          {
            goto LABEL_99;
          }
        }

        if ([paymentOptions count])
        {
          if (objc_opt_respondsToSelector())
          {
            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            v60 = paymentOptions;
            v61 = [v60 countByEnumeratingWithState:&v87 objects:v95 count:16];
            if (v61)
            {
              v62 = v61;
              v63 = *v88;
              while (2)
              {
                for (j = 0; j != v62; ++j)
                {
                  if (*v88 != v63)
                  {
                    objc_enumerationMutation(v60);
                  }

                  if ([targetDevice supportsCredentialType:{objc_msgSend(*(*(&v87 + 1) + 8 * j), "cardType")}])
                  {

                    goto LABEL_88;
                  }
                }

                v62 = [v60 countByEnumeratingWithState:&v87 objects:v95 count:16];
                if (v62)
                {
                  continue;
                }

                break;
              }
            }
          }

          v65 = PKLogFacilityTypeGetObject(7uLL);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            displayName5 = [v21 displayName];
            *buf = 138412290;
            v97 = displayName5;
            v67 = v65;
            v68 = "Product: %@ is not supported on device";
            goto LABEL_97;
          }

          goto LABEL_98;
        }

LABEL_88:
        if (isManagedAppleAccount && ([v21 allowOnManagedAccount] & 1) == 0)
        {
          v65 = PKLogFacilityTypeGetObject(7uLL);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            displayName5 = [v21 displayName];
            *buf = 138412290;
            v97 = displayName5;
            v67 = v65;
            v68 = "Product: %@ is not supported on managed account";
LABEL_97:
            _os_log_impl(&dword_1AD337000, v67, OS_LOG_TYPE_DEFAULT, v68, buf, 0xCu);
          }

LABEL_98:

LABEL_99:
          v71 = PKLogFacilityTypeGetObject(7uLL);
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            displayName6 = [v21 displayName];
            *buf = 138412290;
            v97 = displayName6;
            _os_log_impl(&dword_1AD337000, v71, OS_LOG_TYPE_DEFAULT, "Product: %@ is unsupported and will not be shown in the flow picker", buf, 0xCu);
          }

          goto LABEL_102;
        }

        if ((v41 & 1) == 0)
        {
          v69 = PKLogFacilityTypeGetObject(7uLL);
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            displayName7 = [v21 displayName];
            *buf = 138412290;
            v97 = displayName7;
            _os_log_impl(&dword_1AD337000, v69, OS_LOG_TYPE_DEFAULT, "Product: %@ is supported due to matching card but cannot be manually provisioned", buf, 0xCu);
          }
        }

        [v76 addObject:v21];
LABEL_102:
        v19 = deviceRegionCopy;

        deviceClass = v81;
      }

      v86 = [obj countByEnumeratingWithState:&v91 objects:v98 count:16];
    }

    while (v86);
  }

  v73 = [v76 copy];

  return v73;
}

- (id)_paymentSetupProductsWithProducts:(id)products existingPaymentSetupProducts:(id)setupProducts
{
  v130 = *MEMORY[0x1E69E9840];
  productsCopy = products;
  setupProductsCopy = setupProducts;
  if (os_variant_has_internal_ui())
  {
    v8 = PKGetPaymentSetupProductState();
    v103 = PKPaymentSetupProductStateFromString(v8);
  }

  else
  {
    v103 = 0;
  }

  v72 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  obj = productsCopy;
  v68 = [obj countByEnumeratingWithState:&v118 objects:v129 count:16];
  if (v68)
  {
    v65 = *v119;
    v66 = setupProductsCopy;
    selfCopy = self;
    do
    {
      v9 = 0;
      do
      {
        if (*v119 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v118 + 1) + 8 * v9);
        v101 = [v10 PKArrayContaining:objc_opt_class() forKey:@"partners"];
        v104 = [v10 PKStringForKey:@"identifier"];
        v100 = [v10 PKStringForKey:@"type"];
        v99 = [v10 PKStringForKey:@"localizedNotificationTitle"];
        v98 = [v10 PKStringForKey:@"localizedNotificationMessage"];
        v97 = [v10 PKStringForKey:@"discoveryCardIdentifier"];
        v11 = [v10 PKStringForKey:@"localizedProductName"];
        v12 = v11;
        v71 = v9;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = [v10 PKStringForKey:@"localizedDisplayName"];
        }

        v102 = v13;

        v96 = [v10 PKDictionaryForKey:@"readerModeMetadata"];
        v95 = [v10 PKStringForKey:@"termsURL"];
        v14 = [v10 PKArrayForKey:@"provisioningMethodDetailsList"];
        v94 = [v10 PKDictionaryForKey:@"imageAssets"];
        v93 = [v10 PKDictionaryForKey:@"minimumOSVersion"];
        v92 = [v10 PKStringForKey:@"region"];
        v91 = [v10 PKDictionaryForKey:@"regionData"];
        v90 = [v10 PKStringForKey:@"hsa2Requirement"];
        v89 = [v10 PKNumberForKey:@"suppressPendingPurchases"];
        v88 = [v10 PKArrayContaining:objc_opt_class() forKey:@"supportedTransitNetworkIdentifiers"];
        v87 = [v10 PKArrayForKey:@"onboardingItems"];
        v86 = [v10 PKURLForKey:@"actionBaseURL"];
        v85 = [v10 PKStringForKey:@"state"];
        v84 = [v10 PKArrayContaining:objc_opt_class() forKey:@"searchTerms"];
        v83 = [v10 PKStringForKey:@"featureIdentifier"];
        v82 = [v10 PKStringForKey:@"criteriaIdentifier"];
        v81 = [v10 PKNumberForKey:@"showOtherProvidersForAppProvisioningMethod"];
        v80 = [v10 PKArrayForKey:@"paymentOptions"];
        v79 = [v10 PKStringForKey:@"localizedDescription"];
        v78 = [v10 PKStringForKey:@"longLocalizedDescription"];
        v77 = [v10 PKDictionaryForKey:@"clientInfo"];
        v15 = [v10 PKNumberForKey:@"minimumSupportedAge"];
        v16 = [v10 PKNumberForKey:@"maximumSupportedAge"];
        v17 = [v10 PKNumberForKey:@"minimumTargetUserSupportedAge"];
        v18 = &unk_1F23B5900;
        if (v15)
        {
          v19 = v15;
        }

        else
        {
          v19 = &unk_1F23B5900;
        }

        v20 = &unk_1F23B5918;
        if (v16)
        {
          v20 = v16;
        }

        v75 = v20;
        v76 = v19;
        if (v17)
        {
          v18 = v17;
        }

        v74 = v18;
        v73 = [v10 PKArrayForKey:@"associatedStoreIdentifiers"];
        v114 = 0u;
        v115 = 0u;
        v116 = 0u;
        v117 = 0u;
        v105 = v14;
        v21 = [v105 countByEnumeratingWithState:&v114 objects:v128 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = 0;
          v24 = *v115;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v115 != v24)
              {
                objc_enumerationMutation(v105);
              }

              v26 = *(*(&v114 + 1) + 8 * i);
              v27 = [v26 PKStringForKey:@"provisioningMethodType"];
              if (([v27 isEqualToString:@"inApp"] & 1) != 0 || objc_msgSend(v27, "isEqualToString:", @"cameraCapture"))
              {
                v28 = [v26 PKStringForKey:@"appLaunchURLScheme"];
                v29 = [v26 PKStringForKey:@"appLaunchURLPath"];
                v30 = [PKPaymentSetupProduct _inAppProvisioningURLWthScheme:v28 path:v29];
                absoluteString = [v30 absoluteString];

                v23 = absoluteString;
              }
            }

            v22 = [v105 countByEnumeratingWithState:&v114 objects:v128 count:16];
          }

          while (v22);
        }

        else
        {
          v23 = 0;
        }

        v70 = [v10 PKStringForKey:@"registrationRegionIdentifier"];
        array = [MEMORY[0x1E695DF70] array];
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        v33 = [v10 PKArrayContaining:objc_opt_class() forKey:@"requiredFields"];
        v34 = [v33 countByEnumeratingWithState:&v110 objects:v127 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v111;
          do
          {
            for (j = 0; j != v35; ++j)
            {
              if (*v111 != v36)
              {
                objc_enumerationMutation(v33);
              }

              v38 = *(*(&v110 + 1) + 8 * j);
              v39 = [v10 PKDictionaryForKey:@"requiredFieldOptions"];
              v40 = [v39 PKDictionaryForKey:v38];

              v41 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:v38 configuration:v40];
              [array safelyAddObject:v41];
            }

            v35 = [v33 countByEnumeratingWithState:&v110 objects:v127 count:16];
          }

          while (v35);
        }

        v42 = [v10 PKArrayContaining:objc_opt_class() forKey:@"paymentOptions"];
        v106 = 0u;
        v107 = 0u;
        v108 = 0u;
        v109 = 0u;
        v43 = v42;
        v44 = [v43 countByEnumeratingWithState:&v106 objects:v126 count:16];
        v45 = v43;
        setupProductsCopy = v66;
        if (!v44)
        {
LABEL_49:

          goto LABEL_50;
        }

        v46 = v44;
        v47 = *v107;
LABEL_40:
        v48 = 0;
        while (1)
        {
          if (*v107 != v47)
          {
            objc_enumerationMutation(v43);
          }

          v49 = [[PKPaymentSetupProductPaymentOption alloc] initWithPaymentOptionDictionary:*(*(&v106 + 1) + 8 * v48)];
          cardType = [(PKPaymentSetupProductPaymentOption *)v49 cardType];

          if (cardType == 103)
          {
            break;
          }

          if (v46 == ++v48)
          {
            v46 = [v43 countByEnumeratingWithState:&v106 objects:v126 count:16];
            if (!v46)
            {
              v45 = v43;
              goto LABEL_49;
            }

            goto LABEL_40;
          }
        }

        if (([array pk_containsObjectPassingTest:&__block_literal_global_1130] & 1) == 0)
        {
          v124[0] = @"fieldType";
          v51 = PKPaymentSetupFieldTypeToString(4);
          v125[0] = v51;
          v124[1] = @"defaultValue";
          v52 = PKLocalizedPaymentString(&cfstr_AddPaymentSuic.isa, 0);
          v125[1] = v52;
          v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v125 forKeys:v124 count:2];

          v53 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"suicaPrivacyFooter" configuration:v45];
          [array safelyAddObject:v53];

          goto LABEL_49;
        }

LABEL_50:
        v69 = v43;
        if (os_variant_has_internal_ui())
        {
          v54 = PKForceLargeAmountOfProducts();
          if (v54)
          {
            v55 = 50;
          }

          else
          {
            v55 = 1;
          }
        }

        else
        {
          v54 = 0;
          v55 = 1;
        }

        do
        {
          if (v104)
          {
            if (v54)
            {
              goto LABEL_57;
            }
          }

          else
          {
            v104 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v102, v23];
            if (v54)
            {
LABEL_57:
              uUID = [MEMORY[0x1E696AFB0] UUID];
              uUIDString = [uUID UUIDString];

              goto LABEL_60;
            }
          }

          uUIDString = v104;
LABEL_60:
          v58 = [v66 objectForKey:uUIDString];
          v59 = v58;
          if (v58)
          {
            v60 = v58;
          }

          else
          {
            v60 = objc_alloc_init(PKPaymentSetupProduct);
          }

          v61 = v60;

          [(PKPaymentSetupProductModel *)selfCopy _updatePaymentSetupProduct:v61 displayName:v102 localizedDescription:v79 longLocalizedDescription:v78 partnerArray:v101 productIdentifier:uUIDString paymentOptions:v80 termsURL:v95 provisioningMethodDetailsList:v105 readerModeMetadata:v96 requiredFields:array imageAssets:v94 minimumOSVersion:v93 region:v92 regionData:v91 hsa2Requirement:v90 suppressPendingPurchases:v89 supportedTransitNetworkIdentifiers:v88 onboardingItems:v87 actionBaseURL:v86 productState:v85 minimumProductAge:v76 maximumProductAge:v75 minimumTargetUserSupportedAge:v74 associatedStoreIdentifiers:v73 appLaunchURL:v23 regionIdentifier:v70 type:v100 localizedNotificationTitle:v99 localizedNotificationMessage:v98 discoveryCardIdentifier:v97 clientInfo:v77 searchTerms:v84 featureIdentifier:v83 criteriaIdentifier:v82 showOtherProviders:v81];
          if (v103)
          {
            v62 = PKLogFacilityTypeGetObject(7uLL);
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v123 = v104;
              _os_log_impl(&dword_1AD337000, v62, OS_LOG_TYPE_DEFAULT, "WARNING: Using debug product state to override server state for: %@", buf, 0xCu);
            }

            [(PKPaymentSetupProduct *)v61 _updateDebugConfigurationForState:v103];
          }

          if (v61)
          {
            [(PKPaymentSetupProduct *)v61 setIsServerDriven:1];
            [v72 addObject:v61];
          }

          --v55;
        }

        while (v55);

        v9 = v71 + 1;
      }

      while (v71 + 1 != v68);
      v68 = [obj countByEnumeratingWithState:&v118 objects:v129 count:16];
    }

    while (v68);
  }

  return v72;
}

- (void)_updatePaymentSetupProduct:(id)product displayName:(id)name localizedDescription:(id)description longLocalizedDescription:(id)localizedDescription partnerArray:(id)array productIdentifier:(id)identifier paymentOptions:(id)options termsURL:(id)self0 provisioningMethodDetailsList:(id)self1 readerModeMetadata:(id)self2 requiredFields:(id)self3 imageAssets:(id)self4 minimumOSVersion:(id)self5 region:(id)self6 regionData:(id)self7 hsa2Requirement:(id)self8 suppressPendingPurchases:(id)self9 supportedTransitNetworkIdentifiers:(id)identifiers onboardingItems:(id)items actionBaseURL:(id)rL productState:(id)state minimumProductAge:(id)age maximumProductAge:(id)productAge minimumTargetUserSupportedAge:(id)supportedAge associatedStoreIdentifiers:(id)storeIdentifiers appLaunchURL:(id)uRL regionIdentifier:(id)regionIdentifier type:(id)product0 localizedNotificationTitle:(id)product1 localizedNotificationMessage:(id)product2 discoveryCardIdentifier:(id)product3 clientInfo:(id)product4 searchTerms:(id)product5 featureIdentifier:(id)product6 criteriaIdentifier:(id)product7 showOtherProviders:(id)product8
{
  productCopy = product;
  nameCopy = name;
  descriptionCopy = description;
  localizedDescriptionCopy = localizedDescription;
  arrayCopy = array;
  identifierCopy = identifier;
  optionsCopy = options;
  v45 = arrayCopy;
  lCopy = l;
  listCopy = list;
  metadataCopy = metadata;
  fieldsCopy = fields;
  assetsCopy = assets;
  versionCopy = version;
  regionCopy = region;
  dataCopy = data;
  requirementCopy = requirement;
  purchasesCopy = purchases;
  identifiersCopy = identifiers;
  itemsCopy = items;
  rLCopy = rL;
  stateCopy = state;
  ageCopy = age;
  productAgeCopy = productAge;
  supportedAgeCopy = supportedAge;
  storeIdentifiersCopy = storeIdentifiers;
  uRLCopy = uRL;
  regionIdentifierCopy = regionIdentifier;
  typeCopy = type;
  titleCopy = title;
  messageCopy = message;
  cardIdentifierCopy = cardIdentifier;
  infoCopy = info;
  termsCopy = terms;
  featureIdentifierCopy = featureIdentifier;
  criteriaIdentifierCopy = criteriaIdentifier;
  providersCopy = providers;
  v52 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([v45 count])
  {
    [v52 setObject:v45 forKey:@"partners"];
  }

  v56 = v45;
  if ([nameCopy length])
  {
    [v52 setObject:nameCopy forKey:@"localizedProductName"];
  }

  if ([descriptionCopy length])
  {
    [v52 setObject:descriptionCopy forKey:@"localizedDescription"];
  }

  if ([localizedDescriptionCopy length])
  {
    [v52 setObject:localizedDescriptionCopy forKey:@"longLocalizedDescription"];
  }

  if ([typeCopy length])
  {
    [v52 setObject:typeCopy forKey:@"type"];
  }

  if ([titleCopy length])
  {
    [v52 setObject:titleCopy forKey:@"localizedNotificationTitle"];
  }

  if ([messageCopy length])
  {
    [v52 setObject:messageCopy forKey:@"localizedNotificationMessage"];
  }

  if ([cardIdentifierCopy length])
  {
    [v52 setObject:cardIdentifierCopy forKey:@"discoveryCardIdentifier"];
  }

  if ([identifierCopy length])
  {
    [v52 setObject:identifierCopy forKey:@"productIdentifier"];
  }

  if ([lCopy length])
  {
    [v52 setObject:lCopy forKey:@"termsURL"];
  }

  if ([optionsCopy count])
  {
    [v52 setObject:optionsCopy forKey:@"paymentOptions"];
  }

  if ([listCopy count])
  {
    [v52 setObject:listCopy forKey:@"provisioningMethodDetailsList"];
  }

  if (metadataCopy)
  {
    [v52 setObject:metadataCopy forKey:@"readerModeMetadata"];
  }

  if ([fieldsCopy count])
  {
    [v52 removeObjectForKey:@"requiredFields"];
    [v52 removeObjectForKey:@"requiredFieldOptions"];
  }

  if ([assetsCopy count])
  {
    [v52 setObject:assetsCopy forKey:@"imageAssets"];
  }

  if ([versionCopy count])
  {
    [v52 setObject:versionCopy forKey:@"minimumOSVersion"];
  }

  if ([regionCopy length])
  {
    [v52 setObject:regionCopy forKey:@"region"];
  }

  if ([dataCopy count])
  {
    [v52 setObject:dataCopy forKey:@"regionData"];
  }

  if (requirementCopy)
  {
    [v52 setObject:requirementCopy forKey:@"hsa2Requirement"];
  }

  if (purchasesCopy)
  {
    [v52 setObject:purchasesCopy forKey:@"suppressPendingPurchases"];
  }

  if ([identifiersCopy count])
  {
    [v52 setObject:identifiersCopy forKey:@"supportedTransitNetworkIdentifiers"];
  }

  if (itemsCopy)
  {
    [v52 setObject:itemsCopy forKey:@"onboardingItems"];
  }

  if (rLCopy)
  {
    [v52 setObject:rLCopy forKey:@"actionBaseURL"];
  }

  if (stateCopy)
  {
    [v52 setObject:stateCopy forKey:@"state"];
  }

  if (ageCopy)
  {
    [v52 setObject:ageCopy forKey:@"minimumSupportedAge"];
  }

  if (productAgeCopy)
  {
    [v52 setObject:productAgeCopy forKey:@"maximumSupportedAge"];
  }

  if (supportedAgeCopy)
  {
    [v52 setObject:supportedAgeCopy forKey:@"minimumTargetUserSupportedAge"];
  }

  if ([storeIdentifiersCopy count])
  {
    [v52 setObject:storeIdentifiersCopy forKey:@"associatedStoreIdentifiers"];
  }

  if (uRLCopy)
  {
    [v52 setObject:uRLCopy forKey:@"appLaunchURL"];
  }

  if ([regionIdentifierCopy length])
  {
    [v52 setObject:regionIdentifierCopy forKey:@"registrationRegionIdentifier"];
  }

  if (infoCopy)
  {
    [v52 setObject:infoCopy forKey:@"clientInfo"];
  }

  if (termsCopy)
  {
    [v52 setObject:termsCopy forKey:@"searchTerms"];
  }

  if (featureIdentifierCopy)
  {
    [v52 setObject:featureIdentifierCopy forKey:@"featureIdentifier"];
  }

  if (criteriaIdentifierCopy)
  {
    [v52 setObject:criteriaIdentifierCopy forKey:@"criteriaIdentifier"];
  }

  if (providersCopy)
  {
    [v52 setObject:providersCopy forKey:@"showOtherProvidersForAppProvisioningMethod"];
  }

  if ([fieldsCopy count])
  {
    v53 = [fieldsCopy copy];
    [productCopy setRequiredFields:v53];
  }

  v54 = [v52 copy];
  [productCopy updateWithProductDictionary:v54];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(NSMutableDictionary *)self->_paymentSetupProducts description];
  [v3 appendFormat:@"products: '%@'; ", v4];

  v5 = [(NSMutableArray *)self->_allSections description];
  [v3 appendFormat:@"sections: '%@'; ", v5];

  [v3 appendFormat:@">"];
  v6 = [v3 copy];

  return v6;
}

@end