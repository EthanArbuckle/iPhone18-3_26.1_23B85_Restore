@interface NotifyObserversWithContentProtectionState
@end

@implementation NotifyObserversWithContentProtectionState

uint64_t ___NotifyObserversWithContentProtectionState_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observer];
  v3 = *(a1 + 40);
  v4 = *(a1 + 44);

  return [v2 contentProtectionStateChanged:v3 previousState:v4];
}

@end