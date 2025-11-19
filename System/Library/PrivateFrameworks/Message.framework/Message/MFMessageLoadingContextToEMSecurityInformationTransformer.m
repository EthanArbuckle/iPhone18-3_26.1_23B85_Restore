@interface MFMessageLoadingContextToEMSecurityInformationTransformer
+ (id)securityInformationFromMFMessageLoadingContextEvent:(id)a3;
@end

@implementation MFMessageLoadingContextToEMSecurityInformationTransformer

+ (id)securityInformationFromMFMessageLoadingContextEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 loadedBody];
  v5 = [v4 topLevelPart];
  v6 = [v5 copySigners];
  v7 = [v6 ef_map:&__block_literal_global_49];

  v8 = [v3 message];
  v9 = [v8 messageFlags];

  v10 = objc_alloc(MEMORY[0x1E699AEB0]);
  v11 = [v3 loadedBody];
  v12 = [v11 hasEncryptedDescendantPart];
  v13 = [v3 loadedBody];
  v14 = [v13 topLevelPart];
  v15 = [v14 SMIMEError];
  v16 = [v10 initWithSigners:v7 isEncrypted:(v9 >> 3) & 1 hasEncryptedDescendantPart:v12 smimeError:v15];

  return v16;
}

id __113__MFMessageLoadingContextToEMSecurityInformationTransformer_securityInformationFromMFMessageLoadingContextEvent___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MFMessageSignerEMMessageSignerTransformer messageSignerFromMFMessageSigner:a2];

  return v2;
}

@end