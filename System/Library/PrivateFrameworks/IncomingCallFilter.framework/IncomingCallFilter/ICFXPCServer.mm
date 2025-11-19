@interface ICFXPCServer
@end

@implementation ICFXPCServer

void ____ICFXPCServer_peer_event_handler_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  IMInsertBoolsToXPCDictionary();
  v3 = *(a1 + 32);
  IMInsertBoolsToXPCDictionary();
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  v4 = *(a1 + 32);

  xpc_release(v4);
}

@end