@interface NSNumber(EFSQLBindable)
- (id)ef_SQLBinding;
@end

@implementation NSNumber(EFSQLBindable)

- (id)ef_SQLBinding
{
  Type = CFNumberGetType(a1);
  if (Type > kCFNumberCGFloatType || ((1 << Type) & 0x13060) == 0)
  {
    [EFSQLBinding bindingWithInt64:[(__CFNumber *)a1 longLongValue]];
  }

  else
  {
    [(__CFNumber *)a1 doubleValue];
    [EFSQLBinding bindingWithDouble:?];
  }
  v4 = ;

  return v4;
}

@end