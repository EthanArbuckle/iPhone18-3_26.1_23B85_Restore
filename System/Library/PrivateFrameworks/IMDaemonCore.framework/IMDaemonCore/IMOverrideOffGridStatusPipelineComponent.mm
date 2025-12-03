@interface IMOverrideOffGridStatusPipelineComponent
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMOverrideOffGridStatusPipelineComponent

- (id)runIndividuallyWithInput:(id)input
{
  inputCopy = input;
  senderRegistrationProperties = [inputCopy senderRegistrationProperties];
  v5 = [senderRegistrationProperties containsObject:*MEMORY[0x277D18910]];

  chat = [inputCopy chat];
  v7 = chat;
  if (v5 && [chat style] == 45)
  {
    participants = [v7 participants];
    firstObject = [participants firstObject];

    if ([firstObject cachedOffGridMode])
    {
      v10 = MEMORY[0x277CBEAA8];
      timestamp = [inputCopy timestamp];
      v12 = [v10 __im_iMessageDateFromTimeStamp:timestamp];

      mEMORY[0x277D1A9F8] = [MEMORY[0x277D1A9F8] sharedInstance];
      v14 = [firstObject ID];
      [mEMORY[0x277D1A9F8] overrideStatusForHandleWithID:v14 publishedBeforeDate:v12];

      v15 = +[IMDBroadcastController sharedProvider];
      broadcasterForChatListeners = [v15 broadcasterForChatListeners];
      accountID = [v7 accountID];
      v18 = [firstObject ID];
      [broadcasterForChatListeners account:accountID handleID:v18 updatedLastReceivedOnGridMessageDate:v12];
    }
  }

  v19 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];

  return v19;
}

@end