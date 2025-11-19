@interface WFCalendarEventContentItem
+ (id)coercions;
+ (id)contentCategories;
+ (id)dateByApplyingComponents:(id)a3 toDateComponents:(id)a4;
+ (id)itemWithEKEvent:(id)a3 fromEventStore:(id)a4;
+ (id)localizedFilterDescriptionWithContext:(id)a3;
+ (id)localizedPluralFilterDescriptionWithContext:(id)a3;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)ownedTypes;
+ (id)propertyBuilders;
+ (id)stringConversionBehavior;
+ (void)runQuery:(id)a3 withItems:(id)a4 permissionRequestor:(id)a5 completionHandler:(id)a6;
- (BOOL)getListAltText:(id)a3;
- (BOOL)getListSubtitle:(id)a3;
- (EKEvent)event;
- (EKEventStore)eventStore;
- (NSString)location;
- (id)attachments;
- (id)changeTransaction;
- (id)color;
- (id)defaultSourceForRepresentation:(id)a3;
- (id)isCanceled;
- (id)myStatus;
- (id)structuredLocation;
- (void)getMapItemRepresentationIfPresent:(id)a3;
@end

@implementation WFCalendarEventContentItem

+ (id)localizedPluralFilterDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Calendar Events", @"Calendar Events");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedFilterDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Calendar Event", @"Calendar Event");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Calendar events", @"Calendar events");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Calendar event", @"Calendar event");
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

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClassName:@"EKEvent" frameworkName:@"EventKit" location:0];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

id __55__WFCalendarEventContentItem_linkEntityCoercionHandler__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D23808];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 event];

  v6 = [v5 recurrenceIdentifier];
  v7 = [v6 identifierString];
  v8 = [v4 initWithTypeIdentifier:@"EventEntity" instanceIdentifier:v7];

  v9 = [objc_alloc(MEMORY[0x277D237F8]) initWithIdentifier:v8];

  return v9;
}

BOOL __57__WFCalendarEventContentItem_participantsCoercionHandler__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 event];
  v3 = [v2 attendees];
  v4 = [v3 count] != 0;

  return v4;
}

id __57__WFCalendarEventContentItem_participantsCoercionHandler__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 event];
  v3 = [v2 attendees];
  v4 = [v3 if_map:&__block_literal_global_355];

  return v4;
}

WFParticipant *__57__WFCalendarEventContentItem_participantsCoercionHandler__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WFParticipant alloc] initWithEKParticipant:v2];

  return v3;
}

id __48__WFCalendarEventContentItem_icsCoercionHandler__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a3 requestedType];
  v6 = [v4 event];
  v14[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v8 = [WFVCalendarFormatter ICSFromCalendarItems:v7];
  v9 = [v8 dataUsingEncoding:4];

  v10 = [v4 name];

  v11 = [WFFileRepresentation proposedFilenameForFile:v10 ofType:v5];

  v12 = [WFFileRepresentation fileWithData:v9 ofType:v5 proposedFilename:v11];

  return v12;
}

BOOL __53__WFCalendarEventContentItem_mapsLinkCoercionHandler__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 location];
  v3 = v2 != 0;

  return v3;
}

id __53__WFCalendarEventContentItem_mapsLinkCoercionHandler__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(DCMutableMapsLink);
  v4 = [v2 location];
  [(DCMutableMapsLink *)v3 setSearchQuery:v4];

  v5 = MEMORY[0x277CCACA8];
  v6 = WFLocalizedString(@"Open %@ in Maps");
  v7 = [v2 location];

  v8 = [v5 stringWithFormat:v6, v7];
  v9 = [WFObjectRepresentation object:v3 named:v8];

  return v9;
}

BOOL __58__WFCalendarEventContentItem_streetAddressCoercionHandler__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 location];
  v3 = [WFStreetAddress stringContainsStreetAddresses:v2];

  return v3;
}

void __58__WFCalendarEventContentItem_streetAddressCoercionHandler__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__WFCalendarEventContentItem_streetAddressCoercionHandler__block_invoke_2;
  v9[3] = &unk_278345B70;
  v10 = v5;
  v11 = v6;
  v7 = v5;
  v8 = v6;
  [v7 getMapItemRepresentationIfPresent:v9];
}

void __58__WFCalendarEventContentItem_streetAddressCoercionHandler__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = *(a1 + 40);
    v9 = [v5 placemark];
    v10 = [WFStreetAddress streetAddressWithPlacemark:v9 label:0];
    (*(v8 + 16))(v8, v10, 0);
  }

  else
  {
    if (v6)
    {
      (*(*(a1 + 40) + 16))();
      goto LABEL_6;
    }

    v11 = [*(a1 + 32) location];
    v12 = 0;
    v9 = [WFStreetAddress streetAddressesInString:v11 error:&v12];
    v7 = v12;

    (*(*(a1 + 40) + 16))();
  }

LABEL_6:
}

BOOL __54__WFCalendarEventContentItem_placemarkCoercionHandler__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 structuredLocation];
  v4 = [v3 mapKitHandle];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v2 location];
    if ([WFStreetAddress stringContainsStreetAddresses:v6])
    {
      v7 = [v3 geoLocation];
      v5 = v7 != 0;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

void __54__WFCalendarEventContentItem_placemarkCoercionHandler__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__WFCalendarEventContentItem_placemarkCoercionHandler__block_invoke_2;
  v9[3] = &unk_278345B70;
  v10 = v5;
  v11 = v6;
  v7 = v5;
  v8 = v6;
  [v7 getMapItemRepresentationIfPresent:v9];
}

void __54__WFCalendarEventContentItem_placemarkCoercionHandler__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 | v6)
  {
    v7 = v6;
    v8 = *(a1 + 40);
    v9 = [v5 placemark];
    (*(v8 + 16))(v8, v9, v7);
  }

  else
  {
    v10 = [*(a1 + 32) location];
    v26 = 0;
    v11 = [WFStreetAddress streetAddressesInString:v10 error:&v26];
    v7 = v26;

    v12 = [*(a1 + 32) structuredLocation];
    v13 = [v12 geoLocation];

    v14 = [v11 count];
    v15 = *(a1 + 40);
    if (v14 && v13)
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x2050000000;
      v16 = getMKPlacemarkClass_softClass_4735;
      v31 = getMKPlacemarkClass_softClass_4735;
      if (!getMKPlacemarkClass_softClass_4735)
      {
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __getMKPlacemarkClass_block_invoke_4736;
        v27[3] = &unk_27834A178;
        v27[4] = &v28;
        __getMKPlacemarkClass_block_invoke_4736(v27);
        v16 = v29[3];
      }

      v17 = v16;
      _Block_object_dispose(&v28, 8);
      v18 = [v16 alloc];
      [v13 coordinate];
      v20 = v19;
      v22 = v21;
      v23 = [v11 firstObject];
      v24 = [v23 postalAddress];
      v25 = [v18 initWithCoordinate:v24 postalAddress:{v20, v22}];
      (*(v15 + 16))(v15, v25, 0);
    }

    else
    {
      (*(v15 + 16))(v15, 0, v7);
    }
  }
}

BOOL __52__WFCalendarEventContentItem_mapItemCoercionHandler__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 structuredLocation];
  v3 = [v2 mapKitHandle];
  v4 = v3 != 0;

  return v4;
}

void __52__WFCalendarEventContentItem_mapItemCoercionHandler__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a2;
  MKMapItemClass_4749 = getMKMapItemClass_4749();
  v9 = [v6 structuredLocation];

  v8 = [v9 mapKitHandle];
  [MKMapItemClass_4749 _mapItemFromHandle:v8 completionHandler:v5];
}

+ (id)coercions
{
  v38[11] = *MEMORY[0x277D85DE8];
  v37 = [WFObjectType typeWithClassName:@"CLPlacemark" frameworkName:@"CoreLocation" location:0];
  v36 = [a1 placemarkCoercionHandler];
  v35 = [WFCoercion coercionToType:v37 handler:v36];
  v38[0] = v35;
  v3 = objc_opt_class();
  v34 = [a1 streetAddressCoercionHandler];
  v33 = [WFCoercion coercionToClass:v3 handler:v34];
  v38[1] = v33;
  v4 = objc_opt_class();
  v32 = [WFCoercionHandler keyPath:@"event.startDate"];
  v31 = [WFCoercion coercionToClass:v4 handler:v32];
  v38[2] = v31;
  v5 = objc_opt_class();
  v30 = [WFCoercionHandler keyPath:@"event.URL" unavailableIfNilOrEmpty:1];
  v29 = [WFCoercion coercionToClass:v5 handler:v30];
  v38[3] = v29;
  v6 = objc_opt_class();
  v28 = [WFCoercionHandler keyPath:@"color" unavailableIfNilOrEmpty:1];
  v27 = [WFCoercion coercionToClass:v6 handler:v28];
  v38[4] = v27;
  v7 = objc_opt_class();
  v26 = [a1 mapsLinkCoercionHandler];
  v25 = [WFCoercion coercionToClass:v7 handler:v26];
  v38[5] = v25;
  v24 = [MEMORY[0x277D79F68] typeWithString:@"com.apple.ical.ics"];
  v23 = [a1 icsCoercionHandler];
  v22 = [WFCoercion coercionToType:v24 handler:v23];
  v38[6] = v22;
  v8 = objc_opt_class();
  v21 = [a1 participantsCoercionHandler];
  v9 = [WFCoercion coercionToClass:v8 handler:v21];
  v38[7] = v9;
  v10 = [WFObjectType typeWithClassName:@"MKMapItem" frameworkName:@"MapKit" location:2];
  v11 = [a1 mapItemCoercionHandler];
  v12 = [WFCoercion coercionToType:v10 handler:v11];
  v38[8] = v12;
  v13 = [WFObjectType typeWithClassName:@"CLLocation" frameworkName:@"CoreLocation" location:0];
  v14 = [WFCoercionHandler keyPath:@"structuredLocation.geoLocation" unavailableIfNilOrEmpty:1];
  v15 = [WFCoercion coercionToType:v13 handler:v14];
  v38[9] = v15;
  v16 = [WFObjectType typeWithClassName:@"LNEntity" frameworkName:@"LinkMetadata" location:1];
  v17 = [a1 linkEntityCoercionHandler];
  v18 = [WFCoercion coercionToType:v16 handler:v17];
  v38[10] = v18;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:11];

  return v20;
}

+ (id)dateByApplyingComponents:(id)a3 toDateComponents:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 year] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  [v6 setYear:{objc_msgSend(v7, "year")}];
  if ([v5 month] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  [v6 setMonth:{objc_msgSend(v8, "month")}];
  if ([v5 weekOfYear] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  [v6 setWeekOfYear:{objc_msgSend(v9, "weekOfYear")}];
  if ([v5 day] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v6;
  }

  else
  {
    v10 = v5;
  }

  [v6 setDay:{objc_msgSend(v10, "day")}];
  if ([v5 hour] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v6;
  }

  else
  {
    v11 = v5;
  }

  [v6 setHour:{objc_msgSend(v11, "hour")}];
  if ([v5 minute] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v6;
  }

  else
  {
    v12 = v5;
  }

  [v6 setMinute:{objc_msgSend(v12, "minute")}];
  if ([v5 second] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = v6;
  }

  else
  {
    v13 = v5;
  }

  [v6 setSecond:{objc_msgSend(v13, "second")}];
  v14 = [MEMORY[0x277CBEA80] currentCalendar];
  v15 = [v14 dateFromComponents:v6];

  return v15;
}

+ (id)stringConversionBehavior
{
  v2 = [a1 propertyForName:@"Title"];
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
    v14 = [v10 predicate];
    v15 = [WFCalendarEventFiltering itemsToQueryForPredicate:v14];

    v11 = v15;
  }

  v16.receiver = a1;
  v16.super_class = &OBJC_METACLASS___WFCalendarEventContentItem;
  objc_msgSendSuper2(&v16, sel_runQuery_withItems_permissionRequestor_completionHandler_, v10, v11, v12, v13);
}

+ (id)propertyBuilders
{
  v109[20] = *MEMORY[0x277D85DE8];
  v106 = WFLocalizedContentPropertyNameMarker(@"Start Date");
  v105 = [WFContentPropertyBuilder keyPath:@"event.startDate" name:v106 class:objc_opt_class()];
  v104 = [v105 timeUnits:8444];
  v108[0] = MEMORY[0x277D85DD0];
  v108[1] = 3221225472;
  v108[2] = __46__WFCalendarEventContentItem_propertyBuilders__block_invoke;
  v108[3] = &__block_descriptor_48_e74_v24__0__WFCalendarEventContentItemChangeTransaction_8__NSDateComponents_16l;
  v108[4] = 8444;
  v108[5] = a1;
  v103 = [v104 setterBlock:v108];
  v102 = [v103 removable:0];
  v109[0] = v102;
  v101 = WFLocalizedContentPropertyNameMarker(@"End Date");
  v100 = [WFContentPropertyBuilder keyPath:@"event.endDate" name:v101 class:objc_opt_class()];
  v99 = [v100 timeUnits:8444];
  v107[0] = MEMORY[0x277D85DD0];
  v107[1] = 3221225472;
  v107[2] = __46__WFCalendarEventContentItem_propertyBuilders__block_invoke_2;
  v107[3] = &__block_descriptor_48_e56_v24__0__WFCalendarEventContentItemChangeTransaction_8_16l;
  v107[4] = 8444;
  v107[5] = a1;
  v98 = [v99 setterBlock:v107];
  v97 = [v98 removable:0];
  v109[1] = v97;
  v95 = WFLocalizedContentPropertyNameMarker(@"Is All Day");
  v96 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v94 = [WFContentPropertyBuilder keyPath:@"event.allDay" name:v95 class:objc_opt_class()];
  v93 = WFLocalizedContentPropertyNameMarker(@"Is Not All Day");
  v92 = [v94 negativeName:v93];
  v91 = WFLocalizedString(@"Event");
  v90 = [v92 singularItemName:v91];
  v89 = [v90 setterBlock:&__block_literal_global_4796];
  v109[2] = v89;
  v88 = WFLocalizedContentPropertyNameMarker(@"Calendar");
  v87 = [WFContentPropertyBuilder keyPath:@"event.calendar.title" name:v88 class:objc_opt_class()];
  v86 = [v87 possibleValuesGetter:&__block_literal_global_121];
  v109[3] = v86;
  v85 = WFLocalizedContentPropertyNameMarker(@"Location");
  v84 = [WFContentPropertyBuilder keyPath:@"location" name:v85 class:objc_opt_class()];
  v83 = [v84 sortable:0];
  v82 = [v83 setterBlock:&__block_literal_global_142];
  v109[4] = v82;
  v80 = WFLocalizedContentPropertyNameMarker(@"Has Alarms");
  v81 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v79 = [WFContentPropertyBuilder keyPath:@"event.hasAlarms" name:v80 class:objc_opt_class()];
  v78 = WFLocalizedContentPropertyNameMarker(@"Has No Alarms");
  v77 = [v79 negativeName:v78];
  v76 = WFLocalizedString(@"Event");
  v75 = [v77 singularItemName:v76];
  v109[5] = v75;
  v74 = WFLocalizedContentPropertyNameMarker(@"Duration");
  v73 = [WFContentPropertyBuilder block:&__block_literal_global_154 name:v74 class:objc_opt_class()];
  v72 = [v73 timeUnits:240];
  v71 = [v72 setterBlock:&__block_literal_global_160];
  v70 = [v71 removable:0];
  v109[6] = v70;
  v68 = WFLocalizedContentPropertyNameMarker(@"Canceled");
  v69 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v67 = [WFContentPropertyBuilder keyPath:@"isCanceled" name:v68 class:objc_opt_class()];
  v66 = WFLocalizedContentPropertyNameMarker(@"Is Canceled");
  v65 = [v67 displayName:v66];
  v64 = WFLocalizedContentPropertyNameMarker(@"Is Not Canceled");
  v63 = [v65 negativeName:v64];
  v109[7] = v63;
  v62 = WFLocalizedContentPropertyNameMarker(@"My Status");
  v61 = [WFContentPropertyBuilder keyPath:@"myStatus" name:v62 class:objc_opt_class()];
  v60 = +[WFEKParticipantContentItem possibleStatuses];
  v59 = [v61 possibleValues:v60];
  v58 = [v59 setterBlock:&__block_literal_global_181];
  v109[8] = v58;
  v57 = WFLocalizedContentPropertyNameMarker(@"Organizer");
  v56 = [WFContentPropertyBuilder block:&__block_literal_global_184 name:v57 class:objc_opt_class()];
  v109[9] = v56;
  v54 = WFLocalizedContentPropertyNameMarker(@"Organizer Is Me");
  v55 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v53 = [WFContentPropertyBuilder block:&__block_literal_global_190 name:v54 class:objc_opt_class()];
  v52 = WFLocalizedContentPropertyNameMarker(@"Organizer Is Not Me");
  v51 = [v53 negativeName:v52];
  v109[10] = v51;
  v50 = WFLocalizedContentPropertyNameMarker(@"Attendees");
  v49 = [WFContentPropertyBuilder block:&__block_literal_global_198 name:v50 class:objc_opt_class()];
  v48 = [v49 multipleValues:1];
  v47 = [v48 setterBlock:&__block_literal_global_207];
  v109[11] = v47;
  v46 = WFLocalizedContentPropertyNameMarker(@"Number of Attendees");
  v45 = [WFContentPropertyBuilder block:&__block_literal_global_210 name:v46 class:objc_opt_class()];
  v109[12] = v45;
  v44 = WFLocalizedContentPropertyNameMarker(@"URL");
  v43 = [WFContentPropertyBuilder keyPath:@"event.URL" name:v44 class:objc_opt_class()];
  v42 = [v43 filterable:0];
  v41 = [v42 sortable:0];
  v40 = [v41 setterBlock:&__block_literal_global_223];
  v39 = [v40 canLowercaseName:0];
  v109[13] = v39;
  v38 = WFLocalizedContentPropertyNameMarker(@"Title");
  v37 = [WFContentPropertyBuilder keyPath:@"event.title" name:v38 class:objc_opt_class()];
  v36 = [v37 setterBlock:&__block_literal_global_231_4813];
  v35 = [v36 removable:0];
  v109[14] = v35;
  v34 = WFLocalizedContentPropertyNameMarker(@"Notes");
  v33 = [WFContentPropertyBuilder keyPath:@"event.notes" name:v34 class:objc_opt_class()];
  v32 = [v33 sortable:0];
  v31 = [v32 appendable:1];
  v30 = [v31 setterBlock:&__block_literal_global_242];
  v109[15] = v30;
  v29 = WFLocalizedContentPropertyNameMarker(@"Attachments");
  v28 = [WFContentPropertyBuilder keyPath:@"attachments" name:v29 class:objc_opt_class()];
  v27 = [v28 sortable:0];
  v26 = [v27 removable:0];
  v25 = [v26 multipleValues:1];
  v24 = WFLocalizedContentPropertyNameMarker(@"Attachment");
  v23 = [v25 singularItemName:v24];
  v22 = [v23 setterBlock:&__block_literal_global_254];
  v109[16] = v22;
  v21 = [WFContentPropertyBuilder keyPath:@"event.lastModifiedDate" name:@"Last Modified Date" class:objc_opt_class()];
  v20 = WFLocalizedContentPropertyNameMarker(@"Date Modified");
  v19 = [v21 displayName:v20];
  v18 = [v19 tense:1];
  v17 = [v18 timeUnits:8444];
  v16 = [v17 userInfo:@"WFFileModificationDate"];
  v109[17] = v16;
  v15 = [WFContentPropertyBuilder keyPath:@"event.creationDate" name:@"Creation Date" class:objc_opt_class()];
  v3 = WFLocalizedContentPropertyNameMarker(@"Date Created");
  v4 = [v15 displayName:v3];
  v5 = [v4 tense:1];
  v6 = [v5 timeUnits:8444];
  v7 = [v6 userInfo:@"WFFileCreationDate"];
  v109[18] = v7;
  v8 = WFLocalizedContentPropertyNameMarker(@"File Size");
  v9 = [WFContentPropertyBuilder block:&__block_literal_global_274 name:v8 class:objc_opt_class()];
  v10 = [v9 userInfo:@"WFFileSizeProperty"];
  v11 = [v10 filterable:0];
  v12 = [v11 sortable:0];
  v109[19] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:20];

  return v14;
}

void __46__WFCalendarEventContentItem_propertyBuilders__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [MEMORY[0x277CBEA80] currentCalendar];
      v7 = *(a1 + 32);
      v8 = [v18 mutableEvent];
      v9 = [v8 startDate];
      v10 = [v6 components:v7 fromDate:v9];

      v11 = [*(a1 + 40) dateByApplyingComponents:v5 toDateComponents:v10];
    }

    else
    {
      v10 = v5;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v10;
      }

      else
      {
        v12 = 0;
      }

      v11 = v12;
    }

    v13 = v11;

    v14 = [v18 mutableEvent];
    [v14 duration];
    v15 = [v13 dateByAddingTimeInterval:?];
    v16 = [v18 mutableEvent];
    [v16 setEndDate:v15];

    v17 = [v18 mutableEvent];
    [v17 setStartDate:v13];
  }
}

void __46__WFCalendarEventContentItem_propertyBuilders__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = a3;
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x277CBEA80] currentCalendar];
    v7 = *(a1 + 32);
    v8 = [v5 mutableEvent];
    v9 = [v8 endDate];
    v10 = [v6 components:v7 fromDate:v9];

    v11 = [*(a1 + 40) dateByApplyingComponents:v15 toDateComponents:v10];
  }

  else
  {
    v10 = v15;
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v10;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v11 = v12;
  }

  v13 = v11;

  v14 = [v5 mutableEvent];

  [v14 setEndDate:v13];
}

void __46__WFCalendarEventContentItem_propertyBuilders__block_invoke_21(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__WFCalendarEventContentItem_propertyBuilders__block_invoke_22;
  v7[3] = &unk_278349780;
  v8 = v5;
  v6 = v5;
  [a2 getPreferredFileSize:v7];
}

void __46__WFCalendarEventContentItem_propertyBuilders__block_invoke_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [[WFFileSize alloc] initWithByteCount:a2];
  (*(v2 + 16))(v2, v3);
}

void __46__WFCalendarEventContentItem_propertyBuilders__block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v4 = a3;
  v5 = [v12 mode];
  v6 = [v5 isEqual:@"Append"];

  if (v6)
  {
    v7 = [v12 mutableEvent];
    v8 = [v7 notes];
    v9 = [(__CFString *)v8 stringByAppendingAsNewLine:v4];

    v10 = [v12 mutableEvent];
    [v10 setNotes:v9];

    v4 = v8;
  }

  else
  {
    if (v4)
    {
      v11 = v4;
    }

    else
    {
      v11 = &stru_282F53518;
    }

    v7 = [v12 mutableEvent];
    [v7 setNotes:v11];
  }
}

void __46__WFCalendarEventContentItem_propertyBuilders__block_invoke_18(uint64_t a1, void *a2, __CFString *a3)
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = &stru_282F53518;
  }

  v5 = a3;
  v6 = [a2 mutableEvent];
  [v6 setTitle:v4];
}

void __46__WFCalendarEventContentItem_propertyBuilders__block_invoke_17(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 mutableEvent];
  [v5 setURL:v4];
}

void __46__WFCalendarEventContentItem_propertyBuilders__block_invoke_16(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v10 = [a2 event];
  v8 = [v10 attendees];
  v9 = [v6 numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
  (a4)[2](v7, v9);
}

void __46__WFCalendarEventContentItem_propertyBuilders__block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __46__WFCalendarEventContentItem_propertyBuilders__block_invoke_15;
  v67[3] = &unk_278345AC8;
  v5 = v4;
  v68 = v5;
  v6 = [a3 if_compactMap:v67];
  v7 = [v5 mode];
  v8 = [v7 isEqualToString:@"Append"];

  if (v8)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v63 objects:v73 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v64;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v64 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v63 + 1) + 8 * i);
          v15 = [v5 mutableEvent];
          [v15 addAttendee:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v63 objects:v73 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v16 = [v5 mode];
    v17 = [v16 isEqualToString:@"Remove"];

    if (v17)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v9 = v6;
      v18 = [v9 countByEnumeratingWithState:&v59 objects:v72 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v60;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v60 != v20)
            {
              objc_enumerationMutation(v9);
            }

            v22 = *(*(&v59 + 1) + 8 * j);
            v23 = [v5 mutableEvent];
            [v23 removeAttendee:v22];
          }

          v19 = [v9 countByEnumeratingWithState:&v59 objects:v72 count:16];
        }

        while (v19);
      }
    }

    else
    {
      v24 = [v5 mode];
      v25 = [v24 isEqualToString:@"RemoveAll"];

      if (v25)
      {
        v57 = 0uLL;
        v58 = 0uLL;
        v55 = 0uLL;
        v56 = 0uLL;
        v26 = [v5 mutableEvent];
        v9 = [v26 attendees];

        v27 = [v9 countByEnumeratingWithState:&v55 objects:v71 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v56;
          do
          {
            for (k = 0; k != v28; ++k)
            {
              if (*v56 != v29)
              {
                objc_enumerationMutation(v9);
              }

              v31 = *(*(&v55 + 1) + 8 * k);
              v32 = [v5 mutableEvent];
              [v32 removeAttendee:v31];
            }

            v28 = [v9 countByEnumeratingWithState:&v55 objects:v71 count:16];
          }

          while (v28);
        }
      }

      else
      {
        v53 = 0uLL;
        v54 = 0uLL;
        v51 = 0uLL;
        v52 = 0uLL;
        v33 = [v5 mutableEvent];
        v34 = [v33 attendees];

        v35 = [v34 countByEnumeratingWithState:&v51 objects:v70 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v52;
          do
          {
            for (m = 0; m != v36; ++m)
            {
              if (*v52 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v39 = *(*(&v51 + 1) + 8 * m);
              v40 = [v5 mutableEvent];
              [v40 removeAttendee:v39];
            }

            v36 = [v34 countByEnumeratingWithState:&v51 objects:v70 count:16];
          }

          while (v36);
        }

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v9 = v6;
        v41 = [v9 countByEnumeratingWithState:&v47 objects:v69 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v48;
          do
          {
            for (n = 0; n != v42; ++n)
            {
              if (*v48 != v43)
              {
                objc_enumerationMutation(v9);
              }

              v45 = *(*(&v47 + 1) + 8 * n);
              v46 = [v5 mutableEvent];
              [v46 addAttendee:v45];
            }

            v42 = [v9 countByEnumeratingWithState:&v47 objects:v69 count:16];
          }

          while (v42);
        }
      }
    }
  }
}

void *__46__WFCalendarEventContentItem_propertyBuilders__block_invoke_15(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v4 = getEKAttendeeClass_softClass;
  v19 = getEKAttendeeClass_softClass;
  if (!getEKAttendeeClass_softClass)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __getEKAttendeeClass_block_invoke;
    v15[3] = &unk_27834A178;
    v15[4] = &v16;
    __getEKAttendeeClass_block_invoke(v15);
    v4 = v17[3];
  }

  v5 = v4;
  _Block_object_dispose(&v16, 8);
  v6 = [v3 emailAddress];
  v7 = [v3 URL];
  v8 = [v4 attendeeWithName:0 emailAddress:v6 phoneNumber:0 url:v7];

  [v8 setParticipantRole:{objc_msgSend(v3, "role")}];
  [v8 setParticipantStatus:{objc_msgSend(v3, "status")}];
  [v8 setParticipantType:{objc_msgSend(v3, "type")}];
  v9 = [*(a1 + 32) mutableEvent];
  v10 = [*(a1 + 32) mutableEvent];
  v11 = [v10 calendar];
  if ([v9 isValidAttendee:v8 forCalendar:v11])
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

void __46__WFCalendarEventContentItem_propertyBuilders__block_invoke_12(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [a2 event];
  v7 = [v6 attendees];
  v8 = [v7 if_map:&__block_literal_global_201];

  v5[2](v5, v8);
}

WFParticipant *__46__WFCalendarEventContentItem_propertyBuilders__block_invoke_13(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WFParticipant alloc] initWithEKParticipant:v2];

  return v3;
}

void __46__WFCalendarEventContentItem_propertyBuilders__block_invoke_11(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a2;
  v7 = [v6 event];
  v8 = [v7 organizer];
  v9 = [v8 isCurrentUser];

  v10 = [v6 event];
  v11 = [v10 attendeesNotIncludingOrganizer];

  v12 = [v6 event];

  v13 = [v12 calendar];
  v14 = [v13 sharingStatus];

  if (v14 | v11)
  {
    v15 = v9;
  }

  else
  {
    v15 = 1;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithInt:v15];
  v5[2](v5, v16);
}

void __46__WFCalendarEventContentItem_propertyBuilders__block_invoke_10(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v5 = [a2 event];
  v6 = [v5 organizer];

  if (v6)
  {
    v7 = [[WFParticipant alloc] initWithEKParticipant:v6];
    v8[2](v8, v7);
  }

  else
  {
    v8[2](v8, 0);
  }
}

void __46__WFCalendarEventContentItem_propertyBuilders__block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v5 isEqualToString:@"Accepted"])
  {
    v6 = 2;
  }

  else if ([v5 isEqualToString:@"Completed"])
  {
    v6 = 6;
  }

  else if ([v5 isEqualToString:@"Declined"])
  {
    v6 = 3;
  }

  else if ([v5 isEqualToString:@"Delegated"])
  {
    v6 = 5;
  }

  else if ([v5 isEqualToString:@"In Process"])
  {
    v6 = 7;
  }

  else if ([v5 isEqualToString:@"Pending"])
  {
    v6 = 1;
  }

  else if ([v5 isEqualToString:@"Tentative"])
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  v8 = [v4 mutableEvent];

  v7 = [v8 selfAttendee];
  [v7 setParticipantStatus:v6];
}

void __46__WFCalendarEventContentItem_propertyBuilders__block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v11 = [v5 mutableEvent];
  v6 = [v11 startDate];
  [v4 doubleValue];
  v8 = v7;

  v9 = [v6 dateByAddingTimeInterval:v8];
  v10 = [v5 mutableEvent];

  [v10 setEndDate:v9];
}

void __46__WFCalendarEventContentItem_propertyBuilders__block_invoke_7(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = a4;
  v7 = a2;
  v8 = [WFTimeInterval alloc];
  v13 = [v7 event];
  v9 = [v13 endDate];
  v10 = [v7 event];

  v11 = [v10 startDate];
  [v9 timeIntervalSinceDate:v11];
  v12 = [(WFTimeInterval *)v8 initWithTimeInterval:?];
  (a4)[2](v6, v12);
}

void __46__WFCalendarEventContentItem_propertyBuilders__block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 mutableEvent];
  [v5 setLocation:v4];
}

id __46__WFCalendarEventContentItem_propertyBuilders__block_invoke_4()
{
  v0 = WFGetWorkflowEventStore();
  v1 = [v0 calendarsForEntityType:0];
  v2 = [v1 if_compactMap:&__block_literal_global_124];

  return v2;
}

id __46__WFCalendarEventContentItem_propertyBuilders__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 title];
  v4 = [v3 isEqualToString:@"Found in Mail"];

  if (v4)
  {
    v5 = @"Found in Mail";
LABEL_5:
    v8 = WFLocalizedString(v5);
    goto LABEL_7;
  }

  v6 = [v2 title];
  v7 = [v6 isEqualToString:@"Birthdays"];

  if (v7)
  {
    v5 = @"Birthdays";
    goto LABEL_5;
  }

  v8 = [v2 title];
LABEL_7:
  v9 = v8;

  return v9;
}

void __46__WFCalendarEventContentItem_propertyBuilders__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a3)
  {
    a3 = [a3 BOOLValue];
  }

  v4 = [v5 mutableEvent];
  [v4 setAllDay:a3];
}

+ (id)itemWithEKEvent:(id)a3 fromEventStore:(id)a4
{
  v6 = a4;
  v7 = [a1 itemWithObject:a3 named:0];
  [v7 setEventStore:v6];

  return v7;
}

- (id)defaultSourceForRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 wfType];
  v6 = [v5 conformsToClass:getEKEventClass()];

  if (v6)
  {
    v7 = [v4 object];

    v8 = [v7 calendar];
    v9 = [v8 source];
    v10 = [WFContentLocation locationWithCalendarSource:v9];
    v11 = [(WFContentItem *)self cachingIdentifier];
    v12 = [WFContentAttributionSet attributionSetWithOrigin:v10 disclosureLevel:1 originalItemIdentifier:v11];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = WFCalendarEventContentItem;
    v12 = [(WFContentItem *)&v14 defaultSourceForRepresentation:v4];
  }

  return v12;
}

- (void)getMapItemRepresentationIfPresent:(id)a3
{
  v4 = a3;
  v5 = [(WFCalendarEventContentItem *)self event];
  v6 = [v5 structuredLocation];
  v7 = [v6 mapKitHandle];

  if (v7)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__WFCalendarEventContentItem_getMapItemRepresentationIfPresent___block_invoke;
    v8[3] = &unk_278349C38;
    v9 = v4;
    [(WFContentItem *)self getObjectRepresentation:v8 forClass:getMKMapItemClass_4749()];
  }

  else
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

- (EKEvent)event
{
  EKEventClass = getEKEventClass();

  return [(WFContentItem *)self objectForClass:EKEventClass];
}

- (EKEventStore)eventStore
{
  eventStore = self->_eventStore;
  if (eventStore)
  {
    v3 = eventStore;
  }

  else
  {
    v4 = [(WFCalendarEventContentItem *)self event];
    v3 = objc_getAssociatedObject(v4, &WFDeserializingEventStoreKey);
  }

  return v3;
}

- (id)color
{
  v2 = [(WFCalendarEventContentItem *)self event];
  v3 = [v2 calendar];
  v4 = [v3 CGColor];

  if (v4)
  {
    v5 = [MEMORY[0x277D79E20] colorWithCGColor:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)attachments
{
  v3 = [(WFCalendarEventContentItem *)self event];
  v4 = [v3 hasAttachment];

  if (v4)
  {
    v5 = [(WFCalendarEventContentItem *)self event];
    v6 = [v5 attachments];
    v7 = [v6 if_map:&__block_literal_global_283];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

id __41__WFCalendarEventContentItem_attachments__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 localURL];
  v3 = [WFFileRepresentation fileWithURL:v2 options:13];

  return v3;
}

- (id)structuredLocation
{
  v2 = [(WFCalendarEventContentItem *)self event];
  v3 = [v2 structuredLocation];

  return v3;
}

- (NSString)location
{
  v2 = [(WFCalendarEventContentItem *)self event];
  v3 = [v2 location];

  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)isCanceled
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(WFCalendarEventContentItem *)self event];
  v4 = [v2 numberWithInt:{objc_msgSend(v3, "status") == 3}];

  return v4;
}

- (id)myStatus
{
  v2 = [(WFCalendarEventContentItem *)self event];
  v3 = [v2 selfAttendee];

  if (v3)
  {
    v4 = WFStatusPropertyValueForEKParticipantStatus([v3 participantStatus]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)changeTransaction
{
  v3 = [WFCalendarEventContentItemChangeTransaction alloc];
  v4 = [(WFCalendarEventContentItem *)self eventStore];
  v5 = [(WFCalendarEventContentItemChangeTransaction *)v3 initWithContentItem:self eventStore:v4];

  return v5;
}

- (BOOL)getListAltText:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(WFCalendarEventContentItem *)self event];
    v6 = [v5 startDate];
    v7 = objc_opt_new();
    [v7 setDateStyle:1];
    [v7 setTimeStyle:1];
    [v7 setDoesRelativeDateFormatting:1];
    if ([v5 isAllDay])
    {
      [v7 setTimeStyle:0];
    }

    else
    {
      v8 = [MEMORY[0x277CBEA80] currentCalendar];
      v9 = [v8 isDateInToday:v6];

      if (v9)
      {
        [v7 setDateStyle:0];
      }
    }

    v10 = [v7 stringFromDate:v6];
    v4[2](v4, v10);
  }

  return 1;
}

- (BOOL)getListSubtitle:(id)a3
{
  v4 = a3;
  v5 = [(WFCalendarEventContentItem *)self event];
  v6 = [v5 location];

  v7 = [v6 length];
  v8 = v7;
  if (v4 && v7)
  {
    v4[2](v4, v6);
  }

  return v8 != 0;
}

@end