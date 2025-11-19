@interface GKMatchResponse
+ (id)secureCodedPropertyKeys;
- (BOOL)isCancelled;
- (BOOL)isFinished;
- (BOOL)isNetworkError;
- (BOOL)isTimeout;
- (BOOL)transitionToState:(int64_t)a3;
@end

@implementation GKMatchResponse

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_433 != -1)
  {
    +[GKMatchResponse secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_432;

  return v3;
}

void __42__GKMatchResponse_secureCodedPropertyKeys__block_invoke()
{
  v7[9] = *MEMORY[0x277D85DE8];
  v6[0] = @"rid";
  v7[0] = objc_opt_class();
  v6[1] = @"matchID";
  v7[1] = objc_opt_class();
  v6[2] = @"matches";
  v0 = +[GKServiceInterface plistClasses];
  v7[2] = v0;
  v6[3] = @"sessionToken";
  v7[3] = objc_opt_class();
  v6[4] = @"relayPushes";
  v1 = +[GKServiceInterface plistClasses];
  v7[4] = v1;
  v6[5] = @"cdxTicket";
  v7[5] = objc_opt_class();
  v6[6] = @"selfPseudonym";
  v7[6] = objc_opt_class();
  v6[7] = @"serverRequest";
  v2 = +[GKServiceInterface plistClasses];
  v7[7] = v2;
  v6[8] = @"transportVersionToUse";
  v7[8] = objc_opt_class();
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:9];
  v4 = secureCodedPropertyKeys_sSecureCodedKeys_432;
  secureCodedPropertyKeys_sSecureCodedKeys_432 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)isFinished
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_state > 3;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isCancelled
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_state == 5;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isTimeout
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_state == 6;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isNetworkError
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_state == 7;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)transitionToState:(int64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v5 = 0;
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      if (!v4->_state)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }

    if (a3 == 2 || a3 == 3)
    {
LABEL_3:
      if (v4->_state < 4)
      {
LABEL_4:
        v4->_state = a3;
        [(GKMatchResponse *)v4 _incrementSequence];
        v5 = 1;
        goto LABEL_11;
      }

LABEL_10:
      v5 = 0;
    }
  }

  else if ((a3 - 4) < 4)
  {
    goto LABEL_3;
  }

LABEL_11:
  objc_sync_exit(v4);

  return v5;
}

@end