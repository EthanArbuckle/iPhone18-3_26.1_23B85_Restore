@interface MRServiceHandleNowPlayingPlaybackQueueRequest
@end

@implementation MRServiceHandleNowPlayingPlaybackQueueRequest

void ___MRServiceHandleNowPlayingPlaybackQueueRequest_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  if (v6)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    v8 = reply;
    if (reply)
    {
      MRAddPlaybackQueueToXPCMessage(reply, v9);
      MRAddClientErrorToXPCMessage(v8, v5);
      xpc_connection_send_message(v6, v8);
    }
  }
}

@end