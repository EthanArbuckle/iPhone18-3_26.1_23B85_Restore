@interface RegisterForScreenIsBlankedNotification
@end

@implementation RegisterForScreenIsBlankedNotification

uint64_t __cmsmdevicestate_RegisterForScreenIsBlankedNotification_block_invoke()
{
  v0 = byte_1EB75D340;
  state64 = 0;
  result = notify_get_state(dword_1EB75D344, &state64);
  if (result)
  {
    v2 = 1;
  }

  else
  {
    v2 = state64 == 0;
  }

  v3 = !v2;
  byte_1EB75D340 = v3;
  if (off_1EB75D350)
  {
    return (off_1EB75D350)(v0);
  }

  return result;
}

@end