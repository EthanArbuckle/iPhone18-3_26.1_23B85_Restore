@interface NETRBClientGetHostCount
@end

@implementation NETRBClientGetHostCount

void ___NETRBClientGetHostCount_block_invoke(uint64_t a1)
{
  if (__NETRBClientValidateClient(*(a1 + 64)))
  {
    v5 = *(a1 + 64);
LABEL_3:
    NETRBErrorLog();
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, netrbXPCKey, 0x3F2uLL);
  xpc_dictionary_set_string(v3, netrbXPCClientID, (*(a1 + 64) + 32));
  v6 = *(a1 + 64);
  NETRBInfoLog();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = ___NETRBClientGetHostCount_block_invoke_2;
  v7[3] = &unk_279967770;
  v4 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = v4;
  *(*(*(a1 + 32) + 8) + 24) = NETRBXPCSetupAndSend(0, v3, v7);
  xpc_release(v3);
}

uint64_t ___NETRBClientGetHostCount_block_invoke_2(void *a1, void *a2)
{
  v5 = a1[7];
  result = NETRBInfoLog();
  if (a2)
  {
    result = xpc_dictionary_get_uint64(a2, netrbXPCResponse);
    *(*(a1[4] + 8) + 24) = result;
    if (*(*(a1[4] + 8) + 24) == 2001)
    {
      *(*(a1[5] + 8) + 24) = xpc_dictionary_get_uint64(a2, netrbXPCMaxHosts);
      result = xpc_dictionary_get_uint64(a2, netrbXPCCurrentHosts);
      *(*(a1[6] + 8) + 24) = result;
    }
  }

  return result;
}

@end