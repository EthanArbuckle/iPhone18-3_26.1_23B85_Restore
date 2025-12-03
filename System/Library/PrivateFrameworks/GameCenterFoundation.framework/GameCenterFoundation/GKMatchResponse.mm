@interface GKMatchResponse
+ (id)secureCodedPropertyKeys;
- (BOOL)isCancelled;
- (BOOL)isFinished;
- (BOOL)isNetworkError;
- (BOOL)isTimeout;
- (BOOL)transitionToState:(int64_t)state;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_state > 3;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isCancelled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_state == 5;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isTimeout
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_state == 6;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isNetworkError
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_state == 7;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)transitionToState:(int64_t)state
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = 0;
  if (state <= 3)
  {
    if (state == 1)
    {
      if (!selfCopy->_state)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }

    if (state == 2 || state == 3)
    {
LABEL_3:
      if (selfCopy->_state < 4)
      {
LABEL_4:
        selfCopy->_state = state;
        [(GKMatchResponse *)selfCopy _incrementSequence];
        v5 = 1;
        goto LABEL_11;
      }

LABEL_10:
      v5 = 0;
    }
  }

  else if ((state - 4) < 4)
  {
    goto LABEL_3;
  }

LABEL_11:
  objc_sync_exit(selfCopy);

  return v5;
}

@end