@interface GKLocalPlayer(Friends)
- (uint64_t)presentFriendRequestCreatorFromViewController:()Friends error:;
- (void)openMessagesWith:()Friends recipient:groupId:;
- (void)sendFriendInviteTo:()Friends groupId:;
@end

@implementation GKLocalPlayer(Friends)

- (void)sendFriendInviteTo:()Friends groupId:
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:&unk_2861898D0];
  if (v6)
  {
    identifier = [v6 identifier];
    [v8 setObject:identifier forKeyedSubscript:@"recipient"];
    identifier2 = [v6 identifier];
    [v8 setObject:identifier2 forKeyedSubscript:@"recipientContactIdentifier"];
  }

  else
  {
    identifier = 0;
  }

  mEMORY[0x277D0C1D8] = [MEMORY[0x277D0C1D8] shared];
  fetchFriendCodeInExtensionEnabled = [mEMORY[0x277D0C1D8] fetchFriendCodeInExtensionEnabled];

  if (fetchFriendCodeInExtensionEnabled)
  {
    [self openMessagesWith:v8 recipient:identifier groupId:v7];
  }

  else
  {
    localPlayer = [MEMORY[0x277D0C138] localPlayer];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __53__GKLocalPlayer_Friends__sendFriendInviteTo_groupId___block_invoke;
    v16[3] = &unk_27966D550;
    v17 = v8;
    selfCopy = self;
    v19 = identifier;
    v20 = v7;
    [localPlayer createFriendRequestWithIdentifier:uUIDString handler:v16];
  }
}

- (void)openMessagesWith:()Friends recipient:groupId:
{
  v29[5] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v27 = 0;
  v9 = [MEMORY[0x277CCAAA0] dataWithJSONObject:a3 options:1 error:&v27];
  v25 = v27;
  v26 = v9;
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
  v11 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v11 setScheme:@"sms-private"];
  [v11 setPath:@"open"];
  v12 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"service" value:@"iMessage"];
  v13 = v12;
  if (v8)
  {
    v29[0] = v12;
    v14 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"groupid" value:v8];
    v29[1] = v14;
    v15 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"chatGUID" value:v8];
    v29[2] = v15;
    v16 = objc_alloc(MEMORY[0x277CCAD18]);
    v17 = [v16 initWithName:@"appBundleID" value:*MEMORY[0x277D0BAD0]];
    v29[3] = v17;
    v18 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"appPayload" value:v10];
    v29[4] = v18;
    [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:5];
    v20 = v19 = v7;
    [v11 setQueryItems:v20];
  }

  else
  {
    v28[0] = v12;
    v14 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"recipient" value:v7];
    v28[1] = v14;
    v21 = objc_alloc(MEMORY[0x277CCAD18]);
    v15 = [v21 initWithName:@"appBundleID" value:*MEMORY[0x277D0BAD0]];
    v28[2] = v15;
    v17 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"appPayload" value:v10];
    v28[3] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
    [v11 setQueryItems:v18];
    v19 = v7;
  }

  v22 = [v11 URL];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v24 = objc_opt_new();
  [defaultWorkspace openURL:v22 configuration:v24 completionHandler:&__block_literal_global_49];
}

- (uint64_t)presentFriendRequestCreatorFromViewController:()Friends error:
{
  v6 = a3;
  canSendFriendRequest = [self canSendFriendRequest];
  if (canSendFriendRequest)
  {
    [GKFriendRequestViewController addFriends:v6];
  }

  else
  {
    *a4 = [MEMORY[0x277CCA9B8] userErrorForCode:103 underlyingError:0];
  }

  return canSendFriendRequest;
}

@end