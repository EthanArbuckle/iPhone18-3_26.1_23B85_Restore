@interface DDRemoteMapViewControllerProvider
- (void)createViewControllerWithCompletionHandler:(id)a3;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)removeLocationManager;
@end

@implementation DDRemoteMapViewControllerProvider

- (void)createViewControllerWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(DDRemoteMapViewControllerProvider *)self actionContext];
  v6 = [v5 result];

  v72 = self;
  v7 = [(DDRemoteMapViewControllerProvider *)self actionContext];
  v8 = [v7 URL];

  if (v6)
  {
    if (DDResultHasType())
    {
      v9 = DDResultGetMatchedString();
      v73 = DDResultGetSubresultWithType() != 0;
      CountryCode = DDResultGetCountryCode();
      if (v9)
      {
        v10 = v9;
        v11 = 0;
        v80 = 0;
        v12 = 0;
        v13 = 1;
        v82 = v10;
        v78 = v10;
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    if (DDResultGetCategory() == 1)
    {
      v15 = DDResultCopyExtractedURL();
      if (v15)
      {
        v16 = [NSURL URLWithString:v15];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
          if ([v16 dd_isMaps:0])
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        v17 = 0;
      }

      v18 = v8;

      if (!v18)
      {
        v14 = 0;

LABEL_21:
        if (v14)
        {
          v80 = v14;
          v82 = [v14 value];
          v10 = [(__CFString *)v82 stringByRemovingPercentEncoding];
          v78 = 0;
          CountryCode = 0;
          v11 = 0;
          v73 = 0;
          v12 = 0;
          v13 = 1;
          goto LABEL_26;
        }

        goto LABEL_23;
      }

LABEL_15:
      v105 = 0;
      v106 = 0;
      DDExtractMapLocationInformationFromURL();
      v11 = 0;
      v14 = 0;

      if (v11)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }
  }

  else if (v8)
  {
    v103 = 0;
    v104 = 0;
    DDExtractMapLocationInformationFromURL();
    v11 = 0;
    v14 = 0;
    if (v11)
    {
LABEL_16:
      v19 = [v14 value];
      if ([v19 length])
      {
        [v14 value];
      }

      else
      {
        DDLocalizedString();
      }
      v10 = ;
      v80 = v14;

      v13 = 0;
      v78 = 0;
      CountryCode = 0;
      v73 = 0;
      v12 = 0;
      goto LABEL_25;
    }

    goto LABEL_21;
  }

LABEL_23:
  v73 = 0;
  CountryCode = 0;
LABEL_24:
  v10 = DDLocalizedString();
  v78 = 0;
  v11 = 0;
  v80 = 0;
  v13 = 1;
  v12 = 1;
LABEL_25:
  v82 = &stru_100008550;
LABEL_26:
  v81 = objc_alloc_init(UIViewController);
  v20 = [v81 view];
  v21 = [[UILabel alloc] initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v21 setText:v10];
  [v21 setNumberOfLines:10];
  [v21 setTextAlignment:1];
  [v21 setLineBreakMode:4];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v20 addSubview:v21];
  v22 = [NSLayoutConstraint constraintWithItem:v21 attribute:9 relatedBy:0 toItem:v20 attribute:9 multiplier:1.0 constant:0.0];
  [v20 addConstraint:v22];

  v23 = [NSLayoutConstraint constraintWithItem:v21 attribute:7 relatedBy:0 toItem:v20 attribute:7 multiplier:1.0 constant:-10.0];
  [v20 addConstraint:v23];

  v24 = [NSLayoutConstraint constraintWithItem:v21 attribute:10 relatedBy:0 toItem:v20 attribute:10 multiplier:1.0 constant:0.0];
  [v20 addConstraint:v24];

  [v20 sizeToFit];
  v25 = [CLInUseAssertion newAssertionForBundleIdentifier:@"com.apple.Maps" withReason:@"Data Detectors Address Preview" level:1];
  v97[0] = _NSConcreteStackBlock;
  v97[1] = 3221225472;
  v97[2] = sub_100001C48;
  v97[3] = &unk_100008360;
  v77 = v20;
  v98 = v77;
  v26 = v21;
  v99 = v26;
  v102 = v12;
  v27 = v10;
  v100 = v27;
  v28 = v25;
  v101 = v28;
  v29 = objc_retainBlock(v97);
  v30 = v29;
  if ((v13 & 1) == 0)
  {
    v75 = v28;
    v76 = v26;
    v50 = v27;
    v31 = v11;
    v51 = [v11 value];
    v52 = [v51 componentsSeparatedByString:{@", "}];
    if ([v52 count] == 2)
    {
      v53 = [v52 firstObject];
      [v53 doubleValue];
      v55 = v54;

      v56 = [v52 lastObject];
      [v56 doubleValue];
      v58 = v57;

      v59 = [[CLLocation alloc] initWithLatitude:v55 longitude:v58];
      v60 = v4;
      v61 = [CLCircularRegion alloc];
      [v59 coordinate];
      v62 = [v61 initWithCenter:@"DDInternalConversion" radius:? identifier:?];
      v63 = v8;
      v64 = [[CLPlacemark alloc] initWithLocation:v59 addressDictionary:0 region:v62 areasOfInterest:0];
      (v30)[2](v30, v64, 0);

      v8 = v63;
      v31 = v11;

      v4 = v60;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v108 = v51;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Map Preview: Provided lat/long coordinates '%@' are invalid.", buf, 0xCu);
      }

      v30[2](v30, 0, 0);
    }

    v39 = CountryCode;
    v48 = v81;
    v32 = v82;
    v4[2](v4, v81);

    v27 = v50;
    goto LABEL_47;
  }

  v31 = v11;
  v32 = v82;
  if (v82)
  {
    v75 = v28;
    v76 = v26;
    v70 = v27;
    v33 = v8;
    v93[0] = _NSConcreteStackBlock;
    v93[1] = 3221225472;
    v93[2] = sub_1000020BC;
    v93[3] = &unk_100008388;
    v68 = v29;
    v95 = v68;
    v71 = v4;
    v67 = v4;
    v96 = v67;
    v66 = v81;
    v94 = v66;
    v34 = objc_retainBlock(v93);
    v35 = +[GEOMapService sharedService];
    v36 = [v35 defaultTraits];
    [v36 setAppIdentifier:@"com.apple.Maps"];
    [v36 setPhotosCount:0];
    [v36 setIsAPICall:0];
    v37 = [(__CFString *)v82 stringByRemovingPercentEncoding];
    v38 = [v37 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

    v87[0] = _NSConcreteStackBlock;
    v87[1] = 3221225472;
    v87[2] = sub_1000021EC;
    v87[3] = &unk_100008400;
    v69 = v36;
    v88 = v69;
    v39 = CountryCode;
    v89 = CountryCode;
    v40 = v35;
    v90 = v40;
    v41 = v38;
    v91 = v41;
    v42 = v34;
    v92 = v42;
    v43 = objc_retainBlock(v87);
    if (v73 || ![v41 length])
    {
      (v43[2])(v43, 0, 0);
      v8 = v33;
      v48 = v81;
      v32 = v82;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v49 = "Map Preview: NOT Fetching user loc";
        goto LABEL_41;
      }
    }

    else
    {
      v8 = v33;
      if ([CLLocationManager authorizationStatusForBundleIdentifier:@"com.apple.Maps"]< 3)
      {
        v74 = v42;
        v48 = v81;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Map Preview: not authorized to fetch user loc", buf, 2u);
        }

        v65 = objc_alloc_init(CLGeocoder);
        v83[0] = _NSConcreteStackBlock;
        v83[1] = 3221225472;
        v83[2] = sub_1000025DC;
        v83[3] = &unk_100008388;
        v85 = v68;
        v86 = v67;
        v84 = v66;
        v32 = v82;
        [v65 geocodeAddressString:v82 completionHandler:v83];

        v42 = v74;
        goto LABEL_46;
      }

      [(DDRemoteMapViewControllerProvider *)v72 removeLocationManager:v66];
      v44 = objc_retainBlock(v43);
      locationHandler = v72->_locationHandler;
      v72->_locationHandler = v44;

      v46 = [[CLLocationManager alloc] initWithEffectiveBundleIdentifier:@"com.apple.Maps" delegate:v72 onQueue:&_dispatch_main_q];
      locationManager = v72->_locationManager;
      v72->_locationManager = v46;

      [(CLLocationManager *)v72->_locationManager setDesiredAccuracy:kCLLocationAccuracyThreeKilometers];
      [(CLLocationManager *)v72->_locationManager startUpdatingLocation];
      v48 = v81;
      v32 = v82;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v49 = "Map Preview: Fetching user loc";
LABEL_41:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v49, buf, 2u);
      }
    }

LABEL_46:

    v27 = v70;
    v4 = v71;
LABEL_47:
    v28 = v75;
    v26 = v76;
    goto LABEL_48;
  }

  (v29[2])(v29, 0, 0);
  v48 = v81;
  v4[2](v4, v81);
  v39 = CountryCode;
LABEL_48:
}

- (void)removeLocationManager
{
  locationManager = self->_locationManager;
  if (locationManager)
  {
    [(CLLocationManager *)locationManager setDelegate:0];
    [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
    v4 = self->_locationManager;
    self->_locationManager = 0;
  }

  locationHandler = self->_locationHandler;
  if (locationHandler)
  {
    self->_locationHandler = 0;
  }
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v10 = a3;
  v6 = a4;
  locationManager = self->_locationManager;
  if (locationManager)
  {
    v8 = locationManager == v10;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if (self->_locationHandler)
    {
      v9 = [(CLLocationManager *)locationManager location];
      (*(self->_locationHandler + 2))();
    }

    [(DDRemoteMapViewControllerProvider *)self removeLocationManager];
  }
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  locationManager = self->_locationManager;
  if (locationManager)
  {
    v6 = locationManager == a3;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    (*(self->_locationHandler + 2))(self->_locationHandler, 0, a4);

    [(DDRemoteMapViewControllerProvider *)self removeLocationManager];
  }
}

@end