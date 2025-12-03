@interface GKLoadAvatarResourceOperation
- (GKLoadAvatarResourceOperation)initWithPlayerId:(id)id;
- (id)makePlayerFetchError;
- (void)main;
@end

@implementation GKLoadAvatarResourceOperation

- (GKLoadAvatarResourceOperation)initWithPlayerId:(id)id
{
  idCopy = id;
  v9.receiver = self;
  v9.super_class = GKLoadAvatarResourceOperation;
  v5 = [(GKLoadAvatarResourceOperation *)&v9 init];
  if (v5)
  {
    v6 = [idCopy copy];
    playerId = v5->_playerId;
    v5->_playerId = v6;
  }

  return v5;
}

- (void)main
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (([(GKLoadAvatarResourceOperation *)self isCancelled]& 1) == 0)
  {
    proxyForLocalPlayer = [MEMORY[0x277D0C010] proxyForLocalPlayer];
    profileServicePrivate = [proxyForLocalPlayer profileServicePrivate];
    playerId = [(GKLoadAvatarResourceOperation *)self playerId];
    v8[0] = playerId;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__GKLoadAvatarResourceOperation_main__block_invoke;
    v7[3] = &unk_27966C3A8;
    v7[4] = self;
    [profileServicePrivate getProfilesForPlayerIDs:v6 handler:v7];
  }
}

void __37__GKLoadAvatarResourceOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    if (v6)
    {
      [*(a1 + 32) didCompleteWithResource:0 error:v6];
    }

    else
    {
      if ([v5 count] && (objc_msgSend(v5, "objectAtIndex:", 0), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
      {
        v8 = [v5 objectAtIndex:0];
        v9 = [objc_alloc(MEMORY[0x277D0C170]) initWithInternalRepresentation:v8];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __37__GKLoadAvatarResourceOperation_main__block_invoke_2;
        v12[3] = &unk_27966C380;
        v12[4] = *(a1 + 32);
        v13 = v9;
        v10 = v9;
        [v10 loadPhotoForSize:1 withCompletionHandler:v12];
      }

      else
      {
        v11 = *(a1 + 32);
        v8 = [v11 makePlayerFetchError];
        [v11 didCompleteWithResource:0 error:v8];
      }
    }
  }
}

uint64_t __37__GKLoadAvatarResourceOperation_main__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v8[5] = v3;
    v8[6] = v4;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __37__GKLoadAvatarResourceOperation_main__block_invoke_3;
    v8[3] = &unk_27966BF18;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    return [v7 monogramImageWithPhotoSize:1 handler:v8];
  }

  else
  {
    v5 = *(a1 + 32);

    return [v5 didCompleteWithResource:a2 error:0];
  }
}

- (id)makePlayerFetchError
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  playerId = [(GKLoadAvatarResourceOperation *)self playerId];
  v4 = [v2 stringWithFormat:@"Unable to load player with Id: %@", playerId];

  v5 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v5 errorWithDomain:@"GKLoadAvatarResourceOperationErrorDomain" code:560557415 userInfo:v6];

  return v7;
}

@end