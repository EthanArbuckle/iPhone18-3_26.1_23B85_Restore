@interface HIDDevice(HIDFramework)
- (BOOL)getReport:()HIDFramework reportLength:withIdentifier:forType:error:timeout:callback:;
- (BOOL)openWithOptions:()HIDFramework error:;
- (BOOL)setReport:()HIDFramework reportLength:withIdentifier:forType:error:timeout:callback:;
- (CFArrayRef)elementsMatching:()HIDFramework;
- (IOHIDDeviceRef)initWithService:()HIDFramework;
- (uint64_t)commitElements:()HIDFramework direction:error:timeout:callback:;
- (void)activate;
- (void)setBatchInputElementHandler:()HIDFramework;
- (void)setInputElementHandler:()HIDFramework;
- (void)setInputElementMatching:()HIDFramework;
- (void)setInputReportHandler:()HIDFramework;
- (void)setRemovalHandler:()HIDFramework;
@end

@implementation HIDDevice(HIDFramework)

- (IOHIDDeviceRef)initWithService:()HIDFramework
{
  v4 = IOHIDDeviceCreate(*MEMORY[0x277CBECE8], service);

  return v4;
}

- (CFArrayRef)elementsMatching:()HIDFramework
{
  v3 = IOHIDDeviceCopyMatchingElements(self, matching, 0);

  return v3;
}

- (BOOL)setReport:()HIDFramework reportLength:withIdentifier:forType:error:timeout:callback:
{
  v16 = a9;
  v17 = v16;
  if (v16)
  {
    v18 = _Block_copy(v16);
    v19 = IOHIDDeviceSetReportWithCallback(self, a6, a5, a3, a4, a8, asyncReportCallback, v18);
  }

  else
  {
    v19 = IOHIDDeviceSetReport(self, a6, a5, a3, a4);
  }

  v20 = v19;
  if (a7)
  {
    if (v19)
    {
      *a7 = [MEMORY[0x277CCA9B8] errorWithIOReturn:v19];
      if (v17)
      {
        _Block_release(v17);
      }
    }
  }

  return v20 == 0;
}

- (BOOL)getReport:()HIDFramework reportLength:withIdentifier:forType:error:timeout:callback:
{
  v16 = a9;
  v17 = v16;
  pReportLength = *a4;
  if (v16)
  {
    v18 = _Block_copy(v16);
    ReportWithCallback = IOHIDDeviceGetReportWithCallback(self, a6, a5, a3, &pReportLength, a8, asyncReportCallback, v18);
    if (!a7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    ReportWithCallback = IOHIDDeviceGetReport(self, a6, a5, a3, &pReportLength);
    *a4 = pReportLength;
    if (!a7)
    {
      goto LABEL_8;
    }
  }

  if (ReportWithCallback)
  {
    *a7 = [MEMORY[0x277CCA9B8] errorWithIOReturn:ReportWithCallback];
    if (v17)
    {
      _Block_release(v17);
    }
  }

LABEL_8:

  return ReportWithCallback == 0;
}

- (uint64_t)commitElements:()HIDFramework direction:error:timeout:callback:
{
  v12 = a3;
  v13 = a7;
  v14 = self + *MEMORY[0x277CD2868];
  os_unfair_recursive_lock_lock_with_options();
  v15 = *(v14 + 256);
  if (!v15)
  {
    v15 = [[HIDTransaction alloc] initWithDevice:self];
    *(v14 + 256) = v15;
  }

  v16 = v15;
  [(HIDTransaction *)v16 setDirection:a4 != 0];
  if (v13)
  {
    v17 = [(HIDTransaction *)v16 commitElements:v12 error:a5 timeout:a6 callback:v13];
  }

  else
  {
    v17 = [(HIDTransaction *)v16 commitElements:v12 error:a5];
  }

  v18 = v17;
  os_unfair_recursive_lock_unlock();

  return v18;
}

- (void)setInputElementMatching:()HIDFramework
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(HIDDevice(HIDFramework) *)&v10 setInputElementMatching:v11];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(__CFDictionary *)v9 count])
    {
      selfCopy2 = self;
      v5 = v9;
    }

    else
    {
      selfCopy2 = self;
      v5 = 0;
    }

    IOHIDDeviceSetInputValueMatching(selfCopy2, v5);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(__CFDictionary *)v9 count])
      {
        selfCopy4 = self;
        v7 = v9;
      }

      else
      {
        selfCopy4 = self;
        v7 = 0;
      }

      IOHIDDeviceSetInputValueMatchingMultiple(selfCopy4, v7);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setInputElementHandler:()HIDFramework
{
  v4 = a3;
  if (atomic_exchange((self + *MEMORY[0x277CD2868] + 312), _Block_copy(v4)))
  {
    [HIDManager setInputElementHandler:];
  }

  IOHIDDeviceRegisterInputValueCallback(self, inputValueCallback_0, self);
}

- (void)setBatchInputElementHandler:()HIDFramework
{
  v4 = a3;
  v5 = (self + *MEMORY[0x277CD2868]);
  v6 = v4;
  if (atomic_exchange(v5 + 39, _Block_copy(v4)))
  {
    [HIDManager setInputElementHandler:];
  }

  v5[35] = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  IOHIDDeviceRegisterInputValueCallback(self, batchInputValueCallback, self);
}

- (void)setRemovalHandler:()HIDFramework
{
  v4 = a3;
  if (atomic_exchange((self + *MEMORY[0x277CD2868] + 320), _Block_copy(v4)))
  {
    [HIDServiceClient(HIDFramework) setRemovalHandler:];
  }

  IOHIDDeviceRegisterRemovalCallback(self, removalCallback, self);
}

- (void)setInputReportHandler:()HIDFramework
{
  v4 = a3;
  v5 = &self[*MEMORY[0x277CD2868]];
  v13 = v4;
  if (atomic_exchange(v5 + 41, _Block_copy(v4)))
  {
    [HIDManager setInputReportHandler:];
  }

  v6 = [self propertyForKey:@"MaxInputReportSize"];
  v7 = v6;
  if (v6)
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1;
  }

  v9 = *(v5 + 34);
  if (!v9)
  {
    Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], unsignedIntegerValue);
    *(v5 + 34) = Mutable;
    CFDataSetLength(Mutable, unsignedIntegerValue);
    v9 = *(v5 + 34);
  }

  MutableBytePtr = CFDataGetMutableBytePtr(v9);
  Length = CFDataGetLength(*(v5 + 34));
  IOHIDDeviceRegisterInputReportWithTimeStampCallback(self, MutableBytePtr, Length, inputReportCallback_0, self);
}

- (BOOL)openWithOptions:()HIDFramework error:
{
  v5 = IOHIDDeviceOpen(self, options);
  v6 = v5;
  if (a4 && v5)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithIOReturn:v5];
  }

  return v6 == 0;
}

- (void)activate
{
  v2 = &self[*MEMORY[0x277CD2868]];
  os_unfair_recursive_lock_lock_with_options();
  if (*(v2 + 35))
  {
    if (*(v2 + 30))
    {
      [MEMORY[0x277CBEB18] arrayWithArray:?];
    }

    else
    {
      [MEMORY[0x277CBEB18] arrayWithObjects:{&unk_28419A4B0, &unk_28419A4D8, &unk_28419A500, &unk_28419A528, 0}];
    }
    v3 = ;
    [v3 addObject:&unk_28419A550];
    os_unfair_recursive_lock_unlock();
    [self setInputElementMatching:v3];
  }

  else
  {
    os_unfair_recursive_lock_unlock();
  }

  IOHIDDeviceActivate(self);
}

- (void)setInputElementMatching:()HIDFramework .cold.1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

@end