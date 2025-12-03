@interface DRVirtualHIDService
- (BOOL)_isNormalizedPointOutOfBounds:(CAPoint3D)bounds;
- (BOOL)setProperty:(id)property forKey:(id)key forService:(id)service;
- (CAPoint3D)_normalizedLocationFromReferenceLocation:(CAPoint3D)location;
- (CAPoint3D)currentLocation;
- (DRVirtualHIDService)initWithScreen:(id)screen;
- (void)_configureHIDServiceIfNeeded;
- (void)_initializeHIDEventBaseWithLocation:(CAPoint3D)location;
- (void)_moveToLocation:(CAPoint3D)location;
- (void)_sendHIDEvent:(__IOHIDEvent *)event;
- (void)_updateHIDEventBaseWithLocation:(CAPoint3D)location touching:(BOOL)touching;
- (void)beginAtPoint:(CAPoint3D)point;
- (void)dealloc;
- (void)lift;
- (void)liftAtLocation:(CAPoint3D)location;
- (void)notification:(int64_t)notification withProperty:(id)property forService:(id)service;
@end

@implementation DRVirtualHIDService

- (DRVirtualHIDService)initWithScreen:(id)screen
{
  screenCopy = screen;
  v9.receiver = self;
  v9.super_class = DRVirtualHIDService;
  v6 = [(DRVirtualHIDService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_screen, screen);
  }

  return v7;
}

- (void)beginAtPoint:(CAPoint3D)point
{
  z = point.z;
  y = point.y;
  x = point.x;
  [(DRVirtualHIDService *)self _configureHIDServiceIfNeeded];
  self->_sentUp = 0;
  [(DRVirtualHIDService *)self _initializeHIDEventBaseWithLocation:x, y, z];
  HIDEventBase = self->_HIDEventBase;

  [(DRVirtualHIDService *)self _sendHIDEvent:HIDEventBase];
}

- (void)_moveToLocation:(CAPoint3D)location
{
  if (self->_HIDEventBase)
  {
    [(DRVirtualHIDService *)self _updateHIDEventBaseWithLocation:1 touching:location.x, location.y, location.z];
    HIDEventBase = self->_HIDEventBase;

    [(DRVirtualHIDService *)self _sendHIDEvent:HIDEventBase];
  }

  else
  {
    v5 = DRLogTarget();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Ignoring move to location. _HIDEventBase is nil.", v6, 2u);
    }
  }
}

- (void)liftAtLocation:(CAPoint3D)location
{
  if (self->_HIDEventBase)
  {
    z = location.z;
    y = location.y;
    x = location.x;
    [(DRVirtualHIDService *)self moveToLocation:?];
    [(DRVirtualHIDService *)self _updateHIDEventBaseWithLocation:0 touching:x, y, z];
    [(DRVirtualHIDService *)self _sendHIDEvent:self->_HIDEventBase];
    self->_sentUp = 1;
    CFRelease(self->_HIDEventBase);
    self->_HIDEventBase = 0;
    exitedEvent = self->_exitedEvent;
    if (exitedEvent)
    {
      CFRelease(exitedEvent);
      self->_exitedEvent = 0;
    }
  }

  else
  {
    v8 = DRLogTarget();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Ignoring lift at location. _HIDEventBase is nil.", v9, 2u);
    }
  }
}

- (void)lift
{
  [(DRVirtualHIDService *)self currentLocation];

  [(DRVirtualHIDService *)self liftAtLocation:?];
}

- (void)dealloc
{
  if (!self->_sentUp)
  {
    self->_sentUp = 1;
    [(DRVirtualHIDService *)self lift];
  }

  HIDEventBase = self->_HIDEventBase;
  if (HIDEventBase)
  {
    CFRelease(HIDEventBase);
    self->_HIDEventBase = 0;
  }

  exitedEvent = self->_exitedEvent;
  if (exitedEvent)
  {
    CFRelease(exitedEvent);
    self->_exitedEvent = 0;
  }

  v5 = self->_eventService;
  if (v5)
  {
    queue = [(DRVirtualHIDService *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100015634;
    block[3] = &unk_100054B50;
    v9 = v5;
    dispatch_async(queue, block);
  }

  v7.receiver = self;
  v7.super_class = DRVirtualHIDService;
  [(DRVirtualHIDService *)&v7 dealloc];
}

- (BOOL)setProperty:(id)property forKey:(id)key forService:(id)service
{
  propertyCopy = property;
  v8 = [key isEqual:@"DeviceOpenedByEventSystem"];
  if (v8)
  {
    self->_isOpen = [propertyCopy BOOLValue];
    dispatch_group_leave(self->_waitForOpenGroup);
  }

  return v8;
}

- (void)notification:(int64_t)notification withProperty:(id)property forService:(id)service
{
  propertyCopy = property;
  v8 = @"terminated";
  if (notification == 10)
  {
    v8 = @"enumerated";
  }

  v9 = v8;
  v10 = DRLogTarget();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = 138413058;
    v14 = v12;
    v15 = 2048;
    selfCopy = self;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = propertyCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "<%@:%p> notification: %@ withProperty: %@", &v13, 0x2Au);
  }
}

- (void)_configureHIDServiceIfNeeded
{
  if (!self->_eventService)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.DragUI.druid.virtual-digitizer", v3);
    queue = self->_queue;
    self->_queue = v4;

    v6 = dispatch_group_create();
    waitForOpenGroup = self->_waitForOpenGroup;
    self->_waitForOpenGroup = v6;

    dispatch_group_enter(self->_waitForOpenGroup);
    v32[0] = @"druid";
    v31[0] = @"Transport";
    v31[1] = @"PrimaryUsagePage";
    v8 = [NSNumber numberWithUnsignedShort:13];
    v32[1] = v8;
    v31[2] = @"PrimaryUsage";
    v9 = [NSNumber numberWithUnsignedShort:4];
    v32[2] = v9;
    v32[3] = &__kCFBooleanTrue;
    v31[3] = @"Authenticated";
    v31[4] = @"Built-In";
    v32[4] = &__kCFBooleanTrue;
    v32[5] = &__kCFBooleanTrue;
    v31[5] = @"DisplayIntegrated";
    v31[6] = @"VendorID";
    v32[6] = &off_100057A88;
    v32[7] = &off_100057A88;
    v31[7] = @"ProductID";
    v31[8] = @"DeviceUsagePairs";
    v28[0] = @"DeviceUsagePage";
    v10 = [NSNumber numberWithUnsignedShort:13];
    v28[1] = @"DeviceUsage";
    v29[0] = v10;
    v11 = [NSNumber numberWithUnsignedShort:4];
    v29[1] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
    v30 = v12;
    v13 = [NSArray arrayWithObjects:&v30 count:1];
    v32[8] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:9];

    screen = [(DRVirtualHIDService *)self screen];
    displayConfiguration = [screen displayConfiguration];
    hardwareIdentifier = [displayConfiguration hardwareIdentifier];

    if (hardwareIdentifier)
    {
      v18 = [(NSDictionary *)v14 mutableCopy];
      [(NSDictionary *)v18 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Built-In"];
      [(NSDictionary *)v18 setObject:hardwareIdentifier forKeyedSubscript:@"displayUUID"];

      v14 = v18;
    }

    properties = self->_properties;
    self->_properties = v14;
    v20 = v14;

    v21 = objc_opt_new();
    eventService = self->_eventService;
    self->_eventService = v21;

    queue = [(DRVirtualHIDService *)self queue];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100015B40;
    v25[3] = &unk_100054C50;
    v26 = v21;
    selfCopy = self;
    v24 = v21;
    dispatch_sync(queue, v25);
  }
}

- (void)_sendHIDEvent:(__IOHIDEvent *)event
{
  waitForOpenGroup = self->_waitForOpenGroup;
  v5 = dispatch_time(0, 2000000000);
  dispatch_group_wait(waitForOpenGroup, v5);
  Copy = IOHIDEventCreateCopy();
  mach_absolute_time();
  IOHIDEventSetTimeStamp();
  queue = [(DRVirtualHIDService *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100015D00;
  v8[3] = &unk_100055640;
  v8[4] = self;
  v8[5] = Copy;
  dispatch_sync(queue, v8);

  CFRelease(Copy);
}

- (CAPoint3D)_normalizedLocationFromReferenceLocation:(CAPoint3D)location
{
  y = location.y;
  x = location.x;
  v5 = [(DRVirtualHIDService *)self screen:location.x];
  fixedCoordinateSpace = [v5 fixedCoordinateSpace];
  [fixedCoordinateSpace bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v22.origin.x = v8;
  v22.origin.y = v10;
  v22.size.width = v12;
  v22.size.height = v14;
  v15 = x - CGRectGetMinX(v22);
  v23.origin.x = v8;
  v23.origin.y = v10;
  v23.size.width = v12;
  v23.size.height = v14;
  v16 = v15 / CGRectGetWidth(v23);
  v24.origin.x = v8;
  v24.origin.y = v10;
  v24.size.width = v12;
  v24.size.height = v14;
  v17 = y - CGRectGetMinY(v24);
  v25.origin.x = v8;
  v25.origin.y = v10;
  v25.size.width = v12;
  v25.size.height = v14;
  v18 = v17 / CGRectGetHeight(v25);
  v19 = 0.0;
  v20 = v16;
  result.z = v19;
  result.y = v18;
  result.x = v20;
  return result;
}

- (void)_initializeHIDEventBaseWithLocation:(CAPoint3D)location
{
  self->_currentLocation = location;
  [(DRVirtualHIDService *)self _normalizedLocationFromReferenceLocation:?];
  mach_absolute_time();
  DigitizerEvent = IOHIDEventCreateDigitizerEvent();
  properties = [(DRVirtualHIDService *)self properties];
  v6 = [properties valueForKey:@"DisplayIntegrated"];
  [v6 BOOLValue];

  IOHIDEventSetIntegerValue();
  properties2 = [(DRVirtualHIDService *)self properties];
  v8 = [properties2 valueForKey:@"Built-In"];
  [v8 BOOLValue];

  IOHIDEventSetIntegerValue();
  v9 = dword_100063620++;
  v10 = (v9 & 7) + 21;
  self->_currentPathIndex = v10;
  DigitizerFingerEvent = IOHIDEventCreateDigitizerFingerEvent();
  IOHIDEventAppendEvent();
  CFRelease(DigitizerFingerEvent);
  v12 = DRLogTarget();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Touch synthesizer started with path %lu", buf, 0xCu);
  }

  VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
  if (VendorDefinedEvent)
  {
    v14 = VendorDefinedEvent;
    IOHIDEventAppendEvent();
    CFRelease(v14);
  }

  self->_HIDEventBase = DigitizerEvent;
}

- (void)_updateHIDEventBaseWithLocation:(CAPoint3D)location touching:(BOOL)touching
{
  z = location.z;
  y = location.y;
  x = location.x;
  [(DRVirtualHIDService *)self _normalizedLocationFromReferenceLocation:?];
  v9 = v8;
  v11 = v10;
  HIDEventBase = self->_HIDEventBase;
  Children = IOHIDEventGetChildren();
  CFArrayGetValueAtIndex(Children, 0);
  IOHIDEventSetIntegerValue();
  IOHIDEventSetIntegerValue();
  IOHIDEventSetIntegerValue();
  IOHIDEventSetFloatValue();
  IOHIDEventSetFloatValue();
  IOHIDEventSetFloatValue();
  IOHIDEventSetIntegerValue();
  IOHIDEventSetIntegerValue();
  IOHIDEventSetIntegerValue();
  IOHIDEventSetFloatValue();
  IOHIDEventSetFloatValue();
  IOHIDEventSetFloatValue();
  v14 = [(DRVirtualHIDService *)self _isNormalizedPointOutOfBounds:v9, v11, 0.0];
  exitedEvent = self->_exitedEvent;
  if (v14)
  {
    if (!exitedEvent)
    {
      IOHIDEventGetTimeStamp();
      VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
      if (VendorDefinedEvent)
      {
        v17 = VendorDefinedEvent;
        IOHIDEventAppendEvent();
LABEL_7:
        self->_exitedEvent = v17;
      }
    }
  }

  else if (exitedEvent)
  {
    IOHIDEventRemoveEvent();
    CFRelease(self->_exitedEvent);
    v17 = 0;
    goto LABEL_7;
  }

  mach_absolute_time();
  IOHIDEventSetTimeStamp();
  self->_currentLocation.x = x;
  self->_currentLocation.y = y;
  self->_currentLocation.z = z;
}

- (BOOL)_isNormalizedPointOutOfBounds:(CAPoint3D)bounds
{
  v3 = bounds.x < 0.0;
  if (bounds.x > 1.0)
  {
    v3 = 1;
  }

  v4 = bounds.y < 0.0;
  if (bounds.y > 1.0)
  {
    v4 = 1;
  }

  return v3 || v4;
}

- (CAPoint3D)currentLocation
{
  x = self->_currentLocation.x;
  y = self->_currentLocation.y;
  z = self->_currentLocation.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

@end