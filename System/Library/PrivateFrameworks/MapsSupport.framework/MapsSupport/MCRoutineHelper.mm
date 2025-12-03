@interface MCRoutineHelper
- (MCRoutineHelper)init;
- (void)findMUIDsForPlaceInferences:(id)inferences analytics:(id)analytics completionQueue:(id)queue completionHandler:(id)handler;
- (void)findNearbySignificantLocationsAtLocation:(id)location inRadius:(double)radius numberOfVisitsBucketSize:(unsigned int)size completionQueue:(id)queue finishedHandler:(id)handler;
- (void)findSignificantLocationWithCompletionQueue:(id)queue completionHandler:(id)handler;
- (void)findSignificantLocationWithLocation:(id)location numberOfVisitsBucketSize:(unsigned int)size completionQueue:(id)queue finishedHandler:(id)handler;
- (void)findWorkLocationsWithCompletionQueue:(id)queue completionHandler:(id)handler;
@end

@implementation MCRoutineHelper

- (MCRoutineHelper)init
{
  v6.receiver = self;
  v6.super_class = MCRoutineHelper;
  v2 = [(MCRoutineHelper *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(RTRoutineManager);
    routineManager = v2->_routineManager;
    v2->_routineManager = v3;
  }

  return v2;
}

- (void)findSignificantLocationWithCompletionQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  routineManager = self->_routineManager;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000E360;
  v11[3] = &unk_10001C9E0;
  v12 = queueCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = queueCopy;
  [(RTRoutineManager *)routineManager _maps_fetchAllLocationsOfInterestWithHandler:v11];
}

- (void)findSignificantLocationWithLocation:(id)location numberOfVisitsBucketSize:(unsigned int)size completionQueue:(id)queue finishedHandler:(id)handler
{
  locationCopy = location;
  queueCopy = queue;
  handlerCopy = handler;
  latLng = [locationCopy latLng];
  v14 = [CLLocation alloc];
  [latLng lat];
  v16 = v15;
  [latLng lng];
  v18 = [v14 initWithLatitude:v16 longitude:v17];
  [locationCopy horizontalAccuracy];
  v19 = 10.0;
  if (v20 > 0.0)
  {
    [locationCopy horizontalAccuracy];
    v19 = v21;
  }

  routineManager = self->_routineManager;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10000E58C;
  v25[3] = &unk_10001DA68;
  sizeCopy = size;
  v26 = queueCopy;
  v27 = handlerCopy;
  v23 = handlerCopy;
  v24 = queueCopy;
  [(RTRoutineManager *)routineManager fetchLocationsOfInterestWithinDistance:v18 ofLocation:v25 withHandler:v19];
}

- (void)findNearbySignificantLocationsAtLocation:(id)location inRadius:(double)radius numberOfVisitsBucketSize:(unsigned int)size completionQueue:(id)queue finishedHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  latLng = [location latLng];
  v15 = [CLLocation alloc];
  [latLng lat];
  v17 = v16;
  [latLng lng];
  v19 = [v15 initWithLatitude:v17 longitude:v18];
  routineManager = self->_routineManager;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000E880;
  v23[3] = &unk_10001DA90;
  sizeCopy = size;
  v23[4] = self;
  v24 = queueCopy;
  v25 = handlerCopy;
  v21 = handlerCopy;
  v22 = queueCopy;
  [(RTRoutineManager *)routineManager fetchLocationsOfInterestWithinDistance:v19 ofLocation:v23 withHandler:radius];
}

- (void)findWorkLocationsWithCompletionQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  routineManager = self->_routineManager;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000EB90;
  v11[3] = &unk_10001C9E0;
  v12 = queueCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = queueCopy;
  [(RTRoutineManager *)routineManager _maps_fetchLocationsOfInterestWithTypes:1 handler:v11];
}

- (void)findMUIDsForPlaceInferences:(id)inferences analytics:(id)analytics completionQueue:(id)queue completionHandler:(id)handler
{
  inferencesCopy = inferences;
  analyticsCopy = analytics;
  queue = queue;
  handlerCopy = handler;
  v10 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [inferencesCopy count]);
  v11 = dispatch_group_create();
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x2020000000;
  v64[3] = 0;
  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x2020000000;
  v63[3] = 0;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = inferencesCopy;
  v12 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
  if (v12)
  {
    v33 = 0;
    v34 = 0;
    v13 = 0;
    v14 = *v60;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v60 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v59 + 1) + 8 * i);
        _loiIdentifier = [v16 _loiIdentifier];
        v18 = _loiIdentifier == 0;

        if (v18)
        {
          placemark = [v16 placemark];
          _geoMapItemHandle = [placemark _geoMapItemHandle];
          v24 = _geoMapItemHandle == 0;

          if (v24)
          {
            v21 = GEOGetPOIBusynessLog();
            ++v33;
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 138477827;
              v66 = v16;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "PlaceInference %{private}@ has no loi identifier or map item handle, unable to resolve muid", buf, 0xCu);
            }
          }

          else
          {
            dispatch_group_enter(v11);
            v25 = +[GEOMapService sharedService];
            placemark2 = [v16 placemark];
            _geoMapItemHandle2 = [placemark2 _geoMapItemHandle];
            v47[0] = _NSConcreteStackBlock;
            v47[1] = 3221225472;
            v47[2] = sub_10000F570;
            v47[3] = &unk_10001DB08;
            v48 = v11;
            v52 = v63;
            queueCopy = queue;
            v50 = v10;
            v51 = v16;
            [v25 resolveMapItemFromHandle:_geoMapItemHandle2 completionHandler:v47];

            ++v34;
            v21 = v48;
          }
        }

        else
        {
          dispatch_group_enter(v11);
          routineManager = self->_routineManager;
          _loiIdentifier2 = [v16 _loiIdentifier];
          v53[0] = _NSConcreteStackBlock;
          v53[1] = 3221225472;
          v53[2] = sub_10000F2C0;
          v53[3] = &unk_10001DAE0;
          v54 = v11;
          v58 = v64;
          queueCopy2 = queue;
          v56 = v10;
          v57 = v16;
          [(RTRoutineManager *)routineManager fetchLocationOfInterestWithIdentifier:_loiIdentifier2 withHandler:v53];

          ++v13;
          v21 = v54;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
    }

    while (v12);
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v13 = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F7F4;
  block[3] = &unk_10001DB30;
  v43 = v63;
  v44 = v13;
  v45 = v34;
  v46 = v33;
  v41 = handlerCopy;
  v42 = v64;
  v39 = analyticsCopy;
  v40 = v10;
  v28 = v10;
  v29 = handlerCopy;
  v30 = analyticsCopy;
  dispatch_group_notify(v11, queue, block);

  _Block_object_dispose(v63, 8);
  _Block_object_dispose(v64, 8);
}

@end