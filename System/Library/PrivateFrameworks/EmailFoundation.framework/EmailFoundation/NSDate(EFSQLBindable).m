@interface NSDate(EFSQLBindable)
- (EFSQLBinding)ef_SQLBinding;
@end

@implementation NSDate(EFSQLBindable)

- (EFSQLBinding)ef_SQLBinding
{
  [a1 timeIntervalSince1970];
  v2 = vcvtmd_s64_f64(v1);

  return [EFSQLBinding bindingWithInt64:v2];
}

@end