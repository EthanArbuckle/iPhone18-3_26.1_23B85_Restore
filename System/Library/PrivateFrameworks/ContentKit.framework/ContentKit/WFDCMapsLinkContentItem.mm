@interface WFDCMapsLinkContentItem
+ (id)contentCategories;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)outputTypes;
+ (id)ownedTypes;
- (NSDictionary)additionalRepresentationsForSerialization;
- (id)mapsLink;
- (void)generateObjectRepresentation:(id)representation options:(id)options forClass:(Class)class;
@end

@implementation WFDCMapsLinkContentItem

- (void)generateObjectRepresentation:(id)representation options:(id)options forClass:(Class)class
{
  representationCopy = representation;
  optionsCopy = options;
  if (objc_opt_class() == class)
  {
    mapsLink = [(WFDCMapsLinkContentItem *)self mapsLink];
    mapsAppURL = [mapsLink mapsAppURL];
    v19 = WFLocalizedString(@"Apple Maps URL");
    representationCopy[2](representationCopy, mapsAppURL, v19, 0);

LABEL_9:
    goto LABEL_26;
  }

  v10 = NSStringFromClass(class);
  v11 = [@"MKMapItem" isEqualToString:v10];

  if (!v11)
  {
    mapsLink = [objc_opt_class() badCoercionErrorForObjectClass:class];
    (representationCopy)[2](representationCopy, 0, 0, mapsLink);
    goto LABEL_9;
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x2050000000;
  v12 = getMKLocalSearchRequestClass_softClass;
  v48 = getMKLocalSearchRequestClass_softClass;
  if (!getMKLocalSearchRequestClass_softClass)
  {
    v40 = MEMORY[0x277D85DD0];
    v41 = 3221225472;
    v42 = __getMKLocalSearchRequestClass_block_invoke;
    v43 = &unk_27834A178;
    v44 = &v45;
    __getMKLocalSearchRequestClass_block_invoke(&v40);
    v12 = v46[3];
  }

  v13 = v12;
  _Block_object_dispose(&v45, 8);
  v14 = objc_alloc_init(v12);
  mapsLink2 = [(WFDCMapsLinkContentItem *)self mapsLink];
  centerLocation = [mapsLink2 centerLocation];
  if (centerLocation)
  {
    [v14 setNaturalLanguageQuery:centerLocation];
  }

  else
  {
    mapsLink3 = [(WFDCMapsLinkContentItem *)self mapsLink];
    searchLocation = [mapsLink3 searchLocation];
    if (searchLocation)
    {
      [v14 setNaturalLanguageQuery:searchLocation];
    }

    else
    {
      mapsLink4 = [(WFDCMapsLinkContentItem *)self mapsLink];
      destinationAddress = [mapsLink4 destinationAddress];
      if (destinationAddress)
      {
        [v14 setNaturalLanguageQuery:destinationAddress];
      }

      else
      {
        mapsLink5 = [(WFDCMapsLinkContentItem *)self mapsLink];
        startAddress = [mapsLink5 startAddress];
        if (startAddress)
        {
          v24 = startAddress;
          [v14 setNaturalLanguageQuery:startAddress];
        }

        else
        {
          mapsLink6 = [(WFDCMapsLinkContentItem *)self mapsLink];
          searchNearQuery = [mapsLink6 searchNearQuery];
          if (searchNearQuery)
          {
            v26 = searchNearQuery;
            [v14 setNaturalLanguageQuery:searchNearQuery];
          }

          else
          {
            selfCopy = self;
            v26 = 0;
            mapsLink7 = [(WFDCMapsLinkContentItem *)selfCopy mapsLink];
            searchQuery = [mapsLink7 searchQuery];
            [v14 setNaturalLanguageQuery:searchQuery];
          }

          v24 = 0;
        }
      }
    }
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x2050000000;
  v28 = getMKLocalSearchClass_softClass;
  v48 = getMKLocalSearchClass_softClass;
  if (!getMKLocalSearchClass_softClass)
  {
    v40 = MEMORY[0x277D85DD0];
    v41 = 3221225472;
    v42 = __getMKLocalSearchClass_block_invoke;
    v43 = &unk_27834A178;
    v44 = &v45;
    __getMKLocalSearchClass_block_invoke(&v40);
    v28 = v46[3];
  }

  v29 = v28;
  _Block_object_dispose(&v45, 8);
  v30 = [[v28 alloc] initWithRequest:v14];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __73__WFDCMapsLinkContentItem_generateObjectRepresentation_options_forClass___block_invoke;
  v37[3] = &unk_278347A00;
  v38 = v14;
  v39 = representationCopy;
  v31 = v14;
  [v30 startWithCompletionHandler:v37];

LABEL_26:
}

void __73__WFDCMapsLinkContentItem_generateObjectRepresentation_options_forClass___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 mapItems];
  v8 = [v7 count];

  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = [v5 mapItems];
    v11 = [v10 firstObject];
    (*(v9 + 16))(v9, v11, 0, 0);
  }

  else
  {
    v12 = [v6 domain];
    v13 = getMKErrorDomain();
    if ([v12 isEqualToString:v13])
    {
      v14 = [v6 code];

      if (v14 == 4)
      {
        v15 = MEMORY[0x277CCA9B8];
        v16 = getMKErrorDomain();
        v24 = *MEMORY[0x277CCA470];
        v17 = WFLocalizedString(@"Location Not Found");
        v26[0] = v17;
        v25 = *MEMORY[0x277CCA450];
        v18 = MEMORY[0x277CCACA8];
        v19 = WFLocalizedString(@"The location (“%@”) could not be found using Maps local search.");
        v20 = [*(a1 + 32) naturalLanguageQuery];
        v21 = [v18 localizedStringWithFormat:v19, v20, v24, v25, v17];
        v26[1] = v21;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v24 count:2];
        v23 = [v15 errorWithDomain:v16 code:4 userInfo:v22];

        v6 = v23;
      }
    }

    else
    {
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (id)mapsLink
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

- (NSDictionary)additionalRepresentationsForSerialization
{
  v3 = objc_opt_new();
  mapsLink = [(WFDCMapsLinkContentItem *)self mapsLink];
  mapsAppURL = [mapsLink mapsAppURL];
  identifier = [*MEMORY[0x277CE1E90] identifier];
  [v3 setObject:mapsAppURL forKey:identifier];

  v9.receiver = self;
  v9.super_class = WFDCMapsLinkContentItem;
  additionalRepresentationsForSerialization = [(WFContentItem *)&v9 additionalRepresentationsForSerialization];
  [v3 addEntriesFromDictionary:additionalRepresentationsForSerialization];

  return v3;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Maps Links", @"Maps Links");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Maps Link", @"Maps Link");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)contentCategories
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"Location";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)outputTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [WFObjectType typeWithClassName:@"MKMapItem" frameworkName:@"MapKit" location:2];
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

@end