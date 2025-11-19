@interface PFUserCopyRules
@end

@implementation PFUserCopyRules

void __PFUserCopyRules_S_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = PFManagerCheckUserExists(*(a1 + 48));
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = *(a1 + 48);
    PFManagerInfoLog();
    *(*(*(a1 + 32) + 8) + 24) = PFManagerSendMessage(0, *(*(a1 + 48) + 24), *(*(a1 + 48) + 32), 1005, 0xFFFFFFFFuLL, 0);
    if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      v2 = PFXPCGetResponse();
      value = xpc_dictionary_get_value(v2, pfXPCKeyRuleArray);
      if (value)
      {
        *(*(*(a1 + 40) + 8) + 24) = xpc_copy(value);
      }

      v4 = PFXPCGetResponse();

      xpc_release(v4);
    }
  }

  else
  {

    PFManagerErrorLog();
  }
}

@end