@interface GTUNIXDomainSocketTransport
@end

@implementation GTUNIXDomainSocketTransport

uint64_t __38__GTUNIXDomainSocketTransport_connect__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[52] == 1)
  {
    v3 = 32;
LABEL_3:
    [*(a1 + 40) setError:{+[GTError_replayer errorWithDomain:code:userInfo:](GTError_replayer, "errorWithDomain:code:userInfo:", @"DYErrorDomain", v3, 0)}];
    v4 = MEMORY[0x277CCABB0];
    v5 = 0;
LABEL_6:
    v6 = [v4 numberWithBool:v5];
    v7 = *(a1 + 40);

    return [v7 setResult:v6];
  }

  if ([v2 connected])
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = 1;
    goto LABEL_6;
  }

  v9 = [*(*(a1 + 32) + 8) filePathURL];
  if (*(*(a1 + 32) + 8))
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v3 = 257;
    goto LABEL_3;
  }

  v11 = [v9 path];
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  if (v12[65] == 2)
  {

    return [v12 _connectServer:v11 future:v13];
  }

  else
  {

    return [v12 _connectClient:v11 future:v13];
  }
}

_BYTE *__53__GTUNIXDomainSocketTransport__connectServer_future___block_invoke(uint64_t a1)
{
  close(*(a1 + 48));
  dispatch_release(*(*(a1 + 32) + 264));
  *(*(a1 + 32) + 264) = 0;
  result = *(a1 + 32);
  if (result[52] == 1)
  {
    [*(a1 + 40) setError:{objc_msgSend(result, "error")}];
    v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v4 = *(a1 + 40);

    return [v4 setResult:v3];
  }

  return result;
}

intptr_t __53__GTUNIXDomainSocketTransport__connectServer_future___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  result = dispatch_source_testcancel(*(*(a1 + 32) + 264));
  if (!result)
  {
    v10 = 106;
    v3 = accept(*(a1 + 48), &v11, &v10);
    if (v3 == -1)
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
      v8 = *(a1 + 40);
      v6 = (a1 + 40);
      [v8 setError:v7];
      v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
    }

    else
    {
      v4 = v3;
      dispatch_source_cancel(*(*(a1 + 32) + 264));
      [*(a1 + 32) runWithSocket:v4];
      v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v6 = (a1 + 40);
    }

    result = [*v6 setResult:v5];
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void *__38__GTUNIXDomainSocketTransport_setUrl___block_invoke(void *result)
{
  v1 = *(result[5] + 8);
  if (result[4] != v1)
  {
    v2 = result;

    result = v2[4];
    *(v2[5] + 8) = result;
  }

  return result;
}

@end