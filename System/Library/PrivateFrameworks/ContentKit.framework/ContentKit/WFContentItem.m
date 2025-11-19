@interface WFContentItem
+ (BOOL)canLowercaseTypeDescription;
+ (BOOL)contentItems:(id)a3 haveContentProperties:(id)a4;
+ (BOOL)errorIsBadCoercionError:(id)a3;
+ (BOOL)hasFileOutput;
+ (BOOL)hasStringOutput;
+ (BOOL)supportedItemClassMustBeDeterminedByInstance:(Class)a3;
+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)a3;
+ (BOOL)supportedTypesMustBeDeterminedByInstance;
+ (NSArray)allProperties;
+ (NSArray)pasteboardValueClasses;
+ (NSArray)properties;
+ (NSOrderedSet)allSupportedItemClasses;
+ (NSOrderedSet)allSupportedTypes;
+ (NSOrderedSet)supportedItemClasses;
+ (NSOrderedSet)supportedItemClassesExcludingInstanceSpecificTypes;
+ (NSOrderedSet)supportedTypes;
+ (NSOrderedSet)supportedTypesExcludingInstanceSpecificTypes;
+ (NSString)countDescription;
+ (NSString)localizedFilterDescription;
+ (NSString)localizedPluralFilterDescription;
+ (NSString)localizedPluralTypeDescription;
+ (NSString)localizedTypeDescription;
+ (WFContentItemStringConversionBehavior)stringConversionBehavior;
+ (id)badCoercionErrorForItemClass:(Class)a3;
+ (id)badCoercionErrorForItemClasses:(id)a3;
+ (id)badCoercionErrorForObjectClass:(Class)a3;
+ (id)badCoercionErrorForType:(id)a3;
+ (id)badCoercionErrorForTypeDescription:(id)a3 toTypeDescription:(id)a4;
+ (id)badCoercionErrorWithReasonString:(id)a3;
+ (id)cachedCoercions;
+ (id)coercionForCoercingToType:(id)a3 concurrencyMode:(int64_t)a4;
+ (id)coercionForType:(id)a3;
+ (id)itemFromSerializedItem:(id)a3 withItemClass:(Class)a4 forType:(id)a5 nameIfKnown:(id)a6 sourceName:(id)a7 attributionSet:(id)a8 cachingIdentifier:(id)a9 completionHandler:(id)a10;
+ (id)itemWithFile:(id)a3 attributionSet:(id)a4;
+ (id)itemWithFile:(id)a3 attributionSet:(id)a4 cachingIdentifier:(id)a5;
+ (id)itemWithFile:(id)a3 origin:(id)a4 disclosureLevel:(unint64_t)a5;
+ (id)itemWithObject:(id)a3 named:(id)a4;
+ (id)itemWithObject:(id)a3 named:(id)a4 attributionSet:(id)a5;
+ (id)itemWithObject:(id)a3 named:(id)a4 attributionSet:(id)a5 cachingIdentifier:(id)a6;
+ (id)itemWithObject:(id)a3 origin:(id)a4 disclosureLevel:(unint64_t)a5;
+ (id)itemWithObject:(id)a3 privacyConfiguration:(id)a4;
+ (id)itemWithRepresentation:(id)a3;
+ (id)itemWithRepresentation:(id)a3 attributionSet:(id)a4;
+ (id)itemWithRepresentation:(id)a3 attributionSet:(id)a4 cachingIdentifier:(id)a5;
+ (id)itemWithRepresentation:(id)a3 attributionSet:(id)a4 includesDefaultAttributionSet:(BOOL)a5;
+ (id)itemWithRepresentation:(id)a3 forType:(id)a4 attributionSet:(id)a5 includesDefaultAttributionSet:(BOOL)a6 cachingIdentifier:(id)a7;
+ (id)itemWithSerializedItem:(id)a3 forType:(id)a4 named:(id)a5 attributionSet:(id)a6 cachingIdentifier:(id)a7;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)namePropertyBuilder;
+ (id)outputTypesFromCoercions;
+ (id)populateBadCoercionError:(id)a3 withResponsibleComponent:(id)a4;
+ (id)propertyBuilders;
+ (id)propertyForName:(id)a3;
+ (id)supportedPropertyForProperty:(id)a3;
+ (void)getContentItemFromSerializedItem:(id)a3 sourceName:(id)a4 completionHandler:(id)a5;
+ (void)runQuery:(id)a3 withItems:(id)a4 permissionRequestor:(id)a5 completionHandler:(id)a6;
- (BOOL)canGenerateIntermediaryRepresentationForItemClass:(Class)a3;
- (BOOL)canGenerateRepresentationForType:(id)a3;
- (BOOL)canPerformCoercion:(id)a3;
- (BOOL)coercionOptions:(id)a3 allowCoercionsToItemClass:(Class)a4;
- (BOOL)coercionOptions:(id)a3 allowCoercionsToType:(id)a4;
- (BOOL)getListSubtitle:(id)a3;
- (BOOL)hasStringOutput;
- (BOOL)isCoercibleToItemClass:(Class)a3;
- (BOOL)isCoercibleToItemClasses:(id)a3;
- (BOOL)isScreenTimeEntity;
- (BOOL)loadsListContentAsynchronously;
- (NSDictionary)additionalRepresentationsForSerialization;
- (NSDictionary)metadataForSerialization;
- (NSExtensionItem)extensionItem;
- (NSExtensionItem)minimalExtensionItem;
- (NSItemProvider)itemProvider;
- (NSItemProvider)minimalItemProvider;
- (NSMutableDictionary)representationsByType;
- (NSMutableDictionary)subItemsByClass;
- (NSOrderedSet)allSupportedItemClasses;
- (NSOrderedSet)allSupportedTypes;
- (NSOrderedSet)outputTypes;
- (NSOrderedSet)ownedTypes;
- (NSOrderedSet)supportedItemClasses;
- (NSOrderedSet)supportedTypes;
- (NSString)description;
- (NSString)internalName;
- (NSString)name;
- (NSString)richListTitle;
- (NSUUID)cachingIdentifier;
- (WFContentItem)initWithCoder:(id)a3;
- (WFContentItem)initWithRepresentation:(id)a3 forType:(id)a4 attributionSet:(id)a5 includesDefaultAttributionSet:(BOOL)a6 cachingIdentifier:(id)a7;
- (WFContentItem)initWithRepresentationsByType:(id)a3 forType:(id)a4 subItemsByClass:(id)a5 attributionSet:(id)a6 includesDefaultAttributionSet:(BOOL)a7 cachingIdentifier:(id)a8;
- (WFContentItemChangeTransaction)changeTransaction;
- (WFFileType)preferredFileType;
- (WFImage)icon;
- (WFObjectType)preferredObjectType;
- (WFRepresentation)internalRepresentation;
- (id)_getRepresentationsForType:(id)a3 options:(id)a4 error:(id *)a5;
- (id)contentItemByMergingAttributionSet:(id)a3;
- (id)copyWithName:(id)a3 zone:(_NSZone *)a4;
- (id)defaultSourceForRepresentation:(id)a3;
- (id)extensionItemWithItemProvider:(id)a3;
- (id)fileRepresentationForType:(id)a3;
- (id)fileRepresentationsForType:(id)a3;
- (id)generateFileRepresentationsForType:(id)a3 options:(id)a4 error:(id *)a5;
- (id)generateFirstLevelSubItemsForItemClass:(Class)a3 options:(id)a4 error:(id *)a5;
- (id)generateObjectRepresentationsForClass:(Class)a3 options:(id)a4 error:(id *)a5;
- (id)generateRepresentationsForType:(id)a3 options:(id)a4 error:(id *)a5;
- (id)generateSubItemsForItemClass:(Class)a3 options:(id)a4 error:(id *)a5;
- (id)getRepresentationsForType:(id)a3 error:(id *)a4;
- (id)getRepresentationsForType:(id)a3 options:(id)a4 error:(id *)a5;
- (id)intermediaryTypesForCoercionToItemClass:(Class)a3;
- (id)internalRepresentationForCopyingWithName:(id)a3;
- (id)itemProviderForTypes:(id)a3;
- (id)itemsByCoercingToItemClass:(Class)a3 options:(id)a4 error:(id *)a5;
- (id)nativePasteboardTypeForObjectRepresentationOfClass:(Class)a3;
- (id)objectForClass:(Class)a3;
- (id)objectRepresentationForClass:(Class)a3;
- (id)objectRepresentationsForClass:(Class)a3;
- (id)objectsForClass:(Class)a3;
- (id)preferredTypeOfClass:(Class)a3;
- (id)representationForType:(id)a3;
- (id)representationsForType:(id)a3;
- (id)subItemForClass:(Class)a3;
- (id)subItemsForClass:(Class)a3;
- (id)typeForCoercionRequest:(id)a3;
- (void)coerceToItemClass:(Class)a3 completionHandler:(id)a4;
- (void)coerceToItemClasses:(id)a3 completionHandler:(id)a4;
- (void)coerceToItemClasses:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)forceCoerceToItemClasses:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (void)generateFileRepresentation:(id)a3 options:(id)a4 forType:(id)a5;
- (void)generateFileRepresentations:(id)a3 options:(id)a4 forType:(id)a5;
- (void)generateFirstLevelSubItemsForItemClass:(Class)a3 options:(id)a4 completionHandler:(id)a5;
- (void)generateObjectRepresentation:(id)a3 options:(id)a4 forClass:(Class)a5;
- (void)generateObjectRepresentations:(id)a3 options:(id)a4 forClass:(Class)a5;
- (void)generateRepresentationsForType:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (void)generateSubItemsForItemClasses:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (void)getFileRepresentation:(id)a3 forType:(id)a4 options:(id)a5;
- (void)getFileRepresentations:(id)a3 forType:(id)a4 options:(id)a5;
- (void)getFileRepresentationsForSerialization:(id)a3;
- (void)getObjectRepresentation:(id)a3 forClass:(Class)a4 options:(id)a5;
- (void)getObjectRepresentations:(id)a3 forClass:(Class)a4 options:(id)a5;
- (void)getPreferredFileExtension:(id)a3;
- (void)getPreferredFileSize:(id)a3;
- (void)getRepresentationsForType:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (void)getSerializedItem:(id)a3;
- (void)getTitleWithPermissionRequestor:(id)a3 completionHandler:(id)a4;
- (void)performCoercion:(id)a3;
- (void)setObjectRepresentations:(id)a3 forClass:(Class)a4;
- (void)setRepresentations:(id)a3 forType:(id)a4;
- (void)setSubItems:(id)a3 forClass:(Class)a4;
@end

@implementation WFContentItem

- (NSExtensionItem)minimalExtensionItem
{
  v3 = [(WFContentItem *)self minimalItemProvider];
  v4 = [(WFContentItem *)self extensionItemWithItemProvider:v3];

  return v4;
}

- (NSItemProvider)minimalItemProvider
{
  v3 = [(WFContentItem *)self internalRepresentationType];
  v4 = [v3 conformsToClass:objc_opt_class()];

  if (v4)
  {
    v5 = MEMORY[0x277CBEB70];
    v6 = [(WFContentItem *)self internalRepresentationType];
    v7 = [v5 orderedSetWithObject:v6];
    v8 = [(WFContentItem *)self itemProviderForTypes:v7];

    goto LABEL_9;
  }

  v6 = objc_opt_new();
  if ([(WFContentItem *)self includesFileRepresentationInSerializedItem])
  {
    v9 = [(WFContentItem *)self preferredFileType];
LABEL_7:
    v10 = v9;
    [v6 addObject:v9];

    goto LABEL_8;
  }

  if ([(WFContentItem *)self hasStringOutput])
  {
    v9 = [WFObjectType typeWithClass:objc_opt_class()];
    goto LABEL_7;
  }

LABEL_8:
  v8 = [(WFContentItem *)self itemProviderForTypes:v6];
LABEL_9:

  return v8;
}

- (NSExtensionItem)extensionItem
{
  v3 = [(WFContentItem *)self itemProvider];
  v4 = [(WFContentItem *)self extensionItemWithItemProvider:v3];

  return v4;
}

- (NSItemProvider)itemProvider
{
  v3 = [(WFContentItem *)self supportedTypes];
  v4 = [v3 mutableCopy];

  if ([(WFContentItem *)self includesFileRepresentationInSerializedItem])
  {
    v5 = [(WFContentItem *)self preferredFileType];
    [v4 addObject:v5];
  }

  if (![(WFContentItem *)self hasStringOutput])
  {
    v6 = [WFObjectType typeWithClass:objc_opt_class()];
    [v4 removeObject:v6];
  }

  v7 = [(WFContentItem *)self itemProviderForTypes:v4];

  return v7;
}

- (id)extensionItemWithItemProvider:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(WFContentItem *)self name];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CCA898]);
    v8 = [(WFContentItem *)self name];
    v9 = [v7 initWithString:v8];
    [v5 setAttributedTitle:v9];
  }

  v20[0] = v4;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  [v5 setAttachments:v10];

  v11 = [v5 userInfo];
  v12 = [v11 mutableCopy];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = objc_opt_new();
  }

  v15 = v14;

  v16 = [MEMORY[0x277CCA8D8] mainBundle];
  v17 = [v16 bundleIdentifier];
  [v15 setObject:v17 forKey:@"link.contentkit.sourceapp"];

  v18 = [(WFContentItem *)self metadataForSerialization];
  [v15 addEntriesFromDictionary:v18];

  [v5 setUserInfo:v15];

  return v5;
}

- (id)itemProviderForTypes:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    v19 = *MEMORY[0x277CE1E20];
    v20 = *MEMORY[0x277CE1E90];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          if ([v11 isEqualToClass:objc_opt_class()])
          {
            v13 = MEMORY[0x277D79F68];
            v14 = v20;
          }

          else
          {
            if (![v11 isEqualToClass:objc_opt_class()])
            {
              continue;
            }

            v13 = MEMORY[0x277D79F68];
            v14 = v19;
          }

          v12 = [v13 typeWithUTType:{v14, v19}];
        }

        v15 = v12;
        if (v12)
        {
          v16 = [v12 string];
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __55__WFContentItem_NSExtensionItem__itemProviderForTypes___block_invoke;
          v21[3] = &unk_278344F88;
          v22 = v15;
          v23 = self;
          v17 = v15;
          [v5 registerItemForTypeIdentifier:v16 loadHandler:v21];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  return v5;
}

void __55__WFContentItem_NSExtensionItem__itemProviderForTypes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if ([v6 isEqualToUTType:*MEMORY[0x277CE1D70]])
  {
    v7 = [*(a1 + 40) preferredFileType];

    v6 = v7;
  }

  if ((!a3 || objc_opt_class() == a3) && (([v6 conformsToUTType:*MEMORY[0x277CE1D40]] & 1) != 0 || objc_msgSend(v6, "conformsToUTType:", *MEMORY[0x277CE1E90])))
  {
    a3 = objc_opt_class();
  }

  if (a3 == objc_opt_class())
  {
    v10 = *(a1 + 40);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __55__WFContentItem_NSExtensionItem__itemProviderForTypes___block_invoke_2;
    v17[3] = &unk_278349F78;
    v18 = v5;
    [v10 getFileRepresentation:v17 forType:v6];
    v9 = v18;
    goto LABEL_17;
  }

  if ((a3 == objc_opt_class() || a3 == objc_opt_class()) && ([*(a1 + 32) isEqualToUTType:*MEMORY[0x277CE1E90]] & 1) == 0)
  {
    v12 = *(a1 + 40);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __55__WFContentItem_NSExtensionItem__itemProviderForTypes___block_invoke_3;
    v15[3] = &unk_278349F78;
    v16 = v5;
    [v12 getFileRepresentation:v15 forType:v6];
    v9 = v16;
    goto LABEL_17;
  }

  if ([a3 conformsToProtocol:&unk_282F7EDE0])
  {
    v8 = *(a1 + 40);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__WFContentItem_NSExtensionItem__itemProviderForTypes___block_invoke_4;
    v13[3] = &unk_278349F18;
    v13[4] = v8;
    v14 = v5;
    [v8 getObjectRepresentation:v13 forClass:a3];
    v9 = v14;
LABEL_17:

    goto LABEL_18;
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA2C0] code:-1100 userInfo:0];
  (*(v5 + 2))(v5, 0, v11);

LABEL_18:
}

void __55__WFContentItem_NSExtensionItem__itemProviderForTypes___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 data];
  (*(v4 + 16))(v4, v6, v5);
}

void __55__WFContentItem_NSExtensionItem__itemProviderForTypes___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 fileURL];
  (*(v4 + 16))(v4, v6, v5);
}

void __55__WFContentItem_NSExtensionItem__itemProviderForTypes___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v6 = a4;
  if ([objc_opt_class() errorIsBadCoercionError:v6])
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA2C0] code:-1100 userInfo:0];

    v6 = v7;
  }

  (*(*(a1 + 40) + 16))();
}

- (BOOL)loadsListContentAsynchronously
{
  if ([(WFContentItem *)self loadsListAltTextAsynchronously]|| [(WFContentItem *)self loadsListSubtitleAsynchronously])
  {
    return 1;
  }

  return [(WFContentItem *)self loadsListThumbnailAsynchronously];
}

- (BOOL)getListSubtitle:(id)a3
{
  v4 = a3;
  v5 = [(WFContentItem *)self internalRepresentation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && (-[WFContentItem name](self, "name"), v7 = objc_claimAutoreleasedReturnValue(), -[WFContentItem internalName](self, "internalName"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqualToString:v8], v8, v7, (v9 & 1) == 0))
  {
    if (v4)
    {
      v11 = [(WFContentItem *)self internalName];
      v4[2](v4, v11);
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSString)richListTitle
{
  v2 = [(WFContentItem *)self name];
  v3 = [MEMORY[0x277D7A168] parseAnnotatedString:v2];
  v4 = [v3 displayString];

  return v4;
}

- (BOOL)isScreenTimeEntity
{
  v2 = NSClassFromString(&cfstr_Wflinkentityco_0.isa);
  if (v2)
  {
    LOBYTE(v2) = objc_opt_isKindOfClass();
  }

  return v2 & 1;
}

- (id)subItemForClass:(Class)a3
{
  v3 = [(WFContentItem *)self subItemsForClass:a3];
  v4 = [v3 firstObject];

  return v4;
}

- (id)subItemsForClass:(Class)a3
{
  v4 = [(WFContentItem *)self subItemsByClass];
  v5 = [v4 objectForKey:a3];

  return v5;
}

- (void)setSubItems:(id)a3 forClass:(Class)a4
{
  v8 = a3;
  v6 = [(WFContentItem *)self subItemsByClass];
  v7 = v6;
  if (v8)
  {
    [v6 setObject:v8 forKey:a4];
  }

  else
  {
    [v6 removeObjectForKey:a4];
  }
}

- (NSMutableDictionary)subItemsByClass
{
  subItemsByClass = self->_subItemsByClass;
  if (!subItemsByClass)
  {
    v4 = objc_opt_new();
    v5 = self->_subItemsByClass;
    self->_subItemsByClass = v4;

    subItemsByClass = self->_subItemsByClass;
  }

  return subItemsByClass;
}

- (id)objectForClass:(Class)a3
{
  v3 = [(WFContentItem *)self objectRepresentationForClass:a3];
  v4 = [v3 object];

  return v4;
}

- (id)objectsForClass:(Class)a3
{
  v3 = [(WFContentItem *)self objectRepresentationsForClass:a3];
  v4 = [v3 if_map:&__block_literal_global_415];

  return v4;
}

- (void)setObjectRepresentations:(id)a3 forClass:(Class)a4
{
  v6 = a3;
  v7 = [WFObjectType typeWithClass:a4];
  [(WFContentItem *)self setRepresentations:v6 forType:v7];
}

- (id)objectRepresentationForClass:(Class)a3
{
  v3 = [(WFContentItem *)self objectRepresentationsForClass:a3];
  v4 = [v3 firstObject];

  return v4;
}

- (id)objectRepresentationsForClass:(Class)a3
{
  v4 = [WFObjectType typeWithClass:a3];
  v5 = [(WFContentItem *)self representationsForType:v4];

  return v5;
}

- (id)fileRepresentationForType:(id)a3
{
  v3 = [(WFContentItem *)self fileRepresentationsForType:a3];
  v4 = [v3 firstObject];

  return v4;
}

- (id)fileRepresentationsForType:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(WFContentItem *)self representationsForType:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setRepresentations:(id)a3 forType:(id)a4
{
  v6 = a3;
  v10 = a4;
  if (v6 && ([objc_opt_class() filterRepresentationsForAllowedContent:v6], v7 = objc_claimAutoreleasedReturnValue(), v6, v7))
  {
    v8 = [(WFContentItem *)self representationsByType];
    [v8 setObject:v7 forKey:v10];
  }

  else
  {
    v9 = v10;
    if (!v10)
    {
      goto LABEL_7;
    }

    v7 = [(WFContentItem *)self representationsByType];
    [v7 removeObjectForKey:v10];
  }

  v9 = v10;
LABEL_7:
}

- (id)representationForType:(id)a3
{
  v3 = [(WFContentItem *)self representationsForType:a3];
  v4 = [v3 firstObject];

  return v4;
}

- (id)representationsForType:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(WFContentItem *)self representationsByType];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = *MEMORY[0x277CE1D48];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if (([v11 conformsToType:{v4, v16}] & 1) == 0)
        {
          if (![v4 isEqualToUTType:v9])
          {
            continue;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          v12 = [v11 fileExtension];
          v13 = [v12 length];

          if (!v13)
          {
            continue;
          }
        }

        v14 = [v5 objectForKey:v11];
        goto LABEL_14;
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (NSMutableDictionary)representationsByType
{
  representationsByType = self->_representationsByType;
  if (!representationsByType)
  {
    v4 = objc_opt_new();
    v5 = self->_representationsByType;
    self->_representationsByType = v4;

    representationsByType = self->_representationsByType;
  }

  return representationsByType;
}

- (WFContentItem)initWithRepresentationsByType:(id)a3 forType:(id)a4 subItemsByClass:(id)a5 attributionSet:(id)a6 includesDefaultAttributionSet:(BOOL)a7 cachingIdentifier:(id)a8
{
  v35[2] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v34.receiver = self;
  v34.super_class = WFContentItem;
  v19 = [(WFContentItem *)&v34 init];
  p_isa = &v19->super.isa;
  if (v19)
  {
    objc_storeStrong(&v19->_internalRepresentationType, a4);
    if (v18)
    {
      objc_storeStrong(p_isa + 1, a8);
    }

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __134__WFContentItem_initWithRepresentationsByType_forType_subItemsByClass_attributionSet_includesDefaultAttributionSet_cachingIdentifier___block_invoke;
    v32[3] = &unk_2783498E0;
    v21 = p_isa;
    v33 = v21;
    [v14 enumerateKeysAndObjectsUsingBlock:v32];
    v22 = [v21 representationForType:v15];
    if (!v22)
    {
      v29 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v23 = [v16 mutableCopy];
    v24 = v21[4];
    v21[4] = v23;

    if (v17)
    {
      if (a7)
      {
        v35[0] = v17;
        v25 = [v21 defaultSourceForRepresentation:v22];
        v35[1] = v25;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
        v27 = [WFContentAttributionSet attributionSetByMergingAttributionSets:v26];
        v28 = v21[2];
        v21[2] = v27;

LABEL_13:
        v29 = v21;
        goto LABEL_14;
      }

      v30 = v17;
    }

    else
    {
      v30 = [v21 defaultSourceForRepresentation:v22];
    }

    v25 = v21[2];
    v21[2] = v30;
    goto LABEL_13;
  }

  v29 = 0;
LABEL_15:

  return v29;
}

- (WFContentItem)initWithRepresentation:(id)a3 forType:(id)a4 attributionSet:(id)a5 includesDefaultAttributionSet:(BOOL)a6 cachingIdentifier:(id)a7
{
  v8 = a6;
  v26[1] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  if (!v13)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"WFContentItem.m" lineNumber:1506 description:{@"Invalid parameter not satisfying: %@", @"representation"}];
  }

  v17 = [(WFContentItem *)self init];
  if (v17)
  {
    v18 = v17;
    v24 = v13;
    v25 = v14;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    v26[0] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];

    v21 = [(WFContentItem *)v18 initWithRepresentationsByType:v20 forType:v14 subItemsByClass:0 attributionSet:v15 includesDefaultAttributionSet:v8 cachingIdentifier:v16];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = WFContentItem;
  v3 = [(WFContentItem *)&v7 description];
  v4 = [(WFContentItem *)self name];
  v5 = [v3 stringByAppendingFormat:@": %@", v4];

  return v5;
}

- (NSOrderedSet)allSupportedItemClasses
{
  v3 = objc_opt_class();
  v4 = [(WFContentItem *)self allSupportedTypes];
  v5 = WFSupportedItemClassesForItemClass(v3, v4);

  return v5;
}

- (NSOrderedSet)supportedItemClasses
{
  v3 = objc_opt_class();
  v4 = [(WFContentItem *)self supportedTypes];
  v5 = WFSupportedItemClassesForItemClass(v3, v4);

  return v5;
}

- (NSOrderedSet)allSupportedTypes
{
  v2 = self;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v7 = __WFCachedRecursivelySupportedTypes_block_invoke;
  v8 = &unk_278349850;
  v9 = v2;
  v3 = v2;
  v4 = objc_getAssociatedObject(v3, &WFCachedRecursivelySupportedTypes_cachedValue);
  if (!v4)
  {
    v4 = v7(v6);
    objc_setAssociatedObject(v3, &WFCachedRecursivelySupportedTypes_cachedValue, v4, 0x303);
  }

  return v4;
}

- (BOOL)canGenerateIntermediaryRepresentationForItemClass:(Class)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = [(WFContentItem *)self outputTypes];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [(objc_class *)a3 ownedTypes];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = v4;
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v19;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(v11);
              }

              if ([*(*(&v18 + 1) + 8 * j) conformsToType:v10])
              {

                v16 = 1;
                goto LABEL_19;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
      v16 = 0;
    }

    while (v7);
  }

  else
  {
    v16 = 0;
  }

LABEL_19:

  return v16;
}

- (BOOL)canGenerateRepresentationForType:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() coercionForType:v4];

  if (v5)
  {
    v6 = [v5 handler];
    v7 = [v6 coercionIsAvailableForItem:self];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (NSOrderedSet)supportedTypes
{
  v3 = [(WFContentItem *)self ownedTypes];
  v4 = [(WFContentItem *)self outputTypes];
  v5 = [v3 orderedSetByAddingObjectsFromOrderedSet:v4];

  return v5;
}

- (NSOrderedSet)outputTypes
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __28__WFContentItem_outputTypes__block_invoke;
  aBlock[3] = &unk_278349878;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  if ([(WFContentItem *)self cachesSupportedTypes])
  {
    v4 = self;
    v5 = v3;
    v6 = objc_getAssociatedObject(v4, &outputTypes_cachedValue);
    if (!v6)
    {
      v6 = v5[2](v5);
      objc_setAssociatedObject(v4, &outputTypes_cachedValue, v6, 0x303);
    }
  }

  else
  {
    v6 = v3[2](v3);
  }

  return v6;
}

id __28__WFContentItem_outputTypes__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() outputTypes];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [*(a1 + 32) name];
  if (v4 && ([*(a1 + 32) hasStringOutput] & 1) == 0)
  {
    v5 = [objc_opt_class() supportedTypeMustBeDeterminedByInstance:v3];

    if (v5)
    {
      goto LABEL_6;
    }

    [v2 orderedSetByAddingObject:v3];
    v2 = v4 = v2;
  }

LABEL_6:
  v6 = [v2 mutableCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v2;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (([*(a1 + 32) canGenerateRepresentationForType:{v12, v15}] & 1) == 0)
        {
          [v6 removeObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [v6 copy];

  return v13;
}

- (NSOrderedSet)ownedTypes
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v6 = __27__WFContentItem_ownedTypes__block_invoke;
  v7 = &unk_278349850;
  v8 = self;
  v2 = self;
  v3 = objc_getAssociatedObject(v2, &ownedTypes_cachedValue);
  if (!v3)
  {
    v3 = v6(v5);
    objc_setAssociatedObject(v2, &ownedTypes_cachedValue, v3, 0x303);
  }

  return v3;
}

id __27__WFContentItem_ownedTypes__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() ownedTypes];
  v3 = [v2 mutableCopy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([*(a1 + 32) canGenerateRepresentationForType:{v9, v12}] & 1) == 0)
        {
          [v3 removeObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (void)getPreferredFileSize:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__WFContentItem_getPreferredFileSize___block_invoke;
  v6[3] = &unk_278349F78;
  v7 = v4;
  v5 = v4;
  [(WFContentItem *)self getFileRepresentation:v6 forType:0];
}

uint64_t __38__WFContentItem_getPreferredFileSize___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 fileSize];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)getPreferredFileExtension:(id)a3
{
  v4 = a3;
  v5 = [(WFContentItem *)self internalRepresentationType];
  v8 = [(WFContentItem *)self fileRepresentationForType:v5];

  if (v8)
  {
    v6 = [v8 filename];
    [v6 pathExtension];
  }

  else
  {
    v6 = [(WFContentItem *)self preferredFileType];
    [v6 fileExtension];
  }
  v7 = ;
  v4[2](v4, v7);
}

- (WFContentItemChangeTransaction)changeTransaction
{
  v2 = [[WFContentItemChangeTransaction alloc] initWithContentItem:self];

  return v2;
}

- (NSUUID)cachingIdentifier
{
  cachingIdentifier = self->_cachingIdentifier;
  if (!cachingIdentifier)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAD78]);
    v5 = self->_cachingIdentifier;
    self->_cachingIdentifier = v4;

    cachingIdentifier = self->_cachingIdentifier;
  }

  return cachingIdentifier;
}

- (id)defaultSourceForRepresentation:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[WFContentLocation genericLocation];
  v6 = [(WFContentItem *)self cachingIdentifier];
  v7 = [WFContentAttributionSet attributionSetWithOrigin:v5 disclosureLevel:0 originalItemIdentifier:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v4;
    v9 = [v8 originalURL];

    if (v9)
    {
      v15[0] = v7;
      v10 = [v8 originalURL];
      v11 = [WFURLContentItem attributionSetContentOfURL:v10];
      v15[1] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
      v13 = [WFContentAttributionSet attributionSetByMergingAttributionSets:v12];

      v7 = v13;
    }
  }

  return v7;
}

- (WFImage)icon
{
  v2 = [(WFContentItem *)self preferredFileType];
  v3 = [v2 documentIcon];

  return v3;
}

- (WFFileType)preferredFileType
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self preferredTypeOfClass:v3];
}

- (WFObjectType)preferredObjectType
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self preferredTypeOfClass:v3];
}

- (id)preferredTypeOfClass:(Class)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = [(WFContentItem *)self internalRepresentationType];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = [(WFContentItem *)self supportedTypes];
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            v5 = v11;

            goto LABEL_22;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [(WFContentItem *)self allSupportedTypes];
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      while (2)
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v19 + 1) + 8 * j);
          if (objc_opt_isKindOfClass())
          {
            v5 = v17;

            goto LABEL_22;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
  }

LABEL_22:

  return v5;
}

- (NSDictionary)additionalRepresentationsForSerialization
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [(WFContentItem *)self internalRepresentation];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 object];
    v6 = +[WFSerializableContentProvider sharedProvider];
    v7 = [v6 serializedRepresentationForObject:v5];

    if (v7)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = [v7 allKeys];
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        do
        {
          v12 = 0;
          do
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v8);
            }

            if (([*(*(&v17 + 1) + 8 * v12) hasPrefix:@"link.contentkit."] & 1) == 0)
            {
              [MEMORY[0x277CCA890] currentHandler];
              v13 = v16 = a2;
              [v13 handleFailureInMethod:v16 object:self file:@"WFContentItem.m" lineNumber:1017 description:@"All serialized item keys must have the prefix link.contentkit."];

              a2 = v16;
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v10);
      }

      v14 = v7;
    }

    else
    {
      v14 = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    v14 = MEMORY[0x277CBEC10];
  }

  return v14;
}

- (NSDictionary)metadataForSerialization
{
  v3 = [(WFContentItem *)self additionalRepresentationsForSerialization];
  v4 = [v3 mutableCopy];

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@%@", @"link.contentkit.itemclass.", v7];

  [v4 setObject:v8 forKey:@"link.contentkit.itemclass.identifier"];
  v9 = [(WFContentItem *)self name];
  [v4 setObject:v9 forKey:@"link.contentkit.name"];

  v10 = [(WFContentItem *)self attributionSet];
  v11 = [v10 wfSerializedRepresentationWithPrivateItemIdentifiers];
  [v4 setObject:v11 forKey:@"link.contentkit.contentattributionset"];

  v12 = [(WFContentItem *)self cachingIdentifier];
  v13 = [v12 UUIDString];
  [v4 setObject:v13 forKey:@"link.contentkit.cachingidentifier"];

  return v4;
}

- (id)nativePasteboardTypeForObjectRepresentationOfClass:(Class)a3
{
  if (objc_opt_class() == a3)
  {
    v7 = MEMORY[0x277CE1E90];
LABEL_6:
    v6 = [*v7 identifier];
    goto LABEL_9;
  }

  if (objc_opt_class() == a3 || (+[WFObjectType typeWithClassName:frameworkName:location:](WFObjectType, "typeWithClassName:frameworkName:location:", @"UIImage", @"UIKit", 2), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isEqualToClass:a3], v4, v5))
  {
    v6 = *MEMORY[0x277D7A420];
    goto LABEL_9;
  }

  if (objc_opt_class() == a3)
  {
    v7 = MEMORY[0x277CE1EB0];
    goto LABEL_6;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (void)getFileRepresentationsForSerialization:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__WFContentItem_getFileRepresentationsForSerialization___block_invoke;
  v6[3] = &unk_278349F78;
  v7 = v4;
  v5 = v4;
  [(WFContentItem *)self getFileRepresentation:v6 forType:0];
}

void __56__WFContentItem_getFileRepresentationsForSerialization___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (a2)
  {
    v10[0] = a2;
    v5 = MEMORY[0x277CBEA60];
    v6 = a3;
    v7 = a2;
    v8 = [v5 arrayWithObjects:v10 count:1];
    (*(v3 + 16))(v3, v8, v6);
  }

  else
  {
    v9 = *(v3 + 16);
    v7 = a3;
    v9(v3, 0, v7);
    v8 = 0;
  }
}

- (void)getSerializedItem:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(WFContentItem *)self internalRepresentationType];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectClass];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [objc_opt_class() pasteboardValueClasses];
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          if ([v7 isSubclassOfClass:v13])
          {
            v14 = [(WFContentItem *)self objectForClass:v7];
            v15 = [(WFContentItem *)self nativePasteboardTypeForObjectRepresentationOfClass:v13];
            if (v15)
            {
              [v5 setObject:v14 forKey:v15];
            }

            goto LABEL_14;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  v16 = [(WFContentItem *)self metadataForSerialization];
  [v5 addEntriesFromDictionary:v16];

  if ([(WFContentItem *)self includesFileRepresentationInSerializedItem])
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __35__WFContentItem_getSerializedItem___block_invoke;
    v17[3] = &unk_27834A200;
    v19 = v4;
    v18 = v5;
    [(WFContentItem *)self getFileRepresentationsForSerialization:v17];
  }

  else
  {
    (*(v4 + 2))(v4, v5, 0);
  }
}

void __35__WFContentItem_getSerializedItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [v12 wfType];
          v14 = [v13 string];

          v15 = [*(a1 + 32) objectForKey:v14];

          if (v15)
          {
            (*(*(a1 + 40) + 16))();

            goto LABEL_16;
          }

          v16 = [v12 mappedData];
          if (v16)
          {
            [*(a1 + 32) setObject:v16 forKey:v14];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v17 = *(*(a1 + 40) + 16);
  }

  else
  {
    v17 = *(*(a1 + 40) + 16);
  }

  v17();
LABEL_16:
}

- (id)itemsByCoercingToItemClass:(Class)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(WFContentItem *)self subItemsForClass:a3];
  if (v9 && [(WFContentItem *)self coercionOptions:v8 allowCoercionsToItemClass:a3])
  {
    v10 = v9;
  }

  else
  {
    v10 = [(WFContentItem *)self generateSubItemsForItemClass:a3 options:v8 error:a5];
  }

  v11 = v10;

  return v11;
}

- (void)forceCoerceToItemClasses:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = [(WFContentItem *)self subItemsForClass:v16];
        if (v17 && [(WFContentItem *)self coercionOptions:v9 allowCoercionsToItemClass:v16])
        {
          v10[2](v10, v17, 0);

          v18 = v11;
          goto LABEL_12;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __68__WFContentItem_forceCoerceToItemClasses_options_completionHandler___block_invoke;
  v19[3] = &unk_27834A430;
  v20 = v10;
  [(WFContentItem *)self generateSubItemsForItemClasses:v11 options:v9 completionHandler:v19];
  v18 = v20;
LABEL_12:
}

- (void)coerceToItemClasses:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    while (2)
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        if ([objc_opt_class() isSubclassOfClass:{v16, v18}] && -[WFContentItem coercionOptions:allowCoercionsToItemClass:](self, "coercionOptions:allowCoercionsToItemClass:", v9, v16))
        {
          v22 = self;
          v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
          v10[2](v10, v17, 0);

          goto LABEL_12;
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  [(WFContentItem *)self forceCoerceToItemClasses:v11 options:v9 completionHandler:v10];
LABEL_12:
}

- (BOOL)coercionOptions:(id)a3 allowCoercionsToItemClass:(Class)a4
{
  v5 = MEMORY[0x277CBEB70];
  v6 = a3;
  v7 = [v5 orderedSetWithObjects:{objc_opt_class(), a4, 0}];
  v8 = [v6 coercionPathIsDisallowed:v7];

  return v8 ^ 1;
}

- (BOOL)coercionOptions:(id)a3 allowCoercionsToType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[WFContentItemRegistry sharedRegistry];
  v9 = [v8 contentItemClassForType:v7];

  if (v9)
  {
    v10 = [(WFContentItem *)self coercionOptions:v6 allowCoercionsToItemClass:v9];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)canPerformCoercion:(id)a3
{
  v4 = a3;
  if ([v4 requestType] == 2)
  {
    v5 = [v4 contentItemClasses];
    v6 = [v4 options];

    [WFContentCoercionSearch searchForCoercingItem:self toItemClasses:v5 options:v6];
  }

  else
  {
    v5 = [(WFContentItem *)self typeForCoercionRequest:v4];
    v6 = [v4 options];

    [WFContentCoercionSearch searchForCoercingItem:self toType:v5 options:v6];
  }
  v7 = ;
  v8 = [v7 nextPathNode];

  return v8 != 0;
}

- (void)performCoercion:(id)a3
{
  v4 = a3;
  v5 = [v4 requestType];
  switch(v5)
  {
    case 0:
      v12 = [(WFContentItem *)self typeForCoercionRequest:v4];
      v13 = [v4 options];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __33__WFContentItem_performCoercion___block_invoke_2;
      v14[3] = &unk_2783496F0;
      v15 = v4;
      [(WFContentItem *)self getRepresentationsForType:v12 options:v13 completionHandler:v14];

      v8 = v15;
      goto LABEL_7;
    case 1:
      v9 = [(WFContentItem *)self typeForCoercionRequest:v4];
      v10 = [v4 options];
      v11 = [v4 fileRepresentationResultHandler];
      [(WFContentItem *)self getRepresentationsForType:v9 options:v10 completionHandler:v11];

      break;
    case 2:
      v6 = [v4 contentItemClasses];
      v7 = [v4 options];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __33__WFContentItem_performCoercion___block_invoke;
      v16[3] = &unk_2783496C8;
      v17 = v4;
      v18 = self;
      [(WFContentItem *)self coerceToItemClasses:v6 options:v7 completionHandler:v16];

      v8 = v17;
LABEL_7:

      break;
  }
}

void __33__WFContentItem_performCoercion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectRepresentationResultHandler];
  v8 = MEMORY[0x277CBEB18];
  v9 = v5;
  v10 = v6;
  v11 = [[v8 alloc] initWithCapacity:{objc_msgSend(v9, "count")}];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __WFInvokeObjectRepresentationsResultHandlerWithRepresentations_block_invoke;
  v14[3] = &unk_278349928;
  v15 = v11;
  v12 = v11;
  v13 = [v9 if_compactMap:v14];

  (v7)[2](v7, v13, v12, v10);
}

- (id)typeForCoercionRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 requestType];
  v6 = v5;
  if (v5)
  {
    if (v5 == 2)
    {
      v9 = 0;
      goto LABEL_21;
    }

    if (v5 == 1)
    {
      v7 = [v4 fileType];

      if (v7)
      {
        v8 = [v4 fileType];
LABEL_9:
        v9 = v8;
        goto LABEL_21;
      }
    }
  }

  else if ([v4 objectClass])
  {
    v8 = +[WFObjectType typeWithClass:](WFObjectType, "typeWithClass:", [v4 objectClass]);
    goto LABEL_9;
  }

  v10 = [v4 options];
  v11 = [v10 preferredTypes];

  if (v11)
  {
    v12 = [(WFContentItem *)self supportedTypes];
    v13 = [v12 mutableCopy];

    v14 = [objc_alloc(MEMORY[0x277CBEB70]) initWithArray:v11];
    [v13 intersectOrderedSet:v14];
    if ([v13 count])
    {
      v9 = [v13 firstObject];

      goto LABEL_20;
    }
  }

  if (v6)
  {
    if (v6 != 1)
    {
      v9 = 0;
      goto LABEL_20;
    }

    v15 = [(WFContentItem *)self preferredFileType];
  }

  else
  {
    v15 = [(WFContentItem *)self preferredObjectType];
  }

  v9 = v15;
LABEL_20:

LABEL_21:

  return v9;
}

- (id)contentItemByMergingAttributionSet:(id)a3
{
  v27[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(WFContentAttributionSet *)self->_attributionSet isSupersetOfAttributionSet:v4])
  {
    v5 = self;
  }

  else
  {
    v27[0] = self->_attributionSet;
    v27[1] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v7 = [WFContentAttributionSet attributionSetByMergingAttributionSets:v6];

    objc_opt_class();
    v5 = objc_opt_new();
    if (v5)
    {
      v8 = [(WFContentItem *)self internalRepresentationType];
      internalRepresentationType = v5->_internalRepresentationType;
      v5->_internalRepresentationType = v8;

      v10 = [(WFContentItem *)self representationsByType];
      v11 = [v10 mutableCopy];
      representationsByType = v5->_representationsByType;
      v5->_representationsByType = v11;

      v13 = [(WFContentItem *)self subItemsByClass];
      v14 = [v13 mutableCopy];
      subItemsByClass = v5->_subItemsByClass;
      v5->_subItemsByClass = v14;

      objc_storeStrong(&v5->_attributionSet, v7);
      v16 = [(WFContentItem *)self cachingIdentifier];
      cachingIdentifier = v5->_cachingIdentifier;
      v5->_cachingIdentifier = v16;

      [(WFContentItem *)self copyStateToItem:v5];
      v18 = v5;
    }

    else
    {
      v19 = getWFContentGraphLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v23 = 136315394;
        v24 = "[WFContentItem contentItemByMergingAttributionSet:]";
        v25 = 2112;
        v26 = v21;
        _os_log_impl(&dword_21E1BD000, v19, OS_LOG_TYPE_FAULT, "%s Failed to create content item object of type %@", &v23, 0x16u);
      }
    }
  }

  return v5;
}

- (id)generateSubItemsForItemClass:(Class)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(WFContentItem *)self supportedItemClasses];
  v10 = [v9 containsObject:a3];

  if (v10)
  {
    v11 = [(WFContentItem *)self generateFirstLevelSubItemsForItemClass:a3 options:v8 error:a5];
  }

  else
  {
    v12 = [(WFContentItem *)self allSupportedItemClasses];
    v13 = [v12 containsObject:a3];

    if (v13)
    {
      v14 = [WFContentCoercionSearch searchForCoercingItem:self toItemClass:a3 options:v8];
      v11 = [v14 runCoercionSynchronouslyWithError:a5];
      if ([v11 count])
      {
        v15 = [v8 itemClassPrioritizationType];

        if (!v15)
        {
          [(WFContentItem *)self setSubItems:v11 forClass:a3];
        }
      }
    }

    else if (a5)
    {
      [objc_opt_class() badCoercionErrorForItemClass:a3];
      *a5 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)generateSubItemsForItemClasses:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__252;
  v35[4] = __Block_byref_object_dispose__253;
  v36 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__252;
  v33[4] = __Block_byref_object_dispose__253;
  v34 = 0;
  v11 = [v9 itemClassPrioritizationType];
  v12 = [v11 isEqualToString:@"SupportedTypes"];

  if (v12)
  {
    v13 = [(WFContentItem *)self supportedItemClasses];
    v14 = [v13 array];

    v15 = v8;
  }

  else
  {
    v14 = v8;
    v16 = [(WFContentItem *)self supportedItemClasses];
    v15 = [v16 array];
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __74__WFContentItem_generateSubItemsForItemClasses_options_completionHandler___block_invoke;
  v27[3] = &unk_278349678;
  v17 = v15;
  v28 = v17;
  v29 = self;
  v30 = v9;
  v31 = v33;
  v32 = v35;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __74__WFContentItem_generateSubItemsForItemClasses_options_completionHandler___block_invoke_3;
  v21[3] = &unk_2783496A0;
  v25 = v33;
  v26 = v35;
  v18 = v10;
  v24 = v18;
  v21[4] = self;
  v19 = v8;
  v22 = v19;
  v20 = v30;
  v23 = v20;
  [v14 if_enumerateAsynchronouslyInSequence:v27 completionHandler:v21];

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(v35, 8);
}

void __74__WFContentItem_generateSubItemsForItemClasses_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = a4;
  if ([*(a1 + 32) containsObject:a2])
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__WFContentItem_generateSubItemsForItemClasses_options_completionHandler___block_invoke_2;
    v11[3] = &unk_278349650;
    v13 = *(a1 + 56);
    v14 = a5;
    v12 = v8;
    [v9 generateFirstLevelSubItemsForItemClass:a2 options:v10 completionHandler:v11];
  }

  else
  {
    (*(v8 + 2))(v8, 0);
  }
}

void __74__WFContentItem_generateSubItemsForItemClasses_options_completionHandler___block_invoke_3(uint64_t a1)
{
  if (*(*(*(a1 + 64) + 8) + 40) | *(*(*(a1 + 72) + 8) + 40))
  {
    v8 = *(*(a1 + 56) + 16);

    v8();
  }

  else
  {
    v2 = [WFContentCoercionSearch searchForCoercingItem:*(a1 + 32) toItemClasses:*(a1 + 40) options:*(a1 + 48)];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__WFContentItem_generateSubItemsForItemClasses_options_completionHandler___block_invoke_4;
    v10[3] = &unk_27834A480;
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    v9 = *(a1 + 32);
    v5 = *(a1 + 56);
    *&v6 = v9;
    *(&v6 + 1) = v5;
    *&v7 = v3;
    *(&v7 + 1) = v4;
    v11 = v7;
    v12 = v6;
    [v2 runCoercion:v10];
  }
}

void __74__WFContentItem_generateSubItemsForItemClasses_options_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 firstObject];
  v8 = objc_opt_class();

  if (v8)
  {
    v9 = [*(a1 + 32) itemClassPrioritizationType];

    if (!v9)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v10 = *(a1 + 40);
      v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v17;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v16 + 1) + 8 * i);
            if ([v8 isSubclassOfClass:{v15, v16}])
            {
              [*(a1 + 48) setSubItems:v5 forClass:v15];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v12);
      }
    }
  }

  (*(*(a1 + 56) + 16))();
}

void __74__WFContentItem_generateSubItemsForItemClasses_options_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  **(a1 + 56) = [v12 count] != 0;
  (*(*(a1 + 32) + 16))();
}

- (id)generateFirstLevelSubItemsForItemClass:(Class)a3 options:(id)a4 error:(id *)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v29 = a3;
  [(WFContentItem *)self intermediaryTypesForCoercionToItemClass:a3];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = v39 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    obj = v9;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        v15 = [(WFContentItem *)self getRepresentationsForType:v14 options:v8 error:a5];
        if (v15)
        {
          v18 = v15;
          v30 = v8;
          v17 = objc_opt_new();
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v19 = v18;
          v20 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v33;
            do
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v33 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v32 + 1) + 8 * j);
                v25 = [(WFContentItem *)self attributionSet];
                v26 = [WFContentItem itemWithRepresentation:v24 attributionSet:v25];

                if (v26)
                {
                  [v17 addObject:v26];
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
            }

            while (v21);
          }

          v8 = v30;
          v27 = [v30 itemClassPrioritizationType];

          if (!v27)
          {
            [(WFContentItem *)self setSubItems:v17 forClass:v29];
          }

          v9 = obj;
          goto LABEL_25;
        }

        v16 = getWFContentGraphLogObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v42 = "[WFContentItem generateFirstLevelSubItemsForItemClass:options:error:]";
          v43 = 2112;
          v44 = v14;
          _os_log_impl(&dword_21E1BD000, v16, OS_LOG_TYPE_ERROR, "%s Failed to create intermediary representations for type %@", buf, 0x16u);
        }
      }

      v9 = obj;
      v11 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if (a5)
  {
    [objc_opt_class() badCoercionErrorForItemClass:v29];
    *a5 = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_25:

  return v17;
}

- (void)generateFirstLevelSubItemsForItemClass:(Class)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([(WFContentItem *)self coercionOptions:v8 allowCoercionsToItemClass:a3])
  {
    v10 = [(WFContentItem *)self intermediaryTypesForCoercionToItemClass:a3];
    v11 = [v10 objectEnumerator];
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v12 = MEMORY[0x277D85CD0];
      v13 = MEMORY[0x277D85CD0];
    }

    else
    {
      v12 = dispatch_get_global_queue(0, 0);
    }

    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__22805;
    v30 = __Block_byref_object_dispose__22806;
    v31 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __82__WFContentItem_generateFirstLevelSubItemsForItemClass_options_completionHandler___block_invoke;
    aBlock[3] = &unk_278349620;
    v14 = v11;
    v19 = v14;
    v23 = v9;
    v24 = &v26;
    v20 = self;
    v25 = a3;
    v21 = v8;
    v15 = v12;
    v22 = v15;
    v16 = _Block_copy(aBlock);
    v17 = v27[5];
    v27[5] = v16;

    (*(v27[5] + 16))();
    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v10 = [objc_opt_class() badCoercionErrorForItemClass:a3];
    (*(v9 + 2))(v9, 0, v10);
  }
}

void __82__WFContentItem_generateFirstLevelSubItemsForItemClass_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) nextObject];
  if (v4)
  {
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __82__WFContentItem_generateFirstLevelSubItemsForItemClass_options_completionHandler___block_invoke_2;
    v16[3] = &unk_2783495F8;
    v20 = *(a1 + 72);
    v17 = v3;
    v15 = *(a1 + 40);
    v7 = *(&v15 + 1);
    v21 = *(a1 + 80);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    *&v10 = v8;
    *(&v10 + 1) = v9;
    v18 = v15;
    v19 = v10;
    [v6 getRepresentationsForType:v4 options:v5 completionHandler:v16];
  }

  else
  {
    v11 = *(a1 + 64);
    if (v3)
    {
      (*(v11 + 16))(*(a1 + 64), 0, v3);
    }

    else
    {
      v12 = [objc_opt_class() badCoercionErrorForItemClass:*(a1 + 80)];
      (*(v11 + 16))(v11, 0, v12);
    }

    v13 = *(*(a1 + 72) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;
  }
}

void __82__WFContentItem_generateFirstLevelSubItemsForItemClass_options_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v24 = v6;
    v8 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v25 = v5;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v31;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v30 + 1) + 8 * i);
          v15 = [*(a1 + 40) attributionSet];
          v16 = [WFContentItem itemWithRepresentation:v14 attributionSet:v15 includesDefaultAttributionSet:1];

          if (v16)
          {
            [v8 addObject:v16];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v11);
    }

    v17 = [*(a1 + 48) itemClassPrioritizationType];

    if (!v17)
    {
      [*(a1 + 40) setSubItems:v8 forClass:*(a1 + 80)];
    }

    v18 = *(*(a1 + 72) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = 0;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__WFContentItem_generateFirstLevelSubItemsForItemClass_options_completionHandler___block_invoke_3;
    block[3] = &unk_278349EF0;
    v20 = *(a1 + 56);
    v29 = *(a1 + 64);
    v27 = v8;
    v7 = v24;
    v28 = v24;
    v21 = v8;
    dispatch_async(v20, block);

    v5 = v25;
  }

  else
  {
    v23 = v6;
    if (!v6)
    {
      v23 = *(a1 + 32);
    }

    v22 = *(*(*(a1 + 72) + 8) + 40);
    (*(v22 + 16))(v22, v23);
  }
}

- (id)intermediaryTypesForCoercionToItemClass:(Class)a3
{
  v4 = [(objc_class *)a3 ownedTypes];
  v5 = [(WFContentItem *)self outputTypes];
  v6 = MEMORY[0x277CCAC30];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__WFContentItem_intermediaryTypesForCoercionToItemClass___block_invoke;
  v11[3] = &unk_2783495D0;
  v12 = v4;
  v7 = v4;
  v8 = [v6 predicateWithBlock:v11];
  v9 = [v5 filteredOrderedSetUsingPredicate:v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFContentItem *)self internalRepresentation];
  v6 = [v5 isEncodable];
  v7 = [v4 wfFileCoder];

  v8 = [(WFContentItem *)self alwaysEncodeUsingWFSerializableContent];
  v9 = objc_opt_class();
  v10 = [v4 wfFileCoder];
  v11 = [v9 isAvailableOnPlatform:{objc_msgSend(v10, "targetPlatform")}];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v6 && !v8 && ((v7 == 0) | v11 & 1 | isKindOfClass & 1) != 0)
  {
    if (!v7)
    {
      v15 = getWFContentGraphLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        v18 = 136315138;
        v19 = "[WFContentItem encodeWithCoder:]";
        _os_log_impl(&dword_21E1BD000, v15, OS_LOG_TYPE_FAULT, "%s WFContentItem representation is being encoded without using a WFFileCoder. This could result in a significant spike in memory usage, and is not recommended.", &v18, 0xCu);
      }
    }

    [v4 encodeObject:v5 forKey:@"internalRepresentation"];
    v13 = [(WFContentItem *)self internalRepresentationType];
    v14 = @"internalRepresentationType";
  }

  else
  {
    v13 = [(WFContentItem *)self metadataForSerialization];
    v14 = @"serializationMetadata";
  }

  [v4 encodeObject:v13 forKey:v14];

  v16 = [(WFContentItem *)self attributionSet];
  [v4 encodeObject:v16 forKey:@"attributionSet"];

  v17 = [(WFContentItem *)self cachingIdentifier];
  [v4 encodeObject:v17 forKey:@"cachingIdentifier"];
}

- (WFContentItem)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"attributionSet"])
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attributionSet"];
  }

  else
  {
    v5 = 0;
  }

  if ([v4 containsValueForKey:@"cachingIdentifier"])
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cachingIdentifier"];
  }

  else
  {
    v6 = 0;
  }

  if ([v4 containsValueForKey:@"internalRepresentation"])
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"internalRepresentationType"];
    v8 = [MEMORY[0x277CBEB58] setWithObject:objc_opt_class()];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 addObject:{objc_msgSend(v7, "objectClass")}];
      v9 = [(WFContentItem *)self allowedClassesForDecodingInternalRepresentations];
      v10 = [v9 count];

      if (v10)
      {
        v11 = [(WFContentItem *)self allowedClassesForDecodingInternalRepresentations];
        [v8 addObjectsFromArray:v11];
      }
    }

    v12 = [v4 decodeObjectOfClasses:v8 forKey:@"internalRepresentation"];
    v13 = [(WFContentItem *)self initWithRepresentation:v12 forType:v7 attributionSet:v5 cachingIdentifier:v6];
    self = v13;
  }

  else
  {
    if (![v4 containsValueForKey:@"serializationMetadata"])
    {
      v13 = 0;
      goto LABEL_16;
    }

    v14 = MEMORY[0x277CBEB98];
    v15 = [objc_opt_class() pasteboardValueClasses];
    v16 = [v14 setWithArray:v15];
    v7 = [v4 decodeObjectOfClasses:v16 forKey:@"serializationMetadata"];

    v8 = [v7 objectForKey:@"link.contentkit.name"];
    v17 = [v7 objectForKey:@"link.contentkit.contentattributionset"];
    v12 = [WFContentAttributionSet objectWithWFSerializedRepresentation:v17];

    v18 = [v7 objectForKey:@"link.contentkit.cachingidentifier"];
    v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v18];
    v13 = [objc_opt_class() itemWithSerializedItem:v7 forType:0 named:v8 attributionSet:v12 cachingIdentifier:v19];
  }

LABEL_16:
  return v13;
}

- (id)copyWithName:(id)a3 zone:(_NSZone *)a4
{
  v6 = a3;
  v7 = [(WFContentItem *)self internalRepresentationForCopyingWithName:v6];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 copyWithName:v6 zone:a4];
  }

  else
  {
    v10 = [(WFContentItem *)self name];
    v9 = [v8 copyWithName:v10 zone:a4];
  }

  v11 = [(WFContentItem *)self classForCopying];
  v12 = [(WFContentItem *)self attributionSet];
  v13 = [(WFContentItem *)self cachingIdentifier];
  v14 = [(objc_class *)v11 itemWithRepresentation:v9 attributionSet:v12 cachingIdentifier:v13];

  [(WFContentItem *)self copyStateToItem:v14];
  return v14;
}

- (id)internalRepresentationForCopyingWithName:(id)a3
{
  v4 = a3;
  v5 = [(WFContentItem *)self internalRepresentation];
  if (v4)
  {
    v6 = [MEMORY[0x277D79F68] typeFromFilename:v4];
    v7 = [v6 isDeclared];

    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = [(WFContentItem *)self preferredFileType];
        v9 = +[WFCoercionOptions new];
        v10 = [(WFContentItem *)self getRepresentationsForType:v8 options:v9 error:0];
        v11 = [v10 firstObject];

        if (v11)
        {
          v12 = v11;

          v5 = v12;
        }
      }
    }
  }

  v13 = v5;

  return v5;
}

- (BOOL)hasStringOutput
{
  v2 = objc_opt_class();

  return [v2 hasStringOutput];
}

- (NSString)internalName
{
  v3 = [(WFContentItem *)self internalRepresentation];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 object];
    v5 = [v4 wfName];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [(WFContentItem *)self name];
    }

    v8 = v7;
  }

  else
  {
    v8 = [(WFContentItem *)self name];
  }

  return v8;
}

- (void)getTitleWithPermissionRequestor:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(WFContentItem *)self name];
  (*(a4 + 2))(v6, v7);
}

- (NSString)name
{
  v2 = [(WFContentItem *)self internalRepresentation];
  v3 = [v2 wfName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [objc_opt_class() localizedTypeDescription];
  }

  v6 = v5;

  return v6;
}

- (WFRepresentation)internalRepresentation
{
  v3 = [(WFContentItem *)self internalRepresentationType];
  v4 = [(WFContentItem *)self representationForType:v3];

  return v4;
}

- (id)generateObjectRepresentationsForClass:(Class)a3 options:(id)a4 error:(id *)a5
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = [(WFContentItem *)self generateObjectRepresentationForClass:a3 options:a4 error:a5];
  v6 = v5;
  if (v5)
  {
    v9[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)generateFileRepresentationsForType:(id)a3 options:(id)a4 error:(id *)a5
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = [(WFContentItem *)self generateFileRepresentationForType:a3 options:a4 error:a5];
  v6 = v5;
  if (v5)
  {
    v9[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)generateRepresentationsForType:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [objc_opt_class() coercionForCoercingToType:v8 concurrencyMode:0];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 handler];
    v13 = [v12 performSynchronousCoercionWithContentItem:self forType:v8 options:v9 error:a5];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[WFContentItem generateObjectRepresentationsForClass:options:error:](self, "generateObjectRepresentationsForClass:options:error:", [v8 objectClass], v9, a5);
    }

    else
    {
      [(WFContentItem *)self generateFileRepresentationsForType:v8 options:v9 error:a5];
    }
    v13 = ;
  }

  return v13;
}

- (void)generateObjectRepresentation:(id)a3 options:(id)a4 forClass:(Class)a5
{
  v7 = a3;
  v8 = [objc_opt_class() badCoercionErrorForObjectClass:a5];
  (*(a3 + 2))(v7, 0, 0, v8);
}

- (void)generateFileRepresentation:(id)a3 options:(id)a4 forType:(id)a5
{
  v6 = a5;
  v7 = a3;
  v8 = [objc_opt_class() badCoercionErrorForType:v6];

  (*(a3 + 2))(v7, 0, v8);
}

- (void)generateObjectRepresentations:(id)a3 options:(id)a4 forClass:(Class)a5
{
  v8 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__WFContentItem_generateObjectRepresentations_options_forClass___block_invoke;
  v10[3] = &unk_2783495A8;
  v11 = v8;
  v9 = v8;
  [(WFContentItem *)self generateObjectRepresentation:v10 options:a4 forClass:a5];
}

void __64__WFContentItem_generateObjectRepresentations_options_forClass___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (a2)
  {
    v8 = [WFObjectRepresentation object:a2 named:a3];
    v10[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  else
  {
    v9 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)generateFileRepresentations:(id)a3 options:(id)a4 forType:(id)a5
{
  v8 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__WFContentItem_generateFileRepresentations_options_forType___block_invoke;
  v10[3] = &unk_278349F78;
  v11 = v8;
  v9 = v8;
  [(WFContentItem *)self generateFileRepresentation:v10 options:a4 forType:a5];
}

void __61__WFContentItem_generateFileRepresentations_options_forType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (a2)
  {
    v10[0] = a2;
    v5 = MEMORY[0x277CBEA60];
    v6 = a3;
    v7 = a2;
    v8 = [v5 arrayWithObjects:v10 count:1];
    (*(v3 + 16))(v3, v8, v6);
  }

  else
  {
    v9 = *(v3 + 16);
    v7 = a3;
    v9(v3, 0, v7);
    v8 = 0;
  }
}

- (void)generateRepresentationsForType:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [objc_opt_class() coercionForCoercingToType:v13 concurrencyMode:1];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 handler];
    [v12 performAsynchronousCoercionWithContentItem:self forType:v13 options:v8 completionHandler:v9];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[WFContentItem generateObjectRepresentations:options:forClass:](self, "generateObjectRepresentations:options:forClass:", v9, v8, [v13 objectClass]);
    }

    else
    {
      [(WFContentItem *)self generateFileRepresentations:v9 options:v8 forType:v13];
    }
  }
}

- (id)getRepresentationsForType:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[WFCoercionOptions new];
  v8 = [(WFContentItem *)self getRepresentationsForType:v6 options:v7 error:a4];

  return v8;
}

- (id)getRepresentationsForType:(id)a3 options:(id)a4 error:(id *)a5
{
  v22[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([(WFContentItem *)self coercionOptions:v9 allowCoercionsToType:v8])
  {
    v21 = 0;
    v10 = [(WFContentItem *)self _getRepresentationsForType:v8 options:v9 error:&v21];
    v11 = v21;
    if (v10)
    {
      v12 = v10;
LABEL_15:

      goto LABEL_17;
    }

    if ([v8 isEqualToClass:objc_opt_class()] && (!v11 || objc_msgSend(objc_opt_class(), "errorIsBadCoercionError:", v11)))
    {
      v13 = [(WFContentItem *)self internalName];
      if (v13 && ![(WFContentItem *)self hasStringOutput])
      {
        v16 = [v9 dictionary];
        v17 = [v16 objectForKeyedSubscript:@"WFCoercionOptionDisallowFallbackStringCoercionFromName"];
        v18 = [v17 BOOLValue];

        if ((v18 & 1) == 0)
        {
          v19 = [(WFContentItem *)self internalName];
          v20 = [WFObjectRepresentation object:v19];
          v22[0] = v20;
          v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];

          goto LABEL_15;
        }
      }

      else
      {
      }
    }

    v12 = 0;
    if (a5 && v11)
    {
      v14 = v11;
      v12 = 0;
      *a5 = v11;
    }

    goto LABEL_15;
  }

  if (a5)
  {
    [objc_opt_class() badCoercionErrorForType:v8];
    *a5 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_17:

  return v12;
}

- (id)_getRepresentationsForType:(id)a3 options:(id)a4 error:(id *)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(WFContentItem *)self representationsForType:v8];
  if (!v10)
  {
    if ([(WFContentItem *)self canGenerateRepresentationForType:v8])
    {
      v11 = getWFContentGraphLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v8 typeDescription];
        v13 = v12;
        if (!v12)
        {
          v13 = [v8 string];
        }

        v18 = 136315650;
        v19 = "[WFContentItem _getRepresentationsForType:options:error:]";
        v20 = 2114;
        v21 = v13;
        v22 = 2112;
        v23 = self;
        _os_log_impl(&dword_21E1BD000, v11, OS_LOG_TYPE_INFO, "%s Generating %{public}@ representation from %@", &v18, 0x20u);
        if (!v12)
        {
        }
      }

      v10 = [(WFContentItem *)self generateRepresentationsForType:v8 options:v9 error:a5];
      if ([v10 count])
      {
        v14 = [v9 itemClassPrioritizationType];

        if (!v14)
        {
          v15 = [v10 firstObject];
          v16 = [v15 wfType];
          [(WFContentItem *)self setRepresentations:v10 forType:v16];
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)getRepresentationsForType:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(WFContentItem *)self coercionOptions:v9 allowCoercionsToType:v8])
  {
    v30 = 0;
    v11 = [(WFContentItem *)self _getRepresentationsForType:v8 options:v9 error:&v30];
    v12 = v30;
    if (v11 | v12)
    {
      v10[2](v10, v11, v12);
    }

    else
    {
      v14 = [(WFContentItem *)self supportedTypes];
      v15 = WFAnyInTypesConformsToType(v14, v8);

      if (v15)
      {
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __69__WFContentItem_getRepresentationsForType_options_completionHandler___block_invoke;
        v25[3] = &unk_27834A480;
        v26 = v9;
        v27 = self;
        v28 = v8;
        v29 = v10;
        [(WFContentItem *)self generateRepresentationsForType:v28 options:v26 completionHandler:v25];
      }

      else
      {
        v16 = [(WFContentItem *)self allSupportedTypes];
        v17 = WFAnyInTypesConformsToType(v16, v8);

        if (v17)
        {
          v18 = [WFContentCoercionSearch searchForCoercingItem:self toType:v8 options:v9];
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __69__WFContentItem_getRepresentationsForType_options_completionHandler___block_invoke_2;
          v20[3] = &unk_27834A480;
          v24 = v10;
          v21 = v8;
          v22 = v9;
          v23 = self;
          [v18 runCoercion:v20];
        }

        else
        {
          v19 = [objc_opt_class() badCoercionErrorForType:v8];
          v10[2](v10, 0, v19);
        }
      }
    }
  }

  else
  {
    v13 = [objc_opt_class() badCoercionErrorForType:v8];
    v10[2](v10, 0, v13);
  }
}

void __69__WFContentItem_getRepresentationsForType_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = [*(a1 + 32) itemClassPrioritizationType];

    if (!v7)
    {
      [*(a1 + 40) setRepresentations:v5 forType:*(a1 + 48)];
    }
  }

  v8 = [*(a1 + 48) isEqualToClass:objc_opt_class()];
  if (!v5 && v8 && (!v6 || [objc_opt_class() errorIsBadCoercionError:v6]))
  {
    v9 = [*(a1 + 40) internalName];
    if (v9 && ![*(a1 + 40) hasStringOutput])
    {
      v10 = [*(a1 + 32) dictionary];
      v11 = [v10 objectForKeyedSubscript:@"WFCoercionOptionDisallowFallbackStringCoercionFromName"];
      v12 = [v11 BOOLValue];

      if ((v12 & 1) == 0)
      {
        v13 = *(a1 + 56);
        v14 = [*(a1 + 40) internalName];
        v15 = [WFObjectRepresentation object:v14];
        v17[0] = v15;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
        (*(v13 + 16))(v13, v16, 0);

        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  (*(*(a1 + 56) + 16))();
LABEL_12:
}

void __69__WFContentItem_getRepresentationsForType_options_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v9 = *(*(a1 + 56) + 16);

    v9();
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__WFContentItem_getRepresentationsForType_options_completionHandler___block_invoke_3;
    v14[3] = &unk_278349580;
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__WFContentItem_getRepresentationsForType_options_completionHandler___block_invoke_5;
    v11[3] = &unk_27834A480;
    *&v5 = *(a1 + 40);
    *(&v5 + 1) = *(a1 + 48);
    v10 = v5;
    v6 = *(a1 + 32);
    v7 = *(a1 + 56);
    *&v8 = v6;
    *(&v8 + 1) = v7;
    v12 = v10;
    v13 = v8;
    [a2 if_flatMapAsynchronously:v14 completionHandler:v11];
  }
}

void __69__WFContentItem_getRepresentationsForType_options_completionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__WFContentItem_getRepresentationsForType_options_completionHandler___block_invoke_4;
  v10[3] = &unk_27834A430;
  v11 = v6;
  v9 = v6;
  [a2 getRepresentationsForType:v8 options:v7 completionHandler:v10];
}

void __69__WFContentItem_getRepresentationsForType_options_completionHandler___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v7 count])
  {
    v6 = [*(a1 + 32) itemClassPrioritizationType];

    if (!v6)
    {
      [*(a1 + 40) setRepresentations:v7 forType:*(a1 + 48)];
    }
  }

  (*(*(a1 + 56) + 16))();
}

- (void)dealloc
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __24__WFContentItem_dealloc__block_invoke;
  aBlock[3] = &unk_278349550;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v3[2](v3);
  }

  else
  {
    dispatch_sync(MEMORY[0x277D85CD0], v3);
  }

  v4.receiver = self;
  v4.super_class = WFContentItem;
  [(WFContentItem *)&v4 dealloc];
}

void __24__WFContentItem_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;
}

+ (id)populateBadCoercionError:(id)a3 withResponsibleComponent:(id)a4
{
  v17[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [v7 localizedDescription];
  v9 = [a1 badCoercionErrorDefaultResponsibleComponent];
  v10 = [v8 stringByReplacingOccurrencesOfString:v9 withString:v6];

  v11 = MEMORY[0x277CCA9B8];
  v16[0] = *MEMORY[0x277CCA470];
  v12 = [v7 localizedFailureReason];

  v16[1] = *MEMORY[0x277CCA450];
  v17[0] = v12;
  v17[1] = v10;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v14 = [v11 errorWithDomain:@"WFContentItemErrorDomain" code:0 userInfo:v13];

  return v14;
}

+ (NSOrderedSet)allSupportedItemClasses
{
  v3 = [a1 allSupportedTypes];
  v4 = WFSupportedItemClassesForItemClass(a1, v3);

  return v4;
}

+ (NSOrderedSet)supportedItemClasses
{
  v3 = [a1 supportedTypes];
  v4 = WFSupportedItemClassesForItemClass(a1, v3);

  return v4;
}

+ (NSOrderedSet)allSupportedTypes
{
  v2 = a1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v7 = __WFCachedRecursivelySupportedTypes_block_invoke;
  v8 = &unk_278349850;
  v9 = v2;
  v3 = v2;
  v4 = objc_getAssociatedObject(v3, &WFCachedRecursivelySupportedTypes_cachedValue);
  if (!v4)
  {
    v4 = v7(v6);
    objc_setAssociatedObject(v3, &WFCachedRecursivelySupportedTypes_cachedValue, v4, 0x303);
  }

  return v4;
}

+ (NSOrderedSet)supportedItemClassesExcludingInstanceSpecificTypes
{
  v3 = [a1 supportedTypesExcludingInstanceSpecificTypes];
  v4 = WFSupportedItemClassesForItemClass(a1, v3);

  return v4;
}

+ (NSOrderedSet)supportedTypesExcludingInstanceSpecificTypes
{
  v3 = [a1 supportedTypes];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__WFContentItem_supportedTypesExcludingInstanceSpecificTypes__block_invoke;
  v7[3] = &__block_descriptor_40_e33_B24__0__WFType_8__NSDictionary_16l;
  v7[4] = a1;
  v4 = [MEMORY[0x277CCAC30] predicateWithBlock:v7];
  v5 = [v3 filteredOrderedSetUsingPredicate:v4];

  return v5;
}

+ (BOOL)supportedTypesMustBeDeterminedByInstance
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a1 supportedTypes];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([a1 supportedTypeMustBeDeterminedByInstance:*(*(&v10 + 1) + 8 * i)])
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() coercionForType:v3];

  if (v4)
  {
    v5 = [v4 handler];
    v6 = [v5 hasAvailabilityCheck];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)supportedItemClassMustBeDeterminedByInstance:(Class)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [(objc_class *)a3 ownedTypes];
  v5 = [a1 outputTypes];
  v6 = [v5 mutableCopy];

  [v6 intersectOrderedSet:v4];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (![a1 supportedTypeMustBeDeterminedByInstance:{*(*(&v14 + 1) + 8 * i), v14}])
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  return v12;
}

+ (NSOrderedSet)supportedTypes
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v6 = __31__WFContentItem_supportedTypes__block_invoke;
  v7 = &__block_descriptor_40_e5__8__0l;
  v8 = a1;
  v2 = a1;
  v3 = objc_getAssociatedObject(v2, &supportedTypes_cachedValue);
  if (!v3)
  {
    v3 = v6(v5);
    objc_setAssociatedObject(v2, &supportedTypes_cachedValue, v3, 0x303);
  }

  return v3;
}

id __31__WFContentItem_supportedTypes__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ownedTypes];
  v3 = [*(a1 + 32) outputTypes];
  v4 = [v2 orderedSetByAddingObjectsFromOrderedSet:v3];

  v5 = [WFObjectType typeWithClass:objc_opt_class()];
  if (([*(a1 + 32) hasStringOutput] & 1) != 0 || objc_msgSend(*(a1 + 32), "supportedTypeMustBeDeterminedByInstance:", v5))
  {
    v6 = v4;
  }

  else
  {
    v6 = [v4 orderedSetByAddingObject:v5];
  }

  v7 = v6;

  return v7;
}

+ (id)coercionForType:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  [objc_opt_class() cachedCoercions];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 type];
        v10 = [v9 isEqualToType:v3];

        if (v10)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

+ (id)coercionForCoercingToType:(id)a3 concurrencyMode:(int64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [objc_opt_class() cachedCoercions];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 canProduceType:v5 withConcurrencyMode:{a4, v14}])
        {
          v12 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

+ (id)cachedCoercions
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v6 = __32__WFContentItem_cachedCoercions__block_invoke;
  v7 = &__block_descriptor_40_e14___NSArray_8__0l;
  v8 = a1;
  v2 = a1;
  v3 = objc_getAssociatedObject(v2, &cachedCoercions_cachedValue);
  if (!v3)
  {
    v3 = v6(v5);
    objc_setAssociatedObject(v2, &cachedCoercions_cachedValue, v3, 0x303);
  }

  return v3;
}

+ (BOOL)contentItems:(id)a3 haveContentProperties:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 contentPropertySubstitutor];
  HaveProperties = WFContentObjectsHaveProperties(v7, v6, v8);

  return HaveProperties;
}

id __43__WFContentItem_contentPropertySubstitutor__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [objc_opt_class() supportedPropertyForProperty:v3];

  return v4;
}

+ (id)supportedPropertyForProperty:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a1 allProperties];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v4 isEquivalentToProperty:v9])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

+ (void)runQuery:(id)a3 withItems:(id)a4 permissionRequestor:(id)a5 completionHandler:(id)a6
{
  v8 = a6;
  v9 = a4;
  v10 = a3;
  v11 = +[WFContentItem contentPropertySubstitutor];
  [v10 runWithObjects:v9 propertySubstitutor:v11 completionHandler:v8];
}

+ (WFContentItemStringConversionBehavior)stringConversionBehavior
{
  v2 = [a1 localizedTypeDescription];
  v3 = [WFContentItemStringConversionBehavior coercingToStringWithDescription:v2];

  return v3;
}

+ (id)propertyForName:(id)a3
{
  v4 = a3;
  v5 = [a1 allProperties];
  v6 = [v5 objectMatchingKey:@"name" value:v4];

  if (!v6)
  {
    v7 = [a1 allProperties];
    v6 = [v7 objectMatchingKey:@"displayName" value:v4];

    if (!v6)
    {
      v8 = [a1 allProperties];
      v6 = [v8 objectMatchingKey:@"singularItemName" value:v4];
    }
  }

  return v6;
}

+ (NSArray)allProperties
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [a1 superclass];
  if (objc_opt_respondsToSelector())
  {
    v4 = [objc_msgSend(a1 "superclass")];
    [v3 addObjectsFromArray:v4];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a1 properties];
  v6 = [v5 reverseObjectEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __30__WFContentItem_allProperties__block_invoke;
        v14[3] = &unk_278349808;
        v14[4] = v11;
        v12 = [v3 indexOfObjectPassingTest:v14];
        if (v12 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v3 insertObject:v11 atIndex:0];
        }

        else
        {
          [v3 replaceObjectAtIndex:v12 withObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v3;
}

uint64_t __30__WFContentItem_allProperties__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 userInfo];
  v5 = [v3 userInfo];

  v6 = [v4 isEqual:v5];
  return v6;
}

+ (NSArray)properties
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v6 = __27__WFContentItem_properties__block_invoke;
  v7 = &__block_descriptor_40_e14___NSArray_8__0l;
  v8 = a1;
  v2 = a1;
  v3 = objc_getAssociatedObject(v2, &properties_cachedValue);
  if (!v3)
  {
    v3 = v6(v5);
    objc_setAssociatedObject(v2, &properties_cachedValue, v3, 0x303);
  }

  return v3;
}

id __27__WFContentItem_properties__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) propertyBuilders];
  v2 = [v1 if_map:&__block_literal_global_377];

  return v2;
}

+ (id)propertyBuilders
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    v4 = [a1 namePropertyBuilder];
    if ([a1 hasFileOutput])
    {
      v19[0] = v4;
      v18 = WFLocalizedContentPropertyNameMarker(@"File Size");
      v17 = [WFContentPropertyBuilder block:&__block_literal_global_363 name:v18 class:objc_opt_class()];
      v16 = [v17 userInfo:@"WFFileSizeProperty"];
      v15 = [v16 sortable:0];
      v14 = [v15 filterable:0];
      v5 = [v14 gettable:0];
      v19[1] = v5;
      v6 = WFLocalizedContentPropertyNameMarker(@"File Extension");
      v7 = [WFContentPropertyBuilder block:&__block_literal_global_371 name:v6 class:objc_opt_class()];
      v8 = [v7 userInfo:@"WFFileExtensionProperty"];
      v9 = [v8 caseInsensitive:1];
      v10 = [v9 sortable:0];
      v11 = [v10 filterable:0];
      v12 = [v11 gettable:0];
      v19[2] = v12;
      v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
    }

    else
    {
      v20[0] = v4;
      v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __33__WFContentItem_propertyBuilders__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__WFContentItem_propertyBuilders__block_invoke_2;
  v7[3] = &unk_278349780;
  v8 = v5;
  v6 = v5;
  [a2 getPreferredFileSize:v7];
}

void __33__WFContentItem_propertyBuilders__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [[WFFileSize alloc] initWithByteCount:a2];
  (*(v2 + 16))(v2, v3);
}

+ (id)namePropertyBuilder
{
  v2 = WFLocalizedContentPropertyNameMarker(@"Name");
  v3 = [WFContentPropertyBuilder keyPath:@"name" name:v2 class:objc_opt_class()];
  v4 = [v3 userInfo:@"WFItemName"];

  return v4;
}

+ (BOOL)canLowercaseTypeDescription
{
  if (canLowercaseTypeDescription_token != -1)
  {
    dispatch_once(&canLowercaseTypeDescription_token, &__block_literal_global_345);
  }

  return canLowercaseTypeDescription_canLowercase;
}

void __44__WFContentItem_canLowercaseTypeDescription__block_invoke()
{
  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  v2 = [v0 languageCode];

  if ([v2 isEqualToString:@"de"])
  {
    v1 = 0;
  }

  else
  {
    v1 = [v2 isEqualToString:@"lb"] ^ 1;
  }

  canLowercaseTypeDescription_canLowercase = v1;
}

+ (NSString)countDescription
{
  if ([a1 isContentItemSubclass])
  {
    v3 = [a1 ownedTypes];
    v4 = [v3 firstObject];

    if ([v4 isEqualToUTType:*MEMORY[0x277CE1D48]])
    {
      v5 = WFLocalizedPluralString(@"%d Files");

      goto LABEL_6;
    }
  }

  v5 = WFLocalizedPluralString(@"%d Items");
LABEL_6:

  return v5;
}

+ (NSString)localizedPluralFilterDescription
{
  v3 = [MEMORY[0x277D7A048] defaultContext];
  v4 = [a1 localizedPluralFilterDescriptionWithContext:v3];

  return v4;
}

+ (NSString)localizedFilterDescription
{
  v3 = [MEMORY[0x277D7A048] defaultContext];
  v4 = [a1 localizedFilterDescriptionWithContext:v3];

  return v4;
}

+ (NSString)localizedPluralTypeDescription
{
  v3 = [MEMORY[0x277D7A048] defaultContext];
  v4 = [a1 localizedPluralTypeDescriptionWithContext:v3];

  return v4;
}

+ (NSString)localizedTypeDescription
{
  v3 = [MEMORY[0x277D7A048] defaultContext];
  v4 = [a1 localizedTypeDescriptionWithContext:v3];

  return v4;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v5 = a3;
  if ([a1 isContentItemSubclass])
  {
    v6 = [a1 ownedTypes];
    v7 = [v6 firstObject];

    if ([v7 isEqualToUTType:*MEMORY[0x277CE1D48]])
    {
      v8 = WFLocalizedStringResourceWithKey(@"Files", @"Files");
      v9 = [v5 localize:v8];

      goto LABEL_6;
    }

    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"WFContentItem.m" lineNumber:1112 description:@"Subclasses of WFContentItem should provide a plural description of the type"];
  }

  v7 = WFLocalizedStringResourceWithKey(@"Anything (Plural)", @"Anything");
  v9 = [v5 localize:v7];
LABEL_6:

  return v9;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v4 = a3;
  if ([a1 isContentItemSubclass])
  {
    v5 = [a1 ownedTypes];
    v6 = [v5 firstObject];

    if ([v6 isEqualToUTType:*MEMORY[0x277CE1D48]])
    {
      v7 = WFLocalizedStringResourceWithKey(@"File", @"File");
      v8 = [v4 localize:v7];
    }

    else
    {
      v7 = [v6 typeDescription];
      v9 = [v4 locale];
      v8 = [v7 capitalizedStringWithLocale:v9];
    }
  }

  else
  {
    v6 = WFLocalizedStringResourceWithKey(@"Anything (Singular)", @"Anything");
    v8 = [v4 localize:v6];
  }

  return v8;
}

+ (id)outputTypesFromCoercions
{
  v2 = [a1 cachedCoercions];
  v3 = objc_alloc(MEMORY[0x277CBEB70]);
  v4 = [v2 if_map:&__block_literal_global_300];
  v5 = [v3 initWithArray:v4];

  return v5;
}

+ (id)itemWithSerializedItem:(id)a3 forType:(id)a4 named:(id)a5 attributionSet:(id)a6 cachingIdentifier:(id)a7
{
  v34 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = [a1 ownedTypes];
  v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v27 = a1;
    v28 = v12;
    v18 = *v30;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v29 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
          v22 = [v21 objectClass];
          v23 = +[WFSerializableContentProvider sharedProvider];
          v24 = [v23 objectOfClass:v22 withSerializedRepresentation:v11];

          if (v24)
          {
            v12 = v28;
            v25 = [v27 itemWithObject:v24 named:v28 attributionSet:v13 cachingIdentifier:v14];

            goto LABEL_14;
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }

    v25 = 0;
    v12 = v28;
  }

  else
  {
    v25 = 0;
  }

LABEL_14:

  return v25;
}

+ (id)itemFromSerializedItem:(id)a3 withItemClass:(Class)a4 forType:(id)a5 nameIfKnown:(id)a6 sourceName:(id)a7 attributionSet:(id)a8 cachingIdentifier:(id)a9 completionHandler:(id)a10
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  if (!v17 && v18)
  {
    if ([v16 isEqualToUTType:*MEMORY[0x277CE1E90]])
    {
      v17 = 0;
    }

    else
    {
      v21 = MEMORY[0x277CCA968];
      v22 = [MEMORY[0x277CBEAA8] date];
      v23 = [v21 localizedStringFromDate:v22 dateStyle:2 timeStyle:1];

      v24 = [v23 stringByReplacingOccurrencesOfString:@":" withString:@"."];

      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v18, v24];
    }
  }

  v25 = [(objc_class *)a4 itemWithSerializedItem:v15 forType:v16 named:v17 attributionSet:v19 cachingIdentifier:v20];

  return v25;
}

+ (void)getContentItemFromSerializedItem:(id)a3 sourceName:(id)a4 completionHandler:(id)a5
{
  v134 = *MEMORY[0x277D85DE8];
  v94 = a4;
  v95 = a5;
  v7 = [a3 mutableCopy];
  v8 = WFPopStringForKey(v7, @"link.contentkit.name");
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = WFPopStringForKey(v7, *MEMORY[0x277D7A428]);
  }

  v93 = v10;

  v11 = WFPopStringForKey(v7, @"link.contentkit.itemclass.identifier");
  v12 = v7;
  v13 = [v12 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.contentattributionset"];
  [v12 removeObjectForKey:@"link.contentkit.contentattributionset"];
  v96 = v12;

  if (v13)
  {
    v14 = [WFContentAttributionSet objectWithWFSerializedRepresentation:v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = WFPopStringForKey(v12, @"link.contentkit.cachingidentifier");
  v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v15];
  if (v14)
  {
    goto LABEL_12;
  }

  if ([v94 isEqualToString:@"Clipboard"])
  {
    if (!v16)
    {
      v16 = [MEMORY[0x277CCAD78] UUID];
    }

    v17 = +[WFContentLocation clipboardLocation];
    v14 = [WFContentAttributionSet attributionSetWithOrigin:v17 disclosureLevel:1 originalItemIdentifier:v16];

LABEL_12:
    if (!v11)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v14 = 0;
  if (!v11)
  {
    goto LABEL_17;
  }

LABEL_13:
  v18 = [v11 stringByReplacingOccurrencesOfString:@"link.contentkit.itemclass." withString:&stru_282F53518 options:8 range:{0, objc_msgSend(@"link.contentkit.itemclass.", "length")}];
  v19 = NSClassFromString(v18);
  if ([(objc_class *)v19 isSubclassOfClass:objc_opt_class()])
  {
    v20 = [(objc_class *)v19 itemWithSerializedItem:v12 forType:0 named:v93 attributionSet:v14 cachingIdentifier:v16];
    if (v20)
    {
      v21 = v20;
      v95[2](v95, v20, 0);

      goto LABEL_90;
    }
  }

LABEL_17:
  v22 = [v12 allKeys];
  v89 = [v22 if_map:&__block_literal_global_22979];

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v23 = +[WFContentItemRegistry sharedRegistry];
  v24 = [v23 contentItemClasses];

  v25 = [v24 countByEnumeratingWithState:&v123 objects:v133 count:16];
  v90 = v16;
  v85 = v13;
  v86 = v11;
  v84 = v15;
  v92 = v14;
  if (v25)
  {
    v26 = *v124;
    v87 = v24;
    v76 = *v124;
    do
    {
      v27 = 0;
      v78 = v25;
      do
      {
        if (*v124 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v28 = *(*(&v123 + 1) + 8 * v27);
        v119 = 0u;
        v120 = 0u;
        v121 = 0u;
        v122 = 0u;
        v29 = [v28 ownedPasteboardTypes];
        v82 = [v29 countByEnumeratingWithState:&v119 objects:v132 count:16];
        if (v82)
        {
          v30 = *v120;
          obj = v29;
          v80 = *v120;
          do
          {
            for (i = 0; i != v82; ++i)
            {
              if (*v120 != v30)
              {
                objc_enumerationMutation(v29);
              }

              v32 = *(*(&v119 + 1) + 8 * i);
              v115 = 0u;
              v116 = 0u;
              v117 = 0u;
              v118 = 0u;
              v33 = v89;
              v34 = [v33 countByEnumeratingWithState:&v115 objects:v131 count:16];
              if (v34)
              {
                v35 = v34;
                v36 = *v116;
                while (2)
                {
                  for (j = 0; j != v35; ++j)
                  {
                    if (*v116 != v36)
                    {
                      objc_enumerationMutation(v33);
                    }

                    v38 = *(*(&v115 + 1) + 8 * j);
                    if ([v38 conformsToType:v32])
                    {
                      v39 = [a1 itemFromSerializedItem:v12 withItemClass:v28 forType:v38 nameIfKnown:v93 sourceName:v94 attributionSet:v92 cachingIdentifier:v90 completionHandler:v95];
                      if (v39)
                      {
                        v49 = v39;
                        v95[2](v95, v39, 0);

                        v16 = v90;
                        v50 = v87;
                        goto LABEL_89;
                      }
                    }
                  }

                  v35 = [v33 countByEnumeratingWithState:&v115 objects:v131 count:16];
                  if (v35)
                  {
                    continue;
                  }

                  break;
                }
              }

              v30 = v80;
              v29 = obj;
            }

            v82 = [obj countByEnumeratingWithState:&v119 objects:v132 count:16];
          }

          while (v82);
        }

        ++v27;
        v26 = v76;
        v24 = v87;
      }

      while (v27 != v78);
      v25 = [v87 countByEnumeratingWithState:&v123 objects:v133 count:16];
    }

    while (v25);
  }

  v40 = objc_opt_new();
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  obja = v89;
  v41 = [obja countByEnumeratingWithState:&v111 objects:v130 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = 0;
    v44 = *v112;
    do
    {
      for (k = 0; k != v42; ++k)
      {
        if (*v112 != v44)
        {
          objc_enumerationMutation(obja);
        }

        v46 = *(*(&v111 + 1) + 8 * k);
        v47 = +[WFContentItemRegistry sharedRegistry];
        v48 = [v47 contentItemClassForType:v46];

        if (v48)
        {
          [v40 addObject:v48];
        }

        if (v48 == objc_opt_class())
        {
          v43 |= [v46 isDynamic] ^ 1;
        }
      }

      v42 = [obja countByEnumeratingWithState:&v111 objects:v130 count:16];
    }

    while (v42);
  }

  else
  {
    LOBYTE(v43) = 0;
  }

  v51 = [v40 count];
  v16 = v90;
  if (v51 >= 2)
  {
    v52 = v51;
    v53 = [v40 indexOfObject:NSClassFromString(&cfstr_Wfrichtextcont_3.isa)];
    if (v53 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v54 = [MEMORY[0x277CCAA78] indexSetWithIndex:v53];
      [v40 moveObjectsAtIndexes:v54 toIndex:0];
    }

    v55 = [v40 indexOfObject:NSClassFromString(&cfstr_Wfstringconten_1.isa)];
    if (v55 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v56 = [MEMORY[0x277CCAA78] indexSetWithIndex:v55];
      [v40 moveObjectsAtIndexes:v56 toIndex:v52 - 1];
    }

    if ((v43 & 1) == 0)
    {
      v57 = [v40 indexOfObject:objc_opt_class()];
      if (v57 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v58 = [MEMORY[0x277CCAA78] indexSetWithIndex:v57];
        [v40 moveObjectsAtIndexes:v58 toIndex:v52 - 1];
      }
    }
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v50 = v40;
  v59 = [v50 countByEnumeratingWithState:&v107 objects:v129 count:16];
  if (v59)
  {
    v60 = *v108;
    v88 = v50;
    v75 = *v108;
    do
    {
      v61 = 0;
      v77 = v59;
      do
      {
        if (*v108 != v60)
        {
          objc_enumerationMutation(v50);
        }

        v62 = *(*(&v107 + 1) + 8 * v61);
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        v106 = 0u;
        v63 = [v62 ownedTypes];
        v81 = [v63 countByEnumeratingWithState:&v103 objects:v128 count:16];
        if (v81)
        {
          v64 = *v104;
          v83 = v63;
          v79 = *v104;
          do
          {
            for (m = 0; m != v81; ++m)
            {
              if (*v104 != v64)
              {
                objc_enumerationMutation(v63);
              }

              v66 = *(*(&v103 + 1) + 8 * m);
              v99 = 0u;
              v100 = 0u;
              v101 = 0u;
              v102 = 0u;
              v67 = obja;
              v68 = [v67 countByEnumeratingWithState:&v99 objects:v127 count:16];
              if (v68)
              {
                v69 = v68;
                v70 = *v100;
                while (2)
                {
                  for (n = 0; n != v69; ++n)
                  {
                    if (*v100 != v70)
                    {
                      objc_enumerationMutation(v67);
                    }

                    v72 = *(*(&v99 + 1) + 8 * n);
                    if ([v72 conformsToType:v66])
                    {
                      v73 = [a1 itemFromSerializedItem:v96 withItemClass:v62 forType:v72 nameIfKnown:v93 sourceName:v94 attributionSet:v92 cachingIdentifier:v90 completionHandler:v95];
                      if (v73)
                      {
                        v74 = v73;
                        v95[2](v95, v73, 0);

                        v50 = v88;
                        goto LABEL_89;
                      }
                    }
                  }

                  v69 = [v67 countByEnumeratingWithState:&v99 objects:v127 count:16];
                  if (v69)
                  {
                    continue;
                  }

                  break;
                }
              }

              v63 = v83;
              v64 = v79;
            }

            v60 = v75;
            v81 = [v83 countByEnumeratingWithState:&v103 objects:v128 count:16];
          }

          while (v81);
        }

        ++v61;
        v50 = v88;
      }

      while (v61 != v77);
      v59 = [v88 countByEnumeratingWithState:&v107 objects:v129 count:16];
    }

    while (v59);
  }

  v95[2](v95, 0, 0);
LABEL_89:

  v13 = v85;
  v11 = v86;
  v15 = v84;
  v14 = v92;
LABEL_90:
}

+ (BOOL)hasFileOutput
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [a1 ownedTypes];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v17 != v6)
      {
        objc_enumerationMutation(v3);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_18;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v3 = [a1 outputTypes];
  v8 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v8)
  {
    v9 = *v13;
LABEL_11:
    v10 = 0;
    while (1)
    {
      if (*v13 != v9)
      {
        objc_enumerationMutation(v3);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
        if (v8)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }

LABEL_18:
    LOBYTE(v8) = 1;
  }

LABEL_19:

  return v8;
}

+ (BOOL)hasStringOutput
{
  v3 = +[WFStringContentItem ownedTypes];
  v4 = [a1 ownedTypes];
  if ([v3 intersectsOrderedSet:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = +[WFStringContentItem ownedTypes];
    v7 = [a1 outputTypes];
    v5 = [v6 intersectsOrderedSet:v7];
  }

  return v5;
}

+ (id)itemWithFile:(id)a3 origin:(id)a4 disclosureLevel:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"WFContentItem.m" lineNumber:170 description:{@"object must be a WFFileRepresentation, use itemWithObject: for objects"}];
  }

  v16 = 0;
  v11 = WFMakeContentAttributionSetFromOrigin(v10, a5, MEMORY[0x277CBEBF8], &v16);
  v12 = v16;
  v13 = [a1 itemWithFile:v9 attributionSet:v11 cachingIdentifier:v12];

  return v13;
}

+ (id)itemWithFile:(id)a3 attributionSet:(id)a4 cachingIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"WFContentItem.m" lineNumber:165 description:{@"object must be a WFFileRepresentation, use itemWithObject: for objects"}];
  }

  v12 = [a1 itemWithRepresentation:v9 attributionSet:v10 cachingIdentifier:v11];

  return v12;
}

+ (id)itemWithFile:(id)a3 attributionSet:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"WFContentItem.m" lineNumber:160 description:{@"object must be a WFFileRepresentation, use itemWithObject: for objects"}];
  }

  v9 = [a1 itemWithRepresentation:v7 attributionSet:v8];

  return v9;
}

+ (id)itemWithRepresentation:(id)a3 attributionSet:(id)a4 includesDefaultAttributionSet:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v9 wfType];
  v11 = [a1 itemWithRepresentation:v9 forType:v10 attributionSet:v8 includesDefaultAttributionSet:v5];

  return v11;
}

+ (id)itemWithRepresentation:(id)a3 attributionSet:(id)a4 cachingIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 wfType];
  v12 = [a1 itemWithRepresentation:v10 forType:v11 attributionSet:v9 cachingIdentifier:v8];

  return v12;
}

+ (id)itemWithRepresentation:(id)a3 attributionSet:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 wfType];
  v9 = [a1 itemWithRepresentation:v7 forType:v8 attributionSet:v6];

  return v9;
}

+ (id)itemWithRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 wfType];
  v6 = [a1 itemWithRepresentation:v4 forType:v5];

  return v6;
}

+ (id)itemWithRepresentation:(id)a3 forType:(id)a4 attributionSet:(id)a5 includesDefaultAttributionSet:(BOOL)a6 cachingIdentifier:(id)a7
{
  v8 = a6;
  v38 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if ([a1 isContentItemSubclass])
  {
    v31 = v14;
    v32 = v12;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v16 = [a1 ownedTypes];
    v17 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v34;
      v20 = *MEMORY[0x277CE1D48];
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v33 + 1) + 8 * i);
          if (([v13 conformsToType:v22] & 1) == 0)
          {
            if (![v22 isEqualToUTType:v20])
            {
              continue;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }
          }

          v28 = [a1 alloc];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = v22;
          }

          else
          {
            v29 = v13;
          }

          v14 = v31;
          v12 = v32;
          v23 = [v28 initWithRepresentation:v32 forType:v29 attributionSet:v31 includesDefaultAttributionSet:v8 cachingIdentifier:v15];

          goto LABEL_22;
        }

        v18 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v23 = 0;
    v14 = v31;
    v12 = v32;
  }

  else
  {
    v24 = +[WFContentItemRegistry sharedRegistry];
    v25 = [v24 contentItemClassForType:v13];

    if (!v25)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1D48]];

        v27 = +[WFContentItemRegistry sharedRegistry];
        v25 = [v27 contentItemClassForType:v26];

        v13 = v26;
      }

      else
      {
        v25 = 0;
      }
    }

    v23 = [v25 itemWithRepresentation:v12 forType:v13 attributionSet:v14 cachingIdentifier:v15];
  }

LABEL_22:

  return v23;
}

+ (id)itemWithObject:(id)a3 named:(id)a4 attributionSet:(id)a5 cachingIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"WFContentItem.m" lineNumber:99 description:{@"object should not be a WFFileRepresentation, use itemWithFile: for files"}];
  }

  v15 = [WFObjectRepresentation object:v11 named:v12];
  v16 = [a1 itemWithRepresentation:v15 attributionSet:v14 cachingIdentifier:v13];

  return v16;
}

+ (id)itemWithObject:(id)a3 named:(id)a4 attributionSet:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"WFContentItem.m" lineNumber:94 description:{@"object should not be a WFFileRepresentation, use itemWithFile: for files"}];
  }

  v12 = [WFObjectRepresentation object:v9 named:v10];
  v13 = [a1 itemWithRepresentation:v12 attributionSet:v11];

  return v13;
}

+ (id)itemWithObject:(id)a3 named:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"WFContentItem.m" lineNumber:89 description:{@"object should not be a WFFileRepresentation, use itemWithFile: for files"}];
  }

  v9 = [WFObjectRepresentation object:v7 named:v8];
  v10 = [a1 itemWithRepresentation:v9];

  return v10;
}

+ (id)itemWithObject:(id)a3 privacyConfiguration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 origin];
  v9 = [v6 disclosureLevel];
  v10 = [v6 disclosureWarnings];

  v11 = [v10 array];
  v16 = 0;
  v12 = WFMakeContentAttributionSetFromOrigin(v8, v9, v11, &v16);
  v13 = v16;

  v14 = [a1 itemWithObject:v7 named:0 attributionSet:v12 cachingIdentifier:v13];

  return v14;
}

+ (id)itemWithObject:(id)a3 origin:(id)a4 disclosureLevel:(unint64_t)a5
{
  v8 = a3;
  v9 = [WFContentItemPrivacyConfiguration configurationWithOrigin:a4 disclosureLevel:a5];
  v10 = [a1 itemWithObject:v8 privacyConfiguration:v9];

  return v10;
}

- (void)coerceToItemClasses:(id)a3 completionHandler:(id)a4
{
  v5 = [WFCoercionRequest _requestForCoercingToContentClasses:a3 itemCompletionHandler:a4];
  [(WFContentItem *)self performCoercion:v5];
}

- (void)coerceToItemClass:(Class)a3 completionHandler:(id)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v5 = MEMORY[0x277CBEA60];
  v6 = a4;
  v7 = [v5 arrayWithObjects:&v8 count:1];
  [(WFContentItem *)self coerceToItemClasses:v7 completionHandler:v6, v8, v9];
}

- (BOOL)isCoercibleToItemClasses:(id)a3
{
  v4 = [WFCoercionRequest requestForCoercingToContentClasses:a3 completionHandler:0];
  LOBYTE(self) = [(WFContentItem *)self canPerformCoercion:v4];

  return self;
}

- (BOOL)isCoercibleToItemClass:(Class)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = a3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  LOBYTE(self) = [(WFContentItem *)self isCoercibleToItemClasses:v4];

  return self;
}

- (void)getObjectRepresentations:(id)a3 forClass:(Class)a4 options:(id)a5
{
  v8 = a5;
  v9 = [WFCoercionRequest requestForCoercingToObjectClass:a4 completionHandler:a3];
  [v9 setOptions:v8];

  [(WFContentItem *)self performCoercion:v9];
}

- (void)getFileRepresentations:(id)a3 forType:(id)a4 options:(id)a5
{
  v8 = a5;
  v9 = [WFCoercionRequest requestForCoercingToFileType:a4 completionHandler:a3];
  [v9 setOptions:v8];

  [(WFContentItem *)self performCoercion:v9];
}

- (void)getFileRepresentation:(id)a3 forType:(id)a4 options:(id)a5
{
  v8 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__WFContentItem_CoercionConvenience__getFileRepresentation_forType_options___block_invoke;
  v10[3] = &unk_27834A430;
  v11 = v8;
  v9 = v8;
  [(WFContentItem *)self getFileRepresentations:v10 forType:a4 options:a5];
}

void __76__WFContentItem_CoercionConvenience__getFileRepresentation_forType_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 firstObject];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)getObjectRepresentation:(id)a3 forClass:(Class)a4 options:(id)a5
{
  v8 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__WFContentItem_CoercionConvenience__getObjectRepresentation_forClass_options___block_invoke;
  v10[3] = &unk_27834A4C8;
  v11 = v8;
  v9 = v8;
  [(WFContentItem *)self getObjectRepresentations:v10 forClass:a4 options:a5];
}

void __79__WFContentItem_CoercionConvenience__getObjectRepresentation_forClass_options___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a4;
  v8 = [a3 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v8 = 0;
  }

  v9 = *(a1 + 32);
  v10 = [v11 firstObject];
  (*(v9 + 16))(v9, v10, v8, v7);
}

+ (id)badCoercionErrorForObjectClass:(Class)a3
{
  v4 = [WFObjectType typeWithClass:a3];
  v5 = [a1 badCoercionErrorForType:v4];

  return v5;
}

+ (id)badCoercionErrorForType:(id)a3
{
  v4 = a3;
  v5 = +[WFContentItemRegistry sharedRegistry];
  v6 = [v5 contentItemClassForType:v4];

  if ([v6 isSubclassOfClass:a1])
  {
    [v4 typeDescription];
  }

  else
  {
    [v6 localizedTypeDescription];
  }
  v7 = ;
  v8 = objc_opt_class();
  v9 = [a1 localizedTypeDescription];
  v10 = [v8 badCoercionErrorForTypeDescription:v9 toTypeDescription:v7];

  return v10;
}

+ (id)badCoercionErrorForItemClass:(Class)a3
{
  v5 = objc_opt_class();
  v6 = [a1 localizedTypeDescription];
  v7 = [(objc_class *)a3 localizedTypeDescription];
  v8 = [v5 badCoercionErrorForTypeDescription:v6 toTypeDescription:v7];

  return v8;
}

+ (id)badCoercionErrorForItemClasses:(id)a3
{
  v4 = [a3 valueForKey:@"localizedTypeDescription"];
  v5 = objc_opt_new();
  if ([v4 count])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [v4 objectAtIndexedSubscript:v7];
      [v5 appendString:v8];

      v9 = [v4 count] + v6;
      v10 = @", ";
      if (v9 > 2 || [v4 count] - 2 == v7 && (v11 = objc_msgSend(v4, "count"), v10 = @", or ", v11 > 2) || objc_msgSend(v4, "count") == 2 && (v10 = @" or ", !v7))
      {
        v12 = WFLocalizedString(v10);
        [v5 appendString:v12];
      }

      ++v7;
      --v6;
    }

    while (v7 < [v4 count]);
  }

  v13 = objc_opt_class();
  v14 = [a1 localizedTypeDescription];
  v15 = [v13 badCoercionErrorForTypeDescription:v14 toTypeDescription:v5];

  return v15;
}

+ (id)badCoercionErrorForTypeDescription:(id)a3 toTypeDescription:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CCACA8];
  v8 = a3;
  if (v6)
  {
    v9 = WFLocalizedString(@"Shortcuts couldn’t convert from %@ to %@");
    [v7 localizedStringWithFormat:v9, v8, v6];
  }

  else
  {
    v9 = WFLocalizedString(@"Shortcuts couldn’t convert from %@ to the required type");
    [v7 localizedStringWithFormat:v9, v8, v13];
  }
  v10 = ;

  v11 = [a1 badCoercionErrorWithReasonString:v10];

  return v11;
}

+ (id)badCoercionErrorWithReasonString:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLocalizedString(@"Conversion Error");
  v6 = MEMORY[0x277CCACA8];
  v7 = WFLocalizedString(@"%@ failed because %@.");
  v8 = [a1 badCoercionErrorDefaultResponsibleComponent];
  v9 = [v6 localizedStringWithFormat:v7, v8, v4];

  v10 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA450];
  v15[0] = *MEMORY[0x277CCA470];
  v15[1] = v11;
  v16[0] = v5;
  v16[1] = v9;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v13 = [v10 errorWithDomain:@"WFContentItemErrorDomain" code:0 userInfo:v12];

  return v13;
}

+ (BOOL)errorIsBadCoercionError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:@"WFContentItemErrorDomain"])
  {
    v5 = [v3 code] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (NSArray)pasteboardValueClasses
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v2 = [WFObjectType typeWithClassName:@"UIImage" frameworkName:@"UIKit" location:2, v5, v6, v7, v8, v9, objc_opt_class()];
  v10 = [v2 objectClass];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v5 count:9];

  return v3;
}

@end