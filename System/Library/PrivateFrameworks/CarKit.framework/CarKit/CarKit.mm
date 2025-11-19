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

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id CarGeneralLogging()
{
  if (CarGeneralLogging_onceToken != -1)
  {
    CarGeneralLogging_cold_1();
  }

  v1 = CarGeneralLogging_facility;

  return v1;
}

void sub_1C81FEF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CRSizeFromAirPlayDictionary(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = [v3 objectForKey:@"widthPixels"];
    if (v5 && (v6 = v5, [v4 objectForKey:@"heightPixels"], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
    {
      v8 = [v4 objectForKey:@"widthPixels"];
      [v8 doubleValue];
      v10 = v9;

      v11 = [v4 objectForKey:@"heightPixels"];
      [v11 doubleValue];
      v13 = v12;

      *a2 = v10;
      a2[1] = v13;
      v14 = 1;
    }

    else
    {
      v14 = 0;
      *a2 = *MEMORY[0x1E695F060];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t CRPhysicalSizeFromAirPlayDictionary(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = [v3 objectForKey:@"widthPhysical"];
    if (v5 && (v6 = v5, [v4 objectForKey:@"heightPhysical"], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
    {
      v8 = [v4 objectForKey:@"widthPhysical"];
      [v8 doubleValue];
      v10 = v9;

      v11 = [v4 objectForKey:@"heightPhysical"];
      [v11 doubleValue];
      v13 = v12;

      *a2 = v10;
      a2[1] = v13;
      v14 = 1;
    }

    else
    {
      v14 = 0;
      *a2 = *MEMORY[0x1E695F060];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t CROriginFromAirPlayDictionary(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = [v3 objectForKey:@"originXPixels"];
    if (v5 && (v6 = v5, [v4 objectForKey:@"originYPixels"], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
    {
      v8 = [v4 objectForKey:@"originXPixels"];
      [v8 doubleValue];
      v10 = v9;

      v11 = [v4 objectForKey:@"originYPixels"];
      [v11 doubleValue];
      v13 = v12;

      *a2 = v10;
      a2[1] = v13;
      v14 = 1;
    }

    else
    {
      v14 = 0;
      *a2 = *MEMORY[0x1E695EFF8];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

BOOL CRSizeFromDictionary(const __CFDictionary *a1, CGSize *a2)
{
  v5 = 0uLL;
  result = CGSizeMakeWithDictionaryRepresentation(a1, &v5);
  if (result)
  {
    v4 = v5;
  }

  else
  {
    v4 = *MEMORY[0x1E695F060];
  }

  *a2 = v4;
  return result;
}

uint64_t CRIsInternalInstall()
{
  if (CRIsInternalInstall_onceToken != -1)
  {
    CRIsInternalInstall_cold_1();
  }

  return CRIsInternalInstall_isInternal;
}

id CarAppearanceLogging()
{
  if (CarAppearanceLogging_onceToken != -1)
  {
    CarAppearanceLogging_cold_1();
  }

  v1 = CarAppearanceLogging_facility;

  return v1;
}

id _adjacentViewAreaForPayload(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 objectForKey:@"adjacentViewAreas"];

  if (v5)
  {
    v6 = [v3 objectForKey:@"adjacentViewAreas"];
    if ([v6 count])
    {
      v7 = [v6 firstObject];
      v8 = [v7 unsignedIntegerValue];

      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = [v4 objectAtIndex:v8];
        goto LABEL_7;
      }
    }

    else
    {
    }

    v5 = 0;
  }

LABEL_7:

  return v5;
}

uint64_t _transitionControlTypeForViewAreaChange(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 displaysTransitionControl];
  v6 = 0;
  if (v4 && v5)
  {
    [v3 safeFrame];
    v8 = v7;
    [v3 safeFrame];
    v10 = v8 * v9;
    [v4 safeFrame];
    v12 = v11;
    [v4 safeFrame];
    if (v12 * v13 >= v10)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  return v6;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t __CarGeneralLogging_block_invoke()
{
  CarGeneralLogging_facility = os_log_create("com.apple.carkit", "General");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __CRIsInternalInstall_block_invoke()
{
  result = MGGetBoolAnswer();
  CRIsInternalInstall_isInternal = result;
  return result;
}

uint64_t __CarAppearanceLogging_block_invoke()
{
  CarAppearanceLogging_facility = os_log_create("com.apple.carkit", "Appearance");

  return MEMORY[0x1EEE66BB8]();
}

id CARInteractionModelEntitlements()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = @"com.apple.developer.carplay-maps";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:1];

  return v0;
}

void sub_1C8202B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CRServiceConnectionSynchronousPerform(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_DEFAULT, "Connecting to CarKit service.", buf, 2u);
  }

  v6 = CRServiceCreateConnection();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CRServiceConnectionSynchronousPerform_block_invoke;
  v9[3] = &unk_1E82FBF48;
  v10 = v4;
  v7 = v4;
  v8 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v9];
  if (v3)
  {
    v3[2](v3, v8);
  }

  [v6 invalidate];
}

id CRServiceCreateConnection()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4803828];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_fetchInstrumentClusterURLsWithReply_ argumentIndex:0 ofReply:1];

  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.carkit.service" options:4096];
  [v4 setRemoteObjectInterface:v0];
  [v4 resume];

  return v4;
}

void *sub_1C8202EA0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double CRDisplayScaleAdjustedPointScale(void *a1)
{
  v1 = a1;
  [v1 pixelSize];
  v3 = v2;
  [v1 bounds];
  v5 = v4;

  return v3 / v5;
}

id CRCanvasSizeOverridesWithAirplayDisplays(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v23 = [MEMORY[0x1E695DF70] array];
  v20 = [v8 base64EncodedStringWithOptions:1];
  v19 = [CRCarPlayCapabilities fetchCarCapabilitiesWithIdentifier:?];
  v22 = [v19 zoomFactor];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [CRDisplayScaleInfo displayScaleInfoWithDictionary:*(*(&v24 + 1) + 8 * i) screenType:v11 != 0 zoomFactor:v22 error:a4];
        [v14 canvasPixelSizeForDisplayScaleMode:a2];
        DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v35);
        v30 = @"OverrideCanvasSize";
        v31 = DictionaryRepresentation;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        [v23 addObject:v16];

        ++v11;
      }

      v10 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v10);
  }

  v17 = CarDisplayScaleLogging();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = v23;
    _os_log_impl(&dword_1C81FC000, v17, OS_LOG_TYPE_DEFAULT, "CRCanvasSizeOverridesWithAirplayDisplays: CRDisplayScaleInfo: %{public}@", buf, 0xCu);
  }

  return v23;
}

id CRScaledDisplaysWithAirplayDisplays(void *a1, uint64_t a2, void *a3, void *a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = a3;
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [v7 base64EncodedStringWithOptions:1];
  v10 = [CRCarPlayCapabilities fetchCarCapabilitiesWithIdentifier:v9];
  v43 = [v10 zoomFactor];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v11 = v6;
  v42 = [v11 countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v42)
  {
    v12 = 0;
    v41 = *v47;
    v44 = *MEMORY[0x1E6962440];
    v45 = *MEMORY[0x1E6962438];
    v37 = v9;
    v38 = v7;
    v36 = v10;
    obj = v11;
    while (2)
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v47 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v46 + 1) + 8 * i);
        v15 = [CRDisplayScaleInfo displayScaleInfoWithDictionary:v14 screenType:v12 != 0 zoomFactor:v43 error:a4];
        if (!v15)
        {
          if (a4 && *a4)
          {
LABEL_24:
            v28 = CarDisplayScaleLogging();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
            {
              CRScaledDisplaysWithAirplayDisplays_cold_1(a4, v28, v29, v30, v31, v32, v33, v34);
            }
          }

          else
          {
            v15 = CarDisplayScaleLogging();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
            {
              CRScaledDisplaysWithAirplayDisplays_cold_2(v15);
            }
          }

          v9 = v37;
          v7 = v38;
          v10 = v36;
          v11 = obj;

          v27 = 0;
          goto LABEL_30;
        }

        if (a4 && *a4)
        {
          goto LABEL_24;
        }

        v16 = v8;
        v17 = [MEMORY[0x1E695DF90] dictionary];
        objc_opt_class();
        v18 = [v14 objectForKeyedSubscript:v45];
        v19 = [v18 copy];
        if (v19 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        [v17 setObject:v20 forKeyedSubscript:v45];
        objc_opt_class();
        v21 = [v14 objectForKeyedSubscript:v44];
        v22 = [v21 copy];
        if (v22 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        [v17 setObject:v23 forKeyedSubscript:v44];
        v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSObject preferredPointScale](v15, "preferredPointScale")}];
        [v17 setObject:v24 forKeyedSubscript:@"preferredUIScale"];

        [v15 canvasPixelSizeForDisplayScaleMode:a2];
        DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v55);
        [v17 setObject:DictionaryRepresentation forKeyedSubscript:@"OverrideCanvasSize"];
        v8 = v16;
        [v16 addObject:v17];
        ++v12;
      }

      v11 = obj;
      v9 = v37;
      v7 = v38;
      v10 = v36;
      v42 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v42)
      {
        continue;
      }

      break;
    }
  }

  v26 = CarDisplayScaleLogging();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v51 = v8;
    _os_log_impl(&dword_1C81FC000, v26, OS_LOG_TYPE_DEFAULT, "CRScaledDisplaysWithAirplayDisplays: CRDisplayScaleInfo: %{public}@", buf, 0xCu);
  }

  v27 = v8;
LABEL_30:

  return v27;
}

double CGSizeSquaredPixelSizeWithPhysicalSize(double result, double a2, double a3, double a4)
{
  v4 = a2 / result * (a3 / a4);
  if (v4 > 1.01)
  {
    return (((result * v4) + 1) & 0xFFFFFFFE);
  }

  return result;
}

uint64_t CRPointScaleWithSize(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a2;
  v12 = CGSizeSquaredPixelSizeWithPhysicalSize(a3, a4, a5, a6);
  v14 = v13;
  v15 = [_TtC6CarKit14DisplayScaling exceptionPointScaleWithScreenType:a1 physicalSize:a5 pixelSize:a6, a3, a4];
  if (v15 <= 0)
  {
    if (a3 < 1122.0 || a4 < 684.0)
    {
      v15 = 2;
    }

    else
    {
      v17 = a4 / v14;
      v18 = v17 * CRMinViewAreaPixelSize(v11, v12, v14);
      if (v17 * v19 < 684.0 || v18 < 1122.0)
      {
        v15 = 2;
      }

      else
      {
        v15 = 3;
      }
    }
  }

  return v15;
}

double CRMinViewAreaPixelSize(void *a1, double a2, double a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    v9 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        [v12 safeAreaPixelFrame];
        if (v14 == v9 && v13 == v10)
        {
          [v12 visiblePixelFrame];
        }

        else
        {
          [v12 safeAreaPixelFrame];
        }

        if (a2 >= v16 && a3 >= v17)
        {
          a3 = v17;
          a2 = v16;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  return a2;
}

void sub_1C820637C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void CRServiceConnectionPerform(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_DEFAULT, "Connecting to CarKit service.", buf, 2u);
  }

  v6 = CRServiceCreateConnection();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __CRServiceConnectionPerform_block_invoke;
  v13[3] = &unk_1E82FBF48;
  v7 = v4;
  v14 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v13];
  v9 = CarGeneralLogging();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_1C81FC000, v9, OS_LOG_TYPE_DEFAULT, "Connecting to CarKit service: will call serviceBlock", buf, 2u);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __CRServiceConnectionPerform_block_invoke_117;
    v11[3] = &unk_1E82FBF70;
    v12 = v6;
    v3[2](v3, v8, v11);
    v9 = v12;
  }

  else if (v10)
  {
    *buf = 0;
    _os_log_impl(&dword_1C81FC000, v9, OS_LOG_TYPE_DEFAULT, "Connecting to CarKit service: no serviceBlock, ignoring", buf, 2u);
  }
}

uint64_t __CRServiceConnectionPerform_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __CRServiceConnectionPerform_block_invoke_117(uint64_t a1)
{
  v2 = CarGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C81FC000, v2, OS_LOG_TYPE_DEFAULT, "Connecting to CarKit service: serviceBlock completed", v4, 2u);
  }

  return [*(a1 + 32) invalidate];
}

uint64_t __CRServiceConnectionSynchronousPerform_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1C8208558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8208800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8208B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8208F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82091D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82095A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CARDatePreferenceDescription_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = CARDatePreferenceDescription__formatter;
  CARDatePreferenceDescription__formatter = v0;

  [CARDatePreferenceDescription__formatter setDateStyle:1];
  v2 = CARDatePreferenceDescription__formatter;

  return [v2 setTimeStyle:0];
}

__CFString *CARVerifyString(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v3 = CarGeneralLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      CARVerifyString_cold_1();
    }

    v2 = &stru_1F47DECC0;
  }

  return v2;
}

id CARVerifyStringArray(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v2 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_4];
  v3 = [v1 filteredArrayUsingPredicate:v2];
  v4 = [v3 count];

  if (v4)
  {
    v5 = CarGeneralLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CARVerifyStringArray_cold_1();
    }

    goto LABEL_6;
  }

  v6 = v1;
LABEL_7:

  return v6;
}

id CARVerifyClass(void *a1)
{
  v1 = a1;
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v3 = CarGeneralLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      CARVerifyClass_cold_1();
    }

    v2 = 0;
  }

  return v2;
}

uint64_t CARVerifyBool(void *a1)
{
  v1 = a1;
  if (!v1)
  {
LABEL_7:
    v2 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = CarGeneralLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      CARVerifyBool_cold_1();
    }

    goto LABEL_7;
  }

  v2 = [v1 BOOLValue];
LABEL_8:

  return v2;
}

BOOL __CARVerifyStringArray_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

void sub_1C820BA00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id CarCertificationOverrideLogging()
{
  if (CarCertificationOverrideLogging_onceToken != -1)
  {
    CarCertificationOverrideLogging_cold_1();
  }

  v1 = CarCertificationOverrideLogging_facility;

  return v1;
}

uint64_t __CarCertificationOverrideLogging_block_invoke()
{
  CarCertificationOverrideLogging_facility = os_log_create("com.apple.carkit", "CertificationOverrides");

  return MEMORY[0x1EEE66BB8]();
}

id CarConnectionTimeLogging()
{
  if (CarConnectionTimeLogging_onceToken != -1)
  {
    CarConnectionTimeLogging_cold_1();
  }

  v1 = CarConnectionTimeLogging_facility;

  return v1;
}

uint64_t __CarConnectionTimeLogging_block_invoke()
{
  CarConnectionTimeLogging_facility = os_log_create("com.apple.carkit", "ConnectionTime");

  return MEMORY[0x1EEE66BB8]();
}

id CarDiagnosticsLogging()
{
  if (CarDiagnosticsLogging_onceToken != -1)
  {
    CarDiagnosticsLogging_cold_1();
  }

  v1 = CarDiagnosticsLogging_facility;

  return v1;
}

uint64_t __CarDiagnosticsLogging_block_invoke()
{
  CarDiagnosticsLogging_facility = os_log_create("com.apple.carkit", "Diagnostics");

  return MEMORY[0x1EEE66BB8]();
}

id CarDNDWDLogging()
{
  if (CarDNDWDLogging_onceToken != -1)
  {
    CarDNDWDLogging_cold_1();
  }

  v1 = CarDNDWDLogging_facility;

  return v1;
}

uint64_t __CarDNDWDLogging_block_invoke()
{
  CarDNDWDLogging_facility = os_log_create("com.apple.carkit", "DNDWD");

  return MEMORY[0x1EEE66BB8]();
}

id CarSilentModeLogging()
{
  if (CarSilentModeLogging_onceToken != -1)
  {
    CarSilentModeLogging_cold_1();
  }

  v1 = CarSilentModeLogging_facility;

  return v1;
}

uint64_t __CarSilentModeLogging_block_invoke()
{
  CarSilentModeLogging_facility = os_log_create("com.apple.carkit", "SilentMode");

  return MEMORY[0x1EEE66BB8]();
}

id CarPairingLogging()
{
  if (CarPairingLogging_onceToken != -1)
  {
    CarPairingLogging_cold_1();
  }

  v1 = CarPairingLogging_facility;

  return v1;
}

uint64_t __CarPairingLogging_block_invoke()
{
  CarPairingLogging_facility = os_log_create("com.apple.carkit", "Pairing");

  return MEMORY[0x1EEE66BB8]();
}

id CarThemeAssetsLogging()
{
  if (CarThemeAssetsLogging_onceToken != -1)
  {
    CarThemeAssetsLogging_cold_1();
  }

  v1 = CarThemeAssetsLogging_facility;

  return v1;
}

uint64_t __CarThemeAssetsLogging_block_invoke()
{
  CarThemeAssetsLogging_facility = os_log_create("com.apple.carkit", "ThemeAssets");

  return MEMORY[0x1EEE66BB8]();
}

id CarDisplayScaleLogging()
{
  if (CarDisplayScaleLogging_onceToken != -1)
  {
    CarDisplayScaleLogging_cold_1();
  }

  v1 = CarDisplayScaleLogging_facility;

  return v1;
}

uint64_t __CarDisplayScaleLogging_block_invoke()
{
  CarDisplayScaleLogging_facility = os_log_create("com.apple.carkit", "DisplayScale");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1C820FDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C821085C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82109D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8210B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8210CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82140F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82142EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82179A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CRPostBannerToPhone(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = MEMORY[0x1E696B0D0];
  v7 = a2;
  v8 = a1;
  v9 = [v6 interfaceWithProtocol:&unk_1F4803828];
  v10 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.carkit.service" options:4096];
  [v10 setRemoteObjectInterface:v9];
  [v10 resume];
  v11 = [v10 remoteObjectProxyWithErrorHandler:&__block_literal_global_13];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __CRPostBannerToPhone_block_invoke_153;
  v14[3] = &unk_1E82FC780;
  v15 = v10;
  v16 = v5;
  v12 = v10;
  v13 = v5;
  [v11 postBannerToPhone:v8 notificationMessage:v7 reply:v14];
}

void __CRPostBannerToPhone_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = CarGeneralLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __CRPostBannerToPhone_block_invoke_cold_1();
    }
  }
}

uint64_t __CRPostBannerToPhone_block_invoke_153(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

void CRCollectCarPlayDiagnostics(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = MEMORY[0x1E696B0D0];
  v26 = a4;
  v11 = a3;
  v12 = a2;
  v13 = a1;
  v14 = [v10 interfaceWithProtocol:&unk_1F4803828];
  v15 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v14 setClasses:v15 forSelector:sel_handleCarPlayDiagnosticsWithDeviceScreenshotURL_carScreenshotURL_attachmentURLs_activeBundleIdentifier_reply_ argumentIndex:0 ofReply:0];

  v16 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v14 setClasses:v16 forSelector:sel_handleCarPlayDiagnosticsWithDeviceScreenshotURL_carScreenshotURL_attachmentURLs_activeBundleIdentifier_reply_ argumentIndex:1 ofReply:0];

  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  [v14 setClasses:v19 forSelector:sel_handleCarPlayDiagnosticsWithDeviceScreenshotURL_carScreenshotURL_attachmentURLs_activeBundleIdentifier_reply_ argumentIndex:2 ofReply:0];

  v20 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v14 setClasses:v20 forSelector:sel_handleCarPlayDiagnosticsWithDeviceScreenshotURL_carScreenshotURL_attachmentURLs_activeBundleIdentifier_reply_ argumentIndex:3 ofReply:0];

  v21 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.carkit.service" options:4096];
  [v21 setRemoteObjectInterface:v14];
  [v21 resume];
  v22 = [v21 remoteObjectProxyWithErrorHandler:&__block_literal_global_160];
  v23 = CarGeneralLogging();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C81FC000, v23, OS_LOG_TYPE_DEFAULT, "Connecting to CarKit diagnostics service.", buf, 2u);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __CRCollectCarPlayDiagnostics_block_invoke_161;
  v27[3] = &unk_1E82FC780;
  v28 = v21;
  v29 = v9;
  v24 = v21;
  v25 = v9;
  [v22 handleCarPlayDiagnosticsWithDeviceScreenshotURL:v13 carScreenshotURL:v12 attachmentURLs:v11 activeBundleIdentifier:v26 reply:v27];
}

void __CRCollectCarPlayDiagnostics_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = CarGeneralLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __CRCollectCarPlayDiagnostics_block_invoke_cold_1();
    }
  }
}

uint64_t __CRCollectCarPlayDiagnostics_block_invoke_161(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

void CRCollectVehicleLogs(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4803828];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_collectVehicleLogs_ argumentIndex:0 ofReply:1];

  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.carkit.service" options:4096];
  [v4 setRemoteObjectInterface:v2];
  [v4 resume];
  v5 = [v4 remoteObjectProxyWithErrorHandler:&__block_literal_global_164];
  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C81FC000, v6, OS_LOG_TYPE_DEFAULT, "Connecting to CarKit diagnostics service for vehicle logs.", buf, 2u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CRCollectVehicleLogs_block_invoke_165;
  v9[3] = &unk_1E82FC7A8;
  v10 = v4;
  v11 = v1;
  v7 = v4;
  v8 = v1;
  [v5 collectVehicleLogs:v9];
}

void __CRCollectVehicleLogs_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = CarGeneralLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __CRCollectVehicleLogs_block_invoke_cold_1();
    }
  }
}

uint64_t __CRCollectVehicleLogs_block_invoke_165(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

uint64_t CRIsPreflightThemeAssetEnabled()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4803828];
  v1 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.carkit.service" options:4096];
  [v1 setRemoteObjectInterface:v0];
  [v1 resume];
  v2 = [v1 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_168];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __CRIsPreflightThemeAssetEnabled_block_invoke_169;
  v5[3] = &unk_1E82FC030;
  v5[4] = &v6;
  [v2 isPreflightThemeAssetEnabledWithReply:v5];
  [v1 invalidate];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);

  return v3;
}

void sub_1C8218B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __CRIsPreflightThemeAssetEnabled_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = CarGeneralLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __CRPostBannerToPhone_block_invoke_cold_1();
    }
  }
}

void __CRIsPreflightThemeAssetEnabled_block_invoke_169(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
    v6 = CarGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      if (*(*(*(a1 + 32) + 8) + 24))
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_1C81FC000, v6, OS_LOG_TYPE_INFO, "preflight theme assets enabled: %{public}@", &v8, 0xCu);
    }
  }

  else
  {
    v6 = CarGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __CRIsPreflightThemeAssetEnabled_block_invoke_169_cold_1();
    }
  }
}

void CRSetPreflightThemeAssetEnabled(uint64_t a1)
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4803828];
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.carkit.service" options:4096];
  [v3 setRemoteObjectInterface:v2];
  [v3 resume];
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_178];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __CRSetPreflightThemeAssetEnabled_block_invoke_179;
  v5[3] = &__block_descriptor_33_e20_v20__0B8__NSError_12l;
  v6 = a1;
  [v4 setPreflightThemeAssetEnabled:a1 reply:v5];
  [v3 invalidate];
}

void __CRSetPreflightThemeAssetEnabled_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = CarGeneralLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __CRPostBannerToPhone_block_invoke_cold_1();
    }
  }
}

void __CRSetPreflightThemeAssetEnabled_block_invoke_179(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = CarGeneralLogging();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 32))
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_1C81FC000, v7, OS_LOG_TYPE_INFO, "set preflight theme assets enabled: %{public}@", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __CRSetPreflightThemeAssetEnabled_block_invoke_179_cold_1();
  }
}

void *CRSaveStringToTemporaryTextFile(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E696AC08];
  v5 = a1;
  v6 = [v4 defaultManager];
  v7 = [v6 temporaryDirectory];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.XXXXXX", v5];

  v9 = [v7 URLByAppendingPathComponent:v8];

  v10 = mktemp([v9 fileSystemRepresentation]);
  v11 = MEMORY[0x1E696AEC0];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
  v13 = [v11 stringWithFormat:@"%@.txt", v12];

  v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v13 isDirectory:0 relativeToURL:0];
  if (v3)
  {
    if ([v3 writeToURL:v14 atomically:1 encoding:4 error:0])
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

id CRStringForDate(void *a1)
{
  v1 = MEMORY[0x1E696AB78];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  [v3 setDateFormat:@"yyyy-MM-dd-HH:mm:ss"];
  v4 = [v3 stringFromDate:v2];

  return v4;
}

id CRBuildNumberForDevice()
{
  if (CRBuildNumberForDevice_onceToken != -1)
  {
    CRBuildNumberForDevice_cold_1();
  }

  v1 = CRBuildNumberForDevice_buildVersion;

  return v1;
}

uint64_t __CRBuildNumberForDevice_block_invoke()
{
  CRBuildNumberForDevice_buildVersion = MGGetStringAnswer();

  return MEMORY[0x1EEE66BB8]();
}

id CRDeviceHardwareIdentifierForDevice()
{
  if (CRDeviceHardwareIdentifierForDevice_onceToken != -1)
  {
    CRDeviceHardwareIdentifierForDevice_cold_1();
  }

  v1 = CRDeviceHardwareIdentifierForDevice_hardwareIdentifier;

  return v1;
}

void __CRDeviceHardwareIdentifierForDevice_block_invoke()
{
  v2 = MobileGestalt_get_current_device();
  v0 = MobileGestalt_copy_hwModelDescriptionForAnalytics_obj();
  v1 = CRDeviceHardwareIdentifierForDevice_hardwareIdentifier;
  CRDeviceHardwareIdentifierForDevice_hardwareIdentifier = v0;
}

id CRFormattedBuildAndDeviceIdentifier()
{
  v0 = CRBuildNumberForDevice();
  v1 = CRDeviceHardwareIdentifierForDevice();
  v2 = v1;
  if (v1 && v0)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v1, v0];
  }

  else
  {
    if (!(v1 | v0))
    {
      v4 = 0;
      goto LABEL_10;
    }

    if (v1)
    {
      v3 = v1;
    }

    else
    {
      v3 = v0;
    }
  }

  v4 = v3;
LABEL_10:

  return v4;
}

id CRURLEncodedString(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v3 objectForKey:v8];
        v10 = MEMORY[0x1E696AEC0];
        v11 = urlEncode(v8);
        v12 = urlEncode(v9);
        v13 = [v10 stringWithFormat:@"%@=%@", v11, v12, v16];

        [v2 addObject:v13];
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v14 = [v2 componentsJoinedByString:@"&"];

  return v14;
}

id urlEncode(void *a1)
{
  v1 = [a1 description];
  v2 = [MEMORY[0x1E696AB08] URLHostAllowedCharacterSet];
  v3 = [v1 stringByAddingPercentEncodingWithAllowedCharacters:v2];

  return v3;
}

void sub_1C82196E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8219C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void CRLostModeStateChanged(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _updateCarPlayAllowed];

  objc_autoreleasePoolPop(v3);
}

uint64_t CRFrameworkBundle()
{
  v0 = MEMORY[0x1E696AAE8];
  v1 = objc_opt_class();

  return [v0 bundleForClass:v1];
}

id CRLocalizedStringForKey(void *a1)
{
  v1 = MEMORY[0x1E696AAE8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:&stru_1F47DECC0 table:@"Localizable"];

  return v4;
}

id CRLocalizedInternalStringForKey(void *a1)
{
  v1 = MEMORY[0x1E696AAE8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:&stru_1F47DECC0 table:@"carkitd-internal"];

  return v4;
}

__CFString *CRNullableDescriptionForString(void *a1)
{
  v1 = a1;
  if ([(__CFString *)v1 length])
  {
    v2 = v1;
  }

  else
  {
    v2 = @"(None)";
  }

  v3 = v2;

  return v2;
}

id CRLocalizedWiFiVariantKeyForKey(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (MGGetBoolAnswer())
  {
    v2 = [v1 stringByReplacingOccurrencesOfString:@"WIFI" withString:@"WLAN"];
  }

  return v2;
}

uint64_t CRSettingsDebugUIEnabled()
{
  v0 = CFPreferencesCopyAppValue(CRPreferencesSettingsDebugUIKey, CRPreferencesNotMigratedDomain);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 == CFStringGetTypeID())
  {
    v3 = [v1 BOOLValue];
  }

  else
  {
    v4 = CFGetTypeID(v1);
    v3 = v4 == CFBooleanGetTypeID() && v1 == *MEMORY[0x1E695E4D0];
  }

  CFRelease(v1);
  return v3;
}

uint64_t CRDeviceSupportsAutomaticDNDMotionTrigger()
{
  if (CRDeviceSupportsAutomaticDNDMotionTrigger_onceToken != -1)
  {
    CRDeviceSupportsAutomaticDNDMotionTrigger_cold_1();
  }

  return CRDeviceSupportsAutomaticDNDMotionTrigger_supportsMotionTrigger;
}

uint64_t __CRDeviceSupportsAutomaticDNDMotionTrigger_block_invoke()
{
  result = MGIsDeviceOfType();
  if (result)
  {
    v1 = 0;
  }

  else
  {
    result = MGIsDeviceOfType();
    v1 = result ^ 1;
  }

  CRDeviceSupportsAutomaticDNDMotionTrigger_supportsMotionTrigger = v1;
  return result;
}

id CRAutomaticDNDLocationBundle()
{
  if (CRAutomaticDNDLocationBundle_onceToken != -1)
  {
    CRAutomaticDNDLocationBundle_cold_1();
  }

  v1 = CRAutomaticDNDLocationBundle_bundle;

  return v1;
}

void __CRAutomaticDNDLocationBundle_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E696AAE8]);
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/System/Library/LocationBundles/DoNotDisturb.bundle"];
  v1 = [v0 initWithURL:v3];
  v2 = CRAutomaticDNDLocationBundle_bundle;
  CRAutomaticDNDLocationBundle_bundle = v1;
}

uint64_t CRAutomaticDNDLocationServicesStatus()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v0 = getCLLocationManagerClass_softClass;
  v9 = getCLLocationManagerClass_softClass;
  if (!getCLLocationManagerClass_softClass)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getCLLocationManagerClass_block_invoke;
    v5[3] = &unk_1E82FC8F8;
    v5[4] = &v6;
    __getCLLocationManagerClass_block_invoke(v5);
    v0 = v7[3];
  }

  v1 = v0;
  _Block_object_dispose(&v6, 8);
  v2 = CRAutomaticDNDLocationBundle();
  v3 = [v0 authorizationStatusForBundle:v2];

  return v3;
}

void sub_1C8220618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CRDeviceSupportsDNDWhileDriving()
{
  if (CRDeviceSupportsDNDWhileDriving_onceToken != -1)
  {
    CRDeviceSupportsDNDWhileDriving_cold_1();
  }

  return CRDeviceSupportsDNDWhileDriving_supportsDNDWhileDriving;
}

uint64_t __CRDeviceSupportsDNDWhileDriving_block_invoke()
{
  result = MGGetBoolAnswer();
  CRDeviceSupportsDNDWhileDriving_supportsDNDWhileDriving = result;
  return result;
}

uint64_t CRIsTestContext()
{
  if (CRIsTestContext_onceToken != -1)
  {
    CRIsTestContext_cold_1();
  }

  return CRIsTestContext__isTestingContext;
}

Class __CRIsTestContext_block_invoke()
{
  result = NSClassFromString(&cfstr_Xctestcase.isa);
  CRIsTestContext__isTestingContext = result != 0;
  return result;
}

uint64_t CRSizeFromAirPlayDictionaryForKey(void *a1, void *a2, CGSize *a3)
{
  v5 = a1;
  v6 = a2;
  if (!a3)
  {
    CRSizeFromAirPlayDictionaryForKey_cold_1();
  }

  v7 = v6;
  v8 = [v5 objectForKeyedSubscript:v6];
  v9 = v8;
  if (v8 && (size.width = 0.0, size.height = 0.0, CGSizeMakeWithDictionaryRepresentation(v8, &size)))
  {
    *a3 = size;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    *a3 = *MEMORY[0x1E695F060];
  }

  return v10;
}

Class __getCLLocationManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreLocationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E82FC918;
    v6 = 0;
    CoreLocationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (CoreLocationLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
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
  result = objc_getClass("CLLocationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCLLocationManagerClass_block_invoke_cold_1();
  }

  getCLLocationManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary = result;
  return result;
}

__CFString *CARStringFromVoiceTriggerMode(uint64_t a1)
{
  if ((a1 + 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E82FCD58[a1 + 1];
  }
}

void sub_1C822774C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8227DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82281A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void CRHandleConnectionForBluetoothAddress(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CRHandleConnectionForBluetoothAddress_block_invoke;
  v9[3] = &unk_1E82FCE98;
  v10 = v3;
  v11 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __CRHandleConnectionForBluetoothAddress_block_invoke_3;
  v7[3] = &unk_1E82FBF48;
  v8 = v11;
  v5 = v11;
  v6 = v3;
  CRServiceConnectionPerform(v9, v7);
}

void __CRHandleConnectionForBluetoothAddress_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __CRHandleConnectionForBluetoothAddress_block_invoke_2;
  v8[3] = &unk_1E82FCE70;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v5;
  v7 = v5;
  [a2 handleDidConnectBluetoothAddress:v6 reply:v8];
}

uint64_t __CRHandleConnectionForBluetoothAddress_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t __CRHandleConnectionForBluetoothAddress_block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2);
  }

  return result;
}

void CRHandleDisconnectionForBluetoothAddress(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CRHandleDisconnectionForBluetoothAddress_block_invoke;
  v9[3] = &unk_1E82FCE98;
  v10 = v3;
  v11 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __CRHandleDisconnectionForBluetoothAddress_block_invoke_3;
  v7[3] = &unk_1E82FBF48;
  v8 = v11;
  v5 = v11;
  v6 = v3;
  CRServiceConnectionPerform(v9, v7);
}

void __CRHandleDisconnectionForBluetoothAddress_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __CRHandleDisconnectionForBluetoothAddress_block_invoke_2;
  v8[3] = &unk_1E82FCEC0;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v5;
  v7 = v5;
  [a2 handleDidDisconnectBluetoothAddress:v6 reply:v8];
}

uint64_t __CRHandleDisconnectionForBluetoothAddress_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t __CRHandleDisconnectionForBluetoothAddress_block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void CRBluetoothIndicatesInCar(void *a1)
{
  v1 = a1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __CRBluetoothIndicatesInCar_block_invoke;
  v5[3] = &unk_1E82FCEE8;
  v6 = v1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __CRBluetoothIndicatesInCar_block_invoke_3;
  v3[3] = &unk_1E82FBF48;
  v4 = v6;
  v2 = v6;
  CRServiceConnectionPerform(v5, v3);
}

void __CRBluetoothIndicatesInCar_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __CRBluetoothIndicatesInCar_block_invoke_2;
  v7[3] = &unk_1E82FCE70;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a2 isBluetoothInCarWithReply:v7];
}

uint64_t __CRBluetoothIndicatesInCar_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t __CRBluetoothIndicatesInCar_block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2);
  }

  return result;
}

void CRConnectBluetoothLE(void *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a1;
  v7 = a2;
  v8 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __CRConnectBluetoothLE_block_invoke;
  v14[3] = &unk_1E82FCF10;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __CRConnectBluetoothLE_block_invoke_3;
  v12[3] = &unk_1E82FBF48;
  v13 = v17;
  v9 = v17;
  v10 = v7;
  v11 = v6;
  CRServiceConnectionPerform(v14, v12);
}

void __CRConnectBluetoothLE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CRConnectBluetoothLE_block_invoke_2;
  v9[3] = &unk_1E82FCEC0;
  v10 = *(a1 + 48);
  v11 = v5;
  v8 = v5;
  [a2 startBluetoothLEPairingForIdentifier:v6 deviceName:v7 reply:v9];
}

uint64_t __CRConnectBluetoothLE_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __CRConnectBluetoothLE_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CarPairingLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __CRConnectBluetoothLE_block_invoke_3_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void CRHandleBluetoothClassicPairingCompleted(void *a1, void *a2, char a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __CRHandleBluetoothClassicPairingCompleted_block_invoke;
  v15[3] = &unk_1E82FCF38;
  v16 = v7;
  v17 = v8;
  v19 = a3;
  v18 = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __CRHandleBluetoothClassicPairingCompleted_block_invoke_3;
  v13[3] = &unk_1E82FBF48;
  v14 = v18;
  v10 = v18;
  v11 = v8;
  v12 = v7;
  CRServiceConnectionPerform(v15, v13);
}

void __CRHandleBluetoothClassicPairingCompleted_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __CRHandleBluetoothClassicPairingCompleted_block_invoke_2;
  v10[3] = &unk_1E82FCEC0;
  v11 = *(a1 + 48);
  v12 = v5;
  v9 = v5;
  [a2 handleBluetoothClassicPairingCompletedForDeviceAddress:v6 name:v7 preApproved:v8 reply:v10];
}

uint64_t __CRHandleBluetoothClassicPairingCompleted_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __CRHandleBluetoothClassicPairingCompleted_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CarPairingLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __CRHandleBluetoothClassicPairingCompleted_block_invoke_3_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void CRStartBluetoothClassicPairing(void *a1, char a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __CRStartBluetoothClassicPairing_block_invoke;
  v11[3] = &unk_1E82FCF60;
  v12 = v5;
  v14 = a2;
  v13 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CRStartBluetoothClassicPairing_block_invoke_3;
  v9[3] = &unk_1E82FBF48;
  v10 = v13;
  v7 = v13;
  v8 = v5;
  CRServiceConnectionPerform(v11, v9);
}

void __CRStartBluetoothClassicPairing_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CRStartBluetoothClassicPairing_block_invoke_2;
  v9[3] = &unk_1E82FCEC0;
  v7 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v5;
  v8 = v5;
  [a2 startBluetoothClassicPairingForDeviceAddress:v7 deviceName:0 numericCode:0 showBluetoothOnlyOption:v6 reply:v9];
}

uint64_t __CRStartBluetoothClassicPairing_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __CRStartBluetoothClassicPairing_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CarPairingLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __CRStartBluetoothClassicPairing_block_invoke_3_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void CRConfirmAndContinueBluetoothClassicPairing(void *a1, void *a2, void *a3, char a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a5;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __CRConfirmAndContinueBluetoothClassicPairing_block_invoke;
  v19[3] = &unk_1E82FCF88;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v24 = a4;
  v23 = v12;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __CRConfirmAndContinueBluetoothClassicPairing_block_invoke_3;
  v17[3] = &unk_1E82FBF48;
  v18 = v23;
  v13 = v23;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  CRServiceConnectionPerform(v19, v17);
}

void __CRConfirmAndContinueBluetoothClassicPairing_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 64);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __CRConfirmAndContinueBluetoothClassicPairing_block_invoke_2;
  v11[3] = &unk_1E82FCEC0;
  v9 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = v5;
  v10 = v5;
  [a2 startBluetoothClassicPairingForDeviceAddress:v6 deviceName:v7 numericCode:v9 showBluetoothOnlyOption:v8 reply:v11];
}

uint64_t __CRConfirmAndContinueBluetoothClassicPairing_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __CRConfirmAndContinueBluetoothClassicPairing_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CarPairingLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __CRConfirmAndContinueBluetoothClassicPairing_block_invoke_3_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void CRHandleCarPlayConnectionRequest(int a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __CRHandleCarPlayConnectionRequest_block_invoke;
  v5[3] = &unk_1E82FCFB0;
  v7 = a1;
  v6 = v3;
  v4 = v3;
  CRServiceConnectionPerform(v5, &__block_literal_global_64);
}

void __CRHandleCarPlayConnectionRequest_block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = CarGeneralLogging();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C81FC000, v6, OS_LOG_TYPE_DEFAULT, "carkitd successfully handled the start session request", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __CRHandleCarPlayConnectionRequest_block_invoke_2_cold_1();
  }
}

void __CRHandleCarPlayConnectionRequest_block_invoke_62(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __CRHandleCarPlayConnectionRequest_block_invoke_62_cold_1();
  }
}

void CRSaveWiFiCredentialsForAccessoryConnectionIdentifier(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __CRSaveWiFiCredentialsForAccessoryConnectionIdentifier_block_invoke;
  v11[3] = &unk_1E82FCFD8;
  v12 = v5;
  v14 = a1;
  v13 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CRSaveWiFiCredentialsForAccessoryConnectionIdentifier_block_invoke_3;
  v9[3] = &unk_1E82FBF48;
  v10 = v13;
  v7 = v13;
  v8 = v5;
  CRServiceConnectionPerform(v11, v9);
}

void __CRSaveWiFiCredentialsForAccessoryConnectionIdentifier_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CRSaveWiFiCredentialsForAccessoryConnectionIdentifier_block_invoke_2;
  v9[3] = &unk_1E82FCEC0;
  v7 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v5;
  v8 = v5;
  [a2 saveWiFiCredentials:v7 forAccessoryConnectionIdentifier:v6 reply:v9];
}

uint64_t __CRSaveWiFiCredentialsForAccessoryConnectionIdentifier_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, a2, 0, a3);
  }

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

uint64_t __CRSaveWiFiCredentialsForAccessoryConnectionIdentifier_block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2);
  }

  return result;
}

void CRAllowsConnectionsForWiFiUUID(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CRAllowsConnectionsForWiFiUUID_block_invoke;
  v9[3] = &unk_1E82FCE98;
  v10 = v3;
  v11 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __CRAllowsConnectionsForWiFiUUID_block_invoke_3;
  v7[3] = &unk_1E82FBF48;
  v8 = v11;
  v5 = v11;
  v6 = v3;
  CRServiceConnectionPerform(v9, v7);
}

void __CRAllowsConnectionsForWiFiUUID_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __CRAllowsConnectionsForWiFiUUID_block_invoke_2;
  v8[3] = &unk_1E82FCEC0;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v5;
  v7 = v5;
  [a2 allowsConnectionsForWiFiUUID:v6 reply:v8];
}

uint64_t __CRAllowsConnectionsForWiFiUUID_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t __CRAllowsConnectionsForWiFiUUID_block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void CRAllowsConnectionsForCertificateSerialNumber(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CRAllowsConnectionsForCertificateSerialNumber_block_invoke;
  v9[3] = &unk_1E82FCE98;
  v10 = v3;
  v11 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __CRAllowsConnectionsForCertificateSerialNumber_block_invoke_3;
  v7[3] = &unk_1E82FBF48;
  v8 = v11;
  v5 = v11;
  v6 = v3;
  CRServiceConnectionPerform(v9, v7);
}

void __CRAllowsConnectionsForCertificateSerialNumber_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __CRAllowsConnectionsForCertificateSerialNumber_block_invoke_2;
  v8[3] = &unk_1E82FCEC0;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v5;
  v7 = v5;
  [a2 allowsConnectionsForCertificateSerial:v6 reply:v8];
}

uint64_t __CRAllowsConnectionsForCertificateSerialNumber_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t __CRAllowsConnectionsForCertificateSerialNumber_block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void CRIsPairedWithCertificateSerialNumber(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CRIsPairedWithCertificateSerialNumber_block_invoke;
  v9[3] = &unk_1E82FCE98;
  v10 = v3;
  v11 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __CRIsPairedWithCertificateSerialNumber_block_invoke_3;
  v7[3] = &unk_1E82FBF48;
  v8 = v11;
  v5 = v11;
  v6 = v3;
  CRServiceConnectionPerform(v9, v7);
}

void __CRIsPairedWithCertificateSerialNumber_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __CRIsPairedWithCertificateSerialNumber_block_invoke_2;
  v8[3] = &unk_1E82FCEC0;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v5;
  v7 = v5;
  [a2 isPairedWithCertificateSerial:v6 reply:v8];
}

uint64_t __CRIsPairedWithCertificateSerialNumber_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t __CRIsPairedWithCertificateSerialNumber_block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void CRIsEnhancedIntegrationEnabledWithCertificateSerialNumber(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CRIsEnhancedIntegrationEnabledWithCertificateSerialNumber_block_invoke;
  v9[3] = &unk_1E82FCE98;
  v10 = v3;
  v11 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __CRIsEnhancedIntegrationEnabledWithCertificateSerialNumber_block_invoke_3;
  v7[3] = &unk_1E82FBF48;
  v8 = v11;
  v5 = v11;
  v6 = v3;
  CRServiceConnectionPerform(v9, v7);
}

void __CRIsEnhancedIntegrationEnabledWithCertificateSerialNumber_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __CRIsEnhancedIntegrationEnabledWithCertificateSerialNumber_block_invoke_2;
  v8[3] = &unk_1E82FD000;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v5;
  v7 = v5;
  [a2 isEnhancedIntegrationEnabledWithCertificateSerial:v6 reply:v8];
}

uint64_t __CRIsEnhancedIntegrationEnabledWithCertificateSerialNumber_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t __CRIsEnhancedIntegrationEnabledWithCertificateSerialNumber_block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __CRHandleCarPlayRestrictionChanged_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __CRHandleCarPlayRestrictionChanged_block_invoke_2;
  v6[3] = &unk_1E82FC988;
  v7 = v4;
  v5 = v4;
  [a2 handleCarPlayRestrictionChangedWithReply:v6];
}

void CRIsCarPlayAllowed(void *a1)
{
  v1 = a1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __CRIsCarPlayAllowed_block_invoke;
  v5[3] = &unk_1E82FCEE8;
  v6 = v1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __CRIsCarPlayAllowed_block_invoke_3;
  v3[3] = &unk_1E82FBF48;
  v4 = v6;
  v2 = v6;
  CRServiceConnectionPerform(v5, v3);
}

void __CRIsCarPlayAllowed_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __CRIsCarPlayAllowed_block_invoke_2;
  v7[3] = &unk_1E82FCEC0;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a2 isCarPlayAllowedWithReply:v7];
}

uint64_t __CRIsCarPlayAllowed_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t __CRIsCarPlayAllowed_block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void CRVehicleIdentifierForCertificateSerial(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CRVehicleIdentifierForCertificateSerial_block_invoke;
  v9[3] = &unk_1E82FCE98;
  v10 = v3;
  v11 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __CRVehicleIdentifierForCertificateSerial_block_invoke_3;
  v7[3] = &unk_1E82FBF48;
  v8 = v11;
  v5 = v11;
  v6 = v3;
  CRServiceConnectionPerform(v9, v7);
}

void __CRVehicleIdentifierForCertificateSerial_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __CRVehicleIdentifierForCertificateSerial_block_invoke_2;
  v8[3] = &unk_1E82FD048;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v5;
  v7 = v5;
  [a2 vehicleIdentifierForCertificateSerial:v6 reply:v8];
}

uint64_t __CRVehicleIdentifierForCertificateSerial_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t __CRVehicleIdentifierForCertificateSerial_block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void CRFetchInstrumentClusterURLs(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(CARInstrumentClusterURLController);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __CRFetchInstrumentClusterURLs_block_invoke;
  v5[3] = &unk_1E82FD070;
  v6 = v2;
  v7 = v1;
  v3 = v2;
  v4 = v1;
  [(CARInstrumentClusterURLController *)v3 fetchInstrumentClusterURLs:v5];
}

uint64_t __CRFetchInstrumentClusterURLs_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

void CRFetchScaledDisplays(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = _os_feature_enabled_impl();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __CRFetchScaledDisplays_block_invoke;
  v7[3] = &unk_1E82FC148;
  v8 = v3;
  v6 = v3;
  [CRScreenScaleHeuristics scaledDisplays:v4 withDisplayScaling:v5 reply:v7];
}

uint64_t __CRFetchScaledDisplays_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void CRFetchOverrideCanvasSizeForCertificateSerialNumber(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __CRFetchOverrideCanvasSizeForCertificateSerialNumber_block_invoke;
  v13[3] = &unk_1E82FCF10;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __CRFetchOverrideCanvasSizeForCertificateSerialNumber_block_invoke_3;
  v11[3] = &unk_1E82FBF48;
  v12 = v16;
  v8 = v16;
  v9 = v6;
  v10 = v5;
  CRServiceConnectionPerform(v13, v11);
}

void __CRFetchOverrideCanvasSizeForCertificateSerialNumber_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CRFetchOverrideCanvasSizeForCertificateSerialNumber_block_invoke_2;
  v9[3] = &unk_1E82FD098;
  v10 = *(a1 + 48);
  v11 = v5;
  v8 = v5;
  [a2 fetchOverrideCanvasSizeWithCertificateSerialNumber:v6 displays:v7 reply:v9];
}

uint64_t __CRFetchOverrideCanvasSizeForCertificateSerialNumber_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t __CRFetchOverrideCanvasSizeForCertificateSerialNumber_block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void CRFetchScaledDisplaysForCertificateSerialNumber(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __CRFetchScaledDisplaysForCertificateSerialNumber_block_invoke;
  v13[3] = &unk_1E82FCF10;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __CRFetchScaledDisplaysForCertificateSerialNumber_block_invoke_3;
  v11[3] = &unk_1E82FBF48;
  v12 = v16;
  v8 = v16;
  v9 = v6;
  v10 = v5;
  CRServiceConnectionPerform(v13, v11);
}

void __CRFetchScaledDisplaysForCertificateSerialNumber_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CRFetchScaledDisplaysForCertificateSerialNumber_block_invoke_2;
  v9[3] = &unk_1E82FD098;
  v10 = *(a1 + 48);
  v11 = v5;
  v8 = v5;
  [a2 fetchScaledDisplaysWithCertificateSerialNumber:v6 displays:v7 reply:v9];
}

uint64_t __CRFetchScaledDisplaysForCertificateSerialNumber_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t __CRFetchScaledDisplaysForCertificateSerialNumber_block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void CRFetchCarPlayCapabilities(void *a1)
{
  v1 = a1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __CRFetchCarPlayCapabilities_block_invoke;
  v3[3] = &unk_1E82FD0C0;
  v4 = v1;
  v2 = v1;
  [CRCarPlayCapabilities waitForCarCapabilitiesValuesWithReply:v3];
}

uint64_t __CRFetchCarPlayCapabilities_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void CRStopSessionWithSessionIdentifier(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __CRStopSessionWithSessionIdentifier_block_invoke;
  v11[3] = &unk_1E82FCFD8;
  v12 = v5;
  v14 = a2;
  v13 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CRStopSessionWithSessionIdentifier_block_invoke_3;
  v9[3] = &unk_1E82FBF48;
  v10 = v13;
  v7 = v13;
  v8 = v5;
  CRServiceConnectionPerform(v11, v9);
}

void __CRStopSessionWithSessionIdentifier_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CRStopSessionWithSessionIdentifier_block_invoke_2;
  v9[3] = &unk_1E82FCEC0;
  v7 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v5;
  v8 = v5;
  [a2 stopSessionWithSessionIdentifier:v7 reason:v6 reply:v9];
}

uint64_t __CRStopSessionWithSessionIdentifier_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t __CRStopSessionWithSessionIdentifier_block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

id CARSignpostLogForCategory(unint64_t a1)
{
  if (a1 >= 4)
  {
    CARSignpostLogForCategory_cold_2();
  }

  if (CARSignpostLogForCategory_onceToken != -1)
  {
    CARSignpostLogForCategory_cold_1();
  }

  v2 = CARSignpostLogForCategory_logObjects[a1];

  return v2;
}

uint64_t __CARSignpostLogForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.carkit", "CarKit");
  v1 = CARSignpostLogForCategory_logObjects[0];
  CARSignpostLogForCategory_logObjects[0] = v0;

  v2 = os_log_create("com.apple.caraccessoryframework", "CAFData");
  v3 = qword_1EC29AF90;
  qword_1EC29AF90 = v2;

  v4 = os_log_create("com.apple.caraccessoryframework", "CAFCore");
  v5 = qword_1EC29AF98;
  qword_1EC29AF98 = v4;

  qword_1EC29AFA0 = os_log_create("com.apple.caraccessoryframework", "CAFAppLaunch");

  return MEMORY[0x1EEE66BB8]();
}

void CRCarPlayAppServicePolicyChangedHandler()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"com.apple.carkit.app.policy-changed" object:0 userInfo:0];
}

void sub_1C82312A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8231608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82320E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getLSApplicationRecordClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E82FD1F0;
    v6 = 0;
    CoreServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (CoreServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
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
  return result;
}

uint64_t __CoreServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkAssistantDirectActionEventKeySymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AssistantServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E82FD208;
    v7 = 0;
    AssistantServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = AssistantServicesLibraryCore_frameworkLibrary;
    if (AssistantServicesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = AssistantServicesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "kAssistantDirectActionEventKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAssistantDirectActionEventKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary = result;
  return result;
}

id CRCarPlayNavigationOwnersServiceInterface()
{
  if (CRCarPlayNavigationOwnersServiceInterface_onceToken != -1)
  {
    CRCarPlayNavigationOwnersServiceInterface_cold_1();
  }

  v1 = CRCarPlayNavigationOwnersServiceInterface_interface;

  return v1;
}

uint64_t __CRCarPlayNavigationOwnersServiceInterface_block_invoke()
{
  CRCarPlayNavigationOwnersServiceInterface_interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4803AC8];

  return MEMORY[0x1EEE66BB8]();
}

id CRCarPlayNavigationOwnerClientInterface()
{
  if (CRCarPlayNavigationOwnerClientInterface_onceToken != -1)
  {
    CRCarPlayNavigationOwnerClientInterface_cold_1();
  }

  v1 = CRCarPlayNavigationOwnerClientInterface_interface;

  return v1;
}

uint64_t __CRCarPlayNavigationOwnerClientInterface_block_invoke()
{
  CRCarPlayNavigationOwnerClientInterface_interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F47FCDA8];

  return MEMORY[0x1EEE66BB8]();
}

void sub_1C8233868(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1C8233D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C8235398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82362C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMFAACreateCertificateSerialNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MFAAuthenticationLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MFAAuthenticationLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E82FD310;
    v7 = 0;
    MFAAuthenticationLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = MFAAuthenticationLibraryCore_frameworkLibrary;
    if (MFAAuthenticationLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = MFAAuthenticationLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "MFAACreateCertificateSerialNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMFAACreateCertificateSerialNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MFAAuthenticationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MFAAuthenticationLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1C8236A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void _CRHandleRemoteControlEvent(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (CFEqual(a2, *MEMORY[0x1E69623E0]))
  {
    [v6 _dataReceived:a3];
  }

  else if (CFEqual(a2, *MEMORY[0x1E69623E8]))
  {
    [v6 _channelInvalidated];
  }
}

void sub_1C8237284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82380CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C823851C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_1C8238AA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

__CFString *CRCarPlayFeaturesName(uint64_t a1)
{
  if (!a1)
  {
    v2 = @"none";
    goto LABEL_17;
  }

  v1 = a1;
  if (a1 == -1)
  {
    v2 = @"all";
    goto LABEL_17;
  }

  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (v1)
  {
    [v3 addObject:@"AlternateScreen"];
    if ((v1 & 2) == 0)
    {
LABEL_7:
      if ((v1 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }
  }

  else if ((v1 & 2) == 0)
  {
    goto LABEL_7;
  }

  [v4 addObject:@"EnhancedSiri"];
  if ((v1 & 4) == 0)
  {
LABEL_8:
    if ((v1 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v4 addObject:@"HEVC"];
  if ((v1 & 8) == 0)
  {
LABEL_9:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v4 addObject:@"GaugeCluster"];
  if ((v1 & 0x10) == 0)
  {
LABEL_10:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v4 addObject:@"DataProtocol"];
  if ((v1 & 0x20) == 0)
  {
LABEL_11:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v4 addObject:@"PassengerDisplay"];
  if ((v1 & 0x40) == 0)
  {
LABEL_12:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v4 addObject:@"Video"];
  if ((v1 & 0x80) == 0)
  {
LABEL_13:
    if ((v1 & 0x100) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    [v4 addObject:@"LogTransfer"];
    if ((v1 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_27:
  [v4 addObject:@"SessionManagement"];
  if ((v1 & 0x100) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v1 & 0x200) != 0)
  {
LABEL_15:
    [v4 addObject:@"iAPChannel"];
  }

LABEL_16:
  v2 = [v4 componentsJoinedByString:@"|"];

LABEL_17:

  return v2;
}

id CRCarPlayFeaturesAsAirPlayFeatures(__int16 a1)
{
  v2 = [MEMORY[0x1E695DF70] arrayWithArray:&unk_1F47F2700];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"altScreen"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"enhancedSiri"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v3 addObject:@"hevc"];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v3 addObject:@"fileTransfer"];
  [v3 addObject:@"uiSync"];
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v3 addObject:@"vehicleStateProtocol"];
  if ((a1 & 0x80) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v3 addObject:@"sessionManagement"];
  if ((a1 & 0x40) == 0)
  {
LABEL_8:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v3 addObject:@"videoPlayback"];
  if ((a1 & 0x100) == 0)
  {
LABEL_9:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  [v3 addObject:@"logTransfer"];
  if ((a1 & 0x200) != 0)
  {
LABEL_10:
    [v3 addObject:@"iAPChannel"];
  }

LABEL_11:

  return v3;
}

void sub_1C8239FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C823A248(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1C823BEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_1C823E9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CRSessionBoostServiceInterface()
{
  if (CRSessionBoostServiceInterface_onceToken != -1)
  {
    CRSessionBoostServiceInterface_cold_1();
  }

  v1 = CRSessionBoostServiceInterface_interface;

  return v1;
}

uint64_t __CRSessionBoostServiceInterface_block_invoke()
{
  CRSessionBoostServiceInterface_interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4803D08];

  return MEMORY[0x1EEE66BB8]();
}

id CRSessionBoostClientInterface()
{
  if (CRSessionBoostClientInterface_onceToken != -1)
  {
    CRSessionBoostClientInterface_cold_1();
  }

  v1 = CRSessionBoostClientInterface_interface;

  return v1;
}

uint64_t __CRSessionBoostClientInterface_block_invoke()
{
  CRSessionBoostClientInterface_interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4803D68];

  return MEMORY[0x1EEE66BB8]();
}

void sub_1C82411E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C824148C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8242034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C8242B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void CARHandleSuggestUI(void *a1, void *a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = CarGeneralLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v28 = v7;
    v29 = 2114;
    v30 = v8;
    v31 = 2114;
    v32 = v9;
    _os_log_impl(&dword_1C81FC000, v11, OS_LOG_TYPE_DEFAULT, "In URLS: %{public}@, iOS URLS: %{public}@, info response URLs: %{public}@", buf, 0x20u);
  }

  v12 = [v7 bs_filter:&__block_literal_global_414];
  v13 = CarGeneralLogging();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v28 = v12;
    _os_log_impl(&dword_1C81FC000, v13, OS_LOG_TYPE_DEFAULT, "Sanitized suggested URLs = %{public}@", buf, 0xCu);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __CARHandleSuggestUI_block_invoke_415;
  v25[3] = &unk_1E82FD9A8;
  v14 = v9;
  v26 = v14;
  v15 = [v8 bs_filter:v25];
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __CARHandleSuggestUI_block_invoke_2;
  v22[3] = &unk_1E82FD9D0;
  v17 = v12;
  v23 = v17;
  v18 = v16;
  v24 = v18;
  [v15 enumerateObjectsUsingBlock:v22];
  v19 = CarGeneralLogging();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v28 = v17;
    v29 = 2114;
    v30 = v8;
    v31 = 2114;
    v32 = v14;
    v33 = 2114;
    v34 = v18;
    _os_log_impl(&dword_1C81FC000, v19, OS_LOG_TYPE_DEFAULT, "suggestUI URL list %{public}@, app supported list: %{public}@, session list: %{public}@, intersect list %{public}@", buf, 0x2Au);
  }

  v20 = [MEMORY[0x1E695DF20] dictionaryWithObject:v18 forKey:@"urls"];
  v21 = CarGeneralLogging();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v28 = v20;
    _os_log_impl(&dword_1C81FC000, v21, OS_LOG_TYPE_DEFAULT, "Parameters for suggest UI Command: %{public}@", buf, 0xCu);
  }

  v10[2](v10, v20);
}

BOOL __CARHandleSuggestUI_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 absoluteString];
  v3 = v2 != 0;

  return v3;
}

uint64_t __CARHandleSuggestUI_block_invoke_415(uint64_t a1, void *a2)
{
  v3 = [a2 absoluteString];
  if (v3)
  {
    v4 = [*(a1 + 32) containsObject:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __CARHandleSuggestUI_block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) containsObject:v5])
  {
    v3 = [v5 absoluteString];
    if (v3 && ([*(a1 + 40) containsObject:v3] & 1) == 0)
    {
      [*(a1 + 40) addObject:v3];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

void sub_1C8246014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CARSesssionStatusChangedCallback()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"CARSessionStatusChangedNotification" object:0 userInfo:0];
}

void sub_1C8246C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

float CARGetMinimumScaleForProposedScaleOnDisplay(void *a1, float a2)
{
  v3 = a1;
  v4 = [[CARSessionStatus alloc] initAndWaitUntilSessionUpdated];
  v5 = [v4 currentSession];
  v6 = [v5 configuration];
  v7 = [v6 screenInfoForScreenID:v3];

  v8 = _CARGetMinimumScaleForScreenInfo(v7, a2);
  return v8;
}

float _CARGetMinimumScaleForScreenInfo(void *a1, float a2)
{
  v3 = a1;
  if (![v3 screenType])
  {
    v5 = _CARGetMinimumScaleForProposedScaleForScreenInfo(v3, a2);
    goto LABEL_5;
  }

  v4 = 2.0;
  if ([v3 screenType] == 1)
  {
    _CARGetMinimumScaleForSecondaryScreenInfo(v3);
LABEL_5:
    v4 = v5;
  }

  return v4;
}

float _CARGetMinimumScaleForProposedScaleForScreenInfo(void *a1, float a2)
{
  v3 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = a2;
  v4 = [v3 viewAreas];

  if (v4)
  {
    v5 = [v3 viewAreas];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ___CARGetMinimumScaleForProposedScaleForScreenInfo_block_invoke;
    v8[3] = &unk_1E82FDA68;
    v8[4] = &v9;
    [v5 enumerateObjectsUsingBlock:v8];
  }

  v6 = v10[6];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void sub_1C82480E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _CARGetMinimumScaleForSecondaryScreenInfo(void *a1)
{
  v1 = a1;
  [v1 physicalSize];
  [v1 pixelSize];
}

void sessionUpdatesQueue_endpointNotificationCallback(uint64_t a1, void *a2, void *a3, uint64_t a4, NSObject *a5)
{
  v74 = *MEMORY[0x1E69E9840];
  v8 = +[CARSessionStatus sessionUpdatesQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = a2;
  v11 = a3;
  if (sessionUpdatesQueue_endpointNotificationCallback_createFigToAVFNotificationMappingOnce != -1)
  {
    sessionUpdatesQueue_endpointNotificationCallback_cold_1();
  }

  v12 = [sessionUpdatesQueue_endpointNotificationCallback_figToCARSessionNotificationMapping objectForKey:v11];
  if (v12)
  {
    v13 = a5;
    v14 = CarGeneralLogging();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v71 = v12;
      v72 = 2112;
      v73 = v13;
      _os_log_impl(&dword_1C81FC000, v14, OS_LOG_TYPE_DEFAULT, "posting session notification %{public}@ %@", buf, 0x16u);
    }

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 postNotificationName:v12 object:v10 userInfo:v13];
    goto LABEL_7;
  }

  if ([v11 isEqualToString:*MEMORY[0x1E69619A0]])
  {
    v16 = CarGeneralLogging();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sessionUpdatesQueue_endpointNotificationCallback_cold_6();
    }

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = v17;
    v18 = @"CARSessionServerConnectionDiedNotification";
LABEL_20:
    [v17 postNotificationName:v18 object:v10];
    goto LABEL_21;
  }

  if ([v11 isEqualToString:*MEMORY[0x1E6961930]])
  {
    v19 = CarGeneralLogging();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sessionUpdatesQueue_endpointNotificationCallback_cold_5();
    }

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = v17;
    v18 = @"CARSessionAuthenticationSucceededNotification";
    goto LABEL_20;
  }

  if ([v11 isEqualToString:*MEMORY[0x1E6961958]])
  {
    v20 = CarGeneralLogging();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sessionUpdatesQueue_endpointNotificationCallback_cold_4();
    }

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = v17;
    v18 = @"CARSessionEndpointActivatedNotification";
    goto LABEL_20;
  }

  if ([v11 isEqualToString:*MEMORY[0x1E6961968]])
  {
    v21 = CarGeneralLogging();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sessionUpdatesQueue_endpointNotificationCallback_cold_3();
    }

    [v10 _sessionUpdatesQueue_handleEndpointDescriptionChanged];
    goto LABEL_22;
  }

  if ([v11 isEqualToString:*MEMORY[0x1E69619C0]])
  {
    v22 = CarGeneralLogging();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v71 = a5;
      _os_log_impl(&dword_1C81FC000, v22, OS_LOG_TYPE_INFO, "vehicle information changed %@", buf, 0xCu);
    }

    v13 = [a5 objectForKey:*MEMORY[0x1E69626F0]];
    if (!v13)
    {
      goto LABEL_21;
    }

    if (v10[4])
    {
      v23 = [v10 inputDeviceManager];
      [v23 vehicleInformationChanged:v13];
    }

    v24 = [v13 valueForKey:*MEMORY[0x1E69626F8]];

    if (!v24)
    {
      goto LABEL_21;
    }

    v25 = CarGeneralLogging();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C81FC000, v25, OS_LOG_TYPE_INFO, "electronic toll collection state changed", buf, 2u);
    }

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 postNotificationName:@"CARSessionElectronicTollCollectionStateChangedNotification" object:v10];
    goto LABEL_7;
  }

  if ([v11 isEqualToString:*MEMORY[0x1E69619E8]])
  {
    v26 = CarGeneralLogging();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v71 = a5;
      _os_log_impl(&dword_1C81FC000, v26, OS_LOG_TYPE_DEFAULT, "application URL requested: %@", buf, 0xCu);
    }

    v13 = [a5 objectForKey:*MEMORY[0x1E6962708]];
    [v10 _sessionUpdatesQueue_handleOpenURL:v13];
    goto LABEL_21;
  }

  if ([v11 isEqualToString:*MEMORY[0x1E69619A8]])
  {
    v27 = CarGeneralLogging();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v71 = a5;
      _os_log_impl(&dword_1C81FC000, v27, OS_LOG_TYPE_DEFAULT, "Siri requested: %@", buf, 0xCu);
    }

    v28 = [a5 objectForKey:*MEMORY[0x1E69624E8]];
    [v10 _sessionUpdatesQueue_handleSiriRequestEvent:+[CARSession _siriRequestEventForEndpointAction:](CARSession withPayload:{"_siriRequestEventForEndpointAction:", v28), a5}];

    goto LABEL_22;
  }

  if ([v11 isEqualToString:*MEMORY[0x1E6961948]])
  {
    v29 = CarGeneralLogging();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v71 = a5;
      _os_log_impl(&dword_1C81FC000, v29, OS_LOG_TYPE_DEFAULT, "Alternate test Siri requested: %@", buf, 0xCu);
    }

    v13 = [a5 objectForKey:*MEMORY[0x1E69616F0]];
    v15 = [v13 objectForKey:*MEMORY[0x1E69624E8]];
    [v10 _sessionUpdatesQueue_handleSiriRequestEvent:+[CARSession _siriRequestEventForEndpointAction:](CARSession withPayload:{"_siriRequestEventForEndpointAction:", v15), v13}];
    goto LABEL_7;
  }

  if ([v11 isEqualToString:*MEMORY[0x1E69619C8]])
  {
    v30 = CarGeneralLogging();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v71 = a5;
      _os_log_impl(&dword_1C81FC000, v30, OS_LOG_TYPE_DEFAULT, "View area change received: %@", buf, 0xCu);
    }

    [v10 _sessionUpdatesQueue_handleViewAreaChangeWithPayload:a5];
    goto LABEL_22;
  }

  if (![v11 isEqualToString:*MEMORY[0x1E6961980]])
  {
    if ([v11 isEqualToString:*MEMORY[0x1E6961990]])
    {
      v13 = a5;
      v45 = CarGeneralLogging();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v71 = v13;
        _os_log_impl(&dword_1C81FC000, v45, OS_LOG_TYPE_DEFAULT, "System night mode changed: %@", buf, 0xCu);
      }

      v15 = [v13 objectForKeyedSubscript:*MEMORY[0x1E6961858]];
      v46 = [v13 objectForKeyedSubscript:*MEMORY[0x1E6961900]];
      if (v15)
      {
        v47 = [v10 configuration];
        v48 = [v47 screenInfoForScreenID:v15];

        [v48 nightModeChanged:{objc_msgSend(v46, "BOOLValue")}];
      }

      [v10 setSystemNightMode:v46];
      v49 = [v10 appearanceManager];
      [v49 handleNightModeUpdateWithParameters:v13];

      [v10 _sessionUpdatesQueue_handleNightModeChange];
    }

    else if ([v11 isEqualToString:*MEMORY[0x1E69619B8]])
    {
      v50 = *MEMORY[0x1E69626E8];
      v51 = a5;
      v13 = [v51 objectForKeyedSubscript:v50];
      v15 = [v51 objectForKeyedSubscript:*MEMORY[0x1E69626E0]];

      if (([v10 sessionStatusOptions] & 2) == 0)
      {
        goto LABEL_7;
      }

      if ([v13 isEqualToString:@"showUI"])
      {
        v52 = CarGeneralLogging();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v71 = v15;
          _os_log_impl(&dword_1C81FC000, v52, OS_LOG_TYPE_DEFAULT, "ShowUI requested with %@", buf, 0xCu);
        }

        [v10 _sessionUpdatesQueue_handleShowUIWithParameters:v15];
        goto LABEL_7;
      }

      if ([v13 isEqualToString:@"stopUI"])
      {
        v57 = CarGeneralLogging();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v71 = v15;
          _os_log_impl(&dword_1C81FC000, v57, OS_LOG_TYPE_DEFAULT, "StopUI requested with %@", buf, 0xCu);
        }

        [v10 _sessionUpdatesQueue_handleStopUIWithParameters:v15];
        goto LABEL_7;
      }

      if ([v13 isEqualToString:@"uiAppearanceUpdate"])
      {
        v58 = CarGeneralLogging();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v71 = v15;
          _os_log_impl(&dword_1C81FC000, v58, OS_LOG_TYPE_DEFAULT, "setAppearanceMode called with %@", buf, 0xCu);
        }

        [v10 _sessionUpdatesQueue_handleAppearanceModeUpdateWithParameters:v15];
        goto LABEL_7;
      }

      if ([v13 isEqualToString:@"mapAppearanceUpdate"])
      {
        v59 = CarGeneralLogging();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v71 = v15;
          _os_log_impl(&dword_1C81FC000, v59, OS_LOG_TYPE_DEFAULT, "setMapAppearanceMode called with %@", buf, 0xCu);
        }

        [v10 _sessionUpdatesQueue_handleMapAppearanceModeUpdateWithParameters:v15];
        goto LABEL_7;
      }

      if ([v13 isEqualToString:@"updateDisplayPanels"])
      {
        [v10 _sessionUpdatesQueue_handleDisplayPluginsUpdateWithParameters:v15];
        goto LABEL_7;
      }

      v60 = CarGeneralLogging();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v71 = v13;
        v72 = 2112;
        v73 = v15;
        _os_log_impl(&dword_1C81FC000, v60, OS_LOG_TYPE_DEFAULT, "Received unhandled remote event %@ with %@", buf, 0x16u);
      }

      v46 = [v10 observers];
      [v46 session:v10 receivedUnhandledRemoteEvent:v13 withPayload:v15];
    }

    else
    {
      if (![v11 isEqualToString:*MEMORY[0x1E6961618]])
      {
        if (![v11 isEqualToString:*MEMORY[0x1E6961700]])
        {
          goto LABEL_22;
        }

        v13 = [a5 objectForKeyedSubscript:*MEMORY[0x1E69616E8]];
        v56 = CarGeneralLogging();
        v15 = v56;
        if (v13)
        {
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v71 = v13;
            _os_log_impl(&dword_1C81FC000, v15, OS_LOG_TYPE_DEFAULT, "starting video playback for app: %@", buf, 0xCu);
          }

          [v10 _sessionUpdatesQueue_handleIsPlayingVideoFromApp:v13];
          goto LABEL_21;
        }

        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          sessionUpdatesQueue_endpointNotificationCallback_cold_2();
        }

        goto LABEL_7;
      }

      v13 = a5;
      v53 = CarGeneralLogging();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v71 = v13;
        _os_log_impl(&dword_1C81FC000, v53, OS_LOG_TYPE_DEFAULT, "Enhanced Siri parameters changed: %@", buf, 0xCu);
      }

      v54 = [v13 objectForKeyedSubscript:*MEMORY[0x1E6961828]];
      v15 = v54;
      if (v54)
      {
        v55 = [v54 integerValue];
      }

      else
      {
        v55 = -1;
      }

      v10[5] = v55;
      v46 = [MEMORY[0x1E696AD88] defaultCenter];
      [v46 postNotificationName:@"CARSessionVoiceTriggerModeChangedNotification" object:v10 userInfo:v13];
    }

LABEL_7:
LABEL_21:

    goto LABEL_22;
  }

  v62 = v9;
  v31 = a5;
  v32 = CarGeneralLogging();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v71 = v31;
    _os_log_impl(&dword_1C81FC000, v32, OS_LOG_TYPE_DEFAULT, "Limited UI changed: %@", buf, 0xCu);
  }

  v33 = [v31 objectForKeyedSubscript:*MEMORY[0x1E6961858]];
  v61 = v31;
  v34 = [v31 objectForKeyedSubscript:*MEMORY[0x1E6961860]];
  v63 = [v34 BOOLValue];

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v35 = [v10 configuration];
  v36 = [v35 screens];

  obj = v36;
  v37 = [v36 countByEnumeratingWithState:&v65 objects:v69 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v66;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v66 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v41 = *(*(&v65 + 1) + 8 * i);
        v42 = [v41 identifier];
        v43 = [v42 isEqualToString:v33];

        if (v43)
        {
          [v41 limitedUIChanged:v63];
        }
      }

      v38 = [obj countByEnumeratingWithState:&v65 objects:v69 count:16];
    }

    while (v38);
  }

  v44 = [MEMORY[0x1E696AD88] defaultCenter];
  [v44 postNotificationName:@"CARSessionLimitUserInterfacesChangedNotification" object:v10 userInfo:v61];

  v9 = v62;
LABEL_22:

  objc_autoreleasePoolPop(v9);
}

uint64_t __sessionUpdatesQueue_endpointNotificationCallback_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF20]);
  sessionUpdatesQueue_endpointNotificationCallback_figToCARSessionNotificationMapping = [v0 initWithObjectsAndKeys:{@"CARSessionScreenBecameAvailableNotification", *MEMORY[0x1E6961708], @"CARSessionScreenBecameUnavailableNotification", *MEMORY[0x1E6961710], @"CARSessioniOSHasMainAudioNotification", *MEMORY[0x1E6961718], @"CARSessionCarHasMainAudioNotification", *MEMORY[0x1E69616F8], @"CARSessionOwnsTurnByTurnNavigationChangedNotification", *MEMORY[0x1E6961720], @"CARSessionPerformanceReportPostedNotification", *MEMORY[0x1E6961998], 0}];

  return MEMORY[0x1EEE66BB8]();
}

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void sub_1C82494BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C824964C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C824982C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C824ABE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C824AFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CRHomeScreenStyleData.styleType.getter()
{
  v1 = OBJC_IVAR___CRHomeScreenStyleData_styleType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRHomeScreenStyleData.styleType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CRHomeScreenStyleData_styleType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1C824B67C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 styleType];
  *a2 = result;
  return result;
}

uint64_t CRHomeScreenStyleData.styleVariant.getter()
{
  v1 = OBJC_IVAR___CRHomeScreenStyleData_styleVariant;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRHomeScreenStyleData.styleVariant.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CRHomeScreenStyleData_styleVariant;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1C824B7F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 styleVariant];
  *a2 = result;
  return result;
}

double CRHomeScreenStyleData.variation.getter()
{
  v1 = OBJC_IVAR___CRHomeScreenStyleData_variation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRHomeScreenStyleData.variation.setter(double a1)
{
  v3 = OBJC_IVAR___CRHomeScreenStyleData_variation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1C824B96C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 variation];
  *a2 = v4;
  return result;
}

double CRHomeScreenStyleData.luminance.getter()
{
  v1 = OBJC_IVAR___CRHomeScreenStyleData_luminance;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRHomeScreenStyleData.luminance.setter(double a1)
{
  v3 = OBJC_IVAR___CRHomeScreenStyleData_luminance;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1C824BAE4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 luminance];
  *a2 = v4;
  return result;
}

double CRHomeScreenStyleData.saturation.getter()
{
  v1 = OBJC_IVAR___CRHomeScreenStyleData_saturation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRHomeScreenStyleData.saturation.setter(double a1)
{
  v3 = OBJC_IVAR___CRHomeScreenStyleData_saturation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1C824BC5C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 saturation];
  *a2 = v4;
  return result;
}

void __swiftcall CRHomeScreenStyleData.init(dictionary:)(CRHomeScreenStyleData_optional *__return_ptr retstr, Swift::OpaquePointer dictionary)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C8254DD4();

  [v2 initWithDictionary_];
}

id CRHomeScreenStyleData.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [ObjCClassFromMetadata styleTypeKey];
  v6 = sub_1C8254E04();
  v8 = v7;

  if (*(a1 + 16))
  {
    v9 = sub_1C824D3D4(v6, v8);
    v11 = v10;

    if (v11)
    {
      sub_1C824D44C(*(a1 + 56) + 32 * v9, v47);
      if (swift_dynamicCast())
      {
        v12 = *&v46;
        goto LABEL_7;
      }
    }
  }

  else
  {
  }

  v12 = 2;
LABEL_7:
  v13 = [ObjCClassFromMetadata styleVariantKey];
  v14 = sub_1C8254E04();
  v16 = v15;

  if (*(a1 + 16))
  {
    v17 = sub_1C824D3D4(v14, v16);
    v19 = v18;

    if (v19)
    {
      sub_1C824D44C(*(a1 + 56) + 32 * v17, v47);
      if (swift_dynamicCast())
      {
        v20 = *&v46;
        goto LABEL_13;
      }
    }
  }

  else
  {
  }

  v20 = 2;
LABEL_13:
  v21 = [ObjCClassFromMetadata variationKey];
  v22 = sub_1C8254E04();
  v24 = v23;

  if (*(a1 + 16))
  {
    v25 = sub_1C824D3D4(v22, v24);
    v27 = v26;

    v28 = 0.0;
    if (v27)
    {
      sub_1C824D44C(*(a1 + 56) + 32 * v25, v47);
      if (swift_dynamicCast())
      {
        v28 = v46;
      }
    }
  }

  else
  {

    v28 = 0.0;
  }

  v29 = [ObjCClassFromMetadata luminanceKey];
  v30 = sub_1C8254E04();
  v32 = v31;

  if (*(a1 + 16))
  {
    v33 = sub_1C824D3D4(v30, v32);
    v35 = v34;

    v36 = 0.0;
    if (v35)
    {
      sub_1C824D44C(*(a1 + 56) + 32 * v33, v47);
      if (swift_dynamicCast())
      {
        v36 = v46;
      }
    }
  }

  else
  {

    v36 = 0.0;
  }

  v37 = [ObjCClassFromMetadata saturationKey];
  v38 = sub_1C8254E04();
  v40 = v39;

  if (!*(a1 + 16))
  {

    goto LABEL_28;
  }

  v41 = sub_1C824D3D4(v38, v40);
  v43 = v42;

  if ((v43 & 1) == 0)
  {
LABEL_28:

    goto LABEL_29;
  }

  sub_1C824D44C(*(a1 + 56) + 32 * v41, v47);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    v44 = 0.0;
    return [v2 initWithStyleType:v12 styleVariant:v20 variation:v28 luminance:v36 saturation:v44];
  }

  v44 = v46;
  return [v2 initWithStyleType:v12 styleVariant:v20 variation:v28 luminance:v36 saturation:v44];
}

id CRHomeScreenStyleData.init(styleType:styleVariant:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v4 initWithStyleType:a1 styleVariant:a2];
}

{
  return [v2 initWithStyleType:a1 styleVariant:a2 variation:0.0 luminance:0.0 saturation:0.0];
}

id CRHomeScreenStyleData.init(styleType:styleVariant:variation:luminance:saturation:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v10 initWithStyleType:a1 styleVariant:a2 variation:a3 luminance:a4 saturation:a5];
}

{
  *(v5 + OBJC_IVAR___CRHomeScreenStyleData_styleType) = a1;
  *(v5 + OBJC_IVAR___CRHomeScreenStyleData_styleVariant) = a2;
  *(v5 + OBJC_IVAR___CRHomeScreenStyleData_variation) = a3;
  *(v5 + OBJC_IVAR___CRHomeScreenStyleData_luminance) = a4;
  *(v5 + OBJC_IVAR___CRHomeScreenStyleData_saturation) = a5;
  v7.super_class = CRHomeScreenStyleData;
  return objc_msgSendSuper2(&v7, sel_init);
}

unint64_t CRHomeScreenStyleData.asDictionary.getter()
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29ACD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C825BA50;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [ObjCClassFromMetadata styleTypeKey];
  v4 = sub_1C8254E04();
  v6 = v5;

  *(inited + 32) = v4;
  *(inited + 40) = v6;
  [v0 styleType];
  v7 = sub_1C8254E74();
  v8 = sub_1C824DDE4(0, &qword_1EC29ACE0);
  *(inited + 72) = v8;
  *(inited + 48) = v7;
  v9 = [ObjCClassFromMetadata styleVariantKey];
  v10 = sub_1C8254E04();
  v12 = v11;

  *(inited + 80) = v10;
  *(inited + 88) = v12;
  [v0 styleVariant];
  v13 = sub_1C8254E74();
  *(inited + 120) = v8;
  *(inited + 96) = v13;
  v14 = [ObjCClassFromMetadata variationKey];
  v15 = sub_1C8254E04();
  v17 = v16;

  *(inited + 128) = v15;
  *(inited + 136) = v17;
  [v0 variation];
  v18 = sub_1C8254E54();
  *(inited + 168) = v8;
  *(inited + 144) = v18;
  v19 = [ObjCClassFromMetadata luminanceKey];
  v20 = sub_1C8254E04();
  v22 = v21;

  *(inited + 176) = v20;
  *(inited + 184) = v22;
  [v0 luminance];
  v23 = sub_1C8254E54();
  *(inited + 216) = v8;
  *(inited + 192) = v23;
  v24 = [ObjCClassFromMetadata saturationKey];
  v25 = sub_1C8254E04();
  v27 = v26;

  *(inited + 224) = v25;
  *(inited + 232) = v27;
  [v0 saturation];
  v28 = sub_1C8254E54();
  *(inited + 264) = v8;
  *(inited + 240) = v28;
  v29 = sub_1C824D5A8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29ACE8);
  swift_arrayDestroy();
  return v29;
}

BOOL CRHomeScreenStyleData.isEqual(_:)(uint64_t a1)
{
  v2 = sub_1C824DE2C(a1, v17, &unk_1EC29ACF0);
  if (v18)
  {
    type metadata accessor for CRHomeScreenStyleData(v2);
    if (swift_dynamicCast())
    {
      v3 = [v1 styleType];
      if (v3 == [v16 styleType])
      {
        v4 = [v1 styleVariant];
        if (v4 == [v16 styleVariant])
        {
          [v1 variation];
          v6 = v5;
          [v16 variation];
          if (v6 == v7)
          {
            [v1 luminance];
            v9 = v8;
            [v16 luminance];
            if (v9 == v10)
            {
              [v1 saturation];
              v12 = v11;
              [v16 saturation];
              v14 = v13;

              return v12 == v14;
            }
          }
        }
      }
    }
  }

  else
  {
    sub_1C824D6D8(v17);
  }

  return 0;
}

uint64_t CRHomeScreenStyleData.description.getter()
{
  sub_1C8254EC4();
  MEMORY[0x1CCA71880](0x707954656C797473, 0xEB00000000203A65);
  [v0 styleType];
  type metadata accessor for CRHomeScreenStyleType(0);
  sub_1C8254EE4();
  MEMORY[0x1CCA71880](0x6156656C7973202CLL, 0xEF203A746E616972);
  [v0 styleVariant];
  type metadata accessor for CRHomeScreenStyleVariant(0);
  sub_1C8254EE4();
  MEMORY[0x1CCA71880](0x746169726176202CLL, 0xED0000203A6E6F69);
  [v0 variation];
  sub_1C8254E64();
  MEMORY[0x1CCA71880](0x616E696D756C202CLL, 0xED0000203A65636ELL);
  [v0 luminance];
  sub_1C8254E64();
  MEMORY[0x1CCA71880](0x617275746173202CLL, 0xEE00203A6E6F6974);
  [v0 saturation];
  sub_1C8254E64();
  return 0;
}

uint64_t CRHomeScreenStyleData.copy(with:)@<X0>(void *a1@<X8>)
{
  v3 = [v1 styleType];
  v4 = [v1 styleVariant];
  [v1 variation];
  v6 = v5;
  [v1 luminance];
  v8 = v7;
  [v1 saturation];
  v10 = [objc_allocWithZone(CRHomeScreenStyleData) initWithStyleType:v3 styleVariant:v4 variation:v6 luminance:v8 saturation:v9];
  result = type metadata accessor for CRHomeScreenStyleData(v10);
  a1[3] = result;
  *a1 = v10;
  return result;
}

Swift::Void __swiftcall CRHomeScreenStyleData.encode(with:)(NSCoder with)
{
  swift_getObjectType();
  v3 = [v1 styleType];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [ObjCClassFromMetadata styleTypeKey];
  if (!v5)
  {
    sub_1C8254E04();
    v5 = sub_1C8254DF4();
  }

  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v5];

  v6 = [v1 styleVariant];
  v7 = [ObjCClassFromMetadata styleVariantKey];
  if (!v7)
  {
    sub_1C8254E04();
    v7 = sub_1C8254DF4();
  }

  [(objc_class *)with.super.isa encodeInteger:v6 forKey:v7];

  [v1 variation];
  v9 = v8;
  v10 = [ObjCClassFromMetadata variationKey];
  if (!v10)
  {
    sub_1C8254E04();
    v10 = sub_1C8254DF4();
  }

  [(objc_class *)with.super.isa encodeDouble:v10 forKey:v9];

  [v1 luminance];
  v12 = v11;
  v13 = [ObjCClassFromMetadata luminanceKey];
  if (!v13)
  {
    sub_1C8254E04();
    v13 = sub_1C8254DF4();
  }

  [(objc_class *)with.super.isa encodeDouble:v13 forKey:v12];

  [v1 saturation];
  v15 = v14;
  v16 = [ObjCClassFromMetadata saturationKey];
  if (!v16)
  {
    sub_1C8254E04();
    v17 = sub_1C8254DF4();

    v16 = v17;
  }

  v18 = v16;
  [(objc_class *)with.super.isa encodeDouble:v15 forKey:?];
}

id CRHomeScreenStyleData.init(coder:)(void *a1)
{
  v2 = sub_1C824D7C8(a1);

  return v2;
}

void CRHomeScreenStyleData.encode(withBSXPCCoder:)(void *a1)
{
  swift_getObjectType();
  [v1 styleType];
  v3 = sub_1C8254E74();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [ObjCClassFromMetadata styleTypeKey];
  if (!v5)
  {
    sub_1C8254E04();
    v5 = sub_1C8254DF4();
  }

  [a1 encodeObject:v3 forKey:v5];

  [v1 styleVariant];
  v6 = sub_1C8254E74();
  v7 = [ObjCClassFromMetadata styleVariantKey];
  if (!v7)
  {
    sub_1C8254E04();
    v7 = sub_1C8254DF4();
  }

  [a1 encodeObject:v6 forKey:v7];

  [v1 variation];
  v9 = v8;
  v10 = [ObjCClassFromMetadata variationKey];
  if (!v10)
  {
    sub_1C8254E04();
    v10 = sub_1C8254DF4();
  }

  [a1 encodeDouble:v10 forKey:v9];

  [v1 luminance];
  v12 = v11;
  v13 = [ObjCClassFromMetadata luminanceKey];
  if (!v13)
  {
    sub_1C8254E04();
    v13 = sub_1C8254DF4();
  }

  [a1 encodeDouble:v13 forKey:v12];

  [v1 saturation];
  v15 = v14;
  v16 = [ObjCClassFromMetadata saturationKey];
  if (!v16)
  {
    sub_1C8254E04();
    v17 = sub_1C8254DF4();

    v16 = v17;
  }

  v18 = v16;
  [a1 encodeDouble:v15 forKey:?];
}

id CRHomeScreenStyleData.init(bsxpcCoder:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBSXPCCoder_];
  swift_unknownObjectRelease();
  return v1;
}

id CRHomeScreenStyleData.init(bsxpcCoder:)(void *a1)
{
  v1 = sub_1C824D9E4(a1);
  swift_unknownObjectRelease();
  return v1;
}

void __swiftcall CRHomeScreenStyleData.init()(CRHomeScreenStyleData *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t sub_1C824D3D4(uint64_t a1, uint64_t a2)
{
  sub_1C8254F14();
  sub_1C8254E24();
  v4 = sub_1C8254F34();

  return sub_1C824D4F0(a1, a2, v4);
}

uint64_t sub_1C824D44C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

unint64_t sub_1C824D4F0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1C8254F04())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1C824D5A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29AE98);
    v3 = sub_1C8254EF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C824DE2C(v4, &v13, &qword_1EC29ACE8);
      v5 = v13;
      v6 = v14;
      result = sub_1C824D3D4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C824DE94(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C824D6D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29ACF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C824D77C(uint64_t a1, unint64_t *a2)
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

id sub_1C824D7C8(void *a1)
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [ObjCClassFromMetadata styleTypeKey];
  if (!v4)
  {
    sub_1C8254E04();
    v4 = sub_1C8254DF4();
  }

  v5 = [a1 decodeIntegerForKey_];

  v6 = [ObjCClassFromMetadata styleVariantKey];
  if (!v6)
  {
    sub_1C8254E04();
    v6 = sub_1C8254DF4();
  }

  v7 = [a1 decodeIntegerForKey_];

  v8 = [ObjCClassFromMetadata variationKey];
  if (!v8)
  {
    sub_1C8254E04();
    v8 = sub_1C8254DF4();
  }

  [a1 decodeDoubleForKey_];
  v10 = v9;

  v11 = [ObjCClassFromMetadata luminanceKey];
  if (!v11)
  {
    sub_1C8254E04();
    v11 = sub_1C8254DF4();
  }

  [a1 decodeDoubleForKey_];
  v13 = v12;

  v14 = [ObjCClassFromMetadata saturationKey];
  if (!v14)
  {
    sub_1C8254E04();
    v14 = sub_1C8254DF4();
  }

  [a1 decodeDoubleForKey_];
  v16 = v15;

  return [v1 initWithStyleType:v5 styleVariant:v7 variation:v10 luminance:v13 saturation:v16];
}

id sub_1C824D9E4(void *a1)
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [ObjCClassFromMetadata styleTypeKey];
  if (!v4)
  {
    sub_1C8254E04();
    v4 = sub_1C8254DF4();
  }

  sub_1C824DDE4(0, &qword_1EC29AE90);
  v5 = swift_getObjCClassFromMetadata();
  v6 = [a1 decodeObjectOfClass:v5 forKey:v4];

  if (v6)
  {
    sub_1C8254EA4();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  if (*(&v22 + 1))
  {
    if (swift_dynamicCast())
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        *&v23 = 0;
        BYTE8(v23) = 1;
        sub_1C8254E84();
      }
    }
  }

  else
  {
    sub_1C824D6D8(&v23);
  }

  v7 = [ObjCClassFromMetadata styleVariantKey];
  if (!v7)
  {
    sub_1C8254E04();
    v7 = sub_1C8254DF4();
  }

  v8 = [a1 decodeObjectOfClass:v5 forKey:v7];

  if (v8)
  {
    sub_1C8254EA4();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  if (*(&v22 + 1))
  {
    if (swift_dynamicCast())
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        *&v23 = 0;
        BYTE8(v23) = 1;
        sub_1C8254E84();

        if (BYTE8(v23) != 1)
        {
          v9 = v23;
          goto LABEL_26;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1C824D6D8(&v23);
  }

  v9 = 2;
LABEL_26:
  v10 = [ObjCClassFromMetadata variationKey];
  if (!v10)
  {
    sub_1C8254E04();
    v10 = sub_1C8254DF4();
  }

  [a1 decodeDoubleForKey_];
  v12 = v11;

  v13 = [ObjCClassFromMetadata luminanceKey];
  if (!v13)
  {
    sub_1C8254E04();
    v13 = sub_1C8254DF4();
  }

  [a1 decodeDoubleForKey_];
  v15 = v14;

  v16 = [ObjCClassFromMetadata saturationKey];
  if (!v16)
  {
    sub_1C8254E04();
    v16 = sub_1C8254DF4();
  }

  [a1 decodeDoubleForKey_];
  v18 = v17;

  return [v1 initWithStyleType:2 styleVariant:v9 variation:v12 luminance:v15 saturation:v18];
}

uint64_t sub_1C824DDE4(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1C824DE2C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

_OWORD *sub_1C824DE94(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1C824DEAC()
{
  v0 = sub_1C8254DC4();
  __swift_allocate_value_buffer(v0, qword_1EC29B800);
  __swift_project_value_buffer(v0, qword_1EC29B800);
  return sub_1C8254DB4();
}

uint64_t sub_1C824DF30()
{
  if (qword_1EC29B470 != -1)
  {
    swift_once();
  }

  v0 = sub_1C8254DC4();

  return __swift_project_value_buffer(v0, qword_1EC29B800);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1C824DFCC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC29B470 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8254DC4();
  v3 = __swift_project_value_buffer(v2, qword_1EC29B800);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C824E074(uint64_t a1)
{
  v1 = &byte_1F47DE139;
  v2 = 7;
  do
  {
    v3 = *(v1 - 41);
    v4 = *(v1 - 33);
    v5 = *(v1 - 25);
    if (*(v1 - 1) & 1) != 0 || (*(a1 + 40))
    {
      if (v3 == *a1 && v4 == *(a1 + 8) && v5 == *(a1 + 16))
      {
        return *v1;
      }
    }

    else if (vabdd_f64(*(v1 - 17), *(a1 + 24)) <= 1.0 && v3 == *a1 && v4 == *(a1 + 8))
    {
      v6 = vabdd_f64(*(v1 - 9), *(a1 + 32));
      if (v5 == *(a1 + 16) && v6 <= 1.0)
      {
        return *v1;
      }
    }

    v1 += 48;
    --v2;
  }

  while (v2);
  return 0;
}

uint64_t sub_1C824E178(unsigned __int8 a1)
{
  sub_1C8254F14();
  MEMORY[0x1CCA71970](a1);
  return sub_1C8254F34();
}

uint64_t sub_1C824E1D4()
{
  v1 = *v0;
  sub_1C8254F14();
  MEMORY[0x1CCA71970](v1);
  return sub_1C8254F34();
}

uint64_t sub_1C824E248()
{
  v1 = *v0;
  sub_1C8254F14();
  MEMORY[0x1CCA71970](v1);
  return sub_1C8254F34();
}

uint64_t sub_1C824E28C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  *a5 = result;
  *(a5 + 8) = a6;
  *(a5 + 16) = a7;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4 & 1;
  return result;
}

uint64_t sub_1C824E2D4(unsigned __int8 a1)
{
  if (a1 - 1 >= 3)
  {
    return -1;
  }

  else
  {
    return 3;
  }
}

id DisplayScaling.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DisplayScaling.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisplayScaling();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DisplayScaling.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisplayScaling();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CARScreenType.description.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E55;
  if (a1 == 1)
  {
    v1 = 0x7261646E6F636553;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x7972616D697250;
  }
}

uint64_t sub_1C824E430()
{
  v1 = 0x6E776F6E6B6E55;
  if (*v0 == 1)
  {
    v1 = 0x7261646E6F636553;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7972616D697250;
  }
}

uint64_t sub_1C824E490()
{
  sub_1C8254EC4();
  MEMORY[0x1CCA71880](0xD000000000000019, 0x80000001C8261160);
  v1 = *v0;
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E55;
  if (*v0 == 1)
  {
    v3 = 0x7261646E6F636553;
    v2 = 0xE900000000000079;
  }

  if (v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x7972616D697250;
  }

  if (v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  MEMORY[0x1CCA71880](v4, v5);

  MEMORY[0x1CCA71880](0x53206C6578697020, 0xEC0000003A657A69);
  type metadata accessor for CGSize(0);
  sub_1C8254EE4();
  MEMORY[0x1CCA71880](0x6163697379687020, 0xEF3A657A6953206CLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29AF00);
  v6 = sub_1C8254E14();
  MEMORY[0x1CCA71880](v6);

  return 0;
}

uint64_t sub_1C824E634(unsigned __int8 a1)
{
  v1 = 1701736270;
  if (a1)
  {
    v1 = 0xD000000000000010;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x207463656E6E6F43;
  }
}

uint64_t sub_1C824E6A8()
{
  v1 = 1701736270;
  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x207463656E6E6F43;
  }
}

uint64_t sub_1C824E76C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_1C824ED60(&v5, &v7) & 1;
}

unint64_t sub_1C824E7B8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C824E884(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1C824D44C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1C824E884(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1C824E990(a5, a6);
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
    result = sub_1C8254ED4();
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

uint64_t sub_1C824E990(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C824E9DC(a1, a2);
  sub_1C824EB0C(&unk_1F47DE260);
  return v3;
}

uint64_t sub_1C824E9DC(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C824EBF8(v5, 0);
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

  result = sub_1C8254ED4();
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
        v10 = sub_1C8254E44();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C824EBF8(v10, 0);
        result = sub_1C8254EB4();
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

uint64_t sub_1C824EB0C(uint64_t result)
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

  result = sub_1C824EC6C(result, v11, 1, v3);
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

void *sub_1C824EBF8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29AF20);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1C824EC6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29AF20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1C824ED60(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) & 1) != 0 || (*(a2 + 40))
  {
    if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
    {
      return 1;
    }
  }

  else if (vabdd_f64(*(a1 + 24), *(a2 + 24)) <= 1.0)
  {
    v3 = vabdd_f64(*(a1 + 32), *(a2 + 32)) <= 1.0;
    if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
    {
      return v3;
    }
  }

  return 0;
}

double _s6CarKit14DisplayScalingC20zoomFactorHeuristics10screenType12physicalSize05pixelK012CoreGraphics7CGFloatVSo09CARScreenI0V_So6CGSizeVANtFZ_0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v35[1] = a1;
  *&v35[2] = a4;
  *&v35[3] = a5;
  *&v35[4] = a2;
  *&v35[5] = a3;
  v5 = &byte_1F47DE139;
  v6 = 7;
  v36 = 0;
  do
  {
    v12 = *(v5 - 41);
    v13 = *(v5 - 33);
    v14 = *(v5 - 25);
    if (*(v5 - 1))
    {
      if (v12 == a1 && v13 == a4 && v14 == a5)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v7 = vabdd_f64(*(v5 - 9), a3);
      if (vabdd_f64(*(v5 - 17), a2) <= 1.0 && v12 == a1 && v13 == a4 && v14 == a5 && v7 <= 1.0)
      {
LABEL_26:
        v17 = *v5;
        v18 = v17;
        v19 = dbl_1C825BD70[v17];
        goto LABEL_28;
      }
    }

    v5 += 48;
    --v6;
  }

  while (v6);
  v18 = 0;
  v19 = 1.0;
LABEL_28:
  if (fabs(v19 + -1.0) > 0.0001)
  {
    if (qword_1EC29B470 != -1)
    {
      swift_once();
    }

    v20 = sub_1C8254DC4();
    __swift_project_value_buffer(v20, qword_1EC29B800);
    v21 = sub_1C8254DA4();
    v22 = sub_1C8254E94();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v35[0] = v24;
      *v23 = 136446722;
      v25 = sub_1C824E490();
      v27 = sub_1C824E7B8(v25, v26, v35);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v28 = 0xEC0000006574694CLL;
      if (v18 != 2)
      {
        v28 = 0xEC00000065646957;
      }

      v29 = 0xE400000000000000;
      v30 = 1701736270;
      if (v18)
      {
        v30 = 0xD000000000000010;
        v29 = 0x80000001C8261180;
      }

      if (v18 <= 1)
      {
        v31 = v30;
      }

      else
      {
        v31 = 0x207463656E6E6F43;
      }

      if (v18 <= 1)
      {
        v32 = v29;
      }

      else
      {
        v32 = v28;
      }

      v33 = sub_1C824E7B8(v31, v32, v35);

      *(v23 + 14) = v33;
      *(v23 + 22) = 2050;
      *(v23 + 24) = v19;
      _os_log_impl(&dword_1C81FC000, v21, v22, "ScalingException: (%{public}s) match special case (%s. Scale zoomFactor set to %{public}f", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1CCA725D0](v24, -1, -1);
      MEMORY[0x1CCA725D0](v23, -1, -1);
    }
  }

  return v19;
}

uint64_t _s6CarKit14DisplayScalingC19exceptionPointScale10screenType12physicalSize05pixelK0SiSo09CARScreenI0V_So6CGSizeVAKtFZ_0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v31[1] = a1;
  *&v31[2] = a4;
  *&v31[3] = a5;
  *&v31[4] = a2;
  *&v31[5] = a3;
  v5 = &byte_1F47DE139;
  v6 = 7;
  v32 = 0;
  while (1)
  {
    v12 = *(v5 - 41);
    v13 = *(v5 - 33);
    v14 = *(v5 - 25);
    if ((*(v5 - 1) & 1) == 0)
    {
      break;
    }

    if (v12 == a1 && v13 == a4 && v14 == a5)
    {
      goto LABEL_26;
    }

LABEL_16:
    v5 += 48;
    if (!--v6)
    {
      return -1;
    }
  }

  v7 = vabdd_f64(*(v5 - 9), a3);
  if (vabdd_f64(*(v5 - 17), a2) > 1.0 || v12 != a1 || v13 != a4 || v14 != a5 || v7 > 1.0)
  {
    goto LABEL_16;
  }

LABEL_26:
  v17 = *v5;
  if ((v17 - 1) >= 3)
  {
    return -1;
  }

  if (qword_1EC29B470 != -1)
  {
    swift_once();
  }

  v18 = sub_1C8254DC4();
  __swift_project_value_buffer(v18, qword_1EC29B800);
  v19 = sub_1C8254DA4();
  v20 = sub_1C8254E94();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31[0] = v22;
    *v21 = 136446722;
    v23 = sub_1C824E490();
    v25 = sub_1C824E7B8(v23, v24, v31);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v26 = 0xEC0000006574694CLL;
    if (v17 != 2)
    {
      v26 = 0xEC00000065646957;
    }

    if (v17 == 1)
    {
      v27 = 0xD000000000000010;
    }

    else
    {
      v27 = 0x207463656E6E6F43;
    }

    if (v17 == 1)
    {
      v28 = 0x80000001C8261180;
    }

    else
    {
      v28 = v26;
    }

    v29 = sub_1C824E7B8(v27, v28, v31);

    *(v21 + 14) = v29;
    *(v21 + 22) = 2050;
    *(v21 + 24) = 3;
    _os_log_impl(&dword_1C81FC000, v19, v20, "ScalingException: (%{public}s) match special case (%s. Point Scale set to %{public}ld", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1CCA725D0](v22, -1, -1);
    MEMORY[0x1CCA725D0](v21, -1, -1);
  }

  return 3;
}

unint64_t sub_1C824F3AC()
{
  result = qword_1EC29AF08;
  if (!qword_1EC29AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29AF08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DisplayScaling.ScalingException(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayScaling.ScalingException(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C824F588(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C824F5A8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C824F610(uint64_t a1, int a2)
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

uint64_t sub_1C824F630(uint64_t result, int a2, int a3)
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

void CARVerifyClass_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1C81FC000, v1, OS_LOG_TYPE_ERROR, "object %@ is not of class %@", v2, 0x16u);
}

void sessionUpdatesQueue_endpointNotificationCallback_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sessionUpdatesQueue_endpointNotificationCallback_cold_6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

NSRect NSRectFromString(NSString *aString)
{
  MEMORY[0x1EEDC70C0](aString);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  v4 = MEMORY[0x1EEE66EC8](p, aSel, isRequiredMethod, isInstanceMethod);
  result.types = v5;
  result.name = v4;
  return result;
}