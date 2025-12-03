@interface WFWindowContentItem
+ (id)contentCategories;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
+ (id)stringConversionBehavior;
+ (void)runQuery:(id)query withItems:(id)items permissionRequestor:(id)requestor completionHandler:(id)handler;
- (BOOL)getListAltText:(id)text;
- (BOOL)getListSubtitle:(id)subtitle;
- (BOOL)getListThumbnail:(id)thumbnail forSize:(CGSize)size;
- (WFWindow)window;
- (id)app;
- (id)defaultSourceForRepresentation:(id)representation;
- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error;
@end

@implementation WFWindowContentItem

- (id)defaultSourceForRepresentation:(id)representation
{
  v3 = +[WFContentLocation windowsLocation];
  v4 = [WFContentAttributionSet attributionSetWithOrigin:v3 disclosureLevel:0];

  return v4;
}

- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error
{
  if (objc_opt_class() == class)
  {
    image = [(WFWindowContentItem *)self app];
    v7 = [WFObjectRepresentation object:image];
  }

  else
  {
    if (objc_opt_class() != class)
    {
      v7 = 0;
      goto LABEL_9;
    }

    window = [(WFWindowContentItem *)self window];
    image = [window image];

    if (image)
    {
      name = [(WFContentItem *)self name];
      v7 = [WFObjectRepresentation object:image named:name];
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
  window = [(WFWindowContentItem *)self window];
  bundleIdentifier = [window bundleIdentifier];
  v6 = [v3 initWithBundleIdentifier:bundleIdentifier];

  mEMORY[0x277CD3A88] = [MEMORY[0x277CD3A88] sharedResolver];
  v8 = [mEMORY[0x277CD3A88] resolvedAppMatchingDescriptor:v6];

  if (v8)
  {
    v9 = [WFApp alloc];
    bundleIdentifier2 = [v8 bundleIdentifier];
    localizedName = [v8 localizedName];
    v12 = [(WFApp *)v9 initWithBundleIdentifier:bundleIdentifier2 localizedName:localizedName];
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

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Windows", @"Windows");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Window", @"Window");
  v5 = [contextCopy localize:v4];

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
  v2 = [self propertyForName:@"Name"];
  v3 = [WFContentItemStringConversionBehavior accessingProperty:v2];

  return v3;
}

+ (void)runQuery:(id)query withItems:(id)items permissionRequestor:(id)requestor completionHandler:(id)handler
{
  queryCopy = query;
  itemsCopy = items;
  requestorCopy = requestor;
  handlerCopy = handler;
  if (![itemsCopy count])
  {
    v14 = +[WFWindow allWindows];
    v15 = [v14 if_map:&__block_literal_global_229];

    itemsCopy = v15;
  }

  v16.receiver = self;
  v16.super_class = &OBJC_METACLASS___WFWindowContentItem;
  objc_msgSendSuper2(&v16, sel_runQuery_withItems_permissionRequestor_completionHandler_, queryCopy, itemsCopy, requestorCopy, handlerCopy);
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

- (BOOL)getListAltText:(id)text
{
  textCopy = text;
  window = [(WFWindowContentItem *)self window];
  v6 = MEMORY[0x277CCACA8];
  [window size];
  v8 = v7;
  [window size];
  v10 = [v6 stringWithFormat:@"%lu×%lu", v8, v9];
  if (textCopy)
  {
    textCopy[2](textCopy, v10);
  }

  return 1;
}

- (BOOL)getListThumbnail:(id)thumbnail forSize:(CGSize)size
{
  v14[1] = *MEMORY[0x277D85DE8];
  thumbnailCopy = thumbnail;
  v6 = MEMORY[0x277D79FC8];
  window = [(WFWindowContentItem *)self window];
  bundleIdentifier = [window bundleIdentifier];
  v9 = [v6 applicationIconImageForBundleIdentifier:bundleIdentifier];

  if (thumbnailCopy)
  {
    if (v9)
    {
      v13 = *MEMORY[0x277D7A398];
      v14[0] = &unk_282F7A2E8;
      v10 = 1;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      thumbnailCopy[2](thumbnailCopy, v9, v11);
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

- (BOOL)getListSubtitle:(id)subtitle
{
  if (subtitle)
  {
    subtitleCopy = subtitle;
    window = [(WFWindowContentItem *)self window];
    applicationName = [window applicationName];
    (*(subtitle + 2))(subtitleCopy, applicationName);
  }

  return 1;
}

@end