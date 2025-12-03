@interface CALocationDelegateProxy
- (CALocationDelegateProxy)initWithDelegate:(LocationDelegate *)delegate withAccuracy:(int)accuracy;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation CALocationDelegateProxy

- (CALocationDelegateProxy)initWithDelegate:(LocationDelegate *)delegate withAccuracy:(int)accuracy
{
  v7.receiver = self;
  v7.super_class = CALocationDelegateProxy;
  result = [(CALocationDelegateProxy *)&v7 init];
  if (result)
  {
    result->locationDelegate_ = delegate;
    result->accuracy_ = accuracy;
  }

  return result;
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  managerCopy = manager;
  locationsCopy = locations;
  if (self->locationDelegate_)
  {
    location = [managerCopy location];
    [location coordinate];
    v10 = v9;
    [location coordinate];
    v11 = round(v10 * 100.0) / 100.0;
    v13 = qword_100192D98;
    v14 = round(v12 * 100.0) / 100.0;
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
    {
      v19 = 0xBFF0000000000000;
      if (!self->accuracy_)
      {
        v19 = kCLLocationAccuracyAggressivePrecisionReduction;
      }

      *buf = 134218497;
      *v22 = v19;
      *&v22[8] = 2049;
      *&v22[10] = v11;
      *&v22[18] = 2049;
      v23 = v14;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[LocationRelay] Location updated for accuracy %f: Current {Lat: %{private}f, Lng: %{private}f}", buf, 0x20u);
    }

    locationDelegate = self->locationDelegate_;
    signalEnvironmentType = [location signalEnvironmentType];
    accuracy = self->accuracy_;
    buf[0] = 1;
    *&v22[4] = v11;
    *&v22[12] = v14;
    LOBYTE(v23) = signalEnvironmentType;
    HIDWORD(v23) = accuracy;
    (*(locationDelegate->var0 + 3))(&v20, locationDelegate, buf);
    v18 = v20;
    v20 = 0;
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  if (self->locationDelegate_)
  {
    v8 = qword_100192D98;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      if (self->accuracy_)
      {
        v12 = 0xBFF0000000000000;
      }

      else
      {
        v12 = kCLLocationAccuracyAggressivePrecisionReduction;
      }

      localizedDescription = [errorCopy localizedDescription];
      *buf = 134218242;
      v16 = v12;
      v17 = 2080;
      uTF8String = [localizedDescription UTF8String];
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[LocationRelay] Encountered error while querying location for accuracy %f: %s", buf, 0x16u);
    }

    locationDelegate = self->locationDelegate_;
    accuracy = self->accuracy_;
    buf[0] = 0;
    v19 = accuracy;
    (*(locationDelegate->var0 + 3))(&v14);
    v11 = v14;
    v14 = 0;
  }
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  if (self->locationDelegate_)
  {
    v5 = qword_100192D98;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      accuracy = self->accuracy_;
      authorizationStatus = [authorizationCopy authorizationStatus];
      if (accuracy)
      {
        v8 = 0xBFF0000000000000;
      }

      else
      {
        v8 = kCLLocationAccuracyAggressivePrecisionReduction;
      }

      if (authorizationStatus > 4)
      {
        v9 = "AuthorizedUnknown";
      }

      else
      {
        v9 = off_100188568[authorizationStatus];
      }

      sub_10000459C(v13, v9);
      sub_100125F9C(v13, buf, v8, v5);
    }

    v10 = self->accuracy_;
    (*(self->locationDelegate_->var0 + 4))(&v12);
    v11 = v12;
    v12 = 0;
  }
}

@end