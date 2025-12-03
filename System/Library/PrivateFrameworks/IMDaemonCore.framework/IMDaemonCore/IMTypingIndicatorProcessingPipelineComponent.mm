@interface IMTypingIndicatorProcessingPipelineComponent
- (id)createMessageItemWithInput:(id)input;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMTypingIndicatorProcessingPipelineComponent

- (id)createMessageItemWithInput:(id)input
{
  inputCopy = input;
  v5 = [(IMTextMessageProcessingPipelineComponent *)self computeFlagsForInput:inputCopy]| 8;
  if (![inputCopy isFinished])
  {
    v5 &= ~1uLL;
  }

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  if ([mEMORY[0x277D1A9B8] isGroupTypingIndicatorsEnabled])
  {
    participantIdentifiers = [inputCopy participantIdentifiers];
    v8 = [participantIdentifiers count];

    if (v8 > 2)
    {
      v5 |= 0x40000000uLL;
    }
  }

  else
  {
  }

  v9 = objc_alloc(MEMORY[0x277D1AA70]);
  fromIdentifier = [inputCopy fromIdentifier];
  _stripFZIDPrefix = [fromIdentifier _stripFZIDPrefix];
  v12 = MEMORY[0x277CBEAA8];
  timestamp = [inputCopy timestamp];
  v14 = [v12 __im_iMessageDateFromTimeStamp:timestamp];
  gUID = [inputCopy GUID];
  threadIdentifierGUID = [inputCopy threadIdentifierGUID];
  v17 = [v9 initWithSender:_stripFZIDPrefix time:v14 body:0 attributes:0 fileTransferGUIDs:0 flags:v5 error:0 guid:gUID threadIdentifier:threadIdentifierGUID];

  balloonPluginBundleID = [inputCopy balloonPluginBundleID];
  [v17 setBalloonBundleID:balloonPluginBundleID];

  typingIndicatorIconData = [inputCopy typingIndicatorIconData];
  [v17 setTypingIndicatorIcon:typingIndicatorIconData];

  replicatedFallbackGUIDs = [inputCopy replicatedFallbackGUIDs];
  [v17 setReplicatedFallbackGUIDs:replicatedFallbackGUIDs];

  return v17;
}

- (id)runIndividuallyWithInput:(id)input
{
  v5.receiver = self;
  v5.super_class = IMTypingIndicatorProcessingPipelineComponent;
  v3 = [(IMTextMessageProcessingPipelineComponent *)&v5 runIndividuallyWithInput:input];

  return v3;
}

@end