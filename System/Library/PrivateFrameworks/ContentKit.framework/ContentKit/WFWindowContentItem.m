@interface WFWindowContentItem
+ (id)contentCategories;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
+ (id)stringConversionBehavior;
+ (void)runQuery:(id)a3 withItems:(id)a4 permissionRequestor:(id)a5 completionHandler:(id)a6;
- (BOOL)getListAltText:(id)a3;
- (BOOL)getListSubtitle:(id)a3;
- (BOOL)getListThumbnail:(id)a3 forSize:(CGSize)a4;
- (WFWindow)window;
- (id)app;
- (id)defaultSourceForRepresentation:(id)a3;
- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5;
@end

@implementation WFWindowContentItem

- (id)defaultSourceForRepresentation:(id)a3
{
  v3 = +[WFContentLocation windowsLocation];
  v4 = [WFContentAttributionSet attributionSetWithOrigin:v3 disclosureLevel:0];

  return v4;
}

- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5
{
  if (objc_opt_class() == a3)
  {
    v8 = [(WFWindowContentItem *)self app];
    v7 = [WFObjectRepresentation object:v8];
  }

  else
  {
    if (objc_opt_class() != a3)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v9 = [(WFWindowContentItem *)self window];
    v8 = [v9 image];

    if (v8)
    {
      v10 = [(WFContentItem *)self name];
      v7 = [WFObjectRepresentation object:v8 named:v10];
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_9:

  return v7;
}

- (id)app
{
  v3 = objc_alloc(MEMORY[0x277CD3A58]);
  v4 = [(WFWindowContentItem *)self window];
  v5 = [v4 bundleIdentifier];
  v6 = [v3 initWithBundleIdentifier:v5];

  v7 = [MEMORY[0x277CD3A88] sharedResolver];
  v8 = [v7 resolvedAppMatchingDescriptor:v6];

  if (v8)
  {
    v9 = [WFApp alloc];
    v10 = [v8 bundleIdentifier];
    v11 = [v8 localizedName];
    v12 = [(WFApp *)v9 initWithBundleIdentifier:v10 localizedName:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (WFWindow)window
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Windows", @"Windows");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Window", @"Window");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)contentCategories
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"Scripting";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
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

+ (id)stringConversionBehavior
{
  v2 = [a1 propertyForName:@"Name"];
  v3 = [WFContentItemStringConversionBehavior accessingProperty:v2];

  return v3;
}

+ (void)runQuery:(id)a3 withItems:(id)a4 permissionRequestor:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (![v11 count])
  {
    v14 = +[WFWindow allWindows];
    v15 = [v14 if_map:&__block_literal_global_229];

    v11 = v15;
  }

  v16.receiver = a1;
  v16.super_class = &OBJC_METACLASS___WFWindowContentItem;
  objc_msgSendSuper2(&v16, sel_runQuery_withItems_permissionRequestor_completionHandler_, v10, v11, v12, v13);
}

+ (id)propertyBuilders
{
  v27[10] = *MEMORY[0x277D85DE8];
  v26 = WFLocalizedContentPropertyNameMarker(@"App Name");
  v25 = [WFContentPropertyBuilder keyPath:@"window.applicationName" name:v26 class:objc_opt_class()];
  v27[0] = v25;
  v23 = WFLocalizedContentPropertyNameMarker(@"Is Hidden");
  v24 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v22 = [WFContentPropertyBuilder keyPath:@"window.isHidden" name:v23 class:objc_opt_class()];
  v21 = WFLocalizedContentPropertyNameMarker(@"Is Visible");
  v20 = [v22 negativeName:v21];
  v27[1] = v20;
  v19 = WFLocalizedContentPropertyNameMarker(@"Image");
  v18 = [WFContentPropertyBuilder block:&__block_literal_global_6498 name:v19 class:objc_opt_class()];
  v27[2] = v18;
  v17 = WFLocalizedContentPropertyNameMarker(@"Width");
  v16 = [WFContentPropertyBuilder block:&__block_literal_global_184_6500 name:v17 class:objc_opt_class()];
  v27[3] = v16;
  v15 = WFLocalizedContentPropertyNameMarker(@"Height");
  v14 = [WFContentPropertyBuilder block:&__block_literal_global_189 name:v15 class:objc_opt_class()];
  v27[4] = v14;
  v13 = WFLocalizedContentPropertyNameMarker(@"X Position");
  v2 = [WFContentPropertyBuilder block:&__block_literal_global_194_6502 name:v13 class:objc_opt_class()];
  v27[5] = v2;
  v3 = WFLocalizedContentPropertyNameMarker(@"Y Position");
  v4 = [WFContentPropertyBuilder block:&__block_literal_global_199 name:v3 class:objc_opt_class()];
  v27[6] = v4;
  v5 = WFLocalizedContentPropertyNameMarker(@"Window Index");
  v6 = [WFContentPropertyBuilder block:&__block_literal_global_204_6504 name:v5 class:objc_opt_class()];
  v27[7] = v6;
  v7 = WFLocalizedContentPropertyNameMarker(@"Display");
  v8 = [WFContentPropertyBuilder keyPath:@"display" name:v7 class:objc_opt_class()];
  v27[8] = v8;
  v9 = WFLocalizedContentPropertyNameMarker(@"App");
  v10 = [WFContentPropertyBuilder keyPath:@"app" name:v9 class:objc_opt_class()];
  v27[9] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:10];

  return v11;
}

void __39__WFWindowContentItem_propertyBuilders__block_invoke_6(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = a4;
  v8 = [a2 window];
  v7 = [v8 windowIndex];
  (a4)[2](v6, v7);
}

void __39__WFWindowContentItem_propertyBuilders__block_invoke_5(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v10 = [a2 window];
  [v10 position];
  v9 = [v6 numberWithDouble:v8];
  (a4)[2](v7, v9);
}

void __39__WFWindowContentItem_propertyBuilders__block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v9 = [a2 window];
  [v9 position];
  v8 = [v6 numberWithDouble:?];
  (a4)[2](v7, v8);
}

void __39__WFWindowContentItem_propertyBuilders__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v10 = [a2 window];
  [v10 size];
  v9 = [v6 numberWithDouble:v8];
  (a4)[2](v7, v9);
}

void __39__WFWindowContentItem_propertyBuilders__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v9 = [a2 window];
  [v9 size];
  v8 = [v6 numberWithDouble:?];
  (a4)[2](v7, v8);
}

void __39__WFWindowContentItem_propertyBuilders__block_invoke(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = a4;
  v8 = [a2 window];
  v7 = [v8 image];
  (a4)[2](v6, v7);
}

- (BOOL)getListAltText:(id)a3
{
  v4 = a3;
  v5 = [(WFWindowContentItem *)self window];
  v6 = MEMORY[0x277CCACA8];
  [v5 size];
  v8 = v7;
  [v5 size];
  v10 = [v6 stringWithFormat:@"%lu×%lu", v8, v9];
  if (v4)
  {
    v4[2](v4, v10);
  }

  return 1;
}

- (BOOL)getListThumbnail:(id)a3 forSize:(CGSize)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277D79FC8];
  v7 = [(WFWindowContentItem *)self window];
  v8 = [v7 bundleIdentifier];
  v9 = [v6 applicationIconImageForBundleIdentifier:v8];

  if (v5)
  {
    if (v9)
    {
      v13 = *MEMORY[0x277D7A398];
      v14[0] = &unk_282F7A2E8;
      v10 = 1;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v5[2](v5, v9, v11);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = v9 != 0;
  }

  return v10;
}

- (BOOL)getListSubtitle:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [(WFWindowContentItem *)self window];
    v7 = [v6 applicationName];
    (*(a3 + 2))(v5, v7);
  }

  return 1;
}

@end