@interface GetCertForApplication
@end

@implementation GetCertForApplication

void ___GetCertForApplication_block_invoke(uint64_t a1, void *a2)
{
  if (MEMORY[0x259C17760](a2) == MEMORY[0x277D86468])
  {
    length = 0;
    xpc_dictionary_get_data(a2, "certData", &length);
    if (length)
    {
      syslog(4, "%s:%s-%d got data from authd, len=%d\n", "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAPAuthentication/IAPSecurity.c", "_GetCertForApplication_block_invoke", 297, length);
      *(*(*(a1 + 40) + 8) + 24) = SecCertificateCreateWithBytes();
      if (*(*(*(a1 + 40) + 8) + 24))
      {
        syslog(4, "cert created!\n", v8, v9, v10);
      }

      else
      {
        syslog(4, "cert FAILED!\n");
      }
    }

    else
    {
      syslog(4, "%s:%s-%d len is 0!\n");
    }
  }

  v4 = *(a1 + 40);
  v5 = *(*(v4 + 8) + 24);
  if (v5)
  {
    CFRetain(v5);
    v4 = *(a1 + 40);
  }

  v6 = *(a1 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___GetCertForApplication_block_invoke_2;
  block[3] = &unk_279781848;
  block[4] = *(a1 + 32);
  block[5] = v4;
  dispatch_async(v6, block);
  v7 = *(*(*(a1 + 40) + 8) + 24);
  if (v7)
  {
    CFRelease(v7);
  }

  xpc_release(*(a1 + 56));
}

void ___GetCertForApplication_block_invoke_2(uint64_t a1)
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