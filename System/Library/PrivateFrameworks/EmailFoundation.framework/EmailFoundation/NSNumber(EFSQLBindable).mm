@interface NSNumber(EFSQLBindable)
- (id)ef_SQLBinding;
@end

@implementation NSNumber(EFSQLBindable)

- (id)ef_SQLBinding
{
  Type = CFNumberGetType(self);
  if (Type > kCFNumberCGFloatType || ((1 << Type) & 0x13060) == 0)
  {
    [EFSQLBinding bindingWithInt64:[(__CFNumber *)self longLongValue]];
  }

  else
  {
    [(__CFNumber *)self doubleValue];
    [EFSQLBinding bindingWithDouble:?];
  }
  v4 = ;

  return v4;
}

@end