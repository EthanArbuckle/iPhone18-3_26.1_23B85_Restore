@interface CALocationDelegateProxy
- (CALocationDelegateProxy)initWithDelegate:(LocationDelegate *)a3 withAccuracy:(int)a4;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
@end

@implementation CALocationDelegateProxy

- (CALocationDelegateProxy)initWithDelegate:(LocationDelegate *)a3 withAccuracy:(int)a4
{
  v7.receiver = self;
  v7.super_class = CALocationDelegateProxy;
  result = [(CALocationDelegateProxy *)&v7 init];
  if (result)
  {
    result->locationDelegate_ = a3;
    result->accuracy_ = a4;
  }

  return result;
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->locationDelegate_)
  {
    v8 = [v6 location];
    [v8 coordinate];
    v10 = v9;
    [v8 coordinate];
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
    v16 = [v8 signalEnvironmentType];
    accuracy = self->accuracy_;
    buf[0] = 1;
    *&v22[4] = v11;
    *&v22[12] = v14;
    LOBYTE(v23) = v16;
    HIDWORD(v23) = accuracy;
    (*(locationDelegate->var0 + 3))(&v20, locationDelegate, buf);
    v18 = v20;
    v20 = 0;
  }
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
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

      v13 = [v7 localizedDescription];
      *buf = 134218242;
      v16 = v12;
      v17 = 2080;
      v18 = [v13 UTF8String];
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

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = a3;
  if (self->locationDelegate_)
  {
    v5 = qword_100192D98;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      accuracy = self->accuracy_;
      v7 = [v4 authorizationStatus];
      if (accuracy)
      {
        v8 = 0xBFF0000000000000;
      }

      else
      {
        v8 = kCLLocationAccuracyAggressivePrecisionReduction;
      }

      if (v7 > 4)
      {
        v9 = "AuthorizedUnknown";
      }

      else
      {
        v9 = off_100188568[v7];
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