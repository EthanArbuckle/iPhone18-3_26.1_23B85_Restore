@interface CNObservableFailureEvent
@end

@implementation CNObservableFailureEvent

BOOL __37___CNObservableFailureEvent_isEqual___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) error];
  v3 = [*(a1 + 40) error];
  v4 = [CNEqualsBuilder isObject:v2 equalToOther:v3];

  return v4;
}

unint64_t __33___CNObservableFailureEvent_hash__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) error];
  v2 = [CNHashBuilder objectHash:v1];

  return v2;
}

@end