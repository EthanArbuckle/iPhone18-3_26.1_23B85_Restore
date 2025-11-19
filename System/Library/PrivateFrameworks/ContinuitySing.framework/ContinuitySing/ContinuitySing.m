void sub_2441FDBE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2441FDD80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

double ReverbValueFromReverbLevel(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    v1 = &CSReverbIntensityOff;
  }

  else
  {
    v1 = *(&off_278E0AC78 + a1 - 1);
  }

  return *v1;
}

uint64_t ReverbLevelFromReverbValue(double a1)
{
  if (1.0 + -2.22044605e-16 <= a1)
  {
    return 3;
  }

  if (0.6 + -2.22044605e-16 <= a1)
  {
    return 2;
  }

  return 1;
}

__CFString *NSStringFromCSReverbLevel(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_278E0AC90[a1];
  }
}

id CSArtworkPlaceholderImage(uint64_t a1)
{
  v1 = MEMORY[0x277D755B0];
  v2 = MEMORY[0x277D755D8];
  v3 = [MEMORY[0x277D74300] systemFontOfSize:a1];
  v4 = [v2 configurationWithFont:v3];
  v5 = [v1 _systemImageNamed:@"music" withConfiguration:v4];

  return v5;
}

void sub_244207EA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v5 - 128));
  _Unwind_Resume(a1);
}

void sub_244208A74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_244208DA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_244209170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24420954C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_244209808(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_244209AEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_244209DD0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24420A0B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24420A8F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24420AD38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24420B884(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_24420D1F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

id ContinuitySingLog()
{
  if (ContinuitySingLog_onceToken != -1)
  {
    ContinuitySingLog_cold_1();
  }

  v1 = ContinuitySingLog___logObj;

  return v1;
}

uint64_t __ContinuitySingLog_block_invoke()
{
  ContinuitySingLog___logObj = os_log_create("com.apple.ContinuitySing", "default");

  return MEMORY[0x2821F96F8]();
}

void sub_24420F2AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_2442110E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_244213060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *_CSErrorCodeDescription(uint64_t a1)
{
  if ((a1 + 117) > 0x11)
  {
    return @"ContinuitySingErrorCodeNone";
  }

  else
  {
    return off_278E0B728[a1 + 117];
  }
}

void sub_2442152EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_244215AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_244216168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_244217BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2442189BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_244218B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_244219060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak((v35 + 32));
  objc_destroyWeak(&a33);
  objc_destroyWeak((v36 - 120));
  objc_destroyWeak((v36 - 112));
  _Unwind_Resume(a1);
}

void sub_244219504(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_244219CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak((v26 - 112));
  _Unwind_Resume(a1);
}

void sub_24421A16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  objc_destroyWeak(va);
  objc_destroyWeak((v16 - 112));
  _Unwind_Resume(a1);
}

void sub_24421A650(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_24421B724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24421C418(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24421D364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24421D780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24421DAB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_24421DD8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_244220300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_244220A54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_5_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Au);
}

__CFString *CSIdentifierForMessageID(uint64_t a1)
{
  result = @"com.apple.ContinuitySing.CSMessageIDGenericRequest";
  if (a1 > 1000)
  {
    v3 = @"com.apple.ContinuitySing.vocal";
    v4 = @"com.apple.ContinuitySing.displayModeEvent";
    v5 = @"com.apple.ContinuitySing.startSinging";
    if (a1 != 1011)
    {
      v5 = @"com.apple.ContinuitySing.CSMessageIDGenericRequest";
    }

    if (a1 != 1010)
    {
      v4 = v5;
    }

    if (a1 != 1009)
    {
      v3 = v4;
    }

    v6 = @"com.apple.ContinuitySing.audioMeasurementEvent";
    v7 = @"com.apple.ContinuitySing.clientDisconnect";
    if (a1 != 1008)
    {
      v7 = @"com.apple.ContinuitySing.CSMessageIDGenericRequest";
    }

    if (a1 != 1007)
    {
      v6 = v7;
    }

    if (a1 <= 1008)
    {
      v3 = v6;
    }

    v8 = @"com.apple.ContinuitySing.disconnect";
    v9 = @"com.apple.ContinuitySing.addedToQueue";
    if (a1 != 1006)
    {
      v9 = @"com.apple.ContinuitySing.CSMessageIDGenericRequest";
    }

    if (a1 != 1005)
    {
      v8 = v9;
    }

    v10 = @"com.apple.ContinuitySing.reaction";
    v11 = @"com.apple.ContinuitySing.reverb";
    if (a1 != 1002)
    {
      v11 = @"com.apple.ContinuitySing.CSMessageIDGenericRequest";
    }

    if (a1 != 1001)
    {
      v10 = v11;
    }

    if (a1 <= 1004)
    {
      v8 = v10;
    }

    if (a1 <= 1006)
    {
      return v8;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        result = @"com.apple.ContinuitySing.CSMessageIDGenericResponse";
        break;
      case 2:
        result = @"com.apple.ContinuitySing.microphoneVolumeRequest";
        break;
      case 3:
        result = @"com.apple.ContinuitySing.microphoneVolumeResponse";
        break;
      case 4:
        result = @"com.apple.ContinuitySing.microphoneVolumeIncrease";
        break;
      case 5:
        result = @"com.apple.ContinuitySing.microphoneVolumeIncreaseResponse";
        break;
      case 6:
        result = @"com.apple.ContinuitySing.microphoneVolumeDecrease";
        break;
      case 7:
        result = @"com.apple.ContinuitySing.microphoneVolumeDecreaseResponse";
        break;
      case 8:
        result = @"com.apple.ContinuitySing.reverbRequest";
        break;
      case 9:
        result = @"com.apple.ContinuitySing.reverbResponse";
        break;
      case 14:
        result = @"com.apple.ContinuitySing.sessionUpdateRequest";
        break;
      case 15:
        result = @"com.apple.ContinuitySing.sessionUpdate";
        break;
      case 16:
        result = @"com.apple.ContinuitySing.enableMicRequest";
        break;
      case 17:
        result = @"com.apple.ContinuitySing.enableMicResponse";
        break;
      case 18:
        result = @"com.apple.ContinuitySing.groupSessionTokenRequest";
        break;
      case 19:
        result = @"com.apple.ContinuitySing.groupSessionTokenResponse";
        break;
      case 20:
        result = @"com.apple.ContinuitySing.clientCheckinRequest";
        break;
      case 21:
        result = @"com.apple.ContinuitySing.clientCheckinResponse";
        break;
      case 22:
        result = @"com.apple.ContinuitySing.handshake";
        break;
      case 23:
        result = @"com.apple.ContinuitySing.handshakeResponse";
        break;
      case 26:
        result = @"com.apple.ContinuitySing.attributionRequest";
        break;
      case 27:
        result = @"com.apple.ContinuitySing.attributionRespone";
        break;
      case 28:
        result = @"com.apple.ContinuitySing.avatarRequest";
        break;
      case 29:
        result = @"com.apple.ContinuitySing.avatarResponse";
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_244225E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_244228638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24422A430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  objc_destroyWeak((v12 + 32));
  objc_destroyWeak((v11 + 32));
  objc_destroyWeak((v9 + 32));
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&a9);
  _Unwind_Resume(a1);
}

void sub_24422BB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  objc_destroyWeak((v41 + 64));
  objc_destroyWeak((v40 + 48));
  objc_destroyWeak(&a40);
  objc_destroyWeak((v42 - 168));
  _Block_object_dispose((v42 - 160), 8);
  objc_destroyWeak((v42 - 120));
  _Unwind_Resume(a1);
}

void sub_24422D128(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_24422E528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24422E6A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_24422EFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24422F1A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_24422FA20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_244230C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2442317C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_2442319F4(double a1, double a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24423769C;

  return sub_244231AAC(a1, a2);
}

uint64_t sub_244231AAC(double a1, double a2)
{
  *(v3 + 40) = v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  v4 = sub_244257998();
  *(v3 + 48) = v4;
  v5 = *(v4 - 8);
  *(v3 + 56) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  v7 = sub_2442579C8();
  *(v3 + 72) = v7;
  v8 = *(v7 - 8);
  *(v3 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE00, &qword_24425CA70) - 8) + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  v11 = sub_244257318();
  *(v3 + 104) = v11;
  v12 = *(v11 - 8);
  *(v3 + 112) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE08, &qword_24425C1A0) - 8) + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  v15 = sub_2442579F8();
  *(v3 + 136) = v15;
  v16 = *(v15 - 8);
  *(v3 + 144) = v16;
  v17 = *(v16 + 64) + 15;
  *(v3 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_244231CF4, 0, 0);
}

uint64_t sub_244231CF4()
{
  v1 = *(v0 + 17);
  v2 = *(v0 + 18);
  v3 = *(v0 + 16);
  v4 = *(v0 + 5);
  sub_244257958();
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v8 = *(v0 + 3);
    (*(*(v0 + 18) + 32))(*(v0 + 19), *(v0 + 16), *(v0 + 17));
    v9 = sub_2442579D8();
    if (v9 > 0)
    {
      if ((v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else
      {
        v12 = v0[3];
        if (v12 > -9.22337204e18)
        {
          if (v12 < 9.22337204e18)
          {
            v13 = *(v0 + 19);
            sub_2442579D8();
            goto LABEL_11;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

    if ((v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v14 = v0[3];
      if (v14 > -9.22337204e18)
      {
        if (v14 < 9.22337204e18)
        {
LABEL_11:
          v15 = *(v0 + 19);
          v16 = *(v0 + 4);
          v9 = sub_2442579E8();
          if (v9 >= 1)
          {
            if ((v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v17 = v0[4];
              if (v17 > -9.22337204e18)
              {
                if (v17 < 9.22337204e18)
                {
                  v18 = *(v0 + 19);
                  sub_2442579E8();
                  goto LABEL_19;
                }

LABEL_33:
                __break(1u);
LABEL_34:
                swift_once();
LABEL_25:
                v10 = qword_27EDDC328;
                *(v0 + 20) = qword_27EDDC328;
                v9 = sub_244232110;
                v11 = 0;

                return MEMORY[0x2822009F8](v9, v10, v11);
              }

LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          if ((v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v19 = v0[4];
            if (v19 > -9.22337204e18)
            {
              if (v19 < 9.22337204e18)
              {
LABEL_19:
                v20 = *(v0 + 19);
                v21 = *(v0 + 14);
                v23 = *(v0 + 11);
                v22 = *(v0 + 12);
                v24 = *(v0 + 10);
                v37 = *(v0 + 9);
                v38 = *(v0 + 13);
                v25 = *(v0 + 7);
                v26 = *(v0 + 8);
                v27 = *(v0 + 6);
                sub_2442579B8();
                (*(v25 + 104))(v26, *MEMORY[0x277D2B210], v27);
                sub_2442579A8();
                (*(v25 + 8))(v26, v27);
                (*(v24 + 8))(v23, v37);
                if ((*(v21 + 48))(v22, 1, v38) == 1)
                {
                  v28 = *(v0 + 12);
                  (*(*(v0 + 18) + 8))(*(v0 + 19), *(v0 + 17));
                  v6 = &unk_27EDDBE00;
                  v7 = &unk_24425CA70;
                  v5 = v28;
                  goto LABEL_21;
                }

                (*(*(v0 + 14) + 32))(*(v0 + 15), *(v0 + 12), *(v0 + 13));
                if (qword_27EDDC320 == -1)
                {
                  goto LABEL_25;
                }

                goto LABEL_34;
              }

LABEL_40:
              __break(1u);
              return MEMORY[0x2822009F8](v9, v10, v11);
            }

LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v5 = *(v0 + 16);
  v6 = &unk_27EDDBE08;
  v7 = &unk_24425C1A0;
LABEL_21:
  sub_244237440(v5, v6, v7);
  v29 = *(v0 + 19);
  v30 = *(v0 + 15);
  v31 = *(v0 + 16);
  v33 = *(v0 + 11);
  v32 = *(v0 + 12);
  v34 = *(v0 + 8);

  v35 = *(v0 + 1);

  return v35(0);
}

uint64_t sub_244232110()
{
  v1 = v0[20];
  v2 = sub_24423528C(v0[15]);
  v0[21] = v2;

  return MEMORY[0x2822009F8](sub_244232180, v2, 0);
}

uint64_t sub_244232180()
{
  v1 = v0[21];
  v2 = *(v1 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_image);
  v0[22] = v2;
  if (v2)
  {
    v0[24] = v2;
    v3 = v2;

    return MEMORY[0x2822009F8](sub_244237698, 0, 0);
  }

  else
  {
    v4 = sub_244235488();
    v5 = *(MEMORY[0x277D859E0] + 4);
    v6 = swift_task_alloc();
    v0[23] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE10, qword_24425C1A8);
    *v6 = v0;
    v6[1] = sub_2442322E0;
    v8 = v0[21];

    return MEMORY[0x2822007B8](v0 + 2, v1, v4, 0x7472416863746566, 0xEE0029286B726F77, sub_2442376A4, v8, v7);
  }
}

uint64_t sub_2442322E0()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2442323F0, v2, 0);
}

uint64_t sub_2442323F0()
{
  *(v0 + 192) = *(v0 + 16);
  v1 = *(v0 + 176);

  return MEMORY[0x2822009F8](sub_244237698, 0, 0);
}

uint64_t sub_244232464(double a1, double a2)
{
  *(v3 + 40) = v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  v4 = sub_244257998();
  *(v3 + 48) = v4;
  v5 = *(v4 - 8);
  *(v3 + 56) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  v7 = sub_2442579C8();
  *(v3 + 72) = v7;
  v8 = *(v7 - 8);
  *(v3 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE00, &qword_24425CA70) - 8) + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  v11 = sub_244257318();
  *(v3 + 104) = v11;
  v12 = *(v11 - 8);
  *(v3 + 112) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE08, &qword_24425C1A0) - 8) + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  v15 = sub_2442579F8();
  *(v3 + 136) = v15;
  v16 = *(v15 - 8);
  *(v3 + 144) = v16;
  v17 = *(v16 + 64) + 15;
  *(v3 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2442326AC, 0, 0);
}

uint64_t sub_2442326AC()
{
  v1 = *(v0 + 17);
  v2 = *(v0 + 18);
  v3 = *(v0 + 16);
  v4 = *(v0 + 5);
  sub_244257988();
  sub_244234D50();
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v8 = *(v0 + 3);
    (*(*(v0 + 18) + 32))(*(v0 + 19), *(v0 + 16), *(v0 + 17));
    v9 = sub_2442579D8();
    if (v9 > 0)
    {
      if ((v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else
      {
        v12 = v0[3];
        if (v12 > -9.22337204e18)
        {
          if (v12 < 9.22337204e18)
          {
            v13 = *(v0 + 19);
            sub_2442579D8();
            goto LABEL_11;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

    if ((v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v14 = v0[3];
      if (v14 > -9.22337204e18)
      {
        if (v14 < 9.22337204e18)
        {
LABEL_11:
          v15 = *(v0 + 19);
          v16 = *(v0 + 4);
          v9 = sub_2442579E8();
          if (v9 >= 1)
          {
            if ((v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v17 = v0[4];
              if (v17 > -9.22337204e18)
              {
                if (v17 < 9.22337204e18)
                {
                  v18 = *(v0 + 19);
                  sub_2442579E8();
                  goto LABEL_19;
                }

LABEL_33:
                __break(1u);
LABEL_34:
                swift_once();
LABEL_25:
                v10 = qword_27EDDC328;
                *(v0 + 20) = qword_27EDDC328;
                v9 = sub_244232110;
                v11 = 0;

                return MEMORY[0x2822009F8](v9, v10, v11);
              }

LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          if ((v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v19 = v0[4];
            if (v19 > -9.22337204e18)
            {
              if (v19 < 9.22337204e18)
              {
LABEL_19:
                v20 = *(v0 + 19);
                v21 = *(v0 + 14);
                v23 = *(v0 + 11);
                v22 = *(v0 + 12);
                v24 = *(v0 + 10);
                v37 = *(v0 + 9);
                v38 = *(v0 + 13);
                v25 = *(v0 + 7);
                v26 = *(v0 + 8);
                v27 = *(v0 + 6);
                sub_2442579B8();
                (*(v25 + 104))(v26, *MEMORY[0x277D2B210], v27);
                sub_2442579A8();
                (*(v25 + 8))(v26, v27);
                (*(v24 + 8))(v23, v37);
                if ((*(v21 + 48))(v22, 1, v38) == 1)
                {
                  v28 = *(v0 + 12);
                  (*(*(v0 + 18) + 8))(*(v0 + 19), *(v0 + 17));
                  v6 = &qword_27EDDBE00;
                  v7 = &qword_24425CA70;
                  v5 = v28;
                  goto LABEL_21;
                }

                (*(*(v0 + 14) + 32))(*(v0 + 15), *(v0 + 12), *(v0 + 13));
                if (qword_27EDDC320 == -1)
                {
                  goto LABEL_25;
                }

                goto LABEL_34;
              }

LABEL_40:
              __break(1u);
              return MEMORY[0x2822009F8](v9, v10, v11);
            }

LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v5 = *(v0 + 16);
  v6 = &qword_27EDDBE08;
  v7 = &qword_24425C1A0;
LABEL_21:
  sub_244237440(v5, v6, v7);
  v29 = *(v0 + 19);
  v30 = *(v0 + 15);
  v31 = *(v0 + 16);
  v33 = *(v0 + 11);
  v32 = *(v0 + 12);
  v34 = *(v0 + 8);

  v35 = *(v0 + 1);

  return v35(0);
}

uint64_t sub_244232AD0(double a1, double a2)
{
  *(v3 + 40) = v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  v4 = sub_244257998();
  *(v3 + 48) = v4;
  v5 = *(v4 - 8);
  *(v3 + 56) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  v7 = sub_2442579C8();
  *(v3 + 72) = v7;
  v8 = *(v7 - 8);
  *(v3 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE00, &qword_24425CA70) - 8) + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  v11 = sub_244257318();
  *(v3 + 104) = v11;
  v12 = *(v11 - 8);
  *(v3 + 112) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE08, &qword_24425C1A0) - 8) + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  v15 = sub_2442579F8();
  *(v3 + 136) = v15;
  v16 = *(v15 - 8);
  *(v3 + 144) = v16;
  v17 = *(v16 + 64) + 15;
  *(v3 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_244232D18, 0, 0);
}

uint64_t sub_244232D18()
{
  v1 = *(v0 + 17);
  v2 = *(v0 + 18);
  v3 = *(v0 + 16);
  v4 = *(v0 + 5);
  sub_244257A08();
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v8 = *(v0 + 3);
    (*(*(v0 + 18) + 32))(*(v0 + 19), *(v0 + 16), *(v0 + 17));
    v9 = sub_2442579D8();
    if (v9 > 0)
    {
      if ((v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else
      {
        v12 = v0[3];
        if (v12 > -9.22337204e18)
        {
          if (v12 < 9.22337204e18)
          {
            v13 = *(v0 + 19);
            sub_2442579D8();
            goto LABEL_11;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

    if ((v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v14 = v0[3];
      if (v14 > -9.22337204e18)
      {
        if (v14 < 9.22337204e18)
        {
LABEL_11:
          v15 = *(v0 + 19);
          v16 = *(v0 + 4);
          v9 = sub_2442579E8();
          if (v9 >= 1)
          {
            if ((v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v17 = v0[4];
              if (v17 > -9.22337204e18)
              {
                if (v17 < 9.22337204e18)
                {
                  v18 = *(v0 + 19);
                  sub_2442579E8();
                  goto LABEL_19;
                }

LABEL_33:
                __break(1u);
LABEL_34:
                swift_once();
LABEL_25:
                v10 = qword_27EDDC328;
                *(v0 + 20) = qword_27EDDC328;
                v9 = sub_244232110;
                v11 = 0;

                return MEMORY[0x2822009F8](v9, v10, v11);
              }

LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          if ((v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v19 = v0[4];
            if (v19 > -9.22337204e18)
            {
              if (v19 < 9.22337204e18)
              {
LABEL_19:
                v20 = *(v0 + 19);
                v21 = *(v0 + 14);
                v23 = *(v0 + 11);
                v22 = *(v0 + 12);
                v24 = *(v0 + 10);
                v37 = *(v0 + 9);
                v38 = *(v0 + 13);
                v25 = *(v0 + 7);
                v26 = *(v0 + 8);
                v27 = *(v0 + 6);
                sub_2442579B8();
                (*(v25 + 104))(v26, *MEMORY[0x277D2B210], v27);
                sub_2442579A8();
                (*(v25 + 8))(v26, v27);
                (*(v24 + 8))(v23, v37);
                if ((*(v21 + 48))(v22, 1, v38) == 1)
                {
                  v28 = *(v0 + 12);
                  (*(*(v0 + 18) + 8))(*(v0 + 19), *(v0 + 17));
                  v6 = &qword_27EDDBE00;
                  v7 = &qword_24425CA70;
                  v5 = v28;
                  goto LABEL_21;
                }

                (*(*(v0 + 14) + 32))(*(v0 + 15), *(v0 + 12), *(v0 + 13));
                if (qword_27EDDC320 == -1)
                {
                  goto LABEL_25;
                }

                goto LABEL_34;
              }

LABEL_40:
              __break(1u);
              return MEMORY[0x2822009F8](v9, v10, v11);
            }

LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v5 = *(v0 + 16);
  v6 = &qword_27EDDBE08;
  v7 = &qword_24425C1A0;
LABEL_21:
  sub_244237440(v5, v6, v7);
  v29 = *(v0 + 19);
  v30 = *(v0 + 15);
  v31 = *(v0 + 16);
  v33 = *(v0 + 11);
  v32 = *(v0 + 12);
  v34 = *(v0 + 8);

  v35 = *(v0 + 1);

  return v35(0);
}

uint64_t sub_244233134(double a1, double a2)
{
  *(v3 + 40) = v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  v4 = sub_244257998();
  *(v3 + 48) = v4;
  v5 = *(v4 - 8);
  *(v3 + 56) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  v7 = sub_2442579C8();
  *(v3 + 72) = v7;
  v8 = *(v7 - 8);
  *(v3 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE00, &qword_24425CA70) - 8) + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  v11 = sub_244257318();
  *(v3 + 104) = v11;
  v12 = *(v11 - 8);
  *(v3 + 112) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE08, &qword_24425C1A0) - 8) + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  v15 = sub_2442579F8();
  *(v3 + 136) = v15;
  v16 = *(v15 - 8);
  *(v3 + 144) = v16;
  v17 = *(v16 + 64) + 15;
  *(v3 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24423337C, 0, 0);
}

uint64_t sub_24423337C()
{
  v1 = *(v0 + 17);
  v2 = *(v0 + 18);
  v3 = *(v0 + 16);
  v4 = *(v0 + 5);
  sub_2442574A8();
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v8 = *(v0 + 3);
    (*(*(v0 + 18) + 32))(*(v0 + 19), *(v0 + 16), *(v0 + 17));
    v9 = sub_2442579D8();
    if (v9 > 0)
    {
      if ((v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else
      {
        v12 = v0[3];
        if (v12 > -9.22337204e18)
        {
          if (v12 < 9.22337204e18)
          {
            v13 = *(v0 + 19);
            sub_2442579D8();
            goto LABEL_11;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

    if ((v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v14 = v0[3];
      if (v14 > -9.22337204e18)
      {
        if (v14 < 9.22337204e18)
        {
LABEL_11:
          v15 = *(v0 + 19);
          v16 = *(v0 + 4);
          v9 = sub_2442579E8();
          if (v9 >= 1)
          {
            if ((v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v17 = v0[4];
              if (v17 > -9.22337204e18)
              {
                if (v17 < 9.22337204e18)
                {
                  v18 = *(v0 + 19);
                  sub_2442579E8();
                  goto LABEL_19;
                }

LABEL_33:
                __break(1u);
LABEL_34:
                swift_once();
LABEL_25:
                v10 = qword_27EDDC328;
                *(v0 + 20) = qword_27EDDC328;
                v9 = sub_244233798;
                v11 = 0;

                return MEMORY[0x2822009F8](v9, v10, v11);
              }

LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          if ((v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v19 = v0[4];
            if (v19 > -9.22337204e18)
            {
              if (v19 < 9.22337204e18)
              {
LABEL_19:
                v20 = *(v0 + 19);
                v21 = *(v0 + 14);
                v23 = *(v0 + 11);
                v22 = *(v0 + 12);
                v24 = *(v0 + 10);
                v37 = *(v0 + 9);
                v38 = *(v0 + 13);
                v25 = *(v0 + 7);
                v26 = *(v0 + 8);
                v27 = *(v0 + 6);
                sub_2442579B8();
                (*(v25 + 104))(v26, *MEMORY[0x277D2B210], v27);
                sub_2442579A8();
                (*(v25 + 8))(v26, v27);
                (*(v24 + 8))(v23, v37);
                if ((*(v21 + 48))(v22, 1, v38) == 1)
                {
                  v28 = *(v0 + 12);
                  (*(*(v0 + 18) + 8))(*(v0 + 19), *(v0 + 17));
                  v6 = &qword_27EDDBE00;
                  v7 = &qword_24425CA70;
                  v5 = v28;
                  goto LABEL_21;
                }

                (*(*(v0 + 14) + 32))(*(v0 + 15), *(v0 + 12), *(v0 + 13));
                if (qword_27EDDC320 == -1)
                {
                  goto LABEL_25;
                }

                goto LABEL_34;
              }

LABEL_40:
              __break(1u);
              return MEMORY[0x2822009F8](v9, v10, v11);
            }

LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v5 = *(v0 + 16);
  v6 = &qword_27EDDBE08;
  v7 = &qword_24425C1A0;
LABEL_21:
  sub_244237440(v5, v6, v7);
  v29 = *(v0 + 19);
  v30 = *(v0 + 15);
  v31 = *(v0 + 16);
  v33 = *(v0 + 11);
  v32 = *(v0 + 12);
  v34 = *(v0 + 8);

  v35 = *(v0 + 1);

  return v35(0);
}

uint64_t sub_244233798()
{
  v1 = v0[20];
  v2 = sub_24423528C(v0[15]);
  v0[21] = v2;

  return MEMORY[0x2822009F8](sub_244233808, v2, 0);
}

uint64_t sub_244233808()
{
  v1 = v0[21];
  v2 = *(v1 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_image);
  v0[22] = v2;
  if (v2)
  {
    v0[24] = v2;
    v3 = v2;

    return MEMORY[0x2822009F8](sub_244233AEC, 0, 0);
  }

  else
  {
    v4 = sub_244235488();
    v5 = *(MEMORY[0x277D859E0] + 4);
    v6 = swift_task_alloc();
    v0[23] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE10, qword_24425C1A8);
    *v6 = v0;
    v6[1] = sub_244233968;
    v8 = v0[21];

    return MEMORY[0x2822007B8](v0 + 2, v1, v4, 0x7472416863746566, 0xEE0029286B726F77, sub_2442376A4, v8, v7);
  }
}

uint64_t sub_244233968()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_244233A78, v2, 0);
}

uint64_t sub_244233A78()
{
  *(v0 + 192) = *(v0 + 16);
  v1 = *(v0 + 176);

  return MEMORY[0x2822009F8](sub_244233AEC, 0, 0);
}

uint64_t sub_244233AEC()
{
  v1 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v8 = v0[24];
  v9 = v0[19];
  v11 = v0[15];
  v10 = v0[16];
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[8];

  v15 = v0[1];

  return v15(v8);
}

uint64_t sub_244233BE0(double a1, double a2)
{
  *(v3 + 40) = v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  v4 = sub_244257998();
  *(v3 + 48) = v4;
  v5 = *(v4 - 8);
  *(v3 + 56) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  v7 = sub_2442579C8();
  *(v3 + 72) = v7;
  v8 = *(v7 - 8);
  *(v3 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE00, &qword_24425CA70) - 8) + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  v11 = sub_244257318();
  *(v3 + 104) = v11;
  v12 = *(v11 - 8);
  *(v3 + 112) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE08, &qword_24425C1A0) - 8) + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  v15 = sub_2442579F8();
  *(v3 + 136) = v15;
  v16 = *(v15 - 8);
  *(v3 + 144) = v16;
  v17 = *(v16 + 64) + 15;
  *(v3 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_244233E28, 0, 0);
}

uint64_t sub_244233E28()
{
  v1 = *(v0 + 17);
  v2 = *(v0 + 18);
  v3 = *(v0 + 16);
  v4 = *(v0 + 5);
  sub_244257938();
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v8 = *(v0 + 3);
    (*(*(v0 + 18) + 32))(*(v0 + 19), *(v0 + 16), *(v0 + 17));
    v9 = sub_2442579D8();
    if (v9 > 0)
    {
      if ((v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else
      {
        v12 = v0[3];
        if (v12 > -9.22337204e18)
        {
          if (v12 < 9.22337204e18)
          {
            v13 = *(v0 + 19);
            sub_2442579D8();
            goto LABEL_11;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

    if ((v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v14 = v0[3];
      if (v14 > -9.22337204e18)
      {
        if (v14 < 9.22337204e18)
        {
LABEL_11:
          v15 = *(v0 + 19);
          v16 = *(v0 + 4);
          v9 = sub_2442579E8();
          if (v9 >= 1)
          {
            if ((v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v17 = v0[4];
              if (v17 > -9.22337204e18)
              {
                if (v17 < 9.22337204e18)
                {
                  v18 = *(v0 + 19);
                  sub_2442579E8();
                  goto LABEL_19;
                }

LABEL_33:
                __break(1u);
LABEL_34:
                swift_once();
LABEL_25:
                v10 = qword_27EDDC328;
                *(v0 + 20) = qword_27EDDC328;
                v9 = sub_244232110;
                v11 = 0;

                return MEMORY[0x2822009F8](v9, v10, v11);
              }

LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          if ((v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v19 = v0[4];
            if (v19 > -9.22337204e18)
            {
              if (v19 < 9.22337204e18)
              {
LABEL_19:
                v20 = *(v0 + 19);
                v21 = *(v0 + 14);
                v23 = *(v0 + 11);
                v22 = *(v0 + 12);
                v24 = *(v0 + 10);
                v37 = *(v0 + 9);
                v38 = *(v0 + 13);
                v25 = *(v0 + 7);
                v26 = *(v0 + 8);
                v27 = *(v0 + 6);
                sub_2442579B8();
                (*(v25 + 104))(v26, *MEMORY[0x277D2B210], v27);
                sub_2442579A8();
                (*(v25 + 8))(v26, v27);
                (*(v24 + 8))(v23, v37);
                if ((*(v21 + 48))(v22, 1, v38) == 1)
                {
                  v28 = *(v0 + 12);
                  (*(*(v0 + 18) + 8))(*(v0 + 19), *(v0 + 17));
                  v6 = &qword_27EDDBE00;
                  v7 = &qword_24425CA70;
                  v5 = v28;
                  goto LABEL_21;
                }

                (*(*(v0 + 14) + 32))(*(v0 + 15), *(v0 + 12), *(v0 + 13));
                if (qword_27EDDC320 == -1)
                {
                  goto LABEL_25;
                }

                goto LABEL_34;
              }

LABEL_40:
              __break(1u);
              return MEMORY[0x2822009F8](v9, v10, v11);
            }

LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v5 = *(v0 + 16);
  v6 = &qword_27EDDBE08;
  v7 = &qword_24425C1A0;
LABEL_21:
  sub_244237440(v5, v6, v7);
  v29 = *(v0 + 19);
  v30 = *(v0 + 15);
  v31 = *(v0 + 16);
  v33 = *(v0 + 11);
  v32 = *(v0 + 12);
  v34 = *(v0 + 8);

  v35 = *(v0 + 1);

  return v35(0);
}

uint64_t sub_244234244(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 48) = a2;
  *(v5 + 56) = v4;
  *(v5 + 40) = a1;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  v6 = sub_244257998();
  *(v5 + 64) = v6;
  v7 = *(v6 - 8);
  *(v5 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v9 = sub_2442579C8();
  *(v5 + 88) = v9;
  v10 = *(v9 - 8);
  *(v5 + 96) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE00, &qword_24425CA70) - 8) + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v13 = sub_244257318();
  *(v5 + 120) = v13;
  v14 = *(v13 - 8);
  *(v5 + 128) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE08, &qword_24425C1A0) - 8) + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  v17 = sub_2442579F8();
  *(v5 + 152) = v17;
  v18 = *(v17 - 8);
  *(v5 + 160) = v18;
  v19 = *(v18 + 64) + 15;
  *(v5 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_244234490, 0, 0);
}

uint64_t sub_244234490()
{
  v1 = *(v0 + 19);
  v2 = *(v0 + 20);
  v3 = *(v0 + 18);
  v4 = *(v0 + 7);
  (*(*(v0 + 6) + 8))(*(v0 + 5));
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v8 = *(v0 + 3);
    (*(*(v0 + 20) + 32))(*(v0 + 21), *(v0 + 18), *(v0 + 19));
    v9 = sub_2442579D8();
    if (v9 >= 1)
    {
      if ((v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else
      {
        v12 = v0[3];
        if (v12 > -9.22337204e18)
        {
          if (v12 < 9.22337204e18)
          {
            v13 = *(v0 + 21);
            sub_2442579D8();
            goto LABEL_11;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

    if ((v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v14 = v0[3];
      if (v14 > -9.22337204e18)
      {
        if (v14 < 9.22337204e18)
        {
LABEL_11:
          v15 = *(v0 + 21);
          v16 = *(v0 + 4);
          v9 = sub_2442579E8();
          if (v9 >= 1)
          {
            if ((v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v17 = v0[4];
              if (v17 > -9.22337204e18)
              {
                if (v17 < 9.22337204e18)
                {
                  v18 = *(v0 + 21);
                  sub_2442579E8();
                  goto LABEL_19;
                }

LABEL_33:
                __break(1u);
LABEL_34:
                swift_once();
LABEL_25:
                v10 = qword_27EDDC328;
                *(v0 + 22) = qword_27EDDC328;
                v9 = sub_2442348C0;
                v11 = 0;

                return MEMORY[0x2822009F8](v9, v10, v11);
              }

LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          if ((v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v19 = v0[4];
            if (v19 > -9.22337204e18)
            {
              if (v19 < 9.22337204e18)
              {
LABEL_19:
                v20 = *(v0 + 21);
                v21 = *(v0 + 16);
                v23 = *(v0 + 13);
                v22 = *(v0 + 14);
                v24 = *(v0 + 12);
                v37 = *(v0 + 11);
                v38 = *(v0 + 15);
                v25 = *(v0 + 9);
                v26 = *(v0 + 10);
                v27 = *(v0 + 8);
                sub_2442579B8();
                (*(v25 + 104))(v26, *MEMORY[0x277D2B210], v27);
                sub_2442579A8();
                (*(v25 + 8))(v26, v27);
                (*(v24 + 8))(v23, v37);
                if ((*(v21 + 48))(v22, 1, v38) == 1)
                {
                  v28 = *(v0 + 14);
                  (*(*(v0 + 20) + 8))(*(v0 + 21), *(v0 + 19));
                  v6 = &qword_27EDDBE00;
                  v7 = &qword_24425CA70;
                  v5 = v28;
                  goto LABEL_21;
                }

                (*(*(v0 + 16) + 32))(*(v0 + 17), *(v0 + 14), *(v0 + 15));
                if (qword_27EDDC320 == -1)
                {
                  goto LABEL_25;
                }

                goto LABEL_34;
              }

LABEL_40:
              __break(1u);
              return MEMORY[0x2822009F8](v9, v10, v11);
            }

LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v5 = *(v0 + 18);
  v6 = &qword_27EDDBE08;
  v7 = &qword_24425C1A0;
LABEL_21:
  sub_244237440(v5, v6, v7);
  v29 = *(v0 + 21);
  v30 = *(v0 + 17);
  v31 = *(v0 + 18);
  v33 = *(v0 + 13);
  v32 = *(v0 + 14);
  v34 = *(v0 + 10);

  v35 = *(v0 + 1);

  return v35(0);
}

uint64_t sub_2442348C0()
{
  v1 = v0[22];
  v2 = sub_24423528C(v0[17]);
  v0[23] = v2;

  return MEMORY[0x2822009F8](sub_244234930, v2, 0);
}

uint64_t sub_244234930()
{
  v1 = v0[23];
  v2 = *(v1 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_image);
  v0[24] = v2;
  if (v2)
  {
    v0[26] = v2;
    v3 = v2;

    return MEMORY[0x2822009F8](sub_244234C14, 0, 0);
  }

  else
  {
    v4 = sub_244235488();
    v5 = *(MEMORY[0x277D859E0] + 4);
    v6 = swift_task_alloc();
    v0[25] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE10, qword_24425C1A8);
    *v6 = v0;
    v6[1] = sub_244234A90;
    v8 = v0[23];

    return MEMORY[0x2822007B8](v0 + 2, v1, v4, 0x7472416863746566, 0xEE0029286B726F77, sub_2442358F8, v8, v7);
  }
}

uint64_t sub_244234A90()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_244234BA0, v2, 0);
}

uint64_t sub_244234BA0()
{
  *(v0 + 208) = *(v0 + 16);
  v1 = *(v0 + 192);

  return MEMORY[0x2822009F8](sub_244234C14, 0, 0);
}

uint64_t sub_244234C14()
{
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v8 = v0[26];
  v9 = v0[21];
  v11 = v0[17];
  v10 = v0[18];
  v13 = v0[13];
  v12 = v0[14];
  v14 = v0[10];

  v15 = v0[1];

  return v15(v8);
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

uint64_t sub_244234D50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE20, &qword_24425C350);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_2442578A8();
  sub_244257978();
}

uint64_t sub_244234E5C(double a1, double a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24423769C;

  return sub_244232464(a1, a2);
}

uint64_t sub_244234F18(double a1, double a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24423769C;

  return sub_244232AD0(a1, a2);
}

uint64_t sub_244234FD4(double a1, double a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24423508C;

  return sub_244233134(a1, a2);
}

uint64_t sub_24423508C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_24423518C(double a1, double a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24423769C;

  return sub_244233BE0(a1, a2);
}

uint64_t sub_244235244()
{
  type metadata accessor for ArtworkDownloaderManager();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  qword_27EDDC328 = v0;
  return result;
}

uint64_t sub_24423528C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_244257318();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(v1 + 112);
  if (!*(v9 + 16))
  {
    goto LABEL_5;
  }

  v10 = sub_2442364BC(a1);
  if ((v11 & 1) == 0)
  {

LABEL_5:
    (*(v5 + 16))(v8, a1, v4);
    v13 = type metadata accessor for ArtworkDownloader();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v12 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v12 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_image) = 0;
    *(v12 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_fetchTask) = 0;
    *(v12 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_continuations) = MEMORY[0x277D84F90];
    (*(v5 + 32))(v12 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_url, v8, v4);
    swift_beginAccess();

    v16 = *(v2 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v2 + 112);
    *(v2 + 112) = 0x8000000000000000;
    sub_244236908(v12, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 112) = v20;
    swift_endAccess();
    return v12;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  return v12;
}

unint64_t sub_244235488()
{
  result = qword_27EDDC338;
  if (!qword_27EDDC338)
  {
    type metadata accessor for ArtworkDownloader();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDC338);
  }

  return result;
}

uint64_t type metadata accessor for ArtworkDownloader()
{
  result = qword_27EDDC358;
  if (!qword_27EDDC358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24423552C()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_244235564(uint64_t a1, uint64_t a2)
{
  v4 = sub_244257318();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE18, &qword_24425C328);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v26 - v11;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v9 + 16))(v12, a1, v8);
  v13 = OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_continuations;
  v14 = *(a2 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_continuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v13) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_244236FB8(0, v14[2] + 1, 1, v14);
    *(a2 + v13) = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_244236FB8(v16 > 1, v17 + 1, 1, v14);
  }

  v14[2] = v17 + 1;
  (*(v9 + 32))(v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v17, v12, v8);
  *(a2 + v13) = v14;
  v18 = OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_fetchTask;
  if (!*(a2 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_fetchTask))
  {
    v19 = [objc_opt_self() sharedSession];
    v20 = v27;
    (*(v27 + 16))(v7, a2 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_url, v4);
    v21 = sub_2442572F8();
    (*(v20 + 8))(v7, v4);
    aBlock[4] = sub_2442371A8;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_244235DC8;
    aBlock[3] = &block_descriptor;
    v22 = _Block_copy(aBlock);

    v23 = [v19 dataTaskWithURL:v21 completionHandler:v22];
    _Block_release(v22);

    v24 = *(a2 + v18);
    *(a2 + v18) = v23;
    v25 = v23;

    if (v25)
    {
      [v25 resume];
    }
  }
}

uint64_t sub_244235924(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE28, &qword_24425C360) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v12 - v7;
  v9 = sub_244257BD8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a3;
  v10[5] = a1;
  v10[6] = a2;

  sub_2442373BC(a1, a2);
  sub_244235AD8(0, 0, v8, &unk_24425C370, v10);
}

uint64_t sub_244235A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_244235A74, a4, 0);
}

uint64_t sub_244235A74()
{
  v1 = v0[2];
  sub_244235E90(v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_244235AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE28, &qword_24425C360) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_2442373D0(a3, v26 - v10);
  v12 = sub_244257BD8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_244237440(v11, &qword_27EDDBE28, &qword_24425C360);
  }

  else
  {
    sub_244257BC8();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_244257B68();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_244257AA8() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_244237440(a3, &qword_27EDDBE28, &qword_24425C360);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_244237440(a3, &qword_27EDDBE28, &qword_24425C360);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_244235DC8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = sub_244257338();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = a3;
  v13 = a4;
  v8(v6, v11, a3, a4);

  sub_244236264(v6, v11);
}

void sub_244235E90(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE18, &qword_24425C328);
  v7 = *(v6 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = v27 - v9;
  if (a2 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v12 = objc_allocWithZone(MEMORY[0x277D755B0]);
    sub_244236210(a1, a2);
    v13 = sub_244257328();
    v11 = [v12 initWithData_];

    sub_244236264(a1, a2);
  }

  v14 = *(v3 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_image);
  *(v3 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_image) = v11;

  v15 = OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_continuations;
  v16 = *(v3 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_continuations);
  v17 = *(v16 + 16);
  if (v17)
  {
    v27[1] = *(v3 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_continuations);
    v28 = OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_continuations;
    v18 = OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_image;
    v21 = *(v7 + 16);
    v19 = v7 + 16;
    v20 = v21;
    v22 = v16 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v23 = *(v19 + 56);

    do
    {
      v20(v10, v22, v6);
      v29 = *(v3 + v18);
      v24 = v29;
      sub_244257B88();
      (*(v19 - 8))(v10, v6);
      v22 += v23;
      --v17;
    }

    while (v17);

    v15 = v28;
    v25 = *(v3 + v28);
  }

  *(v3 + v15) = MEMORY[0x277D84F90];

  v26 = *(v3 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_fetchTask);
  *(v3 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_fetchTask) = 0;
}

uint64_t sub_2442360A0()
{
  v1 = OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_url;
  v2 = sub_244257318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_continuations);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_244236150()
{
  result = sub_244257318();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_244236210(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_244236264(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_244236278(a1, a2);
  }

  return a1;
}

uint64_t sub_244236278(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2442362CC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2442363C4;

  return v7(a1);
}

uint64_t sub_2442363C4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_2442364BC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_244257318();
  sub_24423764C(&qword_27EDDBE40);
  v5 = sub_244257A28();

  return sub_244236B8C(a1, v5);
}

uint64_t sub_244236540(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_244257318();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE38, &qword_24425C398);
  v43 = a2;
  result = sub_244257E58();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_24423764C(&qword_27EDDBE40);
      result = sub_244257A28();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_244236908(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_244257318();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2442364BC(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_244236D38();
      goto LABEL_7;
    }

    sub_244236540(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_2442364BC(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_244236AD4(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_244257ED8();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_244236AD4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_244257318();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_244236B8C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_244257318();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_24423764C(&qword_27EDDBE48);
      v16 = sub_244257A38();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

char *sub_244236D38()
{
  v1 = v0;
  v34 = sub_244257318();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20]();
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE38, &qword_24425C398);
  v4 = *v0;
  v5 = sub_244257E48();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

size_t sub_244236FB8(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE30, &qword_24425C390);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE18, &qword_24425C328) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE18, &qword_24425C328) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2442371C8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];
  if (v3 >> 60 != 15)
  {
    sub_244236278(v0[5], v3);
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_244237220()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2442372C8;

  return sub_244235A50(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_2442372C8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2442373BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_244236210(a1, a2);
  }

  return a1;
}

uint64_t sub_2442373D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE28, &qword_24425C360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_244237440(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2442374A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2442374D8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2442376A0;

  return sub_2442362CC(a1, v5);
}

uint64_t sub_244237590(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2442372C8;

  return sub_2442362CC(a1, v5);
}

uint64_t sub_24423764C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_244257318();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for PickerDataSource()
{
  result = qword_27EDDC4B0;
  if (!qword_27EDDC4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_2442376F4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE50, &qword_24425C3B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v4[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_completionHandler];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v4[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_dismissedHandler];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v4[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_source] = MEMORY[0x277D84F90];
  v14 = OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_dataSource;
  v15 = type metadata accessor for PickerDataSource();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  sub_244238358();
  *&v5[v14] = v18;
  v40.receiver = v5;
  v40.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v40, sel_initWithFrame_, a1, a2, a3, a4);
  v20 = OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_dataSource;
  v21 = *&v19[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_dataSource];
  sub_244238548();
  v22 = v19;

  v38 = sub_244257748();
  v39 = v23;
  sub_2442385A0();
  sub_2442577F8();

  v24 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE78, &unk_24425C3B8));
  v25 = sub_244257778();
  [v22 addSubview_];

  v26 = *&v22[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_completionHandler];
  v27 = *&v22[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_completionHandler + 8];
  v28 = (*&v19[v20] + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_completionHandler);
  v29 = *v28;
  v30 = v28[1];
  *v28 = v26;
  v28[1] = v27;

  sub_2442385F4(v26);
  sub_244238604(v29);

  v31 = *&v19[v20];
  v32 = *&v22[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_dismissedHandler];
  v33 = *&v22[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_dismissedHandler + 8];

  sub_2442385F4(v32);

  v34 = (v31 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_dismissedHandler);
  v35 = *(v31 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_dismissedHandler);
  v36 = *(v31 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_dismissedHandler + 8);
  *v34 = v32;
  v34[1] = v33;
  sub_244238604(v35);

  return v22;
}

id sub_244237B54()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_244237C00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE28, &qword_24425C360);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v39 - v10;
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_source;
  v14 = *&v12[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_source];
  *&v12[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_source] = a2;

  v15 = OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_dataSource;
  v16 = *&v12[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_dataSource];
  v17 = *&v12[v13];
  swift_getKeyPath();
  swift_getKeyPath();
  v39[1] = v17;

  sub_2442576D8();
  v18 = &v12[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_completionHandler];
  v19 = *&v12[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_completionHandler];
  v20 = *&v12[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_completionHandler + 8];
  *v18 = a3;
  v18[1] = a4;

  sub_244238604(v19);
  v21 = (*&v12[v15] + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_completionHandler);
  v22 = *v21;
  v23 = v21[1];
  *v21 = a3;
  v21[1] = a4;

  sub_244238604(v22);

  v24 = swift_allocObject();
  *(v24 + 2) = v12;
  *(v24 + 3) = a3;
  *(v24 + 4) = a4;
  v25 = &v12[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_dismissedHandler];
  v26 = *&v12[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_dismissedHandler];
  v27 = *&v12[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_dismissedHandler + 8];
  *v25 = sub_244238C2C;
  v25[1] = v24;

  v28 = v12;
  sub_244238604(v26);
  v29 = (*&v12[v15] + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_dismissedHandler);
  v30 = *v29;
  v31 = v29[1];
  *v29 = sub_244238C2C;
  v29[1] = v24;

  sub_244238604(v30);

  result = [a1 view];
  if (result)
  {
    v33 = result;
    [result addSubview_];

    v34 = sub_244257BD8();
    (*(*(v34 - 8) + 56))(v11, 1, 1, v34);
    sub_244257BB8();
    v35 = v28;
    v36 = sub_244257BA8();
    v37 = swift_allocObject();
    v38 = MEMORY[0x277D85700];
    v37[2] = v36;
    v37[3] = v38;
    v37[4] = v35;
    sub_244235AD8(0, 0, v11, &unk_24425C418, v37);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_244237F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_244257BB8();
  *(v4 + 24) = sub_244257BA8();
  v6 = sub_244257B68();

  return MEMORY[0x2822009F8](sub_244237FC4, v6, v5);
}

uint64_t sub_244237FC4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = *(v2 + OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_dataSource);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = 1;
  swift_retain_n();
  sub_2442576D8();
  sub_244238104();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_244238090()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2442576C8();

  return v1;
}

uint64_t sub_244238104()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2442576C8();

  if ((v8 & 1) == 0)
  {
    v2 = (v0 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_dismissedHandler);
    v3 = *(v0 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_dismissedHandler);
    if (v3)
    {
      v4 = v2[1];

      v3(v5);
      sub_244238604(v3);
      v6 = *v2;
    }

    else
    {
      v6 = 0;
    }

    v7 = v2[1];
    *v2 = 0;
    v2[1] = 0;
    return sub_244238604(v6);
  }

  return result;
}

uint64_t sub_2442381C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2442576C8();

  return v1;
}

uint64_t sub_24423823C()
{
  v1 = OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource__source;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBEC8, &qword_24425C5E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource__isPresentingPicker;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBED0, &qword_24425C5E8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_completionHandler + 8);
  sub_244238604(*(v0 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_completionHandler));
  v6 = *(v0 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_dismissedHandler + 8);
  sub_244238604(*(v0 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_dismissedHandler));
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t sub_244238358()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBED0, &qword_24425C5E8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v16[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBEC8, &qword_24425C5E0);
  v7 = *(v6 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v16[-v9];
  v11 = OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource__source;
  v17 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE88, &qword_24425C458);
  sub_2442576B8();
  (*(v7 + 32))(v0 + v11, v10, v6);
  v12 = OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource__isPresentingPicker;
  v16[7] = 0;
  sub_2442576B8();
  (*(v2 + 32))(v0 + v12, v5, v1);
  v13 = (v0 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_completionHandler);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v0 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_dismissedHandler);
  *v14 = 0;
  v14[1] = 0;
  return v0;
}

unint64_t sub_244238548()
{
  result = qword_27EDDC470;
  if (!qword_27EDDC470)
  {
    type metadata accessor for PickerDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDC470);
  }

  return result;
}

unint64_t sub_2442385A0()
{
  result = qword_27EDDC478;
  if (!qword_27EDDC478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDC478);
  }

  return result;
}

uint64_t sub_2442385F4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_244238604(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_244238614@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PickerDataSource();
  result = sub_2442576A8();
  *a1 = result;
  return result;
}

uint64_t sub_244238654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE98, &qword_24425C540) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = v21 - v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBEA0, &qword_24425C548);
  v8 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = v21 - v9;
  v23 = sub_244257818();
  v30 = v23;
  type metadata accessor for PickerDataSource();
  sub_244238548();
  sub_244257758();
  swift_getKeyPath();
  sub_244257768();

  v21[1] = v28;
  v21[2] = v27;
  v22 = v29;
  sub_244257758();
  swift_getKeyPath();
  sub_244257768();

  v11 = *MEMORY[0x277D7EF08];
  v12 = sub_2442574F8();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v7, v11, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_244257968();
  sub_24423927C();

  sub_2442577B8();

  sub_244237440(v7, &qword_27EDDBE98, &qword_24425C540);

  v15 = [objc_opt_self() systemRedColor];
  v16 = sub_244257808();
  KeyPath = swift_getKeyPath();
  v26 = v16;
  v18 = sub_244257738();
  v19 = &v10[*(v24 + 36)];
  *v19 = KeyPath;
  v19[1] = v18;
  sub_24423932C();
  sub_2442577F8();
  return sub_244239460(v10);
}

uint64_t sub_2442389F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2442576C8();

  *a2 = v5;
  return result;
}

uint64_t sub_244238A78(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_2442576D8();
  return sub_244238104();
}

uint64_t sub_244238AF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2442576C8();

  *a2 = v5;
  return result;
}

uint64_t sub_244238B70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2442576D8();
}

uint64_t sub_244238BEC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_244238C2C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  [v1 removeFromSuperview];
  return v2(MEMORY[0x277D84F90]);
}

uint64_t sub_244238C6C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_244238CAC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2442376A0;

  return sub_244237F2C(v3, v4, v5, v2);
}

void sub_244238D6C()
{
  sub_244238E44();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_244238EF0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_244238E44()
{
  if (!qword_27EDDBE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDDBE88, &qword_24425C458);
    v0 = sub_2442576E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDDBE80);
    }
  }
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

void sub_244238EF0()
{
  if (!qword_27EDDBE90)
  {
    v0 = sub_2442576E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDDBE90);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_244238F4C(uint64_t a1, int a2)
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

uint64_t sub_244238F94(uint64_t result, int a2, int a3)
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

uint64_t sub_244238FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  sub_244257BB8();
  v3[4] = sub_244257BA8();
  v5 = sub_244257B68();

  return MEMORY[0x2822009F8](sub_244239094, v5, v4);
}

uint64_t sub_244239094()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = (v2 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_completionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_completionHandler);
  if (v4)
  {
    v5 = v0[2];
    v6 = v3[1];

    v4(v5);
    sub_244238604(v4);
    v7 = *v3;
  }

  else
  {
    v7 = 0;
  }

  v8 = v0[3];
  v9 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_244238604(v7);
  v10 = (v8 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_dismissedHandler);
  v11 = *(v8 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_dismissedHandler);
  v12 = *(v8 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_dismissedHandler + 8);
  *v10 = 0;
  v10[1] = 0;
  sub_244238604(v11);
  v13 = v0[1];

  return v13();
}

uint64_t sub_2442391A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2442391E0(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2442372C8;

  return sub_244238FFC(a1, v6, v4);
}

unint64_t sub_24423927C()
{
  result = qword_27EDDBEA8;
  if (!qword_27EDDBEA8)
  {
    sub_244257968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDBEA8);
  }

  return result;
}

uint64_t sub_2442392D4@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x245D5C0F0]();
  *a1 = result;
  return result;
}

uint64_t sub_244239300(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x245D5C100](v2);
}

unint64_t sub_24423932C()
{
  result = qword_27EDDBEB0;
  if (!qword_27EDDBEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDDBEA0, &qword_24425C548);
    sub_244257968();
    sub_24423927C();
    swift_getOpaqueTypeConformance2();
    sub_2442393FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDBEB0);
  }

  return result;
}

unint64_t sub_2442393FC()
{
  result = qword_27EDDBEB8;
  if (!qword_27EDDBEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDDBEC0, &qword_24425C5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDBEB8);
  }

  return result;
}

uint64_t sub_244239460(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBEA0, &qword_24425C548);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2442394C8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDDBEA0, &qword_24425C548);
  sub_24423932C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_244239520(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBED8, &qword_24425C608) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBEE0, &qword_24425C610) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBEE8, &qword_24425C618) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = sub_2442573A8();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_244239698, 0, 0);
}

uint64_t sub_244239698()
{
  if (*(v0[5] + 16))
  {
    v1 = swift_task_alloc();
    v0[15] = v1;
    *v1 = v0;
    v1[1] = sub_2442397A4;
    v2 = v0[6];
    v3 = v0[7];

    return sub_24423A8C8(v2);
  }

  else
  {
    v6 = v0[13];
    v5 = v0[14];
    v8 = v0[9];
    v7 = v0[10];
    v9 = v0[8];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2442397A4()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2442398A0, 0, 0);
}

uint64_t sub_2442398A0()
{
  v69 = v0;
  v1 = v0[7];
  sub_244257478();
  v2 = sub_244257438();

  if (v2)
  {
    v3 = v0[14];
    v4 = v0[11];
    v5 = v0[12];
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[5];
    sub_244257478();
    v9 = sub_244257428();

    v10 = MEMORY[0x277D2A8D8];
    if ((v9 & 1) == 0)
    {
      v10 = MEMORY[0x277D2A8D0];
    }

    (*(v5 + 104))(v3, *v10, v4);

    v11 = sub_244257508();
    v12 = sub_244257C58();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[5];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v68 = v15;
      *v14 = 136315138;
      v16 = sub_244257948();
      v17 = MEMORY[0x245D5C4A0](v13, v16);
      v19 = sub_24423CC9C(v17, v18, &v68);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_2441FB000, v11, v12, "enqueuing songs %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x245D5D2D0](v15, -1, -1);
      MEMORY[0x245D5D2D0](v14, -1, -1);
    }

    v20 = v0[7];
    v21 = v0[5];
    v0[16] = sub_244257468();
    v0[4] = v21;
    v22 = v0 + 4;
    v23 = *(MEMORY[0x277D2A900] + 4);
    v24 = swift_task_alloc();
    v0[17] = v24;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBEF0, &qword_24425C628);
    v26 = sub_244257948();
    v27 = sub_24423D4F8(&qword_27EDDBEF8, &qword_27EDDBEF0, &qword_24425C628);
    *v24 = v0;
    v24[1] = sub_24423A004;
    v28 = v0[14];
LABEL_16:
    v71 = v27;
    v72 = MEMORY[0x277CD81D8];

    return MEMORY[0x282189BB8](v22, v28, 0xD000000000000018, 0x8000000244262E50, 0, 0xF000000000000000, v25, v26);
  }

  v29 = v0[10];
  v30 = v0[7];
  sub_244257468();
  sub_244257398();

  v31 = sub_2442573D8();
  v32 = (*(*(v31 - 8) + 48))(v29, 1, v31);
  sub_244237440(v29, &qword_27EDDBEE8, &qword_24425C618);
  v33 = v0[6];
  if (v32 != 1)
  {
    v56 = sub_244257508();
    v57 = sub_244257C58();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_2441FB000, v56, v57, "could not queue after current entry, but there is a current entry, so queueing song at tail", v58, 2u);
      MEMORY[0x245D5D2D0](v58, -1, -1);
    }

    v60 = v0[12];
    v59 = v0[13];
    v61 = v0[11];
    v62 = v0[7];
    v63 = v0[5];

    v64 = sub_244257468();
    v0[3] = v63;
    v22 = v0 + 3;
    v0[19] = v64;
    (*(v60 + 104))(v59, *MEMORY[0x277D2A8E0], v61);
    v65 = *(MEMORY[0x277D2A900] + 4);
    v66 = swift_task_alloc();
    v0[20] = v66;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBEF0, &qword_24425C628);
    v26 = sub_244257948();
    v27 = sub_24423D4F8(&qword_27EDDBEF8, &qword_27EDDBEF0, &qword_24425C628);
    *v66 = v0;
    v66[1] = sub_24423A134;
    v28 = v0[13];
    goto LABEL_16;
  }

  v34 = v0[5];

  v35 = sub_244257508();
  v36 = sub_244257C58();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = v0[5];
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v68 = v39;
    *v38 = 136315138;
    v40 = sub_244257948();
    v41 = MEMORY[0x245D5C4A0](v37, v40);
    v43 = sub_24423CC9C(v41, v42, &v68);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_2441FB000, v35, v36, "player sees no active queue entry, playing songs %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x245D5D2D0](v39, -1, -1);
    MEMORY[0x245D5D2D0](v38, -1, -1);
  }

  v44 = v0[8];
  v45 = v0[9];
  v46 = v0[5];
  v47 = sub_244257948();
  (*(*(v47 - 8) + 56))(v45, 1, 1, v47);
  v48 = sub_244257368();
  (*(*(v48 - 8) + 56))(v44, 1, 1, v48);
  v0[2] = v46;
  v49 = sub_2442573F8();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBEF0, &qword_24425C628);
  sub_24423D4F8(&qword_27EDDBEF8, &qword_27EDDBEF0, &qword_24425C628);
  v52 = sub_2442573C8();
  v0[22] = v52;
  sub_2442573B8();
  v53 = *(MEMORY[0x277D2A8C0] + 4);
  v54 = swift_task_alloc();
  v0[23] = v54;
  *v54 = v0;
  v54[1] = sub_24423A320;
  v55 = v0[7];

  return MEMORY[0x282189B30](v52);
}

uint64_t sub_24423A004()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v6 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_24423A434;
  }

  else
  {
    v4 = sub_24423D59C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24423A134()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  v7 = *v1;
  v7[21] = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24423A5C4, 0, 0);
  }

  else
  {
    v9 = v7[13];
    v8 = v7[14];
    v11 = v7[9];
    v10 = v7[10];
    v12 = v7[8];

    v13 = v7[1];

    return v13();
  }
}

uint64_t sub_24423A320()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_24423A73C;
  }

  else
  {
    v3 = sub_24423D5A0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24423A434()
{
  v1 = v0[6];
  v2 = sub_244257C48();
  v3 = sub_244257508();
  v4 = os_log_type_enabled(v3, v2);
  v5 = v0[18];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2441FB000, v3, v2, "Failed to enqueue song to system music player: %@", v6, 0xCu);
    sub_244237440(v7, &qword_27EDDBF00, &qword_24425CA80);
    MEMORY[0x245D5D2D0](v7, -1, -1);
    MEMORY[0x245D5D2D0](v6, -1, -1);
  }

  else
  {
  }

  (*(v0[12] + 8))(v0[14], v0[11]);
  v11 = v0[13];
  v10 = v0[14];
  v13 = v0[9];
  v12 = v0[10];
  v14 = v0[8];

  v15 = v0[1];

  return v15();
}

uint64_t sub_24423A5C4()
{
  v1 = v0[6];
  v2 = sub_244257C48();
  v3 = sub_244257508();
  v4 = os_log_type_enabled(v3, v2);
  v5 = v0[21];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2441FB000, v3, v2, "Failed to enqueue song to system music player: %@", v6, 0xCu);
    sub_244237440(v7, &qword_27EDDBF00, &qword_24425CA80);
    MEMORY[0x245D5D2D0](v7, -1, -1);
    MEMORY[0x245D5D2D0](v6, -1, -1);
  }

  else
  {
  }

  v11 = v0[13];
  v10 = v0[14];
  v13 = v0[9];
  v12 = v0[10];
  v14 = v0[8];

  v15 = v0[1];

  return v15();
}

uint64_t sub_24423A73C()
{
  v1 = v0[6];
  v2 = sub_244257C48();
  v3 = sub_244257508();
  v4 = os_log_type_enabled(v3, v2);
  v5 = v0[24];
  v6 = v0[22];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v5;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2441FB000, v3, v2, "Failed to play songs on system music player: %@", v7, 0xCu);
    sub_244237440(v8, &qword_27EDDBF00, &qword_24425CA80);
    MEMORY[0x245D5D2D0](v8, -1, -1);
    MEMORY[0x245D5D2D0](v7, -1, -1);
  }

  else
  {
    v11 = v0[22];
  }

  v13 = v0[13];
  v12 = v0[14];
  v15 = v0[9];
  v14 = v0[10];
  v16 = v0[8];

  v17 = v0[1];

  return v17();
}

uint64_t sub_24423A8C8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_244257378();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24423A994, 0, 0);
}

uint64_t sub_24423A994()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  sub_244257478();
  sub_244257408();

  (*(v4 + 104))(v2, *MEMORY[0x277D2A8A0], v3);
  sub_24423D4B0(&qword_27EDDBF08, MEMORY[0x277D2A8A8]);
  LOBYTE(v5) = sub_244257A38();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    v7 = v0[3];
    v8 = sub_244257508();
    v9 = sub_244257C58();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2441FB000, v8, v9, "waiting for music player state to become valid...", v10, 2u);
      MEMORY[0x245D5D2D0](v10, -1, -1);
    }

    v11 = v0[4];

    v0[2] = 0;
    v12 = swift_task_alloc();
    v0[9] = v12;
    *(v12 + 16) = v0 + 2;
    *(v12 + 24) = v11;
    v13 = *(MEMORY[0x277D859E0] + 4);
    v14 = swift_task_alloc();
    v0[10] = v14;
    *v14 = v0;
    v14[1] = sub_24423AC1C;
    v15 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v14, 0, 0, 0xD00000000000001ALL, 0x8000000244262E70, sub_24423D290, v12, v15);
  }

  else
  {
    v17 = v0[7];
    v16 = v0[8];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_24423AC1C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24423AD34, 0, 0);
}

uint64_t sub_24423AD34()
{
  v18 = v0;
  v1 = v0[3];
  v2 = v0[4];

  v3 = sub_244257508();
  v4 = sub_244257C58();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v6 = v0[4];
    v7 = v0[5];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    sub_244257478();
    sub_244257408();

    v10 = sub_244257A88();
    v12 = sub_24423CC9C(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2441FB000, v3, v4, "music player state validated: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x245D5D2D0](v9, -1, -1);
    MEMORY[0x245D5D2D0](v8, -1, -1);
  }

  if (v0[2])
  {
    sub_244257698();
  }

  v14 = v0[7];
  v13 = v0[8];

  v15 = v0[1];

  return v15();
}

uint64_t sub_24423AEC4(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBED8, &qword_24425C608) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF10, &qword_24425C638) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBEE8, &qword_24425C618) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = sub_2442573A8();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24423B03C, 0, 0);
}

uint64_t sub_24423B03C()
{
  if (*(v0[5] + 16))
  {
    v1 = swift_task_alloc();
    v0[15] = v1;
    *v1 = v0;
    v1[1] = sub_24423B148;
    v2 = v0[6];
    v3 = v0[7];

    return sub_24423A8C8(v2);
  }

  else
  {
    v6 = v0[13];
    v5 = v0[14];
    v8 = v0[9];
    v7 = v0[10];
    v9 = v0[8];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_24423B148()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24423B244, 0, 0);
}

uint64_t sub_24423B244()
{
  v70 = v0;
  v1 = v0[7];
  sub_244257478();
  v2 = sub_244257438();

  if (v2)
  {
    v3 = v0[14];
    v4 = v0[11];
    v5 = v0[12];
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[5];
    sub_244257478();
    v9 = sub_244257428();

    v10 = MEMORY[0x277D2A8D8];
    if ((v9 & 1) == 0)
    {
      v10 = MEMORY[0x277D2A8D0];
    }

    (*(v5 + 104))(v3, *v10, v4);

    v11 = sub_244257508();
    v12 = sub_244257C58();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[5];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v69 = v15;
      *v14 = 136315138;
      v16 = sub_2442578F8();
      v17 = MEMORY[0x245D5C4A0](v13, v16);
      v19 = sub_24423CC9C(v17, v18, &v69);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_2441FB000, v11, v12, "enqueuing music videos %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x245D5D2D0](v15, -1, -1);
      MEMORY[0x245D5D2D0](v14, -1, -1);
    }

    v20 = v0[7];
    v21 = v0[5];
    v0[16] = sub_244257468();
    v0[4] = v21;
    v22 = v0 + 4;
    v23 = *(MEMORY[0x277D2A900] + 4);
    v24 = swift_task_alloc();
    v0[17] = v24;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF18, &qword_24425C640);
    v26 = sub_2442578F8();
    v27 = sub_24423D4F8(&qword_27EDDBF20, &qword_27EDDBF18, &qword_24425C640);
    v28 = sub_24423D4B0(&qword_27EDDBF28, MEMORY[0x277CD7E50]);
    *v24 = v0;
    v24[1] = sub_24423BA44;
    v29 = v0[14];
LABEL_16:
    v72 = v27;
    v73 = v28;

    return MEMORY[0x282189BB8](v22, v29, 0xD000000000000018, 0x8000000244262E50, 0, 0xF000000000000000, v25, v26);
  }

  v30 = v0[10];
  v31 = v0[7];
  sub_244257468();
  sub_244257398();

  v32 = sub_2442573D8();
  v33 = (*(*(v32 - 8) + 48))(v30, 1, v32);
  sub_244237440(v30, &qword_27EDDBEE8, &qword_24425C618);
  v34 = v0[6];
  if (v33 != 1)
  {
    v57 = sub_244257508();
    v58 = sub_244257C58();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_2441FB000, v57, v58, "could not queue after current entry, but there is a current entry, so queueing music video at tail", v59, 2u);
      MEMORY[0x245D5D2D0](v59, -1, -1);
    }

    v61 = v0[12];
    v60 = v0[13];
    v62 = v0[11];
    v63 = v0[7];
    v64 = v0[5];

    v65 = sub_244257468();
    v0[3] = v64;
    v22 = v0 + 3;
    v0[19] = v65;
    (*(v61 + 104))(v60, *MEMORY[0x277D2A8E0], v62);
    v66 = *(MEMORY[0x277D2A900] + 4);
    v67 = swift_task_alloc();
    v0[20] = v67;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF18, &qword_24425C640);
    v26 = sub_2442578F8();
    v27 = sub_24423D4F8(&qword_27EDDBF20, &qword_27EDDBF18, &qword_24425C640);
    v28 = sub_24423D4B0(&qword_27EDDBF28, MEMORY[0x277CD7E50]);
    *v67 = v0;
    v67[1] = sub_24423BC1C;
    v29 = v0[13];
    goto LABEL_16;
  }

  v35 = v0[5];

  v36 = sub_244257508();
  v37 = sub_244257C58();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = v0[5];
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v69 = v40;
    *v39 = 136315138;
    v41 = sub_2442578F8();
    v42 = MEMORY[0x245D5C4A0](v38, v41);
    v44 = sub_24423CC9C(v42, v43, &v69);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_2441FB000, v36, v37, "playing sees no active queue entry, playing music videos %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x245D5D2D0](v40, -1, -1);
    MEMORY[0x245D5D2D0](v39, -1, -1);
  }

  v45 = v0[8];
  v46 = v0[9];
  v47 = v0[5];
  v48 = sub_2442578F8();
  (*(*(v48 - 8) + 56))(v46, 1, 1, v48);
  v49 = sub_244257368();
  (*(*(v49 - 8) + 56))(v45, 1, 1, v49);
  v0[2] = v47;
  v50 = sub_2442573F8();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF18, &qword_24425C640);
  sub_24423D4F8(&qword_27EDDBF20, &qword_27EDDBF18, &qword_24425C640);
  sub_24423D4B0(&qword_27EDDBF28, MEMORY[0x277CD7E50]);
  v53 = sub_2442573C8();
  v0[22] = v53;
  sub_2442573B8();
  v54 = *(MEMORY[0x277D2A8C0] + 4);
  v55 = swift_task_alloc();
  v0[23] = v55;
  *v55 = v0;
  v55[1] = sub_24423BE08;
  v56 = v0[7];

  return MEMORY[0x282189B30](v53);
}

uint64_t sub_24423BA44()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v6 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_24423BFB4;
  }

  else
  {
    v4 = sub_24423BB74;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24423BB74()
{
  (*(v0[12] + 8))(v0[14], v0[11]);
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_24423BC1C()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  v7 = *v1;
  v7[21] = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24423C144, 0, 0);
  }

  else
  {
    v9 = v7[13];
    v8 = v7[14];
    v11 = v7[9];
    v10 = v7[10];
    v12 = v7[8];

    v13 = v7[1];

    return v13();
  }
}

uint64_t sub_24423BE08()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_24423C2BC;
  }

  else
  {
    v3 = sub_24423BF1C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24423BF1C()
{
  v1 = v0[22];

  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_24423BFB4()
{
  v1 = v0[6];
  v2 = sub_244257C48();
  v3 = sub_244257508();
  v4 = os_log_type_enabled(v3, v2);
  v5 = v0[18];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2441FB000, v3, v2, "Failed to enqueue music videos to system music player: %@", v6, 0xCu);
    sub_244237440(v7, &qword_27EDDBF00, &qword_24425CA80);
    MEMORY[0x245D5D2D0](v7, -1, -1);
    MEMORY[0x245D5D2D0](v6, -1, -1);
  }

  else
  {
  }

  (*(v0[12] + 8))(v0[14], v0[11]);
  v11 = v0[13];
  v10 = v0[14];
  v13 = v0[9];
  v12 = v0[10];
  v14 = v0[8];

  v15 = v0[1];

  return v15();
}

uint64_t sub_24423C144()
{
  v1 = v0[6];
  v2 = sub_244257C48();
  v3 = sub_244257508();
  v4 = os_log_type_enabled(v3, v2);
  v5 = v0[21];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2441FB000, v3, v2, "Failed to enqueue music videos to system music player: %@", v6, 0xCu);
    sub_244237440(v7, &qword_27EDDBF00, &qword_24425CA80);
    MEMORY[0x245D5D2D0](v7, -1, -1);
    MEMORY[0x245D5D2D0](v6, -1, -1);
  }

  else
  {
  }

  v11 = v0[13];
  v10 = v0[14];
  v13 = v0[9];
  v12 = v0[10];
  v14 = v0[8];

  v15 = v0[1];

  return v15();
}

uint64_t sub_24423C2BC()
{
  v1 = v0[6];
  v2 = sub_244257C48();
  v3 = sub_244257508();
  v4 = os_log_type_enabled(v3, v2);
  v5 = v0[24];
  v6 = v0[22];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v5;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2441FB000, v3, v2, "Failed to play music videos on system music player: %@", v7, 0xCu);
    sub_244237440(v8, &qword_27EDDBF00, &qword_24425CA80);
    MEMORY[0x245D5D2D0](v8, -1, -1);
    MEMORY[0x245D5D2D0](v7, -1, -1);
  }

  else
  {
    v11 = v0[22];
  }

  v13 = v0[13];
  v12 = v0[14];
  v15 = v0[9];
  v14 = v0[10];
  v16 = v0[8];

  v17 = v0[1];

  return v17();
}

uint64_t sub_24423C448(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF30, &qword_24425C648);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v17 - v9;
  sub_244257478();
  v11 = sub_244257418();

  v17[1] = v11;
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  (*(v7 + 32))(v13 + v12, v10, v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF38, &qword_24425C650);
  sub_24423D4F8(&qword_27EDDBF40, &qword_27EDDBF38, &qword_24425C650);
  v14 = sub_244257728();

  v15 = *a2;
  *a2 = v14;
}

uint64_t sub_24423C638(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v3 = sub_244257838();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_244257858();
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = *(v23 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF30, &qword_24425C648);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  sub_24423D30C();
  v16 = sub_244257C78();
  (*(v12 + 16))(v15, a2, v11);
  v17 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v22;
  (*(v12 + 32))(v18 + v17, v15, v11);
  aBlock[4] = sub_24423D428;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24423CC58;
  aBlock[3] = &block_descriptor_0;
  v19 = _Block_copy(aBlock);

  sub_244257848();
  v26 = MEMORY[0x277D84F90];
  sub_24423D4B0(&qword_27EDDBF50, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF58, &qword_24425C658);
  sub_24423D4F8(&qword_27EDDBF60, &qword_27EDDBF58, &qword_24425C658);
  sub_244257CC8();
  MEMORY[0x245D5C5F0](0, v10, v6, v19);
  _Block_release(v19);

  (*(v25 + 8))(v6, v3);
  (*(v23 + 8))(v10, v24);
}

uint64_t sub_24423C9F0()
{
  v0 = sub_244257378();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_244257478();
  sub_244257408();

  (*(v1 + 104))(v5, *MEMORY[0x277D2A8A0], v0);
  sub_24423D4B0(&qword_27EDDBF08, MEMORY[0x277D2A8A8]);
  v8 = sub_244257A38();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  if ((v8 & 1) == 0)
  {
    sub_244257478();
    v10 = sub_244257448();

    if (v10 & 1) != 0 || (sub_244257478(), v11 = sub_244257458(), , (v11))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF30, &qword_24425C648);
      sub_244257B88();
    }
  }
}

uint64_t sub_24423CC58(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_24423CC9C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24423CD68(v11, 0, 0, 1, a1, a2);
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
    sub_24423D540(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24423CD68(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24423CE74(a5, a6);
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
    result = sub_244257DB8();
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

uint64_t sub_24423CE74(uint64_t a1, unint64_t a2)
{
  v4 = sub_24423CEC0(a1, a2);
  sub_24423CFF0(&unk_285796F80);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24423CEC0(uint64_t a1, unint64_t a2)
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

  v6 = sub_24423D0DC(v5, 0);
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

  result = sub_244257DB8();
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
        v10 = sub_244257AD8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24423D0DC(v10, 0);
        result = sub_244257D78();
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

uint64_t sub_24423CFF0(uint64_t result)
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

  result = sub_24423D150(result, v12, 1, v3);
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

void *sub_24423D0DC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF68, &unk_24425C660);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24423D150(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF68, &unk_24425C660);
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

uint64_t sub_24423D29C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF30, &qword_24425C648) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_24423C638(v2, v3);
}

unint64_t sub_24423D30C()
{
  result = qword_27EDDBF48;
  if (!qword_27EDDBF48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDDBF48);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF30, &qword_24425C648);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24423D428()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF30, &qword_24425C648) - 8) + 80);
  v2 = *(v0 + 16);

  return sub_24423C9F0();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24423D4B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24423D4F8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24423D540(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24423D5A8()
{
  v0 = sub_244257528();
  __swift_allocate_value_buffer(v0, qword_27EDDC5E0);
  __swift_project_value_buffer(v0, qword_27EDDC5E0);
  return sub_244257518();
}

id CSReactionView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *CSReactionView.init()()
{
  v1 = OBJC_IVAR___CSReactionView_avatarStackView;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D75A70]) init];
  v2 = MEMORY[0x277D84F98];
  *&v0[OBJC_IVAR___CSReactionView_senderReactions] = MEMORY[0x277D84F98];
  *&v0[OBJC_IVAR___CSReactionView_senderAvatarViews] = v2;
  *&v0[OBJC_IVAR___CSReactionView_activeEmojiLabels] = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR___CSReactionView_cleanupTimer] = 0;
  v3 = OBJC_IVAR___CSReactionView_glowView;
  type metadata accessor for GlowView();
  *&v0[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v33.receiver = v0;
  v33.super_class = type metadata accessor for CSReactionView();
  v4 = objc_msgSendSuper2(&v33, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = OBJC_IVAR___CSReactionView_glowView;
  v6 = *&v4[OBJC_IVAR___CSReactionView_glowView];
  v7 = v4;
  [v7 addSubview_];
  v8 = OBJC_IVAR___CSReactionView_avatarStackView;
  [*&v7[OBJC_IVAR___CSReactionView_avatarStackView] setAxis_];
  [*&v7[v8] setSpacing_];
  [v7 addSubview_];
  [*&v4[v5] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v7[v8] setTranslatesAutoresizingMaskIntoConstraints_];
  v32 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFA0, &qword_24425C6A8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24425C670;
  v10 = [*&v4[v5] leadingAnchor];
  v11 = [v7 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v9 + 32) = v12;
  v13 = [*&v4[v5] trailingAnchor];
  v14 = [v7 trailingAnchor];

  v15 = [v13 constraintEqualToAnchor_];
  *(v9 + 40) = v15;
  v16 = [*&v4[v5] bottomAnchor];
  v17 = [v7 bottomAnchor];

  v18 = [v16 constraintEqualToAnchor_];
  *(v9 + 48) = v18;
  v19 = [*&v4[v5] topAnchor];
  v20 = [v7 topAnchor];

  v21 = [v19 constraintEqualToAnchor_];
  *(v9 + 56) = v21;
  v22 = [*&v7[v8] centerXAnchor];
  v23 = [v7 centerXAnchor];

  v24 = [v22 constraintEqualToAnchor_];
  *(v9 + 64) = v24;
  v25 = [*&v7[v8] centerYAnchor];
  v26 = [v7 bottomAnchor];

  v27 = [v25 constraintEqualToAnchor:v26 constant:-80.0];
  *(v9 + 72) = v27;
  v28 = [*&v7[v8] heightAnchor];
  v29 = [v28 constraintEqualToConstant_];

  *(v9 + 80) = v29;
  sub_244243124(0, &qword_27EDDBFA8, 0x277CCAAD0);
  v30 = sub_244257B18();

  [v32 activateConstraints_];

  return v7;
}

id CSReactionView.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR___CSReactionView_cleanupTimer];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for CSReactionView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_24423DD1C()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_2442439F0;
  v6[5] = v2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_24423E3B0;
  v6[3] = &block_descriptor_55;
  v3 = _Block_copy(v6);

  v4 = [v1 scheduledTimerWithTimeInterval:0 repeats:v3 block:5.0];
  _Block_release(v3);
  v5 = *(v0 + OBJC_IVAR___CSReactionView_cleanupTimer);
  *(v0 + OBJC_IVAR___CSReactionView_cleanupTimer) = v4;
}

uint64_t sub_24423DE2C()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE28, &qword_24425C360) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v10 - v1;
  v3 = sub_244257BD8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_244257BB8();

  v6 = sub_244257BA8();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v4;

  sub_24423E0DC(0, 0, v2, &unk_24425C750, v7);
}

uint64_t sub_24423DFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_244257BB8();
  v4[7] = sub_244257BA8();
  v6 = sub_244257B68();

  return MEMORY[0x2822009F8](sub_24423E040, v6, v5);
}

uint64_t sub_24423E040()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_24423E418();
  }

  **(v0 + 40) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24423E0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE28, &qword_24425C360) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_2442373D0(a3, v26 - v10);
  v12 = sub_244257BD8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_244242DFC(v11);
  }

  else
  {
    sub_244257BC8();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_244257B68();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_244257AA8() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFD8, &qword_24425C768);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_244242DFC(a3);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_244242DFC(a3);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFD8, &qword_24425C768);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_24423E3B0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_24423E418()
{
  if (qword_27EDDC5D8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v1 = sub_244257528();
    __swift_project_value_buffer(v1, qword_27EDDC5E0);
    v2 = v0;
    v3 = sub_244257508();
    v4 = sub_244257C38();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134218496;
      *(v5 + 4) = *(*&v2[OBJC_IVAR___CSReactionView_senderAvatarViews] + 16);
      *(v5 + 12) = 2048;
      v6 = OBJC_IVAR___CSReactionView_senderReactions;
      swift_beginAccess();
      *(v5 + 14) = *(*&v2[v6] + 16);
      *(v5 + 22) = 2048;
      v7 = OBJC_IVAR___CSReactionView_activeEmojiLabels;
      swift_beginAccess();
      v8 = *&v2[v7];
      if ((v8 & 0xC000000000000001) != 0)
      {

        v9 = sub_244257D08();
      }

      else
      {
        v9 = *(v8 + 16);
      }

      *(v5 + 24) = v9;

      _os_log_impl(&dword_2441FB000, v3, v4, "FORCE CLEANUP TRIGGERED - avatars: %ld, sender reactions: %ld, active emoji labels: %ld", v5, 0x20u);
      MEMORY[0x245D5D2D0](v5, -1, -1);
    }

    else
    {
    }

    v10 = OBJC_IVAR___CSReactionView_senderReactions;
    swift_beginAccess();
    v11 = *&v2[v10];
    *&v2[v10] = MEMORY[0x277D84F98];

    v12 = OBJC_IVAR___CSReactionView_activeEmojiLabels;
    swift_beginAccess();
    v30 = v12;
    v13 = *&v2[v12];
    if ((v13 & 0xC000000000000001) != 0)
    {
      if (v13 < 0)
      {
        v14 = *&v2[v12];
      }

      sub_244257CF8();
      sub_244243124(0, &qword_27EDDBFC0, 0x277D756C0);
      sub_24424316C();
      sub_244257C18();
      v13 = v32;
      v15 = v33;
      v0 = v34;
      v16 = v35;
      v17 = v36;
    }

    else
    {
      v18 = -1 << *(v13 + 32);
      v15 = v13 + 56;
      v0 = ~v18;
      v19 = -v18;
      v20 = v19 < 64 ? ~(-1 << v19) : -1;
      v17 = v20 & *(v13 + 56);

      v16 = 0;
    }

    v29 = v0;
    v21 = (v0 + 64) >> 6;
    if (v13 < 0)
    {
      break;
    }

LABEL_17:
    v22 = v16;
    v23 = v17;
    v24 = v16;
    if (v17)
    {
LABEL_21:
      v25 = (v23 - 1) & v23;
      v0 = *(*(v13 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
      if (v0)
      {
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= v21)
      {
        goto LABEL_27;
      }

      v23 = *(v15 + 8 * v24);
      ++v22;
      if (v23)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  while (sub_244257D28())
  {
    sub_244243124(0, &qword_27EDDBFC0, 0x277D756C0);
    swift_dynamicCast();
    v0 = v31;
    v24 = v16;
    v25 = v17;
    if (!v31)
    {
      break;
    }

LABEL_25:
    [v0 removeFromSuperview];

    v16 = v24;
    v17 = v25;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }
  }

LABEL_27:
  sub_2442431D4();
  v26 = *&v2[v30];
  *&v2[v30] = MEMORY[0x277D84FA0];

  (*((*MEMORY[0x277D85000] & **&v2[OBJC_IVAR___CSReactionView_glowView]) + 0x90))(v27);
  v28 = *&v2[OBJC_IVAR___CSReactionView_cleanupTimer];
  *&v2[OBJC_IVAR___CSReactionView_cleanupTimer] = 0;
}

uint64_t sub_24423E8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE28, &qword_24425C360) - 8) + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v69 = &v58 - v14;
  v15 = *&v4[OBJC_IVAR___CSReactionView_glowView];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFB0, &qword_24425C6B0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24425C680;
  v68 = a1;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  v17 = *((*MEMORY[0x277D85000] & *v15) + 0x68);

  v17(v16);

  v18 = OBJC_IVAR___CSReactionView_senderReactions;
  swift_beginAccess();
  v67 = v5;
  v19 = *&v5[v18];
  v20 = MEMORY[0x277D84F90];
  if (*(v19 + 16))
  {
    v21 = *&v5[v18];

    v22 = sub_2442410B8(a3, a4);
    if (v23)
    {
      v24 = *(*(v19 + 56) + 8 * v22);
      swift_bridgeObjectRetain_n();
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
    }

    v25 = v68;
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
    v25 = v68;
  }

  v26 = *(v24 + 2);
  if (v26)
  {
    v27 = &v24[16 * v26 + 16];
    v29 = *v27;
    v28 = *(v27 + 1);

    if (v29 == v25 && v28 == a2)
    {
    }

    v31 = sub_244257EB8();

    if (v31)
    {
    }
  }

  else
  {
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_244240FAC(0, *(v24 + 2) + 1, 1, v24);
  }

  v33 = *(v24 + 2);
  v32 = *(v24 + 3);
  if (v33 >= v32 >> 1)
  {
    v24 = sub_244240FAC((v32 > 1), v33 + 1, 1, v24);
  }

  *(v24 + 2) = v33 + 1;
  v34 = &v24[16 * v33];
  *(v34 + 4) = v25;
  *(v34 + 5) = a2;
  v63 = a2;
  v35 = v67;
  swift_beginAccess();

  v36 = *&v35[v18];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74 = *&v35[v18];
  *&v35[v18] = 0x8000000000000000;
  v64 = a3;
  sub_2442413D8(v24, a3, a4, isUniquelyReferenced_nonNull_native);
  v65 = a4;

  *&v35[v18] = v74;
  swift_endAccess();
  [*&v35[OBJC_IVAR___CSReactionView_cleanupTimer] invalidate];
  sub_24423DD1C();
  v66 = swift_allocObject();
  *(v66 + 16) = v20;
  v62 = sub_244257BB8();
  v38 = sub_244257BD8();
  v39 = 0;
  v40 = *(v38 - 8);
  v41 = *(v40 + 56);
  v40 += 56;
  v61 = v41;
  v59 = (v40 - 8);
  v60 = v40;
  v58 = (v40 - 48);
  v42 = v66;
  do
  {
    v43 = v13;
    v44 = v69;
    v61(v69, 1, 1, v38);
    v45 = v63;

    v46 = v65;

    v47 = v67;

    v48 = sub_244257BA8();
    v49 = swift_allocObject();
    v49[2] = v48;
    v49[3] = MEMORY[0x277D85700];
    v49[4] = v47;
    v49[5] = v64;
    v49[6] = v46;
    v49[7] = v68;
    v49[8] = v45;
    v49[9] = v42;
    v49[10] = v39;
    v50 = v44;
    v13 = v43;
    sub_2442373D0(v50, v43);
    LODWORD(v47) = (*v59)(v43, 1, v38);

    if (v47 == 1)
    {
      sub_244242DFC(v43);
    }

    else
    {
      sub_244257BC8();
      (*v58)(v43, v38);
    }

    v51 = v49[2];
    v52 = v49[3];
    swift_unknownObjectRetain();

    if (v51)
    {
      swift_getObjectType();
      v53 = sub_244257B68();
      v55 = v54;
      swift_unknownObjectRelease();
    }

    else
    {
      v53 = 0;
      v55 = 0;
    }

    sub_244242DFC(v69);
    v56 = swift_allocObject();
    *(v56 + 16) = &unk_24425C6C0;
    *(v56 + 24) = v49;
    if (v55 | v53)
    {
      v70 = 0;
      v71 = 0;
      v72 = v53;
      v73 = v55;
    }

    ++v39;
    swift_task_create();
  }

  while (v39 != 12);
}

uint64_t sub_24423EEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[34] = v13;
  v8[35] = v14;
  v8[32] = a7;
  v8[33] = a8;
  v8[30] = a5;
  v8[31] = a6;
  v8[29] = a4;
  sub_244257BB8();
  v8[36] = sub_244257BA8();
  v10 = sub_244257B68();
  v8[37] = v10;
  v8[38] = v9;

  return MEMORY[0x2822009F8](sub_24423EF64, v10, v9);
}

uint64_t sub_24423EF64()
{
  v1 = sub_2442419B4(0x3B9ACA01uLL);
  *(v0 + 312) = v1;
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = v1;
    v3 = *(MEMORY[0x277D857E8] + 4);
    v4 = swift_task_alloc();
    *(v0 + 320) = v4;
    *v4 = v0;
    v4[1] = sub_24423F014;
    v1 = v2;
  }

  return MEMORY[0x282200480](v1);
}

uint64_t sub_24423F014()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 296);
    v6 = *(v2 + 304);
    v7 = sub_244243C50;
  }

  else
  {
    v5 = *(v2 + 296);
    v6 = *(v2 + 304);
    v7 = sub_24423F138;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

void sub_24423F138()
{
  v104 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 232);

  v3 = OBJC_IVAR___CSReactionView_senderReactions;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (*(v4 + 16))
  {
    v6 = *(v0 + 240);
    v5 = *(v0 + 248);

    v7 = sub_2442410B8(v6, v5);
    if (v8)
    {
      v9 = *(*(v4 + 56) + 8 * v7);

      v10 = *(v9 + 16);
      if (v10)
      {
        v12 = *(v0 + 256);
        v11 = *(v0 + 264);
        v13 = (v9 + 16 + 16 * v10);
        v15 = *v13;
        v14 = v13[1];

        if (v15 == v12 && v14 == v11)
        {
        }

        else
        {
          v17 = *(v0 + 256);
          v18 = *(v0 + 264);
          v19 = sub_244257EB8();

          if ((v19 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        v20 = *(v0 + 264);
        v21 = *(v0 + 272);
        v22 = *(v0 + 256);
        v23 = [objc_allocWithZone(MEMORY[0x277D756C0]) init];
        v24 = sub_244257A48();
        [v23 setText_];

        v25 = [objc_opt_self() systemFontOfSize_];
        [v23 setFont_];

        v26 = v23;
        [v26 sizeToFit];
        swift_beginAccess();
        v27 = v26;
        MEMORY[0x245D5C470]();
        if (*((*(v21 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v21 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v92 = *(v0 + 272) + 16;
          v93 = *((*(v21 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_244257B48();
        }

        v28 = *(v0 + 280);
        v29 = *(v0 + 232);
        v30 = *(v0 + 272) + 16;
        sub_244257B58();
        swift_endAccess();
        swift_beginAccess();
        v31 = v27;
        sub_24424177C(&v103, v31);
        a = v103.a;
        swift_endAccess();

        v33 = sub_2442419B4(0x20000000000001uLL);
        v34 = vcvtd_n_f64_u64(v33, 0x35uLL) * 200.0 + -100.0;
        if (v33 == 0x20000000000000)
        {
          v35 = 100.0;
        }

        else
        {
          v35 = v34;
        }

        v36 = sub_2442419B4(0x20000000000001uLL);
        v37 = vcvtd_n_f64_u64(v36, 0x35uLL) * 200.0 + -100.0;
        if (v36 == 0x20000000000000)
        {
          v38 = 100.0;
        }

        else
        {
          v38 = v37;
        }

        [v29 bounds];
        v39 = CGRectGetMidX(v106) + v35;
        [v29 bounds];
        v40 = v38 + CGRectGetMaxY(v107) + -200.0;
        [v31 setCenter_];

        v41 = sub_2442419B4(0x20000000000001uLL);
        v42 = vcvtd_n_f64_u64(v41, 0x35uLL) * 0.5 + 0.5;
        if (v41 == 0x20000000000000)
        {
          v42 = 1.0;
        }

        CGAffineTransformMakeScale(&v103, v42, v42);
        v43 = *&v103.c;
        v44 = *&v103.tx;
        *(v0 + 16) = *&v103.a;
        *(v0 + 32) = v43;
        *(v0 + 48) = v44;
        [v31 setTransform_];

        [v29 addSubview_];
        if (v28 <= 4)
        {
          v45 = *(v0 + 232);
          [v45 bounds];
          v46 = CGRectGetWidth(v108) * 0.25;
          [v45 bounds];
          v47 = CGRectGetWidth(v109) * 0.5;
          if (v46 > v47)
          {
            __break(1u);
          }

          else if (COERCE__INT64(fabs(v47 - v46)) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v48 = sub_2442419B4(0x20000000000001uLL);
            v49 = v46 + (v47 - v46) * vcvtd_n_f64_u64(v48, 0x35uLL);
            if (v48 == 0x20000000000000)
            {
              v49 = v47;
            }

            v50 = v39 - v49;
            goto LABEL_40;
          }

          __break(1u);
          goto LABEL_53;
        }

        v51 = *(v0 + 280);
        [*(v0 + 232) bounds];
        Width = CGRectGetWidth(v110);
        v53 = Width;
        if (v51 > 9)
        {
          if (Width < 0.0)
          {
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }

          if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_56:
            __break(1u);
            return;
          }

          v58 = sub_2442419B4(0x20000000000001uLL);
          v57 = v53 * vcvtd_n_f64_u64(v58, 0x35uLL) + 0.0;
          if (v58 == 0x20000000000000)
          {
            v57 = v53;
          }
        }

        else
        {
          v54 = Width * 0.25;
          [*(v0 + 232) bounds];
          v55 = CGRectGetWidth(v111) * 0.5;
          if (v54 > v55)
          {
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

          if (COERCE__INT64(fabs(v55 - v54)) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

          v56 = sub_2442419B4(0x20000000000001uLL);
          v57 = v54 + (v55 - v54) * vcvtd_n_f64_u64(v56, 0x35uLL);
          if (v56 == 0x20000000000000)
          {
            v57 = v55;
          }
        }

        v50 = v39 + v57;
LABEL_40:
        v101 = v50;
        v96 = *(v0 + 256);
        v97 = *(v0 + 272);
        v99 = *(v0 + 264);
        v100 = *(v0 + 248);
        v95 = *(v0 + 240);
        v98 = *(v0 + 232);
        v59 = *(v0 + 312) / 1000000000.0;
        v60 = sub_2442419B4(0x20000000000001uLL);
        v61 = vcvtd_n_f64_u64(v60, 0x35uLL) * 320.0 + -160.0;
        if (v60 == 0x20000000000000)
        {
          v62 = 160.0;
        }

        else
        {
          v62 = v61;
        }

        v63 = [objc_allocWithZone(MEMORY[0x277D75200]) init];
        [v63 moveToPoint_];
        v64 = (v39 + v101) * 0.5;
        v65 = (v62 - v40) * 0.5;
        v66 = sub_2442419B4(0x20000000000001uLL);
        v67 = vcvtd_n_f64_u64(v66, 0x35uLL) * 100.0 + -50.0;
        if (v66 == 0x20000000000000)
        {
          v67 = 50.0;
        }

        v68 = v64 + v67;
        v69 = sub_2442419B4(0x20000000000001uLL);
        v70 = vcvtd_n_f64_u64(v69, 0x35uLL) * 100.0 + -50.0;
        if (v69 == 0x20000000000000)
        {
          v70 = 50.0;
        }

        v71 = v40 + v65 + v70;
        v72 = sub_2442419B4(0x20000000000001uLL);
        v73 = sub_2442419B4(0x20000000000001uLL);
        v74.i64[0] = v72;
        v74.i64[1] = v73;
        v75.f64[0] = v101;
        v75.f64[1] = v40 + v65 + v65;
        [v63 addCurveToPoint:v101 controlPoint1:v62 controlPoint2:{v68, v71, vaddq_f64(v75, vbslq_s8(vceqq_s64(v74, vdupq_n_s64(0x20000000000000uLL)), vdupq_n_s64(0x4049000000000000uLL), vaddq_f64(vmulq_f64(vmulq_f64(vcvtq_f64_u64(v74), vdupq_n_s64(0x3CA0000000000000uLL)), vdupq_n_s64(0x4059000000000000uLL)), vdupq_n_s64(0xC049000000000000))))}];
        v102 = v63;
        v76 = sub_244257A48();
        v77 = [objc_opt_self() animationWithKeyPath_];

        v78 = [v102 CGPath];
        [v77 setPath_];

        v79 = v77;
        [v79 setDuration_];

        [v79 setCalculationMode_];
        v80 = [v31 layer];

        v81 = sub_244257A48();
        [v80 addAnimation:v79 forKey:v81];

        v94 = objc_opt_self();
        v82 = swift_allocObject();
        *(v82 + 16) = v31;
        *(v0 + 96) = sub_244243278;
        *(v0 + 104) = v82;
        *(v0 + 64) = MEMORY[0x277D85DD0];
        *(v0 + 72) = 1107296256;
        *(v0 + 80) = sub_24423CC58;
        *(v0 + 88) = &block_descriptor_1;
        v83 = _Block_copy((v0 + 64));
        v84 = *(v0 + 104);
        v85 = v31;

        v86 = swift_allocObject();
        v86[2] = v97;
        v86[3] = v96;
        v86[4] = v99;
        v86[5] = v95;
        v86[6] = v100;
        v86[7] = v98;
        v86[8] = v85;
        *(v0 + 144) = sub_2442433B0;
        *(v0 + 152) = v86;
        *(v0 + 112) = MEMORY[0x277D85DD0];
        *(v0 + 120) = 1107296256;
        *(v0 + 128) = sub_24423FB4C;
        *(v0 + 136) = &block_descriptor_49;
        v87 = _Block_copy((v0 + 112));
        v88 = *(v0 + 152);
        v89 = v85;

        v90 = v98;

        [v94 animateWithDuration:0 delay:v83 options:v87 animations:0.3 completion:1.5 - (v59 + 0.3)];

        _Block_release(v87);
        _Block_release(v83);

        goto LABEL_48;
      }
    }
  }

LABEL_48:
  v91 = *(v0 + 8);

  v91();
}

uint64_t sub_24423FB4C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_24423FC9C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v35 = a2;
  v34 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE28, &qword_24425C360);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v33 = sub_244257BB8();
  v13 = sub_244257BD8();
  v14 = 0;
  v15 = *(v13 - 8);
  v16 = *(v15 + 56);
  v31 = v15 + 56;
  v32 = v16;
  v17 = (v15 + 48);
  v30 = (v15 + 8);
  v16(v12, 1, 1, v13);
  while (1)
  {
    v19 = v35;

    v20 = v36;
    v21 = sub_244257BA8();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = MEMORY[0x277D85700];
    *(v22 + 32) = v14;
    *(v22 + 40) = v34;
    *(v22 + 48) = v19;
    *(v22 + 56) = v20;
    *(v22 + 64) = a3;
    *(v22 + 72) = a4;
    sub_2442373D0(v12, v10);
    LODWORD(v20) = (*v17)(v10, 1, v13);

    if (v20 == 1)
    {
      sub_244242DFC(v10);
    }

    else
    {
      sub_244257BC8();
      (*v30)(v10, v13);
    }

    v24 = *(v22 + 16);
    v23 = *(v22 + 24);
    swift_unknownObjectRetain();

    if (v24)
    {
      swift_getObjectType();
      v25 = sub_244257B68();
      v27 = v26;
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    sub_244242DFC(v12);
    v28 = swift_allocObject();
    *(v28 + 16) = &unk_24425C6D8;
    *(v28 + 24) = v22;
    if (v27 | v25)
    {
      v37 = 0;
      v38 = 0;
      v39 = v25;
      v40 = v27;
    }

    ++v14;
    swift_task_create();

    if (v14 == 15)
    {
      break;
    }

    v32(v12, 1, 1, v13);
  }

  return result;
}

uint64_t sub_24423FF74(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 144) = a1;
  *(v9 + 152) = a2;
  *(v9 + 128) = a8;
  *(v9 + 136) = a9;
  *(v9 + 112) = a6;
  *(v9 + 120) = a7;
  sub_244257BB8();
  *(v9 + 160) = sub_244257BA8();
  v11 = sub_244257B68();
  *(v9 + 168) = v11;
  *(v9 + 176) = v10;

  return MEMORY[0x2822009F8](sub_244240014, v11, v10);
}

uint64_t sub_244240014(uint64_t a1)
{
  v3 = v1[14];
  v4 = 22222222 * v3;
  v1[23] = 22222222 * v3;
  if ((v3 * 22222222) >> 64 != (22222222 * v3) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 0)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v5 = *(MEMORY[0x277D857E8] + 4);
  v6 = swift_task_alloc();
  v1[24] = v6;
  *v6 = v1;
  v6[1] = sub_2442400D4;
  a1 = v4;

  return MEMORY[0x282200480](a1);
}

uint64_t sub_2442400D4()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 168);
    v6 = *(v2 + 176);
    v7 = sub_244243C60;
  }

  else
  {
    v5 = *(v2 + 168);
    v6 = *(v2 + 176);
    v7 = sub_2442401F8;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2442401F8()
{
  v48 = v0;
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v5 = *(v0 + 120);
  v45 = *(v0 + 184) / 1000000000.0;
  v6 = [objc_allocWithZone(MEMORY[0x277D756C0]) init];
  *(v0 + 200) = v6;
  v7 = sub_244257A48();
  [v6 setText_];

  v8 = [objc_opt_self() systemFontOfSize_];
  [v6 setFont_];

  v9 = v6;
  [v9 sizeToFit];
  *(v0 + 208) = OBJC_IVAR___CSReactionView_activeEmojiLabels;
  swift_beginAccess();
  v10 = v9;
  sub_24424177C(&v47, v10);
  a = v47.a;
  swift_endAccess();

  [v10 setCenter_];
  v12 = sub_2442419B4(0x20000000000001uLL);
  v13 = vcvtd_n_f64_u64(v12, 0x35uLL) * 0.5 + 0.5;
  if (v12 == 0x20000000000000)
  {
    v13 = 1.0;
  }

  CGAffineTransformMakeScale(&v47, v13, v13);
  v14 = *&v47.c;
  v15 = *&v47.tx;
  *(v0 + 16) = *&v47.a;
  *(v0 + 32) = v14;
  *(v0 + 48) = v15;
  [v10 setTransform_];

  [v4 addSubview_];
  [v4 bounds];
  MidX = CGRectGetMidX(v50);
  v16 = [objc_allocWithZone(MEMORY[0x277D75200]) init];
  *(v0 + 216) = v16;
  [v16 moveToPoint_];
  v17 = (-100.0 - v1) * 0.5;
  v18 = sub_2442419B4(0x20000000000001uLL);
  v19 = vcvtd_n_f64_u64(v18, 0x35uLL) * 100.0 + -50.0;
  if (v18 == 0x20000000000000)
  {
    v19 = 50.0;
  }

  v20 = (v2 + MidX) * 0.5 + v19;
  v21 = sub_2442419B4(0x20000000000001uLL);
  v22 = vcvtd_n_f64_u64(v21, 0x35uLL) * 100.0 + -50.0;
  if (v21 == 0x20000000000000)
  {
    v22 = 50.0;
  }

  v23 = v1 + v17 + v22;
  v24 = sub_2442419B4(0x20000000000001uLL);
  v25 = sub_2442419B4(0x20000000000001uLL);
  v26.i64[0] = v24;
  v26.i64[1] = v25;
  v27.f64[0] = MidX;
  v27.f64[1] = v1 + v17 + v17;
  [v16 addCurveToPoint:MidX controlPoint1:-100.0 controlPoint2:{v20, v23, vaddq_f64(v27, vbslq_s8(vceqq_s64(v26, vdupq_n_s64(0x20000000000000uLL)), vdupq_n_s64(0x4049000000000000uLL), vaddq_f64(vmulq_f64(vmulq_f64(vcvtq_f64_u64(v26), vdupq_n_s64(0x3CA0000000000000uLL)), vdupq_n_s64(0x4059000000000000uLL)), vdupq_n_s64(0xC049000000000000))))}];
  v28 = sub_244257A48();
  v29 = [objc_opt_self() animationWithKeyPath_];
  *(v0 + 224) = v29;

  v30 = [v16 CGPath];
  [v29 setPath_];

  v31 = v29;
  v32 = sub_2442419B4(0x20000000000001uLL);
  v33 = vcvtd_n_f64_u64(v32, 0x35uLL) * 0.25 + 0.0;
  if (v32 == 0x20000000000000)
  {
    v33 = 0.25;
  }

  [v31 setDuration_];
  [v31 setCalculationMode_];
  [v31 setAutoreverses_];
  LODWORD(v34) = 1.0;
  [v31 setRepeatCount_];
  v35 = [v10 layer];

  v36 = sub_244257A48();
  [v35 addAnimation:v31 forKey:v36];

  [v31 duration];
  v38 = v37;

  v40 = (v38 + -0.05) * 1000000000.0;
  if (COERCE__INT64(fabs(v40)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v40 <= -1.0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v40 >= 1.84467441e19)
  {
LABEL_17:
    __break(1u);
    return MEMORY[0x282200480](v39);
  }

  v41 = v40;
  v42 = *(MEMORY[0x277D857E8] + 4);
  v43 = swift_task_alloc();
  *(v0 + 232) = v43;
  *v43 = v0;
  v43[1] = sub_2442407A4;
  v39 = v41;

  return MEMORY[0x282200480](v39);
}

uint64_t sub_2442407A4()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 168);
    v6 = *(v2 + 176);
    v7 = sub_244243C6C;
  }

  else
  {
    v5 = *(v2 + 168);
    v6 = *(v2 + 176);
    v7 = sub_2442408C8;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2442408C8()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[20];
  v6 = v0[17];

  swift_beginAccess();
  v7 = sub_2442423B0(v3);
  swift_endAccess();

  [v3 removeFromSuperview];
  v8 = v0[1];

  return v8();
}

id CSReactionView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_244240F78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AvatarImageView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_244240FAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFB0, &qword_24425C6B0);
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

unint64_t sub_2442410B8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_244257EF8();
  sub_244257AB8();
  v6 = sub_244257F08();

  return sub_244241554(a1, a2, v6);
}

uint64_t sub_244241130(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFE0, &qword_24425C778);
  v38 = a2;
  result = sub_244257E58();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_244257EF8();
      sub_244257AB8();
      result = sub_244257F08();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2442413D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2442410B8(a2, a3);
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
      sub_244241130(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_2442410B8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_244257ED8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_24424160C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

unint64_t sub_244241554(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_244257EB8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_24424160C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFE0, &qword_24425C778);
  v2 = *v0;
  v3 = sub_244257E48();
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

uint64_t sub_24424177C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_244257D18();

    if (v9)
    {

      sub_244243124(0, &qword_27EDDBFC0, 0x277D756C0);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_244257D08();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_244241A40(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_244241C30(v22 + 1);
    }

    v20 = v8;
    sub_244241E58(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_244243124(0, &qword_27EDDBFC0, 0x277D756C0);
  v11 = *(v6 + 40);
  v12 = sub_244257C98();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_244241EDC(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_244257CA8();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

unint64_t sub_2442419B4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x245D5D2E0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x245D5D2E0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_244241A40(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFD0, &qword_24425C740);
    v2 = sub_244257D68();
    v16 = v2;
    sub_244257CF8();
    if (sub_244257D28())
    {
      sub_244243124(0, &qword_27EDDBFC0, 0x277D756C0);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_244241C30(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_244257C98();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_244257D28());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_244241C30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFD0, &qword_24425C740);
  result = sub_244257D58();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_244257C98();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_244241E58(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_244257C98();
  v5 = -1 << *(a2 + 32);
  result = sub_244257CE8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_244241EDC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_244241C30(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_24424204C();
      goto LABEL_12;
    }

    sub_24424219C(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_244257C98();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_244243124(0, &qword_27EDDBFC0, 0x277D756C0);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_244257CA8();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_244257EC8();
  __break(1u);
}

id sub_24424204C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFD0, &qword_24425C740);
  v2 = *v0;
  v3 = sub_244257D48();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_24424219C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFD0, &qword_24425C740);
  result = sub_244257D58();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_244257C98();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2442423B0(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_244257D38();

    if (v7)
    {
      v8 = sub_244242548();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_244243124(0, &qword_27EDDBFC0, 0x277D756C0);
  v11 = *(v3 + 40);
  v12 = sub_244257C98();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_244257CA8();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24424204C();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_2442426B0(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_244242548()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_244257D08();
  v4 = swift_unknownObjectRetain();
  v5 = sub_244241A40(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_244257C98();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_244243124(0, &qword_27EDDBFC0, 0x277D756C0);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_244257CA8();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_2442426B0(v9);
  result = sub_244257CA8();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2442426B0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_244257CD8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_244257C98();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_244242850(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_244242944;

  return v6(v2 + 32);
}

uint64_t sub_244242944()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_244242A58(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_244242B4C(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_244242AE8()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_244242B4C(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_244242B4C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_244257D08();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

void sub_244242BB0()
{
  v1 = OBJC_IVAR___CSReactionView_avatarStackView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75A70]) init];
  v2 = MEMORY[0x277D84F98];
  *(v0 + OBJC_IVAR___CSReactionView_senderReactions) = MEMORY[0x277D84F98];
  *(v0 + OBJC_IVAR___CSReactionView_senderAvatarViews) = v2;
  *(v0 + OBJC_IVAR___CSReactionView_activeEmojiLabels) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR___CSReactionView_cleanupTimer) = 0;
  v3 = OBJC_IVAR___CSReactionView_glowView;
  type metadata accessor for GlowView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_244257E28();
  __break(1u);
}

uint64_t sub_244242C9C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_244242CD4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_244242D2C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[10];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_2442372C8;

  return sub_24423EEB8(v9, v10, v11, v2, v3, v4, v5, v6);
}

uint64_t sub_244242DFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE28, &qword_24425C360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_244242E64()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_244242EAC()
{
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  v6 = v0[8];
  v7 = v0[9];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_2442376A0;

  return sub_24423FF74(v6, v7, v8, v9, v10, v2, v3, v4, v5);
}

uint64_t sub_244242F74()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_244243054(uint64_t a1, int a2)
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

uint64_t sub_244243074(uint64_t result, int a2, int a3)
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

void type metadata accessor for CGPoint()
{
  if (!qword_27EDDBFB8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EDDBFB8);
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_244243124(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_24424316C()
{
  result = qword_27EDDBFC8;
  if (!qword_27EDDBFC8)
  {
    sub_244243124(255, &qword_27EDDBFC0, 0x277D756C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDBFC8);
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

uint64_t sub_244243240()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_244243278()
{
  v1 = *(v0 + 16);
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  CGAffineTransformMakeScale(&v3, 0.00001, 0.00001);
  [v1 setTransform_];
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_244243358()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

void sub_2442433B0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  v8 = *(v1 + 16);
  if (v8 >> 62)
  {
    if (v8 < 0)
    {
      v15 = *(v1 + 16);
    }

    if (sub_244257D08())
    {
      goto LABEL_5;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    swift_beginAccess();
    v9 = *(v1 + 16);
    if (v9 >> 62)
    {
      if (v9 < 0)
      {
        v43 = *(v1 + 16);
      }

      if (sub_244257D08())
      {
LABEL_7:
        v10 = sub_244242AE8();
        if (v10)
        {
LABEL_11:

          swift_endAccess();
          goto LABEL_19;
        }

        v11 = *(v1 + 16);
        if (v11 >> 62)
        {
          if (v11 < 0)
          {
            v44 = *(v1 + 16);
          }

          v45 = sub_244257D08();
          v13 = __OFSUB__(v45, 1);
          v14 = v45 - 1;
          if (!v13)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v13 = __OFSUB__(v12, 1);
          v14 = v12 - 1;
          if (!v13)
          {
LABEL_10:
            v10 = sub_244242A58(v14);
            goto LABEL_11;
          }
        }

        __break(1u);
        return;
      }
    }

    else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_42;
  }

  if (qword_27EDDC5D8 != -1)
  {
LABEL_42:
    swift_once();
  }

  v16 = sub_244257528();
  __swift_project_value_buffer(v16, qword_27EDDC5E0);

  v17 = sub_244257508();
  v18 = sub_244257C48();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v2;
    v22 = v5;
    v23 = v4;
    v24 = v20;
    v47[0] = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_24423CC9C(v21, v3, v47);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_24423CC9C(v23, v22, v47);
    _os_log_impl(&dword_2441FB000, v17, v18, "WARNING: labels array already empty during completion for %s, sender: %s", v19, 0x16u);
    swift_arrayDestroy();
    v25 = v24;
    v4 = v23;
    v5 = v22;
    MEMORY[0x245D5D2D0](v25, -1, -1);
    MEMORY[0x245D5D2D0](v19, -1, -1);
  }

LABEL_19:
  swift_beginAccess();
  v26 = sub_2442423B0(v7);
  swift_endAccess();

  [v7 removeFromSuperview];
  swift_beginAccess();
  v27 = *(v1 + 16);
  if (v27 >> 62)
  {
    if (v27 < 0)
    {
      v42 = *(v1 + 16);
    }

    if (sub_244257D08())
    {
      goto LABEL_32;
    }
  }

  else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_32:

    return;
  }

  v28 = OBJC_IVAR___CSReactionView_senderReactions;
  swift_beginAccess();
  v29 = *(v6 + v28);
  if (*(v29 + 16))
  {
    v30 = *(v6 + v28);

    v31 = sub_2442410B8(v4, v5);
    if (v32)
    {
      v33 = *(*(v29 + 56) + 8 * v31);

      v34 = *(v33 + 2);
      if (v34)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v34 - 1) > *(v33 + 3) >> 1)
        {
          v33 = sub_244240FAC(isUniquelyReferenced_nonNull_native, v34, 1, v33);
        }

        sub_2442438F8(0, 1, 0);
      }

      goto LABEL_30;
    }
  }

  v33 = MEMORY[0x277D84F90];
LABEL_30:
  swift_beginAccess();

  v36 = *(v6 + v28);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *(v6 + v28);
  *(v6 + v28) = 0x8000000000000000;
  sub_2442413D8(v33, v4, v5, v37);

  *(v6 + v28) = v46;
  swift_endAccess();
  v38 = *(v33 + 2);

  if (v38 || *(*(v6 + OBJC_IVAR___CSReactionView_senderAvatarViews) + 16))
  {
    goto LABEL_32;
  }

  (*((*MEMORY[0x277D85000] & **(v6 + OBJC_IVAR___CSReactionView_glowView)) + 0x90))(v39);
  v40 = OBJC_IVAR___CSReactionView_cleanupTimer;
  [*(v6 + OBJC_IVAR___CSReactionView_cleanupTimer) invalidate];
  v41 = *(v6 + v40);
  *(v6 + v40) = 0;
}

unint64_t sub_2442438F8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_2442439B8()
{
  MEMORY[0x245D5D3C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2442439F8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_244243A38(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2442376A0;

  return sub_24423DFA8(a1, v5, v6, v4);
}

uint64_t sub_244243AD8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2442376A0;

  return sub_244242850(a1, v5);
}

uint64_t sub_244243B90(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2442372C8;

  return sub_244242850(a1, v5);
}

void sub_244243C70()
{
  type metadata accessor for CSDefaults();
  v0 = swift_allocObject();
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_244257A48();
  v3 = [v1 initWithSuiteName_];

  *(v0 + 16) = v3;
  qword_27EDDCB38 = v0;
}

uint64_t sub_244243D00()
{
  v0 = swift_allocObject();
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_244257A48();
  v3 = [v1 initWithSuiteName_];

  *(v0 + 16) = v3;
  return v0;
}

uint64_t *sub_244243D8C()
{
  if (qword_27EDDC5F8 != -1)
  {
    swift_once();
  }

  return &qword_27EDDCB38;
}

uint64_t sub_244243DDC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = sub_244257A48();
    v3 = [v1 objectForKey_];

    if (v3)
    {
      sub_244257CB8();
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
    }

    v9 = v7;
    v10 = v8;
    if (*(&v8 + 1))
    {
      sub_24424413C(&v9);
      v4 = sub_244257A48();
      v5 = [v1 BOOLForKey_];

      return v5;
    }
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  sub_24424413C(&v9);
  return 1;
}

id sub_244243EE0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = sub_244257A48();
    v3 = [v1 objectForKey_];

    if (v3)
    {
      sub_244257CB8();
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
    }

    v9 = v7;
    v10 = v8;
    if (*(&v8 + 1))
    {
      sub_24424413C(&v9);
      v4 = sub_244257A48();
      v5 = [v1 BOOLForKey_];

      return v5;
    }
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  sub_24424413C(&v9);
  return 0;
}

void sub_244243FE4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = sub_244257A48();
    v3 = [v1 objectForKey_];

    if (v3)
    {
      sub_244257CB8();
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = 0u;
      v6 = 0u;
    }

    v7 = v5;
    v8 = v6;
    if (*(&v6 + 1))
    {
      sub_24424413C(&v7);
      v4 = sub_244257A48();
      [v1 doubleForKey_];

      return;
    }
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  sub_24424413C(&v7);
}

uint64_t sub_244244104()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_24424413C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFE8, &qword_24425C780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2442441C8()
{
  v0 = sub_244257528();
  __swift_allocate_value_buffer(v0, qword_27EDDC608);
  __swift_project_value_buffer(v0, qword_27EDDC608);
  return sub_244257518();
}

id sub_24424424C()
{
  result = [objc_allocWithZone(type metadata accessor for CSTipsManager()) init];
  qword_27EDDCB40 = result;
  return result;
}

uint64_t sub_244244354@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  v3 = (v1 + OBJC_IVAR___CSTipsManager____lazy_storage___micTip);
  v5 = *(v1 + OBJC_IVAR___CSTipsManager____lazy_storage___micTip);
  v4 = *(v1 + OBJC_IVAR___CSTipsManager____lazy_storage___micTip + 8);
  v6 = *(v1 + OBJC_IVAR___CSTipsManager____lazy_storage___micTip + 16);
  v7 = *(v1 + OBJC_IVAR___CSTipsManager____lazy_storage___micTip + 24);
  v8 = v5;
  v9 = v4;
  v10 = *(v1 + OBJC_IVAR___CSTipsManager____lazy_storage___micTip + 32);
  v11 = v6;
  v12 = v7;
  v13 = v10;
  if (v4 == 1)
  {
    v32 = v10;
    v33 = v7;
    v34 = v6;
    v35 = v5;
    v36 = a1;
    v14 = sub_244257A48();
    v15 = objc_opt_self();
    v16 = [v15 bundleWithIdentifier_];

    if (v16)
    {
      v17 = sub_244257278();
      v19 = v18;
      v20 = sub_244257278();
      v22 = v21;
      v23 = [v15 bundleForClass_];
      v24 = sub_244257A48();
      v25 = [objc_opt_self() imageNamed:v24 inBundle:v23 withConfiguration:0];

      sub_2442471D0(v17, v19, v20, v22, v25, &v38);
      v8 = v38;
      v9 = v39;
      v11 = v40;
      v12 = v41;
      v13 = v42;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
    }

    v38 = v8;
    v39 = v9;
    v40 = v11;
    v41 = v12;
    v42 = v13;
    v26 = *v3;
    v27 = v3[1];
    v28 = v3[2];
    v29 = v3[3];
    v31 = v3[4];
    *v3 = v8;
    v3[1] = v9;
    v3[2] = v11;
    v3[3] = v12;
    v3[4] = v13;
    sub_24424699C(&v38, v37, &qword_27EDDC058, &qword_24425C828);
    sub_24424675C(v26, v27, v28, v29, v31);
    v5 = v35;
    a1 = v36;
    v6 = v34;
    v4 = 1;
    v10 = v32;
    v7 = v33;
  }

  result = sub_244246A04(v5, v4, v6, v7, v10);
  *a1 = v8;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v12;
  a1[4] = v13;
  return result;
}

uint64_t sub_244244624(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE28, &qword_24425C360);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v41 - v8;
  result = sub_244244354(&v45);
  v11 = v46;
  if (v46)
  {
    v12 = v48;
    v49 = v47;
    if (*(v3 + OBJC_IVAR___CSTipsManager_micTipView))
    {
      v50 = v45;
      v51 = v46;
      sub_2442462F0(&v50);
      v52 = v47;
      sub_244237440(&v52, &qword_27EDDC008, &unk_24425CA30);
      v44[0] = v12;
      return sub_244237440(v44, &qword_27EDDBE10, qword_24425C1A8);
    }

    else
    {
      v42 = v45;
      if (qword_27EDDC600 != -1)
      {
        swift_once();
      }

      v43 = v12;
      v13 = sub_244257528();
      __swift_project_value_buffer(v13, qword_27EDDC608);
      v14 = a1;
      v15 = a2;
      v16 = sub_244257508();
      v17 = sub_244257C58();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412546;
        *(v18 + 4) = v14;
        *(v18 + 12) = 2112;
        *(v18 + 14) = v15;
        *v19 = v14;
        v19[1] = v15;
        v20 = v14;
        v21 = v15;
        _os_log_impl(&dword_2441FB000, v16, v17, "registerMicTip inViewController: %@, sourceView: %@", v18, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF00, &qword_24425CA80);
        swift_arrayDestroy();
        MEMORY[0x245D5D2D0](v19, -1, -1);
        MEMORY[0x245D5D2D0](v18, -1, -1);
      }

      v41 = v15;

      v22 = sub_244246AD0();
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFF8, &qword_24425C7D8);
      v24 = *(v23 - 8);
      v25 = *(v24 + 64);
      MEMORY[0x28223BE20](v23);
      v27 = &v41 - v26;
      (*(v24 + 16))(&v41 - v26, v22, v23);
      sub_244257648();
      (*(v24 + 8))(v27, v23);
      v28 = OBJC_IVAR___CSTipsManager_tipObservationTask;
      v29 = *(v3 + OBJC_IVAR___CSTipsManager_tipObservationTask);
      if (v29)
      {
        v50 = v42;
        v51 = v11;

        sub_2442462F0(&v50);
        v52 = v47;
        sub_244237440(&v52, &qword_27EDDC008, &unk_24425CA30);
        v44[0] = v43;
        v30 = v44;
      }

      else
      {
        v31 = sub_244257BD8();
        (*(*(v31 - 8) + 56))(v9, 1, 1, v31);
        v32 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v33 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v34 = v42;
        v35 = v43;
        v50 = v42;
        v51 = v11;
        v52 = v49;
        v53 = v43;
        sub_244257BB8();
        v41 = v41;
        sub_244245DC0(&v50, v44);
        sub_24424699C(&v52, v44, &qword_27EDDC008, &unk_24425CA30);
        sub_24424699C(&v53, v44, &qword_27EDDBE10, qword_24425C1A8);

        v36 = sub_244257BA8();
        v37 = swift_allocObject();
        v38 = MEMORY[0x277D85700];
        *(v37 + 16) = v36;
        *(v37 + 24) = v38;
        *(v37 + 32) = v34;
        *(v37 + 40) = v11;
        *(v37 + 48) = v49;
        *(v37 + 64) = v35;
        *(v37 + 72) = v32;
        v39 = v41;
        *(v37 + 80) = v33;
        *(v37 + 88) = v39;

        v29 = sub_244235AD8(0, 0, v9, &unk_24425C7E8, v37);
        sub_2442462F0(&v50);
        sub_244237440(&v52, &qword_27EDDC008, &unk_24425CA30);
        v30 = &v53;
      }

      sub_244237440(v30, &qword_27EDDBE10, qword_24425C1A8);
      v40 = *(v3 + v28);
      *(v3 + v28) = v29;
    }
  }

  return result;
}

uint64_t sub_244244B8C()
{
  MEMORY[0x245D5D3C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_244244BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[45] = a6;
  v7[46] = a7;
  v7[43] = a4;
  v7[44] = a5;
  v7[47] = sub_244257BB8();
  v7[48] = sub_244257BA8();
  v9 = sub_244257B68();
  v7[49] = v9;
  v7[50] = v8;

  return MEMORY[0x2822009F8](sub_244244C64, v9, v8);
}

uint64_t sub_244244C64()
{
  v20 = *(v0 + 352);
  v21 = *(v0 + 360);
  v1 = *(v0 + 344);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC018, &qword_24425C800);
  *(v0 + 408) = v2;
  v3 = *(v2 - 8);
  *(v0 + 416) = v3;
  v4 = *(v3 + 64) + 15;
  *(v0 + 424) = swift_task_alloc();
  v5 = *(v1 + 32);
  v6 = *(v1 + 16);
  *(v0 + 144) = *v1;
  *(v0 + 160) = v6;
  *(v0 + 176) = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC020, &qword_24425C808);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  sub_2442467E8();
  sub_244257538();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC030, &qword_24425C810);
  *(v0 + 432) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC038, &qword_24425C818) - 8) + 64) + 15;
  swift_task_alloc();
  MEMORY[0x245D5C740](v7);
  sub_24423D4F8(&qword_27EDDC040, &qword_27EDDC038, &qword_24425C818);
  sub_244257BF8();

  sub_244257DF8();
  (*(v8 + 8))(v10, v7);
  sub_244257E08();

  swift_beginAccess();
  swift_beginAccess();
  v14 = *(v0 + 376);
  v15 = sub_244257BA8();
  *(v0 + 440) = v15;
  if (v15)
  {
    swift_getObjectType();
    v16 = sub_244257B68();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  *(v0 + 448) = v16;
  *(v0 + 456) = v18;

  return MEMORY[0x2822009F8](sub_244244F98, v16, v18);
}

uint64_t sub_244244F98()
{
  v1 = v0[55];
  v2 = v0[53];
  v3 = v0[51];
  v4 = sub_244257678();
  v0[58] = v4;
  v5 = *(v4 - 8);
  v0[59] = v5;
  v6 = *(v5 + 64) + 15;
  v0[60] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC048, &qword_24425C820) - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v0[61] = v8;
  v0[62] = sub_244257DE8();
  sub_24423D4F8(&qword_27EDDC050, &qword_27EDDC030, &qword_24425C810);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[63] = v10;
  *v10 = v0;
  v10[1] = sub_244245138;
  v11 = v0[54];
  v12 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v8, v1, v12);
}

uint64_t sub_244245138()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v8 = *v1;

  if (v0)
  {
    v4 = *(v2 + 448);
    v5 = *(v2 + 456);
    v6 = sub_24424543C;
  }

  else
  {
    (*(v2 + 496))();
    v4 = *(v2 + 448);
    v5 = *(v2 + 456);
    v6 = sub_244245260;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_244245260()
{
  v1 = v0[61];
  v2 = v0[58];
  v3 = v0[59];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[60];
    v5 = v0[55];

    sub_244237440(v1, &qword_27EDDC048, &qword_24425C820);

    v6 = v0[49];
    v7 = v0[50];

    return MEMORY[0x2822009F8](sub_244245D30, v6, v7);
  }

  else
  {
    v8 = v0[53];
    v9 = v0[51];
    (*(v3 + 32))(v0[60], v1, v2);

    v10 = sub_244257DF8();
    v0[64] = v11;
    v16 = (v10 + *v10);
    v12 = v10[1];
    v13 = swift_task_alloc();
    v0[65] = v13;
    *v13 = v0;
    v13[1] = sub_2442454AC;
    v14 = v0[60];

    return (v16)(v0 + 66, v14);
  }
}

uint64_t sub_24424543C()
{
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[60];
  v1();
}

uint64_t sub_2442454AC()
{
  v1 = *v0;
  v2 = *(*v0 + 520);
  v3 = *(*v0 + 512);
  v4 = *(*v0 + 480);
  v5 = *(*v0 + 472);
  v6 = *(*v0 + 464);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);
  *(v1 + 529) = *(v1 + 528);
  v7 = *(v1 + 456);
  v8 = *(v1 + 448);

  return MEMORY[0x2822009F8](sub_244245658, v8, v7);
}

uint64_t sub_244245658()
{
  v1 = v0[60];
  v2 = v0[55];

  v3 = v0[49];
  v4 = v0[50];

  return MEMORY[0x2822009F8](sub_2442456C8, v3, v4);
}

uint64_t sub_2442456C8()
{
  v1 = v0[44];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ((*(v0 + 529) & 1) == 0)
    {
      sub_244245F30(1);
      goto LABEL_19;
    }

    v4 = v0[45];
    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
LABEL_19:

      v44 = v0[47];
      v45 = sub_244257BA8();
      v0[55] = v45;
      if (v45)
      {
        swift_getObjectType();
        v46 = sub_244257B68();
        v15 = v47;
      }

      else
      {
        v46 = 0;
        v15 = 0;
      }

      v0[56] = v46;
      v0[57] = v15;
      v13 = sub_244244F98;
      v14 = v46;

      return MEMORY[0x2822009F8](v13, v14, v15);
    }

    v6 = v5;
    if (([v0[46] isHidden] & 1) != 0 || (sub_244244354(v0 + 8), (v7 = v0[9]) == 0))
    {
LABEL_14:

      goto LABEL_19;
    }

    v8 = v0[8];
    v9 = v0[12];
    v0[35] = v8;
    v0[36] = v7;
    *(v0 + 33) = *(v0 + 5);
    v0[41] = v9;
    v0[16] = &type metadata for CSMicTip;
    v0[17] = sub_2442467E8();
    v10 = swift_allocObject();
    v0[13] = v10;
    *(v10 + 16) = v8;
    *(v10 + 24) = v7;
    *(v10 + 32) = *(v0 + 5);
    *(v10 + 48) = v9;
    v11 = objc_allocWithZone(sub_244257558());
    sub_244245DC0((v0 + 35), (v0 + 37));
    sub_24424699C((v0 + 33), (v0 + 39), &qword_27EDDC008, &unk_24425CA30);
    sub_24424699C((v0 + 41), (v0 + 42), &qword_27EDDBE10, qword_24425C1A8);
    v12 = sub_244257568();
    [v12 setOverrideUserInterfaceStyle_];
    v13 = [v6 view];
    if (v13)
    {
      v16 = v13;
      [v13 addSubview_];

      v13 = [v6 view];
      if (v13)
      {
        v48 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFA0, &qword_24425C6A8);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_24425C7C0;
        v18 = [v12 centerXAnchor];
        v13 = [v6 view];
        if (v13)
        {
          v19 = v13;
          v20 = v0[46];
          v21 = [v13 centerXAnchor];

          v22 = [v18 constraintEqualToAnchor_];
          *(v17 + 32) = v22;
          v23 = [v12 topAnchor];
          v24 = [v20 bottomAnchor];
          v25 = [v23 constraintEqualToAnchor_];

          *(v17 + 40) = v25;
          v26 = [v12 widthAnchor];
          v27 = [v20 widthAnchor];
          v28 = [v26 constraintEqualToAnchor_];

          *(v17 + 48) = v28;
          sub_244246884();
          v29 = sub_244257B18();

          [v48 addConstraints_];

          [v12 setAlpha_];
          v30 = objc_opt_self();
          v31 = swift_allocObject();
          *(v31 + 16) = v12;
          v0[6] = sub_2442468D0;
          v0[7] = v31;
          v0[2] = MEMORY[0x277D85DD0];
          v0[3] = 1107296256;
          v0[4] = sub_24423CC58;
          v0[5] = &block_descriptor_38;
          v32 = _Block_copy(v0 + 2);
          v33 = v0[7];
          v34 = v12;

          [v30 animateWithDuration:v32 animations:0.25];
          _Block_release(v32);
          if (qword_27EDDC600 != -1)
          {
            swift_once();
          }

          v35 = sub_244257528();
          __swift_project_value_buffer(v35, qword_27EDDC608);
          v36 = sub_244257508();
          v37 = sub_244257C58();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            _os_log_impl(&dword_2441FB000, v36, v37, "didPresentMicTip", v38, 2u);
            MEMORY[0x245D5D2D0](v38, -1, -1);
          }

          v39 = *&v3[OBJC_IVAR___CSTipsManager_micTipView];
          *&v3[OBJC_IVAR___CSTipsManager_micTipView] = v34;

          sub_2442462F0((v0 + 35));
          sub_244237440((v0 + 33), &qword_27EDDC008, &unk_24425CA30);
          sub_244237440((v0 + 41), &qword_27EDDBE10, qword_24425C1A8);
          goto LABEL_14;
        }

LABEL_27:
        __break(1u);
        return MEMORY[0x2822009F8](v13, v14, v15);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  v40 = v0[48];
  (*(v0[52] + 8))(v0[53], v0[51]);

  v41 = v0[53];

  v42 = v0[1];

  return v42();
}

uint64_t sub_244245D30()
{
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];
  v4 = v0[48];

  (*(v2 + 8))(v1, v3);
  v5 = v0[53];

  v6 = v0[1];

  return v6();
}

uint64_t sub_244245E1C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_244245E84()
{
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[11];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2442372C8;

  return sub_244244BC4(v5, v6, v7, (v0 + 4), v2, v3, v4);
}

void sub_244245F30(char a1)
{
  v2 = *(v1 + OBJC_IVAR___CSTipsManager_micTipView);
  if (v2)
  {
    v4 = qword_27EDDC600;
    v5 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_244257528();
    __swift_project_value_buffer(v6, qword_27EDDC608);
    v22 = v5;
    v7 = sub_244257508();
    v8 = sub_244257C58();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v22;
      *v10 = v2;
      v11 = v22;
      _os_log_impl(&dword_2441FB000, v7, v8, "Dismiss mic tip view %@", v9, 0xCu);
      sub_244237440(v10, &qword_27EDDBF00, &qword_24425CA80);
      MEMORY[0x245D5D2D0](v10, -1, -1);
      MEMORY[0x245D5D2D0](v9, -1, -1);
    }

    if (a1)
    {
      v12 = objc_opt_self();
      v13 = swift_allocObject();
      *(v13 + 16) = v22;
      v27 = sub_24424665C;
      v28 = v13;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_24423CC58;
      v26 = &block_descriptor_2;
      v14 = _Block_copy(&aBlock);
      v15 = v22;

      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      v27 = sub_2442466B8;
      v28 = v16;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_24423FB4C;
      v26 = &block_descriptor_16;
      v17 = _Block_copy(&aBlock);
      v18 = v15;

      [v12 animateWithDuration:v14 animations:v17 completion:0.25];

      _Block_release(v17);
      _Block_release(v14);
      return;
    }

    [v22 removeFromSuperview];
  }

  else
  {
    if (qword_27EDDC600 != -1)
    {
      swift_once();
    }

    v19 = sub_244257528();
    __swift_project_value_buffer(v19, qword_27EDDC608);
    v22 = sub_244257508();
    v20 = sub_244257C38();
    if (os_log_type_enabled(v22, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2441FB000, v22, v20, "No mic tip view to dismiss", v21, 2u);
      MEMORY[0x245D5D2D0](v21, -1, -1);
    }
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_244246680()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2442466B8()
{
  v1 = *(v0 + 16);
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [v1 removeFromSuperview];
}

void sub_24424675C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2 != 1)
  {
    sub_24424676C(a1, a2, a3, a4, a5);
  }
}

void sub_24424676C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
  }
}

unint64_t sub_2442467E8()
{
  result = qword_27EDDC028;
  if (!qword_27EDDC028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDC028);
  }

  return result;
}

uint64_t sub_24424683C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_244246884()
{
  result = qword_27EDDBFA8;
  if (!qword_27EDDBFA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDDBFA8);
  }

  return result;
}