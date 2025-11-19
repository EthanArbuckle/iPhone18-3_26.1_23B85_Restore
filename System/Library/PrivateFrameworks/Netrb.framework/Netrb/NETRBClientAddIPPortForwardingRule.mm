@interface NETRBClientAddIPPortForwardingRule
@end

@implementation NETRBClientAddIPPortForwardingRule

void ___NETRBClientAddIPPortForwardingRule_block_invoke(uint64_t a1)
{
  if (__NETRBClientValidateClient(*(a1 + 48)))
  {
    v5 = *(a1 + 48);
    NETRBErrorLog();
  }

  else
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v2, netrbXPCClientID, (*(a1 + 48) + 32));
    xpc_dictionary_set_uint64(v2, netrbXPCKey, 0x3F7uLL);
    PortForwardingRuleDict = netrbMakePortForwardingRuleDict(*(a1 + 76), *(a1 + 72), *(a1 + 77), *(a1 + 56), *(a1 + 74));
    xpc_dictionary_set_value(v2, netrbXPCPortForwardingRule, PortForwardingRuleDict);
    xpc_release(PortForwardingRuleDict);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = ___NETRBClientAddIPPortForwardingRule_block_invoke_2;
    v6[3] = &unk_279967880;
    v4 = *(a1 + 48);
    v6[4] = *(a1 + 32);
    v6[5] = v4;
    NETRBInfoLog();
    *(*(*(a1 + 40) + 8) + 24) = NETRBXPCSetupAndSend(*(a1 + 64), v2, v6);
    xpc_release(v2);
  }
}

void ___NETRBClientAddIPPortForwardingRule_block_invoke_2(uint64_t a1, void *a2)
{
  CFRelease(*(a1 + 40));
  v4 = *(a1 + 32);
  if (v4)
  {
    if (a2)
    {
      LOBYTE(a2) = xpc_dictionary_get_uint64(a2, netrbXPCResponse) == 2001;
      v4 = *(a1 + 32);
    }

    global_queue = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = ___NETRBClientAddIPPortForwardingRule_block_invoke_3;
    v6[3] = &unk_279967858;
    v6[4] = v4;
    v7 = a2;
    dispatch_async(global_queue, v6);
  }
}

@end