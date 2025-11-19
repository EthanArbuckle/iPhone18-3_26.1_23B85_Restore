@interface MRServiceHandlePostNotification
@end

@implementation MRServiceHandlePostNotification

void ___MRServiceHandlePostNotification_block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  if (v2)
  {
    connection = v2;
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    if (reply)
    {
      xpc_connection_send_message(connection, reply);
    }

    v2 = connection;
  }
}

@end