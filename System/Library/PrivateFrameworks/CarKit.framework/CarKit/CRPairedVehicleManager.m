@interface CRPairedVehicleManager
- (BOOL)removeVehicle:(id)a3;
- (CRPairedVehicleManager)init;
- (id)_firstVehicleMatchingTest:(id)a3;
- (id)allVehicles;
- (id)pairedVehicles;
- (id)saveVehicle:(id)a3;
- (id)vehicleForBluetoothAddress:(id)a3;
- (id)vehicleForCertificateSerial:(id)a3;
- (id)vehicleNameForWiFiUUID:(id)a3;
- (void)fetchAllVehiclesWithCompletion:(id)a3;
- (void)fetchPairedVehiclesWithCompletion:(id)a3;
- (void)fetchViewAreasForVehicleIdentifier:(id)a3 completion:(id)a4;
- (void)removeVehicle:(id)a3 completion:(id)a4;
- (void)saveVehicle:(id)a3 completion:(id)a4;
- (void)saveViewAreas:(id)a3 forVehicleIdentifier:(id)a4 completion:(id)a5;
- (void)syncFetchAllVehiclesWithCompletion:(id)a3;
- (void)syncFetchViewAreasForVehicleIdentifier:(id)a3 completion:(id)a4;
@end

@implementation CRPairedVehicleManager

- (CRPairedVehicleManager)init
{
  v5.receiver = self;
  v5.super_class = CRPairedVehicleManager;
  v2 = [(CRPairedVehicleManager *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(CRCarKitServiceClient);
    [(CRPairedVehicleManager *)v2 setServiceClient:v3];
  }

  return v2;
}

- (void)syncFetchAllVehiclesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRPairedVehicleManager *)self serviceClient];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__CRPairedVehicleManager_syncFetchAllVehiclesWithCompletion___block_invoke;
  v9[3] = &unk_1E82FC438;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__CRPairedVehicleManager_syncFetchAllVehiclesWithCompletion___block_invoke_3;
  v7[3] = &unk_1E82FBF48;
  v8 = v10;
  v6 = v10;
  [v5 performSynchronousServiceBlock:v9 errorHandler:v7];
}

void __61__CRPairedVehicleManager_syncFetchAllVehiclesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__CRPairedVehicleManager_syncFetchAllVehiclesWithCompletion___block_invoke_2;
  v3[3] = &unk_1E82FC410;
  v4 = *(a1 + 32);
  [a2 fetchAllVehiclesWithReply:v3];
}

void __61__CRPairedVehicleManager_syncFetchAllVehiclesWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v6 = [a2 allObjects];
    (*(v3 + 16))(v3, v6, v5);
  }
}

uint64_t __61__CRPairedVehicleManager_syncFetchAllVehiclesWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)fetchAllVehiclesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRPairedVehicleManager *)self serviceClient];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__CRPairedVehicleManager_fetchAllVehiclesWithCompletion___block_invoke;
  v9[3] = &unk_1E82FC438;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__CRPairedVehicleManager_fetchAllVehiclesWithCompletion___block_invoke_3;
  v7[3] = &unk_1E82FBF48;
  v8 = v10;
  v6 = v10;
  [v5 performServiceBlock:v9 errorHandler:v7];
}

void __57__CRPairedVehicleManager_fetchAllVehiclesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__CRPairedVehicleManager_fetchAllVehiclesWithCompletion___block_invoke_2;
  v3[3] = &unk_1E82FC410;
  v4 = *(a1 + 32);
  [a2 fetchAllVehiclesWithReply:v3];
}

void __57__CRPairedVehicleManager_fetchAllVehiclesWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v6 = [a2 allObjects];
    (*(v3 + 16))(v3, v6, v5);
  }
}

uint64_t __57__CRPairedVehicleManager_fetchAllVehiclesWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)fetchPairedVehiclesWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__CRPairedVehicleManager_fetchPairedVehiclesWithCompletion___block_invoke;
  v6[3] = &unk_1E82FC148;
  v7 = v4;
  v5 = v4;
  [(CRPairedVehicleManager *)self fetchAllVehiclesWithCompletion:v6];
}

void __60__CRPairedVehicleManager_fetchPairedVehiclesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_8];
    v7 = [v10 filteredArrayUsingPredicate:v6];

    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, v7, v5);
    }
  }

  else
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, 0, v5);
    }
  }
}

- (void)saveVehicle:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRPairedVehicleManager *)self serviceClient];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__CRPairedVehicleManager_saveVehicle_completion___block_invoke;
  v13[3] = &unk_1E82FC170;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__CRPairedVehicleManager_saveVehicle_completion___block_invoke_2;
  v11[3] = &unk_1E82FBF48;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [v8 performServiceBlock:v13 errorHandler:v11];
}

uint64_t __49__CRPairedVehicleManager_saveVehicle_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)removeVehicle:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRPairedVehicleManager *)self serviceClient];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__CRPairedVehicleManager_removeVehicle_completion___block_invoke;
  v13[3] = &unk_1E82FC170;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__CRPairedVehicleManager_removeVehicle_completion___block_invoke_2;
  v11[3] = &unk_1E82FBF48;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [v8 performServiceBlock:v13 errorHandler:v11];
}

uint64_t __51__CRPairedVehicleManager_removeVehicle_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (id)_firstVehicleMatchingTest:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__CRPairedVehicleManager__firstVehicleMatchingTest___block_invoke;
  v8[3] = &unk_1E82FC480;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(CRPairedVehicleManager *)self syncFetchAllVehiclesWithCompletion:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __52__CRPairedVehicleManager__firstVehicleMatchingTest___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 indexOfObjectPassingTest:*(a1 + 32)];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [v7 objectAtIndexedSubscript:v3];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (id)vehicleForBluetoothAddress:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__CRPairedVehicleManager_vehicleForBluetoothAddress___block_invoke;
  v8[3] = &unk_1E82FC4A8;
  v9 = v4;
  v5 = v4;
  v6 = [(CRPairedVehicleManager *)self _firstVehicleMatchingTest:v8];

  return v6;
}

uint64_t __53__CRPairedVehicleManager_vehicleForBluetoothAddress___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 bluetoothAddress];
  if (v7)
  {
    v8 = [v6 bluetoothAddress];
    v9 = [v8 isEqualToString:*(a1 + 32)];

    if (v9)
    {
      v7 = 1;
      *a4 = 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)vehicleNameForWiFiUUID:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__CRPairedVehicleManager_vehicleNameForWiFiUUID___block_invoke;
  v9[3] = &unk_1E82FC4A8;
  v10 = v4;
  v5 = v4;
  v6 = [(CRPairedVehicleManager *)self _firstVehicleMatchingTest:v9];
  v7 = [v6 vehicleName];

  return v7;
}

uint64_t __49__CRPairedVehicleManager_vehicleNameForWiFiUUID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 carplayWiFiUUID];
  if (v7)
  {
    v8 = [v6 carplayWiFiUUID];
    v9 = [v8 isEqualToString:*(a1 + 32)];

    if (v9)
    {
      v7 = 1;
      *a4 = 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)vehicleForCertificateSerial:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__CRPairedVehicleManager_vehicleForCertificateSerial___block_invoke;
  v8[3] = &unk_1E82FC4A8;
  v9 = v4;
  v5 = v4;
  v6 = [(CRPairedVehicleManager *)self _firstVehicleMatchingTest:v8];

  return v6;
}

uint64_t __54__CRPairedVehicleManager_vehicleForCertificateSerial___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 certificateSerialNumber];
  if (v7)
  {
    v8 = [v6 certificateSerialNumber];
    v9 = [v8 isEqualToData:*(a1 + 32)];

    if (v9)
    {
      v7 = 1;
      *a4 = 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)saveViewAreas:(id)a3 forVehicleIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CRPairedVehicleManager *)self serviceClient];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__CRPairedVehicleManager_saveViewAreas_forVehicleIdentifier_completion___block_invoke;
  v17[3] = &unk_1E82FC4D0;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__CRPairedVehicleManager_saveViewAreas_forVehicleIdentifier_completion___block_invoke_3;
  v15[3] = &unk_1E82FBF48;
  v16 = v20;
  v12 = v20;
  v13 = v9;
  v14 = v8;
  [v11 performServiceBlock:v17 errorHandler:v15];
}

void __72__CRPairedVehicleManager_saveViewAreas_forVehicleIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__CRPairedVehicleManager_saveViewAreas_forVehicleIdentifier_completion___block_invoke_2;
  v5[3] = &unk_1E82FC148;
  v6 = *(a1 + 48);
  [a2 saveViewAreas:v3 forVehicleIdentifier:v4 reply:v5];
}

uint64_t __72__CRPairedVehicleManager_saveViewAreas_forVehicleIdentifier_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __72__CRPairedVehicleManager_saveViewAreas_forVehicleIdentifier_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)fetchViewAreasForVehicleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRPairedVehicleManager *)self serviceClient];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__CRPairedVehicleManager_fetchViewAreasForVehicleIdentifier_completion___block_invoke;
  v13[3] = &unk_1E82FC170;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__CRPairedVehicleManager_fetchViewAreasForVehicleIdentifier_completion___block_invoke_2;
  v11[3] = &unk_1E82FBF48;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [v8 performServiceBlock:v13 errorHandler:v11];
}

- (void)syncFetchViewAreasForVehicleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRPairedVehicleManager *)self serviceClient];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__CRPairedVehicleManager_syncFetchViewAreasForVehicleIdentifier_completion___block_invoke;
  v13[3] = &unk_1E82FC170;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__CRPairedVehicleManager_syncFetchViewAreasForVehicleIdentifier_completion___block_invoke_2;
  v11[3] = &unk_1E82FBF48;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [v8 performSynchronousServiceBlock:v13 errorHandler:v11];
}

- (id)saveVehicle:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v5 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__CRPairedVehicleManager_saveVehicle___block_invoke;
  v10[3] = &unk_1E82FC4F8;
  v12 = &v13;
  v6 = v5;
  v11 = v6;
  [(CRPairedVehicleManager *)self saveVehicle:v4 completion:v10];
  v7 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v6, v7);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __38__CRPairedVehicleManager_saveVehicle___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)removeVehicle:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__CRPairedVehicleManager_removeVehicle___block_invoke;
  v9[3] = &unk_1E82FC520;
  v11 = &v12;
  v6 = v5;
  v10 = v6;
  [(CRPairedVehicleManager *)self removeVehicle:v4 completion:v9];
  v7 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v6, v7);
  LOBYTE(self) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return self;
}

- (id)allVehicles
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  v3 = dispatch_semaphore_create(0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__CRPairedVehicleManager_allVehicles__block_invoke;
  v8[3] = &unk_1E82FC548;
  v10 = &v11;
  v4 = v3;
  v9 = v4;
  [(CRPairedVehicleManager *)self fetchAllVehiclesWithCompletion:v8];
  v5 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v4, v5);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __37__CRPairedVehicleManager_allVehicles__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)pairedVehicles
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  v3 = dispatch_semaphore_create(0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__CRPairedVehicleManager_pairedVehicles__block_invoke;
  v8[3] = &unk_1E82FC548;
  v10 = &v11;
  v4 = v3;
  v9 = v4;
  [(CRPairedVehicleManager *)self fetchPairedVehiclesWithCompletion:v8];
  v5 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v4, v5);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __40__CRPairedVehicleManager_pairedVehicles__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

@end