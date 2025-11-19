@interface PFUserInsertRule
@end

@implementation PFUserInsertRule

void __PFUserInsertRule_S_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = PFManagerCheckUserExists(*(a1 + 48));
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    PFManagerInfoLog();
    *(*(*(a1 + 32) + 8) + 24) = PFManagerSendMessage(*(a1 + 56), *(*(a1 + 48) + 24), *(*(a1 + 48) + 32), 1001, *(a1 + 64), 0);
    if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      v2 = PFXPCGetResponse();
      *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_uint64(v2, pfXPCKeyInsertID);
      v3 = PFXPCGetResponse();

      xpc_release(v3);
    }
  }

  else
  {

    PFManagerErrorLog();
  }
}

@end