@interface AMRLocalUSBDevice
- (AMRLocalUSBDevice)initWithService:(unsigned int)a3;
- (void)dealloc;
- (void)getDeviceReleaseNumberWithReply:(id)a3;
- (void)getLocationIDWithReply:(id)a3;
- (void)getManufacturerStringIndexForIndexWithReply:(id)a3;
- (void)getProductIDWithReply:(id)a3;
- (void)handleUSBDeviceGeneralInterestNotification:(unsigned int)a3;
- (void)interfaceWithClass:(unsigned __int16)a3 subclass:(unsigned __int16)a4 withReply:(id)a5;
- (void)openDeviceWithReply:(id)a3;
- (void)printDeviceWithExclusiveAccess;
- (void)reEnumerateWithReply:(id)a3;
- (void)sendDeviceRequestTO:(unsigned __int16)a3 direction:(unsigned __int8)a4 requestType:(unsigned __int8)a5 recipient:(unsigned __int8)a6 request:(unsigned __int8)a7 value:(unsigned __int16)a8 length:(unsigned __int16)size data:(id)a10 noDataTO:(unsigned int)a11 completionTO:(unsigned int)a12 withReply:(id)a13;
@end

@implementation AMRLocalUSBDevice

- (AMRLocalUSBDevice)initWithService:(unsigned int)a3
{
  if (qword_1000C8848 != -1)
  {
    sub_1000765C4();
  }

  v8.receiver = self;
  v8.super_class = AMRLocalUSBDevice;
  v5 = [(AMRLocalUSBDevice *)&v8 init];
  if (v5)
  {
    DeviceInterfaceForService = _getDeviceInterfaceForService(a3);
    v5->deviceInterface = DeviceInterfaceForService;
    if (DeviceInterfaceForService)
    {
      v5->serialNumber = IORegistryEntryCreateCFProperty(a3, @"kUSBSerialNumberString", kCFAllocatorDefault, 0);
      v5->productString = IORegistryEntryCreateCFProperty(a3, @"kUSBProductString", kCFAllocatorDefault, 0);
      IOObjectRetain(a3);
      v5->usbService = a3;
      v5->usbDeviceNotification = 0;
      v5->waitForOpenSemaphore = dispatch_semaphore_create(0);
      v5->deviceOpenResult = 0;
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E75C;
  block[3] = &unk_1000AB098;
  block[4] = self;
  dispatch_sync(_notificationQueue, block);
  deviceInterface = self->deviceInterface;
  if (deviceInterface)
  {
    ((*deviceInterface)->Release)(deviceInterface);
    self->deviceInterface = 0;
  }

  serialNumber = self->serialNumber;
  if (serialNumber)
  {
    CFRelease(serialNumber);
    self->serialNumber = 0;
  }

  productString = self->productString;
  if (productString)
  {
    CFRelease(productString);
    self->productString = 0;
  }

  usbService = self->usbService;
  if (usbService)
  {
    IOObjectRelease(usbService);
    self->usbService = 0;
  }

  v7.receiver = self;
  v7.super_class = AMRLocalUSBDevice;
  [(AMRLocalUSBDevice *)&v7 dealloc];
}

- (void)openDeviceWithReply:(id)a3
{
  v5 = ((*self->deviceInterface)->USBDeviceOpen)(self->deviceInterface, a2);
  if (v5)
  {
    v12 = v5;
    if (v5 != -536870203)
    {
      v20 = createAndLogUSBError(v5, @"error opening USB device: 0x%x", v6, v7, v8, v9, v10, v11, v5);
      goto LABEL_6;
    }

    [(AMRLocalUSBDevice *)self printDeviceWithExclusiveAccess];
    v13 = IOServiceAddInterestNotification(_notificationPort, self->usbService, "IOGeneralInterest", j__objc_msgSend_handleUSBDeviceGeneralInterestNotification_, self, &self->usbDeviceNotification);
    if (v13)
    {
      v12 = v13;
      v20 = createAndLogUSBError(v13, @"error scheduling USB device notification: 0x%x", v14, v15, v16, v17, v18, v19, v13);
LABEL_6:
      v21 = v20;
      goto LABEL_14;
    }

    dispatch_semaphore_wait(self->waitForOpenSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    deviceOpenResult = self->deviceOpenResult;
    if (deviceOpenResult)
    {
      v21 = createAndLogUSBError(deviceOpenResult, @"error opening USB device in the background: 0x%x", v22, v23, v24, v25, v26, v27, self->deviceOpenResult);
      v12 = self->deviceOpenResult;
      if (!v12)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  deviceInterface = self->deviceInterface;
  v38 = 0;
  v30 = ((*deviceInterface)->GetConfigurationDescriptorPtr)(deviceInterface, 0, &v38);
  if (v30)
  {
    v12 = v30;
  }

  else
  {
    v12 = ((*deviceInterface)->SetConfiguration)(deviceInterface, *(v38 + 5));
    if (!v12)
    {
      v21 = 0;
      goto LABEL_15;
    }
  }

  v21 = createAndLogUSBError(v12, @"error setting configuration descriptor: 0x%x", v31, v32, v33, v34, v35, v36, v12);
LABEL_14:
  ((*self->deviceInterface)->USBDeviceClose)(self->deviceInterface);
LABEL_15:
  v37 = _AMRestoreErrorForIOReturn(v12, 2010);
  (*(a3 + 2))(a3, v37, v21);
}

- (void)printDeviceWithExclusiveAccess
{
  CFProperty = IORegistryEntryCreateCFProperty(self->usbService, @"UsbExclusiveOwner", kCFAllocatorDefault, 0);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"**Unknown**";
    if (CFProperty)
    {
      v3 = CFProperty;
    }

    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "error opening USB device failed with kIOReturnExclusiveAccess. Current owner: %@", &v4, 0xCu);
  }

  if (CFProperty)
  {
    CFRelease(CFProperty);
  }
}

- (void)handleUSBDeviceGeneralInterestNotification:(unsigned int)a3
{
  if (a3 == -536870640)
  {
    v4 = ((*self->deviceInterface)->USBDeviceOpen)(self->deviceInterface, a2);
    self->deviceOpenResult = v4;
    if (v4 == -536870203)
    {

      [(AMRLocalUSBDevice *)self printDeviceWithExclusiveAccess];
    }

    else
    {
      IOObjectRelease(self->usbDeviceNotification);
      self->usbDeviceNotification = 0;
      waitForOpenSemaphore = self->waitForOpenSemaphore;

      dispatch_semaphore_signal(waitForOpenSemaphore);
    }
  }
}

- (void)sendDeviceRequestTO:(unsigned __int16)a3 direction:(unsigned __int8)a4 requestType:(unsigned __int8)a5 recipient:(unsigned __int8)a6 request:(unsigned __int8)a7 value:(unsigned __int16)a8 length:(unsigned __int16)size data:(id)a10 noDataTO:(unsigned int)a11 completionTO:(unsigned int)a12 withReply:(id)a13
{
  v18 = size;
  v19 = malloc_type_malloc(size, 0x43B1E67EuLL);
  [a10 getBytes:v19 length:size];
  v41 = 0;
  v36[0] = (a4 << 7) | (32 * (a5 & 3)) | a6 & 0x1F;
  v36[1] = a7;
  v37 = a8;
  v38 = a3;
  v39 = size;
  v20 = v19;
  v40 = v19;
  v42 = a11;
  v43 = a12;
  v21 = ((*self->deviceInterface)->DeviceRequestTO)(self->deviceInterface, v36);
  v28 = v21;
  if (!v21)
  {
    v29 = 0;
    goto LABEL_10;
  }

  v29 = createAndLogUSBError(v21, @"DeviceRequest failed: 0x%x (IOKit return code). DeviceRequest was index: %u, direction: %u, requestType: %u, recipient: %u, request: %u, value: %u, length: %u, noDataTO: %u, completionTO: %u", v22, v23, v24, v25, v26, v27, v21);
  if (!size)
  {
LABEL_10:
    v30 = v20;
    goto LABEL_11;
  }

  v30 = v20;
  if (v20)
  {
    memset(&v48[2], 0, 480);
    if (size >= 0x200u)
    {
      v18 = 512;
    }

    else
    {
      v18 = size;
    }

    memset(v48, 0, 32);
    __strlcpy_chk();
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v45 = v18;
      v46 = 2080;
      v47 = v48;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Data was : %.*s", buf, 0x12u);
    }
  }

LABEL_11:
  v31 = [NSData alloc];
  v32 = [v31 initWithBytes:v40 length:v18];
  free(v30);
  v33 = _AMRestoreErrorForIOReturn(v28, 2009);
  (*(a13 + 2))(a13, v33, v32, v29);
}

- (void)interfaceWithClass:(unsigned __int16)a3 subclass:(unsigned __int16)a4 withReply:(id)a5
{
  iterator = 0;
  v11 = -1;
  v10[0] = a3;
  v10[1] = a4;
  v6 = ((*self->deviceInterface)->CreateInterfaceIterator)(self->deviceInterface, v10, &iterator);
  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "error creating interface iterator: 0x%x\n", buf, 8u);
    }

    (*(a5 + 2))(a5, 0, 0);
  }

  v8 = IOIteratorNext(iterator);
  IOObjectRelease(iterator);
  v9 = [[AMRLocalUSBInterface alloc] initWithService:v8];
  IOObjectRelease(v8);
  (*(a5 + 2))(a5, v9, 0);
}

- (void)getLocationIDWithReply:(id)a3
{
  v4 = 0xFFFFFFFFLL;
  v5 = -1;
  if (((*self->deviceInterface)->GetLocationID)(self->deviceInterface, &v5))
  {
    v5 = -1;
  }

  else
  {
    v4 = v5;
  }

  (*(a3 + 2))(a3, v4, 0);
}

- (void)getProductIDWithReply:(id)a3
{
  v5 = 0;
  if (((*self->deviceInterface)->GetDeviceProduct)(self->deviceInterface, &v5))
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = v5;
  }

  (*(a3 + 2))(a3, v4, 0);
}

- (void)getDeviceReleaseNumberWithReply:(id)a3
{
  v5 = 0;
  if (((*self->deviceInterface)->GetDeviceReleaseNumber)(self->deviceInterface, &v5))
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = v5;
  }

  (*(a3 + 2))(a3, v4, 0);
}

- (void)reEnumerateWithReply:(id)a3
{
  v4 = ((*self->deviceInterface)->USBDeviceReEnumerate)(self->deviceInterface, 0);
  v5 = _AMRestoreErrorForIOReturn(v4, 2010);
  v6 = *(a3 + 2);

  v6(a3, v5, 0);
}

- (void)getManufacturerStringIndexForIndexWithReply:(id)a3
{
  v6 = 0;
  v4 = ((*self->deviceInterface)->USBGetManufacturerStringIndex)(self->deviceInterface, &v6);
  v5 = _AMRestoreErrorForIOReturn(v4, 2010);
  (*(a3 + 2))(a3, v5, v6, 0);
}

@end