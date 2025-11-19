@interface IMOverrideOffGridStatusPipelineComponent
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IMOverrideOffGridStatusPipelineComponent

- (id)runIndividuallyWithInput:(id)a3
{
  v3 = a3;
  v4 = [v3 senderRegistrationProperties];
  v5 = [v4 containsObject:*MEMORY[0x277D18910]];

  v6 = [v3 chat];
  v7 = v6;
  if (v5 && [v6 style] == 45)
  {
    v8 = [v7 participants];
    v9 = [v8 firstObject];

    if ([v9 cachedOffGridMode])
    {
      v10 = MEMORY[0x277CBEAA8];
      v11 = [v3 timestamp];
      v12 = [v10 __im_iMessageDateFromTimeStamp:v11];

      v13 = [MEMORY[0x277D1A9F8] sharedInstance];
      v14 = [v9 ID];
      [v13 overrideStatusForHandleWithID:v14 publishedBeforeDate:v12];

      v15 = +[IMDBroadcastController sharedProvider];
      v16 = [v15 broadcasterForChatListeners];
      v17 = [v7 accountID];
      v18 = [v9 ID];
      [v16 account:v17 handleID:v18 updatedLastReceivedOnGridMessageDate:v12];
    }
  }

  v19 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v3];

  return v19;
}

@end