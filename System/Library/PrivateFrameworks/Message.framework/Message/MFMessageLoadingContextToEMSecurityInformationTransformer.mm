@interface MFMessageLoadingContextToEMSecurityInformationTransformer
+ (id)securityInformationFromMFMessageLoadingContextEvent:(id)event;
@end

@implementation MFMessageLoadingContextToEMSecurityInformationTransformer

+ (id)securityInformationFromMFMessageLoadingContextEvent:(id)event
{
  eventCopy = event;
  loadedBody = [eventCopy loadedBody];
  topLevelPart = [loadedBody topLevelPart];
  copySigners = [topLevelPart copySigners];
  v7 = [copySigners ef_map:&__block_literal_global_49];

  message = [eventCopy message];
  messageFlags = [message messageFlags];

  v10 = objc_alloc(MEMORY[0x1E699AEB0]);
  loadedBody2 = [eventCopy loadedBody];
  hasEncryptedDescendantPart = [loadedBody2 hasEncryptedDescendantPart];
  loadedBody3 = [eventCopy loadedBody];
  topLevelPart2 = [loadedBody3 topLevelPart];
  sMIMEError = [topLevelPart2 SMIMEError];
  v16 = [v10 initWithSigners:v7 isEncrypted:(messageFlags >> 3) & 1 hasEncryptedDescendantPart:hasEncryptedDescendantPart smimeError:sMIMEError];

  return v16;
}

id __113__MFMessageLoadingContextToEMSecurityInformationTransformer_securityInformationFromMFMessageLoadingContextEvent___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MFMessageSignerEMMessageSignerTransformer messageSignerFromMFMessageSigner:a2];

  return v2;
}

@end