@interface DRVirtualHIDService
- (BOOL)_isNormalizedPointOutOfBounds:(CAPoint3D)a3;
- (BOOL)setProperty:(id)a3 forKey:(id)a4 forService:(id)a5;
- (CAPoint3D)_normalizedLocationFromReferenceLocation:(CAPoint3D)a3;
- (CAPoint3D)currentLocation;
- (DRVirtualHIDService)initWithScreen:(id)a3;
- (void)_configureHIDServiceIfNeeded;
- (void)_initializeHIDEventBaseWithLocation:(CAPoint3D)a3;
- (void)_moveToLocation:(CAPoint3D)a3;
- (void)_sendHIDEvent:(__IOHIDEvent *)a3;
- (void)_updateHIDEventBaseWithLocation:(CAPoint3D)a3 touching:(BOOL)a4;
- (void)beginAtPoint:(CAPoint3D)a3;
- (void)dealloc;
- (void)lift;
- (void)liftAtLocation:(CAPoint3D)a3;
- (void)notification:(int64_t)a3 withProperty:(id)a4 forService:(id)a5;
@end

@implementation DRVirtualHIDService

- (DRVirtualHIDService)initWithScreen:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DRVirtualHIDService;
  v6 = [(DRVirtualHIDService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_screen, a3);
  }

  return v7;
}

- (void)beginAtPoint:(CAPoint3D)a3
{
  z = a3.z;
  y = a3.y;
  x = a3.x;
  [(DRVirtualHIDService *)self _configureHIDServiceIfNeeded];
  self->_sentUp = 0;
  [(DRVirtualHIDService *)self _initializeHIDEventBaseWithLocation:x, y, z];
  HIDEventBase = self->_HIDEventBase;

  [(DRVirtualHIDService *)self _sendHIDEvent:HIDEventBase];
}

- (void)_moveToLocation:(CAPoint3D)a3
{
  if (self->_HIDEventBase)
  {
    [(DRVirtualHIDService *)self _updateHIDEventBaseWithLocation:1 touching:a3.x, a3.y, a3.z];
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

- (void)liftAtLocation:(CAPoint3D)a3
{
  if (self->_HIDEventBase)
  {
    z = a3.z;
    y = a3.y;
    x = a3.x;
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
    v6 = [(DRVirtualHIDService *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100015634;
    block[3] = &unk_100054B50;
    v9 = v5;
    dispatch_async(v6, block);
  }

  v7.receiver = self;
  v7.super_class = DRVirtualHIDService;
  [(DRVirtualHIDService *)&v7 dealloc];
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4 forService:(id)a5
{
  v7 = a3;
  v8 = [a4 isEqual:@"DeviceOpenedByEventSystem"];
  if (v8)
  {
    self->_isOpen = [v7 BOOLValue];
    dispatch_group_leave(self->_waitForOpenGroup);
  }

  return v8;
}

- (void)notification:(int64_t)a3 withProperty:(id)a4 forService:(id)a5
{
  v7 = a4;
  v8 = @"terminated";
  if (a3 == 10)
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
    v16 = self;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v7;
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

    v15 = [(DRVirtualHIDService *)self screen];
    v16 = [v15 displayConfiguration];
    v17 = [v16 hardwareIdentifier];

    if (v17)
    {
      v18 = [(NSDictionary *)v14 mutableCopy];
      [(NSDictionary *)v18 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Built-In"];
      [(NSDictionary *)v18 setObject:v17 forKeyedSubscript:@"displayUUID"];

      v14 = v18;
    }

    properties = self->_properties;
    self->_properties = v14;
    v20 = v14;

    v21 = objc_opt_new();
    eventService = self->_eventService;
    self->_eventService = v21;

    v23 = [(DRVirtualHIDService *)self queue];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100015B40;
    v25[3] = &unk_100054C50;
    v26 = v21;
    v27 = self;
    v24 = v21;
    dispatch_sync(v23, v25);
  }
}

- (void)_sendHIDEvent:(__IOHIDEvent *)a3
{
  waitForOpenGroup = self->_waitForOpenGroup;
  v5 = dispatch_time(0, 2000000000);
  dispatch_group_wait(waitForOpenGroup, v5);
  Copy = IOHIDEventCreateCopy();
  mach_absolute_time();
  IOHIDEventSetTimeStamp();
  v7 = [(DRVirtualHIDService *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100015D00;
  v8[3] = &unk_100055640;
  v8[4] = self;
  v8[5] = Copy;
  dispatch_sync(v7, v8);

  CFRelease(Copy);
}

- (CAPoint3D)_normalizedLocationFromReferenceLocation:(CAPoint3D)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(DRVirtualHIDService *)self screen:a3.x];
  v6 = [v5 fixedCoordinateSpace];
  [v6 bounds];
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

- (void)_initializeHIDEventBaseWithLocation:(CAPoint3D)a3
{
  self->_currentLocation = a3;
  [(DRVirtualHIDService *)self _normalizedLocationFromReferenceLocation:?];
  mach_absolute_time();
  DigitizerEvent = IOHIDEventCreateDigitizerEvent();
  v5 = [(DRVirtualHIDService *)self properties];
  v6 = [v5 valueForKey:@"DisplayIntegrated"];
  [v6 BOOLValue];

  IOHIDEventSetIntegerValue();
  v7 = [(DRVirtualHIDService *)self properties];
  v8 = [v7 valueForKey:@"Built-In"];
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

- (void)_updateHIDEventBaseWithLocation:(CAPoint3D)a3 touching:(BOOL)a4
{
  z = a3.z;
  y = a3.y;
  x = a3.x;
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

- (BOOL)_isNormalizedPointOutOfBounds:(CAPoint3D)a3
{
  v3 = a3.x < 0.0;
  if (a3.x > 1.0)
  {
    v3 = 1;
  }

  v4 = a3.y < 0.0;
  if (a3.y > 1.0)
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