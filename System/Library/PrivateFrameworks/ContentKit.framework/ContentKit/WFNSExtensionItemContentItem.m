@interface WFNSExtensionItemContentItem
+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)a3;
+ (id)itemWithObject:(id)a3 sourceAppBundleIdentifier:(id)a4;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)outputTypes;
+ (id)ownedTypes;
- (BOOL)canGenerateRepresentationForType:(id)a3;
- (BOOL)itemProvidersSupportType:(id)a3;
- (NSExtensionItem)extensionItem;
- (id)extensionItemName;
- (id)generateObjectRepresentationsForClass:(Class)a3 options:(id)a4 error:(id *)a5;
- (id)itemProviderItems;
- (id)itemProviders;
- (id)name;
- (void)coerceToItemClasses:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (void)preloadImportantItemsWithCompletionHandler:(id)a3;
@end

@implementation WFNSExtensionItemContentItem

- (void)preloadImportantItemsWithCompletionHandler:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFNSExtensionItemContentItem *)self itemProviderItems];
  if (v5)
  {
    v6 = [(WFNSExtensionItemContentItem *)self extensionItem];
    v7 = [v6 userInfo];
    v8 = [v7 objectForKey:@"WFPhotosAssetIdentifiers"];

    v9 = [v8 count];
    LOBYTE(v9) = v9 == [v5 count];
    v10 = objc_opt_new();
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __75__WFNSExtensionItemContentItem_preloadImportantItemsWithCompletionHandler___block_invoke;
    v18[3] = &unk_27834A070;
    v22 = v9;
    v19 = v8;
    v20 = v10;
    v21 = self;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __75__WFNSExtensionItemContentItem_preloadImportantItemsWithCompletionHandler___block_invoke_5;
    v15[3] = &unk_27834A098;
    v15[4] = self;
    v16 = v20;
    v17 = v4;
    v11 = v20;
    v12 = v8;
    [v5 if_mapAsynchronously:v18 completionHandler:v15];
  }

  else
  {
    v13 = getWFContentGraphLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(WFContentItem *)self description];
      *buf = 136315394;
      v24 = "[WFNSExtensionItemContentItem preloadImportantItemsWithCompletionHandler:]";
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_21E1BD000, v13, OS_LOG_TYPE_ERROR, "%s Failed to get item provider items from %@", buf, 0x16u);
    }

    (*(v4 + 2))(v4, 0, 0);
  }
}

void __75__WFNSExtensionItemContentItem_preloadImportantItemsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__WFNSExtensionItemContentItem_preloadImportantItemsWithCompletionHandler___block_invoke_2;
  v13[3] = &unk_27834A048;
  v20 = *(a1 + 56);
  v18 = v8;
  v14 = v7;
  v15 = *(a1 + 32);
  v19 = a3;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v16 = v9;
  v17 = v10;
  v11 = v7;
  v12 = v8;
  [v11 preloadImportantItemsWithCompletionHandler:v13];
}

void __75__WFNSExtensionItemContentItem_preloadImportantItemsWithCompletionHandler___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v25 = a3;
  [*(a1 + 32) setExtensionSubItems:v5];
  v6 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v7 = objc_opt_new();
  [v6 setObject:v7 forKey:objc_opt_class()];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        v14 = objc_opt_class();
        if ([v14 isSubclassOfClass:objc_opt_class()])
        {
          v14 = objc_opt_class();
        }

        v15 = [v6 objectForKey:v14];
        v16 = v15;
        if (v15)
        {
          [v15 addObject:v13];
        }

        else
        {
          v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v13, 0}];
          [v6 setObject:v17 forKey:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v10);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = v6;
  v19 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v26 + 1) + 8 * j);
        v24 = [v18 objectForKey:v23];
        [*(a1 + 32) setSubItems:v24 forClass:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v20);
  }

  (*(*(a1 + 48) + 16))();
}

void __75__WFNSExtensionItemContentItem_preloadImportantItemsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v5 = *(a1 + 32);
    if (*(a1 + 80) == 1)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __75__WFNSExtensionItemContentItem_preloadImportantItemsWithCompletionHandler___block_invoke_3;
      v20[3] = &unk_278349FF8;
      v6 = *(a1 + 40);
      v7 = *(a1 + 72);
      v21 = v6;
      v24 = v7;
      v22 = *(a1 + 32);
      v23 = *(a1 + 64);
      [v5 getFileRepresentation:v20 forType:0];

      v8 = v21;
    }

    else
    {
      v9 = [*(a1 + 32) itemProvider];
      v10 = [*MEMORY[0x277CE1E38] identifier];
      v11 = [v9 hasItemConformingToTypeIdentifier:v10];

      if (!v11)
      {
        v4 = *(*(a1 + 64) + 16);
        goto LABEL_3;
      }

      v12 = *(a1 + 32);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __75__WFNSExtensionItemContentItem_preloadImportantItemsWithCompletionHandler___block_invoke_4;
      v15[3] = &unk_27834A020;
      v19 = *(a1 + 64);
      v16 = *(a1 + 32);
      v13 = *(a1 + 48);
      v14 = *(a1 + 56);
      v17 = v13;
      v18 = v14;
      [v12 getObjectRepresentation:v15 forClass:objc_opt_class()];

      v8 = v19;
    }

    goto LABEL_9;
  }

  v4 = *(*(a1 + 64) + 16);
LABEL_3:
  v4();
LABEL_9:
}

void __75__WFNSExtensionItemContentItem_preloadImportantItemsWithCompletionHandler___block_invoke_3(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[7];
  v5 = a2;
  v8 = [v3 objectAtIndex:v4];
  v6 = [WFPhotoItemProviderContentItem itemWithItemProviderItem:a1[5] photoMediaFileRepresentation:v5 assetIdentifier:?];

  v7 = v6;
  if (!v6)
  {
    v7 = a1[5];
  }

  (*(a1[6] + 16))(a1[6], v7, 0);
}

void __75__WFNSExtensionItemContentItem_preloadImportantItemsWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKey:*MEMORY[0x277CCA0F0]];
  if (v3)
  {
    v4 = [WFJavaScriptRunner alloc];
    v5 = [*(a1 + 32) itemProvider];
    v6 = [(WFJavaScriptRunner *)v4 initWithItemProvider:v5];

    v7 = [MEMORY[0x277CCAD78] UUID];
    v8 = [v7 UUIDString];

    [*(a1 + 40) setObject:v6 forKey:v8];
    v9 = [WFShareSheetSafariWebPage webPageFromPreprocessingResult:v3 javaScriptRunnerIdentifier:v8];
    v10 = *(a1 + 48);
    v11 = [WFObjectRepresentation object:v9];
    v14[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [v10 setObjectRepresentations:v12 forClass:objc_opt_class()];

    v13 = [(WFContentItem *)WFSafariWebPageContentItem itemWithObject:v9];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (void)coerceToItemClasses:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFNSExtensionItemContentItem *)self extensionItem];
  v12 = [v11 attributedContentText];
  v13 = [v12 length];

  if (v13)
  {
    v14 = [(WFNSExtensionItemContentItem *)self extensionItem];
    v15 = [v14 attributedContentText];
    v16 = [(WFNSExtensionItemContentItem *)self extensionItemName];
    v17 = [WFContentItem itemWithObject:v15 named:v16];

    v18 = [v17 supportedTypes];
    v19 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v8];
    LODWORD(v16) = [v18 intersectsSet:v19];

    if (v16)
    {
      [v17 coerceToItemClasses:v8 options:v9 completionHandler:v10];

      goto LABEL_8;
    }
  }

  v20 = [(WFNSExtensionItemContentItem *)self extensionSubItems];
  v21 = [v20 count];

  if (v21)
  {
    v22 = [(WFNSExtensionItemContentItem *)self extensionSubItems];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __78__WFNSExtensionItemContentItem_coerceToItemClasses_options_completionHandler___block_invoke;
    v25[3] = &unk_27834A458;
    v26 = v8;
    v27 = v9;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __78__WFNSExtensionItemContentItem_coerceToItemClasses_options_completionHandler___block_invoke_3;
    v23[3] = &unk_27834A430;
    v24 = v10;
    [v22 if_flatMapAsynchronously:v25 completionHandler:v23];
  }

  else
  {
    (*(v10 + 2))(v10, 0, 0);
  }

LABEL_8:
}

void __78__WFNSExtensionItemContentItem_coerceToItemClasses_options_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__WFNSExtensionItemContentItem_coerceToItemClasses_options_completionHandler___block_invoke_2;
  v10[3] = &unk_27834A430;
  v11 = v6;
  v9 = v6;
  [a2 coerceToItemClasses:v8 options:v7 completionHandler:v10];
}

- (BOOL)canGenerateRepresentationForType:(id)a3
{
  v4 = a3;
  if ([v4 conformsToClass:objc_opt_class()])
  {
    v5 = [(WFNSExtensionItemContentItem *)self extensionItem];
    v6 = [v5 attachments];
    v7 = [v6 count] != 0;
  }

  else
  {
    if ([v4 conformsToClass:objc_opt_class()])
    {
      v8 = [(WFContentItem *)self objectForClass:objc_opt_class()];
      v7 = v8 != 0;

      goto LABEL_10;
    }

    if (![v4 conformsToClass:objc_opt_class()])
    {
      v10.receiver = self;
      v10.super_class = WFNSExtensionItemContentItem;
      v7 = [(WFContentItem *)&v10 canGenerateRepresentationForType:v4];
      goto LABEL_10;
    }

    v5 = [(WFNSExtensionItemContentItem *)self extensionItem];
    v6 = [v5 attributedContentText];
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = [(WFNSExtensionItemContentItem *)self itemProvidersSupportType:v4];
    }
  }

LABEL_10:
  return v7;
}

- (id)generateObjectRepresentationsForClass:(Class)a3 options:(id)a4 error:(id *)a5
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a3)
  {
    v8 = [(WFNSExtensionItemContentItem *)self itemProviders];
    v9 = [(WFNSExtensionItemContentItem *)self extensionItemName];
    v7 = [WFObjectRepresentation objects:v8 named:v9];
  }

  else if (objc_opt_class() == a3 && (-[WFNSExtensionItemContentItem extensionItem](self, "extensionItem"), v10 = objc_claimAutoreleasedReturnValue(), [v10 attributedContentText], v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
  {
    v12 = [(WFNSExtensionItemContentItem *)self extensionItemName];
    v13 = [WFObjectRepresentation object:v11 named:v12];
    v15[0] = v13;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)itemProvidersSupportType:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(WFNSExtensionItemContentItem *)self extensionItem];
  v6 = [v5 attachments];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v4 string];
        LOBYTE(v10) = [v10 hasItemConformingToTypeIdentifier:v11];

        if (v10)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)name
{
  v3 = [(WFNSExtensionItemContentItem *)self extensionItemName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WFNSExtensionItemContentItem;
    v5 = [(WFContentItem *)&v8 name];
  }

  v6 = v5;

  return v6;
}

- (id)extensionItemName
{
  v2 = [(WFNSExtensionItemContentItem *)self extensionItem];
  v3 = [v2 attributedTitle];
  v4 = [v3 string];

  return v4;
}

- (id)itemProviders
{
  v2 = [(WFNSExtensionItemContentItem *)self extensionItem];
  v3 = [v2 attachments];

  return v3;
}

- (id)itemProviderItems
{
  v3 = objc_opt_class();
  v4 = +[WFCoercionOptions new];
  v5 = [(WFContentItem *)self itemsByCoercingToItemClass:v3 options:v4 error:0];

  return v5;
}

- (NSExtensionItem)extensionItem
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Extension items", @"Extension items");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Extension item", @"Extension item");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)outputTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [WFObjectType typeWithClass:objc_opt_class()];
  v5 = [WFObjectType typeWithClass:objc_opt_class()];
  v6 = [v2 orderedSetWithObjects:{v3, v4, v5, 0}];

  return v6;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)a3
{
  v4 = a3;
  if ([v4 conformsToClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v4, "conformsToClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(v4, "conformsToClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(v4, "conformsToClass:", objc_opt_class()))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___WFNSExtensionItemContentItem;
    v5 = objc_msgSendSuper2(&v7, sel_supportedTypeMustBeDeterminedByInstance_, v4);
  }

  return v5;
}

+ (id)itemWithObject:(id)a3 sourceAppBundleIdentifier:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [objc_alloc(MEMORY[0x277CD3A58]) initWithBundleIdentifier:v7];
  v12 = [MEMORY[0x277CD3A88] sharedResolver];
  v13 = [v12 resolvedAppMatchingDescriptor:v11];

  if (v13)
  {
    v14 = [WFAppContentLocation locationWithAppDescriptor:v13];
    v15 = +[WFManagedConfigurationProfile defaultProfile];
    v16 = [v15 isAccountBasedSourceApp:v7];

    if (v16)
    {
      v17 = [v10 userInfo];
      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v18 = get_UINSExtensionItemUserInfoIsContentManagedKeySymbolLoc_ptr;
      v29 = get_UINSExtensionItemUserInfoIsContentManagedKeySymbolLoc_ptr;
      if (!get_UINSExtensionItemUserInfoIsContentManagedKeySymbolLoc_ptr)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __get_UINSExtensionItemUserInfoIsContentManagedKeySymbolLoc_block_invoke;
        v31 = &unk_27834A178;
        v32 = &v26;
        __get_UINSExtensionItemUserInfoIsContentManagedKeySymbolLoc_block_invoke(buf);
        v18 = v27[3];
      }

      _Block_object_dispose(&v26, 8);
      if (!v18)
      {
        v24 = [MEMORY[0x277CCA890] currentHandler];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *get_UINSExtensionItemUserInfoIsContentManagedKey(void)"];
        [v24 handleFailureInFunction:v25 file:@"WFNSExtensionItemContentItem.m" lineNumber:27 description:{@"%s", dlerror()}];

        __break(1u);
      }

      v19 = [v17 objectForKeyedSubscript:*v18];

      if (v19)
      {
        if ([v19 BOOLValue])
        {
          v20 = 2;
        }

        else
        {
          v20 = 1;
        }
      }

      else
      {
        v20 = 0;
      }

      v22 = [WFAppContentLocation locationWithAppDescriptor:v13 managedLevel:v20];

      v14 = v22;
    }

    if (v10)
    {
      [a1 itemWithObject:v10 origin:v14 disclosureLevel:1];
    }

    else
    {
      [a1 itemWithObject:v8 origin:v14 disclosureLevel:1];
    }
    v21 = ;
  }

  else
  {
    v14 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "+[WFNSExtensionItemContentItem itemWithObject:sourceAppBundleIdentifier:]";
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&dword_21E1BD000, v14, OS_LOG_TYPE_ERROR, "%s Failed to resolve app descriptor with bundle identifier: %@", buf, 0x16u);
    }

    v21 = 0;
  }

  return v21;
}

@end