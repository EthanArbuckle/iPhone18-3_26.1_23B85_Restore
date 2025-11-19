@interface NETRBCreateNetwork
@end

@implementation NETRBCreateNetwork

void ___NETRBCreateNetwork_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (__NETRBClientValidateClient(_NETRBNetworkClient))
  {
    NETRBErrorLog();
    *(*(*(a1 + 32) + 8) + 24) = 6002;
  }

  else
  {
    v3 = v2 + 16;
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v4, netrbXPCKey, 0x400uLL);
    xpc_dictionary_set_string(v4, netrbXPCClientID, (_NETRBNetworkClient + 32));
    xpc_dictionary_set_value(v4, netrbXPCNetworkObject, *(a1 + 56));
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = ___NETRBCreateNetwork_block_invoke_2;
    v6[3] = &unk_279967A08;
    v7 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
    v5 = *(a1 + 48);
    v8 = v3;
    v9 = v5;
    *(*(*(a1 + 40) + 8) + 24) = NETRBXPCSetupAndSend(0, v4, v6);
    if (v4)
    {
      xpc_release(v4);
    }
  }
}

void ___NETRBCreateNetwork_block_invoke_2(void *a1, xpc_object_t xdict)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!xdict)
  {
    goto LABEL_16;
  }

  if (xpc_dictionary_get_uint64(xdict, netrbXPCResponse) != 2001)
  {
    *(*(a1[5] + 8) + 24) = 1;
    goto LABEL_18;
  }

  uuid = xpc_dictionary_get_uuid(xdict, netrbXPCNetworkAuthorizationToken);
  if (!uuid)
  {
LABEL_18:
    NETRBErrorLog();
    goto LABEL_19;
  }

  *src = *uuid;
  is_null = uuid_is_null((a1[6] + 4));
  v6 = a1[6];
  if (!is_null)
  {
    if (!uuid_compare(src, (v6 + 4)))
    {
      goto LABEL_6;
    }

LABEL_16:
    NETRBErrorLog();
    *(*(a1[4] + 8) + 24) = 0;
    goto LABEL_19;
  }

  uuid_copy((v6 + 4), src);
  *(a1[7] + 152) = 1;
LABEL_6:
  v7 = a1[6];
  if (!*(v7 + 28))
  {
    *(a1[6] + 28) = xpc_dictionary_get_uint64(xdict, netrbXPCStartAddress);
    uint64 = xpc_dictionary_get_uint64(xdict, netrbXPCNetworkMask);
    v7 = a1[6];
    *(v7 + 32) = uint64;
  }

  if (*(v7 + 44) == *MEMORY[0x277D85EE8] && *(v7 + 52) == *(MEMORY[0x277D85EE8] + 8))
  {
    *(a1[6] + 44) = *xpc_dictionary_get_data(xdict, netrbXPCRaPrefix, 0);
    v10 = xpc_dictionary_get_uint64(xdict, netrbXPCRaPrefixLen);
    v7 = a1[6];
    *(v7 + 60) = v10;
  }

  if (!*(v7 + 116))
  {
    *(a1[6] + 116) = xpc_dictionary_get_uint64(xdict, netrbXPCNetworkMtu);
  }

LABEL_19:
  v11 = *MEMORY[0x277D85DE8];
}

@end