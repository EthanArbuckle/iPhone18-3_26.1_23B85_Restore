@interface NETRBClientNewInterface
@end

@implementation NETRBClientNewInterface

_BYTE *___NETRBClientNewInterface_block_invoke(uint64_t a1)
{
  if (__NETRBClientValidateClient(*(a1 + 48)))
  {
    v9 = *(a1 + 48);
    return NETRBErrorLog();
  }

  else if (*(*(a1 + 48) + 545) == 1)
  {

    return NETRBErrorLog();
  }

  else
  {
    NETRBDebugLog();
    xpc_dictionary_set_uint64(*(*(*(a1 + 32) + 8) + 24), netrbXPCKey, 0x3F6uLL);
    xpc_dictionary_set_uint64(*(*(*(a1 + 32) + 8) + 24), netrbXPCOpMode, *(a1 + 80));
    v3 = *(a1 + 56);
    if (v3)
    {
      xpc_dictionary_set_string(*(*(*(a1 + 32) + 8) + 24), netrbXPCExtName, v3);
    }

    xpc_dictionary_set_string(*(*(*(a1 + 32) + 8) + 24), netrbXPCClientID, (*(a1 + 48) + 32));
    if (*(a1 + 88) == 1)
    {
      if (!uuid_is_null(*(a1 + 64)))
      {
        xpc_dictionary_set_uuid(*(*(*(a1 + 32) + 8) + 24), netrbXPCMACUUID, *(a1 + 64));
      }
    }

    else
    {
      xpc_dictionary_set_BOOL(*(*(*(a1 + 32) + 8) + 24), netrbXPCAllocateMACAddress, 0);
    }

    if (*(a1 + 89) == 1)
    {
      xpc_dictionary_set_BOOL(*(*(*(a1 + 32) + 8) + 24), netrbXPCEnableTSO, 1);
    }

    if (*(a1 + 90) == 1)
    {
      xpc_dictionary_set_BOOL(*(*(*(a1 + 32) + 8) + 24), netrbXPCEnableVirtIOHeader, 1);
    }

    if (*(a1 + 91) == 1)
    {
      xpc_dictionary_set_BOOL(*(*(*(a1 + 32) + 8) + 24), netrbXPCEnableMACNAT, 1);
    }

    if (*(a1 + 92) == 1)
    {
      xpc_dictionary_set_BOOL(*(*(*(a1 + 32) + 8) + 24), netrbXPCEnableIsolation, 1);
    }

    if (*(a1 + 93) == 1)
    {
      xpc_dictionary_set_BOOL(*(*(*(a1 + 32) + 8) + 24), netrbXPCEnableChecksumOffload, 1);
    }

    v4 = *(a1 + 84);
    if (v4)
    {
      xpc_dictionary_set_uint64(*(*(*(a1 + 32) + 8) + 24), netrbXPCInterfaceMTU, v4);
    }

    *(a1 + 89);
    *(a1 + 92);
    *(a1 + 93);
    *(a1 + 91);
    v10 = *(a1 + 48);
    NETRBInfoLog();
    v5 = *(a1 + 48);
    *(v5 + 545) = 1;
    v6 = *(a1 + 72);
    v7 = *(*(*(a1 + 32) + 8) + 24);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 0x40000000;
    v11[2] = ___NETRBClientNewInterface_block_invoke_2;
    v11[3] = &__block_descriptor_tmp_160;
    v11[4] = v5;
    v8 = NETRBXPCSetupAndSend(v6, v7, v11);
    result = *(a1 + 48);
    *(*(*(a1 + 40) + 8) + 24) = v8;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      return CFRetain(result);
    }

    else
    {
      result[545] = 0;
    }
  }

  return result;
}

@end