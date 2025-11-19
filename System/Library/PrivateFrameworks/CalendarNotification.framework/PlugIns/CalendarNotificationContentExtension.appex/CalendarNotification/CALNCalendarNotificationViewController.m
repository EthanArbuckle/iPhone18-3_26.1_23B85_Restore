@interface CALNCalendarNotificationViewController
- (BOOL)_isEventInvitationNotificationCategoryIdentifier:(id)a3;
- (CGSize)preferredContentSize;
- (void)_configureForLocation:(id)a3;
- (void)_configureForLocation:(id)a3 gridOnly:(BOOL)a4;
- (void)_configureWithPreviewForEvent:(id)a3;
- (void)_setContentView:(id)a3;
- (void)_snapshotCompleted:(id)a3 error:(id)a4 generation:(unint64_t)a5 gridOnly:(BOOL)a6;
- (void)didReceiveNotification:(id)a3;
@end

@implementation CALNCalendarNotificationViewController

- (CGSize)preferredContentSize
{
  v2 = 200.0;
  v3 = 0.0;
  result.height = v2;
  result.width = v3;
  return result;
}

- (void)didReceiveNotification:(id)a3
{
  v4 = a3;
  v5 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 request];
    v7 = [v6 identifier];
    *buf = 138543618;
    v28 = v7;
    v29 = 2112;
    v30 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Did receive notification. identifier = %{public}@, notification = %@", buf, 0x16u);
  }

  ++self->_generation;
  v8 = [v4 request];
  v9 = [v8 content];
  v10 = [v9 userInfo];
  v11 = [v10 objectForKeyedSubscript:kCALNEventEntityIDUserInfoKey];
  if (v11)
  {
    v26 = v9;
    if (!self->_eventStore)
    {
      v12 = objc_opt_new();
      eventStore = self->_eventStore;
      self->_eventStore = v12;
    }

    v14 = [NSURL URLWithString:v11];
    v15 = [(EKEventStore *)self->_eventStore _eventWithURI:v14 checkValid:1];
    v16 = [v4 request];
    v17 = [v16 content];
    v18 = [v17 categoryIdentifier];

    if ([v18 hasPrefix:kCALNTriggeredEventNotificationCategoryIdentifierPrefix])
    {
      v25 = v8;
      v19 = [v15 structuredLocation];
      if (!v19)
      {
        goto LABEL_14;
      }

      v20 = v19;
      v21 = [v15 structuredLocation];
      v22 = [v21 geoLocation];

      if (v22)
      {
        v23 = [v15 structuredLocation];
        [(CALNCalendarNotificationViewController *)self _configureForLocation:v23];
      }

      else
      {
LABEL_14:
        [(CALNCalendarNotificationViewController *)self _configureWithPreviewForEvent:v15];
      }

      v8 = v25;
    }

    else if ([(CALNCalendarNotificationViewController *)self _isEventInvitationNotificationCategoryIdentifier:v18])
    {
      [(CALNCalendarNotificationViewController *)self _configureWithPreviewForEvent:v15];
    }

    v9 = v26;
  }

  else
  {
    v24 = [v4 request];
    v14 = [v24 identifier];

    v15 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100001DD0(v14, v4, v15);
    }
  }
}

- (BOOL)_isEventInvitationNotificationCategoryIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:kCALNEventInvitationNotificationDefaultCategoryIdentifier])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:kCALNEventInvitationNotificationCouldBeJunkCategoryIdentifier];
  }

  return v4;
}

- (void)_setContentView:(id)a3
{
  v4 = a3;
  contentView = self->_contentView;
  if (contentView)
  {
    [(UIView *)contentView removeFromSuperview];
  }

  v6 = self->_contentView;
  self->_contentView = v4;
  v7 = v4;

  [(UIView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [(CALNCalendarNotificationViewController *)self view];
  [v8 addSubview:v7];

  v24 = [(UIView *)v7 leadingAnchor];
  v25 = [(CALNCalendarNotificationViewController *)self view];
  v23 = [v25 leadingAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v26[0] = v22;
  v20 = [(UIView *)v7 topAnchor];
  v21 = [(CALNCalendarNotificationViewController *)self view];
  v19 = [v21 topAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v26[1] = v18;
  v9 = [(UIView *)v7 widthAnchor];
  v10 = [(CALNCalendarNotificationViewController *)self view];
  v11 = [v10 widthAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v26[2] = v12;
  v13 = [(UIView *)v7 heightAnchor];
  v14 = [(CALNCalendarNotificationViewController *)self view];
  v15 = [v14 heightAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v26[3] = v16;
  v17 = [NSArray arrayWithObjects:v26 count:4];
  [NSLayoutConstraint activateConstraints:v17];
}

- (void)_configureWithPreviewForEvent:(id)a3
{
  v4 = a3;
  v9 = [v4 startDate];
  v5 = [EKDayPreviewController alloc];
  v6 = [v4 endDate];
  v7 = [v5 initWithDate:v9 event:v4 overriddenEventStartDate:v9 overriddenEventEndDate:v6 model:0];

  [v7 setHidesAllDayEvents:1];
  [v7 setHostingViewController:self];
  [v7 setRespectsSelectedCalendarsFilter:1];
  [v7 setStyle:1];
  v8 = [v7 view];
  [(CALNCalendarNotificationViewController *)self _setContentView:v8];
}

- (void)_configureForLocation:(id)a3
{
  v4 = a3;
  [(CALNCalendarNotificationViewController *)self _configureForLocation:v4 gridOnly:1];
  [(CALNCalendarNotificationViewController *)self _configureForLocation:v4 gridOnly:0];
}

- (void)_configureForLocation:(id)a3 gridOnly:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  generation = self->_generation;
  v8 = [v6 isImprecise];
  if (v8)
  {
    v9 = 50.0;
  }

  else
  {
    v9 = 804.67;
  }

  [v6 radius];
  if (v10 > v9)
  {
    [v6 radius];
    v9 = v11;
  }

  if (v8)
  {
    v12 = 3.0;
  }

  else
  {
    v12 = 1.0;
  }

  v13 = [v6 geoLocation];
  [v13 coordinate];
  v15 = v14;
  v17 = v16;

  v18 = [v6 geoLocation];
  [v18 coordinate];
  v41 = MKCoordinateRegionMakeWithDistance(v40, v12 * v9, v12 * v9);
  latitude = v41.center.latitude;
  longitude = v41.center.longitude;
  latitudeDelta = v41.span.latitudeDelta;
  longitudeDelta = v41.span.longitudeDelta;

  v23 = objc_opt_new();
  [v23 _setUseSnapshotService:1];
  [v23 setRegion:{latitude, longitude, latitudeDelta, longitudeDelta}];
  v24 = [[GEOApplicationAuditToken alloc] initWithProxiedApplicationBundleId:@"com.apple.mobilecal"];
  [v23 _setAuditToken:v24];

  v25 = [(CALNCalendarNotificationViewController *)self view];
  [v25 bounds];
  [v23 setSize:{CGRectGetWidth(v42), 200.0}];

  if (v4)
  {
    [v23 setMapType:105];
  }

  if (v8)
  {
    v26 = [MKCircle circleWithCenterCoordinate:v15 radius:v17, v9];
    v27 = [[MKCircleRenderer alloc] initWithCircle:v26];
    v28 = +[UIColor systemBlueColor];
    v29 = [v28 colorWithAlphaComponent:0.28];
    [v27 setFillColor:v29];

    v30 = +[UIColor systemBlueColor];
    [v27 setStrokeColor:v30];

    [v27 setLineWidth:1.0];
    v39 = v27;
    v31 = [NSArray arrayWithObjects:&v39 count:1];
    [v23 _setOverlayRenderers:v31 forOverlayLevel:1];
  }

  else
  {
    v26 = [[MKMapSnapshotFeatureAnnotation alloc] initWithCoordinate:0 title:2 representation:{v15, v17}];
    v38 = v26;
    v27 = [NSArray arrayWithObjects:&v38 count:1];
    [v23 _setCustomFeatureAnnotations:v27];
  }

  v32 = [[MKMapSnapshotter alloc] initWithOptions:v23];
  objc_initWeak(&location, self);
  v33 = &_dispatch_main_q;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100001A2C;
  v34[3] = &unk_1000041C8;
  objc_copyWeak(v35, &location);
  v35[1] = generation;
  v36 = v4;
  [v32 startWithQueue:&_dispatch_main_q completionHandler:v34];

  objc_destroyWeak(v35);
  objc_destroyWeak(&location);
}

- (void)_snapshotCompleted:(id)a3 error:(id)a4 generation:(unint64_t)a5 gridOnly:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (self->_generation == a5)
  {
    if (v6 && self->_mapLoaded)
    {
      v13 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20[0]) = 0;
        v14 = "map already loaded, dropping grid";
        v15 = v13;
        v16 = 2;
LABEL_8:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, v20, v16);
      }
    }

    else if (v11)
    {
      v13 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100001E58();
      }
    }

    else if (v10)
    {
      v13 = [v10 image];
      if (v13)
      {
        if (!v6)
        {
          self->_mapLoaded = 1;
        }

        v18 = [[UIImageView alloc] initWithImage:v13];
        [v18 setContentMode:9];
        [(CALNCalendarNotificationViewController *)self _setContentView:v18];
      }

      else
      {
        v19 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_100001EDC();
        }
      }
    }

    else
    {
      v13 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100001F50();
      }
    }
  }

  else
  {
    v13 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      generation = self->_generation;
      v20[0] = 67109632;
      v20[1] = v6;
      v21 = 2048;
      v22 = a5;
      v23 = 2048;
      v24 = generation;
      v14 = "generation mismatch (gridOnly: %d): %lu != %lu";
      v15 = v13;
      v16 = 28;
      goto LABEL_8;
    }
  }
}

@end