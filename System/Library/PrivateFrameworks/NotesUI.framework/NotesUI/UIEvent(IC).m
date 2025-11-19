@interface UIEvent(IC)
- (const)ic_isPencilEvent;
@end

@implementation UIEvent(IC)

- (const)ic_isPencilEvent
{
  result = [a1 _hidEvent];
  if (result)
  {
    result = IOHIDEventGetChildren();
    if (result)
    {
      v2 = result;
      if (CFArrayGetCount(result) && (CFArrayGetValueAtIndex(v2, 0), IOHIDEventGetType() == 11))
      {
        return (IOHIDEventGetIntegerValue() == 0);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

@end