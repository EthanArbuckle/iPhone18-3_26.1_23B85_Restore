@interface PFUserXPCNatLookResponseHandler
@end

@implementation PFUserXPCNatLookResponseHandler

void ____PFUserXPCNatLookResponseHandler_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v2)
  {
    value = xpc_dictionary_get_value(v2, pfXPCKeyRule);
  }

  else
  {
    value = 0;
  }

  (*(v3 + 16))(v3, v4, value);
  v6 = *(a1 + 40);
  if (v6)
  {

    xpc_release(v6);
  }
}

@end