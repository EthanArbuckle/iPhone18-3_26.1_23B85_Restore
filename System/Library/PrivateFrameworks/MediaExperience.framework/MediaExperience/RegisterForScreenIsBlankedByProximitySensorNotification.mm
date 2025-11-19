@interface RegisterForScreenIsBlankedByProximitySensorNotification
@end

@implementation RegisterForScreenIsBlankedByProximitySensorNotification

uint64_t __cmsmdevicestate_RegisterForScreenIsBlankedByProximitySensorNotification_block_invoke()
{
  state64 = 0;
  result = notify_get_state(dword_1EB75D35C, &state64);
  if (result)
  {
    v1 = 1;
  }

  else
  {
    v1 = state64 == 0;
  }

  v2 = !v1;
  byte_1EB75D358 = v2;
  return result;
}

@end