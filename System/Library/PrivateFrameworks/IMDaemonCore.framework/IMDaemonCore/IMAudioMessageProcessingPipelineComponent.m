@interface IMAudioMessageProcessingPipelineComponent
- (id)createMessageItemWithInput:(id)a3;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IMAudioMessageProcessingPipelineComponent

- (id)createMessageItemWithInput:(id)a3
{
  v4 = a3;
  v18 = [(IMTextMessageProcessingPipelineComponent *)self computeFlagsForInput:v4];
  v5 = objc_alloc(MEMORY[0x277D1AA70]);
  v6 = [v4 fromIdentifier];
  v7 = [v6 _stripFZIDPrefix];
  v8 = MEMORY[0x277CBEAA8];
  v9 = [v4 timestamp];
  v10 = [v8 __im_iMessageDateFromTimeStamp:v9];
  v11 = [v4 richBody];
  v12 = [v4 fileTransferGUIDs];
  v13 = [v4 GUID];
  v14 = [v4 threadIdentifierGUID];
  v15 = [v5 initWithSender:v7 time:v10 body:v11 attributes:0 fileTransferGUIDs:v12 flags:v18 | 0x1200000 error:0 guid:v13 threadIdentifier:v14];

  v16 = [v4 replicatedFallbackGUIDs];

  [v15 setReplicatedFallbackGUIDs:v16];

  return v15;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v5.receiver = self;
  v5.super_class = IMAudioMessageProcessingPipelineComponent;
  v3 = [(IMTextMessageProcessingPipelineComponent *)&v5 runIndividuallyWithInput:a3];

  return v3;
}

@end