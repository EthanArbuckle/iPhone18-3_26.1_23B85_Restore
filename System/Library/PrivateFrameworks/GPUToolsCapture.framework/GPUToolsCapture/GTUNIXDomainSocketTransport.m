@interface GTUNIXDomainSocketTransport
@end

@implementation GTUNIXDomainSocketTransport

id __38__GTUNIXDomainSocketTransport_connect__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[52] == 1)
  {
    v3 = 32;
LABEL_3:
    [*(a1 + 40) setError:{+[GTError_capture errorWithDomain:code:userInfo:](GTError_capture, "errorWithDomain:code:userInfo:", @"DYErrorDomain", v3, 0)}];
    v4 = 0;
LABEL_6:
    v5 = [NSNumber numberWithBool:v4];
    v6 = *(a1 + 40);

    return [v6 setResult:v5];
  }

  if ([v2 connected])
  {
    v4 = 1;
    goto LABEL_6;
  }

  v8 = [*(*(a1 + 32) + 8) filePathURL];
  if (*(*(a1 + 32) + 8))
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v3 = 257;
    goto LABEL_3;
  }

  v10 = [v8 path];
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (v11[65] == 2)
  {

    return [v11 _connectServer:v10 future:v12];
  }

  else
  {

    return [v11 _connectClient:v10 future:v12];
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
    v3 = [NSNumber numberWithBool:0];
    v4 = *(a1 + 40);

    return [v4 setResult:v3];
  }

  return result;
}

id __53__GTUNIXDomainSocketTransport__connectServer_future___block_invoke_2(uint64_t a1)
{
  result = dispatch_source_testcancel(*(*(a1 + 32) + 264));
  if (!result)
  {
    v9 = 106;
    v3 = accept(*(a1 + 48), &v10, &v9);
    if (v3 == -1)
    {
      v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
      v8 = *(a1 + 40);
      v6 = (a1 + 40);
      [v8 setError:v7];
      v5 = [NSNumber numberWithBool:0];
    }

    else
    {
      v4 = v3;
      dispatch_source_cancel(*(*(a1 + 32) + 264));
      [*(a1 + 32) runWithSocket:v4];
      v5 = [NSNumber numberWithBool:1];
      v6 = (a1 + 40);
    }

    return [*v6 setResult:v5];
  }

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