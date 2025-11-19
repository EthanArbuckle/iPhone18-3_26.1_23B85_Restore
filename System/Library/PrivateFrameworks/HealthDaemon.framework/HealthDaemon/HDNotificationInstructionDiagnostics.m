@interface HDNotificationInstructionDiagnostics
- (BOOL)enumerateAllNotificationInstructionsWithError:(id *)a3 enumerationHandler:(id)a4;
- (HDNotificationInstructionDiagnostics)initWithProfile:(id)a3;
@end

@implementation HDNotificationInstructionDiagnostics

- (HDNotificationInstructionDiagnostics)initWithProfile:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HDNotificationInstructionDiagnostics;
  v5 = [(HDNotificationInstructionDiagnostics *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = objc_alloc_init(MEMORY[0x277CCAA68]);
    formatter = v6->_formatter;
    v6->_formatter = v7;
  }

  return v6;
}

- (BOOL)enumerateAllNotificationInstructionsWithError:(id *)a3 enumerationHandler:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [WeakRetained database];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __105__HDNotificationInstructionDiagnostics_enumerateAllNotificationInstructionsWithError_enumerationHandler___block_invoke;
  v11[3] = &unk_278614AB8;
  v11[4] = self;
  v12 = v6;
  v9 = v6;
  LOBYTE(a3) = [(HDHealthEntity *)HDNotificationInstructionEntity performReadTransactionWithHealthDatabase:v8 error:a3 block:v11];

  return a3;
}

BOOL __105__HDNotificationInstructionDiagnostics_enumerateAllNotificationInstructionsWithError_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __105__HDNotificationInstructionDiagnostics_enumerateAllNotificationInstructionsWithError_enumerationHandler___block_invoke_2;
  v9[3] = &unk_278614A90;
  v6 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v6;
  v7 = [HDNotificationInstructionEntity enumerateAllNotificationInstructionsWithTransaction:a2 predicate:0 limit:0 ascending:0 error:a3 enumerationHandler:v9];

  return v7;
}

uint64_t __105__HDNotificationInstructionDiagnostics_enumerateAllNotificationInstructionsWithError_enumerationHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v41 = *(a1 + 40);
  v42 = v5;
  v43 = v4;
  if (v6)
  {
    v7 = MEMORY[0x277CCD6C8];
    v8 = v4;
    v39 = [v7 alloc];
    v44 = [v8 messageIdentifier];
    v9 = *(v6 + 16);
    v38 = [v8 creationDate];
    v10 = [v9 stringFromDate:v38];
    v11 = *(v6 + 16);
    v37 = [v8 receivedDate];
    v35 = [v11 stringFromDate:v37];
    v12 = *(v6 + 16);
    v36 = [v8 modificationDate];
    v34 = [v12 stringFromDate:v36];
    v33 = [v8 sendingDeviceName];
    v32 = [v8 sendingDeviceInfo];
    [v8 action];
    v30 = NSStringFromHKNotificationInstructionAction();
    v29 = [v8 clientIdentifier];
    v13 = [v8 categoryIdentifier];
    v14 = *(v6 + 16);
    v31 = [v8 expirationDate];
    v15 = [v14 stringFromDate:v31];
    v16 = MEMORY[0x277CCACA8];
    v17 = [v8 criteria];
    v18 = [v16 stringWithFormat:@"%@", v17];
    v19 = MEMORY[0x277CCACA8];
    v20 = [v8 isInvalid];

    v21 = [v19 stringWithFormat:@"%d", v20];
    v40 = [v39 initWithMessageIdentifier:v44 creationDate:v10 receivedDate:v35 modificationDate:v34 sendingDeviceName:v33 sendingDeviceInfo:v32 action:v30 clientIdentifier:v29 categoryIdentifier:v13 expirationDate:v15 criteria:v18 isInvalid:v21];
  }

  else
  {
    v40 = 0;
  }

  v45[0] = 0;
  v22 = (*(v41 + 16))(v41, v40, v45);
  v23 = v45[0];

  objc_autoreleasePoolPop(v42);
  if ((v22 & 1) == 0)
  {
    v24 = v23;
    v25 = v24;
    if (v24)
    {
      if (a3)
      {
        v26 = v24;
        *a3 = v25;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v22;
}

@end