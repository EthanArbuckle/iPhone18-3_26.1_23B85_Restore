void sub_1C972D614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MADService;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C972DA00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
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

void sub_1C972E5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVUWGalleryPersonalizationOptionsClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!VisualUnderstandingLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __VisualUnderstandingLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8342E00;
    v6 = 0;
    VisualUnderstandingLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (VisualUnderstandingLibraryCore_frameworkLibrary)
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
  result = objc_getClass("VUWGalleryPersonalizationOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVUWGalleryPersonalizationOptionsClass_block_invoke_cold_1();
  }

  getVUWGalleryPersonalizationOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisualUnderstandingLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  VisualUnderstandingLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1C972F018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  CF<CGColorSpace *>::~CF(va);
  CF<CGColorSpace *>::~CF(va1);
  _Unwind_Resume(a1);
}

const void **CF<CGImage *>::operator=(const void **a1, const void **a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = *a2;
  *a2 = 0;
  return a1;
}

const void **CF<CGColorSpace *>::~CF(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t MADTextEmbeddingCalibrationVersionCurrent()
{
  if (_os_feature_enabled_impl())
  {
    return 8;
  }

  else
  {
    return 7;
  }
}

void sub_1C9733CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MADVideoSession;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C9733FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C9734518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, id a58)
{
  _Block_object_dispose(&a53, 8);

  _Unwind_Resume(a1);
}

void sub_1C9734A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, char a29)
{
  _Block_object_dispose((v31 - 160), 8);

  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_1C9735160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose((v19 - 160), 8);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1C9735550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

void sub_1C9736038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  _Block_object_dispose((v17 - 208), 8);
  CF<CGColorSpace *>::~CF((v17 - 160));

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__231(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

void sub_1C9736710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  _Block_object_dispose(&a28, 8);

  _Unwind_Resume(a1);
}

void *SurfaceGetBytePointerCallback(__IOSurface *a1)
{
  if (!a1)
  {
    v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v10)
    {
      SurfaceGetBytePointerCallback(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    return 0;
  }

  if (IOSurfaceLock(a1, 1u, 0))
  {
    v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      SurfaceGetBytePointerCallback(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    return 0;
  }

  return IOSurfaceGetBaseAddress(a1);
}

{
  if (!a1)
  {
    v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v10)
    {
      SurfaceGetBytePointerCallback(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    return 0;
  }

  if (IOSurfaceLock(a1, 1u, 0))
  {
    v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      SurfaceGetBytePointerCallback(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    return 0;
  }

  return IOSurfaceGetBaseAddress(a1);
}

{
  if (!a1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      SurfaceGetBytePointerCallback();
    }

    return 0;
  }

  if (IOSurfaceLock(a1, 1u, 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      SurfaceGetBytePointerCallback();
    }

    return 0;
  }

  return IOSurfaceGetBaseAddress(a1);
}

void SurfaceReleaseBytePointerCallback(__IOSurface *a1, const void *a2)
{
  if (a1)
  {

    IOSurfaceUnlock(a1, 1u, 0);
  }

  else
  {
    v3 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v3)
    {
      SurfaceReleaseBytePointerCallback(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

{
  if (a1)
  {

    IOSurfaceUnlock(a1, 1u, 0);
  }

  else
  {
    v3 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v3)
    {
      SurfaceReleaseBytePointerCallback(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

{
  if (a1)
  {

    IOSurfaceUnlock(a1, 1u, 0);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    SurfaceReleaseBytePointerCallback();
  }
}

void SurfaceReleaseInfoCallback(void *a1)
{
  if (a1)
  {

    CFRelease(a1);
  }

  else
  {
    v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      SurfaceReleaseInfoCallback(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

{
  if (a1)
  {

    CFRelease(a1);
  }

  else
  {
    v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      SurfaceReleaseInfoCallback(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

{
  if (a1)
  {

    CFRelease(a1);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    SurfaceReleaseInfoCallback();
  }
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1C9737E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSFResultSectionClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SearchFoundationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SearchFoundationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8343038;
    v6 = 0;
    SearchFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SearchFoundationLibraryCore_frameworkLibrary)
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
  result = objc_getClass("SFResultSection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSFResultSectionClass_block_invoke_cold_1();
  }

  getSFResultSectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SearchFoundationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SearchFoundationLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1C973A13C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C973B92C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C973D460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C973D9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCIBarcodeDescriptorClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreImageLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreImageLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E83430C0;
    v6 = 0;
    CoreImageLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (CoreImageLibraryCore_frameworkLibrary)
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
  result = objc_getClass("CIBarcodeDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCIBarcodeDescriptorClass_block_invoke_cold_1();
  }

  getCIBarcodeDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreImageLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreImageLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getVNBarcodeObservationClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __VisionLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E83430D8;
    v6 = 0;
    VisionLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (VisionLibraryCore_frameworkLibrary)
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
  result = objc_getClass("VNBarcodeObservation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVNBarcodeObservationClass_block_invoke_cold_1();
  }

  getVNBarcodeObservationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisionLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1C973E4FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MADTimer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C973FBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNFaceprintClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __VisionLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E83430F0;
    v6 = 0;
    VisionLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (VisionLibraryCore_frameworkLibrary_0)
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
  result = objc_getClass("VNFaceprint");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVNFaceprintClass_block_invoke_cold_1();
  }

  getVNFaceprintClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisionLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_1C97417F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CF<CGColorSpace *>::~CF(va);
  _Unwind_Resume(a1);
}

void sub_1C97425D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__72(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1CCA8ECA0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1C974333C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14)
{
  CF<CGColorSpace *>::~CF((v17 - 144));

  _Unwind_Resume(a1);
}

uint64_t CGImage_CreateCVPixelBufferWithTransform(CGImage *a1, __CVBuffer **a2, unsigned int a3, CGImagePropertyOrientation a4, double a5)
{
  v37 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v10 = *(MEMORY[0x1E695EFD0] + 16);
  *&v35.a = *MEMORY[0x1E695EFD0];
  *&v35.c = v10;
  *&v35.tx = *(MEMORY[0x1E695EFD0] + 32);
  if (a5 > 0.0 && a5 <= 1.0)
  {
    v11 = Height;
    if (a5 < 1.0)
    {
      v14 = (Width * a5) & 0xFFFFFFFFFFFFFFFELL;
      v13 = (Height * a5) & 0xFFFFFFFFFFFFFFFELL;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.a) = 134218752;
        *(&buf.a + 4) = Width;
        WORD2(buf.b) = 2048;
        *(&buf.b + 6) = v11;
        HIWORD(buf.c) = 2048;
        *&buf.d = (Width * a5) & 0xFFFFFFFFFFFFFFFELL;
        LOWORD(buf.tx) = 2048;
        *(&buf.tx + 2) = v13;
        _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[CGImage->CVPixelBuffer] Downscaling %zux%zu --> %zux%zu", &buf, 0x2Au);
      }
    }

    else
    {
      v13 = Height;
      v14 = Width;
    }

    cf = 0;
    ColorSpace = CGImageGetColorSpace(a1);
    v16 = ColorSpace;
    v17 = 1111970369;
    if (ColorSpace)
    {
      if (CGColorSpaceSupportsOutput(ColorSpace))
      {
        NumberOfComponents = CGColorSpaceGetNumberOfComponents(v16);
        if (NumberOfComponents == 1)
        {
          v19 = 0;
        }

        else
        {
          v19 = 8194;
        }

        if (NumberOfComponents == 1)
        {
          v17 = 1278226488;
        }

        else
        {
          v17 = 1111970369;
        }
      }

      else
      {
        v19 = 8194;
      }

      if (CGColorSpaceSupportsOutput(v16) && !CGColorSpaceUsesExtendedRange(v16))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v19 = 8194;
    }

    v16 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    cf = v16;
    buf.a = 0.0;
    CF<CGColorSpace *>::~CF(&buf);
LABEL_23:
    value = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    pixelBufferAttributes = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(pixelBufferAttributes, *MEMORY[0x1E69660D8], value);
    pixelBufferOut = 0;
    CVPixelBufferCreate(0, v14, v13, v17, pixelBufferAttributes, &pixelBufferOut);
    if (pixelBufferOut)
    {
      CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965CE8], v16, kCVAttachmentMode_ShouldPropagate);
      v28 = 0;
      pixelBuffer = pixelBufferOut;
      unlockFlags = 0;
      if (pixelBufferOut)
      {
        v12 = CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
        v28 = v12;
        if (!v12 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (LODWORD(buf.a) = 134218240, *(&buf.a + 4) = pixelBuffer, WORD2(buf.b) = 1024, *(&buf.b + 6) = v12, _os_log_error_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", &buf, 0x12u), (v12 = v28) == 0))
        {
          BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
          v21 = CVPixelBufferGetWidth(pixelBufferOut);
          v22 = CVPixelBufferGetHeight(pixelBufferOut);
          BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
          v24 = CGBitmapContextCreate(BaseAddress, v21, v22, 8uLL, BytesPerRow, v16, v19);
          c = v24;
          if (v24)
          {
            buf = v35;
            CGContextConcatCTM(v24, &buf);
            v38.size.width = v14;
            v38.size.height = v13;
            v38.origin.x = 0.0;
            v38.origin.y = 0.0;
            CGContextDrawImage(c, v38, a1);
            v12 = CVPixelBufferLock::Unlock(&v28);
            if (!v12)
            {
              v25 = pixelBufferOut;
              if (pixelBufferOut)
              {
                v25 = CFRetain(pixelBufferOut);
              }

              v12 = 0;
              *a2 = v25;
            }
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              CGImage_CreateCVPixelBufferWithTransform();
            }

            v12 = 4294967278;
          }

          CF<CGColorSpace *>::~CF(&c);
          if (pixelBuffer && !v28 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            CGImage_CreateCVPixelBufferWithTransform();
          }
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          CGImage_CreateCVPixelBufferWithTransform();
        }

        v12 = 4294967246;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        CGImage_CreateCVPixelBufferWithTransform();
      }

      v12 = 4294967278;
    }

    CF<CGColorSpace *>::~CF(&pixelBufferOut);
    CF<CGColorSpace *>::~CF(&pixelBufferAttributes);
    CF<CGColorSpace *>::~CF(&value);
    CF<CGColorSpace *>::~CF(&cf);
    return v12;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    CGImage_CreateCVPixelBufferWithTransform();
  }

  return 4294967246;
}

void sub_1C9743B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C974419C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, const void *a47)
{
  CF<CGColorSpace *>::~CF(&a47);
  _Block_object_dispose(&a37, 8);

  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void sub_1C974480C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  v17 = v14;

  CF<CGColorSpace *>::~CF(&a9);
  _Unwind_Resume(a1);
}

void sub_1C97455EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  _Block_object_dispose(&a31, 8);

  _Unwind_Resume(a1);
}

void sub_1C9746278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a27, 8);

  _Block_object_dispose((v36 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1C9746E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C9747400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37)
{
  _Block_object_dispose((v39 - 192), 8);

  _Unwind_Resume(a1);
}

void sub_1C97488E4(_Unwind_Exception *a1)
{
  v9 = v7;

  _Unwind_Resume(a1);
}

void sub_1C9748BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  CF<CGColorSpace *>::~CF(&a9);

  _Unwind_Resume(a1);
}

void sub_1C974A9FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CF<CGColorSpace *>::~CF(va);
  _Unwind_Resume(a1);
}

void sub_1C974BA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1C974BFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1C974C354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1C974C690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1C974CAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Block_object_dispose((v22 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1C974CF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  _Block_object_dispose(&a22, 8);

  _Block_object_dispose((v30 - 136), 8);
  _Unwind_Resume(a1);
}

__CFString *MADQoSDescription(uint64_t a1)
{
  if (a1 > 20)
  {
    switch(a1)
    {
      case 0x15:
        v2 = @"Default";

        break;
      case 0x21:
        v2 = @"UserInteractive";

        break;
      case 0x19:
        v2 = @"UserInitiated";

        break;
      default:
LABEL_20:
        v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%d)", a1];

        return v2;
    }
  }

  else if (a1)
  {
    if (a1 != 9)
    {
      if (a1 == 17)
      {
        v2 = @"Utility";

        return v2;
      }

      goto LABEL_20;
    }

    v2 = @"Background";
  }

  else
  {
    v2 = @"Unspecified";
  }

  return v2;
}

uint64_t CVPixelBufferLock::Unlock(CVPixelBufferLock *this)
{
  if (*this)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      CVPixelBufferLock::Unlock();
    }

    return *this;
  }

  v4 = (this + 8);
  v3 = *(this + 1);
  if (v3)
  {
    result = CVPixelBufferUnlockBaseAddress(v3, *(this + 2));
    *this = result;
    if (result)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        CVPixelBufferLock::Unlock();
      }

      return *this;
    }

    *v4 = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      CVPixelBufferLock::Unlock();
    }

    return 4294967278;
  }

  return result;
}

void CVPixelBufferLock::~CVPixelBufferLock(CVPixelBufferLock *this)
{
  v2 = *(this + 1);
  if (v2 && !*this && CVPixelBufferUnlockBaseAddress(v2, *(this + 2)) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    CGImage_CreateCVPixelBufferWithTransform();
  }
}

uint64_t OUTLINED_FUNCTION_4(uint64_t result, uint64_t a2, int a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 8) = 2112;
  *(a2 + 10) = result;
  return result;
}

void sub_1C97516B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNDocumentObservationClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __VisionLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E83435F8;
    v6 = 0;
    VisionLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v2 = v4[0];
    if (VisionLibraryCore_frameworkLibrary_1)
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
  result = objc_getClass("VNDocumentObservation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVNDocumentObservationClass_block_invoke_cold_1();
  }

  getVNDocumentObservationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisionLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void sub_1C9753380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSFResultSectionClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SearchFoundationLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SearchFoundationLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8343610;
    v6 = 0;
    SearchFoundationLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (SearchFoundationLibraryCore_frameworkLibrary_0)
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
  result = objc_getClass("SFResultSection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSFResultSectionClass_block_invoke_cold_1();
  }

  getSFResultSectionClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SearchFoundationLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  SearchFoundationLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_1C9753D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNDocumentObservationClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_2)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __VisionLibraryCore_block_invoke_2;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8343628;
    v6 = 0;
    VisionLibraryCore_frameworkLibrary_2 = _sl_dlopen();
    v2 = v4[0];
    if (VisionLibraryCore_frameworkLibrary_2)
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
  result = objc_getClass("VNDocumentObservation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVNDocumentObservationClass_block_invoke_cold_1();
  }

  getVNDocumentObservationClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisionLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_2 = result;
  return result;
}

void sub_1C97549EC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C9754B48(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C9754DBC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C9755EDC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id MADSignpostLog()
{
  if (MADSignpostLog_token != -1)
  {
    MADSignpostLog_cold_1();
  }

  v1 = MADSignpostLog_log;

  return v1;
}

void __MADSignpostLog_block_invoke()
{
  v0 = os_log_create("com.apple.mediaanalysisservices", "signpost");
  v1 = MADSignpostLog_log;
  MADSignpostLog_log = v0;
}

__CFString *MADUnifiedEmbeddingVersionToString(unint64_t a1)
{
  if (a1 >= 0xA)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected value (%lu)", a1];
  }

  else
  {
    v2 = off_1E8343640[a1];
  }

  return v2;
}

void sub_1C9756CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  CF<CGColorSpace *>::~CF(va);
  _Unwind_Resume(a1);
}

void sub_1C9757244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  CF<CGColorSpace *>::~CF(va);
  _Unwind_Resume(a1);
}

void sub_1C975885C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C9758CBC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C9759A24(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C975A0DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MADComputeService;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C975A820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C975B34C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C975B514(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1C975BA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  _Block_object_dispose(&a33, 8);

  _Unwind_Resume(a1);
}

void sub_1C975BE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Block_object_dispose((v23 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1C975C69C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C975C73C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1C975C9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__115(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1CCA8ECA0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1C975D06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1C975ED44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  _Block_object_dispose((v28 - 128), 8);

  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id getSCSensitivityAnalysisClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSCSensitivityAnalysisClass(void)::softClass;
  v7 = getSCSensitivityAnalysisClass(void)::softClass;
  if (!getSCSensitivityAnalysisClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL29getSCSensitivityAnalysisClassv_block_invoke;
    v3[3] = &unk_1E83437B0;
    v3[4] = &v4;
    ___ZL29getSCSensitivityAnalysisClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C975F570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class ___ZL29getSCSensitivityAnalysisClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SensitiveContentAnalysisLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL35SensitiveContentAnalysisLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E83437D0;
    v6 = 0;
    SensitiveContentAnalysisLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SensitiveContentAnalysisLibraryCore(char **)::frameworkLibrary)
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
  result = objc_getClass("SCSensitivityAnalysis");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    ___ZL29getSCSensitivityAnalysisClassv_block_invoke_cold_1();
  }

  getSCSensitivityAnalysisClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL35SensitiveContentAnalysisLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  SensitiveContentAnalysisLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void *___ZL45getSCMLImageExplicitSensitivityScoreSymbolLocv_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!SensitiveContentAnalysisMLLibraryCore(char **)::frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = ___ZL37SensitiveContentAnalysisMLLibraryCorePPc_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E83437E8;
    v7 = 0;
    SensitiveContentAnalysisMLLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = SensitiveContentAnalysisMLLibraryCore(char **)::frameworkLibrary;
    if (SensitiveContentAnalysisMLLibraryCore(char **)::frameworkLibrary)
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

  v2 = SensitiveContentAnalysisMLLibraryCore(char **)::frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "SCMLImageExplicitSensitivityScore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSCMLImageExplicitSensitivityScoreSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL37SensitiveContentAnalysisMLLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  SensitiveContentAnalysisMLLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void sub_1C9760F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNFaceObservationClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_3)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __VisionLibraryCore_block_invoke_3;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8343800;
    v6 = 0;
    VisionLibraryCore_frameworkLibrary_3 = _sl_dlopen();
    v2 = v4[0];
    if (VisionLibraryCore_frameworkLibrary_3)
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
  result = objc_getClass("VNFaceObservation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVNFaceObservationClass_block_invoke_cold_1();
  }

  getVNFaceObservationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisionLibraryCore_block_invoke_3()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_3 = result;
  return result;
}

void sub_1C9761854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNRectangleObservationClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_4)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __VisionLibraryCore_block_invoke_4;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8343818;
    v6 = 0;
    VisionLibraryCore_frameworkLibrary_4 = _sl_dlopen();
    v2 = v4[0];
    if (VisionLibraryCore_frameworkLibrary_4)
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
  result = objc_getClass("VNRectangleObservation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVNRectangleObservationClass_block_invoke_cold_1();
  }

  getVNRectangleObservationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisionLibraryCore_block_invoke_4()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_4 = result;
  return result;
}

void sub_1C9763078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  CF<CGColorSpace *>::~CF(va);

  _Unwind_Resume(a1);
}

void sub_1C9763A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getVNClassificationObservationClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VNClassificationObservation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNClassificationObservationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getVNClassificationObservationClass_block_invoke_cold_1();
    VisionLibrary();
  }
}

void VisionLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_5)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __VisionLibraryCore_block_invoke_5;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E8343830;
    v3 = 0;
    VisionLibraryCore_frameworkLibrary_5 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!VisionLibraryCore_frameworkLibrary_5)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __VisionLibraryCore_block_invoke_5()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_5 = result;
  return result;
}

Class __getVNRecognizedObjectObservationClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNRecognizedObjectObservation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNRecognizedObjectObservationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getVNRecognizedObjectObservationClass_block_invoke_cold_1();
    return __getVNSaliencyImageObservationClass_block_invoke(v3);
  }

  return result;
}

Class __getVNSaliencyImageObservationClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNSaliencyImageObservation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNSaliencyImageObservationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getVNSaliencyImageObservationClass_block_invoke_cold_1();
    return +[(MADRichLabelClassificationRequest *)v3];
  }

  return result;
}

void sub_1C9765784(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void SurfaceGetBytePointerCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0_0(&dword_1C972C000, MEMORY[0x1E69E9C10], a3, "[GetBytePointer] Failed to lock IOSurface", a5, a6, a7, a8, 0);
}

{
  OUTLINED_FUNCTION_0_0(&dword_1C972C000, MEMORY[0x1E69E9C10], a3, "[GetBytePointer] Invalid context (NULL)", a5, a6, a7, a8, 0);
}

void CGImage_CreateCVPixelBufferWithTransform()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void CVPixelBufferLock::Unlock()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void SurfaceGetBytePointerCallback()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}