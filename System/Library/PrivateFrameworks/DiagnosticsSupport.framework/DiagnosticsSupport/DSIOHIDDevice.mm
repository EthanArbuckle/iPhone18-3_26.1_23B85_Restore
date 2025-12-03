@interface DSIOHIDDevice
+ (id)deviceMatchingAccessories:(id)accessories identifierMask:(unint64_t)mask;
+ (id)deviceWithAccessory:(unint64_t)accessory identifierMask:(unint64_t)mask;
- (BOOL)reportWithID:(int64_t)d reportType:(int)type object:(char *)object length:(int64_t *)length;
- (DSIOHIDDevice)initWithDeviceIdentifiers:(id)identifiers identifierMask:(unint64_t)mask;
- (id)_sharedSerialQueue;
- (id)serialNumber;
- (id)stringFromHIDReport:(int64_t)report;
- (void)dealloc;
- (void)serialNumber;
@end

@implementation DSIOHIDDevice

+ (id)deviceWithAccessory:(unint64_t)accessory identifierMask:(unint64_t)mask
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = [DSIODeviceIdentifier identifierForAccessoryModel:accessory];
  v7 = [self alloc];
  v12[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9 = [v7 initWithDeviceIdentifiers:v8 identifierMask:mask];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)deviceMatchingAccessories:(id)accessories identifierMask:(unint64_t)mask
{
  selfCopy = self;
  v26 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = accessoriesCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = +[DSIODeviceIdentifier identifierForAccessoryModel:](DSIODeviceIdentifier, "identifierForAccessoryModel:", [v11 intValue]);
        if (v12)
        {
          [array addObject:v12];
        }

        else
        {
          v13 = DiagnosticLogHandleForCategory(6);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v24 = v11;
            _os_log_fault_impl(&dword_248BD5000, v13, OS_LOG_TYPE_FAULT, "Identifier not found for accessory %@", buf, 0xCu);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }

  v14 = [[selfCopy alloc] initWithDeviceIdentifiers:array identifierMask:mask];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (DSIOHIDDevice)initWithDeviceIdentifiers:(id)identifiers identifierMask:(unint64_t)mask
{
  maskCopy = mask;
  v46 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v42.receiver = self;
  v42.super_class = DSIOHIDDevice;
  v7 = [(DSIOHIDDevice *)&v42 init];
  if (!v7)
  {
LABEL_36:
    v30 = v7;
    goto LABEL_40;
  }

  v8 = IOHIDManagerCreate(*MEMORY[0x277CBECE8], 0);
  v35 = v7;
  v7->_manager = v8;
  IOHIDManagerOpen(v8, 0);
  array = [MEMORY[0x277CBEB18] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v36 = identifiersCopy;
  obj = identifiersCopy;
  v10 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = v10;
  v12 = *v39;
  do
  {
    v13 = 0;
    do
    {
      if (*v39 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v38 + 1) + 8 * v13);
      v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
      if (maskCopy)
      {
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v14, "usagePage")}];
        [v15 setObject:v18 forKeyedSubscript:@"DeviceUsagePage"];

        if ((maskCopy & 2) == 0)
        {
LABEL_9:
          if ((maskCopy & 4) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_16;
        }
      }

      else if ((maskCopy & 2) == 0)
      {
        goto LABEL_9;
      }

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v14, "usage")}];
      [v15 setObject:v19 forKeyedSubscript:@"DeviceUsage"];

      if ((maskCopy & 4) == 0)
      {
LABEL_10:
        if ((maskCopy & 8) == 0)
        {
          goto LABEL_12;
        }

LABEL_11:
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v14, "productID")}];
        [v15 setObject:v16 forKeyedSubscript:@"ProductID"];

        goto LABEL_12;
      }

LABEL_16:
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v14, "vendorID")}];
      [v15 setObject:v20 forKeyedSubscript:@"VendorID"];

      if ((maskCopy & 8) != 0)
      {
        goto LABEL_11;
      }

LABEL_12:
      v17 = [v15 copy];
      [array addObject:v17];

      ++v13;
    }

    while (v11 != v13);
    v21 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
    v11 = v21;
  }

  while (v21);
LABEL_19:

  v7 = v35;
  manager = v35->_manager;
  if (!manager)
  {
    v24 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [DSIOHIDDevice initWithDeviceIdentifiers:identifierMask:];
    }

    identifiersCopy = v36;
    goto LABEL_33;
  }

  IOHIDManagerSetDeviceMatchingMultiple(manager, array);
  v23 = IOHIDManagerCopyDevices(v35->_manager);
  identifiersCopy = v36;
  if (!v23)
  {
LABEL_34:
    if (!v35->_device)
    {
      v24 = DiagnosticLogHandleForCategory(6);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44 = obj;
        _os_log_impl(&dword_248BD5000, v24, OS_LOG_TYPE_DEFAULT, "Could not find accessory matching identifiers: %@", buf, 0xCu);
      }

      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v24 = v23;
  if ([(__CFSet *)v23 count]>= 2)
  {
    v25 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [(DSIOHIDDevice *)obj initWithDeviceIdentifiers:v24 identifierMask:v25];
    }
  }

  anyObject = [v24 anyObject];
  v35->_device = anyObject;
  if (!anyObject)
  {
LABEL_33:

    goto LABEL_34;
  }

  v27 = IOHIDDeviceOpen(anyObject, 0);
  if (v27)
  {
    v28 = v27;
    v29 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [DSIOHIDDevice initWithDeviceIdentifiers:v28 identifierMask:v29];
    }

    goto LABEL_29;
  }

  v33 = [DSIODeviceIdentifier identifierForIOHIDDevice:v35->_device];
  if (v33)
  {
    v34 = v33;
    v35->_deviceModel = [v33 accessoryModel];

    goto LABEL_33;
  }

  v29 = DiagnosticLogHandleForCategory(6);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    [DSIOHIDDevice initWithDeviceIdentifiers:identifierMask:];
  }

LABEL_29:

LABEL_39:
  v30 = 0;
LABEL_40:

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

- (void)dealloc
{
  device = self->_device;
  if (device)
  {
    if (IOHIDDeviceClose(device, 0))
    {
      v4 = DiagnosticLogHandleForCategory(6);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [DSIOHIDDevice dealloc];
      }
    }

    self->_device = 0;
  }

  manager = self->_manager;
  if (manager)
  {
    IOHIDManagerClose(manager, 0);
    CFRelease(self->_manager);
  }

  v6.receiver = self;
  v6.super_class = DSIOHIDDevice;
  [(DSIOHIDDevice *)&v6 dealloc];
}

- (id)serialNumber
{
  Property = IOHIDDeviceGetProperty(self->_device, @"SerialNumber");
  if (Property)
  {
    v3 = Property;
    v4 = CFGetTypeID(Property);
    if (v4 == CFStringGetTypeID())
    {
      v5 = v3;
      goto LABEL_13;
    }

    v7 = CFGetTypeID(v3);
    if (v7 == CFNumberGetTypeID())
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v3];
      goto LABEL_13;
    }

    v8 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(DSIOHIDDevice *)v3 serialNumber];
    }
  }

  else
  {
    v6 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [DSIOHIDDevice serialNumber];
    }
  }

  v5 = 0;
LABEL_13:

  return v5;
}

- (id)stringFromHIDReport:(int64_t)report
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  objc_initWeak(&location, self);
  _sharedSerialQueue = [(DSIOHIDDevice *)self _sharedSerialQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__DSIOHIDDevice_stringFromHIDReport___block_invoke;
  v8[3] = &unk_278F6E378;
  objc_copyWeak(v9, &location);
  v9[1] = report;
  v8[4] = &v11;
  dispatch_sync(_sharedSerialQueue, v8);

  v6 = v12[5];
  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __37__DSIOHIDDevice_stringFromHIDReport___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *report = 0u;
  v10 = 0u;
  pReportLength = 129;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && IOHIDDeviceGetReport(WeakRetained[2], kIOHIDReportTypeFeature, *(a1 + 48), report, &pReportLength))
  {
    v4 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __37__DSIOHIDDevice_stringFromHIDReport___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&report[1] length:strnlen(&report[1] encoding:{0x80uLL), 4}];
    v6 = *(*(a1 + 32) + 8);
    v4 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)reportWithID:(int64_t)d reportType:(int)type object:(char *)object length:(int64_t *)length
{
  objc_initWeak(&location, self);
  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x2020000000;
  v20 = 0;
  _sharedSerialQueue = [(DSIOHIDDevice *)self _sharedSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__DSIOHIDDevice_reportWithID_reportType_object_length___block_invoke;
  block[3] = &unk_278F6E3A0;
  objc_copyWeak(v16, &location);
  typeCopy = type;
  block[4] = &v18;
  v16[1] = d;
  v16[2] = object;
  v16[3] = length;
  dispatch_sync(_sharedSerialQueue, block);

  if (*(v19[0] + 24))
  {
    v12 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [DSIOHIDDevice reportWithID:v19 reportType:v12 object:? length:?];
    }

    v13 = *(v19[0] + 24) == 0;
  }

  else
  {
    v13 = 1;
  }

  objc_destroyWeak(v16);
  _Block_object_dispose(&v18, 8);
  objc_destroyWeak(&location);
  return v13;
}

void __55__DSIOHIDDevice_reportWithID_reportType_object_length___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    *(*(*(a1 + 32) + 8) + 24) = IOHIDDeviceGetReport(WeakRetained[2], *(a1 + 72), *(a1 + 48), *(a1 + 56), *(a1 + 64));
    WeakRetained = v3;
  }
}

- (id)_sharedSerialQueue
{
  if (_sharedSerialQueue_onceToken != -1)
  {
    [DSIOHIDDevice _sharedSerialQueue];
  }

  v3 = _sharedSerialQueue_serialQueue;

  return v3;
}

uint64_t __35__DSIOHIDDevice__sharedSerialQueue__block_invoke()
{
  _sharedSerialQueue_serialQueue = dispatch_queue_create("DSIOHIDDevice report", 0);

  return MEMORY[0x2821F96F8]();
}

- (void)initWithDeviceIdentifiers:(os_log_t)log identifierMask:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_248BD5000, log, OS_LOG_TYPE_ERROR, "Multiple devices found when matching identifiers (%@) to devices (%@); using one", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithDeviceIdentifiers:(int)a1 identifierMask:(NSObject *)a2 .cold.2(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_248BD5000, a2, OS_LOG_TYPE_ERROR, "Failed to open IOHIDDevice %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)serialNumber
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 134217984;
  v5 = CFGetTypeID(self);
  _os_log_error_impl(&dword_248BD5000, a2, OS_LOG_TYPE_ERROR, "Unable to parse serial number with type = %lu.", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)reportWithID:(uint64_t)a1 reportType:(NSObject *)a2 object:length:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 24);
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_248BD5000, a2, OS_LOG_TYPE_ERROR, "Unable to retieve HID report. Status code: %d", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

@end