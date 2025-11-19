@interface DalvikSystemBlockGuard_$2
- (id)initialValue;
@end

@implementation DalvikSystemBlockGuard_$2

- (id)initialValue
{
  if ((atomic_load_explicit(DalvikSystemBlockGuard__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001FFF44();
  }

  return DalvikSystemBlockGuard_LAX_POLICY_;
}

@end