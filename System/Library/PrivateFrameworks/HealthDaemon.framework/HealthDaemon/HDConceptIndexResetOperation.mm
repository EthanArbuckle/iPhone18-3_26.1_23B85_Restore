@interface HDConceptIndexResetOperation
- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (HDConceptIndexResetOperation)init;
- (HDConceptIndexResetOperation)initWithCoder:(id)a3;
@end

@implementation HDConceptIndexResetOperation

- (HDConceptIndexResetOperation)init
{
  v3.receiver = self;
  v3.super_class = HDConceptIndexResetOperation;
  return [(HDConceptIndexResetOperation *)&v3 init];
}

- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = [v6 database];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__HDConceptIndexResetOperation_performWithProfile_transaction_error___block_invoke;
  v10[3] = &unk_278616048;
  v11 = v6;
  v8 = v6;
  LOBYTE(a5) = [(HDHealthEntity *)HDConceptIndexEntity performWriteTransactionWithHealthDatabase:v7 error:a5 block:v10];

  return a5;
}

BOOL __69__HDConceptIndexResetOperation_performWithProfile_transaction_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v15 = 0;
  v7 = [HDConceptIndexer stateWithProfile:v6 transaction:v5 error:&v15];
  v8 = v15;
  if (!v8)
  {
    if ([HDConceptIndexEntity removeAllConceptIndexEntriesWithProfile:*(a1 + 32) error:a3])
    {
      v11 = [v5 protectedDatabase];
      v12 = [(HDSQLiteEntity *)HDAdHocConceptEntity deleteEntitiesInDatabase:v11 predicate:0 error:a3];

      if (v12)
      {
        v13 = +[HDConceptIndexState stateWithGeneration:](HDConceptIndexState, "stateWithGeneration:", [v7 generation] + 1);

        v10 = [HDConceptIndexer storeState:v13 profile:*(a1 + 32) transaction:v5 error:a3];
        v7 = v13;
        goto LABEL_9;
      }
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  if (!a3)
  {
    _HKLogDroppedError();
    goto LABEL_8;
  }

  v9 = v8;
  v10 = 0;
  *a3 = v8;
LABEL_9:

  return v10;
}

- (HDConceptIndexResetOperation)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = HDConceptIndexResetOperation;
  return [(HDConceptIndexResetOperation *)&v4 init];
}

@end