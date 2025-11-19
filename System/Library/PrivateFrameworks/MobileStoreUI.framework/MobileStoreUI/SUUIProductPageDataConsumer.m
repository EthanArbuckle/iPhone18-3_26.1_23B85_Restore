@interface SUUIProductPageDataConsumer
- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5;
- (id)productPageWithDictionary:(id)a3;
@end

@implementation SUUIProductPageDataConsumer

- (id)productPageWithDictionary:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v42 = objc_alloc_init(SUUIProductPage);
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__31;
  v56 = __Block_byref_object_dispose__31;
  v57 = 0;
  v41 = [v3 objectForKey:@"storePlatformPrewarmDataKey"];
  v40 = [v3 objectForKey:@"storePlatformData"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v40 objectForKey:v41], (v39 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v39 = [v40 objectForKey:@"product"];
    if (!v39)
    {
      v39 = [v40 objectForKey:@"product-dv-product"];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v39 objectForKey:@"results"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __57__SUUIProductPageDataConsumer_productPageWithDictionary___block_invoke;
      v51[3] = &unk_2798F8BC0;
      v51[4] = &v52;
      [v4 enumerateKeysAndObjectsUsingBlock:v51];
    }
  }

  if (v53[5])
  {
    v38 = [v3 objectForKey:@"versionHistory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v6 = +[SUUIReleaseNote dateFormatter];
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v7 = v38;
      v8 = [v7 countByEnumeratingWithState:&v47 objects:v59 count:16];
      if (v8)
      {
        v9 = *v48;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v48 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v47 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = [[SUUIReleaseNote alloc] initWithReleaseNoteDictionary:v11 dateFormatter:v6];
              if (v12)
              {
                [v5 addObject:v12];
              }
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v47 objects:v59 count:16];
        }

        while (v8);
      }

      [v53[5] _setVersionHistory:v5];
    }

    v13 = [v3 objectForKey:@"topInAppPurchases"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v43 objects:v58 count:16];
      if (v16)
      {
        v17 = *v44;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v44 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v43 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = [[SUUIInAppPurchase alloc] initWithInAppPurchaseDictionary:v19];
              if (v20)
              {
                [v14 addObject:v20];
              }
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v43 objects:v58 count:16];
        }

        while (v16);
      }

      [v53[5] _setInAppPurchases:v14];
    }

    [(SUUIProductPage *)v42 setItem:v53[5]];
  }

  v21 = [v3 objectForKey:@"infoSection"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [[SUUIProductPageProductInfo alloc] initWithInfoSectionDictionaries:v21];
    if ([(SUUIProductPageProductInfo *)v22 numberOfEntries]>= 1)
    {
      [(SUUIProductPage *)v42 setProductInformation:v22];
    }
  }

  v23 = [v3 objectForKey:@"customersAlsoBought"];
  v24 = [v3 objectForKey:@"moreByThisDeveloper"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v26 = objc_opt_class();
    v27 = SUUIStorePageItemsWithStorePlatformDictionary(v40, v41, v26);
    v28 = objc_alloc_init(SUUIPageComponentContext);
    [(SUUIPageComponentContext *)v28 setItems:v27];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUUIPageComponentContext *)v28 setComponentDictionary:v24];
      v29 = [[SUUISwooshPageComponent alloc] initWithRelatedContentContext:v28];
      [v25 addObject:v29];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUUIPageComponentContext *)v28 setComponentDictionary:v23];
      v30 = [[SUUISwooshPageComponent alloc] initWithRelatedContentContext:v28];
      [v25 addObject:v30];
    }

    [(SUUIProductPage *)v42 setRelatedContentSwooshes:v25];
  }

  v31 = [v3 objectForKey:@"reviewsUrlsData"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = [[SUUIReviewConfiguration alloc] initWithConfigurationDictionary:v31];
    [(SUUIProductPage *)v42 setReviewConfiguration:v32];
  }

  v33 = [objc_alloc(MEMORY[0x277D69B70]) initWithStorePlatformData:v3];
  [(SUUIProductPage *)v42 setMetricsConfiguration:v33];
  v34 = SSVGetMetricsPageDescriptionWithPlatformDictionary();
  [(SUUIProductPage *)v42 setMetricsPageDescription:v34];

  v35 = [v3 objectForKey:@"uber"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = [[SUUIUber alloc] initWithUberDictionary:v35];
    [(SUUIProductPage *)v42 setUber:v36];
  }

  _Block_object_dispose(&v52, 8);

  return v42;
}

void __57__SUUIProductPageDataConsumer_productPageWithDictionary___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[SUUIProductPageItem alloc] initWithLookupDictionary:v9];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  *a4 = 1;
}

- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 allHeaderFields];
  v11 = ISDictionaryValueForCaseInsensitiveString();

  if (v11 || ([v9 MIMEType], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    if ([v11 rangeOfString:@"itml" options:1] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = objc_alloc_init(SUUIProductPage);
      [(SUUIProductPage *)v14 setITMLData:v8];
      [(SUUIProductPage *)v14 setITMLResponse:v9];
      v13 = 0;
      if (!a5)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  v19 = 0;
  v12 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:&v19];
  v13 = v19;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (-[SUUIProductPageDataConsumer productPageWithDictionary:](self, "productPageWithDictionary:", v12), v14 = objc_claimAutoreleasedReturnValue(), [v9 URL], v15 = objc_claimAutoreleasedReturnValue(), -[SUUIProductPage setPageURL:](v14, "setPageURL:", v15), v15, !v14))
  {
    if ([v11 isEqualToString:@"text/html"])
    {
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SUUIErrorDomain" code:1 userInfo:0];

      v14 = 0;
      v13 = v16;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a5)
  {
LABEL_12:
    if (!v14)
    {
      v17 = v13;
      *a5 = v13;
    }
  }

LABEL_14:

  return v14;
}

@end