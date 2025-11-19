void sub_2581FCDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2581FD128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMAImageCaptioningCopyCaptionWithSourceSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MediaAccessibilityLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MediaAccessibilityLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27986E288;
    v7 = 0;
    MediaAccessibilityLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = MediaAccessibilityLibraryCore_frameworkLibrary;
    if (MediaAccessibilityLibraryCore_frameworkLibrary)
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

  v2 = MediaAccessibilityLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "MAImageCaptioningCopyCaptionWithSource");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMAImageCaptioningCopyCaptionWithSourceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaAccessibilityLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaAccessibilityLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_2581FF41C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  objc_destroyWeak((v36 + 40));
  objc_destroyWeak(&a30);
  objc_destroyWeak(&a36);
  objc_destroyWeak((v37 - 168));
  objc_destroyWeak((v37 - 120));
  objc_destroyWeak((v37 - 112));
  _Unwind_Resume(a1);
}

void sub_2581FF9B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_258200FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2582037D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_258206450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 - 40));
  _Unwind_Resume(a1);
}

void sub_258206624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_2582067A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258206950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL _MUWriteOutputToTemp()
{
  v0 = _MUWriteOutputToTemp_cachedValue;
  if (_MUWriteOutputToTemp_cachedValue == -2)
  {
    v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2 = [v1 objectForKey:@"MUWriteOutputToTemp"];

    if (v2)
    {
      v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      _MUWriteOutputToTemp_cachedValue = [v3 BOOLForKey:@"MUWriteOutputToTemp"];

      if (_MUWriteOutputToTemp_cachedValue)
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      NSLog(&stru_286963370.isa, @"MUWriteOutputToTemp", v4);
    }

    else
    {
      _MUWriteOutputToTemp_cachedValue = 0;
    }

    v0 = _MUWriteOutputToTemp_cachedValue;
  }

  return v0 != 0;
}

void sub_258207F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25820C564(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 128));
  objc_destroyWeak((v2 - 120));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

double maxImageArea()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  [v0 nativeBounds];
  v2 = v1;
  v4 = v3;

  return fmax(v2 * v4, 3307500.0);
}

void _dictionaryApplierFunction(uint64_t a1, CGPDFObject *a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"/%s", a1];
  value = 0;
  dict = 0;
  Type = CGPDFObjectGetType(a2);
  if ((Type - 1) >= 7)
  {
    if (Type == kCGPDFObjectTypeDictionary)
    {
      if (CGPDFObjectGetValue(a2, kCGPDFObjectTypeDictionary, &dict) && !CFSetContainsValue(seenObjects, dict))
      {
        CFSetAddValue(seenObjects, dict);
        v9 = [MEMORY[0x277CBEB38] dictionary];
        CGPDFDictionaryApplyFunction(dict, _dictionaryApplierFunction, v9);
        goto LABEL_4;
      }
    }

    else if (Type == kCGPDFObjectTypeStream && CGPDFObjectGetValue(a2, kCGPDFObjectTypeStream, &value))
    {
      Dictionary = CGPDFStreamGetDictionary(value);
      if (Dictionary)
      {
        v11 = Dictionary;
        CFSetAddValue(seenObjects, Dictionary);
        v9 = [MEMORY[0x277CBEB38] dictionary];
        CGPDFDictionaryApplyFunction(v11, _dictionaryApplierFunction, v9);
        if (![v9 count])
        {
          goto LABEL_5;
        }

        format = CGPDFDataFormatRaw;
        v12 = CGPDFStreamCopyData(value, &format);
        if (!v12)
        {
          goto LABEL_5;
        }

        v13 = v12;
        [v9 setObject:v12 forKey:@"/%Stream"];
        CFRelease(v13);
LABEL_4:
        [v5 setValue:v9 forKey:v6];
LABEL_5:
      }
    }
  }

  else
  {
    v8 = _objectFromPDFObject(a2);
    if (v8)
    {
      v9 = v8;
      goto LABEL_4;
    }
  }
}

id _objectFromPDFObject(CGPDFObject *a1)
{
  v17 = 0;
  v15 = 0.0;
  v16 = 0;
  string = 0;
  value = 0;
  array = 0;
  Type = CGPDFObjectGetType(a1);
  v3 = 0;
  if (Type <= kCGPDFObjectTypeInteger)
  {
    switch(Type)
    {
      case kCGPDFObjectTypeNull:
        v4 = [MEMORY[0x277CBEB68] null];
        goto LABEL_34;
      case kCGPDFObjectTypeBoolean:
        if (CGPDFObjectGetValue(a1, kCGPDFObjectTypeBoolean, &v17))
        {
          if (v17)
          {
            v9 = MEMORY[0x277CBEC38];
          }

          else
          {
            v9 = MEMORY[0x277CBEC28];
          }

          v4 = v9;
          goto LABEL_34;
        }

        break;
      case kCGPDFObjectTypeInteger:
        if (CGPDFObjectGetValue(a1, kCGPDFObjectTypeInteger, &v16))
        {
          v4 = [MEMORY[0x277CCABB0] numberWithLong:v16];
          goto LABEL_34;
        }

        break;
      default:
        goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (Type <= kCGPDFObjectTypeName)
  {
    if (Type == kCGPDFObjectTypeReal)
    {
      if (CGPDFObjectGetValue(a1, kCGPDFObjectTypeReal, &v15))
      {
        v4 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
        goto LABEL_34;
      }
    }

    else if (CGPDFObjectGetValue(a1, kCGPDFObjectTypeName, &value))
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"/%s", value];
LABEL_34:
      v3 = v4;
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (Type == kCGPDFObjectTypeString)
  {
    if (CGPDFObjectGetValue(a1, kCGPDFObjectTypeString, &string))
    {
      v8 = CGPDFStringCopyTextString(string);
      if (v8)
      {
        v3 = v8;
      }

      else
      {
        v3 = 0;
      }

      goto LABEL_36;
    }

LABEL_35:
    v3 = 0;
    goto LABEL_36;
  }

  if (Type != kCGPDFObjectTypeArray)
  {
    goto LABEL_36;
  }

  if (!CGPDFObjectGetValue(a1, kCGPDFObjectTypeArray, &array))
  {
    goto LABEL_35;
  }

  Count = CGPDFArrayGetCount(array);
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:Count];
  if (Count)
  {
    for (i = 0; i != Count; ++i)
    {
      v11 = 0;
      if (CGPDFArrayGetObject(array, i, &v11))
      {
        v7 = _objectFromPDFObject(v11);
        if (v7)
        {
          [v3 addObject:v7];
        }
      }
    }
  }

LABEL_36:

  return v3;
}

void sub_258210748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_25821105C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_258215D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _dictionaryForPDFDictionary(CGPDFDictionary *a1, void *a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v7[0] = @"resultDict";
  v7[1] = @"visitedSet";
  v8[0] = v4;
  v8[1] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  CGPDFDictionaryApplyFunction(a1, _iterateDictionaryValueCallback, v5);

  return v4;
}

BOOL _getStreams(_BOOL8 key, uint64_t a2, CGPDFDictionaryRef *a3)
{
  if (*key == 79 && *(key + 1) == 110)
  {
    return CGPDFDictionaryGetStream(*a3, key, a3 + 1);
  }

  return key;
}

void _iterateDictionaryValueCallback(uint64_t a1, CGPDFObject *a2, void *a3)
{
  v5 = a3;
  v10 = [v5 objectForKeyedSubscript:@"resultDict"];
  v6 = [v5 objectForKeyedSubscript:@"visitedSet"];

  v7 = [MEMORY[0x277CCACA8] stringWithCString:a1 encoding:4];
  v8 = _objectForCGPDFObjectRefAndVisitedSet(a2, v6);
  if (v8)
  {
    [v10 setObject:v8 forKeyedSubscript:v7];
  }

  else
  {
    v9 = [MEMORY[0x277CBEB68] null];
    [v10 setObject:v9 forKeyedSubscript:v7];
  }
}

id _objectForCGPDFObjectRefAndVisitedSet(CGPDFObject *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    NSLog(&cfstr_VisitedsetMust.isa);
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if (!a1)
  {
    goto LABEL_9;
  }

  v5 = [v3 objectForKey:a1];

  if (v5)
  {
    goto LABEL_9;
  }

  v6 = [MEMORY[0x277CBEB68] null];
  [v4 setObject:v6 forKey:a1];

  Type = CGPDFObjectGetType(a1);
  v8 = 0;
  if (Type <= kCGPDFObjectTypeReal)
  {
    switch(Type)
    {
      case kCGPDFObjectTypeBoolean:
        LOBYTE(value) = 0;
        CGPDFObjectGetValue(a1, kCGPDFObjectTypeBoolean, &value);
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:value];
        break;
      case kCGPDFObjectTypeInteger:
        value = 0;
        CGPDFObjectGetValue(a1, kCGPDFObjectTypeInteger, &value);
        v9 = [MEMORY[0x277CCABB0] numberWithLong:value];
        break;
      case kCGPDFObjectTypeReal:
        value = 0;
        CGPDFObjectGetValue(a1, kCGPDFObjectTypeReal, &value);
        v9 = [MEMORY[0x277CCABB0] numberWithDouble:*&value];
        break;
      default:
        goto LABEL_10;
    }
  }

  else if (Type > kCGPDFObjectTypeString)
  {
    if (Type == kCGPDFObjectTypeArray)
    {
      value = 0;
      CGPDFObjectGetValue(a1, kCGPDFObjectTypeArray, &value);
      v9 = _arrayForPDFArray(value, v4);
    }

    else
    {
      if (Type != kCGPDFObjectTypeDictionary)
      {
        goto LABEL_10;
      }

      value = 0;
      CGPDFObjectGetValue(a1, kCGPDFObjectTypeDictionary, &value);
      v9 = _dictionaryForPDFDictionary(value, v4);
    }
  }

  else
  {
    value = 0;
    if (Type == kCGPDFObjectTypeName)
    {
      CGPDFObjectGetValue(a1, kCGPDFObjectTypeName, &value);
      v9 = [MEMORY[0x277CCACA8] stringWithCString:value encoding:4];
    }

    else
    {
      CGPDFObjectGetValue(a1, kCGPDFObjectTypeString, &value);
      v9 = CGPDFStringCopyTextString(value);
    }
  }

  v8 = v9;
LABEL_10:

  return v8;
}

id _arrayForPDFArray(CGPDFArray *a1, void *a2)
{
  v3 = a2;
  Count = CGPDFArrayGetCount(a1);
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:Count];
  if (Count)
  {
    for (i = 0; i != Count; ++i)
    {
      value = 0;
      CGPDFArrayGetObject(a1, i, &value);
      v7 = _objectForCGPDFObjectRefAndVisitedSet(value, v3);
      if (v7)
      {
        [v5 setObject:v7 atIndexedSubscript:i];
      }

      else
      {
        v8 = [MEMORY[0x277CBEB68] null];
        [v5 setObject:v8 atIndexedSubscript:i];
      }
    }
  }

  return v5;
}

void sub_258218908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258218D94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_258219538(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void *__getDDDetectionControllerWillPresentActionNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataDetectorsUILibrary();
  result = dlsym(v2, "DDDetectionControllerWillPresentActionNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDDDetectionControllerWillPresentActionNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t DataDetectorsUILibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!DataDetectorsUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __DataDetectorsUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_27986E960;
    v5 = 0;
    DataDetectorsUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = DataDetectorsUILibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!DataDetectorsUILibraryCore_frameworkLibrary)
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

uint64_t __DataDetectorsUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  DataDetectorsUILibraryCore_frameworkLibrary = result;
  return result;
}

void *__getDDDetectionControllerDidDismissActionNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataDetectorsUILibrary();
  result = dlsym(v2, "DDDetectionControllerDidDismissActionNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDDDetectionControllerDidDismissActionNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

double GetHeadroomFromImage(CGImage *a1)
{
  ColorSpace = CGImageGetColorSpace(a1);
  v2 = 1.0;
  if (ColorSpace)
  {
    v3 = ColorSpace;
    if ((MEMORY[0x259C7B190]() & 1) != 0 || CGColorSpaceUsesExtendedRange(v3))
    {
      CGImageGetContentHeadroom();
      return v4;
    }
  }

  return v2;
}

void *__getMAImageCaptioningSetCaptionIntoMetadataSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MediaAccessibilityLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MediaAccessibilityLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27986E9A0;
    v7 = 0;
    MediaAccessibilityLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v3 = v5[0];
    v2 = MediaAccessibilityLibraryCore_frameworkLibrary_0;
    if (MediaAccessibilityLibraryCore_frameworkLibrary_0)
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

  v2 = MediaAccessibilityLibraryCore_frameworkLibrary_0;
LABEL_5:
  result = dlsym(v2, "MAImageCaptioningSetCaptionIntoMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMAImageCaptioningSetCaptionIntoMetadataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaAccessibilityLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  MediaAccessibilityLibraryCore_frameworkLibrary_0 = result;
  return result;
}

double akMedian(uint64_t a1, uint64_t a2)
{
  v2 = a2 - 1;
  v3 = (a2 - 1) >> 1;
  if (a2 != 1)
  {
    v4 = 0;
    while (1)
    {
      v5 = v4 + 1;
      if (v2 == v4 + 1)
      {
        break;
      }

      v6 = (v4 + v2) >> 1;
      v7 = *(a1 + 8 * v6);
      v8 = *(a1 + 8 * v2);
      if (v7 <= v8)
      {
        v7 = *(a1 + 8 * v2);
      }

      else
      {
        *(a1 + 8 * v6) = v8;
        *(a1 + 8 * v2) = v7;
      }

      v9 = *(a1 + 8 * v4);
      if (v9 > v7)
      {
        *(a1 + 8 * v4) = v7;
        *(a1 + 8 * v2) = v9;
        v9 = *(a1 + 8 * v4);
      }

      v10 = *(a1 + 8 * v6);
      if (v10 > v9)
      {
        *(a1 + 8 * v6) = v9;
        *(a1 + 8 * v4) = v10;
        v10 = *(a1 + 8 * v6);
      }

      *(a1 + 8 * v6) = *(a1 + 8 * v5);
      *(a1 + 8 * v5) = v10;
      v11 = v2;
      while (1)
      {
        v12 = *(a1 + 8 * v4);
        do
        {
          v13 = a1 + 8 * v5++;
          v14 = *(v13 + 8);
        }

        while (v12 > v14);
        v15 = v11 - 1;
        v16 = (a1 + 8 * v11);
        do
        {
          v17 = *--v16;
          v18 = v17;
          --v15;
        }

        while (v17 > v12);
        v11 = v15 + 1;
        if (v15 + 1 < v5)
        {
          break;
        }

        *(a1 + 8 * v5) = v18;
        *v16 = v14;
      }

      *(a1 + 8 * v4) = v18;
      *v16 = v12;
      if (v11 <= v3)
      {
        v4 = v5;
      }

      if (v11 >= v3)
      {
        v2 = v15;
      }

      if (v2 <= v4)
      {
        return *(a1 + 8 * v3);
      }
    }

    v19 = *(a1 + 8 * v4);
    v20 = *(a1 + 8 * v2);
    if (v19 > v20)
    {
      *(a1 + 8 * v4) = v20;
      *(a1 + 8 * v2) = v19;
    }
  }

  return *(a1 + 8 * v3);
}

void generateRandomKey(void *__buf)
{
  do
  {
    arc4random_buf(__buf, 0x10uLL);
    if (*__buf)
    {
      v2 = 0;
    }

    else
    {
      v2 = __buf[1] == 0;
    }
  }

  while (v2 || (*__buf & __buf[1]) == -1);
}

CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box)
{
  MEMORY[0x282111360](page, *&box);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x282111610](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}