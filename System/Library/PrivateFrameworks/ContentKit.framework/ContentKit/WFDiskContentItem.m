@interface WFDiskContentItem
+ (id)allProperties;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)ownedTypes;
+ (id)propertyBuilders;
- (WFDisk)disk;
- (void)generateFileRepresentation:(id)a3 options:(id)a4 forType:(id)a5;
@end

@implementation WFDiskContentItem

+ (id)allProperties
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [a1 superclass];
  if (objc_opt_respondsToSelector())
  {
    v4 = [objc_msgSend(a1 "superclass")];
    v5 = [v4 if_compactMap:&__block_literal_global_13961];
    v6 = [v5 mutableCopy];

    v3 = v6;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [a1 properties];
  v8 = [v7 reverseObjectEnumerator];

  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v8);
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

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"External Drives", @"External Drives");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"External Drive", @"External Drive");
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

+ (id)propertyBuilders
{
  v13[3] = *MEMORY[0x277D85DE8];
  v3 = WFLocalizedContentPropertyNameMarker(@"Drive Identifier");
  v4 = [WFContentPropertyBuilder keyPath:@"disk.volumeUUID" name:v3 class:objc_opt_class()];
  v5 = [a1 itemPathPropertyBuilder];
  v6 = WFLocalizedContentPropertyNameMarker(@"Drive Path");
  v7 = [v5 displayName:v6];
  v13[1] = v7;
  v8 = [a1 modificationDatePropertyBuilder];
  v9 = WFLocalizedContentPropertyNameMarker(@"Drive Last Modified Date");
  v10 = [v8 displayName:v9];
  v13[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];

  return v11;
}

- (WFDisk)disk
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

- (void)generateFileRepresentation:(id)a3 options:(id)a4 forType:(id)a5
{
  v7 = a3;
  v9 = [(WFDiskContentItem *)self disk];
  v8 = [v9 fileRepresentation];
  (*(a3 + 2))(v7, v8, 0);
}

@end