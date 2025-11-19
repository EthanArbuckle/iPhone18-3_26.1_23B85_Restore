@interface MRServiceHandleGetContentItemsForIdentifiers
@end

@implementation MRServiceHandleGetContentItemsForIdentifiers

void ___MRServiceHandleGetContentItemsForIdentifiers_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  if (v6)
  {
    connection = v6;
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    v8 = reply;
    if (reply)
    {
      MRAddContentItemsToXPCMessage(reply, a2);
      MRAddClientErrorToXPCMessage(v8, a3);
      xpc_connection_send_message(connection, v8);
    }

    v6 = connection;
  }
}

@end