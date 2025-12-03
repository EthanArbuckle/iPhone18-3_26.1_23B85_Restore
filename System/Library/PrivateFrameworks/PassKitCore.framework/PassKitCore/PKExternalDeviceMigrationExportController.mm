@interface PKExternalDeviceMigrationExportController
- (PKExternalDeviceMigrationExportController)init;
- (void)exportableCardEntry:(id)entry completion:(id)completion;
- (void)exportableManifestWithCompletion:(id)completion;
@end

@implementation PKExternalDeviceMigrationExportController

- (PKExternalDeviceMigrationExportController)init
{
  v6.receiver = self;
  v6.super_class = PKExternalDeviceMigrationExportController;
  v2 = [(PKExternalDeviceMigrationExportController *)&v6 init];
  if (v2)
  {
    v3 = [[PKPassLibrary alloc] _initWithRemote:0];
    passLibrary = v2->_passLibrary;
    v2->_passLibrary = v3;
  }

  return v2;
}

- (void)exportableManifestWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = PKLogFacilityTypeGetObject(0x36uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1AD337000, v5, OS_LOG_TYPE_ERROR, "Calculating exportable manifest", buf, 2u);
  }

  passLibrary = self->_passLibrary;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__PKExternalDeviceMigrationExportController_exportableManifestWithCompletion___block_invoke;
  v8[3] = &unk_1E79E0B10;
  v9 = completionCopy;
  v7 = completionCopy;
  [(PKPassLibrary *)passLibrary exportableManifestWithCompletion:v8];
}

void __78__PKExternalDeviceMigrationExportController_exportableManifestWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject(0x36uLL);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (!v5 || v6)
  {
    if (v8)
    {
      LOWORD(v9) = 0;
      _os_log_error_impl(&dword_1AD337000, v7, OS_LOG_TYPE_ERROR, "Failed to create exportable manifest", &v9, 2u);
    }
  }

  else if (v8)
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_error_impl(&dword_1AD337000, v7, OS_LOG_TYPE_ERROR, "Created manifest %@", &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)exportableCardEntry:(id)entry completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  entryCopy = entry;
  passUniqueIdentifier = [entryCopy passUniqueIdentifier];
  v9 = PKLogFacilityTypeGetObject(0x36uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v17 = passUniqueIdentifier;
    _os_log_error_impl(&dword_1AD337000, v9, OS_LOG_TYPE_ERROR, "Creating exportable card for %@", buf, 0xCu);
  }

  passLibrary = self->_passLibrary;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__PKExternalDeviceMigrationExportController_exportableCardEntry_completion___block_invoke;
  v13[3] = &unk_1E79CB178;
  v14 = passUniqueIdentifier;
  v15 = completionCopy;
  v11 = passUniqueIdentifier;
  v12 = completionCopy;
  [(PKPassLibrary *)passLibrary exportableCardEntry:entryCopy completion:v13];
}

void __76__PKExternalDeviceMigrationExportController_exportableCardEntry_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject(0x36uLL);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (!v5 || v6)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 138412290;
      v11 = v9;
      _os_log_error_impl(&dword_1AD337000, v7, OS_LOG_TYPE_ERROR, "Failed to create exportable card for %@", &v10, 0xCu);
    }
  }

  else if (v8)
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_error_impl(&dword_1AD337000, v7, OS_LOG_TYPE_ERROR, "Created exportable card %@", &v10, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

@end