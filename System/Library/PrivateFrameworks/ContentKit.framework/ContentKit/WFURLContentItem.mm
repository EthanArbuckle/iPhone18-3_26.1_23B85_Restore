@interface WFURLContentItem
+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)instance;
+ (id)URLCoercions;
+ (id)attributionSetContentOfURL:(id)l;
+ (id)contentCategories;
+ (id)itemWithSerializedItem:(id)item forType:(id)type named:(id)named attributionSet:(id)set cachingIdentifier:(id)identifier;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)mutableURLCoercions;
+ (id)outputTypes;
+ (id)ownedPasteboardTypes;
+ (id)ownedTypes;
+ (void)rediscoverURLCoercionClassesIfNeeded;
+ (void)registerURLCoercion:(Class)coercion;
- (BOOL)canGenerateRepresentationForType:(id)type;
- (NSDictionary)additionalRepresentationsForSerialization;
- (NSString)description;
- (NSURL)URL;
- (id)intermediaryTypesForCoercionToItemClass:(Class)class;
- (id)outputTypes;
- (id)webResource;
- (void)generateFileRepresentation:(id)representation options:(id)options forType:(id)type;
- (void)generateObjectRepresentationForPrintHandler:(id)handler coercionOptions:(id)options;
- (void)generateObjectRepresentations:(id)representations options:(id)options forClass:(Class)class;
- (void)getContentsOfURLWithHandler:(id)handler;
- (void)getContentsWithRequest:(id)request cacheResult:(BOOL)result expectedByteCountHandler:(id)handler writtenByteCountHandler:(id)countHandler completionHandler:(id)completionHandler;
- (void)getHeadersWithCompletionHandler:(id)handler;
- (void)getPDFWithOptions:(id)options completionHandler:(id)handler;
- (void)getPreferredFileExtension:(id)extension;
- (void)getPreferredFileSize:(id)size;
- (void)getTitleWithPermissionRequestor:(id)requestor completionHandler:(id)handler;
@end

@implementation WFURLContentItem

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = WFURLContentItem;
  v3 = [(WFContentItem *)&v7 description];
  v4 = [(WFURLContentItem *)self URL];
  v5 = [v3 stringByAppendingFormat:@": %@", v4];

  return v5;
}

- (id)outputTypes
{
  v10.receiver = self;
  v10.super_class = WFURLContentItem;
  outputTypes = [(WFContentItem *)&v10 outputTypes];
  v4 = MEMORY[0x277D79F68];
  v5 = [(WFURLContentItem *)self URL];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [v4 typeFromFilename:lastPathComponent];

  if ([v7 isDeclared])
  {
    v8 = [outputTypes mutableCopy];
    [v8 insertObject:v7 atIndex:0];

    outputTypes = v8;
  }

  return outputTypes;
}

- (id)intermediaryTypesForCoercionToItemClass:(Class)class
{
  v5 = [WFObjectType typeWithClass:objc_opt_class()];
  ownedTypes = [(objc_class *)class ownedTypes];
  v7 = [ownedTypes containsObject:v5];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEB70] orderedSetWithObjects:{v5, 0}];
    goto LABEL_10;
  }

  v16.receiver = self;
  v16.super_class = WFURLContentItem;
  v8 = [(WFContentItem *)&v16 intermediaryTypesForCoercionToItemClass:class];
  firstObject = [v8 firstObject];
  if ([firstObject conformsToUTType:*MEMORY[0x277CE1DA0]])
  {
    v10 = objc_opt_class();

    if (v10 != class)
    {
      goto LABEL_10;
    }

    v11 = [v8 mutableCopy];
    v12 = [MEMORY[0x277D79F68] typeFromPasteboardType:*MEMORY[0x277D7A7E8]];
    v13 = [v11 indexOfObject:v12];

    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = [MEMORY[0x277CCAA78] indexSetWithIndex:v13];
      [v11 moveObjectsAtIndexes:v14 toIndex:0];
    }

    firstObject = v8;
  }

  else
  {
    v11 = v8;
  }

  v8 = v11;
LABEL_10:

  return v8;
}

- (BOOL)canGenerateRepresentationForType:(id)type
{
  v32 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  if ([typeCopy isEqualToClass:objc_opt_class()])
  {
    uRLCoercions = [(WFURLContentItem *)self URL];
    scheme = [uRLCoercions scheme];
    v7 = [scheme isEqualToString:@"mailto"];
LABEL_3:
    isFileURL = v7;
LABEL_4:

    goto LABEL_7;
  }

  if ([typeCopy isEqualToClass:objc_opt_class()])
  {
    v9 = [(WFURLContentItem *)self URL];
    isFileURL = [DCMapsLink isMapsURL:v9];

    goto LABEL_7;
  }

  if ([typeCopy isEqualToClass:objc_opt_class()])
  {
    uRLCoercions = [(WFURLContentItem *)self URL];
    scheme = [uRLCoercions scheme];
    v7 = [scheme hasPrefix:@"http"];
    goto LABEL_3;
  }

  if ([typeCopy isEqualToUTType:*MEMORY[0x277CE1D48]])
  {
    uRLCoercions = [(WFURLContentItem *)self URL];
    scheme = [uRLCoercions scheme];
    if (([scheme hasPrefix:@"http"] & 1) == 0)
    {
      v11 = [(WFURLContentItem *)self URL];
      scheme2 = [v11 scheme];
      if (([scheme2 isEqualToString:@"ftp"] & 1) == 0)
      {
        v13 = [(WFURLContentItem *)self URL];
        isFileURL = [v13 isFileURL];
LABEL_35:

        goto LABEL_36;
      }

      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if ([typeCopy isEqualToClass:getUIPrintFormatterClass_12433()] || (objc_msgSend(MEMORY[0x277D79F68], "typeFromPasteboardType:", *MEMORY[0x277D7A7E8]), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(typeCopy, "isEqualToType:", v14), v14, v15))
  {
    uRLCoercions = [(WFURLContentItem *)self URL];
    scheme = [uRLCoercions scheme];
    if (([scheme hasPrefix:@"http"] & 1) == 0)
    {
      v11 = [(WFURLContentItem *)self URL];
      scheme2 = [v11 scheme];
      if (([scheme2 isEqualToString:@"data"] & 1) == 0)
      {
        v13 = [(WFURLContentItem *)self URL];
        scheme3 = [v13 scheme];
        if ([scheme3 isEqualToString:@"ftp"])
        {
          isFileURL = 1;
        }

        else
        {
          v25 = [(WFURLContentItem *)self URL];
          isFileURL = [v25 isFileURL];
        }

        goto LABEL_35;
      }

LABEL_19:
      isFileURL = 1;
LABEL_36:

      goto LABEL_4;
    }

LABEL_17:
    isFileURL = 1;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objectClass = [typeCopy objectClass];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    uRLCoercions = [objc_opt_class() URLCoercions];
    v17 = [uRLCoercions countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(uRLCoercions);
          }

          v21 = *(*(&v27 + 1) + 8 * i);
          urlItem_outputClasses = [v21 urlItem_outputClasses];
          v23 = [urlItem_outputClasses containsObject:objectClass];

          if (v23)
          {
            scheme = [(WFURLContentItem *)self URL];
            v7 = [v21 urlItem_canCoerceFromURL:scheme];
            goto LABEL_3;
          }
        }

        v18 = [uRLCoercions countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }
  }

  v26.receiver = self;
  v26.super_class = WFURLContentItem;
  isFileURL = [(WFContentItem *)&v26 canGenerateRepresentationForType:typeCopy];
LABEL_7:

  return isFileURL;
}

- (void)generateObjectRepresentationForPrintHandler:(id)handler coercionOptions:(id)options
{
  handlerCopy = handler;
  optionsCopy = options;
  webResource = [(WFURLContentItem *)self webResource];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__WFURLContentItem_generateObjectRepresentationForPrintHandler_coercionOptions___block_invoke;
  v10[3] = &unk_2783476C0;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [WFWebResourceCapturer getPrintFormatterForWebResource:webResource coercionOptions:optionsCopy completionHandler:v10];
}

void __80__WFURLContentItem_generateObjectRepresentationForPrintHandler_coercionOptions___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (a2)
  {
    v7 = a4;
    v8 = [WFObjectRepresentation object:a2 named:a3];
    v11[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    (*(v4 + 16))(v4, v9, v7);
  }

  else
  {
    v10 = *(v4 + 16);
    v8 = a4;
    v10(v4, MEMORY[0x277CBEBF8], v8);
  }
}

- (void)generateObjectRepresentations:(id)representations options:(id)options forClass:(Class)class
{
  v59[1] = *MEMORY[0x277D85DE8];
  representationsCopy = representations;
  optionsCopy = options;
  if (objc_opt_class() == class)
  {
    v16 = [(WFURLContentItem *)self URL];
    absoluteString = [v16 absoluteString];
    name = [(WFContentItem *)self name];
    v19 = [WFObjectRepresentation object:absoluteString named:name];
    v59[0] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:1];
    representationsCopy[2](representationsCopy, v20, 0);

LABEL_20:
    goto LABEL_21;
  }

  v10 = NSStringFromClass(class);
  v11 = [@"UIPrintFormatter" isEqualToString:v10];

  if (v11)
  {
    permissionRequestor = [optionsCopy permissionRequestor];
    v13 = [(WFURLContentItem *)self URL];
    v58 = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __67__WFURLContentItem_generateObjectRepresentations_options_forClass___block_invoke;
    v51[3] = &unk_2783478E0;
    v53 = representationsCopy;
    v51[4] = self;
    v52 = optionsCopy;
    [permissionRequestor allowNetworkAccessAfterPromptingForURLs:v14 completionHandler:v51];

    v15 = v53;
LABEL_4:

    goto LABEL_21;
  }

  if (objc_opt_class() == class)
  {
    v30 = [(WFURLContentItem *)self URL];
    v16 = [WFEmailAddress addressesWithMailtoURL:v30];

    v31 = [v16 if_map:&__block_literal_global_29_12459];
    representationsCopy[2](representationsCopy, v31, 0);

    goto LABEL_20;
  }

  if (objc_opt_class() == class)
  {
    v32 = [(WFURLContentItem *)self URL];
    v33 = [DCMapsLink mapsLinkWithURL:v32];
    v34 = [WFObjectRepresentation object:v33];
    v57 = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
    representationsCopy[2](representationsCopy, v35, 0);

    goto LABEL_21;
  }

  if (objc_opt_class() == class)
  {
    permissionRequestor2 = [optionsCopy permissionRequestor];
    v37 = [(WFURLContentItem *)self URL];
    v56 = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __67__WFURLContentItem_generateObjectRepresentations_options_forClass___block_invoke_3;
    v49[3] = &unk_278349B20;
    v49[4] = self;
    v50 = representationsCopy;
    [permissionRequestor2 allowNetworkAccessAfterPromptingForURLs:v38 completionHandler:v49];

    v15 = v50;
    goto LABEL_4;
  }

  if (objc_opt_class() == class)
  {
    webResource = [(WFURLContentItem *)self webResource];
    name2 = [(WFContentItem *)self name];
    v42 = [WFObjectRepresentation object:webResource named:name2];
    v55 = v42;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
    representationsCopy[2](representationsCopy, v43, 0);
  }

  else
  {
    v44 = optionsCopy;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    uRLCoercions = [objc_opt_class() URLCoercions];
    v22 = [uRLCoercions countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v46;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v46 != v24)
          {
            objc_enumerationMutation(uRLCoercions);
          }

          v26 = *(*(&v45 + 1) + 8 * i);
          urlItem_outputClasses = [v26 urlItem_outputClasses];
          v28 = [urlItem_outputClasses containsObject:class];

          if (v28)
          {
            v39 = [(WFURLContentItem *)self URL];
            [v26 urlItem_generateObjectRepresentations:representationsCopy fromURL:v39 forClass:class];

            goto LABEL_25;
          }
        }

        v23 = [uRLCoercions countByEnumeratingWithState:&v45 objects:v54 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    v29 = [objc_opt_class() badCoercionErrorForObjectClass:class];
    (representationsCopy)[2](representationsCopy, 0, v29);

LABEL_25:
    optionsCopy = v44;
  }

LABEL_21:
}

uint64_t __67__WFURLContentItem_generateObjectRepresentations_options_forClass___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    return [*(a1 + 32) generateObjectRepresentationForPrintHandler:*(a1 + 48) coercionOptions:*(a1 + 40)];
  }

  else
  {
    return (*(*(a1 + 48) + 16))();
  }
}

void __67__WFURLContentItem_generateObjectRepresentations_options_forClass___block_invoke_3(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) URL];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __67__WFURLContentItem_generateObjectRepresentations_options_forClass___block_invoke_4;
    v5[3] = &unk_278347698;
    v6 = *(a1 + 40);
    [WFArticle fetchArticleFromURL:v3 pageHTML:0 completionHandler:v5];
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

void __67__WFURLContentItem_generateObjectRepresentations_options_forClass___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = [WFObjectRepresentation object:a2];
    v7[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    (*(v2 + 16))(v2, v4, 0);
  }

  else
  {
    v5 = *(v2 + 16);
    v6 = *(a1 + 32);

    v5(v6, 0);
  }
}

- (id)webResource
{
  v3 = [(WFURLContentItem *)self URL];
  isFileURL = [v3 isFileURL];

  v5 = [(WFURLContentItem *)self URL];
  if (isFileURL)
  {
    v6 = [WFFileRepresentation fileWithURL:v5 options:0];
    v7 = [WFWebResource webResourceWithFile:v6];
  }

  else
  {
    v7 = [WFWebResource webResourceWithURL:v5];
  }

  return v7;
}

- (NSURL)URL
{
  v2 = [(WFContentItem *)self objectForClass:objc_opt_class()];
  v3 = WFAppTransportSecuredURL(v2);

  return v3;
}

- (void)getPreferredFileExtension:(id)extension
{
  extensionCopy = extension;
  v5 = [(WFURLContentItem *)self URL];
  pathExtension = [v5 pathExtension];

  if ([pathExtension length])
  {
    extensionCopy[2](extensionCopy, pathExtension);
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__WFURLContentItem_getPreferredFileExtension___block_invoke;
    v7[3] = &unk_278347670;
    v8 = extensionCopy;
    [(WFURLContentItem *)self getHeadersWithCompletionHandler:v7];
  }
}

void __46__WFURLContentItem_getPreferredFileExtension___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 suggestedFilename];
  v3 = [v4 pathExtension];
  (*(v2 + 16))(v2, v3);
}

- (void)getPreferredFileSize:(id)size
{
  sizeCopy = size;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__WFURLContentItem_getPreferredFileSize___block_invoke;
  v6[3] = &unk_278347670;
  v7 = sizeCopy;
  v5 = sizeCopy;
  [(WFURLContentItem *)self getHeadersWithCompletionHandler:v6];
}

uint64_t __41__WFURLContentItem_getPreferredFileSize___block_invoke(uint64_t a1, void *a2)
{
  [a2 expectedContentLength];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)getTitleWithPermissionRequestor:(id)requestor completionHandler:(id)handler
{
  v19[1] = *MEMORY[0x277D85DE8];
  requestorCopy = requestor;
  handlerCopy = handler;
  v8 = [(WFContentItem *)self objectRepresentationForClass:objc_opt_class()];
  specifiedName = [v8 specifiedName];

  if (specifiedName)
  {
    specifiedName2 = [v8 specifiedName];
    handlerCopy[2](handlerCopy, specifiedName2);
  }

  else
  {
    specifiedName2 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1DA0]];
    v11 = [(WFContentItem *)self fileRepresentationForType:specifiedName2];
    v12 = v11;
    if (v11)
    {
      wfName = [v11 wfName];
      if (wfName)
      {
        handlerCopy[2](handlerCopy, wfName);
      }

      else
      {
        name = [(WFContentItem *)self name];
        handlerCopy[2](handlerCopy, name);
      }
    }

    else
    {
      object = [v8 object];
      v19[0] = object;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __70__WFURLContentItem_getTitleWithPermissionRequestor_completionHandler___block_invoke;
      v17[3] = &unk_278349B20;
      v17[4] = self;
      v18 = handlerCopy;
      [requestorCopy allowNetworkAccessAfterPromptingForURLs:v15 completionHandler:v17];
    }
  }
}

void __70__WFURLContentItem_getTitleWithPermissionRequestor_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __70__WFURLContentItem_getTitleWithPermissionRequestor_completionHandler___block_invoke_2;
    v7[3] = &unk_278347648;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v4;
    [v3 getHeadersWithCompletionHandler:v7];
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) name];
    (*(v5 + 16))(v5, v6);
  }
}

void __70__WFURLContentItem_getTitleWithPermissionRequestor_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || (v7 = MEMORY[0x277D79F68], [v5 MIMEType], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "typeFromMIMEType:", v8), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "conformsToUTType:", *MEMORY[0x277CE1DA0]), v9, v8, (v10 & 1) == 0))
  {
    v13 = *(a1 + 40);
    v14 = [*(a1 + 32) name];
    (*(v13 + 16))(v13, v14);
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __70__WFURLContentItem_getTitleWithPermissionRequestor_completionHandler___block_invoke_3;
    v15[3] = &unk_278348570;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v16 = v12;
    [v11 getContentsOfURLWithHandler:v15];
  }
}

void __70__WFURLContentItem_getTitleWithPermissionRequestor_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  if (!a2)
  {
    v7 = [*(a1 + 32) name];
    (*(v3 + 16))(v3, v7);
    goto LABEL_5;
  }

  v4 = [a2 wfName];
  if (v4)
  {
    v7 = v4;
    (*(v3 + 16))(v3, v4);
LABEL_5:
    v5 = v7;
    goto LABEL_7;
  }

  v6 = [*(a1 + 32) name];
  (*(v3 + 16))(v3, v6);

  v5 = 0;
LABEL_7:
}

- (void)getPDFWithOptions:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  dictionary = [optionsCopy dictionary];
  v9 = [dictionary objectForKey:@"WFCoercionOptionPDFIncludeMargin"];
  bOOLValue = [v9 BOOLValue];

  v12 = objc_alloc_init(WFWebResourceCapturer);
  webResource = [(WFURLContentItem *)self webResource];
  [(WFWebResourceCapturer *)v12 generatePDFForWebResource:webResource includeMargin:bOOLValue coercionOptions:optionsCopy completionHandler:handlerCopy];
}

- (void)generateFileRepresentation:(id)representation options:(id)options forType:(id)type
{
  v33[1] = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  optionsCopy = options;
  typeCopy = type;
  v11 = [(WFURLContentItem *)self URL];
  isFileURL = [v11 isFileURL];

  if (isFileURL)
  {
    v13 = *MEMORY[0x277CE1E08];
    if ([typeCopy isEqualToUTType:*MEMORY[0x277CE1E08]] && (-[WFURLContentItem URL](self, "URL"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "wfType"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToUTType:", v13), v15, v14, (v16 & 1) == 0))
    {
      [(WFURLContentItem *)self getPDFWithOptions:optionsCopy completionHandler:representationCopy];
    }

    else
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v18 = [(WFURLContentItem *)self URL];
      path = [v18 path];
      if ([defaultManager fileExistsAtPath:path])
      {
        v20 = [(WFURLContentItem *)self URL];
        v21 = [WFFileRepresentation fileWithURL:v20 options:0];
        representationCopy[2](representationCopy, v21, 0);
      }

      else
      {
        representationCopy[2](representationCopy, 0, 0);
      }
    }
  }

  else
  {
    v22 = [(WFURLContentItem *)self URL];
    host = [v22 host];
    v24 = [host isEqualToString:@"maps.apple.com"];

    if (v24)
    {
      representationCopy[2](representationCopy, 0, 0);
    }

    else
    {
      permissionRequestor = [optionsCopy permissionRequestor];
      v26 = [(WFURLContentItem *)self URL];
      v33[0] = v26;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __63__WFURLContentItem_generateFileRepresentation_options_forType___block_invoke;
      v28[3] = &unk_278347620;
      v32 = representationCopy;
      v29 = typeCopy;
      selfCopy = self;
      v31 = optionsCopy;
      [permissionRequestor allowNetworkAccessAfterPromptingForURLs:v27 completionHandler:v28];
    }
  }
}

void __63__WFURLContentItem_generateFileRepresentation_options_forType___block_invoke(id *a1, char a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E50]];
    v17[0] = v3;
    v4 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E58]];
    v17[1] = v4;
    v5 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1D78]];
    v17[2] = v5;
    v6 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1DA0]];
    v17[3] = v6;
    v7 = [MEMORY[0x277D79F68] typeFromPasteboardType:*MEMORY[0x277D7A7E8]];
    v17[4] = v7;
    v8 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E08]];
    v17[5] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:6];

    v10 = [a1[4] conformsToTypes:v9];
    v11 = a1[5];
    if (v10)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __63__WFURLContentItem_generateFileRepresentation_options_forType___block_invoke_2;
      v13[3] = &unk_2783475F8;
      v13[4] = v11;
      v16 = a1[7];
      v14 = a1[4];
      v15 = a1[6];
      [v11 getHeadersWithCompletionHandler:v13];
    }

    else
    {
      [a1[5] getContentsOfURLWithHandler:a1[7]];
    }
  }

  else
  {
    v12 = *(a1[7] + 2);

    v12();
  }
}

void __63__WFURLContentItem_generateFileRepresentation_options_forType___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    [*(a1 + 32) getContentsOfURLWithHandler:*(a1 + 56)];
  }

  else
  {
    v7 = MEMORY[0x277D79F68];
    v8 = [v5 MIMEType];
    v9 = [v7 typeFromMIMEType:v8];

    if (([v9 conformsToType:*(a1 + 40)] & 1) != 0 || (v10 = MEMORY[0x277D79F68], objc_msgSend(v6, "suggestedFilename"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "typeFromFilename:", v11), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "conformsToType:", *(a1 + 40)), v12, v11, v13))
    {
      [*(a1 + 32) getContentsOfURLWithHandler:*(a1 + 56)];
    }

    else if ([*(a1 + 40) isEqualToUTType:*MEMORY[0x277CE1E08]])
    {
      [*(a1 + 32) getPDFWithOptions:*(a1 + 48) completionHandler:*(a1 + 56)];
    }

    else
    {
      v14 = [*(a1 + 32) webResource];
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __63__WFURLContentItem_generateFileRepresentation_options_forType___block_invoke_3;
      v17[3] = &unk_2783475D0;
      v18 = *(a1 + 56);
      [WFWebResourceCapturer getPasteboardRepresentationForWebResource:v14 type:v15 coercionOptions:v16 completionHandler:v17];
    }
  }
}

void __63__WFURLContentItem_generateFileRepresentation_options_forType___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = a5;
  if (a2)
  {
    v9 = [WFFileRepresentation fileWithData:a2 ofType:a3 proposedFilename:a4];
  }

  else
  {
    v9 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getContentsWithRequest:(id)request cacheResult:(BOOL)result expectedByteCountHandler:(id)handler writtenByteCountHandler:(id)countHandler completionHandler:(id)completionHandler
{
  requestCopy = request;
  handlerCopy = handler;
  countHandlerCopy = countHandler;
  completionHandlerCopy = completionHandler;
  v16 = [[WFDownloadURLTask alloc] initWithRequest:requestCopy];
  objc_initWeak(&location, self);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __122__WFURLContentItem_getContentsWithRequest_cacheResult_expectedByteCountHandler_writtenByteCountHandler_completionHandler___block_invoke;
  v21 = &unk_2783475A8;
  objc_copyWeak(&v23, &location);
  v17 = completionHandlerCopy;
  v22 = v17;
  resultCopy = result;
  [(WFDownloadURLTask *)v16 setCompletionHandler:&v18];
  [(WFDownloadURLTask *)v16 setExpectedByteCountHandler:handlerCopy, v18, v19, v20, v21];
  [(WFDownloadURLTask *)v16 setWrittenByteCountHandler:countHandlerCopy];
  [(WFDownloadURLTask *)v16 start];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __122__WFURLContentItem_getContentsWithRequest_cacheResult_expectedByteCountHandler_writtenByteCountHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v7 || v9)
  {
    (*(*(a1 + 32) + 16))();
    goto LABEL_27;
  }

  v37 = v8;
  v11 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11 allHeaderFields];
    v13 = [v12 objectForKey:@"Content-Type"];

    v14 = [v13 componentsSeparatedByString:@""];;
    v15 = [v14 firstObject];

    if ([v15 isEqualToString:@"application/x-javascript"] & 1) != 0 || (objc_msgSend(v15, "hasSuffix:", @"+json"))
    {
      v16 = @"application/json";
    }

    else
    {
      if (![v15 isEqualToString:@"application/xhtml+xml"])
      {
        goto LABEL_8;
      }

      v16 = @"text/html";
    }

    v15 = v16;
LABEL_8:
    v17 = [MEMORY[0x277D79F68] typeFromMIMEType:v15];

    goto LABEL_11;
  }

  v17 = 0;
LABEL_11:
  if (![v17 isDeclared] || objc_msgSend(v17, "isEqualToUTType:", *MEMORY[0x277CE1D48]))
  {
    v18 = WeakRetained;
    v19 = [v11 suggestedFilename];
    v20 = [v11 URL];
    v21 = [v20 host];
    v22 = [v19 isEqualToString:v21];

    if ((v22 & 1) == 0)
    {
      v23 = MEMORY[0x277D79F68];
      v24 = [v11 suggestedFilename];
      v25 = [v23 typeFromFilename:v24];

      v17 = v25;
    }

    WeakRetained = v18;
  }

  if (!v17)
  {
    v26 = MEMORY[0x277D79F68];
    v27 = [v11 MIMEType];
    v17 = [v26 typeFromMIMEType:v27];
  }

  v28 = [v11 suggestedFilename];
  if ([v17 conformsToUTType:*MEMORY[0x277CE1DA0]])
  {
    v29 = WeakRetained;
    v30 = WFPageTitleFromHTMLFile(v7);
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = [v11 suggestedFilename];
    }

    v33 = v32;

    v28 = v33;
    WeakRetained = v29;
  }

  v34 = [v11 URL];
  v35 = [WFFileRepresentation fileWithURL:v7 options:3 ofType:v17 proposedFilename:v28 originalURL:v34];

  if (v35 && *(a1 + 48) == 1)
  {
    v38[0] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
    [WeakRetained setFileRepresentations:v36 forType:v17];
  }

  (*(*(a1 + 32) + 16))();

  v8 = v37;
LABEL_27:
}

- (void)getContentsOfURLWithHandler:(id)handler
{
  v4 = MEMORY[0x277CCAB70];
  handlerCopy = handler;
  v6 = [(WFURLContentItem *)self URL];
  v7 = [v4 requestWithURL:v6];

  [v7 _setNonAppInitiated:1];
  [(WFURLContentItem *)self getContentsWithRequest:v7 cacheResult:1 expectedByteCountHandler:0 writtenByteCountHandler:0 completionHandler:handlerCopy];
}

- (void)getHeadersWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = MEMORY[0x277CCAB70];
  v6 = [(WFURLContentItem *)self URL];
  v7 = [v5 requestWithURL:v6];

  [v7 setHTTPMethod:@"HEAD"];
  [v7 _setNonAppInitiated:1];
  wf_sharedSession = [MEMORY[0x277CCAD30] wf_sharedSession];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__WFURLContentItem_getHeadersWithCompletionHandler___block_invoke;
  v11[3] = &unk_278347580;
  v12 = handlerCopy;
  v9 = handlerCopy;
  v10 = [wf_sharedSession dataTaskWithRequest:v7 completionHandler:v11];
  [v10 resume];
}

- (NSDictionary)additionalRepresentationsForSerialization
{
  v2 = MEMORY[0x277CBEAC0];
  internalRepresentation = [(WFContentItem *)self internalRepresentation];
  wfName = [internalRepresentation wfName];
  v5 = [v2 dictionaryWithObjectsAndKeys:{wfName, *MEMORY[0x277D7A428], 0}];

  return v5;
}

+ (id)attributionSetContentOfURL:(id)l
{
  v11[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  isFileURL = [lCopy isFileURL];
  if (!lCopy || isFileURL)
  {
    v9 = [WFContentAttributionSet attributionSetByMergingAttributionSets:MEMORY[0x277CBEBF8]];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB98] setWithObject:lCopy];
    v6 = [WFURLContentLocation locationWithURLs:v5 error:0];

    if (v6)
    {
      v7 = [WFContentAttribution attributionWithDisclosureLevel:0 origin:v6 originalItemIdentifier:0];
      v11[0] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
      v9 = [WFContentAttributionSet attributionSetWithAttributions:v8];
    }

    else
    {
      v9 = [WFContentAttributionSet attributionSetWithAttributions:MEMORY[0x277CBEBF8]];
    }
  }

  return v9;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"URLs", @"URLs");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"URL (singular)", @"URL");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)contentCategories
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"Web";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)outputTypes
{
  v38 = *MEMORY[0x277D85DE8];
  v25 = MEMORY[0x277CBEB40];
  v2 = [WFObjectType typeWithClass:objc_opt_class()];
  v24 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1D48]];
  v3 = [WFObjectType typeWithClassName:@"UIPrintFormatter" frameworkName:@"UIKit" location:2];
  v4 = [MEMORY[0x277D79F68] typeFromPasteboardType:*MEMORY[0x277D7A7E8]];
  v5 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E08]];
  v6 = [WFObjectType typeWithClass:objc_opt_class()];
  v7 = [WFObjectType typeWithClass:objc_opt_class()];
  v8 = [WFObjectType typeWithClass:objc_opt_class()];
  v9 = [WFObjectType typeWithClass:objc_opt_class()];
  v10 = v2;
  v11 = [v25 orderedSetWithObjects:{v2, v24, v3, v4, v5, v6, v7, v8, v9, 0}];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [self URLCoercions];
  v12 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v33;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        urlItem_outputClasses = [v16 urlItem_outputClasses];
        v18 = [urlItem_outputClasses countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v29;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v29 != v20)
              {
                objc_enumerationMutation(urlItem_outputClasses);
              }

              v22 = [WFObjectType typeWithClass:*(*(&v28 + 1) + 8 * j)];
              [v11 addObject:v22];
            }

            v19 = [urlItem_outputClasses countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v19);
        }
      }

      v13 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v13);
  }

  return v11;
}

+ (id)ownedPasteboardTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E90]];
  v4 = [MEMORY[0x277D79F68] typeWithString:*MEMORY[0x277D7A428]];
  v5 = [v2 orderedSetWithObjects:{v3, v4, 0}];

  return v5;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)instance
{
  v27 = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  if ([instanceCopy isEqualToClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(instanceCopy, "isEqualToClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(instanceCopy, "isEqualToClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(instanceCopy, "isEqualToUTType:", *MEMORY[0x277CE1D48]) & 1) != 0 || ((v5 = instanceCopy) == 0 ? (v6 = 0) : (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v6 = 0) : (v6 = v5), (v7 = v6, v5, objc_msgSend(v7, "string"), v8 = objc_claimAutoreleasedReturnValue(), v7, LOBYTE(v7) = objc_msgSend(v8, "isEqualToString:", @"UIPrintFormatter"), v8, (v7) || (objc_msgSend(MEMORY[0x277D79F68], "typeFromPasteboardType:", *MEMORY[0x277D7A7E8]), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v5, "isEqualToType:", v9), v9, (v10)))
  {
LABEL_24:
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objectClass = [v5 objectClass];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      uRLCoercions = [objc_opt_class() URLCoercions];
      v13 = [uRLCoercions countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v23;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(uRLCoercions);
            }

            urlItem_outputClasses = [*(*(&v22 + 1) + 8 * i) urlItem_outputClasses];
            v18 = [urlItem_outputClasses containsObject:objectClass];

            if (v18)
            {

              goto LABEL_24;
            }
          }

          v14 = [uRLCoercions countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }
    }

    v21.receiver = self;
    v21.super_class = &OBJC_METACLASS___WFURLContentItem;
    v19 = objc_msgSendSuper2(&v21, sel_supportedTypeMustBeDeterminedByInstance_, v5);
  }

  return v19;
}

+ (id)itemWithSerializedItem:(id)item forType:(id)type named:(id)named attributionSet:(id)set cachingIdentifier:(id)identifier
{
  v53 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  namedCopy = named;
  setCopy = set;
  identifierCopy = identifier;
  v15 = objc_opt_class();
  v16 = *MEMORY[0x277CE1E90];
  identifier = [*MEMORY[0x277CE1E90] identifier];
  v18 = [itemCopy wfObjectOfClass:v15 forKey:identifier];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v21 = objc_opt_class();
    [*MEMORY[0x277CE1D70] identifier];
    v23 = v22 = self;
    v20 = [itemCopy wfObjectOfClass:v21 forKey:v23];

    self = v22;
  }

  v24 = [itemCopy wfObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277D7A428]];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = namedCopy;
  }

  v27 = v26;

  if (v20)
  {
    goto LABEL_18;
  }

  selfCopy = self;
  v28 = objc_opt_class();
  identifier2 = [v16 identifier];
  v30 = [itemCopy wfObjectOfClass:v28 forKey:identifier2];
  v31 = v30;
  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v33 = objc_opt_class();
    identifier3 = [*MEMORY[0x277CE1D70] identifier];
    v32 = [itemCopy wfObjectOfClass:v33 forKey:identifier3];
  }

  firstObject = [v32 firstObject];
  v36 = objc_opt_class();
  v37 = firstObject;
  if (v37 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v40 = getWFGeneralLogObject();
    v39 = 0x277CBE000uLL;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v46 = "WFEnforceClass";
      v47 = 2114;
      v48 = v37;
      v49 = 2114;
      v50 = objc_opt_class();
      v51 = 2114;
      v52 = v36;
      v41 = v50;
      _os_log_impl(&dword_21E1BD000, v40, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
    }

    v38 = 0;
  }

  else
  {
    v38 = v37;
    v39 = 0x277CBE000;
  }

  v20 = [*(v39 + 3008) URLWithString:v38];

  self = selfCopy;
  if (v20)
  {
LABEL_18:
    v42 = [self itemWithObject:v20 named:v27 attributionSet:setCopy cachingIdentifier:identifierCopy];
  }

  else
  {
    v20 = getWFContentGraphLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v46 = "+[WFURLContentItem itemWithSerializedItem:forType:named:attributionSet:cachingIdentifier:]";
      _os_log_impl(&dword_21E1BD000, v20, OS_LOG_TYPE_ERROR, "%s Could not init WFURLContentItem from pasteboard item", buf, 0xCu);
    }

    v42 = 0;
  }

  return v42;
}

BOOL __59__WFURLContentItem_filterRepresentationsForAllowedContent___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      if ([v4 isFileURL])
      {
        v5 = [WFFileRepresentation isAllowedToRepresentFileURL:v4];
      }

      else
      {
        v5 = 1;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (void)rediscoverURLCoercionClassesIfNeeded
{
  if (rediscoverURLCoercionClassesIfNeeded_onceToken != -1)
  {
    dispatch_once(&rediscoverURLCoercionClassesIfNeeded_onceToken, &__block_literal_global_3);
  }

  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__WFURLContentItem_URLCoercions__rediscoverURLCoercionClassesIfNeeded__block_invoke_2;
  v3[3] = &__block_descriptor_40_e8_v16__0_8l;
  v3[4] = self;
  WFRegisterClassesFromClassVendingMethodsIfNeeded(self, @"allURLCoercionsIn", &rediscoverURLCoercionClassesIfNeeded_lock, WFShouldRediscoverCURLCoercionClasses, rediscoverURLCoercionClassesIfNeeded_calledURLCoercionVendingSelectors, v3);
}

uint64_t __70__WFURLContentItem_URLCoercions__rediscoverURLCoercionClassesIfNeeded__block_invoke()
{
  v0 = objc_opt_new();
  v1 = rediscoverURLCoercionClassesIfNeeded_calledURLCoercionVendingSelectors;
  rediscoverURLCoercionClassesIfNeeded_calledURLCoercionVendingSelectors = v0;

  rediscoverURLCoercionClassesIfNeeded_lock = 0;

  return MEMORY[0x282202120](WFDyldBulkImageLoadCallback_20322);
}

+ (void)registerURLCoercion:(Class)coercion
{
  mutableURLCoercions = [self mutableURLCoercions];
  [mutableURLCoercions addObject:coercion];
}

+ (id)URLCoercions
{
  [self rediscoverURLCoercionClassesIfNeeded];

  return [self mutableURLCoercions];
}

+ (id)mutableURLCoercions
{
  if (mutableURLCoercions_onceToken != -1)
  {
    dispatch_once(&mutableURLCoercions_onceToken, &__block_literal_global_20323);
  }

  v3 = mutableURLCoercions_URLCoercions;

  return v3;
}

uint64_t __53__WFURLContentItem_URLCoercions__mutableURLCoercions__block_invoke()
{
  mutableURLCoercions_URLCoercions = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

@end