@interface DCMapsLink
+ ($4DDE7BAD8B52DEF6C4C48F8A4C97F2FC)coordinateRegionForMapSize:(SEL)size centeredAtLocation:(CGSize)location atZoomLevel:(CLLocationCoordinate2D)level;
+ ($F24F406B2B787EFB06265DBA3D28CBD5)coordinateSpanForMapSize:(CGSize)size centeredAtLocation:(CLLocationCoordinate2D)location atZoomLevel:(int64_t)level;
+ (BOOL)isMapsURL:(id)l;
+ (DCMapsLink)mapsLinkWithURL:(id)l;
+ (double)latitudeToPixelSpaceY:(double)y;
+ (id)objectWithWFSerializedRepresentation:(id)representation;
+ (void)createMapsLinkWithPlacemark:(id)placemark location:(id)location streetAddress:(id)address shiftingLocationIfNecessary:(BOOL)necessary completionHandler:(id)handler;
+ (void)processLocation:(id)location shiftingIfNecessary:(BOOL)necessary completionHandler:(id)handler;
- ($1655AFAB7F657C4F8B0504A4BF66C03D)coordinateRegionForMapSize:(SEL)size centeredAtLocation:(CGSize)location;
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinateSpanForMapSize:(CGSize)size centeredAtLocation:(CLLocationCoordinate2D)location;
- (BOOL)canGetDirections;
- (CLLocationCoordinate2D)centerCoordinate;
- (CLLocationCoordinate2D)centerLocationCoordinate;
- (CLLocationCoordinate2D)locationCoordinateFromString:(id)string;
- (CLLocationCoordinate2D)searchLocationCoordinate;
- (CLLocationCoordinate2D)streetViewLocationCoordinate;
- (NSString)description;
- (NSString)mkDirectionsMode;
- (NSString)wfName;
- (id)region;
- (id)regionCenteredAtLocation:(CLLocationCoordinate2D)location;
- (id)wfSerializedRepresentation;
- (unint64_t)directionsTransportType;
- (unint64_t)mkMapType;
- (void)geocodeAddressString:(id)string inRegionIfAvailable:(id)available completionHandler:(id)handler;
- (void)geocodeDirectionsEndpointsWithCompletionHandler:(id)handler;
- (void)getAppleMapsDirectionsURL:(id)l;
- (void)getDirectionsToPlacemark:(id)placemark fromPlacemark:(id)fromPlacemark withCompletionHandler:(id)handler;
- (void)getDirectionsWithCompletionHandler:(id)handler;
@end

@implementation DCMapsLink

- (void)geocodeDirectionsEndpointsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  region = [(DCMapsLink *)self region];
  v6 = dispatch_group_create();
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__4233;
  v32[4] = __Block_byref_object_dispose__4234;
  v33 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__4233;
  v30[4] = __Block_byref_object_dispose__4234;
  v31 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__4233;
  v28[4] = __Block_byref_object_dispose__4234;
  v29 = 0;
  startAddress = [(DCMapsLink *)self startAddress];
  v8 = [startAddress length];

  if (v8)
  {
    dispatch_group_enter(v6);
    startAddress2 = [(DCMapsLink *)self startAddress];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __75__DCMapsLink_CLGeocoding__geocodeDirectionsEndpointsWithCompletionHandler___block_invoke;
    v24[3] = &unk_278345760;
    v26 = v32;
    v27 = v28;
    v25 = v6;
    [(DCMapsLink *)self geocodeAddressString:startAddress2 inRegionIfAvailable:region completionHandler:v24];
  }

  destinationAddress = [(DCMapsLink *)self destinationAddress];
  v11 = [destinationAddress length];

  if (v11)
  {
    dispatch_group_enter(v6);
    destinationAddress2 = [(DCMapsLink *)self destinationAddress];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __75__DCMapsLink_CLGeocoding__geocodeDirectionsEndpointsWithCompletionHandler___block_invoke_2;
    v20[3] = &unk_278345760;
    v22 = v30;
    v23 = v28;
    v21 = v6;
    [(DCMapsLink *)self geocodeAddressString:destinationAddress2 inRegionIfAvailable:region completionHandler:v20];
  }

  v13 = dispatch_get_global_queue(0, 0);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__DCMapsLink_CLGeocoding__geocodeDirectionsEndpointsWithCompletionHandler___block_invoke_3;
  v15[3] = &unk_278345788;
  v16 = handlerCopy;
  v17 = v32;
  v18 = v30;
  v19 = v28;
  v14 = handlerCopy;
  dispatch_group_notify(v6, v13, v15);

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v30, 8);

  _Block_object_dispose(v32, 8);
}

void __75__DCMapsLink_CLGeocoding__geocodeDirectionsEndpointsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v6 = [a2 firstObject];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __75__DCMapsLink_CLGeocoding__geocodeDirectionsEndpointsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v6 = [a2 firstObject];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)geocodeAddressString:(id)string inRegionIfAvailable:(id)available completionHandler:(id)handler
{
  stringCopy = string;
  availableCopy = available;
  handlerCopy = handler;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v10 = getCLGeocoderClass_softClass;
  v17 = getCLGeocoderClass_softClass;
  if (!getCLGeocoderClass_softClass)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __getCLGeocoderClass_block_invoke;
    v13[3] = &unk_27834A178;
    v13[4] = &v14;
    __getCLGeocoderClass_block_invoke(v13);
    v10 = v15[3];
  }

  v11 = v10;
  _Block_object_dispose(&v14, 8);
  v12 = objc_opt_new();
  [v12 geocodeAddressString:stringCopy inRegion:availableCopy completionHandler:handlerCopy];
}

- (id)region
{
  [(DCMapsLink *)self centerCoordinate];

  return [(DCMapsLink *)self regionCenteredAtLocation:?];
}

- (id)regionCenteredAtLocation:(CLLocationCoordinate2D)location
{
  longitude = location.longitude;
  latitude = location.latitude;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v6 = getCLLocationCoordinate2DIsValidSymbolLoc_ptr;
  v30 = getCLLocationCoordinate2DIsValidSymbolLoc_ptr;
  if (!getCLLocationCoordinate2DIsValidSymbolLoc_ptr)
  {
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __getCLLocationCoordinate2DIsValidSymbolLoc_block_invoke;
    v25 = &unk_27834A178;
    v26 = &v27;
    v7 = CoreLocationLibrary_4237();
    v28[3] = dlsym(v7, "CLLocationCoordinate2DIsValid");
    getCLLocationCoordinate2DIsValidSymbolLoc_ptr = *(v26[1] + 24);
    v6 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (v6)
  {
    if (v6(latitude, longitude))
    {
      [(DCMapsLink *)self coordinateSpanForMapSize:256.0 centeredAtLocation:256.0, latitude, longitude];
      v9 = latitude - v8;
      v11 = longitude - v10;
      v12 = [objc_alloc(getCLLocationClass()) initWithLatitude:latitude longitude:longitude];
      v13 = [objc_alloc(getCLLocationClass()) initWithLatitude:v9 longitude:v11];
      [v13 distanceFromLocation:v12];
      v15 = v14;
      v27 = 0;
      v28 = &v27;
      v29 = 0x2050000000;
      v16 = getCLCircularRegionClass_softClass_4254;
      v30 = getCLCircularRegionClass_softClass_4254;
      if (!getCLCircularRegionClass_softClass_4254)
      {
        v22 = MEMORY[0x277D85DD0];
        v23 = 3221225472;
        v24 = __getCLCircularRegionClass_block_invoke_4255;
        v25 = &unk_27834A178;
        v26 = &v27;
        __getCLCircularRegionClass_block_invoke_4255(&v22);
        v16 = v28[3];
      }

      v17 = v16;
      _Block_object_dispose(&v27, 8);
      v18 = [[v16 alloc] initWithCenter:@"Region" radius:latitude identifier:{longitude, v15}];
    }

    else
    {
      v18 = 0;
    }

    return v18;
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL WFCLLocationCoordinate2DIsValid(CLLocationCoordinate2D)"];
    [currentHandler handleFailureInFunction:v21 file:@"DCMapsLink+CLGeocoding.m" lineNumber:18 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

- (id)wfSerializedRepresentation
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  searchQuery = [(DCMapsLink *)self searchQuery];

  if (searchQuery)
  {
    searchQuery2 = [(DCMapsLink *)self searchQuery];
    [v3 setObject:searchQuery2 forKey:@"searchQuery"];
  }

  searchNearQuery = [(DCMapsLink *)self searchNearQuery];

  if (searchNearQuery)
  {
    searchNearQuery2 = [(DCMapsLink *)self searchNearQuery];
    [v3 setObject:searchNearQuery2 forKey:@"searchNearQuery"];
  }

  searchLocation = [(DCMapsLink *)self searchLocation];

  if (searchLocation)
  {
    searchLocation2 = [(DCMapsLink *)self searchLocation];
    [v3 setObject:searchLocation2 forKey:@"searchLocation"];
  }

  startAddress = [(DCMapsLink *)self startAddress];

  if (startAddress)
  {
    startAddress2 = [(DCMapsLink *)self startAddress];
    [v3 setObject:startAddress2 forKey:@"startAddress"];
  }

  destinationAddress = [(DCMapsLink *)self destinationAddress];

  if (destinationAddress)
  {
    destinationAddress2 = [(DCMapsLink *)self destinationAddress];
    [v3 setObject:destinationAddress2 forKey:@"destinationAddress"];
  }

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DCMapsLink directionsMode](self, "directionsMode")}];
  [v3 setObject:v14 forKey:@"directionsMode"];

  centerLocation = [(DCMapsLink *)self centerLocation];

  if (centerLocation)
  {
    centerLocation2 = [(DCMapsLink *)self centerLocation];
    [v3 setObject:centerLocation2 forKey:@"centerLocation"];
  }

  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DCMapsLink zoomLevel](self, "zoomLevel")}];
  [v3 setObject:v17 forKey:@"zoomLevel"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DCMapsLink mapType](self, "mapType")}];
  [v3 setObject:v18 forKey:@"mapType"];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[DCMapsLink showsTraffic](self, "showsTraffic")}];
  [v3 setObject:v19 forKey:@"showsTraffic"];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[DCMapsLink showsTransit](self, "showsTransit")}];
  [v3 setObject:v20 forKey:@"showsTransit"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[DCMapsLink showsStreetView](self, "showsStreetView")}];
  [v3 setObject:v21 forKey:@"showsStreetView"];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[DCMapsLink showsBicycling](self, "showsBicycling")}];
  [v3 setObject:v22 forKey:@"showsBicycling"];

  streetViewLocation = [(DCMapsLink *)self streetViewLocation];

  if (streetViewLocation)
  {
    streetViewLocation2 = [(DCMapsLink *)self streetViewLocation];
    [v3 setObject:streetViewLocation2 forKey:@"streetViewLocation"];
  }

  v27 = @"link.contentkit.dcmapslink";
  v28[0] = v3;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];

  return v25;
}

+ (id)objectWithWFSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.dcmapslink"];

  v5 = objc_opt_new();
  v6 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"searchQuery"];
  [v5 setSearchQuery:v6];

  v7 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"searchNearQuery"];
  [v5 setSearchNearQuery:v7];

  v8 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"searchLocation"];
  [v5 setSearchLocation:v8];

  v9 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"startAddress"];
  [v5 setStartAddress:v9];

  v10 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"destinationAddress"];
  [v5 setDestinationAddress:v10];

  v11 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"directionsMode"];
  [v5 setDirectionsMode:{objc_msgSend(v11, "unsignedIntegerValue")}];

  v12 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"centerLocation"];
  [v5 setCenterLocation:v12];

  v13 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"zoomLevel"];
  [v5 setZoomLevel:{objc_msgSend(v13, "integerValue")}];

  v14 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"mapType"];
  [v5 setMapType:{objc_msgSend(v14, "unsignedIntegerValue")}];

  v15 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"showsTraffic"];
  [v5 setShowsTraffic:{objc_msgSend(v15, "BOOLValue")}];

  v16 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"showsTransit"];
  [v5 setShowsTransit:{objc_msgSend(v16, "BOOLValue")}];

  v17 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"showsStreetView"];
  [v5 setShowsStreetView:{objc_msgSend(v17, "BOOLValue")}];

  v18 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"showsBicycling"];
  [v5 setShowsBicycling:{objc_msgSend(v18, "BOOLValue")}];

  v19 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"streetViewLocation"];
  [v5 setStreetViewLocation:v19];

  return v5;
}

- (NSString)wfName
{
  v3 = WFLocalizedString(@"Unknown Maps Link");
  if ([(DCMapsLink *)self directionsMode])
  {
    startAddress = [(DCMapsLink *)self startAddress];
    if (startAddress)
    {
      v5 = startAddress;
      destinationAddress = [(DCMapsLink *)self destinationAddress];

      if (destinationAddress)
      {
        v7 = MEMORY[0x277CCACA8];
        v8 = WFLocalizedString(@"Directions from %@ to %@");
        startAddress2 = [(DCMapsLink *)self startAddress];
        destinationAddress2 = [(DCMapsLink *)self destinationAddress];
        v11 = [v7 localizedStringWithFormat:v8, startAddress2, destinationAddress2];

        goto LABEL_14;
      }
    }

    startAddress3 = [(DCMapsLink *)self startAddress];
    if (!startAddress3)
    {
      destinationAddress3 = [(DCMapsLink *)self destinationAddress];
LABEL_10:
      v14 = destinationAddress3;
      if (destinationAddress3)
      {
        v15 = destinationAddress3;
      }

      else
      {
        v15 = v3;
      }

      v11 = v15;

      v8 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    startAddress3 = [(DCMapsLink *)self searchQuery];
    if (!startAddress3)
    {
      destinationAddress3 = [(DCMapsLink *)self searchNearQuery];
      goto LABEL_10;
    }
  }

  v8 = startAddress3;
  v11 = v8;
LABEL_14:

  return v11;
}

- (void)getAppleMapsDirectionsURL:(id)l
{
  lCopy = l;
  v5 = objc_opt_new();
  if ([(DCMapsLink *)self mapType])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DCMapsLink mkMapType](self, "mkMapType")}];
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v7 = getMKLaunchOptionsMapTypeKeySymbolLoc_ptr;
    v38 = getMKLaunchOptionsMapTypeKeySymbolLoc_ptr;
    if (!getMKLaunchOptionsMapTypeKeySymbolLoc_ptr)
    {
      v30 = MEMORY[0x277D85DD0];
      v31 = 3221225472;
      v32 = __getMKLaunchOptionsMapTypeKeySymbolLoc_block_invoke;
      v33 = &unk_27834A178;
      v34 = &v35;
      v8 = MapKitLibrary_9065();
      v36[3] = dlsym(v8, "MKLaunchOptionsMapTypeKey");
      getMKLaunchOptionsMapTypeKeySymbolLoc_ptr = *(v34[1] + 24);
      v7 = v36[3];
    }

    _Block_object_dispose(&v35, 8);
    if (!v7)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMKLaunchOptionsMapTypeKey(void)"];
      [currentHandler handleFailureInFunction:v26 file:@"DCMapsLink+MKDirections.m" lineNumber:31 description:{@"%s", dlerror()}];
      goto LABEL_28;
    }

    [v5 setObject:v6 forKey:*v7];
  }

  if ([(DCMapsLink *)self showsTraffic])
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v9 = getMKLaunchOptionsShowsTrafficKeySymbolLoc_ptr;
    v38 = getMKLaunchOptionsShowsTrafficKeySymbolLoc_ptr;
    if (!getMKLaunchOptionsShowsTrafficKeySymbolLoc_ptr)
    {
      v30 = MEMORY[0x277D85DD0];
      v31 = 3221225472;
      v32 = __getMKLaunchOptionsShowsTrafficKeySymbolLoc_block_invoke;
      v33 = &unk_27834A178;
      v34 = &v35;
      v10 = MapKitLibrary_9065();
      v36[3] = dlsym(v10, "MKLaunchOptionsShowsTrafficKey");
      getMKLaunchOptionsShowsTrafficKeySymbolLoc_ptr = *(v34[1] + 24);
      v9 = v36[3];
    }

    _Block_object_dispose(&v35, 8);
    if (!v9)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMKLaunchOptionsShowsTrafficKey(void)"];
      [currentHandler handleFailureInFunction:v26 file:@"DCMapsLink+MKDirections.m" lineNumber:32 description:{@"%s", dlerror()}];
      goto LABEL_28;
    }

    [v5 setObject:MEMORY[0x277CBEC38] forKey:*v9];
  }

  mkDirectionsMode = [(DCMapsLink *)self mkDirectionsMode];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v12 = getMKLaunchOptionsDirectionsModeKeySymbolLoc_ptr;
  v38 = getMKLaunchOptionsDirectionsModeKeySymbolLoc_ptr;
  if (!getMKLaunchOptionsDirectionsModeKeySymbolLoc_ptr)
  {
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __getMKLaunchOptionsDirectionsModeKeySymbolLoc_block_invoke;
    v33 = &unk_27834A178;
    v34 = &v35;
    v13 = MapKitLibrary_9065();
    v36[3] = dlsym(v13, "MKLaunchOptionsDirectionsModeKey");
    getMKLaunchOptionsDirectionsModeKeySymbolLoc_ptr = *(v34[1] + 24);
    v12 = v36[3];
  }

  _Block_object_dispose(&v35, 8);
  if (v12)
  {
    [v5 setObject:mkDirectionsMode forKey:*v12];

    [(DCMapsLink *)self centerCoordinate];
    v15 = v14;
    v17 = v16;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v18 = getCLLocationCoordinate2DIsValidSymbolLoc_ptr_9071;
    v38 = getCLLocationCoordinate2DIsValidSymbolLoc_ptr_9071;
    if (!getCLLocationCoordinate2DIsValidSymbolLoc_ptr_9071)
    {
      v30 = MEMORY[0x277D85DD0];
      v31 = 3221225472;
      v32 = __getCLLocationCoordinate2DIsValidSymbolLoc_block_invoke_9072;
      v33 = &unk_27834A178;
      v34 = &v35;
      __getCLLocationCoordinate2DIsValidSymbolLoc_block_invoke_9072(&v30);
      v18 = v36[3];
    }

    _Block_object_dispose(&v35, 8);
    if (v18)
    {
      if (!v18(v15, v17))
      {
LABEL_22:
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __54__DCMapsLink_MKDirections__getAppleMapsDirectionsURL___block_invoke;
        v27[3] = &unk_278346928;
        v28 = v5;
        v29 = lCopy;
        v23 = v5;
        v24 = lCopy;
        [(DCMapsLink *)self geocodeDirectionsEndpointsWithCompletionHandler:v27];

        return;
      }

      v19 = [MEMORY[0x277CCAE60] valueWithMKCoordinate:{v15, v17}];
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v20 = getMKLaunchOptionsMapCenterKeySymbolLoc_ptr;
      v38 = getMKLaunchOptionsMapCenterKeySymbolLoc_ptr;
      if (!getMKLaunchOptionsMapCenterKeySymbolLoc_ptr)
      {
        v30 = MEMORY[0x277D85DD0];
        v31 = 3221225472;
        v32 = __getMKLaunchOptionsMapCenterKeySymbolLoc_block_invoke;
        v33 = &unk_27834A178;
        v34 = &v35;
        v21 = MapKitLibrary_9065();
        v22 = dlsym(v21, "MKLaunchOptionsMapCenterKey");
        *(v34[1] + 24) = v22;
        getMKLaunchOptionsMapCenterKeySymbolLoc_ptr = *(v34[1] + 24);
        v20 = v36[3];
      }

      _Block_object_dispose(&v35, 8);
      if (v20)
      {
        [v5 setObject:v19 forKey:*v20];

        goto LABEL_22;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMKLaunchOptionsMapCenterKey(void)"];
      [currentHandler handleFailureInFunction:v26 file:@"DCMapsLink+MKDirections.m" lineNumber:34 description:{@"%s", dlerror()}];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL WFCLLocationCoordinate2DIsValid(CLLocationCoordinate2D)"];
      [currentHandler handleFailureInFunction:v26 file:@"DCMapsLink+MKDirections.m" lineNumber:40 description:{@"%s", dlerror()}];
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMKLaunchOptionsDirectionsModeKey(void)"];
    [currentHandler handleFailureInFunction:v26 file:@"DCMapsLink+MKDirections.m" lineNumber:33 description:{@"%s", dlerror()}];
  }

LABEL_28:

  __break(1u);
}

void __54__DCMapsLink_MKDirections__getAppleMapsDirectionsURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = objc_opt_new();
  MKMapItemClass_9076 = getMKMapItemClass_9076();
  if (v17)
  {
    v8 = [MKMapItemClass_9076 alloc];
    v9 = [objc_alloc(getMKPlacemarkClass()) initWithPlacemark:v17];
    v10 = [v8 initWithPlacemark:v9];
  }

  else
  {
    v10 = [(objc_class *)MKMapItemClass_9076 mapItemForCurrentLocation];
  }

  [v6 addObject:v10];
  v11 = getMKMapItemClass_9076();
  if (v5)
  {
    v12 = [v11 alloc];
    v13 = [objc_alloc(getMKPlacemarkClass()) initWithPlacemark:v5];
    v14 = [v12 initWithPlacemark:v13];
  }

  else
  {
    v14 = [(objc_class *)v11 mapItemForCurrentLocation];
  }

  [v6 addObject:v14];
  v15 = *(a1 + 40);
  v16 = [getMKMapItemClass_9076() urlForMapItems:v6 options:*(a1 + 32)];
  (*(v15 + 16))(v15, v16, 0);
}

- (NSString)mkDirectionsMode
{
  directionsMode = [(DCMapsLink *)self directionsMode];
  if (directionsMode <= 2)
  {
    if (directionsMode == 1)
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v3 = getMKLaunchOptionsDirectionsModeDrivingSymbolLoc_ptr;
      v20 = getMKLaunchOptionsDirectionsModeDrivingSymbolLoc_ptr;
      if (!getMKLaunchOptionsDirectionsModeDrivingSymbolLoc_ptr)
      {
        v13 = MEMORY[0x277D85DD0];
        v14 = 3221225472;
        v15 = __getMKLaunchOptionsDirectionsModeDrivingSymbolLoc_block_invoke;
        v16 = &unk_27834A178;
        v9 = MapKitLibrary_9065();
        v18[3] = dlsym(v9, "MKLaunchOptionsDirectionsModeDriving");
        getMKLaunchOptionsDirectionsModeDrivingSymbolLoc_ptr = v18[3];
        v3 = v18[3];
      }

      _Block_object_dispose(&v17, 8);
      if (!v3)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMKLaunchOptionsDirectionsModeDriving(void)"];
        [currentHandler handleFailureInFunction:v6 file:@"DCMapsLink+MKDirections.m" lineNumber:27 description:{@"%s", dlerror(), v13, v14, v15, v16}];
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    if (directionsMode == 2)
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v3 = getMKLaunchOptionsDirectionsModeCyclingSymbolLoc_ptr;
      v20 = getMKLaunchOptionsDirectionsModeCyclingSymbolLoc_ptr;
      if (!getMKLaunchOptionsDirectionsModeCyclingSymbolLoc_ptr)
      {
        v13 = MEMORY[0x277D85DD0];
        v14 = 3221225472;
        v15 = __getMKLaunchOptionsDirectionsModeCyclingSymbolLoc_block_invoke;
        v16 = &unk_27834A178;
        v4 = MapKitLibrary_9065();
        v18[3] = dlsym(v4, "MKLaunchOptionsDirectionsModeCycling");
        getMKLaunchOptionsDirectionsModeCyclingSymbolLoc_ptr = v18[3];
        v3 = v18[3];
      }

      _Block_object_dispose(&v17, 8);
      if (!v3)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMKLaunchOptionsDirectionsModeCycling(void)"];
        [currentHandler handleFailureInFunction:v6 file:@"DCMapsLink+MKDirections.m" lineNumber:28 description:{@"%s", dlerror(), v13, v14, v15, v16}];
LABEL_29:

        __break(1u);
        return result;
      }

      goto LABEL_25;
    }

LABEL_14:
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v3 = getMKLaunchOptionsDirectionsModeDefaultSymbolLoc_ptr;
    v20 = getMKLaunchOptionsDirectionsModeDefaultSymbolLoc_ptr;
    if (!getMKLaunchOptionsDirectionsModeDefaultSymbolLoc_ptr)
    {
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __getMKLaunchOptionsDirectionsModeDefaultSymbolLoc_block_invoke;
      v16 = &unk_27834A178;
      v8 = MapKitLibrary_9065();
      v18[3] = dlsym(v8, "MKLaunchOptionsDirectionsModeDefault");
      getMKLaunchOptionsDirectionsModeDefaultSymbolLoc_ptr = v18[3];
      v3 = v18[3];
    }

    _Block_object_dispose(&v17, 8);
    if (!v3)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMKLaunchOptionsDirectionsModeDefault(void)"];
      [currentHandler handleFailureInFunction:v6 file:@"DCMapsLink+MKDirections.m" lineNumber:29 description:{@"%s", dlerror(), v13, v14, v15, v16}];
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  if (directionsMode == 4)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v3 = getMKLaunchOptionsDirectionsModeTransitSymbolLoc_ptr;
    v20 = getMKLaunchOptionsDirectionsModeTransitSymbolLoc_ptr;
    if (!getMKLaunchOptionsDirectionsModeTransitSymbolLoc_ptr)
    {
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __getMKLaunchOptionsDirectionsModeTransitSymbolLoc_block_invoke;
      v16 = &unk_27834A178;
      v10 = MapKitLibrary_9065();
      v18[3] = dlsym(v10, "MKLaunchOptionsDirectionsModeTransit");
      getMKLaunchOptionsDirectionsModeTransitSymbolLoc_ptr = v18[3];
      v3 = v18[3];
    }

    _Block_object_dispose(&v17, 8);
    if (!v3)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMKLaunchOptionsDirectionsModeTransit(void)"];
      [currentHandler handleFailureInFunction:v6 file:@"DCMapsLink+MKDirections.m" lineNumber:26 description:{@"%s", dlerror(), v13, v14, v15, v16}];
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  if (directionsMode != 3)
  {
    goto LABEL_14;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v3 = getMKLaunchOptionsDirectionsModeWalkingSymbolLoc_ptr;
  v20 = getMKLaunchOptionsDirectionsModeWalkingSymbolLoc_ptr;
  if (!getMKLaunchOptionsDirectionsModeWalkingSymbolLoc_ptr)
  {
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __getMKLaunchOptionsDirectionsModeWalkingSymbolLoc_block_invoke;
    v16 = &unk_27834A178;
    v7 = MapKitLibrary_9065();
    v18[3] = dlsym(v7, "MKLaunchOptionsDirectionsModeWalking");
    getMKLaunchOptionsDirectionsModeWalkingSymbolLoc_ptr = v18[3];
    v3 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (!v3)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMKLaunchOptionsDirectionsModeWalking(void)"];
    [currentHandler handleFailureInFunction:v6 file:@"DCMapsLink+MKDirections.m" lineNumber:25 description:{@"%s", dlerror(), v13, v14, v15, v16}];
    goto LABEL_29;
  }

LABEL_25:
  v11 = *v3;

  return v11;
}

- (unint64_t)directionsTransportType
{
  directionsMode = [(DCMapsLink *)self directionsMode];
  if (directionsMode - 1 > 3)
  {
    return 0xFFFFFFFLL;
  }

  else
  {
    return qword_21E356A28[directionsMode - 1];
  }
}

- (void)getDirectionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__DCMapsLink_MKDirections__getDirectionsWithCompletionHandler___block_invoke;
  v6[3] = &unk_278346928;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(DCMapsLink *)self geocodeDirectionsEndpointsWithCompletionHandler:v6];
}

uint64_t __63__DCMapsLink_MKDirections__getDirectionsWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [*(a1 + 32) getDirectionsToPlacemark:a3 fromPlacemark:a2 withCompletionHandler:*(a1 + 40)];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (void)getDirectionsToPlacemark:(id)placemark fromPlacemark:(id)fromPlacemark withCompletionHandler:(id)handler
{
  placemarkCopy = placemark;
  fromPlacemarkCopy = fromPlacemark;
  handlerCopy = handler;
  if (fromPlacemarkCopy)
  {
    v11 = [objc_alloc(getMKPlacemarkClass()) initWithPlacemark:fromPlacemarkCopy];
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_alloc(getMKPlacemarkClass()) initWithPlacemark:placemarkCopy];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v13 = getMKDirectionsRequestClass_softClass;
  v31 = getMKDirectionsRequestClass_softClass;
  if (!getMKDirectionsRequestClass_softClass)
  {
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __getMKDirectionsRequestClass_block_invoke;
    v26 = &unk_27834A178;
    v27 = &v28;
    __getMKDirectionsRequestClass_block_invoke(&v23);
    v13 = v29[3];
  }

  v14 = v13;
  _Block_object_dispose(&v28, 8);
  v15 = objc_opt_new();
  MKMapItemClass_9076 = getMKMapItemClass_9076();
  if (v11)
  {
    mapItemForCurrentLocation = [[MKMapItemClass_9076 alloc] initWithPlacemark:v11];
  }

  else
  {
    mapItemForCurrentLocation = [(objc_class *)MKMapItemClass_9076 mapItemForCurrentLocation];
  }

  v18 = mapItemForCurrentLocation;
  [v15 setSource:mapItemForCurrentLocation];

  v19 = [objc_alloc(getMKMapItemClass_9076()) initWithPlacemark:v12];
  [v15 setDestination:v19];

  [v15 setTransportType:{-[DCMapsLink directionsTransportType](self, "directionsTransportType")}];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v20 = getMKDirectionsClass_softClass;
  v31 = getMKDirectionsClass_softClass;
  if (!getMKDirectionsClass_softClass)
  {
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __getMKDirectionsClass_block_invoke;
    v26 = &unk_27834A178;
    v27 = &v28;
    __getMKDirectionsClass_block_invoke(&v23);
    v20 = v29[3];
  }

  v21 = v20;
  _Block_object_dispose(&v28, 8);
  v22 = [[v20 alloc] initWithRequest:v15];
  handlerCopy[2](handlerCopy, v22, 0);
}

- (BOOL)canGetDirections
{
  startAddress = [(DCMapsLink *)self startAddress];
  if ([startAddress length])
  {
    destinationAddress = [(DCMapsLink *)self destinationAddress];
    v5 = [destinationAddress length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)createMapsLinkWithPlacemark:(id)placemark location:(id)location streetAddress:(id)address shiftingLocationIfNecessary:(BOOL)necessary completionHandler:(id)handler
{
  necessaryCopy = necessary;
  placemarkCopy = placemark;
  locationCopy = location;
  addressCopy = address;
  handlerCopy = handler;
  if (!addressCopy && !placemarkCopy && !locationCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"DCMapsLink+WFLocationCoercions.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"placemark || location || streetAddress"}];

    goto LABEL_5;
  }

  if (!locationCopy)
  {
LABEL_5:
    locationCopy = [placemarkCopy location];
  }

  if (placemarkCopy && !addressCopy)
  {
    addressCopy = [WFStreetAddress streetAddressWithPlacemark:placemarkCopy label:0];
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __132__DCMapsLink_WFLocationCoercions__createMapsLinkWithPlacemark_location_streetAddress_shiftingLocationIfNecessary_completionHandler___block_invoke;
  v20[3] = &unk_278347788;
  v21 = addressCopy;
  v22 = handlerCopy;
  v17 = handlerCopy;
  v18 = addressCopy;
  [self processLocation:locationCopy shiftingIfNecessary:necessaryCopy completionHandler:v20];
}

void __132__DCMapsLink_WFLocationCoercions__createMapsLinkWithPlacemark_location_streetAddress_shiftingLocationIfNecessary_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = objc_alloc_init(DCMutableMapsLink);
  if (v11)
  {
    v4 = MEMORY[0x277CCACA8];
    [v11 coordinate];
    v6 = v5;
    [v11 coordinate];
    v8 = [v4 stringWithFormat:@"%f, %f", v6, v7];
    [(DCMutableMapsLink *)v3 setCenterLocation:v8];
  }

  v9 = [*(a1 + 32) addressString];
  if (v9)
  {
    [(DCMutableMapsLink *)v3 setSearchQuery:v9];
  }

  else
  {
    v10 = [(DCMutableMapsLink *)v3 centerLocation];
    [(DCMutableMapsLink *)v3 setSearchQuery:v10];
  }

  (*(*(a1 + 40) + 16))();
}

+ (void)processLocation:(id)location shiftingIfNecessary:(BOOL)necessary completionHandler:(id)handler
{
  necessaryCopy = necessary;
  locationCopy = location;
  handlerCopy = handler;
  MKLocationShifterClass = get_MKLocationShifterClass();
  if (necessaryCopy && (v9 = MKLocationShifterClass) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [v9 instancesRespondToSelector:sel_shiftLocation_withCompletionHandler_callbackQueue_] && (objc_msgSend(v9, "isLocationShiftRequiredForLocation:", locationCopy) & 1) != 0)
  {
    get_MKLocationShifterClass();
    v10 = objc_opt_new();
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v11 = MEMORY[0x277D85CD0];
      v12 = MEMORY[0x277D85CD0];
    }

    else
    {
      v11 = dispatch_get_global_queue(0, 0);
    }

    [v10 shiftLocation:locationCopy withCompletionHandler:handlerCopy callbackQueue:v11];
  }

  else
  {
    handlerCopy[2](handlerCopy, locationCopy);
  }
}

- (NSString)description
{
  startAddress = [(DCMapsLink *)self startAddress];

  v4 = MEMORY[0x277CCACA8];
  if (startAddress)
  {
    v11.receiver = self;
    v11.super_class = DCMapsLink;
    v5 = [(DCMapsLink *)&v11 description];
    startAddress2 = [(DCMapsLink *)self startAddress];
    destinationAddress = [(DCMapsLink *)self destinationAddress];
    v8 = [v4 stringWithFormat:@"%@: Directions from %@ to %@", v5, startAddress2, destinationAddress];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = DCMapsLink;
    v5 = [(DCMapsLink *)&v10 description];
    startAddress2 = [(DCMapsLink *)self searchQuery];
    v8 = [v4 stringWithFormat:@"%@: %@", v5, startAddress2];
  }

  return v8;
}

+ (BOOL)isMapsURL:(id)l
{
  lCopy = l;
  v4 = [DCNewGoogleMapsLink isMapsURL:lCopy]|| [DCStandardMapsLink isMapsURL:lCopy];

  return v4;
}

+ (DCMapsLink)mapsLinkWithURL:(id)l
{
  lCopy = l;
  v4 = [DCNewGoogleMapsLink mapsLinkWithURL:lCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [DCStandardMapsLink mapsLinkWithURL:lCopy];
  }

  v7 = v6;

  return v7;
}

- ($1655AFAB7F657C4F8B0504A4BF66C03D)coordinateRegionForMapSize:(SEL)size centeredAtLocation:(CGSize)location
{
  longitude = a5.longitude;
  latitude = a5.latitude;
  [(DCMapsLink *)self coordinateSpanForMapSize:location.width centeredAtLocation:location.height];

  WFMKCoordinateRegionMake(latitude, longitude, v7, v8);
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinateSpanForMapSize:(CGSize)size centeredAtLocation:(CLLocationCoordinate2D)location
{
  longitude = location.longitude;
  latitude = location.latitude;
  height = size.height;
  width = size.width;
  v9 = objc_opt_class();
  zoomLevel = [(DCMapsLink *)self zoomLevel];

  [v9 coordinateSpanForMapSize:zoomLevel centeredAtLocation:width atZoomLevel:{height, latitude, longitude}];
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

- (unint64_t)mkMapType
{
  mapType = [(DCMapsLink *)self mapType];
  if (mapType == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (mapType == 3);
  }
}

- (CLLocationCoordinate2D)centerCoordinate
{
  [(DCMapsLink *)self streetViewLocationCoordinate];
  v4 = v3;
  v6 = v5;
  WFCLLocationCoordinate2DIsValid(v3, v5);
  if ((v7 & 1) == 0)
  {
    [(DCMapsLink *)self centerLocationCoordinate];
    v4 = v8;
    v6 = v9;
    WFCLLocationCoordinate2DIsValid(v8, v9);
    if ((v10 & 1) == 0)
    {
      [(DCMapsLink *)self searchLocationCoordinate];
      v4 = v11;
      v6 = v12;
      WFCLLocationCoordinate2DIsValid(v11, v12);
      if ((v13 & 1) == 0)
      {
        getkCLLocationCoordinate2DInvalid();
        v4 = v14;
        v6 = v15;
      }
    }
  }

  v16 = v4;
  v17 = v6;
  result.longitude = v17;
  result.latitude = v16;
  return result;
}

- (CLLocationCoordinate2D)streetViewLocationCoordinate
{
  streetViewLocation = [(DCMapsLink *)self streetViewLocation];
  [(DCMapsLink *)self locationCoordinateFromString:streetViewLocation];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.longitude = v9;
  result.latitude = v8;
  return result;
}

- (CLLocationCoordinate2D)centerLocationCoordinate
{
  centerLocation = [(DCMapsLink *)self centerLocation];
  [(DCMapsLink *)self locationCoordinateFromString:centerLocation];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.longitude = v9;
  result.latitude = v8;
  return result;
}

- (CLLocationCoordinate2D)searchLocationCoordinate
{
  searchLocation = [(DCMapsLink *)self searchLocation];
  [(DCMapsLink *)self locationCoordinateFromString:searchLocation];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.longitude = v9;
  result.latitude = v8;
  return result;
}

- (CLLocationCoordinate2D)locationCoordinateFromString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy componentsSeparatedByString:{@", "}];
  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndex:0];
    [v5 doubleValue];
    v7 = v6;
    v8 = [v4 objectAtIndex:1];
    [v8 doubleValue];
    v10 = v9;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v11 = getCLLocationCoordinate2DMakeSymbolLoc_ptr_17841;
    v25 = getCLLocationCoordinate2DMakeSymbolLoc_ptr_17841;
    if (!getCLLocationCoordinate2DMakeSymbolLoc_ptr_17841)
    {
      v12 = CoreLocationLibrary_17829();
      v23[3] = dlsym(v12, "CLLocationCoordinate2DMake");
      getCLLocationCoordinate2DMakeSymbolLoc_ptr_17841 = v23[3];
      v11 = v23[3];
    }

    _Block_object_dispose(&v22, 8);
    if (!v11)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CLLocationCoordinate2D WFCLLocationCoordinate2DMake(CLLocationDegrees, CLLocationDegrees)"}];
      [currentHandler handleFailureInFunction:v21 file:@"DCMapsLink+MKGeometry.m" lineNumber:16 description:{@"%s", dlerror()}];

      __break(1u);
      goto LABEL_9;
    }

    v13 = v11(v7, v10);
    v15 = v14;
  }

  else
  {
    getkCLLocationCoordinate2DInvalid();
    v13 = v16;
    v15 = v17;
  }

  v18 = v13;
  v19 = v15;
LABEL_9:
  result.longitude = v19;
  result.latitude = v18;
  return result;
}

+ ($4DDE7BAD8B52DEF6C4C48F8A4C97F2FC)coordinateRegionForMapSize:(SEL)size centeredAtLocation:(CGSize)location atZoomLevel:(CLLocationCoordinate2D)level
{
  longitude = level.longitude;
  latitude = level.latitude;
  [a2 coordinateSpanForMapSize:a6 centeredAtLocation:location.width atZoomLevel:location.height];

  WFMKCoordinateRegionMake(latitude, longitude, v8, v9);
  return result;
}

+ ($F24F406B2B787EFB06265DBA3D28CBD5)coordinateSpanForMapSize:(CGSize)size centeredAtLocation:(CLLocationCoordinate2D)location atZoomLevel:(int64_t)level
{
  latitude = location.latitude;
  height = size.height;
  width = size.width;
  [self longitudeToPixelSpaceX:location.longitude];
  v11 = v10;
  [self latitudeToPixelSpaceY:latitude];
  v13 = v12;
  v14 = exp2((23 - level));
  v15 = width * v14;
  v16 = height * v14;
  v17 = v11 - v15 * 0.5;
  v18 = v13 - v16 * 0.5;
  [self pixelSpaceXToLongitude:v17];
  v20 = v19;
  [self pixelSpaceXToLongitude:(v15 + v17)];
  v22 = v21;
  [self pixelSpaceYToLatitude:v18];
  v24 = v23;
  [self pixelSpaceYToLatitude:(v16 + v18)];
  v26 = v25;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v27 = getMKCoordinateSpanMakeSymbolLoc_ptr;
  v36 = getMKCoordinateSpanMakeSymbolLoc_ptr;
  if (!getMKCoordinateSpanMakeSymbolLoc_ptr)
  {
    v28 = MapKitLibrary_17816();
    v34[3] = dlsym(v28, "MKCoordinateSpanMake");
    getMKCoordinateSpanMakeSymbolLoc_ptr = v34[3];
    v27 = v34[3];
  }

  _Block_object_dispose(&v33, 8);
  if (v27)
  {
    v27(-(v26 - v24), v22 - v20);
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"MKCoordinateSpan WFMKCoordinateSpanMake(CLLocationDegrees, CLLocationDegrees)"}];
    [currentHandler handleFailureInFunction:v32 file:@"DCMapsLink+MKGeometry.m" lineNumber:21 description:{@"%s", dlerror()}];

    __break(1u);
  }

  result.var1 = v30;
  result.var0 = v29;
  return result;
}

+ (double)latitudeToPixelSpaceY:(double)y
{
  v3 = y * 3.14159265 / 180.0;
  v4 = sinf(v3);
  return round(logf((v4 + 1.0) / (1.0 - v4)) * -85445659.4 * 0.5 + 268435456.0);
}

@end