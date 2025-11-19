double SUUICompactThreshold()
{
  if (SUUICompactThreshold_onceToken != -1)
  {
    [SUUIClientContext tabBarStyleForWidth:];
  }

  return *&SUUICompactThreshold_threshold;
}

void __SUUICompactThreshold_block_invoke()
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = -337121064;
  v7 = xmmword_259FCB4D0;
  v6 = 450980336;
  v5 = xmmword_259FCB4E4;
  if (MGIsDeviceOneOfType())
  {
    goto LABEL_2;
  }

  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFDictionaryGetValue(v0, @"ArtworkDeviceSubType");
    if (v2)
    {
      v3 = v2;
      v4 = [v2 intValue];
      CFRelease(v1);

      if (v4 == 2436)
      {
LABEL_2:
        SUUICompactThreshold_threshold = 0x4089600000000000;
      }
    }

    else
    {
      CFRelease(v1);
    }
  }
}

void SUUISetShouldReverseLayoutDirectionWithContext(void *a1)
{
  v1 = didSetAtLeastOnce;
  v2 = a1;
  v3 = v2;
  if (v1 != -1)
  {
    SUUISetShouldReverseLayoutDirectionWithContext_cold_1();
    v2 = v3;
  }

  _SUUISetShouldReverseLayoutDirectionWithContext(v2);
}

uint64_t SUUIUserInterfaceIdiom(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1 || (v3 = [v1 userInterfaceIdiomOverride], v3 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    v3 = [v4 userInterfaceIdiom];
  }

  return v3;
}

uint64_t storeSemanticContentAttribute()
{
  if (didSetAtLeastOnce != -1)
  {
    storeShouldReverseLayoutDirection_cold_1();
  }

  if (shouldFlipForRTL)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

void __storeShouldReverseLayoutDirection_block_invoke()
{
  v0 = +[SUUIClientContext defaultContext];
  _SUUISetShouldReverseLayoutDirectionWithContext(v0);
}

void _SUUISetShouldReverseLayoutDirectionWithContext(void *a1)
{
  v16 = a1;
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [v1 BOOLForKey:@"SKForceRightToLeftWritingDirection"];

  if (v2)
  {
    shouldFlipForRTL = 1;
  }

  else
  {
    v3 = [MEMORY[0x277CCA8D8] mainBundle];
    v4 = [v3 infoDictionary];
    v5 = [v4 objectForKeyedSubscript:@"SKRespectClientUserInterfaceLayoutDirection"];
    v6 = [v5 BOOLValue];

    if (v6)
    {
      v7 = [MEMORY[0x277D75128] sharedApplication];
      v8 = [v7 keyWindow];
      v9 = [v8 semanticContentAttribute];

      shouldFlipForRTL = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:v9] == 1;
    }

    else
    {
      v10 = MEMORY[0x277CBEAF8];
      v11 = [v16 valueForConfigurationKey:@"locale"];
      v12 = [v10 localeWithLocaleIdentifier:v11];

      v13 = MEMORY[0x277D74248];
      v14 = [v12 objectForKey:*MEMORY[0x277CBE6C8]];
      v15 = [v13 defaultWritingDirectionForLanguage:v14];

      if (v15 == 1)
      {
        shouldFlipForRTL = 1;
      }
    }
  }
}

BOOL SUUIAllowsLandscapePhone()
{
  v0 = SUUIAllowsLandscapePhone_sValue;
  if (SUUIAllowsLandscapePhone_sValue == 255)
  {
    v1 = [MEMORY[0x277D759A0] mainScreen];
    [v1 _referenceBounds];
    SUUIAllowsLandscapePhone_sValue = v2 == 736.0;

    v0 = SUUIAllowsLandscapePhone_sValue;
  }

  return v0 != 0;
}

id SUUITabBarControllerGetMoreNavigationController(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 moreNavigationController];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_259CBC63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAMSBagClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!AppleMediaServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __AppleMediaServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2798FB5A8;
    v5 = 0;
    AppleMediaServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppleMediaServicesLibraryCore_frameworkLibrary)
  {
    __getAMSBagClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("AMSBag");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAMSBagClass_block_invoke_cold_1();
  }

  getAMSBagClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_259CBC924@<X0>(uint64_t *a1@<X8>)
{
  result = sub_259F95DE4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_259CBC950(uint64_t a1, uint64_t a2)
{
  v4 = sub_259F95CB4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_259CBC9BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_259F95CB4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_259CBCA2C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_259CBCA6C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_259CBCAB4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_259CBCAEC()
{
  MEMORY[0x25F849A70](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void SUUINavigationControllerWillShowViewController(void *a1, void *a2)
{
  v12 = a1;
  v3 = a2;
  v4 = [v12 lastOperation];
  if (v4 == 2)
  {
    v5 = [v12 disappearingViewController];
    v6 = v3;
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v5 = v3;
    v6 = [v12 disappearingViewController];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  v5 = v3;
  v7 = 0;
LABEL_7:
  v8 = [v12 navigationBar];
  v9 = [v8 _backdropViewLayerGroupName];

  v10 = [v5 SUUIPinnedHeaderView];
  [v10 setGroupName:v9];

  v11 = [v7 SUUIPinnedHeaderView];
  [v11 setGroupName:0];
}

void SUUINavigationControllerDidShowViewController(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 navigationBar];
  v6 = [v4 _backdropViewLayerGroupName];

  v5 = [v3 SUUIPinnedHeaderView];

  [v5 setGroupName:v6];
}

void __SUUIScrollViewSetKeyedContentInsets(void *a1, const void *a2, int a3, double a4, double a5, double a6, double a7)
{
  object = a1;
  v11 = objc_getAssociatedObject(object, a2);
  v12 = v11;
  if (v11)
  {
    [v11 UIEdgeInsetsValue];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v14 = *MEMORY[0x277D768C8];
    v16 = *(MEMORY[0x277D768C8] + 8);
    v18 = *(MEMORY[0x277D768C8] + 16);
    v20 = *(MEMORY[0x277D768C8] + 24);
  }

  [object contentInset];
  if (v16 != a5 || v14 != a4 || v20 != a7 || v18 != a6)
  {
    v39 = v23;
    v40 = v24;
    v37 = v18;
    v38 = v22;
    v28 = v16;
    v29 = v21;
    [object contentOffset];
    v35 = v31;
    v36 = v30;
    v41 = a4;
    v42 = a5;
    v32 = a4 - v14;
    v33 = a5 - v28 + v38;
    [object setContentInset:{v32 + v29, v33, a6 - v37 + v39, a7 - v20 + v40}];
    [object setScrollIndicatorInsets:{v32 + v29, v33, a6 - v37 + v39, a7 - v20 + v40}];
    if (a3)
    {
      [object setContentOffset:{v36, v35 - v32}];
    }

    v34 = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{v41, v42, a6, a7}];
    objc_setAssociatedObject(object, a2, v34, 1);
  }
}

double SUUILayoutGuideInsets(void *a1)
{
  v1 = a1;
  v2 = [v1 parentViewController];
  if (v2)
  {
    v3 = v1;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v4 = v2;

      v2 = [v4 parentViewController];

      v3 = v4;
      if (!v2)
      {
        goto LABEL_9;
      }
    }

    v4 = v3;
  }

  else
  {
    v4 = v1;
  }

LABEL_9:
  v5 = [v4 topLayoutGuide];
  [v5 length];
  v7 = v6;
  v8 = [v4 bottomLayoutGuide];
  [v8 length];

  return v7;
}

void sub_259CC38FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259CC3A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_259CC3C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259CC72F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_259CC76AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259CC8BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259CCBB4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_259CCC7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259CCCB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259CCDB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a58, 8);
  _Unwind_Resume(a1);
}

void sub_259CCEFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
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

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void __Block_byref_object_dispose__3(uint64_t a1)
{
}

{
}

void sub_259CCFF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_259CD1B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__2(uint64_t a1)
{
}

{
}

void sub_259CD1D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259CD2580(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_259CD2D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259CD3598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259CD4AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259CD517C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id location)
{
  objc_destroyWeak((v40 + 32));
  objc_destroyWeak((v41 - 248));
  _Unwind_Resume(a1);
}

void sub_259CD7FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259CD82F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259CDEAE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259CE0990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__4(uint64_t a1)
{
}

{
}

void sub_259CE2BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259CE6560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259CE7974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t SUUICardElementTypeForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"activity"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"billboard"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"editorial"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"programmed"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_259CE8D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__6(uint64_t a1)
{
}

{
}

BOOL SUUILocationIsAccurate(void *a1)
{
  v1 = a1;
  [v1 horizontalAccuracy];
  v3 = v2;
  v4 = [v1 timestamp];

  v5 = 0;
  if (v3 > 0.00000011920929 && v3 <= 5000.0)
  {
    if (v4)
    {
      [v4 timeIntervalSinceNow];
      v5 = v6 >= -30.0;
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

void sub_259CE9B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259CEE990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void SUUIStoreAssetResourceLoaderConfigureWithDelegate(void *a1, void *a2)
{
  v3 = a2;
  object = a1;
  [object setDelegate:v3 queue:MEMORY[0x277D85CD0]];
  objc_setAssociatedObject(object, _SUUIStoreAssetResourceLoaderDelegateAssociatedObjectKeyStrongDelegate, v3, 1);
}

void sub_259CEEFBC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_259CEFBD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259CEFF98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void SUUIGetImagesFromView(void *a1, void *a2, void *a3, double a4)
{
  v7 = a1;
  [v7 bounds];
  v29.width = v8;
  v29.height = v9;
  UIGraphicsBeginImageContextWithOptions(v29, 1, 0.0);
  v10 = [v7 layer];

  [v10 renderInContext:UIGraphicsGetCurrentContext()];
  v27 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  [v27 scale];
  v12 = v11;
  v13 = v27;
  v14 = [v27 CGImage];
  [v27 size];
  v30.size.width = v12 * v15;
  v30.origin.x = 0.0;
  v30.origin.y = 0.0;
  v30.size.height = v12 * a4;
  v16 = CGImageCreateWithImageInRect(v14, v30);
  v17 = [MEMORY[0x277D755B8] imageWithCGImage:v16 scale:objc_msgSend(v27 orientation:{"imageOrientation"), v12}];
  CGImageRelease(v16);
  if (a2)
  {
    v18 = v17;
    *a2 = v17;
  }

  v19 = v27;
  v20 = [v27 CGImage];
  [v27 size];
  v22 = v12 * v21;
  [v27 size];
  v31.size.height = v12 * (v23 - a4);
  v31.origin.x = 0.0;
  v31.origin.y = v12 * a4;
  v31.size.width = v22;
  v24 = CGImageCreateWithImageInRect(v20, v31);
  v25 = [MEMORY[0x277D755B8] imageWithCGImage:v24 scale:objc_msgSend(v27 orientation:{"imageOrientation"), v12}];
  CGImageRelease(v24);
  if (a3)
  {
    v26 = v25;
    *a3 = v25;
  }
}

id SUUINavigationItemsShallowCopy(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  if ([v1 count])
  {
    v3 = 0;
    do
    {
      v4 = [v1 objectAtIndex:v3];
      v5 = objc_alloc_init(MEMORY[0x277D757A8]);
      v6 = [v4 title];
      [v5 setTitle:v6];

      [v5 setHidesBackButton:{objc_msgSend(v4, "hidesBackButton")}];
      v7 = [v4 prompt];
      [v5 setPrompt:v7];

      [v5 setLeftItemsSupplementBackButton:{objc_msgSend(v4, "leftItemsSupplementBackButton")}];
      [v2 addObject:v5];

      ++v3;
    }

    while (v3 < [v1 count]);
  }

  return v2;
}

id SUUIStackedBarSpringAnimationForExpandCollapse(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = [v5 layer];
  [v6 position];
  v8 = v7;
  v10 = v9;

  [v5 frame];
  v12 = v8 + a2 - v11;
  [v5 frame];
  v14 = v10 + a3 - v13;
  v15 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"position"];
  [v15 setDamping:26.0];
  [v15 setDuration:1.0];
  [v15 setFillMode:*MEMORY[0x277CDA228]];
  [v15 setMass:1.0];
  [v15 setStiffness:250.0];
  v16 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
  [v15 setTimingFunction:v16];

  [v15 setVelocity:0.0];
  v17 = MEMORY[0x277CCAE60];
  v18 = [v5 layer];
  [v18 position];
  v19 = [v17 valueWithCGPoint:?];
  [v15 setFromValue:v19];

  v20 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v12, v14}];
  [v15 setToValue:v20];

  v21 = [v5 layer];
  [v21 addAnimation:v15 forKey:@"ExpandCollapse"];

  v22 = [v5 layer];

  [v22 setPosition:{v12, v14}];

  return v15;
}

void sub_259CFAA04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259CFC368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259CFC630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SUUIPopoverBackdropViewForView(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v3 = 0;
    do
    {
      v4 = v2;

      v2 = [v4 superview];

      v3 = v4;
    }

    while (v2);
  }

  else
  {
    v4 = 0;
  }

  objc_opt_class();
  v5 = __ChildViewWithClass(v4);
  objc_opt_class();
  v6 = __ChildViewWithClass(v5);

  return v6;
}

id __ChildViewWithClass(void *a1)
{
  v1 = [a1 subviews];
  v2 = [v1 mutableCopy];

  v3 = [v2 count];
  if (v3 < 1)
  {
LABEL_7:
    v6 = 0;
  }

  else
  {
    v4 = v3;
    v5 = 0;
    while (1)
    {
      v6 = [v2 objectAtIndex:v5];
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v7 = [v6 subviews];
      if ([v7 count])
      {
        [v2 addObjectsFromArray:v7];
        v4 = [v2 count];
      }

      if (++v5 >= v4)
      {
        goto LABEL_7;
      }
    }
  }

  return v6;
}

uint64_t CGColorSpaceGetSRGB()
{
  if (CGColorSpaceGetSRGB::sOnceToken != -1)
  {
    CGColorSpaceGetSRGB_cold_1();
  }

  return CGColorSpaceGetSRGB::sSpace;
}

void __CGColorSpaceGetSRGB_block_invoke()
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v0 = getkColorSyncSRGBProfileSymbolLoc(void)::ptr;
  v15 = getkColorSyncSRGBProfileSymbolLoc(void)::ptr;
  if (!getkColorSyncSRGBProfileSymbolLoc(void)::ptr)
  {
    v1 = ColorSyncLibrary();
    v13[3] = dlsym(v1, "kColorSyncSRGBProfile");
    getkColorSyncSRGBProfileSymbolLoc(void)::ptr = v13[3];
    v0 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v0)
  {
    __CGColorSpaceGetSRGB_block_invoke_cold_1();
LABEL_16:
    __CGColorSpaceGetSRGB_block_invoke_cold_1();
    goto LABEL_17;
  }

  v2 = *v0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v3 = getColorSyncProfileCreateWithNameSymbolLoc(void)::ptr;
  v15 = getColorSyncProfileCreateWithNameSymbolLoc(void)::ptr;
  if (!getColorSyncProfileCreateWithNameSymbolLoc(void)::ptr)
  {
    v4 = ColorSyncLibrary();
    v13[3] = dlsym(v4, "ColorSyncProfileCreateWithName");
    getColorSyncProfileCreateWithNameSymbolLoc(void)::ptr = v13[3];
    v3 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v3)
  {
    goto LABEL_16;
  }

  v5 = v3(v2);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v7 = getColorSyncProfileCopyDataSymbolLoc(void)::ptr;
  v15 = getColorSyncProfileCopyDataSymbolLoc(void)::ptr;
  if (!getColorSyncProfileCopyDataSymbolLoc(void)::ptr)
  {
    v8 = ColorSyncLibrary();
    v13[3] = dlsym(v8, "ColorSyncProfileCopyData");
    getColorSyncProfileCopyDataSymbolLoc(void)::ptr = v13[3];
    v7 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v7)
  {
LABEL_17:
    v11 = __CGColorSpaceGetSRGB_block_invoke_cold_1();
    _Block_object_dispose(&v12, 8);
    _Unwind_Resume(v11);
  }

  v9 = v7(v6, 0);
  if (v9)
  {
    v10 = v9;
    CGColorSpaceGetSRGB::sSpace = MEMORY[0x25F848730]();
    CFRelease(v10);
  }

  CFRelease(v6);
}

void *___ZL42getColorSyncProfileCreateWithNameSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = ColorSyncLibrary();
  result = dlsym(v2, "ColorSyncProfileCreateWithName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getColorSyncProfileCreateWithNameSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ColorSyncLibrary(void)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!ColorSyncLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 0x40000000;
    v3[3] = ___ZL20ColorSyncLibraryCorePPc_block_invoke;
    v3[4] = &__block_descriptor_tmp_4;
    v3[5] = v3;
    v4 = xmmword_2798F6B88;
    v5 = 0;
    ColorSyncLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = ColorSyncLibraryCore(char **)::frameworkLibrary;
  v1 = v3[0];
  if (!ColorSyncLibraryCore(char **)::frameworkLibrary)
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

uint64_t ___ZL20ColorSyncLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  ColorSyncLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void *___ZL33getkColorSyncSRGBProfileSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = ColorSyncLibrary();
  result = dlsym(v2, "kColorSyncSRGBProfile");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkColorSyncSRGBProfileSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL36getColorSyncProfileCopyDataSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = ColorSyncLibrary();
  result = dlsym(v2, "ColorSyncProfileCopyData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getColorSyncProfileCopyDataSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_259D02050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double *__SK_RGBtoHSV(double *result, double *a2, double *a3, double a4, double a5, double a6)
{
  if (a4 >= a5)
  {
    v6 = a4;
  }

  else
  {
    v6 = a5;
  }

  if (v6 < a6)
  {
    v6 = a6;
  }

  v7 = v6;
  v8 = v7;
  *a3 = v7;
  if (v7 == 0.0)
  {
    *result = NAN;
    *a2 = 0.0;
    *a3 = 0.0;
  }

  else
  {
    if (a4 <= a5)
    {
      v9 = a4;
    }

    else
    {
      v9 = a5;
    }

    if (v9 > a6)
    {
      v9 = a6;
    }

    v10 = v9;
    v11 = v7 - v10;
    *a2 = (v11 / v7);
    v12 = v11;
    if (v8 == a4)
    {
      v13 = (a5 - a6) / v12;
    }

    else
    {
      v14 = v8 == a5;
      v15 = (a4 - a5) / v12 + 4.0;
      v13 = (a6 - a4) / v12 + 2.0;
      if (!v14)
      {
        v13 = v15;
      }
    }

    v16 = v13 * 60.0;
    if (v16 < 0.0)
    {
      v16 = v16 + 360.0;
    }

    *result = v16;
  }

  return result;
}

void sub_259D0503C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259D05CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259D085D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259D08B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259D0987C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259D0A244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259D0AFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259D0BD94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259D0D5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SUUIPageComponentClassForComponentType(uint64_t a1)
{
  if ((a1 - 1) > 0x1A)
  {
    v2 = 0;
  }

  else
  {
    v2 = objc_opt_class();
  }

  return v2;
}

uint64_t SUUIPageComponentTypeForBlockType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"accountButtons"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"counter"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"divider"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"editorial"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"expand"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"flowcase"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"gallery"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"grid"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"lockup"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"media"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"popup"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"quicklinks"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"row"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"showcase"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"spacer"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"swoosh"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"tabs"])
  {
    v2 = 11;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SUUIPageComponentTypeForFeaturedContentKind(uint64_t a1)
{
  if ((a1 - 258) <= 0x2F)
  {
    if (((1 << (a1 - 2)) & 0xC0000000040CLL) != 0)
    {
      return 15;
    }

    if (a1 == 258)
    {
      return 18;
    }

    if (a1 == 266)
    {
      return 12;
    }
  }

  if (a1 == 257)
  {
    return 10;
  }

  else
  {
    return 0;
  }
}

uint64_t SUUIPageComponentFontWeightForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"light"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"medium"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_259D10C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259D10F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);
  _Unwind_Resume(a1);
}

void sub_259D132BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259D13574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259D14450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259D17B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259D189FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_259D1CDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t (*SUUIMetricsLaunchApplicationWithIdentifier(uint64_t a1, uint64_t a2))(uint64_t, uint64_t)
{
  v4 = SUUISpringBoardServicesFramework();
  result = SUUIWeakLinkedSymbolForString("SBSLaunchApplicationWithIdentifier", v4);
  if (result)
  {

    return result(a1, a2);
  }

  return result;
}

uint64_t (*SUUIMetricsLaunchApplicationWithIdentifierAndURLAndLaunchOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)
{
  v10 = SUUISpringBoardServicesFramework();
  result = SUUIWeakLinkedSymbolForString("SBSLaunchApplicationWithIdentifierAndURLAndLaunchOptions", v10);
  if (result)
  {

    return result(a1, a2, a3, a4, a5);
  }

  return result;
}

id SUUIMetricsNavigationTypeFromNavigationControllerOperation(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = MEMORY[0x277D6A4C0];
LABEL_5:
    v3 = *v2;

    return v3;
  }

  if (a1 == 2)
  {
    v2 = MEMORY[0x277D6A4B8];
    goto LABEL_5;
  }

  v3 = 0;

  return v3;
}

void SUUIMetricsOpenSensitiveURL(void *a1, void *a2)
{
  v9 = a1;
  v3 = MEMORY[0x277D75128];
  v4 = a2;
  v5 = [v3 sharedApplication];
  v6 = [v5 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 application:v5 recordExitMetricsEventWithURL:v9];
  }

  v7 = SUUIMobileCoreServicesFramework();
  v8 = [SUUIWeakLinkedClassForString(&cfstr_Lsapplicationw.isa v7)];
  [v8 openSensitiveURL:v9 withOptions:v4];
}

void SUUIMetricsOpenURL(void *a1)
{
  v3 = a1;
  v1 = [MEMORY[0x277D75128] sharedApplication];
  v2 = [v1 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 application:v1 recordExitMetricsEventWithURL:v3];
  }

  [v1 openURL:v3 options:MEMORY[0x277CBEC10] completionHandler:0];
}

void SUUIMetricsSetClickEventPositionWithPoint(void *a1, double a2, double a3)
{
  v5 = MEMORY[0x277D759A0];
  v6 = a1;
  v7 = [v5 mainScreen];
  [v7 scale];
  v9 = v8;

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:(a2 * v9)];
  [v6 setPositionX:v10];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:(a3 * v9)];
  [v6 setPositionY:v11];
}

void SUUIMetricsSetClickEventPositionWithView(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v8 = a1;
    [v3 bounds];
    [v3 convertRect:0 toView:?];
    v5 = v4;
    v7 = v6;

    SUUIMetricsSetClickEventPositionWithPoint(v8, v5, v7);
  }
}

__CFString *SUUIMetricsWindowOrientationForInterfaceOrientation(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return off_2798F7398[a1 - 1];
  }
}

id SUUIColorWithHTMLCode(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  if (v2 == 8 || v2 == 6)
  {
    v4 = v2;
    v5 = [v1 substringWithRange:{0, 2}];
    v6 = SUUIHexValueWithString(v5);

    v7 = [v1 substringWithRange:{2, 2}];
    v8 = SUUIHexValueWithString(v7);

    v9 = [v1 substringWithRange:{4, 2}];
    v10 = SUUIHexValueWithString(v9);

    if (v4 == 8)
    {
      v11 = [v1 substringWithRange:{6, 2}];
      v12 = SUUIHexValueWithString(v11);
    }

    else
    {
      v12 = 255;
    }

    v13 = 0;
    if (v6 <= 0xFF && v10 <= 0xFF && v8 <= 0xFF && v12 <= 0xFF)
    {
      v13 = [MEMORY[0x277D75348] colorWithRed:v6 / 255.0 green:v8 / 255.0 blue:v10 / 255.0 alpha:v12 / 255.0];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

BOOL SUUIColorSchemeStyleForColor(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v9 = 0;
    v10 = 0.0;
    v8 = 0;
    if ([v1 getHue:&v9 saturation:&v8 brightness:&v10 alpha:0])
    {
      v3 = v10 < 0.5;
    }

    else
    {
      v7 = 0.0;
      v4 = [v2 getWhite:&v7 alpha:0];
      v5 = 2;
      if (v7 < 0.5)
      {
        v5 = 3;
      }

      if (v4)
      {
        v3 = v5;
      }

      else
      {
        v3 = 0;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id SUUIBorderColorWithBackgroundColor(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = SUUIColorSchemeStyleForColor(v1);
    if (v3 > 1)
    {
      if (v3 != 2)
      {
        goto LABEL_4;
      }
    }

    else if (v3)
    {
LABEL_4:
      v4 = MEMORY[0x277D75348];
      v5 = 0.15;
      v6 = 1.0;
      goto LABEL_7;
    }
  }

  v4 = MEMORY[0x277D75348];
  v5 = 0.2;
  v6 = 0.0;
LABEL_7:
  v7 = [v4 colorWithWhite:v6 alpha:v5];

  return v7;
}

id SUUIColorForStyleWithBrightness(void *a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  if (a2 != 3)
  {
    a6 = 0.0;
  }

  if (a2 != 2)
  {
    a5 = a6;
  }

  if (a2 != 1)
  {
    a4 = 0.0;
  }

  if (a2)
  {
    a3 = a4;
  }

  if (a2 > 1)
  {
    a3 = a5;
  }

  return SUUIColorByAdjustingBrightness(a1, a3);
}

id SUUIColorByAdjustingBrightness(void *a1, float a2)
{
  v3 = a1;
  v11 = 0.0;
  v12 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  if (![v3 getHue:&v12 saturation:&v11 brightness:&v10 alpha:&v9] || (objc_msgSend(MEMORY[0x277D75348], "colorWithHue:saturation:brightness:alpha:", v12, v11, v10 + a2, v9), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = 0.0;
    v8 = 0.0;
    if (([v3 getWhite:&v8 alpha:&v7] & 1) == 0 || (objc_msgSend(MEMORY[0x277D75348], "colorWithWhite:alpha:", v8 + a2, v7), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v4 = v3;
    }
  }

  v5 = v4;

  return v5;
}

id SUUIColorForStyleWithAlpha(void *a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  if (a2 != 3)
  {
    a6 = 0.0;
  }

  if (a2 != 2)
  {
    a5 = a6;
  }

  if (a2 != 1)
  {
    a4 = 0.0;
  }

  if (a2)
  {
    a3 = a4;
  }

  if (a2 > 1)
  {
    a3 = a5;
  }

  return SUUIColorWithAlpha(a1, a3);
}

id SUUIColorWithAlpha(void *a1, float a2)
{
  v3 = a1;
  v9 = 0.0;
  v10 = 0.0;
  v8 = 0.0;
  if (![v3 getHue:&v10 saturation:&v9 brightness:&v8 alpha:0] || (objc_msgSend(MEMORY[0x277D75348], "colorWithHue:saturation:brightness:alpha:", v10, v9, v8, a2), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = 0.0;
    if (([v3 getWhite:&v7 alpha:0] & 1) == 0 || (objc_msgSend(MEMORY[0x277D75348], "colorWithWhite:alpha:", v7, a2), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v4 = v3;
    }
  }

  v5 = v4;

  return v5;
}

uint64_t SUUIHexValueWithString(void *a1)
{
  v5 = 0;
  v1 = MEMORY[0x277CCAC80];
  v2 = a1;
  v3 = [[v1 alloc] initWithString:v2];

  LODWORD(v2) = [v3 scanHexInt:&v5];
  if (v2)
  {
    return v5;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

void sub_259D20E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259D21DE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_259D2225C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259D26114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__15(uint64_t a1)
{
}

{
}

uint64_t SUUIImageTreatmentForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"app"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"artist-circle"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"brick"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"evergreen"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"left-to-right-linear-gradient"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"parallax"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"product"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"radio"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"radial-gradient"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"tint"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"uber"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"uber-banner"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"watch-app"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"watch-product"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"voyager-app"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"tv-app"])
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void SUUIViewSetBottomBorderColor(void *a1, void *a2)
{
  v11 = a1;
  v3 = a2;
  v4 = [v11 viewWithTag:1397441090];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v6 = [MEMORY[0x277D759A0] mainScreen];
      [v6 scale];
      v8 = 1.0 / v7;

      [v11 bounds];
      v5 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, v9 - v8, v10, v8}];
      [v5 setAutoresizingMask:10];
      [v5 setTag:1397441090];
      [v11 addSubview:v5];
    }

    [v5 setBackgroundColor:v3];
  }

  else
  {
    [v4 removeFromSuperview];
  }
}

void SUUIViewSetTopBorderColor(void *a1, void *a2)
{
  v10 = a1;
  v3 = a2;
  v4 = [v10 viewWithTag:1397445698];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v6 = [MEMORY[0x277D759A0] mainScreen];
      [v6 scale];
      v8 = 1.0 / v7;

      [v10 bounds];
      v5 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, v9, v8}];
      [v5 setAutoresizingMask:2];
      [v5 setTag:1397445698];
      [v10 addSubview:v5];
    }

    [v5 setBackgroundColor:v3];
  }

  else
  {
    [v4 removeFromSuperview];
  }
}

void sub_259D2B47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_259D2C294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SUUIViewElementDateWithString(void *a1)
{
  v1 = a1;
  if (!SUUIViewElementDateWithString_sInputFormatter1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CCA968]);
    v3 = SUUIViewElementDateWithString_sInputFormatter1;
    SUUIViewElementDateWithString_sInputFormatter1 = v2;

    [SUUIViewElementDateWithString_sInputFormatter1 setDateFormat:@"yyyy-MM-dd"];
    [SUUIViewElementDateWithString_sInputFormatter1 setLenient:1];
    v4 = SUUIViewElementDateWithString_sInputFormatter1;
    v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US"];
    [v4 setLocale:v5];
  }

  if (!SUUIViewElementDateWithString_sInputFormatter2)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCA968]);
    v7 = SUUIViewElementDateWithString_sInputFormatter2;
    SUUIViewElementDateWithString_sInputFormatter2 = v6;

    [SUUIViewElementDateWithString_sInputFormatter2 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
    [SUUIViewElementDateWithString_sInputFormatter2 setLenient:1];
    v8 = SUUIViewElementDateWithString_sInputFormatter2;
    v9 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US"];
    [v8 setLocale:v9];
  }

  if (!SUUIViewElementDateWithString_sInputFormatter3)
  {
    v10 = objc_alloc_init(MEMORY[0x277CCA968]);
    v11 = SUUIViewElementDateWithString_sInputFormatter3;
    SUUIViewElementDateWithString_sInputFormatter3 = v10;

    [SUUIViewElementDateWithString_sInputFormatter3 setDateFormat:@"yyyy-MM-dd'T'hh:mm:ss'Z'"];
    [SUUIViewElementDateWithString_sInputFormatter3 setLenient:1];
    v12 = SUUIViewElementDateWithString_sInputFormatter3;
    v13 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US"];
    [v12 setLocale:v13];
  }

  v14 = [SUUIViewElementDateWithString_sInputFormatter1 dateFromString:v1];
  if (!v14)
  {
    v14 = [SUUIViewElementDateWithString_sInputFormatter2 dateFromString:v1];
    if (!v14)
    {
      v14 = [SUUIViewElementDateWithString_sInputFormatter3 dateFromString:v1];
    }
  }

  v15 = v14;

  return v15;
}

void SUUIViewElementTextDeadlockFix(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 appContext];
  if (v4)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __SUUIViewElementTextDeadlockFix_block_invoke;
    v11[3] = &unk_2798F7538;
    v5 = &v12;
    v12 = v3;
    v6 = v3;
    [v4 evaluate:v11 completionBlock:0];
  }

  else
  {
    v7 = dispatch_get_global_queue(-32768, 0);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __SUUIViewElementTextDeadlockFix_block_invoke_2;
    v9[3] = &unk_2798F5BE8;
    v5 = &v10;
    v10 = v3;
    v8 = v3;
    dispatch_async(v7, v9);
  }
}

void sub_259D2FBB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_259D30FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_259D3158C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_259D318D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259D3383C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259D347DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259D356F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259D364EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__17(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_259D37B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2_0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id SUUIResourceLoaderGetNameForObject(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v1 stringWithFormat:@"%@:%p", v4, v2];

  return v5;
}

void sub_259D38728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259D3CA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259D3D010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259D3E584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259D4524C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259D45434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259D45960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 232), 8);
  _Block_object_dispose((v38 - 200), 8);
  _Block_object_dispose((v38 - 168), 8);
  _Unwind_Resume(a1);
}

void sub_259D46084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Block_object_dispose((v31 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t SUUIGetLayoutProperties(uint64_t result, uint64_t a2, void *a3, double *a4)
{
  if (a2 < 1)
  {
    v6 = 0.0;
  }

  else
  {
    v4 = 0;
    v5 = result + 24;
    v6 = 0.0;
    v7 = 0.0;
    do
    {
      if (*(v5 + 16))
      {
        v8 = v7 + v6;
        v9 = *v5;
        v7 = *(v5 + 8);
        v11 = *(v5 - 16);
        v10 = *(v5 - 8);
        *(*a3 + 8 * v4) = v8 - v10;
        v6 = v8 + v11 - v9 - v10;
      }

      v5 += 48;
      ++v4;
    }

    while (a2 != v4);
  }

  *a4 = v6;
  return result;
}

double SUUIScaleSizeToFit(double a1, double a2, double a3, double a4)
{
  v4 = a1 / a3;
  v5 = a2 / a4;
  if (v4 < v5)
  {
    v5 = v4;
  }

  return ceil(a3 * v5);
}

void sub_259D4AC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259D4D570(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_259D4E288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259D4E5B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_259D4EFC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);
  _Unwind_Resume(a1);
}

void sub_259D55F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 192), 8);
  _Block_object_dispose((v37 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_259D589C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259D58D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259D59374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259D59678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

id SUUIStringFromProductLockupLayoutSizing(CGSize *a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = NSStringFromCGSize(a1[3]);
  v4 = NSStringFromCGSize(a1[4]);
  v5 = NSStringFromCGSize(a1[2]);
  v6 = NSStringFromCGSize(*a1);
  v7 = NSStringFromCGSize(a1[1]);
  v8 = [v2 stringWithFormat:@"{ Top-Left: %@, Top-Right: %@, Middle-Left: %@, Bottom-Left: %@, Bottom-Right: %@ }", v3, v4, v5, v6, v7];

  return v8;
}

void sub_259D59EC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_259D5A15C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_259D5F690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259D60B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_259D60CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259D6190C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259D62C24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_259D63F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259D64DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259D65368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259D6554C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_259D65BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 144), 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_259D669A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259D69034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__22(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_259D6950C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_259D69F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_259D6DAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259D6E2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259D6E6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259D6F394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259D70DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259D71030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259D72134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259D7B228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_259D7BEC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259D7C55C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259D7CF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259D7EBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__27(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t SUUITrackListColumnIdentifierForViewElement(void *a1)
{
  v1 = a1;
  v2 = [v1 elementType];
  v3 = 2;
  if (v2 > 79)
  {
    if (v2 > 137)
    {
      if (v2 != 138)
      {
        if (v2 != 141)
        {
          goto LABEL_22;
        }

        goto LABEL_12;
      }

      if (([v1 labelViewStyle] & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }
    }

    else if (v2 == 80)
    {
      v3 = 5;
    }

    else if (v2 == 90)
    {
      v4 = [v1 flattenedChildren];
      v5 = [v4 firstObject];
      v3 = SUUITrackListColumnIdentifierForViewElement();
    }
  }

  else
  {
    if (v2 > 11)
    {
      if ((v2 - 12) >= 2 && v2 != 50)
      {
        goto LABEL_22;
      }

LABEL_12:
      v3 = 1;
      goto LABEL_22;
    }

    v6 = 3;
    if (v2 != 9)
    {
      v6 = 2;
    }

    if (v2 == 8)
    {
      v3 = 0;
    }

    else
    {
      v3 = v6;
    }
  }

LABEL_22:

  return v3;
}

void sub_259D7F4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259D7F788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SUUIZoomingShelfMenuBarGetValidationInfoForViewElement(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a1;
  *a2 = xmmword_259FCB070;
  *(a2 + 16) = 0x7FFFFFFFFFFFFFFFLL;
  v3 = [v15 elementType] == 72;
  v4 = v15;
  if (v3)
  {
    v5 = [v15 children];
    if ([v5 count] != 2)
    {
LABEL_11:

      v4 = v15;
      goto LABEL_12;
    }

    v6 = [v5 firstObject];
    v7 = [v6 attributes];
    v8 = [v7 objectForKey:@"type"];
    v9 = [v8 isEqualToString:@"product"];

    v10 = [v5 lastObject];
    v11 = [v10 attributes];
    v12 = [v11 objectForKey:@"type"];
    v13 = [v12 isEqualToString:@"product"];

    if (!v9 || v13)
    {
      if (v9 & 1 | ((v13 & 1) == 0))
      {
LABEL_10:

        goto LABEL_11;
      }

      v14 = xmmword_259FCB090;
    }

    else
    {
      v14 = xmmword_259FCB080;
    }

    *a2 = 1;
    *(a2 + 8) = v14;
    goto LABEL_10;
  }

LABEL_12:
}

void sub_259D84858(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_259D84A60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_259D85404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259D85C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SUUIBadgeImageFromText(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__29;
  v19 = __Block_byref_object_dispose__29;
  v20 = 0;
  if (SUUIBadgeImageFromText_sOnce != -1)
  {
    SUUIBadgeImageFromText_cold_1();
  }

  if ([v5 length])
  {
    v7 = SUUIBadgeImageFromText_sBadgeImageQueue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __SUUIBadgeImageFromText_block_invoke_2;
    v10[3] = &unk_2798F88C8;
    v11 = v5;
    v12 = v6;
    v13 = &v15;
    v14 = a3;
    dispatch_sync(v7, v10);
  }

  v8 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v8;
}

void sub_259D875A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__29(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __SUUIBadgeImageFromText_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.iTunesStoreUI.SUUIBadgeImage", 0);
  v1 = SUUIBadgeImageFromText_sBadgeImageQueue;
  SUUIBadgeImageFromText_sBadgeImageQueue = v0;

  v2 = SUUIBadgeImageFromText_sBadgeImageQueue;
  v3 = dispatch_get_global_queue(0, 0);
  dispatch_set_target_queue(v2, v3);

  v4 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v5 = SUUIBadgeImageFromText_sBadgeImageCache;
  SUUIBadgeImageFromText_sBadgeImageCache = v4;

  v6 = SUUIBadgeImageFromText_sBadgeImageCache;

  return [v6 setCountLimit:10];
}

void __SUUIBadgeImageFromText_block_invoke_2(uint64_t a1)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) description];
  v5 = [v2 initWithFormat:@"%@:%@", v3, v4];

  v6 = [SUUIBadgeImageFromText_sBadgeImageCache objectForKey:v5];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v9 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
    v10 = *MEMORY[0x277D740C0];
    v24[0] = *MEMORY[0x277D740A8];
    v24[1] = v10;
    v11 = *(a1 + 40);
    v25[0] = v9;
    v25[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    [*(a1 + 32) sizeWithAttributes:v12];
    v14 = v13;
    v16 = v15;
    v17 = [MEMORY[0x277D759A0] mainScreen];
    [v17 scale];
    v19 = v18;
    v26.width = v14 + 6.0;
    v26.height = v16;
    UIGraphicsBeginImageContextWithOptions(v26, 0, v19);

    [*(a1 + 40) set];
    v20 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v14 + 6.0, v16, 1.0}];
    [v20 stroke];
    [*(a1 + 32) drawInRect:v12 withAttributes:{3.5, -0.5, v14, v16}];
    v21 = UIGraphicsGetImageFromCurrentImageContext();
    v22 = *(*(a1 + 48) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    UIGraphicsEndImageContext();
    if (*(a1 + 56) == 1)
    {
      [SUUIBadgeImageFromText_sBadgeImageCache setObject:*(*(*(a1 + 48) + 8) + 40) forKey:v5];
    }
  }
}

void sub_259D8AE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SUUIChartGetTitle(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = SUUIChartGetTitle_sChartIndexFormatter;
  if (!SUUIChartGetTitle_sChartIndexFormatter)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v9 = SUUIChartGetTitle_sChartIndexFormatter;
    SUUIChartGetTitle_sChartIndexFormatter = v8;

    [SUUIChartGetTitle_sChartIndexFormatter setNumberStyle:1];
    [SUUIChartGetTitle_sChartIndexFormatter setUsesGroupingSeparator:0];
    v7 = SUUIChartGetTitle_sChartIndexFormatter;
  }

  v10 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a3];
  v11 = [v7 stringFromNumber:v10];

  if (v5)
  {
    [v5 localizedStringForKey:@"CHART_ITEM_TITLE_FORMAT"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"CHART_ITEM_TITLE_FORMAT" inBundles:0];
  }
  v12 = ;
  v13 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v12 validFormatSpecifiers:@"%@%@" error:0, v11, v6];

  return v13;
}

void sub_259D919DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259D92D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__31(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259D963BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__32(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259D97B5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_259D97DFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_259D986F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259D98C44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_259D9B43C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259D9D020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259DA0B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__33(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259DA3330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259DA4490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259DA4824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259DA5100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259DA580C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259DAA608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259DAA88C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259DAACC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_259DACD94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_259DAD210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259DADEB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259DAE3BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SUUIStorePageItemsWithStorePlatformDictionary(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v6 && ([v5 objectForKey:v6], (v8 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v5, "objectForKey:", @"lockup"), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
  }

  else
  {
    v10 = [v5 allKeys];
    if ([v10 count] == 1)
    {
      v11 = [v10 objectAtIndex:0];
      v9 = [v5 objectForKey:v11];
    }

    else
    {
      v9 = 0;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v9 objectForKey:*MEMORY[0x277D6A3B0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __SUUIStorePageItemsWithStorePlatformDictionary_block_invoke;
      v14[3] = &unk_2798F8E50;
      v16 = a3;
      v15 = v7;
      [v12 enumerateKeysAndObjectsUsingBlock:v14];
    }
  }

  return v7;
}

void __SUUIStorePageItemsWithStorePlatformDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [objc_alloc(*(a1 + 40)) initWithLookupDictionary:v5];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{objc_msgSend(v7, "itemIdentifier")}];
    [*(a1 + 32) setObject:v7 forKey:v8];
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t SUUIStorePageTypeIsProductPage(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"software"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"mobileSoftwareBundle"];
  }

  return v2;
}

void sub_259DB2454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259DB2774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_259DB92D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259DB97B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_259DB99B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__35(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259DB9C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259DBC978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__36(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259DBD020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259DBD438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259DBD5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SUUIViewElementAccumulatePersonalizationLibraryItemsForChildren(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) personalizationLibraryItems];
        if (v9)
        {
          [v3 unionSet:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

void sub_259DBDF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void SUUIViewElementAccumulatePersonalizationLibraryItemsForChild(void *a1, void *a2)
{
  v4 = a1;
  v3 = [a2 personalizationLibraryItems];
  if (v3)
  {
    [v4 unionSet:v3];
  }
}

uint64_t SUUIViewElementAlignmentForStyle(void *a1)
{
  v1 = a1;
  v2 = [v1 textAlignment];
  if (v2 || (v2 = [v1 elementAlignment]) != 0)
  {
    v3 = v2;
  }

  else
  {
    v5 = [v1 elementPosition];
    if ((v5 - 1) > 8)
    {
      v3 = 0;
    }

    else
    {
      v3 = qword_259FCB1D0[v5 - 1];
    }
  }

  return v3;
}

id SUUIViewElementFontWithStyle(void *a1)
{
  v53[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 textStyle];
  if (!v2)
  {
    goto LABEL_25;
  }

  if (SUUIViewElementFontWithStyle_sOnce != -1)
  {
    SUUIViewElementFontWithStyle_cold_1();
  }

  value = 0;
  if (!NSMapMember(SUUIViewElementFontWithStyle_sTextStyleMap, v2, 0, &value))
  {
    goto LABEL_25;
  }

  v3 = [v1 textScale];
  v4 = v3;
  if (!v3)
  {
    v6 = value;
    goto LABEL_11;
  }

  if (![v3 isEqualToString:@"none"])
  {
    v39 = 0;
    v7 = NSMapMember(SUUIViewElementFontWithStyle_sTextScaleMap, v4, 0, &v39);
    v6 = value;
    if (v7)
    {
      v5 = SUUIFontLimitedPreferredFontForTextStyle(value, v39);
      goto LABEL_12;
    }

LABEL_11:
    v5 = SUUIFontPreferredFontForTextStyle(v6);
    goto LABEL_12;
  }

  v5 = SUUIFontForTextStyle(value);
LABEL_12:
  v8 = v5;
  v9 = [v1 fontWeight];
  v10 = v9;
  if (!v8 || !v9)
  {
    goto LABEL_24;
  }

  if ([v9 isEqualToString:@"medium"])
  {
    v52[0] = *MEMORY[0x277D74328];
    v11 = [v8 familyName];
    v52[1] = *MEMORY[0x277D74340];
    v53[0] = v11;
    v53[1] = @"Medium";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];

LABEL_16:
    v13 = [v8 fontDescriptor];
    v14 = [v13 fontDescriptorByAddingAttributes:v12];

    goto LABEL_22;
  }

  if ([v10 isEqualToString:@"bold"])
  {
    v15 = [v8 fontDescriptor];
    v12 = v15;
    v16 = 2;
  }

  else
  {
    if (![v10 isEqualToString:@"condensed-bold"])
    {
      if ([v10 isEqualToString:@"light"])
      {
        v50 = *MEMORY[0x277D74378];
        v51 = *MEMORY[0x277CC4868];
        v35 = MEMORY[0x277CBEAC0];
        v36 = &v51;
        v37 = &v50;
      }

      else if ([v10 isEqualToString:@"ultra-light"])
      {
        v48 = *MEMORY[0x277D74378];
        v49 = *MEMORY[0x277CC4898];
        v35 = MEMORY[0x277CBEAC0];
        v36 = &v49;
        v37 = &v48;
      }

      else
      {
        if (![v10 isEqualToString:@"thin"])
        {
          goto LABEL_24;
        }

        v46 = *MEMORY[0x277D74378];
        v47 = *MEMORY[0x277CC4888];
        v35 = MEMORY[0x277CBEAC0];
        v36 = &v47;
        v37 = &v46;
      }

      v12 = [v35 dictionaryWithObjects:v36 forKeys:v37 count:1];
      goto LABEL_16;
    }

    v15 = [v8 fontDescriptor];
    v12 = v15;
    v16 = 66;
  }

  v14 = [v15 fontDescriptorWithSymbolicTraits:v16];
LABEL_22:

  if (v14)
  {
    v17 = [MEMORY[0x277D74300] fontWithDescriptor:v14 size:0.0];

    v8 = v17;
  }

LABEL_24:

  if (v8)
  {
    goto LABEL_34;
  }

LABEL_25:
  [v1 fontSize];
  v19 = v18;
  if (v18 <= 0.00000011920929)
  {
    v8 = 0;
    goto LABEL_34;
  }

  v20 = [v1 fontWeight];
  if ([v20 isEqualToString:@"medium"])
  {
    v21 = MEMORY[0x277D74300];
    v22 = MEMORY[0x277D74410];
  }

  else if ([v20 isEqualToString:@"bold"])
  {
    v21 = MEMORY[0x277D74300];
    v22 = MEMORY[0x277D743F8];
  }

  else
  {
    if ([v20 isEqualToString:@"condensed-bold"])
    {
      v32 = [MEMORY[0x277D74300] systemFontOfSize:v19 weight:*MEMORY[0x277D743F8]];
      v33 = [v32 fontDescriptor];

      v34 = [v33 fontDescriptorWithSymbolicTraits:66];

      v8 = [MEMORY[0x277D74300] fontWithDescriptor:v34 size:0.0];

      goto LABEL_33;
    }

    if ([v20 isEqualToString:@"light"])
    {
      v21 = MEMORY[0x277D74300];
      v22 = MEMORY[0x277D74408];
    }

    else if ([v20 isEqualToString:@"ultra-light"])
    {
      v21 = MEMORY[0x277D74300];
      v22 = MEMORY[0x277D74438];
    }

    else
    {
      v38 = [v20 isEqualToString:@"thin"];
      v21 = MEMORY[0x277D74300];
      if (!v38)
      {
        v23 = [MEMORY[0x277D74300] systemFontOfSize:v19];
        goto LABEL_32;
      }

      v22 = MEMORY[0x277D74428];
    }
  }

  v23 = [v21 systemFontOfSize:v19 weight:*v22];
LABEL_32:
  v8 = v23;
LABEL_33:

LABEL_34:
  v24 = [v8 fontDescriptor];
  v44 = *MEMORY[0x277D74338];
  v25 = *MEMORY[0x277D74388];
  v41[0] = *MEMORY[0x277D74398];
  v41[1] = v25;
  v42[0] = &unk_286BBE1F0;
  v42[1] = &unk_286BBE208;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
  v43 = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
  v45 = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  v29 = [v24 fontDescriptorByAddingAttributes:v28];

  v30 = [MEMORY[0x277D74300] fontWithDescriptor:v29 size:0.0];

  return v30;
}

void __SUUIViewElementFontWithStyle_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:1282 capacity:0];
  v1 = SUUIViewElementFontWithStyle_sTextScaleMap;
  SUUIViewElementFontWithStyle_sTextScaleMap = v0;

  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextScaleMap, @"x-small", 1);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextScaleMap, @"small", 2);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextScaleMap, @"medium", 3);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextScaleMap, @"large", 4);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextScaleMap, @"x-large", 5);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextScaleMap, @"xx-large", 6);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextScaleMap, @"xxx-large", 7);
  v2 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:1282 capacity:0];
  v3 = SUUIViewElementFontWithStyle_sTextStyleMap;
  SUUIViewElementFontWithStyle_sTextStyleMap = v2;

  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextStyleMap, @"body", 1);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextStyleMap, @"body-short", 2);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextStyleMap, @"callout", 3);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextStyleMap, @"callout-short", 4);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextStyleMap, @"caption1", 5);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextStyleMap, @"caption1-medium-short", 6);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextStyleMap, @"caption1-short", 7);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextStyleMap, @"caption2", 8);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextStyleMap, @"caption2-short", 9);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextStyleMap, @"caption3", 0xA);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextStyleMap, @"footnote", 0xB);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextStyleMap, @"footnote-short", 0xC);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextStyleMap, @"headline", 0xD);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextStyleMap, @"headline-short", 0xE);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextStyleMap, @"subhead", 0x10);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextStyleMap, @"subhead-short", 0x11);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextStyleMap, @"subhead2", 0x12);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextStyleMap, @"subhead2-medium-short", 0x13);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextStyleMap, @"subhead2-short", 0x14);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextStyleMap, @"subhead2-tall", 0x15);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextStyleMap, @"super-headline-1", 0x16);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextStyleMap, @"super-headline-2", 0x17);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextStyleMap, @"super-headline-3", 0x18);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextStyleMap, @"super-headline-4", 0x19);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextStyleMap, @"super-headline-5", 0x1A);
  NSMapInsertKnownAbsent(SUUIViewElementFontWithStyle_sTextStyleMap, @"super-headline-5-medium-short", 0x1B);
  v4 = SUUIViewElementFontWithStyle_sTextStyleMap;

  NSMapInsertKnownAbsent(v4, @"super-headline-5-short", 0x1C);
}

id SUUIViewElementPlainColorWithIKColor(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 colorType] == 1)
  {
    v5 = v4;
  }

  else
  {
    v5 = [v3 color];
  }

  v6 = v5;

  return v6;
}

id SUUIViewElementPlainColorWithStyle(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 ikColor];
  v5 = SUUIViewElementPlainColorWithIKColor(v4, v3);

  return v5;
}

uint64_t SUUIViewElementNSTextAlignmentForIKElementAlignment(uint64_t a1)
{
  if ((a1 - 2) >= 4)
  {
    return 0;
  }

  else
  {
    return a1 - 1;
  }
}

double SUUIViewElementMarginForStyle(void *a1, char *a2)
{
  v3 = a1;
  v4 = [v3 valueForStyle:*MEMORY[0x277D1AFE8]];
  if (!v4)
  {
    v4 = [v3 valueForStyle:@"itml-margin"];
    if (!v4)
    {
      v8 = 0;
      v7 = *MEMORY[0x277D768C8];
      if (!a2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v5 = v4;
  [v4 UIEdgeInsetsValue];
  v7 = v6;

  v8 = 1;
  if (a2)
  {
LABEL_4:
    *a2 = v8;
  }

LABEL_5:

  return v7;
}

double SUUIViewElementPaddingForStyle(void *a1, char *a2)
{
  v3 = a1;
  v4 = [v3 valueForStyle:*MEMORY[0x277D1AFF0]];
  if (!v4)
  {
    v4 = [v3 valueForStyle:@"itml-padding"];
    if (!v4)
    {
      v8 = 0;
      v7 = *MEMORY[0x277D768C8];
      if (!a2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v5 = v4;
  [v4 UIEdgeInsetsValue];
  v7 = v6;

  v8 = 1;
  if (a2)
  {
LABEL_4:
    *a2 = v8;
  }

LABEL_5:

  return v7;
}

void sub_259DC102C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259DC3FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259DC471C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__37(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void SUUILockupStyleForDictionary(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  *a3 = xmmword_259FCB230;
  *(a3 + 16) = 2142;
  v7 = [v5 objectForKey:@"orientation"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = SUUILockupLayoutStyleForString(v7);
    *(a3 + 8) = v8;
    v9 = v8 < 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = [v5 objectForKey:@"artworkSize"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = SUUILockupSizeForString(v10);
    *a3 = v11;
  }

  else
  {
    v11 = 2;
  }

  v12 = [v5 objectForKey:@"fields"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v10;
    *(a3 + 16) = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v20 = v11;
      v21 = v9;
      v22 = v6;
      v16 = 0;
      v17 = *v25;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v24 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 |= SUUILockupFieldForString(v19);
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v15);
      *(a3 + 16) = v16;
      v6 = v22;
      v9 = v21;
      v11 = v20;
    }

    v10 = v23;
  }

  if (![v6 layoutStyle])
  {
    if (v11 != 4)
    {
      if (v11 != 5)
      {
        goto LABEL_20;
      }

      *a3 = 4;
    }

    if (!v9)
    {
      *(a3 + 8) = 0;
    }
  }

LABEL_20:
}

uint64_t SUUILockupFieldForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"artistName"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"artwork"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"buyButton"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"genreName"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"itemCount"])
  {
    v2 = 128;
  }

  else if ([v1 isEqualToString:@"name"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"releaseDate"])
  {
    v2 = 32;
  }

  else if ([v1 isEqualToString:@"userRating"])
  {
    v2 = 64;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id SUUILockupItemCountString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 itemKind] != 17)
  {
    v6 = 0;
    goto LABEL_9;
  }

  if (!SUUILockupItemCountString_sFormatter)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v8 = SUUILockupItemCountString_sFormatter;
    SUUILockupItemCountString_sFormatter = v7;

    [SUUILockupItemCountString_sFormatter setNumberStyle:1];
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = [SUUIClientContext localizedStringForKey:@"APP_BUNDLE_LOCKUP_APP_COUNT" inBundles:0];
    goto LABEL_8;
  }

  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = [v4 localizedStringForKey:@"APP_BUNDLE_LOCKUP_APP_COUNT"];
LABEL_8:
  v9 = v5;
  v10 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:{objc_msgSend(v3, "numberOfChildItems")}];
  v11 = MEMORY[0x277CCACA8];
  v12 = [SUUILockupItemCountString_sFormatter stringFromNumber:v10];
  v6 = [v11 stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, v12];

LABEL_9:

  return v6;
}

uint64_t SUUILockupLayoutStyleForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"V"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"V2"])
  {
    v2 = 3;
  }

  else
  {
    v2 = [v1 isEqualToString:@"H2"];
  }

  return v2;
}

uint64_t SUUILockupSizeForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"XS"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"S"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"L"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"XL"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"XXL"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

double SUUILockupStyleDefault@<D0>(uint64_t a1@<X8>)
{
  *&result = 2;
  *a1 = xmmword_259FCB230;
  *(a1 + 16) = 2142;
  return result;
}

void sub_259DC74BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_259DC7D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void SUUIScrollViewLayoutTopBackgroundColor(void *a1)
{
  v2 = a1;
  v1 = [v2 viewWithTag:1095975495];
  if (v1)
  {
    __LayoutTopBackgroundColor(v2, v1);
  }
}

void __LayoutTopBackgroundColor(void *a1, void *a2)
{
  v10 = a2;
  [a1 bounds];
  v4 = v3;
  v6 = v5;
  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 bounds];
  v9 = v8;

  [v10 setFrame:{v4, -v9, v6, v9}];
}

void SUUIScrollViewLayoutTopBackgroundColorForProductPage(void *a1, double a2)
{
  v11 = a1;
  v3 = [v11 viewWithTag:1095975495];
  if (v3)
  {
    [v11 bounds];
    v5 = v4;
    v7 = v6;
    v8 = [MEMORY[0x277D759A0] mainScreen];
    [v8 bounds];
    v10 = v9 + v9;

    [v3 setFrame:{v5, a2 - v10, v7, v10}];
  }
}

void SUUIScrollViewSetTopBackgroundColor(void *a1, void *a2)
{
  v6 = a1;
  v3 = a2;
  v4 = [v6 viewWithTag:1095975495];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x277D75D18]);
      [v5 setAutoresizingMask:2];
      [v5 setTag:1095975495];
      [v6 _addContentSubview:v5 atBack:1];
    }

    [v5 setBackgroundColor:v3];
    __LayoutTopBackgroundColor(v6, v5);
  }

  else
  {
    [v4 removeFromSuperview];
  }
}

void *__Block_byref_object_copy__39(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_259DD3BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_259DD3E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

id SUUITintedImage(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  [v7 size];
  v9 = v8;
  v11 = v10;
  [v7 scale];
  v13 = v12;
  v17.width = v9;
  v17.height = v11;
  UIGraphicsBeginImageContextWithOptions(v17, 0, v13);
  [v5 set];

  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = v9;
  v18.size.height = v11;
  UIRectFill(v18);
  [v7 drawInRect:22 blendMode:0.0 alpha:{0.0, v9, v11, 1.0}];

  [v6 drawInRect:{0.0, 0.0, v9, v11}];
  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v14;
}

BOOL SUUIImageExistsWithResourceName(void *a1)
{
  v1 = a1;
  if (!SUUIImageExistsWithResourceName_sBundle)
  {
    v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.MobileStoreUI"];
    v3 = SUUIImageExistsWithResourceName_sBundle;
    SUUIImageExistsWithResourceName_sBundle = v2;
  }

  v4 = 0;
  v5 = __iTunesStoreUIResources;
  do
  {
    v6 = *v5;
    v5 += 3;
    v7 = [v6 isEqualToString:v1];
    if (v4 > 0x94)
    {
      break;
    }

    ++v4;
  }

  while ((v7 & 1) == 0);
  if (v7)
  {
    goto LABEL_12;
  }

  v8 = 0;
  v9 = __UIKitResources;
  do
  {
    v10 = *v9;
    v9 += 3;
    v11 = [v10 isEqualToString:v1];
    if (v8 > 2)
    {
      break;
    }

    ++v8;
  }

  while (!v11);
  if ((v11 & 1) != 0 || ([__ExternalResources objectForKey:v1], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
LABEL_12:
    v13 = 1;
  }

  else
  {
    v15 = [__ExternalResourceManager imageForResourceName:v1];
    v13 = v15 != 0;
  }

  return v13;
}

id SUUIImageWithResourceName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [0 objectForKey:v1];
    if (!v2)
    {
      if (!SUUIImageWithResourceName_sBundle)
      {
        v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.MobileStoreUI"];
        v4 = SUUIImageWithResourceName_sBundle;
        SUUIImageWithResourceName_sBundle = v3;
      }

      v5 = &off_2798F9730;
      v6 = 150;
      while (![(__CFString *)*(v5 - 1) isEqualToString:v1])
      {
        v5 += 3;
        if (!--v6)
        {
          v7 = 0;
          v8 = 1;
          goto LABEL_12;
        }
      }

      v8 = *(v5 + 8);
      v7 = v8 ^ 1;
      v10 = [MEMORY[0x277D755B8] imageNamed:*v5 inBundle:SUUIImageWithResourceName_sBundle];
      if (v10)
      {
        v2 = v10;
        goto LABEL_22;
      }

LABEL_12:
      v11 = &off_2798FA540;
      v12 = 4;
      while (![(__CFString *)*(v11 - 1) isEqualToString:v1])
      {
        v11 += 3;
        if (!--v12)
        {
          goto LABEL_18;
        }
      }

      v2 = [MEMORY[0x277D755B8] kitImageNamed:*v11];
      if (v2)
      {
        goto LABEL_23;
      }

      v7 = 0;
      v8 = 1;
LABEL_18:
      v13 = [__ExternalResources objectForKey:v1];
      if (!v13 || (v14 = v13, v8 = [v13 alwaysTemplate], v7 = v8 ^ 1, v15 = MEMORY[0x277D755B8], objc_msgSend(v14, "imageName"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "bundle"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "imageNamed:inBundle:", v16, v17), v2 = objc_claimAutoreleasedReturnValue(), v17, v16, v14, !v2))
      {
        v18 = [MEMORY[0x277D755B8] imageNamed:v1 inBundle:SUUIImageWithResourceName_sBundle];
        if (!v18)
        {
          v2 = [__ExternalResourceManager imageForResourceName:v1];
          if (v2)
          {
            goto LABEL_27;
          }
        }

        v2 = v18;
      }

LABEL_22:
      if (v8)
      {
LABEL_23:
        v19 = v2;
        v20 = 2;
      }

      else
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_27;
        }

        v19 = v2;
        v20 = 1;
      }

      v21 = [v19 imageWithRenderingMode:v20];

      v2 = v21;
LABEL_27:
      v22 = 0;
      while (![(__CFString *)__SKImagesThatFlip[v22] isEqualToString:v1])
      {
        if (++v22 == 3)
        {
          goto LABEL_32;
        }
      }

      v23 = [v2 imageFlippedForRightToLeftLayoutDirection];

      v2 = v23;
    }

LABEL_32:
    v9 = v2;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void SUUIResourceImageSetRegisterWithBundleAlwaysTemplate(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [MEMORY[0x277CCACC8] mainThread];

  if (!v7)
  {
    SUUIResourceImageSetRegisterWithBundleAlwaysTemplate_cold_1();
  }

  v8 = [v5 count];
  if (v6 && v8)
  {
    if (!__ExternalResources)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v10 = __ExternalResources;
      __ExternalResources = v9;
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __SUUIResourceImageSetRegisterWithBundleAlwaysTemplate_block_invoke;
    v11[3] = &unk_2798FA5A0;
    v12 = v6;
    v13 = a3;
    [v5 enumerateKeysAndObjectsUsingBlock:v11];
  }
}

void __SUUIResourceImageSetRegisterWithBundleAlwaysTemplate_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_alloc_init(SUUIExternalResourceImage);
  [(SUUIExternalResourceImage *)v7 setImageName:v5];

  [(SUUIExternalResourceImage *)v7 setBundle:*(a1 + 32)];
  [(SUUIExternalResourceImage *)v7 setAlwaysTemplate:*(a1 + 40)];
  [__ExternalResources setObject:v7 forKey:v6];
}

void SUUISetExternalResourceManager(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCACC8] mainThread];

  if (!v2)
  {
    SUUISetExternalResourceManager_cold_1();
  }

  v3 = __ExternalResourceManager;
  __ExternalResourceManager = v1;
}

id SUUILinkArrowImage(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D755B8];
  v4 = a2;
  v5 = [v3 imageNamed:@"ChevronSeeAll" inBundle:a1];
  v6 = SUUITintedImage(v5, 0, v4);

  return v6;
}

id SUUILinkArrowButton(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = MEMORY[0x277D755B8];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = [v9 imageNamed:@"ChevronSeeAll" inBundle:a1];
  v15 = [MEMORY[0x277D75220] buttonWithType:0];
  [v15 setTitle:v13 forState:0];

  v16 = [v15 titleLabel];
  [v16 setFont:v10];

  [v15 setTitleColor:v12 forState:0];
  [v15 setTitleColor:v11 forState:1];
  v17 = [v14 _flatImageWithColor:v12];

  [v15 setImage:v17 forState:0];
  v18 = [v14 _flatImageWithColor:v11];

  [v15 setImage:v18 forState:1];
  [v14 size];
  [v15 setTitleEdgeInsets:{0.0, -(v19 + 5.0), 0.0, 0.0}];
  [v15 sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v21 = v20;
  v23 = v22;
  [v15 titleRectForContentRect:{0.0, 0.0, v20, v22}];
  [v15 setImageEdgeInsets:{1.0, v24 + 5.0, 0.0, 0.0}];
  [v15 setFrame:{0.0, 0.0, v21 + 5.0, v23}];

  return v15;
}

id SUUIMoreDisclosureImage(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D755B8];
  v4 = a2;
  v5 = [v3 imageNamed:@"MoreDisclosureTriangleMask" inBundle:a1];
  v6 = SUUITintedImage(v5, 0, v4);

  return v6;
}

void SUUIRangesForFormatString(void *a1, void *a2, void *a3, unint64_t *a4, unint64_t *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a1;
  v12 = [v11 rangeOfString:@"%1$@"];
  v14 = v13;
  v15 = [v11 rangeOfString:@"%2$@"];
  v17 = v16;

  v29 = v9;
  v18 = v10;
  if (v12 <= v15)
  {
    v19 = v15;
  }

  else
  {
    v14 = v17;
    v19 = v12;
  }

  if (v12 > v15)
  {
    v20 = v18;
  }

  else
  {
    v20 = v29;
  }

  if (v12 > v15)
  {
    v21 = v29;
  }

  else
  {
    v21 = v18;
  }

  if (v12 <= v15)
  {
    v15 = v12;
  }

  v22 = [v20 length];
  v23 = v19 - v14 + v22;
  v24 = [v21 length];
  if (v20 == v29)
  {
    v25 = v15;
  }

  else
  {
    v25 = v23;
  }

  if (v20 == v29)
  {
    v26 = v22;
  }

  else
  {
    v26 = v24;
  }

  if (v20 == v29)
  {
    v27 = v23;
  }

  else
  {
    v27 = v15;
  }

  *a4 = v25;
  a4[1] = v26;
  if (v20 == v29)
  {
    v28 = v24;
  }

  else
  {
    v28 = v22;
  }

  *a5 = v27;
  a5[1] = v28;
}

void sub_259DDA294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259DDA534(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_259DDAA20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259DDE7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259DDEFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259DE3080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259DE374C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__41(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259DE45C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259DE4934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259DE9794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_259DE9EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_259DEAB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259DEAEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__42(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259DEBB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ImageAnalyzer::ImageAnalyzer(ImageAnalyzer *this)
{
  ITColor::ITColor(this + 1);
  ITColor::ITColor(this + 2);
  ITColor::ITColor(this + 3);
  ITColor::ITColor(this + 4);
  ITColor::ITColor(this + 5);
  ITColor::ITColor(this + 6);
  ITColor::ITColor(this + 7);
  ITColor::ITColor(this + 8);
  ITColor::ITColor(this + 9);
  *this = 0;
  *(this + 1) = 0;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
}

void ImageAnalyzer::~ImageAnalyzer(ImageAnalyzer *this)
{
  v2 = *this;
  if (v2)
  {
    free(v2);
    *this = 0;
  }

  v3 = *(this + 1);
  if (v3)
  {
    free(v3);
    *(this + 1) = 0;
  }

  v4 = *(this + 43);
  if (v4)
  {
    *(this + 44) = v4;
    operator delete(v4);
  }

  v5 = *(this + 40);
  if (v5)
  {
    *(this + 41) = v5;
    operator delete(v5);
  }
}

uint64_t ImageAnalyzer::AnalyzeImage(ImageAnalyzer *this, CGContext *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = ImageAnalyzer::GenerateColorMaps(this, a2);
  if (result)
  {
    result = ImageAnalyzer::QuantizeColorMaps(this);
    if (result)
    {
      ImageAnalyzer::PickBackgroundColor(this);
      ImageAnalyzer::PickTextColors(this);
      ImageAnalyzer::DoPostImageAnalysis(this);
      return 1;
    }
  }

  return result;
}

uint64_t ImageAnalyzer::GenerateColorMaps(ImageAnalyzer *this, CGContextRef context)
{
  if (!context)
  {
    return 0;
  }

  BytesPerRow = CGBitmapContextGetBytesPerRow(context);
  Width = CGBitmapContextGetWidth(context);
  Height = CGBitmapContextGetHeight(context);
  result = 0;
  if (Height == 22 && Width == 22)
  {
    ITColor::ITColor(&v32);
    BitmapInfo = CGBitmapContextGetBitmapInfo(context);
    result = CGBitmapContextGetData(context);
    v29 = result;
    if (result)
    {
      result = malloc_type_calloc(0x1E4uLL, 0x20uLL, 0x1000040E0EAB150uLL);
      *this = result;
      if (result)
      {
        v11 = 0;
        v12 = BitmapInfo & 0x3000;
        v13 = 1;
        v14 = 24;
        do
        {
          v15 = 0;
          v31 = v14;
          do
          {
            v16 = v29 + BytesPerRow * v13 + v15;
            if (v12)
            {
              v17 = 4;
            }

            else
            {
              v17 = 7;
            }

            if (v12)
            {
              v18 = 5;
            }

            else
            {
              v18 = 6;
            }

            if (v12)
            {
              v19 = 6;
            }

            else
            {
              v19 = 5;
            }

            LOBYTE(v8) = *(v16 + v19);
            LOBYTE(v9) = *(v16 + v18);
            LOBYTE(v10) = *(v16 + v17);
            ITColor::ITColor(&v33, *&v8 / 255.0, *&v9 / 255.0, v10 / 255.0, 1.0);
            v32 = v33;
            HSVColor = ITColor::GetHSVColor(&v33);
            v22 = v21;
            v24 = v23;
            ITColor::GetLuminance(&v33);
            v25 = *this;
            v26 = (*this + v14);
            *(v26 - 3) = HSVColor;
            v27 = v25 + v11 + 8 * v15;
            *(v27 + 8) = v22;
            *(v27 + 16) = v24;
            *v26 = v28;
            v9 = *(this + 47);
            v8 = v28 + v9;
            *(this + 47) = v8;
            v15 += 4;
            v14 += 32;
          }

          while (v15 != 80);
          ++v13;
          v14 = v31 + 640;
          v11 += 640;
        }

        while (v13 != 21);
        *(this + 47) = v8 / 400.0;
        return 1;
      }
    }
  }

  return result;
}

uint64_t ImageAnalyzer::QuantizeColorMaps(ImageAnalyzer *this)
{
  result = malloc_type_calloc(0x190uLL, 8uLL, 0x100004000313F17uLL);
  *(this + 1) = result;
  if (result)
  {
    result = malloc_type_calloc(0x190uLL, 1uLL, 0x100004077774924uLL);
    if (result)
    {
      v3 = result;
      v4 = 0;
      v5 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v6 = 1;
      do
      {
        if ((v3[v5] & 1) == 0)
        {
          v7 = (*this + 32 * v5);
          v8 = ImageAnalyzer::WeightForPointOnEdge(result, v5 - 20 * (v5 / 0x14u), v5 / 0x14u);
          v23 = *v7;
          v24 = v7[1];
          v30[0] = *v7;
          v30[1] = v24;
          v31 = v5;
          v32 = v8;
          v34 = v4;
          std::vector<sortQuantizeColorEntry>::push_back[abi:ne200100](&v33, v30);
          *(*(this + 1) + 8 * v5) = v32;
          v3[v5] = 1;
          if (v5 <= 0x18E)
          {
            v9 = v6;
            do
            {
              if ((v3[v9] & 1) == 0)
              {
                v10 = *this + 32 * v9;
                v25 = *(v10 + 16);
                v26 = *v10;
                result = isCloseToColor(0, *&v23, *(&v23 + 1), *&v24, *(&v24 + 1), *v10, *(v10 + 8), *&v25, *(v10 + 24), 0.0799999982);
                if (result)
                {
                  v11 = ImageAnalyzer::WeightForPointOnEdge(result, v9 - 20 * (v9 / 0x14u), v9 / 0x14u);
                  v27[0] = v26;
                  v27[1] = v25;
                  v28 = v9;
                  v29 = v11;
                  ImageAnalyzer::AddQuantizeColorEntryToSet(v12, v27, &v33);
                  v3[v9] = 1;
                }
              }

              ++v9;
            }

            while (v9 != 400);
          }

          v4 = v33;
          if (v34 != v33)
          {
            *&v27[0] = CompareQuantizeSortcolor;
            std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*,false>(v33, v34, v27, 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v34 - v33)), 1);
            v4 = v33;
            v13 = *(v33 + 8);
            v14 = *(v33 + 5);
            v15 = 0xAAAAAAAAAAAAAAABLL * (v34 - v33);
            if (v15 >= 2)
            {
              v16 = v33 + 11;
              v17 = v15 - 1;
              do
              {
                v18 = *(v16 - 2);
                v19 = *v16;
                if ((v3[v18] & 1) == 0)
                {
                  v3[v18] = 1;
                }

                v14 = v14 + v19;
                v16 += 6;
                v20 = (*this + 32 * v13);
                v21 = v20[1];
                v22 = (*this + 32 * v18);
                *v22 = *v20;
                v22[1] = v21;
                --v17;
              }

              while (v17);
            }

            *(*(this + 1) + 8 * v13) = v14;
          }
        }

        ++v5;
        ++v6;
      }

      while (v5 != 400);
      free(v3);
      if (v4)
      {
        v34 = v4;
        operator delete(v4);
      }

      return 1;
    }
  }

  return result;
}

void sub_259DEC8DC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 128);
  if (v3)
  {
    *(v1 - 120) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ImageAnalyzer::PickBackgroundColor(ITColor *this)
{
  var3 = this[11].var3;
  v3 = ImageAnalyzer::DominantColors(this);
  v4 = *(*v3 + 16);
  *&this[1].var0 = **v3;
  *&this[1].var2 = v4;
  v5 = *&this[1].var2;
  *&v29.var0 = *&this[1].var0;
  *&v29.var2 = v5;
  if (ITColor::GetContrastWithLuminance(&v29, 0.180000007) < 1.29999995)
  {
    ContrastWithLuminance = ITColor::GetContrastWithLuminance(this + 1, 0.180000007);
    v7 = (*(v3 + 8) - *v3) >> 5;
    if (v7 >= 2)
    {
      v8 = ContrastWithLuminance;
      if (v7 == 2)
      {
        v9 = 2;
      }

      else
      {
        v9 = 3;
      }

      for (i = 1; i != v9; ++i)
      {
        v11 = *&this[10].var3;
        v12 = v11[i];
        if (v12 <= 0.0)
        {
          break;
        }

        v13 = *v11 / v12;
        if (v13 <= 0.9 || v13 >= 1.112)
        {
          break;
        }

        v14 = ITColor::GetContrastWithLuminance((*v3 + 32 * i), 0.180000007);
        if (v14 > v8)
        {
          v15 = (*v3 + 32 * i);
          v16 = v15[1];
          *&this[1].var0 = *v15;
          *&this[1].var2 = v16;
          v8 = v14;
        }
      }
    }
  }

  v17 = *&this[1].var2;
  *&v29.var0 = *&this[1].var0;
  *&v29.var2 = v17;
  if (ITColor::GetContrastWithLuminance(&v29, 0.180000007) < 1.29999995)
  {
    HSVColor = ITColor::GetHSVColor(this + 1);
    v28.f64[0] = v18.f64[0];
    v28.f64[1] = v19;
    if (var3 < 0.180000007 || (v25 = v19, v26 = v18.f64[0], v20 = *&this[1].var2, *&v29.var0 = *&this[1].var0, *&v29.var2 = v20, ITColor::GetLuminance(&v29), v19 = v25, v18.f64[0] = v26, v21 < 0.180000007))
    {
      v18.f64[1] = v19;
      v28 = vmulq_f64(v18, xmmword_259FCB330);
    }

    this[1].var0 = ITColor::CreateFromHSVColor(&HSVColor);
    this[1].var1 = v22;
    this[1].var2 = v23;
    this[1].var3 = v24;
  }
}

void ImageAnalyzer::PickTextColors(ITColor *this)
{
  v2 = ImageAnalyzer::DominantColors(this);
  v3 = *(v2 + 8) - *v2;
  v4 = v3 >> 5;
  v5 = &qword_259FCB000;
  if ((v3 >> 5) < 2)
  {
    v46 = 0;
    v45 = 0;
    goto LABEL_34;
  }

  v6 = v2;
  ContrastWithColor = ITColor::GetContrastWithColor((*v2 + 32), this + 1);
  v8 = 0;
  LOBYTE(v9) = 0;
  v10 = (v3 >> 5);
  v11 = 1;
  v96 = v4;
  v12 = v4;
  v13 = 1;
  v14 = 1;
  v15 = ContrastWithColor;
  do
  {
    v16 = (*v6 + v8);
    v17 = v16[1];
    *&v97.var0 = *v16;
    *&v97.var2 = v17;
    if (v9)
    {
      v9 = 1;
    }

    else
    {
      var0 = this[1].var0;
      var1 = this[1].var1;
      var2 = this[1].var2;
      var3 = this[1].var3;
      v99 = v97;
      v98.var0 = var0;
      v98.var1 = var1;
      v98.var2 = var2;
      v98.var3 = var3;
      v100 = v97;
      ITColor::GetLuminance(&v100);
      v23 = v22 >= 0.180000007;
      v100.var0 = var0;
      v100.var1 = var1;
      v100.var2 = var2;
      v100.var3 = var3;
      ITColor::GetLuminance(&v100);
      if (((v23 ^ (v24 >= 0.180000007)) & 1) != 0 && ITColor::GetContrastWithColor(&v99, &v98) >= 4.5999999)
      {
        ImageAnalyzer::EnhanceContrastWithColor(v97, this[1], 0.449999988);
        this[2].var0 = v25;
        this[2].var1 = v26;
        this[2].var2 = v27;
        this[2].var3 = v28;
        v9 = 1;
        v12 = v11;
      }

      else
      {
        v9 = 0;
      }
    }

    v29 = ITColor::GetContrastWithColor(&v97, this + 1);
    if (v29 > v15)
    {
      if (v29 <= ContrastWithColor)
      {
        v15 = v29;
        v14 = v11 - 1;
      }

      else
      {
        v15 = ContrastWithColor;
        ContrastWithColor = v29;
        v14 = v13;
        v13 = v11 - 1;
      }
    }

    ++v11;
    v8 += 32;
  }

  while (32 * v10 != v8);
  if (v12 >= v96)
  {
LABEL_19:
    LOBYTE(v34) = 0;
  }

  else
  {
    v30 = v12;
    v31 = 32 * v12;
    v32 = v30 - v10;
    v33 = v30 + 1;
    v34 = 1;
    while (1)
    {
      v35 = (*v6 + v31);
      v36 = *v35;
      v37 = v35[1];
      v38 = v35[2];
      v39 = v35[3];
      v101.var0 = *v35;
      v101.var1 = v37;
      v101.var2 = v38;
      v101.var3 = v39;
      if (contrastsEnoughWithColor(v101, this[1]))
      {
        break;
      }

      v34 = v33 < v10;
      v31 += 32;
      ++v33;
      if (__CFADD__(v32++, 1))
      {
        goto LABEL_19;
      }
    }

    v103.var0 = v36;
    v103.var1 = v37;
    v103.var2 = v38;
    v103.var3 = v39;
    ImageAnalyzer::EnhanceContrastWithColor(v103, this[1], 0.449999988);
    this[3].var0 = v47;
    this[3].var1 = v48;
    this[3].var2 = v49;
    this[3].var3 = v50;
    if (v9 & v34)
    {
      v46 = 1;
      v45 = 1;
      LODWORD(v4) = v96;
      v5 = &qword_259FCB000;
      goto LABEL_34;
    }
  }

  ITColor::ITColor(&v100);
  if (v9)
  {
    goto LABEL_23;
  }

  ImageAnalyzer::EnhanceContrastWithColor(*(*v6 + 32 * v13), this[1], 0.200000003);
  v100 = v102;
  if (contrastsEnoughWithColor(v102, this[1]))
  {
    ImageAnalyzer::EnhanceContrastWithColor(v100, this[1], 0.449999988);
    this[2].var0 = v41;
    this[2].var1 = v42;
    this[2].var2 = v43;
    this[2].var3 = v44;
LABEL_23:
    v45 = 1;
    goto LABEL_28;
  }

  v45 = 0;
LABEL_28:
  v5 = &qword_259FCB000;
  if (!v34)
  {
    ImageAnalyzer::EnhanceContrastWithColor(*(*v6 + 32 * v14), this[1], 0.200000003);
    v100 = v104;
    if (!contrastsEnoughWithColor(v104, this[1]))
    {
      v46 = 0;
      goto LABEL_33;
    }

    ImageAnalyzer::EnhanceContrastWithColor(v100, this[1], 0.449999988);
    this[3].var0 = v51;
    this[3].var1 = v52;
    this[3].var2 = v53;
    this[3].var3 = v54;
  }

  v46 = 1;
LABEL_33:
  LODWORD(v4) = v96;
LABEL_34:
  v55 = *&this[1].var2;
  *&v100.var0 = *&this[1].var0;
  *&v100.var2 = v55;
  ITColor::GetLuminance(&v100);
  v56 = &this[2];
  v58 = this[2].var1;
  v57 = this[2].var2;
  v59 = this[2].var3;
  v60 = *(v5 + 88);
  if (v61 >= v60)
  {
    v100.var0 = this[2].var0;
    v100.var1 = v58;
    v100.var2 = v57;
    v100.var3 = v59;
    ITColor::GetLuminance(&v100);
    if (v62 >= v60)
    {
      v45 = 0;
    }

    v63 = *&this[3].var2;
    *&v100.var0 = *&this[3].var0;
    *&v100.var2 = v63;
    ITColor::GetLuminance(&v100);
    if (v64 >= v60)
    {
      v46 = 0;
    }

    if (v45)
    {
      goto LABEL_56;
    }

LABEL_46:
    v68 = *&this[1].var2;
    *&v100.var0 = *&this[1].var0;
    *&v100.var2 = v68;
    ITColor::GetLuminance(&v100);
    if (v69 < v60)
    {
      if (v4)
      {
        v70 = this[1].var0;
        v71 = this[1].var1;
        v72 = this[1].var2;
        v73 = this[1].var3;
        v74 = &ITColor::kWhite;
        goto LABEL_51;
      }

      v79 = &ITColor::kWhite;
    }

    else
    {
      if (v4)
      {
        v70 = this[1].var0;
        v71 = this[1].var1;
        v72 = this[1].var2;
        v73 = this[1].var3;
        v74 = &ITColor::kBlack;
LABEL_51:
        BlendedColorWithFraction = ITColor::CreateBlendedColorWithFraction(v74, 0.0500000007, *&v70);
LABEL_55:
        this[2].var0 = BlendedColorWithFraction;
        this[2].var1 = v76;
        this[2].var2 = v77;
        this[2].var3 = v78;
        goto LABEL_56;
      }

      v79 = &ITColor::kBlack;
    }

    BlendedColorWithFraction = *v79;
    v76 = *(v79 + 1);
    v77 = *(v79 + 2);
    v78 = *(v79 + 3);
    goto LABEL_55;
  }

  v100.var0 = this[2].var0;
  v100.var1 = v58;
  v100.var2 = v57;
  v100.var3 = v59;
  ITColor::GetLuminance(&v100);
  if (v65 < v60)
  {
    v45 = 0;
  }

  v66 = *&this[3].var2;
  *&v100.var0 = *&this[3].var0;
  *&v100.var2 = v66;
  ITColor::GetLuminance(&v100);
  if (v67 < v60)
  {
    v46 = 0;
  }

  if ((v45 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_56:
  if (v46)
  {
    goto LABEL_67;
  }

  v80 = *&this[1].var2;
  *&v100.var0 = *&this[1].var0;
  *&v100.var2 = v80;
  ITColor::GetLuminance(&v100);
  if (v81 < v60)
  {
    if (v4)
    {
      v82 = this[1].var0;
      v83 = this[1].var1;
      v84 = this[1].var2;
      v85 = this[1].var3;
      v86 = &ITColor::kWhite;
      goto LABEL_62;
    }

    v91 = &ITColor::kWhite;
LABEL_65:
    v87 = *v91;
    v88 = *(v91 + 1);
    v89 = *(v91 + 2);
    v90 = *(v91 + 3);
    goto LABEL_66;
  }

  if (!v4)
  {
    v91 = &ITColor::kBlack;
    goto LABEL_65;
  }

  v82 = this[1].var0;
  v83 = this[1].var1;
  v84 = this[1].var2;
  v85 = this[1].var3;
  v86 = &ITColor::kBlack;
LABEL_62:
  v87 = ITColor::CreateBlendedColorWithFraction(v86, 0.100000001, *&v82);
LABEL_66:
  this[3].var0 = v87;
  this[3].var1 = v88;
  this[3].var2 = v89;
  this[3].var3 = v90;
LABEL_67:
  v92 = ITColor::GetContrastWithColor(this + 2, this + 1);
  if (ITColor::GetContrastWithColor(this + 3, this + 1) > v92)
  {
    v94 = *v56;
    v93 = *&this[2].var2;
    v95 = *&this[3].var2;
    *v56 = *&this[3].var0;
    *&this[2].var2 = v95;
    *&this[3].var0 = v94;
    *&this[3].var2 = v93;
  }
}

void ImageAnalyzer::DoPostImageAnalysis(ITColor *this)
{
  v2 = this + 1;
  this[4].var0 = ITColor::CreateBlendedColorWithFraction(this + 2, 0.200000003, this[1]);
  this[4].var1 = v3;
  this[4].var2 = v4;
  this[4].var3 = v5;
  this[5].var0 = ITColor::CreateBlendedColorWithFraction(this + 3, 0.200000003, *v2);
  this[5].var1 = v6;
  this[5].var2 = v7;
  this[5].var3 = v8;
  ImageAnalyzer::CalculateOneShadowColor(v9, this + 2, v2);
  this[6].var0 = v10;
  this[6].var1 = v11;
  this[6].var2 = v12;
  this[6].var3 = v13;
  ImageAnalyzer::CalculateOneShadowColor(v14, this + 3, v2);
  this[8].var0 = v15;
  this[8].var1 = v16;
  this[8].var2 = v17;
  this[8].var3 = v18;
  ImageAnalyzer::CalculateOneShadowColor(v19, this + 4, v2);
  this[7].var0 = v20;
  this[7].var1 = v21;
  this[7].var2 = v22;
  this[7].var3 = v23;
  ImageAnalyzer::CalculateOneShadowColor(v24, this + 5, v2);
  this[9].var0 = v25;
  this[9].var1 = v26;
  this[9].var2 = v27;
  this[9].var3 = v28;
}

double ImageAnalyzer::AddQuantizeColorEntryToSet(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  if (a3[1] == *a3)
  {
LABEL_5:

    std::vector<sortQuantizeColorEntry>::push_back[abi:ne200100](a3, a2);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    while (!isCloseToColor(0, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(v5 + v6), *(v5 + v6 + 8), *(v5 + v6 + 16), *(v5 + v6 + 24), 0.0799999982))
    {
      ++v7;
      v5 = *a3;
      v6 += 48;
      if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4) <= v7)
      {
        goto LABEL_5;
      }
    }

    v9 = *a3 + v6;
    result = *(a2 + 40) + *(v9 + 40);
    *(v9 + 40) = result;
  }

  return result;
}

BOOL isCloseToColor(ITColor *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  if (a1 && (a3 < 0.0500000007 && a7 < 0.0500000007 || a5 < 0.0149999997 && a9 < 0.0149999997))
  {
    v34.var0 = ITColor::CreateFromHSVDoubles(a1, a2, a3, a4);
    v34.var1 = v23;
    v34.var2 = v24;
    v34.var3 = v25;
    v33.var0 = ITColor::CreateFromHSVDoubles(v26, a6, a7, a8);
    v33.var1 = v27;
    v33.var2 = v28;
    v33.var3 = v29;
    if (ITColor::GetContrastWithColor(&v34, &v33) <= 1.65999997)
    {
      return 1;
    }
  }

  if (vabdd_f64(a3, a7) > a10 || vabdd_f64(a4, a8) > a10)
  {
    return 0;
  }

  if (vabdd_f64(a2, a6) <= a10)
  {
    return 1;
  }

  v31 = a2 + 1.0;
  if (a2 >= a10)
  {
    v31 = a2;
  }

  v32 = a6 + 1.0;
  if (a6 >= a10)
  {
    v32 = a6;
  }

  return vabdd_f64(v31, v32) <= a10;
}

void std::vector<sortQuantizeColorEntry>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      std::vector<sortQuantizeColorEntry>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<sortQuantizeColorEntry>>(a1, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    v15 = a2[2];
    *(v13 + 16) = a2[1];
    *(v13 + 32) = v15;
    *v13 = v14;
    v8 = 48 * v9 + 48;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    v4[1] = a2[1];
    v4[2] = v7;
    *v4 = v6;
    v8 = (v4 + 3);
  }

  *(a1 + 8) = v8;
}

double ImageAnalyzer::WeightForPointOnEdge(ImageAnalyzer *this, unsigned int a2, unsigned int a3)
{
  v3 = a2;
  if (a2 <= 4 && a3 <= 4)
  {
    v4 = a3;
    v5 = 4.00000006 - v3;
LABEL_4:
    v6 = 4.00000006 - v4;
    if (v5 < 1.0)
    {
      v5 = 1.0;
    }

    if (v6 < 1.0)
    {
      v6 = 1.0;
    }

    v7 = v5 * 0.75;
    v8 = v6 * 0.75;
    if (v8 <= v7)
    {
      v8 = v7;
    }

    goto LABEL_16;
  }

  if (a2 > 4)
  {
    if (a2 >= 0x10 && a3 <= 4)
    {
      v4 = a3;
      v5 = 15.9999999 - v3;
      goto LABEL_4;
    }

    v8 = 1.0;
    if (a2 < 0x10)
    {
      goto LABEL_16;
    }

    v9 = 15.9999999;
  }

  else
  {
    v9 = 4.00000006;
  }

  v10 = v9 - v3;
  if (v10 < 1.0)
  {
    v10 = 1.0;
  }

  v8 = v10 * 0.75;
LABEL_16:
  result = 1.0;
  if (v8 >= 1.0)
  {
    return v8;
  }

  return result;
}

uint64_t ImageAnalyzer::DominantColors(ImageAnalyzer *this)
{
  if (*(this + 41) == *(this + 40))
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    ITColor::ITColor(&v43);
    v3 = 0;
    for (i = 0; i != 3200; i += 8)
    {
      if (*(*(this + 1) + i) >= 1.0)
      {
        v42[0] = *(*(this + 1) + i);
        v43.var0 = ITColor::CreateFromHSVDoubles(v2, *(*this + v3), *(*this + v3 + 8), *(*this + v3 + 16));
        v43.var1 = v5;
        v43.var2 = v6;
        v43.var3 = v7;
        v44 = *(*this + v3 + 24);
        ImageAnalyzer::AddDominantColorEntryToSet(v8, v42, &v45);
      }

      v3 += 32;
    }

    v9 = v45;
    if (v46 != v45)
    {
      v48 = CompareSortColor;
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,false>(v45, v46, &v48, 126 - 2 * __clz((v46 - v45) >> 6), 1);
      std::vector<ITColor>::reserve(this + 40, (v46 - v45) >> 6);
      std::vector<double>::reserve(this + 43, (v46 - v45) >> 6);
      v9 = v45;
      if (v46 != v45)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          v12 = &v9[v10];
          v13 = *(this + 41);
          v14 = *(this + 42);
          if (v13 >= v14)
          {
            v17 = *(this + 40);
            v18 = (v13 - v17) >> 5;
            v19 = v18 + 1;
            if ((v18 + 1) >> 59)
            {
              std::vector<sortQuantizeColorEntry>::__throw_length_error[abi:ne200100]();
            }

            v20 = v14 - v17;
            if (v20 >> 4 > v19)
            {
              v19 = v20 >> 4;
            }

            if (v20 >= 0x7FFFFFFFFFFFFFE0)
            {
              v21 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v21 = v19;
            }

            if (v21)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<ITColor>>(this + 320, v21);
            }

            v22 = (32 * v18);
            v23 = v12[2];
            *v22 = v12[1];
            v22[1] = v23;
            v16 = 32 * v18 + 32;
            v24 = *(this + 40);
            v25 = *(this + 41) - v24;
            v26 = v22 - v25;
            memcpy(v22 - v25, v24, v25);
            v27 = *(this + 40);
            *(this + 40) = v26;
            *(this + 41) = v16;
            *(this + 42) = 0;
            if (v27)
            {
              operator delete(v27);
            }
          }

          else
          {
            v15 = v12[2];
            *v13 = v12[1];
            v13[1] = v15;
            v16 = (v13 + 2);
          }

          *(this + 41) = v16;
          v29 = *(this + 44);
          v28 = *(this + 45);
          if (v29 >= v28)
          {
            v31 = *(this + 43);
            v32 = v29 - v31;
            v33 = (v29 - v31) >> 3;
            v34 = v33 + 1;
            if ((v33 + 1) >> 61)
            {
              std::vector<sortQuantizeColorEntry>::__throw_length_error[abi:ne200100]();
            }

            v35 = v28 - v31;
            if (v35 >> 2 > v34)
            {
              v34 = v35 >> 2;
            }

            if (v35 >= 0x7FFFFFFFFFFFFFF8)
            {
              v36 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v36 = v34;
            }

            if (v36)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(this + 344, v36);
            }

            v37 = v33;
            v38 = (8 * v33);
            v39 = &v38[-v37];
            *v38 = *&v45[v10];
            v30 = v38 + 1;
            memcpy(v39, v31, v32);
            v40 = *(this + 43);
            *(this + 43) = v39;
            *(this + 44) = v30;
            *(this + 45) = 0;
            if (v40)
            {
              operator delete(v40);
            }
          }

          else
          {
            *v29 = *&v45[v10];
            v30 = v29 + 8;
          }

          *(this + 44) = v30;
          ++v11;
          v9 = v45;
          v10 += 4;
        }

        while (v11 < (v46 - v45) >> 6);
      }
    }

    if (v9)
    {
      v46 = v9;
      operator delete(v9);
    }
  }

  return this + 320;
}

void sub_259DED7D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL IsLightColor(_OWORD *a1)
{
  v1 = a1[1];
  *&v4.var0 = *a1;
  *&v4.var2 = v1;
  ITColor::GetLuminance(&v4);
  return v2 >= 0.180000007;
}

void ImageAnalyzer::EnhanceContrastWithColor(ITColor a1, ITColor a2, double a3)
{
  var3 = a2.var3;
  var2 = a2.var2;
  var1 = a2.var1;
  var0 = a2.var0;
  v16 = a1;
  HSVColor = ITColor::GetHSVColor(&v16);
  v9 = v8;
  v11 = v10;
  ITColor::GetLuminance(&v16);
  v16.var0 = var0;
  v16.var1 = var1;
  v16.var2 = var2;
  v16.var3 = var3;
  ITColor::GetLuminance(&v16);
  v13 = 1.0 - (1.0 - v11) * a3;
  if (v14 >= 0.180000007)
  {
    v13 = v11 * a3;
  }

  ITColor::CreateFromHSVDoubles(v12, HSVColor, v9, v13);
}

BOOL contrastsEnoughWithColor(ITColor a1, ITColor a2)
{
  var3 = a2.var3;
  var2 = a2.var2;
  var1 = a2.var1;
  var0 = a2.var0;
  v11 = a1;
  v10 = a2;
  v12 = a1;
  ITColor::GetLuminance(&v12);
  v7 = v6 >= 0.180000007;
  v12.var0 = var0;
  v12.var1 = var1;
  v12.var2 = var2;
  v12.var3 = var3;
  ITColor::GetLuminance(&v12);
  return v7 != v8 >= 0.180000007 && ITColor::GetContrastWithColor(&v11, &v10) >= 3.0999999;
}

BOOL ImageAnalyzer::GetColorLuminanceTypeOfColor(ImageAnalyzer *this, ITColor a2)
{
  v4 = a2;
  ITColor::GetLuminance(&v4);
  return v2 < 0.180000007;
}

void ImageAnalyzer::CalculateOneShadowColor(ImageAnalyzer *this, ITColor *a2, ITColor *a3)
{
  ITColor::ITColor(&v14);
  ITColor::GetLuminance(a2);
  v6 = v5;
  ITColor::GetLuminance(a3);
  if (v6 >= v7)
  {
    v8 = &ITColor::kBlack;
  }

  else
  {
    v8 = &ITColor::kWhite;
  }

  v9 = v8[1];
  *&v14.var0 = *v8;
  *&v14.var2 = v9;
  ITColor::GetLuminance(&v14);
  v11 = v10;
  ITColor::GetLuminance(a3);
  v13 = vabdd_f64(v11, v12);
  ITColor::CreateBlendedColorWithFraction(&v14, 1.0 - ((v13 + v13) * -0.599999994 + 1.0), *a3);
}

double ImageAnalyzer::GetBorderMarginInPixels(ImageAnalyzer *this)
{
  v1 = *(this + 3);
  if (v1 <= *(this + 2))
  {
    v1 = *(this + 2);
  }

  return ceil(v1 * *(this + 46));
}

double ImageAnalyzer::MakeDesaturatedTextColorFor(ImageAnalyzer *this, ITColor a2)
{
  v7 = a2;
  HSVColor = ITColor::GetHSVColor(&v7);
  v6[2] = v3;
  v6[0] = HSVColor;
  v6[1] = v4 * 0.800000012;
  return ITColor::CreateFromHSVColor(v6);
}

void ImageAnalyzer::AddDominantColorEntryToSet(uint64_t a1, double *a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 == *a3)
  {
    v23 = *(a3 + 8);
LABEL_7:
    v24 = *(a3 + 16);
    if (v23 >= v24)
    {
      v29 = (v23 - v5) >> 6;
      v30 = v29 + 1;
      if ((v29 + 1) >> 58)
      {
        std::vector<sortQuantizeColorEntry>::__throw_length_error[abi:ne200100]();
      }

      v31 = v24 - v5;
      if (v31 >> 5 > v30)
      {
        v30 = v31 >> 5;
      }

      if (v31 >= 0x7FFFFFFFFFFFFFC0)
      {
        v32 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v32 = v30;
      }

      if (v32)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<sortColorEntry>>(a3, v32);
      }

      v33 = (v29 << 6);
      v34 = *a2;
      v35 = *(a2 + 1);
      v36 = *(a2 + 3);
      v33[2] = *(a2 + 2);
      v33[3] = v36;
      *v33 = v34;
      v33[1] = v35;
      v28 = (v29 << 6) + 64;
      v37 = *(a3 + 8) - *a3;
      v38 = v33 - v37;
      memcpy(v33 - v37, *a3, v37);
      v39 = *a3;
      *a3 = v38;
      *(a3 + 8) = v28;
      *(a3 + 16) = 0;
      if (v39)
      {
        operator delete(v39);
      }
    }

    else
    {
      v25 = *a2;
      v26 = *(a2 + 1);
      v27 = *(a2 + 3);
      *(v23 + 2) = *(a2 + 2);
      *(v23 + 3) = v27;
      *v23 = v25;
      *(v23 + 1) = v26;
      v28 = (v23 + 64);
    }

    *(a3 + 8) = v28;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v5 = *a3;
    while (1)
    {
      v8 = &v5[v6];
      v40 = *(v8 + 2);
      v41 = *(v8 + 1);
      v9 = *(a2 + 2);
      *&v42.var0 = *(a2 + 1);
      *&v42.var2 = v9;
      HSVColor = ITColor::GetHSVColor(&v42);
      v12 = v11;
      v14 = v13;
      ITColor::GetLuminance(&v42);
      v16 = v15;
      *&v42.var0 = v41;
      *&v42.var2 = v40;
      v17 = ITColor::GetHSVColor(&v42);
      v19 = v18;
      v21 = v20;
      ITColor::GetLuminance(&v42);
      if (isCloseToColor(1, HSVColor, v12, v14, v16, v17, v19, v21, v22, 0.0700000003))
      {
        break;
      }

      ++v7;
      v5 = *a3;
      v23 = *(a3 + 8);
      v6 += 64;
      if (v7 >= &v23[-*a3] >> 6)
      {
        goto LABEL_7;
      }
    }

    *(*a3 + v6) = *a2 + *(*a3 + v6);
  }
}

void *std::vector<ITColor>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ITColor>>(result, a2);
    }

    std::vector<sortQuantizeColorEntry>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<double>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(result, a2);
    }

    std::vector<sortQuantizeColorEntry>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t AnalyzeImagePlease(CGContext *a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_5;
  }

  ImageAnalyzer::ImageAnalyzer(v20);
  if ((ImageAnalyzer::AnalyzeImage(v20, a1) & 1) == 0)
  {
    ImageAnalyzer::~ImageAnalyzer(v20);
LABEL_5:
    v18 = 0;
    return v18 & 1;
  }

  v4 = v21;
  v5 = v22;
  v6 = v23;
  *a2 = v21;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v7 = *&v24;
  *(a2 + 24) = v24;
  *(a2 + 40) = v25;
  *(a2 + 56) = v26;
  *(a2 + 72) = v27;
  *(a2 + 88) = v28;
  *(a2 + 104) = v29;
  *(a2 + 120) = v30;
  *(a2 + 136) = v31;
  v8 = v34;
  *(a2 + 152) = v32;
  *(a2 + 168) = v33;
  *(a2 + 184) = v8;
  v9 = v36;
  *(a2 + 224) = v35;
  *(a2 + 240) = v9;
  v10 = v38;
  *(a2 + 192) = v37;
  *(a2 + 208) = v10;
  v11 = v40;
  *(a2 + 256) = v39;
  *(a2 + 272) = v11;
  *(a2 + 296) = 1;
  v42.var0 = v4;
  v42.var1 = v5;
  v42.var2 = v6;
  v42.var3 = v7;
  ITColor::GetLuminance(&v42);
  *(a2 + 297) = v12 >= 0.180000007;
  v13 = *(a2 + 48);
  *&v42.var0 = *(a2 + 32);
  *&v42.var2 = v13;
  ITColor::GetLuminance(&v42);
  *(a2 + 298) = v14 >= 0.180000007;
  v15 = *(a2 + 80);
  *&v42.var0 = *(a2 + 64);
  *&v42.var2 = v15;
  ITColor::GetLuminance(&v42);
  *(a2 + 299) = v16 >= 0.180000007;
  v17 = v41;
  *(a2 + 300) = v41 > 0.0;
  *(a2 + 288) = v17;
  ImageAnalyzer::~ImageAnalyzer(v20);
  v18 = *(a2 + 296);
  return v18 & 1;
}

double AnalyzedImageColors::GetSelectionColorForState(AnalyzedImageColors *this, int a2, int a3)
{
  if ((*(this + 296) & 1) == 0)
  {
    return 0.333;
  }

  if (a2 && a3)
  {
    return *(this + 8);
  }

  if (a2)
  {
    if (*(this + 297))
    {
      v4 = &ITColor::kBlack;
    }

    else
    {
      v4 = &ITColor::kWhite;
    }

    v5 = 0.25;
  }

  else
  {
    if (*(this + 297))
    {
      v4 = &ITColor::kBlack;
    }

    else
    {
      v4 = &ITColor::kWhite;
    }

    v5 = 0.150000006;
  }

  return ITColor::ColorWithAlphaComponent(v4, v5);
}

double AnalyzedImageColors::GetSelectedRowTextColorForState(AnalyzedImageColors *this, int a2, int a3)
{
  if (*(this + 296) == 1)
  {
    if (a2 && a3)
    {
      v3 = *(this + 5);
      *&v7.var0 = *(this + 4);
      *&v7.var2 = v3;
      ITColor::GetLuminance(&v7);
      if (v4 < 0.180000007)
      {
        v5 = &ITColor::kWhite;
      }

      else
      {
        v5 = &ITColor::kBlack;
      }
    }

    else if (*(this + 297))
    {
      v5 = &ITColor::kBlack;
    }

    else
    {
      v5 = &ITColor::kWhite;
    }
  }

  else
  {
    v5 = &ITColor::kWhite;
  }

  return *v5;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2798F5948, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<sortQuantizeColorEntry>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*,false>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 3;
  v9 = a2 - 6;
  v10 = a2 - 9;
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = a2 - v11;
    v15 = 0xAAAAAAAAAAAAAAABLL * (a2 - v11);
    if (v15 > 2)
    {
      break;
    }

    if (v15 < 2)
    {
      return;
    }

    if (v15 == 2)
    {
      v324 = *a3;
      v325 = *(a2 - 3);
      v326 = *(a2 - 1);
      v356 = *(a2 - 2);
      v357 = v326;
      v355 = v325;
      v327 = *v11;
      v328 = v11[2];
      v353 = v11[1];
      v354 = v328;
      v352 = v327;
      if (!v324(&v355, &v352))
      {
        return;
      }

      goto LABEL_76;
    }

LABEL_10:
    if (v14 <= 1151)
    {
      if (a5)
      {
        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(v11, a2, a3);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(v11, a2, a3);
      }

      return;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {
        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*,sortQuantizeColorEntry*>(v11, a2, a2, a3);
      }

      return;
    }

    v16 = v15 >> 1;
    v17 = &v11[3 * (v15 >> 1)];
    v18 = *a3;
    if (v14 >= 0x1801)
    {
      v19 = *v17;
      v20 = v17[2];
      v356 = v17[1];
      v357 = v20;
      v355 = v19;
      v21 = *v11;
      v22 = v11[2];
      v353 = v11[1];
      v354 = v22;
      v352 = v21;
      v23 = v18(&v355, &v352);
      v24 = *a3;
      if (v23)
      {
        v25 = *v8;
        v26 = *(a2 - 1);
        v356 = *(a2 - 2);
        v357 = v26;
        v355 = v25;
        v27 = *v17;
        v28 = v17[2];
        v353 = v17[1];
        v354 = v28;
        v352 = v27;
        if (v24(&v355, &v352))
        {
          v29 = *v11;
          v30 = v11[2];
          v356 = v11[1];
          v357 = v30;
          v355 = v29;
          v31 = *v8;
          v32 = *(a2 - 1);
          v11[1] = *(a2 - 2);
          v11[2] = v32;
          *v11 = v31;
          goto LABEL_27;
        }

        v85 = *v11;
        v86 = v11[2];
        v356 = v11[1];
        v357 = v86;
        v355 = v85;
        v87 = *v17;
        v88 = v17[2];
        v11[1] = v17[1];
        v11[2] = v88;
        *v11 = v87;
        v89 = v355;
        v90 = v357;
        v17[1] = v356;
        v17[2] = v90;
        *v17 = v89;
        v91 = *a3;
        v92 = *v8;
        v93 = *(a2 - 1);
        v356 = *(a2 - 2);
        v357 = v93;
        v355 = v92;
        v94 = *v17;
        v95 = v17[2];
        v353 = v17[1];
        v354 = v95;
        v352 = v94;
        if (v91(&v355, &v352))
        {
          v96 = *v17;
          v97 = v17[2];
          v356 = v17[1];
          v357 = v97;
          v355 = v96;
          v98 = *v8;
          v99 = *(a2 - 1);
          v17[1] = *(a2 - 2);
          v17[2] = v99;
          *v17 = v98;
LABEL_27:
          *v8 = v355;
          *(a2 - 2) = v356;
          *(a2 - 1) = v357;
        }
      }

      else
      {
        v47 = *v8;
        v48 = *(a2 - 1);
        v356 = *(a2 - 2);
        v357 = v48;
        v355 = v47;
        v49 = *v17;
        v50 = v17[2];
        v353 = v17[1];
        v354 = v50;
        v352 = v49;
        if (v24(&v355, &v352))
        {
          v51 = *v17;
          v52 = v17[2];
          v356 = v17[1];
          v357 = v52;
          v355 = v51;
          v53 = *v8;
          v54 = *(a2 - 1);
          v17[1] = *(a2 - 2);
          v17[2] = v54;
          *v17 = v53;
          *v8 = v355;
          *(a2 - 2) = v356;
          *(a2 - 1) = v357;
          v55 = *a3;
          v56 = *v17;
          v57 = v17[2];
          v356 = v17[1];
          v357 = v57;
          v355 = v56;
          v58 = *v11;
          v59 = v11[2];
          v353 = v11[1];
          v354 = v59;
          v352 = v58;
          if (v55(&v355, &v352))
          {
            v60 = *v11;
            v61 = v11[2];
            v356 = v11[1];
            v357 = v61;
            v355 = v60;
            v62 = *v17;
            v63 = v17[2];
            v11[1] = v17[1];
            v11[2] = v63;
            *v11 = v62;
            v64 = v355;
            v65 = v357;
            v17[1] = v356;
            v17[2] = v65;
            *v17 = v64;
          }
        }
      }

      v100 = *a3;
      v101 = &v11[3 * v16];
      v102 = v101 - 3;
      v103 = *(v101 - 3);
      v104 = *(v101 - 1);
      v356 = *(v101 - 2);
      v357 = v104;
      v105 = a1[4];
      v352 = a1[3];
      v353 = v105;
      v354 = a1[5];
      v355 = v103;
      v106 = v100(&v355, &v352);
      v107 = *a3;
      if (v106)
      {
        v108 = *v9;
        v109 = *(a2 - 4);
        v356 = *(a2 - 5);
        v357 = v109;
        v355 = v108;
        v110 = *v102;
        v111 = v102[2];
        v353 = v102[1];
        v354 = v111;
        v352 = v110;
        if (v107(&v355, &v352))
        {
          v112 = a1[3];
          v113 = a1[4];
          v114 = a1[5];
          v116 = *(a2 - 5);
          v115 = *(a2 - 4);
          a1[3] = *v9;
          a1[4] = v116;
          a1[5] = v115;
          *(a2 - 5) = v113;
          *(a2 - 4) = v114;
          *v9 = v112;
        }

        else
        {
          v150 = a1[4];
          v355 = a1[3];
          v149 = v355;
          v356 = v150;
          v357 = a1[5];
          v151 = v357;
          v152 = *v102;
          v153 = v102[2];
          a1[4] = v102[1];
          a1[5] = v153;
          a1[3] = v152;
          v102[1] = v150;
          v102[2] = v151;
          *v102 = v149;
          v154 = *a3;
          v155 = *v9;
          v156 = *(a2 - 4);
          v356 = *(a2 - 5);
          v357 = v156;
          v355 = v155;
          v157 = *v102;
          v158 = v102[2];
          v353 = v102[1];
          v354 = v158;
          v352 = v157;
          if (v154(&v355, &v352))
          {
            v159 = *v102;
            v160 = v102[2];
            v356 = v102[1];
            v357 = v160;
            v355 = v159;
            v161 = *v9;
            v162 = *(a2 - 4);
            v102[1] = *(a2 - 5);
            v102[2] = v162;
            *v102 = v161;
            *v9 = v355;
            *(a2 - 5) = v356;
            *(a2 - 4) = v357;
          }
        }
      }

      else
      {
        v117 = *v9;
        v118 = *(a2 - 4);
        v356 = *(a2 - 5);
        v357 = v118;
        v355 = v117;
        v119 = *v102;
        v120 = v102[2];
        v353 = v102[1];
        v354 = v120;
        v352 = v119;
        if (v107(&v355, &v352))
        {
          v121 = *v102;
          v122 = v102[2];
          v356 = v102[1];
          v357 = v122;
          v355 = v121;
          v123 = *v9;
          v124 = *(a2 - 4);
          v102[1] = *(a2 - 5);
          v102[2] = v124;
          *v102 = v123;
          *v9 = v355;
          *(a2 - 5) = v356;
          *(a2 - 4) = v357;
          v125 = *a3;
          v126 = *v102;
          v127 = v102[2];
          v356 = v102[1];
          v357 = v127;
          v128 = a1[4];
          v352 = a1[3];
          v353 = v128;
          v354 = a1[5];
          v355 = v126;
          if (v125(&v355, &v352))
          {
            v130 = a1[4];
            v355 = a1[3];
            v129 = v355;
            v356 = v130;
            v357 = a1[5];
            v131 = v357;
            v132 = *v102;
            v133 = v102[2];
            a1[4] = v102[1];
            a1[5] = v133;
            a1[3] = v132;
            v102[1] = v130;
            v102[2] = v131;
            *v102 = v129;
          }
        }
      }

      v163 = *a3;
      v164 = &a1[3 * v16];
      v165 = v164[3];
      v166 = v164[5];
      v356 = v164[4];
      v357 = v166;
      v167 = a1[7];
      v352 = a1[6];
      v353 = v167;
      v354 = a1[8];
      v355 = v165;
      v168 = v163(&v355, &v352);
      v169 = *a3;
      if (v168)
      {
        v170 = *v10;
        v171 = *(a2 - 7);
        v356 = *(a2 - 8);
        v357 = v171;
        v355 = v170;
        v172 = v164[3];
        v173 = v164[5];
        v353 = v164[4];
        v354 = v173;
        v352 = v172;
        if (v169(&v355, &v352))
        {
          v174 = a1[6];
          v175 = a1[7];
          v176 = a1[8];
          v178 = *(a2 - 8);
          v177 = *(a2 - 7);
          a1[6] = *v10;
          a1[7] = v178;
          a1[8] = v177;
          *(a2 - 8) = v175;
          *(a2 - 7) = v176;
          *v10 = v174;
        }

        else
        {
          v197 = a1[7];
          v355 = a1[6];
          v196 = v355;
          v356 = v197;
          v357 = a1[8];
          v198 = v357;
          v199 = v164[3];
          v200 = v164[5];
          a1[7] = v164[4];
          a1[8] = v200;
          a1[6] = v199;
          v164[4] = v197;
          v164[5] = v198;
          v164[3] = v196;
          v201 = *a3;
          v202 = *v10;
          v203 = *(a2 - 7);
          v356 = *(a2 - 8);
          v357 = v203;
          v355 = v202;
          v204 = v164[3];
          v205 = v164[5];
          v353 = v164[4];
          v354 = v205;
          v352 = v204;
          if (v201(&v355, &v352))
          {
            v206 = v164[3];
            v207 = v164[5];
            v356 = v164[4];
            v357 = v207;
            v355 = v206;
            v208 = *v10;
            v209 = *(a2 - 7);
            v164[4] = *(a2 - 8);
            v164[5] = v209;
            v164[3] = v208;
            *v10 = v355;
            *(a2 - 8) = v356;
            *(a2 - 7) = v357;
          }
        }
      }

      else
      {
        v179 = *v10;
        v180 = *(a2 - 7);
        v356 = *(a2 - 8);
        v357 = v180;
        v355 = v179;
        v181 = v164[3];
        v182 = v164[5];
        v353 = v164[4];
        v354 = v182;
        v352 = v181;
        if (v169(&v355, &v352))
        {
          v183 = v164[3];
          v184 = v164[5];
          v356 = v164[4];
          v357 = v184;
          v355 = v183;
          v185 = *v10;
          v186 = *(a2 - 7);
          v164[4] = *(a2 - 8);
          v164[5] = v186;
          v164[3] = v185;
          *v10 = v355;
          *(a2 - 8) = v356;
          *(a2 - 7) = v357;
          v187 = *a3;
          v188 = v164[3];
          v189 = v164[5];
          v356 = v164[4];
          v357 = v189;
          v190 = a1[7];
          v352 = a1[6];
          v353 = v190;
          v354 = a1[8];
          v355 = v188;
          if (v187(&v355, &v352))
          {
            v192 = a1[7];
            v355 = a1[6];
            v191 = v355;
            v356 = v192;
            v357 = a1[8];
            v193 = v357;
            v194 = v164[3];
            v195 = v164[5];
            a1[7] = v164[4];
            a1[8] = v195;
            a1[6] = v194;
            v164[4] = v192;
            v164[5] = v193;
            v164[3] = v191;
          }
        }
      }

      v210 = *a3;
      v211 = *v17;
      v212 = v17[2];
      v356 = v17[1];
      v357 = v212;
      v355 = v211;
      v213 = *v102;
      v214 = v102[2];
      v353 = v102[1];
      v354 = v214;
      v352 = v213;
      v215 = v210(&v355, &v352);
      v216 = *a3;
      if (v215)
      {
        v217 = v164[3];
        v218 = v164[5];
        v356 = v164[4];
        v357 = v218;
        v355 = v217;
        v219 = *v17;
        v220 = v17[2];
        v353 = v17[1];
        v354 = v220;
        v352 = v219;
        if (v216(&v355, &v352))
        {
          v221 = *v102;
          v222 = v102[2];
          v356 = v102[1];
          v357 = v222;
          v355 = v221;
          v223 = v164[4];
          *v102 = v164[3];
          v102[1] = v223;
          v102[2] = v164[5];
          goto LABEL_55;
        }

        v243 = *v102;
        v244 = v102[2];
        v356 = v102[1];
        v357 = v244;
        v355 = v243;
        v245 = v17[1];
        *v102 = *v17;
        v102[1] = v245;
        v102[2] = v17[2];
        v246 = v357;
        v247 = v355;
        v17[1] = v356;
        v17[2] = v246;
        *v17 = v247;
        v248 = *a3;
        v249 = v164[3];
        v250 = v164[5];
        v356 = v164[4];
        v357 = v250;
        v355 = v249;
        v251 = *v17;
        v252 = v17[2];
        v353 = v17[1];
        v354 = v252;
        v352 = v251;
        if (v248(&v355, &v352))
        {
          v253 = *v17;
          v254 = v17[2];
          v356 = v17[1];
          v357 = v254;
          v355 = v253;
          v255 = v164[4];
          *v17 = v164[3];
          v17[1] = v255;
          v17[2] = v164[5];
LABEL_55:
          v256 = v357;
          v257 = v355;
          v164[4] = v356;
          v164[5] = v256;
          v164[3] = v257;
        }
      }

      else
      {
        v224 = v164[3];
        v225 = v164[5];
        v356 = v164[4];
        v357 = v225;
        v355 = v224;
        v226 = *v17;
        v227 = v17[2];
        v353 = v17[1];
        v354 = v227;
        v352 = v226;
        if (v216(&v355, &v352))
        {
          v228 = *v17;
          v229 = v17[2];
          v356 = v17[1];
          v357 = v229;
          v355 = v228;
          v230 = v164[4];
          *v17 = v164[3];
          v17[1] = v230;
          v17[2] = v164[5];
          v231 = v357;
          v232 = v355;
          v164[4] = v356;
          v164[5] = v231;
          v164[3] = v232;
          v233 = *a3;
          v234 = *v17;
          v235 = v17[2];
          v356 = v17[1];
          v357 = v235;
          v355 = v234;
          v236 = *v102;
          v237 = v102[2];
          v353 = v102[1];
          v354 = v237;
          v352 = v236;
          if (v233(&v355, &v352))
          {
            v238 = *v102;
            v239 = v102[2];
            v356 = v102[1];
            v357 = v239;
            v355 = v238;
            v240 = v17[1];
            *v102 = *v17;
            v102[1] = v240;
            v102[2] = v17[2];
            v241 = v357;
            v242 = v355;
            v17[1] = v356;
            v17[2] = v241;
            *v17 = v242;
          }
        }
      }

      v258 = *a1;
      v259 = a1[2];
      v356 = a1[1];
      v357 = v259;
      v355 = v258;
      v260 = *v17;
      v261 = v17[2];
      a1[1] = v17[1];
      a1[2] = v261;
      *a1 = v260;
      v262 = v355;
      v263 = v357;
      v17[1] = v356;
      v17[2] = v263;
      *v17 = v262;
      goto LABEL_57;
    }

    v33 = *v11;
    v34 = v11[2];
    v356 = v11[1];
    v357 = v34;
    v355 = v33;
    v35 = *v17;
    v36 = v17[2];
    v353 = v17[1];
    v354 = v36;
    v352 = v35;
    v37 = v18(&v355, &v352);
    v38 = *a3;
    if (v37)
    {
      v39 = *v8;
      v40 = *(a2 - 1);
      v356 = *(a2 - 2);
      v357 = v40;
      v355 = v39;
      v41 = *v11;
      v42 = v11[2];
      v353 = v11[1];
      v354 = v42;
      v352 = v41;
      if (v38(&v355, &v352))
      {
        v43 = *v17;
        v44 = v17[2];
        v356 = v17[1];
        v357 = v44;
        v355 = v43;
        v45 = *v8;
        v46 = *(a2 - 1);
        v17[1] = *(a2 - 2);
        v17[2] = v46;
        *v17 = v45;
LABEL_36:
        *v8 = v355;
        *(a2 - 2) = v356;
        *(a2 - 1) = v357;
        goto LABEL_57;
      }

      v134 = *v17;
      v135 = v17[2];
      v356 = v17[1];
      v357 = v135;
      v355 = v134;
      v136 = *v11;
      v137 = v11[2];
      v17[1] = v11[1];
      v17[2] = v137;
      *v17 = v136;
      v138 = v355;
      v139 = v357;
      v11[1] = v356;
      v11[2] = v139;
      *v11 = v138;
      v140 = *a3;
      v141 = *v8;
      v142 = *(a2 - 1);
      v356 = *(a2 - 2);
      v357 = v142;
      v355 = v141;
      v143 = *v11;
      v144 = v11[2];
      v353 = v11[1];
      v354 = v144;
      v352 = v143;
      if (v140(&v355, &v352))
      {
        v145 = *v11;
        v146 = v11[2];
        v356 = v11[1];
        v357 = v146;
        v355 = v145;
        v147 = *v8;
        v148 = *(a2 - 1);
        v11[1] = *(a2 - 2);
        v11[2] = v148;
        *v11 = v147;
        goto LABEL_36;
      }
    }

    else
    {
      v66 = *v8;
      v67 = *(a2 - 1);
      v356 = *(a2 - 2);
      v357 = v67;
      v355 = v66;
      v68 = *v11;
      v69 = v11[2];
      v353 = v11[1];
      v354 = v69;
      v352 = v68;
      if (v38(&v355, &v352))
      {
        v70 = *v11;
        v71 = v11[2];
        v356 = v11[1];
        v357 = v71;
        v355 = v70;
        v72 = *v8;
        v73 = *(a2 - 1);
        v11[1] = *(a2 - 2);
        v11[2] = v73;
        *v11 = v72;
        *v8 = v355;
        *(a2 - 2) = v356;
        *(a2 - 1) = v357;
        v74 = *a3;
        v75 = *v11;
        v76 = v11[2];
        v356 = v11[1];
        v357 = v76;
        v355 = v75;
        v77 = *v17;
        v78 = v17[2];
        v353 = v17[1];
        v354 = v78;
        v352 = v77;
        if (v74(&v355, &v352))
        {
          v79 = *v17;
          v80 = v17[2];
          v356 = v17[1];
          v357 = v80;
          v355 = v79;
          v81 = *v11;
          v82 = v11[2];
          v17[1] = v11[1];
          v17[2] = v82;
          *v17 = v81;
          v83 = v355;
          v84 = v357;
          v11[1] = v356;
          v11[2] = v84;
          *v11 = v83;
        }
      }
    }

LABEL_57:
    if ((a5 & 1) == 0)
    {
      v264 = *a3;
      v265 = *(a1 - 3);
      v266 = *(a1 - 1);
      v356 = *(a1 - 2);
      v357 = v266;
      v355 = v265;
      v267 = *a1;
      v268 = a1[2];
      v353 = a1[1];
      v354 = v268;
      v352 = v267;
      if ((v264(&v355, &v352) & 1) == 0)
      {
        v11 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,sortQuantizeColorEntry *,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry)>(a1, a2, a3);
        goto LABEL_64;
      }
    }

    v269 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,sortQuantizeColorEntry *,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry)>(a1, a2, a3);
    if ((v270 & 1) == 0)
    {
      goto LABEL_62;
    }

    v271 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(a1, v269, a3);
    v11 = &v269[3];
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(v269 + 3, a2, a3))
    {
      a4 = -v13;
      a2 = v269;
      if (v271)
      {
        return;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v271)
    {
LABEL_62:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*,false>(a1, v269, a3, -v13, a5 & 1);
      v11 = &v269[3];
LABEL_64:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  if (v15 != 3)
  {
    if (v15 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*,0>(v11, v11 + 3, v11 + 6, a2 - 3, a3);
      return;
    }

    if (v15 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*,0>(v11, v11 + 3, v11 + 6, v11 + 9, a3);
      v296 = *a3;
      v297 = *(a2 - 3);
      v298 = *(a2 - 1);
      v356 = *(a2 - 2);
      v357 = v298;
      v299 = v11[10];
      v352 = v11[9];
      v353 = v299;
      v354 = v11[11];
      v355 = v297;
      if (v296(&v355, &v352))
      {
        v300 = v11[9];
        v301 = v11[10];
        v302 = v11[11];
        v304 = *(a2 - 2);
        v303 = *(a2 - 1);
        v11[9] = *v8;
        v11[10] = v304;
        v11[11] = v303;
        *(a2 - 2) = v301;
        *(a2 - 1) = v302;
        *v8 = v300;
        v305 = *a3;
        v306 = v11[10];
        v307 = v11[11];
        v308 = v11[8];
        v355 = v11[9];
        v356 = v306;
        v357 = v307;
        v309 = v11[7];
        v352 = v11[6];
        v353 = v309;
        v354 = v308;
        if (v305(&v355, &v352))
        {
          v310 = v11[10];
          v312 = v11[5];
          v311 = v11[6];
          v11[6] = v11[9];
          v314 = v11[6];
          v313 = v11[7];
          v11[7] = v310;
          v316 = v11[7];
          v315 = v11[8];
          v11[8] = v11[11];
          v11[9] = v311;
          v11[10] = v313;
          v11[11] = v315;
          v317 = *a3;
          v355 = v314;
          v356 = v316;
          v357 = v11[8];
          v318 = v11[4];
          v352 = v11[3];
          v353 = v318;
          v354 = v312;
          if (v317(&v355, &v352))
          {
            v320 = v11[3];
            v319 = v11[4];
            v321 = v11[5];
            v322 = v11[7];
            v323 = v11[8];
            v11[3] = v11[6];
            v11[4] = v322;
            v11[5] = v323;
            v11[6] = v320;
            v11[7] = v319;
            v11[8] = v321;
LABEL_84:
            v341 = *a3;
            v342 = v11[4];
            v355 = v11[3];
            v356 = v342;
            v357 = v11[5];
            v343 = *v11;
            v344 = v11[2];
            v353 = v11[1];
            v354 = v344;
            v352 = v343;
            if (v341(&v355, &v352))
            {
              v345 = *v11;
              v346 = v11[2];
              v347 = v11[3];
              v356 = v11[1];
              v357 = v346;
              v355 = v345;
              v348 = v11[4];
              v349 = v11[5];
              *v11 = v347;
              v11[1] = v348;
              v11[2] = v349;
              v350 = v356;
              v11[3] = v355;
              v11[4] = v350;
              v11[5] = v357;
            }
          }
        }
      }

      return;
    }

    goto LABEL_10;
  }

  v272 = *a3;
  v273 = v11[4];
  v355 = v11[3];
  v356 = v273;
  v357 = v11[5];
  v274 = *v11;
  v275 = v11[2];
  v353 = v11[1];
  v354 = v275;
  v352 = v274;
  v276 = v272(&v355, &v352);
  v277 = *a3;
  if (v276)
  {
    v278 = *v8;
    v279 = *(a2 - 1);
    v356 = *(a2 - 2);
    v357 = v279;
    v280 = v11[4];
    v352 = v11[3];
    v353 = v280;
    v354 = v11[5];
    v355 = v278;
    if (!v277(&v355, &v352))
    {
      v281 = *v11;
      v282 = v11[2];
      v283 = v11[3];
      v356 = v11[1];
      v357 = v282;
      v355 = v281;
      v284 = v11[4];
      v285 = v11[5];
      *v11 = v283;
      v11[1] = v284;
      v11[2] = v285;
      v286 = v356;
      v11[3] = v355;
      v11[4] = v286;
      v11[5] = v357;
      v287 = *a3;
      v288 = *v8;
      v289 = *(a2 - 1);
      v356 = *(a2 - 2);
      v357 = v289;
      v290 = v11[4];
      v352 = v11[3];
      v353 = v290;
      v354 = v11[5];
      v355 = v288;
      if (v287(&v355, &v352))
      {
        v291 = v11[3];
        v292 = v11[4];
        v293 = v11[5];
        v295 = *(a2 - 2);
        v294 = *(a2 - 1);
        v11[3] = *v8;
        v11[4] = v295;
        v11[5] = v294;
        *(a2 - 2) = v292;
        *(a2 - 1) = v293;
        *v8 = v291;
      }

      return;
    }

LABEL_76:
    v329 = *v11;
    v330 = v11[2];
    v356 = v11[1];
    v357 = v330;
    v355 = v329;
    v331 = *v8;
    v332 = *(a2 - 1);
    v11[1] = *(a2 - 2);
    v11[2] = v332;
    *v11 = v331;
    *v8 = v355;
    *(a2 - 2) = v356;
    *(a2 - 1) = v357;
    return;
  }

  v333 = *v8;
  v334 = *(a2 - 1);
  v356 = *(a2 - 2);
  v357 = v334;
  v335 = v11[4];
  v352 = v11[3];
  v353 = v335;
  v354 = v11[5];
  v355 = v333;
  if (v277(&v355, &v352))
  {
    v336 = v11[3];
    v337 = v11[4];
    v338 = v11[5];
    v340 = *(a2 - 2);
    v339 = *(a2 - 1);
    v11[3] = *v8;
    v11[4] = v340;
    v11[5] = v339;
    *(a2 - 2) = v337;
    *(a2 - 1) = v338;
    *v8 = v336;
    goto LABEL_84;
  }
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, unsigned int (**a5)(__n128 *, __n128 *))
{
  v10 = *a5;
  v11 = a2[1];
  v74 = *a2;
  v75 = v11;
  v76 = a2[2];
  v12 = a1[1];
  v71 = *a1;
  v72 = v12;
  v73 = a1[2];
  v13 = v10(&v74, &v71);
  v14 = *a5;
  if (v13)
  {
    v15 = a3[1];
    v74 = *a3;
    v75 = v15;
    v76 = a3[2];
    v16 = a2[1];
    v71 = *a2;
    v72 = v16;
    v73 = a2[2];
    if (v14(&v74, &v71))
    {
      v17 = *a1;
      v18 = a1[1];
      v19 = a1[2];
      v21 = a3[1];
      v20 = a3[2];
      *a1 = *a3;
      a1[1] = v21;
      a1[2] = v20;
LABEL_9:
      a3[1] = v18;
      a3[2] = v19;
      *a3 = v17;
      goto LABEL_10;
    }

    v37 = *a1;
    v38 = a1[1];
    v39 = a1[2];
    v41 = a2[1];
    v40 = a2[2];
    *a1 = *a2;
    a1[1] = v41;
    a1[2] = v40;
    a2[1] = v38;
    a2[2] = v39;
    *a2 = v37;
    v42 = *a5;
    v43 = a3[1];
    v74 = *a3;
    v75 = v43;
    v76 = a3[2];
    v44 = a2[1];
    v71 = *a2;
    v72 = v44;
    v73 = a2[2];
    if (v42(&v74, &v71))
    {
      v17 = *a2;
      v18 = a2[1];
      v19 = a2[2];
      v46 = a3[1];
      v45 = a3[2];
      *a2 = *a3;
      a2[1] = v46;
      a2[2] = v45;
      goto LABEL_9;
    }
  }

  else
  {
    v22 = a3[1];
    v74 = *a3;
    v75 = v22;
    v76 = a3[2];
    v23 = a2[1];
    v71 = *a2;
    v72 = v23;
    v73 = a2[2];
    if (v14(&v74, &v71))
    {
      v24 = *a2;
      v25 = a2[1];
      v26 = a2[2];
      v28 = a3[1];
      v27 = a3[2];
      *a2 = *a3;
      a2[1] = v28;
      a2[2] = v27;
      a3[1] = v25;
      a3[2] = v26;
      *a3 = v24;
      v29 = *a5;
      v30 = a2[1];
      v74 = *a2;
      v75 = v30;
      v76 = a2[2];
      v31 = a1[1];
      v71 = *a1;
      v72 = v31;
      v73 = a1[2];
      if (v29(&v74, &v71))
      {
        v32 = *a1;
        v33 = a1[1];
        v34 = a1[2];
        v36 = a2[1];
        v35 = a2[2];
        *a1 = *a2;
        a1[1] = v36;
        a1[2] = v35;
        a2[1] = v33;
        a2[2] = v34;
        *a2 = v32;
      }
    }
  }

LABEL_10:
  v47 = *a5;
  v48 = a4[1];
  v74 = *a4;
  v75 = v48;
  v76 = a4[2];
  v49 = a3[1];
  v71 = *a3;
  v72 = v49;
  v73 = a3[2];
  if (v47(&v74, &v71))
  {
    v51 = *a3;
    v52 = a3[1];
    v53 = a3[2];
    v55 = a4[1];
    v54 = a4[2];
    *a3 = *a4;
    a3[1] = v55;
    a3[2] = v54;
    a4[1] = v52;
    a4[2] = v53;
    *a4 = v51;
    v56 = *a5;
    v57 = a3[1];
    v74 = *a3;
    v75 = v57;
    v76 = a3[2];
    v58 = a2[1];
    v71 = *a2;
    v72 = v58;
    v73 = a2[2];
    if (v56(&v74, &v71))
    {
      v59 = *a2;
      v60 = a2[1];
      v61 = a2[2];
      v63 = a3[1];
      v62 = a3[2];
      *a2 = *a3;
      a2[1] = v63;
      a2[2] = v62;
      a3[1] = v60;
      a3[2] = v61;
      *a3 = v59;
      v64 = *a5;
      v65 = a2[1];
      v74 = *a2;
      v75 = v65;
      v76 = a2[2];
      v66 = a1[1];
      v71 = *a1;
      v72 = v66;
      v73 = a1[2];
      if (v64(&v74, &v71))
      {
        result = *a1;
        v67 = a1[1];
        v68 = a1[2];
        v70 = a2[1];
        v69 = a2[2];
        *a1 = *a2;
        a1[1] = v70;
        a1[2] = v69;
        a2[1] = v67;
        a2[2] = v68;
        *a2 = result;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(uint64_t result, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (result != a2)
  {
    v31 = v3;
    v32 = v4;
    v6 = result;
    v7 = (result + 48);
    if ((result + 48) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        v12 = *a3;
        v13 = v10[1];
        v28 = *v10;
        v29 = v13;
        v30 = v10[2];
        v14 = *v11;
        v15 = v11[2];
        v26 = v11[1];
        v27 = v15;
        v25 = v14;
        result = v12(&v28, &v25);
        if (result)
        {
          v16 = v10[1];
          v28 = *v10;
          v29 = v16;
          v30 = v10[2];
          v17 = v9;
          while (1)
          {
            v18 = (v6 + v17);
            v19 = *(v6 + v17 + 16);
            v18[3] = *(v6 + v17);
            v18[4] = v19;
            v18[5] = *(v6 + v17 + 32);
            if (!v17)
            {
              break;
            }

            v20 = *a3;
            v25 = v28;
            v26 = v29;
            v27 = v30;
            v21 = *(v18 - 2);
            v24[0] = *(v18 - 3);
            v24[1] = v21;
            v24[2] = *(v18 - 1);
            result = v20(&v25, v24);
            v17 -= 48;
            if ((result & 1) == 0)
            {
              v22 = (v6 + v17 + 48);
              goto LABEL_10;
            }
          }

          v22 = v6;
LABEL_10:
          v23 = v29;
          *v22 = v28;
          v22[1] = v23;
          v22[2] = v30;
        }

        v7 = v10 + 3;
        v9 += 48;
      }

      while (v10 + 3 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(uint64_t result, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (result != a2)
  {
    v30 = v3;
    v31 = v4;
    v6 = result;
    for (i = (result + 48); v6 + 3 != a2; i = v6 + 3)
    {
      v9 = v6;
      v6 = i;
      v10 = *a3;
      v11 = v6[1];
      v27 = *v6;
      v28 = v11;
      v29 = v6[2];
      v12 = *v9;
      v13 = v9[2];
      v25 = v9[1];
      v26 = v13;
      v24 = v12;
      result = v10(&v27, &v24);
      if (result)
      {
        v14 = v6[1];
        v27 = *v6;
        v28 = v14;
        v29 = v6[2];
        v15 = v6;
        do
        {
          v16 = *(v15 - 2);
          v17 = *(v15 - 1);
          v18 = *(v15 - 4);
          *v15 = *(v15 - 3);
          v15[1] = v16;
          v15[2] = v17;
          v24 = v27;
          v25 = v28;
          v26 = v29;
          v19 = *(v15 - 5);
          v23[0] = *(v15 - 6);
          v23[1] = v19;
          v20 = v15 - 3;
          v21 = *a3;
          v23[2] = v18;
          result = v21(&v24, v23);
          v15 = v20;
        }

        while ((result & 1) != 0);
        v22 = v28;
        *v20 = v27;
        v20[1] = v22;
        v20[2] = v29;
      }
    }
  }

  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,sortQuantizeColorEntry *,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v6 = a1[1];
  v46 = *a1;
  v47 = v6;
  v8 = *a1;
  v7 = a1[1];
  v48 = a1[2];
  v49 = v8;
  v9 = *a3;
  v10 = a1[2];
  v50 = v7;
  v51 = v10;
  v11 = *(a2 - 2);
  v43 = *(a2 - 3);
  v44 = v11;
  v45 = *(a2 - 1);
  if (v9(&v49, &v43))
  {
    v12 = a1;
    do
    {
      v13 = v12 + 3;
      v14 = *a3;
      v49 = v46;
      v50 = v47;
      v51 = v48;
      v15 = v12[4];
      v43 = v12[3];
      v44 = v15;
      v45 = v12[5];
      v16 = v14(&v49, &v43);
      v12 = v13;
    }

    while ((v16 & 1) == 0);
  }

  else
  {
    v17 = a1 + 3;
    do
    {
      v13 = v17;
      if (v17 >= v4)
      {
        break;
      }

      v18 = *a3;
      v49 = v46;
      v50 = v47;
      v51 = v48;
      v19 = v13[1];
      v43 = *v13;
      v44 = v19;
      v45 = v13[2];
      v20 = v18(&v49, &v43);
      v17 = v13 + 3;
    }

    while (!v20);
  }

  if (v13 >= v4)
  {
    v21 = v4;
  }

  else
  {
    do
    {
      v21 = v4 - 3;
      v22 = *a3;
      v49 = v46;
      v50 = v47;
      v51 = v48;
      v23 = *(v4 - 2);
      v43 = *(v4 - 3);
      v44 = v23;
      v45 = *(v4 - 1);
      v4 -= 3;
    }

    while ((v22(&v49, &v43) & 1) != 0);
  }

  while (v13 < v21)
  {
    v24 = *v13;
    v25 = v13[2];
    v50 = v13[1];
    v51 = v25;
    v49 = v24;
    v26 = *v21;
    v27 = v21[2];
    v13[1] = v21[1];
    v13[2] = v27;
    *v13 = v26;
    v28 = v49;
    v29 = v51;
    v21[1] = v50;
    v21[2] = v29;
    *v21 = v28;
    do
    {
      v49 = v46;
      v50 = v47;
      v51 = v48;
      v30 = v13[4];
      v43 = v13[3];
      v44 = v30;
      v31 = v13[5];
      v13 += 3;
      v32 = *a3;
      v45 = v31;
    }

    while (!v32(&v49, &v43));
    do
    {
      v49 = v46;
      v50 = v47;
      v51 = v48;
      v33 = *(v21 - 3);
      v34 = *(v21 - 2);
      v35 = *(v21 - 1);
      v21 -= 3;
      v36 = *a3;
      v44 = v34;
      v45 = v35;
      v43 = v33;
    }

    while ((v36(&v49, &v43) & 1) != 0);
  }

  v37 = v13 - 3;
  if (v13 - 3 != a1)
  {
    v38 = *v37;
    v39 = *(v13 - 1);
    a1[1] = *(v13 - 2);
    a1[2] = v39;
    *a1 = v38;
  }

  v40 = v46;
  v41 = v48;
  *(v13 - 2) = v47;
  *(v13 - 1) = v41;
  *v37 = v40;
  return v13;
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,sortQuantizeColorEntry *,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0;
  v7 = a1[1];
  v40 = *a1;
  v41 = v7;
  v42 = a1[2];
  do
  {
    v8 = *a3;
    v9 = a1[v6 + 4];
    v43 = a1[v6 + 3];
    v44 = v9;
    v45 = a1[v6 + 5];
    v37 = v40;
    v38 = v41;
    v39 = v42;
    v6 += 3;
  }

  while ((v8(&v43, &v37) & 1) != 0);
  v10 = &a1[v6];
  v11 = &a1[v6 - 3];
  if (v6 == 3)
  {
    while (v10 < a2)
    {
      v15 = *a3;
      v12 = a2 - 3;
      v16 = *(a2 - 2);
      v43 = *(a2 - 3);
      v44 = v16;
      v45 = *(a2 - 1);
      v37 = v40;
      v38 = v41;
      v39 = v42;
      a2 -= 3;
      if (v15(&v43, &v37))
      {
        goto LABEL_9;
      }
    }

    v12 = a2;
  }

  else
  {
    do
    {
      v12 = a2 - 3;
      v13 = *a3;
      v14 = *(a2 - 2);
      v43 = *(a2 - 3);
      v44 = v14;
      v45 = *(a2 - 1);
      v37 = v40;
      v38 = v41;
      v39 = v42;
      a2 -= 3;
    }

    while (!v13(&v43, &v37));
  }

LABEL_9:
  if (v10 < v12)
  {
    v17 = v10;
    v18 = v12;
    do
    {
      v20 = v17[1];
      v43 = *v17;
      v19 = v43;
      v44 = v20;
      v45 = v17[2];
      v21 = v45;
      v22 = *v18;
      v23 = v18[2];
      v17[1] = v18[1];
      v17[2] = v23;
      *v17 = v22;
      v18[1] = v20;
      v18[2] = v21;
      *v18 = v19;
      do
      {
        v24 = v17[3];
        v25 = v17[4];
        v26 = v17[5];
        v17 += 3;
        v27 = *a3;
        v43 = v24;
        v44 = v25;
        v45 = v26;
        v37 = v40;
        v38 = v41;
        v39 = v42;
      }

      while ((v27(&v43, &v37) & 1) != 0);
      do
      {
        v28 = *(v18 - 3);
        v29 = *(v18 - 2);
        v30 = *(v18 - 1);
        v18 -= 3;
        v31 = *a3;
        v44 = v29;
        v45 = v30;
        v43 = v28;
        v37 = v40;
        v38 = v41;
        v39 = v42;
      }

      while (!v31(&v43, &v37));
    }

    while (v17 < v18);
    v11 = v17 - 3;
  }

  if (v11 != a1)
  {
    v32 = *v11;
    v33 = v11[2];
    a1[1] = v11[1];
    a1[2] = v33;
    *a1 = v32;
  }

  v34 = v40;
  v35 = v42;
  v11[1] = v41;
  v11[2] = v35;
  *v11 = v34;
  return v11;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(__n128 *a1, __n128 *a2, unsigned int (**a3)(__n128 *, __n128 *))
{
  v6 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v47 = a2 - 3;
        v48 = *a3;
        v49 = a1[4];
        v50 = a1[5];
        v51 = a1[2];
        v146 = a1[3];
        v147 = v49;
        v148 = v50;
        v52 = a1[1];
        v143 = *a1;
        v144 = v52;
        v145 = v51;
        v53 = v48(&v146, &v143);
        v54 = *a3;
        if (v53)
        {
          v55 = v47[1];
          v146 = *v47;
          v147 = v55;
          v148 = v47[2];
          v56 = a1[4];
          v143 = a1[3];
          v144 = v56;
          v145 = a1[5];
          if (v54(&v146, &v143))
          {
            v57 = *a1;
            v58 = a1[1];
            v59 = a1[2];
            v61 = v47[1];
            v60 = v47[2];
            *a1 = *v47;
            a1[1] = v61;
            a1[2] = v60;
          }

          else
          {
            v108 = a1[1];
            v109 = a1[2];
            v110 = a1[3];
            a1[3] = *a1;
            v112 = a1[3];
            v111 = a1[4];
            *a1 = v110;
            a1[1] = v111;
            a1[4] = v108;
            v113 = a1[4];
            a1[2] = a1[5];
            a1[5] = v109;
            v114 = *a3;
            v115 = v47[1];
            v146 = *v47;
            v147 = v115;
            v148 = v47[2];
            v143 = v112;
            v144 = v113;
            v145 = a1[5];
            if (!v114(&v146, &v143))
            {
              return 1;
            }

            v57 = a1[3];
            v58 = a1[4];
            v59 = a1[5];
            v117 = v47[1];
            v116 = v47[2];
            a1[3] = *v47;
            a1[4] = v117;
            a1[5] = v116;
          }

          v47[1] = v58;
          v47[2] = v59;
          result = 1;
          *v47 = v57;
          return result;
        }

        v76 = v47[1];
        v146 = *v47;
        v147 = v76;
        v148 = v47[2];
        v77 = a1[4];
        v143 = a1[3];
        v144 = v77;
        v145 = a1[5];
        if (!v54(&v146, &v143))
        {
          return 1;
        }

        v78 = a1[3];
        v79 = a1[4];
        v80 = a1[5];
        v82 = v47[1];
        v81 = v47[2];
        a1[3] = *v47;
        a1[4] = v82;
        a1[5] = v81;
        v47[1] = v79;
        v47[2] = v80;
        *v47 = v78;
        v46 = *a3;
        v83 = a1[4];
        v84 = a1[5];
        v41 = a1[2];
        v146 = a1[3];
        v147 = v83;
        v148 = v84;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*,0>(a1, a1 + 3, a1 + 6, a2 - 3, a3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*,0>(a1, a1 + 3, a1 + 6, a1 + 9, a3);
        v16 = *a3;
        v17 = a2[-2];
        v146 = a2[-3];
        v147 = v17;
        v148 = a2[-1];
        v18 = a1[10];
        v143 = a1[9];
        v144 = v18;
        v145 = a1[11];
        if (!v16(&v146, &v143))
        {
          return 1;
        }

        v19 = a2 - 3;
        v20 = a1[9];
        v21 = a1[10];
        v22 = a1[11];
        v24 = a2[-2];
        v23 = a2[-1];
        a1[9] = a2[-3];
        a1[10] = v24;
        a1[11] = v23;
        v19[1] = v21;
        v19[2] = v22;
        *v19 = v20;
        v25 = *a3;
        v26 = a1[10];
        v27 = a1[11];
        v28 = a1[8];
        v146 = a1[9];
        v147 = v26;
        v148 = v27;
        v29 = a1[7];
        v143 = a1[6];
        v144 = v29;
        v145 = v28;
        if (!v25(&v146, &v143))
        {
          return 1;
        }

        v30 = a1[10];
        v32 = a1[5];
        v31 = a1[6];
        a1[6] = a1[9];
        v34 = a1[6];
        v33 = a1[7];
        a1[7] = v30;
        v36 = a1[7];
        v35 = a1[8];
        a1[8] = a1[11];
        a1[9] = v31;
        a1[10] = v33;
        a1[11] = v35;
        v37 = *a3;
        v146 = v34;
        v147 = v36;
        v148 = a1[8];
        v38 = a1[4];
        v143 = a1[3];
        v144 = v38;
        v145 = v32;
        if (!v37(&v146, &v143))
        {
          return 1;
        }

        v39 = a1[7];
        v41 = a1[2];
        v40 = a1[3];
        a1[3] = a1[6];
        v43 = a1[3];
        v42 = a1[4];
        a1[4] = v39;
        v45 = a1[4];
        v44 = a1[5];
        a1[5] = a1[8];
        a1[6] = v40;
        a1[7] = v42;
        a1[8] = v44;
        v46 = *a3;
        v146 = v43;
        v147 = v45;
        v148 = a1[5];
        break;
      default:
        goto LABEL_16;
    }

    v85 = a1[1];
    v143 = *a1;
    v144 = v85;
    v145 = v41;
    if (v46(&v146, &v143))
    {
      v87 = *a1;
      v86 = a1[1];
      v88 = a1[2];
      v89 = a1[4];
      v90 = a1[5];
      *a1 = a1[3];
      a1[1] = v89;
      a1[2] = v90;
      a1[3] = v87;
      result = 1;
      a1[4] = v86;
      a1[5] = v88;
      return result;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *a3;
    v8 = a2[-2];
    v146 = a2[-3];
    v147 = v8;
    v148 = a2[-1];
    v9 = a1[1];
    v143 = *a1;
    v144 = v9;
    v145 = a1[2];
    if (v7(&v146, &v143))
    {
      v10 = a2 - 3;
      v11 = *a1;
      v12 = a1[1];
      v13 = a1[2];
      v15 = a2[-2];
      v14 = a2[-1];
      *a1 = a2[-3];
      a1[1] = v15;
      a1[2] = v14;
      v10[1] = v12;
      v10[2] = v13;
      *v10 = v11;
    }

    return 1;
  }

LABEL_16:
  v62 = a1 + 6;
  v63 = *a3;
  v64 = a1[4];
  v65 = a1[5];
  v66 = a1[2];
  v146 = a1[3];
  v147 = v64;
  v148 = v65;
  v67 = a1[1];
  v143 = *a1;
  v144 = v67;
  v145 = v66;
  v68 = v63(&v146, &v143);
  v69 = *a3;
  if (v68)
  {
    v70 = a1[7];
    v146 = *v62;
    v147 = v70;
    v148 = a1[8];
    v71 = a1[4];
    v143 = a1[3];
    v144 = v71;
    v145 = a1[5];
    if (v69(&v146, &v143))
    {
      v73 = a1[1];
      v72 = a1[2];
      v74 = *a1;
      v75 = a1[7];
      *a1 = *v62;
      a1[1] = v75;
      a1[2] = a1[8];
    }

    else
    {
      v118 = a1[1];
      v119 = a1[2];
      v120 = a1[3];
      a1[3] = *a1;
      v122 = a1[3];
      v121 = a1[4];
      *a1 = v120;
      a1[1] = v121;
      a1[4] = v118;
      v123 = a1[4];
      a1[2] = a1[5];
      a1[5] = v119;
      v124 = *a3;
      v125 = a1[7];
      v146 = *v62;
      v147 = v125;
      v148 = a1[8];
      v143 = v122;
      v144 = v123;
      v145 = a1[5];
      if (!v124(&v146, &v143))
      {
        goto LABEL_33;
      }

      v73 = a1[4];
      v72 = a1[5];
      v74 = a1[3];
      v126 = a1[7];
      a1[3] = *v62;
      a1[4] = v126;
      a1[5] = a1[8];
    }

    *v62 = v74;
    a1[7] = v73;
    a1[8] = v72;
  }

  else
  {
    v92 = a1[7];
    v146 = *v62;
    v147 = v92;
    v148 = a1[8];
    v93 = a1[4];
    v143 = a1[3];
    v144 = v93;
    v145 = a1[5];
    if (v69(&v146, &v143))
    {
      v94 = a1[7];
      v96 = a1[2];
      v95 = a1[3];
      a1[3] = *v62;
      v98 = a1[3];
      v97 = a1[4];
      a1[4] = v94;
      v100 = a1[4];
      v99 = a1[5];
      a1[5] = a1[8];
      *v62 = v95;
      a1[7] = v97;
      a1[8] = v99;
      v101 = *a3;
      v146 = v98;
      v147 = v100;
      v148 = a1[5];
      v102 = a1[1];
      v143 = *a1;
      v144 = v102;
      v145 = v96;
      if (v101(&v146, &v143))
      {
        v104 = *a1;
        v103 = a1[1];
        v105 = a1[2];
        v106 = a1[4];
        v107 = a1[5];
        *a1 = a1[3];
        a1[1] = v106;
        a1[2] = v107;
        a1[3] = v104;
        a1[4] = v103;
        a1[5] = v105;
      }
    }
  }

LABEL_33:
  v127 = a1 + 9;
  if (&a1[9] == a2)
  {
    return 1;
  }

  v128 = 0;
  v129 = 0;
  while (1)
  {
    v130 = *a3;
    v131 = v127[1];
    v146 = *v127;
    v147 = v131;
    v148 = v127[2];
    v132 = *v62;
    v133 = v62[2];
    v144 = v62[1];
    v145 = v133;
    v143 = v132;
    if (v130(&v146, &v143))
    {
      v134 = v127[1];
      v146 = *v127;
      v147 = v134;
      v148 = v127[2];
      v135 = v128;
      while (1)
      {
        v136 = (a1->n128_u64 + v135);
        v137 = *(&a1[7] + v135);
        v136[9] = *(&a1[6] + v135);
        v136[10] = v137;
        v136[11] = *(&a1[8] + v135);
        if (v135 == -96)
        {
          break;
        }

        v138 = *a3;
        v143 = v146;
        v144 = v147;
        v145 = v148;
        v139 = v136[4];
        v142[0] = v136[3];
        v142[1] = v139;
        v142[2] = v136[5];
        v135 -= 48;
        if (((v138)(&v143, v142) & 1) == 0)
        {
          v140 = (a1 + v135 + 144);
          goto LABEL_41;
        }
      }

      v140 = a1;
LABEL_41:
      v141 = v147;
      *v140 = v146;
      v140[1] = v141;
      v140[2] = v148;
      if (++v129 == 8)
      {
        return &v127[3] == a2;
      }
    }

    v62 = v127;
    v128 += 48;
    v127 += 3;
    if (v127 == a2)
    {
      return 1;
    }
  }
}

__n128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*,sortQuantizeColorEntry*>(uint64_t a1, __n128 *a2, __n128 *a3, unsigned int (**a4)(__n128 *, __n128 *))
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
    if (a2 - a1 >= 49)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 48 * v10);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(a1, a4, v9, v12);
        v12 -= 3;
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        v14 = *a4;
        v15 = v13[1];
        v32 = *v13;
        v33 = v15;
        v34 = v13[2];
        v16 = *(a1 + 16);
        v31[0] = *a1;
        v31[1] = v16;
        v31[2] = *(a1 + 32);
        if (v14(&v32, v31))
        {
          v17 = *v13;
          v18 = v13[1];
          v19 = v13[2];
          v21 = *(a1 + 16);
          v20 = *(a1 + 32);
          *v13 = *a1;
          v13[1] = v21;
          v13[2] = v20;
          *(a1 + 16) = v18;
          *(a1 + 32) = v19;
          *a1 = v17;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(a1, a4, v9, a1);
        }

        v13 += 3;
      }

      while (v13 != a3);
    }

    if (v8 >= 49)
    {
      v22 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
      v23 = a2 - 3;
      do
      {
        v24 = *(a1 + 16);
        v32 = *a1;
        v33 = v24;
        v34 = *(a1 + 32);
        v25 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(a1, a4, v22);
        if (v23 == v25)
        {
          *v25 = v32;
          v25[1] = v33;
          v25[2] = v34;
        }

        else
        {
          v26 = *v23;
          v27 = v23[2];
          v25[1] = v23[1];
          v25[2] = v27;
          *v25 = v26;
          v28 = v33;
          *v23 = v32;
          v23[1] = v28;
          v23[2] = v34;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(a1, &v25[3], a4, 0xAAAAAAAAAAAAAAABLL * ((&v25[3] - a1) >> 4));
        }

        v23 -= 3;
      }

      while (v22-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(uint64_t a1, unsigned int (**a2)(__n128 *, __n128 *), uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v46 = v4;
    v47 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 4)))
    {
      v12 = (0x5555555555555556 * ((a4 - a1) >> 4)) | 1;
      v13 = (a1 + 48 * v12);
      v14 = 0x5555555555555556 * ((a4 - a1) >> 4) + 2;
      if (v14 < a3)
      {
        v15 = *a2;
        v16 = v13[1];
        v43 = *v13;
        v44 = v16;
        v17 = v13[3];
        v45 = v13[2];
        v18 = v13[4];
        v19 = v13[5];
        v40 = v17;
        v41 = v18;
        v42 = v19;
        if (v15(&v43, &v40))
        {
          v13 += 3;
          v12 = v14;
        }
      }

      v20 = *a2;
      v21 = v13[1];
      v43 = *v13;
      v44 = v21;
      v45 = v13[2];
      v22 = v7[1];
      v40 = *v7;
      v41 = v22;
      v42 = v7[2];
      if ((v20(&v43, &v40) & 1) == 0)
      {
        v24 = v7[1];
        v43 = *v7;
        v44 = v24;
        v45 = v7[2];
        do
        {
          v25 = v13;
          v26 = *v13;
          v27 = v13[2];
          v7[1] = v13[1];
          v7[2] = v27;
          *v7 = v26;
          if (v9 < v12)
          {
            break;
          }

          v28 = (2 * v12) | 1;
          v13 = (a1 + 48 * v28);
          if (2 * v12 + 2 < a3)
          {
            v29 = *a2;
            v30 = v13[1];
            v40 = *v13;
            v41 = v30;
            v31 = v13[3];
            v42 = v13[2];
            v32 = v13[4];
            v33 = v13[5];
            v37 = v31;
            v38 = v32;
            v39 = v33;
            if (v29(&v40, &v37))
            {
              v13 += 3;
              v28 = 2 * v12 + 2;
            }
          }

          v34 = *a2;
          v35 = v13[1];
          v40 = *v13;
          v41 = v35;
          v42 = v13[2];
          v37 = v43;
          v38 = v44;
          v39 = v45;
          v7 = v25;
          v12 = v28;
        }

        while (!v34(&v40, &v37));
        result = v43;
        v36 = v45;
        v25[1] = v44;
        v25[2] = v36;
        *v25 = result;
      }
    }
  }

  return result;
}

_OWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(_OWORD *a1, unsigned int (**a2)(_OWORD *, _OWORD *), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[3 * v6];
    v9 = v8 + 3;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = *a2;
      v13 = *v9;
      v14 = v8[5];
      v22[1] = v8[4];
      v22[2] = v14;
      v22[0] = v13;
      v15 = v8 + 6;
      v16 = v8[6];
      v17 = v8[8];
      v21[1] = v8[7];
      v21[2] = v17;
      v21[0] = v16;
      if (v12(v22, v21))
      {
        v9 = v15;
        v10 = v11;
      }
    }

    v18 = *v9;
    v19 = v9[2];
    a1[1] = v9[1];
    a1[2] = v19;
    *a1 = v18;
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(uint64_t a1, uint64_t a2, unsigned int (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  if (a4 >= 2)
  {
    v31 = v4;
    v32 = v5;
    v9 = (a4 - 2) >> 1;
    v10 = *a3;
    v11 = (a1 + 48 * v9);
    v12 = v11[1];
    v28 = *v11;
    v29 = v12;
    v30 = v11[2];
    v13 = *(a2 - 32);
    v25 = *(a2 - 48);
    v26 = v13;
    v27 = *(a2 - 16);
    if (v10(&v28, &v25))
    {
      v15 = (a2 - 48);
      v16 = *(a2 - 32);
      v28 = *(a2 - 48);
      v29 = v16;
      v30 = *(a2 - 16);
      do
      {
        v17 = v11;
        v18 = *v11;
        v19 = v11[2];
        v15[1] = v11[1];
        v15[2] = v19;
        *v15 = v18;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v20 = *a3;
        v11 = (a1 + 48 * v9);
        v21 = v11[1];
        v25 = *v11;
        v26 = v21;
        v27 = v11[2];
        v24[0] = v28;
        v24[1] = v29;
        v24[2] = v30;
        v22 = v20(&v25, v24);
        v15 = v17;
      }

      while ((v22 & 1) != 0);
      v23 = v29;
      *v17 = v28;
      v17[1] = v23;
      result = *&v30;
      v17[2] = v30;
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<sortColorEntry>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,false>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 4;
  v9 = a2 - 8;
  v10 = a2 - 12;
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = (a2 - v11) >> 6;
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      v450 = *a3;
      v451 = *(a2 - 4);
      v452 = *(a2 - 3);
      v453 = *(a2 - 1);
      v497 = *(a2 - 2);
      v498 = v453;
      v495 = v451;
      v496 = v452;
      v454 = *v11;
      v455 = v11[1];
      v456 = v11[3];
      v493 = v11[2];
      v494 = v456;
      v491 = v454;
      v492 = v455;
      if (!v450(&v495, &v491))
      {
        return;
      }

      goto LABEL_78;
    }

LABEL_10:
    if (v14 <= 23)
    {
      if (a5)
      {
        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(v11, a2, a3);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(v11, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v11 != a2)
      {
        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,sortColorEntry*>(v11, a2, a2, a3);
      }

      return;
    }

    v15 = &v11[4 * (v14 >> 1)];
    v16 = *a3;
    if (v14 >= 0x81)
    {
      v17 = *v15;
      v18 = v15[1];
      v19 = v15[3];
      v497 = v15[2];
      v498 = v19;
      v495 = v17;
      v496 = v18;
      v20 = *v11;
      v21 = v11[1];
      v22 = v11[3];
      v493 = v11[2];
      v494 = v22;
      v491 = v20;
      v492 = v21;
      v23 = v16(&v495, &v491);
      v24 = *a3;
      if (v23)
      {
        v25 = *v8;
        v26 = *(a2 - 3);
        v27 = *(a2 - 1);
        v497 = *(a2 - 2);
        v498 = v27;
        v495 = v25;
        v496 = v26;
        v28 = *v15;
        v29 = v15[1];
        v30 = v15[3];
        v493 = v15[2];
        v494 = v30;
        v491 = v28;
        v492 = v29;
        if (v24(&v495, &v491))
        {
          v31 = *v11;
          v32 = v11[1];
          v33 = v11[3];
          v497 = v11[2];
          v498 = v33;
          v495 = v31;
          v496 = v32;
          v34 = *v8;
          v35 = *(a2 - 3);
          v36 = *(a2 - 1);
          v11[2] = *(a2 - 2);
          v11[3] = v36;
          *v11 = v34;
          v11[1] = v35;
          goto LABEL_27;
        }

        v113 = *v11;
        v114 = v11[1];
        v115 = v11[3];
        v497 = v11[2];
        v498 = v115;
        v495 = v113;
        v496 = v114;
        v116 = *v15;
        v117 = v15[1];
        v118 = v15[3];
        v11[2] = v15[2];
        v11[3] = v118;
        *v11 = v116;
        v11[1] = v117;
        v119 = v495;
        v120 = v496;
        v121 = v498;
        v15[2] = v497;
        v15[3] = v121;
        *v15 = v119;
        v15[1] = v120;
        v122 = *a3;
        v123 = *v8;
        v124 = *(a2 - 3);
        v125 = *(a2 - 1);
        v497 = *(a2 - 2);
        v498 = v125;
        v495 = v123;
        v496 = v124;
        v126 = *v15;
        v127 = v15[1];
        v128 = v15[3];
        v493 = v15[2];
        v494 = v128;
        v491 = v126;
        v492 = v127;
        if (v122(&v495, &v491))
        {
          v129 = *v15;
          v130 = v15[1];
          v131 = v15[3];
          v497 = v15[2];
          v498 = v131;
          v495 = v129;
          v496 = v130;
          v132 = *v8;
          v133 = *(a2 - 3);
          v134 = *(a2 - 1);
          v15[2] = *(a2 - 2);
          v15[3] = v134;
          *v15 = v132;
          v15[1] = v133;
LABEL_27:
          *v8 = v495;
          *(a2 - 3) = v496;
          *(a2 - 2) = v497;
          *(a2 - 1) = v498;
        }
      }

      else
      {
        v57 = *v8;
        v58 = *(a2 - 3);
        v59 = *(a2 - 1);
        v497 = *(a2 - 2);
        v498 = v59;
        v495 = v57;
        v496 = v58;
        v60 = *v15;
        v61 = v15[1];
        v62 = v15[3];
        v493 = v15[2];
        v494 = v62;
        v491 = v60;
        v492 = v61;
        if (v24(&v495, &v491))
        {
          v63 = *v15;
          v64 = v15[1];
          v65 = v15[3];
          v497 = v15[2];
          v498 = v65;
          v495 = v63;
          v496 = v64;
          v66 = *v8;
          v67 = *(a2 - 3);
          v68 = *(a2 - 1);
          v15[2] = *(a2 - 2);
          v15[3] = v68;
          *v15 = v66;
          v15[1] = v67;
          *v8 = v495;
          *(a2 - 3) = v496;
          *(a2 - 2) = v497;
          *(a2 - 1) = v498;
          v69 = *a3;
          v70 = *v15;
          v71 = v15[1];
          v72 = v15[3];
          v497 = v15[2];
          v498 = v72;
          v495 = v70;
          v496 = v71;
          v73 = *v11;
          v74 = v11[1];
          v75 = v11[3];
          v493 = v11[2];
          v494 = v75;
          v491 = v73;
          v492 = v74;
          if (v69(&v495, &v491))
          {
            v76 = *v11;
            v77 = v11[1];
            v78 = v11[3];
            v497 = v11[2];
            v498 = v78;
            v495 = v76;
            v496 = v77;
            v79 = *v15;
            v80 = v15[1];
            v81 = v15[3];
            v11[2] = v15[2];
            v11[3] = v81;
            *v11 = v79;
            v11[1] = v80;
            v82 = v495;
            v83 = v496;
            v84 = v498;
            v15[2] = v497;
            v15[3] = v84;
            *v15 = v82;
            v15[1] = v83;
          }
        }
      }

      v135 = v15 - 4;
      v136 = *a3;
      v137 = *(v15 - 4);
      v138 = *(v15 - 3);
      v139 = *(v15 - 1);
      v497 = *(v15 - 2);
      v498 = v139;
      v495 = v137;
      v496 = v138;
      v140 = a1[5];
      v491 = a1[4];
      v492 = v140;
      v141 = a1[7];
      v493 = a1[6];
      v494 = v141;
      v142 = v136(&v495, &v491);
      v143 = *a3;
      if (v142)
      {
        v144 = *v9;
        v145 = *(a2 - 7);
        v146 = *(a2 - 5);
        v497 = *(a2 - 6);
        v498 = v146;
        v495 = v144;
        v496 = v145;
        v147 = *v135;
        v148 = *(v15 - 3);
        v149 = *(v15 - 1);
        v493 = *(v15 - 2);
        v494 = v149;
        v491 = v147;
        v492 = v148;
        if (v143(&v495, &v491))
        {
          v151 = a1[6];
          v150 = a1[7];
          v153 = a1[4];
          v152 = a1[5];
          v154 = *(a2 - 5);
          v156 = *v9;
          v155 = *(a2 - 7);
          a1[6] = *(a2 - 6);
          a1[7] = v154;
          a1[4] = v156;
          a1[5] = v155;
          *v9 = v153;
          *(a2 - 7) = v152;
          *(a2 - 6) = v151;
          goto LABEL_39;
        }

        v205 = a1[5];
        v495 = a1[4];
        v204 = v495;
        v496 = v205;
        v207 = a1[7];
        v497 = a1[6];
        v206 = v497;
        v498 = v207;
        v209 = *(v15 - 2);
        v208 = *(v15 - 1);
        v210 = *(v15 - 3);
        a1[4] = *v135;
        a1[5] = v210;
        a1[6] = v209;
        a1[7] = v208;
        *(v15 - 2) = v206;
        *(v15 - 1) = v207;
        *v135 = v204;
        *(v15 - 3) = v205;
        v211 = *a3;
        v212 = *v9;
        v213 = *(a2 - 7);
        v214 = *(a2 - 5);
        v497 = *(a2 - 6);
        v498 = v214;
        v495 = v212;
        v496 = v213;
        v215 = *v135;
        v216 = *(v15 - 3);
        v217 = *(v15 - 1);
        v493 = *(v15 - 2);
        v494 = v217;
        v491 = v215;
        v492 = v216;
        if (v211(&v495, &v491))
        {
          v218 = *v135;
          v219 = *(v15 - 3);
          v220 = *(v15 - 1);
          v497 = *(v15 - 2);
          v498 = v220;
          v495 = v218;
          v496 = v219;
          v221 = *v9;
          v222 = *(a2 - 7);
          v223 = *(a2 - 5);
          *(v15 - 2) = *(a2 - 6);
          *(v15 - 1) = v223;
          *v135 = v221;
          *(v15 - 3) = v222;
          *v9 = v495;
          *(a2 - 7) = v496;
          *(a2 - 6) = v497;
          v150 = v498;
LABEL_39:
          *(a2 - 5) = v150;
        }
      }

      else
      {
        v157 = *v9;
        v158 = *(a2 - 7);
        v159 = *(a2 - 5);
        v497 = *(a2 - 6);
        v498 = v159;
        v495 = v157;
        v496 = v158;
        v160 = *v135;
        v161 = *(v15 - 3);
        v162 = *(v15 - 1);
        v493 = *(v15 - 2);
        v494 = v162;
        v491 = v160;
        v492 = v161;
        if (v143(&v495, &v491))
        {
          v163 = *v135;
          v164 = *(v15 - 3);
          v165 = *(v15 - 1);
          v497 = *(v15 - 2);
          v498 = v165;
          v495 = v163;
          v496 = v164;
          v166 = *v9;
          v167 = *(a2 - 7);
          v168 = *(a2 - 5);
          *(v15 - 2) = *(a2 - 6);
          *(v15 - 1) = v168;
          *v135 = v166;
          *(v15 - 3) = v167;
          *v9 = v495;
          *(a2 - 7) = v496;
          *(a2 - 6) = v497;
          *(a2 - 5) = v498;
          v169 = *a3;
          v170 = *v135;
          v171 = *(v15 - 3);
          v172 = *(v15 - 1);
          v497 = *(v15 - 2);
          v498 = v172;
          v495 = v170;
          v496 = v171;
          v173 = a1[5];
          v491 = a1[4];
          v492 = v173;
          v174 = a1[7];
          v493 = a1[6];
          v494 = v174;
          if (v169(&v495, &v491))
          {
            v176 = a1[5];
            v495 = a1[4];
            v175 = v495;
            v496 = v176;
            v178 = a1[7];
            v497 = a1[6];
            v177 = v497;
            v498 = v178;
            v180 = *(v15 - 2);
            v179 = *(v15 - 1);
            v181 = *(v15 - 3);
            a1[4] = *v135;
            a1[5] = v181;
            a1[6] = v180;
            a1[7] = v179;
            *(v15 - 2) = v177;
            *(v15 - 1) = v178;
            *v135 = v175;
            *(v15 - 3) = v176;
          }
        }
      }

      v224 = *a3;
      v225 = v15[4];
      v226 = v15[5];
      v227 = v15[7];
      v497 = v15[6];
      v498 = v227;
      v495 = v225;
      v496 = v226;
      v228 = a1[9];
      v491 = a1[8];
      v492 = v228;
      v229 = a1[11];
      v493 = a1[10];
      v494 = v229;
      v230 = v224(&v495, &v491);
      v231 = *a3;
      if (v230)
      {
        v232 = *v10;
        v233 = *(a2 - 11);
        v234 = *(a2 - 9);
        v497 = *(a2 - 10);
        v498 = v234;
        v495 = v232;
        v496 = v233;
        v235 = v15[4];
        v236 = v15[5];
        v237 = v15[7];
        v493 = v15[6];
        v494 = v237;
        v491 = v235;
        v492 = v236;
        if (v231(&v495, &v491))
        {
          v239 = a1[10];
          v238 = a1[11];
          v241 = a1[8];
          v240 = a1[9];
          v242 = *(a2 - 9);
          v244 = *v10;
          v243 = *(a2 - 11);
          a1[10] = *(a2 - 10);
          a1[11] = v242;
          a1[8] = v244;
          a1[9] = v243;
          *v10 = v241;
          *(a2 - 11) = v240;
          *(a2 - 10) = v239;
          goto LABEL_48;
        }

        v271 = a1[9];
        v495 = a1[8];
        v270 = v495;
        v496 = v271;
        v273 = a1[11];
        v497 = a1[10];
        v272 = v497;
        v498 = v273;
        v275 = v15[6];
        v274 = v15[7];
        v276 = v15[5];
        a1[8] = v15[4];
        a1[9] = v276;
        a1[10] = v275;
        a1[11] = v274;
        v15[6] = v272;
        v15[7] = v273;
        v15[4] = v270;
        v15[5] = v271;
        v277 = *a3;
        v278 = *v10;
        v279 = *(a2 - 11);
        v280 = *(a2 - 9);
        v497 = *(a2 - 10);
        v498 = v280;
        v495 = v278;
        v496 = v279;
        v281 = v15[4];
        v282 = v15[5];
        v283 = v15[7];
        v493 = v15[6];
        v494 = v283;
        v491 = v281;
        v492 = v282;
        if (v277(&v495, &v491))
        {
          v284 = v15[4];
          v285 = v15[5];
          v286 = v15[7];
          v497 = v15[6];
          v498 = v286;
          v495 = v284;
          v496 = v285;
          v287 = *v10;
          v288 = *(a2 - 11);
          v289 = *(a2 - 9);
          v15[6] = *(a2 - 10);
          v15[7] = v289;
          v15[4] = v287;
          v15[5] = v288;
          *v10 = v495;
          *(a2 - 11) = v496;
          *(a2 - 10) = v497;
          v238 = v498;
LABEL_48:
          *(a2 - 9) = v238;
        }
      }

      else
      {
        v245 = *v10;
        v246 = *(a2 - 11);
        v247 = *(a2 - 9);
        v497 = *(a2 - 10);
        v498 = v247;
        v495 = v245;
        v496 = v246;
        v248 = v15[4];
        v249 = v15[5];
        v250 = v15[7];
        v493 = v15[6];
        v494 = v250;
        v491 = v248;
        v492 = v249;
        if (v231(&v495, &v491))
        {
          v251 = v15[4];
          v252 = v15[5];
          v253 = v15[7];
          v497 = v15[6];
          v498 = v253;
          v495 = v251;
          v496 = v252;
          v254 = *v10;
          v255 = *(a2 - 11);
          v256 = *(a2 - 9);
          v15[6] = *(a2 - 10);
          v15[7] = v256;
          v15[4] = v254;
          v15[5] = v255;
          *v10 = v495;
          *(a2 - 11) = v496;
          *(a2 - 10) = v497;
          *(a2 - 9) = v498;
          v257 = *a3;
          v258 = v15[4];
          v259 = v15[5];
          v260 = v15[7];
          v497 = v15[6];
          v498 = v260;
          v495 = v258;
          v496 = v259;
          v261 = a1[9];
          v491 = a1[8];
          v492 = v261;
          v262 = a1[11];
          v493 = a1[10];
          v494 = v262;
          if (v257(&v495, &v491))
          {
            v264 = a1[9];
            v495 = a1[8];
            v263 = v495;
            v496 = v264;
            v266 = a1[11];
            v497 = a1[10];
            v265 = v497;
            v498 = v266;
            v268 = v15[6];
            v267 = v15[7];
            v269 = v15[5];
            a1[8] = v15[4];
            a1[9] = v269;
            a1[10] = v268;
            a1[11] = v267;
            v15[6] = v265;
            v15[7] = v266;
            v15[4] = v263;
            v15[5] = v264;
          }
        }
      }

      v290 = *a3;
      v291 = *v15;
      v292 = v15[1];
      v293 = v15[3];
      v497 = v15[2];
      v498 = v293;
      v495 = v291;
      v496 = v292;
      v294 = *v135;
      v295 = *(v15 - 3);
      v296 = *(v15 - 1);
      v493 = *(v15 - 2);
      v494 = v296;
      v491 = v294;
      v492 = v295;
      v297 = v290(&v495, &v491);
      v298 = *a3;
      if (v297)
      {
        v299 = v15[4];
        v300 = v15[5];
        v301 = v15[7];
        v497 = v15[6];
        v498 = v301;
        v495 = v299;
        v496 = v300;
        v302 = *v15;
        v303 = v15[1];
        v304 = v15[3];
        v493 = v15[2];
        v494 = v304;
        v491 = v302;
        v492 = v303;
        if (v298(&v495, &v491))
        {
          v305 = *v135;
          v306 = *(v15 - 3);
          v307 = *(v15 - 1);
          v497 = *(v15 - 2);
          v498 = v307;
          v495 = v305;
          v496 = v306;
          v308 = v15[5];
          *v135 = v15[4];
          *(v15 - 3) = v308;
          v309 = v15[7];
          *(v15 - 2) = v15[6];
          *(v15 - 1) = v309;
          goto LABEL_57;
        }

        v339 = *v135;
        v340 = *(v15 - 3);
        v341 = *(v15 - 1);
        v497 = *(v15 - 2);
        v498 = v341;
        v495 = v339;
        v496 = v340;
        v342 = v15[1];
        *v135 = *v15;
        *(v15 - 3) = v342;
        v343 = v15[3];
        *(v15 - 2) = v15[2];
        *(v15 - 1) = v343;
        v344 = v498;
        v345 = v495;
        v346 = v496;
        v15[2] = v497;
        v15[3] = v344;
        *v15 = v345;
        v15[1] = v346;
        v347 = *a3;
        v348 = v15[4];
        v349 = v15[5];
        v350 = v15[7];
        v497 = v15[6];
        v498 = v350;
        v495 = v348;
        v496 = v349;
        v351 = *v15;
        v352 = v15[1];
        v353 = v15[3];
        v493 = v15[2];
        v494 = v353;
        v491 = v351;
        v492 = v352;
        if (v347(&v495, &v491))
        {
          v354 = *v15;
          v355 = v15[1];
          v356 = v15[3];
          v497 = v15[2];
          v498 = v356;
          v495 = v354;
          v496 = v355;
          v357 = v15[5];
          *v15 = v15[4];
          v15[1] = v357;
          v358 = v15[7];
          v15[2] = v15[6];
          v15[3] = v358;
LABEL_57:
          v359 = v498;
          v360 = v495;
          v361 = v496;
          v15[6] = v497;
          v15[7] = v359;
          v15[4] = v360;
          v15[5] = v361;
        }
      }

      else
      {
        v310 = v15[4];
        v311 = v15[5];
        v312 = v15[7];
        v497 = v15[6];
        v498 = v312;
        v495 = v310;
        v496 = v311;
        v313 = *v15;
        v314 = v15[1];
        v315 = v15[3];
        v493 = v15[2];
        v494 = v315;
        v491 = v313;
        v492 = v314;
        if (v298(&v495, &v491))
        {
          v316 = *v15;
          v317 = v15[1];
          v318 = v15[3];
          v497 = v15[2];
          v498 = v318;
          v495 = v316;
          v496 = v317;
          v319 = v15[5];
          *v15 = v15[4];
          v15[1] = v319;
          v320 = v15[7];
          v15[2] = v15[6];
          v15[3] = v320;
          v321 = v498;
          v322 = v495;
          v323 = v496;
          v15[6] = v497;
          v15[7] = v321;
          v15[4] = v322;
          v15[5] = v323;
          v324 = *a3;
          v325 = *v15;
          v326 = v15[1];
          v327 = v15[3];
          v497 = v15[2];
          v498 = v327;
          v495 = v325;
          v496 = v326;
          v328 = *v135;
          v329 = *(v15 - 3);
          v330 = *(v15 - 1);
          v493 = *(v15 - 2);
          v494 = v330;
          v491 = v328;
          v492 = v329;
          if (v324(&v495, &v491))
          {
            v331 = *v135;
            v332 = *(v15 - 3);
            v333 = *(v15 - 1);
            v497 = *(v15 - 2);
            v498 = v333;
            v495 = v331;
            v496 = v332;
            v334 = v15[1];
            *v135 = *v15;
            *(v15 - 3) = v334;
            v335 = v15[3];
            *(v15 - 2) = v15[2];
            *(v15 - 1) = v335;
            v336 = v498;
            v337 = v495;
            v338 = v496;
            v15[2] = v497;
            v15[3] = v336;
            *v15 = v337;
            v15[1] = v338;
          }
        }
      }

      v362 = *a1;
      v363 = a1[1];
      v364 = a1[3];
      v497 = a1[2];
      v498 = v364;
      v495 = v362;
      v496 = v363;
      v365 = *v15;
      v366 = v15[1];
      v367 = v15[3];
      a1[2] = v15[2];
      a1[3] = v367;
      *a1 = v365;
      a1[1] = v366;
      v368 = v495;
      v369 = v496;
      v370 = v498;
      v15[2] = v497;
      v15[3] = v370;
      *v15 = v368;
      v15[1] = v369;
      goto LABEL_59;
    }

    v37 = *v11;
    v38 = v11[1];
    v39 = v11[3];
    v497 = v11[2];
    v498 = v39;
    v495 = v37;
    v496 = v38;
    v40 = *v15;
    v41 = v15[1];
    v42 = v15[3];
    v493 = v15[2];
    v494 = v42;
    v491 = v40;
    v492 = v41;
    v43 = v16(&v495, &v491);
    v44 = *a3;
    if (v43)
    {
      v45 = *v8;
      v46 = *(a2 - 3);
      v47 = *(a2 - 1);
      v497 = *(a2 - 2);
      v498 = v47;
      v495 = v45;
      v496 = v46;
      v48 = *v11;
      v49 = v11[1];
      v50 = v11[3];
      v493 = v11[2];
      v494 = v50;
      v491 = v48;
      v492 = v49;
      if (v44(&v495, &v491))
      {
        v51 = *v15;
        v52 = v15[1];
        v53 = v15[3];
        v497 = v15[2];
        v498 = v53;
        v495 = v51;
        v496 = v52;
        v54 = *v8;
        v55 = *(a2 - 3);
        v56 = *(a2 - 1);
        v15[2] = *(a2 - 2);
        v15[3] = v56;
        *v15 = v54;
        v15[1] = v55;
LABEL_36:
        *v8 = v495;
        *(a2 - 3) = v496;
        *(a2 - 2) = v497;
        *(a2 - 1) = v498;
        goto LABEL_59;
      }

      v182 = *v15;
      v183 = v15[1];
      v184 = v15[3];
      v497 = v15[2];
      v498 = v184;
      v495 = v182;
      v496 = v183;
      v185 = *v11;
      v186 = v11[1];
      v187 = v11[3];
      v15[2] = v11[2];
      v15[3] = v187;
      *v15 = v185;
      v15[1] = v186;
      v188 = v495;
      v189 = v496;
      v190 = v498;
      v11[2] = v497;
      v11[3] = v190;
      *v11 = v188;
      v11[1] = v189;
      v191 = *a3;
      v192 = *v8;
      v193 = *(a2 - 3);
      v194 = *(a2 - 1);
      v497 = *(a2 - 2);
      v498 = v194;
      v495 = v192;
      v496 = v193;
      v195 = *v11;
      v196 = v11[1];
      v197 = v11[3];
      v493 = v11[2];
      v494 = v197;
      v491 = v195;
      v492 = v196;
      if (v191(&v495, &v491))
      {
        v198 = *v11;
        v199 = v11[1];
        v200 = v11[3];
        v497 = v11[2];
        v498 = v200;
        v495 = v198;
        v496 = v199;
        v201 = *v8;
        v202 = *(a2 - 3);
        v203 = *(a2 - 1);
        v11[2] = *(a2 - 2);
        v11[3] = v203;
        *v11 = v201;
        v11[1] = v202;
        goto LABEL_36;
      }
    }

    else
    {
      v85 = *v8;
      v86 = *(a2 - 3);
      v87 = *(a2 - 1);
      v497 = *(a2 - 2);
      v498 = v87;
      v495 = v85;
      v496 = v86;
      v88 = *v11;
      v89 = v11[1];
      v90 = v11[3];
      v493 = v11[2];
      v494 = v90;
      v491 = v88;
      v492 = v89;
      if (v44(&v495, &v491))
      {
        v91 = *v11;
        v92 = v11[1];
        v93 = v11[3];
        v497 = v11[2];
        v498 = v93;
        v495 = v91;
        v496 = v92;
        v94 = *v8;
        v95 = *(a2 - 3);
        v96 = *(a2 - 1);
        v11[2] = *(a2 - 2);
        v11[3] = v96;
        *v11 = v94;
        v11[1] = v95;
        *v8 = v495;
        *(a2 - 3) = v496;
        *(a2 - 2) = v497;
        *(a2 - 1) = v498;
        v97 = *a3;
        v98 = *v11;
        v99 = v11[1];
        v100 = v11[3];
        v497 = v11[2];
        v498 = v100;
        v495 = v98;
        v496 = v99;
        v101 = *v15;
        v102 = v15[1];
        v103 = v15[3];
        v493 = v15[2];
        v494 = v103;
        v491 = v101;
        v492 = v102;
        if (v97(&v495, &v491))
        {
          v104 = *v15;
          v105 = v15[1];
          v106 = v15[3];
          v497 = v15[2];
          v498 = v106;
          v495 = v104;
          v496 = v105;
          v107 = *v11;
          v108 = v11[1];
          v109 = v11[3];
          v15[2] = v11[2];
          v15[3] = v109;
          *v15 = v107;
          v15[1] = v108;
          v110 = v495;
          v111 = v496;
          v112 = v498;
          v11[2] = v497;
          v11[3] = v112;
          *v11 = v110;
          v11[1] = v111;
        }
      }
    }

LABEL_59:
    if ((a5 & 1) == 0)
    {
      v371 = *a3;
      v372 = *(a1 - 4);
      v373 = *(a1 - 3);
      v374 = *(a1 - 1);
      v497 = *(a1 - 2);
      v498 = v374;
      v495 = v372;
      v496 = v373;
      v375 = *a1;
      v376 = a1[1];
      v377 = a1[3];
      v493 = a1[2];
      v494 = v377;
      v491 = v375;
      v492 = v376;
      if ((v371(&v495, &v491) & 1) == 0)
      {
        v11 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,sortColorEntry *,BOOL (*&)(sortColorEntry,sortColorEntry)>(a1, a2, a3);
        goto LABEL_66;
      }
    }

    v378 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,sortColorEntry *,BOOL (*&)(sortColorEntry,sortColorEntry)>(a1, a2, a3);
    if ((v379 & 1) == 0)
    {
      goto LABEL_64;
    }

    v380 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(a1, v378, a3);
    v11 = &v378[4];
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(v378 + 4, a2, a3))
    {
      a4 = -v13;
      a2 = v378;
      if (v380)
      {
        return;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v380)
    {
LABEL_64:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,false>(a1, v378, a3, -v13, a5 & 1);
      v11 = &v378[4];
LABEL_66:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(v11, v11 + 4, v11 + 8, a2 - 4, a3);
      return;
    }

    if (v14 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(v11, v11 + 4, v11 + 8, v11 + 12, a3);
      v415 = *a3;
      v416 = *(a2 - 4);
      v417 = *(a2 - 3);
      v418 = *(a2 - 1);
      v497 = *(a2 - 2);
      v498 = v418;
      v495 = v416;
      v496 = v417;
      v419 = v11[13];
      v491 = v11[12];
      v492 = v419;
      v420 = v11[15];
      v493 = v11[14];
      v494 = v420;
      if (v415(&v495, &v491))
      {
        v422 = v11[14];
        v421 = v11[15];
        v424 = v11[12];
        v423 = v11[13];
        v425 = *(a2 - 1);
        v427 = *v8;
        v426 = *(a2 - 3);
        v11[14] = *(a2 - 2);
        v11[15] = v425;
        v11[12] = v427;
        v11[13] = v426;
        *v8 = v424;
        *(a2 - 3) = v423;
        *(a2 - 2) = v422;
        *(a2 - 1) = v421;
        v428 = *a3;
        v429 = v11[13];
        v495 = v11[12];
        v496 = v429;
        v430 = v11[15];
        v497 = v11[14];
        v498 = v430;
        v431 = v11[9];
        v491 = v11[8];
        v492 = v431;
        v432 = v11[11];
        v493 = v11[10];
        v494 = v432;
        if (v428(&v495, &v491))
        {
          v434 = v11[10];
          v433 = v11[11];
          v436 = v11[8];
          v435 = v11[9];
          v437 = v11[13];
          v11[8] = v11[12];
          v11[9] = v437;
          v438 = v11[15];
          v11[10] = v11[14];
          v11[11] = v438;
          v11[12] = v436;
          v11[13] = v435;
          v11[14] = v434;
          v11[15] = v433;
          v439 = *a3;
          v440 = v11[9];
          v495 = v11[8];
          v496 = v440;
          v441 = v11[11];
          v497 = v11[10];
          v498 = v441;
          v442 = v11[5];
          v491 = v11[4];
          v492 = v442;
          v443 = v11[7];
          v493 = v11[6];
          v494 = v443;
          if (v439(&v495, &v491))
          {
            v445 = v11[6];
            v444 = v11[7];
            v447 = v11[4];
            v446 = v11[5];
            v448 = v11[9];
            v11[4] = v11[8];
            v11[5] = v448;
            v449 = v11[11];
            v11[6] = v11[10];
            v11[7] = v449;
            v11[8] = v447;
            v11[9] = v446;
            v11[10] = v445;
            v11[11] = v444;
LABEL_86:
            v476 = *a3;
            v477 = v11[5];
            v495 = v11[4];
            v496 = v477;
            v478 = v11[7];
            v497 = v11[6];
            v498 = v478;
            v479 = *v11;
            v480 = v11[1];
            v481 = v11[3];
            v493 = v11[2];
            v494 = v481;
            v491 = v479;
            v492 = v480;
            if (v476(&v495, &v491))
            {
              v482 = *v11;
              v483 = v11[1];
              v484 = v11[3];
              v497 = v11[2];
              v498 = v484;
              v495 = v482;
              v496 = v483;
              v485 = v11[5];
              *v11 = v11[4];
              v11[1] = v485;
              v486 = v11[7];
              v11[2] = v11[6];
              v11[3] = v486;
              v487 = v495;
              v488 = v496;
              v489 = v498;
              v11[6] = v497;
              v11[7] = v489;
              v11[4] = v487;
              v11[5] = v488;
            }
          }
        }
      }

      return;
    }

    goto LABEL_10;
  }

  v381 = *a3;
  v382 = v11[5];
  v495 = v11[4];
  v496 = v382;
  v383 = v11[7];
  v497 = v11[6];
  v498 = v383;
  v384 = *v11;
  v385 = v11[1];
  v386 = v11[3];
  v493 = v11[2];
  v494 = v386;
  v491 = v384;
  v492 = v385;
  v387 = v381(&v495, &v491);
  v388 = *a3;
  if (v387)
  {
    v389 = *v8;
    v390 = *(a2 - 3);
    v391 = *(a2 - 1);
    v497 = *(a2 - 2);
    v498 = v391;
    v495 = v389;
    v496 = v390;
    v392 = v11[5];
    v491 = v11[4];
    v492 = v392;
    v393 = v11[7];
    v493 = v11[6];
    v494 = v393;
    if (!v388(&v495, &v491))
    {
      v394 = *v11;
      v395 = v11[1];
      v396 = v11[3];
      v497 = v11[2];
      v498 = v396;
      v495 = v394;
      v496 = v395;
      v397 = v11[5];
      *v11 = v11[4];
      v11[1] = v397;
      v398 = v11[7];
      v11[2] = v11[6];
      v11[3] = v398;
      v399 = v495;
      v400 = v496;
      v401 = v498;
      v11[6] = v497;
      v11[7] = v401;
      v11[4] = v399;
      v11[5] = v400;
      v402 = *a3;
      v403 = *v8;
      v404 = *(a2 - 3);
      v405 = *(a2 - 1);
      v497 = *(a2 - 2);
      v498 = v405;
      v495 = v403;
      v496 = v404;
      v406 = v11[5];
      v491 = v11[4];
      v492 = v406;
      v407 = v11[7];
      v493 = v11[6];
      v494 = v407;
      if (v402(&v495, &v491))
      {
        v409 = v11[6];
        v408 = v11[7];
        v411 = v11[4];
        v410 = v11[5];
        v412 = *(a2 - 1);
        v414 = *v8;
        v413 = *(a2 - 3);
        v11[6] = *(a2 - 2);
        v11[7] = v412;
        v11[4] = v414;
        v11[5] = v413;
        *v8 = v411;
        *(a2 - 3) = v410;
        *(a2 - 2) = v409;
        *(a2 - 1) = v408;
      }

      return;
    }

LABEL_78:
    v458 = *v11;
    v459 = v11[1];
    v460 = v11[3];
    v497 = v11[2];
    v498 = v460;
    v495 = v458;
    v496 = v459;
    v461 = *v8;
    v462 = *(a2 - 3);
    v463 = *(a2 - 1);
    v11[2] = *(a2 - 2);
    v11[3] = v463;
    *v11 = v461;
    v11[1] = v462;
    *v8 = v495;
    *(a2 - 3) = v496;
    *(a2 - 2) = v497;
    *(a2 - 1) = v498;
    return;
  }

  v464 = *v8;
  v465 = *(a2 - 3);
  v466 = *(a2 - 1);
  v497 = *(a2 - 2);
  v498 = v466;
  v495 = v464;
  v496 = v465;
  v467 = v11[5];
  v491 = v11[4];
  v492 = v467;
  v468 = v11[7];
  v493 = v11[6];
  v494 = v468;
  if (v388(&v495, &v491))
  {
    v470 = v11[6];
    v469 = v11[7];
    v472 = v11[4];
    v471 = v11[5];
    v473 = *(a2 - 1);
    v475 = *v8;
    v474 = *(a2 - 3);
    v11[6] = *(a2 - 2);
    v11[7] = v473;
    v11[4] = v475;
    v11[5] = v474;
    *v8 = v472;
    *(a2 - 3) = v471;
    *(a2 - 2) = v470;
    *(a2 - 1) = v469;
    goto LABEL_86;
  }
}