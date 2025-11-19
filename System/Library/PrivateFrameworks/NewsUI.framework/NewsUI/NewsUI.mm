id NUTranslationAnimationTimingFunction()
{
  if (NUTranslationAnimationTimingFunction_onceToken != -1)
  {
    NUTranslationAnimationTimingFunction_cold_1();
  }

  v1 = NUTranslationAnimationTimingFunction_timingFunction;

  return v1;
}

uint64_t __NUTranslationAnimationTimingFunction_block_invoke(double a1, double a2, double a3, double a4)
{
  LODWORD(a1) = 1046807010;
  LODWORD(a2) = 971075999;
  LODWORD(a3) = 1037082936;
  LODWORD(a4) = 1065254902;
  NUTranslationAnimationTimingFunction_timingFunction = [MEMORY[0x277CD9EF8] functionWithControlPoints:a1 :a2 :a3 :a4];

  return MEMORY[0x2821F96F8]();
}

id NUSharedLog()
{
  if (NUSharedLog_once != -1)
  {
    NUSharedLog_cold_1();
  }

  v1 = NUSharedLog_result;

  return v1;
}

uint64_t __NUSharedLog_block_invoke()
{
  NUSharedLog_result = os_log_create("com.apple.news", "NewsUI");

  return MEMORY[0x2821F96F8]();
}

id NURSSLog()
{
  if (NURSSLog_once != -1)
  {
    NURSSLog_cold_1();
  }

  v1 = NURSSLog_result;

  return v1;
}

uint64_t __NURSSLog_block_invoke()
{
  NURSSLog_result = os_log_create("com.apple.news", "RSS");

  return MEMORY[0x2821F96F8]();
}

id NUNowPlayingLog()
{
  if (NUNowPlayingLog_once != -1)
  {
    NUNowPlayingLog_cold_1();
  }

  v1 = NUNowPlayingLog_result;

  return v1;
}

uint64_t __NUNowPlayingLog_block_invoke()
{
  NUNowPlayingLog_result = os_log_create("com.apple.news", "NowPlaying");

  return MEMORY[0x2821F96F8]();
}

id NUArticleLoadLog()
{
  if (NUArticleLoadLog_once != -1)
  {
    NUArticleLoadLog_cold_1();
  }

  v1 = NUArticleLoadLog_result;

  return v1;
}

uint64_t __NUArticleLoadLog_block_invoke()
{
  NUArticleLoadLog_result = os_log_create("com.apple.news", "ArticleLoad");

  return MEMORY[0x2821F96F8]();
}

void sub_25C2DA210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25C2DA778(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25C2DAA24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 104));
  _Block_object_dispose((v2 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_25C2DB340(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_25C2DB7CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25C2DC644(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25C2DC878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id NUBundle()
{
  if (NUBundle_onceToken != -1)
  {
    NUBundle_cold_1();
  }

  v1 = NUBundle_bundle;

  return v1;
}

uint64_t __NUBundle_block_invoke()
{
  NUBundle_bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

void sub_25C2DF9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25C2E1E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25C2E46C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

BOOL NUDeviceIsScreenSizeLessThanOrEqualToPhone4(double a1, double a2, double a3, double a4)
{
  if (a3 >= a4)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  return v4 < 568.0;
}

BOOL NUDeviceIsScreenSizeLessThanOrEqualToPhone5(double a1, double a2, double a3, double a4)
{
  if (a3 >= a4)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  return v4 <= 568.0;
}

BOOL NUDeviceIsScreenSizeLessThanOrEqualToPhone6(double a1, double a2, double a3, double a4)
{
  if (a3 >= a4)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  return v4 <= 667.0;
}

BOOL NUDeviceIsScreenSizeLessThanOrEqualToPhone6Plus(double a1, double a2, double a3, double a4)
{
  if (a3 >= a4)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  return v4 <= 736.0;
}

BOOL NUDeviceIsScreenSizeLessThanOrEqualToPadPro(double a1, double a2, double a3, double a4)
{
  if (a3 >= a4)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  return v4 == 1366.0;
}

id NUDeviceTraitLookup()
{
  if (NUDeviceTraitLookup_onceToken != -1)
  {
    NUDeviceTraitLookup_cold_1();
  }

  v1 = NUDeviceTraitLookup_deviceTrait;

  return v1;
}

void __NUDeviceTraitLookup_block_invoke()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;

  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 > 1)
  {
    if ((v6 - 2) >= 2)
    {
LABEL_25:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __NUDeviceTraitLookup_block_invoke_cold_2();
      }

LABEL_27:
      v8 = 64;
      goto LABEL_28;
    }

LABEL_12:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __NUDeviceTraitLookup_block_invoke_cold_1();
    }

    goto LABEL_27;
  }

  if (v6 == -1)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      if (v2 >= v4)
      {
        v7 = v2;
      }

      else
      {
        v7 = v4;
      }

      if (v7 == 1366.0)
      {
        v8 = 112;
      }

      else
      {
        v8 = 80;
      }

      goto LABEL_28;
    }

    goto LABEL_25;
  }

  if (v2 >= v4)
  {
    v9 = v2;
  }

  else
  {
    v9 = v4;
  }

  v10 = 64;
  if (v9 < 568.0)
  {
    v10 = 65;
  }

  if (v9 <= 568.0)
  {
    v10 |= 2uLL;
  }

  v8 = v10 | 4;
  if (v9 <= 736.0)
  {
    if (v9 <= 667.0)
    {
      v10 |= 4uLL;
    }

    v8 = v10 | 8;
  }

LABEL_28:
  v11 = [[NUDeviceTrait alloc] initWithDeviceTraitSize:v8];
  v12 = NUDeviceTraitLookup_deviceTrait;
  NUDeviceTraitLookup_deviceTrait = v11;
}

void _NUCrawlView(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v14 = 0;
  v6[2](v6, v5, 0, &v14);
  if (!v14)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___NUCrawlView_block_invoke_2;
    v10[3] = &unk_2799A3A38;
    v12 = v15;
    v13 = a2;
    v11 = v6;
    v7 = ___NUCrawlView_block_invoke_2(v10);
    v9 = MEMORY[0x25F883F30](v7, v8);
    (v7)[2](v7, v9, v5, &v14);
  }

  _Block_object_dispose(v15, 8);
}

void sub_25C2E7E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void NUCrawlView(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __NUCrawlView_block_invoke;
  v7[3] = &unk_2799A3A60;
  v8 = v5;
  v6 = v5;
  _NUCrawlView(a1, a2, v7);
}

id NUCrawlViewAndCollect(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = objc_opt_new();
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __NUCrawlViewAndCollect_block_invoke;
  v15 = &unk_2799A3A88;
  v16 = v7;
  v17 = v5;
  v8 = v7;
  v9 = v5;
  NUCrawlView(v6, a2, &v12);

  v10 = [v8 copy];

  return v10;
}

void __NUCrawlViewAndCollect_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v3];
  }
}

id NUFirstViewPassing(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __NUFirstViewPassing_block_invoke;
  v10[3] = &unk_2799A3AB0;
  v12 = &v13;
  v7 = v6;
  v11 = v7;
  NUCrawlView(v5, a2, v10);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void sub_25C2E869C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void __NUFirstViewPassing_block_invoke(uint64_t a1, void *a2, BOOL *a3)
{
  v8 = a2;
  v5 = (*(*(a1 + 32) + 16))();
  v6 = *(*(a1 + 40) + 8);
  v7 = v8;
  if ((v5 & 1) == 0)
  {
    v7 = *(v6 + 40);
  }

  objc_storeStrong((v6 + 40), v7);
  *a3 = *(*(*(a1 + 40) + 8) + 40) != 0;
}

BOOL NUViewContainsViewOfClass(void *a1, uint64_t a2, uint64_t a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __NUViewContainsViewOfClass_block_invoke;
  v6[3] = &__block_descriptor_40_e16_B16__0__UIView_8lu32l8;
  v6[4] = a3;
  v3 = NUFirstViewPassing(a1, a2, v6);
  v4 = v3 != 0;

  return v4;
}

void _NUCrawlViewController(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v13 = 0;
  v6[2](v6, v5, 0, &v13);
  if (!v13)
  {
    if (a2 == 2)
    {
      v7 = v11;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v8 = ___NUCrawlViewController_block_invoke_3;
    }

    else
    {
      if (a2 != 1)
      {
        v9 = 0;
        goto LABEL_8;
      }

      v7 = v12;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v8 = ___NUCrawlViewController_block_invoke_2;
    }

    v7[2] = v8;
    v7[3] = &unk_2799A3AF8;
    v7[5] = v14;
    v7[4] = v6;
    v9 = MEMORY[0x25F883F30](v7);

LABEL_8:
    v10 = MEMORY[0x25F883F30](v9);
    (v9)[2](v9, v10, v5, &v13);
  }

  _Block_object_dispose(v14, 8);
}

void NUCrawlViewController(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __NUCrawlViewController_block_invoke;
  v7[3] = &unk_2799A3B20;
  v8 = v5;
  v6 = v5;
  _NUCrawlViewController(a1, a2, v7);
}

id NUCrawlViewControllerAndCollect(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = objc_opt_new();
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __NUCrawlViewControllerAndCollect_block_invoke;
  v15 = &unk_2799A3B48;
  v16 = v7;
  v17 = v5;
  v8 = v7;
  v9 = v5;
  NUCrawlViewController(v6, a2, &v12);

  v10 = [v8 copy];

  return v10;
}

void __NUCrawlViewControllerAndCollect_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v3];
  }
}

id NUFirstViewControllerPassing(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __NUFirstViewControllerPassing_block_invoke;
  v10[3] = &unk_2799A3B70;
  v12 = &v13;
  v7 = v6;
  v11 = v7;
  NUCrawlViewController(v5, a2, v10);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void sub_25C2E9170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __NUFirstViewControllerPassing_block_invoke(uint64_t a1, void *a2, BOOL *a3)
{
  v8 = a2;
  v5 = (*(*(a1 + 32) + 16))();
  v6 = *(*(a1 + 40) + 8);
  v7 = v8;
  if ((v5 & 1) == 0)
  {
    v7 = *(v6 + 40);
  }

  objc_storeStrong((v6 + 40), v7);
  *a3 = *(*(*(a1 + 40) + 8) + 40) != 0;
}

BOOL NUViewControllerContainsViewControllerOfClass(void *a1, uint64_t a2, uint64_t a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __NUViewControllerContainsViewControllerOfClass_block_invoke;
  v6[3] = &__block_descriptor_40_e26_B16__0__UIViewController_8lu32l8;
  v6[4] = a3;
  v3 = NUFirstViewControllerPassing(a1, a2, v6);
  v4 = v3 != 0;

  return v4;
}

id NUViewHierarchy(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __NUViewHierarchy_block_invoke_2;
  v9 = &unk_2799A3BD8;
  v10 = v2;
  v11 = &__block_literal_global_16;
  v3 = v2;
  _NUCrawlView(v1, 2, &v6);

  v4 = [v3 copy];

  return v4;
}

id __NUViewHierarchy_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  for (i = objc_opt_new(); a3; --a3)
  {
    [i appendString:@"     "];
  }

  v6 = [v4 description];
  [i appendFormat:@"%@\n", v6];

  v7 = [i copy];

  return v7;
}

void __NUViewHierarchy_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 appendString:v2];
}

id NUViewControllerHierarchy(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __NUViewControllerHierarchy_block_invoke_2;
  v9 = &unk_2799A3C20;
  v10 = v2;
  v11 = &__block_literal_global_23;
  v3 = v2;
  _NUCrawlViewController(v1, 2, &v6);

  v4 = [v3 copy];

  return v4;
}

id __NUViewControllerHierarchy_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  for (i = objc_opt_new(); a3; --a3)
  {
    [i appendString:@"     "];
  }

  v6 = [v4 description];
  [i appendFormat:@"%@\n", v6];

  v7 = [i copy];

  return v7;
}

void __NUViewControllerHierarchy_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 appendString:v2];
}

void sub_25C2E9FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25C2EB4CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v6 - 128));
  _Unwind_Resume(a1);
}

void sub_25C2EBE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak(&a34);
  objc_destroyWeak(&a39);
  objc_destroyWeak((v39 - 168));
  _Unwind_Resume(a1);
}

void sub_25C2EC4FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_25C2EE8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_25C2EFA64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25C2F0ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25C2F1808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25C2F1F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25C2F2514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25C2F372C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25C2F38CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25C2F3A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25C2F3C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25C2F7110(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_25C2FC2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25C2FD71C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25C2FE088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25C2FE27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25C2FE3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_25C2FF1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t NUTraitOptionFromUITraitCollection(void *a1)
{
  v1 = a1;
  v2 = [v1 horizontalSizeClass];
  if (v2 == 2)
  {
    v6 = [v1 verticalSizeClass];
    if (v6 <= 2)
    {
      v5 = qword_25C311D80[v6];
      goto LABEL_11;
    }

LABEL_10:
    v5 = 16;
    goto LABEL_11;
  }

  if (v2 != 1)
  {
    goto LABEL_10;
  }

  v3 = [v1 verticalSizeClass];
  v4 = 1;
  if (v3 != 1)
  {
    v4 = 2;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 16;
  }

LABEL_11:

  return v5;
}

void sub_25C302250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, char a25)
{
  objc_destroyWeak((v25 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25C305A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25C305EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25C3062CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __NUDeviceTraitLookup_block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Case not implemented"];
  v2 = 136315906;
  v3 = "id<NUDeviceTrait> NUDeviceTraitLookup()_block_invoke";
  v4 = 2080;
  v5 = "NUDeviceTrait.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25C2D6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v2, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

void __NUDeviceTraitLookup_block_invoke_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Case not implemented"];
  v2 = 136315906;
  v3 = "id<NUDeviceTrait> NUDeviceTraitLookup()_block_invoke";
  v4 = 2080;
  v5 = "NUDeviceTrait.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25C2D6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v2, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}