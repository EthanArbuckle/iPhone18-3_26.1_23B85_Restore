@interface AsyncConnection
@end

@implementation AsyncConnection

void ___AsyncConnection_StartNANDataSession_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(*(a1 + 40) + 152);
  v10 = *v9;
  if (a2)
  {
    if (v10 <= 90)
    {
      if (v10 == -1)
      {
        if (!_LogCategory_Initialize(*(*(a1 + 40) + 152), 0x5Au))
        {
          goto LABEL_9;
        }

        v9 = *(*(a1 + 40) + 152);
      }

      v12 = [*(a1 + 32) peerEndpoint];
      LogPrintF(v9, "OSStatus _AsyncConnection_StartNANDataSession(AsyncConnectionRef, CFTypeRef)_block_invoke", 0x5Au, "### NAN data session failed: %@, %{error}\n", v13, v14, v15, v16, v12);
    }

LABEL_9:
    v17 = *(a1 + 48);
    v18 = [a2 code];
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = 4294960596;
    }

    _AsyncConnection_ErrorHandler(v17, v19);
    v20 = *(a1 + 48);

    _AsyncConnection_ReleaseOperation(v20);
    return;
  }

  if (v10 <= 50)
  {
    if (v10 == -1)
    {
      if (!_LogCategory_Initialize(*(*(a1 + 40) + 152), 0x32u))
      {
        goto LABEL_16;
      }

      v9 = *(*(a1 + 40) + 152);
    }

    LogPrintF(v9, "OSStatus _AsyncConnection_StartNANDataSession(AsyncConnectionRef, CFTypeRef)_block_invoke", 0x32u, "NAN data session started: %@\n", a5, a6, a7, a8, *(a1 + 32));
  }

LABEL_16:
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v21 = *(a1 + 32);
  if (v21)
  {
    [v21 peerAddress];
    v21 = *(a1 + 32);
  }

  _AsyncConnection_StartConnectNow(*(a1 + 40), *(a1 + 48), v22, [v21 localInterfaceIndex], *(*(a1 + 40) + 24));
  _AsyncConnection_ReleaseOperation(*(a1 + 48));
}

@end