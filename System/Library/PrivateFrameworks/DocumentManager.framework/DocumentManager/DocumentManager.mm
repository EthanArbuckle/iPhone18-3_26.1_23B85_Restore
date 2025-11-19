uint64_t DOCIsInternalBuild()
{
  if (DOCIsInternalBuild_onceToken != -1)
  {
    DOCIsInternalBuild_cold_1();
  }

  return DOCIsInternalBuild__isInternal;
}

uint64_t __DOCIsInternalBuild_block_invoke()
{
  result = os_variant_has_internal_ui();
  DOCIsInternalBuild__isInternal = result;
  return result;
}

BOOL DOCScreenSizePad12_9()
{
  if (_DOCMainScreenClass__DOCMainScreenClass_OnceToken != -1)
  {
    _DOCMainScreenClass_cold_1();
  }

  return _DOCMainScreenClass__DOCMainScreenClass == 11;
}

void sub_1E57D9F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL DOCUsePhoneIdiomForTraits(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    v2 = [v3 traitCollection];
  }

  if ([v2 userInterfaceIdiom] == -1)
  {
    v4 = [v2 traitCollectionByModifyingTraits:&__block_literal_global_193];
  }

  else
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [v5 userInterfaceIdiom] == 0;
  return v6;
}

uint64_t DOCDebugMenuEnabled()
{
  if (DOCIsInternalBuild_onceToken != -1)
  {
    DOCIsInternalBuild_cold_1();
  }

  if (DOCIsInternalBuild__isInternal == 1)
  {
    if (DOCDebugMenuEnabled_onceToken != -1)
    {
      DOCDebugMenuEnabled_cold_2();
    }

    v0 = DOCDebugMenuEnabled__debugMenuEnabled;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

void __DOCDebugMenuEnabled_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  DOCDebugMenuEnabled__debugMenuEnabled = [v0 BOOLForKey:@"DOCDebugMenuEnabled"];
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id DOCFocusGroupIdentifierBrowserFromConfiguration(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [a1 sceneIdentifier];
  v3 = [v1 stringWithFormat:@"%@%@", @"DOCFocusGroupIdentifierBrowser", v2];

  return v3;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E57DDF40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E57DE054(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E57DE9AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E57DF3D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E57DFAB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E57E01C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1E57E06B0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1E57E1A4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1E57E2648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E57E30CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1E57E33F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1E57E3A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E57E502C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E57E5CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E57E71F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak(va);
  objc_destroyWeak((v11 - 24));
  _Unwind_Resume(a1);
}

void sub_1E57E7638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E57E7AAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 96));
  _Unwind_Resume(a1);
}

void sub_1E57EAAF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __DOCViewServiceRecoveryAttemptTimeThreshold_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v0 doubleForKey:@"DOCViewServiceResetRecoveryThreshold"];
  v2 = v1;

  if (v2 > 0.0)
  {
    DOCViewServiceRecoveryAttemptTimeThreshold_interval = *&v2;
  }
}

void OUTLINED_FUNCTION_10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1E57EE134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Block_object_dispose((v35 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t doc_smartfolder_create_tables_initial(void *a1, void *a2)
{
  v3 = a1;
  if ([v3 execute:{@"CREATE TABLE filenames( fp_folder_id TEXT NOT NULL, fp_folder_item BLOB NOT NULL, file_name TEXT NOT NULL, last_hit_date DOUBLE NOT NULL, frecency_at_last_hit_date DOUBLE NOT NULL)"}] && objc_msgSend(v3, "execute:", @"CREATE INDEX filename_index ON filenames (fp_folder_id)") && objc_msgSend(v3, "execute:", @"CREATE INDEX filename_last_hit_date_index ON filenames (last_hit_date)") && objc_msgSend(v3, "execute:", @"CREATE TABLE filetypes( fp_folder_id TEXT NOT NULL, fp_folder_item BLOB NOT NULL, file_type TEXT NOT NULL, last_hit_date DOUBLE NOT NULL, frecency_at_last_hit_date DOUBLE NOT NULL)") && objc_msgSend(v3, "execute:", @"CREATE INDEX filetype_index ON filetypes (fp_folder_id)") && objc_msgSend(v3, "execute:", @"CREATE INDEX filetype_last_hit_date_index ON filetypes (last_hit_date)") && objc_msgSend(v3, "execute:", @"CREATE TABLE hotfolders( app_bundle_id TEXT NOT NULL, fp_folder_id TEXT NOT NULL, fp_folder_item BLOB NOT NULL, event_type INTEGER NOT NULL, last_hit_date DOUBLE NOT NULL, frecency_at_last_hit_date DOUBLE NOT NULL)") && objc_msgSend(v3, "execute:", @"CREATE INDEX app_identifier ON hotfolders (app_bundle_id)") && objc_msgSend(v3, "execute:", @"CREATE INDEX _last_hit_date_index ON hotfolders (last_hit_date)"))
  {
    v4 = [v3 setUserVersion:1];
  }

  else
  {
    v4 = 0;
  }

  if (a2 && (v4 & 1) == 0)
  {
    *a2 = [v3 lastError];
  }

  return v4;
}

void OUTLINED_FUNCTION_10_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_4_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_6_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

id DOCLogHandle()
{
  v0 = MEMORY[0x1E699A450];
  v1 = *MEMORY[0x1E699A450];
  if (!*MEMORY[0x1E699A450])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

void sub_1E58003DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E5801550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1E5801A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1E5801D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

CGFloat DOCAdaptSizeToRect(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8)
{
  if (a6 == 0.0 || a7 == 0.0)
  {
    return a2;
  }

  v13 = a8;
  if (a8 == 0.0)
  {
    v16 = [MEMORY[0x1E69DCEB0] mainScreen];
    v17 = [v16 traitCollection];
    [v17 displayScale];
    v13 = v18;

    if (v13 == 0.0)
    {
      v13 = 1.0;
    }
  }

  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  v19 = CGRectGetWidth(v27) / a6;
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  v20 = CGRectGetHeight(v28) / a7;
  if (a1 == 1)
  {
    v21 = fmax(v19, v20);
  }

  else
  {
    v21 = 1.0;
    if (!a1)
    {
      v21 = fmin(v19, v20);
    }
  }

  v23 = ceil(v13 * (a6 * v21)) / v13;
  v24 = ceil(v13 * (a7 * v21)) / v13;
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  Width = CGRectGetWidth(v29);
  v30.origin.x = a2;
  v30.origin.y = a3;
  v30.size.width = v23;
  v30.size.height = v24;
  v22 = a2 + floor(v13 * ((Width - CGRectGetWidth(v30)) * 0.5)) / v13;
  v31.origin.x = a2;
  v31.origin.y = a3;
  v31.size.width = a4;
  v31.size.height = a5;
  CGRectGetHeight(v31);
  v32.origin.x = v22;
  v32.origin.y = a3;
  v32.size.width = v23;
  v32.size.height = v24;
  CGRectGetHeight(v32);
  return v22;
}

CGFloat DOCCenterSizeInRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = CGRectGetMidX(*&a1) - a5 * 0.5;
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMidY(v11);
  return v9;
}

double DOCScaledThumbnailCornerRadius(double a1, double a2)
{
  if (a1 < a2)
  {
    a1 = a2;
  }

  result = a1 * 6.0 * 0.0078125 + -1.0;
  if (result < 3.0)
  {
    return 3.0;
  }

  return result;
}

id DOCErrorNoLocationAvailableError(void *a1)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = MEMORY[0x1E696AEC0];
  v3 = _DocumentManagerBundle();
  v4 = v3;
  if (v1)
  {
    v5 = [v3 localizedStringForKey:@"No location available to save “%@”." value:@"No location available to save “%@”." table:@"Localizable"];
    [v2 stringWithFormat:v5, v1];
  }

  else
  {
    v5 = [v3 localizedStringForKey:@"No location available to save this document." value:@"No location available to save this document." table:@"Localizable"];
    [v2 stringWithFormat:v5, 0];
  }
  v6 = ;

  v7 = _DocumentManagerBundle();
  v8 = [v7 localizedStringForKey:@"Enable at least one location to be able to save documents." value:@"Enable at least one location to be able to save documents." table:@"Localizable"];

  v9 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A598];
  v14[0] = *MEMORY[0x1E696A578];
  v14[1] = v10;
  v15[0] = v6;
  v15[1] = v8;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v12 = [v9 errorWithDomain:@"com.apple.DocumentManager" code:2 userInfo:v11];

  return v12;
}

id DOCFrameworkBundle()
{
  if (DOCFrameworkBundle_onceToken != -1)
  {
    DOCFrameworkBundle_cold_1();
  }

  v1 = DOCFrameworkBundle_DOCBundle;

  return v1;
}

uint64_t __DOCFrameworkBundle_block_invoke()
{
  v0 = NSClassFromString(&cfstr_Uidocumentbrow_14.isa);
  if (v0)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleForClass:v0];
    v2 = DOCFrameworkBundle_DOCBundle;
    DOCFrameworkBundle_DOCBundle = v1;
  }

  else
  {
    v3 = DOCFrameworkBundle_DOCBundle;
    DOCFrameworkBundle_DOCBundle = 0;

    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSBundle * _Nonnull DOCFrameworkBundle(void)_block_invoke"];
    [v6 handleFailureInFunction:v4 file:@"DOCUtilities.m" lineNumber:59 description:@"Fatal error: Could not determine NSBundle for DocumentManager framework"];

    v2 = v6;
  }

  return MEMORY[0x1EEE66BB8](v1, v2);
}

uint64_t _DOCMainScreenClass()
{
  if (_DOCMainScreenClass__DOCMainScreenClass_OnceToken != -1)
  {
    _DOCMainScreenClass_cold_1();
  }

  return _DOCMainScreenClass__DOCMainScreenClass;
}

double _DOCMainScreenSize()
{
  if (_DOCMainScreenSize__DOCMainScreenSize_OnceToken != -1)
  {
    _DOCMainScreenSize_cold_1();
  }

  return *&_DOCMainScreenSize__DOCMainScreenSize_0;
}

BOOL DOCScreenSizeSEPhone()
{
  if (_DOCMainScreenClass__DOCMainScreenClass_OnceToken != -1)
  {
    _DOCMainScreenClass_cold_1();
  }

  return _DOCMainScreenClass__DOCMainScreenClass == 5;
}

uint64_t DOCDeviceHasHomeButton()
{
  if (DOCDeviceHasHomeButton_onceToken != -1)
  {
    DOCDeviceHasHomeButton_cold_1();
  }

  return DOCDeviceHasHomeButton_hasHomeButton;
}

uint64_t __DOCDeviceHasHomeButton_block_invoke()
{
  result = MGGetSInt32Answer();
  DOCDeviceHasHomeButton_hasHomeButton = result != 2;
  return result;
}

uint64_t DOCAssertWithIntenalBuildAlert(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ((a1 & 1) == 0)
  {
    v15 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A578];
    v30[0] = v12;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v17 = [v15 errorWithDomain:@"com.apple.DocumentManager" code:1 userInfo:v16];

    v18 = MEMORY[0x1E699A478];
    v19 = *MEMORY[0x1E699A478];
    if (!*MEMORY[0x1E699A478])
    {
      DOCInitLogging();
      v19 = *v18;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      DOCAssertWithIntenalBuildAlert_cold_1(v19, v17);
    }

    if (DOCIsInternalBuild_onceToken != -1)
    {
      DOCAssertWithIntenalBuildAlert_cold_2();
    }

    if (DOCIsInternalBuild__isInternal == 1)
    {
      objc_initWeak(&location, v14);
      objc_copyWeak(&v26, &location);
      v23 = v17;
      v24 = v11;
      v27 = a2;
      v25 = v13;
      DOCRunInMainThread();

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }

    else if (a2)
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL DOCAssertWithIntenalBuildAlert(BOOL, BOOL, NSString *__strong _Nonnull, NSString *__strong _Nonnull, NSString *__strong _Nonnull, UIViewController * _Nullable __strong)"}];
      [v20 handleFailureInFunction:v21 file:@"DOCUtilities.m" lineNumber:222 description:v13];
    }
  }

  return a1;
}

void sub_1E5805C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __DOCAssertWithIntenalBuildAlert_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    v3 = +[DOCUISession keyWindow];
    WeakRetained = [v3 rootViewController];
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __DOCAssertWithIntenalBuildAlert_block_invoke_2;
  v6[3] = &unk_1E8783450;
  v8 = *(a1 + 64);
  v7 = *(a1 + 48);
  DOCPresentAlertForErrorWithForceHandler(v4, v5, 0, 0, 0, WeakRetained, 0, v6);
}

void DOCPresentAlertForErrorWithForceHandler(void *a1, void *a2, void *a3, int a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v31 = a1;
  v13 = a2;
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v18 = [DOCErrorStore augmentedErrorForError:v31];
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v31;
  }

  v20 = v19;

  if (v13)
  {
    v21 = v13;
  }

  else
  {
    v21 = [v20 localizedDescription];
  }

  v22 = v21;
  v23 = [v20 localizedFailureReason];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v26 = [v20 localizedRecoverySuggestion];
    v27 = v26;
    if (!v13 || v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = [v20 localizedDescription];
    }

    v25 = v28;
  }

  DOCPresentAlert(v22, v25, a4, a5, v17, v16, v15, v14);
}

void __DOCAssertWithIntenalBuildAlert_block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL DOCAssertWithIntenalBuildAlert(BOOL, BOOL, NSString *__strong _Nonnull, NSString *__strong _Nonnull, NSString *__strong _Nonnull, UIViewController * _Nullable __strong)_block_invoke_2"}];
    [v4 handleFailureInFunction:v3 file:@"DOCUtilities.m" lineNumber:214 description:*(a1 + 32)];
  }
}

id DOCIgnoringExceptionsWhileTrying(void *a1)
{
  v1 = a1;
  v1[2]();

  return 0;
}

void sub_1E5805FA8(void *a1)
{
  v1 = objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x1E5805F84);
}

void DOCPresentAlert(void *a1, void *a2, int a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v14 = a2;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = a6;
  v19 = a1;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v41 = v14;
  v20 = [DOCAlertController alertControllerWithTitle:v19 message:v14 preferredStyle:1];

  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __DOCPresentAlert_block_invoke;
  v49[3] = &unk_1E87823C0;
  v21 = v17;
  v50 = v21;
  v22 = MEMORY[0x1E692E2E0](v49);
  v23 = MEMORY[0x1E69DC648];
  v24 = _DocumentManagerBundle();
  v25 = v24;
  if (a3)
  {
    v26 = [v24 localizedStringForKey:@"Cancel" value:@"Cancel" table:@"Localizable"];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __DOCPresentAlert_block_invoke_2;
    v47[3] = &unk_1E8783938;
    v27 = &v48;
    v48 = v22;
    v28 = v47;
    v29 = v23;
    v30 = v26;
    v31 = 1;
  }

  else
  {
    v26 = [v24 localizedStringForKey:@"OK" value:@"OK" table:@"Localizable"];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __DOCPresentAlert_block_invoke_3;
    v45[3] = &unk_1E8783938;
    v27 = &v46;
    v46 = v22;
    v28 = v45;
    v29 = v23;
    v30 = v26;
    v31 = 0;
  }

  v32 = [v29 actionWithTitle:v30 style:v31 handler:{v28, a4}];
  [v20 addAction:v32];

  if (v16 && [v15 length])
  {
    v33 = MEMORY[0x1E69DC648];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __DOCPresentAlert_block_invoke_4;
    v42[3] = &unk_1E8783960;
    v43 = v16;
    v44 = v22;
    v34 = [v33 actionWithTitle:v15 style:v40 handler:v42];
    [v20 addAction:v34];

    v35 = v43;
  }

  else
  {
    v35 = [v20 actions];
    v36 = [v35 lastObject];
    [v20 setPreferredAction:v36];
  }

  v37 = MEMORY[0x1E699A478];
  v38 = *MEMORY[0x1E699A478];
  if (!*MEMORY[0x1E699A478])
  {
    DOCInitLogging();
    v38 = *v37;
  }

  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    DOCPresentAlert_cold_1(v41, v38);
  }

  [v18 presentViewController:v20 animated:1 completion:0];
}

BOOL DOCIsNetworkReachable()
{
  v0 = [MEMORY[0x1E6977E50] sharedDefaultEvaluator];
  v1 = [v0 path];
  v2 = [v1 status];

  v3 = v2 & 0xFFFFFFFFFFFFFFFDLL;
  if ((v2 & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    v4 = MEMORY[0x1E699A450];
    v5 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1E57D8000, v5, OS_LOG_TYPE_DEFAULT, "Network is not reachable", v7, 2u);
    }
  }

  return v3 == 1;
}

void DOCAlertUserTheNetworkIsNotReachable(void *a1)
{
  v1 = a1;
  v2 = _DocumentManagerBundle();
  v5 = [v2 localizedStringForKey:@"You’re Offline" value:@"You’re Offline" table:@"Localizable"];

  v3 = _DocumentManagerBundle();
  v4 = [v3 localizedStringForKey:@"Check your Internet connection value:then try again." table:{@"Check your Internet connection, then try again.", @"Localizable"}];

  DOCPresentAlert(v5, v4, 0, 0, 0, v1, 0, 0);
}

void DOCAlertUserTrashedFileCanNotBeOpened(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = a1;
  v6 = _DocumentManagerBundle();
  v7 = [v6 localizedStringForKey:@"The document “%@” can’t be opened because it’s in Recently Deleted." value:@"The document “%@” can’t be opened because it’s in Recently Deleted." table:@"Localizable"];
  v12 = [v3 stringWithFormat:v7, v5];

  v8 = MEMORY[0x1E696AEC0];
  v9 = _DocumentManagerBundle();
  v10 = [v9 localizedStringForKey:@"To use this item value:tap and hold on the item and choose Recover." table:{@"To use this item, tap and hold on the item and choose Recover.", @"Localizable"}];
  v11 = [v8 stringWithFormat:v10];

  DOCPresentAlert(v12, v11, 0, 0, 0, v4, 0, 0);
}

void DOCAlertItemIsNotReadable(void *a1, int a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = a1;
  v8 = _DocumentManagerBundle();
  v9 = v8;
  if (a2)
  {
    v10 = @"The folder “%@” can’t be opened because you don’t have permission to see its contents.";
  }

  else
  {
    v10 = @"The document “%@” can’t be opened because you don’t have permission to see its contents.";
  }

  v11 = [v8 localizedStringForKey:v10 value:v10 table:@"Localizable"];
  v12 = [v5 stringWithFormat:v11, v7];

  DOCPresentAlert(0, v12, 0, 0, 0, v6, 0, 0);
}

uint64_t DOCFirstResponderIsKeyInput()
{
  v0 = [MEMORY[0x1E69DCBB8] activeKeyboard];
  v1 = [v0 targetWindow];
  v2 = [v1 firstResponder];

  v3 = [v2 conformsToProtocol:&unk_1F5F81138];
  return v3;
}

void DOCItemCollectionViewBeginTypeSelect(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 characters];
    [v5 _beginTypeSelectWithInput:v4];
  }
}

uint64_t __DOCPresentAlert_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __DOCPresentAlert_block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void DOCAssertWithIntenalBuildAlert_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 localizedDescription];
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&dword_1E57D8000, v3, OS_LOG_TYPE_FAULT, "Error: %@", &v5, 0xCu);
}

void DOCPresentAlert_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "void DOCPresentAlert(NSString *__strong, NSString * _Nullable __strong, BOOL, UIAlertActionStyle, NSString * _Nullable __strong, UIViewController *__strong, void (^ _Nullable __strong)(void), void (^ _Nullable __strong)(void))";
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&dword_1E57D8000, a2, OS_LOG_TYPE_DEBUG, "%s: prompting user with message: %@", &v2, 0x16u);
}