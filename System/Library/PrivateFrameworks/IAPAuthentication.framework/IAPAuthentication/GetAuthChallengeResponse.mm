@interface GetAuthChallengeResponse
@end

@implementation GetAuthChallengeResponse

void ___GetAuthChallengeResponse_block_invoke(uint64_t a1, void *a2)
{
  if (MEMORY[0x259C17760](a2) == MEMORY[0x277D86468])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    length = 0;
    data = xpc_dictionary_get_data(a2, "outData", &length);
    if (length)
    {
      v5 = data;
      syslog(4, "%s:%s-%d got data from authd, len=%d\n", "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAPAuthentication/IAPSecurity.c", "_GetAuthChallengeResponse_block_invoke", 563, length);
      v6 = CFDataCreate(*MEMORY[0x277CBECE8], v5, length);
      v13[3] = v6;
      if (v6)
      {
        syslog(4, "%s:%s-%d iPod signature created!\n");
      }

      else
      {
        syslog(4, "%s:%s-%d iPod signature failed!\n");
      }
    }

    else
    {
      syslog(4, "%s:%s-%d len is 0!\n");
    }

    v7 = v13[3];
    if (v7)
    {
      CFRetain(v7);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___GetAuthChallengeResponse_block_invoke_2;
    block[3] = &unk_279781898;
    v8 = *(a1 + 40);
    block[4] = *(a1 + 32);
    block[5] = &v12;
    dispatch_async(v8, block);
    xpc_release(*(a1 + 48));
    v9 = v13[3];
    if (v9)
    {
      CFRelease(v9);
    }

    _Block_object_dispose(&v12, 8);
  }
}

void ___GetAuthChallengeResponse_block_invoke_2(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  (*(*(a1 + 32) + 16))();
  v3 = *(*(*(a1 + 40) + 8) + 24);
  if (v3)
  {

    CFRelease(v3);
  }
}

@end