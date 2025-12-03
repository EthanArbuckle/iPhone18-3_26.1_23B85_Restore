@interface GEOLocationShifter
- (void)navdShiftLocation:(id)location withCompletionHandler:(id)handler;
@end

@implementation GEOLocationShifter

- (void)navdShiftLocation:(id)location withCompletionHandler:(id)handler
{
  locationCopy = location;
  handlerCopy = handler;
  v8 = [[GEOLocation alloc] initWithCLLocation:locationCopy];
  latLng = [v8 latLng];
  [latLng coordinate];
  v11 = v10;
  v13 = v12;
  v14 = [GEOLocationShifter isLocationShiftRequiredForCoordinate:?];
  v15 = GEOFindOrCreateLog();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
  if (!v14)
  {
    if (v16)
    {
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Location shifting is disabled. Sending the original location coordinate back", v24, 2u);
    }

    goto LABEL_12;
  }

  if (v16)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Location shifting is enabled", buf, 2u);
  }

  matchInfo = [locationCopy matchInfo];
  if (matchInfo)
  {
    v18 = matchInfo;
    matchInfo2 = [locationCopy matchInfo];
    isMatchShifted = [matchInfo2 isMatchShifted];

    if (isMatchShifted)
    {
      v21 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Location shifting is enabled. Location already shifted. Sending back the original location coordinate.", v25, 2u);
      }

LABEL_12:
      [locationCopy horizontalAccuracy];
      handlerCopy[2](handlerCopy, v11, v13, v22);
      goto LABEL_16;
    }
  }

  v23 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Location shifting is enabled. Performing the shift.", v26, 2u);
  }

  [locationCopy horizontalAccuracy];
  [(GEOLocationShifter *)self shiftLatLng:latLng accuracy:handlerCopy withCompletionHandler:0 mustGoToNetworkCallback:0 errorHandler:&_dispatch_main_q callbackQueue:?];
LABEL_16:
}

@end