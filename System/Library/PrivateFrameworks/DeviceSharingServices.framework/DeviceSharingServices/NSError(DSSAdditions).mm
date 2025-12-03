@interface NSError(DSSAdditions)
+ (id)dss_errorWithCode:()DSSAdditions userInfo:retryable:;
- (id)dss_copyRetryable:()DSSAdditions;
- (uint64_t)dss_isRetryable;
@end

@implementation NSError(DSSAdditions)

+ (id)dss_errorWithCode:()DSSAdditions userInfo:retryable:
{
  v7 = [a4 mutableCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;

  v11 = [MEMORY[0x277CCABB0] numberWithBool:a5];
  [v10 setObject:v11 forKey:DSSDeviceSharingErrorRetryable];

  v12 = @"Generic";
  if (a3 <= 109)
  {
    v13 = @"Unknown Profile Type";
    v23 = @"Guest Does Not Exist";
    v24 = @"Invalid State Transition";
    if (a3 != 100)
    {
      v24 = @"Generic";
    }

    if (a3 != 90)
    {
      v23 = v24;
    }

    if (a3 != 80)
    {
      v13 = v23;
    }

    v25 = @"Could Not Read From File";
    v26 = @"Prescription Configuration Does Not Match";
    if (a3 != 70)
    {
      v26 = @"Generic";
    }

    if (a3 != 60)
    {
      v25 = v26;
    }

    if (a3 <= 79)
    {
      v13 = v25;
    }

    v27 = @"Low Disk Space";
    v28 = @"Guest User Mode Already Active";
    v29 = @"Could Not Write To File";
    if (a3 != 50)
    {
      v29 = @"Generic";
    }

    if (a3 != 40)
    {
      v28 = v29;
    }

    if (a3 != 30)
    {
      v27 = v28;
    }

    if (a3 == 20)
    {
      v12 = @"Unknown Core RX State";
    }

    if (a3 == 10)
    {
      v12 = @"Missing Property";
    }

    if (a3 > 29)
    {
      v12 = v27;
    }

    v22 = a3 <= 59;
  }

  else
  {
    v13 = @"Remote Unlock Declined";
    v14 = @"Peer Connection Failed";
    v15 = @"Remote Unlock Authentication Failed";
    if (a3 != 210)
    {
      v15 = @"Generic";
    }

    if (a3 != 200)
    {
      v14 = v15;
    }

    if (a3 != 190)
    {
      v13 = v14;
    }

    v16 = @"Unknown Request";
    v17 = @"Duplicate Request";
    v18 = @"No Device found";
    if (a3 != 180)
    {
      v18 = @"Generic";
    }

    if (a3 != 170)
    {
      v17 = v18;
    }

    if (a3 != 160)
    {
      v16 = v17;
    }

    if (a3 <= 189)
    {
      v13 = v16;
    }

    v19 = @"Not Supported";
    v20 = @"Cancelled";
    v21 = @"Max Retries Exceeded";
    if (a3 != 150)
    {
      v21 = @"Generic";
    }

    if (a3 != 140)
    {
      v20 = v21;
    }

    if (a3 != 130)
    {
      v19 = v20;
    }

    if (a3 == 120)
    {
      v12 = @"Request Timeout Error";
    }

    if (a3 == 110)
    {
      v12 = @"Unable To Lock Device";
    }

    if (a3 > 129)
    {
      v12 = v19;
    }

    v22 = a3 <= 159;
  }

  if (v22)
  {
    v30 = v12;
  }

  else
  {
    v30 = v13;
  }

  [v10 setObject:v30 forKey:*MEMORY[0x277CCA450]];
  v31 = MEMORY[0x277CCA9B8];
  v32 = [v10 copy];
  v33 = [v31 errorWithDomain:@"DSDeviceSharingErrorDomain" code:a3 userInfo:v32];

  return v33;
}

- (uint64_t)dss_isRetryable
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKey:DSSDeviceSharingErrorRetryable];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)dss_copyRetryable:()DSSAdditions
{
  userInfo = [self userInfo];
  v6 = [userInfo mutableCopy];

  if (a3)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v6 setObject:v7 forKey:DSSDeviceSharingErrorRetryable];
  }

  else
  {
    [v6 removeObjectForKey:DSSDeviceSharingErrorRetryable];
  }

  v8 = objc_alloc(MEMORY[0x277CCA9B8]);
  domain = [self domain];
  v10 = [v8 initWithDomain:domain code:objc_msgSend(self userInfo:{"code"), v6}];

  return v10;
}

@end