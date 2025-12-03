@interface RTHelperService
+ (id)computeMetricsForAnalyticsIdentifier:(id)identifier appIdentifier:(id)appIdentifier requestType:(unint64_t)type mapItems:(id)items serviceError:(id)error isBackgroundRequest:(BOOL)request;
+ (id)exposedErrorFrom:(id)from;
+ (void)submitMetricsForAnalyticsIdentifier:(id)identifier appIdentifier:(id)appIdentifier requestType:(unint64_t)type mapItems:(id)items serviceError:(id)error isBackgroundRequest:(BOOL)request;
- (RTHelperService)init;
- (RTHelperService)initWithGeoMapService:(id)service;
- (double)confidenceWeightForGeoMapItem:(id)item startDate:(id)date endDate:(id)endDate timeZone:(id)zone;
- (id)_buildingPolygonsFromGEOBuilding:(id)building;
- (id)_mapItemFromGEOMapItem:(id)item mapItemSource:(unint64_t)source confidenceScalingFactor:(double)factor;
- (id)_mapItemsFromGEOMapItems:(id)items mapItemSource:(unint64_t)source;
- (id)defaultTraitsForOptions:(id)options selector:(SEL)selector;
- (id)getDefaultMapServiceOptions;
- (void)_relatedPlacesMapItemsIdentifiersForGEOMapItem:(id)item relatedPlaceListType:(int)type handler:(id)handler;
- (void)_relatedPlacesMapItemsIdentifiersForGEOMapItems:(id)items relatedPlaceListType:(int)type handler:(id)handler;
- (void)addTicket:(id)ticket;
- (void)cancelTicket:(id)ticket;
- (void)compileCoreMLModelAtURL:(id)l handler:(id)handler;
- (void)computeWithInputSignals:(id)signals handler:(id)handler;
- (void)createMapItemWithIdentifier:(id)identifier geoMapItemStorage:(id)storage source:(unint64_t)source creationDate:(id)date handler:(id)handler;
- (void)dealloc;
- (void)downloadBluePOIMetadataWithHandler:(id)handler;
- (void)downloadBluePOITilesForDownloadKeys:(id)keys handler:(id)handler;
- (void)fetchAppClipURLsForMapItem:(id)item options:(id)options handler:(id)handler;
- (void)fetchBluePOIMetadataWithHandler:(id)handler;
- (void)fetchBluePOITilesForDownloadKeys:(id)keys handler:(id)handler;
- (void)fetchBuildingPolygonsFromLocation:(id)location radius:(double)radius handler:(id)handler;
- (void)fetchConfidenceWeightForMapItem:(id)item startDate:(id)date endDate:(id)endDate options:(id)options handler:(id)handler;
- (void)fetchCountryAndSubdivisionCodesFromLocation:(id)location options:(id)options handler:(id)handler;
- (void)fetchGeoMapItemFromHandle:(id)handle options:(id)options handler:(id)handler;
- (void)fetchMapGEOItemsFromLocation:(id)location options:(id)options handler:(id)handler;
- (void)fetchMapItemFromHandle:(id)handle options:(id)options handler:(id)handler;
- (void)fetchMapItemsFromAddressDictionary:(id)dictionary options:(id)options handler:(id)handler;
- (void)fetchMapItemsFromAddressString:(id)string options:(id)options handler:(id)handler;
- (void)fetchMapItemsFromIdentifiers:(id)identifiers options:(id)options source:(unint64_t)source handler:(id)handler;
- (void)fetchMapItemsFromLocation:(id)location options:(id)options handler:(id)handler;
- (void)fetchMapItemsFromLocations:(id)locations accessPoints:(id)points startDate:(id)date endDate:(id)endDate options:(id)options handler:(id)handler;
- (void)fetchMapItemsFromNaturalLanguageQuery:(id)query location:(id)location options:(id)options handler:(id)handler;
- (void)fetchMapItemsRelatedPlacesFromLocation:(id)location options:(id)options handler:(id)handler;
- (void)fetchPointOfInterestAttributesWithIdentifier:(unint64_t)identifier options:(id)options handler:(id)handler;
- (void)fetchPointOfInterestsAroundCoordinate:(id)coordinate radius:(double)radius options:(id)options handler:(id)handler;
- (void)fetchPostalAddressForMapItem:(id)item options:(id)options handler:(id)handler;
- (void)fetchRelatedPlacesMapItemsForMapItem:(id)item relatedPlaceListType:(int)type options:(id)options source:(unint64_t)source handler:(id)handler;
- (void)interruptComputeWithError:(id)error;
- (void)loadProtobufTileAtPath:(id)path handler:(id)handler;
- (void)removeTicket:(id)ticket;
@end

@implementation RTHelperService

- (RTHelperService)init
{
  v3 = objc_opt_new();
  v4 = [(RTHelperService *)self initWithGeoMapService:v3];

  return v4;
}

- (RTHelperService)initWithGeoMapService:(id)service
{
  serviceCopy = service;
  if (serviceCopy)
  {
    v23.receiver = self;
    v23.super_class = RTHelperService;
    v6 = [(RTHelperService *)&v23 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_geoMapService, service);
      v8 = objc_opt_new();
      tickets = v7->_tickets;
      v7->_tickets = v8;

      v10 = [[GEOMapFeatureAccess alloc] initWithQueue:&_dispatch_main_q memoryCacheCountLimit:0 memoryCacheCostLimit:0];
      mapFeatureAccess = v7->_mapFeatureAccess;
      v7->_mapFeatureAccess = v10;

      [(GEOMapFeatureAccess *)v7->_mapFeatureAccess setAllowNetworkTileLoad:1];
      v12 = objc_alloc_init(RTPredictedContextAlgorithmsService);
      contextAlgorithmsService = v7->_contextAlgorithmsService;
      v7->_contextAlgorithmsService = v12;

      v14 = v7;
      v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        uTF8String = [(RTHelperService *)v14 UTF8String];
      }

      else
      {
        v19 = [NSString stringWithFormat:@"%@-%p", objc_opt_class(), v14];
        uTF8String = [v19 UTF8String];
      }

      v20 = dispatch_queue_create(uTF8String, v15);

      queue = v14->_queue;
      v14->_queue = v20;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    v17 = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: geoMapService", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)addTicket:(id)ticket
{
  if (ticket)
  {
    tickets = self->_tickets;

    [(NSMutableSet *)tickets addObject:?];
  }

  else
  {
    v4 = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[RTHelperService addTicket:]";
      v7 = 1024;
      v8 = 193;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: ticket (in %s:%d)", &v5, 0x12u);
    }
  }
}

- (void)removeTicket:(id)ticket
{
  if (ticket)
  {
    tickets = self->_tickets;

    [(NSMutableSet *)tickets removeObject:?];
  }

  else
  {
    v4 = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[RTHelperService removeTicket:]";
      v7 = 1024;
      v8 = 204;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: ticket (in %s:%d)", &v5, 0x12u);
    }
  }
}

- (void)cancelTicket:(id)ticket
{
  if (ticket)
  {

    [ticket cancel];
  }

  else
  {
    v3 = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[RTHelperService cancelTicket:]";
      v6 = 1024;
      v7 = 215;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: ticket (in %s:%d)", &v4, 0x12u);
    }
  }
}

- (void)dealloc
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_tickets;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(RTHelperService *)self cancelTicket:*(*(&v9 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = RTHelperService;
  [(RTHelperService *)&v8 dealloc];
}

- (id)getDefaultMapServiceOptions
{
  v2 = [[RTMapServiceOptions alloc] initWithUseBackgroundTraits:1 analyticsIdentifier:0 clientIdentifier:0];

  return v2;
}

- (id)defaultTraitsForOptions:(id)options selector:(SEL)selector
{
  optionsCopy = options;
  if (!optionsCopy)
  {
    optionsCopy = [(RTHelperService *)self getDefaultMapServiceOptions];
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_1000011A0(&qword_1000B29B8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      analyticsIdentifier = [optionsCopy analyticsIdentifier];
      clientIdentifier = [optionsCopy clientIdentifier];
      *buf = 138412546;
      v30 = analyticsIdentifier;
      v31 = 2112;
      v32 = clientIdentifier;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "RTMapServiceOptions: analytics indentifier: %@, app identifier: %@", buf, 0x16u);
    }
  }

  useBackgroundTraits = [optionsCopy useBackgroundTraits];
  geoMapService = self->_geoMapService;
  if (useBackgroundTraits)
  {
    [(GEOMapService *)geoMapService defaultBackgroundTraits];
  }

  else
  {
    [(GEOMapService *)geoMapService defaultTraits];
  }
  v10 = ;
  clientIdentifier2 = [optionsCopy clientIdentifier];

  if (clientIdentifier2)
  {
    appIdentifier = [v10 appIdentifier];
    clientIdentifier3 = [optionsCopy clientIdentifier];
    v14 = [NSString stringWithFormat:@"%@|%@", appIdentifier, clientIdentifier3];
    [v10 setAppIdentifier:v14];
  }

  appIdentifier2 = [v10 appIdentifier];
  [v10 setAnalyticsAppIdentifier:appIdentifier2];

  analyticsIdentifier2 = [optionsCopy analyticsIdentifier];

  if (analyticsIdentifier2)
  {
    analyticsAppIdentifier = [v10 analyticsAppIdentifier];
    analyticsIdentifier3 = [optionsCopy analyticsIdentifier];
    v19 = [NSString stringWithFormat:@"%@|%@", analyticsAppIdentifier, analyticsIdentifier3];
    [v10 setAnalyticsAppIdentifier:v19];
  }

  if (selector)
  {
    analyticsAppIdentifier2 = [v10 analyticsAppIdentifier];
    v21 = NSStringFromSelector(selector);
    v22 = [NSString stringWithFormat:@"%@|%@", analyticsAppIdentifier2, v21];
    [v10 setAnalyticsAppIdentifier:v22];
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v23 = sub_1000011A0(&qword_1000B29B8);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      analyticsAppIdentifier3 = [v10 analyticsAppIdentifier];
      appIdentifier3 = [v10 appIdentifier];
      *buf = 138412546;
      v30 = analyticsAppIdentifier3;
      v31 = 2112;
      v32 = appIdentifier3;
      _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "GEOMapServiceTraits: analytics app indentifier: %@, app identifier: %@", buf, 0x16u);
    }
  }

  return v10;
}

- (void)fetchMapItemFromHandle:(id)handle options:(id)options handler:(id)handler
{
  handleCopy = handle;
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (handleCopy)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10006D868;
      v17[3] = &unk_1000A9200;
      v12 = handleCopy;
      v18 = v12;
      v21 = a2;
      selfCopy = self;
      v20 = handlerCopy;
      v13 = objc_retainBlock(v17);
      [(RTHelperService *)self fetchGeoMapItemFromHandle:v12 options:optionsCopy handler:v13];

      v14 = v18;
    }

    else
    {
      v15 = RTErrorDomain;
      v22 = NSLocalizedDescriptionKey;
      v23 = @"requires valid handle.";
      v14 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v16 = [NSError errorWithDomain:v15 code:7 userInfo:v14];
      (*(handlerCopy + 2))(handlerCopy, 0, v16);
    }
  }
}

- (void)fetchGeoMapItemFromHandle:(id)handle options:(id)options handler:(id)handler
{
  handleCopy = handle;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (handleCopy)
  {
    if (handlerCopy)
    {
      v12 = [(RTHelperService *)self defaultTraitsForOptions:optionsCopy selector:"resolveMapItemFromHandle:traits:completionHandler:"];
      geoMapService = self->_geoMapService;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10006DD20;
      v18[3] = &unk_1000A9250;
      v18[4] = self;
      v19 = handleCopy;
      v22 = v11;
      v20 = optionsCopy;
      v21 = v12;
      v14 = v12;
      [(GEOMapService *)geoMapService resolveMapItemFromHandle:v19 traits:v14 completionHandler:v18];

      goto LABEL_10;
    }
  }

  else
  {
    v15 = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[RTHelperService fetchGeoMapItemFromHandle:options:handler:]";
      v27 = 1024;
      v28 = 341;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handle (in %s:%d)", buf, 0x12u);
    }

    if (v11)
    {
      v16 = RTErrorDomain;
      v23 = NSLocalizedDescriptionKey;
      v24 = @"requires valid handle.";
      v14 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v17 = [NSError errorWithDomain:v16 code:7 userInfo:v14];
      (v11)[2](v11, 0, v17);

      goto LABEL_10;
    }
  }

  v14 = sub_1000011A0(&qword_1000B2958);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v26 = "[RTHelperService fetchGeoMapItemFromHandle:options:handler:]";
    v27 = 1024;
    v28 = 342;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
  }

LABEL_10:
}

- (id)_mapItemsFromGEOMapItems:(id)items mapItemSource:(unint64_t)source
{
  itemsCopy = items;
  v7 = +[NSDate date];
  v8 = [v7 dateByAddingTimeInterval:4838400.0];
  v9 = [[_RTMap alloc] initWithInput:itemsCopy];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10006E088;
  v14[3] = &unk_1000A9278;
  v14[4] = self;
  v15 = v7;
  v16 = v8;
  sourceCopy = source;
  v10 = v8;
  v11 = v7;
  v12 = [(_RTMap *)v9 withBlock:v14];

  return v12;
}

- (id)_mapItemFromGEOMapItem:(id)item mapItemSource:(unint64_t)source confidenceScalingFactor:(double)factor
{
  itemCopy = item;
  v8 = +[NSDate date];
  v21 = [v8 dateByAddingTimeInterval:4838400.0];
  v9 = [(GEOMapService *)self->_geoMapService handleForMapItem:itemCopy];
  v10 = [NSString alloc];
  v11 = [v10 initWithCString:off_1000B2A28 encoding:1];
  v25 = @"geoMapItemHandleSize";
  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 length]);
  v26 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  sub_10006B998(v11, v13);

  v14 = [NSString stringWithFormat:@"com.apple.%@", v11];
  v23 = @"geoMapItemHandleSize";
  v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 length]);
  v24 = v15;
  v16 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  AnalyticsSendEvent();

  v17 = [RTMapItem alloc];
  v18 = +[NSUUID UUID];
  v19 = [v17 initWithIdentifier:v18 geoMapItem:itemCopy geoMapItemHandle:v9 source:source creationDate:v8 expirationDate:v21 confidenceScalingFactor:factor];

  return v19;
}

- (void)fetchMapItemsFromNaturalLanguageQuery:(id)query location:(id)location options:(id)options handler:(id)handler
{
  queryCopy = query;
  locationCopy = location;
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ([queryCopy length])
    {
      if (locationCopy)
      {
        v15 = [(RTHelperService *)self defaultTraitsForOptions:optionsCopy selector:"ticketForSearchQuery:completionItem:maxResults:traits:"];
        [locationCopy latitude];
        [locationCopy longitude];
        [locationCopy horizontalUncertainty];
        [locationCopy horizontalUncertainty];
        GEOCoordinateRegionMakeWithDistance();
        v16 = [GEOMapRegion _geo_mapRegionForGEOCoordinateRegion:?];
        [v15 setMapRegion:v16];

        v17 = [(GEOMapService *)self->_geoMapService ticketForSearchQuery:queryCopy completionItem:0 maxResults:5 traits:v15];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10006E7A8;
        v22[3] = &unk_1000A9308;
        v22[4] = self;
        v27 = a2;
        v23 = queryCopy;
        v26 = handlerCopy;
        v24 = optionsCopy;
        v25 = v15;
        v18 = v15;
        [v17 submitWithHandler:v22 networkActivity:0];

LABEL_8:
        goto LABEL_9;
      }

      v19 = RTErrorDomain;
      v28 = NSLocalizedDescriptionKey;
      v29 = @"requires a valid location.";
      v20 = &v29;
      v21 = &v28;
    }

    else
    {
      v19 = RTErrorDomain;
      v30 = NSLocalizedDescriptionKey;
      v31 = @"requires a valid natural language query.";
      v20 = &v31;
      v21 = &v30;
    }

    v17 = [NSDictionary dictionaryWithObjects:v20 forKeys:v21 count:1];
    v18 = [NSError errorWithDomain:v19 code:7 userInfo:v17];
    (*(handlerCopy + 2))(handlerCopy, 0, v18);
    goto LABEL_8;
  }

LABEL_9:
}

- (void)fetchMapGEOItemsFromLocation:(id)location options:(id)options handler:(id)handler
{
  locationCopy = location;
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (locationCopy)
    {
      v12 = [[GEOLocation alloc] initWithRTLocation:locationCopy includeTimeStamp:1];
      v13 = [(RTHelperService *)self defaultTraitsForOptions:optionsCopy selector:"ticketForReverseGeocodeLocation:preserveOriginalLocation:placeTypeLimit:traits:"];
      v14 = [(GEOMapService *)self->_geoMapService ticketForReverseGeocodeLocation:v12 preserveOriginalLocation:0 placeTypeLimit:0 traits:v13];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10006ED3C;
      v17[3] = &unk_1000A9308;
      v23 = a2;
      v18 = locationCopy;
      v22 = handlerCopy;
      selfCopy = self;
      v20 = optionsCopy;
      v21 = v13;
      v15 = v13;
      [v14 submitWithHandler:v17 networkActivity:0];
    }

    else
    {
      v16 = RTErrorDomain;
      v24 = NSLocalizedDescriptionKey;
      v25 = @"requires a valid location.";
      v12 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v14 = [NSError errorWithDomain:v16 code:7 userInfo:v12];
      (*(handlerCopy + 2))(handlerCopy, 0, v14);
    }
  }
}

- (void)fetchMapItemsFromLocation:(id)location options:(id)options handler:(id)handler
{
  locationCopy = location;
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (locationCopy)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10006F0E8;
      v15[3] = &unk_1000A92C0;
      v15[4] = self;
      v18 = a2;
      v16 = locationCopy;
      v17 = handlerCopy;
      [(RTHelperService *)self fetchMapGEOItemsFromLocation:v16 options:optionsCopy handler:v15];
    }

    else
    {
      v12 = RTErrorDomain;
      v19 = NSLocalizedDescriptionKey;
      v20 = @"requires a valid location.";
      v13 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v14 = [NSError errorWithDomain:v12 code:7 userInfo:v13];
      (*(handlerCopy + 2))(handlerCopy, 0, v14);
    }
  }
}

- (void)fetchMapItemsRelatedPlacesFromLocation:(id)location options:(id)options handler:(id)handler
{
  locationCopy = location;
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (locationCopy)
    {
      v12 = +[NSMutableArray array];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10006F5B8;
      v16[3] = &unk_1000A9330;
      v16[4] = self;
      v20 = a2;
      v17 = locationCopy;
      v18 = v12;
      v19 = handlerCopy;
      v13 = v12;
      [(RTHelperService *)self fetchMapGEOItemsFromLocation:v17 options:optionsCopy handler:v16];
    }

    else
    {
      v14 = RTErrorDomain;
      v21 = NSLocalizedDescriptionKey;
      v22 = @"requires a valid location.";
      v13 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v15 = [NSError errorWithDomain:v14 code:7 userInfo:v13];
      (*(handlerCopy + 2))(handlerCopy, 0, 0, v15);
    }
  }
}

- (void)fetchMapItemsFromIdentifiers:(id)identifiers options:(id)options source:(unint64_t)source handler:(id)handler
{
  identifiersCopy = identifiers;
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ([identifiersCopy count])
    {
      v14 = [(RTHelperService *)self defaultTraitsForOptions:optionsCopy selector:"ticketForReverseGeocodeLocation:preserveOriginalLocation:placeTypeLimit:traits:"];
      v15 = [(GEOMapService *)self->_geoMapService _bpod_ticketForIdentifiers:identifiersCopy traits:v14];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10006FE6C;
      v18[3] = &unk_1000A9358;
      v18[4] = self;
      sourceCopy = source;
      v24 = a2;
      v19 = identifiersCopy;
      v22 = handlerCopy;
      v20 = optionsCopy;
      v21 = v14;
      v16 = v14;
      [v15 submitWithHandler:v18 networkActivity:0];
    }

    else
    {
      v17 = RTErrorDomain;
      v25 = NSLocalizedDescriptionKey;
      v26 = @"requires a list of GEOMapItem identifiers.";
      v15 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v16 = [NSError errorWithDomain:v17 code:7 userInfo:v15];
      (*(handlerCopy + 2))(handlerCopy, 0, v16);
    }
  }
}

- (void)fetchRelatedPlacesMapItemsForMapItem:(id)item relatedPlaceListType:(int)type options:(id)options source:(unint64_t)source handler:(id)handler
{
  itemCopy = item;
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (itemCopy)
    {
      geoMapItemHandle = [itemCopy geoMapItemHandle];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000703AC;
      v19[3] = &unk_1000A9380;
      v19[4] = self;
      typeCopy = type;
      v20 = optionsCopy;
      sourceCopy = source;
      v21 = handlerCopy;
      [(RTHelperService *)self fetchGeoMapItemFromHandle:geoMapItemHandle options:v20 handler:v19];
    }

    else
    {
      v16 = RTErrorDomain;
      v24 = NSLocalizedDescriptionKey;
      v25 = @"requires a map item.";
      v17 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v18 = [NSError errorWithDomain:v16 code:7 userInfo:v17];
      (*(handlerCopy + 2))(handlerCopy, 0, v18);
    }
  }
}

- (void)_relatedPlacesMapItemsIdentifiersForGEOMapItems:(id)items relatedPlaceListType:(int)type handler:(id)handler
{
  itemsCopy = items;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ([itemsCopy count])
    {
      v10 = +[NSMutableArray array];
      +[NSMutableArray array];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000706CC;
      v16[3] = &unk_1000A93D0;
      typeCopy = type;
      v16[4] = self;
      v11 = v17 = v10;
      v18 = v11;
      v12 = v10;
      [itemsCopy enumerateObjectsUsingBlock:v16];
      if ([v11 count])
      {
        v13 = _RTSafeArray();
        v14 = _RTMultiErrorCreate();
      }

      else
      {
        v14 = 0;
      }

      handlerCopy[2](handlerCopy, v12, v14);
    }

    else
    {
      v15 = RTErrorDomain;
      v20 = NSLocalizedDescriptionKey;
      v21 = @"requires a list GEOMapItems.";
      v11 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v12 = [NSError errorWithDomain:v15 code:7 userInfo:v11];
      handlerCopy[2](handlerCopy, 0, v12);
    }
  }
}

- (void)_relatedPlacesMapItemsIdentifiersForGEOMapItem:(id)item relatedPlaceListType:(int)type handler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (itemCopy)
    {
      v9 = +[NSMutableSet set];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      _relatedPlaceLists = [itemCopy _relatedPlaceLists];
      v11 = [_relatedPlaceLists countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v20;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(_relatedPlaceLists);
            }

            v15 = *(*(&v19 + 1) + 8 * i);
            if ([v15 type] == type)
            {
              mapIdentifiers = [v15 mapIdentifiers];
              [v9 addObjectsFromArray:mapIdentifiers];
            }
          }

          v12 = [_relatedPlaceLists countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v12);
      }

      if (![v9 count])
      {
        (*(handlerCopy + 2))(handlerCopy, 0, 0);
        goto LABEL_17;
      }

      allObjects = [v9 allObjects];
      (*(handlerCopy + 2))(handlerCopy, allObjects, 0);
    }

    else
    {
      v18 = RTErrorDomain;
      v24 = NSLocalizedDescriptionKey;
      v25 = @"requires a GEOMapItem.";
      v9 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      allObjects = [NSError errorWithDomain:v18 code:7 userInfo:v9];
      (*(handlerCopy + 2))(handlerCopy, 0, allObjects);
    }

LABEL_17:
  }
}

- (void)fetchConfidenceWeightForMapItem:(id)item startDate:(id)date endDate:(id)endDate options:(id)options handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  if (handlerCopy)
  {
    optionsCopy = options;
    geoMapItemHandle = [item geoMapItemHandle];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100070B5C;
    v17[3] = &unk_1000A93F8;
    v17[4] = self;
    v18 = dateCopy;
    v19 = endDateCopy;
    v20 = handlerCopy;
    [(RTHelperService *)self fetchGeoMapItemFromHandle:geoMapItemHandle options:optionsCopy handler:v17];
  }
}

- (void)fetchMapItemsFromLocations:(id)locations accessPoints:(id)points startDate:(id)date endDate:(id)endDate options:(id)options handler:(id)handler
{
  locationsCopy = locations;
  pointsCopy = points;
  dateCopy = date;
  endDateCopy = endDate;
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ([locationsCopy count])
    {
      aSelector = a2;
      v53 = pointsCopy;
      v54 = optionsCopy;
      v48 = endDateCopy;
      v49 = dateCopy;
      v21 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [locationsCopy count]);
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v22 = locationsCopy;
      v23 = [v22 countByEnumeratingWithState:&v69 objects:v84 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v70;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v70 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = [[GEOLocation alloc] initWithRTLocation:*(*(&v69 + 1) + 8 * i) includeTimeStamp:0];
            if (v27)
            {
              [v21 addObject:v27];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v69 objects:v84 count:16];
        }

        while (v24);
      }

      selfCopy = self;
      v50 = locationsCopy;

      v28 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v53 count]);
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v29 = v53;
      v30 = [v29 countByEnumeratingWithState:&v65 objects:v83 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v66;
        do
        {
          for (j = 0; j != v31; j = j + 1)
          {
            if (*v66 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = [[GEOWifiAccessPoint alloc] initWithRTWiFiAccessPoint:*(*(&v65 + 1) + 8 * j) includeTimeStamp:0];
            if (v34)
            {
              [v28 addObject:v34];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v65 objects:v83 count:16];
        }

        while (v31);
      }

      v35 = [(RTHelperService *)selfCopy defaultTraitsForOptions:v54 selector:"ticketForWifiFingerprintWithLocations:wifiAccessPoints:maxLabels:entryTime:exitTime:traits:"];
      v47 = [(GEOMapService *)selfCopy->_geoMapService ticketForWifiFingerprintWithLocations:v21 wifiAccessPoints:v28 maxLabels:50 entryTime:0 exitTime:0 traits:v35];
      endDateCopy = v48;
      dateCopy = v49;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v36 = sub_1000011A0(&qword_1000B29B8);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v46 = NSStringFromSelector(aSelector);
          firstObject = [v22 firstObject];
          v44 = [v22 count];
          v43 = [v29 count];
          useBackgroundTraits = [v54 useBackgroundTraits];
          *buf = 138413315;
          v74 = v46;
          v75 = 2117;
          v76 = firstObject;
          v77 = 2048;
          v78 = v44;
          v79 = 2048;
          v80 = v43;
          v81 = 1024;
          v82 = useBackgroundTraits;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%@, fetch mapItems from bluePoi, location, %{sensitive}@, locations, %lu, accessPoints, %lu, background, %d", buf, 0x30u);
        }
      }

      v38 = objc_opt_new();
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_1000711CC;
      v55[3] = &unk_1000A9420;
      v55[4] = selfCopy;
      v56 = v49;
      v57 = v48;
      v58 = v38;
      v64 = aSelector;
      v59 = v22;
      v60 = v29;
      v63 = handlerCopy;
      v61 = v54;
      v62 = v35;
      v39 = v35;
      v40 = v38;
      optionsCopy = v54;
      v41 = v40;
      [v47 submitWithHandler:v55 networkActivity:0];

      locationsCopy = v50;
      pointsCopy = v53;
    }

    else
    {
      v42 = RTErrorDomain;
      v85 = NSLocalizedDescriptionKey;
      v86 = @"requires valid locations.";
      v21 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1];
      v28 = [NSError errorWithDomain:v42 code:7 userInfo:v21];
      (*(handlerCopy + 2))(handlerCopy, 0, v28);
    }
  }
}

- (void)fetchMapItemsFromAddressString:(id)string options:(id)options handler:(id)handler
{
  stringCopy = string;
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (stringCopy)
    {
      v12 = [(RTHelperService *)self defaultTraitsForOptions:optionsCopy selector:"ticketForForwardGeocodeString:maxResults:traits:"];
      v13 = [(GEOMapService *)self->_geoMapService ticketForForwardGeocodeString:stringCopy maxResults:5 traits:v12];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000718D8;
      v16[3] = &unk_1000A9308;
      v16[4] = self;
      v21 = a2;
      v17 = stringCopy;
      v20 = handlerCopy;
      v18 = optionsCopy;
      v19 = v12;
      v14 = v12;
      [v13 submitWithHandler:v16 networkActivity:0];
    }

    else
    {
      v15 = RTErrorDomain;
      v22 = NSLocalizedDescriptionKey;
      v23 = @"requires a valid addressString.";
      v13 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v14 = [NSError errorWithDomain:v15 code:7 userInfo:v13];
      (*(handlerCopy + 2))(handlerCopy, 0, v14);
    }
  }
}

- (void)fetchMapItemsFromAddressDictionary:(id)dictionary options:(id)options handler:(id)handler
{
  dictionaryCopy = dictionary;
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ([dictionaryCopy count])
    {
      v12 = dictionaryCopy;
      if ([RTMapItem addressDictionaryContainsContactsKeys:v12])
      {
        v13 = [RTMapItem convertAddressDictionaryFromContactsToGeoServices:v12];

        v12 = v13;
      }

      v14 = [(RTHelperService *)self defaultTraitsForOptions:optionsCopy selector:"ticketForForwardGeocodeAddressDictionary:maxResults:traits:"];
      v15 = [(GEOMapService *)self->_geoMapService ticketForForwardGeocodeAddressDictionary:v12 maxResults:5 traits:v14];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100071E8C;
      v19[3] = &unk_1000A9308;
      v24 = a2;
      v19[4] = self;
      v20 = v12;
      v23 = handlerCopy;
      v21 = optionsCopy;
      v22 = v14;
      v16 = v14;
      v17 = v12;
      [v15 submitWithHandler:v19 networkActivity:0];
    }

    else
    {
      v18 = RTErrorDomain;
      v25 = NSLocalizedDescriptionKey;
      v26 = @"requires a valid addressDictionary.";
      v15 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v17 = [NSError errorWithDomain:v18 code:7 userInfo:v15];
      (*(handlerCopy + 2))(handlerCopy, 0, v17);
    }
  }
}

- (void)fetchPostalAddressForMapItem:(id)item options:(id)options handler:(id)handler
{
  itemCopy = item;
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (itemCopy)
    {
      geoMapItemHandle = [itemCopy geoMapItemHandle];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100072390;
      v15[3] = &unk_1000A9448;
      v15[4] = self;
      v16 = handlerCopy;
      [(RTHelperService *)self fetchGeoMapItemFromHandle:geoMapItemHandle options:optionsCopy handler:v15];

      v12 = v16;
    }

    else
    {
      v13 = RTErrorDomain;
      v17 = NSLocalizedDescriptionKey;
      v18 = @"requires a valid map item.";
      v14 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v12 = [NSError errorWithDomain:v13 code:7 userInfo:v14];

      (*(handlerCopy + 2))(handlerCopy, 0, v12);
    }
  }
}

- (void)fetchAppClipURLsForMapItem:(id)item options:(id)options handler:(id)handler
{
  itemCopy = item;
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (itemCopy)
    {
      geoMapItemHandle = [itemCopy geoMapItemHandle];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000725D8;
      v15[3] = &unk_1000A9228;
      v16 = handlerCopy;
      [(RTHelperService *)self fetchGeoMapItemFromHandle:geoMapItemHandle options:optionsCopy handler:v15];

      v12 = v16;
    }

    else
    {
      v13 = RTErrorDomain;
      v17 = NSLocalizedDescriptionKey;
      v18 = @"requires a valid map item.";
      v14 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v12 = [NSError errorWithDomain:v13 code:7 userInfo:v14];

      (*(handlerCopy + 2))(handlerCopy, 0, v12);
    }
  }
}

- (void)fetchCountryAndSubdivisionCodesFromLocation:(id)location options:(id)options handler:(id)handler
{
  locationCopy = location;
  optionsCopy = options;
  handlerCopy = handler;
  v12 = objc_alloc_init(GEOLatLng);
  [locationCopy latitude];
  [v12 setLat:?];
  [locationCopy longitude];
  [v12 setLng:?];
  v13 = [(RTHelperService *)self defaultTraitsForOptions:optionsCopy selector:"ticketForTerritoryForLocations:shiftLocationsIfNeeded:traits:"];
  geoMapService = self->_geoMapService;
  v27 = v12;
  v15 = [NSArray arrayWithObjects:&v27 count:1];
  v16 = [(GEOMapService *)geoMapService ticketForTerritoryForLocations:v15 shiftLocationsIfNeeded:1 traits:v13];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100072984;
  v21[3] = &unk_1000A9308;
  v21[4] = self;
  v22 = locationCopy;
  v25 = handlerCopy;
  v26 = a2;
  v23 = optionsCopy;
  v24 = v13;
  v17 = v13;
  v18 = optionsCopy;
  v19 = handlerCopy;
  v20 = locationCopy;
  [v16 submitWithHandler:v21 networkActivity:0];
}

- (id)_buildingPolygonsFromGEOBuilding:(id)building
{
  buildingCopy = building;
  sections = [buildingCopy sections];
  v5 = [sections count];

  if (v5)
  {
    v20 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = [buildingCopy sections];
    v6 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v18 = buildingCopy;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          v11 = objc_autoreleasePoolPush();
          v12 = objc_opt_new();
          if ([v10 coordinateCount])
          {
            v13 = 0;
            v14 = 0;
            do
            {
              v15 = [[RTCoordinate alloc] initWithLatitude:*(objc_msgSend(v10 longitude:{"coordinates") + v13), *(objc_msgSend(v10, "coordinates") + v13 + 8)}];
              if (v15)
              {
                [v12 addObject:v15];
              }

              ++v14;
              v13 += 16;
            }

            while (v14 < [v10 coordinateCount]);
          }

          v16 = [[RTPolygon alloc] initWithVertices:v12];
          if (v16)
          {
            [v20 addObject:v16];
          }

          objc_autoreleasePoolPop(v11);
        }

        v7 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v7);
      buildingCopy = v18;
    }
  }

  else
  {
    obj = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, obj, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: building.sections.count> 0", buf, 2u);
    }

    v20 = 0;
  }

  return v20;
}

- (void)fetchBuildingPolygonsFromLocation:(id)location radius:(double)radius handler:(id)handler
{
  locationCopy = location;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (locationCopy && radius > 0.0)
    {
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1000731E4;
      v30[3] = &unk_1000A9470;
      v30[4] = self;
      v11 = objc_opt_new();
      v31 = v11;
      v12 = objc_retainBlock(v30);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100073248;
      v24[3] = &unk_1000A9498;
      v28 = a2;
      v13 = locationCopy;
      radiusCopy = radius;
      v25 = v13;
      v26 = v11;
      v27 = handlerCopy;
      v14 = v11;
      v15 = objc_retainBlock(v24);
      [v13 latitude];
      v17 = v16;
      [v13 longitude];
      radius = [(GEOMapFeatureAccess *)self->_mapFeatureAccess findBuildingsNear:v12 radius:v15 handler:v17 completionHandler:v18, radius];
    }

    else
    {
      v20 = NSStringFromSelector(a2);
      v14 = [NSString stringWithFormat:@"invalid parameters passed to %@, location, %@, radius, %.2f", v20, locationCopy, *&radius];

      v21 = RTErrorDomain;
      v32 = NSLocalizedDescriptionKey;
      v33 = v14;
      v22 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v23 = [NSError errorWithDomain:v21 code:7 userInfo:v22];
      (*(handlerCopy + 2))(handlerCopy, 0, v23);
    }
  }
}

- (void)fetchPointOfInterestAttributesWithIdentifier:(unint64_t)identifier options:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v11 = [(RTHelperService *)self defaultTraitsForOptions:optionsCopy selector:"fetchPointOfInterestAttributesWithIdentifier:options:handler:"];
    geoMapService = self->_geoMapService;
    v13 = [NSNumber numberWithUnsignedInteger:identifier];
    v21 = v13;
    v14 = [NSArray arrayWithObjects:&v21 count:1];
    v15 = [(GEOMapService *)geoMapService ticketForMUIDs:v14 traits:v11];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10007370C;
    v16[3] = &unk_1000A9508;
    v19 = a2;
    identifierCopy = identifier;
    v18 = handlerCopy;
    v16[4] = self;
    v17 = optionsCopy;
    [v15 submitWithHandler:v16 networkActivity:0];
  }
}

- (void)fetchPointOfInterestsAroundCoordinate:(id)coordinate radius:(double)radius options:(id)options handler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    coordinateCopy = coordinate;
    v12 = [(RTHelperService *)self defaultTraitsForOptions:options selector:"fetchPointOfInterestsAroundCoordinate:radius:options:handler:"];
    [coordinateCopy latitude];
    v14 = v13;
    [coordinateCopy longitude];
    v16 = v15;

    v17 = [[GEOSpatialLookupParameters alloc] initWithCoordinate:&__NSArray0__struct radius:v14 categories:{v16, radius}];
    geoMapService = self->_geoMapService;
    v30 = v17;
    v19 = [NSArray arrayWithObjects:&v30 count:1];
    v20 = [(GEOMapService *)geoMapService ticketForSpatialLookupParameters:v19 traits:v12];

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100074134;
    v24[3] = &unk_1000A9558;
    v28 = v12;
    v29 = handlerCopy;
    v25 = v20;
    v26 = v17;
    selfCopy = self;
    v21 = v12;
    v22 = v17;
    v23 = v20;
    [v23 submitWithHandler:v24 networkActivity:0];
  }
}

- (void)createMapItemWithIdentifier:(id)identifier geoMapItemStorage:(id)storage source:(unint64_t)source creationDate:(id)date handler:(id)handler
{
  identifierCopy = identifier;
  storageCopy = storage;
  dateCopy = date;
  handlerCopy = handler;
  if (identifierCopy)
  {
    if (storageCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v44 = "[RTHelperService createMapItemWithIdentifier:geoMapItemStorage:source:creationDate:handler:]";
      v45 = 1024;
      v46 = 1367;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", buf, 0x12u);
    }

    if (storageCopy)
    {
LABEL_3:
      if (dateCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  v28 = sub_1000011A0(&qword_1000B2958);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v44 = "[RTHelperService createMapItemWithIdentifier:geoMapItemStorage:source:creationDate:handler:]";
    v45 = 1024;
    v46 = 1368;
    _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: geoMapItemStorage (in %s:%d)", buf, 0x12u);
  }

  if (dateCopy)
  {
LABEL_4:
    if (handlerCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_15:
  v29 = sub_1000011A0(&qword_1000B2958);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v44 = "[RTHelperService createMapItemWithIdentifier:geoMapItemStorage:source:creationDate:handler:]";
    v45 = 1024;
    v46 = 1369;
    _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: creationDate (in %s:%d)", buf, 0x12u);
  }

  if (handlerCopy)
  {
LABEL_5:
    if (identifierCopy)
    {
      if (storageCopy)
      {
        if (dateCopy)
        {
          v16 = [(GEOMapService *)self->_geoMapService handleForMapItem:storageCopy];
          v17 = [NSString alloc];
          v18 = [v17 initWithCString:off_1000B2A28 encoding:1];
          v35 = @"geoMapItemHandleSize";
          v19 = [NSNumber numberWithUnsignedInteger:[v16 length]];
          v36 = v19;
          v20 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
          sub_10006B998(v18, v20);

          v21 = [NSString stringWithFormat:@"com.apple.%@", v18];
          v33 = @"geoMapItemHandleSize";
          v22 = [NSNumber numberWithUnsignedInteger:[v16 length]];
          v34 = v22;
          v23 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
          AnalyticsSendEvent();

          v24 = [RTMapItem alloc];
          v25 = [dateCopy dateByAddingTimeInterval:4838400.0];
          v26 = [v24 initWithIdentifier:identifierCopy geoMapItem:storageCopy geoMapItemHandle:v16 source:source creationDate:dateCopy expirationDate:v25];

          handlerCopy[2](handlerCopy, v26, 0);
LABEL_24:

          goto LABEL_25;
        }

        v30 = RTErrorDomain;
        v37 = NSLocalizedDescriptionKey;
        v38 = @"requires a valid creationDate.";
        v31 = &v38;
        v32 = &v37;
      }

      else
      {
        v30 = RTErrorDomain;
        v39 = NSLocalizedDescriptionKey;
        v40 = @"requires a valid geoMapItemStorage.";
        v31 = &v40;
        v32 = &v39;
      }
    }

    else
    {
      v30 = RTErrorDomain;
      v41 = NSLocalizedDescriptionKey;
      v42 = @"requires a valid identifier.";
      v31 = &v42;
      v32 = &v41;
    }

    v16 = [NSDictionary dictionaryWithObjects:v31 forKeys:v32 count:1];
    v26 = [NSError errorWithDomain:v30 code:7 userInfo:v16];
    (handlerCopy)[2](handlerCopy, 0, v26);
    goto LABEL_24;
  }

LABEL_18:
  v16 = sub_1000011A0(&qword_1000B2958);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v44 = "[RTHelperService createMapItemWithIdentifier:geoMapItemStorage:source:creationDate:handler:]";
    v45 = 1024;
    v46 = 1370;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
  }

LABEL_25:
}

- (double)confidenceWeightForGeoMapItem:(id)item startDate:(id)date endDate:(id)endDate timeZone:(id)zone
{
  itemCopy = item;
  dateCopy = date;
  endDateCopy = endDate;
  zoneCopy = zone;
  v14 = 1.0;
  if (zoneCopy && ([dateCopy isAfterDate:endDateCopy] & 1) == 0)
  {
    v15 = objc_opt_new();
    _businessHours = [itemCopy _businessHours];
    [RTBluePOIHelper weightBasedOnBusinessHours:_businessHours startDate:dateCopy endDate:endDateCopy timeZone:zoneCopy metrics:v15];
    v18 = v17;

    _poiCategory = [itemCopy _poiCategory];
    [RTBluePOIHelper weightBasedOnDurationWithStartDate:dateCopy endDate:endDateCopy timeZone:zoneCopy poiCategory:_poiCategory];
    v21 = v20;

    v22 = [NSNumber numberWithDouble:v21];
    [v15 setObject:v22 forKeyedSubscript:@"weightBasedOnDuration"];

    _poiCategory2 = [itemCopy _poiCategory];
    [v15 setObject:_poiCategory2 forKeyedSubscript:@"poiCategory"];

    v24 = [NSString alloc];
    v25 = [v24 initWithCString:off_1000B2A18 encoding:1];
    sub_10006B998(v25, v15);
    v26 = [NSString stringWithFormat:@"com.apple.%@", v25];
    AnalyticsSendEvent();

    v14 = v18 * v21;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v27 = sub_1000011A0(&qword_1000B29B8);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = NSStringFromSelector(a2);
        *buf = 138414082;
        v31 = v28;
        v32 = 2048;
        v33 = v18 * v21;
        v34 = 2048;
        v35 = v18;
        v36 = 2048;
        v37 = v21;
        v38 = 2048;
        _muid = [itemCopy _muid];
        v40 = 2112;
        v41 = dateCopy;
        v42 = 2112;
        v43 = endDateCopy;
        v44 = 2112;
        v45 = zoneCopy;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%@, weight, %.1f, weightBasedOnBusinessHours, %.1f, weightBasedOnDuration, %.1f, muid, %lu, start, %@, end, %@, timeZone, %@", buf, 0x52u);
      }
    }
  }

  return v14;
}

+ (id)exposedErrorFrom:(id)from
{
  fromCopy = from;
  if ([fromCopy code] == -8)
  {
    v4 = 0;
  }

  else if ([fromCopy code] == -6)
  {
    v4 = 0;
  }

  else
  {
    v4 = fromCopy;
  }

  v5 = v4;

  return v4;
}

+ (id)computeMetricsForAnalyticsIdentifier:(id)identifier appIdentifier:(id)appIdentifier requestType:(unint64_t)type mapItems:(id)items serviceError:(id)error isBackgroundRequest:(BOOL)request
{
  requestCopy = request;
  errorCopy = error;
  itemsCopy = items;
  appIdentifierCopy = appIdentifier;
  identifierCopy = identifier;
  v17 = +[NSMutableDictionary dictionary];
  [v17 setObject:identifierCopy forKeyedSubscript:@"analyticsIdentifier"];

  [v17 setObject:appIdentifierCopy forKeyedSubscript:@"appIdentifier"];
  v18 = [NSNumber numberWithUnsignedInteger:type];
  [v17 setObject:v18 forKeyedSubscript:@"requestType"];

  v19 = [itemsCopy count];
  v20 = [NSNumber numberWithUnsignedInteger:v19];
  [v17 setObject:v20 forKeyedSubscript:@"yieldCount"];

  if (errorCopy)
  {
    domain = [errorCopy domain];
    [v17 setObject:domain forKeyedSubscript:@"errorDomain"];

    v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
    [v17 setObject:v22 forKeyedSubscript:@"errorCode"];

    userInfo = [errorCopy userInfo];
    v24 = GEOErrorHttpStatusCodeKey;
    v25 = [userInfo objectForKeyedSubscript:GEOErrorHttpStatusCodeKey];

    if (v25)
    {
      userInfo2 = [errorCopy userInfo];
      v27 = [userInfo2 objectForKeyedSubscript:v24];
      [v17 setObject:v27 forKeyedSubscript:@"errorHTTPStatus"];
    }
  }

  if (requestCopy)
  {
    v28 = 2;
  }

  else
  {
    v28 = 1;
  }

  v29 = [NSNumber numberWithUnsignedInteger:v28];
  [v17 setObject:v29 forKeyedSubscript:@"runningState"];

  return v17;
}

+ (void)submitMetricsForAnalyticsIdentifier:(id)identifier appIdentifier:(id)appIdentifier requestType:(unint64_t)type mapItems:(id)items serviceError:(id)error isBackgroundRequest:(BOOL)request
{
  identifierCopy = identifier;
  appIdentifierCopy = appIdentifier;
  itemsCopy = items;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000751C0;
  v29[3] = &unk_1000A9580;
  v30 = identifierCopy;
  v31 = appIdentifierCopy;
  errorCopy = error;
  typeCopy = type;
  v32 = itemsCopy;
  requestCopy = request;
  v16 = errorCopy;
  v17 = itemsCopy;
  v18 = appIdentifierCopy;
  v19 = identifierCopy;
  v20 = objc_retainBlock(v29);
  v21 = [NSString alloc];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000751E0;
  v26[3] = &unk_1000A95A8;
  v27 = [v21 initWithCString:off_1000B2A20 encoding:1];
  v28 = v20;
  v22 = v27;
  v23 = v20;
  v24 = objc_retainBlock(v26);
  v25 = [NSString stringWithFormat:@"com.apple.%@", v22];
  AnalyticsSendEventLazy();
}

- (void)compileCoreMLModelAtURL:(id)l handler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  v7 = objc_opt_new();
  [v7 compileCoreMLModelAtURL:lCopy handler:handlerCopy];
}

- (void)downloadBluePOITilesForDownloadKeys:(id)keys handler:(id)handler
{
  handlerCopy = handler;
  keysCopy = keys;
  v7 = objc_opt_new();
  [v7 downloadBluePOITilesForDownloadKeys:keysCopy handler:handlerCopy];
}

- (void)downloadBluePOIMetadataWithHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_opt_new();
  [v4 downloadBluePOIMetadataWithHandler:handlerCopy];
}

- (void)fetchBluePOITilesForDownloadKeys:(id)keys handler:(id)handler
{
  handlerCopy = handler;
  keysCopy = keys;
  v7 = objc_opt_new();
  [v7 fetchBluePOITilesForDownloadKeys:keysCopy handler:handlerCopy];
}

- (void)loadProtobufTileAtPath:(id)path handler:(id)handler
{
  handlerCopy = handler;
  pathCopy = path;
  v7 = objc_opt_new();
  [v7 loadPreinstalledTileAtPath:pathCopy handler:handlerCopy];
}

- (void)fetchBluePOIMetadataWithHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_opt_new();
  [v4 fetchBluePOIMetadataWithHandler:handlerCopy];
}

- (void)computeWithInputSignals:(id)signals handler:(id)handler
{
  signalsCopy = signals;
  handlerCopy = handler;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v9 = sub_1000011A0(&qword_1000B29B8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138412290;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@, training initiated", buf, 0xCu);
    }
  }

  v11 = +[NSDate date];
  contextAlgorithmsService = [(RTHelperService *)self contextAlgorithmsService];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007578C;
  v15[3] = &unk_1000A92C0;
  v16 = v11;
  selfCopy = self;
  v18 = handlerCopy;
  v19 = a2;
  v13 = handlerCopy;
  v14 = v11;
  [contextAlgorithmsService computeWithInputSignals:signalsCopy handler:v15];
}

- (void)interruptComputeWithError:(id)error
{
  errorCopy = error;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v6 = sub_1000011A0(&qword_1000B29B8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138412290;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@, interrupt initiated", buf, 0xCu);
    }
  }

  v8 = +[NSDate date];
  contextAlgorithmsService = [(RTHelperService *)self contextAlgorithmsService];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100075B5C;
  v12[3] = &unk_1000A9620;
  v13 = v8;
  selfCopy = self;
  v15 = errorCopy;
  v16 = a2;
  v10 = errorCopy;
  v11 = v8;
  [contextAlgorithmsService interruptComputeWithError:v12];
}

@end