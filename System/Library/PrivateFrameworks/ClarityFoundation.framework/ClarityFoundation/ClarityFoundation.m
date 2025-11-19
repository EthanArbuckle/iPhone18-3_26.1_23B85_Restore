void __getPHAssetCollectionClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHAssetCollection");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHAssetCollectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPHAssetCollectionClass_block_invoke_cold_1();
    PhotosLibrary();
  }
}

void PhotosLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!PhotosLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __PhotosLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E8704E98;
    v4 = 0;
    PhotosLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!PhotosLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __PhotosLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PhotosLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getPHPhotoLibraryClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  result = objc_getClass("PHPhotoLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHPhotoLibraryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPHPhotoLibraryClass_block_invoke_cold_1();
    return __51__CLFSystemShellSwitcher_sharedSystemShellSwitcher__block_invoke(v3);
  }

  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

id CLFSortedCommunicationLimits()
{
  if (CLFSortedCommunicationLimits_onceToken != -1)
  {
    CLFSortedCommunicationLimits_cold_1();
  }

  v1 = CLFSortedCommunicationLimits_SortedCommunicationLimits;

  return v1;
}

void __CLFSortedCommunicationLimits_block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v3[0] = @"selectedContacts";
  v3[1] = @"contacts";
  v3[2] = @"everyone";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
  v1 = CLFSortedCommunicationLimits_SortedCommunicationLimits;
  CLFSortedCommunicationLimits_SortedCommunicationLimits = v0;

  v2 = *MEMORY[0x1E69E9840];
}

id CLFWallpaperDirectory()
{
  v0 = [MEMORY[0x1E695DFF8] fileURLWithPath:AXCPSharedResourcesDirectory()];
  v1 = [v0 URLByAppendingPathComponent:@"Library/Accessibility/ClarityBoard/Wallpaper" isDirectory:1];

  return v1;
}

id CLFWallpaperURL()
{
  v0 = CLFWallpaperDirectory();
  v1 = [v0 URLByAppendingPathComponent:@"clarityBoardWallpaper.jpeg"];

  return v1;
}

void sub_1E11606B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E1160BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E1160CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAPSubjectClass_block_invoke(uint64_t a1)
{
  AppProtectionLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("APSubject");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAPSubjectClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAPSubjectClass_block_invoke_cold_1();
    AppProtectionLibrary();
  }
}

void AppProtectionLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!AppProtectionLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __AppProtectionLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E8704FC8;
    v4 = 0;
    AppProtectionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!AppProtectionLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __AppProtectionLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppProtectionLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getPDCPreflightManagerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!PrivacyDisclosureCoreLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __PrivacyDisclosureCoreLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E8704FE0;
    v7 = 0;
    PrivacyDisclosureCoreLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (PrivacyDisclosureCoreLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PDCPreflightManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPDCPreflightManagerClass_block_invoke_cold_1();
  }

  getPDCPreflightManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __PrivacyDisclosureCoreLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PrivacyDisclosureCoreLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getLSApplicationRecordClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!CoreServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CoreServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E8704FF8;
    v7 = 0;
    CoreServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (CoreServicesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("LSApplicationRecord");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLSApplicationRecordClass_block_invoke_cold_1();
  }

  getLSApplicationRecordClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getAPApplicationClass_block_invoke(uint64_t a1)
{
  AppProtectionLibrary();
  result = objc_getClass("APApplication");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAPApplicationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAPApplicationClass_block_invoke_cold_1();
    return [(CLFMessagesSettings *)v3 requiresMoreRestrictiveOutgoingCommunicationLimit];
  }

  return result;
}

uint64_t CLFListLayout.description.getter()
{
  v0 = 1684632167;
  v1 = sub_1E1162E80();
  v3 = v2;
  if (v1 == sub_1E1162E80() && v3 == v4)
  {
    goto LABEL_7;
  }

  v6 = sub_1E1162ED0();

  if (v6)
  {
    return v0;
  }

  v0 = 0x6B63617473;
  v8 = sub_1E1162E80();
  v10 = v9;
  if (v8 == sub_1E1162E80() && v10 == v11)
  {
LABEL_7:

    return v0;
  }

  v13 = sub_1E1162ED0();

  if (v13)
  {
    return v0;
  }

  result = sub_1E1162EB0();
  __break(1u);
  return result;
}

uint64_t sub_1E116224C(uint64_t a1, id *a2)
{
  result = sub_1E1162E60();
  *a2 = 0;
  return result;
}

uint64_t sub_1E11622C4(uint64_t a1, id *a2)
{
  v3 = sub_1E1162E70();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1E1162344@<X0>(uint64_t *a1@<X8>)
{
  sub_1E1162E80();
  v2 = sub_1E1162E50();

  *a1 = v2;
  return result;
}

uint64_t sub_1E1162388(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1E1162E80();
  v6 = v5;
  if (v4 == sub_1E1162E80() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E1162ED0();
  }

  return v9 & 1;
}

uint64_t sub_1E1162410@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1E1162E50();

  *a2 = v5;
  return result;
}

uint64_t sub_1E1162458@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1E1162E80();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void type metadata accessor for CLFListLayout()
{
  if (!qword_1ECEA7AA0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECEA7AA0);
    }
  }
}

uint64_t sub_1E11624D4(uint64_t a1)
{
  v2 = sub_1E116270C(&qword_1ECEA7AC0);
  v3 = sub_1E116270C(&qword_1ECEA7AC8);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1E1162608()
{
  v1 = *v0;
  v2 = sub_1E1162E80();
  v3 = MEMORY[0x1E12EFDE0](v2);

  return v3;
}

uint64_t sub_1E1162644()
{
  v1 = *v0;
  sub_1E1162E80();
  sub_1E1162E90();
}

uint64_t sub_1E1162698()
{
  v1 = *v0;
  sub_1E1162E80();
  sub_1E1162EE0();
  sub_1E1162E90();
  v2 = sub_1E1162EF0();

  return v2;
}

uint64_t sub_1E116270C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CLFListLayout();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}