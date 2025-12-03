@interface WFDictionaryContentItem
+ (id)contentCategories;
+ (id)itemsWithJSONFileRepresentation:(id)representation attributionSet:(id)set;
+ (id)itemsWithPlistFileRepresentation:(id)representation attributionSet:(id)set;
+ (id)itemsWithPropertyListObject:(id)object preferredDictionaryType:(id)type topLevelName:(id)name attributionSet:(id)set;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
- (NSDictionary)dictionary;
- (WFFileType)preferredFileType;
- (id)allowedClassesForDecodingInternalRepresentations;
- (id)generateFileRepresentationForType:(id)type options:(id)options error:(id *)error;
- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error;
@end

@implementation WFDictionaryContentItem

- (id)allowedClassesForDecodingInternalRepresentations
{
  v4[8] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v4[7] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:8];

  return v2;
}

- (id)generateFileRepresentationForType:(id)type options:(id)options error:(id *)error
{
  typeCopy = type;
  v8 = [MEMORY[0x277D79F68] typeFromMIMEType:@"application/x-www-form-urlencoded"];
  v9 = [typeCopy conformsToType:v8];

  if (v9)
  {
    dictionary = [(WFDictionaryContentItem *)self dictionary];
    allKeys = [dictionary allKeys];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __75__WFDictionaryContentItem_generateFileRepresentationForType_options_error___block_invoke;
    v26[3] = &unk_278345118;
    v27 = dictionary;
    v12 = dictionary;
    v13 = [allKeys if_map:v26];

    v14 = WFHTTPBodyFromQueryItems(v13);
    name = [(WFContentItem *)self name];
    v16 = [WFFileRepresentation fileWithData:v14 ofType:typeCopy proposedFilename:name];

LABEL_11:
    goto LABEL_12;
  }

  v17 = [MEMORY[0x277D79F68] typeFromMIMEType:@"application/json"];
  v18 = [typeCopy conformsToType:v17];

  if (v18)
  {
    v19 = MEMORY[0x277CCAAA0];
    dictionary2 = [(WFDictionaryContentItem *)self dictionary];
    v21 = WFJavaScriptRepresentationFromPropertyList(dictionary2, 0);
    v22 = WFJSONSerializable(v21);
    v12 = [v19 dataWithJSONObject:v22 options:0 error:error];

    goto LABEL_8;
  }

  if (([typeCopy conformsToString:@"com.apple.property-list"] & 1) != 0 || objc_msgSend(typeCopy, "conformsToString:", @"com.apple.plist"))
  {
    v23 = MEMORY[0x277CCAC58];
    dictionary2 = [(WFDictionaryContentItem *)self dictionary];
    v21 = WFPlistSerializable(dictionary2);
    v12 = [v23 dataWithPropertyList:v21 format:100 options:0 error:error];
LABEL_8:

    if (v12)
    {
      name2 = [(WFContentItem *)self name];
      v16 = [WFFileRepresentation fileWithData:v12 ofType:typeCopy proposedFilename:name2];
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_11;
  }

  v16 = 0;
LABEL_12:

  return v16;
}

id __75__WFDictionaryContentItem_generateFileRepresentationForType_options_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD18];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKey:v4];
  v6 = [v2 queryItemWithName:v4 value:v5];

  return v6;
}

- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error
{
  if (objc_opt_class() == class)
  {
    internalRepresentationType = [(WFContentItem *)self internalRepresentationType];
    v10 = [MEMORY[0x277D79F68] typeFromMIMEType:@"application/x-www-form-urlencoded"];
    v11 = [internalRepresentationType conformsToType:v10];

    if (v11)
    {
      v12 = [MEMORY[0x277D79F68] typeFromMIMEType:@"application/x-www-form-urlencoded"];
      v13 = [(WFContentItem *)self fileRepresentationForType:v12];

      v14 = objc_alloc(MEMORY[0x277CCACA8]);
      data = [v13 data];
      v16 = [v14 initWithData:data encoding:4];

      v17 = [MEMORY[0x277CBEBC0] dc_queryItemsFromQueryString:v16];
      v18 = [[WFOrderedDictionary alloc] initWithQueryItems:v17];
      v8 = [WFObjectRepresentation object:v18];

LABEL_26:
      goto LABEL_27;
    }

    v23 = [MEMORY[0x277D79F68] typeFromMIMEType:@"application/json"];
    v24 = [internalRepresentationType conformsToType:v23];

    if (v24)
    {
      v25 = [MEMORY[0x277D79F68] typeFromMIMEType:@"application/json"];
      v13 = [(WFContentItem *)self fileRepresentationForType:v25];

      v26 = MEMORY[0x277CCAAA0];
      data2 = [v13 data];
      v28 = [v26 JSONObjectWithData:data2 options:0 error:error];
      v16 = WFPropertyListRepresentationFromJSON(v28);

      if (v16)
      {
LABEL_13:
        v8 = [WFObjectRepresentation object:v16];
LABEL_27:

        goto LABEL_28;
      }
    }

    else
    {
      if (([internalRepresentationType conformsToString:@"com.apple.property-list"] & 1) == 0 && !objc_msgSend(internalRepresentationType, "conformsToString:", @"com.apple.plist"))
      {
        v8 = 0;
        goto LABEL_29;
      }

      v29 = [MEMORY[0x277D79F68] typeWithString:@"com.apple.property-list"];
      v30 = [(WFContentItem *)self fileRepresentationForType:v29];
      v31 = v30;
      if (v30)
      {
        v13 = v30;
      }

      else
      {
        v38 = [MEMORY[0x277D79F68] typeWithString:@"com.apple.plist"];
        v13 = [(WFContentItem *)self fileRepresentationForType:v38];
      }

      v39 = MEMORY[0x277CCAC58];
      data3 = [v13 data];
      v16 = [v39 propertyListWithData:data3 options:0 format:0 error:error];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_13;
      }
    }

    v8 = 0;
    goto LABEL_27;
  }

  if (objc_opt_class() != class)
  {
    v8 = 0;
    goto LABEL_30;
  }

  internalRepresentationType = [(WFDictionaryContentItem *)self preferredFileType];
  if (([internalRepresentationType conformsToString:@"com.apple.property-list"] & 1) != 0 || objc_msgSend(internalRepresentationType, "conformsToString:", @"com.apple.plist"))
  {
    dictionary = [(WFDictionaryContentItem *)self dictionary];
    v13 = WFPlistSerializable(dictionary);

    if (v13)
    {
      v20 = MEMORY[0x277CCAC58];
      dictionary2 = [(WFDictionaryContentItem *)self dictionary];
      v22 = WFPlistSerializable(dictionary2);
      v16 = [v20 dataWithPropertyList:v22 format:100 options:0 error:error];

      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }
  }

  else
  {
    dictionary3 = [(WFDictionaryContentItem *)self dictionary];
    v33 = WFJavaScriptRepresentationFromPropertyList(dictionary3, 0);
    v13 = WFJSONSerializable(v33);

    if (v13)
    {
      v34 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v13 options:0 error:error];
      if (!v34)
      {
LABEL_24:
        v17 = [v13 description];
        v8 = [WFObjectRepresentation object:v17];
        v16 = 0;
        goto LABEL_26;
      }

      v16 = v34;
LABEL_21:
      v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v16 encoding:4];
      if (v35)
      {
        v17 = v35;
        v8 = [WFObjectRepresentation object:v35];
      }

      else
      {
        v36 = [v13 description];
        v8 = [WFObjectRepresentation object:v36];

        v17 = 0;
      }

      goto LABEL_26;
    }
  }

  v8 = 0;
LABEL_28:

LABEL_29:
LABEL_30:

  return v8;
}

- (WFFileType)preferredFileType
{
  dictionary = [(WFDictionaryContentItem *)self dictionary];
  wf_preferredFileType = [dictionary wf_preferredFileType];
  v5 = wf_preferredFileType;
  if (wf_preferredFileType)
  {
    preferredFileType = wf_preferredFileType;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = WFDictionaryContentItem;
    preferredFileType = [(WFContentItem *)&v9 preferredFileType];
  }

  v7 = preferredFileType;

  return v7;
}

- (NSDictionary)dictionary
{
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [(WFContentItem *)self getRepresentationsForType:v3 error:0];
  firstObject = [v4 firstObject];
  object = [firstObject object];

  return object;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Dictionaries", @"Dictionaries");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Dictionary", @"Dictionary");
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
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [MEMORY[0x277D79F68] typeFromMIMEType:@"application/json"];
  v4 = [MEMORY[0x277D79F68] typeFromMIMEType:@"application/x-www-form-urlencoded"];
  v5 = [MEMORY[0x277D79F68] typeWithString:@"com.apple.plist"];
  v6 = [MEMORY[0x277D79F68] typeWithString:@"com.apple.property-list"];
  v7 = [WFObjectType typeWithClass:objc_opt_class()];
  v8 = [v2 orderedSetWithObjects:{v3, v4, v5, v6, v7, 0}];

  return v8;
}

+ (id)itemsWithPropertyListObject:(id)object preferredDictionaryType:(id)type topLevelName:(id)name attributionSet:(id)set
{
  if (object)
  {
    setCopy = set;
    nameCopy = name;
    typeCopy = type;
    objectCopy = object;
    v13 = objc_opt_new();
    WFAddDictionaryObjectToItemArray(objectCopy, v13, typeCopy, nameCopy, setCopy);
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  return v13;
}

+ (id)itemsWithPlistFileRepresentation:(id)representation attributionSet:(id)set
{
  setCopy = set;
  representationCopy = representation;
  inputStream = [representationCopy inputStream];
  [inputStream open];
  v9 = [MEMORY[0x277CCAC58] propertyListWithStream:inputStream options:0 format:0 error:0];
  [inputStream close];
  v10 = [MEMORY[0x277D79F68] typeWithString:@"com.apple.property-list"];
  wfName = [representationCopy wfName];

  v12 = [self itemsWithPropertyListObject:v9 preferredDictionaryType:v10 topLevelName:wfName attributionSet:setCopy];

  return v12;
}

+ (id)itemsWithJSONFileRepresentation:(id)representation attributionSet:(id)set
{
  v19[1] = *MEMORY[0x277D85DE8];
  setCopy = set;
  representationCopy = representation;
  inputStream = [representationCopy inputStream];
  [inputStream open];
  v9 = [MEMORY[0x277CCAAA0] JSONObjectWithStream:inputStream options:4 error:0];
  [inputStream close];
  if (v9)
  {
    v10 = [MEMORY[0x277D79F68] typeFromMIMEType:@"application/json"];
    wfName = [representationCopy wfName];

    v12 = [self itemsWithPropertyListObject:v9 preferredDictionaryType:v10 topLevelName:wfName attributionSet:setCopy];
  }

  else
  {
    fileURL = [representationCopy fileURL];
    v14 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E20]];
    wfName2 = [representationCopy wfName];

    v16 = [WFFileRepresentation fileWithURL:fileURL options:5 ofType:v14 proposedFilename:wfName2];

    v17 = [WFContentItem itemWithFile:v16 attributionSet:setCopy];

    v19[0] = v17;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  }

  return v12;
}

+ (id)propertyBuilders
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = WFLocalizedContentPropertyNameMarker(@"Keys");
  v3 = [WFContentPropertyBuilder block:&__block_literal_global_1644 name:v2 class:objc_opt_class()];
  v4 = [v3 multipleValues:1];
  v10[0] = v4;
  v5 = WFLocalizedContentPropertyNameMarker(@"Values");
  v6 = [WFContentPropertyBuilder block:&__block_literal_global_7 name:v5 class:objc_opt_class()];
  v7 = [v6 multipleValues:1];
  v10[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  return v8;
}

void __43__WFDictionaryContentItem_propertyBuilders__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v17 = a4;
  v6 = [v5 preferredFileType];
  v7 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [v5 dictionary];
  v9 = [v8 allValues];

  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [v5 attributionSet];
        v16 = [WFDictionaryContentItem itemsWithPropertyListObject:v14 preferredDictionaryType:v6 attributionSet:v15];
        [v7 addObjectsFromArray:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v17[2](v17, v7);
}

void __43__WFDictionaryContentItem_propertyBuilders__block_invoke(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = a4;
  v8 = [a2 dictionary];
  v7 = [v8 allKeys];
  (a4)[2](v6, v7);
}

@end