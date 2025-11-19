@interface IMTypingIndicatorProcessingPipelineComponent
- (id)createMessageItemWithInput:(id)a3;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IMTypingIndicatorProcessingPipelineComponent

- (id)createMessageItemWithInput:(id)a3
{
  v4 = a3;
  v5 = [(IMTextMessageProcessingPipelineComponent *)self computeFlagsForInput:v4]| 8;
  if (![v4 isFinished])
  {
    v5 &= ~1uLL;
  }

  v6 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  if ([v6 isGroupTypingIndicatorsEnabled])
  {
    v7 = [v4 participantIdentifiers];
    v8 = [v7 count];

    if (v8 > 2)
    {
      v5 |= 0x40000000uLL;
    }
  }

  else
  {
  }

  v9 = objc_alloc(MEMORY[0x277D1AA70]);
  v10 = [v4 fromIdentifier];
  v11 = [v10 _stripFZIDPrefix];
  v12 = MEMORY[0x277CBEAA8];
  v13 = [v4 timestamp];
  v14 = [v12 __im_iMessageDateFromTimeStamp:v13];
  v15 = [v4 GUID];
  v16 = [v4 threadIdentifierGUID];
  v17 = [v9 initWithSender:v11 time:v14 body:0 attributes:0 fileTransferGUIDs:0 flags:v5 error:0 guid:v15 threadIdentifier:v16];

  v18 = [v4 balloonPluginBundleID];
  [v17 setBalloonBundleID:v18];

  v19 = [v4 typingIndicatorIconData];
  [v17 setTypingIndicatorIcon:v19];

  v20 = [v4 replicatedFallbackGUIDs];
  [v17 setReplicatedFallbackGUIDs:v20];

  return v17;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v5.receiver = self;
  v5.super_class = IMTypingIndicatorProcessingPipelineComponent;
  v3 = [(IMTextMessageProcessingPipelineComponent *)&v5 runIndividuallyWithInput:a3];

  return v3;
}

@end