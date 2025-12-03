@interface WFAppContentItem
+ (id)contentCategories;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
+ (id)stringConversionBehavior;
+ (void)runQuery:(id)query withItems:(id)items permissionRequestor:(id)requestor completionHandler:(id)handler;
- (LNValue)intentApplication;
- (NSString)wfName;
- (WFApp)app;
- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error;
- (id)generateObjectRepresentationsForClass:(Class)class options:(id)options error:(id *)error;
- (id)windows;
@end

@implementation WFAppContentItem

- (id)windows
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [(WFAppContentItem *)self app];
  bundleIdentifier = [v2 bundleIdentifier];
  v7[0] = bundleIdentifier;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [WFWindow allWindowsForBundleIdentifiers:v4];

  return v5;
}

- (WFApp)app
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

- (NSString)wfName
{
  v2 = [(WFAppContentItem *)self app];
  localizedName = [v2 localizedName];

  return localizedName;
}

- (id)generateObjectRepresentationsForClass:(Class)class options:(id)options error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == class)
  {
    windows = [(WFAppContentItem *)self windows];
    v7 = [WFObjectRepresentation objects:windows];
  }

  else
  {
    if (objc_opt_class() != class)
    {
      if (objc_opt_class() == class)
      {
        v11 = [(WFAppContentItem *)self app];
        localizedName = [v11 localizedName];
        if (localizedName)
        {
          v13 = [(WFAppContentItem *)self app];
          localizedName2 = [v13 localizedName];
          v16 = localizedName2;
          v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
          v7 = [WFObjectRepresentation objects:v15];
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = MEMORY[0x277CBEBF8];
      }

      goto LABEL_8;
    }

    windows = [(WFAppContentItem *)self intentApplication];
    v17[0] = windows;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v7 = [WFObjectRepresentation objects:v9];
  }

LABEL_8:

  return v7;
}

- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error
{
  if (objc_opt_class() == class)
  {
    intentApplication = [(WFAppContentItem *)self app];
    localizedName = [intentApplication localizedName];
    if (localizedName)
    {
      v10 = [(WFAppContentItem *)self app];
      localizedName2 = [v10 localizedName];
      v7 = [WFObjectRepresentation object:localizedName2];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if (objc_opt_class() != class)
    {
      v7 = 0;
      goto LABEL_10;
    }

    intentApplication = [(WFAppContentItem *)self intentApplication];
    v7 = [WFObjectRepresentation object:intentApplication];
  }

LABEL_10:

  return v7;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"apps-type-description", @"Apps");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"App", @"App");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)contentCategories
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"Sharing";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)outputTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [WFObjectType typeWithClass:objc_opt_class()];
  v5 = [WFObjectType typeWithClass:objc_opt_class()];
  v6 = [WFObjectType typeWithClass:objc_opt_class()];
  v7 = [v2 orderedSetWithObjects:{v3, v4, v5, v6, 0}];

  return v7;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (void)runQuery:(id)query withItems:(id)items permissionRequestor:(id)requestor completionHandler:(id)handler
{
  queryCopy = query;
  itemsCopy = items;
  requestorCopy = requestor;
  handlerCopy = handler;
  if (![itemsCopy count])
  {
    v14 = +[WFApp allApps];
    v15 = [v14 if_map:&__block_literal_global_7779];

    itemsCopy = v15;
  }

  v16.receiver = self;
  v16.super_class = &OBJC_METACLASS___WFAppContentItem;
  objc_msgSendSuper2(&v16, sel_runQuery_withItems_permissionRequestor_completionHandler_, queryCopy, itemsCopy, requestorCopy, handlerCopy);
}

+ (id)stringConversionBehavior
{
  v2 = [self propertyForName:@"Name"];
  v3 = [WFContentItemStringConversionBehavior accessingProperty:v2];

  return v3;
}

+ (id)propertyBuilders
{
  v35[10] = *MEMORY[0x277D85DE8];
  v33 = WFLocalizedContentPropertyNameMarker(@"Is Running");
  v34 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v32 = [WFContentPropertyBuilder keyPath:@"app.isRunning" name:v33 class:objc_opt_class()];
  v31 = WFLocalizedContentPropertyNameMarker(@"Is Not Running");
  v30 = [v32 negativeName:v31];
  v35[0] = v30;
  v28 = WFLocalizedContentPropertyNameMarker(@"Is Hidden");
  v29 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v27 = [WFContentPropertyBuilder keyPath:@"app.isHidden" name:v28 class:objc_opt_class()];
  v26 = WFLocalizedContentPropertyNameMarker(@"Is Visible");
  v25 = [v27 negativeName:v26];
  v35[1] = v25;
  v23 = WFLocalizedContentPropertyNameMarker(@"Is Frontmost");
  v24 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v22 = [WFContentPropertyBuilder keyPath:@"app.isFrontmost" name:v23 class:objc_opt_class()];
  v21 = WFLocalizedContentPropertyNameMarker(@"Is Not Frontmost");
  v20 = [v22 negativeName:v21];
  v35[2] = v20;
  v19 = WFLocalizedContentPropertyNameMarker(@"Icon");
  v18 = [WFContentPropertyBuilder keyPath:@"app.icon" name:v19 class:objc_opt_class()];
  v35[3] = v18;
  v17 = WFLocalizedContentPropertyNameMarker(@"Bundle Identifier");
  v16 = [WFContentPropertyBuilder keyPath:@"app.bundleIdentifier" name:v17 class:objc_opt_class()];
  v35[4] = v16;
  v15 = WFLocalizedContentPropertyNameMarker(@"Process Identifier");
  v14 = [WFContentPropertyBuilder keyPath:@"app.processIdentifier" name:v15 class:objc_opt_class()];
  v35[5] = v14;
  v2 = WFLocalizedContentPropertyNameMarker(@"Bundle Path");
  v3 = [WFContentPropertyBuilder keyPath:@"app.bundleURL" name:v2 class:objc_opt_class()];
  v35[6] = v3;
  v4 = WFLocalizedContentPropertyNameMarker(@"Launch Date");
  v5 = [WFContentPropertyBuilder keyPath:@"app.launchDate" name:v4 class:objc_opt_class()];
  v35[7] = v5;
  v6 = WFLocalizedContentPropertyNameMarker(@"Windows");
  v7 = [WFContentPropertyBuilder keyPath:@"windows" name:v6 class:objc_opt_class()];
  v8 = [v7 multipleValues:1];
  v35[8] = v8;
  v9 = WFLocalizedContentPropertyNameMarker(@"Displays");
  v10 = [WFContentPropertyBuilder keyPath:@"displays" name:v9 class:objc_opt_class()];
  v11 = [v10 multipleValues:1];
  v35[9] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:10];

  return v13;
}

- (LNValue)intentApplication
{
  v3 = objc_alloc(MEMORY[0x277D23950]);
  v4 = [(WFAppContentItem *)self app];
  bundleIdentifier = [v4 bundleIdentifier];
  applicationValueType = [MEMORY[0x277D23870] applicationValueType];
  v7 = [v3 initWithValue:bundleIdentifier valueType:applicationValueType];

  return v7;
}

@end