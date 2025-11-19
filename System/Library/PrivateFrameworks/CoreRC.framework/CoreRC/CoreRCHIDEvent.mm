@interface CoreRCHIDEvent
- (BOOL)getCECUserControl:(CECUserControl *)a3 pressed:(BOOL *)a4;
- (BOOL)isEqualToRCHIDEvent:(id)a3;
- (BOOL)isRepeat;
- (CoreRCHIDEvent)initWithCECAudioVolumeLevel:(unsigned __int8)a3;
- (CoreRCHIDEvent)initWithCoder:(id)a3;
- (CoreRCHIDEvent)initWithIOHIDEvent:(__IOHIDEvent *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (id)initKeyboardEventWithUsagePage:(unsigned int)a3 usageID:(unsigned int)a4 pressed:(BOOL)a5 timestamp:(unint64_t)a6;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)getCommand:(unint64_t *)a3 pressed:(BOOL *)a4;
@end

@implementation CoreRCHIDEvent

- (void)dealloc
{
  event = self->_event;
  if (event)
  {
    CFRelease(event);
  }

  v4.receiver = self;
  v4.super_class = CoreRCHIDEvent;
  [(CoreRCHIDEvent *)&v4 dealloc];
}

- (CoreRCHIDEvent)initWithIOHIDEvent:(__IOHIDEvent *)a3
{
  v7.receiver = self;
  v7.super_class = CoreRCHIDEvent;
  v4 = [(CoreRCHIDEvent *)&v7 init];
  v5 = v4;
  if (v4)
  {
    if (a3)
    {
      v4->_event = a3;
      CFRetain(a3);
    }

    else
    {

      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"event must not be null"];
      return 0;
    }
  }

  return v5;
}

- (CoreRCHIDEvent)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = CoreRCHIDEvent;
  v4 = [(CoreRCHIDEvent *)&v8 init];
  if (v4)
  {
    [a3 decodeObjectOfClass:objc_opt_class() forKey:@"IOHIDEvent"];
    v5 = *MEMORY[0x277CBECE8];
    v6 = IOHIDEventCreateWithData();
    if (v6)
    {
      v4->_event = v6;
    }

    else
    {

      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"event must not be null"];
      return 0;
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *MEMORY[0x277CBECE8];
  [(CoreRCHIDEvent *)self event];
  Data = IOHIDEventCreateData();
  [a3 encodeObject:Data forKey:@"IOHIDEvent"];
}

- (id)initKeyboardEventWithUsagePage:(unsigned int)a3 usageID:(unsigned int)a4 pressed:(BOOL)a5 timestamp:(unint64_t)a6
{
  v7 = *MEMORY[0x277CBECE8];
  KeyboardEvent = IOHIDEventCreateKeyboardEvent();
  v9 = [(CoreRCHIDEvent *)self initWithIOHIDEvent:KeyboardEvent];
  if (KeyboardEvent)
  {
    CFRelease(KeyboardEvent);
  }

  return v9;
}

- (id)debugDescription
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[CoreRCHIDEvent description](self, "description")}];
  event = self->_event;
  if (event)
  {
    v5 = CFCopyDescription(event);
    [v3 appendFormat:@" IOHIDEvent:\n%@", v5];
  }

  return v3;
}

- (id)description
{
  v17.receiver = self;
  v17.super_class = CoreRCHIDEvent;
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[CoreRCHIDEvent description](&v17, sel_description)}];
  if (self->_event)
  {
    v16 = 0;
    v15 = 0;
    [(CoreRCHIDEvent *)self getCommand:&v16 pressed:&v15];
    if (v16)
    {
      v4 = CoreRCCommandString(v16);
      if (v15)
      {
        v5 = "YES";
      }

      else
      {
        v5 = "NO";
      }

      [v3 appendFormat:@" command: %@; pressed: %s;", v4, v5, v14];
    }

    else if (self->_event && IOHIDEventGetType() == 3)
    {
      event = self->_event;
      IntegerValue = IOHIDEventGetIntegerValue();
      v9 = self->_event;
      v10 = IOHIDEventGetIntegerValue();
      v11 = self->_event;
      v12 = IOHIDEventGetIntegerValue();
      v13 = "YES";
      if (!v12)
      {
        v13 = "NO";
      }

      [v3 appendFormat:@" usagePage: %u; usageID: %u; pressed: %s;", IntegerValue, v10, v13];
    }
  }

  return v3;
}

- (BOOL)isEqualToRCHIDEvent:(id)a3
{
  v4 = [a3 event];
  if (self->_event)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  Type = IOHIDEventGetType();
  if (Type != IOHIDEventGetType())
  {
    return 0;
  }

  event = self->_event;
  if (IOHIDEventGetType() != 3)
  {
    return 0;
  }

  v8 = self->_event;
  IntegerValue = IOHIDEventGetIntegerValue();
  if (IntegerValue != IOHIDEventGetIntegerValue())
  {
    return 0;
  }

  v10 = self->_event;
  v11 = IOHIDEventGetIntegerValue();
  return v11 == IOHIDEventGetIntegerValue();
}

- (BOOL)isRepeat
{
  event = self->_event;
  if (event)
  {
    if (IOHIDEventGetType() == 3)
    {
      v4 = self->_event;
      LOBYTE(event) = IOHIDEventGetIntegerValue() != 0;
    }

    else
    {
      LOBYTE(event) = 0;
    }
  }

  return event;
}

- (void)getCommand:(unint64_t *)a3 pressed:(BOOL *)a4
{
  if (self->_event && IOHIDEventGetType() == 3 && (v7 = self->_event, IntegerValue = IOHIDEventGetIntegerValue(), v9 = self->_event, v10 = IOHIDEventGetIntegerValue(), CoreRCCommandFromHIDUsage(a3, IntegerValue, v10)))
  {
    event = self->_event;
    *a4 = IOHIDEventGetIntegerValue() != 0;
  }

  else
  {
    *a3 = 0;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(CoreRCHIDEvent *)self event];

  return [v4 initWithIOHIDEvent:v5];
}

- (BOOL)getCECUserControl:(CECUserControl *)a3 pressed:(BOOL *)a4
{
  v6 = 0;
  [(CoreRCHIDEvent *)self getCommand:&v6 pressed:a4];
  return CECUserControlForCoreRCCommand(a3, v6);
}

- (CoreRCHIDEvent)initWithCECAudioVolumeLevel:(unsigned __int8)a3
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    objc_opt_class();
    LogPrintF();
  }

  v4 = *MEMORY[0x277CBECE8];
  mach_absolute_time();
  VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
  if (VendorDefinedEvent)
  {
    v6 = VendorDefinedEvent;
    self = [(CoreRCHIDEvent *)self initWithIOHIDEvent:VendorDefinedEvent];
    CFRelease(v6);
  }

  return self;
}

@end