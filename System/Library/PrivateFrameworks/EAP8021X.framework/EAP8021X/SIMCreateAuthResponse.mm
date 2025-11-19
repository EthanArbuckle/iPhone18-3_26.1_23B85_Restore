@interface SIMCreateAuthResponse
@end

@implementation SIMCreateAuthResponse

void ___SIMCreateAuthResponse_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = EAPLogGetLogHandle();
    v7 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v6, v7))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_249EFB000, v6, v7, "CoreTelephonyClient.generateAuthenticationInfoUsingSim failed with error: %@", &v9, 0xCu);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = [a2 data];
  }

  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));

  v8 = *MEMORY[0x277D85DE8];
}

@end