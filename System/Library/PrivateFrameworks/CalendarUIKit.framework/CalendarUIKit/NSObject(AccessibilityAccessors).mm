@interface NSObject(AccessibilityAccessors)
+ (id)_accessibilityStringForDate:()AccessibilityAccessors;
@end

@implementation NSObject(AccessibilityAccessors)

+ (id)_accessibilityStringForDate:()AccessibilityAccessors
{
  v6 = CalCopyTimeZone();
  v7 = MEMORY[0x1CCAA8570](a3, a4, v6);
  CFRelease(v6);
  v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v7];
  v9 = CUIKStringForDate(v8, 1);

  return v9;
}

@end