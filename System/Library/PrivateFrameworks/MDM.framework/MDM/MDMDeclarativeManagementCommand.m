@interface MDMDeclarativeManagementCommand
+ (BOOL)_isSupervised;
+ (BOOL)processMultiUserDeviceUserChannelRequestTypeWithProfileIdentifier:(id)a3 request:(id)a4 error:(id *)a5;
+ (BOOL)processRequestTypeWithProfileIdentifier:(id)a3 request:(id)a4 error:(id *)a5;
+ (BOOL)unenrollWithProfileIdentifier:(id)a3 error:(id *)a4;
+ (id)declarativeManagementFatalError;
+ (void)_enrollmentTypeWithProfileIdentifier:(id)a3 completionHandler:(id)a4;
@end

@implementation MDMDeclarativeManagementCommand

+ (BOOL)processRequestTypeWithProfileIdentifier:(id)a3 request:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __89__MDMDeclarativeManagementCommand_processRequestTypeWithProfileIdentifier_request_error___block_invoke;
  v11[3] = &unk_27982BAF0;
  v11[4] = &v24;
  v11[5] = &v18;
  v11[6] = &v12;
  [a1 _enrollmentTypeWithProfileIdentifier:v8 completionHandler:v11];
  LOBYTE(a5) = [MEMORY[0x277D45F60] processDeclarativeManagementCommandWithProfileIdentifier:v8 enrollmentType:v25[3] scope:1 username:v19[5] personaID:v13[5] request:v9 error:a5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return a5;
}

void __89__MDMDeclarativeManagementCommand_processRequestTypeWithProfileIdentifier_request_error___block_invoke(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  *(*(a1[4] + 8) + 24) = a2;
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v13 = v7;

  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
}

+ (BOOL)processMultiUserDeviceUserChannelRequestTypeWithProfileIdentifier:(id)a3 request:(id)a4 error:(id *)a5
{
  v7 = MEMORY[0x277CB8F48];
  v8 = a4;
  v9 = a3;
  v10 = [v7 defaultStore];
  v11 = [v10 dmc_primaryiCloudAccount];
  v12 = [v11 username];

  LOBYTE(a5) = [MEMORY[0x277D45F60] processDeclarativeManagementCommandWithProfileIdentifier:v9 enrollmentType:3 scope:0 username:v12 personaID:0 request:v8 error:a5];
  return a5;
}

+ (BOOL)unenrollWithProfileIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__1;
  v11[4] = __Block_byref_object_dispose__1;
  v12 = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__1;
  v9[4] = __Block_byref_object_dispose__1;
  v10 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__MDMDeclarativeManagementCommand_unenrollWithProfileIdentifier_error___block_invoke;
  v8[3] = &unk_27982BAF0;
  v8[4] = &v13;
  v8[5] = v11;
  v8[6] = v9;
  [a1 _enrollmentTypeWithProfileIdentifier:v6 completionHandler:v8];
  LOBYTE(a4) = [MEMORY[0x277D45F60] unenrollWithProfileIdentifier:v6 enrollmentType:v14[3] scope:1 error:a4];
  _Block_object_dispose(v9, 8);

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v13, 8);

  return a4;
}

void __71__MDMDeclarativeManagementCommand_unenrollWithProfileIdentifier_error___block_invoke(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  *(*(a1[4] + 8) + 24) = a2;
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v13 = v7;

  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
}

+ (void)_enrollmentTypeWithProfileIdentifier:(id)a3 completionHandler:(id)a4
{
  v12 = a4;
  v5 = [a1 _isSupervised];
  v6 = [MEMORY[0x277D24648] sharedConfiguration];
  [v6 refreshDetailsFromDisk];
  v7 = [v6 isUserEnrollment];
  v8 = [v6 personaID];
  if (v8)
  {
    v9 = [MEMORY[0x277D03490] managedAppleIDNameWithPersonaID:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = 3;
  if (!v5)
  {
    v10 = 1;
  }

  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  v12[2](v12, v11, v9, v8);
}

+ (BOOL)_isSupervised
{
  v2 = [MEMORY[0x277D24640] sharedConfiguration];
  [v2 refreshDetailsFromDisk];
  v3 = [v2 isSupervised];

  return v3;
}

+ (id)declarativeManagementFatalError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12097 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

@end