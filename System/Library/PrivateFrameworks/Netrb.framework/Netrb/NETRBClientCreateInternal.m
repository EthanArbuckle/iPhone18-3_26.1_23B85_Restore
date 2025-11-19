@interface NETRBClientCreateInternal
@end

@implementation NETRBClientCreateInternal

void ___NETRBClientCreateInternal_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = __netrbClientList;
  if (!__netrbClientList)
  {
    v7 = *(a1 + 56);
    v6 = *(a1 + 64);
    __netrbClientList = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
    if (!__netrbClientList)
    {
      v8 = __error();
      strerror(*v8);
      goto LABEL_12;
    }

    if (NETRBXPCCreate(v7, v6))
    {
      if (NETRBXPCEndPointCreate(v6))
      {
        v3 = __netrbClientList;
        goto LABEL_2;
      }

      NETRBErrorLog();
      NETRBXPCCleanup();
    }

    else
    {
      NETRBErrorLog();
    }

    CFRelease(__netrbClientList);
    __netrbClientList = 0;
    goto LABEL_16;
  }

LABEL_2:
  CFArrayAppendValue(v3, v2);
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v4 = xpc_dictionary_create(0, 0, 0);
  if (!v4)
  {
    __NETRBClientRemoveFromList(*(a1 + 48));
LABEL_12:
    NETRBErrorLog();
LABEL_16:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return;
  }

  v5 = v4;
  xpc_dictionary_set_uint64(v4, netrbXPCKey, 0x3E8uLL);
  v9 = *(a1 + 48);
  NETRBInfoLog();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 0x40000000;
  v10[2] = ___NETRBClientCreateInternal_block_invoke_2;
  v10[3] = &unk_279967398;
  v11 = *(a1 + 40);
  v12 = *(a1 + 72);
  *(*(*(a1 + 32) + 8) + 24) = NETRBXPCSetupAndSend(0, v5, v10);
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    __NETRBClientRemoveFromList(*(a1 + 48));
  }

  xpc_release(v5);
}

void ___NETRBClientCreateInternal_block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *(a1 + 40);
  NETRBInfoLog();
  if (!a2)
  {
    goto LABEL_6;
  }

  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(a2, netrbXPCResponse);
  if (*(a1 + 48))
  {
    **(a1 + 48) = xpc_dictionary_get_uint64(a2, netrbXPCErrorCode);
  }

  if (*(*(*(a1 + 32) + 8) + 24) != 2001 || (v4 = *(a1 + 40), string = xpc_dictionary_get_string(a2, netrbXPCClientID), snprintf((v4 + 32), 0x100uLL, "%s", string), *(*(a1 + 40) + 288) = 1, *(*(*(a1 + 32) + 8) + 24) != 2001))
  {
LABEL_6:
    v6 = *(a1 + 40);

    __NETRBClientRemoveFromList(v6);
  }
}

@end