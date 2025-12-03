@interface IMAudioMessageProcessingPipelineComponent
- (id)createMessageItemWithInput:(id)input;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMAudioMessageProcessingPipelineComponent

- (id)createMessageItemWithInput:(id)input
{
  inputCopy = input;
  v18 = [(IMTextMessageProcessingPipelineComponent *)self computeFlagsForInput:inputCopy];
  v5 = objc_alloc(MEMORY[0x277D1AA70]);
  fromIdentifier = [inputCopy fromIdentifier];
  _stripFZIDPrefix = [fromIdentifier _stripFZIDPrefix];
  v8 = MEMORY[0x277CBEAA8];
  timestamp = [inputCopy timestamp];
  v10 = [v8 __im_iMessageDateFromTimeStamp:timestamp];
  richBody = [inputCopy richBody];
  fileTransferGUIDs = [inputCopy fileTransferGUIDs];
  gUID = [inputCopy GUID];
  threadIdentifierGUID = [inputCopy threadIdentifierGUID];
  v15 = [v5 initWithSender:_stripFZIDPrefix time:v10 body:richBody attributes:0 fileTransferGUIDs:fileTransferGUIDs flags:v18 | 0x1200000 error:0 guid:gUID threadIdentifier:threadIdentifierGUID];

  replicatedFallbackGUIDs = [inputCopy replicatedFallbackGUIDs];

  [v15 setReplicatedFallbackGUIDs:replicatedFallbackGUIDs];

  return v15;
}

- (id)runIndividuallyWithInput:(id)input
{
  v5.receiver = self;
  v5.super_class = IMAudioMessageProcessingPipelineComponent;
  v3 = [(IMTextMessageProcessingPipelineComponent *)&v5 runIndividuallyWithInput:input];

  return v3;
}

@end