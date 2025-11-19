@interface HDSharedSummaryTransactionBuilderServer
+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5;
+ (id)requiredEntitlements;
- (BOOL)_createOrRetrieveTransactionIfNeededWithError:(void *)a1;
- (BOOL)_retrieveTransactionIfNeededWithError:(void *)a1;
- (HDSharedSummaryTransactionBuilderServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (uint64_t)_checkCommitStatusIfNeededWithError:(uint64_t)a1;
- (void)remote_addMetadata:(id)a3 completion:(id)a4;
- (void)remote_addSummaries:(id)a3 completion:(id)a4;
- (void)remote_addedSummariesWithPackage:(id)a3 names:(id)a4 resultsHandler:(id)a5;
- (void)remote_commitAsUrgent:(BOOL)a3 completion:(id)a4;
- (void)remote_discardWithCompletion:(id)a3;
- (void)remote_getCommitStatusWithCompletion:(id)a3;
- (void)remote_removeAllSummariesWithPackage:(id)a3 completion:(id)a4;
- (void)remote_removeSummariesWithPackage:(id)a3 names:(id)a4 completion:(id)a5;
- (void)remote_removeSummariesWithUUIDs:(id)a3 completion:(id)a4;
- (void)remote_reuseAllSummariesWithPackage:(id)a3 completion:(id)a4;
- (void)remote_reuseSummariesWithPackage:(id)a3 names:(id)a4 completion:(id)a5;
- (void)remote_reuseSummariesWithUUIDs:(id)a3 completion:(id)a4;
@end

@implementation HDSharedSummaryTransactionBuilderServer

- (HDSharedSummaryTransactionBuilderServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v15.receiver = self;
  v15.super_class = HDSharedSummaryTransactionBuilderServer;
  v11 = [(HDStandardTaskServer *)&v15 initWithUUID:a3 configuration:v10 client:a5 delegate:a6];
  if (v11)
  {
    v12 = [v10 copy];
    configuration = v11->_configuration;
    v11->_configuration = v12;
  }

  return v11;
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5
{
  v6 = [a3 transactionUUID];

  if (!v6)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 format:@"Missing transaction UUID"];
  }

  return v6 != 0;
}

- (void)remote_getCommitStatusWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_committed)
  {
    (*(v4 + 2))(v4, MEMORY[0x277CBEC38], 0);
  }

  else
  {
    v23 = 0;
    v6 = [(HDSharedSummaryTransactionBuilderServer *)self _retrieveTransactionIfNeededWithError:?];
    v7 = v23;
    v8 = v7;
    if (v6)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 0;
      v9 = [(HDStandardTaskServer *)self profile];
      v10 = [v9 database];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __80__HDSharedSummaryTransactionBuilderServer_remote_getCommitStatusWithCompletion___block_invoke;
      v17[3] = &unk_278619398;
      v17[5] = &v19;
      v18 = v8;
      v17[4] = self;
      v11 = [(HDHealthEntity *)HDSharedSummaryTransactionEntity performReadTransactionWithHealthDatabase:v10 error:&v18 block:v17];
      v12 = v18;

      if (v11)
      {
        v13 = [MEMORY[0x277CCABB0] numberWithBool:*(v20 + 24)];
        (v5)[2](v5, v13, 0);
      }

      else
      {
        (v5)[2](v5, 0, v12);
      }

      _Block_object_dispose(&v19, 8);
    }

    else
    {
      if ([v7 hk_isHealthKitErrorWithCode:126])
      {
        v14 = MEMORY[0x277CBEC38];
        v15 = v5;
        v16 = 0;
      }

      else
      {
        v15 = v5;
        v14 = 0;
        v16 = v8;
      }

      (v5)[2](v15, v14, v16);
      v12 = v8;
    }
  }
}

- (BOOL)_retrieveTransactionIfNeededWithError:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    if (a1[6])
    {
      return 1;
    }

    else
    {
      v4 = [a1 profile];
      v5 = [v4 sharedSummaryManager];
      v6 = [*(v2 + 40) transactionUUID];
      v7 = [*(v2 + 40) allowCommitted];
      v18 = 0;
      v8 = [v5 transactionWithUUID:v6 requireUncommitted:v7 ^ 1u error:&v18];
      v9 = v18;
      v10 = *(v2 + 48);
      *(v2 + 48) = v8;

      v11 = *(v2 + 48);
      if (!(v11 | v9))
      {
        v12 = MEMORY[0x277CCA9B8];
        v13 = [v2 taskUUID];
        v14 = [v13 UUIDString];
        v9 = [v12 hk_error:118 format:{@"Transaction with UUID %@ not found", v14}];

        v11 = *(v2 + 48);
      }

      if (v11)
      {
        v2 = [(HDSharedSummaryTransactionBuilderServer *)v2 _checkCommitStatusIfNeededWithError:a2];
      }

      else
      {
        v15 = v9;
        if (v15)
        {
          if (a2)
          {
            v16 = v15;
            *a2 = v15;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        return *(v2 + 48) != 0;
      }
    }
  }

  return v2;
}

BOOL __80__HDSharedSummaryTransactionBuilderServer_remote_getCommitStatusWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 48);
  v11 = 0;
  v6 = [v5 committedInDatabaseTransaction:a2 error:&v11];
  v7 = v11;
  *(*(*(a1 + 40) + 8) + 24) = v6;
  v8 = v7;
  if (v8)
  {
    if (a3)
    {
      v9 = v8;
      *a3 = v8;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v8 == 0;
}

- (void)remote_addSummaries:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_committed)
  {
    v8 = [MEMORY[0x277CCA9B8] hk_error:126 description:@"Transaction already committed"];
LABEL_5:
    v7[2](v7, 0, v8);
    goto LABEL_6;
  }

  v16 = 0;
  v9 = [(HDSharedSummaryTransactionBuilderServer *)self _createOrRetrieveTransactionIfNeededWithError:?];
  v8 = v16;
  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = [(HDStandardTaskServer *)self profile];
  v11 = [v10 sharedSummaryManager];
  transactionEntity = self->_transactionEntity;
  v15 = v8;
  v13 = [v11 addSharedSummaries:v6 transactionEntity:transactionEntity error:&v15];
  v14 = v15;

  v7[2](v7, v13, v14);
  v8 = v14;
LABEL_6:
}

- (BOOL)_createOrRetrieveTransactionIfNeededWithError:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    if (a1[6])
    {
      return 1;
    }

    else
    {
      v4 = [a1 profile];
      v5 = [v4 sharedSummaryManager];
      v6 = [*(v2 + 40) transactionUUID];
      v7 = [*(v2 + 40) allowCommitted];
      v21 = 0;
      v8 = [v5 transactionWithUUID:v6 requireUncommitted:v7 ^ 1u error:&v21];
      v9 = v21;
      v10 = *(v2 + 48);
      *(v2 + 48) = v8;

      v11 = *(v2 + 48);
      if (!(v11 | v9))
      {
        v12 = [v2 profile];
        v13 = [v12 sharedSummaryManager];
        v14 = [*(v2 + 40) transactionUUID];
        v20 = 0;
        v15 = [v13 createNewTransactionWithUUID:v14 error:&v20];
        v9 = v20;
        v16 = *(v2 + 48);
        *(v2 + 48) = v15;

        v11 = *(v2 + 48);
      }

      if (v11)
      {
        v2 = [(HDSharedSummaryTransactionBuilderServer *)v2 _checkCommitStatusIfNeededWithError:a2];
      }

      else
      {
        v17 = v9;
        if (v17)
        {
          if (a2)
          {
            v18 = v17;
            *a2 = v17;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        return *(v2 + 48) != 0;
      }
    }
  }

  return v2;
}

- (void)remote_reuseSummariesWithUUIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_committed)
  {
    v8 = [MEMORY[0x277CCA9B8] hk_error:126 description:@"Transaction already committed"];
LABEL_5:
    v7[2](v7, 0, v8);
    goto LABEL_6;
  }

  v16 = 0;
  v9 = [(HDSharedSummaryTransactionBuilderServer *)self _createOrRetrieveTransactionIfNeededWithError:?];
  v8 = v16;
  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = [(HDStandardTaskServer *)self profile];
  v11 = [v10 sharedSummaryManager];
  transactionEntity = self->_transactionEntity;
  v15 = v8;
  v13 = [v11 reuseSharedSummariesWithUUIDs:v6 transactionEntity:transactionEntity error:&v15];
  v14 = v15;

  v7[2](v7, v13, v14);
  v8 = v14;
LABEL_6:
}

- (void)remote_reuseSummariesWithPackage:(id)a3 names:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_committed)
  {
    v11 = [MEMORY[0x277CCA9B8] hk_error:126 description:@"Transaction already committed"];
LABEL_5:
    v10[2](v10, 0, v11);
    goto LABEL_6;
  }

  v19 = 0;
  v12 = [(HDSharedSummaryTransactionBuilderServer *)self _createOrRetrieveTransactionIfNeededWithError:?];
  v11 = v19;
  if (!v12)
  {
    goto LABEL_5;
  }

  v13 = [(HDStandardTaskServer *)self profile];
  v14 = [v13 sharedSummaryManager];
  transactionEntity = self->_transactionEntity;
  v18 = v11;
  v16 = [v14 reuseSharedSummariesWithPackage:v8 names:v9 transactionEntity:transactionEntity error:&v18];
  v17 = v18;

  v10[2](v10, v16, v17);
  v11 = v17;
LABEL_6:
}

- (void)remote_reuseAllSummariesWithPackage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_committed)
  {
    v8 = [MEMORY[0x277CCA9B8] hk_error:126 description:@"Transaction already committed"];
LABEL_5:
    v7[2](v7, 0, v8);
    goto LABEL_6;
  }

  v16 = 0;
  v9 = [(HDSharedSummaryTransactionBuilderServer *)self _createOrRetrieveTransactionIfNeededWithError:?];
  v8 = v16;
  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = [(HDStandardTaskServer *)self profile];
  v11 = [v10 sharedSummaryManager];
  transactionEntity = self->_transactionEntity;
  v15 = v8;
  v13 = [v11 reuseSharedSummariesWithPackage:v6 names:0 transactionEntity:transactionEntity error:&v15];
  v14 = v15;

  v7[2](v7, v13, v14);
  v8 = v14;
LABEL_6:
}

- (void)remote_addMetadata:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_committed)
  {
    v8 = [MEMORY[0x277CCA9B8] hk_error:126 description:@"Transaction already committed"];
LABEL_5:
    v7[2](v7, 0, v8);
    goto LABEL_6;
  }

  v16 = 0;
  v9 = [(HDSharedSummaryTransactionBuilderServer *)self _createOrRetrieveTransactionIfNeededWithError:?];
  v8 = v16;
  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = [(HDStandardTaskServer *)self profile];
  v11 = [v10 sharedSummaryManager];
  transactionEntity = self->_transactionEntity;
  v15 = v8;
  v13 = [v11 addMetadata:v6 transactionEntity:transactionEntity error:&v15];
  v14 = v15;

  v7[2](v7, v13, v14);
  v8 = v14;
LABEL_6:
}

- (void)remote_removeSummariesWithUUIDs:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (self->_committed)
  {
    v9 = [MEMORY[0x277CCA9B8] hk_error:126 description:@"Transaction already committed"];
LABEL_6:
    v14 = v9;
    v8[2](v8, 0, v9);
    goto LABEL_7;
  }

  if (!self->_transactionEntity)
  {
    v9 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Transaction not found"];
    goto LABEL_6;
  }

  v10 = [(HDStandardTaskServer *)self profile];
  v11 = [v10 sharedSummaryManager];
  transactionEntity = self->_transactionEntity;
  v15 = 0;
  v13 = [v11 removeSummariesWithUUIDs:v7 transactionEntity:transactionEntity error:&v15];
  v14 = v15;

  v8[2](v8, v13, v14);
LABEL_7:
}

- (void)remote_removeSummariesWithPackage:(id)a3 names:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (self->_committed)
  {
    v12 = [MEMORY[0x277CCA9B8] hk_error:126 description:@"Transaction already committed"];
LABEL_6:
    v17 = v12;
    v11[2](v11, 0, v12);
    goto LABEL_7;
  }

  if (!self->_transactionEntity)
  {
    v12 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Transaction not found"];
    goto LABEL_6;
  }

  v13 = [(HDStandardTaskServer *)self profile];
  v14 = [v13 sharedSummaryManager];
  transactionEntity = self->_transactionEntity;
  v18 = 0;
  v16 = [v14 removeSummariesWithPackage:v9 names:v10 transactionEntity:transactionEntity error:&v18];
  v17 = v18;

  v11[2](v11, v16, v17);
LABEL_7:
}

- (void)remote_removeAllSummariesWithPackage:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (self->_committed)
  {
    v9 = [MEMORY[0x277CCA9B8] hk_error:126 description:@"Transaction already committed"];
LABEL_6:
    v14 = v9;
    v8[2](v8, 0, v9);
    goto LABEL_7;
  }

  if (!self->_transactionEntity)
  {
    v9 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Transaction not found"];
    goto LABEL_6;
  }

  v10 = [(HDStandardTaskServer *)self profile];
  v11 = [v10 sharedSummaryManager];
  transactionEntity = self->_transactionEntity;
  v15 = 0;
  v13 = [v11 removeSummariesWithPackage:v7 names:0 transactionEntity:transactionEntity error:&v15];
  v14 = v15;

  v8[2](v8, v13, v14);
LABEL_7:
}

- (void)remote_commitAsUrgent:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (self->_committed)
  {
    v7 = [MEMORY[0x277CCA9B8] hk_error:126 description:@"Transaction already committed"];
    v6[2](v6, 0, v7);
  }

  else
  {
    v19 = 0;
    v8 = [(HDSharedSummaryTransactionBuilderServer *)self _createOrRetrieveTransactionIfNeededWithError:?];
    v9 = v19;
    if (v8)
    {
      v10 = [(HDStandardTaskServer *)self profile];
      v11 = [v10 sharedSummaryManager];
      transactionEntity = self->_transactionEntity;
      v18 = v9;
      v13 = [v11 commitTransactionEntity:transactionEntity error:&v18];
      v7 = v18;

      self->_committed = v13 != 0;
      if (v13)
      {
        v14 = [(HDStandardTaskServer *)self profile];
        v15 = [v14 cloudSyncManager];
        v16 = [v15 sharedSummaryManager];
        v17 = v16;
        if (v4)
        {
          [v16 scheduleUrgentPush];
        }

        else
        {
          [v16 scheduleBackgroundPush];
        }
      }

      (v6)[2](v6, v13, v7);
    }

    else
    {
      v6[2](v6, 0, v9);
      v7 = v9;
    }
  }
}

- (void)remote_discardWithCompletion:(id)a3
{
  v4 = a3;
  if (self->_committed)
  {
    v5 = [MEMORY[0x277CCA9B8] hk_error:126 description:@"Transaction already committed"];
LABEL_5:
    v4[2](v4, 0, v5);
    goto LABEL_6;
  }

  v13 = 0;
  v6 = [(HDSharedSummaryTransactionBuilderServer *)self _retrieveTransactionIfNeededWithError:?];
  v5 = v13;
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [(HDStandardTaskServer *)self profile];
  v8 = [v7 sharedSummaryManager];
  transactionEntity = self->_transactionEntity;
  v12 = v5;
  v10 = [v8 discardTransactionEntity:transactionEntity error:&v12];
  v11 = v12;

  v4[2](v4, v10, v11);
  v5 = v11;
LABEL_6:
}

- (void)remote_addedSummariesWithPackage:(id)a3 names:(id)a4 resultsHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self)
  {
    v26 = 0;
    v11 = [(HDSharedSummaryTransactionBuilderServer *)self _createOrRetrieveTransactionIfNeededWithError:?];
    v12 = v26;
    if (!v11)
    {
      v10[2](v10, 0, 1, v12);
LABEL_15:

      goto LABEL_16;
    }

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = [(HDStandardTaskServer *)self profile];
    v15 = [v14 sharedSummaryManager];
    transactionEntity = self->_transactionEntity;
    v25 = v12;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __91__HDSharedSummaryTransactionBuilderServer__addedSummariesWithPackage_names_resultsHandler___block_invoke;
    v23[3] = &unk_278628C30;
    v17 = v13;
    v24 = v17;
    LODWORD(transactionEntity) = [v15 enumerateSummariesInTransactionEntity:transactionEntity package:v8 names:v9 error:&v25 handler:v23];
    v18 = v25;

    if (transactionEntity)
    {
      v19 = [v17 count];
      if (v9)
      {
        if (v19 < [v9 count])
        {
          [MEMORY[0x277CCA9B8] hk_error:118 format:{@"Some names not found for package %@ in %@", v8, v9}];
          v20 = LABEL_10:;

          v18 = v20;
        }
      }

      else if (!v19)
      {
        [MEMORY[0x277CCA9B8] hk_error:118 format:{@"Cannot find summaries for package %@", v8, v22}];
        goto LABEL_10;
      }
    }

    if ([v17 count])
    {
      v21 = v17;
    }

    else
    {
      v21 = 0;
    }

    (v10)[2](v10, v21, 1, v18);

    v12 = v18;
    goto LABEL_15;
  }

LABEL_16:
}

- (uint64_t)_checkCommitStatusIfNeededWithError:(uint64_t)a1
{
  if (![*(a1 + 40) allowCommitted] || !*(a1 + 48))
  {
    return 1;
  }

  v4 = [a1 profile];
  v5 = [v4 database];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HDSharedSummaryTransactionBuilderServer__checkCommitStatusIfNeededWithError___block_invoke;
  v8[3] = &unk_278616048;
  v8[4] = a1;
  v6 = [(HDHealthEntity *)HDSharedSummaryTransactionEntity performReadTransactionWithHealthDatabase:v5 error:a2 block:v8];

  return v6;
}

uint64_t __79__HDSharedSummaryTransactionBuilderServer__checkCommitStatusIfNeededWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 48);
  v11 = 0;
  v6 = [v5 committedInDatabaseTransaction:a2 error:&v11];
  v7 = v11;
  *(*(a1 + 32) + 56) = v6;
  if (v7)
  {
    v8 = *(*(a1 + 32) + 56);
  }

  else
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    if (a3)
    {
      v9 = v7;
      *a3 = v7;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v8;
}

@end