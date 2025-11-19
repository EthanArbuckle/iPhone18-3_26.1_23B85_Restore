@interface GTTransport
@end

@implementation GTTransport

void __34__GTTransport_relayMessage_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    dispatch_resume(*(*(a1 + 32) + 24));
  }

  if ((*(*(a1 + 32) + 52) & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    [*(a1 + 32) _sendMessage:*(a1 + 40) error:0];

    objc_autoreleasePoolPop(v2);
  }
}

void __63__GTTransport_send_inReplyTo_error_replyQueue_timeout_handler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 60) == 1)
  {
    dispatch_resume(*(*(a1 + 32) + 24));
  }

  if (*(*(a1 + 32) + 52) == 1)
  {
    v9 = objc_autoreleasePoolPush();
    [*(a1 + 40) dispatchError:{+[GTError_replayer errorWithDomain:code:userInfo:](GTError_replayer, "errorWithDomain:code:userInfo:", @"DYErrorDomain", 32, 0)}];
    objc_autoreleasePoolPop(v9);
    atomic_fetch_add((*(a1 + 32) + 48), 0xFFFFFFFF);
    v10 = *(a1 + 48);

    [v10 setEncodedAttributes:0];
  }

  else
  {
    v13 = 0;
    v2 = objc_autoreleasePoolPush();
    if (*(a1 + 40))
    {
      v3 = &v13;
    }

    else
    {
      v3 = 0;
    }

    v4 = [*(a1 + 32) _sendMessage:*(a1 + 48) error:v3];
    v5 = v13;
    objc_autoreleasePoolPop(v2);
    atomic_fetch_add((*(a1 + 32) + 48), 0xFFFFFFFF);
    if (v4 == -1)
    {
      v6 = *(a1 + 40);
      if (v6)
      {
        v7 = *(a1 + 32);
        v8 = *(v7 + 24);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __63__GTTransport_send_inReplyTo_error_replyQueue_timeout_handler___block_invoke_4;
        block[3] = &unk_279657DE8;
        v12 = *(a1 + 56);
        block[4] = v7;
        block[5] = v6;
        block[6] = v13;
        dispatch_async(v8, block);
      }
    }
  }
}

uint64_t __63__GTTransport_send_inReplyTo_error_replyQueue_timeout_handler___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 72) removeObjectForIntKey:*(a1 + 56)];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 dispatchError:v3];
}

uint64_t __30__GTTransport_setSynchronous___block_invoke(uint64_t result)
{
  v1 = MEMORY[0x277D85D58];
  if (*(result + 40))
  {
    v1 = MEMORY[0x277D85DA0];
  }

  *(*(result + 32) + 96) = v1;
  return result;
}

uint64_t __37__GTTransport__scheduleInvalidation___block_invoke(uint64_t result)
{
  if (!*(*(result + 32) + 80))
  {
    v2 = result;
    *(*(result + 32) + 80) = *(result + 40);
    v3 = *(v2 + 32);

    return [v3 _invalidate];
  }

  return result;
}

void __32__GTTransport__dispatchMessage___block_invoke(void *a1)
{
  v1 = a1[4];
  if ((*(v1 + 24) & 1) == 0)
  {
    v3 = a1[5];
    v4 = (*(*(v1 + 16) + 16))();
    v5 = a1[4];
    if (v4)
    {
      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = dispatch_time(0, v6);
        v8 = a1[6];
        v9 = *(v8 + 24);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __32__GTTransport__dispatchMessage___block_invoke_3;
        v12[3] = &unk_279658AD8;
        v12[4] = v8;
        v12[5] = a1[7];
        dispatch_after(v7, v9, v12);
      }
    }

    else
    {
      *(v5 + 24) = 1;
      v10 = a1[6];
      v11 = *(v10 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __32__GTTransport__dispatchMessage___block_invoke_2;
      block[3] = &unk_279657D70;
      block[4] = v10;
      v14 = *(a1 + 14);
      dispatch_async(v11, block);
    }
  }
}

uint64_t __31__GTTransport__activateSource___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 52) & 1) == 0)
  {
    v2 = result;
    result = [*(v1 + 64) addObject:*(result + 40)];
    *(*(*(v2 + 48) + 8) + 24) = 1;
  }

  return result;
}

void *__34__GTTransport_newSourceWithQueue___block_invoke(void *result)
{
  if ((*(result[4] + 52) & 1) == 0)
  {
    v1 = result;
    result = [[GTTransportSource_replayer alloc] _initWithQueue:v1[5] transport:v1[4]];
    *(*(v1[6] + 8) + 40) = result;
  }

  return result;
}

id __18__GTTransport_url__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

@end