@interface CoreRCHIDService
- (BOOL)setIOHIDServicePropertyForKey:(id)a3 withValue:(id)a4;
- (CoreRCHIDService)init;
- (IUnknown)interfaceWithID:(__CFUUID *)a3;
- (id)copyIOHIDServicePropertyForKey:(id)a3;
- (int)probeIOService:(unsigned int)a3 propertyTable:(id)a4 order:(int *)a5;
- (int)startWithIOService:(unsigned int)a3 propertyTable:(id)a4;
- (int)stop;
- (void)addBus:(id)a3;
- (void)addDevice:(id)a3;
- (void)addIRMappingWithValue:(id)a3;
- (void)bus:(id)a3 deviceHasBeenAdded:(id)a4;
- (void)bus:(id)a3 deviceHasBeenRemoved:(id)a4;
- (void)cecDevice:(id)a3 deckControlCommandHasBeenReceived:(unsigned __int8)a4 fromDevice:(id)a5;
- (void)cecDevice:(id)a3 deckControlPlayHasBeenReceived:(unsigned __int8)a4 fromDevice:(id)a5;
- (void)dealloc;
- (void)device:(id)a3 receivedHIDEvent:(id)a4 fromDevice:(id)a5;
- (void)dispatchHIDEvent:(__IOHIDEvent *)a3 options:(unsigned int)a4;
- (void)dispatchHIDEvent:(id)a3 fromDevice:(id)a4;
- (void)manager:(id)a3 hasAdded:(id)a4;
- (void)manager:(id)a3 hasRemoved:(id)a4;
- (void)removeBus:(id)a3;
- (void)removeDevice:(id)a3;
- (void)scheduleWithDispatchQueue:(id)a3;
- (void)setIOHIDServiceEventCallback:(void *)a3 target:(void *)a4 context:(void *)a5;
- (void)unscheduleFromDispatchQueue:(id)a3;
@end

@implementation CoreRCHIDService

- (void)addIRMappingWithValue:(id)a3
{
  v37 = 0;
  if (gLogCategory_CoreRCHID <= 40 && (gLogCategory_CoreRCHID != -1 || _LogCategory_Initialize()))
  {
    sub_25E4();
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = [(CoreRCHIDService *)self buses];
  v5 = [v4 countByEnumeratingWithState:&v33 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v10 = [v9 devices];
          v11 = [v10 countByEnumeratingWithState:&v29 objects:v39 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v30;
            v23 = v9;
LABEL_12:
            v14 = 0;
            while (1)
            {
              if (*v30 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v29 + 1) + 8 * v14);
              if ([v15 isLocalDevice])
              {
                if ([v15 isReceiver])
                {
                  break;
                }
              }

              if (v12 == ++v14)
              {
                v12 = [v10 countByEnumeratingWithState:&v29 objects:v39 count:16];
                if (v12)
                {
                  goto LABEL_12;
                }

                goto LABEL_19;
              }
            }

            v16 = [v15 startLearningSessionWithReason:1 error:&v37];
            if (!v16)
            {
              goto LABEL_35;
            }

            v17 = v16;
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v18 = [a3 countByEnumeratingWithState:&v25 objects:v38 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v26;
              do
              {
                for (j = 0; j != v19; j = j + 1)
                {
                  if (*v26 != v20)
                  {
                    objc_enumerationMutation(a3);
                  }

                  [v17 addMappingWithProtocolID:objc_msgSend(objc_msgSend(*(*(&v25 + 1) + 8 * j) options:"objectForKeyedSubscript:" commandToMap:@"protocol" command:"integerValue") repeat:{objc_msgSend(objc_msgSend(*(*(&v25 + 1) + 8 * j), "objectForKeyedSubscript:", @"protocol", "integerValue"), objc_msgSend(objc_msgSend(*(*(&v25 + 1) + 8 * j), "objectForKeyedSubscript:", @"corerccommand", "integerValue"), objc_msgSend(objc_msgSend(*(*(&v25 + 1) + 8 * j), "objectForKeyedSubscript:", @"command", "integerValue"), objc_msgSend(objc_msgSend(*(*(&v25 + 1) + 8 * j), "objectForKeyedSubscript:", @"repeat", "integerValue")}];
                }

                v19 = [a3 countByEnumeratingWithState:&v25 objects:v38 count:16];
              }

              while (v19);
            }

            v22 = [v23 addDeviceWithType:1 matching:&off_8448 learningSession:v17 error:&v37];
            [v17 endLearning];
            [v22 setOSDName:@"debug" error:0];
            if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            return;
          }
        }

LABEL_19:
        ;
      }

      v6 = [v4 countByEnumeratingWithState:&v33 objects:v40 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_35:
  sub_2624(&v37);
}

- (void)manager:(id)a3 hasAdded:(id)a4
{
  if (gLogCategory_CoreRCHID <= 10 && (gLogCategory_CoreRCHID != -1 || _LogCategory_Initialize()))
  {
    v7 = a3;
    v8 = a4;
    LogPrintF();
  }

  if ([(CoreRCManager *)[(CoreRCHIDService *)self manager:v7] isEqual:a3])
  {

    [(CoreRCHIDService *)self addBus:a4];
  }
}

- (void)manager:(id)a3 hasRemoved:(id)a4
{
  if (gLogCategory_CoreRCHID <= 10 && (gLogCategory_CoreRCHID != -1 || _LogCategory_Initialize()))
  {
    v7 = a3;
    v8 = a4;
    LogPrintF();
  }

  if ([(CoreRCManager *)[(CoreRCHIDService *)self manager:v7] isEqual:a3])
  {

    [(CoreRCHIDService *)self removeBus:a4];
  }
}

- (void)bus:(id)a3 deviceHasBeenAdded:(id)a4
{
  if (gLogCategory_CoreRCHID <= 10 && (gLogCategory_CoreRCHID != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [(CoreRCHIDService *)self addDevice:a4];
}

- (void)bus:(id)a3 deviceHasBeenRemoved:(id)a4
{
  if (gLogCategory_CoreRCHID <= 10 && (gLogCategory_CoreRCHID != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [(CoreRCHIDService *)self removeDevice:a4];
}

- (void)device:(id)a3 receivedHIDEvent:(id)a4 fromDevice:(id)a5
{
  if (gLogCategory_CoreRCHID <= 40 && (gLogCategory_CoreRCHID != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [(CoreRCHIDService *)self dispatchHIDEvent:a4 fromDevice:a5];
}

- (CoreRCHIDService)init
{
  v8.receiver = self;
  v8.super_class = CoreRCHIDService;
  v2 = [(CoreRCHIDService *)&v8 init];
  v3 = v2;
  if (v2)
  {
    IUnknown_Init(&v2->_ioPlugInInterface.__vftable, &IIOCFPlugInInterfaceDefinition, v2);
    IUnknown_Init(&v3->_hidServiceInterface2.__vftable, &IIOHIDService2InterfaceDefinition, v3);
    v4 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x3Bu, 2u, 0xA2u, 0xFEu, 6u, 0xB7u, 0x45u, 0xE4u, 0xB6u, 0x70u, 0xF5u, 0xA9u, 0x1Du, 0xB6u, 0x49u, 0x50u);
    v5 = CFRetain(v4);
    v3->_factoryID = v5;
    CFPlugInAddInstanceForFactory(v5);
    v3->_monitoredBuses = objc_opt_new();
    v3->_monitoredDevices = objc_opt_new();
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v3->_queue = dispatch_queue_create("com.apple.CoreRCHIDService.default", v6);
  }

  return v3;
}

- (void)dealloc
{
  factoryID = self->_factoryID;
  if (factoryID)
  {
    CFPlugInRemoveInstanceForFactory(factoryID);
    CFRelease(self->_factoryID);
  }

  dispatch_release(self->_queue);
  v4.receiver = self;
  v4.super_class = CoreRCHIDService;
  [(CoreRCHIDService *)&v4 dealloc];
}

- (IUnknown)interfaceWithID:(__CFUUID *)a3
{
  v5 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  if (CFEqual(a3, v5))
  {
    return &self->_ioPlugInInterface;
  }

  v6 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
  if (CFEqual(a3, v6))
  {
    return &self->_ioPlugInInterface;
  }

  v8 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x6Fu, 0xE2u, 0x2Au, 0xBFu, 0x68u, 0xB9u, 0x11u, 0xDBu, 0xA7u, 0x1Fu, 0, 0x16u, 0xCBu, 0xC1u, 0x10u, 0xF7u);
  if (CFEqual(a3, v8))
  {
    return &self->_hidServiceInterface2;
  }

  else
  {
    return 0;
  }
}

- (int)probeIOService:(unsigned int)a3 propertyTable:(id)a4 order:(int *)a5
{
  if (gLogCategory_CoreRCHID <= 10 && (gLogCategory_CoreRCHID != -1 || _LogCategory_Initialize()))
  {
    sub_26AC();
    if (!a3)
    {
      return -536870206;
    }
  }

  else if (!a3)
  {
    return -536870206;
  }

  if (IOObjectConformsTo(a3, "IOCECService"))
  {
    return 0;
  }

  return -536870206;
}

- (int)startWithIOService:(unsigned int)a3 propertyTable:(id)a4
{
  if (gLogCategory_CoreRCHID <= 10 && (gLogCategory_CoreRCHID != -1 || _LogCategory_Initialize()))
  {
    sub_26EC();
  }

  return 0;
}

- (int)stop
{
  if (gLogCategory_CoreRCHID <= 10 && (gLogCategory_CoreRCHID != -1 || _LogCategory_Initialize()))
  {
    sub_272C();
  }

  return 0;
}

- (id)copyIOHIDServicePropertyForKey:(id)a3
{
  if ([a3 isEqual:@"PrimaryUsagePage"])
  {
    v4 = &off_8408;
  }

  else
  {
    v4 = &off_8420;
    if (([a3 isEqual:@"PrimaryUsage"] & 1) == 0)
    {
      if ([a3 isEqual:@"Product"])
      {
        v4 = @"CoreRC HID Service";
      }

      else if ([a3 isEqual:@"DeviceUsagePairs"])
      {
        v4 = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:&off_8408, @"DeviceUsagePage", &off_8420, @"DeviceUsage", 0], 0];
      }

      else if ([a3 isEqual:@"Transport"])
      {
        v4 = @"CoreRC";
      }

      else
      {
        if (gLogCategory_CoreRCHID <= 10 && (gLogCategory_CoreRCHID != -1 || _LogCategory_Initialize()))
        {
          sub_274C();
        }

        v4 = 0;
      }
    }
  }

  return [(NSArray *)v4 copy];
}

- (BOOL)setIOHIDServicePropertyForKey:(id)a3 withValue:(id)a4
{
  if (gLogCategory_CoreRCHID <= 10 && (gLogCategory_CoreRCHID != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 1;
}

- (void)setIOHIDServiceEventCallback:(void *)a3 target:(void *)a4 context:(void *)a5
{
  self->_eventCallback = a3;
  self->_eventTarget = a4;
  self->_eventContext = a5;
}

- (void)dispatchHIDEvent:(__IOHIDEvent *)a3 options:(unsigned int)a4
{
  if (a3)
  {
    eventCallback = self->_eventCallback;
    if (eventCallback)
    {
      eventCallback(self->_eventTarget, self->_eventContext, &self->_hidServiceInterface2, a3, 0);
    }
  }
}

- (void)scheduleWithDispatchQueue:(id)a3
{
  if (gLogCategory_CoreRCHID <= 40 && (gLogCategory_CoreRCHID != -1 || _LogCategory_Initialize()))
  {
    sub_278C();
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1D20;
  block[3] = &unk_8198;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)unscheduleFromDispatchQueue:(id)a3
{
  if (gLogCategory_CoreRCHID <= 40 && (gLogCategory_CoreRCHID != -1 || _LogCategory_Initialize()))
  {
    sub_27CC();
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1E44;
  block[3] = &unk_8198;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)addBus:(id)a3
{
  if (gLogCategory_CoreRCHID <= 40 && (gLogCategory_CoreRCHID != -1 || _LogCategory_Initialize()))
  {
    sub_280C();
  }

  [(NSMutableSet *)self->_monitoredBuses addObject:a3];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [a3 devices];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(CoreRCHIDService *)self addDevice:*(*(&v10 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [a3 setDelegate:self];
}

- (void)removeBus:(id)a3
{
  if (gLogCategory_CoreRCHID <= 40 && (gLogCategory_CoreRCHID != -1 || _LogCategory_Initialize()))
  {
    sub_284C();
  }

  if ([a3 delegate] == self)
  {
    [a3 setDelegate:0];
  }

  monitoredBuses = self->_monitoredBuses;

  [(NSMutableSet *)monitoredBuses removeObject:a3];
}

- (void)addDevice:(id)a3
{
  if (gLogCategory_CoreRCHID <= 40 && (gLogCategory_CoreRCHID != -1 || _LogCategory_Initialize()))
  {
    sub_288C();
  }

  [(NSMutableSet *)self->_monitoredDevices addObject:a3];

  [a3 setDelegate:self];
}

- (void)removeDevice:(id)a3
{
  if (gLogCategory_CoreRCHID <= 40 && (gLogCategory_CoreRCHID != -1 || _LogCategory_Initialize()))
  {
    sub_28CC();
  }

  if ([a3 delegate] == self)
  {
    [a3 setDelegate:0];
  }

  monitoredDevices = self->_monitoredDevices;

  [(NSMutableSet *)monitoredDevices removeObject:a3];
}

- (void)dispatchHIDEvent:(id)a3 fromDevice:(id)a4
{
  if (a3 && [a3 event])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [a3 event];
      IOHIDEventGetTimeStamp();
      VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
      if (VendorDefinedEvent)
      {
        v7 = VendorDefinedEvent;
        [a3 event];
        IOHIDEventAppendEvent();
        CFRelease(v7);
      }
    }

    v8 = [a3 event];

    [(CoreRCHIDService *)self dispatchHIDEvent:v8 options:0];
  }
}

- (void)cecDevice:(id)a3 deckControlCommandHasBeenReceived:(unsigned __int8)a4 fromDevice:(id)a5
{
  v8 = [sub_1528() initWithCECDeckControlMode:v5 pressed:1];
  if (v8)
  {
    sub_154C(v8);

    v9 = [objc_alloc(*(v7 + 280)) initWithCECDeckControlMode:v5 pressed:0];
    if (v9)
    {
      sub_1504(v9);
    }
  }
}

- (void)cecDevice:(id)a3 deckControlPlayHasBeenReceived:(unsigned __int8)a4 fromDevice:(id)a5
{
  v8 = [sub_1528() initWithCECPlayMode:v5 pressed:1];
  if (v8)
  {
    sub_154C(v8);

    v9 = [objc_alloc(*(v7 + 280)) initWithCECPlayMode:v5 pressed:0];
    if (v9)
    {
      sub_1504(v9);
    }
  }
}

@end