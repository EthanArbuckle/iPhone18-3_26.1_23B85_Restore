@interface NSError
- (id)_hd_cloudKitErrorRequiringUserActionFromCKErrorDomain;
@end

@implementation NSError

- (id)_hd_cloudKitErrorRequiringUserActionFromCKErrorDomain
{
  if (self)
  {
    if ([self code] == 110)
    {
      v2 = MEMORY[0x277CCA9B8];
      userInfo = [self userInfo];
      v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
      v5 = @"Manatee container is unavailable, device is in CFU state";
      v6 = v2;
      v7 = 706;
LABEL_8:
      v9 = [v6 hk_error:v7 description:v5 underlyingError:v4];

      goto LABEL_9;
    }

    if ([self code] == 4 || objc_msgSend(self, "code") == 3 || objc_msgSend(self, "code") == 34)
    {
      v8 = MEMORY[0x277CCA9B8];
      userInfo = [self userInfo];
      v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
      v5 = @"Network failure during Cloud Sync Operation";
      v6 = v8;
      v7 = 704;
      goto LABEL_8;
    }

    if ([self code] == 25)
    {
      v11 = MEMORY[0x277CCA9B8];
      userInfo = [self userInfo];
      v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
      v5 = @"iCloud Quota Exceeded during Cloud Sync Operation";
      v6 = v11;
      v7 = 705;
      goto LABEL_8;
    }

    if ([self code] == 33)
    {
      v12 = MEMORY[0x277CCA9B8];
      userInfo = [self userInfo];
      v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
      v5 = @"The participant may need HSA2 verification";
      v6 = v12;
      v7 = 731;
      goto LABEL_8;
    }

    if ([self code] == 9)
    {
      v13 = MEMORY[0x277CCA9B8];
      userInfo = [self userInfo];
      v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
      v5 = @"The user needs to login again into iCloud or accept new user terms and conditions.";
      v6 = v13;
      v7 = 735;
      goto LABEL_8;
    }
  }

  v9 = 0;
LABEL_9:

  return v9;
}

uint64_t __73__NSError_HealthDaemon__hd_errorStrippingExpectedCloudKitPartialFailures__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 domain];
  v4 = [v3 isEqualToString:*MEMORY[0x277CBBF50]];

  if (v4)
  {
    v5 = [v2 code];
    v6 = v5 == 112;
    if (v5 == 22)
    {
      v6 = 1;
    }

    v7 = v5 == 11 || v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end