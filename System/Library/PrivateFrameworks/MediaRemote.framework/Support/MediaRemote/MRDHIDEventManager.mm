@interface MRDHIDEventManager
- (void)_dispatchKeypressEventWithUsagePage:(unsigned int)a3 usage:(unsigned int)a4;
- (void)dispatchKeypressEvent:(unint64_t)a3;
- (void)dispatchUnicodeEventWithText:(id)a3;
@end

@implementation MRDHIDEventManager

- (void)dispatchKeypressEvent:(unint64_t)a3
{
  if (a3 - 1 <= 2)
  {
    [(MRDHIDEventManager *)self _dispatchKeypressEventWithUsagePage:7 usage:dword_10044E7E0[a3 - 1]];
  }
}

- (void)dispatchUnicodeEventWithText:(id)a3
{
  v4 = a3;
  mach_absolute_time();
  v7 = [v4 dataUsingEncoding:4];

  v5 = v7;
  [v7 bytes];
  [v7 length];
  UnicodeEvent = IOHIDEventCreateUnicodeEvent();
  [(MRDHIDEventManager *)self dispatchHIDEvent:UnicodeEvent];
  CFRelease(UnicodeEvent);
}

- (void)_dispatchKeypressEventWithUsagePage:(unsigned int)a3 usage:(unsigned int)a4
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