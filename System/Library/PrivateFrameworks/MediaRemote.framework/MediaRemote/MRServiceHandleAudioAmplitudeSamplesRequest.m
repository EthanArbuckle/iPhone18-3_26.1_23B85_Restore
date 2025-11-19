@interface MRServiceHandleAudioAmplitudeSamplesRequest
@end

@implementation MRServiceHandleAudioAmplitudeSamplesRequest

void ___MRServiceHandleAudioAmplitudeSamplesRequest_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  if (v6)
  {
    connection = v6;
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    if (reply)
    {
      if (a2)
      {
        v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:a2 format:200 options:0 error:0];
        xpc_dictionary_set_data(reply, "MRXPC_AUDIO_AMPLITUDE_ARRAY_DATA_KEY", [v8 bytes], objc_msgSend(v8, "length"));
      }

      MRAddClientErrorToXPCMessage(reply, a3);
      xpc_connection_send_message(connection, reply);
    }

    v6 = connection;
  }
}

@end