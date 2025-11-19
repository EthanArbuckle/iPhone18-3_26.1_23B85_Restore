@interface GTSharedMemoryTransport
@end

@implementation GTSharedMemoryTransport

uint64_t __34__GTSharedMemoryTransport_connect__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[52] != 1)
  {
    v8 = [v2 connected];
    v9 = *(a1 + 32);
    if (v8 && (*(v9 + 304) & 1) == 0)
    {
      v3 = MEMORY[0x277CCABB0];
      v4 = 1;
      goto LABEL_3;
    }

    v14 = 0;
    if (*(v9 + 300) == 2)
    {
      if (([v9 _serverConnect:&v14] & 1) == 0)
      {
        v10 = *(a1 + 32);
LABEL_16:
        [v10 _tearDownSharedMemory];
        v11 = 0;
        goto LABEL_17;
      }
    }

    else if (([v9 _clientConnect:&v14] & 1) == 0)
    {
      v10 = *(a1 + 32);
      if (v10[304] != 1)
      {
        goto LABEL_16;
      }

      v14 = 0;
      global_queue = dispatch_get_global_queue(0, 0);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __34__GTSharedMemoryTransport_connect__block_invoke_2;
      v13[3] = &unk_279657CF8;
      v13[4] = v10;
      dispatch_async(global_queue, v13);
      v10 = *(a1 + 32);
      if ((v10[304] & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v11 = 1;
LABEL_17:
    [*(a1 + 40) setError:v14];
    return [*(a1 + 40) setResult:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", v11)}];
  }

  [*(a1 + 40) setError:{+[GTError_replayer errorWithDomain:code:userInfo:](GTError_replayer, "errorWithDomain:code:userInfo:", @"DYErrorDomain", 32, 0)}];
  v3 = MEMORY[0x277CCABB0];
  v4 = 0;
LABEL_3:
  v5 = [v3 numberWithBool:v4];
  v6 = *(a1 + 40);

  return [v6 setResult:v5];
}

unint64_t __34__GTSharedMemoryTransport_connect__block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) _clientConnect:0] & 1) == 0)
  {
    do
    {
      usleep(0x3D090u);
    }

    while (![*(a1 + 32) _clientConnect:0]);
  }

  *(*(a1 + 32) + 304) = 0;
  result = [*(*(a1 + 32) + 312) count];
  if (result)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = [*(*(a1 + 32) + 312) objectAtIndex:v3];
      v6 = *(a1 + 32);
      v7 = [v5 message];
      v8 = [v5 replyTo];
      v9 = [v5 queue];
      v10 = [v5 timeout];
      v11 = [v5 replyBlock];
      v13.receiver = v6;
      v13.super_class = GTSharedMemoryTransport_replayer;
      objc_msgSendSuper2(&v13, sel_send_inReplyTo_error_replyQueue_timeout_handler_, v7, v8, 0, v9, v10, v11);
      v3 = v4;
      result = [*(*(a1 + 32) + 312) count];
    }

    while (result > v4++);
  }

  return result;
}

uint64_t __48__GTSharedMemoryTransport__createAndRunSources___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 52) == 1)
  {
    *(*(*(*(result + 40) + 8) + 40) + 24) = 1;
  }

  else
  {
    v2 = atomic_load((v1 + 48));
    atomic_store(v2, *(*(result + 32) + 232));
    return [*(result + 32) _dequeueIncomingMessages];
  }

  return result;
}

uint64_t __45__GTSharedMemoryTransport_setRelayTransport___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 272);
  if (v1 != *(result + 40))
  {
    v2 = result;

    *(*(v2 + 32) + 272) = *(v2 + 40);
    v3 = *(v2 + 32);
    v4 = *(v3 + 272);
    v5 = (v3 + 288);
    if (v4)
    {
      v6 = sel__relayPacket;
    }

    else
    {
      v6 = sel__accumulateMessageBytes;
    }

    *v5 = v6;
    v7 = *(v2 + 32);
    if (v7[36])
    {
      v8 = v7[36];
    }

    else
    {
      v8 = 0;
    }

    result = [v7 methodForSelector:v8];
    *(*(v2 + 32) + 280) = result;
    if (!*(*(v2 + 32) + 280))
    {
      __assert_rtn("[GTSharedMemoryTransport setRelayTransport:]_block_invoke", ", 0, "_consumeBytesIMP"");
    }
  }

  return result;
}

uint64_t __34__GTSharedMemoryTransport_setUrl___block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if (*(result + 32) != v1)
  {
    v2 = result;

    *(*(v2 + 40) + 8) = *(v2 + 32);
    result = [objc_msgSend(*(*(v2 + 40) + 8) "scheme")];
    v3 = *(v2 + 40);
    if (result)
    {
      v4 = *(v3 + 300) != 2;
    }

    else
    {
      v4 = 0;
    }

    *(v3 + 304) = v4;
  }

  return result;
}

@end