@interface MCRoutineHelper
- (MCRoutineHelper)init;
- (void)findMUIDsForPlaceInferences:(id)a3 analytics:(id)a4 completionQueue:(id)a5 completionHandler:(id)a6;
- (void)findNearbySignificantLocationsAtLocation:(id)a3 inRadius:(double)a4 numberOfVisitsBucketSize:(unsigned int)a5 completionQueue:(id)a6 finishedHandler:(id)a7;
- (void)findSignificantLocationWithCompletionQueue:(id)a3 completionHandler:(id)a4;
- (void)findSignificantLocationWithLocation:(id)a3 numberOfVisitsBucketSize:(unsigned int)a4 completionQueue:(id)a5 finishedHandler:(id)a6;
- (void)findWorkLocationsWithCompletionQueue:(id)a3 completionHandler:(id)a4;
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

- (void)findSignificantLocationWithCompletionQueue:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  routineManager = self->_routineManager;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000E360;
  v11[3] = &unk_10001C9E0;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(RTRoutineManager *)routineManager _maps_fetchAllLocationsOfInterestWithHandler:v11];
}

- (void)findSignificantLocationWithLocation:(id)a3 numberOfVisitsBucketSize:(unsigned int)a4 completionQueue:(id)a5 finishedHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v10 latLng];
  v14 = [CLLocation alloc];
  [v13 lat];
  v16 = v15;
  [v13 lng];
  v18 = [v14 initWithLatitude:v16 longitude:v17];
  [v10 horizontalAccuracy];
  v19 = 10.0;
  if (v20 > 0.0)
  {
    [v10 horizontalAccuracy];
    v19 = v21;
  }

  routineManager = self->_routineManager;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10000E58C;
  v25[3] = &unk_10001DA68;
  v28 = a4;
  v26 = v11;
  v27 = v12;
  v23 = v12;
  v24 = v11;
  [(RTRoutineManager *)routineManager fetchLocationsOfInterestWithinDistance:v18 ofLocation:v25 withHandler:v19];
}

- (void)findNearbySignificantLocationsAtLocation:(id)a3 inRadius:(double)a4 numberOfVisitsBucketSize:(unsigned int)a5 completionQueue:(id)a6 finishedHandler:(id)a7
{
  v12 = a6;
  v13 = a7;
  v14 = [a3 latLng];
  v15 = [CLLocation alloc];
  [v14 lat];
  v17 = v16;
  [v14 lng];
  v19 = [v15 initWithLatitude:v17 longitude:v18];
  routineManager = self->_routineManager;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000E880;
  v23[3] = &unk_10001DA90;
  v26 = a5;
  v23[4] = self;
  v24 = v12;
  v25 = v13;
  v21 = v13;
  v22 = v12;
  [(RTRoutineManager *)routineManager fetchLocationsOfInterestWithinDistance:v19 ofLocation:v23 withHandler:a4];
}

- (void)findWorkLocationsWithCompletionQueue:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  routineManager = self->_routineManager;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000EB90;
  v11[3] = &unk_10001C9E0;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(RTRoutineManager *)routineManager _maps_fetchLocationsOfInterestWithTypes:1 handler:v11];
}

- (void)findMUIDsForPlaceInferences:(id)a3 analytics:(id)a4 completionQueue:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v32 = a4;
  queue = a5;
  v31 = a6;
  v10 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v9 count]);
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
  obj = v9;
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
        v17 = [v16 _loiIdentifier];
        v18 = v17 == 0;

        if (v18)
        {
          v22 = [v16 placemark];
          v23 = [v22 _geoMapItemHandle];
          v24 = v23 == 0;

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
            v26 = [v16 placemark];
            v27 = [v26 _geoMapItemHandle];
            v47[0] = _NSConcreteStackBlock;
            v47[1] = 3221225472;
            v47[2] = sub_10000F570;
            v47[3] = &unk_10001DB08;
            v48 = v11;
            v52 = v63;
            v49 = queue;
            v50 = v10;
            v51 = v16;
            [v25 resolveMapItemFromHandle:v27 completionHandler:v47];

            ++v34;
            v21 = v48;
          }
        }

        else
        {
          dispatch_group_enter(v11);
          routineManager = self->_routineManager;
          v20 = [v16 _loiIdentifier];
          v53[0] = _NSConcreteStackBlock;
          v53[1] = 3221225472;
          v53[2] = sub_10000F2C0;
          v53[3] = &unk_10001DAE0;
          v54 = v11;
          v58 = v64;
          v55 = queue;
          v56 = v10;
          v57 = v16;
          [(RTRoutineManager *)routineManager fetchLocationOfInterestWithIdentifier:v20 withHandler:v53];

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
  v41 = v31;
  v42 = v64;
  v39 = v32;
  v40 = v10;
  v28 = v10;
  v29 = v31;
  v30 = v32;
  dispatch_group_notify(v11, queue, block);

  _Block_object_dispose(v63, 8);
  _Block_object_dispose(v64, 8);
}

@end