@interface NSValue
- (_MRHIDTouchEvent)MRHIDTouchEventValue;
@end

@implementation NSValue

- (_MRHIDTouchEvent)MRHIDTouchEventValue
{
  *&retstr->var0.var0.var0 = 0u;
  *&retstr->var2 = 0u;
  result = strcmp([(NSValue *)self objCType], "{_MRHIDTouchEvent=(_MRHIDPoint={?=ff}[2f])IQI}");
  if (!result)
  {

    return [(NSValue *)self getValue:retstr];
  }

  return result;
}

@end