@interface PlayerLoadForService
@end

@implementation PlayerLoadForService

void __mt_PlayerLoadForService_block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D85F48];
  MEMORY[0x25F855340](*(*(a1 + 32) + 112), 32, *MEMORY[0x277D85F48], *(a1 + 40));
  mach_port_mod_refs(*v2, *(a1 + 48), 1u, -1);
  v3 = *(*(a1 + 32) + 32);

  dispatch_group_leave(v3);
}

uint64_t __mt_PlayerLoadForService_block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!dispatch_source_testcancel(*(*(a1 + 32) + 128)) && !IODataQueueWaitForAvailableData(*(a1 + 40), *(a1 + 48)) && IODataQueueDataAvailable(*(a1 + 40)))
  {
    v15 = 528;
    MEMORY[0x28223BE20]();
    memset(v14, 170, 0x210uLL);
    result = IODataQueueDequeue(*(a1 + 40), v14, &v15);
    if (result)
    {
LABEL_17:
      v13 = *MEMORY[0x277D85DE8];
      return result;
    }

    v4 = -536870201;
    v5 = bswap32(v14[0]);
    v6 = bswap32(v14[2]);
    v16 = v5;
    v18 = v6;
    v7 = bswap32(v14[131]);
    v20 = v7;
    memcpy(v19, &v14[3], sizeof(v19));
    v17 = -536870201;
    if (v5 == 1)
    {
      v11 = *(a1 + 32);
      v12 = *(v11 + 200);
      if (!v12)
      {
        goto LABEL_15;
      }

      v10 = v12(v11, v6, v19, v7, *(v11 + 192));
    }

    else
    {
      if (v5 || (v8 = *(a1 + 32), (v9 = *(v8 + 184)) == 0))
      {
LABEL_15:
        v16 = bswap32(v16);
        v17 = bswap32(v4);
        v18 = bswap32(v18);
        v20 = bswap32(v20);
        result = IOConnectCallStructMethod(*(*(a1 + 32) + 112), 1u, &v16, 0x210uLL, 0, 0);
        if (result)
        {
          result = printf("error 0x%08X handling control request\n", result);
        }

        goto LABEL_17;
      }

      v10 = v9(v8, v6, v19, v7, &v20, *(v8 + 192));
    }

    v4 = v10;
    goto LABEL_15;
  }

  v2 = *MEMORY[0x277D85DE8];

  return puts("unable to handle control requests");
}

@end