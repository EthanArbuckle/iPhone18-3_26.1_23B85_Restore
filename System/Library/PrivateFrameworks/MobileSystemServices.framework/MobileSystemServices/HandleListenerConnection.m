@interface HandleListenerConnection
@end

@implementation HandleListenerConnection

uint64_t ___HandleListenerConnection_block_invoke(void *a1)
{
  v2 = a1[6];
  result = (*(*(a1[5] + 48) + 16))();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void ___HandleListenerConnection_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = MEMORY[0x25F84B870](a2);
  if (v11 == MEMORY[0x277D86468])
  {
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);

    _HandleIncomingMessage(v17, v18, a2, v12, v13, v14, v15, v16, a9);
  }

  else if (v11 == MEMORY[0x277D86480])
  {
    v19 = *(a1 + 40);
    string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
    if (a2 == MEMORY[0x277D863F8])
    {
      context = xpc_connection_get_context(v19);
      if (context)
      {
        xpc_release(context);
        xpc_connection_set_context(v19, 0);
      }

      MEMORY[0x25F84B8B0]();
      xpc_connection_cancel(v19);

      xpc_release(v19);
    }

    else
    {
      MOLogWrite(0, 3, "_HandleClientError", @"client connection error: %s", v21, v22, v23, v24, string);
    }
  }

  else
  {

    MOLogWrite(0, 3, "_HandleListenerConnection_block_invoke_2", @"ignoring unknown event type from client", v13, v14, v15, v16, a9);
  }
}

@end