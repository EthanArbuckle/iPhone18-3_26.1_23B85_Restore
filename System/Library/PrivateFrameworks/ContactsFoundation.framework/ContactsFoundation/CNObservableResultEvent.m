@interface CNObservableResultEvent
@end

@implementation CNObservableResultEvent

BOOL __36___CNObservableResultEvent_isEqual___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) value];
  v3 = [*(a1 + 40) value];
  v4 = [CNEqualsBuilder isObject:v2 equalToOther:v3];

  return v4;
}

unint64_t __32___CNObservableResultEvent_hash__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) value];
  v2 = [CNHashBuilder objectHash:v1];

  return v2;
}

@end