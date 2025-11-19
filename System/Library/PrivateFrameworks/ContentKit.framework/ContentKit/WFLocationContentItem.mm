@interface WFLocationContentItem
+ (id)contentCategories;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
+ (id)stringConversionBehavior;
- (BOOL)getListAltText:(id)a3;
- (BOOL)getListSubtitle:(id)a3;
- (BOOL)getListThumbnail:(id)a3 forSize:(CGSize)a4;
- (CLPlacemark)placemark;
- (id)richListTitle;
- (void)generateFileRepresentation:(id)a3 options:(id)a4 forType:(id)a5;
- (void)generateObjectRepresentations:(id)a3 options:(id)a4 forClass:(Class)a5;
- (void)getMKMapSnapshotImageForSize:(CGSize)a3 scale:(double)a4 completionHandler:(id)a5;
- (void)getMKMapSnapshotImageForSize:(CGSize)a3 scale:(double)a4 named:(id)a5 withCompletionHandler:(id)a6;
@end

@implementation WFLocationContentItem

- (BOOL)getListThumbnail:(id)a3 forSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__WFLocationContentItem_ChooseFromList__getListThumbnail_forSize___block_invoke;
    v10[3] = &unk_278347A98;
    v11 = v7;
    [(WFLocationContentItem *)self getMKMapSnapshotImageForSize:v10 scale:width completionHandler:height, 1.0];
  }

  return 1;
}

- (BOOL)getListAltText:(id)a3
{
  v4 = a3;
  v5 = [(WFContentItem *)self objectForClass:objc_opt_class()];
  v6 = [v5 localizedLabel];
  v7 = [v6 length];
  v8 = v7;
  if (v4 && v7)
  {
    v4[2](v4, v6);
  }

  return v8 != 0;
}

- (BOOL)getListSubtitle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__WFLocationContentItem_ChooseFromList__getListSubtitle___block_invoke;
    v7[3] = &unk_278349CA8;
    v8 = v4;
    [(WFContentItem *)self getObjectRepresentation:v7 forClass:objc_opt_class()];
  }

  return 1;
}

void __57__WFLocationContentItem_ChooseFromList__getListSubtitle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 addressString];
  (*(*(a1 + 32) + 16))();
}

- (void)generateFileRepresentation:(id)a3 options:(id)a4 forType:(id)a5
{
  v21 = a5;
  v7 = *MEMORY[0x277CE1E10];
  v8 = a3;
  if ([v21 conformsToUTType:v7])
  {
    v9 = [MEMORY[0x277D79F18] currentDevice];
    [v9 screenScale];
    v11 = v10;

    v12 = [MEMORY[0x277D79F18] currentDevice];
    [v12 screenBounds];
    v14 = v13;

    if (v14 > 500.0)
    {
      v14 = 500.0;
    }

    v15 = +[WFApplicationContext sharedContext];
    v16 = [v15 currentUserInterfaceType];

    if ([v16 isEqualToString:@"Watch"])
    {
      v11 = 2.0;
      v14 = 250.0;
    }

    v17 = MEMORY[0x277CCACA8];
    v18 = WFLocalizedString(@"Map of %@");
    v19 = [(WFContentItem *)self name];
    v20 = [v17 stringWithFormat:v18, v19];

    [(WFLocationContentItem *)self getMKMapSnapshotImageForSize:v20 scale:v8 named:v14 withCompletionHandler:v14, v11];
    v8 = v20;
  }

  else
  {
    v16 = [objc_opt_class() badCoercionErrorForType:v21];
    (*(v8 + 2))(v8, 0, v16);
  }
}

- (void)generateObjectRepresentations:(id)a3 options:(id)a4 forClass:(Class)a5
{
  v58[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (objc_opt_class() == a5)
  {
    v13 = [(WFContentItem *)self internalRepresentationType];
    if ([v13 conformsToClass:objc_opt_class()])
    {
      v14 = [(WFContentItem *)self objectForClass:objc_opt_class()];
      v15 = [WFStreetAddress streetAddressWithPlacemark:v14 label:0];
      if (v15)
      {
        v16 = v15;
        v17 = [WFObjectRepresentation object:v15];
        v58[0] = v17;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:1];
        v8[2](v8, v18, 0);

LABEL_31:
        goto LABEL_32;
      }
    }

    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __72__WFLocationContentItem_generateObjectRepresentations_options_forClass___block_invoke;
    v55[3] = &unk_278349C10;
    v56 = v8;
    [(WFContentItem *)self getObjectRepresentation:v55 forClass:getCLLocationClass_24982()];

LABEL_32:
    goto LABEL_33;
  }

  v10 = NSStringFromClass(a5);
  v11 = [@"CLLocation" isEqualToString:v10];

  if (v11)
  {
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __72__WFLocationContentItem_generateObjectRepresentations_options_forClass___block_invoke_3;
    v53[3] = &unk_278349C60;
    v54 = v8;
    [(WFContentItem *)self getObjectRepresentation:v53 forClass:getCLPlacemarkClass()];
    v12 = v54;
    goto LABEL_4;
  }

  v19 = NSStringFromClass(a5);
  v20 = [@"CLPlacemark" isEqualToString:v19];

  if (v20)
  {
    v13 = [(WFContentItem *)self internalRepresentationType];
    if ([v13 conformsToClass:{objc_msgSend(MEMORY[0x277D23928], "wf_placeDescriptorObjectClass")}])
    {
      v14 = -[WFContentItem objectForClass:](self, "objectForClass:", [MEMORY[0x277D23928] wf_placeDescriptorObjectClass]);
      v21 = [v14 properties];
      v22 = [v21 if_firstObjectPassingTest:&__block_literal_global_269];
      v23 = [v22 value];
      v24 = [v23 value];

      if (v24)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }

      v33 = v25;

      v30 = [WFObjectRepresentation object:v33];

      v57 = v30;
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
      v8[2](v8, v34, 0);
    }

    else if ([v13 conformsToClass:objc_opt_class()])
    {
      v14 = [(WFContentItem *)self objectForClass:objc_opt_class()];
      getCLGeocoderClass();
      v28 = objc_opt_new();
      v29 = [v14 addressString];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __72__WFLocationContentItem_generateObjectRepresentations_options_forClass___block_invoke_5;
      v51[3] = &unk_27834A430;
      v52 = v8;
      [v28 geocodeAddressString:v29 completionHandler:v51];

      v30 = v52;
    }

    else
    {
      v31 = [(WFContentItem *)self objectForClass:getCLLocationClass_24982()];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __72__WFLocationContentItem_generateObjectRepresentations_options_forClass___block_invoke_6;
      v48[3] = &unk_278349BE8;
      v49 = v31;
      v50 = v8;
      v14 = v31;
      [(WFContentItem *)self getObjectRepresentation:v48 forClass:objc_opt_class()];

      v30 = v50;
    }

    goto LABEL_30;
  }

  if ([MEMORY[0x277D23928] wf_placeDescriptorObjectClass] == a5)
  {
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __72__WFLocationContentItem_generateObjectRepresentations_options_forClass___block_invoke_7;
    v46[3] = &unk_278349C60;
    v47 = v8;
    [(WFContentItem *)self getObjectRepresentation:v46 forClass:getCLPlacemarkClass()];
    v12 = v47;
    goto LABEL_4;
  }

  if (objc_opt_class() == a5)
  {
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __72__WFLocationContentItem_generateObjectRepresentations_options_forClass___block_invoke_8;
    v44[3] = &unk_278349CA8;
    v45 = v8;
    [(WFContentItem *)self getObjectRepresentation:v44 forClass:objc_opt_class()];
    v12 = v45;
    goto LABEL_4;
  }

  v26 = NSStringFromClass(a5);
  v27 = [@"MKMapItem" isEqualToString:v26];

  if (v27)
  {
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __72__WFLocationContentItem_generateObjectRepresentations_options_forClass___block_invoke_9;
    v42[3] = &unk_278349CA8;
    v43 = v8;
    [(WFContentItem *)self getObjectRepresentation:v42 forClass:objc_opt_class()];
    v12 = v43;
    goto LABEL_4;
  }

  if (objc_opt_class() == a5)
  {
    v13 = [(WFContentItem *)self objectForClass:getCLPlacemarkClass()];
    v14 = [(WFContentItem *)self objectForClass:getCLLocationClass_24982()];
    v35 = [(WFContentItem *)self objectForClass:objc_opt_class()];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __72__WFLocationContentItem_generateObjectRepresentations_options_forClass___block_invoke_11;
    v39[3] = &unk_278349CF8;
    v40 = v35;
    v41 = v8;
    v30 = v35;
    [DCMapsLink createMapsLinkWithPlacemark:v13 location:v14 streetAddress:v30 shiftingLocationIfNecessary:1 completionHandler:v39];

LABEL_30:
    goto LABEL_31;
  }

  if (objc_opt_class() != a5)
  {
    v32 = [objc_opt_class() badCoercionErrorForObjectClass:a5];
    (v8)[2](v8, 0, v32);

    goto LABEL_33;
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __72__WFLocationContentItem_generateObjectRepresentations_options_forClass___block_invoke_12;
  v36[3] = &unk_278349BE8;
  v38 = v8;
  v37 = v9;
  [(WFContentItem *)self getObjectRepresentation:v36 forClass:objc_opt_class()];

  v12 = v38;
LABEL_4:

LABEL_33:
}

void __72__WFLocationContentItem_generateObjectRepresentations_options_forClass___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    getCLGeocoderClass();
    v4 = objc_opt_new();
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __72__WFLocationContentItem_generateObjectRepresentations_options_forClass___block_invoke_2;
    v5[3] = &unk_27834A430;
    v6 = *(a1 + 32);
    [v4 reverseGeocodeLocation:v3 completionHandler:v5];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __72__WFLocationContentItem_generateObjectRepresentations_options_forClass___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = v6;
  v8 = *(a1 + 32);
  if (v6)
  {
    v9 = [v6 location];
    v10 = [v7 name];
    v11 = [WFObjectRepresentation object:v9 named:v10];
    v13[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    (*(v8 + 16))(v8, v12, 0);
  }

  else
  {
    (*(v8 + 16))(v8, 0, a4);
  }
}

void __72__WFLocationContentItem_generateObjectRepresentations_options_forClass___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 firstObject];

  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v5 firstObject];
    v10 = [WFObjectRepresentation object:v9];
    v12[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    (*(v8 + 16))(v8, v11, 0);
  }

  else
  {
    (*(v8 + 16))(v8, 0, v6);
  }
}

void __72__WFLocationContentItem_generateObjectRepresentations_options_forClass___block_invoke_6(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 placemark];
    if (!v5)
    {
      v6 = objc_alloc(getMKPlacemarkClass_25029());
      [*(a1 + 32) coordinate];
      v8 = v7;
      v10 = v9;
      v11 = [v4 postalAddress];
      v5 = [v6 initWithCoordinate:v11 postalAddress:{v8, v10}];
    }

    v12 = *(a1 + 40);
    v13 = [WFObjectRepresentation object:v5];
    v15[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    (*(v12 + 16))(v12, v14, 0);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __72__WFLocationContentItem_generateObjectRepresentations_options_forClass___block_invoke_7(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [MEMORY[0x277D23950] placeDescriptorValueWithPlacemark:a2];
    v4 = *(a1 + 32);
    v5 = [v3 value];
    v6 = [WFObjectRepresentation object:v5];
    v9[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    (*(v4 + 16))(v4, v7, 0);
  }

  else
  {
    v8 = *(*(a1 + 32) + 16);

    v8();
  }
}

void __72__WFLocationContentItem_generateObjectRepresentations_options_forClass___block_invoke_8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = *(a1 + 32);
  if (a2)
  {
    v9 = [a2 addressString];
    v10 = [WFObjectRepresentation object:v9 named:v7];
    v12[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    (*(v8 + 16))(v8, v11, 0);
  }

  else
  {
    (*(v8 + 16))(v8, 0, a4);
  }
}

void __72__WFLocationContentItem_generateObjectRepresentations_options_forClass___block_invoke_9(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v10 = getMKLocalSearchRequestClass_softClass_25004;
    v27 = getMKLocalSearchRequestClass_softClass_25004;
    if (!getMKLocalSearchRequestClass_softClass_25004)
    {
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __getMKLocalSearchRequestClass_block_invoke_25005;
      v22 = &unk_27834A178;
      v23 = &v24;
      __getMKLocalSearchRequestClass_block_invoke_25005(&v19);
      v10 = v25[3];
    }

    v11 = v10;
    _Block_object_dispose(&v24, 8);
    v12 = objc_alloc_init(v10);
    v13 = [v7 addressString];
    [v12 setNaturalLanguageQuery:v13];

    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v14 = getMKLocalSearchClass_softClass_25006;
    v27 = getMKLocalSearchClass_softClass_25006;
    if (!getMKLocalSearchClass_softClass_25006)
    {
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __getMKLocalSearchClass_block_invoke_25007;
      v22 = &unk_27834A178;
      v23 = &v24;
      __getMKLocalSearchClass_block_invoke_25007(&v19);
      v14 = v25[3];
    }

    v15 = v14;
    _Block_object_dispose(&v24, 8);
    v16 = [[v14 alloc] initWithRequest:v12];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __72__WFLocationContentItem_generateObjectRepresentations_options_forClass___block_invoke_10;
    v17[3] = &unk_278349CD0;
    v18 = *(a1 + 32);
    [v16 startWithCompletionHandler:v17];
  }
}

void __72__WFLocationContentItem_generateObjectRepresentations_options_forClass___block_invoke_11(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 addressString];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = WFLocalizedStringWithKey(@"Location (default location name)", @"Location");
  }

  v8 = v7;

  v9 = *(a1 + 40);
  v10 = MEMORY[0x277CCACA8];
  v11 = WFLocalizedString(@"Open %@ in Maps");
  v12 = [v10 localizedStringWithFormat:v11, v8];
  v13 = [WFObjectRepresentation object:v4 named:v12];

  v15[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  (*(v9 + 16))(v9, v14, 0);
}

void __72__WFLocationContentItem_generateObjectRepresentations_options_forClass___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) permissionRequestor];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __72__WFLocationContentItem_generateObjectRepresentations_options_forClass___block_invoke_13;
    v5[3] = &unk_278349D48;
    v7 = *(a1 + 40);
    v6 = v3;
    [v4 allowContactsAccessWithCompletionHandler:v5];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __72__WFLocationContentItem_generateObjectRepresentations_options_forClass___block_invoke_13(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __72__WFLocationContentItem_generateObjectRepresentations_options_forClass___block_invoke_14;
    v8[3] = &unk_278349D20;
    v9 = *(a1 + 32);
    v4 = [a2 allContactsWithSortOrder:0 passingTest:v8];
    v5 = [WFObjectRepresentation objects:v4];
    (*(v2 + 16))(v2, v5, 0);
  }

  else
  {
    v6 = *(v2 + 16);
    v7 = *(a1 + 40);

    v6(v7);
  }
}

uint64_t __72__WFLocationContentItem_generateObjectRepresentations_options_forClass___block_invoke_14(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [a2 streetAddresses];
  if ([v3 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(a1 + 32);
          v10 = [*(*(&v13 + 1) + 8 * v8) value];
          LOBYTE(v9) = [v9 isEqual:v10];

          if (v9)
          {
            v11 = 1;
            goto LABEL_12;
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_12:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __72__WFLocationContentItem_generateObjectRepresentations_options_forClass___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 mapItems];
  v8 = [v7 count];

  v9 = *(a1 + 32);
  if (v8)
  {
    v10 = [v5 mapItems];
    v11 = [v10 firstObject];
    v12 = [WFObjectRepresentation object:v11];
    v14[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    (*(v9 + 16))(v9, v13, 0);
  }

  else
  {
    (*(v9 + 16))(v9, 0, v6);
  }
}

uint64_t __72__WFLocationContentItem_generateObjectRepresentations_options_forClass___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqualToString:@"placemark"];

  return v3;
}

void __72__WFLocationContentItem_generateObjectRepresentations_options_forClass___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = [v5 firstObject];
    v8 = [WFStreetAddress streetAddressWithPlacemark:v7 label:0];

    v9 = *(a1 + 32);
    v10 = [WFObjectRepresentation object:v8];
    v12[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    (*(v9 + 16))(v9, v11, 0);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)getMKMapSnapshotImageForSize:(CGSize)a3 scale:(double)a4 completionHandler:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__WFLocationContentItem_getMKMapSnapshotImageForSize_scale_completionHandler___block_invoke;
  v11[3] = &unk_278349BA0;
  v13 = width;
  v14 = height;
  v15 = a4;
  v12 = v9;
  v10 = v9;
  [(WFContentItem *)self getObjectRepresentation:v11 forClass:getCLLocationClass_24982()];
}

void __78__WFLocationContentItem_getMKMapSnapshotImageForSize_scale_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2050000000;
  v10 = getMKMapSnapshotOptionsClass_softClass;
  v43 = getMKMapSnapshotOptionsClass_softClass;
  if (!getMKMapSnapshotOptionsClass_softClass)
  {
    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = __getMKMapSnapshotOptionsClass_block_invoke;
    v38 = &unk_27834A178;
    v39 = &v40;
    __getMKMapSnapshotOptionsClass_block_invoke(&v35);
    v10 = v41[3];
  }

  v11 = v10;
  _Block_object_dispose(&v40, 8);
  v12 = objc_alloc_init(v10);
  [v7 coordinate];
  v14 = v13;
  v16 = v15;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v17 = getMKCoordinateRegionMakeWithDistanceSymbolLoc_ptr;
  v43 = getMKCoordinateRegionMakeWithDistanceSymbolLoc_ptr;
  if (!getMKCoordinateRegionMakeWithDistanceSymbolLoc_ptr)
  {
    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = __getMKCoordinateRegionMakeWithDistanceSymbolLoc_block_invoke;
    v38 = &unk_27834A178;
    v39 = &v40;
    v18 = MapKitLibrary_25009();
    v19 = dlsym(v18, "MKCoordinateRegionMakeWithDistance");
    *(v39[1] + 24) = v19;
    getMKCoordinateRegionMakeWithDistanceSymbolLoc_ptr = *(v39[1] + 24);
    v17 = v41[3];
  }

  _Block_object_dispose(&v40, 8);
  if (!v17)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"MKCoordinateRegion WFMKCoordinateRegionMakeWithDistance(CLLocationCoordinate2D, CLLocationDistance, CLLocationDistance)"}];
    [v31 handleFailureInFunction:v32 file:@"WFLocationContentItem.m" lineNumber:46 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v17(v14, v16, 1500.0, 1500.0);
  [v12 setRegion:?];
  [v12 setSize:{*(a1 + 40), *(a1 + 48)}];
  [v12 setScale:*(a1 + 56)];
  v20 = objc_alloc(getMKMapItemClass_25062());
  v21 = objc_alloc(getMKPlacemarkClass_25029());
  [v7 coordinate];
  v22 = [v21 initWithCoordinate:?];
  v23 = [v20 initWithPlacemark:v22];

  v40 = 0;
  v41 = &v40;
  v42 = 0x2050000000;
  v24 = getMKMapSnapshotCustomFeatureAnnotationClass_softClass;
  v43 = getMKMapSnapshotCustomFeatureAnnotationClass_softClass;
  if (!getMKMapSnapshotCustomFeatureAnnotationClass_softClass)
  {
    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = __getMKMapSnapshotCustomFeatureAnnotationClass_block_invoke;
    v38 = &unk_27834A178;
    v39 = &v40;
    __getMKMapSnapshotCustomFeatureAnnotationClass_block_invoke(&v35);
    v24 = v41[3];
  }

  v25 = v24;
  _Block_object_dispose(&v40, 8);
  v26 = [v24 customFeatureAnnotationForMapItem:v23];
  v44[0] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
  [v12 _setCustomFeatureAnnotations:v27];

  v40 = 0;
  v41 = &v40;
  v42 = 0x2050000000;
  v28 = getMKMapSnapshotterClass_softClass;
  v43 = getMKMapSnapshotterClass_softClass;
  if (!getMKMapSnapshotterClass_softClass)
  {
    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = __getMKMapSnapshotterClass_block_invoke;
    v38 = &unk_27834A178;
    v39 = &v40;
    __getMKMapSnapshotterClass_block_invoke(&v35);
    v28 = v41[3];
  }

  v29 = v28;
  _Block_object_dispose(&v40, 8);
  v30 = [[v28 alloc] initWithOptions:v12];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __78__WFLocationContentItem_getMKMapSnapshotImageForSize_scale_completionHandler___block_invoke_2;
  v33[3] = &unk_278349B78;
  v34 = *(a1 + 32);
  [v30 startWithCompletionHandler:v33];
}

void __78__WFLocationContentItem_getMKMapSnapshotImageForSize_scale_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = MEMORY[0x277D79FC8];
    v6 = a3;
    v7 = [v5 alloc];
    v8 = [v12 image];
    v9 = [v7 initWithPlatformImage:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

- (void)getMKMapSnapshotImageForSize:(CGSize)a3 scale:(double)a4 named:(id)a5 withCompletionHandler:(id)a6
{
  height = a3.height;
  width = a3.width;
  v11 = a5;
  v12 = a6;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __88__WFLocationContentItem_getMKMapSnapshotImageForSize_scale_named_withCompletionHandler___block_invoke;
  v15[3] = &unk_278349B50;
  v16 = v11;
  v17 = v12;
  v13 = v11;
  v14 = v12;
  [(WFLocationContentItem *)self getMKMapSnapshotImageForSize:v15 scale:width completionHandler:height, a4];
}

void __88__WFLocationContentItem_getMKMapSnapshotImageForSize_scale_named_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    v6 = a3;
    v10 = [a2 PNGRepresentation];
    v7 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E10]];
    v8 = [WFFileRepresentation fileWithData:v10 ofType:v7 proposedFilename:*(a1 + 32)];
    (*(v3 + 16))(v3, v8, v6);
  }

  else
  {
    v9 = *(v3 + 16);
    v10 = a3;
    v9(v3, 0);
  }
}

- (CLPlacemark)placemark
{
  CLPlacemarkClass = getCLPlacemarkClass();

  return [(WFContentItem *)self objectForClass:CLPlacemarkClass];
}

- (id)richListTitle
{
  v3 = [(WFLocationContentItem *)self placemark];
  if (v3)
  {
    v4 = [WFStreetAddress streetAddressWithPlacemark:v3 label:0];
    v5 = [v4 addressString];
    if (!v5)
    {
      v10.receiver = self;
      v10.super_class = WFLocationContentItem;
      v8 = [(WFContentItem *)&v10 richListTitle];
      v7 = 0;
      goto LABEL_9;
    }

    v6 = v5;
    v7 = v6;
  }

  else
  {
    v4 = [(WFContentItem *)self internalRepresentation];
    v7 = [v4 wfName];
    if ([v7 length])
    {
      v11.receiver = self;
      v11.super_class = WFLocationContentItem;
      v6 = [(WFContentItem *)&v11 richListTitle];
    }

    else
    {
      v6 = [(WFContentItem *)self name];
    }
  }

  v8 = v6;
LABEL_9:

  return v8;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Locations", @"Locations");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Location (singular)", @"Location");
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
  v4 = [WFObjectType typeWithClassName:@"MKMapItem" frameworkName:@"MapKit" location:2];
  v5 = [WFObjectType typeWithClass:objc_opt_class()];
  v6 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E10]];
  v7 = [WFObjectType typeWithClass:objc_opt_class()];
  v8 = [v2 orderedSetWithObjects:{v3, v4, v5, v6, v7, 0}];

  return v8;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [WFObjectType typeWithClassName:@"CLPlacemark" frameworkName:@"CoreLocation" location:0];
  v5 = [WFObjectType typeWithClassName:@"CLLocation" frameworkName:@"CoreLocation" location:0];
  v6 = +[WFObjectType typeWithClass:](WFObjectType, "typeWithClass:", [MEMORY[0x277D23928] wf_placeDescriptorObjectClass]);
  v7 = [v2 orderedSetWithObjects:{v3, v4, v5, v6, 0}];

  return v7;
}

+ (id)stringConversionBehavior
{
  v2 = WFLocalizedString(@"Full Street Address");
  v3 = [WFContentItemStringConversionBehavior coercingToStringWithDescription:v2];

  return v3;
}

+ (id)propertyBuilders
{
  v35[11] = *MEMORY[0x277D85DE8];
  v34 = WFLocalizedContentPropertyNameMarker(@"Latitude");
  v33 = [WFContentPropertyBuilder block:&__block_literal_global_177_25123 name:v34 class:objc_opt_class()];
  v35[0] = v33;
  v32 = WFLocalizedContentPropertyNameMarker(@"Longitude");
  v31 = [WFContentPropertyBuilder block:&__block_literal_global_186_25125 name:v32 class:objc_opt_class()];
  v35[1] = v31;
  v30 = WFLocalizedContentPropertyNameMarker(@"Altitude");
  v29 = [WFContentPropertyBuilder block:&__block_literal_global_191 name:v30 class:objc_opt_class()];
  v35[2] = v29;
  v28 = WFLocalizedContentPropertyNameMarker(@"Street");
  v27 = [WFContentPropertyBuilder block:&__block_literal_global_25121 name:v28 class:objc_opt_class()];
  v26 = [v27 userInfo:@"street"];
  v35[3] = v26;
  v25 = WFLocalizedContentPropertyNameMarker(@"City");
  v24 = [WFContentPropertyBuilder block:&__block_literal_global_25121 name:v25 class:objc_opt_class()];
  v23 = [v24 userInfo:@"city"];
  v35[4] = v23;
  v22 = WFLocalizedContentPropertyNameMarker(@"State");
  v21 = [WFContentPropertyBuilder block:&__block_literal_global_25121 name:v22 class:objc_opt_class()];
  v20 = [v21 userInfo:@"state"];
  v35[5] = v20;
  v19 = WFLocalizedContentPropertyNameMarker(@"ZIP Code");
  v18 = [WFContentPropertyBuilder block:&__block_literal_global_25121 name:v19 class:objc_opt_class()];
  v17 = [v18 userInfo:@"postalCode"];
  v35[6] = v17;
  v16 = [WFContentPropertyBuilder block:&__block_literal_global_25121 name:@"Country" class:objc_opt_class()];
  v15 = [v16 userInfo:@"country"];
  v14 = WFLocalizedContentPropertyNameMarker(@"Region");
  v2 = [v15 displayName:v14];
  v35[7] = v2;
  v3 = WFLocalizedContentPropertyNameMarker(@"Phone Number");
  v4 = [WFContentPropertyBuilder block:&__block_literal_global_230 name:v3 class:objc_opt_class()];
  v35[8] = v4;
  v5 = WFLocalizedContentPropertyNameMarker(@"Label");
  v6 = [WFContentPropertyBuilder block:&__block_literal_global_25121 name:v5 class:objc_opt_class()];
  v7 = [v6 userInfo:@"localizedLabel"];
  v8 = [WFContentProperty possibleLabelsForClass:objc_opt_class() localized:1];
  v9 = [v7 possibleValues:v8];
  v35[9] = v9;
  v10 = WFLocalizedContentPropertyNameMarker(@"URL");
  v11 = [WFContentPropertyBuilder block:&__block_literal_global_244 name:v10 class:objc_opt_class()];
  v35[10] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:11];

  return v13;
}

void __41__WFLocationContentItem_propertyBuilders__block_invoke_11(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__WFLocationContentItem_propertyBuilders__block_invoke_12;
  v8[3] = &unk_278349C38;
  v9 = v5;
  v6 = v5;
  v7 = a2;
  [v7 getObjectRepresentation:v8 forClass:getMKMapItemClass_25062()];
}

void __41__WFLocationContentItem_propertyBuilders__block_invoke_12(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 url];
  (*(v2 + 16))(v2, v3);
}

void __41__WFLocationContentItem_propertyBuilders__block_invoke_9(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__WFLocationContentItem_propertyBuilders__block_invoke_10;
  v8[3] = &unk_278349C38;
  v9 = v5;
  v6 = v5;
  v7 = a2;
  [v7 getObjectRepresentation:v8 forClass:getMKMapItemClass_25062()];
}

void __41__WFLocationContentItem_propertyBuilders__block_invoke_10(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 phoneNumber];
  v3 = [WFPhoneNumber phoneNumberWithPhoneNumberString:v4];
  (*(v2 + 16))(v2, v3);
}

void __41__WFLocationContentItem_propertyBuilders__block_invoke_7(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__WFLocationContentItem_propertyBuilders__block_invoke_8;
  v8[3] = &unk_278349C10;
  v9 = v5;
  v6 = v5;
  v7 = a2;
  [v7 getObjectRepresentation:v8 forClass:getCLLocationClass_24982()];
}

void __41__WFLocationContentItem_propertyBuilders__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCABB0];
  [a2 altitude];
  v4 = [v3 numberWithDouble:?];
  (*(v2 + 16))(v2, v4);
}

void __41__WFLocationContentItem_propertyBuilders__block_invoke_5(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__WFLocationContentItem_propertyBuilders__block_invoke_6;
  v8[3] = &unk_278349C10;
  v9 = v5;
  v6 = v5;
  v7 = a2;
  [v7 getObjectRepresentation:v8 forClass:getCLLocationClass_24982()];
}

void __41__WFLocationContentItem_propertyBuilders__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCACA8];
  [a2 coordinate];
  v5 = [v3 stringWithFormat:@"%0.16g", v4];
  (*(v2 + 16))(v2, v5);
}

void __41__WFLocationContentItem_propertyBuilders__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__WFLocationContentItem_propertyBuilders__block_invoke_4;
  v8[3] = &unk_278349C10;
  v9 = v5;
  v6 = v5;
  v7 = a2;
  [v7 getObjectRepresentation:v8 forClass:getCLLocationClass_24982()];
}

void __41__WFLocationContentItem_propertyBuilders__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCACA8];
  [a2 coordinate];
  v5 = [v3 stringWithFormat:@"%0.16g", v4];
  (*(v2 + 16))(v2, v5);
}

void __41__WFLocationContentItem_propertyBuilders__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__WFLocationContentItem_propertyBuilders__block_invoke_2;
  v11[3] = &unk_278349BE8;
  v12 = v6;
  v13 = v7;
  v8 = v6;
  v9 = v7;
  v10 = a2;
  [v10 getObjectRepresentation:v11 forClass:objc_opt_class()];
}

void __41__WFLocationContentItem_propertyBuilders__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = [a2 valueForKey:*(a1 + 32)];
  (*(v2 + 16))(v2, v3);
}

@end