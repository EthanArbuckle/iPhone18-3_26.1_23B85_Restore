id CRSUILogForCategory(unint64_t a1)
{
  if (a1 >= 7)
  {
    CRSUILogForCategory_cold_2();
  }

  if (CRSUILogForCategory_onceToken != -1)
  {
    CRSUILogForCategory_cold_1();
  }

  v2 = CRSUILogForCategory_logObjects[a1];

  return v2;
}

void sub_2432198D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_243219A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CRSUIImageViewWithResolver(void *a1)
{
  v1 = MEMORY[0x277D755C0];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
  v5 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  v6 = v2[2](v2, v4);
  [v3 registerImage:v6 withTraitCollection:v4];

  v7 = v2[2](v2, v5);

  [v3 registerImage:v7 withTraitCollection:v5];
  v8 = [MEMORY[0x277D75C80] currentTraitCollection];
  v9 = [v3 imageWithTraitCollection:v8];

  v10 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v9];
  [v10 setContentMode:2];
  [v10 setClipsToBounds:1];

  return v10;
}

CRSUICAPackageView *CRSUICAPackageViewWithStatefulPackage(void *a1)
{
  v1 = a1;
  v2 = [v1 hasDynamicState];
  v3 = [CRSUICAPackageView alloc];
  v4 = [v1 package];
  if (v2)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __CRSUICAPackageViewWithStatefulPackage_block_invoke;
    v8[3] = &unk_278DA0A08;
    v9 = v1;
    v5 = [(CRSUICAPackageView *)v3 initWithPackage:v4 dynamicStateProvider:v8];
  }

  else
  {
    v6 = [v1 lightModeState];
    v5 = [(CRSUICAPackageView *)v3 initWithPackage:v4 state:v6];
  }

  [(CRSUICAPackageView *)v5 setContentMode:2];
  [(CRSUICAPackageView *)v5 setClipsToBounds:1];

  return v5;
}

id __CRSUICAPackageViewWithStatefulPackage_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInterfaceStyle];
  v4 = *(a1 + 32);
  if (v3 == 2)
  {
    [v4 darkModeState];
  }

  else
  {
    [v4 lightModeState];
  }
  v5 = ;

  return v5;
}

void sub_24321B97C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24321C254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24321C9DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24321EC68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t __CRSUILogForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.CarPlayUIServices", "CarPlayUIServices");
  v1 = CRSUILogForCategory_logObjects[0];
  CRSUILogForCategory_logObjects[0] = v0;

  v2 = os_log_create("com.apple.CarPlayUIServices", "StatusBar");
  v3 = qword_27ED6B1E8;
  qword_27ED6B1E8 = v2;

  v4 = os_log_create("com.apple.CarPlayUIServices", "AudioNotification");
  v5 = qword_27ED6B1F0;
  qword_27ED6B1F0 = v4;

  v6 = os_log_create("com.apple.CarPlayUIServices", "DashboardWindow");
  v7 = qword_27ED6B1F8;
  qword_27ED6B1F8 = v6;

  v8 = os_log_create("com.apple.CarPlayUIServices", "Appearance");
  v9 = qword_27ED6B200;
  qword_27ED6B200 = v8;

  v10 = os_log_create("com.apple.CarPlayUIServices", "PunchThrough");
  v11 = qword_27ED6B208;
  qword_27ED6B208 = v10;

  qword_27ED6B210 = os_log_create("com.apple.CarPlayUIServices", "ClusterTheme");

  return MEMORY[0x2821F96F8]();
}

void sub_243221A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_243223578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_243223FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void CRSUICarPlayTestAppSetMainScreenCornerMaskImage(void *a1)
{
  image = a1;
  CFPreferencesAppSynchronize(@"com.apple.carplay.internal");
  if (image)
  {
    v1 = UIImagePNGRepresentation(image);
    CFPreferencesSetAppValue(@"CornerMaskOverrideImage", v1, @"com.apple.carplay.internal");
  }

  else
  {
    CFPreferencesSetAppValue(@"CornerMaskOverrideImage", 0, @"com.apple.carplay.internal");
  }
}

void CRSUICarPlayTestAppSetClusterScreenCornerMaskImage(void *a1)
{
  image = a1;
  CFPreferencesAppSynchronize(@"com.apple.carplay.internal");
  if (image)
  {
    v1 = UIImagePNGRepresentation(image);
    CFPreferencesSetAppValue(@"ClusterCornerMaskOverrideImage", v1, @"com.apple.carplay.internal");
  }

  else
  {
    CFPreferencesSetAppValue(@"ClusterCornerMaskOverrideImage", 0, @"com.apple.carplay.internal");
  }
}

void CRSUICarPlayTestAppSetUISyncDisabled(int a1)
{
  CFPreferencesAppSynchronize(@"com.apple.carplay.internal");
  v2 = *MEMORY[0x277CBED28];
  if (a1)
  {
    v3 = *MEMORY[0x277CBED28];
  }

  else
  {
    v3 = 0;
  }

  CFPreferencesSetAppValue(@"UISyncChannelDisabled", v3, @"com.apple.carplay.internal");
}

void sub_24322725C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_24322EA08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_243230DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_243231C18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v6 - 144));
  _Unwind_Resume(a1);
}