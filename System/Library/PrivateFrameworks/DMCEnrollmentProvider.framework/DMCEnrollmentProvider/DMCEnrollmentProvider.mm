uint64_t sub_247E7FE28()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247E7FE60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247E7FE98()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_247E8507C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247E85774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247E87C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247E8C86C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_247E8E780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247E8EFD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247E8F7AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getSKStoreProductViewControllerClass_block_invoke(uint64_t a1)
{
  StoreKitLibrary();
  result = objc_getClass("SKStoreProductViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKStoreProductViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSKStoreProductViewControllerClass_block_invoke_cold_1();
    return StoreKitLibrary();
  }

  return result;
}

uint64_t StoreKitLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!StoreKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __StoreKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278EE7960;
    v5 = 0;
    StoreKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = StoreKitLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!StoreKitLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __StoreKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  StoreKitLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getSKStoreProductParameterITunesItemIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreKitLibrary();
  result = dlsym(v2, "SKStoreProductParameterITunesItemIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSKStoreProductParameterITunesItemIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_247E902A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247E966B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247E96944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247E97444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247E982C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_247E98F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247E9918C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247E99438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247E99658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247E99878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247E999DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_247E9AFEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247E9BA6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247E9BD30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247E9C120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247E9C68C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id DMCEnrollmentLocalizedString(void *a1)
{
  v1 = _bundle_once;
  v2 = a1;
  if (v1 != -1)
  {
    DMCEnrollmentLocalizedString_cold_1();
  }

  v3 = [_bundle_bundle localizedStringForKey:v2 value:&stru_2859FB650 table:@"DMCEnrollmentProvider"];

  return v3;
}

uint64_t ___bundle_block_invoke()
{
  _bundle_bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

void sub_247E9E334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247E9EBEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247E9F810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247EA13A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double kDMCTopMarginForViewController(void *a1)
{
  v1 = a1;
  v2 = [v1 navigationController];
  v3 = [v2 navigationBar];
  [v3 bounds];
  Height = CGRectGetHeight(v18);

  v5 = [v1 navigationController];
  v6 = [v5 navigationBar];
  v7 = [v6 isHidden];

  if (v7)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = Height;
  }

  v9 = [MEMORY[0x277D75418] currentDevice];
  v10 = [v9 userInterfaceIdiom];

  v11 = [v1 view];

  if (v10 == 1)
  {
    [v11 bounds];
    v12 = v8 + CGRectGetHeight(v19);
  }

  else
  {
    v13 = [v11 window];
    v14 = [v13 windowScene];
    v15 = [v14 screen];
    [v15 bounds];
    v12 = CGRectGetHeight(v20);
  }

  v16 = v12 * 0.09 - v8;
  return fmaxf(v16, 0.0);
}

void sub_247EA1AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247EA4BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247EA69C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247EA7BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247EA962C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247EAA0C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id viewControllerPointerToIdentifierMap()
{
  if (viewControllerPointerToIdentifierMap_onceToken != -1)
  {
    viewControllerPointerToIdentifierMap_cold_1();
  }

  v1 = viewControllerPointerToIdentifierMap_dict;

  return v1;
}

uint64_t __viewControllerPointerToIdentifierMap_block_invoke()
{
  viewControllerPointerToIdentifierMap_dict = objc_alloc_init(MEMORY[0x277CBEB38]);

  return MEMORY[0x2821F96F8]();
}

void DMCSendNavUIUpdatedNotification(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v5 = @"NavigationItem";
    v6[0] = v1;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"kDMCNavUIUpdatedNotification" object:0 userInfo:v3];
}

void sub_247EBB70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247EBC460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247EBD5C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247EC4A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_247EC53B8()
{
  v0 = sub_247ECC5D4();
  __swift_allocate_value_buffer(v0, qword_27EE7EBD0);
  __swift_project_value_buffer(v0, qword_27EE7EBD0);
  return sub_247ECC5C4();
}

uint64_t sub_247EC5444(id *a1, uint64_t a2)
{
  v4 = sub_247ECC504();
  v5 = *(v4 - 8);
  (MEMORY[0x28223BE20])();
  v27 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7E910);
  (MEMORY[0x28223BE20])();
  v9 = &v27 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7E8C8);
  v10 = (MEMORY[0x28223BE20])();
  v28 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = [*a1 enrollmentURL];
  if (v17)
  {
    v18 = v17;
    sub_247ECC4F4();

    v19 = *(v5 + 56);
    v19(v16, 0, 1, v4);
  }

  else
  {
    v19 = *(v5 + 56);
    v19(v16, 1, 1, v4);
  }

  (*(v5 + 16))(v14, a2, v4);
  v19(v14, 0, 1, v4);
  v20 = *(v7 + 48);
  sub_247ECAB90(v16, v9, &qword_27EE7E8C8);
  sub_247ECAB90(v14, &v9[v20], &qword_27EE7E8C8);
  v21 = *(v5 + 48);
  if (v21(v9, 1, v4) != 1)
  {
    v23 = v28;
    sub_247ECAB90(v9, v28, &qword_27EE7E8C8);
    if (v21(&v9[v20], 1, v4) != 1)
    {
      v24 = v27;
      (*(v5 + 32))(v27, &v9[v20], v4);
      sub_247ECADD4(&qword_27EE7E918, MEMORY[0x277CC9260]);
      v22 = sub_247ECC6D4();
      v25 = *(v5 + 8);
      v25(v24, v4);
      sub_247ECAD74(v14, &qword_27EE7E8C8);
      sub_247ECAD74(v16, &qword_27EE7E8C8);
      v25(v28, v4);
      sub_247ECAD74(v9, &qword_27EE7E8C8);
      return v22 & 1;
    }

    sub_247ECAD74(v14, &qword_27EE7E8C8);
    sub_247ECAD74(v16, &qword_27EE7E8C8);
    (*(v5 + 8))(v23, v4);
    goto LABEL_9;
  }

  sub_247ECAD74(v14, &qword_27EE7E8C8);
  sub_247ECAD74(v16, &qword_27EE7E8C8);
  if (v21(&v9[v20], 1, v4) != 1)
  {
LABEL_9:
    sub_247ECAD74(v9, &qword_27EE7E910);
    v22 = 0;
    return v22 & 1;
  }

  sub_247ECAD74(v9, &qword_27EE7E8C8);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_247EC58FC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_247ECC8E4())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x24C1BDB00](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_247ECC874();
        sub_247ECC894();
        v4 = v15;
        sub_247ECC8A4();
        sub_247ECC884();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

uint64_t sub_247EC5ABC(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v6 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7E8F8);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    sub_247ECAE1C(0, a4);
    **(*(v6 + 64) + 40) = sub_247ECC744();

    return MEMORY[0x282200950](v6);
  }
}

uint64_t sub_247EC5BB8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7E8F8);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_247EC5DE8(int a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v3 = sub_247ECC6F4();
  v5 = v4;
  v2[3] = v4;
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_247EC5EB8;

  return sub_247EC81F8(v3, v5);
}

uint64_t sub_247EC5EB8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v1)
  {
    if (v5)
    {
      v7 = *(v4 + 16);
      v8 = sub_247ECC4E4();

      (v7)[2](v7, 0, v8);
      _Block_release(v7);
    }

    else
    {
    }
  }

  else if (v5)
  {
    v9 = *(v4 + 16);
    v9[2](v9, a1, 0);
    _Block_release(v9);
  }

  v10 = *(v6 + 8);

  return v10();
}

uint64_t sub_247EC61D8(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_247EC6280;

  return sub_247EC9E5C();
}

uint64_t sub_247EC6280()
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *v1;

  if (v0)
  {
    if (v3)
    {
      v5 = *(v2 + 16);
      v6 = sub_247ECC4E4();

      (v5)[2](v5, v6);
      _Block_release(v5);
    }

    else
    {
    }
  }

  else if (v3)
  {
    v7 = *(v2 + 16);
    v7[2](v7, 0);
    _Block_release(v7);
  }

  v8 = *(v4 + 8);

  return v8();
}

DMCAppWait __swiftcall DMCAppWait.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_247EC6508()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_247ECAE74;

  return sub_247EC61D8(v2);
}

uint64_t sub_247EC65B4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_247ECAE74;

  return v6();
}

uint64_t sub_247EC669C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_247ECAE74;

  return sub_247EC65B4(v2, v3, v4);
}

uint64_t sub_247EC675C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_247EC6844;

  return v7();
}

uint64_t sub_247EC6844()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_247EC6938(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_247ECAE74;

  return sub_247EC675C(a1, v4, v5, v6);
}

uint64_t sub_247EC6A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7E8B0);
  MEMORY[0x28223BE20]();
  v10 = v22 - v9;
  sub_247ECAB90(a3, v22 - v9, &qword_27EE7E8B0);
  v11 = sub_247ECC784();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_247ECAD74(v10, &qword_27EE7E8B0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_247ECC774();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_247ECC764();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = sub_247ECC704() + 32;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if (v15 | v13)
    {
      v23[0] = 0;
      v23[1] = 0;
      v18 = v23;
      v23[2] = v13;
      v23[3] = v15;
    }

    else
    {
      v18 = 0;
    }

    v22[1] = 7;
    v22[2] = v18;
    v22[3] = v16;
    v20 = swift_task_create();

    sub_247ECAD74(a3, &qword_27EE7E8B0);

    return v20;
  }

LABEL_8:
  sub_247ECAD74(a3, &qword_27EE7E8B0);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_247EC6D00(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_247EC6DF8;

  return v6(a1);
}

uint64_t sub_247EC6DF8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_247EC6EF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_247ECAE74;

  return sub_247EC6D00(a1, v4);
}

uint64_t sub_247EC6FA8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_247EC6844;

  return sub_247EC6D00(a1, v4);
}

unint64_t sub_247EC7060(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_247EC712C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_247ECAC54(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_247EC712C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_247EC7238(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_247ECC864();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_247EC7238(uint64_t a1, unint64_t a2)
{
  v3 = sub_247EC7284(a1, a2);
  sub_247EC73B4(&unk_2859FA990);
  return v3;
}

uint64_t sub_247EC7284(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_247EC74A0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_247ECC864();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_247ECC724();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_247EC74A0(v10, 0);
        result = sub_247ECC844();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_247EC73B4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_247EC7514(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_247EC74A0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7E928);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_247EC7514(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7E928);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_247EC7608(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_247ECC954();
  sub_247ECC714();
  v8 = sub_247ECC974();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_247ECC904() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_247EC79B8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_247EC7758()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7E900);
  result = sub_247ECC824();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_247ECC954();
      sub_247ECC714();
      result = sub_247ECC974();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_247EC79B8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_247EC7758();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_247EC7B38();
      goto LABEL_16;
    }

    sub_247EC7C94();
  }

  v10 = *v4;
  sub_247ECC954();
  sub_247ECC714();
  result = sub_247ECC974();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_247ECC904();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_247ECC914();
  __break(1u);
  return result;
}

void *sub_247EC7B38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7E900);
  v2 = *v0;
  v3 = sub_247ECC814();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_247EC7C94()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7E900);
  result = sub_247ECC824();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_247ECC954();

      sub_247ECC714();
      result = sub_247ECC974();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

char *sub_247EC7ECC(char *a1, int64_t a2, char a3)
{
  result = sub_247EC7EEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_247EC7EEC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7E8D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_247EC7FF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7E900);
    v3 = sub_247ECC834();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_247ECC954();

      sub_247ECC714();
      result = sub_247ECC974();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_247ECC904();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_247EC8160(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C1BDA50](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_247EC7608(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_247EC81F8(uint64_t a1, uint64_t a2)
{
  v2[58] = a1;
  v2[59] = a2;
  v3 = sub_247ECC504();
  v2[60] = v3;
  v2[61] = *(v3 - 8);
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7E8C8);
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v4 = sub_247ECC4D4();
  v2[67] = v4;
  v2[68] = *(v4 - 8);
  v2[69] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247EC8370, 0, 0);
}

uint64_t sub_247EC8370()
{
  v25 = v0;
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[60];
  v4 = v0[61];
  v6 = v0[58];
  v5 = v0[59];
  sub_247ECC4C4();
  sub_247ECC4B4();

  MEMORY[0x24C1BD750](v6, v5);
  sub_247ECC494();
  sub_247ECAB90(v1, v2, &qword_27EE7E8C8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_247ECAD74(v0[65], &qword_27EE7E8C8);
    if (qword_27EE7E8A0 != -1)
    {
      swift_once();
    }

    v7 = sub_247ECC5D4();
    __swift_project_value_buffer(v7, qword_27EE7EBD0);

    v8 = sub_247ECC5B4();
    v9 = sub_247ECC7B4();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[69];
    v12 = v0[68];
    v13 = v0[67];
    v14 = v0[66];
    if (v10)
    {
      v23 = v0[69];
      v16 = v0[58];
      v15 = v0[59];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_247EC7060(v16, v15, &v24);
      _os_log_impl(&dword_247E7D000, v8, v9, "Could not form enrollment URL from %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x24C1BE630](v18, -1, -1);
      MEMORY[0x24C1BE630](v17, -1, -1);

      sub_247ECAD74(v14, &qword_27EE7E8C8);
      (*(v12 + 8))(v23, v13);
    }

    else
    {

      sub_247ECAD74(v14, &qword_27EE7E8C8);
      (*(v12 + 8))(v11, v13);
    }

    v21 = v0[1];

    return v21(0);
  }

  else
  {
    (*(v0[61] + 32))(v0[64], v0[65], v0[60]);
    v19 = objc_opt_self();
    v0[2] = v0;
    v0[7] = v0 + 56;
    v0[3] = sub_247EC8774;
    v20 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7E8D0);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_247EC5430;
    v0[29] = &block_descriptor;
    v0[30] = v20;
    [v19 storesWithScope:1 completionHandler:v0 + 26];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_247EC8774()
{
  v1 = *(*v0 + 48);
  *(*v0 + 560) = v1;
  if (v1)
  {
    v2 = sub_247EC9884;
  }

  else
  {
    v2 = sub_247EC8884;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_247EC8884()
{
  v42 = v0;
  v1 = v0[64];
  v2 = v0[56];
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = sub_247EC58FC(sub_247ECACB8, v3, v2);

  if (v4 >> 62)
  {
    if (sub_247ECC8E4())
    {
      goto LABEL_3;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x24C1BDB00](0, v4);
      goto LABEL_6;
    }

    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(v4 + 32);
LABEL_6:
      v6 = v5;
      v0[71] = v5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7E8D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_247ED4400;
      v8 = [objc_opt_self() registeredIdentifier];
      v9 = sub_247ECC6F4();
      v11 = v10;

      *(inited + 32) = v9;
      *(inited + 40) = v11;
      sub_247EC7FF8(inited);
      swift_setDeallocating();
      sub_247ECACD8(inited + 32);
      v12 = sub_247ECC794();
      v0[72] = v12;

      v0[10] = v0;
      v0[15] = v0 + 57;
      v0[11] = sub_247EC8E04;
      v13 = swift_continuation_init();
      v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7E8E0);
      v0[34] = MEMORY[0x277D85DD0];
      v0[35] = 1107296256;
      v0[36] = sub_247EC5AA8;
      v0[37] = &block_descriptor_45;
      v0[38] = v13;
      [v6 declarationsWithTypes:v12 completionHandler:v0 + 34];

      return MEMORY[0x282200938](v0 + 10);
    }

    __break(1u);
    goto LABEL_19;
  }

  if (qword_27EE7E8A0 != -1)
  {
LABEL_19:
    swift_once();
  }

  v14 = v0[64];
  v16 = v0[61];
  v15 = v0[62];
  v17 = v0[60];
  v18 = sub_247ECC5D4();
  __swift_project_value_buffer(v18, qword_27EE7EBD0);
  (*(v16 + 16))(v15, v14, v17);
  v19 = sub_247ECC5B4();
  v20 = sub_247ECC7B4();
  v21 = os_log_type_enabled(v19, v20);
  v22 = v0[69];
  v23 = v0[68];
  v24 = v0[67];
  v40 = v0[66];
  v26 = v0[61];
  v25 = v0[62];
  v27 = v0[60];
  if (v21)
  {
    v39 = v0[67];
    v28 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v41 = v36;
    *v28 = 136446210;
    sub_247ECADD4(&qword_27EE7E8E8, MEMORY[0x277CC9260]);
    v37 = v23;
    v38 = v22;
    v29 = sub_247ECC8F4();
    v31 = v30;
    v32 = *(v26 + 8);
    v32(v25, v27);
    v33 = sub_247EC7060(v29, v31, &v41);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_247E7D000, v19, v20, "No observer store for %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x24C1BE630](v36, -1, -1);
    MEMORY[0x24C1BE630](v28, -1, -1);

    sub_247ECAD74(v40, &qword_27EE7E8C8);
    (*(v37 + 8))(v38, v39);
  }

  else
  {

    v32 = *(v26 + 8);
    v32(v25, v27);
    sub_247ECAD74(v40, &qword_27EE7E8C8);
    (*(v23 + 8))(v22, v24);
  }

  v32(v0[64], v0[60]);

  v34 = v0[1];

  return v34(0);
}

uint64_t sub_247EC8E04()
{
  v1 = *(*v0 + 112);
  *(*v0 + 584) = v1;
  if (v1)
  {
    v2 = sub_247EC999C;
  }

  else
  {
    v2 = sub_247EC8F14;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_247EC8F14()
{
  v56 = v0;
  v1 = *(v0 + 456);

  if (v1 >> 62)
  {
    v2 = sub_247ECC8E4();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 592) = v2;
  v54 = v0;
  if (v2 < 1)
  {

    if (qword_27EE7E8A0 != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 504);
    v26 = *(v0 + 512);
    v27 = *(v0 + 480);
    v28 = *(v0 + 488);
    v29 = sub_247ECC5D4();
    __swift_project_value_buffer(v29, qword_27EE7EBD0);
    (*(v28 + 16))(v25, v26, v27);
    v30 = sub_247ECC5B4();
    v31 = sub_247ECC7B4();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 568);
    v34 = *(v0 + 552);
    v35 = *(v0 + 544);
    v36 = *(v0 + 536);
    v53 = *(v0 + 528);
    v37 = *(v0 + 504);
    v38 = *(v0 + 480);
    v39 = *(v0 + 488);
    if (v32)
    {
      v52 = *(v0 + 536);
      v40 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v55 = v50;
      *v40 = 136446210;
      sub_247ECADD4(&qword_27EE7E8E8, MEMORY[0x277CC9260]);
      v41 = v35;
      v42 = sub_247ECC8F4();
      v51 = v34;
      v44 = v43;
      v49 = v31;
      v45 = *(v39 + 8);
      v45(v37, v38);
      v46 = sub_247EC7060(v42, v44, &v55);

      *(v40 + 4) = v46;
      _os_log_impl(&dword_247E7D000, v30, v49, "No app configs in observer store for %{public}s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x24C1BE630](v50, -1, -1);
      MEMORY[0x24C1BE630](v40, -1, -1);

      sub_247ECAD74(v53, &qword_27EE7E8C8);
      (*(v41 + 8))(v51, v52);
    }

    else
    {

      v45 = *(v39 + 8);
      v45(v37, v38);
      sub_247ECAD74(v53, &qword_27EE7E8C8);
      (*(v35 + 8))(v34, v36);
    }

    v45(v54[64], v54[60]);

    v47 = v54[1];

    return v47(0);
  }

  else
  {
    v55 = MEMORY[0x277D84F90];
    sub_247EC7ECC(0, v2, 0);
    v3 = 0;
    v4 = v55;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C1BDB00](v3, v1);
      }

      else
      {
        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = [v6 declarationIdentifier];
      v8 = sub_247ECC6F4();
      v10 = v9;

      v55 = v4;
      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_247EC7ECC((v11 > 1), v12 + 1, 1);
        v4 = v55;
      }

      ++v3;
      *(v4 + 16) = v12 + 1;
      v13 = v4 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
    }

    while (v2 != v3);

    if (qword_27EE7E8A0 != -1)
    {
      swift_once();
    }

    v14 = sub_247ECC5D4();
    v54[75] = __swift_project_value_buffer(v14, qword_27EE7EBD0);

    v15 = sub_247ECC5B4();
    v16 = sub_247ECC7B4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v55 = v18;
      *v17 = 136446210;
      v19 = MEMORY[0x24C1BDA00](v4, MEMORY[0x277D837D0]);
      v21 = sub_247EC7060(v19, v20, &v55);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_247E7D000, v15, v16, "Waiting for app configs %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x24C1BE630](v18, -1, -1);
      MEMORY[0x24C1BE630](v17, -1, -1);
    }

    v22 = v54[71];
    sub_247EC8160(v4);

    v23 = sub_247ECC794();
    v54[76] = v23;

    v54[18] = v54;
    v54[19] = sub_247EC95D8;
    v24 = swift_continuation_init();
    v54[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7E8F0);
    v54[42] = MEMORY[0x277D85DD0];
    v54[43] = 1107296256;
    v54[44] = sub_247EC5BB8;
    v54[45] = &block_descriptor_48;
    v54[46] = v24;
    [v22 waitForProcessingOfDeclarations:v23 timeout:v54 + 42 completionHandler:300.0];

    return MEMORY[0x282200938](v54 + 18);
  }
}

uint64_t sub_247EC95D8()
{
  v1 = *(*v0 + 176);
  *(*v0 + 616) = v1;
  if (v1)
  {
    v2 = sub_247EC9AC4;
  }

  else
  {
    v2 = sub_247EC96E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_247EC96E8()
{
  v1 = sub_247ECC5B4();
  v2 = sub_247ECC7B4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_247E7D000, v1, v2, "App configs wait complete", v3, 2u);
    MEMORY[0x24C1BE630](v3, -1, -1);
  }

  v4 = *(v0 + 552);
  v5 = *(v0 + 544);
  v6 = *(v0 + 536);
  v7 = *(v0 + 528);
  v8 = *(v0 + 512);
  v9 = *(v0 + 480);
  v10 = *(v0 + 488);

  sub_247ECAD74(v7, &qword_27EE7E8C8);
  (*(v5 + 8))(v4, v6);
  (*(v10 + 8))(v8, v9);
  v11 = *(v0 + 592);

  v12 = *(v0 + 8);

  return v12(v11);
}

uint64_t sub_247EC9884()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[66];
  swift_willThrow();
  sub_247ECAD74(v4, &qword_27EE7E8C8);
  (*(v2 + 8))(v1, v3);
  (*(v0[61] + 8))(v0[64], v0[60]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_247EC999C()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];
  swift_willThrow();

  sub_247ECAD74(v6, &qword_27EE7E8C8);
  (*(v4 + 8))(v3, v5);

  (*(v0[61] + 8))(v0[64], v0[60]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_247EC9AC4()
{
  v1 = v0[76];
  v2 = v0[71];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];
  swift_willThrow();

  sub_247ECAD74(v6, &qword_27EE7E8C8);
  (*(v4 + 8))(v3, v5);

  (*(v0[61] + 8))(v0[64], v0[60]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_247EC9BEC(uint64_t a1)
{
  v30 = sub_247ECC544();
  v2 = *(v30 - 8);
  MEMORY[0x28223BE20]();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_247ECC564();
  MEMORY[0x28223BE20]();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 0;
    v29 = v6 + 16;
    v11 = (v6 + 8);
    v23 = v2;
    v12 = (v2 + 88);
    v28 = *MEMORY[0x277CD4A30];
    v27 = *MEMORY[0x277CD4A10];
    v26 = *MEMORY[0x277CD4A28];
    v25 = *MEMORY[0x277CD4A18];
    v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v24 = *MEMORY[0x277CD4A20];
    v14 = a1 + v13;
    v15 = *(v6 + 72);
    v16 = *(v6 + 16);
    while (1)
    {
      v16(v8, v14, v5);
      sub_247ECC554();
      (*v11)(v8, v5);
      v17 = (*v12)(v4, v30);
      v18 = v17 == v28 || v17 == v27;
      v19 = v18 || v17 == v26;
      v20 = v19 || v17 == v25;
      if (!v20 && v17 != v24)
      {
        break;
      }

      ++v10;
      v14 += v15;
      if (v9 == v10)
      {
        goto LABEL_18;
      }
    }

    (*(v23 + 8))(v4, v30);
  }

  else
  {
LABEL_18:
    v10 = v9;
  }

  return v9 - v10;
}

uint64_t sub_247EC9E5C()
{
  v1 = sub_247ECC8B4();
  v0[7] = v1;
  v0[8] = *(v1 - 8);
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v2 = sub_247ECC8C4();
  v0[11] = v2;
  v0[12] = *(v2 - 8);
  v0[13] = swift_task_alloc();
  v3 = sub_247ECC594();
  v0[14] = v3;
  v0[15] = *(v3 - 8);
  v0[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247EC9FDC, 0, 0);
}

uint64_t sub_247EC9FDC()
{
  sub_247ECC574();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_247ECA084;

  return MEMORY[0x2821234A0](0);
}

uint64_t sub_247ECA084(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_247ECA888;
  }

  else
  {
    v4 = sub_247ECA198;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_247ECA198()
{
  if (qword_27EE7E8A0 != -1)
  {
    swift_once();
  }

  v1 = sub_247ECC5D4();
  __swift_project_value_buffer(v1, qword_27EE7EBD0);

  v2 = sub_247ECC5B4();
  v3 = sub_247ECC7B4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 144);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&dword_247E7D000, v2, v3, "App status poll %ld status items", v6, 0xCu);
    MEMORY[0x24C1BE630](v6, -1, -1);
  }

  else
  {
  }

  v7 = sub_247EC9BEC(*(v0 + 144));

  v8 = sub_247ECC5B4();
  v9 = sub_247ECC7B4();
  v10 = os_log_type_enabled(v8, v9);
  if (v7)
  {
    if (v10)
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v7;
      _os_log_impl(&dword_247E7D000, v8, v9, "App status pending %ld - retrying in 5 secs...", v11, 0xCu);
      MEMORY[0x24C1BE630](v11, -1, -1);
    }

    v13 = *(v0 + 64);
    v12 = *(v0 + 72);
    v14 = *(v0 + 56);

    sub_247ECC944();
    *(v0 + 40) = xmmword_247ED4410;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v15 = sub_247ECADD4(&qword_27EE7E8B8, MEMORY[0x277D85928]);
    sub_247ECC924();
    sub_247ECADD4(&qword_27EE7E8C0, MEMORY[0x277D858F8]);
    sub_247ECC8D4();
    v16 = *(v13 + 8);
    *(v0 + 160) = v16;
    *(v0 + 168) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v12, v14);
    v17 = swift_task_alloc();
    *(v0 + 176) = v17;
    *v17 = v0;
    v17[1] = sub_247ECA5AC;
    v19 = *(v0 + 80);
    v18 = *(v0 + 88);

    return MEMORY[0x2822008C8](v19, v0 + 16, v18, v15);
  }

  else
  {
    if (v10)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_247E7D000, v8, v9, "App status poll complete", v20, 2u);
      MEMORY[0x24C1BE630](v20, -1, -1);
    }

    v22 = *(v0 + 120);
    v21 = *(v0 + 128);
    v23 = *(v0 + 112);

    (*(v22 + 8))(v21, v23);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_247ECA5AC()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    (*(v2 + 160))(*(v2 + 80), *(v2 + 56));
    v3 = sub_247ECA7C4;
  }

  else
  {
    v5 = *(v2 + 96);
    v4 = *(v2 + 104);
    v6 = *(v2 + 88);
    (*(v2 + 160))(*(v2 + 80), *(v2 + 56));
    (*(v5 + 8))(v4, v6);
    v3 = sub_247ECA704;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_247ECA704()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  sub_247ECC574();
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_247ECA084;

  return MEMORY[0x2821234A0](0);
}

uint64_t sub_247ECA7C4()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_247ECA888()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_247ECA9D0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_247ECAE74;

  return sub_247EC5DE8(v2, v3);
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_247ECAAC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_247EC6844;

  return sub_247EC675C(a1, v4, v5, v6);
}

uint64_t sub_247ECAB90(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_247ECAC54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_247ECAD74(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_247ECADD4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_247ECAE1C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t DMCGenericViewControllerRecipe.init(viewController:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = result;
  return result;
}

Swift::String __swiftcall DMCGenericViewControllerRecipe.title()()
{
  v1 = *(v0 + 8);
  v2 = [v1 title];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = [v1 navigationItem];
    v3 = [v4 title];

    if (!v3)
    {
      v5 = 0;
      v7 = 0xE000000000000000;
      goto LABEL_5;
    }
  }

  v5 = sub_247ECC6F4();
  v7 = v6;

LABEL_5:
  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

Swift::Bool __swiftcall DMCGenericViewControllerRecipe.isSpinning()()
{
  v1 = [*(v0 + 8) navigationItem];
  v2 = [v1 rightBarButtonItem];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 DMCIsSpinner];

  return v3;
}

uint64_t static DMCGenericViewControllerRecipe.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_247ECB014();
  return sub_247ECC7F4() & 1;
}

unint64_t sub_247ECB014()
{
  result = qword_27EE7E930;
  if (!qword_27EE7E930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE7E930);
  }

  return result;
}

uint64_t DMCGenericViewControllerRecipe.hashValue.getter()
{
  v1 = *v0;
  sub_247ECC954();
  MEMORY[0x24C1BDC10](v1);
  sub_247ECC804();
  return sub_247ECC974();
}

uint64_t sub_247ECB0FC()
{
  v1 = *v0;
  sub_247ECC954();
  MEMORY[0x24C1BDC10](v1);
  sub_247ECC804();
  return sub_247ECC974();
}

uint64_t sub_247ECB198()
{
  v1 = *v0;
  sub_247ECC954();
  MEMORY[0x24C1BDC10](v1);
  sub_247ECC804();
  return sub_247ECC974();
}

uint64_t sub_247ECB1F0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_247ECB014();
  return sub_247ECC7F4() & 1;
}

id DMCGenericViewControllerRepresentable.recipe.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return v2;
}

__n128 DMCGenericViewControllerRepresentable.recipe.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

__n128 DMCGenericViewControllerRepresentable.init(recipe:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_247ECB2C8()
{
  result = qword_27EE7E938;
  if (!qword_27EE7E938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7E938);
  }

  return result;
}

unint64_t sub_247ECB320()
{
  result = qword_27EE7E940;
  if (!qword_27EE7E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7E940);
  }

  return result;
}

void sub_247ECB500()
{
  sub_247ECB5D8();
  sub_247ECC644();
  __break(1u);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_247ECB544(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_247ECB58C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_247ECB5D8()
{
  result = qword_27EE7E948;
  if (!qword_27EE7E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7E948);
  }

  return result;
}

uint64_t sub_247ECB634()
{
  v1 = v0;
  v2 = sub_247ECC6C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_247ECC514();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - v11;
  v13 = [v0 traitCollection];
  sub_247ECC7D4();

  v14 = [v1 traitCollection];
  sub_247ECC7E4();

  LOBYTE(v1) = sub_247ECC684();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 104))(v10, *MEMORY[0x277D40278], v6);
  sub_247ECC26C(&qword_27EE7E968, MEMORY[0x277D40290]);
  sub_247ECC734();
  sub_247ECC734();
  v15 = *(v7 + 8);
  v15(v10, v6);
  v15(v12, v6);
  return (v17[1] == v17[0]) & v1;
}

Swift::Bool __swiftcall UIViewController.dmc_navProxyAttemptPushViewController(_:)(UIViewController *a1)
{
  v3 = sub_247ECC6C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_247ECB634();
  if (v7)
  {
    if (sub_247ECBA80())
    {
      v8 = &type metadata for DMCGenericViewControllerRecipe;
      v15 = &type metadata for DMCGenericViewControllerRecipe;
      v16 = sub_247ECBBE0();
      v14[0] = a1;
      v14[1] = a1;
      v9 = a1;
    }

    else
    {
      v15 = sub_247ECC524();
      v16 = sub_247ECC26C(&qword_27EE7E950, MEMORY[0x277D402E0]);
      __swift_allocate_boxed_opaque_existential_1(v14);
      v10 = a1;
      sub_247ECC534();
      v8 = v15;
    }

    __swift_project_boxed_opaque_existential_0(v14, v8);
    v11 = [v1 traitCollection];
    sub_247ECC7E4();

    sub_247ECC694();
    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  return v7 & 1;
}

uint64_t sub_247ECBA80()
{
  v1 = sub_247ECC6E4();
  v2 = NSClassFromString(v1);

  if (!v2 || ([v0 isKindOfClass_] & 1) == 0)
  {
    v3 = sub_247ECC6E4();
    v4 = NSClassFromString(v3);

    if (!v4 || ![v0 isKindOfClass_])
    {
      v5 = sub_247ECC6E4();
      v6 = NSClassFromString(v5);

      if (v6)
      {
        [v0 isKindOfClass_];
      }
    }
  }

  return 0;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_247ECBBE0()
{
  result = qword_27EE7E958;
  if (!qword_27EE7E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7E958);
  }

  return result;
}

uint64_t sub_247ECBC34(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = UIViewController.dmc_navProxyAttemptPushViewController(_:)(v4);

  return a1 & 1;
}

Swift::Bool __swiftcall UIViewController.dmc_navProxyAttemptPopViewController()()
{
  v1 = sub_247ECC6C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_247ECB634();
  if (v5)
  {
    v6 = [v0 traitCollection];
    sub_247ECC7E4();

    sub_247ECC6A4();
    (*(v2 + 8))(v4, v1);
  }

  return v5 & 1;
}

uint64_t sub_247ECBD88(void *a1)
{
  v2 = sub_247ECC6C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  v7 = sub_247ECB634();
  if (v7)
  {
    v8 = [v6 traitCollection];
    sub_247ECC7E4();

    sub_247ECC6A4();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
  }

  return v7 & 1;
}

Swift::Bool __swiftcall UIViewController.dmc_navProxyAttemptPopToViewController(_:)(UIViewController *a1)
{
  v3 = sub_247ECC5D4();
  MEMORY[0x28223BE20](v3);
  v4 = sub_247ECC6C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_247ECB634() & 1) == 0)
  {
    return 0;
  }

  v8 = a1;
  v9 = [v1 traitCollection];
  sub_247ECC7E4();

  v11[2] = v8;
  v11[3] = v8;
  sub_247ECBBE0();
  sub_247ECC6B4();
  (*(v5 + 8))(v7, v4);

  return 1;
}

uint64_t sub_247ECC1C0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = UIViewController.dmc_navProxyAttemptPopToViewController(_:)(v4);

  return a1 & 1;
}

uint64_t sub_247ECC210(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_247ECC25C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_247ECC26C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}