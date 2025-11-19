@interface WFGenericFileContentItem
+ (id)contentCategories;
+ (id)creationDatePropertyBuilder;
+ (id)itemPathPropertyBuilder;
+ (id)itemWithSerializedItem:(id)a3 forType:(id)a4 named:(id)a5 attributionSet:(id)a6 cachingIdentifier:(id)a7;
+ (id)modificationDatePropertyBuilder;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
+ (id)stringConversionBehavior;
- (BOOL)canGenerateRepresentationForType:(id)a3;
- (BOOL)isContent;
- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5;
- (void)generateFileRepresentation:(id)a3 options:(id)a4 forType:(id)a5;
- (void)generateObjectRepresentation:(id)a3 options:(id)a4 forClass:(Class)a5;
@end

@implementation WFGenericFileContentItem

- (BOOL)isContent
{
  v2 = [(WFContentItem *)self internalRepresentationType];
  v3 = [v2 conformsToUTType:*MEMORY[0x277CE1D40]];

  return v3;
}

- (BOOL)canGenerateRepresentationForType:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 string];

  v8 = [v7 isEqualToString:@"UIPrintFormatter"];
  if (([v4 isEqualToUTType:*MEMORY[0x277CE1ED8]] & 1) != 0 || v8)
  {
    v10 = [(WFGenericFileContentItem *)self isContent];
LABEL_12:
    v9 = v10;
    goto LABEL_13;
  }

  if (([v4 isEqualToUTType:*MEMORY[0x277CE1D40]] & 1) == 0)
  {
    v12.receiver = self;
    v12.super_class = WFGenericFileContentItem;
    v10 = [(WFContentItem *)&v12 canGenerateRepresentationForType:v4];
    goto LABEL_12;
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (void)generateFileRepresentation:(id)a3 options:(id)a4 forType:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 isEqualToUTType:*MEMORY[0x277CE1ED8]])
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__WFGenericFileContentItem_generateFileRepresentation_options_forType___block_invoke;
    v16[3] = &unk_278348540;
    v17 = v10;
    v18 = v9;
    v19 = self;
    v20 = v8;
    [(WFContentItem *)self getFileRepresentation:v16 forType:0 options:v18];

    v11 = v17;
  }

  else
  {
    if (![v10 isEqualToUTType:*MEMORY[0x277CE1E08]])
    {
      v12 = [objc_opt_class() badCoercionErrorForType:v10];
      (*(v8 + 2))(v8, 0, v12);

      goto LABEL_7;
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __71__WFGenericFileContentItem_generateFileRepresentation_options_forType___block_invoke_3;
    v13[3] = &unk_278348570;
    v15 = v8;
    v14 = v9;
    [(WFContentItem *)self getFileRepresentation:v13 forType:0 options:v14];

    v11 = v15;
  }

LABEL_7:
}

void __71__WFGenericFileContentItem_generateFileRepresentation_options_forType___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [WFWebResource webResourceWithFile:a2];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__WFGenericFileContentItem_generateFileRepresentation_options_forType___block_invoke_2;
  v7[3] = &unk_278348518;
  v6 = *(a1 + 56);
  v7[4] = *(a1 + 48);
  v8 = v6;
  [WFWebResourceCapturer getPasteboardRepresentationForWebResource:v3 type:v4 coercionOptions:v5 completionHandler:v7];
}

void __71__WFGenericFileContentItem_generateFileRepresentation_options_forType___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = getWFContentGraphLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[WFGenericFileContentItem generateFileRepresentation:options:forType:]_block_invoke_3";
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_21E1BD000, v7, OS_LOG_TYPE_ERROR, "%s Failed to convert WFGenericFileContentItem to PDF because we couldn't make a WFFileRepresentation: %@", &v13, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if ([_TtC10ContentKit19WFiWorkPDFConverter canHandleFile:v5])
    {
      v8 = objc_opt_new();
      [v8 convertToPDF:v5 completionHandler:*(a1 + 40)];
    }

    else
    {
      v9 = [*(a1 + 32) dictionary];
      v10 = [v9 objectForKey:@"WFCoercionOptionPDFIncludeMargin"];
      v11 = [v10 BOOLValue];

      v8 = [WFWebResource webResourceWithFile:v5];
      v12 = objc_alloc_init(WFWebResourceCapturer);
      [(WFWebResourceCapturer *)v12 generatePDFForWebResource:v8 includeMargin:v11 coercionOptions:*(a1 + 32) completionHandler:*(a1 + 40)];
    }
  }
}

void __71__WFGenericFileContentItem_generateFileRepresentation_options_forType___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v16 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v16)
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_10;
  }

  if ([v10 isEqualToString:@"_"])
  {

    v12 = *(a1 + 40);
  }

  else
  {
    v12 = *(a1 + 40);
    if (v10)
    {
      v13 = 0;
      v14 = v10;
      goto LABEL_8;
    }
  }

  v14 = [*(a1 + 32) name];
  v10 = 0;
  v13 = 1;
LABEL_8:
  v15 = [WFFileRepresentation fileWithData:v16 ofType:v9 proposedFilename:v14];
  (*(v12 + 16))(v12, v15, v11);

  if (v13)
  {
  }

LABEL_10:
}

- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (objc_opt_class() == a3)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__19278;
    v22 = __Block_byref_object_dispose__19279;
    v23 = 0;
    v10 = dispatch_semaphore_create(0);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __79__WFGenericFileContentItem_generateObjectRepresentationForClass_options_error___block_invoke;
    v15[3] = &unk_2783484F0;
    v11 = v10;
    v16 = v11;
    v17 = &v18;
    [(WFContentItem *)self getFileRepresentation:v15 forType:0 options:v8];
    v12 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v11, v12);
    v9 = v19[5];

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = WFGenericFileContentItem;
    v9 = [(WFContentItem *)&v14 generateObjectRepresentationForClass:a3 options:v8 error:a5];
  }

  return v9;
}

void __79__WFGenericFileContentItem_generateObjectRepresentationForClass_options_error___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isTemporaryFile])
  {
    v4 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v27 = "[WFGenericFileContentItem generateObjectRepresentationForClass:options:error:]_block_invoke";
      _os_log_impl(&dword_21E1BD000, v4, OS_LOG_TYPE_DEFAULT, "%s Representation is data or temporary file", buf, 0xCu);
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }

  else
  {
    v5 = [MEMORY[0x277CC6408] defaultManager];
    v6 = [v3 fileURL];
    v24 = 0;
    v7 = [v5 itemForURL:v6 error:&v24];
    v8 = v24;

    if (v7)
    {
      v9 = objc_alloc(MEMORY[0x277D23BA8]);
      v10 = [v9 initWithBundleIdentifier:*MEMORY[0x277D7A240]];
      v11 = objc_alloc(MEMORY[0x277D23808]);
      v12 = [v7 itemIdentifier];
      v13 = [v11 initWithValue:v12 typeName:@"DOCFileEntity"];

      v14 = objc_alloc(MEMORY[0x277D23C60]);
      v25 = v13;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
      v16 = [v14 initWithIdentifiers:v15 entityType:@"DOCFileEntity"];

      v17 = getWFAppIntentsLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v7 itemIdentifier];
        *buf = 136315394;
        v27 = "[WFGenericFileContentItem generateObjectRepresentationForClass:options:error:]_block_invoke";
        v28 = 2112;
        v29 = v18;
        _os_log_impl(&dword_21E1BD000, v17, OS_LOG_TYPE_DEFAULT, "%s Fetching entity with identifier %@", buf, 0x16u);
      }

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __79__WFGenericFileContentItem_generateObjectRepresentationForClass_options_error___block_invoke_222;
      v22[3] = &unk_2783484C8;
      v21 = *(a1 + 32);
      v19 = v21;
      v23 = v21;
      [v10 performQuery:v16 completionHandler:v22];
    }

    else
    {
      v20 = getWFAppIntentsLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v27 = "[WFGenericFileContentItem generateObjectRepresentationForClass:options:error:]_block_invoke";
        v28 = 2112;
        v29 = v8;
        _os_log_impl(&dword_21E1BD000, v20, OS_LOG_TYPE_ERROR, "%s Could not retreive FPItem with error: %@", buf, 0x16u);
      }

      dispatch_semaphore_signal(*(a1 + 32));
    }
  }
}

void __79__WFGenericFileContentItem_generateObjectRepresentationForClass_options_error___block_invoke_222(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = getWFAppIntentsLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 value];
    v9 = [v8 value];
    v19 = 136315650;
    v20 = "[WFGenericFileContentItem generateObjectRepresentationForClass:options:error:]_block_invoke";
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_21E1BD000, v7, OS_LOG_TYPE_DEFAULT, "%s Recieved output: %@ error: %@", &v19, 0x20u);
  }

  v10 = [v5 value];
  v11 = [v10 value];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [v13 firstObject];

  v15 = [v14 value];

  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [WFObjectRepresentation object:v15];
      v17 = *(*(a1 + 40) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)generateObjectRepresentation:(id)a3 options:(id)a4 forClass:(Class)a5
{
  v8 = a3;
  v9 = a4;
  v10 = NSStringFromClass(a5);
  v11 = [@"UIPrintFormatter" isEqualToString:v10];

  if (v11)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__WFGenericFileContentItem_generateObjectRepresentation_options_forClass___block_invoke;
    v13[3] = &unk_278349FC8;
    v14 = v9;
    v15 = self;
    v16 = v8;
    [(WFContentItem *)self getFileRepresentation:v13 forType:0 options:v14];
  }

  else
  {
    v12 = [objc_opt_class() badCoercionErrorForObjectClass:a5];
    (*(v8 + 2))(v8, 0, 0, v12);
  }
}

void __74__WFGenericFileContentItem_generateObjectRepresentation_options_forClass___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [WFWebResource webResourceWithFile:a2];
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__WFGenericFileContentItem_generateObjectRepresentation_options_forClass___block_invoke_2;
  v6[3] = &unk_2783484A0;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v5;
  [WFWebResourceCapturer getPrintFormatterForWebResource:v3 coercionOptions:v4 completionHandler:v6];
}

void __74__WFGenericFileContentItem_generateObjectRepresentation_options_forClass___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  if ([v7 isEqualToString:@"_"])
  {

    v9 = *(a1 + 40);
  }

  else
  {
    v9 = *(a1 + 40);
    if (v7)
    {
      goto LABEL_5;
    }
  }

  v7 = [*(a1 + 32) name];
LABEL_5:
  (*(v9 + 16))(v9, v10, v7, v8);
}

+ (id)contentCategories
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"Documents";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)outputTypes
{
  v10[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB70];
  v3 = [MEMORY[0x277D79F68] typeFromPasteboardType:*MEMORY[0x277D7A7E8]];
  v10[0] = v3;
  v4 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E08]];
  v10[1] = v4;
  v5 = [WFObjectType typeWithClassName:@"UIPrintFormatter" frameworkName:@"UIKit" location:2];
  v10[2] = v5;
  v6 = [WFObjectType typeWithClass:objc_opt_class()];
  v10[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:4];
  v8 = [v2 orderedSetWithArray:v7];

  return v8;
}

+ (id)ownedTypes
{
  v3 = objc_opt_class();
  v4 = MEMORY[0x277CBEB70];
  if (v3 == a1)
  {
    v6 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1D48]];
    v7 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1D40]];
    v5 = [v4 orderedSetWithObjects:{v6, v7, 0}];
  }

  else
  {
    v5 = objc_opt_new();
  }

  return v5;
}

+ (id)itemWithSerializedItem:(id)a3 forType:(id)a4 named:(id)a5 attributionSet:(id)a6 cachingIdentifier:(id)a7
{
  v76 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v72.receiver = a1;
  v72.super_class = &OBJC_METACLASS___WFGenericFileContentItem;
  v59 = v14;
  v60 = v13;
  v17 = objc_msgSendSuper2(&v72, sel_itemWithSerializedItem_forType_named_attributionSet_cachingIdentifier_, v12, v13, v14, v15, v16);
  v18 = v17;
  if (v17)
  {
    v19 = v17;
    goto LABEL_53;
  }

  v57 = v16;
  v58 = v15;
  v20 = objc_opt_new();
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v56 = v12;
  v21 = v12;
  v22 = [v21 countByEnumeratingWithState:&v68 objects:v75 count:16];
  v61 = v21;
  if (!v22)
  {
    v24 = v60;
    goto LABEL_27;
  }

  v23 = v22;
  obj = *v69;
  v24 = v60;
  do
  {
    for (i = 0; i != v23; ++i)
    {
      if (*v69 != obj)
      {
        objc_enumerationMutation(v21);
      }

      v26 = *(*(&v68 + 1) + 8 * i);
      v27 = [MEMORY[0x277D79F68] typeFromPasteboardType:v26];
      v28 = [a1 allSupportedTypes];
      if ([v27 conformsToTypes:v28])
      {

LABEL_10:
        if (!v24)
        {
          v29 = [a1 ownedTypes];
          if ([v27 conformsToTypes:v29])
          {

            goto LABEL_17;
          }

          v34 = [a1 ownedPasteboardTypes];
          v35 = [v27 conformsToTypes:v34];

          if (v35)
          {
LABEL_17:
            v24 = v27;
          }

          else
          {
            v24 = 0;
          }
        }

        v28 = [v21 objectForKey:v26];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [v20 addObject:v27];
        }

LABEL_22:

        goto LABEL_23;
      }

      if (objc_opt_class() != a1)
      {
        goto LABEL_22;
      }

      [v27 fileExtension];
      v30 = v20;
      v32 = v31 = v24;
      v33 = [v32 length];

      v24 = v31;
      v20 = v30;
      v21 = v61;

      if (v33)
      {
        goto LABEL_10;
      }

LABEL_23:
    }

    v23 = [v21 countByEnumeratingWithState:&v68 objects:v75 count:16];
  }

  while (v23);
LABEL_27:

  if ([v20 count])
  {
    v16 = v57;
    v15 = v58;
    if (!v24)
    {
      v24 = [v20 firstObject];
    }

    v36 = [v24 string];
    v37 = [v21 objectForKey:v36];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = [v37 dataUsingEncoding:4];

      v37 = v38;
    }

    objc_opt_class();
    v60 = v24;
    if (objc_opt_isKindOfClass())
    {
      v55 = v36;
      v39 = *MEMORY[0x277CE1D48];
      if ([v24 isEqualToUTType:*MEMORY[0x277CE1D48]])
      {
        v40 = 0;
      }

      else
      {
        v40 = v24;
      }

      v41 = [WFFileRepresentation fileWithData:v37 ofType:v40 proposedFilename:v59, v37];
      v19 = [a1 itemWithFile:v41 attributionSet:v58 cachingIdentifier:v57];

      [v20 removeObject:v24];
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      obja = v20;
      v42 = [obja countByEnumeratingWithState:&v64 objects:v74 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v65;
        do
        {
          for (j = 0; j != v43; ++j)
          {
            if (*v65 != v44)
            {
              objc_enumerationMutation(obja);
            }

            v46 = *(*(&v64 + 1) + 8 * j);
            v47 = [v46 string];
            v48 = [v21 objectForKey:v47];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v49 = [v48 dataUsingEncoding:4];

              v48 = v49;
            }

            if ([v60 isEqualToUTType:v39])
            {
              v50 = 0;
            }

            else
            {
              v50 = v46;
            }

            v51 = [WFFileRepresentation fileWithData:v48 ofType:v50 proposedFilename:v59];
            v73 = v51;
            v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
            [v19 setFileRepresentations:v52 forType:v46];

            v21 = v61;
          }

          v43 = [obja countByEnumeratingWithState:&v64 objects:v74 count:16];
        }

        while (v43);
      }

      v16 = v57;
      v15 = v58;
      v37 = v54;
      v36 = v55;
    }

    else
    {
      v19 = 0;
    }

    v12 = v56;
  }

  else
  {
    v60 = v24;
    v19 = 0;
    v12 = v56;
    v16 = v57;
    v15 = v58;
  }

  v18 = 0;

LABEL_53:

  return v19;
}

+ (id)stringConversionBehavior
{
  if (objc_opt_class() == a1)
  {
    v4 = [a1 propertyForName:@"Name"];
    v3 = [WFContentItemStringConversionBehavior accessingProperty:v4];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___WFGenericFileContentItem;
    v3 = objc_msgSendSuper2(&v6, sel_stringConversionBehavior);
  }

  return v3;
}

+ (id)propertyBuilders
{
  v15[5] = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    v14 = WFLocalizedContentPropertyNameMarker(@"File Size");
    v4 = [WFContentPropertyBuilder block:&__block_literal_global_186_19325 name:v14 class:objc_opt_class()];
    v5 = [v4 userInfo:@"WFFileSizeProperty"];
    v15[0] = v5;
    v6 = WFLocalizedContentPropertyNameMarker(@"File Extension");
    v7 = [WFContentPropertyBuilder block:&__block_literal_global_193 name:v6 class:objc_opt_class()];
    v8 = [v7 userInfo:@"WFFileExtensionProperty"];
    v9 = [v8 caseInsensitive:1];
    v15[1] = v9;
    v10 = [a1 itemPathPropertyBuilder];
    v15[2] = v10;
    v11 = [a1 creationDatePropertyBuilder];
    v15[3] = v11;
    v12 = [a1 modificationDatePropertyBuilder];
    v15[4] = v12;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __44__WFGenericFileContentItem_propertyBuilders__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__WFGenericFileContentItem_propertyBuilders__block_invoke_2;
  v7[3] = &unk_278349780;
  v8 = v5;
  v6 = v5;
  [a2 getPreferredFileSize:v7];
}

void __44__WFGenericFileContentItem_propertyBuilders__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [[WFFileSize alloc] initWithByteCount:a2];
  (*(v2 + 16))(v2, v3);
}

+ (id)modificationDatePropertyBuilder
{
  v3 = [WFContentPropertyBuilder block:&__block_literal_global_176 name:@"Last Modified Date" class:objc_opt_class()];
  v4 = WFLocalizedContentPropertyNameMarker(@"Date Modified");
  v5 = [v3 displayName:v4];
  v6 = [v5 userInfo:@"WFFileModificationDate"];
  v7 = [v6 tense:1];
  v8 = [v7 timeUnits:{objc_msgSend(a1, "relativeSeconds")}];

  return v8;
}

void __59__WFGenericFileContentItem_modificationDatePropertyBuilder__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__WFGenericFileContentItem_modificationDatePropertyBuilder__block_invoke_2;
  v7[3] = &unk_278349F78;
  v8 = v5;
  v6 = v5;
  [a2 getFileRepresentation:v7 forType:0];
}

void __59__WFGenericFileContentItem_modificationDatePropertyBuilder__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 modificationDate];
  (*(v2 + 16))(v2, v3);
}

+ (id)creationDatePropertyBuilder
{
  v3 = [WFContentPropertyBuilder block:&__block_literal_global_167 name:@"Creation Date" class:objc_opt_class()];
  v4 = WFLocalizedContentPropertyNameMarker(@"Date Created");
  v5 = [v3 displayName:v4];
  v6 = [v5 userInfo:@"WFFileCreationDate"];
  v7 = [v6 tense:1];
  v8 = [v7 timeUnits:{objc_msgSend(a1, "relativeSeconds")}];

  return v8;
}

void __55__WFGenericFileContentItem_creationDatePropertyBuilder__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__WFGenericFileContentItem_creationDatePropertyBuilder__block_invoke_2;
  v7[3] = &unk_278349F78;
  v8 = v5;
  v6 = v5;
  [a2 getFileRepresentation:v7 forType:0];
}

void __55__WFGenericFileContentItem_creationDatePropertyBuilder__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 creationDate];
  (*(v2 + 16))(v2, v3);
}

+ (id)itemPathPropertyBuilder
{
  v2 = WFLocalizedContentPropertyNameMarker(@"File Path");
  v3 = [WFContentPropertyBuilder block:&__block_literal_global_19347 name:v2 class:objc_opt_class()];
  v4 = [v3 userInfo:MEMORY[0x277CBEC10]];
  v5 = [v4 caseInsensitive:0];
  v6 = [v5 userInfo:@"WFFilePath"];

  return v6;
}

void __51__WFGenericFileContentItem_itemPathPropertyBuilder__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__WFGenericFileContentItem_itemPathPropertyBuilder__block_invoke_2;
  v7[3] = &unk_278349F78;
  v8 = v5;
  v6 = v5;
  [a2 getFileRepresentation:v7 forType:0];
}

void __51__WFGenericFileContentItem_itemPathPropertyBuilder__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  v5 = [v3 fileURL];
  v6 = [v5 wf_displayPath];
  if (v6)
  {
    (*(v4 + 16))(v4, v6);
  }

  else
  {
    v7 = [v8 filename];
    (*(v4 + 16))(v4, v7);
  }
}

@end