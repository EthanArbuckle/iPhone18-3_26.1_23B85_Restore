@interface MRDHIDEventManager
- (void)_dispatchKeypressEventWithUsagePage:(unsigned int)page usage:(unsigned int)usage;
- (void)dispatchKeypressEvent:(unint64_t)event;
- (void)dispatchUnicodeEventWithText:(id)text;
@end

@implementation MRDHIDEventManager

- (void)dispatchKeypressEvent:(unint64_t)event
{
  if (event - 1 <= 2)
  {
    [(MRDHIDEventManager *)self _dispatchKeypressEventWithUsagePage:7 usage:dword_10044E7E0[event - 1]];
  }
}

- (void)dispatchUnicodeEventWithText:(id)text
{
  textCopy = text;
  mach_absolute_time();
  v7 = [textCopy dataUsingEncoding:4];

  v5 = v7;
  [v7 bytes];
  [v7 length];
  UnicodeEvent = IOHIDEventCreateUnicodeEvent();
  [(MRDHIDEventManager *)self dispatchHIDEvent:UnicodeEvent];
  CFRelease(UnicodeEvent);
}

- (void)_dispatchKeypressEventWithUsagePage:(unsigned int)page usage:(unsigned int)usage
{
  mach_absolute_time();
  KeyboardEvent = IOHIDEventCreateKeyboardEvent();
  [(MRDHIDEventManager *)self dispatchHIDEvent:KeyboardEvent];
  CFRelease(KeyboardEvent);
  mach_absolute_time();
  v6 = IOHIDEventCreateKeyboardEvent();
  [(MRDHIDEventManager *)self dispatchHIDEvent:v6];

  CFRelease(v6);
}

@end