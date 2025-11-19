@interface WFMediaCollectionContentItem
+ (id)contentCategories;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)ownedTypes;
- (MPMediaItemCollection)collection;
@end

@implementation WFMediaCollectionContentItem

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Media Collections", @"Media Collections");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Media Collection", @"Media Collection");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)contentCategories
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"Media";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClassName:@"MPMediaItemCollection" frameworkName:@"MediaPlayer" location:2];
  v4 = [v2 orderedSetWithObjects:{v3, 0}];

  return v4;
}

- (MPMediaItemCollection)collection
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v3 = getMPMediaItemCollectionClass_softClass;
  v11 = getMPMediaItemCollectionClass_softClass;
  if (!getMPMediaItemCollectionClass_softClass)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getMPMediaItemCollectionClass_block_invoke;
    v7[3] = &unk_27834A178;
    v7[4] = &v8;
    __getMPMediaItemCollectionClass_block_invoke(v7);
    v3 = v9[3];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  v5 = [(WFContentItem *)self objectForClass:v3];

  return v5;
}

@end