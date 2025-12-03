@interface ASKLoadAvatarResourceOperation
- (ASKLoadAvatarResourceOperation)initWithPlayerId:(id)id;
- (ASKLoadAvatarResourceOperation)initWithURLRequest:(id)request URLSession:(id)session dataConsumer:(id)consumer;
- (id)makePlayerFetchError;
- (void)main;
@end

@implementation ASKLoadAvatarResourceOperation

- (ASKLoadAvatarResourceOperation)initWithURLRequest:(id)request URLSession:(id)session dataConsumer:(id)consumer
{
  requestCopy = request;
  v7 = [requestCopy URL];
  host = [v7 host];

  if ([host isEqualToString:@"G"])
  {
    v9 = [requestCopy URL];
    port = [v9 port];

    if (port)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [requestCopy URL];
      port2 = [v12 port];
      v14 = [v11 stringWithFormat:@"G:%@", port2];

      host = v14;
    }
  }

  v15 = [(ASKLoadAvatarResourceOperation *)self initWithPlayerId:host];

  return v15;
}

- (ASKLoadAvatarResourceOperation)initWithPlayerId:(id)id
{
  idCopy = id;
  v9.receiver = self;
  v9.super_class = ASKLoadAvatarResourceOperation;
  v5 = [(ASKLoadAvatarResourceOperation *)&v9 init];
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
  v11[1] = *MEMORY[0x277D85DE8];
  if (([(ASKLoadAvatarResourceOperation *)self isCancelled]& 1) == 0)
  {
    playerId = [(ASKLoadAvatarResourceOperation *)self playerId];

    if (playerId)
    {
      v4 = MEMORY[0x277D0C010];
      local = [MEMORY[0x277D0C138] local];
      v6 = [v4 proxyForPlayer:local];
      profileServicePrivate = [v6 profileServicePrivate];
      playerId2 = [(ASKLoadAvatarResourceOperation *)self playerId];
      v11[0] = playerId2;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __38__ASKLoadAvatarResourceOperation_main__block_invoke;
      v10[3] = &unk_27968B868;
      v10[4] = self;
      [profileServicePrivate getProfilesForPlayerIDs:v9 handler:v10];
    }
  }
}

void __38__ASKLoadAvatarResourceOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
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
        v12[2] = __38__ASKLoadAvatarResourceOperation_main__block_invoke_2;
        v12[3] = &unk_27968B840;
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

uint64_t __38__ASKLoadAvatarResourceOperation_main__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v8[5] = v3;
    v8[6] = v4;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __38__ASKLoadAvatarResourceOperation_main__block_invoke_3;
    v8[3] = &unk_27968B818;
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
  playerId = [(ASKLoadAvatarResourceOperation *)self playerId];
  v4 = [v2 stringWithFormat:@"Unable to load player with Id: %@", playerId];

  v5 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v5 errorWithDomain:@"ASKLoadAvatarResourceOperationErrorDomain" code:560557415 userInfo:v6];

  return v7;
}

@end