@interface WFNSItemProviderContentItem
+ (id)itemProviderTypeIdentifierOverridesWithFileURLType:(id)a3;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)ownedTypes;
- (NSItemProvider)itemProvider;
- (id)name;
- (id)outputTypes;
- (void)generateFileRepresentation:(id)a3 options:(id)a4 forType:(id)a5;
- (void)generateFileRepresentationWithNewAPI:(id)a3 options:(id)a4 forType:(id)a5;
- (void)generateObjectRepresentation:(id)a3 options:(id)a4 forClass:(Class)a5;
- (void)generateObjectRepresentationWithNewAPI:(id)a3 options:(id)a4 forClass:(Class)a5;
- (void)preloadImportantItemsWithCompletionHandler:(id)a3;
@end

@implementation WFNSItemProviderContentItem

- (void)preloadImportantItemsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WFNSItemProviderContentItem *)self outputTypes];
  v6 = [WFObjectType typeWithClass:objc_opt_class()];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __74__WFNSItemProviderContentItem_preloadImportantItemsWithCompletionHandler___block_invoke;
    v21[3] = &unk_278349F18;
    v21[4] = self;
    v8 = &v22;
    v22 = v4;
    v9 = objc_opt_class();
    v10 = v21;
  }

  else
  {
    v11 = [WFObjectType typeWithClass:objc_opt_class()];
    v12 = [v5 containsObject:v11];

    if (v12)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __74__WFNSItemProviderContentItem_preloadImportantItemsWithCompletionHandler___block_invoke_2;
      v19[3] = &unk_278349F18;
      v19[4] = self;
      v8 = &v20;
      v20 = v4;
      v9 = objc_opt_class();
      v10 = v19;
    }

    else
    {
      v13 = [WFObjectType typeWithClass:objc_opt_class()];
      v14 = [v5 containsObject:v13];

      if (!v14)
      {
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __74__WFNSItemProviderContentItem_preloadImportantItemsWithCompletionHandler___block_invoke_4;
        v15[3] = &unk_27834A200;
        v15[4] = self;
        v8 = &v16;
        v16 = v4;
        [(WFContentItem *)self getFileRepresentations:v15 forType:0];
        goto LABEL_8;
      }

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __74__WFNSItemProviderContentItem_preloadImportantItemsWithCompletionHandler___block_invoke_3;
      v17[3] = &unk_278349F18;
      v17[4] = self;
      v8 = &v18;
      v18 = v4;
      v9 = objc_opt_class();
      v10 = v17;
    }
  }

  [(WFContentItem *)self getObjectRepresentation:v10 forClass:v9];
LABEL_8:
}

void __74__WFNSItemProviderContentItem_preloadImportantItemsWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  [v6 setContentName:a3];
  (*(*(a1 + 40) + 16))();
}

void __74__WFNSItemProviderContentItem_preloadImportantItemsWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  [v6 setContentName:a3];
  (*(*(a1 + 40) + 16))();
}

void __74__WFNSItemProviderContentItem_preloadImportantItemsWithCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  [v6 setContentName:a3];
  (*(*(a1 + 40) + 16))();
}

void __74__WFNSItemProviderContentItem_preloadImportantItemsWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 firstObject];
  v6 = [v5 wfName];
  [*(a1 + 32) setContentName:v6];

  (*(*(a1 + 40) + 16))();
}

- (id)outputTypes
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB40];
  v4 = MEMORY[0x277D79F68];
  v5 = [(WFNSItemProviderContentItem *)self itemProvider];
  v6 = [v5 registeredTypeIdentifiers];
  v7 = [v4 typesFromStrings:v6];
  v8 = [v3 orderedSetWithArray:v7];

  v9 = objc_opt_class();
  v10 = [(WFNSItemProviderContentItem *)self fileURLType];
  v11 = [v9 itemProviderTypeIdentifierOverridesWithFileURLType:v10];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [v8 copy];
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    v16 = *MEMORY[0x277CE1E90];
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        v19 = [v11 objectForKey:v18];
        if (v19)
        {
          [v8 replaceObjectAtIndex:objc_msgSend(v8 withObject:{"indexOfObject:", v18), v19}];
        }

        else if ([v18 conformsToUTType:v16])
        {
          v20 = [v8 indexOfObject:v18];
          v21 = [WFObjectType typeWithClass:objc_opt_class()];
          [v8 replaceObjectAtIndex:v20 withObject:v21];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  v22 = [WFObjectType typeWithClass:objc_opt_class()];
  [v8 addObject:v22];

  return v8;
}

- (id)name
{
  v3 = [(WFNSItemProviderContentItem *)self contentName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WFNSItemProviderContentItem;
    v5 = [(WFContentItem *)&v8 name];
  }

  v6 = v5;

  return v6;
}

- (void)generateObjectRepresentation:(id)a3 options:(id)a4 forClass:(Class)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = getWFContentGraphLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v26 = "[WFNSItemProviderContentItem generateObjectRepresentation:options:forClass:]";
    v27 = 2112;
    v28 = a5;
    _os_log_impl(&dword_21E1BD000, v10, OS_LOG_TYPE_DEFAULT, "%s Loading item of class %@ from NSItemProvider", buf, 0x16u);
  }

  if (![(WFNSItemProviderContentItem *)self useNewLoadingAPI])
  {
    if (objc_opt_class() == a5)
    {
      v12 = [(WFNSItemProviderContentItem *)self itemProvider];
      v13 = [*MEMORY[0x277CE1E90] identifier];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __77__WFNSItemProviderContentItem_generateObjectRepresentation_options_forClass___block_invoke;
      v23[3] = &unk_278349EA0;
      v24 = v8;
      [v12 loadItemForTypeIdentifier:v13 options:0 completionHandler:v23];

      v14 = v24;
    }

    else if (objc_opt_class() == a5)
    {
      v15 = [(WFNSItemProviderContentItem *)self itemProvider];
      v16 = [*MEMORY[0x277CE1DB0] identifier];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __77__WFNSItemProviderContentItem_generateObjectRepresentation_options_forClass___block_invoke_2;
      v21[3] = &unk_278349EC8;
      v22 = v8;
      [v15 loadItemForTypeIdentifier:v16 options:0 completionHandler:v21];

      v14 = v22;
    }

    else
    {
      if (objc_opt_class() != a5)
      {
        v11 = [objc_opt_class() badCoercionErrorForObjectClass:a5];
        (*(v8 + 2))(v8, 0, 0, v11);

        goto LABEL_13;
      }

      v17 = [(WFNSItemProviderContentItem *)self itemProvider];
      v18 = [*MEMORY[0x277CE1E20] identifier];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __77__WFNSItemProviderContentItem_generateObjectRepresentation_options_forClass___block_invoke_3;
      v19[3] = &unk_27834A278;
      v20 = v8;
      [v17 loadItemForTypeIdentifier:v18 options:0 completionHandler:v19];

      v14 = v20;
    }

    goto LABEL_13;
  }

  [(WFNSItemProviderContentItem *)self generateObjectRepresentationWithNewAPI:v8 options:v9 forClass:a5];
LABEL_13:
}

void __77__WFNSItemProviderContentItem_generateObjectRepresentation_options_forClass___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  if (a2)
  {
    v5 = MEMORY[0x277D79FC8];
    v6 = a2;
    a2 = [[v5 alloc] initWithPlatformImage:v6];
  }

  (*(*(a1 + 32) + 16))();
}

void __77__WFNSItemProviderContentItem_generateObjectRepresentation_options_forClass___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v6;
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithContentsOfURL:v5 encoding:4 error:&v17];
    v8 = v17;

    v5 = v7;
    v6 = v8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v5 regularFileContents];

    v5 = v9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 encoding:4];

    v5 = v10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v5 containsString:@"<div>"])
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __77__WFNSItemProviderContentItem_generateObjectRepresentation_options_forClass___block_invoke_4;
      v13[3] = &unk_278349EF0;
      v14 = v5;
      v16 = *(a1 + 32);
      v15 = v6;
      dispatch_async(MEMORY[0x277D85CD0], v13);
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v11 = *(a1 + 32);
    if (v6)
    {
      (*(v11 + 16))(v11, 0, 0, v6);
    }

    else
    {
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA2C0] code:-1100 userInfo:0];
      (*(v11 + 16))(v11, 0, 0, v12);
    }
  }
}

void __77__WFNSItemProviderContentItem_generateObjectRepresentation_options_forClass___block_invoke_4(uint64_t a1)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ([v2 rangeOfString:@"<html"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"<!DOCTYPE html><html><head><meta charset=utf-8></head><body>%@</body></html>", v2];

    v2 = v3;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v4 = getNSDocumentTypeDocumentAttributeSymbolLoc_ptr_25582;
  v26 = getNSDocumentTypeDocumentAttributeSymbolLoc_ptr_25582;
  if (!getNSDocumentTypeDocumentAttributeSymbolLoc_ptr_25582)
  {
    v5 = UIFoundationLibrary_25584();
    v24[3] = dlsym(v5, "NSDocumentTypeDocumentAttribute");
    getNSDocumentTypeDocumentAttributeSymbolLoc_ptr_25582 = v24[3];
    v4 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (!v4)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getNSDocumentTypeDocumentAttribute(void)"];
    [v19 handleFailureInFunction:v20 file:@"WFNSItemProviderContentItem.m" lineNumber:21 description:{@"%s", dlerror()}];

    goto LABEL_15;
  }

  v6 = *v4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v7 = getNSHTMLTextDocumentTypeSymbolLoc_ptr_25589;
  v26 = getNSHTMLTextDocumentTypeSymbolLoc_ptr_25589;
  v27 = v6;
  if (!getNSHTMLTextDocumentTypeSymbolLoc_ptr_25589)
  {
    v8 = UIFoundationLibrary_25584();
    v24[3] = dlsym(v8, "NSHTMLTextDocumentType");
    getNSHTMLTextDocumentTypeSymbolLoc_ptr_25589 = v24[3];
    v7 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (!v7)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getNSHTMLTextDocumentType(void)"];
    [v21 handleFailureInFunction:v22 file:@"WFNSItemProviderContentItem.m" lineNumber:22 description:{@"%s", dlerror()}];

LABEL_15:
    __break(1u);
  }

  v28[0] = *v7;
  v9 = MEMORY[0x277CBEAC0];
  v10 = v28[0];
  v11 = [v9 dictionaryWithObjects:v28 forKeys:&v27 count:1];

  v12 = objc_alloc(MEMORY[0x277CCA898]);
  v13 = [v2 dataUsingEncoding:4];
  v14 = [v12 initWithData:v13 options:v11 documentAttributes:0 error:0];

  v15 = *(a1 + 48);
  v16 = [v14 string];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v2;
  }

  (*(v15 + 16))(v15, v18, 0, *(a1 + 40));
}

- (void)generateObjectRepresentationWithNewAPI:(id)a3 options:(id)a4 forClass:(Class)a5
{
  v7 = a3;
  v8 = [(WFNSItemProviderContentItem *)self itemProvider];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__WFNSItemProviderContentItem_generateObjectRepresentationWithNewAPI_options_forClass___block_invoke;
  v11[3] = &unk_278349E78;
  v11[4] = self;
  v12 = v7;
  v9 = v7;
  v10 = [v8 loadObjectOfClass:a5 completionHandler:v11];
}

void __87__WFNSItemProviderContentItem_generateObjectRepresentationWithNewAPI_options_forClass___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 itemProvider];
  v9 = [v8 suggestedName];

  (*(*(a1 + 40) + 16))();
}

- (void)generateFileRepresentation:(id)a3 options:(id)a4 forType:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = getWFContentGraphLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[WFNSItemProviderContentItem generateFileRepresentation:options:forType:]";
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_21E1BD000, v11, OS_LOG_TYPE_DEFAULT, "%s Loading item of type %@ from NSItemProvider", buf, 0x16u);
  }

  if ([(WFNSItemProviderContentItem *)self useNewLoadingAPI])
  {
    [(WFNSItemProviderContentItem *)self generateFileRepresentationWithNewAPI:v8 options:v9 forType:v10];
  }

  else
  {
    v12 = [(WFNSItemProviderContentItem *)self itemProvider];
    v13 = [v10 string];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __74__WFNSItemProviderContentItem_generateFileRepresentation_options_forType___block_invoke;
    v14[3] = &unk_278349E50;
    v14[4] = self;
    v15 = v10;
    v16 = v8;
    [v12 loadItemForTypeIdentifier:v13 options:0 completionHandler:v14];
  }
}

void __74__WFNSItemProviderContentItem_generateFileRepresentation_options_forType___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = a1[5];
    if ([v8 conformsToUTType:*MEMORY[0x277CE1D70]])
    {
      v9 = [v5 wfFileType];

      [a1[4] setFileURLType:v9];
      v8 = v9;
    }

    v10 = a1[6];
    v11 = [WFFileRepresentation fileWithURL:v5 options:5 ofType:v8];
    v10[2](v10, v11, v7);
    goto LABEL_5;
  }

  v12 = [v6 domain];
  if (![v12 isEqualToString:*MEMORY[0x277CCA2C0]])
  {

    goto LABEL_10;
  }

  v13 = [v7 code];

  if (v13 != -1100)
  {
LABEL_10:
    (*(a1[6] + 2))();
    goto LABEL_11;
  }

  v8 = [a1[4] itemProvider];
  v11 = [a1[5] string];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__WFNSItemProviderContentItem_generateFileRepresentation_options_forType___block_invoke_2;
  v15[3] = &unk_278349E28;
  v14 = a1[5];
  v15[4] = a1[4];
  v16 = v14;
  v17 = a1[6];
  [v8 loadItemForTypeIdentifier:v11 options:0 completionHandler:v15];

LABEL_5:
LABEL_11:
}

void __74__WFNSItemProviderContentItem_generateFileRepresentation_options_forType___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = a1[6];
    v8 = [WFFileRepresentation fileWithData:v5 ofType:a1[5] proposedFilename:0];
    v7[2](v7, v8, v6);
  }

  else
  {
    v9 = [a1[4] itemProvider];
    v10 = [a1[5] string];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__WFNSItemProviderContentItem_generateFileRepresentation_options_forType___block_invoke_3;
    v11[3] = &unk_278349E00;
    v13 = a1[6];
    v12 = a1[5];
    [v9 loadItemForTypeIdentifier:v10 options:0 completionHandler:v11];
  }
}

void __74__WFNSItemProviderContentItem_generateFileRepresentation_options_forType___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [WFContentItem itemWithObject:a2];
    v4 = *(a1 + 40);
    v6 = v3;
    if (v3)
    {
      [v3 getFileRepresentation:v4 forType:*(a1 + 32)];
    }

    else
    {
      (*(v4 + 16))(v4, 0, 0);
    }
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

- (void)generateFileRepresentationWithNewAPI:(id)a3 options:(id)a4 forType:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(WFNSItemProviderContentItem *)self itemProvider];
  v10 = [v8 string];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__WFNSItemProviderContentItem_generateFileRepresentationWithNewAPI_options_forType___block_invoke;
  v14[3] = &unk_278349DD8;
  v16 = self;
  v17 = v7;
  v15 = v8;
  v11 = v8;
  v12 = v7;
  v13 = [v9 loadInPlaceFileRepresentationForTypeIdentifier:v10 completionHandler:v14];
}

void __84__WFNSItemProviderContentItem_generateFileRepresentationWithNewAPI_options_forType___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v7)
  {
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = __Block_byref_object_copy__25619;
    v19[4] = __Block_byref_object_dispose__25620;
    v20 = 0;
    v9 = objc_opt_new();
    v18 = v8;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __84__WFNSItemProviderContentItem_generateFileRepresentationWithNewAPI_options_forType___block_invoke_2;
    v13[3] = &unk_278349DB0;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v14 = v10;
    v15 = v11;
    v16 = v19;
    v17 = a3;
    [v9 coordinateReadingItemAtURL:v7 options:0 error:&v18 byAccessor:v13];
    v12 = v18;

    (*(*(a1 + 48) + 16))();
    _Block_object_dispose(v19, 8);

    v8 = v12;
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __84__WFNSItemProviderContentItem_generateFileRepresentationWithNewAPI_options_forType___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 lastPathComponent];
  if ([v3 hasPrefix:@"."])
  {
    v4 = [WFFileRepresentation proposedFilenameForFile:0 ofType:*(a1 + 32)];

    v3 = v4;
  }

  v5 = [*(a1 + 40) itemProvider];
  v6 = [v5 suggestedName];

  if (v6)
  {
    v7 = [*(a1 + 40) itemProvider];
    v8 = [v7 suggestedName];

    v3 = v8;
  }

  if (*(a1 + 56))
  {
    v9 = 8;
  }

  else
  {
    v9 = 3;
  }

  v10 = [WFFileRepresentation fileWithURL:v13 options:v9 ofType:*(a1 + 32) proposedFilename:v3];
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (NSItemProvider)itemProvider
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Item providers", @"Item providers");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Item provider", @"Item provider");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (id)itemProviderTypeIdentifierOverridesWithFileURLType:(id)a3
{
  v21[6] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v19 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E90]];
  v20[0] = v19;
  v18 = [WFObjectType typeWithClass:objc_opt_class()];
  v21[0] = v18;
  v17 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1EB0]];
  v20[1] = v17;
  v16 = [WFObjectType typeWithClass:objc_opt_class()];
  v21[1] = v16;
  v4 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E20]];
  v20[2] = v4;
  v5 = [WFObjectType typeWithClass:objc_opt_class()];
  v21[2] = v5;
  v6 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1DB0]];
  v20[3] = v6;
  v7 = [WFObjectType typeWithClass:objc_opt_class()];
  v21[3] = v7;
  v8 = *MEMORY[0x277CE1D70];
  v9 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1D70]];
  v20[4] = v9;
  v10 = v3;
  if (!v3)
  {
    v10 = [MEMORY[0x277D79F68] typeWithUTType:v8];
  }

  v21[4] = v10;
  v11 = *MEMORY[0x277D7A7E8];
  v12 = [MEMORY[0x277D79F68] typeWithString:*MEMORY[0x277D7A7E8]];
  v20[5] = v12;
  v13 = [MEMORY[0x277D79F68] typeFromPasteboardType:v11];
  v21[5] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];

  if (!v3)
  {
  }

  return v14;
}

@end