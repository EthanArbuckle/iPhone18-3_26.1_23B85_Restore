uint64_t sub_251146B48()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251146B8C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251146BC4()
{
  v1 = sub_251210EBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_251146C54()
{
  MEMORY[0x25306E9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251146C8C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251146CF0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_25121179C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_251146D1C()
{
  MEMORY[0x25306E9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251146D64()
{
  MEMORY[0x25306E9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251146D9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251146DE4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_251146DF4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So8NSNumberCIego_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_251146E1C()
{
  MEMORY[0x25306E9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251146E54()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251146E8C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251146ECC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251146F10()
{
  MEMORY[0x25306E9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251146F48()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251146F88()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251146FC0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251146FF8()
{
  MEMORY[0x25306E9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251147030()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251147070()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2511470B0()
{
  MEMORY[0x25306E9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2511470E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_251147108(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_251147130()
{
  MEMORY[0x25306E9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251147168()
{
  MEMORY[0x25306E9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2511471A0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2511471E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251147218()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251147250()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251147290()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2511472F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t *OUTLINED_FUNCTION_1_0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_2511615A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_251161968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_251163B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2511711B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_251173C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getHearingModeUIServiceClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!HearingModeSettingsUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __HearingModeSettingsUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2796AD900;
    v6 = 0;
    HearingModeSettingsUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!HearingModeSettingsUILibraryCore_frameworkLibrary)
  {
    __getHearingModeUIServiceClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("HearingModeUIService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHearingModeUIServiceClass_block_invoke_cold_1();
  }

  getHearingModeUIServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __HearingModeSettingsUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HearingModeSettingsUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t isPreferredLanguageEnglish()
{
  v0 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v1 = [v0 firstObject];
  if ([v1 isEqualToString:@"en"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 hasPrefix:@"en-"];
  }

  return v2;
}

void sub_2511816E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  objc_destroyWeak(&a37);
  objc_destroyWeak((v37 - 168));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sharedBluetoothSettingsLogComponent()
{
  if (sharedBluetoothSettingsLogComponent_onceToken[0] != -1)
  {
    sharedBluetoothSettingsLogComponent_cold_1();
  }

  v1 = sharedBluetoothSettingsLogComponent_sharedBTSLog;

  return v1;
}

uint64_t __sharedBluetoothSettingsLogComponent_block_invoke()
{
  sharedBluetoothSettingsLogComponent_sharedBTSLog = os_log_create("com.apple.bluetooth", "BluetoothSettings");

  return MEMORY[0x2821F96F8]();
}

void sub_25118C960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak(&a32);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id createWarningCellTitle()
{
  v0 = objc_alloc_init(MEMORY[0x277D75C40]);
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setEditable:0];
  [v0 setSelectable:1];
  [v0 setUserInteractionEnabled:1];
  [v0 setScrollEnabled:0];
  [v0 setTextContainerInset:{0.0, 0.0, 0.0, 0.0}];
  v1 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  [v0 setFont:v1];

  v2 = [MEMORY[0x277D3FA48] appearance];
  v3 = [v2 textColor];
  if (v3)
  {
    [v0 setTextColor:v3];
  }

  else
  {
    v4 = [MEMORY[0x277D75348] blackColor];
    [v0 setTextColor:v4];
  }

  v5 = [MEMORY[0x277D75348] clearColor];
  [v0 setBackgroundColor:v5];

  LODWORD(v6) = 1144750080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v6];
  LODWORD(v7) = 1144750080;
  [v0 setContentHuggingPriority:0 forAxis:v7];
  LODWORD(v8) = 1144750080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v8];
  LODWORD(v9) = 1144750080;
  [v0 setContentHuggingPriority:1 forAxis:v9];
  [v0 sizeToFit];

  return v0;
}

id createWarningCellBody()
{
  v0 = objc_alloc_init(MEMORY[0x277D75C40]);
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setEditable:0];
  [v0 setSelectable:1];
  [v0 setUserInteractionEnabled:1];
  [v0 setScrollEnabled:0];
  [v0 _setInteractiveTextSelectionDisabled:0];
  [v0 setShowsVerticalScrollIndicator:0];
  [v0 setTextContainerInset:{0.0, 0.0, 0.0, 0.0}];
  v1 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [v0 setFont:v1];

  v2 = [MEMORY[0x277D3FA48] appearance];
  v3 = [v2 textColor];
  if (v3)
  {
    [v0 setTextColor:v3];
  }

  else
  {
    v4 = [MEMORY[0x277D75348] blackColor];
    [v0 setTextColor:v4];
  }

  v5 = [MEMORY[0x277D75348] clearColor];
  [v0 setBackgroundColor:v5];

  LODWORD(v6) = 1144750080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v6];
  LODWORD(v7) = 1144750080;
  [v0 setContentHuggingPriority:0 forAxis:v7];
  LODWORD(v8) = 1144750080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v8];
  LODWORD(v9) = 1144750080;
  [v0 setContentHuggingPriority:1 forAxis:v9];
  [v0 sizeToFit];

  return v0;
}

void sub_251190EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2511917D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_251192CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t cbTapActionForBT(int a1)
{
  v1 = a1 != 0xFFFF;
  if (a1 == 15)
  {
    v1 = 0;
  }

  if (a1 == 4)
  {
    v2 = 5;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 1;
  }

  if (a1 == 2)
  {
    v3 = 3;
  }

  if (a1 == 1)
  {
    v3 = 2;
  }

  if (a1 <= 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

void sub_25119B584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t static HPSCaseEngravingView.getEngravedCaseImage(_:productID:)(uint64_t a1, uint64_t a2, int a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2511C1CA8;

  return sub_2511C2AF8(a1, a2, a3);
}

uint64_t sub_2511C1CA8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2511C1DA4()
{
  v0 = sub_251210E9C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D426B8], v0);
  v5 = sub_251210EAC();
  (*(v1 + 8))(v4, v0);
  return v5;
}

id sub_2511C1E98(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  return v4;
}

uint64_t sub_2511C207C(int a1, int a2, void *aBlock)
{
  v3[2] = _Block_copy(aBlock);
  v5 = sub_25121179C();
  v7 = v6;
  v3[3] = v6;
  v8 = swift_task_alloc();
  v3[4] = v8;
  *v8 = v3;
  v8[1] = sub_2511C2158;

  return sub_2511C2AF8(v5, v7, a2);
}

uint64_t sub_2511C2158(const void *a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (v5)[2](v5, a1);
  _Block_release(v5);
  _Block_release(a1);
  v6 = *(v8 + 8);

  return v6();
}

id HPSCaseEngravingView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HPSCaseEngravingView.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HPSCaseEngravingView();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HPSCaseEngravingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HPSCaseEngravingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2511C2388(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2511C3D54;

  return v7();
}

uint64_t sub_2511C2470(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2511C2558;

  return v8();
}

uint64_t sub_2511C2558()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2511C264C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4226D0, &qword_251217DE8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v24 - v10;
  sub_2511C3948(a3, v24 - v10);
  v12 = sub_2512118FC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2511C39B8(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2512118EC();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_2512118DC();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_2512117EC() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_2511C39B8(a3);

    return v22;
  }

LABEL_8:
  sub_2511C39B8(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2511C2908(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2511C2A00;

  return v7(a1);
}

uint64_t sub_2511C2A00()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2511C2AF8(uint64_t a1, uint64_t a2, int a3)
{
  *(v3 + 344) = a3;
  *(v3 + 176) = a1;
  *(v3 + 184) = a2;
  v4 = sub_251210EBC();
  *(v3 + 192) = v4;
  v5 = *(v4 - 8);
  *(v3 + 200) = v5;
  *(v3 + 208) = *(v5 + 64);
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4226D8, &qword_251217E38) - 8) + 64) + 15;
  *(v3 + 232) = swift_task_alloc();
  v7 = sub_251210E8C();
  *(v3 + 240) = v7;
  v8 = *(v7 - 8);
  *(v3 + 248) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  v10 = sub_251210EEC();
  *(v3 + 272) = v10;
  v11 = *(v10 - 8);
  *(v3 + 280) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2511C2CD8, 0, 0);
}

uint64_t sub_2511C2CD8()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 344);
  *(v0 + 304) = sub_2511C3B90();
  *(v0 + 312) = sub_251211ADC();
  sub_251210EDC();
  v22 = *(v0 + 288);
  v3 = *(v0 + 280);
  v23 = *(v0 + 272);
  v24 = *(v0 + 296);
  v25 = *(v0 + 264);
  v26 = *(v0 + 248);
  v27 = *(v0 + 256);
  v28 = *(v0 + 240);
  v4 = *(v0 + 232);
  v21 = *(v0 + 344);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  *(v0 + 128) = sub_2512117DC();
  *(v0 + 136) = v7;
  *(v0 + 144) = 58;
  *(v0 + 152) = 0xE100000000000000;
  *(v0 + 160) = 45;
  *(v0 + 168) = 0xE100000000000000;
  sub_2511C3BF4();
  sub_2511C3C48();
  v8 = MEMORY[0x277D837D0];
  sub_25121193C();

  v9 = *(v0 + 112);
  v10 = *(v0 + 120);
  sub_25121197C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4226F8, &unk_251217E40);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_251217D90;
  *(v11 + 56) = v8;
  *(v11 + 64) = sub_2511C3C9C();
  v12 = MEMORY[0x277D84CC0];
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  v13 = MEMORY[0x277D84D30];
  *(v11 + 96) = v12;
  *(v11 + 104) = v13;
  *(v11 + 72) = v21;

  sub_2512113DC();

  (*(v3 + 16))(v22, v24, v23);
  sub_251210EFC();
  sub_251210E6C();
  sub_251210F0C();
  v14 = *MEMORY[0x277D426C0];
  v15 = sub_251210F1C();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v4, v14, v15);
  (*(v16 + 56))(v4, 0, 1, v15);
  sub_251210E7C();
  sub_251210E5C();
  (*(v26 + 16))(v27, v25, v28);
  *(v0 + 320) = sub_251210ECC();
  v17 = *(MEMORY[0x277D426B0] + 4);
  v18 = swift_task_alloc();
  *(v0 + 328) = v18;
  *v18 = v0;
  v18[1] = sub_2511C319C;
  v19 = *(v0 + 224);

  return MEMORY[0x2821A3420](v19);
}

uint64_t sub_2511C319C()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_2511C3498;
  }

  else
  {
    v3 = sub_2511C32B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2511C32B0()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[34];
  v4 = v0[35];
  v5 = v0[33];
  v6 = v0[30];
  v7 = v0[31];
  v8 = v0[27];
  v25 = v0[37];
  v26 = v0[28];
  v9 = v0[25];
  v27 = v0[26];
  v10 = v0[24];

  (*(v7 + 8))(v5, v6);
  (*(v4 + 8))(v25, v3);
  v11 = *(v9 + 32);
  v11(v8, v26, v10);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  v11(v13 + v12, v8, v10);
  v0[12] = sub_2511C3CF0;
  v0[13] = v13;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_2511C1E98;
  v0[11] = &block_descriptor_31;
  v14 = _Block_copy(v0 + 8);
  v15 = v0[13];

  v17 = v0[36];
  v16 = v0[37];
  v19 = v0[32];
  v18 = v0[33];
  v21 = v0[28];
  v20 = v0[29];
  v22 = v0[27];

  v23 = v0[1];

  return v23(v14);
}

uint64_t sub_2511C3498()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[37];
  v4 = v0[34];
  v5 = v0[35];
  v6 = v0[33];
  v7 = v0[30];
  v8 = v0[31];

  (*(v8 + 8))(v6, v7);
  (*(v5 + 8))(v3, v4);
  v9 = v0[42];
  v10 = v0[38];
  v11 = sub_251211ACC();
  sub_25121197C();
  sub_2512113CC();

  v0[6] = sub_2511C1EE8;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2511C1E98;
  v0[5] = &block_descriptor;
  v12 = _Block_copy(v0 + 2);
  v14 = v0[36];
  v13 = v0[37];
  v16 = v0[32];
  v15 = v0[33];
  v18 = v0[28];
  v17 = v0[29];
  v19 = v0[27];

  v20 = v0[1];

  return v20(v12);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2511C36B8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2511C2558;

  return sub_2511C207C(v2, v3, v5);
}

uint64_t sub_2511C377C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2511C3D54;

  return sub_2511C2388(v2, v3, v5);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2511C387C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2511C3D54;

  return sub_2511C2470(a1, v4, v5, v7);
}

uint64_t sub_2511C3948(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4226D0, &qword_251217DE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2511C39B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4226D0, &qword_251217DE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2511C3A20(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2511C3D54;

  return sub_2511C2908(a1, v5);
}

uint64_t sub_2511C3AD8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2511C2558;

  return sub_2511C2908(a1, v5);
}

unint64_t sub_2511C3B90()
{
  result = qword_27F4226E0;
  if (!qword_27F4226E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4226E0);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2511C3BF4()
{
  result = qword_27F4226E8;
  if (!qword_27F4226E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4226E8);
  }

  return result;
}

unint64_t sub_2511C3C48()
{
  result = qword_27F4226F0;
  if (!qword_27F4226F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4226F0);
  }

  return result;
}

unint64_t sub_2511C3C9C()
{
  result = qword_27F422700;
  if (!qword_27F422700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F422700);
  }

  return result;
}

uint64_t sub_2511C3CF0()
{
  v0 = *(*(sub_251210EBC() - 8) + 80);

  return sub_2511C1DA4();
}

uint64_t sub_2511C3D5C()
{
  v0 = sub_25121144C();
  __swift_allocate_value_buffer(v0, qword_27F425638);
  __swift_project_value_buffer(v0, qword_27F425638);
  sub_2512113FC();
  return sub_25121143C();
}

uint64_t sub_2511C3DC8()
{
  if (qword_27F423110 != -1)
  {
    swift_once();
  }

  v0 = sub_25121144C();

  return __swift_project_value_buffer(v0, qword_27F425638);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2511C3E64@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F423110 != -1)
  {
    swift_once();
  }

  v2 = sub_25121144C();
  v3 = __swift_project_value_buffer(v2, qword_27F425638);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_2511C3F58()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_headphoneDevice;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2511C4020(void *a1)
{
  v3 = OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_headphoneDevice;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_2511C4088();
}

void sub_2511C4088()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422788, &qword_251217F40);
  v85 = *(v1 - 8);
  v86 = v1;
  v2 = (*(v85 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v84 = v66 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422790, &qword_251217F48);
  v88 = *(v4 - 8);
  v89 = v4;
  v5 = (*(v88 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v87 = v66 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422798, &qword_251217F50);
  v91 = *(v7 - 8);
  v8 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v90 = v66 - v9;
  v82 = sub_2512119FC();
  v81 = *(v82 - 8);
  v10 = *(v81 + 64);
  (MEMORY[0x28223BE20])();
  v80 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422720, &qword_251217EB8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v83 = v66 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4227A0, &qword_251217F58);
  v71 = *(v14 - 8);
  v15 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v17 = v66 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422718, &qword_251217EB0);
  v70 = *(v18 - 8);
  v19 = *(v70 + 64);
  v20 = (MEMORY[0x28223BE20])();
  v22 = v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v66 - v23;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4227A8, &qword_251217F60);
  v72 = *(v73 - 8);
  v25 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v73);
  v27 = v66 - v26;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4227B0, &qword_251217F68);
  v75 = *(v76 - 8);
  v28 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v76);
  v74 = v66 - v29;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4227B8, &qword_251217F70);
  v78 = *(v79 - 8);
  v30 = (*(v78 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v79);
  v77 = v66 - v31;
  v32 = OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_headphoneDevice;
  swift_beginAccess();
  if (*(v0 + v32))
  {
    v33 = *(v0 + v32);
    v69 = v7;
    v34 = (v0 + OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_listeners);
    swift_beginAccess();
    v68 = v34;
    v35 = *v34;
    if ((v35 & 0xC000000000000001) != 0)
    {
      v36 = v33;

      v37 = sub_251211B8C();

      if (v37)
      {
LABEL_4:

        return;
      }
    }

    else
    {
      v38 = *(v35 + 16);
      v39 = v33;
      if (v38)
      {
        goto LABEL_4;
      }
    }

    v66[2] = v0;
    sub_251210FDC();
    v40 = sub_2511D0070(v18);
    v41 = *(v70 + 8);
    v41(v24, v18);
    v92 = v40;
    v67 = v33;
    sub_251210F9C();
    v42 = sub_2511D0070(v14);
    (*(v71 + 8))(v17, v14);
    v94 = v42;
    sub_251210FBC();
    v43 = sub_2511D0070(v18);
    v41(v22, v18);
    v93 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422750, qword_251217ED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4227C0, &qword_251217F78);
    v44 = MEMORY[0x277CBCD90];
    sub_2511C6790(&qword_27F422758, &qword_27F422750, qword_251217ED0);
    v71 = v44;
    sub_2511C6790(&qword_27F4227C8, &qword_27F4227C0, &qword_251217F78);
    sub_25121153C();
    sub_2511C6790(&qword_27F4227D0, &qword_27F4227A8, &qword_251217F60);
    v45 = v73;
    v46 = sub_25121160C();
    (*(v72 + 8))(v27, v45);
    v92 = v46;
    v66[0] = sub_2511C5FD0();
    v47 = sub_251211A0C();
    v94 = v47;
    v48 = sub_2512119DC();
    v49 = *(v48 - 8);
    v50 = *(v49 + 56);
    v73 = v49 + 56;
    v51 = v83;
    v70 = v48;
    v50(v83, 1, 1, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4227D8, &qword_251217F80);
    sub_2511C6790(&qword_27F4227E0, &qword_27F4227D8, &qword_251217F80);
    v66[1] = sub_2511C601C();
    v52 = v74;
    sub_25121163C();
    sub_2511C6074(v51);

    v53 = v80;
    sub_2512119EC();
    v54 = sub_251211A0C();
    v92 = v54;
    v50(v51, 1, 1, v48);
    v72 = MEMORY[0x277CBCD60];
    sub_2511C6790(&qword_27F4227E8, &qword_27F4227B0, &qword_251217F68);
    v55 = v77;
    v56 = v76;
    sub_25121164C();
    sub_2511C6074(v51);

    (*(v81 + 8))(v53, v82);
    (*(v75 + 8))(v52, v56);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2511C6790(&qword_27F4227F0, &qword_27F4227B8, &qword_251217F70);
    v57 = v79;
    sub_25121167C();

    (*(v78 + 8))(v55, v57);
    swift_beginAccess();
    sub_25121155C();
    swift_endAccess();

    sub_251210F4C();
    v58 = v84;
    sub_25121123C();

    v59 = v86;
    v60 = sub_251210F3C();
    (*(v85 + 8))(v58, v59);
    v92 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4227F8, &qword_251217F88);
    sub_2511C6790(&qword_27F422800, &qword_27F4227F8, &qword_251217F88);
    v61 = v87;
    sub_25121165C();

    v62 = sub_251211A0C();
    v92 = v62;
    v50(v51, 1, 1, v70);
    sub_2511C6790(&qword_27F422808, &qword_27F422790, &qword_251217F48);
    v64 = v89;
    v63 = v90;
    sub_25121163C();
    sub_2511C6074(v51);

    (*(v88 + 8))(v61, v64);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2511C6790(&qword_27F422810, &qword_27F422798, &qword_251217F50);
    v65 = v69;
    sub_25121167C();

    (*(v91 + 8))(v63, v65);
    swift_beginAccess();
    sub_25121155C();
    swift_endAccess();
  }
}

void (*sub_2511C4DE0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2511C4E44;
}

void sub_2511C4E44(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_2511C4088();
  }
}

uint64_t sub_2511C4F34()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2512115EC();

  return v1;
}

uint64_t sub_2511C5018()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_2512115FC();
}

uint64_t sub_2511C5084@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB0))();
  *a2 = result & 1;
  return result;
}

void (*sub_2511C513C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2512115DC();
  return sub_2511C51E0;
}

void sub_2511C51E0(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_2511C5250()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422710, &qword_251217EA8);
  sub_2512115BC();
  return swift_endAccess();
}

uint64_t sub_2511C52C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422718, &qword_251217EB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422710, &qword_251217EA8);
  sub_2512115CC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_2511C53FC(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422718, &qword_251217EB0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver__reloadTriggered;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422710, &qword_251217EA8);
  sub_2512115BC();
  swift_endAccess();
  return sub_2511C556C;
}

void sub_2511C556C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_2512115CC();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_2512115CC();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t sub_2511C56D4()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_reloadListener;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2511C571C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_reloadListener;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_2511C583C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a5;
  v57 = a3;
  v58 = a4;
  v56 = a2;
  v60 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422720, &qword_251217EB8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v64 = &v55 - v8;
  v9 = sub_2512119FC();
  v67 = *(v9 - 8);
  v68 = v9;
  v10 = *(v67 + 64);
  MEMORY[0x28223BE20](v9);
  v61 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422718, &qword_251217EB0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v55 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422728, &qword_251217EC0);
  v18 = *(v17 - 8);
  v62 = v17;
  v63 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v55 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422730, &qword_251217EC8);
  v23 = *(v22 - 8);
  v65 = v22;
  v66 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v59 = &v55 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422710, &qword_251217EA8);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v55 - v29;
  v31 = OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_headphoneDevice;
  *&v5[OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_headphoneDevice] = 0;
  *&v5[OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_listeners] = MEMORY[0x277D84FA0];
  v32 = OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver__reloadTriggered;
  v72 = 1;
  sub_2512115AC();
  (*(v27 + 32))(&v5[v32], v30, v26);
  *&v5[OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_reloadListener] = 0;
  swift_beginAccess();
  v33 = *&v5[v31];
  v34 = v60;
  *&v5[v31] = v60;
  v60 = v34;

  v35 = &v5[OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_action];
  v36 = v57;
  *v35 = v56;
  *(v35 + 1) = v36;
  v37 = &v5[OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_reloadAllAction];
  v38 = v69;
  *v37 = v58;
  *(v37 + 1) = v38;
  v39 = type metadata accessor for BTSHeadphoneDevicePropertyObserver();
  v71.receiver = v5;
  v71.super_class = v39;

  v40 = objc_msgSendSuper2(&v71, sel_init);
  v41 = *((*MEMORY[0x277D85000] & *v40) + 0xC8);
  v42 = v40;
  v41();
  v43 = sub_2511D0070(v12);
  (*(v13 + 8))(v16, v12);
  v70 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422750, qword_251217ED0);
  sub_2511C6790(&qword_27F422758, &qword_27F422750, qword_251217ED0);
  sub_25121165C();

  v44 = v61;
  sub_2512119EC();
  sub_2511C5FD0();
  v45 = sub_251211A0C();
  v70 = v45;
  v46 = sub_2512119DC();
  v47 = v64;
  (*(*(v46 - 8) + 56))(v64, 1, 1, v46);
  sub_2511C6790(&qword_27F422768, &qword_27F422728, &qword_251217EC0);
  sub_2511C601C();
  v48 = v59;
  v49 = v62;
  sub_25121164C();
  sub_2511C6074(v47);

  (*(v67 + 8))(v44, v68);
  (*(v63 + 8))(v21, v49);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_2511C6790(&qword_27F422778, &qword_27F422730, &qword_251217EC8);
  v50 = v65;
  v51 = sub_25121167C();

  (*(v66 + 8))(v48, v50);
  v52 = OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_reloadListener;
  swift_beginAccess();
  v53 = *(v42 + v52);
  *(v42 + v52) = v51;

  return v42;
}

uint64_t type metadata accessor for BTSHeadphoneDevicePropertyObserver()
{
  result = qword_27F423130;
  if (!qword_27F423130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2511C5FD0()
{
  result = qword_27F422760;
  if (!qword_27F422760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F422760);
  }

  return result;
}

unint64_t sub_2511C601C()
{
  result = qword_27F422770;
  if (!qword_27F422770)
  {
    sub_2511C5FD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F422770);
  }

  return result;
}

uint64_t sub_2511C6074(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422720, &qword_251217EB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2511C6270()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_listeners;
  swift_beginAccess();
  v2 = *&v0[v1];
  *&v0[v1] = MEMORY[0x277D84FA0];

  v4.receiver = v0;
  v4.super_class = type metadata accessor for BTSHeadphoneDevicePropertyObserver();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_2511C6438()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_2511C64D4()
{
  sub_2511C688C(319, &qword_27F422780, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2511C65CC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result + *a2;
    v5 = *v4;
    v6 = *(v4 + 8);
    v7 = result;

    v5();
  }

  return result;
}

void sub_2511C6648()
{
  if (qword_27F423110 != -1)
  {
    swift_once();
  }

  v0 = sub_25121144C();
  __swift_project_value_buffer(v0, qword_27F425638);
  v1 = sub_25121142C();
  v2 = sub_25121197C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_251143000, v1, v2, "btsPropertyObserver: $bobbleCapability changed trigger reload", v3, 2u);
    MEMORY[0x25306E960](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x100))();
  }
}

uint64_t sub_2511C6790(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_2511C688C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

id sub_2511C68F4()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs29NumberedBulletListContentView____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs29NumberedBulletListContentView____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs29NumberedBulletListContentView____lazy_storage___stackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setAxis_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setSpacing_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2511C69A4()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs29NumberedBulletListContentView____lazy_storage___titleView;
  v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs29NumberedBulletListContentView____lazy_storage___titleView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs29NumberedBulletListContentView____lazy_storage___titleView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
    v5 = [objc_opt_self() _preferredFontForTextStyle_weight_];
    [v4 setFont_];

    v6 = [objc_opt_self() labelColor];
    [v4 setTextColor_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs29NumberedBulletListContentView_listTitle);
    v8 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs29NumberedBulletListContentView_listTitle + 8);
    v9 = sub_25121176C();
    [v4 setText_];

    [v4 setNumberOfLines_];
    v10 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

char *sub_2511C6B58(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC16HeadphoneConfigs29NumberedBulletListContentView____lazy_storage___stackView] = 0;
  *&v2[OBJC_IVAR____TtC16HeadphoneConfigs29NumberedBulletListContentView____lazy_storage___titleView] = 0;
  v3 = &v2[OBJC_IVAR____TtC16HeadphoneConfigs29NumberedBulletListContentView_listTitle];
  *v3 = a1;
  *(v3 + 1) = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for NumberedBulletListContentView();
  v4 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = sub_2511C68F4();
  [v4 addSubview_];

  v6 = OBJC_IVAR____TtC16HeadphoneConfigs29NumberedBulletListContentView____lazy_storage___stackView;
  [*&v4[OBJC_IVAR____TtC16HeadphoneConfigs29NumberedBulletListContentView____lazy_storage___stackView] pinToOther_];
  v7 = *&v4[v6];
  v8 = sub_2511C69A4();
  [v7 addArrangedSubview_];

  return v4;
}

void sub_2511C6C74()
{
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs29NumberedBulletListContentView____lazy_storage___stackView) = 0;
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs29NumberedBulletListContentView____lazy_storage___titleView) = 0;
  sub_251211C4C();
  __break(1u);
}

void sub_2511C6D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v15 setNumberOfLines_];
  v16 = (*((*MEMORY[0x277D85000] & *v7) + 0xA8))(a1, a2, a3, a4, a5, a6, a7);
  [v15 setAttributedText_];

  v17 = sub_2511C68F4();
  [v17 addArrangedSubview_];
}

void sub_2511C6EA8(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422F70, &qword_251218000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251217D90;
  v11 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v12 = sub_2511C8A48(0, &qword_27F422840, 0x277D74300);
  *(inited + 40) = a6;
  v13 = *MEMORY[0x277D740C0];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  *(inited + 104) = sub_2511C8A48(0, &qword_27F422848, 0x277D75348);
  *(inited + 80) = a7;
  v14 = v11;
  v15 = a6;
  v16 = v13;
  v17 = a7;
  sub_2511C87F8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422850, &qword_251218008);
  swift_arrayDestroy();
  v18 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EE0, qword_251218010);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_251217FD0;
  v20 = objc_allocWithZone(MEMORY[0x277D742E0]);
  type metadata accessor for OptionKey(0);
  sub_2511C89DC(&qword_27F422858, type metadata accessor for OptionKey);
  v21 = sub_25121171C();
  v22 = [v20 initWithTextAlignment:4 location:v21 options:a3];

  *(v19 + 32) = v22;
  sub_2511C8A48(0, &qword_27F422860, 0x277D742E0);
  v23 = sub_25121186C();

  [v18 setTabStops_];

  [v18 setDefaultTabInterval_];
  [v18 setHeadIndent_];

  MEMORY[0x25306D820](9, 0xE100000000000000);
  MEMORY[0x25306D820](a1, a2);
  MEMORY[0x25306D820](10, 0xE100000000000000);
  v24 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v25 = sub_25121176C();
  v26 = [v24 initWithString_];

  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_251217FE0;
  v28 = *MEMORY[0x277D74118];
  *(v27 + 32) = *MEMORY[0x277D74118];
  *(v27 + 64) = sub_2511C8A48(0, &qword_27F422868, 0x277D74240);
  *(v27 + 40) = v18;
  v29 = v28;
  v53 = v18;
  sub_2511C87F8(v27);
  swift_setDeallocating();
  sub_2511C8914(v27 + 32);
  type metadata accessor for Key(0);
  sub_2511C89DC(&qword_27F422F90, type metadata accessor for Key);
  v30 = sub_25121171C();

  v31 = v26;
  [v31 addAttributes:v30 range:{0, objc_msgSend(v31, sel_length)}];

  v32 = sub_25121171C();
  [v31 addAttributes:v32 range:{0, objc_msgSend(v31, sel_length)}];

  v33 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v34 = sub_25121176C();

  v35 = [v33 initWithString_];

  v36 = sub_25121176C();
  v37 = [v35 rangeOfString_];
  v39 = v38;

  v40 = sub_25121171C();

  [v31 &off_2796AE980 + 5];

  v41 = [v31 string];
  v42 = sub_25121179C();
  v44 = v43;

  v45 = sub_2511C74C4(v42, v44);
  v47 = v46;

  if (!v47)
  {
    goto LABEL_9;
  }

  if (v45 == 10 && v47 == 0xE100000000000000)
  {

    goto LABEL_7;
  }

  v48 = sub_251211CCC();

  if ((v48 & 1) == 0)
  {
LABEL_9:

    v50 = v31;
    goto LABEL_10;
  }

LABEL_7:
  v49 = [v31 length];

  if (!__OFSUB__(v49, 1))
  {
    [v31 deleteCharactersInRange_];
    v50 = v53;
LABEL_10:

    return;
  }

  __break(1u);
}

uint64_t sub_2511C74C4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_25121180C();
  return sub_25121184C();
}

id sub_2511C761C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

char *sub_2511C7668()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___numberedBulletedList;
  v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___numberedBulletedList);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___numberedBulletedList);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList_listTitle);
    v5 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList_listTitle + 8);
    objc_allocWithZone(type metadata accessor for NumberedBulletListContentView());

    v6 = v5;
    v7 = v0;
    v8 = sub_2511C6B58(v4, v6);
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    v9 = *(v0 + v1);
    *(v7 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_2511C7718()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___iconView;
  v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___iconView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___iconView);
  }

  else
  {
    v4 = [objc_opt_self() configurationWithPointSize:4 weight:39.0];
    v5 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList_symbol);
    v6 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList_symbol + 8);
    v7 = v4;
    v8 = sub_25121176C();
    v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

    v10 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
    v11 = [objc_opt_self() systemGray2Color];
    [v10 setTintColor_];

    v12 = v10;
    [v12 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v13) = 1148846080;
    [v12 setContentHuggingPriority:1 forAxis:v13];
    LODWORD(v14) = 1148846080;
    [v12 setContentHuggingPriority:0 forAxis:v14];
    LODWORD(v15) = 1148846080;
    [v12 setContentCompressionResistancePriority:0 forAxis:v15];
    LODWORD(v16) = 1148846080;
    [v12 setContentCompressionResistancePriority:1 forAxis:v16];

    v17 = *(v0 + v1);
    *(v0 + v1) = v12;
    v3 = v12;

    v2 = 0;
  }

  v18 = v2;
  return v3;
}

char *sub_2511C794C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList_containerView;
  v10 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v9] = v10;
  *&v4[OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___numberedBulletedList] = 0;
  *&v4[OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___iconView] = 0;
  v11 = &v4[OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList_listTitle];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = &v4[OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList_symbol];
  *v12 = a3;
  *(v12 + 1) = a4;
  v45.receiver = v4;
  v45.super_class = type metadata accessor for IconWithNumberedBulletList();
  v13 = objc_msgSendSuper2(&v45, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList_containerView;
  v15 = *&v13[OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList_containerView];
  v16 = v13;
  v17 = v15;
  v18 = sub_2511C7718();
  [v17 addSubview_];

  v19 = *&v13[v14];
  v20 = sub_2511C7668();
  [v19 &selRef:v20 colorWithAlphaComponent:?];

  v44 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EE0, qword_251218010);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_251217FF0;
  v22 = OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___iconView;
  v23 = [*&v16[OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___iconView] leadingAnchor];
  v24 = [*&v13[v14] &selRef_needsResetUI_ + 1];
  v25 = [v23 constraintEqualToAnchor:v24 constant:15.0];

  *(v21 + 32) = v25;
  v26 = [*&v16[v22] topAnchor];
  v27 = [*&v13[v14] topAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v21 + 40) = v28;
  v29 = OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___numberedBulletedList;
  v30 = [*&v16[OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___numberedBulletedList] leadingAnchor];
  v31 = [*&v16[v22] trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:24.0];

  *(v21 + 48) = v32;
  v33 = [*&v16[v29] topAnchor];
  v34 = [*&v13[v14] topAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v21 + 56) = v35;
  v36 = [*&v16[v29] trailingAnchor];
  v37 = [*&v13[v14] trailingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:10.0];

  *(v21 + 64) = v38;
  v39 = [*&v16[v29] bottomAnchor];
  v40 = [*&v13[v14] bottomAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(v21 + 72) = v41;
  sub_2511C8A48(0, &qword_27F422898, 0x277CCAAD0);
  v42 = sub_25121186C();

  [v44 activateConstraints_];

  [v16 addSubview_];
  [*&v13[v14] pinToOther_];

  return v16;
}

id sub_2511C7DB8(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_2511C7DFC()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList_containerView;
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___numberedBulletedList) = 0;
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___iconView) = 0;
  sub_251211C4C();
  __break(1u);
}

void sub_2511C7F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v14 = sub_2511C7668();
  (*((*MEMORY[0x277D85000] & *v14) + 0xA0))(a1, a2, a3, a4, a5, a6, a7);
}

id sub_2511C8040(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_2511C811C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2511C81D8()
{
  v1 = *v0;
  v2 = sub_25121179C();
  v3 = MEMORY[0x25306D840](v2);

  return v3;
}

uint64_t sub_2511C8214()
{
  v1 = *v0;
  sub_25121179C();
  sub_2512117FC();
}

uint64_t sub_2511C8268()
{
  v1 = *v0;
  sub_25121179C();
  sub_251211D1C();
  sub_2512117FC();
  v2 = sub_251211D3C();

  return v2;
}

uint64_t sub_2511C82DC(uint64_t a1, id *a2)
{
  result = sub_25121177C();
  *a2 = 0;
  return result;
}

uint64_t sub_2511C8354(uint64_t a1, id *a2)
{
  v3 = sub_25121178C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2511C83D4@<X0>(uint64_t *a1@<X8>)
{
  sub_25121179C();
  v2 = sub_25121176C();

  *a1 = v2;
  return result;
}

uint64_t sub_2511C8418(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_25121179C();
  v6 = v5;
  if (v4 == sub_25121179C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_251211CCC();
  }

  return v9 & 1;
}

uint64_t sub_2511C84A0(uint64_t a1)
{
  v2 = sub_2511C89DC(&qword_27F422F90, type metadata accessor for Key);
  v3 = sub_2511C89DC(&qword_27F4228D8, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2511C855C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25121176C();

  *a2 = v5;
  return result;
}

uint64_t sub_2511C85A4(uint64_t a1)
{
  v2 = sub_2511C89DC(&qword_27F422858, type metadata accessor for OptionKey);
  v3 = sub_2511C89DC(&qword_27F4228D0, type metadata accessor for OptionKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_2511C8660(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_25121179C();
  sub_251211D1C();
  sub_2512117FC();
  v4 = sub_251211D3C();

  return sub_2511C86F4(a1, v4);
}

unint64_t sub_2511C86F4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_25121179C();
      v9 = v8;
      if (v7 == sub_25121179C() && v9 == v10)
      {
        break;
      }

      v12 = sub_251211CCC();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2511C87F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4228E0, &qword_2512183A8);
    v3 = sub_251211C8C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2511C8C40(v4, &v11);
      v5 = v11;
      result = sub_2511C8660(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2511C8CB0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2511C8914(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422850, &qword_251218008);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2511C8990(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_2511C89DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2511C8A48(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2511C8C40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422850, &qword_251218008);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_2511C8CB0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2511C8CF0()
{
  v0 = sub_25121144C();
  __swift_allocate_value_buffer(v0, qword_27F425658);
  __swift_project_value_buffer(v0, qword_27F425658);
  return sub_25121143C();
}

uint64_t sub_2511C8D68()
{
  if (qword_27F423740 != -1)
  {
    swift_once();
  }

  v0 = sub_25121144C();

  return __swift_project_value_buffer(v0, qword_27F425658);
}

uint64_t sub_2511C8DCC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F423740 != -1)
  {
    swift_once();
  }

  v2 = sub_25121144C();
  v3 = __swift_project_value_buffer(v2, qword_27F425658);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2511C8E74()
{
  type metadata accessor for HPSAdaptiveVolumeSliderCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_251210D1C();

  return v2;
}

uint64_t AAAutoANCStrength.description.getter(int a1)
{
  if (a1 > 1049)
  {
    if (a1 == 1100)
    {
      return 1751607624;
    }

    if (a1 == 1050)
    {
      return 0x6D756964656DLL;
    }
  }

  else
  {
    if (!a1)
    {
      return 1061109567;
    }

    if (a1 == 1000)
    {
      return 7827308;
    }
  }

  type metadata accessor for AAAutoANCStrength();
  result = sub_251211CDC();
  __break(1u);
  return result;
}

void type metadata accessor for AAAutoANCStrength()
{
  if (!qword_280B19800)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280B19800);
    }
  }
}

uint64_t sub_2511C9044(int a1)
{
  v1 = 0;
  if (a1 <= 1049)
  {
    if (a1)
    {
      if (a1 == 1000)
      {
        return 2;
      }

      goto LABEL_9;
    }

    return v1;
  }

  if (a1 == 1100)
  {
    return v1;
  }

  if (a1 == 1050)
  {
    return 1;
  }

LABEL_9:
  type metadata accessor for AAAutoANCStrength();
  result = sub_251211CDC();
  __break(1u);
  return result;
}

uint64_t sub_2511C90C0()
{
  v1 = 0;
  v2 = *v0;
  if (*v0 > 1049)
  {
    if (v2 == 1100)
    {
      return v1;
    }

    if (v2 == 1050)
    {
      return 1;
    }
  }

  else
  {
    if (!v2)
    {
      return v1;
    }

    if (v2 == 1000)
    {
      return 2;
    }
  }

  v4 = *v0;
  result = sub_251211CDC();
  __break(1u);
  return result;
}

id sub_2511C9134()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell____lazy_storage___slider);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell____lazy_storage___slider);
  }

  else
  {
    v3 = v0;
    v27 = OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell____lazy_storage___slider;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4229C8, &qword_251218500);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4229D0, &qword_251219310);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2512183C0;
    type metadata accessor for HPSAdaptiveVolumeSliderCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = objc_opt_self();
    v7 = [v6 bundleForClass_];
    v8 = sub_251210D1C();
    v10 = v9;

    *(v4 + 32) = v8;
    *(v4 + 40) = v10;
    v11 = [v6 bundleForClass_];
    v12 = sub_251210D1C();
    v14 = v13;

    *(v4 + 48) = v12;
    *(v4 + 56) = v14;
    v15 = [v6 bundleForClass_];
    v16 = sub_251210D1C();
    v18 = v17;

    *(v4 + 64) = v16;
    *(v4 + 72) = v18;
    v19 = sub_2511EEC0C(v4, &unk_286338320);
    [v19 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_2511C6790(&qword_27F4229D8, &qword_27F4229C8, &qword_251218500);
    v28[0] = sub_25121157C();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;
    sub_25121159C();
    sub_25121167C();

    v23 = (*((*MEMORY[0x277D85000] & *v3) + 0x90))(v28);
    sub_25121155C();

    v23(v28, 0);
    v24 = *(v3 + v27);
    *(v3 + v27) = v19;
    v2 = v19;

    v1 = 0;
  }

  v25 = v1;
  return v2;
}

uint64_t sub_2511C9504(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell____lazy_storage___slider);
  *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell____lazy_storage___slider) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*sub_2511C9518(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_2511C9134();
  return sub_2511C9560;
}

void sub_2511C9560(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell____lazy_storage___slider);
  *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell____lazy_storage___slider) = v2;
}

void sub_2511C95F0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4228F8, &qword_2512183E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v82 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422900, &qword_2512183E8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v82 - v9;
  v11 = sub_251211ABC();
  v90 = *(v11 - 8);
  v91 = v11;
  v12 = *(v90 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422908, &qword_2512183F0);
  v89 = *(v15 - 8);
  v16 = *(v89 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v82 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422910, &qword_2512183F8);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v82 - v22;
  if (!a1)
  {
    __break(1u);
    return;
  }

  if ([a1 userInfo])
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v93 = 0u;
    v94 = 0u;
  }

  v95 = v93;
  v96 = v94;
  if (!*(&v94 + 1))
  {
    goto LABEL_15;
  }

  v88 = v20;
  sub_2511C8A48(0, &qword_27F422918, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v86 = v19;
  v24 = v92;
  v25 = sub_25121176C();
  v87 = v24;
  v26 = [v24 objectForKey_];

  if (v26)
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v93 = 0u;
    v94 = 0u;
  }

  v95 = v93;
  v96 = v94;
  if (!*(&v94 + 1))
  {

LABEL_15:
    sub_2511CCD34(&v95, &unk_27F422EB0, &unk_251218400);
    goto LABEL_16;
  }

  sub_25121102C();
  if (swift_dynamicCast())
  {
    v27 = v92;
    v84 = OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell_headphoneDevice;
    v28 = *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell_headphoneDevice);
    *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell_headphoneDevice) = v92;
    v29 = v27;

    v30 = v1;
    sub_251210F4C();
    v85 = v29;

    sub_25121120C();

    sub_251211AAC();
    v31 = v90;
    (*(v90 + 56))(v10, 1, 1, v91);
    v83 = [objc_opt_self() mainRunLoop];
    *&v95 = v83;
    v32 = sub_251211A9C();
    (*(*(v32 - 8) + 56))(v6, 1, 1, v32);
    sub_2511C8A48(0, &qword_27F422928, 0x277CBEB88);
    sub_2511C6790(&qword_27F422930, &qword_27F422908, &qword_2512183F0);
    sub_2511CC440();
    sub_25121162C();
    sub_2511CCD34(v6, &qword_27F4228F8, &qword_2512183E0);

    sub_2511CCD34(v10, &qword_27F422900, &qword_2512183E8);
    (*(v31 + 8))(v14, v91);
    (*(v89 + 8))(v18, v15);
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    v35 = *(v30 + v84);
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    *(v36 + 16) = v33;
    *(v36 + 24) = v34;
    sub_2511C6790(&qword_27F422940, &qword_27F422910, &qword_2512183F8);
    v37 = v86;
    sub_25121167C();

    (*(v88 + 8))(v23, v37);
    v38 = MEMORY[0x277D85000];
    v39 = (*((*MEMORY[0x277D85000] & *v30) + 0x90))(&v95);
    sub_25121155C();

    v39(&v95, 0);
    v40 = [v30 contentView];
    v41 = [v40 subviews];

    sub_2511C8A48(0, &qword_27F422948, 0x277D75D18);
    v42 = sub_25121187C();

    v43 = *((*v38 & *v30) + 0x68);
    v44 = v43();
    *&v95 = v44;
    MEMORY[0x28223BE20](v44);
    *(&v82 - 2) = &v95;
    v45 = sub_2511CC5CC(sub_2511CC9DC, (&v82 - 4), v42);

    v47 = v30;
    v48 = (v43)(v46);
    v49 = v48;
    if (v45)
    {
      [v48 layoutIfNeeded];

      [v47 layoutIfNeeded];
    }

    else
    {
      sub_251210F4C();
      v55 = sub_2512111EC();

      LODWORD(v95) = v55;
      (*((*v38 & *v49) + 0xC8))(&v95);

      v56 = v47;
      v57 = [v47 contentView];
      v58 = v43();
      [v57 addSubview_];

      v59 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EE0, qword_251218010);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_2512183D0;
      v61 = v43();
      v62 = [v61 topAnchor];

      v63 = [v56 contentView];
      v64 = [v63 topAnchor];

      v65 = [v62 constraintEqualToAnchor:v64 constant:0.0];
      *(v60 + 32) = v65;
      v66 = v43();
      v67 = [v66 leadingAnchor];

      v68 = [v56 contentView];
      v69 = [v68 leadingAnchor];

      v70 = [v67 constraintEqualToAnchor:v69 constant:20.0];
      *(v60 + 40) = v70;
      v71 = v43();
      v72 = [v71 trailingAnchor];

      v73 = [v56 contentView];
      v74 = [v73 trailingAnchor];

      v75 = [v72 constraintEqualToAnchor:v74 constant:-20.0];
      *(v60 + 48) = v75;
      v76 = v43();
      v77 = [v76 bottomAnchor];

      v78 = [v56 contentView];
      v79 = [v78 bottomAnchor];

      v80 = [v77 constraintEqualToAnchor:v79 constant:0.0];
      *(v60 + 56) = v80;
      sub_2511C8A48(0, &qword_27F422898, 0x277CCAAD0);
      v81 = sub_25121186C();

      [v59 activateConstraints_];
    }

    return;
  }

LABEL_16:
  if (qword_27F423740 != -1)
  {
    swift_once();
  }

  v50 = sub_25121144C();
  __swift_project_value_buffer(v50, qword_27F425658);
  v51 = sub_25121142C();
  v52 = sub_25121196C();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *&v95 = v54;
    *v53 = 136315138;
    *(v53 + 4) = sub_2511CBE4C(0xD00000000000001ALL, 0x8000000251220BA0, &v95);
    _os_log_impl(&dword_251143000, v51, v52, "%s HPSAdaptiveVolumeSliderCell Depedencies not meet, bailing out of HPSAdaptiveVolumeSliderCell refresh", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x25306E960](v54, -1, -1);
    MEMORY[0x25306E960](v53, -1, -1);
  }
}

id sub_2511CA304(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    v8 = sub_25121176C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v5) initWithStyle:a1 reuseIdentifier:v8 specifier:a4];

  return v9;
}

id sub_2511CA394(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell____lazy_storage___slider] = 0;
  *&v4[OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell_listeners] = MEMORY[0x277D84FA0];
  *&v4[OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell_headphoneDevice] = 0;
  if (a3)
  {
    v7 = sub_25121176C();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for HPSAdaptiveVolumeSliderCell();
  v8 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_specifier_, a1, v7, a4);

  if (v8)
  {
  }

  return v8;
}

id sub_2511CA4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_25121176C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id sub_2511CA554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell____lazy_storage___slider] = 0;
  *&v3[OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell_listeners] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell_headphoneDevice] = 0;
  if (a3)
  {
    v5 = sub_25121176C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for HPSAdaptiveVolumeSliderCell();
  v6 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, a1, v5);

  return v6;
}

id sub_2511CA6CC(void *a1)
{
  *&v1[OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell____lazy_storage___slider] = 0;
  *&v1[OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell_listeners] = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell_headphoneDevice] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HPSAdaptiveVolumeSliderCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_2511CA808(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_2511CA858(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

id sub_2511CA90C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_25121176C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_2511CA984(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController_headphoneDevice] = 0;
  *&v3[OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController_listeners] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController____lazy_storage___sliderSection] = 0;
  if (a2)
  {
    v5 = sub_25121176C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for HPSAdaptiveVolumeDetailController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

void sub_2511CAA90()
{
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController_headphoneDevice) = 0;
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController_listeners) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController____lazy_storage___sliderSection) = 0;
  sub_251211C4C();
  __break(1u);
}

uint64_t sub_2511CABA0()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController____lazy_storage___sliderSection;
  if (*&v0[OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController____lazy_storage___sliderSection])
  {
    v2 = *&v0[OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController____lazy_storage___sliderSection];
  }

  else
  {
    v3 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422998, &qword_2512184D0);
    type metadata accessor for HPSAdaptiveVolumeSliderCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = sub_251210D1C();
    v8 = v7;

    v9 = sub_2511D4478();
    v11 = sub_2511D4484(v9, v10, v6, v8);
    v12 = (*(*v11 + 144))(sub_2511CAE50, 0);

    v22 = type metadata accessor for HPSAdaptiveVolumeDetailController();
    *&v21 = v3;
    v13 = v3;
    v14 = sub_2511D3E4C();
    v15 = sub_2511D4428(0, 0, 0, 0, &v21, 0, 0, -1, v23, 0, v14 & 1, 0, 0, 0, 0);
    v16 = (*(*v12 + 160))(v23, v15);

    sub_2511CCA6C(v23);
    v24 = v13;
    v17 = (*(*v16 + 168))(sub_2511CCAC0, v23);

    v2 = (*(*v17 + 176))(v18);

    v19 = *&v3[v1];
    *&v3[v1] = v2;
  }

  return v2;
}

void sub_2511CAE50(void *a1)
{
  type metadata accessor for HPSAdaptiveVolumeSliderCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_251210D1C();

  v4 = sub_25121176C();

  [a1 setProperty:v4 forKey:{*MEMORY[0x277D3FF88], 0xE000000000000000}];
}

uint64_t sub_2511CAF5C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController____lazy_storage___sliderSection);
  *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController____lazy_storage___sliderSection) = a1;
}

uint64_t (*sub_2511CAF74(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_2511CABA0();
  return sub_2511CAFBC;
}

uint64_t sub_2511CAFBC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController____lazy_storage___sliderSection);
  *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController____lazy_storage___sliderSection) = v2;
}

void sub_2511CAFD4()
{
  v1 = [v0 specifier];
  if (!v1)
  {
    __break(1u);
    return;
  }

  v2 = v1;
  v3 = [v1 userInfo];

  if (v3)
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (!*(&v28 + 1))
  {
LABEL_15:
    sub_2511CCD34(&v29, &unk_27F422EB0, &unk_251218400);
    goto LABEL_16;
  }

  sub_2511C8A48(0, &qword_27F422918, 0x277CBEAC0);
  if (swift_dynamicCast())
  {
    v4 = v26;
    v5 = sub_25121176C();
    v6 = [v26 objectForKey_];

    if (v6)
    {
      sub_251211B5C();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v29 = v27;
    v30 = v28;
    if (*(&v28 + 1))
    {
      sub_2511C8A48(0, &qword_27F422968, off_2796ACA80);
      if (swift_dynamicCast())
      {
        v7 = v26;
        v8 = [v26 headphoneDevice];
        if (v8)
        {
          v9 = *&v0[OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController_headphoneDevice];
          *&v0[OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController_headphoneDevice] = v8;
          v10 = v8;

          v25.receiver = v0;
          v25.super_class = type metadata accessor for HPSAdaptiveVolumeDetailController();
          objc_msgSendSuper2(&v25, sel_viewDidLoad);
          v11 = [v0 navigationItem];
          type metadata accessor for HPSAdaptiveVolumeSliderCell();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v13 = [objc_opt_self() bundleForClass_];
          sub_251210D1C();

          v14 = sub_25121176C();

          [v11 setTitle_];

          return;
        }
      }

      else
      {
      }

      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_16:
  if (qword_27F423740 != -1)
  {
    swift_once();
  }

  v15 = sub_25121144C();
  __swift_project_value_buffer(v15, qword_27F425658);
  v16 = sub_25121142C();
  v17 = sub_25121196C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v29 = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_2511CBE4C(0x4C64694477656976, 0xED0000292864616FLL, &v29);
    *(v18 + 12) = 2080;
    sub_25121108C();
    v20 = sub_25121107C();
    sub_25121106C();

    sub_25121102C();
    v21 = sub_25121174C();
    v23 = v22;

    v24 = sub_2511CBE4C(v21, v23, &v29);

    *(v18 + 14) = v24;
    _os_log_impl(&dword_251143000, v16, v17, "%s: HPSAdaptiveVolumeDetailController Depedencies not meet! %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25306E960](v19, -1, -1);
    MEMORY[0x25306E960](v18, -1, -1);
  }
}

char *sub_2511CB4CC()
{
  if (*(v0 + OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController_headphoneDevice))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422978, qword_251218410);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_251217FE0;
    *(inited + 32) = (*((*MEMORY[0x277D85000] & *v0) + 0x98))();
    v2 = sub_2511CB83C(inited);
    swift_setDeallocating();
    sub_2511CCD34(inited + 32, &qword_27F422980, &qword_251219A90);
    sub_2511C8A48(0, &qword_27F422970, 0x277D3FAD8);
    v3 = sub_25121186C();
    v4 = sub_25121176C();
    [v0 setValue:v3 forKey:v4];

    v5 = sub_2511CBB34(v2);
  }

  else
  {
    sub_2511C8A48(0, &qword_27F422970, 0x277D3FAD8);
    v6 = sub_25121186C();
    v7 = sub_25121176C();
    [v0 setValue:v6 forKey:v7];

    if (qword_27F423740 != -1)
    {
      swift_once();
    }

    v8 = sub_25121144C();
    __swift_project_value_buffer(v8, qword_27F425658);
    v9 = sub_25121142C();
    v10 = sub_25121196C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_2511CBE4C(0x6569666963657073, 0xEC00000029287372, &v19);
      *(v11 + 12) = 2080;
      sub_25121108C();
      v13 = sub_25121107C();
      sub_25121106C();

      sub_25121102C();
      v14 = sub_25121174C();
      v16 = v15;

      v17 = sub_2511CBE4C(v14, v16, &v19);

      *(v11 + 14) = v17;
      _os_log_impl(&dword_251143000, v9, v10, "%s: HPSAdaptiveVolumeDetailController Depedencies not meet! %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25306E960](v12, -1, -1);
      MEMORY[0x25306E960](v11, -1, -1);
    }

    return 0;
  }

  return v5;
}

uint64_t sub_2511CB83C(uint64_t a1)
{
  v30 = *(a1 + 16);
  if (!v30)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v29 = a1 + 32;
  v3 = &unk_27F422980;
  while (1)
  {
    v5 = *(v29 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v26 = *(v29 + 8 * v1);
      }

      v7 = sub_251211B8C();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v27 = sub_251211B8C();
      v10 = v27 + v7;
      if (__OFADD__(v27, v7))
      {
LABEL_36:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v34 = v7;
    if (result)
    {
      if (v8)
      {
        goto LABEL_16;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v8)
      {
LABEL_16:
        sub_251211B8C();
        goto LABEL_17;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *(v11 + 16);
LABEL_17:
    result = sub_251211BDC();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v14 >> 1) - v13) < v34)
    {
      goto LABEL_40;
    }

    v31 = v1;
    v32 = v2;
    v17 = v11 + 8 * v13 + 32;
    v28 = v11;
    if (v6)
    {
      if (v15 < 1)
      {
        goto LABEL_42;
      }

      sub_2511C6790(&qword_27F422990, v3, &qword_251219A90);
      for (i = 0; i != v15; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3, &qword_251219A90);
        v19 = v3;
        v20 = sub_2511CC954(v33, i, v5);
        v22 = *v21;
        (v20)(v33, 0);
        v3 = v19;
        *(v17 + 8 * i) = v22;
      }
    }

    else
    {
      sub_2511C8A48(0, &qword_27F422970, 0x277D3FAD8);
      swift_arrayInitWithCopy();
    }

    v1 = v31;
    v2 = v32;
    if (v34 >= 1)
    {
      v23 = *(v28 + 16);
      v24 = __OFADD__(v23, v34);
      v25 = v23 + v34;
      if (v24)
      {
        goto LABEL_41;
      }

      *(v28 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v30)
    {
      return v2;
    }
  }

  v16 = v11;
  result = sub_251211B8C();
  v11 = v16;
  v15 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v34 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

char *sub_2511CBB34(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_251211B8C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_2511CC824(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x25306DBD0](i, a1);
        sub_2511C8A48(0, &qword_27F422970, 0x277D3FAD8);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2511CC824((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_2511C8CB0(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_2511C8A48(0, &qword_27F422970, 0x277D3FAD8);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2511CC824((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_2511C8CB0(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_2511CBDB8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2511CBE4C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2511CBF18(v11, 0, 0, 1, a1, a2);
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
    sub_2511CCD94(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2511CBF18(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2511CC024(a5, a6);
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
    result = sub_251211BEC();
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

uint64_t sub_2511CC024(uint64_t a1, unint64_t a2)
{
  v4 = sub_2511CC070(a1, a2);
  sub_2511CC1A0(&unk_286338350);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2511CC070(uint64_t a1, unint64_t a2)
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

  v6 = sub_2511CC28C(v5, 0);
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

  result = sub_251211BEC();
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
        v10 = sub_25121182C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2511CC28C(v10, 0);
        result = sub_251211BAC();
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

uint64_t sub_2511CC1A0(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2511CC300(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2511CC28C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4229C0, &unk_251218950);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2511CC300(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4229C0, &unk_251218950);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_2511CC440()
{
  result = qword_27F422938;
  if (!qword_27F422938)
  {
    sub_2511C8A48(255, &qword_27F422928, 0x277CBEB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F422938);
  }

  return result;
}

void sub_2511CC4A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = MEMORY[0x277D85000];
      v8 = (*((*MEMORY[0x277D85000] & *v4) + 0x68))();
      sub_251210F4C();
      v9 = sub_2512111EC();

      v10 = v9;
      (*((*v7 & *v8) + 0xC8))(&v10);
    }

    else
    {
    }
  }
}

uint64_t sub_2511CC5CC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x25306DBD0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_251211B8C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

unint64_t sub_2511CC6F4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_251211D1C();
  sub_2512117FC();
  v6 = sub_251211D3C();

  return sub_2511CC76C(a1, a2, v6);
}

unint64_t sub_2511CC76C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_251211CCC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_2511CC824(char *a1, int64_t a2, char a3)
{
  result = sub_2511CC844(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2511CC844(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422988, &unk_251219200);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void (*sub_2511CC954(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25306DBD0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2511CC9D4;
  }

  __break(1u);
  return result;
}

uint64_t sub_2511CC9DC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_2511C8A48(0, &qword_27F422948, 0x277D75D18);
  return sub_251211A5C() & 1;
}

void sub_2511CCAC0(void *a1)
{
  v3 = *(v1 + 16);
  type metadata accessor for HPSAdaptiveVolumeSliderCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4229A0, &qword_2512184D8);
  [a1 setProperty:sub_251211CEC() forKey:*MEMORY[0x277D3FE58]];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4229A8, &qword_2512184E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251217FE0;
  *(inited + 32) = 0x6E6F687064616568;
  v5 = inited + 32;
  *(inited + 40) = 0xEF65636976654465;
  v6 = *(v3 + OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController_headphoneDevice);
  if (v6)
  {
    *(inited + 48) = v6;
    v7 = inited;
    v8 = v6;
    sub_2511CCC30(v7);
    swift_setDeallocating();
    sub_2511CCD34(v5, &qword_27F4229B0, &qword_2512184E8);
    sub_25121102C();
    v9 = sub_25121171C();

    [a1 setUserInfo_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_2511CCC30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4229B8, &unk_2512184F0);
    v3 = sub_251211C8C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2511CC6F4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2511CCD34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2511CCD94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2511CCE30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell_headphoneDevice);
    if (v5 && (swift_beginAccess(), (v6 = swift_unknownObjectWeakLoadStrong()) != 0))
    {
      v7 = v6;
      v8 = qword_27F423740;
      v9 = v5;
      if (v8 != -1)
      {
        swift_once();
      }

      v10 = sub_25121144C();
      __swift_project_value_buffer(v10, qword_27F425658);
      v11 = v7;
      v12 = sub_25121142C();
      v13 = sub_25121197C();

      v14 = os_log_type_enabled(v12, v13);
      v15 = MEMORY[0x277D85000];
      if (v14)
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v22 = v17;
        *v16 = 136315394;
        *(v16 + 4) = sub_2511CBE4C(0x726564696C73, 0xE600000000000000, &v22);
        *(v16 + 12) = 2080;
        (*((*v15 & *v11) + 0xC0))(&v21);
        v18 = sub_2512119CC();
        v20 = sub_2511CBE4C(v18, v19, &v22);

        *(v16 + 14) = v20;
        v15 = MEMORY[0x277D85000];
        _os_log_impl(&dword_251143000, v12, v13, "%s: HPSAdaptiveVolumeSliderCell %s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25306E960](v17, -1, -1);
        MEMORY[0x25306E960](v16, -1, -1);
      }

      sub_251210F4C();
      (*((*v15 & *v11) + 0xC0))(&v22);
      sub_2512111FC();
    }

    else
    {
    }
  }
}

uint64_t sub_2511CD0D4()
{
  v0 = sub_25121144C();
  __swift_allocate_value_buffer(v0, qword_27F425670);
  __swift_project_value_buffer(v0, qword_27F425670);
  return sub_25121143C();
}

uint64_t sub_2511CD154()
{
  if (qword_27F423750 != -1)
  {
    swift_once();
  }

  v0 = sub_25121144C();

  return __swift_project_value_buffer(v0, qword_27F425670);
}

uint64_t sub_2511CD1B8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F423750 != -1)
  {
    swift_once();
  }

  v2 = sub_25121144C();
  v3 = __swift_project_value_buffer(v2, qword_27F425670);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2511CD36C(void *a1)
{
  v2 = sub_25121131C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v39 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422A00, &qword_251218520);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422A08, &qword_251218528);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v40 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  v41 = a1;
  sub_251210FAC();
  if (v43)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4229F0, &qword_251218518);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422A20, &unk_251218538);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
    }
  }

  else
  {
    sub_2511CCD34(v42, &qword_27F4229E8, &qword_251218510);
    v44 = 0u;
    v45 = 0u;
    v46 = 0;
  }

  sub_2511CFF18(&v44, v42, &qword_27F422A10, &qword_251218530);
  if (v43)
  {
    __swift_project_boxed_opaque_existential_0Tm(v42, v43);
    sub_25121132C();
    v19 = *(v3 + 56);
    v19(v18, 0, 1, v2);
    __swift_destroy_boxed_opaque_existential_0(v42);
  }

  else
  {
    sub_2511CCD34(v42, &qword_27F422A10, &qword_251218530);
    v19 = *(v3 + 56);
    v19(v18, 1, 1, v2);
  }

  (*(v3 + 104))(v16, *MEMORY[0x277D0FC20], v2);
  v19(v16, 0, 1, v2);
  v20 = *(v6 + 48);
  sub_2511CFF18(v18, v9, &qword_27F422A08, &qword_251218528);
  sub_2511CFF18(v16, &v9[v20], &qword_27F422A08, &qword_251218528);
  v21 = *(v3 + 48);
  if (v21(v9, 1, v2) == 1)
  {
    sub_2511CCD34(v16, &qword_27F422A08, &qword_251218528);
    sub_2511CCD34(v18, &qword_27F422A08, &qword_251218528);
    if (v21(&v9[v20], 1, v2) == 1)
    {
      sub_2511CCD34(v9, &qword_27F422A08, &qword_251218528);
      v22 = 1;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v23 = v40;
  sub_2511CFF18(v9, v40, &qword_27F422A08, &qword_251218528);
  if (v21(&v9[v20], 1, v2) == 1)
  {
    sub_2511CCD34(v16, &qword_27F422A08, &qword_251218528);
    sub_2511CCD34(v18, &qword_27F422A08, &qword_251218528);
    (*(v3 + 8))(v23, v2);
LABEL_13:
    sub_2511CCD34(v9, &qword_27F422A00, &qword_251218520);
    v22 = 0;
    goto LABEL_15;
  }

  v24 = v39;
  (*(v3 + 32))(v39, &v9[v20], v2);
  sub_2511CFF80();
  v22 = sub_25121175C();
  v25 = *(v3 + 8);
  v25(v24, v2);
  sub_2511CCD34(v16, &qword_27F422A08, &qword_251218528);
  sub_2511CCD34(v18, &qword_27F422A08, &qword_251218528);
  v25(v23, v2);
  sub_2511CCD34(v9, &qword_27F422A08, &qword_251218528);
LABEL_15:
  if (qword_27F423750 != -1)
  {
    swift_once();
  }

  v26 = sub_25121144C();
  __swift_project_value_buffer(v26, qword_27F425670);
  v27 = v41;
  v28 = sub_25121142C();
  v29 = sub_25121197C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v42[0] = v31;
    *v30 = 136315650;
    *(v30 + 4) = sub_2511CBE4C(0xD00000000000001BLL, 0x8000000251220E30, v42);
    *(v30 + 12) = 1024;
    *(v30 + 14) = v22 & 1;
    *(v30 + 18) = 2080;
    v32 = v27;
    v33 = [v32 description];
    v34 = sub_25121179C();
    v36 = v35;

    v37 = sub_2511CBE4C(v34, v36, v42);

    *(v30 + 20) = v37;
    _os_log_impl(&dword_251143000, v28, v29, "%s isModernDevice: %{BOOL}d %s", v30, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x25306E960](v31, -1, -1);
    MEMORY[0x25306E960](v30, -1, -1);
  }

  sub_2511CCD34(&v44, &qword_27F422A10, &qword_251218530);
  return v22 & 1;
}

Swift::Void __swiftcall HeadphoneSettingsController.setupShowLegacyHPSButton()()
{
  v1 = v0;
  sub_25121108C();
  v2 = sub_25121107C();
  v3 = sub_25121104C();

  if ((v3 & 1) != 0 && os_variant_has_internal_ui())
  {
    v4 = [v1 navigationController];
    if (!v4)
    {
      goto LABEL_35;
    }

    v5 = v4;
    v6 = [v4 viewControllers];

    sub_2511C8A48(0, &qword_27F4229E0, 0x277D75D28);
    v7 = sub_25121187C();

    v36[0] = MEMORY[0x277D84F90];
    if (v7 >> 62)
    {
      goto LABEL_29;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251211B8C())
    {
      v35 = v1;
      v1 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x25306DBD0](v1, v7);
        }

        else
        {
          if (v1 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v9 = *(v7 + 8 * v1 + 32);
        }

        v10 = v9;
        v11 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        v12 = [v9 childViewControllers];
        v13 = sub_25121187C();

        if (v13 >> 62)
        {
          if (!sub_251211B8C())
          {
LABEL_7:

            goto LABEL_8;
          }
        }

        else if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_7;
        }

        if ((v13 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x25306DBD0](0, v13);
        }

        else
        {
          if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v14 = *(v13 + 32);
        }

        v15 = v14;

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          sub_251211BFC();
          v16 = *(v36[0] + 16);
          sub_251211C2C();
          sub_251211C3C();
          sub_251211C0C();
        }

        else
        {
        }

LABEL_8:
        ++v1;
        if (v11 == i)
        {
          v1 = v35;
          v17 = v36[0];
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      ;
    }

    v17 = MEMORY[0x277D84F90];
LABEL_31:

    if (v17 < 0 || (v17 & 0x4000000000000000) != 0)
    {
      v18 = sub_251211B8C();
    }

    else
    {
      v18 = *(v17 + 16);
    }

    if (!v18)
    {
LABEL_35:
      v19 = sub_25121176C();
      CFPreferencesAppSynchronize(v19);

      v20 = sub_25121176C();
      v21 = sub_25121176C();
      AppBooleanValue = CFPreferencesGetAppBooleanValue(v20, v21, 0);

      if (AppBooleanValue)
      {
        v23 = sub_25121130C();
        v36[3] = v23;
        v36[0] = v1;
        v24 = v1;
        v25 = sub_25121176C();
        if (v23)
        {
          v26 = __swift_project_boxed_opaque_existential_0Tm(v36, v23);
          v27 = *(v23 - 8);
          v28 = *(v27 + 64);
          MEMORY[0x28223BE20](v26);
          v30 = &v34 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v27 + 16))(v30);
          v31 = sub_251211CBC();
          (*(v27 + 8))(v30, v23);
          __swift_destroy_boxed_opaque_existential_0(v36);
        }

        else
        {
          v31 = 0;
        }

        v32 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithTitle:v25 style:2 target:v31 action:sel_showLegacyHPS];

        swift_unknownObjectRelease();
        v33 = [v24 navigationItem];
        [v33 setRightBarButtonItem_];
      }
    }
  }
}

uint64_t static HPSHeadphoneConfigController.modernHPSFFEnabled()()
{
  sub_25121108C();
  v0 = sub_25121107C();
  v1 = sub_25121104C();

  return v1 & 1;
}

Swift::Void __swiftcall HPSHeadphoneConfigController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  objc_msgSendSuper2(&v51, sel_viewWillAppear_, a1);
  v3 = sub_2511CE7BC();
  if (!v3)
  {
    goto LABEL_33;
  }

  v4 = v3;
  v5 = [v3 headphoneDevice];

  if (!v5)
  {
    goto LABEL_33;
  }

  v6 = sub_2511CE7BC();
  if (!v6 || (v7 = v6, v8 = [v6 headphoneDevice], v7, !v8))
  {
    v55 = 0;
    v53 = 0u;
    v54 = 0u;
    goto LABEL_9;
  }

  sub_251210FAC();

  if (!*(&v54 + 1))
  {
LABEL_9:
    sub_2511CCD34(&v53, &qword_27F4229E8, &qword_251218510);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4229F0, &qword_251218518);
  sub_2512111CC();
  if (!swift_dynamicCast())
  {
LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v9 = v52;
LABEL_11:

  sub_25121108C();
  v10 = sub_25121107C();
  v11 = sub_25121104C();

  if (qword_27F423750 != -1)
  {
    swift_once();
  }

  v12 = sub_25121144C();
  __swift_project_value_buffer(v12, qword_27F425670);
  v13 = sub_25121142C();
  v14 = sub_25121197C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v53 = v16;
    *v15 = 136315650;
    *(v15 + 4) = sub_2511CBE4C(0x65646F4D776F6873, 0xEC00000049556E72, &v53);
    *(v15 + 12) = 1024;
    *(v15 + 14) = v11 & 1;
    *(v15 + 18) = 1024;
    *(v15 + 20) = v9 == 0;
    _os_log_impl(&dword_251143000, v13, v14, "%s showModernUI: %{BOOL}d %{BOOL}d", v15, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x25306E960](v16, -1, -1);
    MEMORY[0x25306E960](v15, -1, -1);
  }

  if ((v11 & (v9 == 0)) == 1)
  {
    sub_25121130C();
    v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v18 = [v2 specifier];
    [v17 setSpecifier_];

    v19 = v5;
    sub_2512112FC();
    HeadphoneSettingsController.setupShowLegacyHPSButton()();
    if (os_variant_has_internal_ui())
    {
      v20 = sub_25121176C();
      CFPreferencesAppSynchronize(v20);

      v21 = sub_25121176C();
      v22 = sub_25121176C();
      AppBooleanValue = CFPreferencesGetAppBooleanValue(v21, v22, 0);

      if (AppBooleanValue)
      {
        v24 = v17;
        v25 = [v24 view];
        if (!v25)
        {
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v26 = v25;
        v27 = [v25 layer];

        v28 = [objc_opt_self() redColor];
        v29 = [v28 CGColor];

        [v27 setBorderColor_];
        v30 = [v24 view];

        if (!v30)
        {
LABEL_46:
          __break(1u);
          return;
        }

        v31 = [v30 layer];

        [v31 setBorderWidth_];
      }
    }

    [v17 reloadSpecifiers];
    v32 = v17;
    v33 = [v32 view];
    if (v33)
    {
      v34 = v33;
      [v33 removeFromSuperview];

      [v2 removeChildViewController_];
      v35 = [v2 navigationController];
      if (!v35)
      {

        return;
      }

      v36 = v35;
      v37 = [v35 viewControllers];

      sub_2511C8A48(0, &qword_27F4229E0, 0x277D75D28);
      v38 = sub_25121187C();

      if (v38 >> 62)
      {
        if (sub_251211B8C())
        {
          goto LABEL_25;
        }
      }

      else if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_25:
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v38 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
        {
          v38 = sub_2511CED3C(v38);
        }

        v40 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v40)
        {
          v41 = v40 - 1;
          v42 = *((v38 & 0xFFFFFFFFFFFFFF8) + 8 * v41 + 0x20);
          *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) = v41;

          *&v53 = v38;
          MEMORY[0x25306D860]();
          if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_30;
          }

          goto LABEL_43;
        }

LABEL_42:
        __break(1u);
LABEL_43:
        sub_25121189C();
LABEL_30:
        sub_2512118AC();
        v43 = [v2 navigationController];
        if (v43)
        {
          v44 = v43;
          v45 = sub_25121186C();

          [v44 setViewControllers:v45 animated:0];
        }

        else
        {
        }

        return;
      }

      __break(1u);
      goto LABEL_42;
    }

    __break(1u);
    goto LABEL_45;
  }

LABEL_33:
  if (qword_27F423750 != -1)
  {
    swift_once();
  }

  v46 = sub_25121144C();
  __swift_project_value_buffer(v46, qword_27F425670);
  v47 = sub_25121142C();
  v48 = sub_25121197C();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&v53 = v50;
    *v49 = 136315138;
    *(v49 + 4) = sub_2511CBE4C(0xD000000000000012, 0x8000000251220DC0, &v53);
    _os_log_impl(&dword_251143000, v47, v48, "%s Showing legacy HPS", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x25306E960](v50, -1, -1);
    MEMORY[0x25306E960](v49, -1, -1);
  }
}

uint64_t sub_2511CE7BC()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_27F423748);
  swift_endAccess();
  if (v1)
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_2511C8A48(0, &qword_27F422968, off_2796ACA80);
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_2511CCD34(v6, &unk_27F422EB0, &unk_251218400);
  }

  return 0;
}

Swift::Void __swiftcall HPSHeadphoneConfigController.setSpecifier(_:)(PSSpecifier_optional *a1)
{
  if (!a1)
  {
    __break(1u);
    return;
  }

  if ([(PSSpecifier_optional *)a1 userInfo])
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (!*(&v12 + 1))
  {
LABEL_16:
    sub_2511CCD34(&v13, &unk_27F422EB0, &unk_251218400);
    goto LABEL_17;
  }

  sub_2511C8A48(0, &qword_27F422918, 0x277CBEAC0);
  if (swift_dynamicCast())
  {
    v3 = v9;
    v4 = [objc_opt_self() deviceKey];
    if (!v4)
    {
      sub_25121179C();
      v4 = sub_25121176C();
    }

    v5 = [v9 objectForKey_];

    if (v5)
    {
      sub_251211B5C();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v13 = v11;
    v14 = v12;
    if (*(&v12 + 1))
    {
      sub_2511C8A48(0, &qword_27F422968, off_2796ACA80);
      if (swift_dynamicCast())
      {
        v6 = v9;
        v8.receiver = v1;
        v8.super_class = HPSHeadphoneConfigController;
        [(PSSpecifier_optional *)&v8 setSpecifier:a1];
        swift_beginAccess();
        v7 = v6;
        objc_setAssociatedObject(v1, &unk_27F423748, v7, 1);
        swift_endAccess();

        return;
      }

      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_17:
  v10.receiver = v1;
  v10.super_class = HPSHeadphoneConfigController;
  [(PSSpecifier_optional *)&v10 setSpecifier:a1];
}

BOOL HeadphoneSettingsController.forceShowLegacyButton.getter()
{
  v0 = sub_25121176C();
  CFPreferencesAppSynchronize(v0);

  v1 = sub_25121176C();
  v2 = sub_25121176C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v1, v2, 0);

  return AppBooleanValue != 0;
}

void sub_2511CEC64(void *a1)
{
  v2 = objc_allocWithZone(BTSDeviceConfigController);
  v7 = a1;
  v3 = [v2 init];
  v4 = [v7 specifier];
  [v3 setSpecifier_];

  v5 = [v7 navigationController];
  if (v5)
  {
    v6 = v5;
    [v5 pushViewController:v3 animated:1];
  }
}

uint64_t sub_2511CED3C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_251211B8C();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_251211BDC();
}

void _sSo28HPSHeadphoneConfigControllerC16HeadphoneConfigsE23_controllerForSpecifierySo06PSViewC0CSo11PSSpecifierCFZ_0(void *a1)
{
  p_class_meths = &OBJC_PROTOCOL___NSObject.class_meths;
  if (qword_27F423750 != -1)
  {
    swift_once();
  }

  v3 = sub_25121144C();
  v4 = __swift_project_value_buffer(v3, qword_27F425670);
  v5 = a1;
  v6 = sub_25121142C();
  v7 = sub_25121197C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v4;
    v123 = v3;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v126 = v11;
    *v9 = 136315650;
    *(v9 + 4) = sub_2511CBE4C(0xD00000000000001BLL, 0x8000000251220E30, &v126);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v5;
    *v10 = v5;
    *(v9 + 22) = 2080;
    if ([v5 userInfo])
    {
      sub_251211B5C();
      swift_unknownObjectRelease();
    }

    else
    {
      v128 = 0u;
      v129 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EB0, &unk_251218400);
    v12 = sub_2512117CC();
    v14 = sub_2511CBE4C(v12, v13, &v126);

    *(v9 + 24) = v14;
    _os_log_impl(&dword_251143000, v6, v7, "%s specifier: %@ %s", v9, 0x20u);
    sub_2511CCD34(v10, &qword_27F4229F8, &qword_251218D50);
    MEMORY[0x25306E960](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x25306E960](v11, -1, -1);
    MEMORY[0x25306E960](v9, -1, -1);

    v4 = v8;
    v3 = v123;
    p_class_meths = &OBJC_PROTOCOL___NSObject.class_meths;
  }

  else
  {
  }

  if ([v5 userInfo])
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v126 = 0u;
    v127 = 0u;
  }

  v128 = v126;
  v129 = v127;
  if (!*(&v127 + 1))
  {
    sub_2511CCD34(&v128, &unk_27F422EB0, &unk_251218400);
    goto LABEL_28;
  }

  sub_2511C8A48(0, &qword_27F422918, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    if (qword_27F423750 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v3, qword_27F425670);
    v28 = sub_25121142C();
    v29 = sub_25121196C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v128 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_2511CBE4C(0xD00000000000001BLL, 0x8000000251220E30, &v128);
      _os_log_impl(&dword_251143000, v28, v29, "%s HPSDiscovery: No inputDevice! return nil for HPSDevice", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x25306E960](v31, -1, -1);
      MEMORY[0x25306E960](v30, -1, -1);
    }

    v19 = 0;
    goto LABEL_33;
  }

  v15 = v4;
  v16 = v125;
  v121 = objc_opt_self();
  v17 = [v121 deviceKey];
  if (!v17)
  {
    sub_25121179C();
    v17 = sub_25121176C();
  }

  v18 = [v125 objectForKey_];

  if (v18)
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v126 = 0u;
    v127 = 0u;
  }

  v128 = v126;
  v129 = v127;
  if (!*(&v127 + 1))
  {

    sub_2511CCD34(&v128, &unk_27F422EB0, &unk_251218400);
    goto LABEL_28;
  }

  sub_2511C8A48(0, &qword_27F422968, off_2796ACA80);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_28;
  }

  v19 = v125;
  v20 = [v125 headphoneDevice];
  v117 = v5;
  if (!v20)
  {
    sub_25121108C();
    v44 = sub_25121103C();
    v5 = v44;
    if (v44 >> 62)
    {
      v45 = sub_251211B8C();
      if (v45)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v45)
      {
LABEL_39:
        v46 = 4;
        v118 = v45;
        v124 = v3;
        while (1)
        {
          v21 = (v46 - 4);
          if ((v5 & 0xC000000000000001) != 0)
          {
            v47 = MEMORY[0x25306DBD0](v46 - 4, v5);
            v48 = v46 - 3;
            if (__OFADD__(v21, 1))
            {
LABEL_51:
              __break(1u);
              goto LABEL_52;
            }
          }

          else
          {
            if (v21 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_84;
            }

            v47 = *(v5 + 8 * v46);
            v48 = v46 - 3;
            if (__OFADD__(v21, 1))
            {
              goto LABEL_51;
            }
          }

          v49 = v15;
          v50 = v47;
          v51 = sub_25121101C();
          v53 = v52;
          v54 = [v19 address];
          if (!v54)
          {
            __break(1u);
            goto LABEL_93;
          }

          v55 = v54;
          v56 = sub_25121179C();
          v58 = v57;

          *&v128 = v56;
          *(&v128 + 1) = v58;
          *&v126 = 58;
          *(&v126 + 1) = 0xE100000000000000;
          v115 = sub_2511D001C();
          v116 = v115;
          v114 = v115;
          v113 = MEMORY[0x277D837D0];
          v59 = sub_251211B3C();
          v61 = v60;

          if (v51 == v59 && v53 == v61)
          {
            break;
          }

          v62 = sub_251211CCC();

          if (v62)
          {
            goto LABEL_56;
          }

          ++v46;
          v16 = v125;
          v15 = v49;
          v19 = v125;
          v3 = v124;
          p_class_meths = (&OBJC_PROTOCOL___NSObject + 32);
          if (v48 == v118)
          {
            goto LABEL_86;
          }
        }

LABEL_56:

        v63 = v124;
        if (qword_27F423750 != -1)
        {
          swift_once();
          v63 = v124;
        }

        __swift_project_value_buffer(v63, qword_27F425670);
        v64 = sub_25121142C();
        v65 = sub_25121197C();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          *&v128 = v67;
          *v66 = 136315138;
          *(v66 + 4) = sub_2511CBE4C(0xD00000000000001BLL, 0x8000000251220E30, &v128);
          _os_log_impl(&dword_251143000, v64, v65, "%s HPSDiscovery: using fetched paired device", v66, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v67);
          MEMORY[0x25306E960](v67, -1, -1);
          MEMORY[0x25306E960](v66, -1, -1);
        }

        v68 = v50;
        v19 = [v121 headphoneDevice:v68 btsDevice:{objc_msgSend(v125, sel_bluetoothDevice, v113, v115, v115, v115)}];

        swift_unknownObjectRelease();
        v3 = v124;
        p_class_meths = &OBJC_PROTOCOL___NSObject.class_meths;
        v5 = v117;
        if (!v19)
        {
          goto LABEL_33;
        }

        goto LABEL_61;
      }
    }

LABEL_86:

    if (p_class_meths[234] != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v3, qword_27F425670);
    v108 = sub_25121142C();
    v109 = sub_25121197C();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v111 = v19;
      v112 = swift_slowAlloc();
      *&v128 = v112;
      *v110 = 136315138;
      *(v110 + 4) = sub_2511CBE4C(0xD00000000000001BLL, 0x8000000251220E30, &v128);
      _os_log_impl(&dword_251143000, v108, v109, "%s HPSDiscovery: did not find paired device returning nil", v110, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v112);
      MEMORY[0x25306E960](v112, -1, -1);
      MEMORY[0x25306E960](v110, -1, -1);
    }

    else
    {
    }

    v19 = 0;
    v5 = v117;
    goto LABEL_33;
  }

  if (qword_27F423750 != -1)
  {
LABEL_84:
    swift_once();
  }

  __swift_project_value_buffer(v3, qword_27F425670);
  v21 = sub_25121142C();
  v22 = sub_25121197C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = v19;
    v24 = swift_slowAlloc();
    v25 = v16;
    v26 = swift_slowAlloc();
    *&v128 = v26;
    *v24 = 136315138;
    *(v24 + 4) = sub_2511CBE4C(0xD00000000000001BLL, 0x8000000251220E30, &v128);
    _os_log_impl(&dword_251143000, v21, v22, "%s HPSDiscovery: using original inputDevice", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x25306E960](v26, -1, -1);
    v27 = v24;
    v19 = v23;
    MEMORY[0x25306E960](v27, -1, -1);

    v5 = v117;
  }

  else
  {
LABEL_52:
  }

  if (!v19)
  {
    goto LABEL_33;
  }

LABEL_61:
  v69 = [v19 headphoneDevice];
  if (!v69)
  {
LABEL_33:
    v32 = v5;
    v33 = sub_25121142C();
    v34 = sub_25121197C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v128 = v36;
      *v35 = 136315394;
      *(v35 + 4) = sub_2511CBE4C(0xD00000000000001BLL, 0x8000000251220E30, &v128);
      *(v35 + 12) = 2080;
      v37 = v19;
      v38 = [v32 debugDescription];
      v39 = sub_25121179C();
      v41 = v40;

      v42 = sub_2511CBE4C(v39, v41, &v128);

      *(v35 + 14) = v42;
      v19 = v37;
      _os_log_impl(&dword_251143000, v33, v34, "%s Showing legacy HPS %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25306E960](v36, -1, -1);
      MEMORY[0x25306E960](v35, -1, -1);
    }

    v43 = [objc_allocWithZone(BTSDeviceConfigController) init];
    [v43 setSpecifier_];
    goto LABEL_36;
  }

  v70 = v69;
  if (sub_2511CD36C(v69))
  {
    goto LABEL_63;
  }

  v120 = v19;
  v85 = objc_opt_self();
  v86 = sub_251210F7C();
  v87 = [v86 productID];

  v88 = [v85 getProductIDString_];
  v89 = sub_25121179C();
  v91 = v90;

  if (p_class_meths[234] != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v3, qword_27F425670);

  v92 = v70;
  v93 = sub_25121142C();
  v94 = sub_25121197C();

  v122 = v89;
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    *&v128 = v119;
    *v95 = 136315650;
    *(v95 + 4) = sub_2511CBE4C(0xD00000000000001BLL, 0x8000000251220E30, &v128);
    *(v95 + 12) = 2080;
    *(v95 + 14) = sub_2511CBE4C(v89, v91, &v128);
    *(v95 + 22) = 2080;
    v96 = v92;
    v97 = [v96 description];
    v98 = v92;
    v99 = sub_25121179C();
    v101 = v100;

    v102 = v99;
    v92 = v98;
    v103 = sub_2511CBE4C(v102, v101, &v128);

    *(v95 + 24) = v103;
    _os_log_impl(&dword_251143000, v93, v94, "%s showUnknownDevice: %s %s", v95, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25306E960](v119, -1, -1);
    MEMORY[0x25306E960](v95, -1, -1);
  }

  v19 = v120;
  v104 = MobileGestalt_get_current_device();
  if (!v104)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v105 = v104;
  appleInternalInstallCapability = MobileGestalt_get_appleInternalInstallCapability();

  if (!appleInternalInstallCapability)
  {

    v5 = v117;
LABEL_80:

    goto LABEL_33;
  }

  if (v122 == 0x4E574F4E4B4E55 && v91 == 0xE700000000000000)
  {

    v5 = v117;
    goto LABEL_63;
  }

  v107 = sub_251211CCC();

  v5 = v117;
  if ((v107 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_63:
  sub_25121130C();
  v71 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v71 setSpecifier_];
  v72 = v70;
  sub_2512112FC();
  HeadphoneSettingsController.setupShowLegacyHPSButton()();
  if (!os_variant_has_internal_ui())
  {

    v43 = v19;
    v19 = v71;
    goto LABEL_36;
  }

  v73 = v19;
  v74 = sub_25121176C();
  CFPreferencesAppSynchronize(v74);

  v75 = sub_25121176C();
  v76 = sub_25121176C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v75, v76, 0);

  if (!AppBooleanValue)
  {
LABEL_68:

    v43 = v73;
    v19 = v71;
LABEL_36:

    return;
  }

  v71 = v71;
  v78 = [v71 view];
  if (!v78)
  {
    goto LABEL_94;
  }

  v79 = v78;
  v80 = [v78 layer];

  v81 = [objc_opt_self() blueColor];
  v82 = [v81 CGColor];

  [v80 setBorderColor_];
  v83 = [v71 view];

  if (v83)
  {
    v84 = [v83 layer];

    [v84 setBorderWidth_];
    goto LABEL_68;
  }

LABEL_95:
  __break(1u);
}

uint64_t sub_2511CFF18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_2511CFF80()
{
  result = qword_27F422A18;
  if (!qword_27F422A18)
  {
    sub_25121131C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F422A18);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2511D001C()
{
  result = qword_27F422A28;
  if (!qword_27F422A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F422A28);
  }

  return result;
}

uint64_t sub_2511D0070(uint64_t a1)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4228F8, &qword_2512183E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = v17 - v3;
  v5 = sub_2511C8A48(255, &qword_27F422928, 0x277CBEB88);
  WitnessTable = swift_getWitnessTable();
  v7 = sub_2511D3934(&qword_27F422938, &qword_27F422928, 0x277CBEB88);
  v17[0] = a1;
  v17[1] = v5;
  v17[2] = WitnessTable;
  v17[3] = v7;
  v8 = sub_25121154C();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = v17 - v11;
  v13 = [objc_opt_self() mainRunLoop];
  v17[0] = v13;
  v14 = sub_251211A9C();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_25121163C();
  sub_2511CCD34(v4, &qword_27F4228F8, &qword_2512183E0);

  swift_getWitnessTable();
  v15 = sub_25121160C();
  (*(v9 + 8))(v12, v8);
  return v15;
}

void *sub_2511D02E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs23ModernBatteryStatusView_hpDevice);
  v2 = v1;
  return v1;
}

id sub_2511D0310(void *a1, char a2, double a3, double a4, double a5, double a6)
{
  v8 = [objc_allocWithZone(v6) initWithFrame:a1 device:a2 & 1 darkMode:{a3, a4, a5, a6}];

  return v8;
}

void *sub_2511D0394(void *a1, char a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  *&v6[OBJC_IVAR____TtC16HeadphoneConfigs23ModernBatteryStatusView_listeners] = MEMORY[0x277D84FA0];
  v14 = [a1 headphoneDevice];
  *&v6[OBJC_IVAR____TtC16HeadphoneConfigs23ModernBatteryStatusView_hpDevice] = v14;
  if (v14)
  {
    v15 = v14;
    sub_251210F4C();

    sub_2512111DC();

    v16 = sub_25121118C();

    v17 = [v16 type];

    v18 = v17 != 0;
  }

  else
  {
    v18 = 0;
  }

  v7[OBJC_IVAR____TtC16HeadphoneConfigs23ModernBatteryStatusView_currentBatteryLRValid] = v18;
  v25.receiver = v7;
  v25.super_class = type metadata accessor for ModernBatteryStatusView();
  v19 = objc_msgSendSuper2(&v25, sel_initWithFrame_device_darkMode_, a1, a2 & 1, a3, a4, a5, a6);
  v20 = *(v19 + OBJC_IVAR____TtC16HeadphoneConfigs23ModernBatteryStatusView_hpDevice);
  v21 = *((*MEMORY[0x277D85000] & *v19) + 0xA8);
  v22 = v20;
  v23 = v19;
  v21(v20);

  return v23;
}

uint64_t sub_2511D058C()
{
  v0 = sub_25121136C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D0FB58]);
  v4 = objc_allocWithZone(sub_25121138C());
  return sub_25121139C();
}

void sub_2511D0744(uint64_t a1@<X8>)
{
  (*((*MEMORY[0x277D85000] & *v1) + 0xA0))();
  if (*(v1 + OBJC_IVAR____TtC16HeadphoneConfigs23ModernBatteryStatusView_hpDevice))
  {
    sub_251210F4C();
    sub_2512111DC();
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x277CEF800]) init];
    v3 = sub_2512111BC();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    sub_2512111AC();
  }

  v6 = sub_25121110C();
  [v6 level];
  v8 = v7;

  v9 = v8;
  v10 = v9 * 100.0;
  if (COERCE_INT(fabs(v9 * 100.0)) > 2139095039)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v10 <= -1.0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v10 >= 256.0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v11 = sub_25121111C();
  [v11 level];
  v13 = v12;

  v14 = v13;
  v15 = v14 * 100.0;
  if (COERCE_INT(fabs(v14 * 100.0)) > 2139095039)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v15 <= -1.0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v15 >= 256.0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v16 = sub_25121116C();
  [v16 level];
  v18 = v17;

  v19 = v18;
  v20 = v19 * 100.0;
  if (COERCE_INT(fabs(v19 * 100.0)) > 2139095039)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v20 <= -1.0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v20 >= 256.0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v21 = sub_25121118C();
  v22 = [v21 type];

  if (v22)
  {
    v23 = sub_25121118C();
    [v23 level];
    v25 = v24;

    v26 = v25;
    v15 = v26 * 100.0;
    if (COERCE_INT(fabs(v26 * 100.0)) > 2139095039)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if (v15 <= -1.0)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v15 >= 256.0)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v27 = sub_25121118C();
    [v27 level];
    v29 = v28;

    v30 = v29;
    v20 = v30 * 100.0;
    if (COERCE_INT(fabs(v30 * 100.0)) > 2139095039)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v20 <= -1.0)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v20 >= 256.0)
    {
LABEL_53:
      __break(1u);
      return;
    }
  }

  v31 = sub_25121112C();
  [v31 level];
  v33 = v32;

  v34 = v33;
  v35 = v34 * 100.0;
  if ((LODWORD(v35) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_45;
  }

  if (v35 <= -1.0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v35 >= 256.0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v36 = v35;
  v37 = sub_25121110C();
  [v37 state];

  if (sub_25121198C() == 1)
  {
    v38 = -1;
  }

  else
  {
    v38 = 0;
  }

  v39 = sub_25121111C();
  [v39 state];

  if (sub_25121198C() == 1)
  {
    v40 = -1;
  }

  else
  {
    v40 = 0;
  }

  v41 = sub_25121116C();
  [v41 state];

  if (sub_25121198C() == 1)
  {
    v42 = -1;
  }

  else
  {
    v42 = 0;
  }

  v43 = sub_25121118C();
  [v43 state];

  LODWORD(v43) = sub_25121198C();

  *a1 = v36;
  if (v43 == 1)
  {
    v44 = -1;
  }

  else
  {
    v44 = 0;
  }

  *(a1 + 1) = 0;
  *(a1 + 3) = 0;
  *(a1 + 4) = v44;
  *(a1 + 8) = v20;
  *(a1 + 9) = 0;
  *(a1 + 11) = 0;
  *(a1 + 12) = v42;
  *(a1 + 16) = v15;
  *(a1 + 17) = 0;
  *(a1 + 19) = 0;
  *(a1 + 20) = v40;
  *(a1 + 24) = v10;
  *(a1 + 25) = 0;
  *(a1 + 27) = 0;
  *(a1 + 28) = v38;
  *(a1 + 32) = 0;
}

void sub_2511D0BD8()
{
  v1 = sub_25121136C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_25121144C();
  v6 = *(v82 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v82);
  v77 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v80 = &v76 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v79 = &v76 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v78 = &v76 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v76 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v76 - v19;
  v83 = v0;
  if (*&v0[OBJC_IVAR____TtC16HeadphoneConfigs23ModernBatteryStatusView_hpDevice])
  {
    sub_251210F4C();
    sub_2512111DC();
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x277CEF800]) init];
    v21 = sub_2512111BC();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_2512111AC();
  }

  sub_25121140C();
  v24 = sub_25121142C();
  v25 = sub_25121195C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = v6;
    v27 = v1;
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_251143000, v24, v25, "Battery view decorateBatteryIcon called", v28, 2u);
    v29 = v28;
    v1 = v27;
    v6 = v26;
    MEMORY[0x25306E960](v29, -1, -1);
  }

  v30 = *(v6 + 8);
  v81 = v6 + 8;
  v30(v20, v82);
  v31 = (v2 + 8);
  if ([v83 untethered])
  {
    v76 = v30;
    v32 = sub_25121111C();
    sub_251211A8C();

    v33 = sub_25121135C();
    v34 = *v31;
    (*v31)(v5, v1);
    if ((v33 & 1) == 0)
    {
      v35 = [v83 deviceBatteryLevelLeftView];
      v36 = [v35 batteryIconView];

      sub_25121138C();
      if (swift_dynamicCastClass())
      {
        sub_25121140C();
        v37 = sub_25121142C();
        v38 = sub_25121195C();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v77 = v1;
          v40 = v39;
          *v39 = 0;
          _os_log_impl(&dword_251143000, v37, v38, "Battery view decorateBatteryIcon left", v39, 2u);
          v41 = v40;
          v1 = v77;
          MEMORY[0x25306E960](v41, -1, -1);
        }

        v76(v18, v82);
        v42 = sub_25121111C();
        sub_251211A8C();

        sub_25121137C();
        v34(v5, v1);
      }

      else
      {
      }
    }

    v53 = sub_25121116C();
    sub_251211A8C();

    v54 = sub_25121135C();
    v34(v5, v1);
    if ((v54 & 1) == 0)
    {
      v55 = [v83 deviceBatteryLevelRightView];
      v56 = [v55 batteryIconView];

      sub_25121138C();
      if (swift_dynamicCastClass())
      {
        sub_25121140C();
        v57 = sub_25121142C();
        v58 = sub_25121195C();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&dword_251143000, v57, v58, "Battery view decorateBatteryIcon right", v59, 2u);
          MEMORY[0x25306E960](v59, -1, -1);
        }

        v76(v78, v82);
        v60 = sub_25121116C();
        sub_251211A8C();

        sub_25121137C();
        v34(v5, v1);
      }

      else
      {
      }
    }

    v61 = sub_25121110C();
    sub_251211A8C();

    v62 = sub_25121135C();
    v34(v5, v1);
    if ((v62 & 1) == 0)
    {
      v63 = [v83 deviceBatteryLevelCaseView];
      v64 = [v63 batteryIconView];

      sub_25121138C();
      if (swift_dynamicCastClass())
      {
        sub_25121140C();
        v65 = sub_25121142C();
        v66 = sub_25121195C();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&dword_251143000, v65, v66, "Battery view decorateBatteryIcon case", v67, 2u);
          MEMORY[0x25306E960](v67, -1, -1);
        }

        v76(v79, v82);
        v68 = sub_25121110C();
        sub_251211A8C();

        sub_25121137C();
        v34(v5, v1);
      }

      else
      {
      }
    }

    v69 = sub_25121118C();
    sub_251211A8C();

    v70 = sub_25121135C();
    v34(v5, v1);
    if (v70)
    {
      goto LABEL_31;
    }

    v71 = [v83 deviceBatteryLevelSingleView];
    v47 = [v71 batteryIconView];

    sub_25121138C();
    if (swift_dynamicCastClass())
    {
      sub_25121140C();
      v72 = sub_25121142C();
      v73 = sub_25121195C();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_251143000, v72, v73, "Battery view decorateBatteryIcon combined", v74, 2u);
        MEMORY[0x25306E960](v74, -1, -1);
      }

      v76(v80, v82);
      v75 = sub_25121118C();
      sub_251211A8C();

      sub_25121137C();

      v34(v5, v1);
      return;
    }

LABEL_36:

    return;
  }

  v43 = sub_25121112C();
  sub_251211A8C();

  v44 = sub_25121135C();
  v45 = *v31;
  (*v31)(v5, v1);
  if (v44)
  {
LABEL_31:

    return;
  }

  v46 = [v83 deviceBatteryLevelSingleView];
  v47 = [v46 batteryIconView];

  sub_25121138C();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_36;
  }

  sub_25121140C();
  v48 = sub_25121142C();
  v49 = sub_25121195C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v76 = v30;
    v51 = v50;
    *v50 = 0;
    _os_log_impl(&dword_251143000, v48, v49, "Battery view decorateBatteryIcon main", v50, 2u);
    v30 = v76;
    MEMORY[0x25306E960](v51, -1, -1);
  }

  v30(v77, v82);
  v52 = sub_25121112C();
  sub_251211A8C();

  sub_25121137C();

  v45(v5, v1);
}

void sub_2511D162C(void *a1)
{
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422A48, &qword_251218548);
  v139 = *(v140 - 8);
  v3 = *(v139 + 64);
  MEMORY[0x28223BE20](v140);
  v138 = &v110 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422A50, &qword_251218550);
  v143 = *(v5 - 8);
  v6 = *(v143 + 64);
  MEMORY[0x28223BE20](v5);
  v142 = &v110 - v7;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422A58, &qword_251218558);
  v145 = *(v147 - 8);
  v8 = *(v145 + 64);
  MEMORY[0x28223BE20](v147);
  v144 = &v110 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422A60, &unk_251218560);
  v148 = *(v10 - 8);
  v11 = *(v148 + 64);
  MEMORY[0x28223BE20](v10);
  v146 = &v110 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422720, &qword_251217EB8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v110 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4228F8, &qword_2512183E0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v110 - v19;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422A68, &qword_251218570);
  v155 = *(v152 - 8);
  v21 = *(v155 + 64);
  MEMORY[0x28223BE20](v152);
  v23 = &v110 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422A70, &qword_251218578);
  v154 = *(v24 - 8);
  v25 = *(v154 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v110 - v26;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422A78, &qword_251218580);
  v149 = *(v151 - 8);
  v28 = v149[8];
  v29 = MEMORY[0x28223BE20](v151);
  v141 = &v110 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v150 = &v110 - v32;
  MEMORY[0x28223BE20](v31);
  v153 = &v110 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422A80, &qword_251218588);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34);
  v39 = &v110 - v38;
  if (a1)
  {
    v134 = v37;
    v135 = v36;
    v133 = v10;
    v136 = v16;
    v40 = OBJC_IVAR____TtC16HeadphoneConfigs23ModernBatteryStatusView_listeners;
    swift_beginAccess();
    v137 = v40;
    v41 = *&v1[v40];
    if ((v41 & 0xC000000000000001) != 0)
    {
      if (v41 < 0)
      {
        v42 = *&v1[v40];
      }

      v43 = a1;

      v44 = sub_251211B8C();

      if (v44)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v45 = *(v41 + 16);
      v46 = a1;
      if (v45)
      {
LABEL_6:

        return;
      }
    }

    v132 = v1;
    v47 = [v1 untethered];
    sub_251210F4C();
    sub_2512111DC();

    if (v47)
    {
      sub_25121119C();

      v128 = objc_opt_self();
      v48 = [v128 mainRunLoop];
      v156 = v48;
      v121 = sub_251211A9C();
      v49 = *(v121 - 8);
      v122 = *(v49 + 56);
      v127 = v49 + 56;
      v122(v20, 1, 1, v121);
      v126 = sub_2511C8A48(0, &qword_27F422928, 0x277CBEB88);
      v50 = sub_2511C6790(&qword_27F422A88, &qword_27F422A70, &qword_251218578);
      v110 = v39;
      v124 = v50;
      v138 = sub_2511D3934(&qword_27F422938, &qword_27F422928, 0x277CBEB88);
      v111 = v24;
      sub_25121163C();
      sub_2511CCD34(v20, &qword_27F4228F8, &qword_2512183E0);

      v125 = MEMORY[0x277CBCD60];
      v131 = sub_2511C6790(&qword_27F422A90, &qword_27F422A68, &qword_251218570);
      v51 = v152;
      v52 = sub_25121160C();
      v53 = *(v155 + 8);
      v155 += 8;
      v130 = v53;
      v53(v23, v51);
      v54 = *(v154 + 8);
      v154 += 8;
      v123 = v54;
      v54(v27, v24);
      v156 = v52;
      v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422A98, &unk_251218590);
      v120 = MEMORY[0x277CBCD90];
      v140 = sub_2511C6790(&qword_27F422AA0, &qword_27F422A98, &unk_251218590);
      v139 = sub_2511D3934(&qword_27F422AA8, &qword_27F422AB0, 0x277CEF7E8);
      v55 = v153;
      sub_25121166C();

      v114 = sub_2511C6790(&qword_27F422AB8, &qword_27F422A78, &qword_251218580);
      v119 = v5;
      v56 = v151;
      v57 = v55;
      v58 = sub_25121160C();
      (v149[1])(v57, v56);
      v156 = v58;
      v112 = sub_2511C8A48(0, &qword_27F422760, 0x277D85C78);
      v59 = sub_251211A0C();
      v157 = v59;
      v116 = sub_2512119DC();
      v60 = *(v116 - 8);
      v115 = *(v60 + 56);
      v117 = v60 + 56;
      v61 = v136;
      v115(v136, 1, 1, v116);
      v118 = sub_2511D3934(&qword_27F422770, &qword_27F422760, 0x277D85C78);
      v62 = v110;
      sub_25121163C();
      sub_2511CCD34(v61, &qword_27F422720, &qword_251217EB8);

      v63 = swift_allocObject();
      v64 = v132;
      *(v63 + 16) = a1;
      *(v63 + 24) = v64;
      sub_2511C6790(&qword_27F422AC0, &qword_27F422A80, &qword_251218588);
      v149 = a1;
      v113 = v64;
      v65 = v135;
      sub_25121167C();

      (*(v134 + 8))(v62, v65);
      swift_beginAccess();
      sub_25121155C();
      swift_endAccess();

      sub_251210F4C();
      sub_2512111DC();

      sub_25121113C();

      v66 = [v128 mainRunLoop];
      v156 = v66;
      v67 = v121;
      v68 = v122;
      v122(v20, 1, 1, v121);
      v69 = v111;
      sub_25121163C();
      sub_2511CCD34(v20, &qword_27F4228F8, &qword_2512183E0);

      v70 = v23;
      v71 = v152;
      v72 = sub_25121160C();
      v130(v70, v71);
      v123(v27, v69);
      v156 = v72;
      sub_25121166C();

      sub_251210F4C();
      sub_2512111DC();

      sub_25121114C();

      v73 = [v128 mainRunLoop];
      v156 = v73;
      v68(v20, 1, 1, v67);
      sub_25121163C();
      sub_2511CCD34(v20, &qword_27F4228F8, &qword_2512183E0);

      v74 = v152;
      v75 = sub_25121160C();
      v130(v70, v74);
      v76 = v123;
      v123(v27, v69);
      v156 = v75;
      sub_25121166C();

      sub_251210F4C();
      sub_2512111DC();

      sub_25121117C();

      v77 = [v128 mainRunLoop];
      v156 = v77;
      v122(v20, 1, 1, v121);
      sub_25121163C();
      sub_2511CCD34(v20, &qword_27F4228F8, &qword_2512183E0);

      v78 = sub_25121160C();
      v130(v70, v74);
      v76(v27, v69);
      v156 = v78;
      sub_25121166C();

      v79 = v142;
      sub_25121153C();
      sub_2511C6790(&qword_27F422AD0, &qword_27F422A50, &qword_251218550);
      v80 = v119;
      v81 = sub_25121160C();
      (*(v143 + 8))(v79, v80);
      v156 = v81;
      v82 = sub_251211A0C();
      v157 = v82;
      v83 = v136;
      v115(v136, 1, 1, v116);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422AD8, &qword_2512185C8);
      sub_2511C6790(&qword_27F422AE0, &qword_27F422AD8, &qword_2512185C8);
      v84 = v144;
      sub_25121163C();
      sub_2511CCD34(v83, &qword_27F422720, &qword_251217EB8);

      v85 = swift_allocObject();
      v86 = v113;
      swift_unknownObjectWeakInit();
      v87 = swift_allocObject();
      *(v87 + 16) = v85;
      v88 = v149;
      *(v87 + 24) = v149;
      type metadata accessor for BTDeviceBatteryStatus();
      sub_2511C6790(&qword_27F422AE8, &qword_27F422A58, &qword_251218558);
      v89 = v88;
      v91 = v146;
      v90 = v147;
      sub_25121161C();

      (*(v145 + 8))(v84, v90);
      swift_getKeyPath();
      v156 = v86;
      sub_2511C6790(&qword_27F422AF0, &qword_27F422A60, &unk_251218560);
      v92 = v133;
      sub_25121168C();

      (*(v148 + 8))(v91, v92);
      swift_beginAccess();
      sub_25121155C();
      swift_endAccess();
    }

    else
    {
      sub_25121115C();

      v93 = [objc_opt_self() mainRunLoop];
      v156 = v93;
      v94 = sub_251211A9C();
      (*(*(v94 - 8) + 56))(v20, 1, 1, v94);
      sub_2511C8A48(0, &qword_27F422928, 0x277CBEB88);
      sub_2511C6790(&qword_27F422A88, &qword_27F422A70, &qword_251218578);
      sub_2511D3934(&qword_27F422938, &qword_27F422928, 0x277CBEB88);
      sub_25121163C();
      sub_2511CCD34(v20, &qword_27F4228F8, &qword_2512183E0);

      v150 = MEMORY[0x277CBCD60];
      sub_2511C6790(&qword_27F422A90, &qword_27F422A68, &qword_251218570);
      v95 = v152;
      v96 = sub_25121160C();
      (*(v155 + 8))(v23, v95);
      (*(v154 + 8))(v27, v24);
      v156 = v96;
      v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422A98, &unk_251218590);
      sub_2511C6790(&qword_27F422AA0, &qword_27F422A98, &unk_251218590);
      sub_2511D3934(&qword_27F422AA8, &qword_27F422AB0, 0x277CEF7E8);
      v97 = v153;
      sub_25121166C();

      sub_2511C6790(&qword_27F422AB8, &qword_27F422A78, &qword_251218580);
      v98 = v151;
      v99 = sub_25121160C();
      (v149[1])(v97, v98);
      v156 = v99;
      sub_2511C8A48(0, &qword_27F422760, 0x277D85C78);
      v100 = sub_251211A0C();
      v157 = v100;
      v101 = sub_2512119DC();
      v102 = v136;
      (*(*(v101 - 8) + 56))(v136, 1, 1, v101);
      sub_2511D3934(&qword_27F422770, &qword_27F422760, 0x277D85C78);
      sub_25121163C();
      sub_2511CCD34(v102, &qword_27F422720, &qword_251217EB8);

      v103 = swift_allocObject();
      v104 = v132;
      swift_unknownObjectWeakInit();
      v105 = swift_allocObject();
      *(v105 + 16) = v103;
      *(v105 + 24) = a1;
      type metadata accessor for BTDeviceBatteryStatus();
      sub_2511C6790(&qword_27F422AC0, &qword_27F422A80, &qword_251218588);
      v106 = a1;
      v107 = v138;
      v108 = v135;
      sub_25121161C();

      (*(v134 + 8))(v39, v108);
      swift_getKeyPath();
      v156 = v104;
      sub_2511C6790(&qword_27F422AC8, &qword_27F422A48, &qword_251218548);
      v109 = v140;
      sub_25121168C();

      (*(v139 + 8))(v107, v109);
      swift_beginAccess();
      sub_25121155C();
      swift_endAccess();
    }
  }
}

void sub_2511D2E64(uint64_t a1, void *a2)
{
  v4 = sub_25121144C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251210F4C();
  sub_2512111DC();

  v9 = sub_25121118C();

  v10 = [v9 type];

  if ((v10 != 0) != *(a2 + OBJC_IVAR____TtC16HeadphoneConfigs23ModernBatteryStatusView_currentBatteryLRValid))
  {
    *(a2 + OBJC_IVAR____TtC16HeadphoneConfigs23ModernBatteryStatusView_currentBatteryLRValid) = v10 != 0;
    sub_25121140C();
    v11 = sub_25121142C();
    v12 = sub_25121195C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_251143000, v11, v12, "Battery view combinedLR tearDown rebuild UI", v13, 2u);
      MEMORY[0x25306E960](v13, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    (*((*MEMORY[0x277D85000] & *a2) + 0x98))(v15, a1);
    [a2 setStatus_];
    [a2 setupViews];
  }
}

double sub_2511D3084@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  [*a1 status];
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

id sub_2511D30D4(uint64_t a1, id *a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  return [*a2 setStatus_];
}

double sub_2511D3114@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_25121144C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_25121140C();
    v11 = sub_25121142C();
    v12 = sub_25121197C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_251143000, v11, v12, "Battery view levelPublisher triggered", v13, 2u);
      MEMORY[0x25306E960](v13, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    (*((*MEMORY[0x277D85000] & *v10) + 0x98))(v17, a1);

    result = *v17;
    v15 = v17[1];
    *a2 = v17[0];
    *(a2 + 16) = v15;
    *(a2 + 32) = v18;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2511D3360()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ModernBatteryStatusView();
  v1 = objc_msgSendSuper2(&v3, sel_setupViews);
  return (*((*MEMORY[0x277D85000] & *v0) + 0xA0))(v1);
}

void sub_2511D3450()
{
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs23ModernBatteryStatusView_listeners) = MEMORY[0x277D84FA0];
  sub_251211C4C();
  __break(1u);
}

uint64_t sub_2511D3530()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs23ModernBatteryStatusView_listeners;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = MEMORY[0x277D84FA0];
}

id sub_2511D363C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModernBatteryStatusView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL AAFeatures.init(rawValue:)()
{
  v0 = sub_251211CAC();

  return v0 != 0;
}

uint64_t sub_2511D3748()
{
  sub_251211D1C();
  sub_2512117FC();
  return sub_251211D3C();
}

uint64_t sub_2511D37BC()
{
  sub_251211D1C();
  sub_2512117FC();
  return sub_251211D3C();
}

uint64_t sub_2511D3810@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_251211CAC();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_2511D3934(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2511C8A48(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for BTDeviceBatteryStatus()
{
  if (!qword_27F422B00)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F422B00);
    }
  }
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_2511D3A38(void *a1)
{
  v2 = sub_25121144C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v27[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27[-1] - v8;
  v27[3] = &type metadata for AAFeatures;
  v27[4] = sub_2511D3ED0();
  v10 = sub_251210F2C();
  __swift_destroy_boxed_opaque_existential_0(v27);
  if (v10)
  {
    v11 = [a1 headphoneDevice];
    if (v11)
    {
      v12 = v11;
      sub_251210F4C();
      sub_2512111DC();

      v13 = sub_25121118C();
      v14 = [v13 type];

      if (v14)
      {
        v15 = sub_25121118C();
        [v15 level];
        v17 = v16;

        v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];

        return v18;
      }
    }

    sub_25121141C();
    v23 = sub_25121142C();
    v24 = sub_25121195C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_251143000, v23, v24, "Headphone Battery: no combined value", v25, 2u);
      MEMORY[0x25306E960](v25, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
  }

  else
  {
    sub_25121141C();
    v20 = sub_25121142C();
    v21 = sub_25121196C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_251143000, v20, v21, "Headphone Battery: Feature not enabled", v22, 2u);
      MEMORY[0x25306E960](v22, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
  }

  return 0;
}

unint64_t sub_2511D3D24()
{
  result = qword_27F422AF8;
  if (!qword_27F422AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F422AF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AAFeatures(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AAFeatures(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 __swift_memcpy40_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2511D3E7C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2511D3E9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

unint64_t sub_2511D3ED0()
{
  result = qword_27F422B08;
  if (!qword_27F422B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F422B08);
  }

  return result;
}

uint64_t sub_2511D3F34()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2511D3F64(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2511D3FBC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_2511D3FEC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

double sub_2511D4044@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_2511D405C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EB0, &unk_251218400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2511D40D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EB0, &unk_251218400);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2511D4284()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  sub_251146DE4(v1);
  return v1;
}

uint64_t sub_2511D42B8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);
  result = sub_251146DF4(*(v2 + 112));
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t sub_2511D4310()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  sub_251146DE4(v1);
  return v1;
}

uint64_t sub_2511D4344(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 136);
  result = sub_251146DF4(*(v2 + 128));
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t sub_2511D439C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  sub_251146DE4(v1);
  return v1;
}

uint64_t sub_2511D43D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 152);
  result = sub_251146DF4(*(v2 + 144));
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

__n128 sub_2511D4428@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, __int128 a12, __int128 a13, __n128 a14, uint64_t a15)
{
  result = a14;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  v16 = a5[1];
  *(a9 + 32) = *a5;
  *(a9 + 48) = v16;
  *(a9 + 64) = a6;
  *(a9 + 72) = a7;
  *(a9 + 80) = a8;
  *(a9 + 88) = a10;
  *(a9 + 96) = a11;
  *(a9 + 104) = a12;
  *(a9 + 120) = a13;
  *(a9 + 136) = a14;
  *(a9 + 152) = a15;
  return result;
}

uint64_t sub_2511D4484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_2511D44EC(a1, a2, a3, a4);
  return v8;
}

void sub_2511D44EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = MEMORY[0x277D84F90];
  if (a2)
  {
    v6 = sub_25121176C();
    if (a4)
    {
LABEL_3:

      v7 = sub_25121176C();

      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = [objc_opt_self() groupSpecifierWithID:v6 name:v7];

  if (v8)
  {

    *(v4 + 16) = v8;
    swift_beginAccess();
    v9 = v8;
    MEMORY[0x25306D860]();
    if (*((*(v4 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v10 = *((*(v4 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_25121189C();
    }

    sub_2512118AC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2511D4644(void (*a1)(void))
{
  a1(*(v1 + 16));
}

void sub_2511D468C()
{
  v1 = v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  (*(v2 + 16))(v3, v2);
  v5 = v4;
  v6 = (*(v2 + 88))(v3, v2);
  v8 = v7;
  v9 = (*(v2 + 80))(v3, v2);
  v11 = v10;
  v27 = (*(v2 + 72))(v3, v2);
  v28 = (*(v2 + 48))(v3, v2);
  v12 = (*(v2 + 96))(v3, v2);
  v14 = v13;
  v15 = type metadata accessor for HeadphoneSpecifier();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_getAction];
  *v17 = v9;
  v17[1] = v11;
  v18 = &v16[OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_setAction];
  *v18 = v6;
  v18[1] = v8;
  v19 = &v16[OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_buttonTapAction];
  *v19 = v12;
  v19[1] = v14;
  v26 = v6;
  if (v5)
  {
    sub_251146DE4(v9);
    sub_251146DE4(v6);
    sub_251146DE4(v12);

    v20 = sub_25121176C();

    if (v27)
    {
LABEL_3:
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      goto LABEL_6;
    }
  }

  else
  {
    sub_251146DE4(v9);
    sub_251146DE4(v6);
    sub_251146DE4(v12);
    v20 = 0;
    if (v27)
    {
      goto LABEL_3;
    }
  }

  ObjCClassFromMetadata = 0;
LABEL_6:
  v31.receiver = v16;
  v31.super_class = v15;
  v22 = objc_msgSendSuper2(&v31, sel_initWithName_target_set_get_detail_cell_edit_, v20, 0, sel_setSepcifierEnabledWithEnabled_, sel_specifierEnabled, ObjCClassFromMetadata, v28, 0);

  if (v22)
  {

    v30.receiver = v22;
    v30.super_class = v15;
    v23 = v22;
    objc_msgSendSuper2(&v30, sel_setTarget_, v23);
    v29.receiver = v23;
    v29.super_class = v15;
    objc_msgSendSuper2(&v29, sel_setButtonAction_, sel_buttonTappedWithSender_);
    sub_251146DF4(v12);
    sub_251146DF4(v9);
    sub_251146DF4(v26);
    v24 = swift_beginAccess();
    MEMORY[0x25306D860](v24);
    if (*((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v25 = *((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_25121189C();
    }

    sub_2512118AC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void HeadphoneSpecifier.__allocating_init(name:setAction:getAction:detail:cell:edit:buttonAction:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t ObjCClassFromMetadata, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v19 = objc_allocWithZone(v12);
  v20 = a6;
  v21 = v19;
  v22 = &v19[OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_getAction];
  *v22 = a5;
  v22[1] = v20;
  v23 = &v19[OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_setAction];
  *v23 = a3;
  v23[1] = a4;
  v24 = &v19[OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_buttonTapAction];
  *v24 = a10;
  *(v24 + 1) = a11;
  if (a2)
  {
    sub_251146DE4(a5);
    sub_251146DE4(a3);
    sub_251146DE4(a10);
    v25 = sub_25121176C();
    v26 = a9;
    if (!ObjCClassFromMetadata)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_251146DE4(a5);
  sub_251146DE4(a3);
  sub_251146DE4(a10);
  v25 = 0;
  v26 = a9;
  if (ObjCClassFromMetadata)
  {
LABEL_3:
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  if (v26)
  {
    v27 = swift_getObjCClassFromMetadata();
  }

  else
  {
    v27 = 0;
  }

  v33.receiver = v21;
  v33.super_class = v12;
  v28 = objc_msgSendSuper2(&v33, sel_initWithName_target_set_get_detail_cell_edit_, v25, 0, sel_setSepcifierEnabledWithEnabled_, sel_specifierEnabled, ObjCClassFromMetadata, a8, v27);

  if (v28)
  {

    v32.receiver = v28;
    v32.super_class = v12;
    v29 = v28;
    objc_msgSendSuper2(&v32, sel_setTarget_, v29);
    v31.receiver = v29;
    v31.super_class = v12;
    objc_msgSendSuper2(&v31, sel_setButtonAction_, sel_buttonTappedWithSender_);
    sub_251146DF4(a10);
    sub_251146DF4(a5);
    sub_251146DF4(a3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2511D4BD0()
{
  v1 = v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  (*(v2 + 16))(v3, v2);
  if (v4)
  {
    v5 = sub_25121176C();
  }

  else
  {
    v5 = 0;
  }

  (*(v2 + 24))(v21, v3, v2);
  v6 = v22;
  if (v22)
  {
    v7 = __swift_project_boxed_opaque_existential_0Tm(v21, v22);
    v8 = *(v6 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x28223BE20](v7);
    v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11);
    v12 = sub_251211CBC();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_0(v21);
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(v2 + 40))(v3, v2);
  v14 = (*(v2 + 32))(v3, v2);
  if ((*(v2 + 72))(v3, v2))
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v16 = objc_opt_self();
  v17 = [v16 preferenceSpecifierNamed:v5 target:v12 set:v13 get:v14 detail:ObjCClassFromMetadata cell:(*(v2 + 48))(v3 edit:{v2), 0}];

  result = swift_unknownObjectRelease();
  if (v17)
  {
    swift_beginAccess();
    v19 = v17;
    MEMORY[0x25306D860]();
    if (*((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v20 = *((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_25121189C();
    }

    sub_2512118AC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2511D4EF0(void (*a1)(id))
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    return v1;
  }

  if (v3 < 0)
  {
    v7 = *(v1 + 24);
  }

  result = sub_251211B8C();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  v5 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_15:

    v6 = MEMORY[0x25306DBD0](v5, v3);

    goto LABEL_8;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v3 + 8 * v5 + 32);
LABEL_8:
    a1(v6);

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2511D4FFC()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_2511D5034()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_2511D505C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t HeadphoneSpecifier.getAction.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_getAction);
  v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_getAction + 8);
  sub_251146DE4(v1);
  return v1;
}

uint64_t HeadphoneSpecifier.setAction.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_setAction);
  v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_setAction + 8);
  sub_251146DE4(v1);
  return v1;
}

uint64_t HeadphoneSpecifier.buttonTapAction.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_buttonTapAction);
  v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_buttonTapAction + 8);
  sub_251146DE4(v1);
  return v1;
}

void HeadphoneSpecifier.init(name:setAction:getAction:detail:cell:edit:buttonAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = &v11[OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_getAction];
  *v14 = a5;
  v14[1] = a6;
  v15 = &v11[OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_setAction];
  *v15 = a3;
  v15[1] = a4;
  v16 = &v11[OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_buttonTapAction];
  *v16 = a10;
  v16[1] = a11;
  if (a2)
  {
    sub_251146DE4(a5);
    sub_251146DE4(a3);
    sub_251146DE4(a10);
    v17 = sub_25121176C();
    v18 = a9;
    if (a7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_251146DE4(a5);
    sub_251146DE4(a3);
    sub_251146DE4(a10);
    v17 = 0;
    v18 = a9;
    if (a7)
    {
LABEL_3:
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v24 = a3;
      if (!v18)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  ObjCClassFromMetadata = 0;
  v24 = a3;
  if (v18)
  {
LABEL_4:
    v18 = swift_getObjCClassFromMetadata();
  }

LABEL_5:
  v20 = type metadata accessor for HeadphoneSpecifier();
  v28.receiver = v11;
  v28.super_class = v20;
  v21 = objc_msgSendSuper2(&v28, sel_initWithName_target_set_get_detail_cell_edit_, v17, 0, sel_setSepcifierEnabledWithEnabled_, sel_specifierEnabled, ObjCClassFromMetadata, a8, v18);

  if (v21)
  {

    v27.receiver = v21;
    v27.super_class = v20;
    v22 = v21;
    objc_msgSendSuper2(&v27, sel_setTarget_, v22);
    v26.receiver = v22;
    v26.super_class = v20;
    objc_msgSendSuper2(&v26, sel_setButtonAction_, sel_buttonTappedWithSender_);
    sub_251146DF4(a10);
    sub_251146DF4(a5);
    sub_251146DF4(v24);
  }

  else
  {
    __break(1u);
  }
}

uint64_t HeadphoneSpecifier.buttonTapped(sender:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_buttonTapAction);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_buttonTapAction + 8);
    return v1();
  }

  return result;
}

NSNumber __swiftcall HeadphoneSpecifier.specifierEnabled()()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_getAction);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_getAction + 8);
    return v1();
  }

  else
  {
    sub_2511D5484();
    return sub_251211A4C();
  }
}

unint64_t sub_2511D5484()
{
  result = qword_27F422FA0;
  if (!qword_27F422FA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F422FA0);
  }

  return result;
}

Swift::Void __swiftcall HeadphoneSpecifier.setSepcifierEnabled(enabled:)(NSNumber enabled)
{
  v2 = *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_setAction);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_setAction + 8);
    v2(enabled.super.super.isa);
  }
}

id HeadphoneSpecifier.__allocating_init(name:target:set:get:detail:cell:edit:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t ObjCClassFromMetadata, uint64_t a7, uint64_t a8)
{
  v25 = a5;
  v26 = a7;
  v24 = a4;
  if (a2)
  {
    v12 = sub_25121176C();

    v13 = a3[3];
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = 0;
    v13 = a3[3];
    if (v13)
    {
LABEL_3:
      v14 = __swift_project_boxed_opaque_existential_0Tm(a3, v13);
      v15 = *(v13 - 8);
      v16 = *(v15 + 64);
      MEMORY[0x28223BE20](v14);
      v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v18);
      v19 = sub_251211CBC();
      (*(v15 + 8))(v18, v13);
      __swift_destroy_boxed_opaque_existential_0(a3);
      if (!ObjCClassFromMetadata)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v19 = 0;
  if (ObjCClassFromMetadata)
  {
LABEL_4:
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

LABEL_5:
  if (a8)
  {
    a8 = swift_getObjCClassFromMetadata();
  }

  v20 = objc_allocWithZone(v8);
  v21 = [v20 initWithName:v12 target:v19 set:v24 get:v25 detail:ObjCClassFromMetadata cell:v26 edit:a8];

  swift_unknownObjectRelease();
  return v21;
}

id HeadphoneSpecifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HeadphoneSpecifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneSpecifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_2511D59E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 160))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2511D5A3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void type metadata accessor for PSTableCellType()
{
  if (!qword_27F422B28)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F422B28);
    }
  }
}

uint64_t sub_2511D5C1C(char a1)
{
  result = swift_beginAccess();
  byte_27F425688 = a1;
  return result;
}

uint64_t sub_2511D5CBC(void *a1)
{
  v1 = a1;
  v2 = sub_2511D5CF0();

  return v2 & 1;
}

uint64_t sub_2511D5CF0()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &byte_27F425688);
  swift_endAccess();
  if (v1)
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v3;
    }
  }

  else
  {
    sub_2511CCD34(v6, &unk_27F422EB0, &unk_251218400);
    return 0;
  }

  return result;
}

void sub_2511D5DD0(void *a1)
{
  v1 = a1;
  v2 = sub_2512118CC();
  swift_beginAccess();
  objc_setAssociatedObject(v1, &byte_27F425688, v2, 1);
  swift_endAccess();
}

void sub_2511D5E54()
{
  v1 = sub_2512118CC();
  swift_beginAccess();
  objc_setAssociatedObject(v0, &byte_27F425688, v1, 1);
  swift_endAccess();
}

uint64_t *sub_2511D5ED8()
{
  if (qword_27F4239F0 != -1)
  {
    swift_once();
  }

  return &qword_27F425690;
}

uint64_t sub_2511D5F28()
{
  if (qword_27F4239F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_2511D6060(uint64_t a1)
{
  if (qword_27F4239F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27F425690 = a1;
}

uint64_t (*sub_2511D6188())()
{
  if (qword_27F4239F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t HPSHeadphoneManager.addTopLevelEntry(hpDevice:)(void *a1)
{
  v2 = v1;
  v4 = sub_251210D3C();
  v58 = *(v4 - 8);
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25121169C();
  v60 = *(v8 - 8);
  v9 = *(v60 + 64);
  MEMORY[0x28223BE20](v8);
  v59 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_25121144C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2512113EC();
  v16 = v2;
  v17 = a1;
  v18 = sub_25121142C();
  LODWORD(a1) = sub_25121197C();

  v57 = a1;
  if (os_log_type_enabled(v18, a1))
  {
    v52 = v15;
    v51 = v18;
    v53 = v12;
    v54 = v11;
    v55 = v8;
    v56 = v16;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v64 = v21;
    *v19 = 136315650;
    if (qword_27F4239F0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    sub_2511D7C84(v22);
    v24 = v23;

    v25 = MEMORY[0x25306D890](v24, MEMORY[0x277D837D0]);
    v27 = v26;

    v28 = sub_2511CBE4C(v25, v27, &v64);

    *(v19 + 4) = v28;
    *(v19 + 12) = 2080;
    sub_25121108C();
    v29 = sub_25121107C();
    sub_25121106C();

    sub_25121102C();
    v30 = sub_25121173C();
    v32 = v31;

    v33 = sub_2511CBE4C(v30, v32, &v64);

    *(v19 + 14) = v33;
    *(v19 + 22) = 2112;
    *(v19 + 24) = v17;
    *v20 = v17;
    v34 = v17;
    v35 = v51;
    _os_log_impl(&dword_251143000, v51, v57, "HPMHeadphoneManager: addTopLevelEntry %s  %s %@", v19, 0x20u);
    sub_2511CCD34(v20, &qword_27F4229F8, &qword_251218D50);
    MEMORY[0x25306E960](v20, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x25306E960](v21, -1, -1);
    MEMORY[0x25306E960](v19, -1, -1);

    (*(v53 + 8))(v52, v54);
    v16 = v56;
    v8 = v55;
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  v37 = v59;
  v36 = v60;
  sub_2511C5FD0();
  *v37 = sub_251211A0C();
  (*(v36 + 104))(v37, *MEMORY[0x277D85200], v8);
  v38 = sub_2512116AC();
  (*(v36 + 8))(v37, v8);
  if (v38)
  {
    if (qword_27F4239F0 == -1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_8:
  v39 = sub_25121101C();
  v41 = v40;
  swift_beginAccess();
  v42 = qword_27F425690;
  if (*(qword_27F425690 + 16))
  {
    v43 = sub_2511CC6F4(v39, v41);
    v45 = v44;

    if (v45)
    {
      v46 = *(*(v42 + 56) + 8 * v43);
      v47 = v46;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v46 = 0;
LABEL_13:
  swift_endAccess();
  [v17 setHasBackend_];
  [v46 setHasBackend_];
  sub_2511D884C(v46, v17);
  sub_2511D69F0();
  v48 = [v16 weakHashTblCopy];
  v49 = [v48 objectEnumerator];

  sub_25121194C();
  sub_2511D8E8C(&qword_27F422B30, MEMORY[0x277CC9178]);
  sub_251211B0C();
  while (v65)
  {
    sub_2511C8CB0(&v64, v63);
    sub_2511CCD94(v63, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422B38, &unk_251218920);
    if (swift_dynamicCast())
    {
      [v61 addTopLevelEntryWithHpDevice_];
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v63);
    sub_251211B0C();
  }

  return (*(v58 + 8))(v7, v4);
}

uint64_t sub_2511D6954()
{
  if (qword_27F4239F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  sub_2511D7C84(v0);
  v2 = v1;

  return v2;
}

void sub_2511D69F0()
{
  v0 = sub_25121144C();
  v71 = *(v0 - 8);
  v72 = v0;
  v1 = *(v71 + 64);
  MEMORY[0x28223BE20](v0);
  v77 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25121108C();
  v4 = sub_25121107C();
  objc_sync_enter(v4);

  v5 = v3;
  v6 = sub_25121107C();
  v7 = sub_25121105C();
  v9 = v8;
  v10 = *v8;

  *v9 = MEMORY[0x277D84F98];
  v7(v81, 0);

  if (qword_27F4239F0 == -1)
  {
    goto LABEL_2;
  }

LABEL_41:
  swift_once();
LABEL_2:
  swift_beginAccess();
  v11 = qword_27F425690;
  v81[0] = MEMORY[0x277D84F90];
  v12 = 1 << *(qword_27F425690 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(qword_27F425690 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v17 = v5;
  if (v14)
  {
    while (2)
    {
      v18 = v16;
LABEL_11:
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v20 = *(*(v11 + 56) + ((v18 << 9) | (8 * v19)));
      if ([v20 hasBackend])
      {
        sub_251211BFC();
        v21 = *(v81[0] + 16);
        sub_251211C2C();
        sub_251211C3C();
        sub_251211C0C();
        v17 = v5;
        v16 = v18;
        if (v14)
        {
          continue;
        }
      }

      else
      {

        v16 = v18;
        if (v14)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = *(v11 + 64 + 8 * v18);
    ++v16;
    if (v14)
    {
      goto LABEL_11;
    }
  }

  v22 = v81[0];
  if ((v81[0] & 0x8000000000000000) == 0 && (v81[0] & 0x4000000000000000) == 0)
  {
    v23 = *(v81[0] + 16);
    v5 = v77;
    if (!v23)
    {
      goto LABEL_43;
    }

LABEL_17:
    v24 = 0;
    v75 = v17;
    v76 = v22 & 0xC000000000000001;
    v73 = v23;
    v74 = v22;
    while (2)
    {
      if (v76)
      {
        v29 = MEMORY[0x25306DBD0](v24, v22);
      }

      else
      {
        if (v24 >= *(v22 + 16))
        {
          goto LABEL_38;
        }

        v29 = *(v22 + 8 * v24 + 32);
      }

      v30 = v29;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_37;
      }

      v79 = v24 + 1;
      v31 = sub_25121107C();
      v32 = sub_25121101C();
      v34 = v33;
      v5 = v30;
      v78 = sub_25121105C();
      v36 = v35;
      v37 = *v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v80 = *v36;
      v39 = v80;
      *v36 = 0x8000000000000000;
      v41 = sub_2511CC6F4(v32, v34);
      v42 = v39[2];
      v43 = (v40 & 1) == 0;
      v44 = v42 + v43;
      if (__OFADD__(v42, v43))
      {
        goto LABEL_39;
      }

      v45 = v40;
      if (v39[3] >= v44)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v40 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          sub_2511D85B4();
          if ((v45 & 1) == 0)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        sub_2511D8198(v44, isUniquelyReferenced_nonNull_native);
        v46 = sub_2511CC6F4(v32, v34);
        if ((v45 & 1) != (v47 & 1))
        {
          sub_251211CFC();
          __break(1u);
          return;
        }

        v41 = v46;
        if ((v45 & 1) == 0)
        {
LABEL_31:
          v25 = v80;
          v80[(v41 >> 6) + 8] |= 1 << v41;
          v48 = (v25[6] + 16 * v41);
          *v48 = v32;
          v48[1] = v34;
          *(v25[7] + 8 * v41) = v5;
          v49 = v25[2];
          v50 = __OFADD__(v49, 1);
          v51 = v49 + 1;
          if (v50)
          {
            goto LABEL_40;
          }

          v25[2] = v51;
          goto LABEL_19;
        }
      }

      v25 = v80;
      v26 = v80[7];
      v27 = *(v26 + 8 * v41);
      *(v26 + 8 * v41) = v5;

LABEL_19:
      v28 = *v36;
      *v36 = v25;

      v78(v81, 0);

      ++v24;
      v22 = v74;
      v5 = v77;
      if (v79 == v73)
      {
        goto LABEL_43;
      }

      continue;
    }
  }

  v23 = sub_251211B8C();
  v5 = v77;
  if (v23)
  {
    goto LABEL_17;
  }

LABEL_43:

  sub_2512113EC();
  v52 = v70;
  v53 = sub_25121142C();
  v54 = sub_25121197C();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v81[0] = v56;
    *v55 = 136315394;

    sub_2511D7C84(v57);
    v59 = v58;

    v60 = MEMORY[0x25306D890](v59, MEMORY[0x277D837D0]);
    v62 = v61;

    v63 = sub_2511CBE4C(v60, v62, v81);

    *(v55 + 4) = v63;
    *(v55 + 12) = 2080;
    v64 = sub_25121107C();
    sub_25121106C();

    sub_25121102C();
    v65 = sub_25121173C();
    v67 = v66;

    v68 = sub_2511CBE4C(v65, v67, v81);

    *(v55 + 14) = v68;
    _os_log_impl(&dword_251143000, v53, v54, "HPMHeadphoneManager: updateConnectedForHPM %s  %s", v55, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25306E960](v56, -1, -1);
    MEMORY[0x25306E960](v55, -1, -1);
  }

  (*(v71 + 8))(v5, v72);
  v69 = sub_25121107C();
  objc_sync_exit(v69);
}

uint64_t HPSHeadphoneManager.updateTopLevelEntry(hpDevice:)(void *a1)
{
  v2 = v1;
  v4 = sub_251210D3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25121169C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2511C5FD0();
  *v13 = sub_251211A0C();
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v14 = sub_2512116AC();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    if (qword_27F4239F0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v15 = sub_25121101C();
  v17 = v16;
  swift_beginAccess();
  v18 = qword_27F425690;
  v19 = *(qword_27F425690 + 16);
  v30 = v5;
  if (v19)
  {
    v20 = sub_2511CC6F4(v15, v17);
    v22 = v21;

    if (v22)
    {
      v23 = *(*(v18 + 56) + 8 * v20);
      v24 = v23;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v23 = 0;
LABEL_8:
  swift_endAccess();
  v29 = v23;
  sub_2511D884C(v23, a1);
  v25 = [v2 weakHashTblCopy];
  v26 = [v25 objectEnumerator];

  sub_25121194C();
  sub_2511D8E8C(&qword_27F422B30, MEMORY[0x277CC9178]);
  sub_251211B0C();
  while (v35)
  {
    sub_2511C8CB0(&v34, v33);
    sub_2511CCD94(v33, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422B38, &unk_251218920);
    if (swift_dynamicCast())
    {
      [v31 updateTopLevelEntryWithHpDevice_];
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v33);
    sub_251211B0C();
  }

  return (*(v30 + 8))(v8, v4);
}

uint64_t HPSHeadphoneManager.removeTopLevelEntry(hpDevice:)(void *a1)
{
  v2 = v1;
  v4 = sub_251210D3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25121144C();
  v58 = *(v9 - 1);
  v59 = v9;
  v10 = *(v58 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25121169C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2511C5FD0();
  *v17 = sub_251211A0C();
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13);
  v18 = sub_2512116AC();
  v20 = *(v14 + 8);
  v19 = (v14 + 8);
  v20(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_8;
  }

  v57 = v5;
  sub_2512113EC();
  v19 = v2;
  v2 = a1;
  v21 = sub_25121142C();
  v22 = sub_25121197C();

  p_class_meths = &OBJC_PROTOCOL___NSObject.class_meths;
  if (os_log_type_enabled(v21, v22))
  {
    v55 = v22;
    v56 = v19;
    v24 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v63[0] = v54;
    *v24 = 136315650;
    if (qword_27F4239F0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    sub_2511D7C84(v25);
    v27 = v26;

    v28 = MEMORY[0x25306D890](v27, MEMORY[0x277D837D0]);
    v30 = v29;

    v31 = sub_2511CBE4C(v28, v30, v63);

    *(v24 + 4) = v31;
    *(v24 + 12) = 2080;
    sub_25121108C();
    v32 = sub_25121107C();
    sub_25121106C();

    sub_25121102C();
    v33 = sub_25121173C();
    v35 = v34;

    v36 = sub_2511CBE4C(v33, v35, v63);

    *(v24 + 14) = v36;
    *(v24 + 22) = 2112;
    *(v24 + 24) = v2;
    v37 = v53;
    *v53 = v2;
    v38 = v2;
    _os_log_impl(&dword_251143000, v21, v55, "HPMHeadphoneManager: removeTopLevelEntry %s  %s %@", v24, 0x20u);
    sub_2511CCD34(v37, &qword_27F4229F8, &qword_251218D50);
    MEMORY[0x25306E960](v37, -1, -1);
    v39 = v54;
    swift_arrayDestroy();
    MEMORY[0x25306E960](v39, -1, -1);
    MEMORY[0x25306E960](v24, -1, -1);

    (*(v58 + 8))(v12, v59);
    v19 = v56;
    p_class_meths = (&OBJC_PROTOCOL___NSObject + 32);
  }

  else
  {

    (*(v58 + 8))(v12, v59);
  }

  if (p_class_meths[318] != -1)
  {
    goto LABEL_20;
  }

LABEL_8:
  v40 = sub_25121101C();
  v42 = v41;
  swift_beginAccess();
  v43 = qword_27F425690;
  if (*(qword_27F425690 + 16))
  {
    v44 = sub_2511CC6F4(v40, v42);
    v46 = v45;

    if (v46)
    {
      v59 = *(*(v43 + 56) + 8 * v44);
      v47 = v59;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v59 = 0;
LABEL_13:
  swift_endAccess();
  [v2 setHasBackend_];
  v48 = v59;
  [v59 setHasBackend_];
  sub_2511D884C(v48, v2);
  sub_2511D69F0();
  v49 = [v19 weakHashTblCopy];
  v50 = [v49 objectEnumerator];

  sub_25121194C();
  sub_2511D8E8C(&qword_27F422B30, MEMORY[0x277CC9178]);
  sub_251211B0C();
  while (v64)
  {
    sub_2511C8CB0(v63, v62);
    sub_2511CCD94(v62, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422B38, &unk_251218920);
    if (swift_dynamicCast())
    {
      [v60 removeTopLevelEntryWithHpDevice_];
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v62);
    sub_251211B0C();
  }

  return (*(v57 + 8))(v8, v4);
}

void sub_2511D7C84(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v34 = MEMORY[0x277D84F90];
    sub_2511D8720(0, v2, 0);
    v3 = v34;
    v4 = a1 + 64;
    v5 = -1 << *(a1 + 32);
    v6 = sub_251211B6C();
    v7 = 0;
    v8 = 1;
    v30 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_28;
      }

      v32 = v7;
      v33 = *(a1 + 36);
      v11 = *(*(a1 + 56) + 8 * v6);
      sub_251211BBC();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4226F8, &unk_251217E40);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_251217FE0;
      *(v12 + 56) = sub_25121102C();
      *(v12 + 64) = sub_2511D8E8C(&qword_27F422B40, MEMORY[0x277D0FBB0]);
      *(v12 + 32) = v11;
      v8 = v11;
      v13 = sub_2512117BC();
      MEMORY[0x25306D820](v13);

      MEMORY[0x25306D820](0x6572646441746220, 0xEB000000003A7373);
      v14 = sub_25121101C();
      MEMORY[0x25306D820](v14);

      MEMORY[0x25306D820](0x6B63614273616820, 0xEC0000003A646E65);
      v15 = [v8 hasBackend];
      v16 = v15 == 0;
      if (v15)
      {
        v17 = 1702195828;
      }

      else
      {
        v17 = 0x65736C6166;
      }

      if (v16)
      {
        v18 = 0xE500000000000000;
      }

      else
      {
        v18 = 0xE400000000000000;
      }

      MEMORY[0x25306D820](v17, v18);

      MEMORY[0x25306D820](10, 0xE100000000000000);
      if (v31)
      {
        goto LABEL_32;
      }

      v19 = v3;
      v35 = v3;
      v20 = *(v3 + 16);
      v21 = *(v19 + 24);
      if (v20 >= v21 >> 1)
      {
        sub_2511D8720((v21 > 1), v20 + 1, 1);
        v19 = v35;
      }

      *(v19 + 16) = v20 + 1;
      v22 = v19 + 16 * v20;
      *(v22 + 32) = 0xD000000000000011;
      *(v22 + 40) = 0x80000002512210F0;
      v8 = 1;
      v9 = 1 << *(a1 + 32);
      if (v6 >= v9)
      {
        goto LABEL_29;
      }

      v4 = a1 + 64;
      v23 = *(a1 + 64 + 8 * v10);
      if ((v23 & (1 << v6)) == 0)
      {
        goto LABEL_30;
      }

      v3 = v19;
      if (v33 != *(a1 + 36))
      {
        goto LABEL_31;
      }

      v24 = v23 & (-2 << (v6 & 0x3F));
      if (v24)
      {
        v9 = __clz(__rbit64(v24)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v10 << 6;
        v26 = v10 + 1;
        v27 = (a1 + 72 + 8 * v10);
        while (v26 < (v9 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            sub_2511D8E80(v6, v33, 0);
            v9 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        sub_2511D8E80(v6, v33, 0);
      }

LABEL_4:
      v7 = v32 + 1;
      v6 = v9;
      if (v32 + 1 == v30)
      {
        return;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:

    __break(1u);
  }
}

uint64_t sub_2511D8080()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4226F8, &unk_251217E40);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_251217FE0;
  *(v1 + 56) = sub_25121102C();
  *(v1 + 64) = sub_2511D8E8C(&qword_27F422B40, MEMORY[0x277D0FBB0]);
  *(v1 + 32) = v0;
  v2 = v0;
  v8 = sub_2512117BC();
  MEMORY[0x25306D820](32, 0xE100000000000000);
  v3 = [v2 description];
  v4 = sub_25121179C();
  v6 = v5;

  MEMORY[0x25306D820](v4, v6);

  return v8;
}

uint64_t sub_2511D8198(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4229B8, &unk_2512184F0);
  v39 = a2;
  result = sub_251211C7C();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_251211D1C();
      sub_2512117FC();
      result = sub_251211D3C();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2511D843C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2511CC6F4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2511D8198(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_2511CC6F4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        v11 = sub_251211CFC();
        __break(1u);
        return MEMORY[0x2821F96F8](v11, v24);
      }
    }

    else
    {
      v19 = v11;
      sub_2511D85B4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8](v11, v24);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

id sub_2511D85B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4229B8, &unk_2512184F0);
  v2 = *v0;
  v3 = sub_251211C6C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_2511D8720(char *a1, int64_t a2, char a3)
{
  result = sub_2511D8740(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2511D8740(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4229D0, &qword_251219310);
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

uint64_t sub_2511D884C(void *a1, void *a2)
{
  v63 = sub_25121144C();
  v4 = *(v63 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v63);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v58 - v8;
  MEMORY[0x28223BE20](v7);
  v12 = &v58 - v11;
  if (a1)
  {
    v62 = v10;
    v59 = sub_2511D8080();
    v14 = v13;
    v15 = a1;
    sub_251210F4C();
    v16 = sub_25121122C();

    v17 = sub_251210F6C();
    if (v16)
    {
      sub_251210FFC();
    }

    else
    {
      sub_251210FEC();
    }

    v24 = sub_251210F8C();
    v25 = sub_2512110AC();

    v60 = v15;
    v61 = v4;
    if (v25)
    {
      v26 = sub_251210F8C();
      sub_25121109C();

      sub_2512113EC();

      v27 = v25;
      v28 = sub_25121142C();
      v29 = sub_25121197C();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v65[0] = v32;
        *v30 = 136315394;
        *(v30 + 4) = sub_2511CBE4C(v59, v14, v65);
        *(v30 + 12) = 2112;
        *(v30 + 14) = v27;
        *v31 = v25;
        v33 = v27;
        _os_log_impl(&dword_251143000, v28, v29, "HPMHeadphoneManager updateHeadphoneDevice hearing record for fetched:%s with updated record %@", v30, 0x16u);
        sub_2511CCD34(v31, &qword_27F4229F8, &qword_251218D50);
        MEMORY[0x25306E960](v31, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x25306E960](v32, -1, -1);
        MEMORY[0x25306E960](v30, -1, -1);
      }

      else
      {
      }

      v44 = *(v61 + 8);
      v45 = v12;
    }

    else
    {
      sub_2512113EC();
      v34 = a2;
      v35 = sub_25121142C();
      v36 = sub_25121197C();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = v4;
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v65[0] = v39;
        *v38 = 136315138;
        v40 = sub_2511D8080();
        v42 = sub_2511CBE4C(v40, v41, v65);

        *(v38 + 4) = v42;
        _os_log_impl(&dword_251143000, v35, v36, "HPMHeadphoneManager no incoming record for incomingDevice:%s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x25306E960](v39, -1, -1);
        MEMORY[0x25306E960](v38, -1, -1);

        v43 = v37;
      }

      else
      {

        v43 = v4;
      }

      v44 = *(v43 + 8);
      v45 = v9;
    }

    v46 = v63;
    v44(v45, v63);
    v47 = v62;
    sub_2512113EC();

    v48 = a2;
    v49 = sub_25121142C();
    v50 = sub_25121197C();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v65[0] = v52;
      *v51 = 136315394;
      v53 = sub_2511CBE4C(v59, v14, v65);

      *(v51 + 4) = v53;
      *(v51 + 12) = 2080;
      v54 = sub_2511D8080();
      v56 = sub_2511CBE4C(v54, v55, v65);

      *(v51 + 14) = v56;
      _os_log_impl(&dword_251143000, v49, v50, "HPMHeadphoneManager updateHeadphoneDevice fetchedDevice:%s ::::: incomingDevice:%s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25306E960](v52, -1, -1);
      MEMORY[0x25306E960](v51, -1, -1);

      v57 = v62;
    }

    else
    {

      v57 = v47;
    }

    return (v44)(v57, v46);
  }

  else
  {
    if (qword_27F4239F0 != -1)
    {
      swift_once();
    }

    v18 = sub_25121101C();
    v20 = v19;
    swift_beginAccess();
    v21 = a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = qword_27F425690;
    qword_27F425690 = 0x8000000000000000;
    sub_2511D843C(v21, v18, v20, isUniquelyReferenced_nonNull_native);

    qword_27F425690 = v64;
    return swift_endAccess();
  }
}