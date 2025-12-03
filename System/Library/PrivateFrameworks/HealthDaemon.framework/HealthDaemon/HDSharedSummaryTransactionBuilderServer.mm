@interface HDSharedSummaryTransactionBuilderServer
+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error;
+ (id)requiredEntitlements;
- (BOOL)_createOrRetrieveTransactionIfNeededWithError:(void *)error;
- (BOOL)_retrieveTransactionIfNeededWithError:(void *)error;
- (HDSharedSummaryTransactionBuilderServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (uint64_t)_checkCommitStatusIfNeededWithError:(uint64_t)error;
- (void)remote_addMetadata:(id)metadata completion:(id)completion;
- (void)remote_addSummaries:(id)summaries completion:(id)completion;
- (void)remote_addedSummariesWithPackage:(id)package names:(id)names resultsHandler:(id)handler;
- (void)remote_commitAsUrgent:(BOOL)urgent completion:(id)completion;
- (void)remote_discardWithCompletion:(id)completion;
- (void)remote_getCommitStatusWithCompletion:(id)completion;
- (void)remote_removeAllSummariesWithPackage:(id)package completion:(id)completion;
- (void)remote_removeSummariesWithPackage:(id)package names:(id)names completion:(id)completion;
- (void)remote_removeSummariesWithUUIDs:(id)ds completion:(id)completion;
- (void)remote_reuseAllSummariesWithPackage:(id)package completion:(id)completion;
- (void)remote_reuseSummariesWithPackage:(id)package names:(id)names completion:(id)completion;
- (void)remote_reuseSummariesWithUUIDs:(id)ds completion:(id)completion;
@end

@implementation HDSharedSummaryTransactionBuilderServer

- (HDSharedSummaryTransactionBuilderServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = HDSharedSummaryTransactionBuilderServer;
  v11 = [(HDStandardTaskServer *)&v15 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  if (v11)
  {
    v12 = [configurationCopy copy];
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

+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error
{
  transactionUUID = [configuration transactionUUID];

  if (!transactionUUID)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Missing transaction UUID"];
  }

  return transactionUUID != 0;
}

- (void)remote_getCommitStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_committed)
  {
    (*(completionCopy + 2))(completionCopy, MEMORY[0x277CBEC38], 0);
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
      profile = [(HDStandardTaskServer *)self profile];
      database = [profile database];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __80__HDSharedSummaryTransactionBuilderServer_remote_getCommitStatusWithCompletion___block_invoke;
      v17[3] = &unk_278619398;
      v17[5] = &v19;
      v18 = v8;
      v17[4] = self;
      v11 = [(HDHealthEntity *)HDSharedSummaryTransactionEntity performReadTransactionWithHealthDatabase:database error:&v18 block:v17];
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

- (BOOL)_retrieveTransactionIfNeededWithError:(void *)error
{
  errorCopy = error;
  if (error)
  {
    if (error[6])
    {
      return 1;
    }

    else
    {
      profile = [error profile];
      sharedSummaryManager = [profile sharedSummaryManager];
      transactionUUID = [*(errorCopy + 40) transactionUUID];
      allowCommitted = [*(errorCopy + 40) allowCommitted];
      v18 = 0;
      v8 = [sharedSummaryManager transactionWithUUID:transactionUUID requireUncommitted:allowCommitted ^ 1u error:&v18];
      v9 = v18;
      v10 = *(errorCopy + 48);
      *(errorCopy + 48) = v8;

      v11 = *(errorCopy + 48);
      if (!(v11 | v9))
      {
        v12 = MEMORY[0x277CCA9B8];
        taskUUID = [errorCopy taskUUID];
        uUIDString = [taskUUID UUIDString];
        v9 = [v12 hk_error:118 format:{@"Transaction with UUID %@ not found", uUIDString}];

        v11 = *(errorCopy + 48);
      }

      if (v11)
      {
        errorCopy = [(HDSharedSummaryTransactionBuilderServer *)errorCopy _checkCommitStatusIfNeededWithError:a2];
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

        return *(errorCopy + 48) != 0;
      }
    }
  }

  return errorCopy;
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

- (void)remote_addSummaries:(id)summaries completion:(id)completion
{
  summariesCopy = summaries;
  completionCopy = completion;
  if (self->_committed)
  {
    v8 = [MEMORY[0x277CCA9B8] hk_error:126 description:@"Transaction already committed"];
LABEL_5:
    completionCopy[2](completionCopy, 0, v8);
    goto LABEL_6;
  }

  v16 = 0;
  v9 = [(HDSharedSummaryTransactionBuilderServer *)self _createOrRetrieveTransactionIfNeededWithError:?];
  v8 = v16;
  if (!v9)
  {
    goto LABEL_5;
  }

  profile = [(HDStandardTaskServer *)self profile];
  sharedSummaryManager = [profile sharedSummaryManager];
  transactionEntity = self->_transactionEntity;
  v15 = v8;
  v13 = [sharedSummaryManager addSharedSummaries:summariesCopy transactionEntity:transactionEntity error:&v15];
  v14 = v15;

  completionCopy[2](completionCopy, v13, v14);
  v8 = v14;
LABEL_6:
}

- (BOOL)_createOrRetrieveTransactionIfNeededWithError:(void *)error
{
  errorCopy = error;
  if (error)
  {
    if (error[6])
    {
      return 1;
    }

    else
    {
      profile = [error profile];
      sharedSummaryManager = [profile sharedSummaryManager];
      transactionUUID = [*(errorCopy + 40) transactionUUID];
      allowCommitted = [*(errorCopy + 40) allowCommitted];
      v21 = 0;
      v8 = [sharedSummaryManager transactionWithUUID:transactionUUID requireUncommitted:allowCommitted ^ 1u error:&v21];
      v9 = v21;
      v10 = *(errorCopy + 48);
      *(errorCopy + 48) = v8;

      v11 = *(errorCopy + 48);
      if (!(v11 | v9))
      {
        profile2 = [errorCopy profile];
        sharedSummaryManager2 = [profile2 sharedSummaryManager];
        transactionUUID2 = [*(errorCopy + 40) transactionUUID];
        v20 = 0;
        v15 = [sharedSummaryManager2 createNewTransactionWithUUID:transactionUUID2 error:&v20];
        v9 = v20;
        v16 = *(errorCopy + 48);
        *(errorCopy + 48) = v15;

        v11 = *(errorCopy + 48);
      }

      if (v11)
      {
        errorCopy = [(HDSharedSummaryTransactionBuilderServer *)errorCopy _checkCommitStatusIfNeededWithError:a2];
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

        return *(errorCopy + 48) != 0;
      }
    }
  }

  return errorCopy;
}

- (void)remote_reuseSummariesWithUUIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if (self->_committed)
  {
    v8 = [MEMORY[0x277CCA9B8] hk_error:126 description:@"Transaction already committed"];
LABEL_5:
    completionCopy[2](completionCopy, 0, v8);
    goto LABEL_6;
  }

  v16 = 0;
  v9 = [(HDSharedSummaryTransactionBuilderServer *)self _createOrRetrieveTransactionIfNeededWithError:?];
  v8 = v16;
  if (!v9)
  {
    goto LABEL_5;
  }

  profile = [(HDStandardTaskServer *)self profile];
  sharedSummaryManager = [profile sharedSummaryManager];
  transactionEntity = self->_transactionEntity;
  v15 = v8;
  v13 = [sharedSummaryManager reuseSharedSummariesWithUUIDs:dsCopy transactionEntity:transactionEntity error:&v15];
  v14 = v15;

  completionCopy[2](completionCopy, v13, v14);
  v8 = v14;
LABEL_6:
}

- (void)remote_reuseSummariesWithPackage:(id)package names:(id)names completion:(id)completion
{
  packageCopy = package;
  namesCopy = names;
  completionCopy = completion;
  if (self->_committed)
  {
    v11 = [MEMORY[0x277CCA9B8] hk_error:126 description:@"Transaction already committed"];
LABEL_5:
    completionCopy[2](completionCopy, 0, v11);
    goto LABEL_6;
  }

  v19 = 0;
  v12 = [(HDSharedSummaryTransactionBuilderServer *)self _createOrRetrieveTransactionIfNeededWithError:?];
  v11 = v19;
  if (!v12)
  {
    goto LABEL_5;
  }

  profile = [(HDStandardTaskServer *)self profile];
  sharedSummaryManager = [profile sharedSummaryManager];
  transactionEntity = self->_transactionEntity;
  v18 = v11;
  v16 = [sharedSummaryManager reuseSharedSummariesWithPackage:packageCopy names:namesCopy transactionEntity:transactionEntity error:&v18];
  v17 = v18;

  completionCopy[2](completionCopy, v16, v17);
  v11 = v17;
LABEL_6:
}

- (void)remote_reuseAllSummariesWithPackage:(id)package completion:(id)completion
{
  packageCopy = package;
  completionCopy = completion;
  if (self->_committed)
  {
    v8 = [MEMORY[0x277CCA9B8] hk_error:126 description:@"Transaction already committed"];
LABEL_5:
    completionCopy[2](completionCopy, 0, v8);
    goto LABEL_6;
  }

  v16 = 0;
  v9 = [(HDSharedSummaryTransactionBuilderServer *)self _createOrRetrieveTransactionIfNeededWithError:?];
  v8 = v16;
  if (!v9)
  {
    goto LABEL_5;
  }

  profile = [(HDStandardTaskServer *)self profile];
  sharedSummaryManager = [profile sharedSummaryManager];
  transactionEntity = self->_transactionEntity;
  v15 = v8;
  v13 = [sharedSummaryManager reuseSharedSummariesWithPackage:packageCopy names:0 transactionEntity:transactionEntity error:&v15];
  v14 = v15;

  completionCopy[2](completionCopy, v13, v14);
  v8 = v14;
LABEL_6:
}

- (void)remote_addMetadata:(id)metadata completion:(id)completion
{
  metadataCopy = metadata;
  completionCopy = completion;
  if (self->_committed)
  {
    v8 = [MEMORY[0x277CCA9B8] hk_error:126 description:@"Transaction already committed"];
LABEL_5:
    completionCopy[2](completionCopy, 0, v8);
    goto LABEL_6;
  }

  v16 = 0;
  v9 = [(HDSharedSummaryTransactionBuilderServer *)self _createOrRetrieveTransactionIfNeededWithError:?];
  v8 = v16;
  if (!v9)
  {
    goto LABEL_5;
  }

  profile = [(HDStandardTaskServer *)self profile];
  sharedSummaryManager = [profile sharedSummaryManager];
  transactionEntity = self->_transactionEntity;
  v15 = v8;
  v13 = [sharedSummaryManager addMetadata:metadataCopy transactionEntity:transactionEntity error:&v15];
  v14 = v15;

  completionCopy[2](completionCopy, v13, v14);
  v8 = v14;
LABEL_6:
}

- (void)remote_removeSummariesWithUUIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if (self->_committed)
  {
    v9 = [MEMORY[0x277CCA9B8] hk_error:126 description:@"Transaction already committed"];
LABEL_6:
    v14 = v9;
    completionCopy[2](completionCopy, 0, v9);
    goto LABEL_7;
  }

  if (!self->_transactionEntity)
  {
    v9 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Transaction not found"];
    goto LABEL_6;
  }

  profile = [(HDStandardTaskServer *)self profile];
  sharedSummaryManager = [profile sharedSummaryManager];
  transactionEntity = self->_transactionEntity;
  v15 = 0;
  v13 = [sharedSummaryManager removeSummariesWithUUIDs:dsCopy transactionEntity:transactionEntity error:&v15];
  v14 = v15;

  completionCopy[2](completionCopy, v13, v14);
LABEL_7:
}

- (void)remote_removeSummariesWithPackage:(id)package names:(id)names completion:(id)completion
{
  packageCopy = package;
  namesCopy = names;
  completionCopy = completion;
  if (self->_committed)
  {
    v12 = [MEMORY[0x277CCA9B8] hk_error:126 description:@"Transaction already committed"];
LABEL_6:
    v17 = v12;
    completionCopy[2](completionCopy, 0, v12);
    goto LABEL_7;
  }

  if (!self->_transactionEntity)
  {
    v12 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Transaction not found"];
    goto LABEL_6;
  }

  profile = [(HDStandardTaskServer *)self profile];
  sharedSummaryManager = [profile sharedSummaryManager];
  transactionEntity = self->_transactionEntity;
  v18 = 0;
  v16 = [sharedSummaryManager removeSummariesWithPackage:packageCopy names:namesCopy transactionEntity:transactionEntity error:&v18];
  v17 = v18;

  completionCopy[2](completionCopy, v16, v17);
LABEL_7:
}

- (void)remote_removeAllSummariesWithPackage:(id)package completion:(id)completion
{
  packageCopy = package;
  completionCopy = completion;
  if (self->_committed)
  {
    v9 = [MEMORY[0x277CCA9B8] hk_error:126 description:@"Transaction already committed"];
LABEL_6:
    v14 = v9;
    completionCopy[2](completionCopy, 0, v9);
    goto LABEL_7;
  }

  if (!self->_transactionEntity)
  {
    v9 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Transaction not found"];
    goto LABEL_6;
  }

  profile = [(HDStandardTaskServer *)self profile];
  sharedSummaryManager = [profile sharedSummaryManager];
  transactionEntity = self->_transactionEntity;
  v15 = 0;
  v13 = [sharedSummaryManager removeSummariesWithPackage:packageCopy names:0 transactionEntity:transactionEntity error:&v15];
  v14 = v15;

  completionCopy[2](completionCopy, v13, v14);
LABEL_7:
}

- (void)remote_commitAsUrgent:(BOOL)urgent completion:(id)completion
{
  urgentCopy = urgent;
  completionCopy = completion;
  if (self->_committed)
  {
    v7 = [MEMORY[0x277CCA9B8] hk_error:126 description:@"Transaction already committed"];
    completionCopy[2](completionCopy, 0, v7);
  }

  else
  {
    v19 = 0;
    v8 = [(HDSharedSummaryTransactionBuilderServer *)self _createOrRetrieveTransactionIfNeededWithError:?];
    v9 = v19;
    if (v8)
    {
      profile = [(HDStandardTaskServer *)self profile];
      sharedSummaryManager = [profile sharedSummaryManager];
      transactionEntity = self->_transactionEntity;
      v18 = v9;
      v13 = [sharedSummaryManager commitTransactionEntity:transactionEntity error:&v18];
      v7 = v18;

      self->_committed = v13 != 0;
      if (v13)
      {
        profile2 = [(HDStandardTaskServer *)self profile];
        cloudSyncManager = [profile2 cloudSyncManager];
        sharedSummaryManager2 = [cloudSyncManager sharedSummaryManager];
        v17 = sharedSummaryManager2;
        if (urgentCopy)
        {
          [sharedSummaryManager2 scheduleUrgentPush];
        }

        else
        {
          [sharedSummaryManager2 scheduleBackgroundPush];
        }
      }

      (completionCopy)[2](completionCopy, v13, v7);
    }

    else
    {
      completionCopy[2](completionCopy, 0, v9);
      v7 = v9;
    }
  }
}

- (void)remote_discardWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self->_committed)
  {
    v5 = [MEMORY[0x277CCA9B8] hk_error:126 description:@"Transaction already committed"];
LABEL_5:
    completionCopy[2](completionCopy, 0, v5);
    goto LABEL_6;
  }

  v13 = 0;
  v6 = [(HDSharedSummaryTransactionBuilderServer *)self _retrieveTransactionIfNeededWithError:?];
  v5 = v13;
  if (!v6)
  {
    goto LABEL_5;
  }

  profile = [(HDStandardTaskServer *)self profile];
  sharedSummaryManager = [profile sharedSummaryManager];
  transactionEntity = self->_transactionEntity;
  v12 = v5;
  v10 = [sharedSummaryManager discardTransactionEntity:transactionEntity error:&v12];
  v11 = v12;

  completionCopy[2](completionCopy, v10, v11);
  v5 = v11;
LABEL_6:
}

- (void)remote_addedSummariesWithPackage:(id)package names:(id)names resultsHandler:(id)handler
{
  packageCopy = package;
  namesCopy = names;
  handlerCopy = handler;
  if (self)
  {
    v26 = 0;
    v11 = [(HDSharedSummaryTransactionBuilderServer *)self _createOrRetrieveTransactionIfNeededWithError:?];
    v12 = v26;
    if (!v11)
    {
      handlerCopy[2](handlerCopy, 0, 1, v12);
LABEL_15:

      goto LABEL_16;
    }

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    profile = [(HDStandardTaskServer *)self profile];
    sharedSummaryManager = [profile sharedSummaryManager];
    transactionEntity = self->_transactionEntity;
    v25 = v12;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __91__HDSharedSummaryTransactionBuilderServer__addedSummariesWithPackage_names_resultsHandler___block_invoke;
    v23[3] = &unk_278628C30;
    v17 = v13;
    v24 = v17;
    LODWORD(transactionEntity) = [sharedSummaryManager enumerateSummariesInTransactionEntity:transactionEntity package:packageCopy names:namesCopy error:&v25 handler:v23];
    v18 = v25;

    if (transactionEntity)
    {
      v19 = [v17 count];
      if (namesCopy)
      {
        if (v19 < [namesCopy count])
        {
          [MEMORY[0x277CCA9B8] hk_error:118 format:{@"Some names not found for package %@ in %@", packageCopy, namesCopy}];
          v20 = LABEL_10:;

          v18 = v20;
        }
      }

      else if (!v19)
      {
        [MEMORY[0x277CCA9B8] hk_error:118 format:{@"Cannot find summaries for package %@", packageCopy, v22}];
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

    (handlerCopy)[2](handlerCopy, v21, 1, v18);

    v12 = v18;
    goto LABEL_15;
  }

LABEL_16:
}

- (uint64_t)_checkCommitStatusIfNeededWithError:(uint64_t)error
{
  if (![*(error + 40) allowCommitted] || !*(error + 48))
  {
    return 1;
  }

  profile = [error profile];
  database = [profile database];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HDSharedSummaryTransactionBuilderServer__checkCommitStatusIfNeededWithError___block_invoke;
  v8[3] = &unk_278616048;
  v8[4] = error;
  v6 = [(HDHealthEntity *)HDSharedSummaryTransactionEntity performReadTransactionWithHealthDatabase:database error:a2 block:v8];

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