@interface NanoDirectionWaypoint
+ (NanoDirectionWaypoint)directionWaypointWithGEOMapItem:(id)item;
+ (NanoDirectionWaypoint)directionWaypointWithSearchString:(id)string;
+ (id)directionWaypointForCompanionWaypoint:(id)waypoint;
+ (id)directionWaypointForComposedWaypoint:(id)waypoint;
+ (id)directionWaypointForCurrentLocation:(id)location;
+ (id)directionWaypointForLocation:(id)location;
+ (id)directionWaypointForLocation:(id)location findMyHandleID:(id)d;
+ (id)directionWaypointToCustomRoute:(id)route;
- (BOOL)isValid;
- (NSString)name;
- (NanoDirectionWaypoint)initWithCoder:(id)coder;
- (id)companionWaypoint;
- (id)debugDescription;
- (id)description;
- (void)cancelRefinement;
- (void)encodeWithCoder:(id)coder;
- (void)refineWithTraits:(id)traits auditToken:(id)token completionHandler:(id)handler;
- (void)setComposedWaypoint:(id)waypoint;
@end

@implementation NanoDirectionWaypoint

+ (id)directionWaypointForCompanionWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  if ([waypointCopy isCurrentLocation])
  {
    location = [waypointCopy location];
    v6 = [self directionWaypointForCurrentLocation:location];
  }

  else
  {
    v6 = objc_alloc_init(self);
    location2 = [waypointCopy location];
    [v6 setLocation:location2];

    mapItem = [waypointCopy mapItem];
    [v6 setGeoMapItem:mapItem];

    searchString = [waypointCopy searchString];
    [v6 setSearchString:searchString];

    v10 = [[GEOComposedWaypoint alloc] initWithCompanionWaypoint:waypointCopy];
    [v6 setComposedWaypoint:v10];

    findMyHandleID = [waypointCopy findMyHandleID];
    [v6 setFindMyHandleID:findMyHandleID];

    location = [waypointCopy routeData];
    if (location)
    {
      v16 = 0;
      v12 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:location error:&v16];
      v13 = v16;
      v14 = v6[8];
      v6[8] = v12;
    }
  }

  return v6;
}

+ (id)directionWaypointToCustomRoute:(id)route
{
  routeCopy = route;
  v4 = objc_opt_new();
  persistentData = [routeCopy persistentData];
  v6 = v4[8];
  v4[8] = persistentData;

  name = [routeCopy name];
  [v4 setName:name];

  v8 = [[GEOComposedWaypointToRoute alloc] initWithRoute:routeCopy];
  [v4 setComposedWaypoint:v8];

  return v4;
}

+ (id)directionWaypointForComposedWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  if ([waypointCopy isCurrentLocation])
  {
    if ([waypointCopy hasLatLng])
    {
      v4 = [GEOLocation alloc];
      latLng = [waypointCopy latLng];
      findMyHandleID = [v4 initWithLocation:latLng isUserLocation:objc_msgSend(waypointCopy floorOrdinal:{"isCurrentLocation"), 0x7FFFFFFFLL}];
    }

    else
    {
      findMyHandleID = 0;
    }

    v8 = [NanoDirectionWaypoint directionWaypointForCurrentLocation:findMyHandleID];
  }

  else
  {
    geoMapItem = [waypointCopy geoMapItem];
    v8 = [NanoDirectionWaypoint directionWaypointWithGEOMapItem:geoMapItem];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      route = [waypointCopy route];
      persistentData = [route persistentData];
      v11 = v8[8];
      v8[8] = persistentData;
    }

    findMyHandleID = [waypointCopy findMyHandleID];
    [v8 setFindMyHandleID:findMyHandleID];
  }

  return v8;
}

+ (id)directionWaypointForCurrentLocation:(id)location
{
  locationCopy = location;
  v5 = objc_alloc_init(self);
  [v5 setCurrentLocation:1];
  [v5 setLocation:locationCopy];

  return v5;
}

+ (id)directionWaypointForLocation:(id)location
{
  locationCopy = location;
  v5 = objc_alloc_init(self);
  [v5 setLocation:locationCopy];

  return v5;
}

+ (id)directionWaypointForLocation:(id)location findMyHandleID:(id)d
{
  dCopy = d;
  locationCopy = location;
  v8 = objc_alloc_init(self);
  v9 = [dCopy copy];

  [v8 setFindMyHandleID:v9];
  [v8 setLocation:locationCopy];

  return v8;
}

+ (NanoDirectionWaypoint)directionWaypointWithGEOMapItem:(id)item
{
  itemCopy = item;
  v5 = objc_alloc_init(self);
  [v5 setGeoMapItem:itemCopy];
  v6 = [[GEOComposedWaypoint alloc] initWithMapItem:itemCopy];

  [v5 setComposedWaypoint:v6];

  return v5;
}

+ (NanoDirectionWaypoint)directionWaypointWithSearchString:(id)string
{
  stringCopy = string;
  v5 = objc_alloc_init(self);
  [v5 setSearchString:stringCopy];

  return v5;
}

- (NSString)name
{
  composedWaypoint = self->_composedWaypoint;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    name = [(GEOComposedWaypoint *)self->_composedWaypoint name];
LABEL_5:
    v6 = name;
    goto LABEL_6;
  }

  name = self->_name;
  if (name)
  {
    name = name;
    goto LABEL_5;
  }

  geoMapItem = [(GEOComposedWaypoint *)self->_composedWaypoint geoMapItem];
  name2 = [geoMapItem name];
  searchString = name2;
  if (name2 || (searchString = self->_searchString) != 0)
  {
    v6 = searchString;
  }

  else
  {
    geoMapItem2 = [(NanoDirectionWaypoint *)self geoMapItem];
    name3 = [geoMapItem2 name];
    v13 = name3;
    if (name3)
    {
      v6 = name3;
    }

    else
    {
      v14 = +[NSBundle mainBundle];
      v6 = [v14 localizedStringForKey:@"Destination [Nano value:Route Planning]" table:{@"localized string not found", 0}];
    }
  }

LABEL_6:

  return v6;
}

- (BOOL)isValid
{
  composedWaypoint = [(NanoDirectionWaypoint *)self composedWaypoint];
  if (composedWaypoint || [(NanoDirectionWaypoint *)self isCurrentLocation])
  {
    v4 = 1;
  }

  else
  {
    location = [(NanoDirectionWaypoint *)self location];
    if (location)
    {
      v4 = 1;
    }

    else
    {
      geoMapItem = [(NanoDirectionWaypoint *)self geoMapItem];
      if (geoMapItem)
      {
        v4 = 1;
      }

      else
      {
        searchString = [(NanoDirectionWaypoint *)self searchString];
        if ([searchString length])
        {
          v4 = 1;
        }

        else
        {
          v4 = [(NanoDirectionWaypoint *)self muid]!= 0;
        }
      }
    }
  }

  return v4;
}

- (void)setComposedWaypoint:(id)waypoint
{
  objc_storeStrong(&self->_composedWaypoint, waypoint);
  waypointCopy = waypoint;
  findMyHandleID = [(NanoDirectionWaypoint *)self findMyHandleID];
  [(GEOComposedWaypoint *)self->_composedWaypoint setFindMyHandleID:findMyHandleID];
}

- (void)refineWithTraits:(id)traits auditToken:(id)token completionHandler:(id)handler
{
  traitsCopy = traits;
  tokenCopy = token;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    goto LABEL_50;
  }

  if (![(NanoDirectionWaypoint *)self isValid])
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
    goto LABEL_50;
  }

  geoMapItem = [(NanoDirectionWaypoint *)self geoMapItem];
  if (geoMapItem || ([(NanoDirectionWaypoint *)self destinationRouteData], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    composedWaypoint = [(NanoDirectionWaypoint *)self composedWaypoint];

    if (geoMapItem)
    {

      if (!composedWaypoint)
      {
        goto LABEL_10;
      }
    }

    else
    {

      if (!composedWaypoint)
      {
LABEL_10:
        destinationRouteData = [(NanoDirectionWaypoint *)self destinationRouteData];

        if (destinationRouteData)
        {
          v15 = [GEORouteBuilder_PersistentData alloc];
          destinationRouteData2 = [(NanoDirectionWaypoint *)self destinationRouteData];
          geoMapItem2 = [v15 initWithPersistentData:destinationRouteData2];

          buildRoute = [geoMapItem2 buildRoute];
          v19 = [[GEOComposedWaypointToRoute alloc] initWithRoute:buildRoute];
          [(NanoDirectionWaypoint *)self setComposedWaypoint:v19];
        }

        else
        {
          v20 = [GEOComposedWaypoint alloc];
          geoMapItem2 = [(NanoDirectionWaypoint *)self geoMapItem];
          buildRoute = [v20 initWithMapItem:geoMapItem2];
          [(NanoDirectionWaypoint *)self setComposedWaypoint:buildRoute];
        }
      }
    }
  }

  objc_initWeak(&location, self);
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_10001AFAC;
  v56[3] = &unk_100085BE8;
  objc_copyWeak(&v58, &location);
  v21 = handlerCopy;
  v57 = v21;
  v53 = objc_retainBlock(v56);
  composedWaypoint2 = [(NanoDirectionWaypoint *)self composedWaypoint];

  if (composedWaypoint2)
  {
    composedWaypoint3 = [(NanoDirectionWaypoint *)self composedWaypoint];
    needsAdditionalNavData = [composedWaypoint3 needsAdditionalNavData];

    if (needsAdditionalNavData)
    {
      v25 = sub_100053324();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "composedWaypoint needs additional nav data", buf, 2u);
      }

      geoMapItem3 = [(NanoDirectionWaypoint *)self geoMapItem];
      v51 = [GEOComposedWaypoint composedWaypointForIncompleteMapItem:geoMapItem3 traits:traitsCopy clientAttributes:0 completionHandler:v53 networkActivityHandler:0];
      objc_storeWeak(&self->_refinementTicket, v51);
    }

    else
    {
      v27 = sub_100053324();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Using existing composedWaypoint for refinement", buf, 2u);
      }

      geoMapItem3 = [(NanoDirectionWaypoint *)self composedWaypoint];
      (*(v21 + 2))(v21, geoMapItem3, 0);
    }
  }

  else
  {
    if ([(NanoDirectionWaypoint *)self isCurrentLocation])
    {
      [traitsCopy deviceLocation];
    }

    else
    {
      [(NanoDirectionWaypoint *)self location];
    }
    geoMapItem3 = ;
    isCurrentLocation = [(NanoDirectionWaypoint *)self isCurrentLocation];
    if (geoMapItem3)
    {
      v29 = 0;
    }

    else
    {
      v29 = isCurrentLocation;
    }

    if (v29 == 1)
    {
      v30 = sub_100053324();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Waypoint wants current location but none found on traits", buf, 2u);
      }
    }

    searchString = [(NanoDirectionWaypoint *)self searchString];
    muid = [(NanoDirectionWaypoint *)self muid];
    providerID = [(NanoDirectionWaypoint *)self providerID];
    latLng = [geoMapItem3 latLng];
    [latLng lat];
    v35 = v34;
    latLng2 = [geoMapItem3 latLng];
    [latLng2 lng];
    v38 = CLLocationCoordinate2DMake(v35, v37);

    if (geoMapItem3 && CLLocationCoordinate2DIsValid(v38))
    {
      v39 = sub_100053324();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        latLng3 = [geoMapItem3 latLng];
        [latLng3 lat];
        v42 = v41;
        latLng4 = [geoMapItem3 latLng];
        [latLng4 lng];
        *buf = 134283777;
        selfCopy = v42;
        v62 = 2049;
        v63 = v44;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Will refine location: %{private}#.3lf,%{private}#.3lf", buf, 0x16u);
      }

      v45 = [GEOComposedWaypoint composedWaypointForCurrentLocation:geoMapItem3 traits:traitsCopy auditToken:tokenCopy completionHandler:v53 networkActivityHandler:0];
      objc_storeWeak(&self->_refinementTicket, v45);
    }

    else if (muid)
    {
      v46 = sub_100053324();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        *buf = 134283777;
        selfCopy = muid;
        v62 = 1025;
        LODWORD(v63) = providerID;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Will refine ID: %{private}llu/%{private}d", buf, 0x12u);
      }

      v47 = [GEOComposedWaypoint composedWaypointForID:muid resultsProviderID:providerID contentProvider:0 traits:traitsCopy clientAttributes:0 completionHandler:v53 networkActivityHandler:0];
      objc_storeWeak(&self->_refinementTicket, v47);
    }

    else if (searchString)
    {
      v48 = sub_100053324();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        *buf = 138477827;
        selfCopy = searchString;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "Will refine address: %{private}@", buf, 0xCu);
      }

      v49 = [GEOComposedWaypoint composedWaypointForSearchString:searchString completionItem:0 traits:traitsCopy clientAttributes:0 completionHandler:v53 networkActivityHandler:0];
      objc_storeWeak(&self->_refinementTicket, v49);
    }

    else
    {
      v50 = sub_100053324();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 138477827;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Unable to refine: %{private}@", buf, 0xCu);
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001B07C;
      block[3] = &unk_100085C10;
      block[4] = self;
      v55 = v53;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  objc_destroyWeak(&v58);
  objc_destroyWeak(&location);
LABEL_50:
}

- (void)cancelRefinement
{
  WeakRetained = objc_loadWeakRetained(&self->_refinementTicket);
  [WeakRetained cancel];
}

- (NanoDirectionWaypoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(NanoDirectionWaypoint *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentLocation"];
    v5->_currentLocation = [v10 BOOLValue];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchString"];
    searchString = v5->_searchString;
    v5->_searchString = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"muid"];
    v5->_muid = [v13 unsignedLongLongValue];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"providerID"];
    v5->_providerID = [v14 intValue];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"geoMapItemStorage"];
    geoMapItem = v5->_geoMapItem;
    v5->_geoMapItem = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"composedWaypoint"];
    composedWaypoint = v5->_composedWaypoint;
    v5->_composedWaypoint = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"findMyHandleID"];
    findMyHandleID = v5->_findMyHandleID;
    v5->_findMyHandleID = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destinationRouteData"];
    destinationRouteData = v5->_destinationRouteData;
    v5->_destinationRouteData = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_location forKey:@"location"];
  v5 = [NSNumber numberWithBool:self->_currentLocation];
  [coderCopy encodeObject:v5 forKey:@"currentLocation"];

  [coderCopy encodeObject:self->_searchString forKey:@"searchString"];
  v6 = [NSNumber numberWithUnsignedLongLong:self->_muid];
  [coderCopy encodeObject:v6 forKey:@"muid"];

  v7 = [NSNumber numberWithInt:self->_providerID];
  [coderCopy encodeObject:v7 forKey:@"providerID"];

  v8 = [GEOMapItemStorage mapItemStorageForGEOMapItem:self->_geoMapItem];
  [coderCopy encodeObject:v8 forKey:@"geoMapItemStorage"];

  [coderCopy encodeObject:self->_composedWaypoint forKey:@"composedWaypoint"];
  [coderCopy encodeObject:self->_findMyHandleID forKey:@"findMyHandleID"];
  [coderCopy encodeObject:self->_destinationRouteData forKey:@"destinationRouteData"];
}

- (id)description
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001B91C;
  v17[3] = &unk_100085C38;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(v17);
  (v4[2])(v4, @"name", self->_name);
  (v4[2])(v4, @"location", self->_location);
  if (self->_currentLocation)
  {
    v5 = [NSNumber numberWithBool:1];
    (v4[2])(v4, @"currentLocation", v5);
  }

  else
  {
    (v4[2])(v4, @"currentLocation", 0);
  }

  (v4[2])(v4, @"searchString", self->_searchString);
  if (self->_muid)
  {
    v6 = [NSNumber numberWithUnsignedLongLong:?];
    (v4[2])(v4, @"muid", v6);
  }

  else
  {
    (v4[2])(v4, @"muid");
  }

  if (self->_providerID <= 0)
  {
    (v4[2])(v4, @"providerId", 0);
  }

  else
  {
    v7 = [NSNumber numberWithInt:?];
    (v4[2])(v4, @"providerId", v7);
  }

  (v4[2])(v4, @"geoMapItem", self->_geoMapItem);
  shortDescription = [(GEOComposedWaypoint *)self->_composedWaypoint shortDescription];
  (v4[2])(v4, @"composedWaypoint", shortDescription);

  (v4[2])(v4, @"findMyHandleID", self->_findMyHandleID);
  _clientAttributes = [(GEOMapItem *)self->_geoMapItem _clientAttributes];
  (v4[2])(v4, @"clientAttrbutes", _clientAttributes);

  if (self->_destinationRouteData)
  {
    v10 = &__kCFBooleanTrue;
  }

  else
  {
    v10 = 0;
  }

  (v4[2])(v4, @"destinationRouteData", v10);
  v16.receiver = self;
  v16.super_class = NanoDirectionWaypoint;
  v11 = [(NanoDirectionWaypoint *)&v16 description];
  name = [(NanoDirectionWaypoint *)self name];
  v13 = [v3 componentsJoinedByString:{@", "}];
  v14 = [NSString stringWithFormat:@"%@ %@ (%@)", v11, name, v13];

  return v14;
}

- (id)debugDescription
{
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001BC38;
  v16[3] = &unk_100085C38;
  v3 = objc_alloc_init(NSMutableArray);
  v17 = v3;
  v4 = objc_retainBlock(v16);
  (v4[2])(v4, @"name", self->_name);
  (v4[2])(v4, @"location", self->_location);
  if (self->_currentLocation)
  {
    v5 = [NSNumber numberWithBool:1];
    (v4[2])(v4, @"currentLocation", v5);
  }

  else
  {
    (v4[2])(v4, @"currentLocation", 0);
  }

  (v4[2])(v4, @"searchString", self->_searchString);
  if (self->_muid)
  {
    v6 = [NSNumber numberWithUnsignedLongLong:?];
    (v4[2])(v4, @"muid", v6);
  }

  else
  {
    (v4[2])(v4, @"muid");
  }

  if (self->_providerID <= 0)
  {
    (v4[2])(v4, @"providerId", 0);
  }

  else
  {
    v7 = [NSNumber numberWithInt:?];
    (v4[2])(v4, @"providerId", v7);
  }

  (v4[2])(v4, @"geoMapItem", self->_geoMapItem);
  shortDescription = [(GEOComposedWaypoint *)self->_composedWaypoint shortDescription];
  (v4[2])(v4, @"composedWaypoint", shortDescription);

  (v4[2])(v4, @"findMyHandleID", self->_findMyHandleID);
  if (self->_destinationRouteData)
  {
    v9 = &__kCFBooleanTrue;
  }

  else
  {
    v9 = 0;
  }

  (v4[2])(v4, @"destinationRouteData", v9);
  v15.receiver = self;
  v15.super_class = NanoDirectionWaypoint;
  v10 = [(NanoDirectionWaypoint *)&v15 debugDescription];
  name = [(NanoDirectionWaypoint *)self name];
  v12 = [v3 componentsJoinedByString:{@", \n"}];
  v13 = [NSString stringWithFormat:@"%@ %@ {\n%@\n}", v10, name, v12];

  return v13;
}

- (id)companionWaypoint
{
  v3 = objc_alloc_init(GEOCompanionWaypoint);
  [v3 setIsCurrentLocation:{-[NanoDirectionWaypoint isCurrentLocation](self, "isCurrentLocation")}];
  geoMapItem = [(NanoDirectionWaypoint *)self geoMapItem];
  v5 = [GEOMapItemStorage mapItemStorageForGEOMapItem:geoMapItem];
  [v3 setMapItem:v5];

  composedWaypoint = [(NanoDirectionWaypoint *)self composedWaypoint];
  waypoint = [composedWaypoint waypoint];
  [v3 setWaypointTyped:waypoint];

  searchString = [(NanoDirectionWaypoint *)self searchString];
  [v3 setSearchString:searchString];

  findMyHandleID = [(NanoDirectionWaypoint *)self findMyHandleID];
  [v3 setFindMyHandleID:findMyHandleID];

  destinationRouteData = [(NanoDirectionWaypoint *)self destinationRouteData];

  if (destinationRouteData)
  {
    destinationRouteData2 = [(NanoDirectionWaypoint *)self destinationRouteData];
    v14 = 0;
    v12 = [NSKeyedArchiver archivedDataWithRootObject:destinationRouteData2 requiringSecureCoding:1 error:&v14];

    [v3 setRouteData:v12];
  }

  return v3;
}

@end