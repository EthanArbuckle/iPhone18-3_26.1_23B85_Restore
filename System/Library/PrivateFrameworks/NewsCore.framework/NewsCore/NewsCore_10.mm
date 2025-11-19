void *FCMastheadLogoVisibilityFromString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [&unk_1F2E71960 objectForKeyedSubscript:v1];

    if (v2)
    {
      v3 = [&unk_1F2E71960 objectForKeyedSubscript:v1];
      v2 = [v3 integerValue];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1B65790E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6579650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t FCPaidAccessCheckerHasBundleSubscriptionToChannelInline(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  if (!v6)
  {
    goto LABEL_3;
  }

  v7 = [v5 bundleSubscription];
  v8 = objc_getAssociatedObject(v7, (v7 + 1));
  v9 = [v8 unsignedIntegerValue];
  v10 = v9;
  v11 = objc_getAssociatedObject(v7, ~v9);
  v12 = ([v11 unsignedIntegerValue] - a3) ^ (v10 + a3);

  if (v12)
  {
    v14 = [v5 bundleSubscription];
    v15 = [v14 bundleChannelIDs];
    v13 = [v15 containsObject:v6];
  }

  else
  {
LABEL_3:
    v13 = 0;
  }

  return v13;
}

__CFString *NSStringFromFCFeedDescriptorConfiguration(uint64_t a1)
{
  if ((a1 - 1) > 0xC)
  {
    return @"Default";
  }

  else
  {
    return off_1E7C3A1D0[a1 - 1];
  }
}

uint64_t FCAssetHandleQoSFromPriority(uint64_t a1)
{
  if (a1 <= 0)
  {
    return -1;
  }

  else
  {
    return 25;
  }
}

void sub_1B658208C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B6582940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v23 - 112));
  _Unwind_Resume(a1);
}

void sub_1B6582AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6583994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6584390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6585830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B65875F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B659A6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(v65);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

FCBundleSubscription *FCBundleSubscriptionMakeInline(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, char a7, char a8, void *a9)
{
  v17 = a9;
  v18 = a6;
  v19 = a3;
  v20 = a2;
  v21 = a1;
  LOBYTE(v29) = a8;
  LOBYTE(v28) = a7;
  v22 = [[FCBundleSubscription alloc] initWithBundlePurchaseID:v21 bundleChannelIDs:v20 bundleChannelIDsVersion:v19 inTrialPeriod:a4 isPurchaser:a5 servicesBundlePurchaseID:v18 isAmplifyUser:v28 initialPurchaseTimestamp:v17 isPaidBundleViaOfferActivated:v29];
  v23 = MEMORY[0x1E696AD98];
  v24 = v22;
  v25 = [v23 numberWithUnsignedInteger:&v22[5]._servicesBundlePurchaseID + 3];
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-364 - v22];
  objc_setAssociatedObject(v24, &v22->super.isa + 1, v25, 1);
  objc_setAssociatedObject(v24, (-364 - v22), v26, 1);

  return v24;
}

void sub_1B659F164(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 232));
  _Unwind_Resume(a1);
}

void sub_1B659F4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B65A0844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B65A09B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B65A1790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B65A25A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B65A320C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B65A3650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B65A4564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *FCStringFromFeedPersonalizationConfigurationSet(uint64_t a1)
{
  if ((a1 - 1) > 0x27)
  {
    return @"Default";
  }

  else
  {
    return off_1E7C3ABB0[a1 - 1];
  }
}

uint64_t ArticleContentTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 caseInsensitiveCompare:@"web"])
  {
    if ([v1 caseInsensitiveCompare:@"flint"])
    {
      if ([v1 caseInsensitiveCompare:@"video"])
      {
        v2 = 0;
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

uint64_t FCSortOptionForNTPBSortOption(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t FCSortOptionForStringSortOption(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"VideoGroupSortOptionDate"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"VideoGroupSortOptionPersonalization"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1B65AC7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FCOSVersionCompare(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 1;
  if (a2 >= a4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (a1 <= a3)
  {
    v4 = v5;
  }

  if (a1 >= a3)
  {
    return v4;
  }

  else
  {
    return -1;
  }
}

__CFString *FCStringFromOSVersion(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld.%ld", a1, a2];
  }

  else
  {
    v3 = @"<none>";
  }

  return v3;
}

id FCStringFromOSVersions(uint64_t *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = FCStringFromOSVersion(*a1, a1[1]);
  v4 = FCStringFromOSVersion(a1[2], a1[3]);
  v5 = FCStringFromOSVersion(a1[4], a1[5]);
  v6 = FCStringFromOSVersion(a1[6], a1[7]);
  v7 = [v2 stringWithFormat:@"iOS=%@, macOS=%@, watchOS=%@, visionOS=%@", v3, v4, v5, v6];

  return v7;
}

id FCCoreConfigurationPromise(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "configurationManager"];
    *buf = 136315906;
    v11 = "NFPromise<id<FCCoreConfiguration>> *FCCoreConfigurationPromise(__strong id<FCCoreConfigurationManager>)";
    v12 = 2080;
    v13 = "FCCoreConfigurationManager.m";
    v14 = 1024;
    v15 = 13;
    v16 = 2114;
    v17 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v2 = objc_alloc(MEMORY[0x1E69B68F8]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FCCoreConfigurationPromise_block_invoke;
  v8[3] = &unk_1E7C39ED0;
  v9 = v1;
  v3 = v1;
  v4 = [v2 initWithResolver:v8];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

void __FCCoreConfigurationPromise_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FCCoreConfigurationPromise_block_invoke_2;
  v10[3] = &unk_1E7C3B098;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  FCCoreConfigurationFetch(v7, v10);
}

uint64_t __FCCoreConfigurationPromise_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return (*(*(a1 + 32) + 16))();
  }
}

void sub_1B65B26E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 240), 8);
  _Block_object_dispose((v41 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1B65B4C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B65B6E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  objc_destroyWeak((v37 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v38 - 224), 8);
  _Block_object_dispose((v38 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t FCWriteDictionary(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "dictionary"];
    *buf = 136315906;
    v15 = "BOOL FCWriteDictionary(NSDictionary *__strong, NSURL *__strong)";
    v16 = 2080;
    v17 = "FCFileCoordinatedDictionaryUtilities.m";
    v18 = 1024;
    v19 = 36;
    v20 = 2114;
    v21 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v4)
    {
      goto LABEL_6;
    }
  }

  else if (v4)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "fileURL"];
    *buf = 136315906;
    v15 = "BOOL FCWriteDictionary(NSDictionary *__strong, NSURL *__strong)";
    v16 = 2080;
    v17 = "FCFileCoordinatedDictionaryUtilities.m";
    v18 = 1024;
    v19 = 37;
    v20 = 2114;
    v21 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v13 = 0;
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v13];
  v6 = v13;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "afterData"];
    *buf = 136315906;
    v15 = "BOOL FCWriteDictionary(NSDictionary *__strong, NSURL *__strong)";
    v16 = 2080;
    v17 = "FCFileCoordinatedDictionaryUtilities.m";
    v18 = 1024;
    v19 = 41;
    v20 = 2114;
    v21 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v7 = [v5 writeToURL:v4 atomically:1];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

long double FCPersonalizationUtilitiesStaticHourlyFlowRate(void *a1, unint64_t a2)
{
  v3 = a1;
  [v3 hourlyFlowRateDampeningFactor];
  v4 = 1.0;
  if (v5 != 0.0)
  {
    [v3 hourlyFlowRateDampeningFactor];
    v4 = 1.0 / v6;
  }

  [v3 hourlyFlowRateMinimum];
  v8 = v7;
  [v3 hourlyFlowRatePerSubscription];
  v10 = v9;
  [v3 hourlyFlowRateSubscriptionCountBuffer];
  v12 = v8 + pow(v11 + v10 * a2, v4);

  return v12;
}

double FCPersonalizationBaselineClicksMultiplerForTagID(void *a1, void *a2, double a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 defaultTags];
    v9 = [v8 objectForKeyedSubscript:v5];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v13 = [v7 optionalTags];
      v10 = [v13 objectForKeyedSubscript:v5];

      if (!v10)
      {
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __FCPersonalizationBaselineClicksMultiplerForTagID_block_invoke_2;
        v29[3] = &unk_1E7C3B528;
        v30 = v5;
        __FCPersonalizationBaselineClicksMultiplerForTagID_block_invoke_2(v29);
        v11 = 1.0;
        v12 = v30;
        goto LABEL_12;
      }
    }

    v12 = v10;
    [v12 doubleValue];
    if (a3 <= 0.0 || v14 <= 0.0)
    {
      *&v25[0] = MEMORY[0x1E69E9820];
      *&v25[1] = 3221225472;
      *&v25[2] = __FCPersonalizationBaselineClicksMultiplerForTagID_block_invoke_3;
      *&v25[3] = &unk_1E7C3B550;
      v26 = v12;
      v28 = a3;
      v27 = v5;
      v11 = __FCPersonalizationBaselineClicksMultiplerForTagID_block_invoke_3(v25);
    }

    else
    {
      [v12 doubleValue];
      v16 = v15 / 100.0;
      v11 = v15 / 100.0 / a3;
      v17 = FCPersonalizationLog;
      if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
      {
        v18 = MEMORY[0x1E696AD98];
        v19 = v17;
        v20 = [v18 numberWithDouble:v16];
        v21 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
        v22 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
        *buf = 138413058;
        v34 = v5;
        v35 = 2112;
        v36 = v20;
        v37 = 2112;
        v38 = v21;
        v39 = 2112;
        v40 = v22;
        _os_log_debug_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEBUG, "Found whitelisted tag prior for %@. Tag prior %@, baseline prior %@, multiplier %@", buf, 0x2Au);
      }
    }
  }

  else
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __FCPersonalizationBaselineClicksMultiplerForTagID_block_invoke;
    v31[3] = &unk_1E7C3B528;
    v32 = v5;
    __FCPersonalizationBaselineClicksMultiplerForTagID_block_invoke(v31);
    v11 = 1.0;
    v12 = v32;
  }

LABEL_12:

  v23 = *MEMORY[0x1E69E9840];
  return v11;
}

double __FCPersonalizationBaselineClicksMultiplerForTagID_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = 138412290;
    v7 = v5;
    _os_log_debug_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEBUG, "No whitelist present for %@", &v6, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 1.0;
}

double __FCPersonalizationBaselineClicksMultiplerForTagID_block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = 138412290;
    v7 = v5;
    _os_log_debug_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEBUG, "No whitelisted tag prior specified for %@", &v6, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 1.0;
}

double __FCPersonalizationBaselineClicksMultiplerForTagID_block_invoke_3(double *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 4);
    v6 = MEMORY[0x1E696AD98];
    v7 = a1[6];
    v8 = v2;
    v9 = [v6 numberWithDouble:v7];
    v10 = *(a1 + 5);
    v11 = 138412802;
    v12 = v5;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    _os_log_debug_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEBUG, "tagPriorPercent = %@, baselineRatePrior = %@ for %@", &v11, 0x20u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 1.0;
}

void sub_1B65BE3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose((v53 - 256), 8);
  _Unwind_Resume(a1);
}

void FCResourceArchiveCopyFileFinishedHandler(uint64_t a1, const char *a2)
{
  v5 = BOMCopierUserData();
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v3 stringWithFileSystemRepresentation:a2 length:strlen(a2)];

  [v5 addObject:v4];
}

__CFString *NSStringForFCUserEventHistoryPruningPolicyType(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"MaxTotalSize";
  }

  else
  {
    return off_1E7C3B8B8[a1];
  }
}

uint64_t FCCKSubscriptionOriginFromFCSubscriptionOrigin(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  result = 3;
  if (a1 <= 5)
  {
    if (a1 > 1)
    {
      if (a1 != 2)
      {
        if (a1 == 4)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"WARNING: These values are deprecated and shouldn't be the origin for any subscription"];
            v9 = 136315906;
            v10 = "FCCKSubscriptionOrigin FCCKSubscriptionOriginFromFCSubscriptionOrigin(FCSubscriptionOrigin)";
            v11 = 2080;
            v12 = "FCSubscription.m";
            v13 = 1024;
            v14 = 388;
            v15 = 2114;
            v16 = v8;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v9, 0x26u);
          }

          result = 4;
        }

        else if (a1 == 5)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"WARNING: These values are deprecated and shouldn't be the origin for any subscription"];
            v9 = 136315906;
            v10 = "FCCKSubscriptionOrigin FCCKSubscriptionOriginFromFCSubscriptionOrigin(FCSubscriptionOrigin)";
            v11 = 2080;
            v12 = "FCSubscription.m";
            v13 = 1024;
            v14 = 392;
            v15 = 2114;
            v16 = v6;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v9, 0x26u);
          }

          result = 5;
        }

        goto LABEL_28;
      }

LABEL_16:
      result = a1;
      goto LABEL_28;
    }

    if (a1 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 3;
    }

    v4 = a1 == 0;
LABEL_25:
    if (v4)
    {
      result = a1;
    }

    else
    {
      result = v3;
    }

    goto LABEL_28;
  }

  if (a1 <= 7)
  {
    if (a1 == 7)
    {
      v3 = 7;
    }

    else
    {
      v3 = 3;
    }

    v4 = a1 == 6;
    goto LABEL_25;
  }

  if (a1 == 8 || a1 == 9)
  {
    goto LABEL_16;
  }

  if (a1 == 10)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"WARNING: This value should never be persisted as a subscription origin"];
      v9 = 136315906;
      v10 = "FCCKSubscriptionOrigin FCCKSubscriptionOriginFromFCSubscriptionOrigin(FCSubscriptionOrigin)";
      v11 = 2080;
      v12 = "FCSubscription.m";
      v13 = 1024;
      v14 = 414;
      v15 = 2114;
      v16 = v7;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v9, 0x26u);
    }

    result = 10;
  }

LABEL_28:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *FCDescriptionForSubscriptionType(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"tag";
  }

  else
  {
    return off_1E7C3B8E0[a1 - 1];
  }
}

uint64_t FCSubscriptionOriginFromFCCKSubscriptionOrigin(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  result = 3;
  if (a1 <= 5)
  {
    if (a1 > 1)
    {
      if (a1 != 2)
      {
        if (a1 == 4)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"WARNING: These values are deprecated and shouldn't be the origin for any subscription"];
            v9 = 136315906;
            v10 = "FCSubscriptionOrigin FCSubscriptionOriginFromFCCKSubscriptionOrigin(FCCKSubscriptionOrigin)";
            v11 = 2080;
            v12 = "FCSubscription.m";
            v13 = 1024;
            v14 = 347;
            v15 = 2114;
            v16 = v8;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v9, 0x26u);
          }

          result = 4;
        }

        else if (a1 == 5)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"WARNING: These values are deprecated and shouldn't be the origin for any subscription"];
            v9 = 136315906;
            v10 = "FCSubscriptionOrigin FCSubscriptionOriginFromFCCKSubscriptionOrigin(FCCKSubscriptionOrigin)";
            v11 = 2080;
            v12 = "FCSubscription.m";
            v13 = 1024;
            v14 = 351;
            v15 = 2114;
            v16 = v6;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v9, 0x26u);
          }

          result = 5;
        }

        goto LABEL_28;
      }

LABEL_16:
      result = a1;
      goto LABEL_28;
    }

    if (a1 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 3;
    }

    v4 = a1 == 0;
LABEL_25:
    if (v4)
    {
      result = a1;
    }

    else
    {
      result = v3;
    }

    goto LABEL_28;
  }

  if (a1 <= 7)
  {
    if (a1 == 7)
    {
      v3 = 7;
    }

    else
    {
      v3 = 3;
    }

    v4 = a1 == 6;
    goto LABEL_25;
  }

  if (a1 == 8 || a1 == 9)
  {
    goto LABEL_16;
  }

  if (a1 == 10)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"WARNING: This value should never be persisted as a subscription origin"];
      v9 = 136315906;
      v10 = "FCSubscriptionOrigin FCSubscriptionOriginFromFCCKSubscriptionOrigin(FCCKSubscriptionOrigin)";
      v11 = 2080;
      v12 = "FCSubscription.m";
      v13 = 1024;
      v14 = 373;
      v15 = 2114;
      v16 = v7;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v9, 0x26u);
    }

    result = 10;
  }

LABEL_28:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *NSStringFromFCSubscriptionType(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"FCSubscriptionTypeTag";
  }

  else
  {
    return off_1E7C3B908[a1 - 1];
  }
}

__CFString *NSStringFromFCSubscriptionOrigin(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return @"FCSubscriptionOriginUserInitiated";
  }

  else
  {
    return off_1E7C3B930[a1 - 1];
  }
}

uint64_t FCSubscriptionOriginFromNSString(uint64_t a1)
{
  v1 = [&unk_1F2E719B0 objectForKeyedSubscript:a1];
  v2 = [v1 integerValue];

  return v2;
}

void sub_1B65C719C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 240), 8);
  _Block_object_dispose((v39 - 192), 8);
  _Block_object_dispose((v39 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1B65D1A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B65D1D1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B65D212C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B65D2614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B65D3790(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B65D6254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose((v40 - 248), 8);
  _Block_object_dispose((v40 - 200), 8);
  _Unwind_Resume(a1);
}

void sub_1B65D6890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose((v45 - 240), 8);
  _Unwind_Resume(a1);
}

void sub_1B65D8424(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_1B65D91FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 248), 8);
  _Block_object_dispose((v30 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1B65D9FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  objc_destroyWeak((v9 + 32));
  objc_destroyWeak(&a9);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromFCOnboardingVersionNumber(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Onboarded Post-YukonF with versionNumber %ld", a1];
  }

  else
  {
    v2 = off_1E7C3C240[a1];
  }

  return v2;
}

__CFString *NSStringFromFCSportsOnboardingState(uint64_t a1)
{
  if (a1)
  {
    return @"Sports Onboarded";
  }

  else
  {
    return @"Sports Not Onboarded";
  }
}

void sub_1B65DC7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B65DCD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B65E5594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B65E63A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B65EA7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSKMutablePaymentClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1EDB27098)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __StoreKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7C3C530;
    v7 = 0;
    qword_1EDB27098 = _sl_dlopen();
    v2 = v5[0];
    if (qword_1EDB27098)
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
  result = objc_getClass("SKMutablePayment");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_1EDB27090 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __StoreKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1EDB27098 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id FCApplyFeedTransformations(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  v7 = v5;
  if (v6)
  {
    v8 = v6;
    v9 = *v15;
    v7 = v5;
    do
    {
      v10 = 0;
      v11 = v7;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v7 = [*(*(&v14 + 1) + 8 * v10) transformFeedItems:v11];

        ++v10;
        v11 = v7;
      }

      while (v8 != v10);
      v8 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

id FCApplyFeedTransformationsAndLog(void *a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v25 = v3;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v33 objects:v45 count:16];
  v6 = v25;
  if (v5)
  {
    v27 = *v34;
    v6 = v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        v9 = [v6 count];
        objc_opt_class();
        if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v10 = v8;
          v29 = 0;
          v30 = &v29;
          v31 = 0x2020000000;
          v32 = 1;
          v11 = [v10 transformFeedItemsWithResults:v6];
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __FCApplyFeedTransformationsAndLog_block_invoke;
          v28[3] = &unk_1E7C3C618;
          v28[4] = &v29;
          v12 = [v11 fc_arrayByTransformingWithBlock:v28];

          v13 = FCFeedItemTransformationLog;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = objc_opt_class();
            v15 = NSStringFromClass(v14);
            v16 = [v12 count];
            v17 = FCFeedFilterOptionsToNSString(v30[3]);
            *buf = 138544130;
            v38 = v15;
            v39 = 2048;
            v40 = v9;
            v41 = 2048;
            v42 = v16;
            v43 = 2114;
            v44 = v17;
            _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: %lu -> %lu, reasons=%{public}@", buf, 0x2Au);
          }

          _Block_object_dispose(&v29, 8);
          goto LABEL_13;
        }

        v12 = [v8 transformFeedItems:v6];

        v18 = FCFeedItemTransformationLog;
        if (os_log_type_enabled(FCFeedItemTransformationLog, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v18;
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          v22 = [v12 count];
          *buf = 138543874;
          v38 = v21;
          v39 = 2048;
          v40 = v9;
          v41 = 2048;
          v42 = v22;
          _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: %lu -> %lu", buf, 0x20u);

          v10 = 0;
LABEL_13:
          v6 = v12;
          goto LABEL_15;
        }

        v10 = 0;
        v6 = v12;
LABEL_15:
      }

      v5 = [obj countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v5);
  }

  v23 = *MEMORY[0x1E69E9840];

  return v6;
}

void sub_1B65ECBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __FCApplyFeedTransformationsAndLog_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) |= [v3 filteredReasons];
  if ([v3 isFiltered])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 item];
  }

  return v4;
}

void sub_1B65EFD94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose((v53 - 256), 8);
  _Unwind_Resume(a1);
}

void sub_1B65F47F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id FCPersonalizationActionToIndex()
{
  if (qword_1EDB23E30 != -1)
  {
    dispatch_once(&qword_1EDB23E30, &__block_literal_global_45);
  }

  v1 = _MergedGlobals_4;

  return v1;
}

void __FCPersonalizationActionToIndex_block_invoke()
{
  v0 = objc_opt_new();
  v1 = FCPersonalizationActions();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __FCPersonalizationActionToIndex_block_invoke_3;
  v5[3] = &unk_1E7C38A30;
  v6 = v0;
  v2 = v0;
  [v1 enumerateObjectsUsingBlock:v5];

  v3 = [v2 copy];
  v4 = _MergedGlobals_4;
  _MergedGlobals_4 = v3;
}

void __FCPersonalizationActionToIndex_block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

id FCPersonalizationActionIndexToAction()
{
  if (qword_1EDB23E40 != -1)
  {
    dispatch_once(&qword_1EDB23E40, &__block_literal_global_50_1);
  }

  v1 = qword_1EDB23E38;

  return v1;
}

void __FCPersonalizationActionIndexToAction_block_invoke()
{
  v2 = FCPersonalizationActionToIndex();
  v0 = [v2 fc_dictionaryBySwappingValuesAndKeys];
  v1 = qword_1EDB23E38;
  qword_1EDB23E38 = v0;
}

uint64_t FCPersonalizationActionIndex(uint64_t a1)
{
  v2 = FCPersonalizationActionToIndex();
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

uint64_t FCPersonalizationActionForIndex(uint64_t a1)
{
  v2 = FCPersonalizationActionIndexToAction();
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [v4 unsignedIntegerValue];
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

id FCRankTagsDescending(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 fc_dictionaryWithKeySelector:sel_identifier];
  v5 = [v4 allKeys];
  v6 = [v3 rankTagIDsDescending:v5];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FCRankTagsDescending_block_invoke;
  v10[3] = &unk_1E7C38D38;
  v11 = v4;
  v7 = v4;
  v8 = [v6 fc_arrayByTransformingWithBlock:v10];

  return v8;
}

id __FCCKReadingHistoryItemKeys_block_invoke()
{
  if (qword_1EDB27110 != -1)
  {
    dispatch_once(&qword_1EDB27110, &__block_literal_global_1865);
  }

  v1 = _MergedGlobals_152;

  return v1;
}

uint64_t __FCCKReadingHistoryItemKeys_block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"articleID", @"sourceChannelTagID", @"deviceID", @"lastVisited", @"articleRead", @"articleSeen", @"completedListening", @"completedReading", @"articleConsumed", @"liked", @"disliked", @"offensive", @"listenedCount", @"listeningProgress", @"listeningProgressLastSaved", @"lastListened", @"readingPosition", @"readingPositionLastSaved", @"readCount", @"removedFromAudio", @"pruningDisabled", 0}];
  v1 = _MergedGlobals_152;
  _MergedGlobals_152 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __FCCKIssueReadingHistoryItemKeys_block_invoke()
{
  if (qword_1EDB27120 != -1)
  {
    dispatch_once(&qword_1EDB27120, &__block_literal_global_1909);
  }

  v1 = qword_1EDB27118;

  return v1;
}

uint64_t __FCCKIssueReadingHistoryItemKeys_block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"issueID", @"lastVisited", @"lastBadged", @"lastEngaged", @"lastSeen", @"lastRemovedFromMyMagazines", @"lastVisitedArticleID", @"lastVisitedPageID", 0}];
  v1 = qword_1EDB27118;
  qword_1EDB27118 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __FCCKSubscriptionKeys_block_invoke()
{
  if (qword_1EDB27130 != -1)
  {
    dispatch_once(&qword_1EDB27130, &__block_literal_global_1979);
  }

  v1 = qword_1EDB27128;

  return v1;
}

uint64_t __FCCKSubscriptionKeys_block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"subscriptionType", @"subscriptionOrder", @"subscriptionOrigin", @"dateAdded", @"tagID", @"notificationsEnabled", @"groupID", 0}];
  v1 = qword_1EDB27128;
  qword_1EDB27128 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __FCCKReadingListEntryKeys_block_invoke()
{
  if (qword_1EDB27140 != -1)
  {
    dispatch_once(&qword_1EDB27140, &__block_literal_global_2004);
  }

  v1 = qword_1EDB27138;

  return v1;
}

uint64_t __FCCKReadingListEntryKeys_block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"articleID", @"dateAdded", @"origin", 0}];
  v1 = qword_1EDB27138;
  qword_1EDB27138 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __FCCKShortcutKeys_block_invoke()
{
  if (qword_1EDB27150 != -1)
  {
    dispatch_once(&qword_1EDB27150, &__block_literal_global_2029);
  }

  v1 = qword_1EDB27148;

  return v1;
}

uint64_t __FCCKShortcutKeys_block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"dateAdded", @"order", @"type", 0}];
  v1 = qword_1EDB27148;
  qword_1EDB27148 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __FCCKShortcutCategoryKeys_block_invoke()
{
  if (qword_1EDB27160 != -1)
  {
    dispatch_once(&qword_1EDB27160, &__block_literal_global_2054);
  }

  v1 = qword_1EDB27158;

  return v1;
}

uint64_t __FCCKShortcutCategoryKeys_block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"dateAdded", @"type", @"categoryID", @"status", 0}];
  v1 = qword_1EDB27158;
  qword_1EDB27158 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __FCCKAudioPlaylistItemKeys_block_invoke()
{
  if (qword_1EDB27170 != -1)
  {
    dispatch_once(&qword_1EDB27170, &__block_literal_global_2076);
  }

  v1 = qword_1EDB27168;

  return v1;
}

uint64_t __FCCKAudioPlaylistItemKeys_block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"articleID", @"dateAdded", @"order", 0}];
  v1 = qword_1EDB27168;
  qword_1EDB27168 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __FCCKUserEventHistorySessionKeys_block_invoke()
{
  if (qword_1EDB27180 != -1)
  {
    dispatch_once(&qword_1EDB27180, &__block_literal_global_2101);
  }

  v1 = qword_1EDB27178;

  return v1;
}

uint64_t __FCCKUserEventHistorySessionKeys_block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"sessionData", 0}];
  v1 = qword_1EDB27178;
  qword_1EDB27178 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __FCCKUserInfoKeys_block_invoke()
{
  if (qword_1EDB27190 != -1)
  {
    dispatch_once(&qword_1EDB27190, &__block_literal_global_2252);
  }

  v1 = qword_1EDB27188;

  return v1;
}

uint64_t __FCCKUserInfoKeys_block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"canonicalLanguage", @"editorialArticleVersion", @"feldsparID", @"finishFirstLaunchVersion", @"lastOpenedDate", @"lastViewedSavedDate", @"monthlyMeteredCount", @"meteredCountLastResetDate", @"monthlyPaidBundleMeteredCount", @"paidBundleMeteredCountLastResetDate", @"upsellAppLaunchCount", @"lastAppLaunchUpsellInstanceID", @"upsellAppLaunchLastSeenDate", @"upsellAppLaunchLastShownCampaignID", @"upsellAppLaunchLastPresenterBundleID", @"newsletterSignupLastSeenDate", @"personalizedNewsletterSignupLastSeenDate", @"issuesNewsletterOptinLastSeenDate", @"notificationsUserID", @"marketingNotificationsEnabled", @"newIssueNotificationsEnabled", @"endOfAudioNotificationsEnabled", @"sportsTopicNotificationsEnabledState2", @"totalMeteredCount", @"userStartDate", @"adsUserID", @"adsUserIDCreatedDate", @"lastViewedSharedWithYouDate", @"postPurchaseOnboardingLastSeenDate", @"appReviewRequestLastSeenDate", @"sportsOnboardingState", @"sportsOnboardingCompletedDate", @"sportsSyncState", @"sportsSyncStateLastSavedDate", @"sportsFavoritesLastModifiedDate", @"shortcutsOnboardingState", @"shortcutsOnboardingCompletedDate", @"sportsUserID", @"puzzleNotificationsEnabled2", @"puzzleNotificationsLastChangedDate", @"puzzleStatsStartDate", @"importSavedToRecipeVersion", 0}];
  v1 = qword_1EDB27188;
  qword_1EDB27188 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __FCCKTagSettingsKeys_block_invoke()
{
  if (qword_1EDB271A0 != -1)
  {
    dispatch_once(&qword_1EDB271A0, &__block_literal_global_2283);
  }

  v1 = qword_1EDB27198;

  return v1;
}

uint64_t __FCCKTagSettingsKeys_block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"fontMultiplier", @"fontMultiplierMacOS", @"contentScale", @"contentScaleMacOS", @"tagID", @"accessToken", @"webAccessOptIn", 0}];
  v1 = qword_1EDB27198;
  qword_1EDB27198 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __FCCKPuzzleHistoryItemKeys_block_invoke()
{
  if (qword_1EDB271B0 != -1)
  {
    dispatch_once(&qword_1EDB271B0, &__block_literal_global_2395);
  }

  v1 = qword_1EDB271A8;

  return v1;
}

uint64_t __FCCKPuzzleHistoryItemKeys_block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"puzzleID", @"puzzleTypeID", @"progressData", @"progressLevel", @"score", @"scoreType", @"rankID", @"usedReveal", @"playDuration", @"lastPlayedDate", @"completedDate", @"firstCompletedDate", @"firstPlayDuration", @"bestScore", @"difficulty", @"publishDate", @"behaviorFlags", @"progressMovesDescription", 0}];
  v1 = qword_1EDB271A8;
  qword_1EDB271A8 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __FCCKPuzzleTypeSettingsKeys_block_invoke()
{
  if (qword_1EDB271C0 != -1)
  {
    dispatch_once(&qword_1EDB271C0, &__block_literal_global_2411);
  }

  v1 = qword_1EDB271B8;

  return v1;
}

uint64_t __FCCKPuzzleTypeSettingsKeys_block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"puzzleTypeID", @"settingsData", @"lastSeenPuzzleIDs", 0}];
  v1 = qword_1EDB271B8;
  qword_1EDB271B8 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void FCSetupLogging()
{
  if (FCSetupLogging_onceToken != -1)
  {
    dispatch_once(&FCSetupLogging_onceToken, &__block_literal_global_50);
  }
}

id FCURLForUserAccountHomePath()
{
  v0 = FCSystemDirectoryDirectoryPath();

  return FCURLForSystemDirectoriesPath(v0);
}

id FCURLForAppleInternalLibraryDirectory()
{
  v0 = FCSystemDirectoryDirectoryPath();
  if (v0)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithCString:v0 encoding:4];
    free(v0);
    if (v1)
    {
      v0 = [MEMORY[0x1E695DFF8] fileURLWithPath:v1 isDirectory:1];
    }

    else
    {
      v0 = 0;
    }
  }

  return v0;
}

id FCURLForAppleInternalLibraryBundlesDirectory()
{
  v0 = FCURLForAppleInternalLibraryDirectory();
  v1 = [v0 URLByAppendingPathComponent:@"Bundles" isDirectory:1];

  return v1;
}

id FCURLForTodayPersonalizationUpdateStore()
{
  v0 = +[FCContextConfiguration defaultConfiguration];
  v1 = [v0 privateDataContainerCombinationIdentifier];
  v2 = FCURLForFeldsparUserAccountHomeDirectoryForEnvironment(v1);

  v3 = [v2 URLByAppendingPathComponent:@"todayPersonalizationUpdateStore" isDirectory:0];

  return v3;
}

id FCURLForTodayPersonalizationDirectory()
{
  v0 = +[FCContextConfiguration defaultConfiguration];
  v1 = [v0 privateDataContainerCombinationIdentifier];
  v2 = FCURLForFeldsparUserAccountHomeDirectoryForEnvironment(v1);
  v3 = [v2 URLByAppendingPathComponent:@"Personalization_Data" isDirectory:1];

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = 0;
  [v4 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v6];

  return v3;
}

id FCURLForLegacyWidgetReferralItems()
{
  v0 = +[FCContextConfiguration defaultConfiguration];
  v1 = [v0 privateDataContainerCombinationIdentifier];
  v2 = FCURLForFeldsparUserAccountHomeDirectoryForEnvironment(v1);

  v3 = [v2 URLByAppendingPathComponent:@"todayWidgetArticleList" isDirectory:1];

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = 0;
  [v4 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v6];

  return v3;
}

id FCURLForWidgetReferralItems(void *a1)
{
  v1 = a1;
  v2 = +[FCContextConfiguration defaultConfiguration];
  v3 = [v2 privateDataContainerCombinationIdentifier];
  v4 = FCURLForFeldsparUserAccountHomeDirectoryForEnvironment(v3);

  v5 = [v4 URLByAppendingPathComponent:@"referralItems" isDirectory:1];

  v6 = [v5 URLByAppendingPathComponent:v1 isDirectory:1];

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = 0;
  [v7 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v9];

  return v6;
}

id FCURLForWidgetDebugLogs()
{
  v0 = FCURLForFeldsparUserAccountHomeDirectory();
  v1 = [v0 URLByAppendingPathComponent:@"widget-debug-logs" isDirectory:1];

  return v1;
}

id FCURLForMyArticlesRequest()
{
  v0 = FCBaseURLForSharedPrivateData();
  v1 = [v0 URLByAppendingPathComponent:@"myArticlesRequest" isDirectory:0];

  return v1;
}

id FCURLForNewsComputeServiceResources()
{
  v0 = FCBaseURLForSharedPrivateData();
  v1 = [v0 URLByAppendingPathComponent:@"tabi" isDirectory:1];
  v2 = [v1 URLByResolvingSymlinksInPath];

  return v2;
}

id FCURLForStocksComputeServiceResources()
{
  v0 = FCURLForGroupIdentifier(@"group.com.apple.stocks");
  v1 = [v0 URLByAppendingPathComponent:@"ComputationalGraph" isDirectory:1];
  v2 = [v1 URLByResolvingSymlinksInPath];

  return v2;
}

id FCURLForNotificationHistory()
{
  v0 = FCBaseURLForSharedPrivateData();
  v1 = [v0 URLByAppendingPathComponent:@"notification_history" isDirectory:0];
  v2 = [v1 URLByResolvingSymlinksInPath];

  return v2;
}

id FCURLForAVAssetDownloads()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = FCURLForGroupIdentifier(@"group.com.apple.news");
  v1 = [v0 URLByAppendingPathComponent:@"Library/com.apple.UserManagedAssets" isDirectory:1];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = 0;
  v3 = [v2 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:&v8];
  v4 = v8;

  if ((v3 & 1) == 0)
  {
    v5 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v10 = v4;
      _os_log_error_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_ERROR, "failed to create directory for AV asset downloads with error: %{public}@", buf, 0xCu);
    }

    v1 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v1;
}

id FCURLForNewsAnalyticsPayloads()
{
  v0 = FCURLForFeldsparUserAccountHomeDirectory();
  v1 = [v0 URLByAppendingPathComponent:@"Analytics_Payloads" isDirectory:1];

  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = 0;
  [v2 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:&v4];

  return v1;
}

id FCURLForInternalExtrasBundle()
{
  v0 = FCURLForAppleInternalLibraryBundlesDirectory();
  v1 = [v0 URLByAppendingPathComponent:@"NewsCoreInternalExtras"];
  v2 = [v1 URLByAppendingPathExtension:@"bundle"];

  return v2;
}

id FCURLsForAppExternalFiles(char a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __FCURLsForAppExternalFiles_block_invoke;
  v3[3] = &__block_descriptor_33_e22_v16__0__NSMutableSet_8l;
  v4 = a1;
  v1 = [MEMORY[0x1E695DFD8] fc_set:v3];

  return v1;
}

void __FCURLsForAppExternalFiles_block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = FCURLForFeldsparUserAccountHomeDirectory();
  v6 = [v4 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:0 options:0 error:0];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 lastPathComponent];
        if (![v13 isEqualToString:@"actionQueue"] || *(a1 + 32) == 1)
        {
          [v3 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = FCURLForNotificationHistory();
  [v3 addObject:v14];

  v15 = *MEMORY[0x1E69E9840];
}

id FCPurchaseReceiptDirectoryURL(void *a1)
{
  v1 = a1;
  v2 = FCURLForContainerizedUserAccountDocumentDirectory(1);
  v3 = [v2 URLByAppendingPathComponent:@"receipts" isDirectory:1];
  v4 = v3;
  if (v1)
  {
    v5 = [v3 URLByAppendingPathComponent:v1 isDirectory:1];

    v4 = v5;
  }

  return v4;
}

uint64_t FCPaywallTypeForValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 caseInsensitiveCompare:@"PaywallTypeArticleHardPaywall"])
    {
      if ([v2 caseInsensitiveCompare:@"PaywallTypeArticleSharedHardPaywall"])
      {
        if ([v2 caseInsensitiveCompare:@"PaywallTypeArticleSoftPaywall"])
        {
          if ([v2 caseInsensitiveCompare:@"PaywallTypeArticleSharedSoftPaywall"])
          {
            if ([v2 caseInsensitiveCompare:@"PaywallTypeChannelSoftPaywall"])
            {
              if ([v2 caseInsensitiveCompare:@"PaywallTypeMagazineFeedSoftPaywallSmall"])
              {
                if ([v2 caseInsensitiveCompare:@"PaywallTypeMagazineFeedSoftPaywallMedium"])
                {
                  if ([v2 caseInsensitiveCompare:@"PaywallTypeMagazineFeedSoftPaywallLarge"])
                  {
                    if ([v2 caseInsensitiveCompare:@"PaywallTypeMagazineFeedVideoSoftPaywallSmall"])
                    {
                      if ([v2 caseInsensitiveCompare:@"PaywallTypeMagazineFeedVideoSoftPaywallLarge"])
                      {
                        if ([v2 caseInsensitiveCompare:@"PaywallTypePDFHardPaywall"])
                        {
                          if ([v2 caseInsensitiveCompare:@"PaywallTypeAudioFeedSoftPaywallSmall"])
                          {
                            if ([v2 caseInsensitiveCompare:@"PaywallTypeAudioFeedSoftPaywallLarge"])
                            {
                              if ([v2 caseInsensitiveCompare:@"PaywallTypeAudioFeedVideoSoftPaywallSmall"])
                              {
                                if ([v2 caseInsensitiveCompare:@"PaywallTypeAudioFeedVideoSoftPaywallLarge"])
                                {
                                  v3 = 0;
                                }

                                else
                                {
                                  v3 = 15;
                                }
                              }

                              else
                              {
                                v3 = 14;
                              }
                            }

                            else
                            {
                              v3 = 13;
                            }
                          }

                          else
                          {
                            v3 = 12;
                          }
                        }

                        else
                        {
                          v3 = 11;
                        }
                      }

                      else
                      {
                        v3 = 10;
                      }
                    }

                    else
                    {
                      v3 = 9;
                    }
                  }

                  else
                  {
                    v3 = 8;
                  }
                }

                else
                {
                  v3 = 7;
                }
              }

              else
              {
                v3 = 6;
              }
            }

            else
            {
              v3 = 5;
            }
          }

          else
          {
            v3 = 4;
          }
        }

        else
        {
          v3 = 3;
        }
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t FCPaywallOffersLinkTargetTypeForValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 caseInsensitiveCompare:@"OffersLinkTargetTypeURL"])
    {
      v3 = 2 * ([v2 caseInsensitiveCompare:@"OffersLinkTargetTypeAMSURL"] == 0);
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void *_FCFeedFilterOptionsAsStrings(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if ((a1 & 2) != 0)
  {
    [v2 addObject:@"DuplicateArticles"];
    if ((a1 & 4) == 0)
    {
LABEL_3:
      if ((a1 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_43;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"DuplicateClusters"];
  if ((a1 & 8) == 0)
  {
LABEL_4:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_44;
  }

LABEL_43:
  [v3 addObject:@"BlockedStorefronts"];
  if ((a1 & 0x10) == 0)
  {
LABEL_5:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_45;
  }

LABEL_44:
  [v3 addObject:@"ExplicitContent"];
  if ((a1 & 0x20) == 0)
  {
LABEL_6:
    if ((a1 & 0x4000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_46;
  }

LABEL_45:
  [v3 addObject:@"MutedChannels"];
  if ((a1 & 0x4000000) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

LABEL_46:
  [v3 addObject:@"MutedChannelsExceptDailyBriefing"];
  if ((a1 & 0x40) == 0)
  {
LABEL_8:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_48;
  }

LABEL_47:
  [v3 addObject:@"IgnoringLocalArticleDuplicates"];
  if ((a1 & 0x80) == 0)
  {
LABEL_9:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_49;
  }

LABEL_48:
  [v3 addObject:@"IgnoringLocalClusterDuplicates"];
  if ((a1 & 0x100) == 0)
  {
LABEL_10:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v3 addObject:@"MinimumNewsVersion"];
  if ((a1 & 0x200) == 0)
  {
LABEL_11:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_51;
  }

LABEL_50:
  [v3 addObject:@"NonFlint"];
  if ((a1 & 0x400) == 0)
  {
LABEL_12:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_52;
  }

LABEL_51:
  [v3 addObject:@"FreeArticles"];
  if ((a1 & 0x800) == 0)
  {
LABEL_13:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_53;
  }

LABEL_52:
  [v3 addObject:@"Paywall"];
  if ((a1 & 0x1000) == 0)
  {
LABEL_14:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_54;
  }

LABEL_53:
  [v3 addObject:@"BriefingArticles"];
  if ((a1 & 0x2000) == 0)
  {
LABEL_15:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_55;
  }

LABEL_54:
  [v3 addObject:@"InaccessiblePaid"];
  if ((a1 & 0x4000) == 0)
  {
LABEL_16:
    if ((a1 & 0x20000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_56;
  }

LABEL_55:
  [v3 addObject:@"NonSubscribedChannels"];
  if ((a1 & 0x20000000) == 0)
  {
LABEL_17:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_57;
  }

LABEL_56:
  [v3 addObject:@"NonSubscribedChannelsExceptLocal"];
  if ((a1 & 0x8000) == 0)
  {
LABEL_18:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_58;
  }

LABEL_57:
  [v3 addObject:@"NonVideoArticles"];
  if ((a1 & 0x10000) == 0)
  {
LABEL_19:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_59;
  }

LABEL_58:
  [v3 addObject:@"PaidBundleArticles"];
  if ((a1 & 0x20000) == 0)
  {
LABEL_20:
    if ((a1 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_60;
  }

LABEL_59:
  [v3 addObject:@"MutedTopics"];
  if ((a1 & 0x40000) == 0)
  {
LABEL_21:
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_61;
  }

LABEL_60:
  [v3 addObject:@"MutedTopicsForSingleTopic"];
  if ((a1 & 0x80000) == 0)
  {
LABEL_22:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_62;
  }

LABEL_61:
  [v3 addObject:@"EvergreenArticles"];
  if ((a1 & 0x100000) == 0)
  {
LABEL_23:
    if ((a1 & 0x200000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_63;
  }

LABEL_62:
  [v3 addObject:@"SeenArticles"];
  if ((a1 & 0x200000) == 0)
  {
LABEL_24:
    if ((a1 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_64;
  }

LABEL_63:
  [v3 addObject:@"ReadArticles"];
  if ((a1 & 0x400000) == 0)
  {
LABEL_25:
    if ((a1 & 0x800000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_65;
  }

LABEL_64:
  [v3 addObject:@"CompletedReadingArticles"];
  if ((a1 & 0x800000) == 0)
  {
LABEL_26:
    if ((a1 & 0x1000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_66;
  }

LABEL_65:
  [v3 addObject:@"ListenedArticles"];
  if ((a1 & 0x1000000) == 0)
  {
LABEL_27:
    if ((a1 & 0x2000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_67;
  }

LABEL_66:
  [v3 addObject:@"CompletedListeningArticles"];
  if ((a1 & 0x2000000) == 0)
  {
LABEL_28:
    if ((a1 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_68;
  }

LABEL_67:
  [v3 addObject:@"PlaylistArticles"];
  if ((a1 & 0x8000000) == 0)
  {
LABEL_29:
    if ((a1 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_69;
  }

LABEL_68:
  [v3 addObject:@"RemovedFromAudioArticles"];
  if ((a1 & 0x10000000) == 0)
  {
LABEL_30:
    if ((a1 & 0x40000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_70;
  }

LABEL_69:
  [v3 addObject:@"NonDownloadedArticles"];
  if ((a1 & 0x40000000) == 0)
  {
LABEL_31:
    if ((a1 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_71;
  }

LABEL_70:
  [v3 addObject:@"DislikedArticles"];
  if ((a1 & 0x80000000) == 0)
  {
LABEL_32:
    if ((a1 & 0x100000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_72;
  }

LABEL_71:
  [v3 addObject:@"SponsoredArticles"];
  if ((a1 & 0x100000000) == 0)
  {
LABEL_33:
    if ((a1 & 0x200000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_73;
  }

LABEL_72:
  [v3 addObject:@"NonBundleArticles"];
  if ((a1 & 0x200000000) == 0)
  {
LABEL_34:
    if ((a1 & 0x400000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_74;
  }

LABEL_73:
  [v3 addObject:@"ReduceVisibilityForNonFollowers"];
  if ((a1 & 0x400000000) == 0)
  {
LABEL_35:
    if ((a1 & 0x800000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_75;
  }

LABEL_74:
  [v3 addObject:@"AlaCarteInaccessiblePaidForBundleSubscribers"];
  if ((a1 & 0x800000000) == 0)
  {
LABEL_36:
    if ((a1 & 0x1000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_76;
  }

LABEL_75:
  [v3 addObject:@"MissingSourceChannel"];
  if ((a1 & 0x1000000000) == 0)
  {
LABEL_37:
    if ((a1 & 0x2000000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_77:
    [v3 addObject:@"SportsHighlightArticles"];
    if ((a1 & 0x4000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_76:
  [v3 addObject:@"ArticlesWithZeroTabiScore"];
  if ((a1 & 0x2000000000) != 0)
  {
    goto LABEL_77;
  }

LABEL_38:
  if ((a1 & 0x4000000000) != 0)
  {
LABEL_39:
    [v3 addObject:@"RecipeArticles"];
  }

LABEL_40:
  v4 = v3;

  return v3;
}

id FCFeedFilterOptionsToNSString(uint64_t a1)
{
  v1 = _FCFeedFilterOptionsAsStrings(a1);
  v2 = MEMORY[0x1E696AEC0];
  v3 = [v1 componentsJoinedByString:{@", "}];
  v4 = [v2 stringWithFormat:@"[%@]", v3];

  return v4;
}

id FCFeedFilterOptionToNSString(uint64_t a1)
{
  v1 = _FCFeedFilterOptionsAsStrings(a1);
  v2 = [v1 firstObject];

  return v2;
}

id FCInterestTokenByCombiningTokens(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = [FCPair pairWithFirst:v3 second:v4];
  }

  else
  {
    if (v3)
    {
      v7 = v3;
    }

    else
    {
      v7 = v4;
    }

    v6 = v7;
  }

  v8 = v6;

  return v8;
}

uint64_t FCNotificationSourceFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"EIM"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"EFY"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"PIM"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"PFY"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"AIFY"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"SFY"])
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *FCStringFromNotificationSource(unsigned int a1)
{
  if (a1 > 6)
  {
    return @"EIM";
  }

  else
  {
    return off_1E7C3F298[a1];
  }
}

void sub_1B661A63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B661AAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B661AC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PBLifetimeFromFCLifetime(uint64_t a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

void sub_1B661B3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1B661BAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 248), 8);
  _Unwind_Resume(a1);
}

void sub_1B661BD20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FCLifetimeFromPBLifetime(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t FCArticleContentTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 caseInsensitiveCompare:@"web"])
  {
    if ([v1 caseInsensitiveCompare:@"flint"])
    {
      if ([v1 caseInsensitiveCompare:@"video"])
      {
        v2 = 0;
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

__CFString *FCStringFromArticleContentType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"None";
  }

  else
  {
    return off_1E7C3F450[a1 - 1];
  }
}

uint64_t FCRankOfQualityOfService(uint64_t a1)
{
  v1 = -1;
  v2 = 2;
  v3 = 3;
  v4 = 4;
  if (a1 != 33)
  {
    v4 = -1;
  }

  if (a1 != 25)
  {
    v3 = v4;
  }

  if (a1 != 17)
  {
    v2 = v3;
  }

  if (a1 == 9)
  {
    v1 = 1;
  }

  if (a1 == -1)
  {
    v1 = 0;
  }

  if (a1 <= 16)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void sub_1B661E03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v65 - 136));
  objc_destroyWeak(&location);
  _Block_object_dispose((v65 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_1B661F410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_destroyWeak((v29 + 56));
  _Block_object_dispose(&a29, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromShortcutType(__CFString *a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_6;
    }

    v2 = FCCKShortcutTypeMySports;
  }

  else
  {
    v2 = FCCKShortcutTypeTag;
  }

  a1 = *v2;
LABEL_6:

  return a1;
}

uint64_t FCShortcutTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"tag"])
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 isEqualToString:@"mySports"];
  }

  return v2;
}

void sub_1B6642028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B66421A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6642F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6643588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B6649AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  objc_destroyWeak((v35 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v36 - 224), 8);
  _Block_object_dispose((v36 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1B664CB30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

id FCChannelsWithHeldRecords(void *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "assetManager"];
    *buf = 136315906;
    v23 = "NSDictionary<NSString *,id<FCChannelProviding>> *FCChannelsWithHeldRecords(FCAssetManager *__strong, FCHeldRecords<NTPBTagRecord *> *__strong, __strong id<FCCoreConfiguration>)";
    v24 = 2080;
    v25 = "FCArticleHeadlineUtilities.m";
    v26 = 1024;
    v27 = 69;
    v28 = 2114;
    v29 = v18;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __FCChannelsWithHeldRecords_block_invoke;
  v19[3] = &unk_1E7C37C38;
  v8 = v5;
  v20 = v8;
  v9 = v7;
  v21 = v9;
  v10 = [v6 transformRecordsWithBlock:v19];
  v11 = [v10 fc_dictionaryWithKeySelector:sel_identifier];

  v12 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [v6 count];
    v15 = [v11 count];
    *buf = 134218240;
    v23 = v14;
    v24 = 2048;
    v25 = v15;
    _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "ArticleHeadlineUtilities transformed heldTagRecords:%lu into tags:%lu", buf, 0x16u);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v11;
}

FCTag *__FCChannelsWithHeldRecords_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [FCTag alloc];
  v8 = *(a1 + 32);
  v9 = [v6 base];
  v10 = [v9 identifier];
  v11 = [(FCTag *)v7 initWithTagRecord:v6 assetManager:v8 interestToken:v5 specialTagFeedType:FCSpecialTagFeedTypeForTagID(v10, *(a1 + 40))];

  return v11;
}

FCIssue *__FCIssuesWithHeldRecords_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 channelTagID];
  v9 = [v7 fc_safeObjectForKey:v8];

  if (v9)
  {
    v10 = v9;
    v11 = [[FCIssue alloc] initWithIssueRecord:v5 assetManager:*(a1 + 40) interestToken:v6 sourceChannel:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id FCHeadlinesWithHeldRecords(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a5;
  v17 = FCChannelsWithHeldRecords(v14, a4, v13);
  v18 = FCIssuesWithHeldRecords(v14, v16, v17);

  if (a7)
  {
    v19 = -[FCHeadlineExperimentalTitleProvider initWithShouldShowAlternateHeadlines:]([FCHeadlineExperimentalTitleProvider alloc], "initWithShouldShowAlternateHeadlines:", [v13 shouldShowAlternateHeadlines]);
  }

  else
  {
    v19 = 0;
  }

  v20 = MEMORY[0x1E695DF20];
  v21 = [v15 allRecordIDs];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __FCHeadlinesWithHeldRecords_block_invoke;
  v30[3] = &unk_1E7C406C8;
  v31 = v13;
  v32 = v14;
  v33 = v15;
  v34 = v17;
  v36 = v19;
  v37 = a6;
  v35 = v18;
  v22 = v19;
  v23 = v18;
  v24 = v17;
  v25 = v15;
  v26 = v14;
  v27 = v13;
  v28 = [v20 fc_dictionaryWithKeys:v21 allowingNil:1 valueBlock:v30];

  return v28;
}

id FCHeadlinesByArticleListIDFromHeldRecordsAndArticleLists(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a6;
  v17 = a5;
  v18 = FCChannelsWithHeldRecords(v14, a4, v13);
  v19 = FCIssuesWithHeldRecords(v14, v17, v18);

  v20 = MEMORY[0x1E695DF20];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __FCHeadlinesByArticleListIDFromHeldRecordsAndArticleLists_block_invoke;
  v29[3] = &unk_1E7C40718;
  v30 = v13;
  v31 = v16;
  v32 = v14;
  v33 = v15;
  v35 = v19;
  v36 = a7;
  v34 = v18;
  v21 = v19;
  v22 = v18;
  v23 = v15;
  v24 = v14;
  v25 = v16;
  v26 = v13;
  v27 = [v20 fc_dictionary:v29];

  return v27;
}

void __FCHeadlinesByArticleListIDFromHeldRecordsAndArticleLists_block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = -[FCHeadlineExperimentalTitleProvider initWithShouldShowAlternateHeadlines:]([FCHeadlineExperimentalTitleProvider alloc], "initWithShouldShowAlternateHeadlines:", [*(a1 + 32) shouldShowAlternateHeadlines]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = *(a1 + 40);
  v5 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        v10 = [v9 articleIDs];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __FCHeadlinesByArticleListIDFromHeldRecordsAndArticleLists_block_invoke_2;
        v25[3] = &unk_1E7C406F0;
        v26 = *(a1 + 32);
        v27 = *(a1 + 48);
        v28 = *(a1 + 56);
        v11 = *(a1 + 64);
        v13 = *(a1 + 72);
        v12 = *(a1 + 80);
        v29 = v11;
        v32 = v12;
        v30 = v13;
        v31 = v4;
        v14 = [v10 fc_arrayByTransformingWithBlock:v25];

        if ([v9 type] == 1)
        {
          v15 = [v9 editorialMetadata];

          if (v15)
          {
            v16 = [v9 editorialMetadata];
            [v16 articleMetadata];
            v17 = v7;
            v18 = v4;
            v20 = v19 = v3;

            v21 = FCAssignHeadlineMetadata(v14, v20, *(a1 + 32));

            v3 = v19;
            v4 = v18;
            v7 = v17;
            v14 = v21;
          }
        }

        v22 = [v9 identifier];
        [v3 setObject:v14 forKeyedSubscript:v22];
      }

      v6 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v6);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void sub_1B66502D0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t FCHLSUIntegerFromString(void *a1)
{
  v1 = MEMORY[0x1E696AE88];
  v2 = a1;
  v3 = [[v1 alloc] initWithString:v2];

  v6 = 0;
  [v3 scanUnsignedLongLong:&v6];
  v4 = v6;

  return v4;
}

uint64_t FCPaymentTransactionStateFromSKState(uint64_t result)
{
  if ((result - 1) >= 4)
  {
    return 0;
  }

  return result;
}

id getSKPaymentQueueClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSKPaymentQueueClass_softClass;
  v7 = getSKPaymentQueueClass_softClass;
  if (!getSKPaymentQueueClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSKPaymentQueueClass_block_invoke;
    v3[3] = &unk_1E7C3C510;
    v3[4] = &v4;
    __getSKPaymentQueueClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B6655B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B665605C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSKPaymentQueueClass_block_invoke(uint64_t a1)
{
  StoreKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SKPaymentQueue");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKPaymentQueueClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    StoreKitLibrary();
  }
}

void StoreKitLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!StoreKitLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __StoreKitLibraryCore_block_invoke_0;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7C408F8;
    v4 = 0;
    StoreKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v2[0];
    if (StoreKitLibraryCore_frameworkLibrary)
    {
      if (!v2[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }

LABEL_4:
  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __StoreKitLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  StoreKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getSKPaymentQueueClientClass_block_invoke(uint64_t a1)
{
  StoreKitLibrary();
  result = objc_getClass("SKPaymentQueueClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKPaymentQueueClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return resolvedPuzzleTypeTraits(v3);
  }

  return result;
}

uint64_t resolvedPuzzleTypeTraits(void *a1)
{
  v1 = a1;
  v2 = [v1 kind];
  v3 = [v1 behaviorFlags];

  v4 = resolvedPuzzleTypeTraitsFromKind(v2, v3);
  return v4;
}

uint64_t resolvedPuzzleTypeTraitsFromKind(void *a1, uint64_t a2)
{
  v3 = a1;
  if ([v3 isEqualToString:@"SUDOKU"])
  {
    v4 = a2 | 0x38000;
  }

  else
  {
    v4 = a2;
  }

  v5 = [v3 isEqualToString:@"WORD_BRICKS"];

  if (v5)
  {
    return v4 | 0x40000;
  }

  else
  {
    return v4;
  }
}

uint64_t resolvedPuzzleTypeBehaviorFlags(void *a1)
{
  v1 = a1;
  v2 = [v1 kind];
  v3 = [v1 behaviorFlags];

  v4 = resolvedPuzzleTypeTraitsFromKind(v2, v3);
  return v4;
}

id resolvedPuzzleTypeDifficulty(void *a1)
{
  v1 = a1;
  v2 = [v1 puzzleType];
  v3 = [v1 difficulty];

  v4 = resolvedPuzzleTypeDifficultyWithPuzzleType(v2, v3);

  return v4;
}

id resolvedPuzzleTypeDifficultyWithPuzzleType(void *a1, uint64_t a2)
{
  if ((resolvedPuzzleTypeTraits(a1) & 0x8000) != 0)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithLong:a2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id resolvedPuzzleTypeDifficultyWithPuzzleTypeRecord(void *a1, uint64_t a2)
{
  if ((resolvedPuzzleTypeBehaviorFlags(a1) & 0x8000) != 0)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithLong:a2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t FCRecipeContentFormatFromString(void *a1)
{
  v1 = a1;
  if ([v1 caseInsensitiveCompare:@"jsonld"])
  {
    v2 = 2 * ([v1 caseInsensitiveCompare:@"iarf"] == 0);
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

uint64_t FCRecipeContentEncodingFromString(void *a1)
{
  v1 = a1;
  if ([v1 caseInsensitiveCompare:@"json"])
  {
    v2 = 2 * ([v1 caseInsensitiveCompare:@"fb"] == 0);
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

uint64_t FCFeedTransformationItemIsRecipe(void *a1)
{
  v1 = [a1 topicIDs];
  v2 = [v1 containsObject:@"TG6jHn_W2N7SaKRJiXzLqVA"];

  return v2;
}

void sub_1B66624D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6662990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FCCKAllowedSystemFieldNames()
{
  if (qword_1EDB27460 != -1)
  {
    dispatch_once(&qword_1EDB27460, &__block_literal_global_78);
  }

  v1 = _MergedGlobals_163;

  return v1;
}

void __FCCKAllowedSystemFieldNames_block_invoke()
{
  v6[7] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695B7D0];
  v6[0] = *MEMORY[0x1E695B7F0];
  v6[1] = v0;
  v1 = *MEMORY[0x1E695B7C8];
  v6[2] = *MEMORY[0x1E695B7E0];
  v6[3] = v1;
  v2 = *MEMORY[0x1E695B7D8];
  v6[4] = *MEMORY[0x1E695B7E8];
  v6[5] = v2;
  v6[6] = *MEMORY[0x1E695B7F8];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:7];
  v4 = _MergedGlobals_163;
  _MergedGlobals_163 = v3;

  v5 = *MEMORY[0x1E69E9840];
}

id FCCKServerFieldNameForUserFieldName(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (qword_1EDB27470 == -1)
  {
    if (v1)
    {
LABEL_3:
      v3 = [qword_1EDB27468 objectForKeyedSubscript:v2];
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(&qword_1EDB27470, &__block_literal_global_2_1);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
LABEL_6:

  return v3;
}

void __FCCKServerFieldNameForUserFieldName_block_invoke()
{
  v10[7] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695B7F0];
  v9[0] = @"recordID";
  v9[1] = @"creationDate";
  v1 = *MEMORY[0x1E695B7C8];
  v10[0] = v0;
  v10[1] = v1;
  v2 = *MEMORY[0x1E695B7E8];
  v9[2] = @"modificationDate";
  v9[3] = @"creatorUserRecordID";
  v3 = *MEMORY[0x1E695B7D0];
  v10[2] = v2;
  v10[3] = v3;
  v4 = *MEMORY[0x1E695B7E0];
  v9[4] = @"lastModifiedUserRecordID";
  v9[5] = @"recordChangeTag";
  v5 = *MEMORY[0x1E695B7D8];
  v10[4] = v4;
  v10[5] = v5;
  v9[6] = @"shareID";
  v10[6] = *MEMORY[0x1E695B7F8];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:7];
  v7 = qword_1EDB27468;
  qword_1EDB27468 = v6;

  v8 = *MEMORY[0x1E69E9840];
}

id NTPBCKRecordFieldIdentifierForUserFieldName(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E695B718];
  v2 = a1;
  if ([v2 isEqualToString:v1] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unsupported operation for special key-path allTokens"];
    v11 = 136315906;
    v12 = "NTPBCKRecordFieldIdentifier *NTPBCKRecordFieldIdentifierForUserFieldName(NSString *__strong)";
    v13 = 2080;
    v14 = "FCCKPredicateConversion.m";
    v15 = 1024;
    v16 = 54;
    v17 = 2114;
    v18 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v11, 0x26u);
  }

  v3 = FCCKServerFieldNameForUserFieldName(v2);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  v7 = objc_opt_new();
  [v7 setName:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t NTPBCKQueryFilterTypeForNSPredicateOperatorType(unint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1 < 0xB && ((0x53Fu >> a1) & 1) != 0)
  {
    result = dword_1B681A8A8[a1];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected operator for predicate"];
      v4 = 136315906;
      v5 = "NTPBCKQueryFilter_Type NTPBCKQueryFilterTypeForNSPredicateOperatorType(NSPredicateOperatorType)";
      v6 = 2080;
      v7 = "FCCKPredicateConversion.m";
      v8 = 1024;
      v9 = 92;
      v10 = 2114;
      v11 = v3;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v4, 0x26u);
    }

    result = 1;
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

id FCCKVerifyFilters(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v13 + 1) + 8 * i) fieldName];
        v7 = [v6 name];

        v8 = FCCKAllowedSystemFieldNames();
        v9 = [v8 containsObject:v7];

        if ((v9 & 1) != 0 || !v7)
        {

          goto LABEL_13;
        }

        v10 = CKValidateKeyName();

        if (v10)
        {
          goto LABEL_14;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v10 = 0;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_13:
    v10 = 0;
  }

LABEL_14:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id FCCKNSArrayFromCollection(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 allValues];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [v1 allObjects];
    }

    else
    {
      v2 = v1;
    }
  }

  v3 = v2;

  return v3;
}

uint64_t FCNextHigherVolumeFeedBin(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = 2;
    if (a1 != 1)
    {
      v1 = a1;
    }

    if (a1 == 2)
    {
      result = 3;
    }

    else
    {
      result = v1;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't increase an unknown bin"];
      v5 = 136315906;
      v6 = "FCFeedBin FCNextHigherVolumeFeedBin(FCFeedBin)";
      v7 = 2080;
      v8 = "FCFeedBins.m";
      v9 = 1024;
      v10 = 26;
      v11 = 2114;
      v12 = v4;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v5, 0x26u);
    }

    result = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *FCStringFromFeedBin(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E7C40BB8[a1];
  }
}

id FCOfflineThumbnailAssetHandlesForHeadline(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x1E695DEC8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FCOfflineThumbnailAssetHandlesForHeadline_block_invoke;
  v10[3] = &unk_1E7C3B110;
  v11 = v4;
  v12 = v3;
  v6 = v3;
  v7 = v4;
  v8 = [v5 fc_array:v10];

  return v8;
}

void __FCOfflineThumbnailAssetHandlesForHeadline_block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  if ([*(a1 + 32) useSmallestArticleThumbnails] && (objc_msgSend(*(a1 + 40), "thumbnailLQ"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [*(a1 + 40) thumbnailLQ];
    v5 = [v4 thumbnailAssetHandle];
    [v11 fc_safelyAddObject:v5];
  }

  else
  {
    v6 = *(a1 + 40);
    if (qword_1EDB27480 != -1)
    {
      dispatch_once(&qword_1EDB27480, &__block_literal_global_79);
    }

    if (_MergedGlobals_164 == 1 && ([v6 thumbnailHQ], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      v8 = [v6 thumbnailHQ];
    }

    else
    {
      v8 = [v6 thumbnail];
    }

    v9 = v8;
    v4 = [v8 thumbnailAssetHandle];

    [v11 fc_safelyAddObject:v4];
  }

  v10 = [*(a1 + 40) videoStillImage];
  [v11 fc_safelyAddObject:v10];
}

id FCOfflineThumbnailAssetHandlesForIssue(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E695DEC8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __FCOfflineThumbnailAssetHandlesForIssue_block_invoke;
  v6[3] = &unk_1E7C36D40;
  v7 = v1;
  v3 = v1;
  v4 = [v2 fc_array:v6];

  return v4;
}

void __FCOfflineThumbnailAssetHandlesForIssue_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 coverImageAssetHandle];
  [v3 fc_safelyAddObject:v4];
}

id FCOfflineThumbnailAssetHandlesForPuzzle(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x1E695DEC8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FCOfflineThumbnailAssetHandlesForPuzzle_block_invoke;
  v10[3] = &unk_1E7C3B110;
  v11 = v3;
  v12 = v4;
  v6 = v4;
  v7 = v3;
  v8 = [v5 fc_array:v10];

  return v8;
}

void __FCOfflineThumbnailAssetHandlesForPuzzle_block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) thumbnailSmallImageAssetHandle];
  [v7 fc_safelyAddObject:v3];

  v4 = [*(a1 + 32) puzzleType];
  v5 = [v4 exploreTileImageAssetHandle];
  [v7 fc_safelyAddObject:v5];

  if (([*(a1 + 40) useSmallestPuzzleThumbnails] & 1) == 0)
  {
    v6 = [*(a1 + 32) thumbnailLargeImageAssetHandle];
    [v7 fc_safelyAddObject:v6];
  }
}

id FCOfflineThumbnailAssetHandlesForRecipe(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x1E695DEC8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FCOfflineThumbnailAssetHandlesForRecipe_block_invoke;
  v10[3] = &unk_1E7C3B110;
  v11 = v4;
  v12 = v3;
  v6 = v3;
  v7 = v4;
  v8 = [v5 fc_array:v10];

  return v8;
}

void __FCOfflineThumbnailAssetHandlesForRecipe_block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([*(a1 + 32) useSmallestRecipeThumbnails] && (objc_msgSend(*(a1 + 40), "thumbnailSmall"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [*(a1 + 40) thumbnailSmall];
    v5 = [v4 thumbnailAssetHandle];
    [v10 fc_safelyAddObject:v5];
  }

  else
  {
    v6 = *(a1 + 40);
    if (qword_1EDB27480 != -1)
    {
      dispatch_once(&qword_1EDB27480, &__block_literal_global_79);
    }

    if (_MergedGlobals_164 == 1 && ([v6 thumbnailLarge], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      v8 = [v6 thumbnailLarge];
    }

    else
    {
      v8 = [v6 thumbnailMedium];
    }

    v9 = v8;
    v4 = [v8 thumbnailAssetHandle];

    [v10 fc_safelyAddObject:v4];
  }
}

id FCOfflineThumbnailAssetHandlesForArticleRecord(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = MEMORY[0x1E695DEC8];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __FCOfflineThumbnailAssetHandlesForArticleRecord_block_invoke;
  v14[3] = &unk_1E7C3B1F8;
  v15 = v6;
  v16 = v5;
  v17 = v7;
  v9 = v7;
  v10 = v5;
  v11 = v6;
  v12 = [v8 fc_array:v14];

  return v12;
}

void __FCOfflineThumbnailAssetHandlesForArticleRecord_block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  if ([*(a1 + 32) useSmallestArticleThumbnails] && (objc_msgSend(*(a1 + 40), "thumbnailLQURL"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = *(a1 + 40);
    v5 = [v4 thumbnailLQURL];
    v6 = [v4 generateThumbnailAssetHandleForURL:v5 withAssetManager:*(a1 + 48)];
    [v16 fc_safelyAddObject:v6];
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 40);
    v9 = v7;
    if (qword_1EDB27480 != -1)
    {
      dispatch_once(&qword_1EDB27480, &__block_literal_global_79);
    }

    if (_MergedGlobals_164 == 1 && ([v8 thumbnailHQURL], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      v11 = [v8 thumbnailHQURL];
    }

    else
    {
      v11 = [v8 thumbnailURL];
    }

    v12 = v11;
    v5 = [v8 generateThumbnailAssetHandleForURL:v11 withAssetManager:v9];

    [v16 fc_safelyAddObject:v5];
  }

  v13 = *(a1 + 40);
  v14 = [v13 videoStillImageURL];
  v15 = [v13 generateThumbnailAssetHandleForURL:v14 withAssetManager:*(a1 + 48)];
  [v16 fc_safelyAddObject:v15];
}

id FCOfflineThumbnailAssetHandlesForPuzzleRecords(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = MEMORY[0x1E695DEC8];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __FCOfflineThumbnailAssetHandlesForPuzzleRecords_block_invoke;
  v18[3] = &unk_1E7C40BE0;
  v19 = v8;
  v20 = v7;
  v21 = v10;
  v22 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v7;
  v15 = v8;
  v16 = [v11 fc_array:v18];

  return v16;
}

void __FCOfflineThumbnailAssetHandlesForPuzzleRecords_block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = resolvedPuzzleTypeDifficultyWithPuzzleTypeRecord(*(a1 + 32), [*(a1 + 40) difficultyLevel]);
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) publishedDate];
  v6 = [v5 nsDate];
  v7 = [v4 generateThumbnailImageAssetHandleForDate:v6 difficulty:v3 assetManager:*(a1 + 48)];
  [v10 fc_safelyAddObject:v7];

  v8 = [*(a1 + 32) generateExploreTileImageAssetHandleWithAssetManager:*(a1 + 48)];
  [v10 fc_safelyAddObject:v8];

  if (([*(a1 + 56) useSmallestPuzzleThumbnails] & 1) == 0)
  {
    v9 = [*(a1 + 40) generateThumbnailLargeImageAssetHandleWithAssetManager:*(a1 + 48)];
    [v10 fc_safelyAddObject:v9];
  }
}

id FCOfflineThumbnailAssetHandlesForRecipeRecord(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = MEMORY[0x1E695DEC8];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __FCOfflineThumbnailAssetHandlesForRecipeRecord_block_invoke;
  v14[3] = &unk_1E7C3B1F8;
  v15 = v6;
  v16 = v5;
  v17 = v7;
  v9 = v7;
  v10 = v5;
  v11 = v6;
  v12 = [v8 fc_array:v14];

  return v12;
}

void __FCOfflineThumbnailAssetHandlesForRecipeRecord_block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  if ([*(a1 + 32) useSmallestArticleThumbnails] && (objc_msgSend(*(a1 + 40), "thumbnailSmallURL"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = *(a1 + 40);
    v5 = [v4 thumbnailSmallURL];
    v6 = [v4 generateThumbnailAssetHandleForURL:v5 withAssetManager:*(a1 + 48)];
    [v13 fc_safelyAddObject:v6];
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 40);
    v9 = v7;
    if (qword_1EDB27480 != -1)
    {
      dispatch_once(&qword_1EDB27480, &__block_literal_global_79);
    }

    if (_MergedGlobals_164 == 1 && ([v8 thumbnailSmallURL], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      v11 = [v8 thumbnailSmallURL];
    }

    else
    {
      v11 = [v8 thumbnailMediumURL];
    }

    v12 = v11;
    v5 = [v8 generateThumbnailAssetHandleForURL:v11 withAssetManager:v9];

    [v13 fc_safelyAddObject:v5];
  }
}

void sub_1B6669328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FCAssetHandleForArticleAndMinimumSize(void *a1, double a2, double a3, double a4)
{
  v4 = FCThumbnailForHeadlineMinimumSizeInPixels(a1, a2 * a4, a3 * a4);
  v5 = [v4 thumbnailAssetHandle];

  return v5;
}

BOOL FCHeadlineHasLocalThumbnail(void *a1)
{
  v1 = a1;
  v2 = [v1 thumbnailUltraHQ];
  v3 = [v2 thumbnailAssetHandle];
  v4 = [v3 filePath];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v1 thumbnailHQ];
    v7 = [v6 thumbnailAssetHandle];
    v8 = [v7 filePath];
    if (v8)
    {
      v5 = 1;
    }

    else
    {
      v18 = [v1 thumbnailMedium];
      v9 = [v18 thumbnailAssetHandle];
      v10 = [v9 filePath];
      if (v10)
      {
        v5 = 1;
      }

      else
      {
        v17 = [v1 thumbnail];
        v16 = [v17 thumbnailAssetHandle];
        v11 = [v16 filePath];
        if (v11)
        {
          v5 = 1;
        }

        else
        {
          v15 = [v1 thumbnailLQ];
          v14 = [v15 thumbnailAssetHandle];
          v12 = [v14 filePath];
          v5 = v12 != 0;

          v11 = 0;
        }
      }
    }
  }

  return v5;
}

id FCPlaceholderHeadlineThumbnail()
{
  v0 = FCBundle();
  v1 = [v0 pathForResource:@"cellImagePlaceholder" ofType:@"png"];

  v2 = [[FCRawFileDataProvider alloc] initWithFilePath:v1];
  v3 = [[FCAssetHandle alloc] initWithDataProvider:v2];
  v4 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v3 thumbnailSize:1.0, 1.0];

  return v4;
}

id FCCachedThumbnailForHeadline(void *a1)
{
  v1 = a1;
  v2 = [v1 thumbnailUltraHQ];
  v3 = [v2 thumbnailAssetHandle];
  v4 = [v3 filePath];

  if (v4)
  {
    v5 = [v1 thumbnailUltraHQ];
LABEL_11:
    v18 = v5;
    goto LABEL_12;
  }

  v6 = [v1 thumbnailHQ];
  v7 = [v6 thumbnailAssetHandle];
  v8 = [v7 filePath];

  if (v8)
  {
    v5 = [v1 thumbnailHQ];
    goto LABEL_11;
  }

  v9 = [v1 thumbnailMedium];
  v10 = [v9 thumbnailAssetHandle];
  v11 = [v10 filePath];

  if (v11)
  {
    v5 = [v1 thumbnailMedium];
    goto LABEL_11;
  }

  v12 = [v1 thumbnail];
  v13 = [v12 thumbnailAssetHandle];
  v14 = [v13 filePath];

  if (v14)
  {
    v5 = [v1 thumbnail];
    goto LABEL_11;
  }

  v15 = [v1 thumbnailLQ];
  v16 = [v15 thumbnailAssetHandle];
  v17 = [v16 filePath];

  if (v17)
  {
    v5 = [v1 thumbnailLQ];
    goto LABEL_11;
  }

  v18 = 0;
LABEL_12:

  return v18;
}

id FCThumbnailForHeadline(void *a1)
{
  v1 = FCCachedThumbnailForHeadline(a1);
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = FCPlaceholderHeadlineThumbnail();
  }

  v4 = v3;

  return v4;
}

id FCFetchThumbnailForHeadlineWithMinimumSize(void *a1, uint64_t a2, void *a3, double a4, double a5, double a6)
{
  v11 = a3;
  v12 = FCAssetHandleForArticleAndMinimumSize(a1, a4, a5, a6);
  v13 = v12;
  if (v12)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __FCFetchThumbnailForHeadlineWithMinimumSize_block_invoke;
    v16[3] = &unk_1E7C37BC0;
    v17 = v12;
    v18 = v11;
    v14 = [v17 downloadIfNeededWithPriority:a2 completion:v16];
  }

  else
  {
    if (v11)
    {
      (*(v11 + 2))(v11, 0, 0);
    }

    v14 = 0;
  }

  return v14;
}

uint64_t __FCFetchThumbnailForHeadlineWithMinimumSize_block_invoke(uint64_t a1)
{
  [*(a1 + 32) filePath];

  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

id FCNarrativeTrackForSubscription(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v4)
  {
    v16 = v3;
    v14 = [v16 narrativeTrackSample];

    goto LABEL_9;
  }

  v6 = [v4 cachedSubscription];
  v7 = objc_getAssociatedObject(v6, (v6 + 1));
  v8 = [v7 unsignedIntegerValue];
  v9 = v8;
  v10 = objc_getAssociatedObject(v6, ~v8);
  v11 = [v10 unsignedIntegerValue] ^ v9;

  if (v11)
  {

    goto LABEL_7;
  }

  v12 = [v3 narrativeTrackSample];

  if (!v12)
  {
LABEL_7:
    v13 = [v3 narrativeTrack];
    goto LABEL_8;
  }

  v13 = [v3 narrativeTrackSample];
LABEL_8:
  v14 = v13;
LABEL_9:

  return v14;
}

void sub_1B666EF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *FCFDBErrorMessage(sqlite3 *a1)
{
  if (a1)
  {
    v2 = sqlite3_errmsg(a1);
    if (v2)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithCString:v2 encoding:4];
    }

    else
    {
      v3 = @"<unknown>";
    }
  }

  else
  {
    v3 = @"<unknown>";
  }

  return v3;
}

uint64_t FCFDBInvokeOpen(const char *a1, sqlite3 **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = sqlite3_open_v2(a1, a2, 32774, 0);
  if (v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = FCFDBErrorMessage(*a2);
    v8 = [v6 initWithFormat:@"sqlite3 open failed with result=%d, error=%@", v3, v7];
    *buf = 136315906;
    v10 = "int FCFDBInvokeOpen(const char *, sqlite3 **, int)";
    v11 = 2080;
    v12 = "FCFDBUtilities.m";
    v13 = 1024;
    v14 = 20;
    v15 = 2114;
    v16 = v8;
    _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: FDBOpenFailed) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t FCFDBInvokeClose(sqlite3 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = sqlite3_close(a1);
  if (v2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = FCFDBErrorMessage(a1);
    v7 = [v5 initWithFormat:@"sqlite3 close failed with result=%d, error=%@", v2, v6];
    *buf = 136315906;
    v9 = "int FCFDBInvokeClose(sqlite3 *)";
    v10 = 2080;
    v11 = "FCFDBUtilities.m";
    v12 = 1024;
    v13 = 27;
    v14 = 2114;
    v15 = v7;
    _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: FDBCloseFailed) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t FCFDBInvokeExec(sqlite3 *a1, const char *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = sqlite3_exec(a1, a2, 0, 0, 0);
  if (v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = FCFDBErrorMessage(a1);
    v8 = [v6 initWithFormat:@"sqlite3 exec failed with result=%d, error=%@", v3, v7];
    *buf = 136315906;
    v10 = "int FCFDBInvokeExec(sqlite3 *, const char *)";
    v11 = 2080;
    v12 = "FCFDBUtilities.m";
    v13 = 1024;
    v14 = 34;
    v15 = 2114;
    v16 = v8;
    _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: FDBExecFailed) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t FCFDBInvokePrepare(sqlite3 *a1, id a2, sqlite3_stmt **a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = sqlite3_prepare_v2(a1, [a2 cStringUsingEncoding:4], -1, a3, 0);
  if (v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = FCFDBErrorMessage(a1);
    v12 = [v10 initWithFormat:@"sqlite3 prepare failed with result=%d, error=%@", v7, v11];
    *buf = 136315906;
    v14 = "int FCFDBInvokePrepare(sqlite3 *, NSString *__strong, sqlite3_stmt **)";
    v15 = 2080;
    v16 = "FCFDBUtilities.m";
    v17 = 1024;
    v18 = 41;
    v19 = 2114;
    v20 = v12;
    _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: FDBPrepareFailed) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t FCFDBInvokeStep(sqlite3 *a1, sqlite3_stmt *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = sqlite3_step(a2);
  if ((v3 & 0xFFFFFFFE) != 0x64 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = FCFDBErrorMessage(a1);
    v8 = [v6 initWithFormat:@"sqlite3 step failed with result=%d, error=%@", v3, v7];
    *buf = 136315906;
    v10 = "int FCFDBInvokeStep(sqlite3 *, sqlite3_stmt *)";
    v11 = 2080;
    v12 = "FCFDBUtilities.m";
    v13 = 1024;
    v14 = 48;
    v15 = 2114;
    v16 = v8;
    _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: FDBStepFailed) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t FCFDBInvokeFinalize(sqlite3 *a1, sqlite3_stmt *pStmt)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = sqlite3_finalize(pStmt);
  if (v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = FCFDBErrorMessage(a1);
    v8 = [v6 initWithFormat:@"sqlite3 finalize failed with result=%d, error=%@", v3, v7];
    *buf = 136315906;
    v10 = "int FCFDBInvokeFinalize(sqlite3 *, sqlite3_stmt *)";
    v11 = 2080;
    v12 = "FCFDBUtilities.m";
    v13 = 1024;
    v14 = 55;
    v15 = 2114;
    v16 = v8;
    _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: FDBFinalizeFailed) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1B6671178(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

__CFString *NSStringFromFCNewsPersonalizationArticleEmbeddingsFittingConfigurationEmbeddingType(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"body";
  }

  else
  {
    return @"title";
  }
}

void sub_1B6674AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6674DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6676570(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

id FCCloudKitIDFromUUID(void *a1, void *a2)
{
  v3 = a2;
  v4 = FCUUIDStringToUUIDBytes(a1);
  v5 = [v4 base64EncodedStringWithOptions:0];

  v6 = [v5 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

  v7 = [v6 stringByReplacingOccurrencesOfString:@"+" withString:@"-"];

  v8 = [v7 substringToIndex:22];
  v9 = [v3 stringByAppendingString:v8];

  return v9;
}

id FCUUIDFromCloudKitID(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 length] != 23 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "cloudKitID.length == FCLengthOfCloudKitID"];
    *buf = 136315906;
    v12 = "NSString *FCUUIDFromCloudKitID(NSString *__strong)";
    v13 = 2080;
    v14 = "FCNewsIDUtilities.m";
    v15 = 1024;
    v16 = 38;
    v17 = 2114;
    v18 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v2 = [v1 substringFromIndex:1];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"_" withString:@"/"];

  v4 = [v3 stringByReplacingOccurrencesOfString:@"-" withString:@"+"];

  v5 = [v4 stringByAppendingString:@"=="];

  v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v5 options:0];
  v7 = FCUUIDBytesToUUIDString(v6);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id FCRandomTagCloudKitID()
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v0 UUIDString];
  v2 = FCCloudKitIDFromUUID(v1, @"T");

  return v2;
}

id FCRandomArticleCloudKitID()
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v0 UUIDString];
  v2 = FCCloudKitIDFromUUID(v1, @"A");

  return v2;
}

id FCRandomIssueCloudKitID()
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v0 UUIDString];
  v2 = FCCloudKitIDFromUUID(v1, @"I");

  return v2;
}

id FCRandomForYouConfigCloudKitID()
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v0 UUIDString];
  v2 = FCCloudKitIDFromUUID(v1, @"Y-");

  return v2;
}

id FCRandomArticleListCloudKitID()
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v0 UUIDString];
  v2 = FCCloudKitIDFromUUID(v1, @"L");

  return v2;
}

id FCRandomIssueListCloudKitID()
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v0 UUIDString];
  v2 = FCCloudKitIDFromUUID(v1, @"M");

  return v2;
}

id FCRandomNotificationItemCloudKitID()
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v0 UUIDString];
  v2 = FCCloudKitIDFromUUID(v1, @"NI");

  return v2;
}

id FCRandomPuzzleCloudKitID()
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v0 UUIDString];
  v2 = FCCloudKitIDFromUUID(v1, @"J");

  return v2;
}

id FCRandomPuzzleTypeCloudKitID()
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v0 UUIDString];
  v2 = FCCloudKitIDFromUUID(v1, @"Z");

  return v2;
}

id FCRandomShortcutCategoryCloudKitID()
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v0 UUIDString];
  v2 = FCUUIDFromCloudKitID(v1);

  return v2;
}

uint64_t FCSubscriptionButtonTypeWithValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 caseInsensitiveCompare:@"SubscriptionButtonTypeArticle"])
    {
      if ([v2 caseInsensitiveCompare:@"SubscriptionButtonTypeLandingPage"])
      {
        if ([v2 caseInsensitiveCompare:@"SubscriptionButtonTypeIssueCover"])
        {
          v3 = 0;
        }

        else
        {
          v3 = 3;
        }
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t FCTargetTypeWithValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 caseInsensitiveCompare:@"SubscriptionButtonTargetTypeLandingPage"])
    {
      if ([v2 caseInsensitiveCompare:@"SubscriptionButtonTargetTypeOsloSheet"])
      {
        if ([v2 caseInsensitiveCompare:@"SubscriptionButtonTargetTypeAMSSheet"])
        {
          v3 = 0;
        }

        else
        {
          v3 = 3;
        }
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL FCPostPurchaseActionTypeWithValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = v1 && [v1 caseInsensitiveCompare:@"SubscriptionButtonPostPurchaseActionTypeNone"] && objc_msgSend(v2, "caseInsensitiveCompare:", @"SubscriptionButtonPostPurchaseActionTypeURL") == 0;

  return v3;
}

void sub_1B667FBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSKReceiptRefreshRequestClass_block_invoke(uint64_t a1)
{
  StoreKitLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SKReceiptRefreshRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    _MergedGlobals_170 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    StoreKitLibrary_0();
  }
}

void StoreKitLibrary_0()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!StoreKitLibraryCore_frameworkLibrary_0)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __StoreKitLibraryCore_block_invoke_1;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7C41190;
    v4 = 0;
    StoreKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v0 = v2[0];
    if (StoreKitLibraryCore_frameworkLibrary_0)
    {
      if (!v2[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }

LABEL_4:
  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __StoreKitLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  StoreKitLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

FCSubscriptionList *__getSKPaymentQueueClientClass_block_invoke_0(uint64_t a1)
{
  StoreKitLibrary_0();
  result = objc_getClass("SKPaymentQueueClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1EDB27570 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(FCSubscriptionList *)v3 initWithContext:v4 pushNotificationCenter:v5 storeDirectory:v6, v7];
  }

  return result;
}

void sub_1B6683A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6683C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6683EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6687258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FCFeedRangeCoveredByFeedItems(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    v2 = [v1 firstObject];
    v3 = +[FCFeedCursor cursorForOrder:](FCFeedCursor, "cursorForOrder:", [v2 order]);

    v4 = [v1 lastObject];
    v5 = +[FCFeedCursor cursorForOrder:](FCFeedCursor, "cursorForOrder:", [v4 order] - 1);

    v6 = [FCFeedRange feedRangeWithTop:v3 bottom:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1B6689F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FCFeedGroupTypeFromNSString(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (([v1 isEqualToString:@"None"] & 1) == 0)
  {
    if ([v1 isEqualToString:@"SingleTag"])
    {
      v2 = 1;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"TopStories"])
    {
      v2 = 26;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"TrendingStories"])
    {
      v2 = 2;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"DailyBriefings"])
    {
      v2 = 3;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"SavedStories"])
    {
      v2 = 4;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"GreatStoriesYouMissed"])
    {
      v2 = 5;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"Editorial"])
    {
      v2 = 6;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"Latest"])
    {
      v2 = 8;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"Topic"])
    {
      v2 = 9;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"MoreForYou"])
    {
      v2 = 10;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"NewFavorite"])
    {
      v2 = 11;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"PaidSubscription"])
    {
      v2 = 12;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"BestOfEdition"])
    {
      v2 = 13;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"DraftArticles"])
    {
      v2 = 16;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"DraftIssues"])
    {
      v2 = 17;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"AutoFavorite"])
    {
      v2 = 14;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"MoreFromPublisher"])
    {
      v2 = 18;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"RelatedArticles"])
    {
      v2 = 19;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"RecommendedReads"])
    {
      v2 = 20;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"EndOfArticleUnknown"])
    {
      v2 = 21;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"Spotlight"])
    {
      v2 = 7;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"Curated"])
    {
      v2 = 23;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"Newspaper"])
    {
      v2 = 24;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"LocalNews"])
    {
      v2 = 25;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"AudioDailyBriefing"])
    {
      v2 = 36;
      goto LABEL_55;
    }

    if ([v1 isEqualToString:@"MagazineTrending"])
    {
      v2 = 37;
      goto LABEL_55;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Don't have a mapping for %@", v1];
      *buf = 136315906;
      v7 = "FCFeedGroupType FCFeedGroupTypeFromNSString(NSString *__strong)";
      v8 = 2080;
      v9 = "FCFeedGroupType.m";
      v10 = 1024;
      v11 = 125;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }

  v2 = 0;
LABEL_55:

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

__CFString *NSStringFromFCFeedGroupType(uint64_t a1)
{
  if ((a1 - 1) > 0x2C)
  {
    return @"None";
  }

  else
  {
    return off_1E7C415C0[a1 - 1];
  }
}

id NSErrorForHTTPStatusCode(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = v4;
  if (v3)
  {
    [v4 setObject:v3 forKeyedSubscript:*MEMORY[0x1E696A998]];
  }

  if (a1 > 399)
  {
    if ((a1 - 400) <= 0x1D && ((1 << (a1 + 112)) & 0x20002009) != 0)
    {
      goto LABEL_13;
    }

    if (a1 == 500 || a1 == 503)
    {
      [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"NSErrorFCAdditionsShouldRetry"];
LABEL_13:
      v7 = MEMORY[0x1E696ABC0];
      v8 = a1;
      goto LABEL_14;
    }

LABEL_21:
    v7 = MEMORY[0x1E696ABC0];
    v8 = -1000;
    v9 = 0;
    goto LABEL_15;
  }

  if (a1 <= 199)
  {
    if (a1 == -2000)
    {
      goto LABEL_13;
    }

    if (!a1)
    {
      v6 = MEMORY[0x1E695E118];
      [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"NSErrorFCAdditionsIsNetworkUnavailable"];
      [v5 setObject:v6 forKeyedSubscript:@"NSErrorFCAdditionsShouldRetry"];
      v7 = MEMORY[0x1E696ABC0];
      v8 = 0;
LABEL_14:
      v9 = v5;
LABEL_15:
      v10 = [v7 errorWithDomain:@"FCEndpointConnectionErrorDomain" code:v8 userInfo:v9];
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v10 = 0;
  if (a1 != 200 && a1 != 202)
  {
    goto LABEL_21;
  }

LABEL_16:

  return v10;
}

void sub_1B66939A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NSErrorByUpdatingRetryStatusForError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v2 isEqualToString:*MEMORY[0x1E696A978]];

  v4 = v1;
  if (v3)
  {
    v5 = [v1 code];
    v4 = v1;
    if ((v5 + 1009) <= 8)
    {
      v4 = v1;
      if (((1 << (v5 - 15)) & 0x131) != 0)
      {
        v6 = [v1 userInfo];
        v7 = [v6 mutableCopy];
        v8 = v7;
        if (v7)
        {
          v9 = v7;
        }

        else
        {
          v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        v10 = v9;

        [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"NSErrorFCAdditionsShouldRetry"];
        v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v1, "code") == -1009}];
        [v10 setObject:v11 forKeyedSubscript:@"NSErrorFCAdditionsIsNetworkUnavailable"];

        v12 = MEMORY[0x1E696ABC0];
        v13 = [v1 domain];
        v4 = [v12 errorWithDomain:v13 code:objc_msgSend(v1 userInfo:{"code"), v10}];
      }
    }
  }

  return v4;
}

void sub_1B669BE30(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B669C918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B669CB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B669E6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__35(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

id FCDownloadDestinationURLForAsset(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = arc4random();
  v3 = [MEMORY[0x1E696AD48] URLPathAllowedCharacterSet];
  v4 = [v3 mutableCopy];

  [v4 removeCharactersInString:@"/"];
  v5 = [v1 identifier];
  v24 = v4;
  v6 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:v4];

  if ([v6 length] >= 0xE8)
  {
    v7 = [v6 substringWithRange:{0, 231}];

    v6 = v7;
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", v2];
  v9 = MEMORY[0x1E696AEC0];
  if (v1)
  {
    v10 = v1[9];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = [v11 absoluteString];
  v13 = [v9 stringWithFormat:@"%@%@", v8, v12];
  v14 = [v13 UTF8String];
  v15 = strlen([v13 UTF8String]);
  CC_SHA1(v14, v15, md);
  v16 = [MEMORY[0x1E696AD60] stringWithCapacity:40];
  for (i = 0; i != 8; ++i)
  {
    [v16 appendFormat:@"%02X", md[i]];
  }

  v18 = @"_";
  if (!v6)
  {
    v18 = &stru_1F2DC7DC0;
  }

  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@.%@", v6, v18, v16, @"movpkg"];
  v20 = FCURLForAVAssetDownloads();
  v21 = [v20 URLByAppendingPathComponent:v19 isDirectory:0];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

void sub_1B669FC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FCCKDatabaseStartUpResultFromError(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v3 = 0;
    goto LABEL_12;
  }

  if ([v1 fc_isTemporaryNetworkOrServerError])
  {
    goto LABEL_3;
  }

  v4 = [v2 domain];
  if ([v4 isEqualToString:*MEMORY[0x1E696A250]])
  {
    v5 = [v2 code];

    if (v5 == 4097)
    {
LABEL_3:
      v3 = 1;
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ([v2 fc_isOfflineError])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

LABEL_12:

  return v3;
}

double FCCoverArtImageDimensionsFromJSON(void *a1)
{
  v1 = *MEMORY[0x1E695F060];
  v2 = *(MEMORY[0x1E695F060] + 8);
  v3 = a1;
  v4 = [v3 objectForKeyedSubscript:@"width"];
  v5 = [v3 objectForKeyedSubscript:@"height"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 floatValue];
      v1 = v6;
      [v5 floatValue];
    }
  }

  return v1;
}

void *FCCoverArtImageClassFromJSON(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"type"];
  v2 = objc_opt_class();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v1 isEqualToString:@"image2"])
  {
    v2 = objc_opt_class();
  }

  v3 = v2;

  return v2;
}

id FCCoverArtImageURLFromJSON(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"URL"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x1E695DFF8] URLWithString:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id FCCoverArtImagesFromUnprocessedImages(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v1, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v19;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v18 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = FCCoverArtImageDimensionsFromJSON(v8);
            v11 = v10;
            v12 = FCCoverArtImageClassFromJSON(v8);
            v13 = FCCoverArtImageURLFromJSON(v8);
            v14 = [v12 alloc];
            v15 = [v14 initWithDimensions:v13 URL:{v9, v11, v18}];
            [v2 fc_safelyAddObject:v15];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v2 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v2;
}

void FCMergeHistoryItemSeenFields(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "leftItem"];
    *buf = 136315906;
    v19 = "void FCMergeHistoryItemSeenFields(__strong id<FCMutableReadingHistoryItem>, __strong id<FCReadingHistoryItem>)";
    v20 = 2080;
    v21 = "FCReadingHistoryUtilities.m";
    v22 = 1024;
    v23 = 29;
    v24 = 2114;
    v25 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v4)
    {
      goto LABEL_6;
    }
  }

  else if (v4)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "rightItem"];
    *buf = 136315906;
    v19 = "void FCMergeHistoryItemSeenFields(__strong id<FCMutableReadingHistoryItem>, __strong id<FCReadingHistoryItem>)";
    v20 = 2080;
    v21 = "FCReadingHistoryUtilities.m";
    v22 = 1024;
    v23 = 30;
    v24 = 2114;
    v25 = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v5 = MEMORY[0x1E695DF00];
  v6 = [v3 firstSeenAt];
  v7 = [v4 firstSeenAt];
  v8 = [v5 fc_earlierDateAllowingNilWithDate:v6 andDate:v7];
  [v3 setFirstSeenAt:v8];

  v9 = [v4 maxVersionSeen];
  v10 = [v3 maxVersionSeen];
  if (v10 <= v9)
  {
    if (v10 == v9)
    {
      v11 = MEMORY[0x1E695DF00];
      v14 = [v3 firstSeenAtOfMaxVersionSeen];
      v12 = [v4 firstSeenAtOfMaxVersionSeen];
      v13 = [v11 fc_earlierDateAllowingNilWithDate:v14 andDate:v12];
      [v3 setFirstSeenAtOfMaxVersionSeen:v13];
    }

    else
    {
      [v3 setMaxVersionSeen:v9];
      v14 = [v4 firstSeenAtOfMaxVersionSeen];
      [v3 setFirstSeenAtOfMaxVersionSeen:v14];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

id _FCPruneHistoryForUpload(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v5;
  v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = v6[2](v6, v13);
        if ([v8 count] < 0x3E8 || (v7[2](v7, v13) & 1) != 0 || v14 && (objc_msgSend(v14, "fc_timeIntervalUntilNow"), v15 < 2419200.0))
        {
          [v8 addObject:v13];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v8;
}

uint64_t __FCPruneHistoryRecordsForUpload_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"offensive"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t FeldsparCoreInternalExtrasEnabled()
{
  if (qword_1EDB275C0 != -1)
  {
    dispatch_once(&qword_1EDB275C0, &__block_literal_global_2_2);
  }

  return _MergedGlobals_174;
}

void __FeldsparCoreInternalExtrasEnabled_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] fc_feldsparCoreInternalExtrasBundle];
  _MergedGlobals_174 = v0 != 0;
}

void sub_1B66AACB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B66AB6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FCUUIDStringToUUIDBytes(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = MEMORY[0x1E696AFB0];
    v2 = a1;
    v3 = [[v1 alloc] initWithUUIDString:v2];

    if (v3)
    {
      *buf = 0;
      *&buf[8] = 0;
      [v3 getUUIDBytes:buf];
      v4 = [MEMORY[0x1E695DEF0] dataWithBytes:buf length:16];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "UUID"];
        *buf = 136315906;
        *&buf[4] = "NSData *FCUUIDStringToUUIDBytes(NSString *__strong)";
        *&buf[12] = 2080;
        *&buf[14] = "FCUUIDUtilities.m";
        v9 = 1024;
        v10 = 18;
        v11 = 2114;
        v12 = v7;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id FCUUIDBytesToUUIDString(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = MEMORY[0x1E696AFB0];
    v2 = a1;
    v3 = [v1 alloc];
    v4 = [v2 bytes];

    v5 = [v3 initWithUUIDBytes:v4];
    v6 = [v5 UUIDString];
    v7 = [v6 lowercaseString];

    if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "result"];
      *buf = 136315906;
      v12 = "NSString *FCUUIDBytesToUUIDString(NSData *__strong)";
      v13 = 2080;
      v14 = "FCUUIDUtilities.m";
      v15 = 1024;
      v16 = 38;
      v17 = 2114;
      v18 = v10;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void sub_1B66AE8DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B66AECB0(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1B66AF038(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1B66AFA84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B66B2624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B66B3610(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 88));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_1B66BABAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_1B66C1838(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_1B66C6DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B66CA148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B66CC048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B66CC200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B66CC394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B66CC56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B66CDC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B66D0444(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

__CFString *FCStringFromQoSClass(int a1)
{
  v1 = @"UserInteractive";
  v2 = @"Utility";
  v3 = @"Default";
  v4 = @"UserInitiated";
  if (a1 != 25)
  {
    v4 = @"UserInteractive";
  }

  if (a1 != 21)
  {
    v3 = v4;
  }

  if (a1 != 17)
  {
    v2 = v3;
  }

  if (a1 == 9)
  {
    v1 = @"Background";
  }

  if (!a1)
  {
    v1 = @"Unspecified";
  }

  if (a1 <= 16)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t FCIsWidgetDebugInspectionEnabled()
{
  v0 = NewsCoreUserDefaults();
  v1 = [v0 BOOLForKey:@"widget_debug_inspection_enabled"];

  return v1;
}

uint64_t FCUpdateSharedAudioPlaybackState(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = NewsCoreUserDefaults();
  v5 = [v4 stringForKey:@"audio_playback_article_id"];

  v6 = NewsCoreUserDefaults();
  v7 = [v6 integerForKey:@"audio_playback_state"];

  v8 = [MEMORY[0x1E69E58C0] nf_object:v5 isEqualToObject:v3];
  if (v7 == a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if ((v9 & 1) == 0)
  {
    v10 = NewsCoreUserDefaults();
    [v10 setObject:v3 forKey:@"audio_playback_article_id"];

    v11 = NewsCoreUserDefaults();
    [v11 setInteger:a2 forKey:@"audio_playback_state"];
  }

  return v9 ^ 1u;
}

id FCSettingsOverrideEmbedURLTodayWidget()
{
  if (NFInternalBuild())
  {
    v0 = NewsCoreUserDefaults();
    if ([v0 BOOLForKey:@"embed_url_override_enabled"])
    {
      v1 = NewsCoreUserDefaults();
      v2 = [v1 stringForKey:@"embed_url_override_today_widget"];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  if ([v2 length])
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_alloc(MEMORY[0x1E696AF60]);
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v6 = [v5 UUIDString];
  v7 = [v4 initWithName:@"testID" value:v6];

  v8 = [v3 fc_URLByAddingQueryItem:v7];

  return v8;
}

uint64_t FCFeedBinForTopicsInForYou(void *a1)
{
  v1 = [a1 subscriptionList];
  v2 = [v1 subscribedTagIDs];
  if ([v2 count] >= 0x64)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

__CFString *FCOperationPurposeFromFeedType(unint64_t a1)
{
  if (a1 > 0x1A)
  {
    return @"todayFeed";
  }

  else
  {
    return off_1E7C431D8[a1];
  }
}

void applicationStateNotificationCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [a5 objectForKey:@"com.apple.news"];
  if (v6)
  {
    v7 = a2;
    v8 = [v7 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __applicationStateNotificationCallback_block_invoke;
    block[3] = &unk_1E7C36EA0;
    v11 = v7;
    v9 = v7;
    dispatch_async(v8, block);
  }
}

void applicationRegisteredAndUnregisteredNotificationCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [a5 objectForKey:@"bundleIDs"];
  if ([v6 containsObject:@"com.apple.news"])
  {
    v7 = a2;
    v8 = [v7 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __applicationRegisteredAndUnregisteredNotificationCallback_block_invoke;
    block[3] = &unk_1E7C36EA0;
    v11 = v7;
    v9 = v7;
    dispatch_async(v8, block);
  }
}

uint64_t FCDeviceIsA7()
{
  if (qword_1EDB27680 != -1)
  {
    dispatch_once(&qword_1EDB27680, &__block_literal_global_117);
  }

  return _MergedGlobals_182;
}

uint64_t __FCDeviceIsA7_block_invoke()
{
  result = MGGetProductType();
  if (_MergedGlobals_182)
  {
    v1 = 1;
    goto LABEL_19;
  }

  v1 = 1;
  if (result <= 2048538370)
  {
    if (result <= 344862119)
    {
      if (result == 23433786)
      {
        goto LABEL_19;
      }

      v2 = 173258742;
    }

    else
    {
      if (result == 344862120 || result == 776033019)
      {
        goto LABEL_19;
      }

      v2 = 1701146937;
    }
  }

  else if (result > 3933982783)
  {
    if (result == 3933982784 || result == 4055323051)
    {
      goto LABEL_19;
    }

    v2 = 4232256925;
  }

  else
  {
    if (result == 2048538371 || result == 3637438250)
    {
      goto LABEL_19;
    }

    v2 = 3865922942;
  }

  if (result != v2)
  {
    v1 = 0;
  }

LABEL_19:
  _MergedGlobals_182 = v1;
  return result;
}

uint64_t FCDeviceIsA8()
{
  if (qword_1EDB27688 != -1)
  {
    dispatch_once(&qword_1EDB27688, &__block_literal_global_2_3);
  }

  return byte_1EDB27679;
}

uint64_t __FCDeviceIsA8_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = MGIsDeviceOneOfType();
  byte_1EDB27679 = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

id FCDeviceUUIDForVendor()
{
  if (qword_1EDB27698 != -1)
  {
    dispatch_once(&qword_1EDB27698, &__block_literal_global_9_1);
  }

  v1 = qword_1EDB27690;

  return v1;
}

void __FCDeviceUUIDForVendor_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E696AFB0]);
  v3 = FCDeviceIdentifierForVendor();
  v1 = [v0 initWithUUIDString:v3];
  v2 = qword_1EDB27690;
  qword_1EDB27690 = v1;
}

id FCDeviceIdentifierForVendor()
{
  if (qword_1EDB276A8 != -1)
  {
    dispatch_once(&qword_1EDB276A8, &__block_literal_global_11_2);
  }

  v1 = qword_1EDB276A0;

  return v1;
}

void __FCDeviceIdentifierForVendor_block_invoke()
{
  v0 = NewsCoreSensitiveUserDefaults();
  v1 = [v0 objectForKey:@"instance_identifier"];
  v2 = qword_1EDB276A0;
  qword_1EDB276A0 = v1;

  if (!qword_1EDB276A0)
  {
    v3 = [MEMORY[0x1E6963608] defaultWorkspace];
    v4 = [v3 deviceIdentifierForVendor];
    v5 = [v4 UUIDString];
    v6 = [v5 copy];
    v7 = qword_1EDB276A0;
    qword_1EDB276A0 = v6;

    if (!qword_1EDB276A0)
    {
      v8 = FCDefaultLog;
      if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "falling back to custom UUID for device identifier", v13, 2u);
      }

      v9 = [MEMORY[0x1E696AFB0] UUID];
      v10 = [v9 UUIDString];
      v11 = qword_1EDB276A0;
      qword_1EDB276A0 = v10;
    }

    v12 = NewsCoreSensitiveUserDefaults();
    [v12 setObject:qword_1EDB276A0 forKey:@"instance_identifier"];
  }
}

void sub_1B66DBC4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1B66DC540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FCLookupRecordByName(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a2;
  v5 = a1;
  v6 = [v3 arrayWithObjects:&v11 count:1];

  v7 = FCLookupRecordByNames(v5, v6);

  v8 = [v7 fc_onlyObject];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id FCFeedItemRecordsForArticle(void *a1, void *a2)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AE18];
  v4 = a2;
  v5 = a1;
  v6 = [v3 predicateWithFormat:@"%K == %@", @"recordType", @"FeedItem"];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ == %K", v4, @"articleID"];

  v8 = MEMORY[0x1E696AB28];
  v14[0] = v7;
  v14[1] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v10 = [v8 andPredicateWithSubpredicates:v9];
  v11 = [v5 filteredArrayUsingPredicate:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id FCSortedFeedItemRecordsForFeedID(void *a1, void *a2)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AE18];
  v4 = a2;
  v5 = a1;
  v6 = [v3 predicateWithFormat:@"%K == %@", @"recordType", @"FeedItem"];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ == %K", v4, @"tagID"];

  v8 = MEMORY[0x1E696AB28];
  v19[0] = v7;
  v19[1] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v10 = [v8 andPredicateWithSubpredicates:v9];
  v11 = [v5 filteredArrayUsingPredicate:v10];

  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"order" ascending:0];
  v13 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"subOrder" ascending:0];
  v18[0] = v12;
  v18[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v15 = [v11 sortedArrayUsingDescriptors:v14];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

id FCLookupFeedItemRecordByFeedAndArticle(void *a1, void *a2, void *a3)
{
  v19[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AE18];
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = [v5 predicateWithFormat:@"%K == %@", @"recordType", @"FeedItem"];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ == %K", v7, @"tagID"];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ == %K", v6, @"articleID"];

  v12 = MEMORY[0x1E696AB28];
  v19[0] = v10;
  v19[1] = v11;
  v19[2] = v9;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  v14 = [v12 andPredicateWithSubpredicates:v13];
  v15 = [v8 filteredArrayUsingPredicate:v14];

  v16 = [v15 fc_onlyObject];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

id FCLookupRecordByNames(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E695DFD8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __FCLookupRecordByNames_block_invoke;
  v11[3] = &unk_1E7C371F8;
  v12 = v3;
  v5 = v3;
  v6 = a1;
  v7 = [v4 fc_set:v11];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ CONTAINS %K", v7, @"recordID"];
  v9 = [v6 filteredArrayUsingPredicate:v8];

  return v9;
}

void __FCLookupRecordByNames_block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = objc_alloc(MEMORY[0x1E695BA70]);
        v11 = [v10 initWithRecordName:{v9, v13}];
        [v3 addObject:v11];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1B66EA114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B66EDD20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B66EE39C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B66EEA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 216), 8);
  _Block_object_dispose((v38 - 184), 8);
  _Block_object_dispose((v38 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1B66F04A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v12 = objc_begin_catch(exception_object);
    (*(v11 + 16))(v11);
    objc_claimAutoreleasedReturnValue();

    objc_end_catch();
    JUMPOUT(0x1B66F045CLL);
  }

  _Unwind_Resume(exception_object);
}

void enumerateOrderedCollectionPairwise(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 count] >= 2)
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3032000000;
    v8[3] = __Block_byref_object_copy__58;
    v8[4] = __Block_byref_object_dispose__58;
    v9 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __enumerateOrderedCollectionPairwise_block_invoke;
    v5[3] = &unk_1E7C43990;
    v6 = v4;
    v7 = v8;
    [v3 enumerateObjectsUsingBlock:v5];

    _Block_object_dispose(v8, 8);
  }
}

void sub_1B66F3D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __enumerateOrderedCollectionPairwise_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    (*(*(a1 + 32) + 16))();
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
}

uint64_t isOrderedCollectionSorted(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v14) = 1;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __isOrderedCollectionSorted_block_invoke;
    v10[3] = &unk_1E7C439B8;
    v11 = v4;
    v12 = buf;
    enumerateOrderedCollectionPairwise(v3, v10);

    v6 = *(*&buf[8] + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "cmptr"];
      *buf = 136315906;
      *&buf[4] = "BOOL isOrderedCollectionSorted(__strong id<FCOrderedCollection>, __strong NSComparator)";
      *&buf[12] = 2080;
      *&buf[14] = "FCOrderedCollection.m";
      *&buf[22] = 1024;
      v14 = 34;
      v15 = 2114;
      v16 = v9;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v6 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v14) = 0;
  }

  _Block_object_dispose(buf, 8);

  v7 = *MEMORY[0x1E69E9840];
  return v6 & 1;
}

void sub_1B66F3FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __isOrderedCollectionSorted_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = (*(*(a1 + 32) + 16))();
  if (result == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a5 = 1;
  }

  return result;
}

id mergeSortedOrderedCollections(void *a1, void *a2, void *a3)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v5)
  {
    if (v7)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v10 = [MEMORY[0x1E696AD50] indexSet];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v23[0] = 0;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __mergeSortedOrderedCollections_block_invoke;
      v16[3] = &unk_1E7C439E0;
      v17 = v6;
      v20 = buf;
      v19 = v8;
      v21 = isKindOfClass & 1;
      v11 = v10;
      v18 = v11;
      [v5 enumerateObjectsUsingBlock:v16];

      _Block_object_dispose(buf, 8);
      goto LABEL_10;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "engulfee"];
      *buf = 136315906;
      *&buf[4] = "NSIndexSet *mergeSortedOrderedCollections(__strong id<FCOrderedCollection>, __strong id<FCOrderedMutableCollection>, __strong NSComparator)";
      *&buf[12] = 2080;
      *&buf[14] = "FCOrderedCollection.m";
      *&buf[22] = 1024;
      LODWORD(v23[0]) = 59;
      WORD2(v23[0]) = 2114;
      *(v23 + 6) = v14;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    if (v8)
    {
      goto LABEL_9;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "cmptr"];
    *buf = 136315906;
    *&buf[4] = "NSIndexSet *mergeSortedOrderedCollections(__strong id<FCOrderedCollection>, __strong id<FCOrderedMutableCollection>, __strong NSComparator)";
    *&buf[12] = 2080;
    *&buf[14] = "FCOrderedCollection.m";
    *&buf[22] = 1024;
    LODWORD(v23[0]) = 60;
    WORD2(v23[0]) = 2114;
    *(v23 + 6) = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_9:
  v11 = 0;
LABEL_10:

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void sub_1B66F4358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __mergeSortedOrderedCollections_block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) count];
  v5 = *(*(*(a1 + 56) + 8) + 24);
  v6 = [*(a1 + 32) indexOfObject:v3 inSortedRange:v5 options:v4 - v5 usingComparator:{1024, *(a1 + 48)}];
  v7 = v6;
  v8 = *(a1 + 64) != 1 || v6 >= v4;
  if (v8 || (v9 = *(a1 + 48), [*(a1 + 32) objectAtIndexedSubscript:v6], v10 = objc_claimAutoreleasedReturnValue(), v11 = (*(v9 + 16))(v9, v10, v3), v10, v11))
  {
    v12 = [*(a1 + 32) count];
    [*(a1 + 32) insertObject:v3 atIndex:v7];
    if ([*(a1 + 32) count] == v12 + 1)
    {
      [*(a1 + 40) addIndex:v7];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed to insert %@", v3];
      *buf = 136315906;
      v16 = "NSIndexSet *mergeSortedOrderedCollections(__strong id<FCOrderedCollection>, __strong id<FCOrderedMutableCollection>, __strong NSComparator)_block_invoke";
      v17 = 2080;
      v18 = "FCOrderedCollection.m";
      v19 = 1024;
      v20 = 93;
      v21 = 2114;
      v22 = v14;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }

  *(*(*(a1 + 56) + 8) + 24) = v7;

  v13 = *MEMORY[0x1E69E9840];
}

id diffSortedOrderedCollections(void *a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "rightCollection"];
    *buf = 136315906;
    v27 = "NSDictionary *diffSortedOrderedCollections(__strong id<FCOrderedCollection>, __strong id<FCOrderedCollection>, __strong NSComparator)";
    v28 = 2080;
    v29 = "FCOrderedCollection.m";
    v30 = 1024;
    v31 = 123;
    v32 = 2114;
    v33 = v21;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v5)
    {
      goto LABEL_6;
    }
  }

  else if (v5)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "leftCollection"];
    *buf = 136315906;
    v27 = "NSDictionary *diffSortedOrderedCollections(__strong id<FCOrderedCollection>, __strong id<FCOrderedCollection>, __strong NSComparator)";
    v28 = 2080;
    v29 = "FCOrderedCollection.m";
    v30 = 1024;
    v31 = 124;
    v32 = 2114;
    v33 = v22;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (v7)
  {
    v8 = 0;
    if (v5 && v6)
    {
      v9 = objc_opt_new();
      v10 = objc_opt_new();
      if ([v5 count])
      {
        v11 = 0;
        v12 = 0;
        while (1)
        {
          if (v12 >= [v6 count])
          {
            goto LABEL_25;
          }

          v13 = [v5 objectAtIndexedSubscript:v11];
          v14 = [v6 objectAtIndexedSubscript:v12];
          v15 = v7[2](v7, v13, v14);
          if (v15 == 1)
          {
            [v9 addIndex:v12];
          }

          else
          {
            if (v15)
            {
              if (v15 == -1)
              {
                [v10 addIndex:v11++];
              }

              goto LABEL_19;
            }

            ++v11;
          }

          ++v12;
LABEL_19:

          if (v11 >= [v5 count])
          {
            goto LABEL_25;
          }
        }
      }

      v12 = 0;
      v11 = 0;
LABEL_25:
      if (v11 >= [v5 count])
      {
        if (v12 >= [v6 count])
        {
LABEL_30:
          v24[0] = @"insertedIndices";
          v24[1] = @"deletedIndices";
          v25[0] = v9;
          v25[1] = v10;
          v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];

          goto LABEL_31;
        }

        v18 = v11 - [v10 count];
        v11 = v18 + [v9 count];
        v16 = v6;
        v17 = v9;
      }

      else
      {
        v16 = v5;
        v12 = v11;
        v17 = v10;
      }

      [v17 addIndexesInRange:{v11, objc_msgSend(v16, "count") - v12}];
      goto LABEL_30;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "cmptr"];
      *buf = 136315906;
      v27 = "NSDictionary *diffSortedOrderedCollections(__strong id<FCOrderedCollection>, __strong id<FCOrderedCollection>, __strong NSComparator)";
      v28 = 2080;
      v29 = "FCOrderedCollection.m";
      v30 = 1024;
      v31 = 125;
      v32 = 2114;
      v33 = v23;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v8 = 0;
  }

LABEL_31:

  v19 = *MEMORY[0x1E69E9840];

  return v8;
}

id findObjectWithFeatureInSortedOrderedCollection(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v17 = a2;
  v8 = a3;
  v9 = a4;
  if ([v7 count])
  {
    v10 = [v7 count] - 1;
    if (v10 >= 0)
    {
      v11 = 0;
      do
      {
        v12 = ((v10 + v11) / 2);
        v13 = [v7 objectAtIndexedSubscript:v12];
        v14 = v8[2](v8, v13);
        v15 = v9[2](v9, v14, v17);
        switch(v15)
        {
          case -1:
            v11 = v12 + 1;
            break;
          case 1:
            v10 = v12 - 1;
            break;
          case 0:

            goto LABEL_12;
        }
      }

      while (v11 <= v10);
    }
  }

  v13 = 0;
LABEL_12:

  return v13;
}

void sub_1B66F685C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B66F8E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1B66F9124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1B66FA1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *FCCKPrivateDatabaseVersionString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Base";
  }

  else
  {
    return off_1E7C43DD0[a1 - 1];
  }
}

uint64_t FCCKPrivateDatabaseVersionMin(uint64_t result, uint64_t a2)
{
  if (result >= a2)
  {
    return a2;
  }

  return result;
}

uint64_t FCCKPrivateDatabaseVersionMin3(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 >= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = a2;
  }

  if (v3 < result)
  {
    return v3;
  }

  return result;
}

double FCCKPrivateDatabaseVersionDebutOS@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      *a2 = xmmword_1B681B440;
      *(a2 + 16) = 11;
      result = 0.0;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 0u;
      *(a2 + 56) = 0;
    }

    else if (a1 == 3)
    {
      *a2 = xmmword_1B681B400;
      *(a2 + 16) = xmmword_1B681B410;
      *&result = 11;
      *(a2 + 32) = xmmword_1B681B420;
      *(a2 + 48) = xmmword_1B681B430;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      *&result = 11;
      *a2 = xmmword_1B681B450;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
    }
  }

  else
  {
    result = 0.0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

unint64_t FCCKPrivateDatabaseVersionSupportedByOS(uint64_t *a1)
{
  result = 3;
  v3 = *a1;
  do
  {
    if (result == 1)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v5 = 1;
      v7 = 11;
      v4 = 3;
      v6 = 1;
      if (v3)
      {
        goto LABEL_9;
      }
    }

    else if (result == 3)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 18;
      v8 = 15;
      v9 = 11;
      v10 = 2;
      if (v3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v4 = 0;
      v5 = 0;
      v9 = 0;
      v10 = 0;
      v6 = 1;
      v7 = 14;
      v8 = 11;
      if (v3)
      {
LABEL_9:
        if (v3 < v7)
        {
          continue;
        }

        if (v3 <= v7 && a1[1] < v4)
        {
          continue;
        }
      }
    }

    if ((v5 & 1) != 0 || (v12 = a1[2]) == 0 || v12 >= v8 && (v12 > v8 || (a1[3] & 0x8000000000000000) == 0))
    {
      if (v6)
      {
        return result;
      }

      v13 = a1[4];
      if (!v13 || v13 >= v9 && (v13 > v9 || (a1[5] & 0x8000000000000000) == 0))
      {
        v14 = a1[6];
        if (!v14 || v14 >= v10 && (v14 > v10 || (a1[7] & 0x8000000000000000) == 0))
        {
          return result;
        }
      }
    }
  }

  while (result-- >= 2);
  return 0;
}

void sub_1B67015E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NTPBKeyValuePair_ValueType,objc_class  {objcproto21FCKeyValueStoreCoding}* {__strong}>,void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

id FCErrorForCKError(void *a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 code] == 7 || (v2 = v1, objc_msgSend(v1, "code") == 6))
  {
    v3 = [v1 userInfo];
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695B748]];

    if (v4)
    {
      v10 = @"FCErrorRetryAfter";
      v11[0] = v4;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    }

    else
    {
      v5 = 0;
    }

    v6 = MEMORY[0x1E696ABC0];
    v7 = [v1 localizedDescription];
    v2 = [v6 fc_errorWithCode:2 description:v7 additionalUserInfo:v5];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v2;
}

uint64_t FCShouldErrorBeExcludedFromSimulatedCrashes(void *a1)
{
  v1 = a1;
  if ([v1 fc_isOfflineError])
  {
    goto LABEL_2;
  }

  v3 = [v1 domain];
  if ([v3 isEqualToString:*MEMORY[0x1E696A978]])
  {
    v4 = [v1 code];

    if (v4 == -1202)
    {
LABEL_2:
      v2 = 1;
      goto LABEL_11;
    }
  }

  else
  {
  }

  v5 = [v1 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  if (v6)
  {
    v2 = FCShouldErrorBeExcludedFromSimulatedCrashes(v6);
  }

  else
  {
    v2 = 0;
  }

LABEL_11:
  return v2;
}

void sub_1B67095F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B670BF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Block_object_dispose((v35 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B6710468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, char a23)
{
  objc_destroyWeak((v23 + 48));
  _Block_object_dispose(&a23, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL RCRequestFeedTypeFromFCRequestFeedType(_BOOL8 result)
{
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

void sub_1B6715B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *FCStringFromNetworkEventType(int a1)
{
  v12 = *MEMORY[0x1E69E9840];
  switch(a1)
  {
    case 0:
      result = @"Unknown";
      break;
    case 1:
      result = @"CloudKit (Private) - Fetch Records";
      break;
    case 2:
      result = @"CloudKit (Private) - Modify Records";
      break;
    case 3:
      result = @"CloudKit (Private) - Fetch Zones";
      break;
    case 4:
      result = @"CloudKit (Private) - Modify Zones";
      break;
    case 5:
      result = @"CloudKit (Private) - Fetch Subscriptions";
      break;
    case 6:
      result = @"CloudKit (Private) - Modify Subscriptions";
      break;
    case 7:
      result = @"CloudKit (Private) - Fetch Zone Changes";
      break;
    case 8:
      result = @"CloudKit (Private) - Fetch Database Changes";
      break;
    case 9:
      result = @"CloudKit (Public) - Fetch";
      break;
    case 10:
      result = @"CloudKit (Public) - OrderFeed";
      break;
    case 11:
      result = @"CloudKit (Public) - MultiFeed";
      break;
    case 12:
      result = @"CloudKit (Public) - MultiFetch";
      break;
    case 13:
      result = @"CloudKit (Public) - TagSearch";
      break;
    case 14:
      result = @"CloudKit (Public) - Today Config";
      break;
    case 15:
      result = @"CDN";
      break;
    case 16:
      result = @"CDN - App Config";
      break;
    case 17:
      result = @"CVWS";
      break;
    case 18:
      result = @"News Edge - App Config";
      break;
    case 19:
      result = @"News Edge - Search";
      break;
    case 20:
      result = @"News Edge - Today Config";
      break;
    case 21:
      result = @"News Edge - Puzzle Archive";
      break;
    case 22:
      result = @"News Edge - Widget Config";
      break;
    case 23:
      result = @"News Edge - Widget Config & Today Config Lite";
      break;
    case 24:
      result = @"Auth Token Service";
      break;
    case 25:
      result = @"Sports Data Service";
      break;
    case 26:
      result = @"Smarter Fetch";
      break;
    case 27:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Case unsupported"];
        v4 = 136315906;
        v5 = "NSString * _Nonnull FCStringFromNetworkEventType(FCNetworkEventType)";
        v6 = 2080;
        v7 = "FCNetworkEvent.m";
        v8 = 1024;
        v9 = 510;
        v10 = 2114;
        v11 = v3;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v4, 0x26u);
      }

      goto LABEL_5;
    default:
LABEL_5:
      result = 0;
      break;
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *NSStringFromFCScoringType(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Legacy";
  }

  else
  {
    return off_1E7C445E8[a1];
  }
}

void sub_1B6718790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67198C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FCPaidAccessCheckerHasAccessToItemInline(void *a1, int a2, int a3, void *a4, char a5)
{
  v9 = a1;
  v10 = a4;
  v11 = [v9 bundleSubscriptionProvider];
  v12 = [v9 purchaseProvider];
  v13 = v11;
  v14 = v12;
  v15 = v10;
  if ((a2 & 1) != 0 || a3)
  {
    if (!v14 || !a2 || ([v14 purchasedTagIDs], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "containsObject:", v15), v17, (v18 & 1) == 0))
    {
      if (!v13 || !a3)
      {
        goto LABEL_12;
      }

      v19 = v13;
      v20 = v15;
      if (!v20)
      {
        goto LABEL_11;
      }

      v21 = [v19 bundleSubscription];
      objc_getAssociatedObject(v21, (v21 + 1));
      v22 = v31 = v19;
      v23 = [v22 unsignedIntegerValue];
      v24 = v23;
      v25 = objc_getAssociatedObject(v21, ~v23);
      v26 = ([v25 unsignedIntegerValue] - a5) ^ (v24 + a5);

      v19 = v31;
      if ((v26 & 1) == 0)
      {
LABEL_11:

LABEL_12:
        v16 = 0;
        goto LABEL_13;
      }

      v28 = [v31 bundleSubscription];
      v29 = [v28 bundleChannelIDs];
      v30 = [v29 containsObject:v20];

      if ((v30 & 1) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  v16 = 1;
LABEL_13:

  return v16;
}

void sub_1B671B194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1B671B39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1B6720ED8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id FCTagFilterOptionsToNSString(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if ((a1 & 2) != 0)
  {
    [v2 addObject:@"Deprecated"];
    if ((a1 & 4) == 0)
    {
LABEL_3:
      if ((a1 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"BlockedStorefronts"];
  if ((a1 & 8) == 0)
  {
LABEL_4:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v3 addObject:@"ExplicitContent"];
  if ((a1 & 0x10) == 0)
  {
LABEL_5:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  [v3 addObject:@"MinimumNewsVersion"];
  if ((a1 & 0x20) != 0)
  {
LABEL_6:
    [v3 addObject:@"MutedChannels"];
  }

LABEL_7:
  v4 = MEMORY[0x1E696AEC0];
  v5 = [v3 componentsJoinedByString:{@", "}];
  v6 = [v4 stringWithFormat:@"[%@]", v5];

  return v6;
}

void sub_1B6729998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B672B538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B672BB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void FCAppConfigurationFetch(void *a1, void *a2)
{
  v7 = a1;
  v3 = a2;
  v4 = [v7 fetchedAppConfiguration];
  if (v4)
  {
    if (v3)
    {
      v3[2](v3, v4, 0);
    }
  }

  else
  {
    v5 = FCCurrentQoSOrUtilityIfMain();
    v6 = FCDispatchQueueForQualityOfService(v5);
    [v7 fetchAppConfigurationIfNeededWithCompletionQueue:v6 completion:v3];
  }
}

void sub_1B67302F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6730440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FCBucketForFeldsparID(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v1, "hash")}];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

unint64_t FCModdedBucketID(void *a1, unint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return [a1 unsignedIntegerValue] % a2;
    }
  }

  return result;
}

uint64_t FCEndpointEnvironmentForNTPBEndpointEnvironment(int a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_1B681B4C0[a1 - 1];
  }
}

id FCAppConfigurationURLValue(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 objectForKeyedSubscript:a2];
    if (!v2 || ([MEMORY[0x1E695DFB0] null], v3 = objc_claimAutoreleasedReturnValue(), v3, v2 == v3))
    {
      v7 = 0;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = v2;
      }

      else
      {
        v4 = 0;
      }

      v5 = v4;
      v6 = v5;
      if (v5 && [v5 length])
      {
        v7 = [MEMORY[0x1E695DFF8] URLWithString:v2];
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

double fc_ensureGreaterThanZero(double result, double a2)
{
  if (result <= 0.0)
  {
    return a2;
  }

  return result;
}

double fc_ensureGreaterThanOrEqualToZero(double result, double a2)
{
  if (result < 0.0)
  {
    return a2;
  }

  return result;
}

double fc_ensureGreaterThanOrEqualToZeroLessThanOne(double result, double a2)
{
  if (result >= 1.0 || result < 0.0)
  {
    return a2;
  }

  return result;
}

double fc_ensureNormalized(double result, double a2)
{
  if (result > 1.0 || result < 0.0)
  {
    return a2;
  }

  return result;
}

void sub_1B673847C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FCArticleListTypeFromPBArticleListType(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t PBArticleListTypeFromString(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = [v1 caseInsensitiveCompare:@"editorial"] == 0;
    v3 = [v1 caseInsensitiveCompare:@"people-also-coread"];

    if (v3)
    {
      return v2;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t cloudKitValueFromEntryOrigin(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

uint64_t entryOriginFromCloudKitValue(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

void sub_1B6740B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6748A70(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1B674F550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67520A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v9 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v8 + 40));
  objc_destroyWeak((v10 - 72));
  _Unwind_Resume(a1);
}

void sub_1B67524BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B675323C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6754EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FCBlockConjunction(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FCBlockConjunction_block_invoke;
  v9[3] = &unk_1E7C39090;
  v10 = v3;
  v11 = v4;
  v5 = v4;
  v6 = v3;
  v7 = _Block_copy(v9);

  return v7;
}

uint64_t __FCBlockConjunction_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void FCWaitUntilBlockIsInvoked(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block"];
    *buf = 136315906;
    v10 = "void FCWaitUntilBlockIsInvoked(FCAsyncOperationBlock  _Nonnull __strong)";
    v11 = 2080;
    v12 = "FCBlockUtilities.m";
    v13 = 1024;
    v14 = 47;
    v15 = 2114;
    v16 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v2 = dispatch_semaphore_create(0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __FCWaitUntilBlockIsInvoked_block_invoke;
  v7[3] = &unk_1E7C36EA0;
  v8 = v2;
  v3 = v1[2];
  v4 = v2;
  v3(v1, v7);
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t FCQoSClassFromQoS(uint64_t a1)
{
  if (a1 == 33)
  {
    v1 = 33;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 25)
  {
    v2 = 25;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 17)
  {
    v3 = 17;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 9)
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  if (a1 == -1)
  {
    v5 = 21;
  }

  else
  {
    v5 = v4;
  }

  if (a1 <= 16)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t FCQoSFromQoSClass(int a1)
{
  HIDWORD(v1) = a1 - 9;
  LODWORD(v1) = a1 - 9;
  v2 = 8 * (v1 >> 3) + 9;
  if ((v1 >> 3) >= 4)
  {
    return -1;
  }

  else
  {
    return v2;
  }
}

void FCDispatchAfterWithQualityOfService(dispatch_time_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = FCBlockWithQualityOfService(a3, a4);
  dispatch_after(a1, v7, v8);
}

void FCDispatchGroupNotifyWithQualityOfService(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a1;
  v9 = FCBlockWithQualityOfService(a3, a4);
  dispatch_group_notify(v8, v7, v9);
}

void FCDispatchAsyncWithQoSPropagation(void *a1, void *a2)
{
  v3 = a1;
  v4 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, a2);
  dispatch_async(v3, v4);
}

void FCDispatchGroupNotifyWithTimeout(void *a1, void *a2, dispatch_time_t a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "group"];
    *buf = 136315906;
    v24 = "void FCDispatchGroupNotifyWithTimeout(dispatch_group_t  _Nonnull __strong, dispatch_queue_t  _Nonnull __strong, dispatch_time_t, FCTimeoutBlock  _Nonnull __strong)";
    v25 = 2080;
    v26 = "FCBlockUtilities.m";
    v27 = 1024;
    v28 = 175;
    v29 = 2114;
    v30 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v8)
    {
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "queue"];
    *buf = 136315906;
    v24 = "void FCDispatchGroupNotifyWithTimeout(dispatch_group_t  _Nonnull __strong, dispatch_queue_t  _Nonnull __strong, dispatch_time_t, FCTimeoutBlock  _Nonnull __strong)";
    v25 = 2080;
    v26 = "FCBlockUtilities.m";
    v27 = 1024;
    v28 = 176;
    v29 = 2114;
    v30 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block"];
    *buf = 136315906;
    v24 = "void FCDispatchGroupNotifyWithTimeout(dispatch_group_t  _Nonnull __strong, dispatch_queue_t  _Nonnull __strong, dispatch_time_t, FCTimeoutBlock  _Nonnull __strong)";
    v25 = 2080;
    v26 = "FCBlockUtilities.m";
    v27 = 1024;
    v28 = 177;
    v29 = 2114;
    v30 = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __FCDispatchGroupNotifyWithTimeout_block_invoke;
  v21[3] = &unk_1E7C379C8;
  v10 = v9;
  v22 = v10;
  v11 = FCHandleOperationTimeout(a3, v8, v21);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FCDispatchGroupNotifyWithTimeout_block_invoke_2;
  block[3] = &unk_1E7C39090;
  v19 = v11;
  v20 = v10;
  v12 = v10;
  v13 = v11;
  dispatch_group_notify(v7, v8, block);

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __FCDispatchGroupNotifyWithTimeout_block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

id FCHandleOperationCancellation(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!a1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "cancellationTrigger"];
    *buf = 136315906;
    *&buf[4] = "FCOperationCancelledTest  _Nonnull FCHandleOperationCancellation(__autoreleasing dispatch_block_t * _Nonnull, __strong dispatch_block_t _Nonnull)";
    *&buf[12] = 2080;
    *&buf[14] = "FCBlockUtilities.m";
    *&buf[22] = 1024;
    LODWORD(v26) = 195;
    WORD2(v26) = 2114;
    *(&v26 + 6) = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "cancellationHandler"];
    *buf = 136315906;
    *&buf[4] = "FCOperationCancelledTest  _Nonnull FCHandleOperationCancellation(__autoreleasing dispatch_block_t * _Nonnull, __strong dispatch_block_t _Nonnull)";
    *&buf[12] = 2080;
    *&buf[14] = "FCBlockUtilities.m";
    *&buf[22] = 1024;
    LODWORD(v26) = 196;
    WORD2(v26) = 2114;
    *(&v26 + 6) = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&v26 = __Block_byref_object_copy__77;
  *(&v26 + 1) = __Block_byref_object_dispose__77;
  v27 = _Block_copy(v3);
  v4 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __FCHandleOperationCancellation_block_invoke;
  aBlock[3] = &unk_1E7C45A40;
  v21 = v4;
  v22 = v23;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FCHandleOperationCancellation_block_invoke_3;
  block[3] = &unk_1E7C37D28;
  v7 = v6;
  v18 = v7;
  v19 = buf;
  *a1 = dispatch_block_create(0, block);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __FCHandleOperationCancellation_block_invoke_4;
  v14[3] = &unk_1E7C45A68;
  v15 = v7;
  v16 = buf;
  v8 = v7;
  v9 = _Block_copy(v14);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v23, 8);

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

void sub_1B67563A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose((v29 - 160), 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __FCHandleOperationCancellation_block_invoke(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __FCHandleOperationCancellation_block_invoke_2;
  v4[3] = &unk_1E7C45A18;
  v1 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  v4[5] = &v5;
  [v1 performWithLockSync:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1B675647C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __FCHandleOperationCancellation_block_invoke_2(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __FCHandleOperationCancellation_block_invoke_3(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    v3 = *(*(*(*(a1 + 40) + 8) + 40) + 16);

    return v3();
  }

  return result;
}

uint64_t __FCHandleOperationCancellation_block_invoke_4(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  return v2 ^ 1u;
}

void FCRepeat(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    for (; a1; --a1)
    {
      v3[2](v3);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block"];
    *buf = 136315906;
    v7 = "void FCRepeat(NSUInteger, __strong dispatch_block_t _Nonnull)";
    v8 = 2080;
    v9 = "FCBlockUtilities.m";
    v10 = 1024;
    v11 = 281;
    v12 = 2114;
    v13 = v5;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

id FCTestBlockForClass(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __FCTestBlockForClass_block_invoke;
  aBlock[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  aBlock[4] = a1;
  v1 = _Block_copy(aBlock);

  return v1;
}

id FCTestBlockForProtocol(void *a1)
{
  v1 = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __FCTestBlockForProtocol_block_invoke;
  aBlock[3] = &unk_1E7C3F858;
  v6 = v1;
  v2 = v1;
  v3 = _Block_copy(aBlock);

  return v3;
}

id FCRecursiveBlock(void *a1)
{
  v1 = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __FCRecursiveBlock_block_invoke;
  aBlock[3] = &unk_1E7C379C8;
  v6 = v1;
  v2 = v1;
  v3 = _Block_copy(aBlock);

  return v3;
}

void __FCRecursiveBlock_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = FCRecursiveBlock(v1);
  (*(v1 + 16))(v1, v2);
}

void sub_1B6757A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v10 = objc_begin_catch(exception_object);
    if ([v10 errorCode] == 1006 || objc_msgSend(v10, "errorCode") == 1009)
    {
      v11 = MEMORY[0x1E695B978];
      v12 = [v10 reason];
      v13 = [v11 errorWithCode:1009 format:@"Invalid predicate: %@"];
    }

    else
    {
      v13 = [MEMORY[0x1E695B978] errorWithCode:1000 format:@"Unknown error %@"];
      v12 = 0;
    }

    if (v9)
    {
      v14 = v13;
      *v9 = v13;
    }

    objc_end_catch();
    JUMPOUT(0x1B6757854);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B6758014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *FCSpecificCast(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if ([a2 isMemberOfClass:a1])
  {
    return a2;
  }

  return 0;
}

void *FCProtocolCast(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if ([a2 conformsToProtocol:a1])
  {
    return a2;
  }

  return 0;
}

void *FCClassAndProtocolCast(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  if (a1)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    v13 = &a9;
    if (a3)
    {
      while (1)
      {
        v11 = v13++;
        if (([v9 conformsToProtocol:*v11] & 1) == 0)
        {
          break;
        }

        if (!--a3)
        {
          return v9;
        }
      }

      return 0;
    }
  }

  return v9;
}

CFTypeRef FCCFTypeCast(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  if (CFGetTypeID(cf) == a1)
  {
    return cf;
  }

  return 0;
}

uint64_t FCCheckedStaticCast(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 && (objc_opt_isKindOfClass() & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315906;
    v6 = "id FCCheckedStaticCast(Class, id<NSObject>)";
    v7 = 2080;
    v8 = "FCCast.m";
    v9 = 1024;
    v10 = 109;
    v11 = 2114;
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected object type in checked static cast.  This is a serious problem and could lead to a crash, or worse."];
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v5, 0x26u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return a2;
}

void *FCCheckedProtocolCast(uint64_t a1, void *a2)
{
  v2 = a2;
  v13 = *MEMORY[0x1E69E9840];
  if (a2 && ([a2 conformsToProtocol:a1] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = 136315906;
      v6 = "id FCCheckedProtocolCast(Protocol *, id<NSObject>)";
      v7 = 2080;
      v8 = "FCCast.m";
      v9 = 1024;
      v10 = 120;
      v11 = 2114;
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected object type in checked protocol cast"];
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v5, 0x26u);
    }

    v2 = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

void *FCCheckedStaticProtocolCast(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 && ([a2 conformsToProtocol:a1] & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315906;
    v6 = "id FCCheckedStaticProtocolCast(Protocol *, id<NSObject>)";
    v7 = 2080;
    v8 = "FCCast.m";
    v9 = 1024;
    v10 = 131;
    v11 = 2114;
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected object type in checked protocol cast. This is a serious problem and could lead to a crash, or worse."];
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v5, 0x26u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return a2;
}

__CFString *NSStringFromFCPersonalizationAction(uint64_t a1)
{
  if ((a1 - 1) > 0x21)
  {
    return @"None";
  }

  else
  {
    return off_1E7C45B48[a1 - 1];
  }
}

uint64_t FCPersonalizationActionFromTodayPersonalizationAction(int a1)
{
  if ((a1 - 2) > 4)
  {
    return 22;
  }

  else
  {
    return qword_1B681B688[a1 - 2];
  }
}

id FCCFArrayShortDescription(const __CFArray *a1)
{
  v1 = [FCDescription descriptionWithCFType:a1 format:@" count=%ld", CFArrayGetCount(a1)];;
  v2 = [v1 descriptionString];

  return v2;
}

id FCCFArrayDescription(const __CFArray *a1)
{
  v2 = [FCDescription descriptionWithCFType:a1 format:@" count=%ld", CFArrayGetCount(a1)];;
  if (CFArrayGetCount(a1) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%d]", v3];
      [v2 addField:v4 format:{@"%@", CFArrayGetValueAtIndex(a1, v3)}];

      ++v3;
    }

    while (CFArrayGetCount(a1) > v3);
  }

  [v2 setFieldOptionCommaSeparated];
  v5 = [v2 descriptionString];

  return v5;
}

id FCCFDictionaryDescription(const __CFDictionary *a1)
{
  v2 = [FCDescription descriptionWithCFType:a1 format:&stru_1F2DC7DC0];
  CFDictionaryApplyFunction(a1, CFDictionaryDescriptionApplierFunction, v2);
  v3 = [v2 descriptionString];

  return v3;
}

__CFString *FCObjectReferenceDescription(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    ClassName = object_getClassName(v1);
    v4 = strcmp(ClassName, "NSCFArray");
    v5 = MEMORY[0x1E696AEC0];
    v6 = object_getClassName(v2);
    if (v4)
    {
      [v5 stringWithFormat:@"(%s*)%p", v6, v2, v9];
    }

    else
    {
      [v5 stringWithFormat:@"(%s*)%p; count=%ld", v6, v2, CFArrayGetCount(v2)];
    }
    v7 = ;
  }

  else
  {
    v7 = @"<nil>";
  }

  return v7;
}

id FCStringArrayFromBitFields(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E695DF70] array];
  if ([v3 count])
  {
    v5 = 0;
    do
    {
      v6 = [v3 objectAtIndex:v5];
      if ([v6 count])
      {
        if (((a2 >> v5) & 1) >= [v6 count])
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"<Bad Value: %lu>", (a2 >> v5) & 1];
        }

        else
        {
          [v6 objectAtIndex:(a2 >> v5) & 1];
        }
        v7 = ;
        if ([v7 length])
        {
          [v4 addObject:v7];
        }
      }

      ++v5;
    }

    while (v5 < [v3 count]);
  }

  return v4;
}

id FCAVWorkQueue()
{
  if (qword_1EDB27910 != -1)
  {
    dispatch_once(&qword_1EDB27910, &__block_literal_global_160);
  }

  v1 = _MergedGlobals_203;

  return v1;
}

void __FCAVWorkQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("NewsCore.AV.work", v2);
  v1 = _MergedGlobals_203;
  _MergedGlobals_203 = v0;
}

id FCAVWorkOperationQueue()
{
  if (qword_1EDB27920 != -1)
  {
    dispatch_once(&qword_1EDB27920, &__block_literal_global_4_11);
  }

  v1 = qword_1EDB27918;

  return v1;
}

uint64_t __FCAVWorkOperationQueue_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = qword_1EDB27918;
  qword_1EDB27918 = v0;

  [qword_1EDB27918 setMaxConcurrentOperationCount:1];
  v2 = FCAVWorkQueue();
  [qword_1EDB27918 setUnderlyingQueue:v2];

  v3 = qword_1EDB27918;

  return [v3 setName:@"NewsCore.AV.work"];
}

id FCKeyIdentifiersFromHLSMetadata(void *a1)
{
  if (!a1)
  {
    v9 = MEMORY[0x1E695E0F0];
    goto LABEL_15;
  }

  v1 = MEMORY[0x1E695DEF0];
  v2 = a1;
  v3 = [[v1 alloc] initWithBase64EncodedString:v2 options:0];

  if (v3)
  {
    v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:0 error:0];
    v5 = v4;
    if (!v4)
    {
      v9 = MEMORY[0x1E695E0F0];
LABEL_13:

      goto LABEL_14;
    }

    v6 = v4;
    v7 = [MEMORY[0x1E695DFA8] set];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v6 objectForKey:@"uri"];
      [v7 fc_safelyAddObject:v8];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_12:
        v9 = [v7 allObjects];

        goto LABEL_13;
      }

      v8 = [v6 fc_arrayByTransformingWithBlock:&__block_literal_global_25_2];
      [v7 fc_safelyAddObjects:v8];
    }

    goto LABEL_12;
  }

  v9 = MEMORY[0x1E695E0F0];
LABEL_14:

LABEL_15:

  return v9;
}

void sub_1B675B1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B675BFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B675E03C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 248), 8);
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1B676798C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose((v40 - 248), 8);
  _Block_object_dispose((v40 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1B6768160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67686B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1B6769670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 64));
  objc_destroyWeak((v19 - 112));
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B676ACC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B676B030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B676B134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B676B24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double FCFractionalPart(double a1)
{
  v1 = a1 <= 0.0;
  v2 = -(-a1 - floor(-a1));
  result = a1 - floor(a1);
  if (v1)
  {
    return v2;
  }

  return result;
}

void FCClamp(double a1, double a2, double a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3 < a2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "max >= min"];
    *buf = 136315906;
    v6 = "CGFloat FCClamp(CGFloat, CGFloat, CGFloat)";
    v7 = 2080;
    v8 = "FCMath.m";
    v9 = 1024;
    v10 = 43;
    v11 = 2114;
    v12 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

unint64_t FCClampUInt64s(unint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a1 >= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = a1;
  }

  if (a1 >= a2)
  {
    return v3;
  }

  else
  {
    return a2;
  }
}

uint64_t FCAudioUpsellPlayPositionForValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 caseInsensitiveCompare:@"beginning"])
  {
    if ([v2 caseInsensitiveCompare:@"middle"])
    {
      v3 = 2 * ([v2 caseInsensitiveCompare:@"end"] == 0);
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1B6771C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 136), 8);
  _Unwind_Resume(a1);
}

BOOL FCMIMETypeIsAudioOrVideo(void *a1)
{
  v1 = a1;
  if ([v1 caseInsensitiveCompare:@"audio/mpeg"])
  {
    v2 = [v1 caseInsensitiveCompare:@"video/mp4"] == 0;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

BOOL FCMIMETypeIsGZip(void *a1)
{
  v1 = a1;
  if ([v1 caseInsensitiveCompare:@"application/gzip"])
  {
    v2 = [v1 caseInsensitiveCompare:@"application/x-gzip"] == 0;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

uint64_t FCAllowedToRewriteAssetURLComponents(void *a1)
{
  v1 = a1;
  if ([FCRecordFieldURLProtocol canHandleURLWithComponents:v1]|| [FCExcerptURLProtocol canHandleURLWithComponents:v1])
  {
    v2 = 0;
  }

  else
  {
    v2 = [FCPuzzleThumbnailURLProtocol canHandleURLWithComponents:v1]^ 1;
  }

  return v2;
}

uint64_t FCNewsAssetServerHostName()
{
  v0 = FCCurrentContextEnvironment();
  if (v0 > 4)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7C46668 + v0);
  }
}

uint64_t FCNewsAssetServerHostNameForEnvironment(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7C46668 + a1);
  }
}

void sub_1B67764BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 240), 8);
  _Block_object_dispose((v41 - 192), 8);
  _Block_object_dispose((v41 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1B677773C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSKProductsRequestClass_block_invoke(uint64_t a1)
{
  StoreKitLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SKProductsRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    _MergedGlobals_206 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    StoreKitLibrary_1();
  }
}

void StoreKitLibrary_1()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!StoreKitLibraryCore_frameworkLibrary_1)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __StoreKitLibraryCore_block_invoke_2;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7C46690;
    v4 = 0;
    StoreKitLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v0 = v2[0];
    if (StoreKitLibraryCore_frameworkLibrary_1)
    {
      if (!v2[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }

LABEL_4:
  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __StoreKitLibraryCore_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  StoreKitLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getSKPaymentQueueClientClass_block_invoke_1(uint64_t a1)
{
  StoreKitLibrary_1();
  result = objc_getClass("SKPaymentQueueClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = abort_report_np();
    [(FCPuzzleTypeFetchOperation *)v3 init];
  }

  qword_1EDB27958 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id FCMutateHeadlineWithBlock(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_class();
  v6 = FCCheckedDynamicCast(v5, v4);

  v3[2](v3, v6);

  return v6;
}

double FCScoreForHeadline(void *a1, int a2)
{
  v3 = a1;
  [v3 tileProminenceScore];
  v5 = v4;
  if (a2)
  {
    if ([v3 isFeatureCandidate])
    {
      v6 = [v3 publishDate];
      [v6 fc_timeIntervalUntilNow];
      v8 = v7;

      if (v8 <= 86400.0)
      {
        v5 = v5 + 100.0;
      }
    }
  }

  return v5;
}

uint64_t FCIndexOfHighestScoringHeadline(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a4;
  v11 = a5;
  if (!v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"must have a test block"];
    *buf = 136315906;
    *&buf[4] = "NSUInteger FCIndexOfHighestScoringHeadline(NSArray<id<FCHeadlineProviding>> *__strong, NSRange, BOOL (^__strong)(__strong id<FCHeadlineProviding>), double (^__strong)(__strong id<FCHeadlineProviding>))";
    *&buf[12] = 2080;
    *&buf[14] = "FCFeedBuildingUtilities.m";
    *&buf[22] = 1024;
    LODWORD(v28[0]) = 53;
    WORD2(v28[0]) = 2114;
    *(v28 + 6) = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (!v11 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"must have a score block"];
    *buf = 136315906;
    *&buf[4] = "NSUInteger FCIndexOfHighestScoringHeadline(NSArray<id<FCHeadlineProviding>> *__strong, NSRange, BOOL (^__strong)(__strong id<FCHeadlineProviding>), double (^__strong)(__strong id<FCHeadlineProviding>))";
    *&buf[12] = 2080;
    *&buf[14] = "FCFeedBuildingUtilities.m";
    *&buf[22] = 1024;
    LODWORD(v28[0]) = 54;
    WORD2(v28[0]) = 2114;
    *(v28 + 6) = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v28[0] = 0xBFF0000000000000;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  v26 = 0x7FFFFFFFFFFFFFFFLL;
  if (v10 && v11)
  {
    v13 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{a2, a3}];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __FCIndexOfHighestScoringHeadline_block_invoke;
    v18[3] = &unk_1E7C466F8;
    v19 = v11;
    v21 = buf;
    v20 = v10;
    v22 = &v23;
    [v9 enumerateObjectsAtIndexes:v13 options:0 usingBlock:v18];

    v12 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(buf, 8);

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_1B6779584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void __FCIndexOfHighestScoringHeadline_block_invoke(void *a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = (*(a1[4] + 16))();
  if (v5 > *(*(a1[6] + 8) + 24) && (*(a1[5] + 16))())
  {
    *(*(a1[6] + 8) + 24) = v5;
    *(*(a1[7] + 8) + 24) = a3;
  }
}

id FCPromoteHeadlines(void *a1, char a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a1;
  v9 = a3;
  v35 = a4;
  v10 = [MEMORY[0x1E695DF70] arrayWithArray:v8];
  if (a5 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = a5;
  }

  if (v9 && (v12 = [v9 indexOfObjectWithOptions:2 passingTest:&__block_literal_global_12_0], v12 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v14 = v12;
    v15 = [v9 count];
    v13 = (v14 + v11 - v15) & ~((v14 + v11 - v15) >> 63);
  }

  else
  {
    v13 = 0;
  }

  v36 = v8;
  if (v13 < [v8 count])
  {
    if (v35 && (v16 = [v35 indexOfObjectPassingTest:&__block_literal_global_12_0], v16 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v32 = v11 - v16;
      if (v11 - v16 <= [v36 count])
      {
        v33 = [v36 count];
        v34 = v32 <= 1 ? 1 : v32;
        v17 = v33 - v34;
      }

      else
      {
        v17 = -1;
      }
    }

    else
    {
      v17 = [v8 count] - 1;
    }

    if (v13 <= v17)
    {
      if (v13)
      {
        v18 = 0;
      }

      else
      {
        v18 = a2;
      }

      v19 = v17 + 1;
      while (1)
      {
        v20 = v13 + v11;
        if (v13 + v11 >= (v19 - v13))
        {
          v20 = v19 - v13;
        }

        v21 = (v18 & 1) != 0 ? &__block_literal_global_18_1 : &__block_literal_global_22_2;
        v22 = (v18 & 1) != 0 ? &__block_literal_global_15_2 : &__block_literal_global_20_1;
        v23 = (v18 & 1) != 0 ? v19 - v13 : v20;
        v24 = FCIndexOfHighestScoringHeadline(v10, v13, v23, v22, v21);
        if (!v13 && (a2 & 1) == 0 && ![v9 count])
        {
          v25 = [v10 firstObject];
          v26 = [v25 hasThumbnail];

          if (v26)
          {
            break;
          }
        }

        if (v18)
        {
          if (v24 != 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v24 != 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_39:
            v29 = [v10 objectAtIndexedSubscript:v24];
            v30 = FCMutateHeadlineWithBlock(v29, &__block_literal_global_166);

            [v10 replaceObjectAtIndex:v24 withObject:v30];
            v13 = v24 + v11;

            goto LABEL_40;
          }

          v13 += v11;
        }

LABEL_40:
        v18 = 0;
        if (v13 > v17)
        {
          goto LABEL_41;
        }
      }

      v24 = 0;
      if ((v18 & 1) == 0)
      {
        goto LABEL_39;
      }

LABEL_36:
      v27 = [v10 objectAtIndexedSubscript:v24];
      v28 = FCMutateHeadlineWithBlock(v27, &__block_literal_global_166);

      [v10 removeObjectAtIndex:v24];
      [v10 insertObject:v28 atIndex:0];
      v13 += v11;

      goto LABEL_40;
    }
  }

LABEL_41:

  return v10;
}

BOOL __FCPromoteHeadlines_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasThumbnail])
  {
    v3 = [v2 publishDate];
    [v3 fc_timeIntervalUntilNow];
    v5 = v4 <= 86400.0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL __FCPromoteOneHeadline(void *a1, int a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (a2 && [v5 count] && (objc_msgSend(v5, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), v8 = v6[2](v6, v7), v7, (v8 & 1) != 0))
  {
    v9 = 1;
  }

  else
  {
    v10 = [v5 fc_arrayOfObjectsPassingTest:v6];
    v11 = [v10 count];
    v9 = v11 != 0;
    if (v11)
    {
      v12 = [v10 sortedArrayUsingComparator:&__block_literal_global_25_3];
      v13 = [v12 firstObject];
      v14 = FCMutateHeadlineWithBlock(v13, &__block_literal_global_166);
      [v5 removeObjectIdenticalTo:v13];
      [v5 insertObject:v14 atIndex:0];
    }
  }

  return v9;
}

id _FCPromoteOneHeadline(uint64_t a1, int a2)
{
  v3 = [MEMORY[0x1E695DF70] arrayWithArray:a1];
  __FCPromoteOneHeadline(v3, a2, &__block_literal_global_28_3);

  return v3;
}

id _FCPromoteAccessibleHeadline(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [MEMORY[0x1E695DF70] arrayWithArray:a1];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___FCPromoteAccessibleHeadline_block_invoke_2;
  aBlock[3] = &unk_1E7C37550;
  v11 = v5;
  v7 = v5;
  v8 = _Block_copy(aBlock);
  if (!__FCPromoteOneHeadline(v6, a3, v8))
  {
    __FCPromoteOneHeadline(v6, a3, &__block_literal_global_30_4);
  }

  return v6;
}

void FCAssignPersonalizationScoresToHeadlines(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 sortItems:v5 options:1 configurationSet:a3];
  v7 = [v6 scoreProfiles];

  FCAssignPersonalizationScoresFromProfiles(v5, v7);
}

void FCAssignPersonalizationScoresFromProfiles(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v4 objectForKey:v9];
        [v9 setScoreProfile:v10];
        [v10 sortingScore];
        [v9 setTileProminenceScore:?];
      }

      v6 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

id FCAssignSingleRecipeMetadata(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (a2)
  {
    [v5 applyRecipeMetadata:a2 configuration:a3];
  }

  else
  {
  }

  return v6;
}

id FCAssignHeadlineMetadata(void *a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v20 = a3;
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v19 = v5;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          v14 = [v13 identifier];
          v15 = [v6 objectForKeyedSubscript:v14];

          if (v15)
          {
            v21[0] = MEMORY[0x1E69E9820];
            v21[1] = 3221225472;
            v21[2] = __FCAssignHeadlineMetadata_block_invoke_2;
            v21[3] = &unk_1E7C467D0;
            v22 = v15;
            v23 = v20;
            v16 = FCMutateHeadlineWithBlock(v13, v21);
            [v7 addObject:v16];
          }

          else
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v10);
      v5 = v19;
    }
  }

  else
  {
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __FCAssignHeadlineMetadata_block_invoke;
    v31 = &unk_1E7C3B578;
    v32 = v5;
    v7 = v32;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v7;
}

id FCFeedItemsCoveredByRange(void *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __FCFeedItemsCoveredByRange_block_invoke;
  v7[3] = &unk_1E7C42320;
  v8 = v3;
  v4 = v3;
  v5 = [a1 fc_arrayOfObjectsPassingTest:v7];

  return v5;
}

uint64_t __FCFeedItemsCoveredByRange_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 order];

  return [v2 containsOrder:v3];
}

void sub_1B677F6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B678080C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6781DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double FCPersonalizationExponentialSumForValue(long double a1, long double a2)
{
  v3 = a1;
  if (a2 != 1.0)
  {
    return (1.0 - pow(a2, a1)) / (1.0 - a2);
  }

  return v3;
}

long double FCPersonalizationExponentiallyDecayValue(double a1, long double a2, long double a3, long double a4)
{
  v6 = a2;
  if (a4 != 1.0)
  {
    v6 = (1.0 - pow(a4, a2)) / (1.0 - a4);
  }

  return v6 + a1 * pow(a4, a3);
}

double FCPersonalizationLinearImpressionCount(double a1, long double a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2 == 0.0)
  {
    v4 = 0.0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Cannot get a linear impression with a decay rate of 0"];
      v12 = 136315906;
      v13 = "double FCPersonalizationLinearImpressionCount(double, double)";
      v14 = 2080;
      v15 = "FCPersonalizationData.m";
      v16 = 1024;
      v17 = 923;
      v18 = 2114;
      v19 = v10;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v12, 0x26u);
    }
  }

  else
  {
    v4 = 555.0;
    v5 = (1.0 - pow(a2, 555.0)) / (1.0 - a2);
    if (v5 > a1)
    {
      v5 = a1;
    }

    v6 = log(1.0 - v5 * (1.0 - a2));
    v7 = v6 / log(a2);
    if (COERCE__INT64(fabs(v7)) >= 0x7FF0000000000000 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Found a NaN or Inf linear impression count result"];
      v12 = 136315906;
      v13 = "double FCPersonalizationLinearImpressionCount(double, double)";
      v14 = 2080;
      v15 = "FCPersonalizationData.m";
      v16 = 1024;
      v17 = 927;
      v18 = 2114;
      v19 = v11;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v12, 0x26u);
    }

    if (fabs(v7) != INFINITY)
    {
      v4 = v7;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

__CFString *FCCommandStatusDescription(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"success";
  }

  else
  {
    return off_1E7C46CD8[a1 - 1];
  }
}

uint64_t FCPBFeedItemInventoryReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = objc_autoreleasePoolPush();
      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v30) = 0;
        v9 = [a2 position] + 1;
        if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v8 |= (v30 & 0x7F) << v6;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v11 = v7++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      if ([a2 hasError])
      {
        v12 = 0;
      }

      else
      {
        v12 = v8;
      }

LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        objc_autoreleasePoolPop(v5);
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v26 = objc_alloc_init(MEMORY[0x1E69B6E00]);

          *(a1 + 32) = v26;
          v30 = 0;
          v31 = 0;
          if (!PBReaderPlaceMark() || !NTPBDateReadFrom())
          {
LABEL_61:
            objc_autoreleasePoolPop(v5);
            return 0;
          }

          goto LABEL_47;
        }

        if (v13 == 4)
        {
          v20 = objc_alloc_init(MEMORY[0x1E69B6E30]);
          [a1 addFeedItems:v20];

          v30 = 0;
          v31 = 0;
          if (!PBReaderPlaceMark() || !NTPBFeedItemReadFrom())
          {
            goto LABEL_61;
          }

LABEL_47:
          PBReaderRecallMark();
          goto LABEL_57;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 40) |= 2u;
          while (1)
          {
            LOBYTE(v30) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v30 & 0x7F) << v21;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_55;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v23;
          }

LABEL_55:
          v27 = 24;
          goto LABEL_56;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v30) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v30 & 0x7F) << v14;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_51;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v16;
          }

LABEL_51:
          v27 = 8;
LABEL_56:
          *(a1 + v27) = v19;
          goto LABEL_57;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_57:
      objc_autoreleasePoolPop(v5);
      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id __FCJSONValidValueClasses_block_invoke()
{
  if (qword_1EDB279C8 != -1)
  {
    dispatch_once(&qword_1EDB279C8, &__block_literal_global_3_1);
  }

  v1 = _MergedGlobals_211;

  return v1;
}

uint64_t __FCJSONValidValueClasses_block_invoke_2()
{
  v0 = MEMORY[0x1E695DEC8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 arrayWithObjects:{v1, v2, objc_opt_class(), 0}];
  v4 = _MergedGlobals_211;
  _MergedGlobals_211 = v3;

  return MEMORY[0x1EEE66BB8](v3, v4);
}

BOOL _fc_isValidJSONValueObject(void *a1)
{
  v1 = a1;
  v2 = __FCJSONValidValueClasses_block_invoke();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___fc_isValidJSONValueObject_block_invoke;
  v8[3] = &unk_1E7C46CF8;
  v3 = v1;
  v9 = v3;
  if ([v2 fc_containsObjectPassingTest:v8])
  {
    objc_opt_class();
    if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v4 = v3;
      [v4 floatValue];
      [v4 floatValue];
      v6 = fabsf(v5) != INFINITY;
    }

    else
    {
      v4 = 0;
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t _fc_isValidJSONContainerObject(void *a1)
{
  v1 = a1;
  if (qword_1EDB279D8 != -1)
  {
    dispatch_once(&qword_1EDB279D8, &__block_literal_global_68_3);
  }

  v2 = qword_1EDB279D0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___fc_isValidJSONContainerObject_block_invoke;
  v6[3] = &unk_1E7C46CF8;
  v7 = v1;
  v3 = v1;
  v4 = [v2 fc_containsObjectPassingTest:v6];

  return v4;
}

id _fc_JSONEncodableObjectWithObjectHandlers(void *a1, void *a2, void *a3, void *a4, void *a5, int a6)
{
  v70 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = v15;
  if (!v11)
  {
    v27 = 0;
    v22 = v15;
    v24 = v14;
    v20 = v13;
    v18 = v12;
    goto LABEL_42;
  }

  if (v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = &__block_literal_global_13_2;
  }

  v18 = _Block_copy(v17);

  if (v13)
  {
    v19 = v13;
  }

  else
  {
    v19 = &__block_literal_global_16_2;
  }

  v20 = _Block_copy(v19);

  if (v16)
  {
    v21 = v16;
  }

  else
  {
    v21 = &__block_literal_global_18_2;
  }

  v22 = _Block_copy(v21);

  if (v14)
  {
    v23 = v14;
  }

  else
  {
    v23 = &__block_literal_global_10_1;
  }

  v24 = _Block_copy(v23);

  if ((_fc_isValidJSONContainerObject(v11) & 1) == 0)
  {
    if (a6)
    {
      if (_fc_isValidJSONValueObject(v11))
      {
        v29 = v11;
      }

      else
      {
        v29 = 0;
      }

      v27 = v29;
      goto LABEL_42;
    }

    v32 = v18[2](v18, v11);
    v26 = v32;
    if (!v32 || (_fc_JSONEncodableObjectWithObjectHandlers(v32, v18, v20, v24, v22, 1), (v27 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v27 = _fc_JSONEncodableObjectWithObjectHandlers(v11, v18, v20, v24, v22, 1);
    }

    goto LABEL_41;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v11;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = ___fc_JSONEncodableObjectWithObjectHandlers_block_invoke_5;
    v56[3] = &unk_1E7C46D60;
    v20 = v20;
    v57 = v20;
    v18 = v18;
    v58 = v18;
    v24 = v24;
    v59 = v24;
    v22 = v22;
    v60 = v22;
    v61 = a6;
    v27 = [v26 fc_arrayByTransformingWithBlockWithIndex:v56];

    v28 = v57;
LABEL_20:

LABEL_41:
    goto LABEL_42;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v11;
    }

    else
    {
      v30 = 0;
    }

    v26 = v30;
    v31 = [v26 allObjects];
LABEL_40:
    v34 = v31;
    v27 = _fc_JSONEncodableObjectWithObjectHandlers(v31, v18, v20, v24, v22, 0);

    goto LABEL_41;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v11;
    }

    else
    {
      v33 = 0;
    }

    v26 = v33;
    v31 = [v26 array];
    goto LABEL_40;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = v11;
    }

    else
    {
      v37 = 0;
    }

    v26 = v37;
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = ___fc_JSONEncodableObjectWithObjectHandlers_block_invoke_6;
    v50[3] = &unk_1E7C46D88;
    v51 = &__block_literal_global_10_1;
    v38 = v24;
    v52 = v38;
    v39 = v18;
    v53 = v39;
    v40 = v20;
    v54 = v40;
    v41 = v22;
    v55 = v41;
    v42 = [v26 fc_dictionaryByTransformingKeysWithKeyAndValueBlock:v50];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = ___fc_JSONEncodableObjectWithObjectHandlers_block_invoke_7;
    v44[3] = &unk_1E7C46DB0;
    v22 = v41;
    v45 = v22;
    v18 = v39;
    v46 = v18;
    v20 = v40;
    v47 = v20;
    v24 = v38;
    v48 = v24;
    v49 = a6;
    v27 = [v42 fc_dictionaryByTransformingValuesWithKeyAndValueBlock:v44];

    v28 = v51;
    goto LABEL_20;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"This condition shouldn't be possible, the object %@ was a container type, but not handled.", v11];
    *buf = 136315906;
    v63 = "id _fc_JSONEncodableObjectWithObjectHandlers(__strong id, __strong FCJSONEncodingObjectHandler, __strong FCJSONEncodingArrayObjectHandler, __strong FCJSONEncodingDictionaryKeyHandler, __strong FCJSONEncodingDictionaryValueHandler, BOOL)";
    v64 = 2080;
    v65 = "FCJSONUtilities.m";
    v66 = 1024;
    v67 = 127;
    v68 = 2114;
    v69 = v43;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v27 = 0;
LABEL_42:

  v35 = *MEMORY[0x1E69E9840];

  return v27;
}

id fc_JSONEncodableObjectWithObjectHandlers(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v18[0] = v9;
            v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];

            v9 = v14;
          }
        }
      }
    }

    v15 = _fc_JSONEncodableObjectWithObjectHandlers(v9, v10, v11, v12, v13, 0);
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

uint64_t __FCJSONValidContainerClasses_block_invoke_2()
{
  v0 = MEMORY[0x1E695DEC8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = [v0 arrayWithObjects:{v1, v2, v3, objc_opt_class(), 0}];
  v5 = qword_1EDB279D0;
  qword_1EDB279D0 = v4;

  return MEMORY[0x1EEE66BB8](v4, v5);
}

void sub_1B678FC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6790458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67914BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B679161C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FCCompareRelativePriority(uint64_t a1, uint64_t a2)
{
  if (a1 < a2)
  {
    return -1;
  }

  else
  {
    return a1 > a2;
  }
}

uint64_t FCHigherRelativePriority(uint64_t result, uint64_t a2)
{
  if (result <= a2)
  {
    return a2;
  }

  return result;
}

uint64_t FCNextHighestRelativePriority(uint64_t result)
{
  if ((result + 1) <= 3)
  {
    return qword_1B681B728[result + 1];
  }

  return result;
}

uint64_t FCInferRelativePriorityFromQualityOfService(uint64_t a1)
{
  if (a1 == 9)
  {
    return -1;
  }

  return a1 == 33 || a1 == 25;
}

uint64_t FCInferQualityOfServiceFromRelativePriority(uint64_t a1)
{
  v1 = 25;
  if (!a1)
  {
    v1 = 17;
  }

  if (a1 == -1)
  {
    return 9;
  }

  else
  {
    return v1;
  }
}

uint64_t FCQueuePriorityFromRelativePriority(uint64_t a1)
{
  if ((a1 + 1) >= 4)
  {
    return 0;
  }

  else
  {
    return 4 * (a1 + 1) - 4;
  }
}

float FCInferTaskPriorityFromRelativePriority(unint64_t a1)
{
  result = 0.25;
  if (a1 <= 2)
  {
    return flt_1B681B748[a1];
  }

  return result;
}

dispatch_queue_global_t FCDispatchQueueForRelativePriority(uint64_t a1)
{
  v1 = 25;
  if (!a1)
  {
    v1 = 17;
  }

  if (a1 == -1)
  {
    return FCDispatchQueueForQualityOfService(9);
  }

  else
  {
    return FCDispatchQueueForQualityOfService(v1);
  }
}

uint64_t FCCKQueryPriorityFromRelativePriority(uint64_t a1)
{
  v1 = 300;
  if (!a1)
  {
    v1 = 200;
  }

  if (a1 == -1)
  {
    return 100;
  }

  else
  {
    return v1;
  }
}

__CFString *FCStringFromRelativePriority(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"low";
  }

  else
  {
    return off_1E7C46FB0[a1];
  }
}

void FCSwizzleInstanceMethods(objc_class *a1, const char *a2, const char *a3)
{
  if (a1)
  {
    InstanceMethod = class_getInstanceMethod(a1, a2);
    v7 = class_getInstanceMethod(a1, a3);
    if (InstanceMethod)
    {
      v8 = v7;
      if (v7)
      {
        Implementation = method_getImplementation(v7);
        TypeEncoding = method_getTypeEncoding(v8);
        if (class_addMethod(a1, a2, Implementation, TypeEncoding))
        {
          v11 = method_getImplementation(InstanceMethod);
          v12 = method_getTypeEncoding(InstanceMethod);

          class_replaceMethod(a1, a3, v11, v12);
        }

        else
        {

          method_exchangeImplementations(InstanceMethod, v8);
        }
      }
    }
  }
}

id FCPersonalizationAggregateDefaultBaselineAggregateWithConfigurableValues(void *a1)
{
  v1 = MEMORY[0x1E69B6EE8];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = +[FCBaselineFeature baselineFeature];
  v5 = [v4 personalizationIdentifier];
  [v3 setFeatureKey:v5];

  [v2 baselineImpressionPrior];
  v7 = v6;
  v8 = [v2 defaultScoringConfig];
  [v8 baselineRatePrior];
  [v3 setClicks:v7 * v9];

  [v2 baselineImpressionPrior];
  v11 = v10;

  [v3 setImpressions:v11];
  [v3 setEventCount:0];
  v12 = [MEMORY[0x1E695DF00] date];
  [v3 setTimestamp:{objc_msgSend(v12, "fc_millisecondTimeIntervalSince1970")}];

  return v3;
}

id FCPersonalizationAggregateBaselineAggregateWithConfigurableValues(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[FCBaselineFeature baselineFeature];
  v6 = [v5 personalizationIdentifier];
  v7 = [v4 aggregateForFeatureKey:v6];

  if (!v7)
  {
    v7 = FCPersonalizationAggregateDefaultBaselineAggregateWithConfigurableValues(v3);
  }

  return v7;
}

id FCPersonalizationAggregateAggregatesForFeatures(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v4 fc_arrayByTransformingWithBlock:&__block_literal_global_176];
  v18 = v3;
  v6 = [v3 aggregatesForFeatureKeys:v5];
  v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 personalizationIdentifier];
        v15 = [v6 objectForKey:v14];

        if (v15)
        {
          [v7 setObject:v15 forKey:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v7;
}

double FCPersonalizationAggregateImpressionBiasForAction(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = v7;
  if (a1 == 22 || (v9 = 1.0, a1 == 1))
  {
    [v7 indexImpressionBiasCorrectionFactor];
    v11 = v10;
    [v8 groupImpressionBiasCorrectionFactor];
    v13 = v12;
    v14 = pow(v11, a2);
    v9 = v14 * pow(v13, a3);
    v15 = FCPersonalizationLog;
    if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
    {
      v18 = MEMORY[0x1E696AD98];
      v19 = v15;
      v20 = [v18 numberWithDouble:v9];
      v21 = 138412290;
      v22 = v20;
      _os_log_debug_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEBUG, "Impression bias for the headline seen event: %@", &v21, 0xCu);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

double FCPersonalizationAggregateGroupBiasForGroupType(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 == 2)
  {
    [v3 trendingGroupAggregatesGroupBias];
    goto LABEL_5;
  }

  v5 = 1.0;
  if (a1 == 1)
  {
    [v3 topStoriesGroupAggregatesGroupBias];
LABEL_5:
    v5 = v6;
  }

  return v5;
}

uint64_t FCHashForAggregate(void *a1)
{
  v1 = a1;
  [v1 clicks];
  v3 = vcvtmd_u64_f64(v2 * 10000.0);
  [v1 impressions];
  v5 = vcvtmd_u64_f64(v4 * 10000.0);
  v6 = [v1 eventCount];
  v7 = [v1 lastModified];

  v8 = v6 ^ v3;
  v9 = v5 ^ [v7 hash];

  return v8 ^ v9;
}

id FCDebugJSONForAggregate(void *a1)
{
  v14[4] = *MEMORY[0x1E69E9840];
  v13[0] = @"Clicks";
  v1 = MEMORY[0x1E696AD98];
  v2 = a1;
  [v2 clicks];
  v3 = [v1 numberWithDouble:?];
  v14[0] = v3;
  v13[1] = @"Impressions";
  v4 = MEMORY[0x1E696AD98];
  [v2 impressions];
  v5 = [v4 numberWithDouble:?];
  v14[1] = v5;
  v13[2] = @"Event Count";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v2, "eventCount")}];
  v14[2] = v6;
  v13[3] = @"Last Modified";
  v7 = MEMORY[0x1E696AD98];
  v8 = [v2 lastModified];

  [v8 timeIntervalSince1970];
  v9 = [v7 numberWithDouble:?];
  v14[3] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id FCDebugAggregateWithJSONDictionary(void *a1)
{
  v1 = MEMORY[0x1E69B6EE8];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  objc_opt_class();
  v4 = [v2 objectForKeyedSubscript:@"Clicks"];
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (!v6)
  {
    v6 = &unk_1F2E70EC0;
  }

  [v6 doubleValue];
  [v3 setClicks:?];

  objc_opt_class();
  v8 = [v2 objectForKeyedSubscript:@"Impressions"];
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = v10;
  if (!v10)
  {
    v10 = &unk_1F2E70EC0;
  }

  [v10 doubleValue];
  [v3 setImpressions:?];

  objc_opt_class();
  v12 = [v2 objectForKeyedSubscript:@"EventCount"];
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = v14;
  if (!v14)
  {
    v14 = &unk_1F2E70EC0;
  }

  [v14 doubleValue];
  [v3 setEventCount:v16];

  objc_opt_class();
  v17 = [v2 objectForKeyedSubscript:@"LastModified"];

  if (v17)
  {
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  v20 = v19;
  if (!v19)
  {
    v19 = &unk_1F2E70EC0;
  }

  [v19 doubleValue];
  [v3 setTimestamp:v21];

  return v3;
}

id FCDebugJSONDictionaryFromAggregate(void *a1)
{
  v14[4] = *MEMORY[0x1E69E9840];
  v13[0] = @"Clicks";
  v1 = MEMORY[0x1E696AD98];
  v2 = a1;
  [v2 clicks];
  v3 = [v1 numberWithDouble:?];
  v14[0] = v3;
  v13[1] = @"Impressions";
  v4 = MEMORY[0x1E696AD98];
  [v2 impressions];
  v5 = [v4 numberWithDouble:?];
  v14[1] = v5;
  v13[2] = @"EventCount";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v2, "eventCount")}];
  v14[2] = v6;
  v13[3] = @"LastModified";
  v7 = MEMORY[0x1E696AD98];
  v8 = [v2 lastModified];

  [v8 timeIntervalSince1970];
  v9 = [v7 numberWithDouble:?];
  v14[3] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

__CFString *FCDefaultSearchBaseURLStringForEnvironment(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7C47380[a1 - 1];
  }
}

__CFString *FCDefaultPuzzlesArchiveBaseURLStringForEnvironment(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7C47380[a1 - 1];
  }
}

__CFString *FCDefaultAuthTokenAPIBaseURLStringForEnvironment(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7C473B0[a1 - 1];
  }
}

__CFString *FCDefaultSportsDataVisualizationAPIBaseURLStringForEnvironment(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7C473E0[a1 - 1];
  }
}

__CFString *FCDefaultAppAnalyticsSportsEventsBaseURLStringForEnvironment(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7C47410[a1 - 1];
  }
}

__CFString *FCDefaultFineGrainedNewsletterSubscriptionBaseURLStringForEnvironment(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7C47440[a1 - 1];
  }
}

__CFString *FCDefaultSmarterFetchBaseURLStringForEnvironment(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7C47470[a1 - 1];
  }
}

void sub_1B67ABB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67ABCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67ABF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67AD128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67AD2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67ADCD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67ADEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67AE090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67AE968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FCAggregateFetchResultWithFetchResults(void *a1)
{
  v1 = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __FCAggregateFetchResultWithFetchResults_block_invoke;
  aBlock[3] = &unk_1E7C47710;
  v7 = v1;
  v2 = v1;
  v3 = _Block_copy(aBlock);
  v4 = 0;
  if (((v3[2])(v3, 0) & 1) == 0)
  {
    if (v3[2](v3, 2))
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

uint64_t __FCAggregateFetchResultWithFetchResults_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __FCAggregateFetchResultWithFetchResults_block_invoke_2;
  v4[3] = &__block_descriptor_40_e18_B16__0__NSNumber_8l;
  v4[4] = a2;
  return [v2 fc_containsObjectPassingTest:v4];
}

uint64_t __FCAggregateFetchResultWithFetchResults_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 numberWithUnsignedInteger:v3];
  v6 = [v4 isEqualToNumber:v5];

  return v6;
}

void sub_1B67B037C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67B27DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67B2F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67B69C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67B7A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67B7B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67B7CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67B7E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67B885C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67B89BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67B8B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67B9080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67B9204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67B98B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67B9BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67BA0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67BA468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67BB214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67BBE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67BCB38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B67BD15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67BE408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t NTPBMarketingSubscriptionRequest_SubscriptionActionFrom(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

void sub_1B67C3194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_1B67C5610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

double FCCGSizeFromMetadataBuffer(unint64_t a1)
{
  v1 = *(MEMORY[0x1E695F060] + 8);
  if (a1)
  {
    return (a1 >> 36);
  }

  else
  {
    return *MEMORY[0x1E695F060];
  }
}

void sub_1B67C8A68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id FCPlaceholderIssueThumbnail()
{
  v0 = FCBundle();
  v1 = [v0 pathForResource:@"cellImagePlaceholder" ofType:@"png"];

  v2 = [[FCRawFileDataProvider alloc] initWithFilePath:v1];
  v3 = [[FCAssetHandle alloc] initWithDataProvider:v2];
  v4 = [FCIssueThumbnail issueThumbnailWithAssetHandle:v3 thumbnailSize:1.0, 1.0];

  return v4;
}

id FCThumbnailForIssue(void *a1)
{
  v1 = a1;
  v2 = [v1 coverImageAssetHandle];
  v3 = [v2 filePath];

  if (v3)
  {
    v4 = [v1 coverImageAssetHandle];
    v5 = [FCIssueThumbnail issueThumbnailWithAssetHandle:v4 thumbnailSize:1.79769313e308, 1.79769313e308];
  }

  else
  {
    v5 = FCPlaceholderIssueThumbnail();
  }

  return v5;
}

id FCFetchThumbnailForIssue(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1 coverImageAssetHandle];
  v7 = v6;
  if (v6)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __FCFetchThumbnailForIssue_block_invoke;
    v10[3] = &unk_1E7C37BC0;
    v11 = v6;
    v12 = v5;
    v8 = [v11 downloadIfNeededWithPriority:a2 completion:v10];
  }

  else
  {
    if (v5)
    {
      (*(v5 + 2))(v5, 0, 0);
    }

    v8 = 0;
  }

  return v8;
}

uint64_t __FCFetchThumbnailForIssue_block_invoke(uint64_t a1)
{
  [*(a1 + 32) filePath];

  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1B67D215C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67D234C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67D2554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67D26C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B67D35D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_1B67D48BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FCCKDatabaseZoneIDsToMigrate(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  if (v4)
  {
    v5 = v4[4];
    v6 = v4[5];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = [v3 databaseMigrationZoneNamesFromVersion:v5 toVersion:v6];

  v8 = [v7 fc_arrayByTransformingWithBlock:&__block_literal_global_192];

  return v8;
}

id __FCCKDatabaseZoneIDsToMigrate_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695BA90];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v4 initWithZoneName:v3 ownerName:*MEMORY[0x1E695B728]];

  return v5;
}

id FCCKDatabaseZoneIDsToDeleteAfterMigration(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DFA8] set];
  if (a1 < a2)
  {
    do
    {
      v19 = 0u;
      v20 = 0u;
      v7 = a1 + 1;
      v17 = 0u;
      v18 = 0u;
      v8 = [v5 databaseMigrationZoneNamesFromVersion:a1 toVersion:{a1 + 1, 0}];
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v17 + 1) + 8 * i);
            if ([v5 databaseMigrationShouldMigrateEntireZone:v13])
            {
              [v6 addObject:v13];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v10);
      }

      a1 = v7;
    }

    while (v7 != a2);
  }

  v14 = [v6 fc_arrayByTransformingWithBlock:&__block_literal_global_3_3];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

id __FCCKDatabaseZoneIDsToDeleteAfterMigration_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695BA90];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v4 initWithZoneName:v3 ownerName:*MEMORY[0x1E695B728]];

  return v5;
}

id FCCKDatabaseRecordIDsToDeleteAfterMigration(uint64_t a1, uint64_t a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DFA8] set];
  v25 = a2;
  if (a1 < a2)
  {
    v7 = *MEMORY[0x1E695B728];
    v26 = v5;
    do
    {
      v29 = a1 + 1;
      v8 = [v5 databaseMigrationZoneNamesFromVersion:a1 toVersion:v25];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      obj = v8;
      v9 = [v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v38;
        v27 = *v38;
        v28 = a1;
        do
        {
          v12 = 0;
          v30 = v10;
          do
          {
            if (*v38 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v37 + 1) + 8 * v12);
            if (([v5 databaseMigrationShouldMigrateEntireZone:v13] & 1) == 0)
            {
              v32 = v12;
              v14 = [v5 databaseMigrationRecordNamesToMigrateInZone:v13 fromVersion:a1 toVersion:v29];
              v33 = 0u;
              v34 = 0u;
              v35 = 0u;
              v36 = 0u;
              v15 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v34;
                do
                {
                  for (i = 0; i != v16; ++i)
                  {
                    if (*v34 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = *(*(&v33 + 1) + 8 * i);
                    v20 = [objc_alloc(MEMORY[0x1E695BA90]) initWithZoneName:v13 ownerName:v7];
                    v21 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v19 zoneID:v20];
                    [v6 addObject:v21];
                  }

                  v16 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
                }

                while (v16);
              }

              v5 = v26;
              v11 = v27;
              a1 = v28;
              v10 = v30;
              v12 = v32;
            }

            ++v12;
          }

          while (v12 != v10);
          v10 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v10);
      }

      a1 = v29;
    }

    while (v29 != v25);
  }

  v22 = [v6 allObjects];

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}