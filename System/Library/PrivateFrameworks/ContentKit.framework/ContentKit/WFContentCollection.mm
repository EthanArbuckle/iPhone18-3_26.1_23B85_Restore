@interface WFContentCollection
+ (id)collectionWithItems:(id)items;
+ (void)_generateCollectionFromPasteboard:(id)pasteboard completionHandler:(id)handler;
+ (void)generateCollectionFromDragItems:(id)items allowedItemClasses:(id)classes completionHandler:(id)handler;
+ (void)generateCollectionFromPasteboard:(id)pasteboard completionHandler:(id)handler;
- (BOOL)canPerformCoercion:(id)coercion;
- (BOOL)isCoercibleToItemClass:(Class)class;
- (BOOL)isCoercibleToItemClasses:(id)classes;
- (BOOL)isEqual:(id)equal;
- (NSArray)extensionItems;
- (NSArray)minimalExtensionItems;
- (NSMutableArray)mutableItems;
- (WFCoercionOptions)defaultCoercionOptions;
- (WFContentAttributionSet)attributionSet;
- (WFContentCollection)initWithCoder:(id)coder;
- (WFContentCollection)initWithItems:(id)items defaultCoercionOptions:(id)options;
- (id)collectionByFilteringItemsWithBlock:(id)block excludedItems:(id *)items;
- (id)collectionByFilteringToItemClass:(Class)class excludedItems:(id *)items;
- (id)collectionByMergingAttributionSet:(id)set;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)effectiveCoercionOptionsForRequest:(id)request;
- (id)getListRepresentation;
- (id)requiredResourcesForContent;
- (int64_t)numberOfItems;
- (unint64_t)hash;
- (void)addFile:(id)file;
- (void)addFile:(id)file origin:(id)origin disclosureLevel:(unint64_t)level;
- (void)addFileWithOriginAttribution:(id)attribution;
- (void)addItem:(id)item;
- (void)addItems:(id)items;
- (void)addObject:(id)object;
- (void)addObject:(id)object named:(id)named;
- (void)copyToPasteboard:(id)pasteboard options:(id)options completionHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateFileRepresentations:(id)representations forType:(id)type completionHandler:(id)handler;
- (void)enumerateObjectRepresentations:(id)representations forClass:(Class)class completionHandler:(id)handler;
- (void)generateCollectionByCoercingToItemClass:(Class)class completionHandler:(id)handler;
- (void)generateCollectionByCoercingToItemClass:(Class)class options:(id)options completionHandler:(id)handler;
- (void)generateCollectionByCoercingToItemClasses:(id)classes completionHandler:(id)handler;
- (void)generateCollectionByCoercingToItemClasses:(id)classes options:(id)options completionHandler:(id)handler;
- (void)generateCollectionByEvaluatingQuery:(id)query forContentItemClass:(Class)class permissionRequestor:(id)requestor completionHandler:(id)handler;
- (void)getBoolRepresentation:(id)representation;
- (void)getFileRepresentation:(id)representation forType:(id)type;
- (void)getFileRepresentationAndAttributionSet:(id)set forType:(id)type;
- (void)getFileRepresentations:(id)representations forType:(id)type;
- (void)getFileRepresentations:(id)representations options:(id)options forType:(id)type;
- (void)getObjectRepresentation:(id)representation forClass:(Class)class;
- (void)getObjectRepresentationAndAttributionSet:(id)set forClass:(Class)class;
- (void)getObjectRepresentations:(id)representations forClass:(Class)class;
- (void)getObjectRepresentations:(id)representations options:(id)options forClass:(Class)class;
- (void)getRichTextRepresentation:(id)representation;
- (void)getStringRepresentation:(id)representation;
- (void)getStringRepresentations:(id)representations;
- (void)performCoercion:(id)coercion;
- (void)removeItem:(id)item;
- (void)transformFileRepresentationsForType:(id)type usingBlock:(id)block completionHandler:(id)handler;
- (void)transformFirstFileRepresentationForType:(id)type usingBlock:(id)block completionHandler:(id)handler;
- (void)transformFirstObjectRepresentationForClass:(Class)class usingBlock:(id)block completionHandler:(id)handler;
- (void)transformItemsAndFlattenUsingBlock:(id)block completionHandler:(id)handler;
- (void)transformItemsUsingBlock:(id)block completionHandler:(id)handler;
- (void)transformObjectRepresentationsForClass:(Class)class usingBlock:(id)block completionHandler:(id)handler;
@end

@implementation WFContentCollection

- (NSArray)minimalExtensionItems
{
  items = [(WFContentCollection *)self items];
  v3 = [items if_map:&__block_literal_global_204];

  return v3;
}

- (NSArray)extensionItems
{
  items = [(WFContentCollection *)self items];
  v3 = [items if_map:&__block_literal_global_1287];

  return v3;
}

- (void)copyToPasteboard:(id)pasteboard options:(id)options completionHandler:(id)handler
{
  pasteboardCopy = pasteboard;
  optionsCopy = options;
  handlerCopy = handler;
  items = [(WFContentCollection *)self items];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__WFContentCollection_WFPasteboard__copyToPasteboard_options_completionHandler___block_invoke_3;
  v15[3] = &unk_27834A098;
  v16 = pasteboardCopy;
  v17 = optionsCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = optionsCopy;
  v14 = pasteboardCopy;
  [items if_mapAsynchronously:&__block_literal_global_215 completionHandler:v15];
}

void __80__WFContentCollection_WFPasteboard__copyToPasteboard_options_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v6 = *(a1 + 40);
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  v7 = a3;
  v8 = a2;
  [v5 setItems:v8 options:v6];
  v9 = [*(a1 + 32) items];
  v10 = [v9 count];

  v11 = getWFActionsLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[WFContentCollection(WFPasteboard) copyToPasteboard:options:completionHandler:]_block_invoke_3";
    v16 = 2048;
    v17 = v10;
    _os_log_impl(&dword_21E1BD000, v11, OS_LOG_TYPE_DEFAULT, "%s Copied %ld items to clipboard", &v14, 0x16u);
  }

  v12 = *(a1 + 48);
  v13 = [v8 count];

  (*(v12 + 16))(v12, v13, v7);
}

void __80__WFContentCollection_WFPasteboard__copyToPasteboard_options_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__WFContentCollection_WFPasteboard__copyToPasteboard_options_completionHandler___block_invoke_2;
  v7[3] = &unk_278346248;
  v8 = v5;
  v6 = v5;
  [a2 getSerializedItem:v7];
}

- (id)requiredResourcesForContent
{
  items = [(WFContentCollection *)self items];
  v3 = [items if_firstObjectPassingTest:&__block_literal_global_199_8034];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEB98] setWithObject:@"WFPhotoAccessResource"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __64__WFContentCollection_WFPasteboard__requiredResourcesForContent__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (void)_generateCollectionFromPasteboard:(id)pasteboard completionHandler:(id)handler
{
  pasteboardCopy = pasteboard;
  handlerCopy = handler;
  v8 = pasteboardCopy;
  v9 = [v8 pasteboardTypesForItemSet:0];
  if (v9)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __WFUIPasteboardParseItems_block_invoke;
    v15[3] = &unk_278346278;
    v16 = v8;
    v10 = [v9 if_map:v15];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v13 = handlerCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __89__WFContentCollection_WFPasteboard___generateCollectionFromPasteboard_completionHandler___block_invoke;
  v14[3] = &__block_descriptor_40_e58_v32__0__WFPasteboardItem_8Q16___v____NSArray___NSError__24l;
  v14[4] = self;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __89__WFContentCollection_WFPasteboard___generateCollectionFromPasteboard_completionHandler___block_invoke_2;
  v12[3] = &unk_27834A430;
  v11 = handlerCopy;
  [v10 if_flatMapAsynchronously:v14 completionHandler:v12];
}

void __89__WFContentCollection_WFPasteboard___generateCollectionFromPasteboard_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a4;
  v7 = [v5 fileURLItems];
  if (v7)
  {
    v6[2](v6, v7, 0);
  }

  else
  {
    v8 = objc_opt_class();
    v9 = [v5 itemsByType];
    v11[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [v8 getContentItemsForPasteboardItems:v10 resultBlock:v6];
  }
}

void __89__WFContentCollection_WFPasteboard___generateCollectionFromPasteboard_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = [WFContentCollection collectionWithItems:a2];
    (*(v2 + 16))(v2, v5, 0);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4);
  }
}

+ (void)generateCollectionFromPasteboard:(id)pasteboard completionHandler:(id)handler
{
  pasteboardCopy = pasteboard;
  handlerCopy = handler;
  v8 = WFPasteboardRequiredAccessResources(pasteboardCopy);
  if ([v8 count])
  {
    mEMORY[0x277D7A0E0] = [MEMORY[0x277D7A0E0] sharedManager];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __88__WFContentCollection_WFPasteboard__generateCollectionFromPasteboard_completionHandler___block_invoke;
    v10[3] = &unk_2783461E0;
    selfCopy = self;
    v11 = pasteboardCopy;
    v12 = handlerCopy;
    [mEMORY[0x277D7A0E0] requestSandboxExtensionForRunningActionWithAccessResources:v8 completion:v10];
  }

  else
  {
    [self _generateCollectionFromPasteboard:pasteboardCopy completionHandler:handlerCopy];
  }
}

void __83__WFContentCollection_WFPasteboard__getContentItemsForPasteboardItems_resultBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__WFContentCollection_WFPasteboard__getContentItemsForPasteboardItems_resultBlock___block_invoke_2;
  v7[3] = &unk_2783461B8;
  v8 = v5;
  v6 = v5;
  [WFContentItem getContentItemFromSerializedItem:a2 sourceName:@"Clipboard" completionHandler:v7];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  items = [(WFContentCollection *)self items];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__WFContentCollection_encodeWithCoder___block_invoke;
  v8[3] = &unk_27834A5F0;
  v9 = coderCopy;
  v6 = coderCopy;
  v7 = [items if_objectsPassingTest:v8];

  [v6 encodeObject:v7 forKey:@"items"];
}

- (WFContentCollection)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"items"];

  if (v9)
  {
    self = [(WFContentCollection *)self initWithItems:v9 defaultCoercionOptions:0];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  mutableItems = [(WFContentCollection *)self mutableItems];
  v6 = [v4 initWithItems:mutableItems defaultCoercionOptions:self->_defaultCoercionOptions];

  return v6;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = WFContentCollection;
  v3 = [(WFContentCollection *)&v7 description];
  items = [(WFContentCollection *)self items];
  v5 = [v3 stringByAppendingFormat:@": %@", items];

  return v5;
}

- (unint64_t)hash
{
  items = [(WFContentCollection *)self items];
  v3 = [items hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equalCopy)
    {
      v7 = 1;
    }

    else
    {
      items = [(WFContentCollection *)self items];
      items2 = [(WFContentCollection *)equalCopy items];
      v7 = [items isEqual:items2];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)generateCollectionByCoercingToItemClasses:(id)classes completionHandler:(id)handler
{
  v5 = [WFCoercionRequest requestForCoercingToContentClasses:classes completionHandler:handler];
  [(WFContentCollection *)self performCoercion:v5];
}

- (void)generateCollectionByCoercingToItemClass:(Class)class options:(id)options completionHandler:(id)handler
{
  v12 = *MEMORY[0x277D85DE8];
  classCopy = class;
  v7 = MEMORY[0x277CBEA60];
  handlerCopy = handler;
  optionsCopy = options;
  v10 = [v7 arrayWithObjects:&classCopy count:1];
  [(WFContentCollection *)self generateCollectionByCoercingToItemClasses:v10 options:optionsCopy completionHandler:handlerCopy, classCopy, v12];
}

- (void)generateCollectionByCoercingToItemClass:(Class)class completionHandler:(id)handler
{
  v9 = *MEMORY[0x277D85DE8];
  classCopy = class;
  v5 = MEMORY[0x277CBEA60];
  handlerCopy = handler;
  v7 = [v5 arrayWithObjects:&classCopy count:1];
  [(WFContentCollection *)self generateCollectionByCoercingToItemClasses:v7 completionHandler:handlerCopy, classCopy, v9];
}

- (BOOL)isCoercibleToItemClasses:(id)classes
{
  v4 = [WFCoercionRequest requestForCoercingToContentClasses:classes completionHandler:0];
  LOBYTE(self) = [(WFContentCollection *)self canPerformCoercion:v4];

  return self;
}

- (BOOL)isCoercibleToItemClass:(Class)class
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = class;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  LOBYTE(self) = [(WFContentCollection *)self isCoercibleToItemClasses:v4];

  return self;
}

- (void)getBoolRepresentation:(id)representation
{
  representationCopy = representation;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__WFContentCollection_getBoolRepresentation___block_invoke;
  v8[3] = &unk_2783495A8;
  v9 = representationCopy;
  v5 = MEMORY[0x277CCABB0];
  v6 = representationCopy;
  v7 = [v5 numberWithBool:1];
  [(WFContentCollection *)self getObjectRepresentation:v8 forClass:objc_opt_class()];
}

void __45__WFContentCollection_getBoolRepresentation___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  v7 = v9;
  v8 = v6;
  if (!(v9 | v6))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:0];
  }

  v10 = v7;
  (*(*(a1 + 32) + 16))();
}

- (void)getFileRepresentations:(id)representations forType:(id)type
{
  v5 = [WFCoercionRequest requestForCoercingToFileType:type completionHandler:representations];
  [(WFContentCollection *)self performCoercion:v5];
}

- (void)getObjectRepresentations:(id)representations forClass:(Class)class
{
  v5 = [WFCoercionRequest requestForCoercingToObjectClass:class completionHandler:representations];
  [(WFContentCollection *)self performCoercion:v5];
}

- (void)getStringRepresentations:(id)representations
{
  representationsCopy = representations;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__WFContentCollection_getStringRepresentations___block_invoke;
  v6[3] = &unk_27834A4C8;
  v7 = representationsCopy;
  v5 = representationsCopy;
  [(WFContentCollection *)self getObjectRepresentations:v6 forClass:objc_opt_class()];
}

- (void)getStringRepresentation:(id)representation
{
  representationCopy = representation;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__WFContentCollection_getStringRepresentation___block_invoke;
  v6[3] = &unk_2783495A8;
  v7 = representationCopy;
  v5 = representationCopy;
  [(WFContentCollection *)self getObjectRepresentation:v6 forClass:objc_opt_class()];
}

- (void)generateCollectionByEvaluatingQuery:(id)query forContentItemClass:(Class)class permissionRequestor:(id)requestor completionHandler:(id)handler
{
  queryCopy = query;
  requestorCopy = requestor;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __117__WFContentCollection_generateCollectionByEvaluatingQuery_forContentItemClass_permissionRequestor_completionHandler___block_invoke;
  aBlock[3] = &unk_27834A200;
  v13 = handlerCopy;
  aBlock[4] = self;
  v33 = v13;
  v14 = _Block_copy(aBlock);
  items = [(WFContentCollection *)self items];
  v16 = [(WFContentCollection *)self collectionByFilteringToItemClass:class excludedItems:0];
  numberOfItems = [v16 numberOfItems];
  numberOfItems2 = [(WFContentCollection *)self numberOfItems];

  if (numberOfItems == numberOfItems2)
  {
    classCopy3 = class;
    v20 = queryCopy;
    v21 = items;
  }

  else
  {
    if ([items count])
    {
      v22 = +[WFContentItem contentPropertySubstitutor];
      v23 = [queryCopy canEvaluateObjects:items withPropertySubstitutor:v22];

      if (v23)
      {
        v24 = +[WFContentItem contentPropertySubstitutor];
        [queryCopy runWithObjects:items propertySubstitutor:v24 completionHandler:v14];

        goto LABEL_10;
      }
    }

    if (![(objc_class *)class hasLibrary]|| [(WFContentCollection *)self isCoercibleToItemClass:class])
    {
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __117__WFContentCollection_generateCollectionByEvaluatingQuery_forContentItemClass_permissionRequestor_completionHandler___block_invoke_2;
      v31[3] = &__block_descriptor_40_e55_v32__0__WFContentItem_8Q16___v____NSArray___NSError__24lu32l8;
      v31[4] = class;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __117__WFContentCollection_generateCollectionByEvaluatingQuery_forContentItemClass_permissionRequestor_completionHandler___block_invoke_4;
      v25[3] = &unk_2783467F0;
      v28 = v13;
      classCopy2 = class;
      v26 = queryCopy;
      v27 = requestorCopy;
      v29 = v14;
      [items if_mapAsynchronously:v31 completionHandler:v25];

      goto LABEL_10;
    }

    classCopy3 = class;
    v20 = queryCopy;
    v21 = 0;
  }

  [(objc_class *)classCopy3 runQuery:v20 withItems:v21 permissionRequestor:requestorCopy completionHandler:v14];
LABEL_10:
}

void __117__WFContentCollection_generateCollectionByEvaluatingQuery_forContentItemClass_permissionRequestor_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = a2;
  v8 = [[WFContentCollection alloc] initWithItems:v7 defaultCoercionOptions:*(*(a1 + 32) + 8)];

  (*(v5 + 16))(v5, v8, v6);
}

void __117__WFContentCollection_generateCollectionByEvaluatingQuery_forContentItemClass_permissionRequestor_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __117__WFContentCollection_generateCollectionByEvaluatingQuery_forContentItemClass_permissionRequestor_completionHandler___block_invoke_3;
  v11[3] = &unk_27834A200;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  [v9 coerceToItemClass:v8 completionHandler:v11];
}

void __117__WFContentCollection_generateCollectionByEvaluatingQuery_forContentItemClass_permissionRequestor_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v27 = a1;
    v28 = v6;
    v7 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v29 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v38;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v37 + 1) + 8 * i);
          v14 = [v13 firstObject];
          v15 = [v13 lastObject];
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v16 = v14;
          v17 = [v16 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v34;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v34 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                [v7 setObject:v15 forKey:*(*(&v33 + 1) + 8 * j)];
              }

              v18 = [v16 countByEnumeratingWithState:&v33 objects:v41 count:16];
            }

            while (v18);
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v10);
    }

    v21 = *(v27 + 64);
    v22 = *(v27 + 32);
    v23 = [v7 keyEnumerator];
    v24 = [v23 allObjects];
    v25 = *(v27 + 40);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __117__WFContentCollection_generateCollectionByEvaluatingQuery_forContentItemClass_permissionRequestor_completionHandler___block_invoke_5;
    v30[3] = &unk_27834A200;
    v31 = v7;
    v32 = *(v27 + 56);
    v26 = v7;
    [v21 runQuery:v22 withItems:v24 permissionRequestor:v25 completionHandler:v30];

    v6 = v28;
    v5 = v29;
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __117__WFContentCollection_generateCollectionByEvaluatingQuery_forContentItemClass_permissionRequestor_completionHandler___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [*(a1 + 32) objectForKey:{v13, v19}];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = v13;
        }

        [v7 addObject:v16];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v17 = *(a1 + 40);
  v18 = [v7 array];
  (*(v17 + 16))(v17, v18, v6);
}

void __117__WFContentCollection_generateCollectionByEvaluatingQuery_forContentItemClass_permissionRequestor_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if ([v5 count])
  {
    v8 = *(a1 + 32);
    v10[0] = v5;
    v10[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
    (*(v7 + 16))(v7, v9, v6);
  }

  else
  {
    (*(v7 + 16))(v7, 0, v6);
  }
}

- (id)collectionByFilteringToItemClass:(Class)class excludedItems:(id *)items
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__WFContentCollection_collectionByFilteringToItemClass_excludedItems___block_invoke;
  v6[3] = &__block_descriptor_40_e23_B16__0__WFContentItem_8lu32l8;
  v6[4] = class;
  v4 = [(WFContentCollection *)self collectionByFilteringItemsWithBlock:v6 excludedItems:items];

  return v4;
}

- (id)collectionByFilteringItemsWithBlock:(id)block excludedItems:(id *)items
{
  v23 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v7 = [[WFContentCollection alloc] initWithDefaultCoercionOptions:self->_defaultCoercionOptions];
  v8 = [[WFContentCollection alloc] initWithDefaultCoercionOptions:self->_defaultCoercionOptions];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  items = [(WFContentCollection *)self items];
  v10 = [items countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(items);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if (blockCopy[2](blockCopy, v14))
        {
          v15 = v7;
        }

        else
        {
          v15 = v8;
        }

        [(WFContentCollection *)v15 addItem:v14];
      }

      v11 = [items countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  if (items)
  {
    v16 = v8;
    *items = v8;
  }

  return v7;
}

- (void)generateCollectionByCoercingToItemClasses:(id)classes options:(id)options completionHandler:(id)handler
{
  classesCopy = classes;
  optionsCopy = options;
  handlerCopy = handler;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__211;
  v21[4] = __Block_byref_object_dispose__212;
  v22 = objc_opt_new();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __91__WFContentCollection_generateCollectionByCoercingToItemClasses_options_completionHandler___block_invoke;
  v17[3] = &unk_278346760;
  v11 = classesCopy;
  v18 = v11;
  v20 = v21;
  v12 = optionsCopy;
  v19 = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91__WFContentCollection_generateCollectionByCoercingToItemClasses_options_completionHandler___block_invoke_3;
  v14[3] = &unk_278346788;
  v14[4] = self;
  v16 = v21;
  v13 = handlerCopy;
  v15 = v13;
  [(WFContentCollection *)self transformItemsAndFlattenUsingBlock:v17 completionHandler:v14];

  _Block_object_dispose(v21, 8);
}

void __91__WFContentCollection_generateCollectionByCoercingToItemClasses_options_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__WFContentCollection_generateCollectionByCoercingToItemClasses_options_completionHandler___block_invoke_2;
  v12[3] = &unk_278346738;
  v8 = a1[6];
  v14 = v6;
  v15 = v8;
  v13 = v5;
  v9 = v6;
  v10 = v5;
  v11 = [WFCoercionRequest _requestForCoercingToContentClasses:v7 itemCompletionHandler:v12];
  [v11 setOptions:a1[5]];
  [v10 performCoercion:v11];
}

void __91__WFContentCollection_generateCollectionByCoercingToItemClasses_options_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v5 setDefaultCoercionOptions:*(*(a1 + 32) + 8)];
  v7 = [*(*(*(a1 + 48) + 8) + 40) items];
  if ([v7 count])
  {
    v8 = [*(a1 + 32) items];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __91__WFContentCollection_generateCollectionByCoercingToItemClasses_options_completionHandler___block_invoke_4;
    v13[3] = &unk_27834A5F0;
    v14 = v7;
    v9 = [v8 if_objectsPassingTest:v13];
    v10 = [WFContentCollection collectionWithItems:v9];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  (*(*(a1 + 40) + 16))();
}

void __91__WFContentCollection_generateCollectionByCoercingToItemClasses_options_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (![v6 count])
  {
    [*(*(a1[6] + 8) + 40) addItem:a1[4]];
  }

  (*(a1[5] + 16))();
}

- (id)getListRepresentation
{
  items = [(WFContentCollection *)self items];
  v4 = [items if_flatMap:&__block_literal_global_208];

  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v4];
  [(WFContentCollection *)self setMutableItems:v5];

  return self;
}

id __44__WFContentCollection_getListRepresentation__block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = v2;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    goto LABEL_9;
  }

  v3 = v2;
  v4 = [v3 response];
  v5 = [v4 list];
  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = v5;
  v7 = [v3 response];
  v8 = [v7 list];
  v9 = [v8 count];

  if (!v9)
  {
LABEL_7:
    v14[0] = v3;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    goto LABEL_8;
  }

  v10 = [v3 response];
  v11 = [v10 list];

LABEL_8:
LABEL_9:

  return v11;
}

- (void)getFileRepresentations:(id)representations options:(id)options forType:(id)type
{
  optionsCopy = options;
  typeCopy = type;
  representationsCopy = representations;
  items = [(WFContentCollection *)self items];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__WFContentCollection_getFileRepresentations_options_forType___block_invoke;
  v14[3] = &unk_27834A458;
  v15 = typeCopy;
  v16 = optionsCopy;
  v12 = optionsCopy;
  v13 = typeCopy;
  [items if_flatMapAsynchronously:v14 completionHandler:representationsCopy];
}

void __62__WFContentCollection_getFileRepresentations_options_forType___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__WFContentCollection_getFileRepresentations_options_forType___block_invoke_2;
  v11[3] = &unk_27834A430;
  v12 = v6;
  v8 = v6;
  v9 = a2;
  v10 = [WFCoercionRequest requestForCoercingToFileType:v7 completionHandler:v11];
  [v10 setOptions:*(a1 + 40)];
  [v9 performCoercion:v10];
}

- (void)getObjectRepresentations:(id)representations options:(id)options forClass:(Class)class
{
  representationsCopy = representations;
  optionsCopy = options;
  items = [(WFContentCollection *)self items];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__WFContentCollection_getObjectRepresentations_options_forClass___block_invoke;
  v15[3] = &unk_2783466F0;
  v16 = optionsCopy;
  classCopy = class;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__WFContentCollection_getObjectRepresentations_options_forClass___block_invoke_3;
  v13[3] = &unk_27834A430;
  v14 = representationsCopy;
  v11 = representationsCopy;
  v12 = optionsCopy;
  [items if_flatMapAsynchronously:v15 completionHandler:v13];
}

void __65__WFContentCollection_getObjectRepresentations_options_forClass___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [WFObjectType typeWithClass:*(a1 + 40)];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v6 preferredObjectType];
  }

  v11 = v10;

  v12 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__WFContentCollection_getObjectRepresentations_options_forClass___block_invoke_2;
  v14[3] = &unk_27834A430;
  v15 = v7;
  v13 = v7;
  [v6 getRepresentationsForType:v11 options:v12 completionHandler:v14];
}

void __65__WFContentCollection_getObjectRepresentations_options_forClass___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = [v6 if_map:&__block_literal_global_203];
  v7 = [v6 if_map:&__block_literal_global_205];

  (*(*(a1 + 32) + 16))();
}

- (id)effectiveCoercionOptionsForRequest:(id)request
{
  requestCopy = request;
  defaultCoercionOptions = [(WFContentCollection *)self defaultCoercionOptions];
  options = [requestCopy options];

  v7 = [defaultCoercionOptions optionsByAddingContentsOfOptions:options];

  return v7;
}

- (void)performCoercion:(id)coercion
{
  coercionCopy = coercion;
  v4 = [(WFContentCollection *)self effectiveCoercionOptionsForRequest:coercionCopy];
  requestType = [coercionCopy requestType];
  if (requestType)
  {
    if (requestType == 1)
    {
      fileRepresentationResultHandler = [coercionCopy fileRepresentationResultHandler];
      fileType = [coercionCopy fileType];
      [(WFContentCollection *)self getFileRepresentations:fileRepresentationResultHandler options:v4 forType:fileType];
    }

    else
    {
      if (requestType != 2)
      {
        goto LABEL_9;
      }

      fileRepresentationResultHandler = [coercionCopy contentItemClasses];
      fileType = [coercionCopy contentCollectionResultHandler];
      [(WFContentCollection *)self generateCollectionByCoercingToItemClasses:fileRepresentationResultHandler options:v4 completionHandler:fileType];
    }
  }

  else
  {
    fileRepresentationResultHandler = [coercionCopy objectRepresentationResultHandler];
    -[WFContentCollection getObjectRepresentations:options:forClass:](self, "getObjectRepresentations:options:forClass:", fileRepresentationResultHandler, v4, [coercionCopy objectClass]);
  }

LABEL_9:
}

- (BOOL)canPerformCoercion:(id)coercion
{
  v17 = *MEMORY[0x277D85DE8];
  coercionCopy = coercion;
  v5 = [coercionCopy copy];
  v6 = [(WFContentCollection *)self effectiveCoercionOptionsForRequest:coercionCopy];
  [v5 setOptions:v6];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  items = [(WFContentCollection *)self items];
  v8 = [items countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(items);
        }

        if ([*(*(&v12 + 1) + 8 * i) canPerformCoercion:v5])
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [items countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)getFileRepresentationAndAttributionSet:(id)set forType:(id)type
{
  setCopy = set;
  typeCopy = type;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v8 = MEMORY[0x277D85CD0];
    v9 = MEMORY[0x277D85CD0];
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__WFContentCollection_getFileRepresentationAndAttributionSet_forType___block_invoke;
  aBlock[3] = &unk_278346678;
  v10 = v8;
  v32 = v10;
  v33 = setCopy;
  v11 = _Block_copy(aBlock);
  items = [(WFContentCollection *)self items];
  objectEnumerator = [items objectEnumerator];

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__8709;
  v29 = __Block_byref_object_dispose__8710;
  v30 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __70__WFContentCollection_getFileRepresentationAndAttributionSet_forType___block_invoke_3;
  v19[3] = &unk_2783466C8;
  v14 = objectEnumerator;
  v20 = v14;
  v15 = v11;
  v23 = v15;
  v24 = &v25;
  v16 = typeCopy;
  v21 = v16;
  selfCopy = self;
  v17 = _Block_copy(v19);
  v18 = v26[5];
  v26[5] = v17;

  (*(v26[5] + 16))();
  _Block_object_dispose(&v25, 8);
}

void __70__WFContentCollection_getFileRepresentationAndAttributionSet_forType___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__WFContentCollection_getFileRepresentationAndAttributionSet_forType___block_invoke_2;
  v15[3] = &unk_2783474E0;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v11;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v10, v15);
}

void __70__WFContentCollection_getFileRepresentationAndAttributionSet_forType___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) nextObject];
  if (v4)
  {
    v5 = *(a1 + 40);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __70__WFContentCollection_getFileRepresentationAndAttributionSet_forType___block_invoke_4;
    v13 = &unk_2783466A0;
    v17 = *(a1 + 64);
    v14 = v3;
    v16 = *(a1 + 56);
    v6 = v4;
    v15 = v6;
    v7 = [WFCoercionRequest requestForCoercingToFileType:v5 completionHandler:&v10];
    [v7 setOptions:{*(*(a1 + 48) + 8), v10, v11, v12, v13}];
    [v6 performCoercion:v7];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
    v8 = *(*(a1 + 64) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }
}

void __70__WFContentCollection_getFileRepresentationAndAttributionSet_forType___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = [a2 firstObject];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  if (v5)
  {
    *(v6 + 40) = 0;

    v8 = *(a1 + 48);
    v9 = [*(a1 + 40) attributionSet];
    (*(v8 + 16))(v8, v5, v9, v11);
  }

  else
  {
    v10 = v11;
    if (!v11)
    {
      v10 = *(a1 + 32);
    }

    (v7)[2](v7, v10);
  }
}

- (void)getFileRepresentation:(id)representation forType:(id)type
{
  representationCopy = representation;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__WFContentCollection_getFileRepresentation_forType___block_invoke;
  v8[3] = &unk_278346650;
  v9 = representationCopy;
  v7 = representationCopy;
  [(WFContentCollection *)self getFileRepresentationAndAttributionSet:v8 forType:type];
}

- (void)getObjectRepresentationAndAttributionSet:(id)set forClass:(Class)class
{
  setCopy = set;
  if (objc_opt_class() == class)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __73__WFContentCollection_getObjectRepresentationAndAttributionSet_forClass___block_invoke;
    v32[3] = &unk_2783465B0;
    v9 = setCopy;
    v32[4] = self;
    v33 = v9;
    [(WFContentCollection *)self getObjectRepresentations:v32 forClass:objc_opt_class()];
    v10 = v33;
  }

  else
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v7 = MEMORY[0x277D85CD0];
      v8 = MEMORY[0x277D85CD0];
    }

    else
    {
      v7 = dispatch_get_global_queue(0, 0);
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__WFContentCollection_getObjectRepresentationAndAttributionSet_forClass___block_invoke_2;
    aBlock[3] = &unk_2783465D8;
    v10 = v7;
    v30 = v10;
    v31 = setCopy;
    v11 = _Block_copy(aBlock);
    items = [(WFContentCollection *)self items];
    objectEnumerator = [items objectEnumerator];

    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__8709;
    v27 = __Block_byref_object_dispose__8710;
    v28 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __73__WFContentCollection_getObjectRepresentationAndAttributionSet_forClass___block_invoke_193;
    v17[3] = &unk_278346628;
    v14 = objectEnumerator;
    v18 = v14;
    v9 = v11;
    v21 = &v23;
    classCopy = class;
    selfCopy = self;
    v20 = v9;
    v15 = _Block_copy(v17);
    v16 = v24[5];
    v24[5] = v15;

    (*(v24[5] + 16))();
    _Block_object_dispose(&v23, 8);
  }
}

void __73__WFContentCollection_getObjectRepresentationAndAttributionSet_forClass___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  if ([v13 count])
  {
    v9 = [v13 componentsJoinedByString:@"\n"];
  }

  else
  {
    v9 = &stru_282F53518;
  }

  v10 = [v7 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v10 = 0;
  }

  if (v8)
  {

    v9 = 0;
  }

  v11 = *(a1 + 40);
  v12 = [*(a1 + 32) attributionSet];
  (*(v11 + 16))(v11, v9, v10, v12, v8);
}

void __73__WFContentCollection_getObjectRepresentationAndAttributionSet_forClass___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__WFContentCollection_getObjectRepresentationAndAttributionSet_forClass___block_invoke_3;
  block[3] = &unk_278346B18;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v23 = v12;
  v24 = v14;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = v9;
  dispatch_async(v13, block);
}

void __73__WFContentCollection_getObjectRepresentationAndAttributionSet_forClass___block_invoke_193(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) nextObject];
  if (v4)
  {
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __73__WFContentCollection_getObjectRepresentationAndAttributionSet_forClass___block_invoke_2_194;
    v13 = &unk_278346600;
    v5 = *(a1 + 64);
    v17 = *(a1 + 56);
    v14 = v3;
    v16 = *(a1 + 48);
    v6 = v4;
    v15 = v6;
    v7 = [WFCoercionRequest requestForCoercingToObjectClass:v5 completionHandler:&v10];
    [v7 setOptions:{*(*(a1 + 40) + 8), v10, v11, v12, v13}];
    [v6 performCoercion:v7];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }
}

void __73__WFContentCollection_getObjectRepresentationAndAttributionSet_forClass___block_invoke_2_194(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = a2;
  v7 = a4;
  v8 = [a3 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v8 = 0;
  }

  v9 = [v15 firstObject];
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  if (v9)
  {
    *(v10 + 40) = 0;

    v12 = *(a1 + 48);
    v13 = [*(a1 + 40) attributionSet];
    (*(v12 + 16))(v12, v9, v8, v13, v7);
  }

  else
  {
    v14 = v7;
    if (!v7)
    {
      v14 = *(a1 + 32);
    }

    (v11)[2](v11, v14);
  }
}

- (void)getObjectRepresentation:(id)representation forClass:(Class)class
{
  representationCopy = representation;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__WFContentCollection_getObjectRepresentation_forClass___block_invoke;
  v8[3] = &unk_278346588;
  v9 = representationCopy;
  v7 = representationCopy;
  [(WFContentCollection *)self getObjectRepresentationAndAttributionSet:v8 forClass:class];
}

- (void)enumerateFileRepresentations:(id)representations forType:(id)type completionHandler:(id)handler
{
  representationsCopy = representations;
  typeCopy = type;
  handlerCopy = handler;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  items = [(WFContentCollection *)self items];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__WFContentCollection_enumerateFileRepresentations_forType_completionHandler___block_invoke;
  v18[3] = &unk_278346560;
  v12 = typeCopy;
  v19 = v12;
  v22 = v23;
  v13 = representationsCopy;
  selfCopy = self;
  v21 = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__WFContentCollection_enumerateFileRepresentations_forType_completionHandler___block_invoke_5;
  v15[3] = &unk_278348348;
  v14 = handlerCopy;
  v16 = v14;
  v17 = v23;
  [items if_enumerateAsynchronouslyInSequence:v18 completionHandler:v15];

  _Block_object_dispose(v23, 8);
}

void __78__WFContentCollection_enumerateFileRepresentations_forType_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__WFContentCollection_enumerateFileRepresentations_forType_completionHandler___block_invoke_2;
  v13[3] = &unk_278346538;
  v14 = v6;
  v12 = *(a1 + 48);
  v8 = v12;
  v15 = v12;
  v9 = v6;
  v10 = a2;
  v11 = [WFCoercionRequest requestForCoercingToFileType:v7 completionHandler:v13];
  [v11 setOptions:*(*(a1 + 40) + 8)];
  [v10 performCoercion:v11];
}

void __78__WFContentCollection_enumerateFileRepresentations_forType_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __78__WFContentCollection_enumerateFileRepresentations_forType_completionHandler___block_invoke_3;
    v11[3] = &unk_278346510;
    v8 = *(a1 + 40);
    v7 = v8;
    v12 = v8;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __78__WFContentCollection_enumerateFileRepresentations_forType_completionHandler___block_invoke_4;
    v9[3] = &unk_278346498;
    v10 = *(a1 + 32);
    [v5 if_enumerateAsynchronouslyInSequence:v11 completionHandler:v9];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)enumerateObjectRepresentations:(id)representations forClass:(Class)class completionHandler:(id)handler
{
  representationsCopy = representations;
  handlerCopy = handler;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  items = [(WFContentCollection *)self items];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__WFContentCollection_enumerateObjectRepresentations_forClass_completionHandler___block_invoke;
  v16[3] = &unk_2783464E8;
  v18 = v20;
  classCopy = class;
  v11 = representationsCopy;
  v16[4] = self;
  v17 = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__WFContentCollection_enumerateObjectRepresentations_forClass_completionHandler___block_invoke_5;
  v13[3] = &unk_278348348;
  v12 = handlerCopy;
  v14 = v12;
  v15 = v20;
  [items if_enumerateAsynchronouslyInSequence:v16 completionHandler:v13];

  _Block_object_dispose(v20, 8);
}

void __81__WFContentCollection_enumerateObjectRepresentations_forClass_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 56);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__WFContentCollection_enumerateObjectRepresentations_forClass_completionHandler___block_invoke_2;
  v13[3] = &unk_2783464C0;
  v14 = v6;
  v12 = *(a1 + 40);
  v8 = v12;
  v15 = v12;
  v9 = v6;
  v10 = a2;
  v11 = [WFCoercionRequest requestForCoercingToObjectClass:v7 completionHandler:v13];
  [v11 setOptions:*(*(a1 + 32) + 8)];
  [v10 performCoercion:v11];
}

void __81__WFContentCollection_enumerateObjectRepresentations_forClass_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v7 count])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __81__WFContentCollection_enumerateObjectRepresentations_forClass_completionHandler___block_invoke_3;
    v14[3] = &unk_278346470;
    v15 = v8;
    v11 = *(a1 + 40);
    v10 = v11;
    v16 = v11;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __81__WFContentCollection_enumerateObjectRepresentations_forClass_completionHandler___block_invoke_4;
    v12[3] = &unk_278346498;
    v13 = *(a1 + 32);
    [v7 if_enumerateAsynchronouslyInSequence:v14 completionHandler:v12];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __81__WFContentCollection_enumerateObjectRepresentations_forClass_completionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) objectAtIndex:a3];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v8 = 0;
  }

  ++*(*(*(a1 + 48) + 8) + 24);
  (*(*(a1 + 40) + 16))();
}

- (id)collectionByMergingAttributionSet:(id)set
{
  setCopy = set;
  items = [(WFContentCollection *)self items];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__WFContentCollection_collectionByMergingAttributionSet___block_invoke;
  v10[3] = &unk_278346448;
  v11 = setCopy;
  v6 = setCopy;
  v7 = [items if_map:v10];

  v8 = [objc_alloc(objc_opt_class()) initWithItems:v7 defaultCoercionOptions:self->_defaultCoercionOptions];

  return v8;
}

- (void)addFile:(id)file origin:(id)origin disclosureLevel:(unint64_t)level
{
  v6 = [WFContentItem itemWithFile:file origin:origin disclosureLevel:level];
  [(WFContentCollection *)self addItem:v6];
}

- (void)addFileWithOriginAttribution:(id)attribution
{
  v10 = *MEMORY[0x277D85DE8];
  attributionCopy = attribution;
  v5 = [WFContentLocation contentLocationForFile:attributionCopy];
  if (v5)
  {
    v6 = [WFContentItem itemWithFile:attributionCopy origin:v5 disclosureLevel:1];
    [(WFContentCollection *)self addItem:v6];
  }

  else
  {
    v7 = getWFFilesLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315138;
      v9 = "[WFContentCollection addFileWithOriginAttribution:]";
      _os_log_impl(&dword_21E1BD000, v7, OS_LOG_TYPE_FAULT, "%s Should not add content location for in-memory file", &v8, 0xCu);
    }
  }
}

- (void)addFile:(id)file
{
  v4 = [WFContentItem itemWithFile:file];
  [(WFContentCollection *)self addItem:v4];
}

- (void)addObject:(id)object named:(id)named
{
  v5 = [WFContentItem itemWithObject:object named:named];
  [(WFContentCollection *)self addItem:v5];
}

- (void)addObject:(id)object
{
  v4 = [WFContentItem itemWithObject:object named:0];
  [(WFContentCollection *)self addItem:v4];
}

- (WFCoercionOptions)defaultCoercionOptions
{
  defaultCoercionOptions = self->_defaultCoercionOptions;
  if (!defaultCoercionOptions)
  {
    v4 = +[WFCoercionOptions new];
    v5 = self->_defaultCoercionOptions;
    self->_defaultCoercionOptions = v4;

    defaultCoercionOptions = self->_defaultCoercionOptions;
  }

  return defaultCoercionOptions;
}

- (WFContentAttributionSet)attributionSet
{
  items = [(WFContentCollection *)self items];
  v3 = [items valueForKey:@"attributionSet"];
  v4 = [WFContentAttributionSet attributionSetByMergingAttributionSets:v3];

  return v4;
}

- (int64_t)numberOfItems
{
  mutableItems = [(WFContentCollection *)self mutableItems];
  v3 = [mutableItems count];

  return v3;
}

- (NSMutableArray)mutableItems
{
  mutableItems = self->_mutableItems;
  if (!mutableItems)
  {
    v4 = objc_opt_new();
    v5 = self->_mutableItems;
    self->_mutableItems = v4;

    mutableItems = self->_mutableItems;
  }

  return mutableItems;
}

- (void)removeItem:(id)item
{
  itemCopy = item;
  itemWriteLock = [(WFContentCollection *)self itemWriteLock];
  [itemWriteLock lock];

  mutableItems = [(WFContentCollection *)self mutableItems];
  [mutableItems removeObject:itemCopy];

  itemWriteLock2 = [(WFContentCollection *)self itemWriteLock];
  [itemWriteLock2 unlock];
}

- (void)addItems:(id)items
{
  itemsCopy = items;
  itemWriteLock = [(WFContentCollection *)self itemWriteLock];
  [itemWriteLock lock];

  mutableItems = [(WFContentCollection *)self mutableItems];
  [mutableItems addObjectsFromArray:itemsCopy];

  itemWriteLock2 = [(WFContentCollection *)self itemWriteLock];
  [itemWriteLock2 unlock];
}

- (void)addItem:(id)item
{
  itemCopy = item;
  itemWriteLock = [(WFContentCollection *)self itemWriteLock];
  [itemWriteLock lock];

  mutableItems = [(WFContentCollection *)self mutableItems];
  [mutableItems addObject:itemCopy];

  itemWriteLock2 = [(WFContentCollection *)self itemWriteLock];
  [itemWriteLock2 unlock];
}

- (WFContentCollection)initWithItems:(id)items defaultCoercionOptions:(id)options
{
  itemsCopy = items;
  optionsCopy = options;
  v17.receiver = self;
  v17.super_class = WFContentCollection;
  v8 = [(WFContentCollection *)&v17 init];
  if (v8)
  {
    v9 = [itemsCopy mutableCopy];
    mutableItems = v8->_mutableItems;
    v8->_mutableItems = v9;

    v11 = [optionsCopy copy];
    defaultCoercionOptions = v8->_defaultCoercionOptions;
    v8->_defaultCoercionOptions = v11;

    v13 = objc_opt_new();
    itemWriteLock = v8->_itemWriteLock;
    v8->_itemWriteLock = v13;

    v15 = v8;
  }

  return v8;
}

- (id)debugDescription
{
  items = [(WFContentCollection *)self items];
  v4 = [items if_map:&__block_literal_global_8737];

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"<%@: %p>: %@", v7, self, v4];

  return v8;
}

+ (id)collectionWithItems:(id)items
{
  itemsCopy = items;
  v5 = [[self alloc] initWithItems:itemsCopy defaultCoercionOptions:0];

  return v5;
}

+ (void)generateCollectionFromDragItems:(id)items allowedItemClasses:(id)classes completionHandler:(id)handler
{
  v15[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  classesCopy = classes;
  v9 = [items if_map:&__block_literal_global_9020];
  v10 = [WFContentCollection collectionWithItems:v9];
  v11 = [WFCoercionRequest requestForCoercingToContentClasses:classesCopy completionHandler:handlerCopy];

  v14 = @"WFCoercionOptionItemClassPrioritizationType";
  v15[0] = @"SupportedTypes";
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v13 = [WFCoercionOptions optionsWithDictionary:v12];
  [v11 setOptions:v13];

  [v10 performCoercion:v11];
}

id __104__WFContentCollection_UIDragItem__generateCollectionFromDragItems_allowedItemClasses_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 itemProvider];
  v3 = [(WFContentItem *)WFNSItemProviderContentItem itemWithObject:v2];

  [v3 setUseNewLoadingAPI:1];

  return v3;
}

- (void)getRichTextRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = objc_opt_new();
  items = [(WFContentCollection *)self items];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__WFContentCollection_RichTextGeneration__getRichTextRepresentation___block_invoke;
  v12[3] = &unk_278349320;
  v13 = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__WFContentCollection_RichTextGeneration__getRichTextRepresentation___block_invoke_174;
  v9[3] = &unk_278349348;
  v10 = v13;
  v11 = representationCopy;
  v7 = v13;
  v8 = representationCopy;
  [items if_enumerateAsynchronouslyInSequence:v12 completionHandler:v9];
}

void __69__WFContentCollection_RichTextGeneration__getRichTextRepresentation___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 string];
    v9 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v8];
    [*(a1 + 32) appendAttributedString:v9];
    v7[2](v7, 0);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22[0] = objc_opt_class();
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __69__WFContentCollection_RichTextGeneration__getRichTextRepresentation___block_invoke_2;
      v19[3] = &unk_27834A200;
      v21 = v7;
      v20 = *(a1 + 32);
      [v6 coerceToItemClasses:v10 completionHandler:v19];

      v11 = v21;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __69__WFContentCollection_RichTextGeneration__getRichTextRepresentation___block_invoke_3;
        v16[3] = &unk_278349FA0;
        v18 = v7;
        v17 = *(a1 + 32);
        [v6 getObjectRepresentation:v16 forClass:objc_opt_class()];

        v11 = v18;
      }

      else
      {
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __69__WFContentCollection_RichTextGeneration__getRichTextRepresentation___block_invoke_4;
        v12[3] = &unk_278349FC8;
        v15 = v7;
        v13 = v6;
        v14 = *(a1 + 32);
        [v13 getFileRepresentation:v12 forType:0];

        v11 = v15;
      }
    }
  }
}

uint64_t __69__WFContentCollection_RichTextGeneration__getRichTextRepresentation___block_invoke_174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (a3)
  {
    return (*(v4 + 16))(v4, 0);
  }

  else
  {
    return (*(v4 + 16))(v4, *(a1 + 32));
  }
}

void __69__WFContentCollection_RichTextGeneration__getRichTextRepresentation___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = [a2 firstObject];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = objc_alloc(MEMORY[0x277CCA898]);
    v7 = [v5 string];
    v8 = [v6 initWithString:v7];

    [*(a1 + 32) appendAttributedString:v8];
    (*(*(a1 + 40) + 16))();
  }

  else
  {

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __69__WFContentCollection_RichTextGeneration__getRichTextRepresentation___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) appendAttributedString:a2];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __69__WFContentCollection_RichTextGeneration__getRichTextRepresentation___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if ([*(a1 + 32) isScreenTimeEntity] && (objc_msgSend(v5, "mappedData"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v8))
    {
      v9 = objc_alloc(MEMORY[0x277CCACA8]);
      v10 = [v5 mappedData];
      v11 = [v9 initWithData:v10 encoding:4];

      if ([v11 length])
      {
        v12 = *(a1 + 40);
        v13 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v11];
        [v12 appendAttributedString:v13];
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v14 = objc_alloc(getNSTextAttachmentClass());
      v15 = [v5 mappedData];
      v16 = [v5 wfType];
      v17 = [v16 string];
      v11 = [v14 initWithData:v15 ofType:v17];

      v18 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v11];
      [*(a1 + 40) appendAttributedString:v18];
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v19 = getWFContentGraphLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315394;
      v21 = "[WFContentCollection(RichTextGeneration) getRichTextRepresentation:]_block_invoke_4";
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_21E1BD000, v19, OS_LOG_TYPE_ERROR, "%s Could not attach file to NSAttributedString: %@", &v20, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)transformFirstFileRepresentationForType:(id)type usingBlock:(id)block completionHandler:(id)handler
{
  typeCopy = type;
  blockCopy = block;
  handlerCopy = handler;
  items = [(WFContentCollection *)self items];
  objectEnumerator = [items objectEnumerator];

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__26995;
  v32 = __Block_byref_object_dispose__26996;
  v33 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __103__WFContentCollection_Transform__transformFirstFileRepresentationForType_usingBlock_completionHandler___block_invoke;
  v21[3] = &unk_27834A3E0;
  v13 = objectEnumerator;
  v22 = v13;
  v14 = handlerCopy;
  v25 = v14;
  v27 = &v28;
  v15 = typeCopy;
  v23 = v15;
  v16 = blockCopy;
  v26 = v16;
  selfCopy = self;
  v17 = _Block_copy(v21);
  v18 = v29[5];
  v29[5] = v17;

  (*(v29[5] + 16))(v29[5], 0, v19, v20);
  _Block_object_dispose(&v28, 8);
}

void __103__WFContentCollection_Transform__transformFirstFileRepresentationForType_usingBlock_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) nextObject];
  if (v4)
  {
    v5 = *(a1 + 40);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __103__WFContentCollection_Transform__transformFirstFileRepresentationForType_usingBlock_completionHandler___block_invoke_2;
    v13[3] = &unk_27834A3B8;
    v18 = *(a1 + 72);
    v14 = v3;
    v16 = *(a1 + 64);
    v6 = v4;
    v15 = v6;
    v17 = *(a1 + 56);
    v7 = [WFCoercionRequest requestForCoercingToFileType:v5 completionHandler:v13];
    v8 = [*(a1 + 48) defaultCoercionOptions];
    [v7 setOptions:v8];

    [v6 performCoercion:v7];
  }

  else
  {
    v9 = *(a1 + 56);
    v10 = [WFContentCollection collectionWithItems:MEMORY[0x277CBEBF8]];
    (*(v9 + 16))(v9, v10, v3);

    v11 = *(*(a1 + 72) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;
  }
}

void __103__WFContentCollection_Transform__transformFirstFileRepresentationForType_usingBlock_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  if (v6)
  {
    *(v7 + 40) = 0;

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __103__WFContentCollection_Transform__transformFirstFileRepresentationForType_usingBlock_completionHandler___block_invoke_3;
    v11[3] = &unk_27834A618;
    v9 = *(a1 + 48);
    v12 = *(a1 + 40);
    v13 = *(a1 + 56);
    (*(v9 + 16))(v9, v6, v5, v11);
  }

  else
  {
    v10 = v5;
    if (!v5)
    {
      v10 = *(a1 + 32);
    }

    (v8)[2](v8, v10);
  }
}

void __103__WFContentCollection_Transform__transformFirstFileRepresentationForType_usingBlock_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __103__WFContentCollection_Transform__transformFirstFileRepresentationForType_usingBlock_completionHandler___block_invoke_4;
      v11[3] = &unk_27834A228;
      v12 = *(a1 + 32);
      v7 = [v5 if_compactMap:v11];
      v8 = v12;
    }

    else
    {
      v8 = [*(a1 + 32) attributionSet];
      v9 = WFConvertObjectToContentItem(v5, v8);
      v13[0] = v9;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    }
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v10 = [WFContentCollection collectionWithItems:v7];
  (*(*(a1 + 40) + 16))();
}

id __103__WFContentCollection_Transform__transformFirstFileRepresentationForType_usingBlock_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 attributionSet];
  v5 = WFConvertObjectToContentItem(v3, v4);

  return v5;
}

- (void)transformFirstObjectRepresentationForClass:(Class)class usingBlock:(id)block completionHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  items = [(WFContentCollection *)self items];
  objectEnumerator = [items objectEnumerator];

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__26995;
  v30 = __Block_byref_object_dispose__26996;
  v31 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __106__WFContentCollection_Transform__transformFirstObjectRepresentationForClass_usingBlock_completionHandler___block_invoke;
  v19[3] = &unk_27834A390;
  v12 = objectEnumerator;
  v20 = v12;
  v13 = handlerCopy;
  v22 = v13;
  v24 = &v26;
  classCopy = class;
  v14 = blockCopy;
  v23 = v14;
  selfCopy = self;
  v15 = _Block_copy(v19);
  v16 = v27[5];
  v27[5] = v15;

  (*(v27[5] + 16))(v27[5], 0, v17, v18);
  _Block_object_dispose(&v26, 8);
}

void __106__WFContentCollection_Transform__transformFirstObjectRepresentationForClass_usingBlock_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) nextObject];
  if (v4)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __106__WFContentCollection_Transform__transformFirstObjectRepresentationForClass_usingBlock_completionHandler___block_invoke_2;
    v13[3] = &unk_27834A368;
    v5 = *(a1 + 72);
    v18 = *(a1 + 64);
    v14 = v3;
    v16 = *(a1 + 56);
    v6 = v4;
    v15 = v6;
    v17 = *(a1 + 48);
    v7 = [WFCoercionRequest requestForCoercingToObjectClass:v5 completionHandler:v13];
    v8 = [*(a1 + 40) defaultCoercionOptions];
    [v7 setOptions:v8];

    [v6 performCoercion:v7];
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = objc_opt_new();
    (*(v9 + 16))(v9, v10, v3);

    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;
  }
}

void __106__WFContentCollection_Transform__transformFirstObjectRepresentationForClass_usingBlock_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = [a3 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v9 = 0;
  }

  v10 = [v7 firstObject];
  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  if (v10)
  {
    *(v11 + 40) = 0;

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __106__WFContentCollection_Transform__transformFirstObjectRepresentationForClass_usingBlock_completionHandler___block_invoke_3;
    v15[3] = &unk_27834A618;
    v13 = *(a1 + 48);
    v16 = *(a1 + 40);
    v17 = *(a1 + 56);
    (*(v13 + 16))(v13, v10, v9, v8, v15);
  }

  else
  {
    v14 = v8;
    if (!v8)
    {
      v14 = *(a1 + 32);
    }

    (v12)[2](v12, v14);
  }
}

void __106__WFContentCollection_Transform__transformFirstObjectRepresentationForClass_usingBlock_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __106__WFContentCollection_Transform__transformFirstObjectRepresentationForClass_usingBlock_completionHandler___block_invoke_4;
      v11[3] = &unk_27834A228;
      v12 = *(a1 + 32);
      v7 = [v5 if_compactMap:v11];
      v8 = v12;
    }

    else
    {
      v8 = [*(a1 + 32) attributionSet];
      v9 = WFConvertObjectToContentItem(v5, v8);
      v13[0] = v9;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    }
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v10 = [WFContentCollection collectionWithItems:v7];
  (*(*(a1 + 40) + 16))();
}

id __106__WFContentCollection_Transform__transformFirstObjectRepresentationForClass_usingBlock_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 attributionSet];
  v5 = WFConvertObjectToContentItem(v3, v4);

  return v5;
}

- (void)transformFileRepresentationsForType:(id)type usingBlock:(id)block completionHandler:(id)handler
{
  typeCopy = type;
  blockCopy = block;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __99__WFContentCollection_Transform__transformFileRepresentationsForType_usingBlock_completionHandler___block_invoke;
  v12[3] = &unk_27834A340;
  selfCopy = self;
  v15 = blockCopy;
  v13 = typeCopy;
  v10 = blockCopy;
  v11 = typeCopy;
  [(WFContentCollection *)self transformItemsAndFlattenUsingBlock:v12 completionHandler:handler];
}

void __99__WFContentCollection_Transform__transformFileRepresentationsForType_usingBlock_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __99__WFContentCollection_Transform__transformFileRepresentationsForType_usingBlock_completionHandler___block_invoke_2;
  v14 = &unk_27834A2C8;
  v15 = v5;
  v16 = *(a1 + 48);
  v7 = v5;
  v8 = a2;
  v9 = [WFCoercionRequest requestForCoercingToFileType:v6 completionHandler:&v11];
  v10 = [*(a1 + 40) defaultCoercionOptions];
  [v9 setOptions:v10];

  [v8 performCoercion:v9];
}

void __99__WFContentCollection_Transform__transformFileRepresentationsForType_usingBlock_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __99__WFContentCollection_Transform__transformFileRepresentationsForType_usingBlock_completionHandler___block_invoke_3;
    v9[3] = &unk_27834A318;
    v11 = *(a1 + 40);
    v10 = v6;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __99__WFContentCollection_Transform__transformFileRepresentationsForType_usingBlock_completionHandler___block_invoke_5;
    v7[3] = &unk_27834A430;
    v8 = *(a1 + 32);
    [v5 if_flatMapAsynchronously:v9 completionHandler:v7];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __99__WFContentCollection_Transform__transformFileRepresentationsForType_usingBlock_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v9 = a1 + 32;
  v7 = *(a1 + 32);
  v8 = *(v9 + 8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __99__WFContentCollection_Transform__transformFileRepresentationsForType_usingBlock_completionHandler___block_invoke_4;
  v12[3] = &unk_27834A278;
  v13 = v6;
  v10 = *(v8 + 16);
  v11 = v6;
  v10(v8, a2, v7, v12);
}

void __99__WFContentCollection_Transform__transformFileRepresentationsForType_usingBlock_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v5;
  objc_opt_class();
  v7 = v8;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:{v8, 0}];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)transformObjectRepresentationsForClass:(Class)class usingBlock:(id)block completionHandler:(id)handler
{
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __102__WFContentCollection_Transform__transformObjectRepresentationsForClass_usingBlock_completionHandler___block_invoke;
  v10[3] = &unk_27834A2F0;
  v11 = blockCopy;
  classCopy = class;
  v10[4] = self;
  v9 = blockCopy;
  [(WFContentCollection *)self transformItemsAndFlattenUsingBlock:v10 completionHandler:handler];
}

void __102__WFContentCollection_Transform__transformObjectRepresentationsForClass_usingBlock_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) defaultCoercionOptions];
  v8 = [WFObjectType typeWithClass:*(a1 + 48)];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v5 preferredObjectType];
  }

  v11 = v10;

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __102__WFContentCollection_Transform__transformObjectRepresentationsForClass_usingBlock_completionHandler___block_invoke_2;
  v13[3] = &unk_27834A2C8;
  v14 = v6;
  v15 = *(a1 + 40);
  v12 = v6;
  [v5 getRepresentationsForType:v11 options:v7 completionHandler:v13];
}

void __102__WFContentCollection_Transform__transformObjectRepresentationsForClass_usingBlock_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __102__WFContentCollection_Transform__transformObjectRepresentationsForClass_usingBlock_completionHandler___block_invoke_3;
    v9[3] = &unk_27834A2A0;
    v11 = *(a1 + 40);
    v10 = v6;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __102__WFContentCollection_Transform__transformObjectRepresentationsForClass_usingBlock_completionHandler___block_invoke_5;
    v7[3] = &unk_27834A430;
    v8 = *(a1 + 32);
    [v5 if_flatMapAsynchronously:v9 completionHandler:v7];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __102__WFContentCollection_Transform__transformObjectRepresentationsForClass_usingBlock_completionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 40);
  v8 = a2;
  v9 = [v8 object];
  v10 = [v8 wfName];

  v11 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __102__WFContentCollection_Transform__transformObjectRepresentationsForClass_usingBlock_completionHandler___block_invoke_4;
  v14[3] = &unk_27834A278;
  v15 = v6;
  v12 = *(v7 + 16);
  v13 = v6;
  v12(v7, v9, v10, v11, v14);
}

void __102__WFContentCollection_Transform__transformObjectRepresentationsForClass_usingBlock_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v5;
  objc_opt_class();
  v7 = v8;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:{v8, 0}];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)transformItemsAndFlattenUsingBlock:(id)block completionHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  items = [(WFContentCollection *)self items];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __87__WFContentCollection_Transform__transformItemsAndFlattenUsingBlock_completionHandler___block_invoke;
  v13[3] = &unk_27834A250;
  v14 = blockCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__WFContentCollection_Transform__transformItemsAndFlattenUsingBlock_completionHandler___block_invoke_4;
  v11[3] = &unk_27834A200;
  v11[4] = self;
  v12 = handlerCopy;
  v9 = handlerCopy;
  v10 = blockCopy;
  [items if_flatMapAsynchronously:v13 completionHandler:v11];
}

void __87__WFContentCollection_Transform__transformItemsAndFlattenUsingBlock_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__WFContentCollection_Transform__transformItemsAndFlattenUsingBlock_completionHandler___block_invoke_2;
  v12[3] = &unk_27834A200;
  v13 = v6;
  v14 = v7;
  v9 = *(v8 + 16);
  v10 = v7;
  v11 = v6;
  v9(v8, v11, v12);
}

void __87__WFContentCollection_Transform__transformItemsAndFlattenUsingBlock_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = [WFContentCollection collectionWithItems:a2];
  v6 = [*(a1 + 32) defaultCoercionOptions];
  [v7 setDefaultCoercionOptions:v6];

  (*(*(a1 + 40) + 16))();
}

void __87__WFContentCollection_Transform__transformItemsAndFlattenUsingBlock_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__WFContentCollection_Transform__transformItemsAndFlattenUsingBlock_completionHandler___block_invoke_3;
  v8[3] = &unk_27834A228;
  v9 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 if_compactMap:v8];
  (*(*(a1 + 40) + 16))();
}

id __87__WFContentCollection_Transform__transformItemsAndFlattenUsingBlock_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 attributionSet];
  v5 = WFConvertObjectToContentItem(v3, v4);

  return v5;
}

- (void)transformItemsUsingBlock:(id)block completionHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  items = [(WFContentCollection *)self items];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__WFContentCollection_Transform__transformItemsUsingBlock_completionHandler___block_invoke;
  v13[3] = &unk_27834A1D8;
  v14 = blockCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__WFContentCollection_Transform__transformItemsUsingBlock_completionHandler___block_invoke_3;
  v11[3] = &unk_27834A200;
  v11[4] = self;
  v12 = handlerCopy;
  v9 = handlerCopy;
  v10 = blockCopy;
  [items if_mapAsynchronously:v13 completionHandler:v11];
}

void __77__WFContentCollection_Transform__transformItemsUsingBlock_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__WFContentCollection_Transform__transformItemsUsingBlock_completionHandler___block_invoke_2;
  v12[3] = &unk_27834A618;
  v13 = v6;
  v14 = v7;
  v9 = *(v8 + 16);
  v10 = v6;
  v11 = v7;
  v9(v8, v10, v12);
}

void __77__WFContentCollection_Transform__transformItemsUsingBlock_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = [WFContentCollection collectionWithItems:a2];
  v6 = [*(a1 + 32) defaultCoercionOptions];
  [v7 setDefaultCoercionOptions:v6];

  (*(*(a1 + 40) + 16))();
}

void __77__WFContentCollection_Transform__transformItemsUsingBlock_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a3;
  v7 = a2;
  v9 = [v5 attributionSet];
  v8 = WFConvertObjectToContentItem(v7, v9);

  (*(v4 + 16))(v4, v8, v6);
}

@end