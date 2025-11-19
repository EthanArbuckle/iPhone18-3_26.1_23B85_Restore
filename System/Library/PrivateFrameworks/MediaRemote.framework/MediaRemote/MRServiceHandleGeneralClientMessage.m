@interface MRServiceHandleGeneralClientMessage
@end

@implementation MRServiceHandleGeneralClientMessage

void ___MRServiceHandleGeneralClientMessage_block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  if (v3)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    v5 = reply;
    if (reply)
    {
      MRAddProtobufToXPCMessage(reply, v6);
      xpc_connection_send_message(v3, v5);
    }
  }
}

@end