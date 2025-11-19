uint64_t CPS_LOG_CHANNEL_PREFIXClipUIServices()
{
  if (CPS_LOG_CHANNEL_PREFIXClipUIServices_onceToken != -1)
  {
    CPS_LOG_CHANNEL_PREFIXClipUIServices_cold_1();
  }

  return CPS_LOG_CHANNEL_PREFIXClipUIServices_log;
}

void sendResult(void *a1, void *a2)
{
  v7 = a1;
  v3 = a2;
  v4 = MEMORY[0x277D755B8];
  v5 = [v7 CGImage];
  [v7 scale];
  v6 = [v4 imageWithCGImage:v5 scale:0 orientation:?];
  v3[2](v3, v6, [v7 placeholder]);
}

id makeAppStoreImageView()
{
  v0 = objc_alloc(MEMORY[0x277D755E8]);
  v1 = [MEMORY[0x277D755B8] _systemImageNamed:@"appstore"];
  v2 = [v0 initWithImage:v1];

  v3 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76938] scale:2];
  [v2 setPreferredSymbolConfiguration:v3];

  LODWORD(v4) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:v4];
  LODWORD(v5) = 1148846080;
  [v2 setContentHuggingPriority:1 forAxis:v5];
  [v2 setContentMode:4];
  v6 = makeVibrant(v2, 1);

  return v6;
}

id makeVibrant(void *a1, uint64_t a2)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D75210];
  v4 = a1;
  v24 = [v3 effectWithStyle:8];
  v23 = [MEMORY[0x277D75D00] effectForBlurEffect:v24 style:a2];
  v5 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v23];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = v5;
  v6 = [v5 contentView];
  [v6 addSubview:v4];
  v18 = MEMORY[0x277CCAAD0];
  v22 = [v4 centerXAnchor];
  v21 = [v6 centerXAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v25[0] = v20;
  v19 = [v4 centerYAnchor];
  v7 = [v6 centerYAnchor];
  v8 = [v19 constraintEqualToAnchor:v7];
  v25[1] = v8;
  v9 = [v4 leadingAnchor];
  v10 = [v6 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v25[2] = v11;
  v12 = [v4 topAnchor];

  v13 = [v6 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v25[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
  [v18 activateConstraints:v15];

  return v17;
}

id makeChevronImageView()
{
  v0 = objc_alloc(MEMORY[0x277D755E8]);
  v1 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.forward"];
  v2 = [v0 initWithImage:v1];

  v3 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76938] variant:1024];
  v4 = [MEMORY[0x277D755D0] configurationWithFont:v3 scale:1];

  [v2 setPreferredSymbolConfiguration:v4];
  LODWORD(v5) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [v2 setContentHuggingPriority:1 forAxis:v6];
  v7 = makeVibrant(v2, 2);

  return v7;
}

void sub_243752D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2437532C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_243753598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_243754BC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_243755188(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_24375559C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_2437578D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPRXCardPreferredSizeClassForContainerBoundsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ProxCardKitLibrary();
  result = dlsym(v2, "PRXCardPreferredSizeClassForContainerBounds");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPRXCardPreferredSizeClassForContainerBoundsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ProxCardKitLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!ProxCardKitLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __ProxCardKitLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278DD24E0;
    v4 = 0;
    ProxCardKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ProxCardKitLibraryCore_frameworkLibrary;
  if (!ProxCardKitLibraryCore_frameworkLibrary)
  {
    ProxCardKitLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __ProxCardKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ProxCardKitLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getPRXCardPreferredSizeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ProxCardKitLibrary();
  result = dlsym(v2, "PRXCardPreferredSize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPRXCardPreferredSizeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t viewContainsAccessibilityElement(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    if (v3 == v4 || (objc_opt_respondsToSelector() & 1) != 0 && ([v5 isEqual:v3] & 1) != 0)
    {
      v6 = 1;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [v5 superview];
      }

      else
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v6 = 0;
          goto LABEL_13;
        }

        v7 = [v5 accessibilityContainer];
      }

      v8 = v7;
      v6 = viewContainsAccessibilityElement(v3, v7);
    }
  }

LABEL_13:

  return v6;
}

id inlineCardButtonFont(NSString *a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = *MEMORY[0x277D76838];
  if (UIContentSizeCategoryCompareToCategory(v2, v1) == NSOrderedAscending)
  {
    v3 = v2;

    v1 = v3;
  }

  v4 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:v1];
  v14 = *MEMORY[0x277D74430];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74420]];
  v15[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v7 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] compatibleWithTraitCollection:v4];
  v12 = *MEMORY[0x277D74380];
  v13 = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v9 = [v7 fontDescriptorByAddingAttributes:v8];

  v10 = [MEMORY[0x277D74300] fontWithDescriptor:v9 size:0.0];

  return v10;
}

void sub_24375E854(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24375EE68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_24375EFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24375FAF4(_Unwind_Exception *a1)
{
  v5 = v1;

  _Unwind_Resume(a1);
}

void sub_2437601C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2437609F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_243761524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

Class ___ZL36getUNNotificationSettingsCenterClassv_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!UserNotificationsSettingsLibraryCore(char **)::frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = ___ZL36UserNotificationsSettingsLibraryCorePPc_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278DD27D0;
    v9 = 0;
    UserNotificationsSettingsLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  if (!UserNotificationsSettingsLibraryCore(char **)::frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UserNotificationsSettingsLibrary()"];
    [v3 handleFailureInFunction:v4 file:@"CPSLaunchContentViewController.mm" lineNumber:46 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("UNNotificationSettingsCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUNNotificationSettingsCenterClass()_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"CPSLaunchContentViewController.mm" lineNumber:47 description:{@"Unable to find class %s", "UNNotificationSettingsCenter"}];

LABEL_10:
    __break(1u);
  }

  getUNNotificationSettingsCenterClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL36UserNotificationsSettingsLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  UserNotificationsSettingsLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

Class ___ZL30getAMSAuthenticateOptionsClassv_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!AppleMediaServicesLibraryCore(char **)::frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = ___ZL29AppleMediaServicesLibraryCorePPc_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278DD27E8;
    v9 = 0;
    AppleMediaServicesLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  if (!AppleMediaServicesLibraryCore(char **)::frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AppleMediaServicesLibrary()"];
    [v3 handleFailureInFunction:v4 file:@"CPSLaunchContentViewController.mm" lineNumber:49 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("AMSAuthenticateOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAMSAuthenticateOptionsClass()_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"CPSLaunchContentViewController.mm" lineNumber:50 description:{@"Unable to find class %s", "AMSAuthenticateOptions"}];

LABEL_10:
    __break(1u);
  }

  getAMSAuthenticateOptionsClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL29AppleMediaServicesLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  AppleMediaServicesLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void *___ZL44getCCUIAppLaunchOriginControlCenterSymbolLocv_block_invoke(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!ControlCenterUIKitLibraryCore(char **)::frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = ___ZL29ControlCenterUIKitLibraryCorePPc_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278DD2800;
    v7 = 0;
    ControlCenterUIKitLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v2 = ControlCenterUIKitLibraryCore(char **)::frameworkLibrary;
  if (!ControlCenterUIKitLibraryCore(char **)::frameworkLibrary)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ControlCenterUIKitLibrary()"];
    [a1 handleFailureInFunction:v2 file:@"CPSLaunchContentViewController.mm" lineNumber:43 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "CCUIAppLaunchOriginControlCenter");
  *(*(a1[4] + 8) + 24) = result;
  getCCUIAppLaunchOriginControlCenterSymbolLoc(void)::ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t ___ZL29ControlCenterUIKitLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  ControlCenterUIKitLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void sub_243765234(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void ProxCardKitLibrary_0()
{
  v3 = *MEMORY[0x277D85DE8];
  v0[0] = 0;
  if (!ProxCardKitLibraryCore_frameworkLibrary_0)
  {
    v0[1] = MEMORY[0x277D85DD0];
    v0[2] = 3221225472;
    v0[3] = __ProxCardKitLibraryCore_block_invoke_0;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_278DD2948;
    v2 = 0;
    ProxCardKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!ProxCardKitLibraryCore_frameworkLibrary_0)
  {
    ProxCardKitLibrary_cold_1_0(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __ProxCardKitLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  ProxCardKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getPRXFlowConfigurationClass_block_invoke(uint64_t a1)
{
  ProxCardKitLibrary_0();
  result = objc_getClass("PRXFlowConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRXFlowConfigurationClass_block_invoke_cold_1();
  }

  getPRXFlowConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPRXCardContainerViewControllerClass_block_invoke(uint64_t a1)
{
  ProxCardKitLibrary_0();
  result = objc_getClass("PRXCardContainerViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRXCardContainerViewControllerClass_block_invoke_cold_1();
  }

  getPRXCardContainerViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_24376976C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCIImageClass_block_invoke(uint64_t a1)
{
  CoreImageLibrary();
  result = objc_getClass("CIImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCIImageClass_block_invoke_cold_1();
  }

  getCIImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreImageLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!CoreImageLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __CoreImageLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278DD29B0;
    v4 = 0;
    CoreImageLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreImageLibraryCore_frameworkLibrary;
  if (!CoreImageLibraryCore_frameworkLibrary)
  {
    CoreImageLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __CoreImageLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreImageLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCIVectorClass_block_invoke(uint64_t a1)
{
  CoreImageLibrary();
  result = objc_getClass("CIVector");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCIVectorClass_block_invoke_cold_1();
  }

  getCIVectorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCIFilterClass_block_invoke(uint64_t a1)
{
  CoreImageLibrary();
  result = objc_getClass("CIFilter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCIFilterClass_block_invoke_cold_1();
  }

  getCIFilterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCIInputImageKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreImageLibrary();
  result = dlsym(v2, "kCIInputImageKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCIInputImageKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCIInputExtentKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreImageLibrary();
  result = dlsym(v2, "kCIInputExtentKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCIInputExtentKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Swift::Void __swiftcall UIView.setGlassBackground()()
{
  sub_24376A980();
  MEMORY[0x28223BE20]();
  sub_24376A970();
  v0[3] = sub_24376A990();
  v0[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v0);
  sub_24376A9A0();
  sub_24376A9E0();
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

void sub_243769CC4(void *a1)
{
  sub_24376A980();
  MEMORY[0x28223BE20]();
  sub_24376A9D0();
  sub_24376A9C0();
  sub_24376A9B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  sub_24376A970();
  v3[3] = sub_24376A990();
  v3[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_24376A9A0();
  sub_24376A9E0();
}

void ProxCardKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ProxCardKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CPSProxCardAutoSizingView.m" lineNumber:10 description:{@"%s", *a1}];

  __break(1u);
}

void ProxCardKitLibrary_cold_1_0(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ProxCardKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CPSInlineCardViewController.m" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

void __getPRXFlowConfigurationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPRXFlowConfigurationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CPSInlineCardViewController.m" lineNumber:18 description:{@"Unable to find class %s", "PRXFlowConfiguration"}];

  __break(1u);
}

void __getPRXCardContainerViewControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPRXCardContainerViewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CPSInlineCardViewController.m" lineNumber:19 description:{@"Unable to find class %s", "PRXCardContainerViewController"}];

  __break(1u);
}

void __getCIImageClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCIImageClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CPSUIImageExtras.m" lineNumber:9 description:{@"Unable to find class %s", "CIImage"}];

  __break(1u);
}

void CoreImageLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreImageLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CPSUIImageExtras.m" lineNumber:8 description:{@"%s", *a1}];

  __break(1u);
}

void __getCIVectorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCIVectorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CPSUIImageExtras.m" lineNumber:10 description:{@"Unable to find class %s", "CIVector"}];

  __break(1u);
}

void __getCIFilterClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCIFilterClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CPSUIImageExtras.m" lineNumber:11 description:{@"Unable to find class %s", "CIFilter"}];

  __break(1u);
  sub_24376A970();
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

MKCoordinateRegion MKCoordinateRegionForMapRect(MKMapRect rect)
{
  MEMORY[0x282123640](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.span.longitudeDelta = v4;
  result.span.latitudeDelta = v3;
  result.center.longitude = v2;
  result.center.latitude = v1;
  return result;
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  MEMORY[0x282123658](coordinate, *&coordinate.longitude);
  result.y = v2;
  result.x = v1;
  return result;
}

MKMapRect MKMapRectUnion(MKMapRect rect1, MKMapRect rect2)
{
  MEMORY[0x2821236C0](rect1.origin, *&rect1.origin.y, rect1.size, *&rect1.size.height, rect2.origin, *&rect2.origin.y, rect2.size, *&rect2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}