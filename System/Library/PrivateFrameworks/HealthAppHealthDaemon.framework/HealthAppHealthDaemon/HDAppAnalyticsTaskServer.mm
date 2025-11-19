@interface HDAppAnalyticsTaskServer
+ (id)requiredEntitlements;
- (void)remote_setAccepted:(BOOL)a3 agreement:(id)a4 version:(int64_t)a5 completion:(id)a6;
- (void)remote_setAccepted:(BOOL)a3 currentAgreement:(id)a4 completion:(id)a5;
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

- (void)remote_setAccepted:(BOOL)a3 agreement:(id)a4 version:(int64_t)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = [(HDStandardTaskServer *)self profile];
  v13 = +[HDHealthAppPlugin pluginIdentifier];
  v14 = [v12 profileExtensionWithIdentifier:v13];

  if (v14)
  {
    v15 = [(HDStandardTaskServer *)self profile];
    v16 = [v15 database];
    v17 = [MEMORY[0x277D106B8] contextForWriting];
    v25 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __76__HDAppAnalyticsTaskServer_remote_setAccepted_agreement_version_completion___block_invoke;
    v21[3] = &unk_278658498;
    v24 = a3;
    v22 = v10;
    v23 = a5;
    v18 = [v16 performTransactionWithContext:v17 error:&v25 block:v21 inaccessibilityHandler:0];
    v19 = v25;

    v11[2](v11, v18, v19);
  }

  else
  {
    v20 = [MEMORY[0x277CCA9B8] hk_error:125 format:@"No extension found."];
    v11[2](v11, 0, v20);
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

- (void)remote_setAccepted:(BOOL)a3 currentAgreement:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(HDStandardTaskServer *)self profile];
  v11 = +[HDHealthAppPlugin pluginIdentifier];
  v12 = [v10 profileExtensionWithIdentifier:v11];

  if (v12)
  {
    v13 = [v12 appAnalyticsUpdateManager];
    v14 = [v13 currentVersionForAgreement:v8];

    v15 = [(HDStandardTaskServer *)self profile];
    v16 = [v15 database];
    v17 = [MEMORY[0x277D106B8] contextForWriting];
    v26 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __75__HDAppAnalyticsTaskServer_remote_setAccepted_currentAgreement_completion___block_invoke;
    v21[3] = &unk_2786584C0;
    v22 = v12;
    v25 = a3;
    v23 = v8;
    v24 = v14;
    v18 = [v16 performTransactionWithContext:v17 error:&v26 block:v21 inaccessibilityHandler:0];
    v19 = v26;

    v9[2](v9, v18, v19);
  }

  else
  {
    v20 = [MEMORY[0x277CCA9B8] hk_error:125 format:@"No extension found."];
    v9[2](v9, 0, v20);
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