CGFloat GSSetMainScreenInfo(double a1, double a2, float a3, float a4)
{
  __screenWidth = a1;
  __screenHeight = a2;
  __screenScale = LODWORD(a3);
  __screenOrientation = LODWORD(a4);
  return ResetTransforms();
}

CGFloat ResetTransforms()
{
  LODWORD(result) = __screenOrientation;
  if (*&__screenOrientation != 0.0)
  {
    v10 = v0;
    v11 = v1;
    CGAffineTransformMakeRotation(&v9, -*&__screenOrientation);
    *__screenWindowTransform = v9;
    v3 = (__screenWidth / *&__screenScale);
    v4 = (__screenHeight / *&__screenScale);
    v5 = v9.c * v4 + v9.a * v3;
    v6 = v9.d * v4 + v9.b * v3;
    *&v3 = v5;
    *&v6 = v6;
    CGAffineTransformMakeTranslation(&t2, fmaxf(-*&v3, 0.0), fmaxf(-*&v6, 0.0));
    v7 = *__screenWindowTransform;
    CGAffineTransformConcat(&v9, &v7, &t2);
    *__screenPositionTransform = v9;
    return v9.tx;
  }

  return result;
}

void GSInitialize()
{
  if ((GSInitialize_sInitialized & 1) == 0)
  {
    v0 = CFMachPortCreate(0, 0, 0, 0);
    if (v0)
    {
      CFRelease(v0);
    }

    __GSEventClassInitialize();
    __GSKeyboardClassInitialize();
    CGFontDBSetInitializer();
    GSInitialize_sInitialized = 1;
  }
}

uint64_t __GSEventClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  __kGSEventTypeID = result;
  return result;
}

uint64_t __GSKeyboardClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  __kGSKeyboardTypeID = result;
  return result;
}

void _GSEventInitializeApp(int a1, NSObject *a2)
{
  if ((_GSEventInitializeApp__initialized & 1) == 0)
  {
    _GSEventInitializeApp__initialized = 1;
    _GSEventInitializeShared(a2);
    IdentifierCString = GetIdentifierCString();
    if (!IdentifierCString)
    {
      _GSEventInitializeApp_cold_2();
    }

    if (strlen(IdentifierCString) >= 0x80)
    {
      _GSEventInitializeApp_cold_1(&v9);
    }

    if (a1)
    {
      if ((_GSEventInitializeApp__backboard & 1) == 0)
      {
        _GSEventInitializeApp__backboard = 1;
        v8 = 256;
        v5 = _GSRegisterPurpleNamedPortInPrivateNamespace(__PurpleWorkspacePortName);
        __workspacePort = v5;
        v6 = MEMORY[0x277D85F48];
        MEMORY[0x223DF9400](*MEMORY[0x277D85F48], v5, 1, &v8, 1);
        AddSourceForEventPort(__workspacePort, a2);
        v7 = _GSRegisterPurpleNamedPortInPrivateNamespace(__PurpleSystemEventPortName);
        __systemEventPort = v7;
        MEMORY[0x223DF9400](*v6, v7, 1, &v8, 1);
        AddSourceForEventPort(__systemEventPort, a2);
      }
    }
  }
}

void _GSEventInitializeShared(NSObject *a1)
{
  if (a1)
  {
    __eventDeliveryQueue = a1;
    dispatch_retain(a1);
  }

  else
  {
    __eventRunLoop = CFRunLoopGetCurrent();
    CFRetain(__eventRunLoop);
  }

  if (__eventRunLoop)
  {
    v1 = *byte_283743DE0;
    __signalRunLoopSource = CFRunLoopSourceCreate(0, -1, &v1);
    CFRunLoopAddSource(__eventRunLoop, __signalRunLoopSource, *MEMORY[0x277CBF048]);
    CFRunLoopAddSource(__eventRunLoop, __signalRunLoopSource, @"GSEventReceiveRunLoopMode");
  }
}

uint64_t GSEventIsHardwareKeyboardAttached()
{
  result = GetHardwareKeyboardToken();
  if (result)
  {
    state64 = 0;
    if (notify_get_state(result, &state64))
    {
      result = AttachedKeyboardToken;
      if (AttachedKeyboardToken)
      {
        notify_cancel(AttachedKeyboardToken);
        result = 0;
        AttachedKeyboardToken = 0;
      }
    }

    else
    {
      return state64 != 0;
    }
  }

  return result;
}

uint64_t GetHardwareKeyboardToken()
{
  result = AttachedKeyboardToken;
  if (!AttachedKeyboardToken)
  {
    v1 = notify_register_check(kGSEventHardwareKeyboardAvailabilityChangedNotification, &AttachedKeyboardToken);
    result = AttachedKeyboardToken;
    if (v1)
    {
      if (AttachedKeyboardToken)
      {
        notify_cancel(AttachedKeyboardToken);
        result = 0;
        AttachedKeyboardToken = 0;
      }
    }
  }

  return result;
}

char *GetIdentifierCString()
{
  v9[1] = *MEMORY[0x277D85DE8];
  result = GetIdentifierCString___identifierCString;
  if (!GetIdentifierCString___identifierCString)
  {
    MainBundle = CFBundleGetMainBundle();
    if (MainBundle)
    {
      Identifier = CFBundleGetIdentifier(MainBundle);
      if (Identifier)
      {
        v3 = Identifier;
        Length = CFStringGetLength(Identifier);
        CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        v5 = MEMORY[0x28223BE20]();
        v7 = v9 - v6;
        if (CFStringGetCString(v3, v9 - v6, v5 + 1, 0x8000100u))
        {
          GetIdentifierCString___identifierCString = strdup(v7);
        }
      }
    }

    result = GetIdentifierCString___identifierCString;
    if (!GetIdentifierCString___identifierCString)
    {
      v8 = getprogname();
      if (v8)
      {
        result = strdup(v8);
        GetIdentifierCString___identifierCString = result;
      }

      else
      {
        return GetIdentifierCString___identifierCString;
      }
    }
  }

  return result;
}

uint64_t GSEventGetHardwareKeyboardCountry()
{
  result = GetHardwareKeyboardToken();
  if (result)
  {
    state64 = 0;
    if (notify_get_state(result, &state64))
    {
      result = AttachedKeyboardToken;
      if (AttachedKeyboardToken)
      {
        notify_cancel(AttachedKeyboardToken);
        result = 0;
        AttachedKeyboardToken = 0;
      }
    }

    else
    {
      return BYTE1(state64);
    }
  }

  return result;
}

void GSSendAppPreferencesChanged(const __CFString *a1, const __CFString *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  Length = CFStringGetLength(a1);
  CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v5 = MEMORY[0x28223BE20]();
  v7 = v15 - v6;
  CFStringGetCString(a1, v15 - v6, v5 + 1, 0x8000100u);
  v15[0] = 0;
  asprintf(v15, "%s.gsEvents", v7);
  v8 = v15[0];
  if (v15[0])
  {
    LODWORD(v15[0]) = 0;
    if (bootstrap_look_up2())
    {
      v9 = 0;
    }

    else
    {
      v9 = v15[0];
    }

    if (v9 - 1 <= 0xFFFFFFFD)
    {
      v10 = CFStringGetLength(a2);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v10, 0x8000100u);
      v12 = MEMORY[0x28223BE20]();
      v14 = v15 - v13;
      bzero(v15 - v13, v12 + 97);
      *v14 = 60;
      CFStringGetCString(a2, v14 + 88, MaximumSizeForEncoding + 1, 0x8000100u);
      *(v14 + 18) = strlen(v14 + 88) + 1;
      GSSendEvent(v14, v9);
      mach_port_deallocate(*MEMORY[0x277D85F48], v9);
    }

    free(v8);
  }
}

uint64_t GSEventGetHardwareKeyboardType()
{
  result = GetHardwareKeyboardToken();
  if (result)
  {
    state64 = 0;
    if (notify_get_state(result, &state64))
    {
      result = AttachedKeyboardToken;
      if (AttachedKeyboardToken)
      {
        notify_cancel(AttachedKeyboardToken);
        result = 0;
        AttachedKeyboardToken = 0;
      }
    }

    else
    {
      return BYTE2(state64);
    }
  }

  return result;
}

uint64_t GSEventRunModal(uint64_t result)
{
  v1 = result;
  if (result)
  {
LABEL_2:
    if ((__exitRunModal & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_3:
    while (__runLoopModeStack)
    {
      if (CFArrayGetCount(__runLoopModeStack) < 1)
      {
        break;
      }

      v2 = __runLoopModeStack;
      Count = CFArrayGetCount(__runLoopModeStack);
      ValueAtIndex = CFArrayGetValueAtIndex(v2, Count - 1);
      if (!ValueAtIndex)
      {
        break;
      }

      result = CFRunLoopRunInMode(ValueAtIndex, 6.31139904e10, 0);
      if (v1)
      {
        goto LABEL_2;
      }
    }

    result = fprintf(*MEMORY[0x277D85DF8], "%s: NULL run loop mode. Exiting loop\n", "GSEventRunModal");
  }

  __exitRunModal = 0;
  return result;
}

uint64_t GSKeyboardIsGlobeKeyUsagePair(unint64_t a1, unint64_t a2)
{
  v2 = vdupq_n_s64(a1);
  v3 = vdupq_n_s64(a2);
  return vmaxv_u16(vmovn_s32(vandq_s8(vuzp1q_s32(vceqq_s64(v2, xmmword_223D32460), vceqq_s64(v2, xmmword_223D32450)), vuzp1q_s32(vceqq_s64(v3, xmmword_223D32480), vceqq_s64(v3, xmmword_223D32470))))) & 1;
}

CGColorRef GSColorCreateColorWithDeviceRGBA(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  components[4] = *MEMORY[0x277D85DE8];
  components[0] = a1;
  components[1] = a2;
  components[2] = a3;
  components[3] = a4;
  DeviceRGB = GetDeviceRGBColorSpace_sDeviceRGBColorSpace;
  if (!GetDeviceRGBColorSpace_sDeviceRGBColorSpace)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    GetDeviceRGBColorSpace_sDeviceRGBColorSpace = DeviceRGB;
  }

  return CGColorCreate(DeviceRGB, components);
}

CGColorRef GSColorCreateColorWithDeviceRGBAInfo(uint64_t a1)
{
  if (*a1 == 1)
  {
    return GSColorCreateColorWithDeviceRGBA(*(a1 + 4), *(a1 + 8), *(a1 + 12), *(a1 + 16));
  }

  else
  {
    return 0;
  }
}

CGColorRef GSColorCreateWithDeviceWhite(CGFloat a1, CGFloat a2)
{
  components[2] = *MEMORY[0x277D85DE8];
  components[0] = a1;
  components[1] = a2;
  DeviceGray = GetDeviceGrayColorSpace_sGenericGrayColorSpace;
  if (!GetDeviceGrayColorSpace_sGenericGrayColorSpace)
  {
    DeviceGray = CGColorSpaceCreateDeviceGray();
    GetDeviceGrayColorSpace_sGenericGrayColorSpace = DeviceGray;
  }

  return CGColorCreate(DeviceGray, components);
}

void GSColorGetRGBAComponents(CGColor *a1, void *a2, void *a3, void *a4, void *a5)
{
  ColorSpace = CGColorGetColorSpace(a1);
  DeviceRGB = GetDeviceRGBColorSpace_sDeviceRGBColorSpace;
  if (!GetDeviceRGBColorSpace_sDeviceRGBColorSpace)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    GetDeviceRGBColorSpace_sDeviceRGBColorSpace = DeviceRGB;
  }

  v12 = a1;
  if (ColorSpace != DeviceRGB)
  {
    if (!DeviceRGB)
    {
      GetDeviceRGBColorSpace_sDeviceRGBColorSpace = CGColorSpaceCreateDeviceRGB();
    }

    v13 = MEMORY[0x223DF9160]();
    if (!v13)
    {
      goto LABEL_11;
    }

    v14 = v13;
    v12 = CGColorTransformConvertColor();
    CFRelease(v14);
  }

  if (!v12)
  {
LABEL_11:
    *a5 = 0;
    *a4 = 0;
    *a3 = 0;
    *a2 = 0;
    return;
  }

  Components = CGColorGetComponents(v12);
  if (Components)
  {
    *a2 = *Components;
    *a3 = *(Components + 1);
    *a4 = *(Components + 2);
    *a5 = *(Components + 3);
  }

  else
  {
    *a5 = 0;
    *a4 = 0;
    *a3 = 0;
    *a2 = 0;
  }

  if (v12 != a1)
  {

    CFRelease(v12);
  }
}

void GSColorGetRGBAInfo(CGColor *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v9 = 0.0;
    v10 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    GSColorGetRGBAComponents(a1, &v10, &v9, &v8, &v7);
    *a2 = 1;
    v3 = v10;
    v4 = v9;
    *(a2 + 4) = v3;
    *(a2 + 8) = v4;
    v5 = v8;
    v6 = v7;
    *(a2 + 12) = v5;
    *(a2 + 16) = v6;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }
}

__n128 GSEventCreateWithEventRecord(unsigned int *a1)
{
  v1 = CreateWithEventRecord(a1);
  result = *(v1 + 40);
  *(v1 + 24) = result;
  *(v1 + 72) = 0;
  return result;
}

uint64_t CreateWithEventRecord(unsigned int *a1)
{
  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (Instance)
  {
    memcpy((Instance + 16), a1, a1[18] + 88);
  }

  return v3;
}

uint64_t GSEventCopy(uint64_t a1)
{
  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (Instance)
  {
    memcpy((Instance + 16), (a1 + 16), *(a1 + 88) + 88);
  }

  return v3;
}

__CFDictionary *GSEventCreatePlistRepresentation(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 8, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = *(a1 + 88);
  if (v3)
  {
    v4 = CFDataCreate(0, (a1 + 104), v3);
    CFDictionarySetValue(Mutable, @"Data", v4);
    CFRelease(v4);
  }

  if (*(a1 + 64))
  {
    v5 = CFNumberCreate(0, kCFNumberSInt64Type, (a1 + 64));
    CFDictionarySetValue(Mutable, @"Time", v5);
    CFRelease(v5);
  }

  if (*(a1 + 16))
  {
    v6 = CFNumberCreate(0, kCFNumberIntType, (a1 + 16));
    CFDictionarySetValue(Mutable, @"Type", v6);
    CFRelease(v6);
  }

  if (*(a1 + 80))
  {
    v7 = CFNumberCreate(0, kCFNumberSInt32Type, (a1 + 80));
    CFDictionarySetValue(Mutable, @"Flags", v7);
    CFRelease(v7);
  }

  if (*(a1 + 20))
  {
    v8 = CFNumberCreate(0, kCFNumberSInt32Type, (a1 + 20));
    CFDictionarySetValue(Mutable, @"Subtype", v8);
    CFRelease(v8);
  }

  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *MEMORY[0x277CBF348];
  v12 = *(MEMORY[0x277CBF348] + 8);
  if (v9 != *MEMORY[0x277CBF348] || v10 != v12)
  {
    DictionaryRepresentation = CGPointCreateDictionaryRepresentation(*&v9);
    CFDictionarySetValue(Mutable, @"Location", DictionaryRepresentation);
    CFRelease(DictionaryRepresentation);
  }

  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  if (v15 != v11 || v16 != v12)
  {
    v18 = CGPointCreateDictionaryRepresentation(*&v15);
    CFDictionarySetValue(Mutable, @"WindowLocation", v18);
    CFRelease(v18);
  }

  return Mutable;
}

uint64_t GSEventCreateWithPlist(const __CFDictionary *a1)
{
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  Value = CFDictionaryGetValue(a1, @"Data");
  if (Value)
  {
    DWORD2(v21) = CFDataGetLength(Value);
  }

  v3 = CFDictionaryGetValue(a1, @"Time");
  if (v3)
  {
    CFNumberGetValue(v3, kCFNumberSInt64Type, &v20);
  }

  v4 = CFDictionaryGetValue(a1, @"Type");
  if (v4)
  {
    CFNumberGetValue(v4, kCFNumberIntType, &v17);
  }

  v5 = CFDictionaryGetValue(a1, @"Flags");
  if (v5)
  {
    CFNumberGetValue(v5, kCFNumberSInt32Type, &v21);
  }

  v6 = CFDictionaryGetValue(a1, @"Subtype");
  if (v6)
  {
    CFNumberGetValue(v6, kCFNumberSInt32Type, &v17 + 4);
  }

  v7 = CFDictionaryGetValue(a1, @"Location");
  if (v7)
  {
    CGPointMakeWithDictionaryRepresentation(v7, (&v17 + 8));
  }

  v8 = CFDictionaryGetValue(a1, @"WindowLocation");
  if (v8)
  {
    CGPointMakeWithDictionaryRepresentation(v8, (&v18 + 8));
  }

  Instance = _CFRuntimeCreateInstance();
  v10 = Instance;
  if (Instance)
  {
    v11 = v18;
    *(Instance + 16) = v17;
    *(Instance + 32) = v11;
    *(Instance + 96) = v22;
    v12 = v21;
    *(Instance + 64) = v20;
    *(Instance + 80) = v12;
    *(Instance + 48) = v19;
    if (DWORD2(v21))
    {
      v13 = CFDictionaryGetValue(a1, @"Data");
      BytePtr = CFDataGetBytePtr(v13);
      Length = CFDataGetLength(v13);
      memcpy((v10 + 104), BytePtr, Length);
    }

    *(v10 + 24) = *(v10 + 40);
    *(v10 + 72) = 0;
  }

  return v10;
}

__n128 GSEventGetHandInfo@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 104);
  v3 = *(a1 + 120);
  *a2 = result;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 136);
  return result;
}

__n128 GSEventGetPathInfoAtIndex@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a1 + 48 * a2;
  v4 = *(v3 + 160);
  *a3 = *(v3 + 144);
  *(a3 + 16) = v4;
  result = *(v3 + 176);
  *(a3 + 32) = result;
  return result;
}

__n128 GSEventSetPathInfoAtIndex(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a1 + 48 * a3;
  result = *a2;
  v5 = *(a2 + 32);
  *(v3 + 160) = *(a2 + 16);
  *(v3 + 176) = v5;
  *(v3 + 144) = result;
  return result;
}

double GSEventGetInnerMostPathPosition(uint64_t a1)
{
  v1 = 160;
  if (!*(a1 + 138))
  {
    v1 = 40;
  }

  return *(a1 + v1);
}

double GSEventGetOuterMostPathPosition(uint64_t a1)
{
  if (*(a1 + 138))
  {
    v1 = a1 + 48 * (*(a1 + 138) - 1) + 160;
  }

  else
  {
    v1 = a1 + 40;
  }

  return *v1;
}

BOOL GSEventIsChordingHandEvent(uint64_t a1)
{
  if (*(a1 + 16) != 3001)
  {
    return 0;
  }

  v1 = *(a1 + 110);
  if (*(a1 + 108) <= 1u)
  {
    v2 = v1 != 0;
    v3 = v1 == 1;
  }

  else
  {
    v2 = 1;
    v3 = 0;
  }

  return !v3 && v2;
}

uint64_t GSEventGetType(uint64_t a1)
{
  result = *(a1 + 16) & 0xFFFDFFFF;
  if (result == 3001)
  {
    v3 = *(a1 + 104) - 1;
    if (v3 > 5)
    {
      return 0;
    }

    else
    {
      return dword_223D32438[v3];
    }
  }

  return result;
}

uint64_t GSEventSetLocationInWindow(uint64_t result, double a2, double a3)
{
  *(result + 40) = a2;
  *(result + 48) = a3;
  return result;
}

float GSEventGetDeltaX(uint64_t a1)
{
  if (*(a1 + 16) == 22)
  {
    return *(a1 + 108);
  }

  else
  {
    return *(a1 + 108);
  }
}

float GSEventGetDeltaY(uint64_t a1)
{
  if (*(a1 + 16) == 22)
  {
    return *(a1 + 104);
  }

  else
  {
    return *(a1 + 110);
  }
}

uint64_t GSEventIsForceQuitEvent(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (GSEventGetType(result) == 2007)
    {
      return (*(v1 + 108) >> 3) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t GSEventGetUsagePage(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 4 || v1 == 8)
  {
    return *(a1 + 104);
  }

  else
  {
    return 12;
  }
}

BOOL GSEventIsHardwareKeyboardEvent(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1 >= 0xE;
  v4 = v1 == 14;
  v3 = (1 << v1) & 0x4C00;
  v4 = !v4 && v2 || v3 == 0;
  return !v4 && *(a1 + 264) == 1;
}

BOOL GSEventSourceIsHardware(uint64_t a1)
{
  Type = GSEventGetType(a1);
  v3 = (Type - 1000) > 0x13 || ((1 << (Type + 24)) & 0xC3FC3) == 0;
  if (!v3 || (Type & 0xFFFFFFFE) == 0x3FE)
  {
    if (*(a1 + 88) != 8)
    {
      goto LABEL_12;
    }

    v4 = *(a1 + 108);
  }

  else
  {
    v4 = 0;
    v5 = *(a1 + 16);
    if (v5 <= 0xE && ((1 << v5) & 0x5C00) != 0)
    {
      if (*(a1 + 88) == 162)
      {
        v4 = *(a1 + 264);
        return v4 == 1;
      }

LABEL_12:
      v4 = 0;
    }
  }

  return v4 == 1;
}

uint64_t GSEventSetHardwareKeyboardAttachedWithCountryCodeAndType(int a1, unsigned int a2, unsigned int a3)
{
  result = GetHardwareKeyboardToken();
  if (result)
  {
    v7 = a2 << 8;
    if (a1)
    {
      v8 = (v7 | (a3 << 16)) + 1;
    }

    else
    {
      v8 = v7 | (a3 << 16);
    }

    notify_set_state(result, v8);
    v9 = kGSEventHardwareKeyboardAvailabilityChangedNotification;

    return notify_post(v9);
  }

  return result;
}

void GSEventSetCharacters(uint64_t a1, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  if (Length >= 0x18)
  {
    v5.length = 24;
  }

  else
  {
    v5.length = Length;
  }

  *(a1 + 112) = v5.length;
  v5.location = 0;

  CFStringGetCharacters(theString, v5, (a1 + 114));
}

uint64_t GSEventIsTabKeyEvent(uint64_t result)
{
  if (result)
  {
    v1 = result;
    Type = GSEventGetType(result);
    result = 0;
    if (Type <= 0xE && ((1 << Type) & 0x4C00) != 0)
    {
      return GSEventIsKeyCharacterEventType(v1, 9) || GSEventIsKeyCharacterEventType(v1, 25);
    }
  }

  return result;
}

BOOL GSEventIsKeyCharacterEventType(uint64_t a1, int a2)
{
  Type = GSEventGetType(a1);
  v5 = 0;
  if (Type <= 0xE && ((1 << Type) & 0x4C00) != 0)
  {
    v6 = CFStringCreateWithCharacters(0, (a1 + 164), *(a1 + 162));
    if (v6)
    {
      v7 = v6;
      v5 = CFStringGetLength(v6) == 1 && CFStringGetCharacterAtIndex(v7, 0) == a2;
      CFRelease(v7);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t GSEventGetKeyCode(uint64_t result)
{
  if (result)
  {
    v1 = result;
    Type = GSEventGetType(result);
    result = 0;
    if (Type <= 0xE && ((1 << Type) & 0x4C00) != 0)
    {
      return *(v1 + 104);
    }
  }

  return result;
}

uint64_t GSEventCreateKeyEvent(unsigned int a1, const __CFString *a2, const __CFString *a3, int a4, __int16 a5, __int16 a6, __int16 a7, double a8, double a9)
{
  result = 0;
  v27 = *MEMORY[0x277D85DE8];
  if (a1 <= 0xE && ((1 << a1) & 0x4C00) != 0)
  {
    v25 = 0u;
    memset(v26, 0, 154);
    v23 = 0u;
    v24 = 0u;
    memset(v22, 0, sizeof(v22));
    DWORD2(v24) = 162;
    LODWORD(v24) = a4;
    *&v23 = GSCurrentEventTimestamp();
    Length = CFStringGetLength(a2);
    if (Length <= 0x18uLL)
    {
      v19 = Length;
    }

    else
    {
      v19 = 24;
    }

    LOWORD(v26[0]) = v19;
    v28.length = v19;
    v28.location = 0;
    CFStringGetCharacters(a2, v28, v26 + 1);
    v20 = CFStringGetLength(a3);
    if (v20 <= 0x18uLL)
    {
      v21 = v20;
    }

    else
    {
      v21 = 24;
    }

    WORD1(v26[3]) = v21;
    v29.length = v21;
    v29.location = 0;
    CFStringGetCharacters(a3, v29, &v26[3] + 2);
    WORD4(v25) = a5;
    WORD3(v26[9]) = a6;
    WORD4(v26[9]) = a7;
    result = CreateWithEventRecord(v22);
    *(result + 24) = *(result + 40);
    *(result + 72) = 0;
    *(result + 16) = a1;
    *(result + 40) = a8;
    *(result + 48) = a9;
  }

  return result;
}

unint64_t GSCurrentEventTimestamp()
{
  v0 = mach_absolute_time();
  if (GetTimebase_once != -1)
  {
    GSCurrentEventTimestamp_cold_1();
  }

  return v0 * GetTimebase___timebase / HIDWORD(GetTimebase___timebase);
}

void GSEventSendKeyEvent(unsigned int a1, const __CFString *a2, const __CFString *a3, int a4, __int16 a5, __int16 a6, __int16 a7, double a8, double a9)
{
  if (a1 <= 0xE && ((1 << a1) & 0x4C00) != 0)
  {
    KeyEvent = GSEventCreateKeyEvent(a1, a2, a3, a4, a5, a6, a7, a8, a9);
    if (KeyEvent)
    {
      v10 = KeyEvent;
      GSGetPurpleApplicationPort();

      CFRelease(v10);
    }
  }
}

uint64_t GSSendEvent(unsigned int *a1, unsigned int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a2 - 1 > 0xFFFFFFFD)
  {
    return 268435459;
  }

  pthread_mutex_lock(&__dispatchQueuesLock);
  if (__dispatchQueues && (v4 = CFArrayGetCount(__dispatchQueues), v4 >= 1))
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(__dispatchQueues, v6);
      if (ValueAtIndex[4] == a2)
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_7;
      }
    }

    v14 = ValueAtIndex;
    v15 = CreateWithEventRecord(a1);
    PurplePushEvent(v14, v15);
    v8 = 0;
  }

  else
  {
LABEL_7:
    v8 = _GSSendEvent(a1, a2, 0);
    if (v8 == 268435460)
    {
      if (!__dispatchQueues)
      {
        __dispatchQueues = CFArrayCreateMutable(0, 0, 0);
      }

      v9 = malloc_type_malloc(0x18uLL, 0x1020040EDCEB4C7uLL);
      *v9 = 0;
      v9[1] = 0;
      *(v9 + 4) = a2;
      CFArrayAppendValue(__dispatchQueues, v9);
      memset(&v20, 0, sizeof(v20));
      pthread_attr_init(&v20);
      pthread_attr_setdetachstate(&v20, 2);
      v19 = 0;
      pthread_create(&v19, &v20, DispatchThread, a2);
      pthread_attr_destroy(&v20);
      if (__dispatchQueues)
      {
        Count = CFArrayGetCount(__dispatchQueues);
        if (Count >= 1)
        {
          v11 = Count;
          v12 = 0;
          while (1)
          {
            v13 = CFArrayGetValueAtIndex(__dispatchQueues, v12);
            if (v13[4] == a2)
            {
              break;
            }

            if (v11 == ++v12)
            {
              goto LABEL_19;
            }
          }

          v16 = v13;
          v17 = CreateWithEventRecord(a1);
          PurplePushEvent(v16, v17);
        }
      }

LABEL_19:
      v8 = 268435460;
    }
  }

  pthread_mutex_unlock(&__dispatchQueuesLock);
  return v8;
}

uint64_t GSGetPurpleApplicationPort()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    GSGetPurpleApplicationPort_cold_1();
  }

  return 0;
}

BOOL GSEventQueueContainsMouseEvent()
{
  v0 = &_queue;
  do
  {
    v0 = *v0;
  }

  while (v0 && GSEventGetType(v0[1]) - 7 < 0xFFFFFFFA);
  return v0 != 0;
}

void GSEventInitializeAsExtension()
{
  if ((GSEventInitializeAsExtension__initialized & 1) == 0)
  {
    GSEventInitializeAsExtension__initialized = 1;
    _GSEventInitializeShared(0);
  }
}

uint64_t GSEventFinishedActivating(int a1, int a2, char a3, char a4)
{
  v7 = a1 != 0;
  v14[1] = *MEMORY[0x277D85DE8];
  IdentifierCString = GetIdentifierCString();
  v9 = strlen(IdentifierCString);
  v10 = MEMORY[0x28223BE20]();
  v11 = (v14 - ((v10 + 114) & 0xFFFFFFFFFFFFFFF0));
  bzero(v11, v10 + 99);
  *v11 = 2001;
  v11[18] = v9 + 11;
  v11[22] = a2;
  v11[23] = 2 * v7;
  *(v11 + 96) = a3;
  *(v11 + 97) = a4;
  memcpy(v11 + 98, IdentifierCString, v9 + 1);
  v12 = GSGetPurpleSystemEventPort();
  return GSSendEvent(v11, v12);
}

uint64_t GSSendSystemEvent(unsigned int *a1)
{
  v2 = GSGetPurpleSystemEventPort();

  return GSSendEvent(a1, v2);
}

uint64_t GSEventCreateApplicationSuspendEvent(int a1, int a2, char a3, char a4, char a5, const __CFString *a6, double a7)
{
  v19[1] = *MEMORY[0x277D85DE8];
  IdentifierCString = GetIdentifierCString();
  v15 = strlen(IdentifierCString);
  MEMORY[0x28223BE20]();
  v17 = v19 - ((v16 + 15) & 0x1FFFFFFF0);
  bzero(v17, v16);
  *v17 = a1;
  *(v17 + 18) = v15 + 153;
  if (a6)
  {
    CFStringGetCString(a6, v17 + 96, 128, 0x8000100u);
  }

  *(v17 + 28) = a7;
  *(v17 + 58) = a2;
  v17[236] = a3;
  v17[237] = a4;
  v17[238] = a5;
  memcpy(v17 + 239, IdentifierCString, v15 + 1);
  result = CreateWithEventRecord(v17);
  *(result + 24) = *(result + 40);
  *(result + 72) = 0;
  return result;
}

void GSSendApplicationSuspendEvent(int a1, int a2, char a3, char a4, char a5, const __CFString *a6, double a7)
{
  ApplicationSuspendEvent = GSEventCreateApplicationSuspendEvent(a1, a2, a3, a4, a5, a6, a7);
  if (ApplicationSuspendEvent)
  {
    v8 = ApplicationSuspendEvent;
    v9 = GSGetPurpleSystemEventPort();
    GSSendEvent(v8 + 4, v9);

    CFRelease(v8);
  }
}

void GSSendApplicationFinishedBackgroundContentFetchingEventWithSequenceNumber(int a1, int a2, int a3)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v10, 0, 28);
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v6 = 0u;
  v5 = 2017;
  v10[5] = a1;
  v10[1] = 16;
  v10[7] = a2;
  v10[8] = a3;
  v3 = CreateWithEventRecord(&v5);
  *(v3 + 24) = *(v3 + 40);
  *(v3 + 72) = 0;
  v4 = GSGetPurpleSystemEventPort();
  GSSendEvent((v3 + 16), v4);

  CFRelease(v3);
}

uint64_t GSSendWorkspaceEvent(unsigned int *a1)
{
  v2 = GSGetPurpleSystemEventPort();

  return GSSendEvent(a1, v2);
}

void GSSendApplicationFinishedBackgroundNotificationActionEvent()
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6 = 0u;
  v5 = 0u;
  v4 = 0u;
  v3 = 0u;
  v2 = 2020;
  v7[1] = 8;
  v0 = CreateWithEventRecord(&v2);
  *(v0 + 24) = *(v0 + 40);
  *(v0 + 72) = 0;
  v1 = GSGetPurpleSystemEventPort();
  GSSendEvent((v0 + 16), v1);

  CFRelease(v0);
}

uint64_t GSCopyPurpleNamedPort()
{
  if (bootstrap_look_up2())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

void GSEventSendApplicationOpenURL(const __CFURL *a1, unsigned int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = CFURLGetString(a1);
  if (v3)
  {
    v4 = v3;
    Length = CFStringGetLength(v3);
    v6 = Length;
    v7 = Length + 97;
    v8 = v9;
    if ((Length + 97) < 0x401 || (v8 = malloc_type_malloc(Length + 97, 0x1080040336588F0uLL)) != 0)
    {
      bzero(v8, v7);
      *v8 = 2006;
      *(v8 + 18) = v6 + 9;
      v11.location = 0;
      v11.length = v6;
      CFStringGetBytes(v4, v11, 0x8000100u, 0, 0, v8 + 96, v6 + 1, 0);
      GSSendEvent(v8, a2);
      if (v8 != v9)
      {
        free(v8);
      }
    }
  }
}

uint64_t GSGetPurpleSystemAppPort()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    GSGetPurpleSystemAppPort_cold_1();
  }

  return 0;
}

uint64_t GSGetPurpleSystemEventPort()
{
  pthread_mutex_lock(&GSGetPurpleSystemEventPort_portLock);
  ptype = 0;
  v0 = MEMORY[0x277D85F48];
  if (mach_port_type(*MEMORY[0x277D85F48], GSGetPurpleSystemEventPort_port, &ptype) || (ptype & 0x100000) != 0)
  {
    if ((GSGetPurpleSystemEventPort_port + 1) >= 2)
    {
      mach_port_deallocate(*v0, GSGetPurpleSystemEventPort_port);
    }

    v5 = 0;
    v1 = bootstrap_look_up2();
    v2 = v5;
    if (v1)
    {
      v2 = 0;
    }

    GSGetPurpleSystemEventPort_port = v2;
  }

  pthread_mutex_unlock(&GSGetPurpleSystemEventPort_portLock);
  return GSGetPurpleSystemEventPort_port;
}

uint64_t GSCopyPurpleNamedPerPIDPort()
{
  bootstrap_look_up2();
  if (bootstrap_look_up2())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t _GSRegisterPurpleNamedPortInPrivateNamespace(const char *a1)
{
  name = 0;
  if (bootstrap_check_in2())
  {
    v2 = MEMORY[0x277D85F48];
    inserted = mach_port_allocate(*MEMORY[0x277D85F48], 1u, &name);
    if (inserted || (inserted = mach_port_insert_right(*v2, name, name, 0x14u)) != 0)
    {
      v4 = inserted;
    }

    else
    {
      v4 = bootstrap_register2();
      mach_port_deallocate(*v2, name);
      if (!v4)
      {
        return name;
      }
    }

    mach_port_mod_refs(*v2, name, 1u, -1);
    v7 = 0;
    v6 = mach_error_string(v4);
    asprintf(&v7, "Couldn't register %s with the bootstrap server. Error: %s (%d).\nThis generally means that another instance of this process was already running or is hung in the debugger.", a1, v6, v4);
    syslog(3, "%s %s", "_GSRegisterPurpleNamedPortInPrivateNamespace", v7);
    _GSWriteStackshot(v7);
    *MEMORY[0x277CBEC18] = v7;
    abort();
  }

  return name;
}

void GSEventStopModal()
{
  __exitRunModal = 1;
  Current = CFRunLoopGetCurrent();

  CFRunLoopStop(Current);
}

void GSEventPushRunLoopMode(void *value)
{
  Mutable = __runLoopModeStack;
  if (!__runLoopModeStack)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    __runLoopModeStack = Mutable;
  }

  CFArrayAppendValue(Mutable, value);
  v3 = __eventRunLoop;

  CFRunLoopStop(v3);
}

void GSEventPopRunLoopMode(const __CFString *a1)
{
  v1 = __runLoopModeStack;
  if (__runLoopModeStack)
  {
    Count = CFArrayGetCount(__runLoopModeStack);
    ValueAtIndex = CFArrayGetValueAtIndex(v1, Count - 1);
    if (ValueAtIndex)
    {
      if (CFStringCompare(a1, ValueAtIndex, 0) == kCFCompareEqualTo)
      {
        v5 = __runLoopModeStack;
        v6 = CFArrayGetCount(__runLoopModeStack);
        CFArrayRemoveValueAtIndex(v5, v6 - 1);
      }
    }
  }

  v7 = __eventRunLoop;

  CFRunLoopStop(v7);
}

uint64_t _GSSendEvent(int *a1, int a2, int a3)
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (*a1 == 3001)
  {
    v6 = 28 * *(a1 + 122) + 120;
  }

  else
  {
    v6 = a1[18] + 84;
  }

  MEMORY[0x28223BE20]();
  v9 = v22 - v8;
  if (v6 < 0x401)
  {
    v10 = v22 - v8;
  }

  else
  {
    v10 = malloc_type_malloc(v6, 0x29335392uLL);
    v7 = *a1;
  }

  *(v10 + 6) = v7;
  *(v10 + 7) = a1[1];
  *(v10 + 2) = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 2)), *(a1 + 6));
  *(v10 + 12) = 0;
  *(v10 + 15) = 0;
  *(v10 + 16) = a1[16];
  *(v10 + 17) = 0;
  *(v10 + 18) = v6 - 84;
  *(v10 + 76) = *(a1 + 10);
  v11 = *(a1 + 10);
  if (v11)
  {
    if (GetTimebase_once != -1)
    {
      GSCurrentEventTimestamp_cold_1();
    }

    v12 = v11 * GetTimebase___timebase / HIDWORD(GetTimebase___timebase);
  }

  else
  {
    v12 = GSCurrentEventTimestamp();
  }

  *(v10 + 52) = v12;
  v13 = *(v10 + 18);
  if (*a1 == 3001 && v13 >= 0x28)
  {
    *(v10 + 21) = a1[22];
    *(v10 + 44) = *(a1 + 46);
    *(v10 + 45) = *(a1 + 47);
    *(v10 + 23) = a1[24];
    *(v10 + 24) = a1[25];
    *(v10 + 25) = a1[26];
    *(v10 + 26) = a1[27];
    *(v10 + 27) = a1[28];
    *(v10 + 28) = a1[29];
    v10[116] = *(a1 + 120);
    v10[117] = *(a1 + 121);
    v14 = *(a1 + 122);
    v10[118] = v14;
    if (v14 && 8 * v14 + 40 <= v13)
    {
      v15 = 0;
      v16 = a1 + 32;
      v17 = 28 * v14;
      do
      {
        v18 = &v10[v15];
        v18[120] = *v16;
        *(v18 + 121) = *(v16 + 1);
        *(v18 + 124) = *(v16 + 1);
        *(v18 + 132) = vcvt_f32_f64(*(v16 + 1));
        *(v18 + 140) = v16[8];
        v15 += 28;
        v16 += 12;
      }

      while (v17 != v15);
    }
  }

  else
  {
    memcpy(v10 + 84, a1 + 22, v13);
  }

  *v10 = 19;
  *(v10 + 1) = v6;
  *(v10 + 2) = a2;
  *(v10 + 3) = 0;
  if (a3)
  {
    v19 = 1;
  }

  else
  {
    v19 = 17;
  }

  *(v10 + 4) = 0;
  *(v10 + 5) = 123;
  v20 = mach_msg(v10, v19, (v6 + 3) & 0xFFFFFFFC, 0, 0, 0, 0);
  if (v10 != v9)
  {
    free(v10);
  }

  return v20;
}

uint64_t GSSendSimpleEventWithSubtype(unsigned int a1, unsigned int a2, unsigned int a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v6 = 0u;
  v5 = 0u;
  v4[0] = a1;
  v4[1] = a2;
  return GSSendEvent(v4, a3);
}

uint64_t GSSendSimpleEvent(unsigned int a1, unsigned int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v7 = 0u;
  v6 = 0u;
  v5 = 0u;
  v4 = 0u;
  v3[0] = a1;
  v3[1] = 0;
  return GSSendEvent(v3, a2);
}

uint64_t GSEventVibrateForDuration(int a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  v3 = 1100;
  v9 = 0;
  v10 = a1;
  DWORD1(v8) = 4;
  v1 = GSGetPurpleSystemEventPort();
  return GSSendEvent(&v3, v1);
}

uint64_t GSEventStopVibrator()
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  v3 = 0u;
  v8 = 0;
  v2 = 1100;
  DWORD1(v7) = 4;
  v0 = GSGetPurpleSystemEventPort();
  return GSSendEvent(&v2, v0);
}

uint64_t GSEventLockDevice()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = GSGetPurpleSystemEventPort();
  v7 = 0u;
  v6 = 0u;
  v5 = 0u;
  v4 = 0u;
  v3 = 0u;
  v2 = 1014;
  return GSSendEvent(&v2, v0);
}

uint64_t GSEventResetIdleTimer()
{
  v10 = *MEMORY[0x277D85DE8];
  if (GSEventsIdleTimerLog_onceToken != -1)
  {
    GSEventResetIdleTimer_cold_1();
  }

  v0 = GSEventsIdleTimerLog_logTag;
  if (os_log_type_enabled(GSEventsIdleTimerLog_logTag, OS_LOG_TYPE_FAULT))
  {
    GSEventResetIdleTimer_cold_2(v0);
  }

  v9 = 0;
  v8 = 0u;
  v7 = 0u;
  v6 = 0u;
  v5 = 0u;
  v4 = 0u;
  v3 = 100;
  v1 = GSGetPurpleSystemEventPort();
  return GSSendEvent(&v3, v1);
}

uint64_t GSEventAccessoryAvailabilityChanged(int a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v6 = 0u;
  v5 = 0u;
  v4 = 4000;
  v10 = 0;
  v11 = a1;
  DWORD1(v9) = 8;
  v12 = a2;
  v2 = GSGetPurpleSystemEventPort();
  return GSSendEvent(&v4, v2);
}

uint64_t GSEventCreateAccessoryKeyStateEvent(uint64_t result, int a2)
{
  if (result)
  {
    v3 = result;
    if (GSEventGetType(result) == 4001)
    {
      result = GSEventCopy(v3);
      *(result + 80) = a2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double GSMainScreenPixelSize()
{
  if (*&__screenScale == 0.0)
  {
    FetchScreenInfoFromCapabilities();
  }

  return __screenWidth;
}

CGFloat FetchScreenInfoFromCapabilities()
{
  __screenScale = 1065353216;
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    Value = CFDictionaryGetValue(v0, @"main-screen-width");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberIntType, &__screenWidth);
    }

    v3 = CFDictionaryGetValue(v1, @"main-screen-height");
    if (v3)
    {
      CFNumberGetValue(v3, kCFNumberIntType, &__screenHeight);
    }

    v4 = CFDictionaryGetValue(v1, @"main-screen-scale");
    if (v4)
    {
      CFNumberGetValue(v4, kCFNumberFloatType, &__screenScale);
    }

    v5 = CFDictionaryGetValue(v1, @"main-screen-orientation");
    if (v5)
    {
      CFNumberGetValue(v5, kCFNumberFloatType, __screenOrientation);
    }

    CFRelease(v1);
  }

  v6 = MGCopyAnswer();
  if (v6)
  {
    v7 = v6;
    BytePtr = CFDataGetBytePtr(v6);
    Length = CFDataGetLength(v7);
    if (Length >= 0x10)
    {
      v10 = &BytePtr[Length & 0xFFFFFFFFFFFFFFF0];
      v11 = *(v10 - 2);
      v12 = __screenOrientation[0];
      if (fabs(__screenOrientation[0]) >= 0.00000011920929 && (fabs(v12 + -1.57079633) < 0.00000011920929 || fabs(v12 + -4.71238898) < 0.00000011920929))
      {
        v13 = *(v10 - 1);
      }

      else
      {
        v13 = *(v10 - 2);
        v11 = *(v10 - 1);
      }

      if (v13 != __screenWidth && v11 != __screenHeight)
      {
        __screenWidth = v13;
        __screenHeight = v11;
      }
    }

    CFRelease(v7);
  }

  if (*&__screenScale == 1.0)
  {
    v14 = __screenHeight == 960 || __screenHeight == 1136;
    v15 = v14;
    if (__screenWidth == 640 && v15 || __screenWidth == 1536 && __screenHeight == 2048 || __screenWidth == 2048 && __screenHeight == 1536)
    {
      __screenScale = 0x40000000;
    }
  }

  return ResetTransforms();
}

double GSMainScreenPointSize()
{
  v0 = *&__screenScale;
  if (*&__screenScale == 0.0)
  {
    FetchScreenInfoFromCapabilities();
    v0 = *&__screenScale;
  }

  return (__screenWidth / v0);
}

float GSMainScreenScaleFactor()
{
  result = *&__screenScale;
  if (*&__screenScale == 0.0)
  {
    FetchScreenInfoFromCapabilities();
    return *&__screenScale;
  }

  return result;
}

float GSMainScreenOrientation()
{
  if (*&__screenScale == 0.0)
  {
    FetchScreenInfoFromCapabilities();
  }

  return __screenOrientation[0];
}

double GSMainScreenWindowTransform@<D0>(_OWORD *a1@<X8>)
{
  if (*&__screenScale == 0.0)
  {
    FetchScreenInfoFromCapabilities();
  }

  v2 = *&__screenWindowTransform[16];
  *a1 = *__screenWindowTransform;
  a1[1] = v2;
  result = *&__screenWindowTransform[32];
  a1[2] = *&__screenWindowTransform[32];
  return result;
}

double GSMainScreenPositionTransform@<D0>(_OWORD *a1@<X8>)
{
  if (*&__screenScale == 0.0)
  {
    FetchScreenInfoFromCapabilities();
  }

  v2 = *&__screenPositionTransform[16];
  *a1 = *__screenPositionTransform;
  a1[1] = v2;
  result = *&__screenPositionTransform[32];
  a1[2] = *&__screenPositionTransform[32];
  return result;
}

uint64_t PurpleEventCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    __lastRecievedPort = a4;
  }

  if (a1)
  {
    a1 = CreateWithMachMessage(a1);
  }

  _PurpleEventCallback(a1);
  return 0;
}

uint64_t CreateWithMachMessage(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 < 0x54)
  {
    return 0;
  }

  v3 = v1 - 84;
  if (*(a1 + 24) != 3001)
  {
    if (v3 >= *(a1 + 72))
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v3 < 0x24 || 28 * *(a1 + 118) + 36 > v3)
  {
    return 0;
  }

LABEL_9:
  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    v7 = *(a1 + 40);
    *(Instance + 24) = vcvtq_f64_f32(*(a1 + 32));
    *(Instance + 16) = *(a1 + 24);
    *(Instance + 20) = *(a1 + 28);
    *(Instance + 40) = vcvtq_f64_f32(v7);
    *(Instance + 56) = 0;
    *(Instance + 64) = *(a1 + 52);
    *(Instance + 72) = 0;
    *(Instance + 80) = *(a1 + 64);
    *(Instance + 84) = 0;
    v8 = *(a1 + 72);
    *(Instance + 88) = v8;
    *(Instance + 96) = *(a1 + 76);
    if (*(a1 + 24) == 3001)
    {
      *(Instance + 104) = *(a1 + 84);
      *(Instance + 108) = *(a1 + 88);
      *(Instance + 110) = *(a1 + 90);
      *(Instance + 112) = *(a1 + 92);
      *(Instance + 116) = *(a1 + 96);
      *(Instance + 120) = *(a1 + 100);
      *(Instance + 124) = *(a1 + 104);
      *(Instance + 128) = *(a1 + 108);
      *(Instance + 132) = *(a1 + 112);
      *(Instance + 136) = *(a1 + 116);
      *(Instance + 137) = *(a1 + 117);
      v9 = *(a1 + 118);
      *(Instance + 138) = v9;
      if (v9)
      {
        v10 = 0;
        v11 = a1 + 120;
        v12 = (Instance + 184);
        do
        {
          *(v12 - 40) = *v11;
          *(v12 - 39) = *(v11 + 1);
          *(v12 - 36) = *(v11 + 4);
          *(v12 - 3) = vcvtq_f64_f32(*(v11 + 12));
          *(v12 - 2) = *(v11 + 20);
          *v12 = 0;
          v12 += 6;
          ++v10;
          v11 += 28;
        }

        while (v10 < *(a1 + 118));
      }
    }

    else
    {
      memcpy((Instance + 104), (a1 + 84), v8);
    }

    v13 = (((*(a1 + 4) + 3) & 0x1FFFFFFFCLL) + a1);
    if (!*v13 && v13[1] >= 0x20u)
    {
      *(v4 + 84) = v13[10];
    }
  }

  return v4;
}

void _PurpleEventCallback(uint64_t a1)
{
  v1 = a1;
  if (a1 && _queue)
  {
    PurplePushEvent(&_queue, a1);
    v1 = 0;
  }

  if (__lastRecievedPort)
  {
    v2 = ReceiveEvent(__lastRecievedPort);
    if (v2)
    {
      v3 = v2;
      do
      {
        PurplePushEvent(&_queue, v3);
        v3 = ReceiveEvent(__lastRecievedPort);
      }

      while (v3);
    }
  }

  if (v1)
  {
    goto LABEL_9;
  }

  if (!_queue)
  {
    return;
  }

  v34 = *_queue;
  v1 = *(_queue + 8);
  free(_queue);
  _queue = v34;
  if (!v34)
  {
    qword_27D0BDA18 = 0;
    if (!v1)
    {
      goto LABEL_79;
    }

LABEL_9:
    if (__disableHandEventCoalescing == 1 && *(v1 + 16) == 3001 && *(v1 + 104) != 2)
    {
      __disableHandEventCoalescing = 0;
    }

    Type = GSEventGetType(v1);
    if ((Type - 5) <= 1)
    {
      v5 = _queue;
      if (_queue)
      {
        v6 = _queue;
        while (1)
        {
          v7 = v5;
          v5 = *v5;
          v8 = v7[1];
          v9 = *(v1 + 16);
          v10 = *(v8 + 16);
          if (v9 == 3001 && v10 == 3001)
          {
            v11 = *(v1 + 104);
            v12 = *(v8 + 104);
            v13 = v11 == 5 || v12 == 5;
            if (!v13 && v11 == v12 && (__disableHandEventCoalescing & 1) == 0)
            {
LABEL_35:
              CFRelease(v1);
              if (_queue == v7)
              {
                v17 = &_queue;
              }

              else
              {
                v17 = v6;
              }

              if (_queue == v7)
              {
                v6 = v5;
              }

              *v17 = v5;
              if (qword_27D0BDA18 == v7)
              {
                qword_27D0BDA18 = v6;
              }

              free(v7);
              v1 = v8;
              v7 = v6;
              goto LABEL_43;
            }

            v14 = v11 != 2 || v12 > 6;
            v15 = (1 << v12) & 0x62;
            if (!v14 && v15 != 0)
            {
              goto LABEL_76;
            }
          }

          else if (v9 == v10)
          {
            goto LABEL_35;
          }

LABEL_43:
          v6 = v7;
          if (!v5)
          {
            goto LABEL_76;
          }
        }
      }

      goto LABEL_76;
    }

    if ((Type & 0xFFFFFFFE) != 0x3F2 || (v18 = _queue, v36 = 0, (v37 = _queue) == 0))
    {
LABEL_76:
      *(v1 + 24) = *(v1 + 40);
      *(v1 + 72) = 0;
      if (__eventCallBack)
      {
        __eventCallBack(v1);
      }

      CFRelease(v1);
      v34 = _queue;
      goto LABEL_79;
    }

    v19 = 0;
    v20 = 0;
    while (1)
    {
      while (1)
      {
        v21 = v18;
        v18 = *v18;
        v22 = *(v21 + 8);
        v23 = *(v1 + 16);
        if (!v20)
        {
          v30 = *(v22 + 16);
          if (v23 == 1010 && v30 == 1011 || (v20 = 0, v23 == 1011) && v30 == 1010)
          {
            v36 = v37;
            v20 = v21;
          }

          goto LABEL_72;
        }

        v24 = *(v22 + 16);
        if (v23 == 3001 && v24 == 3001)
        {
          break;
        }

        v13 = v23 == v24;
        v31 = v23 == v24;
        if (v13)
        {
          v32 = 0;
        }

        else
        {
          v32 = v20;
        }

        if ((v31 & v19 & 1) == 0)
        {
          v19 |= v31;
          v20 = v32;
          goto LABEL_72;
        }

LABEL_69:
        v33 = *v20;
        RemoveNode(v21, &v37, v18);
        RemoveNode(v20, &v36, *v20);
        v20 = 0;
        if (v33 == v21)
        {
          v37 = v36;
        }

        v19 = 1;
        if (!v18)
        {
          goto LABEL_76;
        }
      }

      v25 = *(v1 + 104);
      v26 = *(v22 + 104);
      if (v25 == 5 || v26 == 5)
      {
        goto LABEL_72;
      }

      v28 = (v25 == v26) & (__disableHandEventCoalescing ^ 1);
      if (v28)
      {
        v29 = 0;
      }

      else
      {
        v29 = v20;
      }

      if ((v28 & v19) == 1)
      {
        goto LABEL_69;
      }

      v19 |= v28;
      v20 = v29;
LABEL_72:
      v37 = v21;
      if (!v18)
      {
        goto LABEL_76;
      }
    }
  }

  if (v1)
  {
    goto LABEL_9;
  }

LABEL_79:
  if (v34)
  {
    v35 = __signalRunLoopSource;
    if (__signalRunLoopSource)
    {

      CFRunLoopSourceSignal(v35);
    }
  }
}

void *PurplePushEvent(void *a1, uint64_t a2)
{
  result = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
  *result = 0;
  result[1] = a2;
  v5 = a1[1];
  if (v5)
  {
    *v5 = result;
  }

  a1[1] = result;
  if (!*a1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t ReceiveEvent(mach_port_name_t rcv_name)
{
  v10 = *MEMORY[0x277D85DE8];
  *&msg.msgh_bits = 0x40000000000;
  msg.msgh_remote_port = 0;
  msg.msgh_local_port = rcv_name;
  p_msg = &msg;
  v3 = mach_msg(&msg, 50331910, 0, 0x400u, rcv_name, 0, 0);
  if (v3 == 268451844)
  {
    v4 = ((msg.msgh_size + 3) & 0xFFFFFFFC) + 52;
    v5 = malloc_type_malloc(v4, 0x1000040504FFAC1uLL);
    if (v5)
    {
      p_msg = v5;
      v6 = v4;
    }

    else
    {
      v6 = 1024;
    }

    p_msg->msgh_bits = 0;
    p_msg->msgh_size = v6;
    p_msg->msgh_remote_port = 0;
    p_msg->msgh_local_port = rcv_name;
    v3 = mach_msg(p_msg, 2, 0, v6, rcv_name, 0, 0);
  }

  if (v3 == 268451843)
  {
    v7 = 0;
  }

  else
  {
    if (v3)
    {
      ReceiveEvent_cold_1(v3);
    }

    v7 = CreateWithMachMessage(p_msg);
  }

  if (p_msg != &msg)
  {
    free(p_msg);
  }

  return v7;
}

void RemoveNode(CFTypeRef *a1, uint64_t *a2, uint64_t a3)
{
  if (_queue == a1)
  {
    _queue = a3;
  }

  else
  {
    a2 = *a2;
  }

  *a2 = a3;
  if (qword_27D0BDA18 == a1)
  {
    qword_27D0BDA18 = 0;
  }

  CFRelease(a1[1]);

  free(a1);
}

void AddSourceForEventPort(uintptr_t handle, dispatch_queue_t queue)
{
  v2 = handle;
  if (queue)
  {
    v3 = dispatch_source_create(MEMORY[0x277D85D08], handle, 0, queue);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = ___AddDispatchSourceForEventPort_block_invoke;
    handler[3] = &__block_descriptor_tmp;
    handler[4] = v3;
    dispatch_source_set_event_handler(v3, handler);
    dispatch_resume(v3);
  }

  else
  {
    _AddRunLoopSourceForEventPort(handle, *MEMORY[0x277CBF048]);

    _AddRunLoopSourceForEventPort(v2, @"GSEventReceiveRunLoopMode");
  }
}

void _AddRunLoopSourceForEventPort(unsigned int a1, const __CFString *a2)
{
  context.version = 1;
  context.info = a1;
  memset(&context.retain, 0, 40);
  context.schedule = GetPortForInfo;
  context.cancel = PurpleEventCallback;
  v3 = CFRunLoopSourceCreate(0, -1, &context);
  CFRunLoopAddSource(__eventRunLoop, v3, a2);
  CFRelease(v3);
}

void _GSWriteStackshot(const char *a1)
{
  v1 = a1;
  if (_GSWriteStackshot_once == -1)
  {
    if (a1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    _GSWriteStackshot_cold_1();
    if (v1)
    {
LABEL_3:
      if (*v1)
      {
        goto LABEL_5;
      }
    }
  }

  v1 = "(Unknown)";
LABEL_5:
  v2 = _GSWriteStackshot_dyfunc_WriteStackshotReport_stdc;
  if (_GSWriteStackshot_dyfunc_WriteStackshotReport_stdc)
  {

    v2(v1, 3131936839);
  }
}

uint64_t __GetTimebase_block_invoke()
{
  result = mach_timebase_info(&GetTimebase___timebase);
  if (result)
  {
    GetTimebase___timebase = 0x100000001;
  }

  else if (GetTimebase___timebase != HIDWORD(GetTimebase___timebase))
  {
    if (GetTimebase___timebase >= HIDWORD(GetTimebase___timebase))
    {
      v1 = HIDWORD(GetTimebase___timebase);
    }

    else
    {
      v1 = GetTimebase___timebase;
    }

    if (GetTimebase___timebase <= HIDWORD(GetTimebase___timebase))
    {
      v2 = HIDWORD(GetTimebase___timebase);
    }

    else
    {
      v2 = GetTimebase___timebase;
    }

    if (v1)
    {
      do
      {
        v3 = v1;
        v1 = v2 % v1;
        v2 = v3;
      }

      while (v1);
    }

    else
    {
      v3 = v2;
    }

    LODWORD(GetTimebase___timebase) = GetTimebase___timebase / v3;
    HIDWORD(GetTimebase___timebase) = HIDWORD(GetTimebase___timebase) / v3;
  }

  return result;
}

uint64_t DispatchThread(int a1)
{
  v15 = 63;
  v2 = pthread_self();
  pthread_setschedparam(v2, 2, &v15);
  v3 = 0;
  while (1)
  {
    pthread_mutex_lock(&__dispatchQueuesLock);
    if (__dispatchQueues && (Count = CFArrayGetCount(__dispatchQueues), Count >= 1))
    {
      v5 = Count;
      v6 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(__dispatchQueues, v6);
        if (*(ValueAtIndex + 4) == a1)
        {
          break;
        }

        if (v5 == ++v6)
        {
          goto LABEL_7;
        }
      }

      v8 = ValueAtIndex;
    }

    else
    {
LABEL_7:
      v8 = 0;
    }

    v9 = *v8;
    if (!*v8)
    {
      break;
    }

    v11 = *v9;
    v10 = v9[1];
    free(v9);
    *v8 = v11;
    if (!v11)
    {
      v8[1] = 0;
    }

    pthread_mutex_unlock(&__dispatchQueuesLock);
    if (v10 != 0 && !v3)
    {
      v3 = _GSSendEvent(v10 + 4, a1, 1) == 268435459;
      goto LABEL_16;
    }

    if (v10)
    {
LABEL_16:
      CFRelease(v10);
    }
  }

  v12 = __dispatchQueues;
  v16.length = CFArrayGetCount(__dispatchQueues);
  v16.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v12, v16, v8);
  CFArrayRemoveValueAtIndex(__dispatchQueues, FirstIndexOfValue);
  free(v8);
  if (!CFArrayGetCount(__dispatchQueues))
  {
    CFRelease(__dispatchQueues);
    __dispatchQueues = 0;
  }

  pthread_mutex_unlock(&__dispatchQueuesLock);
  return 0;
}

os_log_t __GSEventsIdleTimerLog_block_invoke()
{
  result = os_log_create("GraphicsServices", "IdleTimer");
  GSEventsIdleTimerLog_logTag = result;
  return result;
}

uint64_t GSSystemHasCapability(const __CFString *a1)
{
  if (CFStringCompare(a1, @"explicitContentRestriction", 0))
  {
    abort();
  }

  return MGGetBoolAnswer();
}

uint64_t GSKeyboardHWKeyboardLayoutsPlist()
{
  format[1] = *MEMORY[0x277D85DE8];
  result = GSKeyboardHWKeyboardLayoutsPlist_plist;
  if (!GSKeyboardHWKeyboardLayoutsPlist_plist)
  {
    v1 = KeyboardLayoutsResourcePath();
    v2 = CFStringCreateWithFormat(0, 0, @"%@/USBKeyboardLayouts.plist", v1);
    CFStringGetMaximumSizeOfFileSystemRepresentation(v2);
    MEMORY[0x28223BE20]();
    v4 = format - v3;
    CFStringGetFileSystemRepresentation(v2, format - v3, v5);
    v6 = strlen(v4);
    v7 = CFURLCreateFromFileSystemRepresentation(0, v4, v6, 0);
    v8 = CFReadStreamCreateWithFile(0, v7);
    CFRelease(v2);
    CFRelease(v7);
    if (v8)
    {
      CFReadStreamOpen(v8);
      format[0] = 0;
      GSKeyboardHWKeyboardLayoutsPlist_plist = CFPropertyListCreateWithStream(0, v8, 0, 0, format, 0);
      CFReadStreamClose(v8);
      CFRelease(v8);
      return GSKeyboardHWKeyboardLayoutsPlist_plist;
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "*** error: cannot create stream: %s\n", v4);
      return 0;
    }
  }

  return result;
}

CFStringRef KeyboardLayoutsResourcePath()
{
  result = KeyboardLayoutsResourcePath_path;
  if (!KeyboardLayoutsResourcePath_path)
  {
    v1 = GSSystemRootDirectory();
    result = CFStringCreateWithFormat(0, 0, @"%@/System/Library/KeyboardLayouts/USBKeyboardLayouts.bundle", v1);
    KeyboardLayoutsResourcePath_path = result;
  }

  return result;
}

uint64_t GSKeyboardCreateWithCountryCode(const __CFString *a1, int a2, int a3)
{
  v15 = 0;
  v13 = 0;
  v14 = 0;
  if (!InitFileDataForLayoutName(a1, &v15, &v14, &v13))
  {
    return 0;
  }

  Instance = _CFRuntimeCreateInstance();
  v7 = Instance;
  if (Instance)
  {
    v8 = 2 * (a3 == 15);
    if (a2 != 255)
    {
      v8 = a2;
    }

    *(Instance + 16) = v15;
    v9 = v13;
    v10 = v14;
    *(Instance + 24) = v13;
    *(Instance + 32) = v10;
    *(Instance + 40) = v9;
    *(Instance + 48) = v8;
    *(Instance + 62) = a3;
    *(Instance + 52) = 0;
    *(Instance + 60) = 0;
    if (a1)
    {
      *(Instance + 72) = CFRetain(a1);
      Locale = KeyboardLayoutCreateLocale(a1);
    }

    else
    {
      Locale = 0;
      *(v7 + 72) = 0;
    }

    *(v7 + 160) = Locale;
    *(v7 + 168) = 0;
    *(v7 + 144) = 0;
    *(v7 + 152) = 0;
    *(v7 + 64) = 1490092032;
    pthread_mutex_init((v7 + 80), 0);
  }

  else
  {
    munmap(v13, v14);
    close(v15);
  }

  return v7;
}

uint64_t InitFileDataForLayoutName(const __CFString *a1, int *a2, size_t *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = GSKeyboardHWKeyboardLayoutsForName(a1);
  if (v8 && (Value = CFDictionaryGetValue(v8, @"KeyLayoutFileName"), v10 = KeyboardLayoutsResourcePath(), (v11 = CFStringCreateWithFormat(0, 0, @"%@/uchrs/%@", v10, Value)) != 0) || (v12 = GSSystemRootDirectory(), (v11 = CFStringCreateWithFormat(0, 0, @"%@/System/Library/CoreServices/SpringBoard.app/US.uchr", v12)) != 0))
  {
    v13 = v11;
    CFStringGetMaximumSizeOfFileSystemRepresentation(v11);
    v14 = &v31 - ((MEMORY[0x28223BE20]() + 16) & 0xFFFFFFFFFFFFFFF0);
    CFStringGetFileSystemRepresentation(v13, v14, v15);
    CFRelease(v13);
    v16 = open(v14, 0, 256);
    if (v16 < 0)
    {
      v21 = *MEMORY[0x277D85DF8];
      v22 = __error();
      v23 = strerror(*v22);
      fprintf(v21, "GSKeyboardRef: file open error: %s, (%s)\n", v14, v23);
      return 0;
    }

    v17 = v16;
    memset(&v31, 0, sizeof(v31));
    if (stat(v14, &v31))
    {
      goto LABEL_6;
    }

    LODWORD(v25) = v31.st_size;
    if (!v31.st_size)
    {
      goto LABEL_7;
    }

    v26 = getpagesize();
    v27 = v25 / v26 * v26;
    v28 = v25 == v27;
    v29 = v26 + v27;
    v25 = v28 ? v25 : v29;
    v30 = mmap(0, v25, 1, 1, v17, 0);
    if (v30 == -1)
    {
LABEL_6:
      v18 = *MEMORY[0x277D85DF8];
      v19 = __error();
      v20 = strerror(*v19);
      fprintf(v18, "GSKeyboardRef: stat error: %s\n", v20);
LABEL_7:
      close(v17);
      return 0;
    }

    *a2 = v17;
    *a3 = v25;
    result = 1;
    *a4 = v30;
  }

  else
  {
    CFStringGetCString(a1, &v31, 127, 0x8000100u);
    fprintf(*MEMORY[0x277D85DF8], "GSKeyboardRef: cannot find keylayout for: %s\n", &v31);
    return 0;
  }

  return result;
}

const __CFDictionary *KeyboardLayoutCreateLocale(uint64_t a1)
{
  result = GSKeyboardHWKeyboardLayoutsForName(a1);
  if (result)
  {
    Value = CFDictionaryGetValue(result, @"Locale");
    v3 = *MEMORY[0x277CBECE8];

    return CFLocaleCreate(v3, Value);
  }

  return result;
}

void GSKeyboardRelease(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 144);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 152);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 168);
    if (v4)
    {
      CFRelease(v4);
    }

    pthread_mutex_destroy((a1 + 80));
    munmap(*(a1 + 24), *(a1 + 32));
    close(*(a1 + 16));

    CFRelease(a1);
  }
}

uint64_t GSKeyboardReset(uint64_t result)
{
  if (result)
  {
    v1 = result;
    pthread_mutex_lock((result + 80));
    v2 = *(v1 + 144);
    if (v2)
    {
      CFRelease(v2);
      *(v1 + 144) = 0;
    }

    v3 = *(v1 + 152);
    if (v3)
    {
      CFRelease(v3);
      *(v1 + 152) = 0;
    }

    v4 = *(v1 + 168);
    if (v4)
    {
      CFRelease(v4);
      *(v1 + 168) = 0;
    }

    *(v1 + 60) = 0;
    *(v1 + 52) = 0;

    return pthread_mutex_unlock((v1 + 80));
  }

  return result;
}

void GSKeyboardSetLayout(uint64_t a1, const __CFString *a2)
{
  if (a1)
  {
    if (a2)
    {
      pthread_mutex_lock((a1 + 80));
      v4 = *(a1 + 72);
      pthread_mutex_unlock((a1 + 80));
      if (CFStringCompare(v4, a2, 0))
      {
        v14 = 0;
        v12 = 0;
        v13 = 0;
        if (InitFileDataForLayoutName(a2, &v14, &v13, &v12))
        {
          pthread_mutex_lock((a1 + 80));
          v5 = *(a1 + 24);
          v6 = *(a1 + 32);
          v7 = *(a1 + 16);
          v8 = *(a1 + 72);
          *(a1 + 16) = v14;
          v9 = v12;
          v10 = v13;
          *(a1 + 24) = v12;
          *(a1 + 32) = v10;
          *(a1 + 40) = v9;
          *(a1 + 52) = 0;
          *(a1 + 72) = CFRetain(a2);
          *(a1 + 160) = KeyboardLayoutCreateLocale(a2);
          v11 = *(a1 + 168);
          if (v11)
          {
            CFRelease(v11);
            *(a1 + 168) = 0;
          }

          pthread_mutex_unlock((a1 + 80));
          munmap(v5, v6);
          close(v7);
          CFRelease(v8);
        }
      }
    }
  }
}

uint64_t GSKeyboardGetLayout(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 80));
  v2 = *(a1 + 72);
  pthread_mutex_unlock((a1 + 80));
  return v2;
}

uint64_t GSKeyboardGetLocale(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 80));
  v2 = *(a1 + 160);
  pthread_mutex_unlock((a1 + 80));
  return v2;
}

uint64_t GSKeyboardSetHardwareKeyboardAttached(uint64_t result, int a2)
{
  if (result)
  {
    return GSEventSetHardwareKeyboardAttachedWithCountryCodeAndType(a2, *(result + 62), *(result + 48));
  }

  return result;
}

uint64_t GSKeyboardSetTranslationOptions(uint64_t result, int a2)
{
  if (result)
  {
    v3 = result;
    pthread_mutex_lock((result + 80));
    if (a2 & 1) == 0 && (*(v3 + 64))
    {
      *(v3 + 58) = 0;
      *(v3 + 56) &= ~4u;
    }

    *(v3 + 64) = a2;

    return pthread_mutex_unlock((v3 + 80));
  }

  return result;
}

uint64_t GSKeyboardGetTranslationOptions(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 80));
  v2 = *(a1 + 64);
  pthread_mutex_unlock((a1 + 80));
  return v2;
}

uint64_t GSKeyboardGetModifierState(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 80));
  v2 = *(a1 + 56) << 16;
  pthread_mutex_unlock((a1 + 80));
  return v2;
}

uint64_t GSKeyboardGetLiveModifierState(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 80));
  v2 = *(a1 + 58) << 16;
  pthread_mutex_unlock((a1 + 80));
  return v2;
}

uint64_t GSKeyboardGetStickyLockModifierState(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 80));
  v2 = *(a1 + 60) << 16;
  pthread_mutex_unlock((a1 + 80));
  return v2;
}

uint64_t GSKeyboardGetHWKeyboardType(uint64_t a1)
{
  result = *(a1 + 48);
  if (result <= 201)
  {
    switch(result)
    {
      case 0:
        LODWORD(result) = 202;
        goto LABEL_16;
      case 1:
        LODWORD(result) = 203;
        goto LABEL_16;
      case 2:
        LODWORD(result) = 207;
LABEL_16:
        if ((result - 204) >= 0xFFFFFFFE || result == 207)
        {
          return result;
        }

        else
        {
          return 0;
        }
    }

LABEL_12:
    if (result > 0xCF || (result - 194) >= 0xFFFFFF5D)
    {
      LODWORD(result) = ((result - 1) % 3u) | 0xCC;
    }

    goto LABEL_16;
  }

  if ((result - 202) > 5 || ((1 << (result + 54)) & 0x23) == 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t GSKeyboardSetLayoutContext(uint64_t result, const void *a2)
{
  if (result)
  {
    v3 = result;
    pthread_mutex_lock((result + 80));
    v4 = *(v3 + 168);
    if (v4 != a2)
    {
      if (v4)
      {
        CFRelease(v4);
      }

      if (a2)
      {
        v5 = CFRetain(a2);
      }

      else
      {
        v5 = 0;
      }

      *(v3 + 168) = v5;
    }

    return pthread_mutex_unlock((v3 + 80));
  }

  return result;
}

uint64_t GSKeyboardGetLayoutContext(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 80));
  v2 = *(a1 + 168);
  pthread_mutex_unlock((a1 + 80));
  return v2;
}

uint64_t GSKeyboardHWKeyboardNormalizeInput(uint64_t a1, const void **a2, _DWORD *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((a1 + 80));
  GSKeyboardEnsureHWKeyboardNormalizationMap(a1);
  Value = CFDictionaryGetValue(*(a1 + 144), *a2);
  if (Value)
  {
    v7 = CFDictionaryGetValue(*(a1 + 152), *a2);
    v11 = 8;
    MEMORY[0x28223BE20]();
    v10 = 0;
    if (!GSKeyTranslate(a1, Value, 0, 0, 1, &v10, 8u, &v11, v9))
    {
      *a2 = CFStringCreateWithCharacters(*MEMORY[0x277CBECE8], v9, v11);
      *a3 |= v7;
    }
  }

  return pthread_mutex_unlock((a1 + 80));
}

void GSKeyboardEnsureHWKeyboardNormalizationMap(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 144))
  {
    v2 = *MEMORY[0x277CBECE8];
    v3 = MEMORY[0x277CBF138];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], 0);
    v4 = CFDictionaryCreateMutable(v2, 0, v3, 0);
    for (i = 0; i != 16; ++i)
    {
      v6 = GSKeyboardEnsureHWKeyboardNormalizationMap_modifierCombinations[i];
      for (j = 4; j != 57; ++j)
      {
        v12 = 8;
        MEMORY[0x28223BE20]();
        v11 = 0;
        if (!GSKeyTranslate(a1, j, 0, SWORD1(v6), 1, &v11, v12, &v12, v9))
        {
          v8 = CFStringCreateWithCharacters(v2, v9, v12);
          if (!CFDictionaryContainsKey(v4, v8))
          {
            CFDictionarySetValue(v4, v8, v6);
            CFDictionarySetValue(Mutable, v8, j);
          }

          CFRelease(v8);
        }
      }
    }

    *(a1 + 144) = Mutable;
    *(a1 + 152) = v4;
  }
}

uint64_t GSKeyTranslate(uint64_t a1, unsigned int a2, unsigned int a3, __int16 a4, char a5, int *a6, unsigned int a7, unsigned __int16 *a8, uint64_t a9)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *(a1 + 40);
  v11 = a4 | 0x101;
  if ((a4 & 0x400) == 0)
  {
    v11 = a4;
  }

  if ((v11 & 0x100) != 0)
  {
    LOBYTE(v11) = a4 | 1;
  }

  if ((v11 & 0x80) != 0)
  {
    LOBYTE(v11) = v11 & 0x6F | 0x10;
  }

  if ((v11 & 0x20) != 0)
  {
    LOBYTE(v11) = v11 & 0xDD | 2;
  }

  if ((v11 & 0x40) != 0)
  {
    v12 = v11 & 0xB7 | 8;
  }

  else
  {
    v12 = v11;
  }

  if (!v10 || *v10 != 4098)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (a9)
  {
    if (a8)
    {
      if (a6)
      {
        if (a3 <= 3)
        {
          v17 = *(v10 + 8);
          if (v17)
          {
            *a8 = 0;
            v21 = *a6;
            v22 = *a6;
            v73 = v22;
            if (a3)
            {
              v22 = 0;
            }

            v23 = HIWORD(v21);
            if (a3 == 2)
            {
              v21 >>= 16;
            }

            v70 = v21;
            if (a3 == 2)
            {
              v24 = v23;
            }

            else
            {
              v24 = v22;
            }

            v72 = v24;
            HWKeyboardType = GSKeyboardGetHWKeyboardType(a1);
            v26 = (v10 + 12);
            v27 = v17 - 1;
            if (v17 != 1)
            {
              v28 = (v10 + 40);
              while (HWKeyboardType < *v28 || HWKeyboardType > v28[1])
              {
                v28 += 7;
                if (!--v27)
                {
                  goto LABEL_37;
                }
              }

              v26 = v28;
            }

LABEL_37:
            v29 = v26[2];
            v30 = (v10 + v29);
            v31 = MEMORY[0x277D85DF8];
            if (v29 > 0x4000)
            {
              v32 = v26;
              fprintf(*MEMORY[0x277D85DF8], "GSKeyTranslate - uchr may be corrupt, keyLayoutPtr %08lX, keyModsToTableNumPtr %08lX, keyModifiersToTableNumOffset %08X\n", v10, v10 + v29, v29);
              v31 = MEMORY[0x277D85DF8];
              v26 = v32;
            }

            if (*v30 != 12289)
            {
              fprintf(*v31, "GSKeyTranslate - uchr may be corrupt, keyModifiersToTableNumFormat %04X\n", *v30);
              result = 0xFFFFFFFFLL;
              v34 = v72;
              v35 = v73;
LABEL_94:
              *a6 = v35 | (v34 << 16);
              return result;
            }

            if (v12 >= *(v30 + 1))
            {
              v33 = v30[1];
            }

            else
            {
              v33 = *(v30 + v12 + 8);
            }

            v36 = v10 + v26[3];
            v35 = v73;
            if (*v36 == 16385)
            {
              if (*(v36 + 2) <= a2)
              {
                LOWORD(v38) = -1;
                v39 = -16385;
                v37 = a9;
              }

              else
              {
                v37 = a9;
                if (*(v36 + 4) <= v33)
                {
                  LOWORD(v38) = -1;
                  v39 = -16385;
                }

                else
                {
                  v38 = *(v10 + *(v36 + 4 * v33 + 8) + 2 * a2);
                  v39 = v38 - 0x4000;
                  if (v38 >= 0x4000)
                  {
                    v40 = v26[4];
                    if (v40)
                    {
                      v41 = (v10 + v40);
                      if (*v41 == 20481)
                      {
                        v42 = v38 & 0x3FFF;
                        if (v42 >= v41[1])
                        {
                          fprintf(*v31, "GSKeyTranslate - uchr may be corrupt, stateRecordIndex %04X >= keyStateRecordCount %04X\n");
                        }

                        else
                        {
                          v43 = *&v41[2 * v42 + 2];
                          v44 = (v10 + v43);
                          v46 = (a5 & 1) == 0 && a3 != 1;
                          if (v70)
                          {
                            v47 = v44[2];
                            if (!v44[2])
                            {
LABEL_111:
                              if (a3 == 3 || (v67 = v26, v68 = GSKeyEmitStateTerminator(v10, v26, v70, a7, a8, a9), v26 = v67, !v68))
                              {
                                result = GSKeyEmitCharOrSequence(v10, v26, *v44, a7, a8, a9);
                              }

                              else
                              {
                                result = 0xFFFFFFFFLL;
                              }

                              v34 = 0;
                              if (v46)
                              {
                                v35 = v44[1];
                              }

                              else
                              {
                                v35 = 0;
                              }

                              goto LABEL_94;
                            }

                            v48 = v44[3];
                            if (v48 == 1)
                            {
                              v65 = (v43 + v10 + 10);
                              while (1)
                              {
                                v66 = *(v65 - 1);
                                if (v70 <= v66)
                                {
                                  break;
                                }

                                --v47;
                                v65 += 2;
                                if (!v47)
                                {
                                  goto LABEL_111;
                                }
                              }

                              if (v70 == v66)
                              {
                                result = GSKeyEmitCharOrSequence(v10, v26, *v65, a7, a8, a9);
                                v35 = 0;
LABEL_122:
                                if (v35)
                                {
                                  v69 = 0;
                                }

                                else
                                {
                                  v69 = a3 == 3;
                                }

                                v34 = v72;
                                if (v69)
                                {
                                  v34 = 0x8000;
                                }

                                goto LABEL_94;
                              }

                              goto LABEL_111;
                            }

                            if (v48 == 2)
                            {
                              v49 = (v43 + v10 + 6);
                              while (v47)
                              {
                                v50 = v49[1];
                                if (v70 < v50)
                                {
                                  break;
                                }

                                v51 = *(v49 + 4) + v50;
                                v49 += 4;
                                LOWORD(v47) = v47 - 1;
                                if (v51 >= v70)
                                {
                                  v52 = (v70 - v50) * *(v49 - 3);
                                  v53 = *(v49 - 1);
                                  if (v53 >= 0xFFFE)
                                  {
                                    v54 = 0;
                                  }

                                  else
                                  {
                                    v54 = (v70 - v50) * *(v49 - 3);
                                  }

                                  v55 = v54 + v53;
                                  v56 = *v49;
                                  v57 = v56 + v52;
                                  v58 = v46;
                                  if (v56)
                                  {
                                    v59 = v57;
                                  }

                                  else
                                  {
                                    v59 = 0;
                                  }

                                  v60 = v26;
                                  v61 = GSKeyEmitCharOrSequence(v10, v26, v55, a7, a8, a9);
                                  if (v58)
                                  {
                                    v35 = v59;
                                  }

                                  else
                                  {
                                    v35 = 0;
                                  }

                                  if (v61)
                                  {
                                    result = 0xFFFFFFFFLL;
                                  }

                                  else if ((a5 & 1) != 0 || (a3 | 2) == 3)
                                  {
                                    result = GSKeyEmitStateTerminator(v10, v60, v59, a7, a8, a9);
                                  }

                                  else
                                  {
                                    result = 0;
                                  }

                                  goto LABEL_122;
                                }
                              }

                              goto LABEL_111;
                            }

                            fprintf(*v31, "GSKeyTranslate - uchr may be corrupt, invalid stateEntryFormat %04X\n");
                          }

                          else
                          {
                            v71 = v26;
                            v64 = GSKeyEmitCharOrSequence(v10, v26, *v44, a7, a8, a9);
                            if (v46)
                            {
                              v35 = v44[1];
                            }

                            if (!v64)
                            {
                              if ((a5 & 1) != 0 || (a3 | 2) == 3)
                              {
                                result = GSKeyEmitStateTerminator(v10, v71, v44[1], a7, a8, a9);
                              }

                              else
                              {
                                result = 0;
                              }

                              goto LABEL_78;
                            }
                          }
                        }
                      }

                      else
                      {
                        fprintf(*v31, "GSKeyTranslate - uchr may be corrupt, keyStateRecordsIndexFormat %04X\n");
                      }
                    }

                    else
                    {
                      fwrite("GSKeyTranslate - uchr may be corrupt, keyStateRecordsIndexOffset 0\n", 0x43uLL, 1uLL, *v31);
                    }

LABEL_77:
                    result = 0xFFFFFFFFLL;
LABEL_78:
                    v34 = v72;
                    goto LABEL_94;
                  }
                }
              }

              v34 = v72;
              if (v70)
              {
                if (a3 == 3)
                {
                  v34 = 0;
                  v35 = 0;
                }

                else
                {
                  v62 = v26;
                  v34 = 0;
                  if (GSKeyEmitStateTerminator(v10, v26, v70, a7, a8, v37))
                  {
                    result = 0xFFFFFFFFLL;
                    v35 = 0;
                    goto LABEL_94;
                  }

                  v35 = 0;
                  v26 = v62;
                }
              }

              if (v39 < 0)
              {
                if (v38 > 0xFFFDu)
                {
                  result = 0;
                }

                else
                {
                  v63 = *a8;
                  if (v63 >= a7)
                  {
                    result = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    result = 0;
                    *a8 = v63 + 1;
                    *(v37 + 2 * v63) = v38;
                  }
                }
              }

              else
              {
                result = GSKeyEmitSequence(v10, v26, v38, a7, a8, v37);
              }

              goto LABEL_94;
            }

            fprintf(*v31, "GSKeyTranslate - uchr may be corrupt, keyToCharTableIndexFormat %04X\n");
            goto LABEL_77;
          }
        }
      }
    }
  }

  return result;
}

uint64_t GSKeyboardGetKeyCodeForChar(uint64_t a1, int a2, unsigned int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = pthread_mutex_lock((a1 + 80));
  v7 = HIWORD(a3);
  v8 = 4;
  do
  {
    v18 = 8;
    MEMORY[0x28223BE20](v6);
    v17 = 0;
    v6 = GSKeyTranslate(a1, v8, 0, v7, 1, &v17, v18, &v18, v16);
    if (v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = a2 == v16[0];
    }

    v10 = v9;
    if (v18)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v8 + 1;
    if (v11)
    {
      break;
    }

    v9 = v8++ == 56;
  }

  while (!v9);
  v13 = v12 - 1;
  if (v11)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0xFFFFFFFFLL;
  }

  pthread_mutex_unlock((a1 + 80));
  return v14;
}

uint64_t GSKeyboardTranslateKeyWithModifiers(uint64_t a1, int a2, unsigned int a3, int a4, char a5, unsigned int a6, unsigned __int16 *a7, uint64_t a8)
{
  v12 = HIWORD(a4);
  pthread_mutex_lock((a1 + 80));
  if (a2 == 88)
  {
    v16 = 40;
  }

  else
  {
    v16 = a2;
  }

  if (a2 == 133)
  {
    v17 = 54;
  }

  else
  {
    v17 = v16;
  }

  if (a2 == 50)
  {
    v18 = 49;
  }

  else
  {
    v18 = v17;
  }

  if (a3 == 1)
  {
    v19 = 0;
  }

  else
  {
    v21 = 0;
    v19 = GSKeyTranslate(a1, v18, a3, v12, a5, &v21, a6, a7, a8);
  }

  pthread_mutex_unlock((a1 + 80));
  return v19;
}

uint64_t GSKeyboardTranslateKeyExtendedCommandWithUsagePage(uint64_t a1, signed int a2, unsigned int a3, unsigned int a4, unsigned __int16 *a5, uint64_t a6, unsigned __int16 *a7, uint64_t a8, unsigned __int16 *a9, uint64_t a10, unsigned __int16 *a11, uint64_t a12, unsigned __int16 *a13, uint64_t a14, unint64_t a15)
{
  pthread_mutex_lock((a1 + 80));
  v22 = 0;
  v23 = *(a1 + 64);
  if (a2 > 226)
  {
    if (a2 <= 228)
    {
      if (a2 != 227)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (a2 == 229)
      {
        goto LABEL_17;
      }

      if (a2 == 230)
      {
LABEL_18:
        v24 = (v23 >> 25) & 7;
        goto LABEL_19;
      }

      if (a2 != 231)
      {
        goto LABEL_30;
      }
    }

    v24 = (v23 >> 28) & 7;
    goto LABEL_19;
  }

  if (a2 > 223)
  {
    if (a2 != 224)
    {
      if (a2 != 225)
      {
        goto LABEL_18;
      }

LABEL_17:
      v24 = (v23 >> 19) & 7;
      goto LABEL_19;
    }

LABEL_15:
    v24 = (v23 >> 22) & 7;
    goto LABEL_19;
  }

  if (!a2)
  {
    goto LABEL_27;
  }

  if (a2 != 57)
  {
    goto LABEL_30;
  }

  v24 = HIWORD(v23) & 7;
LABEL_19:
  if (v24 > 2)
  {
    switch(v24)
    {
      case 3:
        v22 = 16;
        a2 = 224;
        break;
      case 4:
        v22 = 8;
        a2 = 226;
        break;
      case 5:
        v22 = 1;
        a2 = 227;
        break;
      default:
LABEL_27:
        pthread_mutex_unlock((a1 + 80));
        return 0;
    }

LABEL_30:
    v26 = vdupq_n_s64(a15);
    if (vmaxv_u16(vand_s8(vmovn_s32(vuzp1q_s32(vceqq_s64(v26, xmmword_223D32460), vceqq_s64(v26, xmmword_223D32450))), vceq_s16(vdup_n_s16(a2), 0x3029D00300003))))
    {
      v27 = 1024;
    }

    else
    {
      v27 = v22;
    }

    v28 = v27 == 0;
    if (!v27)
    {
      if ((v23 & 1) == 0)
      {
        goto LABEL_47;
      }

      v30 = *(a1 + 60);
      *(a1 + 56) &= v30;
      v29 = *(a1 + 58) & v30;
      goto LABEL_46;
    }

    if ((v23 & 1) == 0)
    {
      if (a3)
      {
        *(a1 + 56) &= ~v27;
        v29 = *(a1 + 58) & ~v27;
LABEL_46:
        *(a1 + 58) = v29;
        goto LABEL_47;
      }

      v34 = *(a1 + 56) | v27;
LABEL_45:
      *(a1 + 56) = v34;
      v29 = *(a1 + 58) | v27;
      goto LABEL_46;
    }

    if (a3)
    {
      goto LABEL_47;
    }

    v31 = *(a1 + 60);
    if ((v31 & v27) != 0)
    {
      *(a1 + 56) &= ~v27;
      *(a1 + 58) &= ~v27;
      v32 = v31 & ~v27;
    }

    else
    {
      v45 = *(a1 + 56);
      if ((v45 & v27) == 0)
      {
        v34 = v45 | v27;
        goto LABEL_45;
      }

      v32 = v31 | v27;
    }

    *(a1 + 60) = v32;
LABEL_47:
    v33 = *(a1 + 56);
    switch(a2)
    {
      case 50:
        a2 = 49;
        break;
      case 133:
        v33 &= 0xFFDDu;
        a2 = 54;
        break;
      case 88:
        a2 = 40;
        break;
    }

    goto LABEL_55;
  }

  if (v24 != 1)
  {
    if (v24 != 2)
    {
      goto LABEL_27;
    }

    v22 = 2;
    a2 = 225;
    goto LABEL_30;
  }

  if (a3)
  {
    *(a1 + 58) &= ~4u;
    v33 = *(a1 + 56);
  }

  else
  {
    v33 = *(a1 + 56) ^ 4;
    *(a1 + 56) = v33;
    *(a1 + 58) |= 4u;
  }

  v28 = 0;
  a2 = 57;
LABEL_55:
  v25 = 0;
  *a7 = 0;
  *a5 = 0;
  *a13 = 0;
  if (a3 != 1 && v28)
  {
    v35 = v33;
    v25 = GSKeyTranslate(a1, a2, a3, v33, 0, (a1 + 52), a4, a5, a6);
    v36 = a2 - 112;
    if (a6 && v36 >= 0xFFFCu)
    {
      v37 = *a5;
      if (v37 < a4)
      {
        *a5 = v37 + 1;
        *(a6 + 2 * v37) = 16;
      }

      *(a1 + 52) = 0;
    }

    v47 = 0;
    GSKeyTranslate(a1, a2, 3u, 0, 1, &v47, a4, a7, a8);
    if (a8)
    {
      if (v36 >= 0xFFFCu)
      {
        v38 = *a7;
        if (v38 < a4)
        {
          *a7 = v38 + 1;
          *(a8 + 2 * v38) = 16;
        }
      }
    }

    if ((v35 & 0x22) != 0)
    {
      v47 = 0;
      GSKeyTranslate(a1, a2, 3u, v35 & 0x22, 1, &v47, a4, a9, a10);
      if (a9)
      {
        if (a10)
        {
          if (v36 >= 0xFFFCu)
          {
            v39 = *a9;
            if (v39 < a4)
            {
              *a9 = v39 + 1;
              *(a10 + 2 * v39) = 16;
            }
          }
        }
      }
    }

    else
    {
      *a9 = 0;
    }

    if ((v35 & 0x501) != 0)
    {
      v47 = 0;
      GSKeyTranslate(a1, a2, 3u, 257, 1, &v47, a4, a11, a12);
      if (a11)
      {
        if (a12)
        {
          if (v36 >= 0xFFFCu)
          {
            v40 = *a11;
            if (v40 < a4)
            {
              *a11 = v40 + 1;
              *(a12 + 2 * v40) = 16;
            }
          }
        }
      }
    }

    else
    {
      *a11 = 0;
    }

    v41 = *(a1 + 52);
    if (v41)
    {
      v47 = *(a1 + 52);
      GSKeyTranslate(a1, a2, 1u, v35, 0, &v47, a4, a13, a14);
      LOWORD(v41) = *(a1 + 52);
    }

    v42 = *(a1 + 56);
    if (v41)
    {
      *(a1 + 56) = v42 | 0x200;
      v43 = *(a1 + 58) | 0x200;
    }

    else
    {
      *(a1 + 56) = v42 & 0xFDFF;
      v43 = *(a1 + 58) & 0xFDFF;
    }

    *(a1 + 58) = v43;
  }

  pthread_mutex_unlock((a1 + 80));
  return v25;
}

uint64_t GSKeyboardHWKeyboardLayoutsForName(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (GSKeyboardHWKeyboardLayoutsForName_onceToken != -1)
  {
    GSKeyboardHWKeyboardLayoutsForName_cold_1();
  }

  v2 = GSKeyboardHWKeyboardLayoutsForName_loadedHWLayouts;
  objc_sync_enter(GSKeyboardHWKeyboardLayoutsForName_loadedHWLayouts);
  v3 = [GSKeyboardHWKeyboardLayoutsForName_loadedHWLayouts objectForKey:a1];
  if (!v3)
  {
    v5 = [(__CFString *)KeyboardLayoutsResourcePath() stringByAppendingPathComponent:@"USBKeyboardLayouts.plist"];
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v5 options:1 error:0];
      if (v6)
      {
        v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{a1, 0}];
        _CFPropertyListCreateFiltered();
        v3 = 0;
      }
    }
  }

  objc_sync_exit(v2);
  return v3;
}

id __GSKeyboardHWKeyboardLayoutsForName_block_invoke()
{
  result = objc_alloc_init(MEMORY[0x277CBEB38]);
  GSKeyboardHWKeyboardLayoutsForName_loadedHWLayouts = result;
  return result;
}

uint64_t GSKeyEmitStateTerminator(uint64_t a1, uint64_t a2, int a3, unsigned int a4, _WORD *a5, uint64_t a6)
{
  v7 = *(a2 + 20);
  if (!v7)
  {
    return 0;
  }

  v8 = (a1 + v7);
  v9 = *v8;
  if (v9 != 24577)
  {
    fprintf(*MEMORY[0x277D85DF8], "GSKeyTranslate - uchr may be corrupt, keyStateTerminatorsFormat %04X\n", v9);
    return 0xFFFFFFFFLL;
  }

  if (!a3 || v8[1] <= (a3 - 1))
  {
    return 0;
  }

  v10 = v8[(a3 - 1) + 2];

  return GSKeyEmitCharOrSequence(a1, a2, v10, a4, a5, a6);
}

uint64_t GSKeyEmitSequence(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, _WORD *a5, uint64_t a6)
{
  v6 = *(a2 + 24);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = (a1 + v6);
  v8 = *v7;
  if (v8 != 28673)
  {
    fprintf(*MEMORY[0x277D85DF8], "GSKeyTranslate - uchr may be corrupt, keySequenceDataIndexFormat %04X\n", v8);
    return 0xFFFFFFFFLL;
  }

  if ((a3 & 0x3FFF) >= v7[1])
  {
LABEL_14:
    if (a3 > 0xFFFD)
    {
      return 0;
    }

    v18 = *a5;
    if (v18 < a4)
    {
      result = 0;
      *a5 = v18 + 1;
      *(a6 + 2 * v18) = a3;
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  v9 = &v7[a3 & 0x3FFF];
  v10 = v9[2];
  v11 = (v9[3] - v10) >> 1;
  v12 = *a5;
  if (v11 <= (a4 - v12))
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  if (v11 <= (a4 - v12))
  {
    v14 = (v9[3] - v10) >> 1;
  }

  else
  {
    v14 = a4 - v12;
  }

  *a5 = v14 + v12;
  if (v14)
  {
    v15 = (a6 + 2 * v12);
    v16 = (v7 + v10);
    do
    {
      --v14;
      v17 = *v16++;
      *v15++ = v17;
    }

    while (v14);
  }

  return result;
}

uint64_t GSKeyEmitCharOrSequence(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, _WORD *a5, uint64_t a6)
{
  if (a3 < -16384)
  {
    return GSKeyEmitSequence(a1, a2, a3, a4, a5, a6);
  }

  if (a3 > 0xFFFD)
  {
    return 0;
  }

  v6 = *a5;
  if (v6 >= a4)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a5 = v6 + 1;
  *(a6 + 2 * v6) = a3;
  return result;
}

void _GSEventInitializeApp_cold_1(char **a1)
{
  *a1 = 0;
  asprintf(a1, "CFBundleIdentifier must be less than %i UTF8 bytes\n", 128);
  fputs(*a1, *MEMORY[0x277D85DF8]);
  *MEMORY[0x277CBEC18] = *a1;
  abort();
}

void _GSEventInitializeApp_cold_2()
{
  fputs("Unable to determine CFBundleIdentifier or process name for current process\n", *MEMORY[0x277D85DF8]);
  *MEMORY[0x277CBEC18] = "Unable to determine CFBundleIdentifier or process name for current process\n";
  abort();
}