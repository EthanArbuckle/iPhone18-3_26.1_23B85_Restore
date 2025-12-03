@interface HSHIDManager
- (BOOL)close:(id *)close;
- (BOOL)open:(id *)open;
- (HSHIDManager)init;
- (HSHIDManager)initWithManagerRef:(__IOHIDManager *)ref;
- (id)devices;
- (void)dealloc;
- (void)enumerateDevicesMatching:(id)matching;
- (void)scheduleWithRunLoop:(__CFRunLoop *)loop mode:(__CFString *)mode;
@end

@implementation HSHIDManager

- (HSHIDManager)initWithManagerRef:(__IOHIDManager *)ref
{
  v5.receiver = self;
  v5.super_class = HSHIDManager;
  result = [(HSHIDManager *)&v5 init];
  result->_managerRef = ref;
  *&result->_active = 0;
  return result;
}

- (HSHIDManager)init
{
  v3 = IOHIDManagerCreate(*MEMORY[0x277CBECE8], 0);

  return [(HSHIDManager *)self initWithManagerRef:v3];
}

- (void)dealloc
{
  managerRef = self->_managerRef;
  if (managerRef)
  {
    CFRelease(managerRef);
  }

  v4.receiver = self;
  v4.super_class = HSHIDManager;
  [(HSHIDManager *)&v4 dealloc];
}

- (void)enumerateDevicesMatching:(id)matching
{
  matchingCopy = matching;
  multiple = matchingCopy;
  if (!matchingCopy)
  {
    managerRef = self->_managerRef;
    firstObject = 0;
    goto LABEL_5;
  }

  v5 = [(__CFArray *)matchingCopy count];
  v6 = self->_managerRef;
  if (v5 == 1)
  {
    firstObject = [(__CFArray *)multiple firstObject];
    managerRef = v6;
LABEL_5:
    IOHIDManagerSetDeviceMatching(managerRef, firstObject);
    goto LABEL_7;
  }

  IOHIDManagerSetDeviceMatchingMultiple(v6, multiple);
LABEL_7:
}

- (BOOL)open:(id *)open
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = IOHIDManagerOpen(self->_managerRef, 0);
  v5 = v4;
  if (open && v4)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to open the IOHIDManager!"];
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA4A8];
    v14 = *MEMORY[0x277CCA450];
    v15[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v10 = [v7 errorWithDomain:v8 code:v5 userInfo:v9];

    v11 = v10;
    *open = v10;
  }

  result = v5 == 0;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)close:(id *)close
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = IOHIDManagerClose(self->_managerRef, 0);
  v5 = v4;
  if (close && v4)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to close the IOHIDManager!"];
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA4A8];
    v14 = *MEMORY[0x277CCA450];
    v15[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v10 = [v7 errorWithDomain:v8 code:v5 userInfo:v9];

    v11 = v10;
    *close = v10;
  }

  result = v5 == 0;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)devices
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = IOHIDManagerCopyDevices(self->_managerRef);
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{-[__CFSet count](v2, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v2;
  v5 = [(__CFSet *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        CFRetain(v9);
        v10 = [HSHIDDevice alloc];
        v11 = [(HSHIDDevice *)v10 initWithDeviceRef:v9, v15];
        [v3 addObject:v11];
      }

      v6 = [(__CFSet *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v12 = [MEMORY[0x277CBEB98] setWithSet:{v3, v15}];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)scheduleWithRunLoop:(__CFRunLoop *)loop mode:(__CFString *)mode
{
  if (!self->_cancelled)
  {
    IOHIDManagerRegisterDeviceMatchingCallback(self->_managerRef, __managerDeviceMatchingCallback, self);
    IOHIDManagerRegisterDeviceRemovalCallback(self->_managerRef, __managerDeviceRemovalCallback, self);
  }

  managerRef = self->_managerRef;

  IOHIDManagerScheduleWithRunLoop(managerRef, loop, mode);
}

@end