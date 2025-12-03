@interface CoreRCHIDEvent
- (BOOL)getCECUserControl:(CECUserControl *)control pressed:(BOOL *)pressed;
- (BOOL)isEqualToRCHIDEvent:(id)event;
- (BOOL)isRepeat;
- (CoreRCHIDEvent)initWithCECAudioVolumeLevel:(unsigned __int8)level;
- (CoreRCHIDEvent)initWithCoder:(id)coder;
- (CoreRCHIDEvent)initWithIOHIDEvent:(__IOHIDEvent *)event;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)initKeyboardEventWithUsagePage:(unsigned int)page usageID:(unsigned int)d pressed:(BOOL)pressed timestamp:(unint64_t)timestamp;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)getCommand:(unint64_t *)command pressed:(BOOL *)pressed;
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

- (CoreRCHIDEvent)initWithIOHIDEvent:(__IOHIDEvent *)event
{
  v7.receiver = self;
  v7.super_class = CoreRCHIDEvent;
  v4 = [(CoreRCHIDEvent *)&v7 init];
  v5 = v4;
  if (v4)
  {
    if (event)
    {
      v4->_event = event;
      CFRetain(event);
    }

    else
    {

      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"event must not be null"];
      return 0;
    }
  }

  return v5;
}

- (CoreRCHIDEvent)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CoreRCHIDEvent;
  v4 = [(CoreRCHIDEvent *)&v8 init];
  if (v4)
  {
    [coder decodeObjectOfClass:objc_opt_class() forKey:@"IOHIDEvent"];
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

- (void)encodeWithCoder:(id)coder
{
  v4 = *MEMORY[0x277CBECE8];
  [(CoreRCHIDEvent *)self event];
  Data = IOHIDEventCreateData();
  [coder encodeObject:Data forKey:@"IOHIDEvent"];
}

- (id)initKeyboardEventWithUsagePage:(unsigned int)page usageID:(unsigned int)d pressed:(BOOL)pressed timestamp:(unint64_t)timestamp
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

- (BOOL)isEqualToRCHIDEvent:(id)event
{
  event = [event event];
  if (self->_event)
  {
    v5 = event == 0;
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

- (void)getCommand:(unint64_t *)command pressed:(BOOL *)pressed
{
  if (self->_event && IOHIDEventGetType() == 3 && (v7 = self->_event, IntegerValue = IOHIDEventGetIntegerValue(), v9 = self->_event, v10 = IOHIDEventGetIntegerValue(), CoreRCCommandFromHIDUsage(command, IntegerValue, v10)))
  {
    event = self->_event;
    *pressed = IOHIDEventGetIntegerValue() != 0;
  }

  else
  {
    *command = 0;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  event = [(CoreRCHIDEvent *)self event];

  return [v4 initWithIOHIDEvent:event];
}

- (BOOL)getCECUserControl:(CECUserControl *)control pressed:(BOOL *)pressed
{
  v6 = 0;
  [(CoreRCHIDEvent *)self getCommand:&v6 pressed:pressed];
  return CECUserControlForCoreRCCommand(control, v6);
}

- (CoreRCHIDEvent)initWithCECAudioVolumeLevel:(unsigned __int8)level
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