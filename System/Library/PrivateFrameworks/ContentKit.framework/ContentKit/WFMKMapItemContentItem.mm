@interface WFMKMapItemContentItem
+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)instance;
+ (id)contentCategories;
+ (id)itemWithMapItem:(id)item fromQueryLocation:(id)location origin:(id)origin disclosureLevel:(unint64_t)level;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)outputTypes;
+ (id)ownedTypes;
- (BOOL)canGenerateRepresentationForType:(id)type;
- (BOOL)getListAltText:(id)text;
- (BOOL)getListSubtitle:(id)subtitle;
- (MKMapItem)mapItem;
- (void)generateObjectRepresentations:(id)representations options:(id)options forClass:(Class)class;
@end

@implementation WFMKMapItemContentItem

- (BOOL)canGenerateRepresentationForType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToClass:objc_opt_class()])
  {
    mapItem = [(WFMKMapItemContentItem *)self mapItem];
    v6 = [mapItem url];
    v7 = v6 != 0;

LABEL_9:
    goto LABEL_10;
  }

  if ([typeCopy isEqualToClass:objc_opt_class()])
  {
    mapItem = [(WFMKMapItemContentItem *)self mapItem];
    phoneNumber = [mapItem phoneNumber];
    if (phoneNumber)
    {
      mapItem2 = [(WFMKMapItemContentItem *)self mapItem];
      phoneNumber2 = [mapItem2 phoneNumber];
      v7 = [WFPhoneNumber stringContainsPhoneNumbers:phoneNumber2];
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_9;
  }

  v12.receiver = self;
  v12.super_class = WFMKMapItemContentItem;
  v7 = [(WFContentItem *)&v12 canGenerateRepresentationForType:typeCopy];
LABEL_10:

  return v7;
}

- (void)generateObjectRepresentations:(id)representations options:(id)options forClass:(Class)class
{
  v65[1] = *MEMORY[0x277D85DE8];
  representationsCopy = representations;
  if (objc_opt_class() == class)
  {
    mapItem = [(WFMKMapItemContentItem *)self mapItem];
    isCurrentLocation = [mapItem isCurrentLocation];

    if (!isCurrentLocation)
    {
      mapItem2 = [(WFMKMapItemContentItem *)self mapItem];
      placemark = [mapItem2 placemark];

      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __73__WFMKMapItemContentItem_generateObjectRepresentations_options_forClass___block_invoke;
      v53[3] = &unk_278349CF8;
      v53[4] = self;
      v54 = representationsCopy;
      [DCMapsLink createMapsLinkWithPlacemark:placemark location:0 streetAddress:0 shiftingLocationIfNecessary:0 completionHandler:v53];

      goto LABEL_16;
    }

    placemark = objc_opt_new();
    [placemark setSearchQuery:&stru_282F53518];
    name = [(WFContentItem *)self name];
    v21 = MEMORY[0x277CCACA8];
    v22 = WFLocalizedString(@"Open %@ in Maps");
    v23 = [v21 stringWithFormat:v22, name];
    v24 = [WFObjectRepresentation object:placemark named:v23];
    v65[0] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:1];
    (*(representationsCopy + 2))(representationsCopy, v25, 0);

    goto LABEL_9;
  }

  if (objc_opt_class() == class)
  {
    mapItem3 = [(WFMKMapItemContentItem *)self mapItem];
    placemark5 = [mapItem3 url];
    v14 = [WFObjectRepresentation object:placemark5];
    v64 = v14;
    v15 = MEMORY[0x277CBEA60];
    v16 = &v64;
    goto LABEL_11;
  }

  if (objc_opt_class() == class)
  {
    mapItem4 = [(WFMKMapItemContentItem *)self mapItem];
    phoneNumber = [mapItem4 phoneNumber];
    v52 = 0;
    placemark = [WFPhoneNumber phoneNumbersInString:phoneNumber error:&v52];
    v30 = v52;

    name = [WFObjectRepresentation objects:placemark];
    (*(representationsCopy + 2))(representationsCopy, name, v30);

    goto LABEL_15;
  }

  v8 = NSStringFromClass(class);
  v9 = [@"CLPlacemark" isEqualToString:v8];

  if (!v9)
  {
    if (objc_opt_class() != class)
    {
      if (objc_opt_class() != class)
      {
        mapItem3 = [objc_opt_class() badCoercionErrorForObjectClass:class];
        (*(representationsCopy + 2))(representationsCopy, 0, mapItem3);
        goto LABEL_12;
      }

      mapItem5 = [(WFMKMapItemContentItem *)self mapItem];
      placemark2 = [mapItem5 placemark];
      placemark = [WFStreetAddress streetAddressWithPlacemark:placemark2 label:0];

      addressString = [placemark addressString];
      mapItem6 = [(WFMKMapItemContentItem *)self mapItem];
      name2 = [mapItem6 name];

      if (name2 && ([placemark street], v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "isEqualToString:", name2), v46, (v47 & 1) == 0))
      {
        v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", name2, addressString];
      }

      else
      {
        v48 = addressString;
      }

      v49 = v48;
      v50 = [WFObjectRepresentation object:v48 named:name2];
      v55 = v50;
      v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
      (*(representationsCopy + 2))(representationsCopy, v51, 0);

LABEL_16:
      goto LABEL_17;
    }

    mapItem7 = [(WFMKMapItemContentItem *)self mapItem];
    placemark3 = [mapItem7 placemark];
    placemark = [WFStreetAddress streetAddressWithPlacemark:placemark3 label:0];

    name = [(WFContentItem *)self name];
    v22 = [WFObjectRepresentation object:placemark named:name];
    v56 = v22;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
    (*(representationsCopy + 2))(representationsCopy, v40, 0);

LABEL_9:
LABEL_15:

    goto LABEL_16;
  }

  mapItem8 = [(WFMKMapItemContentItem *)self mapItem];
  placemark4 = [mapItem8 placemark];

  if (placemark4)
  {
    mapItem3 = [(WFMKMapItemContentItem *)self mapItem];
    placemark5 = [mapItem3 placemark];
    v14 = [WFObjectRepresentation object:placemark5];
    v57 = v14;
    v15 = MEMORY[0x277CBEA60];
    v16 = &v57;
LABEL_11:
    v26 = [v15 arrayWithObjects:v16 count:1];
    (*(representationsCopy + 2))(representationsCopy, v26, 0);

LABEL_12:
    goto LABEL_17;
  }

  v31 = getWFContentGraphLogObject();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    mapItem9 = [(WFMKMapItemContentItem *)self mapItem];
    *buf = 136315394;
    v61 = "[WFMKMapItemContentItem generateObjectRepresentations:options:forClass:]";
    v62 = 2112;
    v63 = mapItem9;
    _os_log_impl(&dword_21E1BD000, v31, OS_LOG_TYPE_ERROR, "%s No placemark on map item: %@", buf, 0x16u);
  }

  v33 = MEMORY[0x277CCA9B8];
  v34 = *MEMORY[0x277CCA050];
  v58 = *MEMORY[0x277CCA450];
  v35 = WFLocalizedString(@"Unable to find location");
  v59 = v35;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
  v37 = [v33 errorWithDomain:v34 code:0x7FFFFFFFFFFFFFFFLL userInfo:v36];
  (*(representationsCopy + 2))(representationsCopy, 0, v37);

LABEL_17:
}

void __73__WFMKMapItemContentItem_generateObjectRepresentations_options_forClass___block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 name];
  v6 = *(a1 + 40);
  v7 = MEMORY[0x277CCACA8];
  v8 = WFLocalizedString(@"Open %@ in Maps");
  v9 = [v7 stringWithFormat:v8, v5];
  v10 = [WFObjectRepresentation object:v4 named:v9];

  v12[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  (*(v6 + 16))(v6, v11, 0);
}

- (MKMapItem)mapItem
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v3 = getMKMapItemClass_softClass;
  v11 = getMKMapItemClass_softClass;
  if (!getMKMapItemClass_softClass)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getMKMapItemClass_block_invoke;
    v7[3] = &unk_27834A178;
    v7[4] = &v8;
    __getMKMapItemClass_block_invoke(v7);
    v3 = v9[3];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  v5 = [(WFContentItem *)self objectForClass:v3];

  return v5;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Places", @"Places");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Place", @"Place");
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
  v4 = [WFObjectType typeWithClass:objc_opt_class()];
  v5 = [WFObjectType typeWithClassName:@"CLPlacemark" frameworkName:@"CoreLocation" location:0];
  v6 = [WFObjectType typeWithClass:objc_opt_class()];
  v7 = [WFObjectType typeWithClass:objc_opt_class()];
  v8 = [WFObjectType typeWithClass:objc_opt_class()];
  v9 = [v2 orderedSetWithObjects:{v3, v4, v5, v6, v7, v8, 0}];

  return v9;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClassName:@"MKMapItem" frameworkName:@"MapKit" location:2];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)instance
{
  instanceCopy = instance;
  if ([instanceCopy isEqualToClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(instanceCopy, "isEqualToClass:", objc_opt_class()))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___WFMKMapItemContentItem;
    v5 = objc_msgSendSuper2(&v7, sel_supportedTypeMustBeDeterminedByInstance_, instanceCopy);
  }

  return v5;
}

+ (id)itemWithMapItem:(id)item fromQueryLocation:(id)location origin:(id)origin disclosureLevel:(unint64_t)level
{
  locationCopy = location;
  v11 = [self itemWithObject:item origin:origin disclosureLevel:level];
  [v11 setQueryLocation:locationCopy];

  return v11;
}

- (BOOL)getListAltText:(id)text
{
  textCopy = text;
  queryLocation = [(WFMKMapItemContentItem *)self queryLocation];

  if (queryLocation)
  {
    mapItem = [(WFMKMapItemContentItem *)self mapItem];
    placemark = [mapItem placemark];
    location = [placemark location];

    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v9 = getMKDistanceFormatterClass_softClass;
    v19 = getMKDistanceFormatterClass_softClass;
    if (!getMKDistanceFormatterClass_softClass)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __getMKDistanceFormatterClass_block_invoke;
      v15[3] = &unk_27834A178;
      v15[4] = &v16;
      __getMKDistanceFormatterClass_block_invoke(v15);
      v9 = v17[3];
    }

    v10 = v9;
    _Block_object_dispose(&v16, 8);
    v11 = objc_alloc_init(v9);
    [v11 setUnitStyle:1];
    if (textCopy)
    {
      queryLocation2 = [(WFMKMapItemContentItem *)self queryLocation];
      [queryLocation2 distanceFromLocation:location];
      v13 = [v11 stringFromDistance:?];
      textCopy[2](textCopy, v13);
    }
  }

  return queryLocation != 0;
}

- (BOOL)getListSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  v5 = subtitleCopy;
  if (subtitleCopy)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__WFMKMapItemContentItem_ChooseFromList__getListSubtitle___block_invoke;
    v7[3] = &unk_278349CA8;
    v8 = subtitleCopy;
    [(WFContentItem *)self getObjectRepresentation:v7 forClass:objc_opt_class()];
  }

  return 1;
}

void __58__WFMKMapItemContentItem_ChooseFromList__getListSubtitle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 shortAddressString];
  (*(*(a1 + 32) + 16))();
}

@end