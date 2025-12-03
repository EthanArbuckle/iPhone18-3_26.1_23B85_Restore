@interface HDAppAnalyticsTaskServer
+ (id)requiredEntitlements;
- (void)remote_setAccepted:(BOOL)accepted agreement:(id)agreement version:(int64_t)version completion:(id)completion;
- (void)remote_setAccepted:(BOOL)accepted currentAgreement:(id)agreement completion:(id)completion;
@end

@implementation HDAppAnalyticsTaskServer

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)remote_setAccepted:(BOOL)accepted agreement:(id)agreement version:(int64_t)version completion:(id)completion
{
  agreementCopy = agreement;
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  v13 = +[HDHealthAppPlugin pluginIdentifier];
  v14 = [profile profileExtensionWithIdentifier:v13];

  if (v14)
  {
    profile2 = [(HDStandardTaskServer *)self profile];
    database = [profile2 database];
    contextForWriting = [MEMORY[0x277D106B8] contextForWriting];
    v25 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __76__HDAppAnalyticsTaskServer_remote_setAccepted_agreement_version_completion___block_invoke;
    v21[3] = &unk_278658498;
    acceptedCopy = accepted;
    v22 = agreementCopy;
    versionCopy = version;
    v18 = [database performTransactionWithContext:contextForWriting error:&v25 block:v21 inaccessibilityHandler:0];
    v19 = v25;

    completionCopy[2](completionCopy, v18, v19);
  }

  else
  {
    v20 = [MEMORY[0x277CCA9B8] hk_error:125 format:@"No extension found."];
    completionCopy[2](completionCopy, 0, v20);
  }
}

BOOL __76__HDAppAnalyticsTaskServer_remote_setAccepted_agreement_version_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = MEMORY[0x277CBEAA8];
  v8 = a2;
  v9 = [v7 date];
  v10 = [HDAppAnalyticsAcceptanceEntity setAcceptance:v4 agreement:v5 version:v6 modificationDate:v9 transaction:v8 error:a3];

  return v10;
}

- (void)remote_setAccepted:(BOOL)accepted currentAgreement:(id)agreement completion:(id)completion
{
  agreementCopy = agreement;
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  v11 = +[HDHealthAppPlugin pluginIdentifier];
  v12 = [profile profileExtensionWithIdentifier:v11];

  if (v12)
  {
    appAnalyticsUpdateManager = [v12 appAnalyticsUpdateManager];
    v14 = [appAnalyticsUpdateManager currentVersionForAgreement:agreementCopy];

    profile2 = [(HDStandardTaskServer *)self profile];
    database = [profile2 database];
    contextForWriting = [MEMORY[0x277D106B8] contextForWriting];
    v26 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __75__HDAppAnalyticsTaskServer_remote_setAccepted_currentAgreement_completion___block_invoke;
    v21[3] = &unk_2786584C0;
    v22 = v12;
    acceptedCopy = accepted;
    v23 = agreementCopy;
    v24 = v14;
    v18 = [database performTransactionWithContext:contextForWriting error:&v26 block:v21 inaccessibilityHandler:0];
    v19 = v26;

    completionCopy[2](completionCopy, v18, v19);
  }

  else
  {
    v20 = [MEMORY[0x277CCA9B8] hk_error:125 format:@"No extension found."];
    completionCopy[2](completionCopy, 0, v20);
  }
}

uint64_t __75__HDAppAnalyticsTaskServer_remote_setAccepted_currentAgreement_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 appAnalyticsUpdateManager];
  v8 = *(a1 + 56);
  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = [MEMORY[0x277CBEAA8] date];
  v12 = [v7 setAccepted:v8 agreement:v10 version:v9 modificationDate:v11 transaction:v6 error:a3];

  return v12;
}

@end