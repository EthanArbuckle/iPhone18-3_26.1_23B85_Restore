@interface NETRBClientDestroy
@end

@implementation NETRBClientDestroy

void ___NETRBClientDestroy_block_invoke(uint64_t a1)
{
  if (__NETRBClientValidateClient(*(a1 + 48)))
  {
    v4 = *(a1 + 48);
    NETRBErrorLog();
LABEL_3:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return;
  }

  *(*(a1 + 48) + 288) = 0;
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    NETRBErrorLog();
    __NETRBClientRemoveFromList(*(a1 + 48));
    CFRelease(*(a1 + 48));
    goto LABEL_3;
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, netrbXPCKey, 0x3F4uLL);
  xpc_dictionary_set_string(v3, netrbXPCClientID, (*(a1 + 48) + 32));
  v5 = *(a1 + 48);
  NETRBInfoLog();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = ___NETRBClientDestroy_block_invoke_2;
  v6[3] = &unk_2799673E8;
  v7 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = NETRBXPCSetupAndSend(0, v3, v6);
  xpc_release(v3);
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    __NETRBClientRemoveFromList(*(a1 + 48));
    CFRelease(*(a1 + 48));
  }
}

void ___NETRBClientDestroy_block_invoke_2(uint64_t a1, void *a2)
{
  v5 = *(a1 + 40);
  NETRBInfoLog();
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(a2, netrbXPCResponse);
  }

  __NETRBClientRemoveFromList(*(a1 + 40));
  v4 = *(a1 + 40);

  CFRelease(v4);
}

@end