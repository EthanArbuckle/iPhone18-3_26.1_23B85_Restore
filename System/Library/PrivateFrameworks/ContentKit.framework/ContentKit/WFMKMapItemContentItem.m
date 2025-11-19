@interface WFMKMapItemContentItem
+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)a3;
+ (id)contentCategories;
+ (id)itemWithMapItem:(id)a3 fromQueryLocation:(id)a4 origin:(id)a5 disclosureLevel:(unint64_t)a6;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)outputTypes;
+ (id)ownedTypes;
- (BOOL)canGenerateRepresentationForType:(id)a3;
- (BOOL)getListAltText:(id)a3;
- (BOOL)getListSubtitle:(id)a3;
- (MKMapItem)mapItem;
- (void)generateObjectRepresentations:(id)a3 options:(id)a4 forClass:(Class)a5;
@end

@implementation WFMKMapItemContentItem

- (BOOL)canGenerateRepresentationForType:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToClass:objc_opt_class()])
  {
    v5 = [(WFMKMapItemContentItem *)self mapItem];
    v6 = [v5 url];
    v7 = v6 != 0;

LABEL_9:
    goto LABEL_10;
  }

  if ([v4 isEqualToClass:objc_opt_class()])
  {
    v5 = [(WFMKMapItemContentItem *)self mapItem];
    v8 = [v5 phoneNumber];
    if (v8)
    {
      v9 = [(WFMKMapItemContentItem *)self mapItem];
      v10 = [v9 phoneNumber];
      v7 = [WFPhoneNumber stringContainsPhoneNumbers:v10];
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_9;
  }

  v12.receiver = self;
  v12.super_class = WFMKMapItemContentItem;
  v7 = [(WFContentItem *)&v12 canGenerateRepresentationForType:v4];
LABEL_10:

  return v7;
}

- (void)generateObjectRepresentations:(id)a3 options:(id)a4 forClass:(Class)a5
{
  v65[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (objc_opt_class() == a5)
  {
    v17 = [(WFMKMapItemContentItem *)self mapItem];
    v18 = [v17 isCurrentLocation];

    if (!v18)
    {
      v27 = [(WFMKMapItemContentItem *)self mapItem];
      v19 = [v27 placemark];

      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __73__WFMKMapItemContentItem_generateObjectRepresentations_options_forClass___block_invoke;
      v53[3] = &unk_278349CF8;
      v53[4] = self;
      v54 = v7;
      [DCMapsLink createMapsLinkWithPlacemark:v19 location:0 streetAddress:0 shiftingLocationIfNecessary:0 completionHandler:v53];

      goto LABEL_16;
    }

    v19 = objc_opt_new();
    [v19 setSearchQuery:&stru_282F53518];
    v20 = [(WFContentItem *)self name];
    v21 = MEMORY[0x277CCACA8];
    v22 = WFLocalizedString(@"Open %@ in Maps");
    v23 = [v21 stringWithFormat:v22, v20];
    v24 = [WFObjectRepresentation object:v19 named:v23];
    v65[0] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:1];
    (*(v7 + 2))(v7, v25, 0);

    goto LABEL_9;
  }

  if (objc_opt_class() == a5)
  {
    v12 = [(WFMKMapItemContentItem *)self mapItem];
    v13 = [v12 url];
    v14 = [WFObjectRepresentation object:v13];
    v64 = v14;
    v15 = MEMORY[0x277CBEA60];
    v16 = &v64;
    goto LABEL_11;
  }

  if (objc_opt_class() == a5)
  {
    v28 = [(WFMKMapItemContentItem *)self mapItem];
    v29 = [v28 phoneNumber];
    v52 = 0;
    v19 = [WFPhoneNumber phoneNumbersInString:v29 error:&v52];
    v30 = v52;

    v20 = [WFObjectRepresentation objects:v19];
    (*(v7 + 2))(v7, v20, v30);

    goto LABEL_15;
  }

  v8 = NSStringFromClass(a5);
  v9 = [@"CLPlacemark" isEqualToString:v8];

  if (!v9)
  {
    if (objc_opt_class() != a5)
    {
      if (objc_opt_class() != a5)
      {
        v12 = [objc_opt_class() badCoercionErrorForObjectClass:a5];
        (*(v7 + 2))(v7, 0, v12);
        goto LABEL_12;
      }

      v41 = [(WFMKMapItemContentItem *)self mapItem];
      v42 = [v41 placemark];
      v19 = [WFStreetAddress streetAddressWithPlacemark:v42 label:0];

      v43 = [v19 addressString];
      v44 = [(WFMKMapItemContentItem *)self mapItem];
      v45 = [v44 name];

      if (v45 && ([v19 street], v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "isEqualToString:", v45), v46, (v47 & 1) == 0))
      {
        v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", v45, v43];
      }

      else
      {
        v48 = v43;
      }

      v49 = v48;
      v50 = [WFObjectRepresentation object:v48 named:v45];
      v55 = v50;
      v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
      (*(v7 + 2))(v7, v51, 0);

LABEL_16:
      goto LABEL_17;
    }

    v38 = [(WFMKMapItemContentItem *)self mapItem];
    v39 = [v38 placemark];
    v19 = [WFStreetAddress streetAddressWithPlacemark:v39 label:0];

    v20 = [(WFContentItem *)self name];
    v22 = [WFObjectRepresentation object:v19 named:v20];
    v56 = v22;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
    (*(v7 + 2))(v7, v40, 0);

LABEL_9:
LABEL_15:

    goto LABEL_16;
  }

  v10 = [(WFMKMapItemContentItem *)self mapItem];
  v11 = [v10 placemark];

  if (v11)
  {
    v12 = [(WFMKMapItemContentItem *)self mapItem];
    v13 = [v12 placemark];
    v14 = [WFObjectRepresentation object:v13];
    v57 = v14;
    v15 = MEMORY[0x277CBEA60];
    v16 = &v57;
LABEL_11:
    v26 = [v15 arrayWithObjects:v16 count:1];
    (*(v7 + 2))(v7, v26, 0);

LABEL_12:
    goto LABEL_17;
  }

  v31 = getWFContentGraphLogObject();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v32 = [(WFMKMapItemContentItem *)self mapItem];
    *buf = 136315394;
    v61 = "[WFMKMapItemContentItem generateObjectRepresentations:options:forClass:]";
    v62 = 2112;
    v63 = v32;
    _os_log_impl(&dword_21E1BD000, v31, OS_LOG_TYPE_ERROR, "%s No placemark on map item: %@", buf, 0x16u);
  }

  v33 = MEMORY[0x277CCA9B8];
  v34 = *MEMORY[0x277CCA050];
  v58 = *MEMORY[0x277CCA450];
  v35 = WFLocalizedString(@"Unable to find location");
  v59 = v35;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
  v37 = [v33 errorWithDomain:v34 code:0x7FFFFFFFFFFFFFFFLL userInfo:v36];
  (*(v7 + 2))(v7, 0, v37);

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

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Places", @"Places");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Place", @"Place");
  v5 = [v3 localize:v4];

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

+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v4, "isEqualToClass:", objc_opt_class()))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___WFMKMapItemContentItem;
    v5 = objc_msgSendSuper2(&v7, sel_supportedTypeMustBeDeterminedByInstance_, v4);
  }

  return v5;
}

+ (id)itemWithMapItem:(id)a3 fromQueryLocation:(id)a4 origin:(id)a5 disclosureLevel:(unint64_t)a6
{
  v10 = a4;
  v11 = [a1 itemWithObject:a3 origin:a5 disclosureLevel:a6];
  [v11 setQueryLocation:v10];

  return v11;
}

- (BOOL)getListAltText:(id)a3
{
  v4 = a3;
  v5 = [(WFMKMapItemContentItem *)self queryLocation];

  if (v5)
  {
    v6 = [(WFMKMapItemContentItem *)self mapItem];
    v7 = [v6 placemark];
    v8 = [v7 location];

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
    if (v4)
    {
      v12 = [(WFMKMapItemContentItem *)self queryLocation];
      [v12 distanceFromLocation:v8];
      v13 = [v11 stringFromDistance:?];
      v4[2](v4, v13);
    }
  }

  return v5 != 0;
}

- (BOOL)getListSubtitle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__WFMKMapItemContentItem_ChooseFromList__getListSubtitle___block_invoke;
    v7[3] = &unk_278349CA8;
    v8 = v4;
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