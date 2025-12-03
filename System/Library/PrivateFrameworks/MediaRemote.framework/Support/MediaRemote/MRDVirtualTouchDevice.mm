@interface MRDVirtualTouchDevice
- (BOOL)handleHIDReport:(id)report;
- (BOOL)handleTouchEvent:(_MRHIDTouchEvent *)event;
- (MRDVirtualTouchDevice)initWithDeviceDescriptor:(id)descriptor;
- (id)_newIOKitDeviceProperties;
- (id)deviceProperties;
- (void)dealloc;
@end

@implementation MRDVirtualTouchDevice

- (MRDVirtualTouchDevice)initWithDeviceDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v15.receiver = self;
  v15.super_class = MRDVirtualTouchDevice;
  v5 = [(MRDVirtualTouchDevice *)&v15 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [descriptorCopy copy];
  deviceDescriptor = v5->_deviceDescriptor;
  v5->_deviceDescriptor = v6;

  v5->_uniqueIdentifier = (atomic_fetch_add_explicit(dword_100529648, 1u, memory_order_relaxed) + 1);
  v8 = objc_alloc_init(NSMutableDictionary);
  activeTouchEventsForFingerIndices = v5->_activeTouchEventsForFingerIndices;
  v5->_activeTouchEventsForFingerIndices = v8;

  deviceProperties = [(MRDVirtualTouchDevice *)v5 deviceProperties];
  v11 = IOHIDUserDeviceCreate();
  v5->_ioDevice = v11;
  if (v11)
  {

LABEL_4:
    v12 = v5;
    goto LABEL_8;
  }

  v13 = _MRLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    sub_1003AC598(v13);
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (void)dealloc
{
  ioDevice = self->_ioDevice;
  if (ioDevice)
  {
    CFRelease(ioDevice);
  }

  v4.receiver = self;
  v4.super_class = MRDVirtualTouchDevice;
  [(MRDVirtualTouchDevice *)&v4 dealloc];
}

- (id)deviceProperties
{
  deviceProperties = self->_deviceProperties;
  if (!deviceProperties)
  {
    _newIOKitDeviceProperties = [(MRDVirtualTouchDevice *)self _newIOKitDeviceProperties];
    v5 = self->_deviceProperties;
    self->_deviceProperties = _newIOKitDeviceProperties;

    deviceProperties = self->_deviceProperties;
  }

  return deviceProperties;
}

- (BOOL)handleHIDReport:(id)report
{
  ioDevice = self->_ioDevice;
  reportCopy = report;
  reportCopy2 = report;
  [reportCopy2 bytes];
  [reportCopy2 length];

  v8 = IOHIDUserDeviceHandleReport();
  if (v8)
  {
    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = self->_uniqueIdentifier;
      v12 = 134218240;
      v13 = uniqueIdentifier;
      v14 = 1024;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "WARNING: Failed to handle HID report for device ID %llu. (kernel error = %d)", &v12, 0x12u);
    }
  }

  return v8 == 0;
}

- (BOOL)handleTouchEvent:(_MRHIDTouchEvent *)event
{
  v5 = *&event->var2;
  v17 = *&event->var0.var0.var0;
  v18 = v5;
  v6 = [NSValue valueWithMRHIDTouchEvent:&v17];
  activeTouchEventsForFingerIndices = self->_activeTouchEventsForFingerIndices;
  v8 = [NSNumber numberWithUnsignedInt:event->var3];
  [(NSMutableDictionary *)activeTouchEventsForFingerIndices setObject:v6 forKeyedSubscript:v8];

  *&v17 = 0;
  *(&v17 + 1) = &v17;
  *&v18 = 0x3010000000;
  *(&v18 + 1) = &unk_10044512B;
  memset(v19, 0, sizeof(v19));
  v19[12] = event->var1 == 5;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v9 = self->_activeTouchEventsForFingerIndices;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100183D34;
  v14[3] = &unk_1004C0328;
  v14[4] = &v17;
  v14[5] = v15;
  [(NSMutableDictionary *)v9 enumerateKeysAndObjectsUsingBlock:v14];
  if (event->var1 - 1 >= 3)
  {
    v10 = self->_activeTouchEventsForFingerIndices;
    v11 = [NSNumber numberWithUnsignedInt:event->var3];
    [(NSMutableDictionary *)v10 removeObjectForKey:v11];
  }

  v12 = IOHIDUserDeviceHandleReportWithTimeStamp(self->_ioDevice, event->var2, (*(&v17 + 1) + 32), 13) == 0;
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v17, 8);
  return v12;
}

- (id)_newIOKitDeviceProperties
{
  [(MRVirtualTouchDeviceDescriptor *)self->_deviceDescriptor screenSize];
  LODWORD(v18) = -1073638137;
  v15 = xmmword_10044E9B8;
  v16 = unk_10044E9C8;
  v17 = xmmword_10044E9D8;
  v11 = xmmword_10044E978;
  v12 = unk_10044E988;
  v13 = xmmword_10044E998;
  v14 = unk_10044E9A8;
  v9 = xmmword_10044E958;
  v10 = unk_10044E968;
  HIBYTE(v11) = v3;
  LOBYTE(v12) = v3 >> 8;
  HIWORD(v15) = v3;
  WORD6(v12) = v4;
  *(&v16 + 11) = WORD6(v12);
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [[NSData alloc] initWithBytes:&v9 length:148];
  [v5 setObject:v6 forKey:{@"ReportDescriptor", v9, v10, v11, v12, v13, v14, v15, v16, v17, v18}];
  v7 = [NSNumber numberWithBool:[(MRVirtualTouchDeviceDescriptor *)self->_deviceDescriptor isIntegratedDisplay]];
  [v5 setObject:v7 forKey:@"DisplayIntegrated"];

  [v5 setObject:&off_1004E0B48 forKey:@"ProductID"];
  [v5 setObject:&off_1004E0B60 forKey:@"VendorID"];

  return v5;
}

@end