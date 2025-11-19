uint64_t CAMApplicationMain(int a1, char **a2)
{
  CAMSignpostWithIDAndArgs(1, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  +[CAMCaptureEngine preheatCaptureResources];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = UIApplicationMain(a1, a2, v5, v7);

  return v8;
}

id _prewarmAVCaptureSession()
{
  if (_prewarmAVCaptureSession_onceToken != -1)
  {
    _prewarmAVCaptureSession_cold_1();
  }

  v1 = prewarmedAVCaptureSession;

  return v1;
}

void ___prewarmAVCaptureSession_block_invoke()
{
  CAMSignpostWithIDAndArgs(93, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  v4 = +[CAMCaptureCapabilities capabilities];
  v0 = [v4 useMultiCamSession];
  v1 = 0x1E69870E0;
  if (!v0)
  {
    v1 = 0x1E6987110;
  }

  v2 = objc_alloc_init(*v1);
  v3 = prewarmedAVCaptureSession;
  prewarmedAVCaptureSession = v2;

  CAMSignpostWithIDAndArgs(94, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
}

void sub_1A3645A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ___prewarmAudioVideoDeviceTypes_block_invoke()
{
  CAMSignpostWithIDAndArgs(91, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v10 = [v0 bundleIdentifier];

  BoolAnswer = AVGestaltGetBoolAnswer();
  v2 = AVGestaltGetBoolAnswer();
  v3 = AVGestaltGetBoolAnswer();
  v4 = AVGestaltGetBoolAnswer();
  v5 = 6;
  if ((v2 & v3) != 0)
  {
    v5 = 7;
  }

  v6 = 8;
  if (BoolAnswer)
  {
    v6 = 2;
  }

  if (v2)
  {
    v6 = 4;
  }

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  prewarmedVideoDevicePosition = [CAMCaptureConversions AVDevicePositionForCAMDevicePosition:BoolAnswer ^ 1u];
  v8 = [CAMCaptureConversions AVCaptureDeviceTypeForCAMCaptureDevice:v7];
  v9 = prewarmedVideoDeviceType;
  prewarmedVideoDeviceType = v8;

  if (!prewarmedVideoDeviceType)
  {
    objc_storeStrong(&prewarmedVideoDeviceType, *MEMORY[0x1E6986950]);
  }

  if ([v10 isEqualToString:@"com.apple.camera"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"com.apple.camera.lockscreen"))
  {
    if (!v4)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if ([v10 isEqualToString:@"com.apple.camera.CameraMessagesApp"] & v4)
  {
LABEL_15:
    objc_storeStrong(&prewarmedAudioDeviceType, *MEMORY[0x1E6986970]);
  }

LABEL_16:
  CAMSignpostWithIDAndArgs(92, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
}

void ___prewarmAudioVideoDevices_block_invoke()
{
  v24 = *MEMORY[0x1E69E9840];
  CAMSignpostWithIDAndArgs(87, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1 = v0;
  if (prewarmedVideoDeviceType)
  {
    [v0 addObject:?];
  }

  if (prewarmedAudioDeviceType)
  {
    [v1 addObject:?];
  }

  v18 = v1;
  [MEMORY[0x1E69870A8] discoverySessionWithDeviceTypes:v1 mediaType:0 position:0];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = v22 = 0u;
  v2 = [v17 devices];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      v6 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * v6);
        if (prewarmedVideoDeviceType)
        {
          v8 = [*(*(&v19 + 1) + 8 * v6) deviceType];
          if ([v8 isEqualToString:prewarmedVideoDeviceType])
          {
            v9 = [v7 position];
            v10 = prewarmedVideoDevicePosition;

            if (v9 == v10)
            {
              v11 = &prewarmedVideoDevice;
              v12 = &prewarmedVideoDeviceInput;
LABEL_18:
              objc_storeStrong(v11, v7);
              v15 = [MEMORY[0x1E69870B0] deviceInputWithDevice:v7 error:0];
              v16 = *v12;
              *v12 = v15;

              goto LABEL_19;
            }
          }

          else
          {
          }
        }

        if (prewarmedAudioDeviceType)
        {
          v13 = [v7 deviceType];
          v14 = [v13 isEqualToString:prewarmedAudioDeviceType];

          if (v14)
          {
            v11 = &prewarmedAudioDevice;
            v12 = &prewarmedAudioDeviceInput;
            goto LABEL_18;
          }
        }

LABEL_19:
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }

  CAMSignpostWithIDAndArgs(88, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
}

void sub_1A3646C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A3646EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t CAMIsSmallPhone()
{
  if (CAMIsSmallPhone_onceToken != -1)
  {
    CAMIsSmallPhone_cold_1();
  }

  return CAMIsSmallPhone_isSmallPhone;
}

void __CAMIsSmallPhone_block_invoke()
{
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 _referenceBounds];
  v1 = v0 == 568.0;
  if (v2 != 320.0)
  {
    v1 = 0;
  }

  CAMIsSmallPhone_isSmallPhone = v1;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
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

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
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

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__27(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__29(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__31(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__32(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__33(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__35(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__36(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL CAMIsTallScreen(void *a1)
{
  v1 = [a1 currentMode];
  v2 = v1;
  if (v1)
  {
    [v1 size];
    v5 = v4 / v3 >= 1.70000005;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void CAMShutterButtonSpecForLayoutStyle(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 scale];
  v6 = v5;

  if (a1 >= 3)
  {
    if (a1 != 3)
    {
      return;
    }

    v8 = 1.0 / v6 + 2.0;
    v7 = xmmword_1A3A69B80;
    v9 = 30.0;
  }

  else
  {
    v7 = xmmword_1A3A69B70;
    v8 = 2.0;
    v9 = 28.0;
  }

  *a2 = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = 0x4010000000000000;
  *(a2 + 32) = v8;
}

id CAMCameraUIFrameworkBundle()
{
  v0 = __CAMCameraUIFrameworkBundle;
  if (!__CAMCameraUIFrameworkBundle)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleForClass:NSClassFromString(&cfstr_Camviewfinderv.isa)];
    v2 = __CAMCameraUIFrameworkBundle;
    __CAMCameraUIFrameworkBundle = v1;

    v0 = __CAMCameraUIFrameworkBundle;
  }

  return v0;
}

void sub_1A364A028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CAMLocalizedFrameworkString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__29;
  v15 = __Block_byref_object_dispose__29;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __CAMLocalizedFrameworkString_block_invoke;
  v8[3] = &unk_1E76FC878;
  v10 = &v11;
  v5 = v3;
  v9 = v5;
  [&unk_1F16C9C98 enumerateObjectsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void sub_1A364A654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CAMTimerDurationFormatter()
{
  if (CAMTimerDurationFormatter_onceToken != -1)
  {
    CAMTimerDurationFormatter_cold_1();
  }

  v1 = CAMTimerDurationFormatter_sharedCountFormatter;

  return v1;
}

uint64_t __CAMTimerDurationFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = CAMTimerDurationFormatter_sharedCountFormatter;
  CAMTimerDurationFormatter_sharedCountFormatter = v0;

  [CAMTimerDurationFormatter_sharedCountFormatter setGeneratesDecimalNumbers:1];
  [CAMTimerDurationFormatter_sharedCountFormatter setNumberStyle:1];
  v2 = CAMTimerDurationFormatter_sharedCountFormatter;

  return [v2 setMinimumFractionDigits:0];
}

id CAMTimerCountdownFormatter()
{
  if (CAMTimerCountdownFormatter_onceToken != -1)
  {
    CAMTimerCountdownFormatter_cold_1();
  }

  v1 = CAMTimerCountdownFormatter_sharedCountFormatter;

  return v1;
}

uint64_t __CAMTimerCountdownFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = CAMTimerCountdownFormatter_sharedCountFormatter;
  CAMTimerCountdownFormatter_sharedCountFormatter = v0;

  [CAMTimerCountdownFormatter_sharedCountFormatter setGeneratesDecimalNumbers:1];
  [CAMTimerCountdownFormatter_sharedCountFormatter setNumberStyle:1];
  v2 = CAMTimerCountdownFormatter_sharedCountFormatter;

  return [v2 setMinimumFractionDigits:0];
}

id camSoftLinkQueue()
{
  if (camSoftLinkQueue_camSoftLinkQueueOnceToken != -1)
  {
    camSoftLinkQueue_cold_1();
  }

  v1 = camSoftLinkQueue_camSoftLinkQueue;

  return v1;
}

void __camSoftLinkQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v0 = dispatch_queue_create("com.apple.camera.softlink", v2);
  v1 = camSoftLinkQueue_camSoftLinkQueue;
  camSoftLinkQueue_camSoftLinkQueue = v0;
}

void sub_1A36532B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __CAMDebugStringForPreviewConfiguration_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (a3)
  {
    v5 = @"/%@";
  }

  else
  {
    v5 = @"%@";
  }

  *(*(*(a1 + 32) + 8) + 40) = [v4 stringByAppendingFormat:v5, a2];

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A3656200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A36569DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v28 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A3657DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A36592BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3659694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3659C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A365C8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A365D410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PixelSumASM(uint8x16_t *a1, int a2, int a3, unsigned int a4, _DWORD *a5, uint32x4_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a2 & 0x1F) != 0 || (a3 & 1) != 0 || (a1 & 0xF) != 0 || (a4 & 0xF) != 0)
  {
    return -1;
  }

  v9 = &a9;
  v10 = (a1 + a4 * (a3 >> 1));
  v11 = (a5 + 2 * a3);
  v12 = a4 - a2;
  v13 = 1;
  v14 = a2 >> 5;
  v15 = 128;
  v16 = 0uLL;
  v17 = 0uLL;
  do
  {
    v18 = *a1;
    v19 = a1[1];
    v20 = *v10;
    v21 = v10[1];
    a1 += 2;
    v10 += 2;
    v16 = vaddw_high_u8(vaddw_u8(vaddw_high_u8(vaddw_u8(v16, *v18.i8), v18), *v19.i8), v19);
    v17 = vaddw_high_u8(vaddw_u8(vaddw_high_u8(vaddw_u8(v17, *v20.i8), v20), *v21.i8), v21);
    *v9 = vaddw_u8(vmovl_u8(*v18.i8), *v20.i8);
    v9[1] = vaddw_high_u8(vmovl_high_u8(v18), v20);
    v22 = v9 + 2;
    *v22 = vaddw_u8(vmovl_u8(*v19.i8), *v21.i8);
    v22[1] = vaddw_high_u8(vmovl_high_u8(v19), v21);
    v9 = v22 + 2;
    --v14;
  }

  while (v14);
  while (1)
  {
    a1 = (a1 + v12);
    v10 = (v10 + v12);
    v33 = vpaddlq_u32(vpaddlq_u16(v16));
    v34 = vpaddlq_u32(vpaddlq_u16(v17));
    *a5++ = vpaddq_s64(v33, v33).u32[0];
    *v11++ = vpaddq_s64(v34, v34).u32[0];
    v16 = 0uLL;
    v17 = 0uLL;
    v9 = (v9 - 2 * a2);
    v32 = a2 >> 5;
    a3 -= 2;
    if (!a3 || (--v15, !v15))
    {
      v35 = a2 >> 4;
      if (--v13)
      {
        do
        {
          v39 = *v9;
          v40 = v9[1];
          *v9 = 0uLL;
          v9[1] = 0uLL;
          v9 += 2;
          v42 = *a6;
          v43 = a6[1];
          v41 = a6 + 2;
          v44 = *v41;
          v45 = v41[1];
          v41 -= 2;
          *v41 = vaddw_u16(v42, *v39.i8);
          v41[1] = vaddw_high_u16(v43, v39);
          v41 += 2;
          *v41 = vaddw_u16(v44, *v40.i8);
          v41[1] = vaddw_high_u16(v45, v40);
          a6 = v41 + 2;
          --v35;
        }

        while (v35);
      }

      else
      {
        do
        {
          v36 = *v9;
          v37 = v9[1];
          *v9 = 0uLL;
          v9[1] = 0uLL;
          v9 += 2;
          *a6 = vmovl_u16(*v36.i8);
          a6[1] = vmovl_high_u16(v36);
          v38 = a6 + 2;
          *v38 = vmovl_u16(*v37.i8);
          v38[1] = vmovl_high_u16(v37);
          a6 = v38 + 2;
          --v35;
        }

        while (v35);
      }

      v9 = (v9 - 2 * a2);
      a6 = (a6 - 4 * a2);
      v32 = a2 >> 5;
      v15 = 128;
      if (!a3)
      {
        break;
      }
    }

    do
    {
      v23 = *a1;
      v24 = a1[1];
      v25 = *v10;
      v26 = v10[1];
      a1 += 2;
      v10 += 2;
      v28 = *v9;
      v29 = v9[1];
      v27 = v9 + 2;
      v16 = vaddw_high_u8(vaddw_u8(vaddw_high_u8(vaddw_u8(v16, *v23.i8), v23), *v24.i8), v24);
      v17 = vaddw_high_u8(vaddw_u8(vaddw_high_u8(vaddw_u8(v17, *v25.i8), v25), *v26.i8), v26);
      v30 = vaddw_u8(vaddw_u8(*v27, *v24.i8), *v26.i8);
      v31 = vaddw_high_u8(vaddw_high_u8(v27[1], v24), v26);
      v27 -= 2;
      *v27 = vaddw_u8(vaddw_u8(v28, *v23.i8), *v25.i8);
      v27[1] = vaddw_high_u8(vaddw_high_u8(v29, v23), v25);
      v27 += 2;
      *v27 = v30;
      v27[1] = v31;
      v9 = v27 + 2;
      --v32;
    }

    while (v32);
  }

  return 0;
}

float MemDiff32(int32x4_t *a1, int32x4_t *a2, int a3)
{
  v3 = 0uLL;
  v4 = 0uLL;
  v5 = a3 >> 3;
  do
  {
    v6 = *a1;
    v7 = a1[1];
    v8 = *a2;
    v9 = a2[1];
    a1 += 2;
    a2 += 2;
    v3 = vabaq_s32(v3, v6, v8);
    v4 = vabaq_s32(v4, v7, v9);
    --v5;
  }

  while (v5);
  v10 = vpaddlq_u32(vaddq_s32(v3, v4));
  LODWORD(result) = vpaddq_s64(v10, v10).u32[0];
  return result;
}

float MemDiffZeroMean32(int32x4_t *a1, unsigned int a2, int32x4_t *a3, unsigned int a4, int a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = vdupq_n_s32(a2);
  v8 = vdupq_n_s32(a4);
  v9 = a5 >> 3;
  do
  {
    v10 = *a1;
    v11 = a1[1];
    v12 = *a3;
    v13 = a3[1];
    a1 += 2;
    a3 += 2;
    v5 = vabaq_s32(v5, vsubq_s32(v10, v7), vsubq_s32(v12, v8));
    v6 = vabaq_s32(v6, vsubq_s32(v11, v7), vsubq_s32(v13, v8));
    --v9;
  }

  while (v9);
  v14 = vpaddlq_u32(vaddq_s32(v5, v6));
  LODWORD(result) = vpaddq_s64(v14, v14).u32[0];
  return result;
}

float MemSum32(int32x4_t *a1, int a2)
{
  v2 = 0uLL;
  v3 = 0uLL;
  v4 = a2 >> 3;
  do
  {
    v5 = *a1;
    v6 = a1[1];
    a1 += 2;
    v2 = vaddq_s32(v2, v5);
    v3 = vaddq_s32(v3, v6);
    --v4;
  }

  while (v4);
  v7 = vpaddlq_u32(vaddq_s32(v2, v3));
  LODWORD(result) = vpaddq_s64(v7, v7).u32[0];
  return result;
}

int8x16_t *haarTransform32x32_NEON(int8x16_t *result, uint64_t a2, int32x4_t *a3)
{
  v3 = 32;
  v4 = a3;
  do
  {
    v5 = *result;
    v6 = result[1];
    result = (result + a2);
    v7 = vuzp1q_s8(v5, v6);
    v8 = vuzp2q_s8(v5, v6);
    v9 = vaddl_u8(*v7.i8, *v8.i8);
    v10 = vaddl_high_u8(v7, v8);
    v11 = vsubl_u8(*v7.i8, *v8.i8);
    v12 = vsubl_high_u8(v7, v8);
    v13 = vuzp1q_s16(v9, v10);
    v14 = vuzp2q_s16(v9, v10);
    v15 = vaddq_s16(v13, v14);
    v16 = vsubq_s16(v13, v14);
    v17 = vrev32q_s16(v15);
    v18 = vaddq_s16(v17, v15);
    v19 = vsubq_s16(v17, v15);
    v20 = vzip1q_s16(v18, v19);
    v21 = vzip2q_s16(v18, v19);
    v21.i32[2] = v21.i32[1];
    v21.i64[0] = __PAIR64__(v20.u32[3], v20.u32[1]);
    v22 = vzip1q_s32(v21, v16);
    v23 = vzip2q_s32(v21, v16);
    v21.i64[0] = v22.i64[0];
    v21.i64[1] = v11.i64[0];
    v11.i64[0] = v22.i64[1];
    v16.i64[0] = v23.i64[0];
    v16.i64[1] = v12.i64[0];
    v12.i64[0] = v23.i64[1];
    *v4 = v21;
    v4[1] = v11;
    v24 = v4 + 2;
    *v24 = v16;
    v24[1] = v12;
    v4 = v24 + 2;
    --v3;
  }

  while (v3);
  v25 = 4;
  do
  {
    v26 = a3;
    v27 = 4;
    do
    {
      v28 = v26[4];
      v29 = v26[8];
      v30 = v26[12];
      v31 = v26[16];
      v32 = v26[20];
      v33 = v26[24];
      v34 = v26[28];
      v35 = vaddq_s16(*v26, v28);
      v36 = vaddq_s16(v29, v30);
      v37 = vaddq_s16(v31, v32);
      v38 = vaddq_s16(v33, v34);
      v39 = vsubq_s16(*v26, v28);
      v40 = vaddq_s16(v35, v36);
      v41 = vaddq_s16(v37, v38);
      *v26 = vaddq_s16(v40, v41);
      v26[4] = vsubq_s16(v40, v41);
      v26[8] = vsubq_s16(v35, v36);
      v26[12] = vsubq_s16(v37, v38);
      v26[16] = v39;
      v26[20] = vsubq_s16(v29, v30);
      v26[24] = vsubq_s16(v31, v32);
      v26[28] = vsubq_s16(v33, v34);
      ++v26;
      --v27;
    }

    while (v27);
    a3 += 32;
    --v25;
  }

  while (v25);
  return result;
}

uint64_t horzDiff32x32(int8x16_t *_X0, uint64_t a2, int a3)
{
  __asm { PRFM            #0, [X0] }

  v8 = 0uLL;
  do
  {
    v9 = *_X0;
    v10 = _X0[1];
    _X0 = (_X0 + a2);
    __asm { PRFM            #0, [X0] }

    v12 = vextq_s8(v10, v9, 0xFuLL);
    v13 = vextq_s8(v9, v10, 0xFuLL);
    v8 = vabal_high_u8(vabal_u8(vabal_high_u8(vabal_u8(v8, *v9.i8, *v12.i8), v9, v12), *v10.i8, *v13.i8), v10, v13);
    --a3;
  }

  while (a3);
  v14 = vpaddlq_u32(vpaddlq_u16(v8));
  return vpaddq_s64(v14, v14).u32[0];
}

void sub_1A365DA8C(uint64_t a1, uint64_t a2, signed int a3, uint64_t a4, int16x8_t *a5, int16x4_t *a6)
{
  v6 = 4;
  do
  {
    v7 = *a5;
    v7.i64[0] = a5[1].i64[1];
    v8 = vaddq_s32(vaddq_s32(vmull_s16(a6[2], a6[2]), vmull_s16(*v7.i8, *v7.i8)), vmull_high_s16(*a6[2].i8, *a6[2].i8));
    v9 = vmaxvq_u32(vaddq_s32(vaddq_s32(vmull_s16(*a6, *a6), vmull_high_s16(v7, v7)), vmull_high_s16(*a6->i8, *a6->i8)));
    if (a3 <= v9)
    {
      a3 = v9;
    }

    v10 = vmaxvq_u32(v8);
    if (a3 <= v10)
    {
      a3 = v10;
    }

    a5 += 4;
    a6 += 8;
    --v6;
  }

  while (v6);
}

uint64_t computeEdge1Squared16x16_NEON(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A365DA8C(a1, a2, 0, a4, a1, (a1 + 256));
  sub_1A365DA8C(v4, v5, v6, v7, (v4 + 512), (v4 + 768));
  return v8;
}

uint64_t getEnumTagSinglePayload for ChromeConfigurator.OverscanUpdate(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ChromeConfigurator.OverscanUpdate(uint64_t result, int a2, int a3)
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

void *sub_1A365E288@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1A365E2D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A3A31850();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_1A365E310(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A365E334(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A365E354(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1A365E3A4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A365E3EC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A365E458()
{

  sub_1A3890B50(*(v0 + 32), *(v0 + 40), *(v0 + 41));

  return swift_deallocObject();
}

uint64_t sub_1A365E4B0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC468);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC460);
  sub_1A3890B94();
  swift_getOpaqueTypeConformance2();
  sub_1A3890E54();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A365E56C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A365E5BC()
{

  return swift_deallocObject();
}

double sub_1A365E620@<D0>(double *a1@<X8>)
{
  sub_1A389F150();
  sub_1A3A2FEF0();
  result = v3;
  *a1 = v3;
  return result;
}

double sub_1A365E6BC@<D0>(_OWORD *a1@<X8>)
{
  sub_1A389F0FC();
  sub_1A3A2FEF0();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1A365E758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC5B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A365E7E0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC4D0);
  sub_1A389EF34();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A365E854()
{

  sub_1A3890B50(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  sub_1A3670FF4(*(v0 + 96), *(v0 + 104));

  return swift_deallocObject();
}

uint64_t sub_1A365E8BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC690);
  sub_1A3A30070();
  sub_1A38A08F8(&qword_1EB0FC6B0, &qword_1EB0FC690);
  sub_1A389FBA0(&qword_1EB0FC610, MEMORY[0x1E697C540]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A365EA1C()
{
  sub_1A3670FF4(*(v0 + 24), *(v0 + 32));

  if (*(v0 + 56) >= 0x23uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A365EAE8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCC50);
  sub_1A38AA8E0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A365EB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCDD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A365EC20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCDD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A365ECD0@<X0>(void *a1@<X8>)
{
  result = sub_1A3A2F800();
  *a1 = v3;
  return result;
}

uint64_t sub_1A365EEA8()
{

  return swift_deallocObject();
}

uint64_t sub_1A365EF7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCDD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A365F070()
{
  v1 = type metadata accessor for ChromeTopBar.GroupsView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v2 + 40);
  if (v3 != 255)
  {
    sub_1A3890EFC(*(v2 + 16), *(v2 + 24), *(v2 + 32), v3);
  }

  v4 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A3A30090();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A365F1C0()
{

  return swift_deallocObject();
}

uint64_t sub_1A365F200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCDD0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1A365F33C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCDD0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1A365F488(uint64_t result)
{
  if (result)
  {
    return sub_1A3A2EA60();
  }

  return result;
}

uint64_t sub_1A365F4F4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCDD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1A365F5B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCDD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A365F664()
{
  v1 = type metadata accessor for ChromeTopBar.CollapsedGroup(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 24))
  {
  }

  v3 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A3A30090();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A365F7C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCDD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A365F878()
{
  v1 = type metadata accessor for ChromeTopBar.ControlView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  if (*v2 >= 0x23uLL)
  {
  }

  if (*(v2 + 3))
  {
  }

  v3 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A3A30090();
    (*(*(v4 - 8) + 8))(&v2[v3], v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A365F9C0()
{
  v1 = type metadata accessor for ChromeTopBar.ControlView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  if (*v2 >= 0x23uLL)
  {
  }

  if (*(v2 + 3))
  {
  }

  v3 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A3A30090();
    (*(*(v4 - 8) + 8))(&v2[v3], v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A365FB80(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCDD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1A365FC3C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCDD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A365FD00()
{

  return swift_deallocObject();
}

uint64_t sub_1A365FD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ChromeMenu();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCDD0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1A365FE88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ChromeMenu();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCDD0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1A365FFC8()
{
  v1 = type metadata accessor for TopBarMenu.TopBarMenuRow(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  if (*v2 >= 0x23uLL)
  {
  }

  v3 = &v2[*(type metadata accessor for ChromeMenu() + 24)];
  type metadata accessor for ChromeElementIcon();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {

          if (*(v3 + 24))
          {
          }
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v3);
      }

      goto LABEL_22;
    }

    if (EnumCaseMultiPayload != 2)
    {

      goto LABEL_22;
    }

LABEL_21:

    goto LABEL_22;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload != 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
      }

      goto LABEL_22;
    }

LABEL_18:

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 4)
  {

    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD448) + 64);
    v6 = sub_1A3A30090();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 5)
  {
    goto LABEL_18;
  }

LABEL_22:

  v7 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1A3A30090();
    (*(*(v8 - 8) + 8))(&v2[v7], v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3660314()
{
  MEMORY[0x1A58FACD0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A366034C()
{

  return swift_deallocObject();
}

uint64_t sub_1A36603A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD678);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[9];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for ChromeScenePhase(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[15];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[18] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1A3660514(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD678);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[9];
    }

    else
    {
      result = type metadata accessor for ChromeScenePhase(0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[18] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[15];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1A366069C()
{
  v1 = type metadata accessor for ChromeBottomBar();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  v4 = sub_1A3A30430();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78);

  v6 = v3 + v1[9];
  v7 = type metadata accessor for ModeWheelGestureState(0);
  v8 = *(v7 + 36);
  v9 = sub_1A3A2ECE0();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  v11 = *(v7 + 40);
  v12 = sub_1A3A2F620();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v6 + v11, 1, v12))
  {
    (*(v13 + 8))(v6 + v11, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD678);

  sub_1A3670FF4(*(v3 + v1[11]), *(v3 + v1[11] + 8));

  sub_1A3670FF4(*(v3 + v1[14]), *(v3 + v1[14] + 8));
  v14 = v3 + v1[15];
  j__swift_release();
  v15 = *(type metadata accessor for ChromeScenePhase(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD670);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_1A3A2F540();
    (*(*(v16 - 8) + 8))(v14 + v15, v16);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3660ABC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3660B14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD9F8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3660BC8()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  }

  if (v0[15])
  {
    if (v0[13])
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 10));
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1A3660D6C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCDD0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[11];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDB70);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[15];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1A3660F08(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCDD0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[11];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDB70);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[15];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1A36610CC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3661114()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3661168()
{
  v1 = type metadata accessor for ModePicker();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;

  v4 = v0 + v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00) + 32);
  v5 = type metadata accessor for ModeWheelGestureState(0);
  v6 = *(v5 + 36);
  v7 = sub_1A3A2ECE0();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v9 = *(v5 + 40);
  v10 = sub_1A3A2F620();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v4 + v9, 1, v10))
  {
    (*(v11 + 8))(v4 + v9, v10);
  }

  if (*(v3 + v1[9]))
  {
  }

  v12 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1A3A30090();
    (*(*(v13 - 8) + 8))(v3 + v12, v13);
  }

  else
  {
  }

  v14 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1A3A30430();
    (*(*(v15 - 8) + 8))(v3 + v14, v15);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A36614EC()
{
  v1 = type metadata accessor for ModePicker();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00) + 32);
  v4 = type metadata accessor for ModeWheelGestureState(0);
  v5 = *(v4 + 36);
  v6 = sub_1A3A2ECE0();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v8 = *(v4 + 40);
  v9 = sub_1A3A2F620();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  if (*(v2 + v1[9]))
  {
  }

  v11 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A3A30090();
    (*(*(v12 - 8) + 8))(v2 + v11, v12);
  }

  else
  {
  }

  v13 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1A3A30430();
    (*(*(v14 - 8) + 8))(v2 + v13, v14);
  }

  else
  {
  }

  return swift_deallocObject();
}

__n128 sub_1A3661888(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A36618A8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3661954()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A36619BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDD58);
  sub_1A38EB4B4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3661B4C()
{
  if (*(v0 + 16) >= 0x23uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A36623C4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3662418(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDF98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A36624B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A3A2FE00();
  *a1 = result;
  return result;
}

uint64_t sub_1A366250C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A3A2FD40();
  *a1 = result;
  return result;
}

uint64_t sub_1A3662564@<X0>(void *a1@<X8>)
{
  result = sub_1A3A2FCE0();
  *a1 = v3;
  return result;
}

uint64_t sub_1A36626C4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3662730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ChromeElementIcon();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A36627DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ChromeElementIcon();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3662A84()
{

  return swift_deallocObject();
}

uint64_t sub_1A3662ABC()
{
  MEMORY[0x1A58FACD0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3662B14()
{
  MEMORY[0x1A58FACD0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3662B4C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3662B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCDD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1A3662C54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCDD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_1A3662D60()
{
  v1 = *(type metadata accessor for ChromeFloatingControlsBar() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A3A30090();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3662E90()
{

  return swift_deallocObject();
}

uint64_t sub_1A3662EC8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3662F54()
{
  MEMORY[0x1A58FACD0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3662FF8()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A3A307F0();
  swift_getWitnessTable();
  sub_1A3A2F960();
  return swift_getWitnessTable();
}

uint64_t sub_1A3663304@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A3A2FE30();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A3663334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD678);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A36633F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD678);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A36634B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A3A2FE90();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A366354C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE900) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00) + 32);
  v4 = type metadata accessor for ModeWheelGestureState(0);
  v5 = *(v4 + 36);
  v6 = sub_1A3A2ECE0();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v8 = *(v4 + 40);
  v9 = sub_1A3A2F620();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v11 = type metadata accessor for ModePicker();

  if (*(v2 + v11[9]))
  {
  }

  v12 = v11[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1A3A30090();
    (*(*(v13 - 8) + 8))(v2 + v12, v13);
  }

  else
  {
  }

  v14 = v11[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1A3A30430();
    (*(*(v15 - 8) + 8))(v2 + v14, v15);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A36638D0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE8F8) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00) + 32);
  v4 = type metadata accessor for ModeWheelGestureState(0);
  v5 = *(v4 + 36);
  v6 = sub_1A3A2ECE0();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v8 = *(v4 + 40);
  v9 = sub_1A3A2F620();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v11 = type metadata accessor for ModePicker();

  if (*(v2 + v11[9]))
  {
  }

  v12 = v11[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1A3A30090();
    (*(*(v13 - 8) + 8))(v2 + v12, v13);
  }

  else
  {
  }

  v14 = v11[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1A3A30430();
    (*(*(v15 - 8) + 8))(v2 + v14, v15);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3663CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCDD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3663D74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCDD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3663E24()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FE808);
  sub_1A3938FA4();
  sub_1A3939088();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3663EC0()
{
  v1 = type metadata accessor for ChromeButtonColumn.ExpandableButton(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  if (*(v2 + 8) >= 0x23uLL)
  {
  }

  v3 = *(v2 + 56);
  if (v3 != 255)
  {
    sub_1A3890EFC(*(v2 + 32), *(v2 + 40), *(v2 + 48), v3);
  }

  v4 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A3A30090();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else
  {
  }

  sub_1A3670FF4(*(v2 + *(v1 + 44)), *(v2 + *(v1 + 44) + 8));

  return swift_deallocObject();
}

uint64_t sub_1A3664044()
{
  v1 = type metadata accessor for ChromeButtonColumn.ExpandableButton(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for ChromeMenu();
  v5 = *(*(v4 - 8) + 80);
  v6 = v0 + v2;
  if (*(v0 + v2 + 8) >= 0x23uLL)
  {
  }

  v7 = v2 + v3 + v5;

  v8 = *(v6 + 56);
  if (v8 != 255)
  {
    sub_1A3890EFC(*(v6 + 32), *(v6 + 40), *(v6 + 48), v8);
  }

  v9 = v7 & ~v5;

  v10 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A3A30090();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
  }

  sub_1A3670FF4(*(v6 + *(v1 + 44)), *(v6 + *(v1 + 44) + 8));
  if (*(v0 + v9) >= 0x23uLL)
  {
  }

  v12 = v0 + v9 + *(v4 + 24);
  type metadata accessor for ChromeElementIcon();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {

          if (*(v12 + 24))
          {
          }
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v12);
      }

      goto LABEL_29;
    }

    if (EnumCaseMultiPayload != 2)
    {

      goto LABEL_29;
    }

LABEL_28:

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload != 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
      }

      goto LABEL_29;
    }

LABEL_25:

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 4)
  {

    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD448) + 64);
    v15 = sub_1A3A30090();
    (*(*(v15 - 8) + 8))(v12 + v14, v15);
    goto LABEL_29;
  }

  if (EnumCaseMultiPayload == 5)
  {
    goto LABEL_25;
  }

LABEL_29:

  return swift_deallocObject();
}

uint64_t sub_1A3664390()
{

  return swift_deallocObject();
}

uint64_t sub_1A36643C8()
{
  v1 = type metadata accessor for ChromeButtonColumn.ExpandableButton(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  if (*(v2 + 8) >= 0x23uLL)
  {
  }

  v3 = *(v2 + 56);
  if (v3 != 255)
  {
    sub_1A3890EFC(*(v2 + 32), *(v2 + 40), *(v2 + 48), v3);
  }

  v4 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A3A30090();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else
  {
  }

  sub_1A3670FF4(*(v2 + *(v1 + 44)), *(v2 + *(v1 + 44) + 8));

  return swift_deallocObject();
}

uint64_t sub_1A3664610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3A2F540();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for ChromeScenePhase(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1A3664734(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A3A2F540();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for ChromeScenePhase(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1A366486C()
{
  v1 = (type metadata accessor for ScenePhaseModifier(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_1A3A2F540();
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);

  v5 = v2 + v1[9];
  j__swift_release();
  v6 = *(type metadata accessor for ChromeScenePhase(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD670);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4(v5 + v6, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A36649DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ChromeScenePhase(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3664A88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ChromeScenePhase(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3664B2C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FED70);
  sub_1A3A2F540();
  sub_1A38A08F8(qword_1ED997E68, &qword_1EB0FED70);
  sub_1A3942328(&qword_1ED996CF0, MEMORY[0x1E697BE48]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3664C10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEDA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3664C78()
{
  type metadata accessor for ConditionalMatchedGeometryEffect();
  swift_getWitnessTable();
  sub_1A3A30260();
  sub_1A3A302C0();
  sub_1A3A2FA90();
  sub_1A3A30200();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3664DEC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3664EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3664F6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3665DD8()
{
  MEMORY[0x1A58FACD0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3665E14()
{
  type metadata accessor for EarViewsModifier();
  sub_1A3A2FA90();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3665EB8()
{
  type metadata accessor for EarViewsModifier();
  swift_getWitnessTable();
  sub_1A3A30260();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDFF8);
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FE0B0);
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  swift_getTupleTypeMetadata3();
  sub_1A3A31550();
  swift_getWitnessTable();
  sub_1A3A31030();
  swift_getTupleTypeMetadata2();
  sub_1A3A31550();
  swift_getWitnessTable();
  sub_1A3A31120();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF4C8);
  swift_getTupleTypeMetadata2();
  sub_1A3A31550();
  swift_getWitnessTable();
  sub_1A3A31140();
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  sub_1A3A30200();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3A2FC00();
  sub_1A3A2FA90();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A366638C()
{

  return swift_deallocObject();
}

uint64_t sub_1A36663D4()
{
  MEMORY[0x1A58FACD0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3666414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF550);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A36664C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF550);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1A3666684(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A3905698(v1);
}

uint64_t sub_1A36666EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483612)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 35;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1A3A30EF0();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1A36667A8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483612)
  {
    *result = (a2 + 34);
  }

  else
  {
    v7 = sub_1A3A30EF0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3666850()
{
  v1 = type metadata accessor for GlassCircleElementButton();
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  if (*v2 >= 0x23uLL)
  {
  }

  v3 = *(v1 + 20);
  v4 = sub_1A3A30EF0();
  (*(*(v4 - 8) + 8))(&v2[v3], v4);

  sub_1A3670FF4(*&v2[*(v1 + 36)], v2[*(v1 + 36) + 8]);

  return swift_deallocObject();
}

uint64_t sub_1A3666974(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A36669F0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3666B18(uint64_t a1)
{
  v1 = *(a1 + 48);
  v4[2] = *(a1 + 32);
  v4[3] = v1;
  v5 = *(a1 + 64);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  return sub_1A39F2A00(v4);
}

uint64_t sub_1A3666B64(uint64_t a1)
{
  v1 = *(a1 + 48);
  v4[2] = *(a1 + 32);
  v4[3] = v1;
  v5 = *(a1 + 64);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  return sub_1A39F2650(v4);
}

uint64_t sub_1A3666BB0(uint64_t a1)
{
  v1 = *(a1 + 48);
  v4[2] = *(a1 + 32);
  v4[3] = v1;
  v5 = *(a1 + 64);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  return sub_1A39F2820(v4);
}

__n128 sub_1A3667BAC@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CAMChromeConfigurator__sharedLibraryState;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

id sub_1A3667FA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CAMChromeConfigurator__captureGraphConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1A3668074@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CAMChromeConfigurator__availableCaptureModeRawValues;
  swift_beginAccess();
  return sub_1A397BCBC(v3 + v4, a2);
}

uint64_t sub_1A3668274@<X0>(uint64_t a1@<X8>)
{
  result = sub_1A3A2FEB0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1A36682D8()
{
  v1 = *(type metadata accessor for ChromeElementIcon() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {

          if (*(v3 + 24))
          {
          }
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v0 + v2);
      }

      goto LABEL_20;
    }

    if (EnumCaseMultiPayload != 2)
    {

      goto LABEL_20;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload != 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
      }

      goto LABEL_20;
    }

LABEL_16:

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 4)
  {

    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD448) + 64);
    v6 = sub_1A3A30090();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 5)
  {
    goto LABEL_16;
  }

LABEL_20:

  return swift_deallocObject();
}

uint64_t sub_1A36684AC()
{
  v1 = *(type metadata accessor for ChromeElementIcon() - 8);
  v2 = (*(v1 + 80) + 34) & ~*(v1 + 80);
  v3 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {

          if (*(v3 + 24))
          {
          }
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v0 + v2);
      }

      goto LABEL_20;
    }

    if (EnumCaseMultiPayload != 2)
    {

      goto LABEL_20;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload != 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
      }

      goto LABEL_20;
    }

LABEL_16:

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 4)
  {

    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD448) + 64);
    v6 = sub_1A3A30090();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 5)
  {
    goto LABEL_16;
  }

LABEL_20:

  return swift_deallocObject();
}

uint64_t sub_1A3668680()
{
  v1 = *(type metadata accessor for ChromeElementIcon() - 8);
  v2 = (*(v1 + 80) + 41) & ~*(v1 + 80);
  v3 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {

          if (*(v3 + 24))
          {
          }
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v0 + v2);
      }

      goto LABEL_20;
    }

    if (EnumCaseMultiPayload != 2)
    {

      goto LABEL_20;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload != 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
      }

      goto LABEL_20;
    }

LABEL_16:

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 4)
  {

    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD448) + 64);
    v6 = sub_1A3A30090();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 5)
  {
    goto LABEL_16;
  }

LABEL_20:

  return swift_deallocObject();
}

uint64_t sub_1A3668854@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A3A2FE70();
  *a1 = result;
  return result;
}

uint64_t sub_1A3668994()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1A36689DC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3668A84()
{
  MEMORY[0x1A58FACD0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3668B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1A3A2ECE0();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 44);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF428);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 64);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1A3668C64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = sub_1A3A2ECE0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF428);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 64);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1A3668DA4()
{
  sub_1A3A30250();
  sub_1A3A30200();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3668E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ChromeMenu();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A3668F08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ChromeMenu();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A3668FC4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3669040()
{

  return swift_deallocObject();
}

uint64_t sub_1A36690A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFC38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3669120()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FFC38);
  sub_1A3992A28();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3669188()
{
  MEMORY[0x1A58FACD0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A36691C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCDD0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1A3669304(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCDD0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1A3669464@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A3A2FD70();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A36694BC@<X0>(void *a1@<X8>)
{
  result = sub_1A3A2FDC0();
  *a1 = v3;
  return result;
}

uint64_t sub_1A36695EC()
{
  MEMORY[0x1A58FACD0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3669628()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3669670()
{

  return swift_deallocObject();
}

uint64_t sub_1A3669840(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFF68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A36698B0@<X0>(_BYTE *a1@<X8>)
{
  result = MEMORY[0x1A58F5CE0]();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A3669950()
{

  return swift_deallocObject();
}

uint64_t sub_1A3669A80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A3A2E950();
  *a1 = result;
  return result;
}

uint64_t sub_1A3669AAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A3A2E950();
  *a1 = result;
  return result;
}

uint64_t sub_1A3669BD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A3A2E930();
  *a1 = v3;
  return result;
}

uint64_t sub_1A3669C18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A3A2E930();
  *a1 = v3;
  return result;
}

uint64_t sub_1A3669C58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A3A2E930();
  *a1 = v3;
  return result;
}

uint64_t sub_1A3669C98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A3A2E930();
  *a1 = v3;
  return result;
}

uint64_t sub_1A3669CD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A3A2E930();
  *a1 = v3;
  return result;
}

uint64_t sub_1A3669E38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A3A2E950();
  *a1 = result;
  return result;
}

uint64_t sub_1A3669E64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A3A2E950();
  *a1 = result;
  return result;
}

uint64_t sub_1A366A17C()
{

  return swift_deallocObject();
}

uint64_t sub_1A366AA9C()
{

  return swift_deallocObject();
}

uint64_t sub_1A366AB34()
{

  return swift_deallocObject();
}

uint64_t sub_1A366B2F4@<X0>(uint64_t a1@<X8>)
{
  sub_1A39C7DF0();
  result = sub_1A3A2FEF0();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1A366B3A0@<X0>(void *a1@<X8>)
{
  sub_1A3968434();
  result = sub_1A3A2FEF0();
  *a1 = v3;
  return result;
}

uint64_t sub_1A366B4B8@<X0>(void *a1@<X8>)
{
  result = sub_1A3A2FD00();
  *a1 = v3;
  return result;
}

uint64_t sub_1A366B50C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A3A2FE20();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A366B554()
{

  return swift_deallocObject();
}

uint64_t sub_1A366B5A4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 128) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A366B678()
{
  sub_1A3A31E70();
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD090);
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  swift_getWitnessTable();
  sub_1A3A31220();
  swift_getWitnessTable();
  sub_1A38A08F8(&qword_1EB0FD088, &qword_1EB0FD090);
  swift_getWitnessTable();
  sub_1A39CC974();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3A31140();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1006C0);
  sub_1A3A2FA90();
  swift_getWitnessTable();
  sub_1A38A08F8(&qword_1EB1006D0, &qword_1EB1006C0);
  return swift_getWitnessTable();
}

__n128 sub_1A366B8F0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1A366B90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100748);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1A366B9D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100748);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

__n128 sub_1A366BAB8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1A366BACC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100768);
  sub_1A38A08F8(&qword_1EB100770, &qword_1EB100768);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A366BB7C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF428);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 36)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1007A8);
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 40)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *sub_1A366BCB8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF428);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 36)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1007A8);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 40)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1A366BDF4()
{

  return swift_deallocObject();
}

__n128 sub_1A366BE50(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A366BE80()
{

  return swift_deallocObject();
}

uint64_t sub_1A366BEC8()
{
  v21 = *(v0 + 16);
  v1 = type metadata accessor for ModeWheel();
  v23 = *(*(v1 - 1) + 64);
  v24 = *(*(v1 - 1) + 80);
  v2 = v21;
  v3 = *(v21 - 8);
  v20 = *(v3 + 80);
  v22 = (v24 + 64) & ~v24;
  v4 = v0 + v22;

  v5 = v0 + v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00) + 32);
  v6 = type metadata accessor for ModeWheelGestureState(0);
  v7 = *(v6 + 36);
  v8 = sub_1A3A2ECE0();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = *(v6 + 40);
  v11 = sub_1A3A2F620();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v5 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  v13 = v4 + v1[24];

  v14 = sub_1A3A311E0();
  v15 = *(v3 + 8);
  v15(v13 + *(v14 + 32), v2);

  if (*(v4 + v1[26]))
  {
  }

  if (*(v4 + v1[27]))
  {
  }

  v16 = v4 + v1[48];
  j__swift_release();
  v17 = *(type metadata accessor for ChromeScenePhase(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD670);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_1A3A2F540();
    (*(*(v18 - 8) + 8))(v16 + v17, v18);
  }

  else
  {
  }

  v15(v0 + ((v22 + v23 + v20) & ~v20), v2);
  return swift_deallocObject();
}

uint64_t sub_1A366C3D4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 28)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1A366C488(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A366C534()
{
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100808);
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A38A08F8(&qword_1EB100810, &qword_1EB100808);
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for ModeWheelListView();
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A389EEE0();
  sub_1A38E9D44();
  type metadata accessor for DoubleSpringAnimation();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100818);
  sub_1A3A2FA90();
  swift_getWitnessTable();
  sub_1A38A08F8(&qword_1EB100820, &qword_1EB100818);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD090);
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100828);
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC470);
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100830);
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100838);
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100800);
  swift_getOpaqueTypeConformance2();
  sub_1A38A08F8(&qword_1EB0FD088, &qword_1EB0FD090);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A38A08F8(&qword_1ED9990A8, &qword_1EB100828);
  swift_getWitnessTable();
  sub_1A38A08F8(&qword_1ED996638, &qword_1EB0FC470);
  swift_getWitnessTable();
  sub_1A38A08F8(&qword_1ED9990B0, &qword_1EB100830);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A38A08F8(&qword_1ED9990B8, &qword_1EB100838);
  swift_getWitnessTable();
  sub_1A39DBDD4();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModeWheelGestureState(255);
  swift_getOpaqueTypeConformance2();
  sub_1A39DA768(&qword_1ED9990C0, type metadata accessor for ModeWheelGestureState);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ScenePhaseModifier(255);
  sub_1A3A2FA90();
  swift_getOpaqueTypeConformance2();
  sub_1A39DA768(&qword_1ED996E60, type metadata accessor for ScenePhaseModifier);
  swift_getWitnessTable();
  sub_1A3955A7C();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100858);
  swift_getOpaqueTypeConformance2();
  sub_1A39DBE84();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A3A30010();
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100870);
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC9B8);
  sub_1A3A2FA90();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A38A08F8(&qword_1EB1008A8, &qword_1EB100870);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A38A08F8(&qword_1ED9966F0, &qword_1EB0FC9B8);
  return swift_getWitnessTable();
}

uint64_t sub_1A366CFE4()
{

  if (*(v0 + 144))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A366D034()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);

  if (*(v0 + 144))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 160) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_1A366D118()
{
  _s10ListLayoutVMa();
  swift_getWitnessTable();
  sub_1A3A2F6B0();
  sub_1A3A31A40();
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  sub_1A3A31220();
  swift_getWitnessTable();
  sub_1A3A2F880();
  type metadata accessor for ListLayoutCenteredGroupFitReporter();
  sub_1A3A31DE0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3A301D0();
  sub_1A3A2FA90();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A366D434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 60));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A366D4FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 60)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A366D604()
{
  v1 = type metadata accessor for ModePicker();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00) + 32);
  v4 = type metadata accessor for ModeWheelGestureState(0);
  v5 = *(v4 + 36);
  v6 = sub_1A3A2ECE0();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v8 = *(v4 + 40);
  v9 = sub_1A3A2F620();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  if (*(v2 + v1[9]))
  {
  }

  v11 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A3A30090();
    (*(*(v12 - 8) + 8))(v2 + v11, v12);
  }

  else
  {
  }

  v13 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1A3A30430();
    (*(*(v14 - 8) + 8))(v2 + v13, v14);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A366D990()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  }

  if (v0[15])
  {
    if (v0[13])
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 10));
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1A366DA18()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC9F0);
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100A90);
  swift_getTupleTypeMetadata2();
  sub_1A3A31550();
  sub_1A3A31DE0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100A98);
  sub_1A3A2FA90();
  swift_getTupleTypeMetadata2();
  sub_1A3A31550();
  sub_1A3A31DE0();
  swift_getTupleTypeMetadata3();
  sub_1A3A31550();
  swift_getWitnessTable();
  sub_1A3A31030();
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC9B8);
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100AA0);
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A38A08F8(&qword_1ED9966F0, &qword_1EB0FC9B8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A38A08F8(&qword_1EB100AA8, &qword_1EB100AA0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A366DD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 76);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCDD0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 88);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1A366DE94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 76);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCDD0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 88);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1A366DFE0()
{
  v1 = type metadata accessor for ControlGrid();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 72))
  {
  }

  v3 = v2 + *(v1 + 76);
  v4 = sub_1A3A30430();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78);

  v6 = *(v1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1A3A30090();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A366E214()
{
  v1 = type metadata accessor for ControlGrid();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 72))
  {
  }

  v3 = v2 + *(v1 + 76);
  v4 = sub_1A3A30430();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78);

  v6 = *(v1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1A3A30090();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A366E454()
{
  v1 = type metadata accessor for ControlGrid();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 56) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 72))
  {
  }

  v3 = v2 + *(v1 + 76);
  v4 = sub_1A3A30430();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78);

  v6 = *(v1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1A3A30090();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A366E68C()
{
  v1 = type metadata accessor for ControlGrid();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 49) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 72))
  {
  }

  v3 = v2 + *(v1 + 76);
  v4 = sub_1A3A30430();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78);

  v6 = *(v1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1A3A30090();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A366E8D4()
{
  v1 = type metadata accessor for ControlGrid();
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64) + v2 + 7;
  v4 = v0 + v2;

  if (*(v4 + 72))
  {
  }

  v5 = v3 & 0xFFFFFFFFFFFFFFF8;
  v6 = v4 + *(v1 + 76);
  v7 = sub_1A3A30430();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78);

  v9 = *(v1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1A3A30090();
    (*(*(v10 - 8) + 8))(v4 + v9, v10);
  }

  else
  {
  }

  if (*(v0 + v5) >= 0x23uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A366EB24()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100B98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100BA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD930);
  sub_1A3A2FA90();
  sub_1A38A08F8(&qword_1EB0FD928, &qword_1EB0FD930);
  swift_getWitnessTable();
  type metadata accessor for GridButton();
  swift_getTupleTypeMetadata2();
  sub_1A3A31550();
  swift_getWitnessTable();
  sub_1A3A31120();
  sub_1A3A2FA90();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A3A30590();
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100BA8);
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  swift_getTupleTypeMetadata3();
  sub_1A3A31550();
  sub_1A3A31DE0();
  sub_1A39EF638();
  sub_1A3A31220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100BC0);
  sub_1A3A2FA90();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A38A08F8(&qword_1EB100BC8, &qword_1EB100BC0);
  swift_getWitnessTable();
  sub_1A3A31270();
  sub_1A3A2FA90();
  sub_1A3A31220();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3A307D0();
  sub_1A3A2FA90();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A3A2FA90();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1A3A31040();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC9F0);
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  swift_getTupleTypeMetadata2();
  sub_1A3A31550();
  swift_getWitnessTable();
  sub_1A3A31140();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC9B8);
  sub_1A3A2FA90();
  swift_getWitnessTable();
  sub_1A38A08F8(&qword_1ED9966F0, &qword_1EB0FC9B8);
  return swift_getWitnessTable();
}

uint64_t sub_1A366F170()
{

  return swift_deallocObject();
}

uint64_t sub_1A366F1B8()
{
  sub_1A3A31010();
  swift_getWitnessTable();
  sub_1A39F12DC();
  swift_getOpaqueTypeMetadata2();
  sub_1A3A2FA90();
  swift_getOpaqueTypeConformance2();
  sub_1A39F1364();
  return swift_getWitnessTable();
}

uint64_t sub_1A366F2B8()
{

  return swift_deallocObject();
}

uint64_t sub_1A366F2F8()
{
  sub_1A3A303A0();
  sub_1A39F1444(&qword_1ED999240, MEMORY[0x1E697C8D0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A366F420@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A39F48D8();
  *a1 = result & 1;
  return result;
}

__n128 sub_1A366F484(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1A366F498()
{

  return swift_deallocObject();
}

uint64_t sub_1A366F4D8()
{

  return swift_deallocObject();
}

uint64_t sub_1A366F510()
{
  sub_1A3A30450();
  sub_1A39F6A84();
  sub_1A3A2F730();
  return swift_getWitnessTable();
}

uint64_t sub_1A366F58C()
{

  return swift_deallocObject();
}

uint64_t sub_1A366F5D4()
{
  sub_1A3A30450();
  sub_1A39F6A84();
  sub_1A3A2F730();
  return swift_getWitnessTable();
}

uint64_t sub_1A366F650(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A366F6C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A366F848(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483612)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 35;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCDD0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

void *sub_1A366F914(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483612)
  {
    *result = (a2 + 34);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCDD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A366F9C8()
{
  v1 = type metadata accessor for ChromeCircularSymbolButton();
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  if (*v2 >= 0x23uLL)
  {
  }

  v3 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A3A30090();
    (*(*(v4 - 8) + 8))(&v2[v3], v4);
  }

  else
  {
  }

  sub_1A3670FF4(*&v2[*(v1 + 40)], v2[*(v1 + 40) + 8]);

  return swift_deallocObject();
}

uint64_t sub_1A366FB40()
{
  sub_1A3A303A0();
  sub_1A39FC91C();
  swift_getOpaqueTypeMetadata2();
  sub_1A3A30480();
  sub_1A3A2FA90();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A366FDF8@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1A3670078()
{

  return swift_deallocObject();
}

uint64_t sub_1A36700E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3670158(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A367030C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3670868()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1A36708B4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3670924()
{
  _Block_release(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1A3670974()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1018F8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3670B00()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3670B38()
{
  MEMORY[0x1A58FACD0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3670E24()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3670F20()
{
  if (*(v0 + 16) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3670F60()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3670F9C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3670FF4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1A3671090(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1A36731A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A367D844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A367DA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3681584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A3681BD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_1A368267C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v7 + 40));
  _Unwind_Resume(a1);
}

void sub_1A36865A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

int64_t CAMInterfaceOrientationForWindow(void *a1)
{
  v1 = a1;
  if ([v1 isRotating])
  {
    v2 = [v1 _toWindowOrientation];
  }

  else
  {
    v2 = [v1 _windowInterfaceOrientation];
  }

  v3 = v2;

  result = +[CAMApplication appOrPlugInInterfaceOrientation];
  if (v3)
  {
    v5 = v1 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    return v3;
  }

  return result;
}

void sub_1A368DCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A368E8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *CAMDebugStringForCaptureDevice(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return 0;
  }

  else
  {
    return off_1E76F7D58[a1];
  }
}

void sub_1A36939C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3694084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void cam_perform_on_main_asap(void *a1)
{
  v1 = MEMORY[0x1E696AF00];
  v2 = a1;
  if ([v1 isMainThread])
  {
    v2[2]();
  }

  else
  {
    pl_dispatch_async();
  }
}

void sub_1A3696CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v21 - 72));
  _Unwind_Resume(a1);
}

uint64_t FastRegistration_computeSignatures(uint64_t *a1, int a2, NSObject *a3, uint64_t a4)
{
  v8 = Projections_projectionRowsCols_planar8UtoF(*a1);
  v10 = v8;
  if (v8 < 0)
  {
    StatusDescription = Projections_getStatusDescription(v8);
    v22 = 45;
    goto LABEL_24;
  }

  v12 = a1[1];
  v11 = a1[2];
  *(a4 + 40) = v11;
  *(a4 + 8) = v12;
  if (*(a4 + 24) && *(a4 + 16) && *(a4 + 56))
  {
    v13 = *(a4 + 48) != 0;
    if (!a3)
    {
      goto LABEL_6;
    }

LABEL_14:
    v44 = 0;
    v45 = &v44;
    v46 = 0;
    v47 = 32;
    v40 = 0;
    v41 = &v40;
    v42 = 0;
    v43 = 32;
    v36 = 0;
    v37 = &v36;
    v38 = 0;
    v39 = 32;
    v32 = 0;
    v33 = &v32;
    v34 = 0;
    v35 = 32;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __FastRegistration_computeSignatures_block_invoke;
    block[3] = &unk_1E76F7F40;
    v31 = a2;
    block[5] = &v36;
    block[6] = a4;
    v30 = v13;
    block[4] = &v44;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 0x40000000;
    v26[2] = __FastRegistration_computeSignatures_block_invoke_2;
    v26[3] = &unk_1E76F7F68;
    v28 = a2;
    v26[5] = &v32;
    v26[6] = a4;
    v27 = v13;
    v26[4] = &v40;
    dispatch_async(a3, block);
    dispatch_async(a3, v26);
    dispatch_barrier_sync(a3, &__block_literal_global_2);
    v19 = *(v45 + 6);
    if (!v19)
    {
      v19 = *(v41 + 6);
      if (!v19)
      {
        if (*(v33 + 6) | *(v37 + 6))
        {
          v19 = -7;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(&v44, 8);
    goto LABEL_20;
  }

  v13 = 0;
  if (a3)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (!a2)
  {
LABEL_9:
    if (!v13)
    {
LABEL_12:
      v19 = 0;
      goto LABEL_20;
    }

    v17 = Projections_computeMeanStdTable(*(a4 + 32), *(a4 + 40), (a4 + 48));
    if ((v17 & 0x80000000) == 0)
    {
      v18 = Projections_computeMeanStdTable(*a4, *(a4 + 8), (a4 + 16));
      v10 = v18;
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      v25 = Projections_getStatusDescription(v18);
      syslog(3, "Projections error %d:%s in %s @ %s:%d\n", v10, v25, "FastRegistration_status FastRegistration_computeSignatures(const vImage_Buffer *, _Bool, dispatch_queue_t, FastRegistration_Signatures *)", "/Library/Caches/com.apple.xbs/Sources/Camera/CameraUI/BurstAnalysisCore/Projections/FastRegistration_Core.c", 110);
      return 4294967289;
    }

    v10 = v17;
    StatusDescription = Projections_getStatusDescription(v17);
    v22 = 109;
LABEL_24:
    syslog(3, "Projections error %d:%s in %s @ %s:%d\n", v10, StatusDescription, "FastRegistration_status FastRegistration_computeSignatures(const vImage_Buffer *, _Bool, dispatch_queue_t, FastRegistration_Signatures *)", "/Library/Caches/com.apple.xbs/Sources/Camera/CameraUI/BurstAnalysisCore/Projections/FastRegistration_Core.c", v22);
    return 4294967289;
  }

  v14 = FastRegistration_processProjections(*(a4 + 32), v11, v9);
  if (v14 < 0)
  {
    v19 = v14;
    v23 = FastRegistration_getStatusDescription(v14);
    syslog(3, "FastRegistration error %d:%s in %s @ %s:%d\n", v19, v23, "FastRegistration_status FastRegistration_computeSignatures(const vImage_Buffer *, _Bool, dispatch_queue_t, FastRegistration_Signatures *)", "/Library/Caches/com.apple.xbs/Sources/Camera/CameraUI/BurstAnalysisCore/Projections/FastRegistration_Core.c", 105);
  }

  else
  {
    v16 = FastRegistration_processProjections(*a4, *(a4 + 8), v15);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    v19 = v16;
    v24 = FastRegistration_getStatusDescription(v16);
    syslog(3, "FastRegistration error %d:%s in %s @ %s:%d\n", v19, v24, "FastRegistration_status FastRegistration_computeSignatures(const vImage_Buffer *, _Bool, dispatch_queue_t, FastRegistration_Signatures *)", "/Library/Caches/com.apple.xbs/Sources/Camera/CameraUI/BurstAnalysisCore/Projections/FastRegistration_Core.c", 106);
  }

LABEL_20:
  if (v10)
  {
    return 4294967289;
  }

  else
  {
    return v19;
  }
}

uint64_t FastRegistration_processProjections(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(__B, a3);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = v4;
  v6 = v3;
  STACK[0x3348] = *MEMORY[0x1E69E9840];
  if ((v4 * 0.03) <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = (v4 * 0.03);
  }

  v8 = Projections_smoothProjection(v3, v4, v7, __B);
  if (v8 < 0)
  {
    v12 = v8;
    StatusDescription = Projections_getStatusDescription(v8);
    syslog(3, "Projections error %d:%s in %s @ %s:%d\n", v12, StatusDescription, "FastRegistration_status FastRegistration_processProjections(float *, vImagePixelCount)", "/Library/Caches/com.apple.xbs/Sources/Camera/CameraUI/BurstAnalysisCore/Projections/FastRegistration_Core.c", 25);
    return 4294967289;
  }

  v9 = Projections_computeProjectionDerivative(__B, v5, v6);
  v10 = v9;
  if (v9 < 0)
  {
    v14 = Projections_getStatusDescription(v9);
    syslog(3, "Projections error %d:%s in %s @ %s:%d\n", v10, v14, "FastRegistration_status FastRegistration_processProjections(float *, vImagePixelCount)", "/Library/Caches/com.apple.xbs/Sources/Camera/CameraUI/BurstAnalysisCore/Projections/FastRegistration_Core.c", 26);
    return 4294967289;
  }

  if (v9)
  {
    return 4294967289;
  }

  else
  {
    return 0;
  }
}

uint64_t FastRegistration_register(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, uint64_t block, uint64_t a24, uint64_t (*a25)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9), void *a26, uint64_t *a27, void *a28, uint64_t a29, float *a30, float *a31, int a32, uint64_t a33, uint64_t *a34, uint64_t a35, int a36, uint64_t a37, uint64_t *a38, uint64_t a39, int a40, int a41, float a42)
{
  v42 = MEMORY[0x1EEE9AC00](a1);
  v48 = v47;
  v50 = v49;
  v51 = v44;
  v53 = v52;
  v54 = v42;
  STACK[0xCD38] = *MEMORY[0x1E69E9840];
  v55 = v42[5];
  v56 = *(v53 + 40);
  if (v55 >= v56)
  {
    v57 = *(v53 + 40);
  }

  else
  {
    v57 = v42[5];
  }

  v58 = (v57 * v46);
  v59 = v42[1];
  if (v59 >= *(v53 + 8))
  {
    v59 = *(v53 + 8);
  }

  v60 = (v59 * v46);
  a37 = 0;
  a38 = &a37;
  a39 = 0x2000000000;
  a40 = 0;
  a33 = 0;
  a34 = &a33;
  a35 = 0x2000000000;
  a36 = 0;
  if (v43)
  {
    v61 = v43;
    block = MEMORY[0x1E69E9820];
    a24 = 0x40000000;
    a25 = __FastRegistration_register_block_invoke;
    a26 = &unk_1E76F7FB0;
    a27 = &a37;
    a28 = v42;
    a32 = v58;
    a29 = v53;
    a30 = v44;
    a31 = v45;
    var10[0] = MEMORY[0x1E69E9820];
    var10[1] = 0x40000000;
    var10[2] = __FastRegistration_register_block_invoke_2;
    var10[3] = &unk_1E76F7FD8;
    dispatch_async(v43, &block);
    dispatch_async(v61, var10);
    dispatch_barrier_sync(v61, &__block_literal_global_10);
  }

  else
  {
    v62 = Projections_computeShiftBruteForce(v42[4], v55, v42 + 6, *(v53 + 32), v56, (v53 + 48), v58, &STACK[0x6720], 0.0, &a42, v44, v45);
    *(a38 + 6) = v62;
    if (v62 < 0)
    {
      v65 = v62;
      StatusDescription = Projections_getStatusDescription(v62);
      syslog(3, "Projections error %d:%s in %s @ %s:%d\n", v65, StatusDescription, "FastRegistration_status FastRegistration_register(const FastRegistration_Signatures *, const FastRegistration_Signatures *, float, dispatch_queue_t, float *, float *, float *, float *)", "/Library/Caches/com.apple.xbs/Sources/Camera/CameraUI/BurstAnalysisCore/Projections/FastRegistration_Core.c", 185);
      goto LABEL_13;
    }

    v63 = Projections_computeShiftBruteForce(*v54, *(v54 + 2), v54 + 2, *v53, *(v53 + 8), (v53 + 16), v60, &STACK[0x6720], 0.0, &a42, v50, v48);
    *(a34 + 6) = v63;
    if (v63 < 0)
    {
      v64 = v63;
      v68 = Projections_getStatusDescription(v63);
      syslog(3, "Projections error %d:%s in %s @ %s:%d\n", v64, v68, "FastRegistration_status FastRegistration_register(const FastRegistration_Signatures *, const FastRegistration_Signatures *, float, dispatch_queue_t, float *, float *, float *, float *)", "/Library/Caches/com.apple.xbs/Sources/Camera/CameraUI/BurstAnalysisCore/Projections/FastRegistration_Core.c", 195);
      goto LABEL_13;
    }
  }

  *v51 = -*v51;
  *v50 = -*v50;
LABEL_13:
  if (*(a38 + 6) || *(a34 + 6))
  {
    v66 = 4294967289;
  }

  else
  {
    v66 = 0;
  }

  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  return v66;
}

uint64_t FastRegistration_compareSignatures@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, float *a3@<X2>, vDSP_Length *a4@<X3>, float *a5@<X4>, vDSP_Length *a6@<X5>, uint64_t a7@<X8>, float a8@<S0>, float a9@<S1>)
{
  FastRegistration_compareSignature(a1[4], a1[5], a2[4], a2[5], a3, a4, a7, a8);
  FastRegistration_compareSignature(*a1, a1[1], *a2, a2[1], a5, a6, v14, a9);
  return 0;
}

void FastRegistration_compareSignature(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, float *a5@<X4>, vDSP_Length *a6@<X5>, uint64_t a7@<X8>, float a8@<S0>)
{
  LODWORD(a7) = vcvtms_s32_f32(a8 + 0.5);
  v10 = -a7;
  v11 = ~a7 + a2;
  if (v11 >= a4)
  {
    v11 = a4 - 1;
  }

  v12 = a7 + v11;
  v13 = a7 + a4;
  if (a7 + a4 >= a2)
  {
    v13 = a2;
  }

  v14 = v13 - a7;
  v15 = a7 >= 0;
  if (a7 >= 0)
  {
    v10 = 0;
  }

  else
  {
    a7 = 0;
  }

  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = v12 + 1;
  }

  v17 = v16;
  MEMORY[0x1A58FAE10](a1 + 4 * a7, 1, a3 + 4 * v10, 1, a5, 1, v16);
  vDSP_vabs(a5, 1, a5, 1, v17);
  *a6 = v17;
}

char *allocateSignatureBuffers(uint64_t a1, uint64_t a2, int a3)
{
  result = 0;
  if (a1 && a2)
  {
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v7 = *(a2 + 8);
    v6 = *(a2 + 16);
    *(a1 + 40) = v6;
    *(a1 + 8) = v7;
    LODWORD(v6) = 4 * v6;
    v8 = (v6 + 31) & 0xFFFFFFE0;
    LODWORD(v7) = 4 * v7;
    v9 = (v7 + 31) & 0xFFFFFFE0;
    v10 = (v6 + 35) & 0xFFFFFFE0;
    v11 = (v7 + 35) & 0xFFFFFFE0;
    v12 = 2 * (v11 + v10);
    if (!a3)
    {
      v12 = 0;
    }

    result = malloc_type_calloc(1uLL, v9 + v8 + v12, 0x100004077774924uLL);
    if (result)
    {
      *(a1 + 32) = result;
      v13 = &result[v8];
      *a1 = v13;
      if (a3)
      {
        v14 = &v13[v9];
        v15 = &v14[v11];
        *(a1 + 16) = v14;
        *(a1 + 24) = v15;
        v16 = &v15[v11];
        *(a1 + 48) = v16;
        *(a1 + 56) = &v16[v10];
      }
    }
  }

  return result;
}

uint64_t FastRegistration_initRoi(void *a1, int8x16_t *a2, uint64_t a3)
{
  v3 = a1[3];
  *a3 = *a1 + v3 * a2->i64[1] + a2->i64[0];
  *(a3 + 8) = vextq_s8(a2[1], a2[1], 8uLL);
  *(a3 + 24) = v3;
  return 0;
}

uint64_t FastRegistration_vImageBufferMalloc(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = (a3 * a1 + 15) & 0xFFFFFFFFFFFFFFF0;
  a4[2] = a1;
  a4[3] = v5;
  a4[1] = a2;
  v6 = malloc_type_malloc(v5 * a2, 0xB363A45CuLL);
  *a4 = v6;
  if (v6)
  {
    return 0;
  }

  else
  {
    return 4294967292;
  }
}

void FastRegistration_vImageBufferFree(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

uint64_t Projections_projectionRows_planar8UtoF(uint64_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v30 = *MEMORY[0x1E69E9840];
  v16 = a1;
  v17 = a2 >> 1;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v23 = a1 + (a2 >> 1);
  v24 = a2 >> 1;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6 + 4 * (a2 >> 1);
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("projectionRows_planar8UtoF", v6);
  v8 = MEMORY[0x1E69E9820];
  v11 = MEMORY[0x1E69E9820];
  v12 = 0x40000000;
  v13 = __Projections_projectionRows_planar8UtoF_block_invoke;
  v14 = &__block_descriptor_tmp_0;
  v15 = &v16;
  dispatch_async(v7, &v11);
  v11 = v8;
  v12 = 0x40000000;
  v13 = __Projections_projectionRows_planar8UtoF_block_invoke;
  v14 = &__block_descriptor_tmp_0;
  v15 = &v23;
  dispatch_async(v7, &v11);
  dispatch_barrier_sync(v7, &__block_literal_global_3);
  if (v22)
  {
    v9 = v22;
  }

  else
  {
    v9 = v29;
  }

  dispatch_release(v7);
  return v9;
}

uint64_t Projections_projectionCols_planar8UtoF(uint64_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v30 = *MEMORY[0x1E69E9840];
  v16 = a1;
  v17 = a2;
  v18 = a3 >> 1;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v23 = a1 + (a3 >> 1) * a4;
  v24 = a2;
  v25 = a3 >> 1;
  v26 = a4;
  v27 = a5;
  v28 = a6 + 4 * (a3 >> 1);
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("projectionCols_planar8UtoF", v6);
  v8 = MEMORY[0x1E69E9820];
  v11 = MEMORY[0x1E69E9820];
  v12 = 0x40000000;
  v13 = __Projections_projectionCols_planar8UtoF_block_invoke;
  v14 = &__block_descriptor_tmp_4_0;
  v15 = &v16;
  dispatch_async(v7, &v11);
  v11 = v8;
  v12 = 0x40000000;
  v13 = __Projections_projectionCols_planar8UtoF_block_invoke;
  v14 = &__block_descriptor_tmp_4_0;
  v15 = &v23;
  dispatch_async(v7, &v11);
  dispatch_barrier_sync(v7, &__block_literal_global_7);
  if (v22)
  {
    v9 = v22;
  }

  else
  {
    v9 = v29;
  }

  dispatch_release(v7);
  return v9;
}

uint64_t Projections_projectionRowsCols_planar8UtoF(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v9 = v8;
  v10 = v5;
  v11 = v4;
  v12 = v3;
  v13 = v2;
  v14 = v1;
  STACK[0x6648] = *MEMORY[0x1E69E9840];
  if (v3 & 1 | v2 & 0x1F || v4 & 0x1F | v1 & 0xF)
  {
    v16 = Projections_projectionCols_planar8UtoF(v1, v2, v3, v4, 1, v5);
    if ((v16 & 0x80000000) != 0)
    {
      v18 = v16;
      StatusDescription = Projections_getStatusDescription(v16);
      syslog(3, "Projections error %d:%s in %s @ %s:%d\n", v18, StatusDescription, "Projections_status Projections_projectionRowsCols_planar8UtoF(const uint8_t *, int, int, size_t, float *, float *)", "/Library/Caches/com.apple.xbs/Sources/Camera/CameraUI/BurstAnalysisCore/Projections/Projections_Core.c", 471);
      return v18;
    }

    else
    {
      v17 = Projections_projectionRows_planar8UtoF(v14, v13, v12, v11, 1, v9);
      v15 = v17;
      if ((v17 & 0x80000000) != 0)
      {
        v23 = Projections_getStatusDescription(v17);
        syslog(3, "Projections error %d:%s in %s @ %s:%d\n", v15, v23, "Projections_status Projections_projectionRowsCols_planar8UtoF(const uint8_t *, int, int, size_t, float *, float *)", "/Library/Caches/com.apple.xbs/Sources/Camera/CameraUI/BurstAnalysisCore/Projections/Projections_Core.c", 472);
      }
    }
  }

  else if (PixelSumASM(v1, v2, v3, v4, &STACK[0x3340], &__A, v6, v7, v21))
  {
    v15 = 0xFFFFFFFFLL;
    v22 = Projections_getStatusDescription(-1);
    syslog(3, "Projections error %d:%s in %s @ %s:%d\n", -1, v22, "Projections_status Projections_projectionRowsCols_planar8UtoF(const uint8_t *, int, int, size_t, float *, float *)", "/Library/Caches/com.apple.xbs/Sources/Camera/CameraUI/BurstAnalysisCore/Projections/Projections_Core.c", 463);
  }

  else
  {
    vDSP_vflt32(&STACK[0x3340], 1, v10, 1, v12);
    vDSP_vflt32(__A.i32, 1, v9, 1, v13);
    return 0;
  }

  return v15;
}

uint64_t Projections_smoothProjection(uint64_t a1, int a2, int a3, uint64_t a4)
{
  LODWORD(v4) = -a3;
  if (-a3 < a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = v4 - a3;
    v4 = v4;
    do
    {
      v9 = v8 + v5;
      if (v8 + v5 < 0 || v5 >= a2)
      {
        if (v5 < a2)
        {
          v7 = (*(a1 + 4 * v5) + v7);
          ++v6;
        }

        v11 = v7;
        if ((v4 & 0x8000000000000000) == 0)
        {
          *(a4 + 4 * v4) = v11 / v6;
        }

        if ((v9 & 0x80000000) == 0)
        {
          v7 = (v11 - *(a1 + 4 * v9));
          --v6;
        }
      }

      else
      {
        v10 = (*(a1 + 4 * v5) + v7);
        *(a4 + 4 * v4) = v10 / (v6 + 1);
        v7 = (v10 - *(a1 + 4 * v9));
      }

      ++v4;
      ++v5;
    }

    while (a3 + a2 != v5);
  }

  return 0;
}

uint64_t Projections_computeProjectionDerivative(const float *__B, int a2, float *a3)
{
  if (a2 > 1)
  {
    v5 = __B[1] - *__B;
    *a3 = v5;
    if (a2 == 3)
    {
      v3 = 0;
      a3[1] = -(*__B - (__B[2] * 0.5));
      a3[2] = __B[2] - __B[1];
    }

    else
    {
      v6 = (a2 - 2);
      if (a2 == 2)
      {
        v3 = 0;
        a3[1] = v5;
      }

      else
      {
        a3[a2 - 1] = __B[a2 - 1] - __B[v6];
        __C = 0.5;
        vDSP_vsbsm(__B + 2, 1, __B, 1, &__C, a3 + 1, 1, v6);
        return 0;
      }
    }
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
    StatusDescription = Projections_getStatusDescription(-1);
    syslog(3, "Projections error %d:%s in %s @ %s:%d\n", -1, StatusDescription, "Projections_status Projections_computeProjectionDerivative(const float *, int, float *)", "/Library/Caches/com.apple.xbs/Sources/Camera/CameraUI/BurstAnalysisCore/Projections/Projections_Core.c", 528);
  }

  return v3;
}

uint64_t Projections_computeProjectionLineRegressionQuality(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  STACK[0x3338] = *MEMORY[0x1E69E9840];
  __SumOfSquares = 0;
  __A[1] = 0.0;
  if (v2 >= 2)
  {
    v7 = v2;
    v8 = v1;
    v9 = v2 - 1;
    v10 = v2;
    v11 = 1.0 / v2;
    __B[1] = 1.0;
    __A[0] = 0.0;
    v12 = v2;
    vDSP_vramp(__A, &__B[1], __C, 1, v2);
    v13 = 715827883 * (((2 * v9) | 1) * v9 * v7);
    v14 = v11 * (HIDWORD(v13) + (v13 >> 63));
    vDSP_sve_svesq(v8, 1, &__SumOfSquares + 1, &__SumOfSquares, v12);
    *&__SumOfSquares = v11 * *&__SumOfSquares;
    *(&__SumOfSquares + 1) = v11 * *(&__SumOfSquares + 1);
    vDSP_dotpr(v8, 1, __C, 1, &__A[1], v12);
    __A[1] = v11 * __A[1];
    *&v15 = (*&__SumOfSquares - (*(&__SumOfSquares + 1) * *(&__SumOfSquares + 1))) + ((-(__A[1] + (-(v11 * ((v9 * v7) >> 1)) * *(&__SumOfSquares + 1))) / (v14 - ((v11 * ((v9 * v7) >> 1)) * (v11 * ((v9 * v7) >> 1))))) * (__A[1] - ((v11 * ((v9 * v7) >> 1)) * *(&__SumOfSquares + 1))));
    v16 = *Projections_fastSqrtf(v15).i32;
    result = 0;
    v6 = v16 / v10;
  }

  else
  {
    result = 4294967294;
    v6 = 0.0;
  }

  *v4 = v6;
  return result;
}

int8x8_t Projections_fastRecSqrtf(double a1)
{
  v1 = vdup_lane_s32(*&a1, 0);
  v2 = vceqz_f32(v1);
  v3 = vcgt_s32(vneg_f32(0x7F0000007FLL), v1);
  v4 = vrsqrte_f32(v1);
  return vbsl_s8(vbic_s8(v3, v2), vmul_f32(v4, vrsqrts_f32(vmul_n_f32(v4, *&a1), v4)), v4);
}

int8x8_t Projections_fastSqrtf(double a1)
{
  *&a1 = *&a1 + 0.0;
  v1 = vdup_lane_s32(*&a1, 0);
  v2 = vrsqrte_f32(v1);
  return vbsl_s8(vbic_s8(vcgt_s32(vneg_f32(0x7F0000007FLL), v1), vceqz_f32(v1)), vmul_f32(*&a1, vmul_f32(v2, vrsqrts_f32(v2, vmul_n_f32(v2, *&a1)))), v1);
}

uint64_t Projections_normalizeMeanStdUsingTable(uint64_t a1, int a2, int a3, void *a4, uint64_t a5, float *a6, float *a7, double a8)
{
  v13 = 4 * a3 + 4;
  v14 = (a3 - a2 + 1);
  v15 = (*(a4[1] + v13) - *(a4[1] + 4 * a2)) / v14;
  *&a8 = (*(*a4 + v13) - *(*a4 + 4 * a2)) / v14;
  *a6 = *&a8;
  *&a8 = v15 - (*&a8 * *&a8);
  LODWORD(v16) = Projections_fastSqrtf(a8).u32[0];
  *a7 = v16;
  if (a5)
  {
    if (Projections_isZero(v16))
    {
      memcpy((a5 + 4 * a2), (a1 + 4 * a2), vcvts_n_u32_f32(v14, 2uLL));
    }

    else
    {
      v19 = 1.0 / *a7;
      v18 = -(*a6 * v19);
      MEMORY[0x1A58FAE00](a1 + 4 * a2, 1, &v19, &v18, a5 + 4 * a2, 1, v14);
    }
  }

  return 0;
}

uint64_t Projections_computeMeanStdTable(float *a1, int a2, void *a3)
{
  v3 = *a3;
  v4 = a3[1];
  **a3 = 0;
  *v4 = 0;
  if (a2 >= 1)
  {
    v5 = (v3 + 1);
    v6 = (v4 + 1);
    v7 = (a2 + 1) - 1;
    do
    {
      *v5 = *(v5 - 1) + *a1;
      ++v5;
      v8 = *a1++;
      *v6 = *(v6 - 1) + (v8 * v8);
      ++v6;
      --v7;
    }

    while (v7);
  }

  return 0;
}

uint64_t Projections_computeShiftBruteForce(uint64_t a1, int a2, void *a3, uint64_t a4, int a5, void *a6, int a7, char *a8, float a9, float *a10, float *a11, float *a12)
{
  v12 = a8;
  if (a2 <= a5)
  {
    v18 = a5;
  }

  else
  {
    v18 = a2;
  }

  v19 = 2 * v18;
  v51 = a8;
  if (!a8)
  {
    v51 = malloc_type_malloc(4 * v19, 0x100004052888210uLL);
  }

  v20 = a10;
  if (!a10)
  {
    v20 = malloc_type_malloc(4 * v19, 0x100004052888210uLL);
  }

  v21 = a12;
  *v20 = 3.4028e38;
  v22 = 1 - a2;
  v23 = *a11;
  v24 = 0.0;
  v25 = 0.0;
  if (*a11 >= (1 - a2))
  {
    v26 = (a5 - 1);
    if (v23 <= v26)
    {
      v27 = v23 - (1 - a2);
      v28 = v26 - v23;
      if (v27 > v28)
      {
        v28 = v27;
      }

      v25 = a9 / v28;
    }
  }

  if (v22 >= a5)
  {
    v31 = v20;
    v33 = 0;
    v34 = 3.4028e38;
LABEL_43:
    *a11 = v24;
    *v21 = v34;
    if (!v12)
    {
LABEL_44:
      if (v51)
      {
        free(v51);
      }
    }
  }

  else
  {
    v47 = v12;
    v29 = 0;
    v30 = (a5 + a2 - 1);
    v46 = v30;
    do
    {
      v31 = v20;
      v52[0] = 3.4028e38;
      v32 = Projections_computeCost(v22, a1, a2, a3, a4, a5, a6, a7, *a11, v25, v52);
      v33 = v32;
      if ((v32 & 0x80000000) != 0)
      {
        StatusDescription = Projections_getStatusDescription(v32);
        syslog(3, "Projections error %d:%s in %s @ %s:%d\n", v33, StatusDescription, "Projections_status Projections_computeShiftBruteForce(const float *, int, const Projections_meanStdTable *, const float *, int, const Projections_meanStdTable *, int, float, float *, float *, float *, float *)", "/Library/Caches/com.apple.xbs/Sources/Camera/CameraUI/BurstAnalysisCore/Projections/Projections_Optimizer.c", 122);
        if (!v47)
        {
          goto LABEL_44;
        }

        goto LABEL_46;
      }

      *&v51[v29 * 4] = v22;
      v20 = v31;
      v31[v29] = v52[0];
      ++v22;
      ++v29;
      --v30;
    }

    while (v30);
    v34 = *v31;
    if (v46 < 2)
    {
      v12 = v47;
LABEL_42:
      v21 = a12;
      goto LABEL_43;
    }

    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 3.4028e38;
    v39 = 1;
    v12 = v47;
LABEL_19:
    v40 = &v31[v39];
    do
    {
      v41 = *v40;
      if (v34 > *v40)
      {
        v37 = *&v51[4 * v39];
        v34 = *v40;
      }

      if (v39 < a5 + a2 - 2 && v38 > v41 && *(v40 - 1) > v41 && v40[1] > v41)
      {
        v36 = *&v51[4 * v39];
        v35 = 1;
        v38 = *v40;
        if (v46 - 1 != v39++)
        {
          goto LABEL_19;
        }

        goto LABEL_39;
      }

      ++v39;
      ++v40;
    }

    while (v46 != v39);
    v41 = v38;
    if ((v35 & 1) == 0)
    {
      v24 = v37;
      goto LABEL_42;
    }

LABEL_39:
    *a11 = v36;
    *a12 = v41;
    if (!v47)
    {
      goto LABEL_44;
    }
  }

LABEL_46:
  if (!a10)
  {
    free(v31);
  }

  return v33;
}

uint64_t Projections_computeCost(int a1, uint64_t a2, int a3, void *a4, uint64_t a5, int a6, void *a7, int a8, float a9, float a10, float *a11)
{
  v11 = 0;
  v12 = -a1 & (a1 >> 31);
  if (a3 - 1 >= a6 - 1 - a1)
  {
    v13 = a6 - 1 - a1;
  }

  else
  {
    v13 = a3 - 1;
  }

  if (a6 - 1 >= a3 - 1 + a1)
  {
    v14 = a3 - 1 + a1;
  }

  else
  {
    v14 = a6 - 1;
  }

  v15 = v13 - v12 + 1;
  if (v15 >= a8)
  {
    v22 = a1 & ~(a1 >> 31);
    __C = 0.0;
    vDSP_dotpr((a2 + 4 * v12), 1, (a5 + 4 * v22), 1, &__C, v15);
    __C = __C / v15;
    *&v23 = __C;
    v33 = 0.0;
    v32 = 0;
    v31 = 0.0;
    v24 = Projections_normalizeMeanStdUsingTable(a2, v12, v13, a4, 0, &v33, &v32 + 1, v23);
    if ((v24 & 0x80000000) != 0)
    {
      v11 = v24;
      StatusDescription = Projections_getStatusDescription(v24);
      syslog(3, "Projections error %d:%s in %s @ %s:%d\n", v11, StatusDescription, "Projections_status Projections_computeCost(int, float, float, const float *, int, const Projections_meanStdTable *, const float *, int, const Projections_meanStdTable *, int, float *)", "/Library/Caches/com.apple.xbs/Sources/Camera/CameraUI/BurstAnalysisCore/Projections/Projections_Optimizer.c", 58);
    }

    else
    {
      v26 = Projections_normalizeMeanStdUsingTable(a5, v22, v14, a7, 0, &v32, &v31, v25);
      v11 = v26;
      if ((v26 & 0x80000000) != 0)
      {
        v29 = Projections_getStatusDescription(v26);
        syslog(3, "Projections error %d:%s in %s @ %s:%d\n", v11, v29, "Projections_status Projections_computeCost(int, float, float, const float *, int, const Projections_meanStdTable *, const float *, int, const Projections_meanStdTable *, int, float *)", "/Library/Caches/com.apple.xbs/Sources/Camera/CameraUI/BurstAnalysisCore/Projections/Projections_Optimizer.c", 59);
      }

      else
      {
        *a11 = ((((*(&v32 + 1) * v31) - __C) + (v33 * *&v32)) / ((*(&v32 + 1) * v31) + (*(&v32 + 1) * v31))) + (a10 * vabds_f32(a9, a1));
      }
    }
  }

  return v11;
}

uint64_t Projections_computeShiftDescent(uint64_t a1, int a2, void *a3, uint64_t a4, int a5, void *a6, int a7, float *a8, int *a9)
{
  v17 = *a8;
  v42 = 3.4028e38;
  v18 = Projections_computeCost(v17, a1, a2, a3, a4, a5, a6, a7, v17, 0.0, &v42);
  if ((v18 & 0x80000000) != 0)
  {
    v25 = v18;
    StatusDescription = Projections_getStatusDescription(v18);
    syslog(3, "Projections error %d:%s in %s @ %s:%d\n", v25, StatusDescription, "Projections_status Projections_computeShiftDescent(const float *, int, const Projections_meanStdTable *, const float *, int, const Projections_meanStdTable *, int, float *, float *)", "/Library/Caches/com.apple.xbs/Sources/Camera/CameraUI/BurstAnalysisCore/Projections/Projections_Optimizer.c", 203);
  }

  else
  {
    v19 = *a8;
    v20 = *a8 + -1.0;
    v41 = 2139095039;
    v21 = Projections_computeCost(v20, a1, a2, a3, a4, a5, a6, a7, v19, 0.0, &v41);
    if ((v21 & 0x80000000) != 0)
    {
      v25 = v21;
      v30 = Projections_getStatusDescription(v21);
      syslog(3, "Projections error %d:%s in %s @ %s:%d\n", v25, v30, "Projections_status Projections_computeShiftDescent(const float *, int, const Projections_meanStdTable *, const float *, int, const Projections_meanStdTable *, int, float *, float *)", "/Library/Caches/com.apple.xbs/Sources/Camera/CameraUI/BurstAnalysisCore/Projections/Projections_Optimizer.c", 211);
    }

    else
    {
      v22 = *a8;
      v23 = *a8 + 1.0;
      v40 = 3.4028e38;
      v24 = Projections_computeCost(v23, a1, a2, a3, a4, a5, a6, a7, v22, 0.0, &v40);
      v25 = v24;
      if ((v24 & 0x80000000) != 0)
      {
        v31 = Projections_getStatusDescription(v24);
        v32 = 219;
LABEL_13:
        syslog(3, "Projections error %d:%s in %s @ %s:%d\n", v25, v31, "Projections_status Projections_computeShiftDescent(const float *, int, const Projections_meanStdTable *, const float *, int, const Projections_meanStdTable *, int, float *, float *)", "/Library/Caches/com.apple.xbs/Sources/Camera/CameraUI/BurstAnalysisCore/Projections/Projections_Optimizer.c", v32);
        return v25;
      }

      v39 = a7;
      v26 = v40;
      if (v42 <= v40)
      {
        *a8 = v20;
        *a9 = v41;
        v34 = (v20 + -1.0);
        if (1 - a2 > v34)
        {
          return v25;
        }

        while (1)
        {
          v42 = 3.4028e38;
          v35 = Projections_computeCost(v34, a1, a2, a3, a4, a5, a6, v39, *a8, 0.0, &v42);
          v25 = v35;
          if ((v35 & 0x80000000) != 0)
          {
            break;
          }

          v36 = v42;
          if (v42 < *a9)
          {
            *a8 = v34;
            *a9 = v36;
            if (v34-- > 1 - a2)
            {
              continue;
            }
          }

          return v25;
        }

        v31 = Projections_getStatusDescription(v35);
        v32 = 253;
        goto LABEL_13;
      }

      *a8 = v23;
      *a9 = v26;
      v27 = (v23 + 1.0);
      if (v27 < a5)
      {
        while (1)
        {
          v42 = 3.4028e38;
          v28 = Projections_computeCost(v27, a1, a2, a3, a4, a5, a6, v39, *a8, 0.0, &v42);
          v25 = v28;
          if ((v28 & 0x80000000) != 0)
          {
            break;
          }

          v29 = v42;
          if (v42 < *a9)
          {
            *a8 = v27;
            *a9 = v29;
            if (a5 != ++v27)
            {
              continue;
            }
          }

          return v25;
        }

        v31 = Projections_getStatusDescription(v28);
        v32 = 233;
        goto LABEL_13;
      }
    }
  }

  return v25;
}

uint64_t getFCRFaceExpressionLeftEyeClosed()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getFCRFaceExpressionLeftEyeClosedSymbolLoc_ptr;
  v7 = getFCRFaceExpressionLeftEyeClosedSymbolLoc_ptr;
  if (!getFCRFaceExpressionLeftEyeClosedSymbolLoc_ptr)
  {
    v1 = FaceCoreLibrary();
    v5[3] = dlsym(v1, "FCRFaceExpressionLeftEyeClosed");
    getFCRFaceExpressionLeftEyeClosedSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = [CAMBurstImageFaceAnalysisContext setupFaceDetector];
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return *v0;
}

uint64_t getFCRFaceExpressionRightEyeClosed()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getFCRFaceExpressionRightEyeClosedSymbolLoc_ptr;
  v7 = getFCRFaceExpressionRightEyeClosedSymbolLoc_ptr;
  if (!getFCRFaceExpressionRightEyeClosedSymbolLoc_ptr)
  {
    v1 = FaceCoreLibrary();
    v5[3] = dlsym(v1, "FCRFaceExpressionRightEyeClosed");
    getFCRFaceExpressionRightEyeClosedSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = [CAMBurstImageFaceAnalysisContext setupFaceDetector];
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return *v0;
}

uint64_t getFCRFaceExpressionSmile()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getFCRFaceExpressionSmileSymbolLoc_ptr;
  v7 = getFCRFaceExpressionSmileSymbolLoc_ptr;
  if (!getFCRFaceExpressionSmileSymbolLoc_ptr)
  {
    v1 = FaceCoreLibrary();
    v5[3] = dlsym(v1, "FCRFaceExpressionSmile");
    getFCRFaceExpressionSmileSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = [CAMBurstImageFaceAnalysisContext setupFaceDetector];
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return *v0;
}

uint64_t FaceCoreLibraryCore()
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = FaceCoreLibraryCore_frameworkLibrary;
  v5 = FaceCoreLibraryCore_frameworkLibrary;
  if (!FaceCoreLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_1E76F80C0;
    v3[3] = _sl_dlopen();
    FaceCoreLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1A36A2240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __FaceCoreLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  FaceCoreLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFCRFastFaceDetectionParametersSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FaceCoreLibrary();
  result = dlsym(v2, "FCRFastFaceDetectionParameters");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFCRFastFaceDetectionParametersSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t FaceCoreLibrary()
{
  v0 = FaceCoreLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void *__getFCRSetupParamNumberOfAnglesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FaceCoreLibrary();
  result = dlsym(v2, "FCRSetupParamNumberOfAngles");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFCRSetupParamNumberOfAnglesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getFaceCoreDetectorClass_block_invoke(uint64_t a1)
{
  FaceCoreLibrary();
  result = objc_getClass("FaceCoreDetector");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getFaceCoreDetectorClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = __getFaceCoreDetectorClass_block_invoke_cold_1();
    return __getFaceCoreImageClass_block_invoke(v3);
  }

  return result;
}

Class __getFaceCoreImageClass_block_invoke(uint64_t a1)
{
  FaceCoreLibrary();
  result = objc_getClass("FaceCoreImage");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getFaceCoreImageClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = __getFaceCoreImageClass_block_invoke_cold_1();
    return __getFaceCoreFaceClass_block_invoke(v3);
  }

  return result;
}

Class __getFaceCoreFaceClass_block_invoke(uint64_t a1)
{
  FaceCoreLibrary();
  result = objc_getClass("FaceCoreFace");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getFaceCoreFaceClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = __getFaceCoreFaceClass_block_invoke_cold_1();
    return __getFCRFaceExpressionLeftEyeClosedSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getFCRFaceExpressionLeftEyeClosedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FaceCoreLibrary();
  result = dlsym(v2, "FCRFaceExpressionLeftEyeClosed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFCRFaceExpressionLeftEyeClosedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFCRFaceExpressionRightEyeClosedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FaceCoreLibrary();
  result = dlsym(v2, "FCRFaceExpressionRightEyeClosed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFCRFaceExpressionRightEyeClosedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFCRFaceExpressionSmileSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FaceCoreLibrary();
  result = dlsym(v2, "FCRFaceExpressionSmile");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFCRFaceExpressionSmileSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFCRDetectionParamDetectionRegionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FaceCoreLibrary();
  result = dlsym(v2, "FCRDetectionParamDetectionRegion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFCRDetectionParamDetectionRegionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFCRDetectionParamInitialAngleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FaceCoreLibrary();
  result = dlsym(v2, "FCRDetectionParamInitialAngle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFCRDetectionParamInitialAngleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFCRExtractionParamExtractBlinkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FaceCoreLibrary();
  result = dlsym(v2, "FCRExtractionParamExtractBlink");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFCRExtractionParamExtractBlinkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFCRExtractionParamExtractSmileSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FaceCoreLibrary();
  result = dlsym(v2, "FCRExtractionParamExtractSmile");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFCRExtractionParamExtractSmileSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFCRExtractionParamExtractFaceprintSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FaceCoreLibrary();
  result = dlsym(v2, "FCRExtractionParamExtractFaceprint");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFCRExtractionParamExtractFaceprintSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFCRExtractionParamExtractLandmarkPointsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FaceCoreLibrary();
  result = dlsym(v2, "FCRExtractionParamExtractLandmarkPoints");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFCRExtractionParamExtractLandmarkPointsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFCRExtractionParamEnhancedEyesAndMouthLocalizationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FaceCoreLibrary();
  result = dlsym(v2, "FCRExtractionParamEnhancedEyesAndMouthLocalization");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFCRExtractionParamEnhancedEyesAndMouthLocalizationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFCRExtractionParamInitialAngleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FaceCoreLibrary();
  result = dlsym(v2, "FCRExtractionParamInitialAngle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFCRExtractionParamInitialAngleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFCRFaceExpressionLeftEyeClosedScoreSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FaceCoreLibrary();
  result = dlsym(v2, "FCRFaceExpressionLeftEyeClosedScore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFCRFaceExpressionLeftEyeClosedScoreSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFCRFaceExpressionRightEyeClosedScoreSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FaceCoreLibrary();
  result = dlsym(v2, "FCRFaceExpressionRightEyeClosedScore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFCRFaceExpressionRightEyeClosedScoreSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFCRFaceExpressionSmileScoreSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FaceCoreLibrary();
  result = dlsym(v2, "FCRFaceExpressionSmileScore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFCRFaceExpressionSmileScoreSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void findBestThreeWayDivision(uint64_t a1@<X0>, unsigned int a2@<W1>, int *a3@<X2>, int *a4@<X3>, int a5@<W4>, int a6@<W5>, unsigned int a7@<W6>, float *a8@<X8>)
{
  v8 = a7;
  v9 = a6;
  v11 = a4;
  v12 = a3;
  v93 = 4 * a2;
  v13 = (a2 * 0x51EB851EB851EB9uLL) >> 64;
  v14 = 4 * (a2 + v13 * a2);
  v15 = 4 * v13 + 4;
  v92 = a1 + 4;
  v100 = a8;
  v16 = a7;
  v17 = a2 / 0x32 + 1;
  while (1)
  {
    *(a8 + 1) = 0;
    *(a8 + 2) = 0;
    v18 = *v12;
    v19 = *v11;
    v20 = v8 <= 0 ? (v19 - v18 + 1) : v16;
    v21 = v9 <= 1 ? 1 : v9;
    BurstLoggingMessage("\n***Finding three way division:\nfirstValidImage = %d, lastValidImage = %d\n", v18, v19);
    v22 = v21 + v18 - 1;
    v23 = v19 - 2 * v21;
    if (v22 <= v23)
    {
      v98 = a5;
      v24 = 0;
      v25 = 0;
      v29 = 0;
      v30 = 0;
      v31 = v20;
      v32 = v18 + 1;
      v33 = (v18 + 2 * v21 - 1);
      v34 = v20;
      v35 = (v19 - v21);
      v36 = v22;
      v101 = v35 - v21;
      v102 = v23;
      v37 = v93;
      v38 = a1 + v93 * v18;
      v39 = v37 + v37 * v22;
      v112 = a1 + v39;
      v40 = v37 + v37 * v33;
      v27 = 3.4028e38;
      v41 = a1 + v40;
      v111 = (v92 + v93 * v18 + 4 * v22);
      v113 = (a1 + v39 + 4 * v18);
      v42 = (v92 + v39 + 4 * v33);
      v43 = (a1 + v40 + 4 * v18);
      v26 = 3.4028e38;
      v44 = a2;
      v105 = v20;
      v103 = v35;
      v104 = v34;
      do
      {
        v109 = v42;
        v110 = v41;
        v108 = v43;
        if (v36 <= v101)
        {
          v45 = v36 + 1;
          v107 = v33;
          v46 = v33;
          do
          {
            if (v36 < v34 && v46 - v36 <= v34 && (~v46 + v44) <= v31)
            {
              if (v36 <= v18)
              {
                v47 = 0;
                v52 = 0.0;
                v48 = 0.0;
              }

              else
              {
                v47 = 0;
                v48 = 0.0;
                v49 = v38;
                v50 = v18;
                v51 = v32;
                v52 = 0.0;
                do
                {
                  v53 = v51;
                  v54 = (v49 + 4 * v51);
                  v55 = v53;
                  do
                  {
                    v56 = *v54;
                    if (v52 < v56)
                    {
                      v52 = *v54;
                    }

                    v48 = v48 + v56;
                    ++v47;
                    v55 += v17;
                    v54 = (v54 + v15);
                  }

                  while (v55 <= v36);
                  v50 += v17;
                  v51 = v53 + v17;
                  v49 += v14;
                }

                while (v50 < v36);
              }

              if (v45 < v46)
              {
                v57 = v112;
                v58 = v45;
                v59 = v36 + 2;
                do
                {
                  v60 = v59;
                  v61 = (v57 + 4 * v59);
                  v62 = v60;
                  do
                  {
                    v63 = *v61;
                    if (v52 < v63)
                    {
                      v52 = *v61;
                    }

                    v48 = v48 + v63;
                    ++v47;
                    v62 += v17;
                    v61 = (v61 + v15);
                  }

                  while (v62 <= v46);
                  v58 += v17;
                  v59 = v60 + v17;
                  v57 += v14;
                }

                while (v58 < v46);
              }

              v64 = v46 + 1;
              if (v46 + 1 < v19)
              {
                v65 = v46 + 2;
                v66 = v41;
                v67 = v46 + 1;
                do
                {
                  v68 = v65;
                  v69 = (v66 + 4 * v65);
                  v70 = v68;
                  do
                  {
                    v71 = *v69;
                    if (v52 < v71)
                    {
                      v52 = *v69;
                    }

                    v48 = v48 + v71;
                    ++v47;
                    v70 += v17;
                    v69 = (v69 + v15);
                  }

                  while (v70 <= v19);
                  v67 += v17;
                  v65 = v68 + v17;
                  v66 += v14;
                }

                while (v67 < v19);
              }

              if (v36 >= v18)
              {
                v72 = 0;
                v73 = 0.0;
                v74 = v111;
                v75 = v18;
                do
                {
                  v76 = v74;
                  v77 = v45;
                  if (v36 < v19)
                  {
                    do
                    {
                      v73 = v73 + *v76;
                      ++v72;
                      v77 += v17;
                      v76 = (v76 + v15);
                    }

                    while (v77 <= v19);
                  }

                  v75 += v17;
                  v74 = (v74 + v14);
                }

                while (v75 <= v36);
              }

              else
              {
                v72 = 0;
                v73 = 0.0;
              }

              v78 = v42;
              v79 = v113;
              v80 = v45;
              if (v46 > v36)
              {
                do
                {
                  v81 = v79;
                  for (i = v18; i <= v36; v81 = (v81 + v15))
                  {
                    v73 = v73 + *v81;
                    ++v72;
                    i += v17;
                  }

                  v83 = v78;
                  v84 = v46 + 1;
                  if (v46 < v19)
                  {
                    do
                    {
                      v73 = v73 + *v83;
                      ++v72;
                      v84 += v17;
                      v83 = (v83 + v15);
                    }

                    while (v84 <= v19);
                  }

                  v80 += v17;
                  v79 = (v79 + v14);
                  v78 = (v78 + v14);
                }

                while (v80 <= v46);
              }

              v85 = v43;
              v45 = v36 + 1;
              if (v46 < v19)
              {
                do
                {
                  if (v46 >= v18)
                  {
                    v86 = v85;
                    v87 = v18;
                    do
                    {
                      v73 = v73 + *v86;
                      ++v72;
                      v87 += v17;
                      v86 = (v86 + v15);
                    }

                    while (v87 <= v46);
                  }

                  v64 += v17;
                  v85 = (v85 + v14);
                }

                while (v64 <= v19);
              }

              v88 = (v48 / v47) / (v73 / v72);
              if (v88 < v27 && v26 * 1.25 > v52)
              {
                BurstLoggingMessage("NEW BEST: largestInnerDistance = %f, bestRatio = %f\n", v52, v88);
                BurstLoggingMessage("Divider1 = %d, Divider2 = %d\n", v36, v46);
                v45 = v36 + 1;
                v38 = a1 + v93 * v18;
                v35 = v103;
                v34 = v104;
                v33 = v107;
                v32 = v18 + 1;
                v31 = v105;
                v44 = a2;
                v24 = v46;
                v25 = v36;
                v29 = v19;
                v30 = v18;
                v26 = v52;
                v27 = v88;
              }
            }

            v46 += v17;
            v41 += v14;
            v42 = (v42 + v15);
            v43 = (v43 + v14);
          }

          while (v46 <= v35);
        }

        v36 += v17;
        v33 += v17;
        v112 += v14;
        v41 = v110 + v14;
        v111 = (v111 + v15);
        v113 = (v113 + v14);
        v42 = (v109 + v15 + v14);
        v43 = &v108[v14 / 4];
      }

      while (v36 <= v102);
      *(v100 + 2) = v30;
      *(v100 + 3) = v29;
      v28 = v100;
      *(v100 + 4) = v25;
      *(v100 + 5) = v24;
      v9 = a6;
      v8 = a7;
      a5 = v98;
      v11 = a4;
      v12 = a3;
    }

    else
    {
      v24 = 0;
      v25 = 0;
      v26 = 3.4028e38;
      v27 = 3.4028e38;
      v12 = a3;
      v28 = v100;
    }

    *v28 = v26;
    v28[1] = v27;
    if (a5 > 2 || v19 - v18 < 6)
    {
      break;
    }

    if (v25 == v18)
    {
      ++*v12;
      v90 = v19 - 1;
    }

    else
    {
      v90 = v19 - 1;
      if (v24 != v19 - 1)
      {
        return;
      }
    }

    v91 = *v11;
    if (v24 == v90)
    {
      *v11 = --v91;
    }

    ++a5;
    BurstLoggingMessage("RECURSING: (%d->%d) becomes (%d->%d)\n", v18, v19, *v12, v91);
    a8 = v100;
  }
}

uint64_t updateBlurStatsOne16x16(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v6 = computeEdge1Squared16x16_NEON(a1, a2, a3, a4);
  v7 = computeEdgeVal(a1, 2);
  result = computeEdgeVal(a1, 1);
  v11 = v6 > 1225 || v7 > 1225 || result > 1225;
  if (a2)
  {
    if (v11 && v6 < v7 && v7 != result)
    {
      ++*a2;
      if (v6 < 1225 || result <= 1224)
      {
        ++a2[1];
      }
    }
  }

  return result;
}

float computeRegistrationErrorStats(float *a1, float *a2, int a3, double a4)
{
  if (a1)
  {
    v4 = 0.0;
    if (a3 >= 1)
    {
      v5 = a3;
      v6 = a2;
      do
      {
        v7 = *v6++;
        v4 = v4 + v7;
        --v5;
      }

      while (v5);
    }

    v8 = 0;
    *&a4 = a3;
    v9 = (v4 / a3) * 0.5;
    v10 = a2 + 16;
    v11 = vdupq_n_s64(0x11uLL);
    do
    {
      v12 = vdupq_n_s64(v8);
      v13 = vorrq_s8(v12, xmmword_1A3A67B10);
      if (vuzp1_s16(vmovn_s64(vcgtq_u64(v11, v13)), *&a4).u8[0])
      {
        *v10 = v9;
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x11uLL), v13)), *&a4).i8[2])
      {
        *(v10 - 1) = v9;
      }

      if (vuzp1_s16(*&a4, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x11uLL), vorrq_s8(v12, xmmword_1A3A67B00)))).i32[1])
      {
        *(v10 - 2) = v9;
        *(v10 - 3) = v9;
      }

      v8 += 4;
      v10 -= 4;
    }

    while (v8 != 20);
    v14 = 0;
    v15 = a3 - 17;
    if (a3 - 17 + 1 > a3)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = a3;
    }

    v17 = v16 - v15;
    v18 = vdupq_n_s64(v17 - 1);
    v19 = &a2[v15 + 2];
    do
    {
      v20 = vdupq_n_s64(v14);
      v21 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(v20, xmmword_1A3A67B10)));
      if (vuzp1_s16(v21, *&a4).u8[0])
      {
        *(v19 - 2) = v9;
      }

      if (vuzp1_s16(v21, *&a4).i8[2])
      {
        *(v19 - 1) = v9;
      }

      if (vuzp1_s16(*&a4, vmovn_s64(vcgeq_u64(v18, vorrq_s8(v20, xmmword_1A3A67B00)))).i32[1])
      {
        *v19 = v9;
        v19[1] = v9;
      }

      v14 += 4;
      v19 += 4;
    }

    while (((v17 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v14);
    if (a3 < 1)
    {
      v25 = 0.0;
      v24 = 0.0;
      v23 = 0.0;
      v22 = 0.0;
    }

    else
    {
      v22 = 0.0;
      v23 = 0.0;
      v24 = 0.0;
      v25 = 0.0;
      do
      {
        v26 = *a2++;
        v27 = v26;
        if (v26 > v23)
        {
          v23 = v27;
        }

        v22 = v22 + v27;
        v25 = v25 + (v27 * v27);
        v24 = v24 + (v27 * (v27 * v27));
        --a3;
      }

      while (a3);
    }

    v28 = v22 / *&a4;
    v29 = (v25 / *&a4) - (v28 * v28);
    v30 = sqrtf(v29);
    v31 = ((v24 / *&a4) - (((v28 * v28) + (v29 * 3.0)) * v28)) / (v29 * v30);
    *a1 = v31;
    a1[1] = v28;
    a1[2] = v30;
    a1[3] = v23;
    BurstLoggingMessage("Registration error stats: mean=%f, stdDev=%f, skewness=%f, maxValue=%f\n", v28, v30, v31, v23);
  }

  return *&a4;
}

void computeForegroundInterval(uint64_t a1, uint64_t a2, int a3, int *a4, int *a5)
{
  if (!a1 || !a4 || !a5)
  {
    return;
  }

  v10 = a3 - 1;
  v11 = malloc_type_malloc(8 * a3, 0x100004000313F17uLL);
  if (v11)
  {
    v13 = v11;
    if (a3 < 37)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0;
      v15 = a2 + 8;
      v16 = 0.0;
      v17 = 18;
      v18 = 0.0;
      do
      {
        v19 = 0;
        v12.i32[0] = *(a2 + 4 * v17);
        v20 = vdupq_lane_s32(v12, 0);
        v21 = 0;
        do
        {
          v21 = vorr_s8(v21, vmovn_s32(vcgtq_f32(*(v15 + v19), v20)));
          v19 += 16;
        }

        while (v19 != 128);
        if ((vmaxv_u16(vcltz_s16(vshl_n_s16(v21, 0xFuLL))) & 1) == 0)
        {
          v22 = &v11[2 * v14];
          *v22 = *v12.i32;
          *(v22 + 1) = v17;
          ++v14;
          v23 = *(a2 + 4 * v17);
          v18 = v18 + v23;
          v16 = v16 + (v23 * v23);
        }

        ++v17;
        v15 += 4;
      }

      while (v17 != a3 - 18);
      if (v14)
      {
        v24 = v18 / v14;
        v25 = sqrtf((v16 / v14) - (v24 * v24));
LABEL_17:
        qsort(v11, v14, 8uLL, comparePeaks);
        if (*v13 >= 5000.0)
        {
          if ((v24 + (v25 * 0.22)) >= 3000.0)
          {
            v29 = v24 + (v25 * 0.22);
          }

          else
          {
            v29 = 3000.0;
          }

          BurstLoggingMessage("Peak rejection threshold = %f (mean = %f, std = %f)\n", v29, v24, v25);
          if (v14 < 2)
          {
            LODWORD(v31) = 1;
          }

          else
          {
            v30 = v13 + 2;
            v31 = 1;
            while (*v30 >= v29)
            {
              ++v31;
              v30 += 2;
              if (v14 == v31)
              {
                LODWORD(v31) = v14;
                break;
              }
            }
          }

          v28 = 0;
          if (v31 <= 1)
          {
            v31 = 1;
          }

          else
          {
            v31 = v31;
          }

          v32 = (v13 + 1);
          v27 = a3;
          do
          {
            v34 = *v32;
            v32 += 2;
            v33 = v34;
            if (v34 < v27)
            {
              v27 = v33;
            }

            if (v33 > v28)
            {
              v28 = v33;
            }

            --v31;
          }

          while (v31);
          BurstLoggingMessage("Starting ROI construction at %d->%d\n", v27, v28);
        }

        else
        {
          v28 = a3 - 17;
          BurstLoggingMessage("Insufficient peak error for ROI computation %f (threshold %f)\n", *v13, 5000.0);
          v27 = 17;
        }

        free(v13);
        v26 = v28;
        goto LABEL_39;
      }
    }

    v25 = 0.0;
    v24 = 3.4028e38;
    goto LABEL_17;
  }

  v26 = 0;
  v27 = a3;
LABEL_39:
  v35 = 0;
  v36 = *(a1 + 4) + (*(a1 + 8) * 0.5);
  if (v36 < 3000.0)
  {
    v36 = 3000.0;
  }

  v37 = (a2 + 4 * v27 - 4);
  while (v27 >= 18)
  {
    v38 = *v37--;
    if (v38 < v36)
    {
      ++v35;
    }

    else
    {
      v35 = 0;
    }

    --v27;
    if (v35 >= 4)
    {
      v39 = v27 - 10;
      goto LABEL_49;
    }
  }

  v39 = 0;
LABEL_49:
  v40 = 0;
  *a4 = v39;
  v41 = v26 + 1;
  while (v41 < a3 - 17)
  {
    if (*(a2 + 4 * v41) < v36)
    {
      ++v40;
    }

    else
    {
      v40 = 0;
    }

    LODWORD(v26) = v26 + 1;
    ++v41;
    if (v40 >= 4)
    {
      goto LABEL_57;
    }
  }

  LODWORD(v26) = v10;
LABEL_57:
  v42 = v26 + 10;
  if (v42 >= a3)
  {
    v42 = v10;
  }

  *a5 = v42;
}

uint64_t compareFloats(float *a1, float *a2)
{
  if (*a1 > *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 < *a2;
  }
}

uint64_t compareGridElements(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2 > v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v2 < v3;
  }
}

uint64_t computeEdgeVal(uint64_t a1, int a2)
{
  v4 = computeEdgeValOne8x8(a1, a2);
  v5 = computeEdgeValOne8x8(a1 + 16, a2);
  if (v5 > v4)
  {
    v4 = v5;
  }

  v6 = computeEdgeValOne8x8(a1 + 512, a2);
  if (v6 > v4)
  {
    v4 = v6;
  }

  LODWORD(result) = computeEdgeValOne8x8(a1 + 528, a2);
  if (result <= v4)
  {
    return v4;
  }

  else
  {
    return result;
  }
}

uint64_t computeEdgeValOne8x8(uint64_t a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 32 * a2;
  v4 = 0.0;
  v5 = (a1 + 2 * a2);
  do
  {
    v6 = a2;
    v7 = a1;
    v8 = v5;
    do
    {
      v9 = *(v7 + 2 * v3);
      v10 = v8[v3];
      v11 = v9 * v9 + v10 * v10 + *v8 * *v8;
      if (v4 < v11)
      {
        v4 = v11;
      }

      ++v8;
      v7 += 2;
      --v6;
    }

    while (v6);
    ++v2;
    v5 += 32;
    a1 += 64;
  }

  while (v2 != a2);
  return v4;
}

uint64_t comparePeaks(float *a1, float *a2)
{
  if (*a1 > *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 < *a2;
  }
}

void *BurstLoggingSetCallback(void *result, uint64_t a2)
{
  gBurstLoggingCallback = result;
  gBurstLoggingUserData = a2;
  return result;
}

void BurstLoggingMessage(char *__format, ...)
{
  va_start(va, __format);
  if (__format)
  {
    va_copy(v6, va);
    v2 = vsnprintf(&__str, 1uLL, __format, va);
    if (v2 > 0)
    {
      v3 = (v2 + 1);
      v4 = malloc_type_malloc(v3, 0xD7308039uLL);
      vsnprintf(v4, v3, __format, va);
      if (v4)
      {
        if (gBurstLoggingCallback)
        {
          gBurstLoggingCallback(gBurstLoggingUserData, v4);
        }

        if (gBurstLoggingFileHandle)
        {
          fputs(v4, gBurstLoggingFileHandle);
        }

        free(v4);
      }
    }
  }
}

uint64_t doHaar8(uint64_t a1, _OWORD *a2, int a3)
{
  v3 = 0;
  v32 = *MEMORY[0x1E69E9840];
  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  v4 = (a1 + 3);
  do
  {
    v5 = &a2[v3];
    v6 = *(v4 - 2) + *(v4 - 3);
    *v5 = v6;
    v7 = *v4 + *(v4 - 1);
    v5[1] = v7;
    v8 = v4[2] + v4[1];
    v5[2] = v8;
    v9 = v4[4] + v4[3];
    v5[3] = v9;
    v5[4] = *(v4 - 3) - *(v4 - 2);
    v5[5] = *(v4 - 1) - *v4;
    v5[6] = v4[1] - v4[2];
    v5[7] = v4[3] - v4[4];
    v5[3] = v8 - v9;
    v5[2] = v6 - v7;
    v5[1] = v7 + v6 - (v9 + v8);
    *v5 = v9 + v8 + v7 + v6;
    ++v3;
    v4 += a3;
  }

  while ((v3 * 16) != 128);
  for (i = 0; i != 8; ++i)
  {
    v11 = 0;
    v12 = a2;
    do
    {
      v13 = *v12;
      v12 += 8;
      *(&v24 + v11) = v13;
      v11 += 2;
    }

    while (v11 != 16);
    v14 = v25 + v24;
    v15 = v26;
    v16 = v27;
    v17 = v27 + v26;
    v18 = v28;
    v19 = v29;
    result = v29 + v28;
    v21 = v30;
    v22 = v31;
    v23 = v31 + v30;
    *(a2 + 32) = v24 - v25;
    *(a2 + 40) = v15 - v16;
    *(a2 + 48) = v18 - v19;
    *(a2 + 56) = v21 - v22;
    *(a2 + 16) = v14 - v17;
    *(a2 + 24) = result - v23;
    *a2 = v23 + result + v17 + v14;
    *(a2 + 8) = v17 + v14 - (v23 + result);
    a2 = (a2 + 2);
  }

  return result;
}

char *doInvHaar8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  result = malloc_type_malloc(0x80uLL, 0x1000040BDFB0063uLL);
  v9 = 0;
  v10 = a3 + 2 * a4;
  v11 = a3 + 4 * a4;
  v12 = a3 + 8 * a4;
  v13 = a3 + 10 * a4;
  v14 = a3 + 6 * a4;
  v15 = a3 + 12 * a4;
  v16 = a3 + 14 * a4;
  do
  {
    v17 = &result[v9];
    v18 = *(v10 + v9) + *(a3 + v9) + 2 * *(v11 + v9) + 4 * *(v12 + v9);
    *v17 = v18;
    v19 = *(v10 + v9) + *(a3 + v9) + 2 * *(v11 + v9) - 4 * *(v12 + v9);
    *(v17 + 8) = v19;
    v20 = *(v10 + v9) + *(a3 + v9) - 2 * *(v11 + v9) + 4 * *(v13 + v9);
    *(v17 + 16) = v20;
    v21 = *(v10 + v9) + *(a3 + v9) - (2 * *(v11 + v9) + 4 * *(v13 + v9));
    *(v17 + 24) = v21;
    v22 = *(a3 + v9) - *(v10 + v9) + 2 * *(v14 + v9) + 4 * *(v15 + v9);
    *(v17 + 32) = v22;
    v23 = *(a3 + v9) + 2 * *(v14 + v9) - (*(v10 + v9) + 4 * *(v15 + v9));
    *(v17 + 40) = v23;
    v24 = *(a3 + v9) - (*(v10 + v9) + 2 * *(v14 + v9)) + 4 * *(v16 + v9);
    *(v17 + 48) = v24;
    v25 = *(a3 + v9) - (*(v10 + v9) + 2 * *(v14 + v9) + 4 * *(v16 + v9));
    *v17 = (v18 + 4) >> 3;
    *(v17 + 8) = (v19 + 4) >> 3;
    *(v17 + 16) = (v20 + 4) >> 3;
    *(v17 + 24) = (v21 + 4) >> 3;
    *(v17 + 32) = (v22 + 4) >> 3;
    *(v17 + 40) = (v23 + 4) >> 3;
    *(v17 + 48) = (v24 + 4) >> 3;
    *(v17 + 56) = (v25 + 4) >> 3;
    v9 += 2;
  }

  while (v9 != 16);
  v26 = 0;
  v27 = (a1 + 3);
  do
  {
    *(v27 - 3) = (*&result[v26] + *&result[v26 + 2] + 2 * *&result[v26 + 4] + 4 * *&result[v26 + 8] + 4) >> 3;
    *(v27 - 2) = (*&result[v26] + *&result[v26 + 2] + 2 * *&result[v26 + 4] - 4 * *&result[v26 + 8] + 4) >> 3;
    *(v27 - 1) = (*&result[v26] + *&result[v26 + 2] - 2 * *&result[v26 + 4] + 4 * *&result[v26 + 10] + 4) >> 3;
    *v27 = (*&result[v26] + *&result[v26 + 2] - (2 * *&result[v26 + 4] + 4 * *&result[v26 + 10]) + 4) >> 3;
    v27[1] = (*&result[v26] - *&result[v26 + 2] + 2 * *&result[v26 + 6] + 4 * *&result[v26 + 12] + 4) >> 3;
    v27[2] = (*&result[v26] + 2 * *&result[v26 + 6] - (*&result[v26 + 2] + 4 * *&result[v26 + 12]) + 4) >> 3;
    v27[3] = (*&result[v26] - (*&result[v26 + 2] + 2 * *&result[v26 + 6]) + 4 * *&result[v26 + 14] + 4) >> 3;
    v27[4] = (*&result[v26] - (*&result[v26 + 2] + 2 * *&result[v26 + 6] + 4 * *&result[v26 + 14]) + 4) >> 3;
    v26 += 16;
    v27 += a2;
  }

  while (v26 != 128);
  return result;
}

double diffMachTime(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  LODWORD(a4) = timebase;
  LODWORD(a5) = *algn_1EB101C64;
  return (a2 - a1) * *&a4 / *&a5 / 1000000000.0;
}

uint64_t perfInit()
{
  mach_timebase_info(&timebase);
  result = mach_absolute_time();
  g_initTime = result;
  return result;
}

double timeElapsedSinceInit()
{
  v0 = g_initTime;
  if (!g_initTime)
  {
    mach_timebase_info(&timebase);
    v0 = mach_absolute_time();
    g_initTime = v0;
  }

  v1 = mach_absolute_time();
  LODWORD(v2) = timebase;
  LODWORD(v3) = *algn_1EB101C64;
  return (v1 - v0) * v2 / v3 / 1000000000.0;
}

double timestampToSeconds(unint64_t a1, double a2, double a3, double a4)
{
  LODWORD(a3) = timebase;
  LODWORD(a4) = *algn_1EB101C64;
  return a1 * *&a3 / *&a4 / 1000000000.0;
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id getBCSDetectedCodeClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getBCSDetectedCodeClass_softClass;
  v7 = getBCSDetectedCodeClass_softClass;
  if (!getBCSDetectedCodeClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getBCSDetectedCodeClass_block_invoke;
    v3[3] = &unk_1E76F8100;
    v3[4] = &v4;
    __getBCSDetectedCodeClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A36B11B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBCSDetectedCodeClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!BarcodeSupportLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __BarcodeSupportLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E76F8278;
    v6 = 0;
    BarcodeSupportLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (BarcodeSupportLibraryCore_frameworkLibrary)
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
  result = objc_getClass("BCSDetectedCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBCSDetectedCodeClass_block_invoke_cold_1();
  }

  getBCSDetectedCodeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BarcodeSupportLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  BarcodeSupportLibraryCore_frameworkLibrary = result;
  return result;
}

id NSStringFromCAMPowerAssertionReasonBitfield(unsigned int a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (a1)
  {
    v3 = 1;
    do
    {
      if (a1)
      {
        v4 = NSStringFromCAMPowerAssertionReason(v3);
        [v2 addObject:v4];
      }

      v3 *= 2;
      v5 = a1 > 1;
      a1 >>= 1;
    }

    while (v5);
  }

  v6 = [v2 componentsJoinedByString:{@", "}];

  return v6;
}

__CFString *NSStringFromCAMPowerAssertionReason(int a1)
{
  if (a1 <= 2047)
  {
    if (a1 <= 31)
    {
      if (a1 <= 3)
      {
        if (a1 == 1)
        {
          v1 = @"CAMPowerAssertionReasonCaptureStillImage";
        }

        else
        {
          if (a1 != 2)
          {
            goto LABEL_57;
          }

          v1 = @"CAMPowerAssertionReasonCaptureVideo";
        }
      }

      else
      {
        switch(a1)
        {
          case 4:
            v1 = @"CAMPowerAssertionReasonCapturePanorama";
            break;
          case 8:
            v1 = @"CAMPowerAssertionReasonCapturePanoramaTeardown";
            break;
          case 16:
            v1 = @"CAMPowerAssertionReasonBurstAnalysis";
            break;
          default:
            goto LABEL_57;
        }
      }
    }

    else if (a1 > 255)
    {
      switch(a1)
      {
        case 256:
          v1 = @"CAMPowerAssertionReasonPersistenceStillImageLocalFilteredHDR";
          break;
        case 512:
          v1 = @"CAMPowerAssertionReasonPersistenceStillImageRemote";
          break;
        case 1024:
          v1 = @"CAMPowerAssertionReasonPersistenceStillImageRemoteHDR";
          break;
        default:
          goto LABEL_57;
      }
    }

    else
    {
      switch(a1)
      {
        case 32:
          v1 = @"CAMPowerAssertionReasonPersistenceStillImageLocal";
          break;
        case 64:
          v1 = @"CAMPowerAssertionReasonPersistenceStillImageLocalHDR";
          break;
        case 128:
          v1 = @"CAMPowerAssertionReasonPersistenceStillImageLocalFiltered";
          break;
        default:
          goto LABEL_57;
      }
    }

LABEL_55:
    if (([(__CFString *)v1 hasPrefix:@"CAMPowerAssertionReason"]& 1) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  if (a1 < 0x20000)
  {
    if (a1 >= 0x4000)
    {
      switch(a1)
      {
        case 0x4000:
          v1 = @"CAMPowerAssertionReasonPersistenceVideoLocalHDR";
          break;
        case 0x8000:
          v1 = @"CAMPowerAssertionReasonPersistenceVideoLocalFiltered";
          break;
        case 0x10000:
          v1 = @"CAMPowerAssertionReasonPersistenceVideoLocalFilteredHDR";
          break;
        default:
          goto LABEL_57;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x800:
          v1 = @"CAMPowerAssertionReasonPersistenceStillImageRemoteFiltered";
          break;
        case 0x1000:
          v1 = @"CAMPowerAssertionReasonPersistenceStillImageRemoteFilteredHDR";
          break;
        case 0x2000:
          v1 = @"CAMPowerAssertionReasonPersistenceVideoLocal";
          break;
        default:
          goto LABEL_57;
      }
    }

    goto LABEL_55;
  }

  if (a1 < 0x100000)
  {
    switch(a1)
    {
      case 0x20000:
        v1 = @"CAMPowerAssertionReasonPersistenceVideoRemote";
        break;
      case 0x40000:
        v1 = @"CAMPowerAssertionReasonPersistenceVideoRemoteHDR";
        break;
      case 0x80000:
        v1 = @"CAMPowerAssertionReasonPersistenceVideoRemoteFiltered";
        break;
      default:
        goto LABEL_57;
    }

    goto LABEL_55;
  }

  switch(a1)
  {
    case 0x100000:
      v1 = @"CAMPowerAssertionReasonPersistenceVideoRemoteFilteredHDR";
      goto LABEL_55;
    case 0x200000:
      v1 = @"CAMPowerAssertionReasonPersistenceBurstRemote";
      goto LABEL_55;
    case 0x400000:
      v1 = @"CAMPowerAssertionReasonPersistenceRemoteTimelapsePlaceholder";
      if ([@"CAMPowerAssertionReasonPersistenceRemoteTimelapsePlaceholder" hasPrefix:@"CAMPowerAssertionReason"])
      {
LABEL_56:
        v1 = -[__CFString substringFromIndex:](v1, "substringFromIndex:", [@"CAMPowerAssertionReason" length]);
      }

      break;
  }

LABEL_57:

  return v1;
}

void sub_1A36B49A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_1A36B8758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A36B8934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A36BA5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A36BA96C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id CAMRPPersonChangeFlagsDescription(char a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"Attributes"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"Devices"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [v3 addObject:@"Proximity"];
  if ((a1 & 8) != 0)
  {
LABEL_5:
    [v3 addObject:@"Relative Location"];
  }

LABEL_6:
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

Class __getRPPeopleDiscoveryClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!RapportLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __RapportLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E76F87D8;
    v6 = 0;
    RapportLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (RapportLibraryCore_frameworkLibrary)
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
  result = objc_getClass("RPPeopleDiscovery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRPPeopleDiscoveryClass_block_invoke_cold_1();
  }

  getRPPeopleDiscoveryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __RapportLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  RapportLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1A36BFEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A36C1A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *CAMSharedLibraryModeDescription(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E76F8940[a1];
  }
}

void sub_1A36C481C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A36C4F80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1A36C5824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id CAMPortraitModeInstructionLabelMeasurementFormatter()
{
  if (CAMPortraitModeInstructionLabelMeasurementFormatter_onceToken != -1)
  {
    CAMPortraitModeInstructionLabelMeasurementFormatter_cold_1();
  }

  v1 = CAMPortraitModeInstructionLabelMeasurementFormatter_sharedFormatter;

  return v1;
}

void __CAMPortraitModeInstructionLabelMeasurementFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD30]);
  v1 = CAMPortraitModeInstructionLabelMeasurementFormatter_sharedFormatter;
  CAMPortraitModeInstructionLabelMeasurementFormatter_sharedFormatter = v0;

  [CAMPortraitModeInstructionLabelMeasurementFormatter_sharedFormatter setUnitOptions:1];
  [CAMPortraitModeInstructionLabelMeasurementFormatter_sharedFormatter setUnitStyle:3];
  v2 = [CAMPortraitModeInstructionLabelMeasurementFormatter_sharedFormatter numberFormatter];
  [v2 setMinimumFractionDigits:0];
  [v2 setMaximumFractionDigits:1];
  [v2 setRoundingMode:2];
  [v2 setRoundingIncrement:&unk_1F16C8A38];
}

double PLScaledSize(int a1, int a2, int a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  if (a5 > a6)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  v9 = a7 < a8;
  if ((v8 & v9) != 0)
  {
    v10 = a8;
  }

  else
  {
    v10 = a7;
  }

  if ((v8 & v9) == 0)
  {
    a7 = a8;
  }

  v11 = rint(a5 * a7 / a6);
  v12 = rint(a6 * v10 / a5);
  if (a6 * v10 <= a5 * a7 == a3)
  {
    v10 = v11;
  }

  else
  {
    a7 = v12;
  }

  if (a2)
  {
    v13 = a7 > a6;
    if (v10 > a5)
    {
      v13 = 1;
    }

    if (v13)
    {
      a7 = a6;
      v10 = a5;
    }
  }

  if (a4 < 1)
  {
    return v10;
  }

  v14 = a4;
  if (a7 <= a4 && v10 <= v14)
  {
    return v10;
  }

  if (v10 <= a7)
  {
    return rint(a5 * v14 / a6);
  }

  return v14;
}

id CAMImageWithTextColorFont(void *a1, void *a2, void *a3)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69DB650];
  v19[0] = *MEMORY[0x1E69DB648];
  v19[1] = v5;
  v20[0] = a3;
  v20[1] = a2;
  v6 = MEMORY[0x1E695DF20];
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = [v6 dictionaryWithObjects:v20 forKeys:v19 count:2];

  v11 = *MEMORY[0x1E695F058];
  v12 = *(MEMORY[0x1E695F058] + 8);
  [v9 sizeWithAttributes:v10];
  UICeilToScale();
  v14 = v13;
  UICeilToScale();
  v16 = v15;
  v22.width = v14;
  v22.height = v16;
  UIGraphicsBeginImageContextWithOptions(v22, 0, 0.0);
  [v9 drawInRect:v10 withAttributes:{v11, v12, v14, v16}];

  v17 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v17;
}

id CAMImageWithColor(void *a1)
{
  v1 = a1;
  v7.width = 1.0;
  v7.height = 1.0;
  UIGraphicsBeginImageContext(v7);
  CurrentContext = UIGraphicsGetCurrentContext();
  v3 = [v1 CGColor];

  CGContextSetFillColorWithColor(CurrentContext, v3);
  v8.origin.x = 0.0;
  v8.origin.y = 0.0;
  v8.size.width = 1.0;
  v8.size.height = 1.0;
  CGContextFillRect(CurrentContext, v8);
  v4 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v4;
}

void sub_1A36C7CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A36C8D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A36CFE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_1A36D0A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A36D1A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __CAMDebugStringForCaptureResultSpecifiersSet_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  if ((v3 & 2) != 0)
  {
    v4 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
    if ((v3 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = &stru_1F1660A30;
  if (v3)
  {
LABEL_5:
    v13 = v4;
    v5 = [(__CFString *)v4 stringByAppendingString:@"HDR"];

    v4 = v5;
  }

LABEL_6:
  v14 = v4;
  if ([(__CFString *)v4 length])
  {
    v6 = v14;
  }

  else
  {

    v6 = @"None";
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  v15 = v6;
  if (v8)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@", v8, v6];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    v12 = v6;
    v11 = *(v7 + 40);
    *(v7 + 40) = v12;
  }
}

uint64_t CAMPhotoFormatForPhotoFormatPreference(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  v3 = 2;
  v4 = 2;
  if (a1 != 4)
  {
    v4 = 0;
  }

  if (a1 != 3)
  {
    v3 = v4;
  }

  if (a1 == 2)
  {
    v3 = a2;
  }

  if (a1 == 1)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  if (a1)
  {
    v2 = v5;
  }

  if (a1 <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_1A36D26D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1A36E0558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A36E5B84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1A36EB058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A36ECEF4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1A36ED2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A36FCFF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A36FD2B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A36FF7B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id CAMDebugStringForControlDisableReasons(unint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (a1)
  {
    v3 = 1;
    do
    {
      if (a1)
      {
        v4 = @"PurgingDiskSpace";
        if (v3 != 128)
        {
          v4 = @"UNKNOWN";
        }

        if (v3 == 64)
        {
          v4 = @"ViewfinderOpening";
        }

        if (v3 == 32)
        {
          v4 = @"PhysicalButtonDown";
        }

        if (v3 == 16)
        {
          v5 = @"ModeDisabled";
        }

        else
        {
          v5 = @"UNKNOWN";
        }

        if (v3 == 8)
        {
          v5 = @"PreventingAdditionalCaptures";
        }

        if (v3 <= 31)
        {
          v4 = v5;
        }

        if (v3 == 4)
        {
          v6 = @"ViewfinderClosed";
        }

        else
        {
          v6 = @"UNKNOWN";
        }

        if (v3 == 2)
        {
          v6 = @"OutOfDiskSpace";
        }

        if (v3 == 1)
        {
          v7 = @"CaptureUnavailable";
        }

        else
        {
          v7 = @"UNKNOWN";
        }

        if (!v3)
        {
          v7 = @"Enabled";
        }

        if (v3 <= 1)
        {
          v6 = v7;
        }

        if (v3 <= 7)
        {
          v8 = v6;
        }

        else
        {
          v8 = v4;
        }

        [v2 addObject:v8];
      }

      v3 *= 2;
      v9 = a1 > 1;
      a1 >>= 1;
    }

    while (v9);
  }

  v10 = [v2 componentsJoinedByString:{@", "}];

  return v10;
}

void sub_1A37085B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1A3709AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A370BFD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A370C3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_1A370C538(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A371CC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A371DA18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak(&a18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A371EBE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1A371FDAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak(&a22);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A37234A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3723A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3723D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3728AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __getBCSAVParsingSessionClass_block_invoke(uint64_t a1)
{
  BarcodeSupportLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BCSAVParsingSession");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBCSAVParsingSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getBCSAVParsingSessionClass_block_invoke_cold_1();
    BarcodeSupportLibrary();
  }
}

void BarcodeSupportLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!BarcodeSupportLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __BarcodeSupportLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E76F9DE0;
    v3 = 0;
    BarcodeSupportLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!BarcodeSupportLibraryCore_frameworkLibrary_0)
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

uint64_t __BarcodeSupportLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  BarcodeSupportLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void __getBCSActionClass_block_invoke(uint64_t a1)
{
  BarcodeSupportLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BCSAction");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBCSActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getBCSActionClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_0_1();
  }
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1A372DDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A372E244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *CAMDebugStringForCaptureResultSpecifiers(char a1)
{
  if ((a1 & 2) != 0)
  {
    v2 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
    if ((a1 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = &stru_1F1660A30;
  if (a1)
  {
LABEL_5:
    v3 = [(__CFString *)v2 stringByAppendingString:@"HDR"];

    v2 = v3;
  }

LABEL_6:
  if (![(__CFString *)v2 length])
  {

    v2 = @"None";
  }

  return v2;
}

void sub_1A3730EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return MEMORY[0x1EEE298F8](v4, a1, va);
}

void sub_1A373159C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A3731E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CAMLibrarySelectionIdentityMatch(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 phoneNumber];
  v6 = [v4 phoneNumber];
  v7 = [v5 isEqual:v6];

  if (v7 & 1) != 0 || ([v3 emailAddress], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "emailAddress"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v8, (v10))
  {
    v11 = 1;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = [v3 contactIdentifiers];
    v11 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v13 = *v19;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v12);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          v16 = [v4 contactIdentifiers];
          LOBYTE(v15) = [v16 containsObject:v15];

          if (v15)
          {
            v11 = 1;
            goto LABEL_14;
          }
        }

        v11 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  return v11;
}

id CAMLibrarySelectionIdentityDescription(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [v1 phoneNumber];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [v1 phoneNumber];
    [v2 addObject:v5];
  }

  v6 = [v1 emailAddress];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [v1 emailAddress];
    [v2 addObject:v8];
  }

  if (![v2 count])
  {
    [v2 addObject:@"no handle"];
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = [v2 componentsJoinedByString:@" - "];
  v11 = [v1 contactIdentifiers];
  v12 = [v11 componentsJoinedByString:{@", "}];
  v13 = [v9 stringWithFormat:@"%@ (%@)", v10, v12];

  return v13;
}

id CAMLibrarySelectionIdentityContactIdentifiersForIdentities(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 contactIdentifiers];
        v10 = [v9 count];

        if (v10)
        {
          v11 = [v8 contactIdentifiers];
          [v2 addObjectsFromArray:v11];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = [v2 allObjects];

  return v12;
}

__CFString *CAMDebugStringForCaptureDevice_0(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return 0;
  }

  else
  {
    return off_1E76FA438[a1];
  }
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1A373ED68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose((v57 - 240), 8);
  _Block_object_dispose((v57 - 192), 8);
  _Unwind_Resume(a1);
}

id CAMTelemetrySignpostsLog()
{
  if (CAMTelemetrySignpostsLog_onceToken != -1)
  {
    CAMTelemetrySignpostsLog_cold_1();
  }

  v1 = CAMTelemetrySignpostsLog_cameraLogHandle;

  return v1;
}

uint64_t __CAMTelemetrySignpostsLog_block_invoke()
{
  v0 = os_log_create("com.apple.camera.signposts", "TelemetrySignposts");
  v1 = CAMTelemetrySignpostsLog_cameraLogHandle;
  CAMTelemetrySignpostsLog_cameraLogHandle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void CAMSignpostWithIDAndArgs(int a1, os_signpost_id_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v67 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v12 = CAMTelemetrySignpostsLog();
  v13 = v12;
  switch(a1)
  {
    case 9:
      v14 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v15 = v14;
      if (!os_signpost_enabled(v14))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "modeChange";
      goto LABEL_123;
    case 10:
      v38 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v18 = v38;
      if (!os_signpost_enabled(v38))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "modeChange";
      goto LABEL_119;
    case 35:
      v32 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v15 = v32;
      if (!os_signpost_enabled(v32))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "beginCapturePhoto";
      goto LABEL_123;
    case 36:
      v44 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v18 = v44;
      if (!os_signpost_enabled(v44))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "beginCapturePhoto";
      goto LABEL_119;
    case 37:
      v45 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v15 = v45;
      if (!os_signpost_enabled(v45))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "willCapturePhoto";
      goto LABEL_123;
    case 38:
      v35 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v18 = v35;
      if (!os_signpost_enabled(v35))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "willCapturePhoto";
      goto LABEL_119;
    case 39:
      v39 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v15 = v39;
      if (!os_signpost_enabled(v39))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "didCapturePhoto";
      goto LABEL_123;
    case 40:
      v40 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v18 = v40;
      if (!os_signpost_enabled(v40))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "didCapturePhoto";
      goto LABEL_119;
    case 41:
      v48 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v15 = v48;
      if (!os_signpost_enabled(v48))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "didFinishProcessingPhoto";
      goto LABEL_123;
    case 42:
      v47 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v18 = v47;
      if (!os_signpost_enabled(v47))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "didFinishProcessingPhoto";
      goto LABEL_119;
    case 43:
      v26 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v15 = v26;
      if (!os_signpost_enabled(v26))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "didFinishRecordingLivePhoto";
      goto LABEL_123;
    case 44:
      v36 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v18 = v36;
      if (!os_signpost_enabled(v36))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "didFinishRecordingLivePhoto";
      goto LABEL_119;
    case 45:
      v30 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v15 = v30;
      if (!os_signpost_enabled(v30))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "didFinishProcessingLivePhoto";
      goto LABEL_123;
    case 46:
      v23 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v18 = v23;
      if (!os_signpost_enabled(v23))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "didFinishProcessingLivePhoto";
      goto LABEL_119;
    case 47:
      v41 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v15 = v41;
      if (!os_signpost_enabled(v41))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "finishCapturePhoto";
      goto LABEL_123;
    case 48:
      v42 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v18 = v42;
      if (!os_signpost_enabled(v42))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "finishCapturePhoto";
      goto LABEL_119;
    case 61:
      v51 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v15 = v51;
      if (!os_signpost_enabled(v51))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "didCaptureDeferredPhoto";
      goto LABEL_123;
    case 62:
      v49 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v18 = v49;
      if (!os_signpost_enabled(v49))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "didCaptureDeferredPhoto";
      goto LABEL_119;
    case 66:
      v21 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v15 = v21;
      if (!os_signpost_enabled(v21))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "captureInterval";
      goto LABEL_123;
    case 67:
      v31 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v18 = v31;
      if (!os_signpost_enabled(v31))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "captureInterval";
      goto LABEL_119;
    case 70:
      v52 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v15 = v52;
      if (!os_signpost_enabled(v52))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "photoCapture";
      goto LABEL_123;
    case 71:
      v22 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v18 = v22;
      if (!os_signpost_enabled(v22))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "photoCapture";
      goto LABEL_119;
    case 72:
      v29 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v15 = v29;
      if (!os_signpost_enabled(v29))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "photoCaptureAndProcessing";
      goto LABEL_123;
    case 73:
      v25 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v18 = v25;
      if (!os_signpost_enabled(v25))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "photoCaptureAndProcessing";
      goto LABEL_119;
    case 74:
      v37 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v15 = v37;
      if (!os_signpost_enabled(v37))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "captureToImageWellProcessing";
      goto LABEL_123;
    case 75:
      v24 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v18 = v24;
      if (!os_signpost_enabled(v24))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "captureToImageWellProcessing";
      goto LABEL_119;
    case 76:
      v54 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v15 = v54;
      if (!os_signpost_enabled(v54))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "beginCaptureBeforeResolvingSettingsPhoto";
      goto LABEL_123;
    case 77:
      v53 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v18 = v53;
      if (!os_signpost_enabled(v53))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "beginCaptureBeforeResolvingSettingsPhoto";
      goto LABEL_119;
    case 78:
      v28 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v15 = v28;
      if (!os_signpost_enabled(v28))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "peopleProximityScanActivate";
      goto LABEL_123;
    case 79:
      v33 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v18 = v33;
      if (!os_signpost_enabled(v33))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "peopleProximityScanActivate";
      goto LABEL_119;
    case 80:
      v43 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v15 = v43;
      if (!os_signpost_enabled(v43))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "peopleProximityDiscoverPerson";
      goto LABEL_123;
    case 81:
      v34 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v18 = v34;
      if (!os_signpost_enabled(v34))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "peopleProximityDiscoverPerson";
      goto LABEL_119;
    case 87:
      v58 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v15 = v58;
      if (!os_signpost_enabled(v58))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "prewarmAudioVideoDevices";
      goto LABEL_123;
    case 88:
      v27 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v18 = v27;
      if (!os_signpost_enabled(v27))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "prewarmAudioVideoDevices";
      goto LABEL_119;
    case 89:
      v50 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v15 = v50;
      if (!os_signpost_enabled(v50))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "CAMCaptureCabilities init";
      goto LABEL_123;
    case 90:
      v55 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v18 = v55;
      if (!os_signpost_enabled(v55))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "CAMCaptureCabilities init";
      goto LABEL_119;
    case 91:
      v20 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v15 = v20;
      if (!os_signpost_enabled(v20))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "prewarmAudioVideoDeviceTypes";
      goto LABEL_123;
    case 92:
      v46 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v18 = v46;
      if (!os_signpost_enabled(v46))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "prewarmAudioVideoDeviceTypes";
      goto LABEL_119;
    case 93:
      v19 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v15 = v19;
      if (!os_signpost_enabled(v19))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "prewarmCaptureSession";
LABEL_123:
      v56 = v15;
      v57 = OS_SIGNPOST_INTERVAL_BEGIN;
      break;
    case 94:
      v17 = v12;
      if (a2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_125;
      }

      v18 = v17;
      if (!os_signpost_enabled(v17))
      {
        goto LABEL_125;
      }

      v59 = 134218752;
      v60 = a3;
      v61 = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v16 = "prewarmCaptureSession";
LABEL_119:
      v56 = v18;
      v57 = OS_SIGNPOST_INTERVAL_END;
      break;
    default:
      goto LABEL_126;
  }

  _os_signpost_emit_with_name_impl(&dword_1A3640000, v56, v57, a2, v16, " enableTelemetry=YES (%llu, %llu, %llu, %llu)", &v59, 0x2Au);
LABEL_125:

LABEL_126:
}