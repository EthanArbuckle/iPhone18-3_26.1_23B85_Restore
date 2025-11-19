@interface RTHelperService
+ (id)computeMetricsForAnalyticsIdentifier:(id)a3 appIdentifier:(id)a4 requestType:(unint64_t)a5 mapItems:(id)a6 serviceError:(id)a7 isBackgroundRequest:(BOOL)a8;
+ (id)exposedErrorFrom:(id)a3;
+ (void)submitMetricsForAnalyticsIdentifier:(id)a3 appIdentifier:(id)a4 requestType:(unint64_t)a5 mapItems:(id)a6 serviceError:(id)a7 isBackgroundRequest:(BOOL)a8;
- (RTHelperService)init;
- (RTHelperService)initWithGeoMapService:(id)a3;
- (double)confidenceWeightForGeoMapItem:(id)a3 startDate:(id)a4 endDate:(id)a5 timeZone:(id)a6;
- (id)_buildingPolygonsFromGEOBuilding:(id)a3;
- (id)_mapItemFromGEOMapItem:(id)a3 mapItemSource:(unint64_t)a4 confidenceScalingFactor:(double)a5;
- (id)_mapItemsFromGEOMapItems:(id)a3 mapItemSource:(unint64_t)a4;
- (id)defaultTraitsForOptions:(id)a3 selector:(SEL)a4;
- (id)getDefaultMapServiceOptions;
- (void)_relatedPlacesMapItemsIdentifiersForGEOMapItem:(id)a3 relatedPlaceListType:(int)a4 handler:(id)a5;
- (void)_relatedPlacesMapItemsIdentifiersForGEOMapItems:(id)a3 relatedPlaceListType:(int)a4 handler:(id)a5;
- (void)addTicket:(id)a3;
- (void)cancelTicket:(id)a3;
- (void)compileCoreMLModelAtURL:(id)a3 handler:(id)a4;
- (void)computeWithInputSignals:(id)a3 handler:(id)a4;
- (void)createMapItemWithIdentifier:(id)a3 geoMapItemStorage:(id)a4 source:(unint64_t)a5 creationDate:(id)a6 handler:(id)a7;
- (void)dealloc;
- (void)downloadBluePOIMetadataWithHandler:(id)a3;
- (void)downloadBluePOITilesForDownloadKeys:(id)a3 handler:(id)a4;
- (void)fetchAppClipURLsForMapItem:(id)a3 options:(id)a4 handler:(id)a5;
- (void)fetchBluePOIMetadataWithHandler:(id)a3;
- (void)fetchBluePOITilesForDownloadKeys:(id)a3 handler:(id)a4;
- (void)fetchBuildingPolygonsFromLocation:(id)a3 radius:(double)a4 handler:(id)a5;
- (void)fetchConfidenceWeightForMapItem:(id)a3 startDate:(id)a4 endDate:(id)a5 options:(id)a6 handler:(id)a7;
- (void)fetchCountryAndSubdivisionCodesFromLocation:(id)a3 options:(id)a4 handler:(id)a5;
- (void)fetchGeoMapItemFromHandle:(id)a3 options:(id)a4 handler:(id)a5;
- (void)fetchMapGEOItemsFromLocation:(id)a3 options:(id)a4 handler:(id)a5;
- (void)fetchMapItemFromHandle:(id)a3 options:(id)a4 handler:(id)a5;
- (void)fetchMapItemsFromAddressDictionary:(id)a3 options:(id)a4 handler:(id)a5;
- (void)fetchMapItemsFromAddressString:(id)a3 options:(id)a4 handler:(id)a5;
- (void)fetchMapItemsFromIdentifiers:(id)a3 options:(id)a4 source:(unint64_t)a5 handler:(id)a6;
- (void)fetchMapItemsFromLocation:(id)a3 options:(id)a4 handler:(id)a5;
- (void)fetchMapItemsFromLocations:(id)a3 accessPoints:(id)a4 startDate:(id)a5 endDate:(id)a6 options:(id)a7 handler:(id)a8;
- (void)fetchMapItemsFromNaturalLanguageQuery:(id)a3 location:(id)a4 options:(id)a5 handler:(id)a6;
- (void)fetchMapItemsRelatedPlacesFromLocation:(id)a3 options:(id)a4 handler:(id)a5;
- (void)fetchPointOfInterestAttributesWithIdentifier:(unint64_t)a3 options:(id)a4 handler:(id)a5;
- (void)fetchPointOfInterestsAroundCoordinate:(id)a3 radius:(double)a4 options:(id)a5 handler:(id)a6;
- (void)fetchPostalAddressForMapItem:(id)a3 options:(id)a4 handler:(id)a5;
- (void)fetchRelatedPlacesMapItemsForMapItem:(id)a3 relatedPlaceListType:(int)a4 options:(id)a5 source:(unint64_t)a6 handler:(id)a7;
- (void)interruptComputeWithError:(id)a3;
- (void)loadProtobufTileAtPath:(id)a3 handler:(id)a4;
- (void)removeTicket:(id)a3;
@end

@implementation RTHelperService

- (RTHelperService)init
{
  v3 = objc_opt_new();
  v4 = [(RTHelperService *)self initWithGeoMapService:v3];

  return v4;
}

- (RTHelperService)initWithGeoMapService:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v23.receiver = self;
    v23.super_class = RTHelperService;
    v6 = [(RTHelperService *)&v23 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_geoMapService, a3);
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
        v16 = [(RTHelperService *)v14 UTF8String];
      }

      else
      {
        v19 = [NSString stringWithFormat:@"%@-%p", objc_opt_class(), v14];
        v16 = [v19 UTF8String];
      }

      v20 = dispatch_queue_create(v16, v15);

      queue = v14->_queue;
      v14->_queue = v20;
    }

    self = v7;
    v18 = self;
  }

  else
  {
    v17 = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: geoMapService", buf, 2u);
    }

    v18 = 0;
  }

  return v18;
}

- (void)addTicket:(id)a3
{
  if (a3)
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

- (void)removeTicket:(id)a3
{
  if (a3)
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

- (void)cancelTicket:(id)a3
{
  if (a3)
  {

    [a3 cancel];
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

- (id)defaultTraitsForOptions:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  if (!v6)
  {
    v6 = [(RTHelperService *)self getDefaultMapServiceOptions];
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_1000011A0(&qword_1000B29B8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v25 = [v6 analyticsIdentifier];
      v26 = [v6 clientIdentifier];
      *buf = 138412546;
      v30 = v25;
      v31 = 2112;
      v32 = v26;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "RTMapServiceOptions: analytics indentifier: %@, app identifier: %@", buf, 0x16u);
    }
  }

  v8 = [v6 useBackgroundTraits];
  geoMapService = self->_geoMapService;
  if (v8)
  {
    [(GEOMapService *)geoMapService defaultBackgroundTraits];
  }

  else
  {
    [(GEOMapService *)geoMapService defaultTraits];
  }
  v10 = ;
  v11 = [v6 clientIdentifier];

  if (v11)
  {
    v12 = [v10 appIdentifier];
    v13 = [v6 clientIdentifier];
    v14 = [NSString stringWithFormat:@"%@|%@", v12, v13];
    [v10 setAppIdentifier:v14];
  }

  v15 = [v10 appIdentifier];
  [v10 setAnalyticsAppIdentifier:v15];

  v16 = [v6 analyticsIdentifier];

  if (v16)
  {
    v17 = [v10 analyticsAppIdentifier];
    v18 = [v6 analyticsIdentifier];
    v19 = [NSString stringWithFormat:@"%@|%@", v17, v18];
    [v10 setAnalyticsAppIdentifier:v19];
  }

  if (a4)
  {
    v20 = [v10 analyticsAppIdentifier];
    v21 = NSStringFromSelector(a4);
    v22 = [NSString stringWithFormat:@"%@|%@", v20, v21];
    [v10 setAnalyticsAppIdentifier:v22];
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v23 = sub_1000011A0(&qword_1000B29B8);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v27 = [v10 analyticsAppIdentifier];
      v28 = [v10 appIdentifier];
      *buf = 138412546;
      v30 = v27;
      v31 = 2112;
      v32 = v28;
      _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "GEOMapServiceTraits: analytics app indentifier: %@, app identifier: %@", buf, 0x16u);
    }
  }

  return v10;
}

- (void)fetchMapItemFromHandle:(id)a3 options:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    if (v9)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10006D868;
      v17[3] = &unk_1000A9200;
      v12 = v9;
      v18 = v12;
      v21 = a2;
      v19 = self;
      v20 = v11;
      v13 = objc_retainBlock(v17);
      [(RTHelperService *)self fetchGeoMapItemFromHandle:v12 options:v10 handler:v13];

      v14 = v18;
    }

    else
    {
      v15 = RTErrorDomain;
      v22 = NSLocalizedDescriptionKey;
      v23 = @"requires valid handle.";
      v14 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v16 = [NSError errorWithDomain:v15 code:7 userInfo:v14];
      (*(v11 + 2))(v11, 0, v16);
    }
  }
}

- (void)fetchGeoMapItemFromHandle:(id)a3 options:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    if (v10)
    {
      v12 = [(RTHelperService *)self defaultTraitsForOptions:v9 selector:"resolveMapItemFromHandle:traits:completionHandler:"];
      geoMapService = self->_geoMapService;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10006DD20;
      v18[3] = &unk_1000A9250;
      v18[4] = self;
      v19 = v8;
      v22 = v11;
      v20 = v9;
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

- (id)_mapItemsFromGEOMapItems:(id)a3 mapItemSource:(unint64_t)a4
{
  v6 = a3;
  v7 = +[NSDate date];
  v8 = [v7 dateByAddingTimeInterval:4838400.0];
  v9 = [[_RTMap alloc] initWithInput:v6];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10006E088;
  v14[3] = &unk_1000A9278;
  v14[4] = self;
  v15 = v7;
  v16 = v8;
  v17 = a4;
  v10 = v8;
  v11 = v7;
  v12 = [(_RTMap *)v9 withBlock:v14];

  return v12;
}

- (id)_mapItemFromGEOMapItem:(id)a3 mapItemSource:(unint64_t)a4 confidenceScalingFactor:(double)a5
{
  v7 = a3;
  v8 = +[NSDate date];
  v21 = [v8 dateByAddingTimeInterval:4838400.0];
  v9 = [(GEOMapService *)self->_geoMapService handleForMapItem:v7];
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
  v19 = [v17 initWithIdentifier:v18 geoMapItem:v7 geoMapItemHandle:v9 source:a4 creationDate:v8 expirationDate:v21 confidenceScalingFactor:a5];

  return v19;
}

- (void)fetchMapItemsFromNaturalLanguageQuery:(id)a3 location:(id)a4 options:(id)a5 handler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v14)
  {
    if ([v11 length])
    {
      if (v12)
      {
        v15 = [(RTHelperService *)self defaultTraitsForOptions:v13 selector:"ticketForSearchQuery:completionItem:maxResults:traits:"];
        [v12 latitude];
        [v12 longitude];
        [v12 horizontalUncertainty];
        [v12 horizontalUncertainty];
        GEOCoordinateRegionMakeWithDistance();
        v16 = [GEOMapRegion _geo_mapRegionForGEOCoordinateRegion:?];
        [v15 setMapRegion:v16];

        v17 = [(GEOMapService *)self->_geoMapService ticketForSearchQuery:v11 completionItem:0 maxResults:5 traits:v15];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10006E7A8;
        v22[3] = &unk_1000A9308;
        v22[4] = self;
        v27 = a2;
        v23 = v11;
        v26 = v14;
        v24 = v13;
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
    (*(v14 + 2))(v14, 0, v18);
    goto LABEL_8;
  }

LABEL_9:
}

- (void)fetchMapGEOItemsFromLocation:(id)a3 options:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    if (v9)
    {
      v12 = [[GEOLocation alloc] initWithRTLocation:v9 includeTimeStamp:1];
      v13 = [(RTHelperService *)self defaultTraitsForOptions:v10 selector:"ticketForReverseGeocodeLocation:preserveOriginalLocation:placeTypeLimit:traits:"];
      v14 = [(GEOMapService *)self->_geoMapService ticketForReverseGeocodeLocation:v12 preserveOriginalLocation:0 placeTypeLimit:0 traits:v13];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10006ED3C;
      v17[3] = &unk_1000A9308;
      v23 = a2;
      v18 = v9;
      v22 = v11;
      v19 = self;
      v20 = v10;
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
      (*(v11 + 2))(v11, 0, v14);
    }
  }
}

- (void)fetchMapItemsFromLocation:(id)a3 options:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    if (v9)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10006F0E8;
      v15[3] = &unk_1000A92C0;
      v15[4] = self;
      v18 = a2;
      v16 = v9;
      v17 = v11;
      [(RTHelperService *)self fetchMapGEOItemsFromLocation:v16 options:v10 handler:v15];
    }

    else
    {
      v12 = RTErrorDomain;
      v19 = NSLocalizedDescriptionKey;
      v20 = @"requires a valid location.";
      v13 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v14 = [NSError errorWithDomain:v12 code:7 userInfo:v13];
      (*(v11 + 2))(v11, 0, v14);
    }
  }
}

- (void)fetchMapItemsRelatedPlacesFromLocation:(id)a3 options:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    if (v9)
    {
      v12 = +[NSMutableArray array];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10006F5B8;
      v16[3] = &unk_1000A9330;
      v16[4] = self;
      v20 = a2;
      v17 = v9;
      v18 = v12;
      v19 = v11;
      v13 = v12;
      [(RTHelperService *)self fetchMapGEOItemsFromLocation:v17 options:v10 handler:v16];
    }

    else
    {
      v14 = RTErrorDomain;
      v21 = NSLocalizedDescriptionKey;
      v22 = @"requires a valid location.";
      v13 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v15 = [NSError errorWithDomain:v14 code:7 userInfo:v13];
      (*(v11 + 2))(v11, 0, 0, v15);
    }
  }
}

- (void)fetchMapItemsFromIdentifiers:(id)a3 options:(id)a4 source:(unint64_t)a5 handler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (v13)
  {
    if ([v11 count])
    {
      v14 = [(RTHelperService *)self defaultTraitsForOptions:v12 selector:"ticketForReverseGeocodeLocation:preserveOriginalLocation:placeTypeLimit:traits:"];
      v15 = [(GEOMapService *)self->_geoMapService _bpod_ticketForIdentifiers:v11 traits:v14];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10006FE6C;
      v18[3] = &unk_1000A9358;
      v18[4] = self;
      v23 = a5;
      v24 = a2;
      v19 = v11;
      v22 = v13;
      v20 = v12;
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
      (*(v13 + 2))(v13, 0, v16);
    }
  }
}

- (void)fetchRelatedPlacesMapItemsForMapItem:(id)a3 relatedPlaceListType:(int)a4 options:(id)a5 source:(unint64_t)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  if (v14)
  {
    if (v12)
    {
      v15 = [v12 geoMapItemHandle];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000703AC;
      v19[3] = &unk_1000A9380;
      v19[4] = self;
      v23 = a4;
      v20 = v13;
      v22 = a6;
      v21 = v14;
      [(RTHelperService *)self fetchGeoMapItemFromHandle:v15 options:v20 handler:v19];
    }

    else
    {
      v16 = RTErrorDomain;
      v24 = NSLocalizedDescriptionKey;
      v25 = @"requires a map item.";
      v17 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v18 = [NSError errorWithDomain:v16 code:7 userInfo:v17];
      (*(v14 + 2))(v14, 0, v18);
    }
  }
}

- (void)_relatedPlacesMapItemsIdentifiersForGEOMapItems:(id)a3 relatedPlaceListType:(int)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    if ([v8 count])
    {
      v10 = +[NSMutableArray array];
      +[NSMutableArray array];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000706CC;
      v16[3] = &unk_1000A93D0;
      v19 = a4;
      v16[4] = self;
      v11 = v17 = v10;
      v18 = v11;
      v12 = v10;
      [v8 enumerateObjectsUsingBlock:v16];
      if ([v11 count])
      {
        v13 = _RTSafeArray();
        v14 = _RTMultiErrorCreate();
      }

      else
      {
        v14 = 0;
      }

      v9[2](v9, v12, v14);
    }

    else
    {
      v15 = RTErrorDomain;
      v20 = NSLocalizedDescriptionKey;
      v21 = @"requires a list GEOMapItems.";
      v11 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v12 = [NSError errorWithDomain:v15 code:7 userInfo:v11];
      v9[2](v9, 0, v12);
    }
  }
}

- (void)_relatedPlacesMapItemsIdentifiersForGEOMapItem:(id)a3 relatedPlaceListType:(int)a4 handler:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (v8)
  {
    if (v7)
    {
      v9 = +[NSMutableSet set];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = [v7 _relatedPlaceLists];
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v19 + 1) + 8 * i);
            if ([v15 type] == a4)
            {
              v16 = [v15 mapIdentifiers];
              [v9 addObjectsFromArray:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v12);
      }

      if (![v9 count])
      {
        (*(v8 + 2))(v8, 0, 0);
        goto LABEL_17;
      }

      v17 = [v9 allObjects];
      (*(v8 + 2))(v8, v17, 0);
    }

    else
    {
      v18 = RTErrorDomain;
      v24 = NSLocalizedDescriptionKey;
      v25 = @"requires a GEOMapItem.";
      v9 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v17 = [NSError errorWithDomain:v18 code:7 userInfo:v9];
      (*(v8 + 2))(v8, 0, v17);
    }

LABEL_17:
  }
}

- (void)fetchConfidenceWeightForMapItem:(id)a3 startDate:(id)a4 endDate:(id)a5 options:(id)a6 handler:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (v14)
  {
    v15 = a6;
    v16 = [a3 geoMapItemHandle];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100070B5C;
    v17[3] = &unk_1000A93F8;
    v17[4] = self;
    v18 = v12;
    v19 = v13;
    v20 = v14;
    [(RTHelperService *)self fetchGeoMapItemFromHandle:v16 options:v15 handler:v17];
  }
}

- (void)fetchMapItemsFromLocations:(id)a3 accessPoints:(id)a4 startDate:(id)a5 endDate:(id)a6 options:(id)a7 handler:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (v20)
  {
    if ([v15 count])
    {
      aSelector = a2;
      v53 = v16;
      v54 = v19;
      v48 = v18;
      v49 = v17;
      v21 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v15 count]);
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v22 = v15;
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

      v52 = self;
      v50 = v15;

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

      v35 = [(RTHelperService *)v52 defaultTraitsForOptions:v54 selector:"ticketForWifiFingerprintWithLocations:wifiAccessPoints:maxLabels:entryTime:exitTime:traits:"];
      v47 = [(GEOMapService *)v52->_geoMapService ticketForWifiFingerprintWithLocations:v21 wifiAccessPoints:v28 maxLabels:50 entryTime:0 exitTime:0 traits:v35];
      v18 = v48;
      v17 = v49;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v36 = sub_1000011A0(&qword_1000B29B8);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v46 = NSStringFromSelector(aSelector);
          v45 = [v22 firstObject];
          v44 = [v22 count];
          v43 = [v29 count];
          v37 = [v54 useBackgroundTraits];
          *buf = 138413315;
          v74 = v46;
          v75 = 2117;
          v76 = v45;
          v77 = 2048;
          v78 = v44;
          v79 = 2048;
          v80 = v43;
          v81 = 1024;
          v82 = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%@, fetch mapItems from bluePoi, location, %{sensitive}@, locations, %lu, accessPoints, %lu, background, %d", buf, 0x30u);
        }
      }

      v38 = objc_opt_new();
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_1000711CC;
      v55[3] = &unk_1000A9420;
      v55[4] = v52;
      v56 = v49;
      v57 = v48;
      v58 = v38;
      v64 = aSelector;
      v59 = v22;
      v60 = v29;
      v63 = v20;
      v61 = v54;
      v62 = v35;
      v39 = v35;
      v40 = v38;
      v19 = v54;
      v41 = v40;
      [v47 submitWithHandler:v55 networkActivity:0];

      v15 = v50;
      v16 = v53;
    }

    else
    {
      v42 = RTErrorDomain;
      v85 = NSLocalizedDescriptionKey;
      v86 = @"requires valid locations.";
      v21 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1];
      v28 = [NSError errorWithDomain:v42 code:7 userInfo:v21];
      (*(v20 + 2))(v20, 0, v28);
    }
  }
}

- (void)fetchMapItemsFromAddressString:(id)a3 options:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    if (v9)
    {
      v12 = [(RTHelperService *)self defaultTraitsForOptions:v10 selector:"ticketForForwardGeocodeString:maxResults:traits:"];
      v13 = [(GEOMapService *)self->_geoMapService ticketForForwardGeocodeString:v9 maxResults:5 traits:v12];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000718D8;
      v16[3] = &unk_1000A9308;
      v16[4] = self;
      v21 = a2;
      v17 = v9;
      v20 = v11;
      v18 = v10;
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
      (*(v11 + 2))(v11, 0, v14);
    }
  }
}

- (void)fetchMapItemsFromAddressDictionary:(id)a3 options:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    if ([v9 count])
    {
      v12 = v9;
      if ([RTMapItem addressDictionaryContainsContactsKeys:v12])
      {
        v13 = [RTMapItem convertAddressDictionaryFromContactsToGeoServices:v12];

        v12 = v13;
      }

      v14 = [(RTHelperService *)self defaultTraitsForOptions:v10 selector:"ticketForForwardGeocodeAddressDictionary:maxResults:traits:"];
      v15 = [(GEOMapService *)self->_geoMapService ticketForForwardGeocodeAddressDictionary:v12 maxResults:5 traits:v14];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100071E8C;
      v19[3] = &unk_1000A9308;
      v24 = a2;
      v19[4] = self;
      v20 = v12;
      v23 = v11;
      v21 = v10;
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
      (*(v11 + 2))(v11, 0, v17);
    }
  }
}

- (void)fetchPostalAddressForMapItem:(id)a3 options:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (v8)
    {
      v11 = [v8 geoMapItemHandle];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100072390;
      v15[3] = &unk_1000A9448;
      v15[4] = self;
      v16 = v10;
      [(RTHelperService *)self fetchGeoMapItemFromHandle:v11 options:v9 handler:v15];

      v12 = v16;
    }

    else
    {
      v13 = RTErrorDomain;
      v17 = NSLocalizedDescriptionKey;
      v18 = @"requires a valid map item.";
      v14 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v12 = [NSError errorWithDomain:v13 code:7 userInfo:v14];

      (*(v10 + 2))(v10, 0, v12);
    }
  }
}

- (void)fetchAppClipURLsForMapItem:(id)a3 options:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (v8)
    {
      v11 = [v8 geoMapItemHandle];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000725D8;
      v15[3] = &unk_1000A9228;
      v16 = v10;
      [(RTHelperService *)self fetchGeoMapItemFromHandle:v11 options:v9 handler:v15];

      v12 = v16;
    }

    else
    {
      v13 = RTErrorDomain;
      v17 = NSLocalizedDescriptionKey;
      v18 = @"requires a valid map item.";
      v14 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v12 = [NSError errorWithDomain:v13 code:7 userInfo:v14];

      (*(v10 + 2))(v10, 0, v12);
    }
  }
}

- (void)fetchCountryAndSubdivisionCodesFromLocation:(id)a3 options:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_alloc_init(GEOLatLng);
  [v9 latitude];
  [v12 setLat:?];
  [v9 longitude];
  [v12 setLng:?];
  v13 = [(RTHelperService *)self defaultTraitsForOptions:v10 selector:"ticketForTerritoryForLocations:shiftLocationsIfNeeded:traits:"];
  geoMapService = self->_geoMapService;
  v27 = v12;
  v15 = [NSArray arrayWithObjects:&v27 count:1];
  v16 = [(GEOMapService *)geoMapService ticketForTerritoryForLocations:v15 shiftLocationsIfNeeded:1 traits:v13];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100072984;
  v21[3] = &unk_1000A9308;
  v21[4] = self;
  v22 = v9;
  v25 = v11;
  v26 = a2;
  v23 = v10;
  v24 = v13;
  v17 = v13;
  v18 = v10;
  v19 = v11;
  v20 = v9;
  [v16 submitWithHandler:v21 networkActivity:0];
}

- (id)_buildingPolygonsFromGEOBuilding:(id)a3
{
  v3 = a3;
  v4 = [v3 sections];
  v5 = [v4 count];

  if (v5)
  {
    v20 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = [v3 sections];
    v6 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v18 = v3;
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
      v3 = v18;
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

- (void)fetchBuildingPolygonsFromLocation:(id)a3 radius:(double)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (v10)
  {
    if (v9 && a4 > 0.0)
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
      v13 = v9;
      v29 = a4;
      v25 = v13;
      v26 = v11;
      v27 = v10;
      v14 = v11;
      v15 = objc_retainBlock(v24);
      [v13 latitude];
      v17 = v16;
      [v13 longitude];
      v19 = [(GEOMapFeatureAccess *)self->_mapFeatureAccess findBuildingsNear:v12 radius:v15 handler:v17 completionHandler:v18, a4];
    }

    else
    {
      v20 = NSStringFromSelector(a2);
      v14 = [NSString stringWithFormat:@"invalid parameters passed to %@, location, %@, radius, %.2f", v20, v9, *&a4];

      v21 = RTErrorDomain;
      v32 = NSLocalizedDescriptionKey;
      v33 = v14;
      v22 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v23 = [NSError errorWithDomain:v21 code:7 userInfo:v22];
      (*(v10 + 2))(v10, 0, v23);
    }
  }
}

- (void)fetchPointOfInterestAttributesWithIdentifier:(unint64_t)a3 options:(id)a4 handler:(id)a5
{
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [(RTHelperService *)self defaultTraitsForOptions:v9 selector:"fetchPointOfInterestAttributesWithIdentifier:options:handler:"];
    geoMapService = self->_geoMapService;
    v13 = [NSNumber numberWithUnsignedInteger:a3];
    v21 = v13;
    v14 = [NSArray arrayWithObjects:&v21 count:1];
    v15 = [(GEOMapService *)geoMapService ticketForMUIDs:v14 traits:v11];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10007370C;
    v16[3] = &unk_1000A9508;
    v19 = a2;
    v20 = a3;
    v18 = v10;
    v16[4] = self;
    v17 = v9;
    [v15 submitWithHandler:v16 networkActivity:0];
  }
}

- (void)fetchPointOfInterestsAroundCoordinate:(id)a3 radius:(double)a4 options:(id)a5 handler:(id)a6
{
  v10 = a6;
  if (v10)
  {
    v11 = a3;
    v12 = [(RTHelperService *)self defaultTraitsForOptions:a5 selector:"fetchPointOfInterestsAroundCoordinate:radius:options:handler:"];
    [v11 latitude];
    v14 = v13;
    [v11 longitude];
    v16 = v15;

    v17 = [[GEOSpatialLookupParameters alloc] initWithCoordinate:&__NSArray0__struct radius:v14 categories:{v16, a4}];
    geoMapService = self->_geoMapService;
    v30 = v17;
    v19 = [NSArray arrayWithObjects:&v30 count:1];
    v20 = [(GEOMapService *)geoMapService ticketForSpatialLookupParameters:v19 traits:v12];

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100074134;
    v24[3] = &unk_1000A9558;
    v28 = v12;
    v29 = v10;
    v25 = v20;
    v26 = v17;
    v27 = self;
    v21 = v12;
    v22 = v17;
    v23 = v20;
    [v23 submitWithHandler:v24 networkActivity:0];
  }
}

- (void)createMapItemWithIdentifier:(id)a3 geoMapItemStorage:(id)a4 source:(unint64_t)a5 creationDate:(id)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (v12)
  {
    if (v13)
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

    if (v13)
    {
LABEL_3:
      if (v14)
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

  if (v14)
  {
LABEL_4:
    if (v15)
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

  if (v15)
  {
LABEL_5:
    if (v12)
    {
      if (v13)
      {
        if (v14)
        {
          v16 = [(GEOMapService *)self->_geoMapService handleForMapItem:v13];
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
          v25 = [v14 dateByAddingTimeInterval:4838400.0];
          v26 = [v24 initWithIdentifier:v12 geoMapItem:v13 geoMapItemHandle:v16 source:a5 creationDate:v14 expirationDate:v25];

          v15[2](v15, v26, 0);
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
    (v15)[2](v15, 0, v26);
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

- (double)confidenceWeightForGeoMapItem:(id)a3 startDate:(id)a4 endDate:(id)a5 timeZone:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = 1.0;
  if (v13 && ([v11 isAfterDate:v12] & 1) == 0)
  {
    v15 = objc_opt_new();
    v16 = [v10 _businessHours];
    [RTBluePOIHelper weightBasedOnBusinessHours:v16 startDate:v11 endDate:v12 timeZone:v13 metrics:v15];
    v18 = v17;

    v19 = [v10 _poiCategory];
    [RTBluePOIHelper weightBasedOnDurationWithStartDate:v11 endDate:v12 timeZone:v13 poiCategory:v19];
    v21 = v20;

    v22 = [NSNumber numberWithDouble:v21];
    [v15 setObject:v22 forKeyedSubscript:@"weightBasedOnDuration"];

    v23 = [v10 _poiCategory];
    [v15 setObject:v23 forKeyedSubscript:@"poiCategory"];

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
        v39 = [v10 _muid];
        v40 = 2112;
        v41 = v11;
        v42 = 2112;
        v43 = v12;
        v44 = 2112;
        v45 = v13;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%@, weight, %.1f, weightBasedOnBusinessHours, %.1f, weightBasedOnDuration, %.1f, muid, %lu, start, %@, end, %@, timeZone, %@", buf, 0x52u);
      }
    }
  }

  return v14;
}

+ (id)exposedErrorFrom:(id)a3
{
  v3 = a3;
  if ([v3 code] == -8)
  {
    v4 = 0;
  }

  else if ([v3 code] == -6)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v4;
}

+ (id)computeMetricsForAnalyticsIdentifier:(id)a3 appIdentifier:(id)a4 requestType:(unint64_t)a5 mapItems:(id)a6 serviceError:(id)a7 isBackgroundRequest:(BOOL)a8
{
  v8 = a8;
  v13 = a7;
  v14 = a6;
  v15 = a4;
  v16 = a3;
  v17 = +[NSMutableDictionary dictionary];
  [v17 setObject:v16 forKeyedSubscript:@"analyticsIdentifier"];

  [v17 setObject:v15 forKeyedSubscript:@"appIdentifier"];
  v18 = [NSNumber numberWithUnsignedInteger:a5];
  [v17 setObject:v18 forKeyedSubscript:@"requestType"];

  v19 = [v14 count];
  v20 = [NSNumber numberWithUnsignedInteger:v19];
  [v17 setObject:v20 forKeyedSubscript:@"yieldCount"];

  if (v13)
  {
    v21 = [v13 domain];
    [v17 setObject:v21 forKeyedSubscript:@"errorDomain"];

    v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v13 code]);
    [v17 setObject:v22 forKeyedSubscript:@"errorCode"];

    v23 = [v13 userInfo];
    v24 = GEOErrorHttpStatusCodeKey;
    v25 = [v23 objectForKeyedSubscript:GEOErrorHttpStatusCodeKey];

    if (v25)
    {
      v26 = [v13 userInfo];
      v27 = [v26 objectForKeyedSubscript:v24];
      [v17 setObject:v27 forKeyedSubscript:@"errorHTTPStatus"];
    }
  }

  if (v8)
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

+ (void)submitMetricsForAnalyticsIdentifier:(id)a3 appIdentifier:(id)a4 requestType:(unint64_t)a5 mapItems:(id)a6 serviceError:(id)a7 isBackgroundRequest:(BOOL)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000751C0;
  v29[3] = &unk_1000A9580;
  v30 = v13;
  v31 = v14;
  v33 = a7;
  v34 = a5;
  v32 = v15;
  v35 = a8;
  v16 = v33;
  v17 = v15;
  v18 = v14;
  v19 = v13;
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

- (void)compileCoreMLModelAtURL:(id)a3 handler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 compileCoreMLModelAtURL:v6 handler:v5];
}

- (void)downloadBluePOITilesForDownloadKeys:(id)a3 handler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 downloadBluePOITilesForDownloadKeys:v6 handler:v5];
}

- (void)downloadBluePOIMetadataWithHandler:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 downloadBluePOIMetadataWithHandler:v3];
}

- (void)fetchBluePOITilesForDownloadKeys:(id)a3 handler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 fetchBluePOITilesForDownloadKeys:v6 handler:v5];
}

- (void)loadProtobufTileAtPath:(id)a3 handler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 loadPreinstalledTileAtPath:v6 handler:v5];
}

- (void)fetchBluePOIMetadataWithHandler:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 fetchBluePOIMetadataWithHandler:v3];
}

- (void)computeWithInputSignals:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
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
  v12 = [(RTHelperService *)self contextAlgorithmsService];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007578C;
  v15[3] = &unk_1000A92C0;
  v16 = v11;
  v17 = self;
  v18 = v8;
  v19 = a2;
  v13 = v8;
  v14 = v11;
  [v12 computeWithInputSignals:v7 handler:v15];
}

- (void)interruptComputeWithError:(id)a3
{
  v5 = a3;
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
  v9 = [(RTHelperService *)self contextAlgorithmsService];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100075B5C;
  v12[3] = &unk_1000A9620;
  v13 = v8;
  v14 = self;
  v15 = v5;
  v16 = a2;
  v10 = v5;
  v11 = v8;
  [v9 interruptComputeWithError:v12];
}

@end