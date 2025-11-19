@interface PFUserXPCInsertRuleResponseHandler
@end

@implementation PFUserXPCInsertRuleResponseHandler

void ____PFUserXPCInsertRuleResponseHandler_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v2)
  {
    uint64 = xpc_dictionary_get_uint64(v2, pfXPCKeyInsertID);
  }

  else
  {
    uint64 = 0;
  }

  (*(v3 + 16))(v3, v4, uint64);
  v6 = *(a1 + 40);
  if (v6)
  {

    xpc_release(v6);
  }
}

@end