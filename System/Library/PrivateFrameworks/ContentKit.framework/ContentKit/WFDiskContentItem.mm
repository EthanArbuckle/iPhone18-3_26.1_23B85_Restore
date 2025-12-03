@interface WFDiskContentItem
+ (id)allProperties;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)ownedTypes;
+ (id)propertyBuilders;
- (WFDisk)disk;
- (void)generateFileRepresentation:(id)representation options:(id)options forType:(id)type;
@end

@implementation WFDiskContentItem

+ (id)allProperties
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [self superclass];
  if (objc_opt_respondsToSelector())
  {
    v4 = [objc_msgSend(self "superclass")];
    v5 = [v4 if_compactMap:&__block_literal_global_13961];
    v6 = [v5 mutableCopy];

    v3 = v6;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  properties = [self properties];
  reverseObjectEnumerator = [properties reverseObjectEnumerator];

  v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __34__WFDiskContentItem_allProperties__block_invoke_2;
        v16[3] = &unk_278349808;
        v16[4] = v13;
        v14 = [v3 indexOfObjectPassingTest:v16];
        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v3 insertObject:v13 atIndex:0];
        }

        else
        {
          [v3 replaceObjectAtIndex:v14 withObject:v13];
        }
      }

      v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v3;
}

uint64_t __34__WFDiskContentItem_allProperties__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 userInfo];
  v5 = [v3 userInfo];

  v6 = [v4 isEqual:v5];
  return v6;
}

void *__34__WFDiskContentItem_allProperties__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 userInfo];
  if ([v3 isEqual:@"WFFileExtensionProperty"])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v2 userInfo];
    if ([v5 isEqual:@"WFFileCreationDate"])
    {
      v4 = 0;
    }

    else
    {
      v6 = [v2 userInfo];
      if ([v6 isEqual:@"WFFileSizeProperty"])
      {
        v4 = 0;
      }

      else
      {
        v4 = v2;
      }
    }
  }

  v7 = v4;
  return v4;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"External Drives", @"External Drives");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"External Drive", @"External Drive");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (id)propertyBuilders
{
  v13[3] = *MEMORY[0x277D85DE8];
  v3 = WFLocalizedContentPropertyNameMarker(@"Drive Identifier");
  v4 = [WFContentPropertyBuilder keyPath:@"disk.volumeUUID" name:v3 class:objc_opt_class()];
  itemPathPropertyBuilder = [self itemPathPropertyBuilder];
  v6 = WFLocalizedContentPropertyNameMarker(@"Drive Path");
  v7 = [itemPathPropertyBuilder displayName:v6];
  v13[1] = v7;
  modificationDatePropertyBuilder = [self modificationDatePropertyBuilder];
  v9 = WFLocalizedContentPropertyNameMarker(@"Drive Last Modified Date");
  v10 = [modificationDatePropertyBuilder displayName:v9];
  v13[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];

  return v11;
}

- (WFDisk)disk
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

- (void)generateFileRepresentation:(id)representation options:(id)options forType:(id)type
{
  representationCopy = representation;
  disk = [(WFDiskContentItem *)self disk];
  fileRepresentation = [disk fileRepresentation];
  (*(representation + 2))(representationCopy, fileRepresentation, 0);
}

@end