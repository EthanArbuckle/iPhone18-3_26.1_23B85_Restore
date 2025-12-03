@interface CALNCalendarNotificationViewController
- (BOOL)_isEventInvitationNotificationCategoryIdentifier:(id)identifier;
- (CGSize)preferredContentSize;
- (void)_configureForLocation:(id)location;
- (void)_configureForLocation:(id)location gridOnly:(BOOL)only;
- (void)_configureWithPreviewForEvent:(id)event;
- (void)_setContentView:(id)view;
- (void)_snapshotCompleted:(id)completed error:(id)error generation:(unint64_t)generation gridOnly:(BOOL)only;
- (void)didReceiveNotification:(id)notification;
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

- (void)didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  v5 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    request = [notificationCopy request];
    identifier = [request identifier];
    *buf = 138543618;
    v28 = identifier;
    v29 = 2112;
    v30 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Did receive notification. identifier = %{public}@, notification = %@", buf, 0x16u);
  }

  ++self->_generation;
  request2 = [notificationCopy request];
  content = [request2 content];
  userInfo = [content userInfo];
  v11 = [userInfo objectForKeyedSubscript:kCALNEventEntityIDUserInfoKey];
  if (v11)
  {
    v26 = content;
    if (!self->_eventStore)
    {
      v12 = objc_opt_new();
      eventStore = self->_eventStore;
      self->_eventStore = v12;
    }

    identifier2 = [NSURL URLWithString:v11];
    v15 = [(EKEventStore *)self->_eventStore _eventWithURI:identifier2 checkValid:1];
    request3 = [notificationCopy request];
    content2 = [request3 content];
    categoryIdentifier = [content2 categoryIdentifier];

    if ([categoryIdentifier hasPrefix:kCALNTriggeredEventNotificationCategoryIdentifierPrefix])
    {
      v25 = request2;
      structuredLocation = [v15 structuredLocation];
      if (!structuredLocation)
      {
        goto LABEL_14;
      }

      v20 = structuredLocation;
      structuredLocation2 = [v15 structuredLocation];
      geoLocation = [structuredLocation2 geoLocation];

      if (geoLocation)
      {
        structuredLocation3 = [v15 structuredLocation];
        [(CALNCalendarNotificationViewController *)self _configureForLocation:structuredLocation3];
      }

      else
      {
LABEL_14:
        [(CALNCalendarNotificationViewController *)self _configureWithPreviewForEvent:v15];
      }

      request2 = v25;
    }

    else if ([(CALNCalendarNotificationViewController *)self _isEventInvitationNotificationCategoryIdentifier:categoryIdentifier])
    {
      [(CALNCalendarNotificationViewController *)self _configureWithPreviewForEvent:v15];
    }

    content = v26;
  }

  else
  {
    request4 = [notificationCopy request];
    identifier2 = [request4 identifier];

    v15 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100001DD0(identifier2, notificationCopy, v15);
    }
  }
}

- (BOOL)_isEventInvitationNotificationCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:kCALNEventInvitationNotificationDefaultCategoryIdentifier])
  {
    v4 = 1;
  }

  else
  {
    v4 = [identifierCopy isEqualToString:kCALNEventInvitationNotificationCouldBeJunkCategoryIdentifier];
  }

  return v4;
}

- (void)_setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView)
  {
    [(UIView *)contentView removeFromSuperview];
  }

  v6 = self->_contentView;
  self->_contentView = viewCopy;
  v7 = viewCopy;

  [(UIView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(CALNCalendarNotificationViewController *)self view];
  [view addSubview:v7];

  leadingAnchor = [(UIView *)v7 leadingAnchor];
  view2 = [(CALNCalendarNotificationViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v26[0] = v22;
  topAnchor = [(UIView *)v7 topAnchor];
  view3 = [(CALNCalendarNotificationViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v26[1] = v18;
  widthAnchor = [(UIView *)v7 widthAnchor];
  view4 = [(CALNCalendarNotificationViewController *)self view];
  widthAnchor2 = [view4 widthAnchor];
  v12 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v26[2] = v12;
  heightAnchor = [(UIView *)v7 heightAnchor];
  view5 = [(CALNCalendarNotificationViewController *)self view];
  heightAnchor2 = [view5 heightAnchor];
  v16 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v26[3] = v16;
  v17 = [NSArray arrayWithObjects:v26 count:4];
  [NSLayoutConstraint activateConstraints:v17];
}

- (void)_configureWithPreviewForEvent:(id)event
{
  eventCopy = event;
  startDate = [eventCopy startDate];
  v5 = [EKDayPreviewController alloc];
  endDate = [eventCopy endDate];
  v7 = [v5 initWithDate:startDate event:eventCopy overriddenEventStartDate:startDate overriddenEventEndDate:endDate model:0];

  [v7 setHidesAllDayEvents:1];
  [v7 setHostingViewController:self];
  [v7 setRespectsSelectedCalendarsFilter:1];
  [v7 setStyle:1];
  view = [v7 view];
  [(CALNCalendarNotificationViewController *)self _setContentView:view];
}

- (void)_configureForLocation:(id)location
{
  locationCopy = location;
  [(CALNCalendarNotificationViewController *)self _configureForLocation:locationCopy gridOnly:1];
  [(CALNCalendarNotificationViewController *)self _configureForLocation:locationCopy gridOnly:0];
}

- (void)_configureForLocation:(id)location gridOnly:(BOOL)only
{
  onlyCopy = only;
  locationCopy = location;
  generation = self->_generation;
  isImprecise = [locationCopy isImprecise];
  if (isImprecise)
  {
    v9 = 50.0;
  }

  else
  {
    v9 = 804.67;
  }

  [locationCopy radius];
  if (v10 > v9)
  {
    [locationCopy radius];
    v9 = v11;
  }

  if (isImprecise)
  {
    v12 = 3.0;
  }

  else
  {
    v12 = 1.0;
  }

  geoLocation = [locationCopy geoLocation];
  [geoLocation coordinate];
  v15 = v14;
  v17 = v16;

  geoLocation2 = [locationCopy geoLocation];
  [geoLocation2 coordinate];
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

  view = [(CALNCalendarNotificationViewController *)self view];
  [view bounds];
  [v23 setSize:{CGRectGetWidth(v42), 200.0}];

  if (onlyCopy)
  {
    [v23 setMapType:105];
  }

  if (isImprecise)
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
  v36 = onlyCopy;
  [v32 startWithQueue:&_dispatch_main_q completionHandler:v34];

  objc_destroyWeak(v35);
  objc_destroyWeak(&location);
}

- (void)_snapshotCompleted:(id)completed error:(id)error generation:(unint64_t)generation gridOnly:(BOOL)only
{
  onlyCopy = only;
  completedCopy = completed;
  errorCopy = error;
  v12 = errorCopy;
  if (self->_generation == generation)
  {
    if (onlyCopy && self->_mapLoaded)
    {
      image = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(image, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20[0]) = 0;
        v14 = "map already loaded, dropping grid";
        v15 = image;
        v16 = 2;
LABEL_8:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, v20, v16);
      }
    }

    else if (errorCopy)
    {
      image = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(image, OS_LOG_TYPE_ERROR))
      {
        sub_100001E58();
      }
    }

    else if (completedCopy)
    {
      image = [completedCopy image];
      if (image)
      {
        if (!onlyCopy)
        {
          self->_mapLoaded = 1;
        }

        v18 = [[UIImageView alloc] initWithImage:image];
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
      image = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(image, OS_LOG_TYPE_ERROR))
      {
        sub_100001F50();
      }
    }
  }

  else
  {
    image = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(image, OS_LOG_TYPE_DEFAULT))
    {
      generation = self->_generation;
      v20[0] = 67109632;
      v20[1] = onlyCopy;
      v21 = 2048;
      generationCopy = generation;
      v23 = 2048;
      generationCopy2 = generation;
      v14 = "generation mismatch (gridOnly: %d): %lu != %lu";
      v15 = image;
      v16 = 28;
      goto LABEL_8;
    }
  }
}

@end