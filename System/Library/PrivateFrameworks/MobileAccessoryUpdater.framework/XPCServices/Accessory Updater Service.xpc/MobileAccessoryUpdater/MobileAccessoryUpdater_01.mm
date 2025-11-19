uint64_t _CFStringToUInt32(const __CFString *a1, _DWORD *a2)
{
  result = CFStringGetCString(a1, buffer, 32, 0x600u);
  if (result)
  {
    *__error() = 0;
    *a2 = strtoul(buffer, 0, 0);
    return *__error() == 0;
  }

  return result;
}

CFPropertyListRef AMAuthInstallPreferencesCopyStringValue(const __CFString *a1, const __CFString *a2)
{
  if (!a1)
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_8;
    }

LABEL_6:
    if (!v4)
    {
      v4 = CFPreferencesCopyAppValue(a2, @"com.apple.libauthinstall");
    }

LABEL_8:
    if (!v4)
    {
      return v4;
    }

    goto LABEL_9;
  }

  v4 = CFPreferencesCopyAppValue(a1, kCFPreferencesCurrentApplication);
  if (!v4)
  {
    v4 = CFPreferencesCopyAppValue(a1, @"com.apple.libauthinstall");
    if (!a2)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

LABEL_9:
  v5 = CFGetTypeID(v4);
  if (v5 != CFStringGetTypeID())
  {
    CFRelease(v4);
    return 0;
  }

  return v4;
}

const __CFString *AMAuthInstallPreferencesGetBooleanValue(const __CFString *result, const __CFString *a2, Boolean *a3)
{
  keyExistsAndHasValidFormat = 0;
  if (result)
  {
    v5 = result;
    result = CFPreferencesGetAppBooleanValue(result, kCFPreferencesCurrentApplication, &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      goto LABEL_8;
    }

    result = CFPreferencesGetAppBooleanValue(v5, @"com.apple.libauthinstall", &keyExistsAndHasValidFormat);
    v6 = keyExistsAndHasValidFormat == 0;
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 1;
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  if (v6)
  {
    result = CFPreferencesGetAppBooleanValue(a2, @"com.apple.libauthinstall", &keyExistsAndHasValidFormat);
  }

LABEL_8:
  if (a3)
  {
    *a3 = keyExistsAndHasValidFormat;
  }

  return result;
}

uint64_t AMAuthInstallSupportBase64Encode(const __CFAllocator *a1, CFDataRef theData, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!theData)
  {
    sub_100073D28(a1, 0, a3, a4, a5, a6, a7, a8, v38);
    return 1;
  }

  Length = CFDataGetLength(theData);
  if (!Length)
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Encode", "value length == 0: '%@'", v14, v15, v16, v17, v18, theData);
    return 1;
  }

  if (!a3)
  {
    sub_100073D14(Length, v12, v13, v14, v15, v16, v17, v18, v38);
    return 1;
  }

  BytePtr = CFDataGetBytePtr(theData);
  v20 = CFDataGetLength(theData);
  v21 = b64encode(BytePtr, v20);
  if (v21)
  {
    v27 = v21;
    v28 = strlen(v21);
    if (v28)
    {
      v34 = CFStringCreateWithBytes(a1, v27, v28, 0x8000100u, 0);
      if (v34)
      {
        v35 = v34;
        *a3 = CFRetain(v34);
        free(v27);
        CFRelease(v35);
        return 0;
      }

      v37 = "encodedValue == NULL: '%@'";
    }

    else
    {
      v37 = "encodedLength == 0: '%@'";
    }

    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Encode", v37, v29, v30, v31, v32, v33, theData);
    free(v27);
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Encode", "encodedBuffer == NULL: '%@'", v22, v23, v24, v25, v26, theData);
  }

  return 99;
}

uint64_t AMAuthInstallSupportBase64Decode(const __CFAllocator *a1, CFStringRef theString, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!theString)
  {
    sub_100073D50(a1, 0, a3, a4, a5, a6, a7, a8, v47);
    return 1;
  }

  Length = CFStringGetLength(theString);
  if (!Length)
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Decode", "value length == 0: '%@'", v14, v15, v16, v17, v18, theString);
    return 1;
  }

  if (!a3)
  {
    sub_100073D3C(Length, v12, v13, v14, v15, v16, v17, v18, v47);
    return 1;
  }

  v19 = (CFStringGetLength(theString) + 1);
  v20 = malloc(v19);
  if (!v20)
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Decode", "failed to allocate buffer", v21, v22, v23, v24, v25, theString);
    return 2;
  }

  v26 = v20;
  if (!CFStringGetCString(theString, v20, v19, 0x8000100u))
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Decode", "failed to convert value to c-string", v27, v28, v29, v30, v31, theString);
LABEL_18:
    v45 = 2;
    goto LABEL_19;
  }

  v32 = b64decode(v26, v19);
  if (v32 <= 0)
  {
    v48 = theString;
    v45 = 3;
    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Decode", "b64decode of value '%@' failed with error code %d.", v33, v34, v35, v36, v37, v48);
LABEL_19:
    free(v26);
    return v45;
  }

  v38 = CFDataCreate(a1, v26, v32);
  if (!v38)
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Decode", "decodedData is NULL", v39, v40, v41, v42, v43, theString);
    goto LABEL_18;
  }

  v44 = v38;
  *a3 = CFRetain(v38);
  free(v26);
  CFRelease(v44);
  return 0;
}

uint64_t AMAuthInstallSupportCreateDecodedPEM(uint64_t a1, size_t __size, void *a3, size_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    sub_100073DC8(0, __size, a3, a4, a5, a6, a7, a8, v40);
LABEL_35:
    v20 = 0;
    v38 = 1;
    goto LABEL_30;
  }

  if (!__size)
  {
    sub_100073DB4(a1, 0, a3, a4, a5, a6, a7, a8, v40);
    goto LABEL_35;
  }

  if (!a3)
  {
    sub_100073DA0(a1, __size, 0, a4, a5, a6, a7, a8, v40);
    goto LABEL_35;
  }

  if (!a4)
  {
    sub_100073D8C(a1, __size, a3, 0, a5, a6, a7, a8, v40);
    goto LABEL_35;
  }

  v12 = calloc(1uLL, __size);
  v20 = v12;
  if (v12)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
LABEL_7:
    v24 = 0;
LABEL_8:
    v25 = 1;
    while (v22 < __size && v23 <= 1 && (v25 & 1) != 0)
    {
      v26 = *(a1 + v22);
      if (v26 == 10 || v26 == 13)
      {
        v23 += v24 & 1;
      }

      else
      {
        if (v26 == 45 || (v24 & 1) != 0)
        {
          ++v22;
          v24 = 1;
          goto LABEL_8;
        }

        if (v26 - 48 < 0xA || (v26 & 0xFFFFFFDF) - 65 < 0x1A)
        {
LABEL_26:
          ++v22;
          v12[v21++] = v26;
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = 0;
      if (v26 <= 0x3D)
      {
        v25 = 0;
        if (((1 << v26) & 0x2000880100002600) != 0)
        {
          goto LABEL_26;
        }
      }
    }

    if (v25)
    {
      v28 = b64decode(v12, v21);
      v29 = calloc(1uLL, v28);
      if (v29)
      {
        v37 = v29;
        memcpy(v29, v20, v28);
        v38 = 0;
        *a4 = v28;
        *a3 = v37;
      }

      else
      {
        sub_100073D64(0, v30, v31, v32, v33, v34, v35, v36, v40);
        v38 = 3;
      }
    }

    else
    {
      v38 = 3;
      AMAuthInstallLog(3, "AMAuthInstallSupportCreateDecodedPEM", "Input PEM has non-base64 chars at byte %d", v15, v16, v17, v18, v19, v22);
    }
  }

  else
  {
    sub_100073D78(0, v13, v14, v15, v16, v17, v18, v19, v40);
    v38 = 2;
  }

LABEL_30:
  free(v20);
  return v38;
}

const __CFDictionary *AMAuthInstallSupportGetValueForKeyPathInDict(const __CFAllocator *a1, uint64_t a2, CFStringRef theString, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Value = a2;
  if (!a2)
  {
    sub_100073E18(a1, 0, theString, a4, a5, a6, a7, a8, v30);
    return Value;
  }

  if (!theString)
  {
    sub_100073E04(a1, a2, 0, a4, a5, a6, a7, a8, v30);
    return 0;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a1, theString, @".");
  if (!ArrayBySeparatingStrings)
  {
    sub_100073DF0(0, v10, v11, v12, v13, v14, v15, v16, v30);
    return 0;
  }

  v17 = ArrayBySeparatingStrings;
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  if (Count >= 1)
  {
    v19 = Count;
    v20 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v17, v20);
      if (!ValueAtIndex)
      {
        break;
      }

      Value = CFDictionaryGetValue(Value, ValueAtIndex);
      if (Value)
      {
        if (v19 != ++v20)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    sub_100073DDC(0, v22, v23, v24, v25, v26, v27, v28, v30);
    Value = 0;
  }

LABEL_9:
  CFRelease(v17);
  return Value;
}

CFURLRef AMAuthInstallSupportCreateURLFromString(const __CFAllocator *a1, const __CFString *cf, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!cf)
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportCreateURLFromString", "%s: theString is NULL", a4, a5, a6, a7, a8, "AMAuthInstallSupportCreateURLFromString");
    return 0;
  }

  v10 = CFGetTypeID(cf);
  if (v10 == CFURLGetTypeID())
  {
    AMAuthInstallLog(4, "AMAuthInstallSupportCreateURLFromString", "%s: CFURLRef passed, retaining copy", v11, v12, v13, v14, v15, "AMAuthInstallSupportCreateURLFromString");

    return CFRetain(cf);
  }

  v17 = CFGetTypeID(cf);
  if (v17 != CFStringGetTypeID())
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportCreateURLFromString", "%s: invalid string", v18, v19, v20, v21, v22, "AMAuthInstallSupportCreateURLFromString");
    return 0;
  }

  if (CFStringFind(cf, @"://", 0).location == -1)
  {

    return CFURLCreateWithFileSystemPath(a1, cf, kCFURLPOSIXPathStyle, 0);
  }

  else
  {

    return CFURLCreateWithString(a1, cf, 0);
  }
}

const __CFString *AMAuthInstallSupportCompareStringToInt32(const __CFDictionary *a1, const void *a2, int a3)
{
  v6 = __error();
  *v6 = 0;
  if (!a1)
  {
    sub_100073E64(v6, v7, v8, v9, v10, v11, v12, v13);
    return 0;
  }

  if (!a2)
  {
    sub_100073E2C(v6, v7, v8, v9, v10, v11, v12, v13);
    return 0;
  }

  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    result = CFStringGetCString(result, buffer, 32, 0x8000100u);
    if (result)
    {
      if (strtol(buffer, 0, 16) == a3)
      {
        return (*__error() == 0);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_100012220(uint64_t a1, CFStringRef theString, uint64_t a3)
{
  data = 0;
  v4 = *(a1 + 16);
  if (v4 && CFStringHasSuffix(theString, v4))
  {
    v21 = 0;
    v8 = sub_100075614(theString);
    if (v8)
    {
      v12 = BbfwReaderFindAndCopyFileData(a3, theString, &data);
      if (!v12)
      {
        v9 = CFPropertyListCreateWithData(kCFAllocatorDefault, data, 0, 0, &v21);
        if (v9 && ((Mutable = *(a1 + 56)) != 0 || (Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks), (*(a1 + 56) = Mutable) != 0)))
        {
          CFDictionaryAddValue(Mutable, v8, v9);
          v10 = 1;
        }

        else
        {
          v10 = 0;
        }

        goto LABEL_11;
      }

      sub_1000756C4(v12, v13, v14, v15, v16, v17, v18, v19);
    }

    v10 = 0;
    v9 = 0;
LABEL_11:
    v7 = data;
    goto LABEL_4;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 1;
LABEL_4:
  SafeRelease(v7);
  SafeRelease(v8);
  SafeRelease(v9);
  return v10;
}

uint64_t sub_10001237C()
{

  return DEREncoderAddData();
}

uint64_t BbfwWriterAddFile(uint64_t a1, CFStringRef theString, const __CFData *a3)
{
  v4 = theString;
  CString = CFStringGetCString(theString, buffer, 1024, 0x8000100u);
  if (CString)
  {
    v14 = amai_zipOpenNewFileInZip(a1, buffer, 0, 0, 0, 0, 0, "", 8, -1);
    if (v14)
    {
      v30 = sub_1000125A8(v14, 5000);
      AMAuthInstallLog(3, "BbfwWriterAddFile", "Failed to open file in zip: %s", v32, v33, v34, v35, v36, buffer);
    }

    else
    {
      BytePtr = CFDataGetBytePtr(a3);
      if (BytePtr)
      {
        v21 = BytePtr;
        Length = CFDataGetLength(a3);
        v23 = amai_zipWriteInFileInZip(a1, v21, Length);
        if (v23)
        {
          v30 = sub_1000125A8(v23, 5001);
          v47 = *__error();
          AMAuthInstallLog(3, "BbfwWriterAddFile", "Failed to write file in zip %s with error: %d %d", v37, v38, v39, v40, v41, buffer);
        }

        else
        {
          v24 = amai_zipCloseFileInZip(a1);
          if (v24)
          {
            v30 = sub_1000125A8(v24, 5002);
            v48 = *__error();
            AMAuthInstallLog(3, "BbfwWriterAddFile", "Failed to close file in zip %s with error: %d %d", v42, v43, v44, v45, v46, buffer);
          }

          else
          {
            AMAuthInstallLog(7, "BbfwWriterAddFile", "Added bbfw file : %@", v25, v26, v27, v28, v29, v4);
            return 0;
          }
        }
      }

      else
      {
        AMAuthInstallLog(3, "BbfwWriterAddFile", "FileData byte pointer is NULL: %s", v16, v17, v18, v19, v20, buffer);
        return 4;
      }
    }
  }

  else
  {
    sub_100075FF0(CString, v7, v8, v9, v10, v11, v12, v13);
    return 3;
  }

  return v30;
}

uint64_t sub_1000125A8(uint64_t a1, uint64_t a2)
{
  if (a1 > -5)
  {
    if (a1 <= -3)
    {
      if (a1 == -4)
      {
        return 5008;
      }

      else
      {
        return 5007;
      }
    }

    switch(a1)
    {
      case 0xFFFFFFFE:
        return 5006;
      case 0:
        return a1;
      case 0xFFFFFFFF:
        v2 = *__error();
        if ((v2 - 199) > 0xFFFFFF39)
        {
          return (v2 + 5100);
        }

        return 5003;
    }
  }

  else
  {
    if (a1 > -103)
    {
      if (a1 != -102)
      {
        if (a1 == -6)
        {
          return 5010;
        }

        if (a1 == -5)
        {
          return 5009;
        }

        return a2;
      }

      return 5003;
    }

    if (a1 == -104)
    {
      return 5005;
    }

    else if (a1 == -103)
    {
      return 5004;
    }
  }

  return a2;
}

uint64_t sub_100012698(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return amai_unzGetCurrentFileInfo(a1, a2, a3, 0x400uLL, 0, 0, 0, 0);
}

uint64_t sub_1000126BC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFURLRef url, UInt8 buffer)
{

  return CFURLGetFileSystemRepresentation(url, 1u, &buffer, 1024);
}

uint64_t DERDecoderInitialize(uint64_t a1, unsigned __int8 *a2, unsigned int *a3, unsigned int a4)
{
  if (!a1)
  {
    sub_100076074();
  }

  if (!a2)
  {
    sub_100076048();
  }

  if (!a3)
  {
    sub_10007601C();
  }

  v8 = *a3;
  if (*a3)
  {
LABEL_5:
    if (v8 > a4)
    {
      return 2;
    }

    result = 0;
    *a3 = v8;
    *a1 = a2;
    *(a1 + 8) = v8;
    return result;
  }

  v12 = 0;
  v13 = 0;
  v11 = 0;
  result = sub_1000127C0(a2, a4, &v13, &v12 + 1, &v12, &v11);
  if (!result)
  {
    v10 = v11;
    result = sub_1000128B4(&a2[v11], a4 - v11, &v13 + 1, &v11);
    if (!result)
    {
      v8 = v10 + v11 + HIDWORD(v13);
      if (__CFADD__(v10 + v11, HIDWORD(v13)))
      {
        return 6;
      }

      goto LABEL_5;
    }
  }

  return result;
}

uint64_t sub_1000127C0(unsigned __int8 *a1, int a2, unsigned int *a3, int *a4, int *a5, _DWORD *a6)
{
  if (!a1)
  {
    sub_100076150();
  }

  if (!a3)
  {
    sub_100076124();
  }

  if (!a4)
  {
    sub_1000760F8();
  }

  if (!a5)
  {
    sub_1000760CC();
  }

  if (!a6)
  {
    sub_1000760A0();
  }

  if (!a2)
  {
    return 3;
  }

  v6 = *a1;
  *a3 = v6 >> 6;
  v7 = *a1;
  if ((~v6 & 0x1F) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    *a5 = (v7 >> 5) & 1;
    v11 = a2 - 1;
    v12 = (a1 + 1);
    while (v11)
    {
      v13 = *v12;
      v14 = *v12 & 0x7F | (v8 << 7);
      v10 |= v14 != 0;
      if (v10)
      {
        v9 += 7;
        if (v9 > 0x20)
        {
          return 6;
        }
      }

      --v11;
      ++v12;
      v8 = v14;
      if ((v13 & 0x80000000) == 0)
      {
        *a4 = v14;
        goto LABEL_16;
      }
    }

    return 3;
  }

  *a4 = v7 & 0x1F;
  *a5 = (*a1 >> 5) & 1;
  v11 = a2 - 1;
LABEL_16:
  result = 0;
  *a6 = a2 - v11;
  return result;
}

uint64_t sub_1000128B4(unsigned __int8 *a1, int a2, int *a3, _DWORD *a4)
{
  if (!a1)
  {
    sub_1000761D4();
  }

  if (!a3)
  {
    sub_1000761A8();
  }

  if (!a4)
  {
    sub_10007617C();
  }

  if (!a2)
  {
    return 4;
  }

  v4 = *a1;
  v5 = a2 - 1;
  if ((*a1 & 0x80000000) == 0)
  {
LABEL_6:
    result = 0;
    *a3 = v4;
    *a4 = a2 - v5;
    return result;
  }

  v7 = v4 & 0x7F;
  v8 = v5 >= v7;
  v5 -= v7;
  if (!v8)
  {
    return 4;
  }

  if ((v4 & 0x7F) == 0)
  {
    v4 = 0;
    goto LABEL_6;
  }

  v9 = 0;
  v10 = 0;
  v4 = 0;
  v11 = a1 + 1;
  while (1)
  {
    v12 = *v11++;
    v4 = v12 | (v4 << 8);
    v9 |= v4 != 0;
    if (v9)
    {
      v10 += 8;
      if (v10 > 0x20)
      {
        return 6;
      }
    }

    if (!--v7)
    {
      goto LABEL_6;
    }
  }
}

uint64_t DERDecoderGetDataWithTag(uint64_t a1, unsigned int a2, unsigned int a3, int a4, void *a5, _DWORD *a6, int *a7)
{
  if (!a1)
  {
    sub_10007622C();
  }

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  *(&v13 + 4) = __PAIR64__(a3, a2);
  HIDWORD(v14) = a4;
  if (a7)
  {
    v10 = *a7;
  }

  else
  {
    v10 = 0;
  }

  DWORD1(v12) = v10;
  result = sub_100012A1C(a1, sub_100012B34, &v12);
  if (!result)
  {
    if (!v14)
    {
      sub_100076200();
    }

    if (a5)
    {
      *a5 = v14;
    }

    if (a6)
    {
      *a6 = DWORD2(v14);
    }

    if (a7)
    {
      *a7 = v12;
    }
  }

  return result;
}

uint64_t sub_100012A1C(uint64_t a1, uint64_t (*a2)(unsigned __int8 **, uint64_t), uint64_t a3)
{
  if (!a1)
  {
    sub_1000762B0();
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    return 1;
  }

  v6 = *a1;
  while (1)
  {
    v12 = 0;
    v14 = 0u;
    v15 = 0u;
    v13 = v6;
    result = sub_1000127C0(v6, v3, &v14 + 1, &v14 + 2, &v15 + 3, &v12);
    if (result)
    {
      break;
    }

    if (!v12)
    {
      sub_100076284();
    }

    v8 = v3 - v12;
    v9 = &v6[v12];
    result = sub_1000128B4(v9, v8, &v15 + 2, &v12);
    if (result)
    {
      break;
    }

    if (!v12)
    {
      sub_100076258();
    }

    v10 = v8 - v12;
    if (v10 < DWORD2(v15))
    {
      return 2;
    }

    v11 = &v9[v12];
    *&v15 = v11;
    LODWORD(v14) = DWORD2(v15) + v11 - v13;
    result = a2(&v13, a3);
    if (result != 1)
    {
      return result;
    }

    v6 = &v11[DWORD2(v15)];
    v3 = v10 - DWORD2(v15);
    if (v10 == DWORD2(v15))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_100012B34(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12) == *(a2 + 20) && *(a1 + 16) == *(a2 + 24) && *(a1 + 36) == *(a2 + 44) && *a2 >= *(a2 + 4))
  {
    v2 = 0;
    *(a2 + 32) = *(a1 + 24);
    *(a2 + 40) = *(a1 + 32);
    *(a2 + 8) = *a1;
    *(a2 + 16) = *(a1 + 8);
  }

  else
  {
    ++*a2;
    return 1;
  }

  return v2;
}

uint64_t DERDecoderGetEncodingWithTag(uint64_t a1, unsigned int a2, unsigned int a3, int a4, void *a5, _DWORD *a6, int *a7)
{
  if (!a1)
  {
    sub_100076308();
  }

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  *(&v13 + 4) = __PAIR64__(a3, a2);
  HIDWORD(v14) = a4;
  if (a7)
  {
    v10 = *a7;
  }

  else
  {
    v10 = 0;
  }

  DWORD1(v12) = v10;
  result = sub_100012A1C(a1, sub_100012B34, &v12);
  if (!result)
  {
    if (!*(&v12 + 1))
    {
      sub_1000762DC();
    }

    if (a5)
    {
      *a5 = *(&v12 + 1);
    }

    if (a6)
    {
      *a6 = v13;
    }

    if (a7)
    {
      *a7 = v12;
    }
  }

  return result;
}

uint64_t Img4EncodeIMG4Tag(uint64_t a1)
{
  if (a1)
  {
    if (DEREncoderCreate())
    {
      EncodedBuffer = DEREncoderAddData();
      if (!EncodedBuffer)
      {
        EncodedBuffer = DEREncoderCreateEncodedBuffer();
      }

      v2 = EncodedBuffer;
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

  DEREncoderDestroy();
  return v2;
}

uint64_t sub_100012D10(char a1, char a2, unsigned int a3, void *a4, _DWORD *a5)
{
  v5 = 1;
  if (a4 && a5)
  {
    v11 = malloc(0x10uLL);
    if (v11)
    {
      *v11 = a2 | (a1 << 6) | 0x20;
      if (a3 > 0x7F)
      {
        v13 = 0;
        v17 = 0;
        do
        {
          *(&v17 + v13++) = a3;
          v14 = a3 > 0xFF;
          a3 >>= 8;
        }

        while (v14);
        LODWORD(v12) = v11 + 1;
        if ((v13 - 1) <= 0xD)
        {
          v11[1] = v13 | 0x80;
          v12 = v11 + 2;
          do
          {
            *v12++ = *(&v17 + --v13);
          }

          while (v13);
        }
      }

      else
      {
        v11[1] = a3;
        LODWORD(v12) = v11 + 2;
      }

      v15 = v12 - (v11 + 1);
      if (v15)
      {
        v5 = 0;
        *a5 = v15 + 1;
        *a4 = v11;
      }

      else
      {
        free(v11);
        return 3;
      }
    }

    else
    {
      return 2;
    }
  }

  return v5;
}

uint64_t FlsParserCreate(const __CFAllocator *a1)
{
  pthread_once(&stru_1000C7E48, sub_100012F10);
  result = CFArrayCreateMutable(a1, 0, &kCFTypeArrayCallBacks);
  if (result)
  {
    v3 = result;
    v4 = operator new(0xCC8uLL);
    PRGSequencer::PRGSequencer(v4);
    result = _CFRuntimeCreateInstance();
    if (result)
    {
      *(result + 16) = v3;
      *(result + 24) = v4;
    }

    else
    {
      CFRelease(v3);
      PRGSequencer::~PRGSequencer(v4);
      operator delete(v5);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100012F10()
{
  result = _CFRuntimeRegisterClass();
  qword_1000C87C8 = result;
  return result;
}

uint64_t FlsParserReadFromData(uint64_t a1, CFDataRef theData)
{
  v3 = *(a1 + 24);
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  PRGSequencer::ReadBuffer(v3, BytePtr, Length, 7, 0x20004u, 0);
  return 0;
}

uint64_t FlsParserCopyRamPsi(PRGSequencer **a1, CFDataRef *a2)
{
  v13 = 0;
  if (sub_100013024(a1, 1, &v13, 0) && (v4 = sub_100013148(a1, 18, a2), v4))
  {
    v10 = v4;
    AMAuthInstallLog(3, "FlsParserCopyRamPsi", "failed to copy RamPSI", v5, v6, v7, v8, v9, v12);
  }

  else
  {
    v10 = 0;
    *a2 = v13;
  }

  return v10;
}

uint64_t sub_100013024(PRGSequencer **a1, int a2, CFTypeRef *a3, CFTypeRef *a4)
{
  v14 = 0;
  v15 = 0;
  v7 = sub_10001368C(a1, a2, &v15, &v14);
  if (v7)
  {
    return v7;
  }

  if (!a3)
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_5;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v8 = CFGetAllocator(a1);
  ElementData = PRGSequencer::GetElementData(a1[3], *(v15 + 32));
  v10 = CFDataCreate(v8, ElementData, *(v15 + 28));
  if (!v10)
  {
    return 2;
  }

  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_5:
  v11 = CFGetAllocator(a1);
  v12 = CFDataCreate(v11, (v14 + 524), 1536);
  if (!v12)
  {
    v7 = 2;
    if (!v10)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_10:
  if (a3)
  {
    *a3 = CFRetain(v10);
  }

  if (a4)
  {
    v7 = 0;
    *a4 = CFRetain(v12);
    if (!v10)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v7 = 0;
  if (v10)
  {
LABEL_14:
    CFRelease(v10);
  }

LABEL_15:
  if (v12)
  {
    CFRelease(v12);
  }

  return v7;
}

uint64_t sub_100013148(PRGSequencer **a1, int a2, CFDataRef *a3)
{
  ElementStructure = PRGSequencer::FindElementStructure(a1[3], a2, 0);
  if (ElementStructure)
  {
    v11 = ElementStructure;
    ElementData = PRGSequencer::GetElementData(a1[3], ElementStructure[6]);
    v13 = CFGetAllocator(a1);
    v14 = CFDataCreate(v13, ElementData, v11[5]);
    if (v14)
    {
      v15 = v14;
      result = 0;
      *a3 = v15;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    AMAuthInstallLog(6, "_FlsParserCopyInjectedItem", "not found in this file", v6, v7, v8, v9, v10, v17);
    return 1;
  }

  return result;
}

uint64_t FlsParserReplaceEbl(uint64_t a1, const __CFData *a2)
{
  ElementStructure = PRGSequencer::FindElementStructure(*(a1 + 24), 19, 0);
  if (ElementStructure)
  {
    PRGSequencer::RemoveElement(*(a1 + 24), ElementStructure);

    return sub_10001326C(a1, 0x13u, a2);
  }

  else
  {

    return sub_10001332C(a1, 3, a2);
  }
}

uint64_t sub_10001326C(uint64_t a1, unsigned int a2, const __CFData *a3)
{
  if (!a1)
  {
    return 1;
  }

  Element = PRGSequencer::CreateElement(*(a1 + 24), a2);
  if (Element)
  {
    v7 = Element;
    v8 = *(a1 + 24);
    BytePtr = CFDataGetBytePtr(a3);
    v10 = PRGSequencer::RegisterElementData(v8, BytePtr);
    if (v10 != -1)
    {
      v11 = v10;
      CFArrayAppendValue(*(a1 + 16), a3);
      *v7 = a2;
      *(v7 + 4) = 32;
      Length = CFDataGetLength(a3);
      result = 0;
      *(v7 + 5) = Length;
      *(v7 + 6) = v11;
      return result;
    }

    PRGSequencer::RemoveElement(*(a1 + 24), v7);
  }

  return 2;
}

uint64_t sub_10001332C(uint64_t a1, int a2, const __CFData *a3)
{
  v11 = 0;
  if (sub_10001368C(a1, a2, &v11, 0))
  {
    return 1;
  }

  v6 = *(a1 + 24);
  BytePtr = CFDataGetBytePtr(a3);
  v8 = PRGSequencer::RegisterElementData(v6, BytePtr);
  if (v8 == -1)
  {
    return 2;
  }

  v9 = v8;
  CFArrayAppendValue(*(a1 + 16), a3);
  *(v11 + 32) = v9;
  Length = CFDataGetLength(a3);
  result = 0;
  *(v11 + 28) = Length;
  return result;
}

uint64_t FlsParserCopyEbl(PRGSequencer **a1, void *a2)
{
  v13 = 0;
  if (sub_100013024(a1, 3, &v13, 0) && (v4 = sub_100013148(a1, 19, &v13), v4))
  {
    v10 = v4;
    AMAuthInstallLog(3, "FlsParserCopyEbl", "failed to copy EBL", v5, v6, v7, v8, v9, v12);
  }

  else
  {
    v10 = 0;
    *a2 = v13;
  }

  return v10;
}

uint64_t FlsParserReplaceRamPsi(uint64_t a1, const __CFData *a2)
{
  ElementStructure = PRGSequencer::FindElementStructure(*(a1 + 24), 18, 0);
  if (ElementStructure)
  {
    PRGSequencer::RemoveElement(*(a1 + 24), ElementStructure);

    return sub_10001326C(a1, 0x12u, a2);
  }

  else
  {

    return sub_10001332C(a1, 1, a2);
  }
}

uint64_t FlsParserCopyAsData(PRGSequencer **a1, CFTypeRef *a2)
{
  memset(length, 0, sizeof(length));
  v4 = AMAuthInstallSupportCopyAllocator();
  PRGSequencer::WriteToBuffer(a1[3], &length[1], length);
  if (*&length[1] && (v5 = CFGetAllocator(a1), (v6 = CFDataCreateWithBytesNoCopy(v5, *&length[1], length[0], v4)) != 0))
  {
    v7 = v6;
    *a2 = CFRetain(v6);
    CFRelease(v7);
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  SafeRelease(v4);
  return v8;
}

void sub_1000135B4(uint64_t a1)
{
  if (!a1)
  {
    sub_1000764E8();
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    PRGSequencer::~PRGSequencer(v2);
    operator delete(v3);
  }

  CFRelease(*(a1 + 16));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

CFStringRef sub_1000135F8(const void *a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    sub_100076514();
  }

  v4 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v4, a2, @"<FlsParser %p>", a1);
}

CFStringRef sub_100013644(const void *a1)
{
  if (!a1)
  {
    sub_100076540();
  }

  v2 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<FlsParser %p>", a1);
}

uint64_t sub_10001368C(uint64_t a1, int a2, void *a3, void *a4)
{
  ElementStructure = PRGSequencer::FindElementStructure(*(a1 + 24), 16, 0);
  if (!ElementStructure)
  {
    v17 = "no toc found in this file";
    goto LABEL_8;
  }

  v14 = ElementStructure[3];
  ElementData = PRGSequencer::GetElementData(*(a1 + 24), ElementStructure[4]);
  if (!v14)
  {
LABEL_6:
    v17 = "not found in this file";
    goto LABEL_8;
  }

  v16 = (ElementData + 4);
  while (*v16 != a2)
  {
    v16 += 36;
    if (!--v14)
    {
      goto LABEL_6;
    }
  }

  v19 = *(v16 - 1);
  if (a3)
  {
    v20 = PRGSequencer::FindElementStructure(*(a1 + 24), 12, *(v16 - 1));
    if (!v20)
    {
      v17 = "missing download data";
      goto LABEL_8;
    }

    *a3 = v20;
  }

  if (a4)
  {
    v21 = PRGSequencer::FindElementStructure(*(a1 + 24), 15, v19);
    if (v21)
    {
      v22 = v21;
      result = 0;
      *a4 = v22;
      return result;
    }

    v17 = "missing security pack";
LABEL_8:
    AMAuthInstallLog(3, "_FlsParserFindDownloadItem", v17, v9, v10, v11, v12, v13, v23);
    return 1;
  }

  return 0;
}

void IFWD_MemoryStream::IFWD_MemoryStream(IFWD_MemoryStream *this)
{
  *(this + 2) = 0;
  *this = 0;
  *(this + 2) = 0;
}

void IFWD_MemoryStream::Clear(IFWD_MemoryStream *this)
{
  v2 = *this;
  if (v2)
  {
    operator delete[](v2);
    *this = 0;
    *(this + 2) = 0;
    *(this + 2) = 0;
  }
}

void IFWD_MemoryStream::~IFWD_MemoryStream(IFWD_MemoryStream *this)
{
  v2 = *this;
  if (v2)
  {
    operator delete[](v2);
    *this = 0;
    *(this + 2) = 0;
    *(this + 2) = 0;
  }
}

void IFWD_MemoryStream::SetSize(IFWD_MemoryStream *this, int a2)
{
  if (a2 <= 0)
  {
    v9 = *this;
    if (*this)
    {
      operator delete[](v9);
      *this = 0;
      *(this + 2) = 0;
      *(this + 2) = 0;
    }
  }

  else
  {
    v4 = *(this + 2);
    if (a2 != v4)
    {
      v5 = operator new[]((a2 + 1));
      v6 = v5;
      v7 = *this;
      if (*this)
      {
        v8 = a2;
        if (a2 > v4)
        {
          bzero(&v5[v4], a2 - v4);
          v8 = v4;
        }

        memcpy(v6, v7, v8);
        operator delete[](v7);
      }

      else
      {
        bzero(v5, a2);
      }

      *(this + 2) = a2;
      *this = v6;
      *(this + 2) = v6;
    }
  }
}

void image3Discard(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      if (*v2)
      {
        if ((*(v2 + 10) & 4) != 0)
        {
          free(*v2);
          v2 = *a1;
        }
      }

      free(v2);
      *a1 = 0;
    }
  }
}

uint64_t image3Finalize(uint64_t a1, char **a2, void *a3, int a4, uint64_t a5)
{
  v22 = 0;
  v23 = 0uLL;
  v24 = 0;
  __n = 0;
  __src = 0;
  v17 = 0;
  v18 = 0;
  if (!a4)
  {
    goto LABEL_12;
  }

  result = image3AdvanceCursorWithZeroPad(a1, (56 - *(a1 + 24)) & 0x3F);
  if (!result)
  {
    v10 = *a1;
    v11 = *(a1 + 24);
    *(v10 + 3) = v11 + a5;
    v12 = v10 + 12;
    if (a5)
    {
      v22 = __PAIR64__(v11, a5);
      v13 = &v22;
      image3SHA1Partial(v12, v11 + 8, &v23);
      v14 = 28;
    }

    else
    {
      v13 = v21;
      image3SHA1Generate(v12, v11 + 8, v21);
      v14 = 20;
    }

    result = image3PKISignHash(v13, v14, &__src, &__n, &v18, &v17);
    if (!result)
    {
      if (!__n || (result = image3SetTagStructure(a1, 1397248840, __src, __n, 0), !result))
      {
        if (!v17 || (result = image3SetTagStructure(a1, 1128616532, v18, v17, 0), !result))
        {
          *(a1 + 8) |= 0x20000u;
LABEL_12:
          result = 0;
          v15 = *a1;
          *(v15 + 2) = *(a1 + 24);
          v16 = (*(a1 + 24) + 20);
          *(v15 + 1) = v16;
          *a2 = v15;
          *a3 = v16;
        }
      }
    }
  }

  return result;
}

uint64_t image3AdvanceCursorWithZeroPad(char **a1, int a2)
{
  if ((*(a1 + 10) & 2) != 0)
  {
    return 30;
  }

  v4 = *(a1 + 6);
  v3 = *(a1 + 7);
  LODWORD(v5) = v4 + a2;
  *(a1 + 6) = v4 + a2;
  v6 = *a1;
  if (v3 != -1)
  {
    *&v6[v3 + 24] = v5 - v3;
    LODWORD(v5) = *(a1 + 6);
  }

  v5 = v5;
  v7 = v5 + 20;
  if (v7 <= a1[2])
  {
    goto LABEL_7;
  }

  v6 = realloc(v6, v5 + 20);
  if (v6)
  {
    *a1 = v6;
    a1[2] = v7;
    v5 = *(a1 + 6);
LABEL_7:
    bzero(&v6[v4 + 20], v5 - v4);
    result = 0;
    *(*a1 + 2) = *(a1 + 6);
    return result;
  }

  return 12;
}

uint64_t image3SetTagStructure(char **a1, int a2, void *__src, size_t __n, int a5)
{
  if ((*(a1 + 10) & 2) != 0)
  {
    return 30;
  }

  if (a5)
  {
    v9 = *(a1 + 7);
    v10 = (a5 + *(a1 + 6) / a5 * a5 - *(a1 + 6)) % a5 + *(a1 + 6);
    *(a1 + 6) = v10;
    v11 = *a1;
    if (v9 != -1)
    {
      *&v11[v9 + 24] = v10 - v9;
    }
  }

  else
  {
    v11 = *a1;
  }

  if ((__n & 0xF) != 0)
  {
    v13 = 16 - (__n & 0xF);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 6);
  v15 = __n + v13 + v14 + 32;
  if (v15 > a1[2])
  {
    v11 = realloc(v11, __n + v13 + v14 + 32);
    if (!v11)
    {
      return 12;
    }

    *a1 = v11;
    a1[2] = v15;
    v14 = *(a1 + 6);
  }

  v16 = &v11[v14];
  if (((v13 + __n) & 3) != 0)
  {
    v17 = ((v13 + __n) & 0xFFFFFFFC) + 16;
  }

  else
  {
    v17 = v13 + __n + 12;
  }

  *(v16 + 5) = a2;
  *(v16 + 6) = v17;
  *(v16 + 7) = __n;
  memcpy(v16 + 32, __src, __n);
  bzero(&v16[__n + 32], v13);
  result = 0;
  v18 = *(a1 + 6);
  *(a1 + 7) = v18;
  v19 = *(v16 + 6) + v18;
  *(a1 + 6) = v19;
  *(*a1 + 2) = v19;
  return result;
}

uint64_t image3InstantiateFromBuffer(void *a1, _DWORD *a2, unint64_t a3, char a4)
{
  if (a3 < 0x14)
  {
    return 22;
  }

  if (*a2 != 1231906611)
  {
    return 22;
  }

  v6 = a2[2];
  if (a3 - 20 < v6)
  {
    return 22;
  }

  v7 = a2[3];
  if (v7 > v6 || v6 + 20 > a2[1])
  {
    return 22;
  }

  v11 = malloc(0x28uLL);
  if (!v11)
  {
    return 12;
  }

  v12 = v11;
  v13 = 262145;
  *(v11 + 2) = 1;
  v11[4] = 0;
  if (v7)
  {
    *(v11 + 2) = 131073;
    if ((a4 & 1) == 0)
    {
      *v11 = a2;
      v11[2] = a3;
      goto LABEL_22;
    }

    v13 = 393217;
    goto LABEL_19;
  }

  *(v11 + 6) = v6;
  *(v11 + 7) = -1;
  if (!v6)
  {
LABEL_19:
    v11[2] = v6 + 20;
    v17 = malloc(v6 + 20);
    *v12 = v17;
    if (v17)
    {
      memcpy(v17, a2, v6 + 20);
      v12[2] = v13;
LABEL_22:
      result = 0;
      *a1 = v12;
      return result;
    }

    free(v12);
    return 12;
  }

  v14 = 0;
  while (1)
  {
    v15 = v14;
    v16 = *(a2 + v14 + 24);
    v14 += v16;
    if (v14 > v6 || v16 <= 0xB)
    {
      break;
    }

    if (v14 == v6)
    {
      *(v11 + 7) = v15;
      goto LABEL_19;
    }
  }

  free(v11);
  return 22;
}

uint64_t image3GetTagStruct(uint64_t *a1, int a2, void *a3, void *a4, int a5)
{
  v5 = *a1;
  v6 = *(*a1 + 8);
  if (!v6)
  {
    return 2;
  }

  v7 = v5 + v6 + 20;
  v8 = (v5 + 20);
  while (1)
  {
    v9 = v8 + 3;
    if ((v8 + 3) > v7)
    {
      return 22;
    }

    v10 = v8[2];
    if (v9 + v10 > v7)
    {
      return 22;
    }

    if (a2 == -1 || *v8 == a2)
    {
      break;
    }

LABEL_9:
    v11 = v8[1];
    if (v10 + 12 > v11)
    {
      return 22;
    }

    v8 = (v8 + v11);
    if (v8 >= v7)
    {
      return 2;
    }
  }

  if (a5)
  {
    --a5;
    goto LABEL_9;
  }

  if (a4)
  {
    if (*a4 && *a4 != v10)
    {
      return 22;
    }

    *a4 = v10;
  }

  result = 0;
  *a3 = v9;
  return result;
}

uint64_t image3GetTagSignedNumber(uint64_t *a1, int a2, void *a3, int a4)
{
  v7 = 0;
  v8 = 0;
  result = image3GetTagStruct(a1, a2, &v8, &v7, a4);
  if (!result)
  {
    if (v7 == 8)
    {
      v6 = *v8;
      goto LABEL_6;
    }

    if (v7 == 4)
    {
      v6 = *v8;
LABEL_6:
      result = 0;
      *a3 = v6;
      return result;
    }

    return 22;
  }

  return result;
}

uint64_t image3GetTagString(uint64_t *a1, int a2, void *a3, int a4)
{
  v10 = 0;
  v11 = 0;
  result = image3GetTagStruct(a1, a2, &v11, &v10, a4);
  if (!result)
  {
    if (v10 >= 8 && (v6 = v11, v7 = *v11, v10 >= v7 + 4))
    {
      v8 = malloc(v7 + 1);
      if (v8)
      {
        v9 = v8;
        memcpy(v8, v6 + 1, v7);
        result = 0;
        v9[v7] = 0;
        *a3 = v9;
      }

      else
      {
        return 12;
      }
    }

    else
    {
      return 22;
    }
  }

  return result;
}

uint64_t PRGH_GetLongFromLong(uint64_t result)
{
  v1 = bswap32(result);
  if (mach_endian == 2)
  {
    return v1;
  }

  else
  {
    return result;
  }
}

uint64_t PRGH_GetEndian(char *a1)
{
  if (*a1 == 1000)
  {
    return 1;
  }

  else
  {
    return 2 * (*a1 == -402456576);
  }
}

uint64_t PRGH_FileCheck(char *a1)
{
  v1 = *a1;
  v2 = 2 * (*a1 == -402456576);
  if (*a1 == 1000)
  {
    v2 = 1;
  }

  mach_endian = v2;
  v3 = *a1;
  v4 = bswap32(*a1);
  if (v1 == -402456576)
  {
    v3 = v4;
  }

  if (v3 != 1000)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = bswap32(*(a1 + 1));
  v6 = v1 == -402456576 ? v5 : *(a1 + 1);
  if (v6 != 40)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a1 + 2);
  v8 = bswap32(v7);
  if (v1 == -402456576)
  {
    v7 = v8;
  }

  if (v7)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = *(a1 + 3);
  v12 = bswap32(v11);
  if (v1 == -402456576)
  {
    v11 = v12;
  }

  v9 = 0xFFFFFFFFLL;
  if (v11 && (v11 & 0xFE) <= 5)
  {
    v13 = *(a1 + 4);
    v14 = bswap32(v13);
    if (v1 == -402456576)
    {
      v13 = v14;
    }

    if (v13 == 1765222897)
    {
      return v11;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v9;
}

uint64_t PRGH_VersionCheck(char *a1, int a2, unsigned int a3)
{
  v11 = 0;
  if (!PRGH_GetElementIndex(a1, a2, 0, &v11))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = &a1[v11];
  v6 = *(v5 + 1);
  v7 = bswap32(v6);
  if (mach_endian == 2)
  {
    v6 = v7;
  }

  if (v6 != 20)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(v5 + 3);
  v9 = bswap32(v8);
  if (mach_endian == 2)
  {
    result = v9;
  }

  else
  {
    result = v8;
  }

  if (result <= a3 && HIWORD(a3) <= WORD1(result))
  {
    return 0;
  }

  return result;
}

uint64_t PRGH_GetElementIndex(char *a1, int a2, int a3, unsigned int *a4)
{
  v4 = 0;
  *a4 = -1;
  v5 = a1;
  while (1)
  {
    v6 = *v5;
    v7 = bswap32(*v5);
    if (mach_endian == 2)
    {
      v6 = v7;
    }

    if (v6 == a2)
    {
      v8 = v5[2];
      v9 = bswap32(v8);
      if (mach_endian == 2)
      {
        v8 = v9;
      }

      if (v8 == a3)
      {
        break;
      }
    }

    v10 = v5[1];
    if (v10)
    {
      v11 = bswap32(v10);
      if (mach_endian == 2)
      {
        v10 = v11;
      }

      v4 += v10;
      v5 = &a1[v4];
      if (v6 != 2)
      {
        continue;
      }
    }

    return 0;
  }

  *a4 = v4;
  return 1;
}

BOOL PRGH_GetNextElementIndex(char *a1, unsigned int *a2)
{
  v2 = *a2;
  *a2 = -1;
  v3 = *&a1[v2];
  v4 = bswap32(v3);
  if (mach_endian == 2)
  {
    v3 = v4;
  }

  if (v3 != 2)
  {
    v5 = *&a1[v2 + 4];
    v6 = bswap32(v5);
    if (mach_endian == 2)
    {
      v5 = v6;
    }

    *a2 = v5 + v2;
  }

  return v3 != 2;
}

uint64_t PRGH_WriteElement(IFWD_MemoryStream *a1, unsigned int a2, unsigned int a3, char *a4, unsigned int a5, const void *a6)
{
  v12 = a5 + 12;
  v13 = *(a1 + 2);
  v14 = v13 + a5 + 12;
  IFWD_MemoryStream::SetSize(a1, v14);
  v17 = (*(a1 + 2) + v13);
  if (mach_endian == 2)
  {
    CalledByWrite = 1;
    PRGH_SwapElementEndian((a4 - 12), a2, a6, v15, v16);
    CalledByWrite = 0;
    v18 = mach_endian == 2;
    v19 = bswap32(v14);
    if (mach_endian == 2)
    {
      v14 = v19;
    }
  }

  else
  {
    v18 = 0;
  }

  v20 = a5;
  if (a2 <= 0x19)
  {
    if (((1 << a2) & 0x700000) != 0 || ((1 << a2) & 0x3800000) != 0)
    {
      *(a4 + 1) = 0;
      v21 = 8;
      v22 = a4;
      goto LABEL_15;
    }

    if (((1 << a2) & 0xC0000) != 0)
    {
      *(a4 + 3) = 0;
      v22 = a4 + 8;
      v21 = 16;
      goto LABEL_15;
    }
  }

  if (a2 != 16)
  {
    if (a2 != 12)
    {
      v24 = 0;
      v23 = 0;
LABEL_16:
      v25 = bswap32(v23);
      if (v18)
      {
        v26 = v25;
      }

      else
      {
        v26 = v23;
      }

      goto LABEL_19;
    }

    *(a4 + 5) = 0;
    v22 = a4 + 16;
    v21 = 24;
LABEL_15:
    v23 = *v22;
    *&a4[v21] = v14;
    v24 = 1;
    goto LABEL_16;
  }

  v41 = *a4;
  v42 = bswap32(*a4);
  if (v18)
  {
    v41 = v42;
  }

  v26 = 144 * v41;
  *(a4 + 1) = 0;
  *(a4 + 2) = v14;
  v24 = 1;
LABEL_19:
  v27 = a2 >> 8;
  v28 = HIBYTE(a2);
  v29 = !v18;
  if (v18)
  {
    v30 = a2;
  }

  else
  {
    v30 = HIBYTE(a2);
  }

  if (v29)
  {
    v31 = BYTE1(a2);
  }

  else
  {
    v31 = BYTE2(a2);
  }

  if (v29)
  {
    LOBYTE(v28) = a2;
  }

  *v17 = v28;
  v17[1] = v31;
  if (v29)
  {
    LOBYTE(v27) = BYTE2(a2);
  }

  v17[2] = v27;
  v17[3] = v30;
  if (v24)
  {
    v32 = v26 + v12;
    v33 = (v26 + v12) >> 8;
    if (mach_endian == 2)
    {
      v34 = (v26 + v12) >> 24;
    }

    else
    {
      v34 = v26 + v12;
    }

    if (mach_endian == 2)
    {
      v35 = (v26 + v12) >> 16;
    }

    else
    {
      v35 = (v26 + v12) >> 8;
    }

    if (mach_endian != 2)
    {
      LOBYTE(v33) = (v26 + v12) >> 16;
      v32 = (v26 + v12) >> 24;
    }
  }

  else
  {
    v33 = v12 >> 8;
    if (mach_endian == 2)
    {
      v34 = HIBYTE(v12);
    }

    else
    {
      v34 = v12;
    }

    if (mach_endian == 2)
    {
      v35 = BYTE2(v12);
    }

    else
    {
      v35 = BYTE1(v12);
    }

    if (mach_endian == 2)
    {
      v32 = v12;
    }

    else
    {
      LOBYTE(v33) = BYTE2(v12);
      v32 = HIBYTE(v12);
    }
  }

  v17[4] = v34;
  v17[5] = v35;
  v17[6] = v33;
  v17[7] = v32;
  v36 = a3 >> 8;
  if (mach_endian == 2)
  {
    v37 = a3;
  }

  else
  {
    v37 = HIBYTE(a3);
  }

  if (mach_endian == 2)
  {
    v38 = BYTE1(a3);
  }

  else
  {
    v38 = BYTE2(a3);
  }

  if (mach_endian == 2)
  {
    LOBYTE(v36) = BYTE2(a3);
    v39 = HIBYTE(a3);
  }

  else
  {
    v39 = a3;
  }

  v17[8] = v39;
  v17[9] = v36;
  v17[10] = v38;
  v17[11] = v37;
  memcpy(v17 + 12, a4, v20);
  if (v24)
  {
    IFWD_MemoryStream::SetSize(a1, *(a1 + 2) + v26);
    memcpy((*(a1 + 2) + v13 + v12), a6, v26);
  }

  return 0;
}

uint64_t PRGH_SwapElementEndian(int8x16_t *a1, int a2, uint64_t a3, uint8x8_t a4, uint8x8_t a5)
{
  switch(a2)
  {
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 26:
    case 27:
    case 28:
    case 30:
      for (i = 0; i != 5; ++i)
      {
        a4.i32[0] = a1->i32[i];
        v6 = vrev64_s16(*&vmovl_u8(a4));
        a4 = vuzp1_s8(v6, v6);
        a1->i32[i] = a4.i32[0];
      }

      return 0;
    case 11:
      swap_MemoryMapElementStructType_endian(a1, a4);
      return 0;
    case 12:
      swap_DownloadDataElementStructType_endian(a1, a4);
      return 0;
    case 13:
      swap_HardwareElementStructType_endian(a1);
      return 0;
    case 14:
      for (j = 0; j != 287; ++j)
      {
        a4.i32[0] = a1->i32[j];
        v12 = vrev64_s16(*&vmovl_u8(a4));
        a4 = vuzp1_s8(v12, v12);
        a1->i32[j] = a4.i32[0];
      }

      return 0;
    case 15:
      swap_SecurityElementStructType_endian(a1, a4);
      return 0;
    case 16:
      swap_TocElementStructType_endian(a1, a3, a4, a5);
      return 0;
    case 17:
      for (k = 0; k != 7; ++k)
      {
        a4.i32[0] = a1->i32[k];
        v10 = vrev64_s16(*&vmovl_u8(a4));
        a4 = vuzp1_s8(v10, v10);
        a1->i32[k] = a4.i32[0];
      }

      return 0;
    case 18:
    case 19:
      swap_InjectionElementStructType_endian(a1, a4);
      return 0;
    case 20:
    case 21:
    case 22:
      swap_VersionDataElementStructType_endian(a1, a4);
      return 0;
    case 23:
    case 24:
    case 25:
      swap_StorageDataElementStructType_endian(a1, a4);
      return 0;
    case 29:
      swap_IndirectDownloadDataElementStructType_endian(a1, a4);
      return 0;
    default:
      if (a2 != 1000)
      {
        return 1;
      }

      for (m = 0; m != 10; ++m)
      {
        a4.i32[0] = a1->i32[m];
        v8 = vrev64_s16(*&vmovl_u8(a4));
        a4 = vuzp1_s8(v8, v8);
        a1->i32[m] = a4.i32[0];
      }

      return 0;
  }
}

uint64_t swap_VersionDataElementStructType_endian(uint64_t a1, uint8x8_t a2)
{
  for (i = 0; i != 12; i += 4)
  {
    a2.i32[0] = *(a1 + i);
    v3 = vrev64_s16(*&vmovl_u8(a2));
    a2 = vuzp1_s8(v3, v3);
    *(a1 + i) = a2.i32[0];
  }

  a2.i32[0] = *(a1 + 12);
  v4 = vrev64_s16(*&vmovl_u8(a2));
  v5 = vuzp1_s8(v4, v4);
  *(a1 + 12) = v5.i32[0];
  v5.i32[0] = *(a1 + 20);
  v6 = vrev64_s16(*&vmovl_u8(v5));
  *(a1 + 20) = vuzp1_s8(v6, v6).u32[0];
  return 1;
}

uint64_t swap_StorageDataElementStructType_endian(uint64_t a1, uint8x8_t a2)
{
  for (i = 0; i != 12; i += 4)
  {
    a2.i32[0] = *(a1 + i);
    v3 = vrev64_s16(*&vmovl_u8(a2));
    a2 = vuzp1_s8(v3, v3);
    *(a1 + i) = a2.i32[0];
  }

  a2.i32[0] = *(a1 + 12);
  v4 = vrev64_s16(*&vmovl_u8(a2));
  v5 = vuzp1_s8(v4, v4);
  *(a1 + 12) = v5.i32[0];
  v5.i32[0] = *(a1 + 20);
  v6 = vrev64_s16(*&vmovl_u8(v5));
  *(a1 + 20) = vuzp1_s8(v6, v6).u32[0];
  return 1;
}

uint64_t swap_InjectionElementStructType_endian(uint64_t a1, uint8x8_t a2)
{
  for (i = 0; i != 12; i += 4)
  {
    a2.i32[0] = *(a1 + i);
    v3 = vrev64_s16(*&vmovl_u8(a2));
    a2 = vuzp1_s8(v3, v3);
    *(a1 + i) = a2.i32[0];
  }

  v4 = *(a1 + 12);
  if (CalledByWrite == 1)
  {
    *(a1 + 12) = v4 << 16;
    v5 = *(a1 + 16) << 24;
  }

  else
  {
    *(a1 + 12) = HIWORD(v4);
    v5 = *(a1 + 19);
  }

  *(a1 + 16) = v5;
  a2.i32[0] = *(a1 + 20);
  v6 = vrev64_s16(*&vmovl_u8(a2));
  v7 = vuzp1_s8(v6, v6);
  *(a1 + 20) = v7.i32[0];
  v7.i32[0] = *(a1 + 28);
  v8 = vrev64_s16(*&vmovl_u8(v7));
  *(a1 + 28) = vuzp1_s8(v8, v8).u32[0];
  return 1;
}

uint64_t swap_DownloadDataElementStructType_endian(uint64_t a1, uint8x8_t a2)
{
  for (i = 0; i != 12; i += 4)
  {
    a2.i32[0] = *(a1 + i);
    v3 = vrev64_s16(*&vmovl_u8(a2));
    a2 = vuzp1_s8(v3, v3);
    *(a1 + i) = a2.i32[0];
  }

  v4 = vrev32_s8(*(a1 + 12));
  *(a1 + 12) = v4;
  v4.i32[0] = *(a1 + 20);
  v5 = vrev64_s16(*&vmovl_u8(v4));
  v6 = vuzp1_s8(v5, v5);
  *(a1 + 20) = v6.i32[0];
  v7 = *(a1 + 24) << 16;
  if (CalledByWrite)
  {
    v8 = *(a1 + 24) << 16;
  }

  else
  {
    v8 = *(a1 + 24) >> 16;
  }

  *(a1 + 24) = v8;
  v6.i32[0] = *(a1 + 28);
  v9 = vrev64_s16(*&vmovl_u8(v6));
  v10 = vuzp1_s8(v9, v9);
  *(a1 + 28) = v10.i32[0];
  v10.i32[0] = *(a1 + 36);
  v11 = vrev64_s16(*&vmovl_u8(v10));
  *(a1 + 36) = vuzp1_s8(v11, v11).u32[0];
  return 1;
}

uint64_t swap_IndirectDownloadDataElementStructType_endian(uint64_t a1, uint8x8_t a2)
{
  for (i = 0; i != 12; i += 4)
  {
    a2.i32[0] = *(a1 + i);
    v3 = vrev64_s16(*&vmovl_u8(a2));
    a2 = vuzp1_s8(v3, v3);
    *(a1 + i) = a2.i32[0];
  }

  v4 = vrev32_s8(*(a1 + 12));
  *(a1 + 12) = v4;
  v4.i32[0] = *(a1 + 20);
  v5 = vrev64_s16(*&vmovl_u8(v4));
  v6 = vuzp1_s8(v5, v5);
  *(a1 + 20) = v6.i32[0];
  *(a1 + 24) <<= 16;
  v6.i32[0] = *(a1 + 28);
  v7 = vrev64_s16(*&vmovl_u8(v6));
  v8 = vuzp1_s8(v7, v7);
  *(a1 + 28) = v8.i32[0];
  v8.i32[0] = *(a1 + 36);
  v9 = vrev64_s16(*&vmovl_u8(v8));
  *(a1 + 36) = vuzp1_s8(v9, v9).u32[0];
  return 1;
}

uint64_t swap_SecurityElementStructType_endian(int8x16_t *a1, uint8x8_t a2)
{
  for (i = 0; i != 3; ++i)
  {
    a2.i32[0] = a1->i32[i];
    v3 = vrev64_s16(*&vmovl_u8(a2));
    a2 = vuzp1_s8(v3, v3);
    a1->i32[i] = a2.i32[0];
  }

  v4 = 0;
  a2.i32[0] = a1[32].i32[3];
  v5 = vrev64_s16(*&vmovl_u8(a2));
  a1[32].i32[3] = vuzp1_s8(v5, v5).u32[0];
  v6 = vrev32q_s8(a1[46]);
  a1[46] = v6;
  v7 = a1 + 47;
  do
  {
    v6.i32[0] = v7->i32[v4];
    v8 = vrev64_s16(*&vmovl_u8(*v6.i8));
    *v6.i8 = vuzp1_s8(v8, v8);
    v7->i32[v4++] = v6.i32[0];
  }

  while (v4 != 5);
  v9 = 0;
  v10 = &a1[48].i8[4];
  do
  {
    v6.i32[0] = *&v10[v9];
    v11 = vrev64_s16(*&vmovl_u8(*v6.i8));
    *v6.i8 = vuzp1_s8(v11, v11);
    *&v10[v9] = v6.i32[0];
    v9 += 4;
  }

  while (v9 != 20);
  v12 = 0;
  v13 = &a1[49].i8[8];
  do
  {
    v14 = &v13[v12];
    v15 = vrev32q_s8(*&v13[v12 + 16]);
    v16 = vrev32q_s8(*&v13[v12]);
    v17 = vrev32q_s8(*&v13[v12 + 48]);
    v18 = vrev32q_s8(*&v13[v12 + 32]);
    v14[2] = v18;
    v14[3] = v17;
    *v14 = v16;
    v14[1] = v15;
    v12 += 64;
  }

  while (v12 != 1024);
  v19 = 0;
  v20 = &a1[113].i8[8];
  do
  {
    v18.i32[0] = *&v20[v19];
    v21 = vrev64_s16(*&vmovl_u8(*v18.i8));
    *v18.i8 = vuzp1_s8(v21, v21);
    *&v20[v19] = v18.i32[0];
    v19 += 4;
  }

  while (v19 != 112);
  v22 = 0;
  v18.i32[0] = a1[120].i32[2];
  v23 = vrev64_s16(*&vmovl_u8(*v18.i8));
  a1[120].i32[2] = vuzp1_s8(v23, v23).u32[0];
  v24 = &a1[120].i8[12];
  do
  {
    v25 = &v24[v22];
    v26 = vrev32q_s8(*&v24[v22 + 16]);
    v27 = vrev32q_s8(*&v24[v22]);
    v28 = vrev32q_s8(*&v24[v22 + 48]);
    v25[2] = vrev32q_s8(*&v24[v22 + 32]);
    v25[3] = v28;
    *v25 = v27;
    v25[1] = v26;
    v22 += 64;
  }

  while (v22 != 128);
  return 1;
}

uint64_t swap_MemoryMapElementStructType_endian(uint64_t a1, uint8x8_t a2)
{
  for (i = 0; i != 12; i += 4)
  {
    a2.i32[0] = *(a1 + i);
    v3 = vrev64_s16(*&vmovl_u8(a2));
    a2 = vuzp1_s8(v3, v3);
    *(a1 + i) = a2.i32[0];
  }

  *(a1 + 1612) = vrev32q_s8(*(a1 + 1612));
  v4 = vrev32_s8(*(a1 + 1628));
  *(a1 + 1628) = v4;
  v4.i32[0] = *(a1 + 1636);
  v5 = vrev64_s16(*&vmovl_u8(v4));
  *(a1 + 1636) = vuzp1_s8(v5, v5).u32[0];
  for (j = 12; j != 1612; j += 32)
  {
    *(a1 + j) = vrev32q_s8(*(a1 + j));
  }

  return 1;
}

uint64_t swap_TocElementStructType_endian(uint64_t a1, uint64_t a2, uint8x8_t a3, uint8x8_t a4)
{
  for (i = 0; i != 12; i += 4)
  {
    a3.i32[0] = *(a1 + i);
    v5 = vrev64_s16(*&vmovl_u8(a3));
    a3 = vuzp1_s8(v5, v5);
    *(a1 + i) = a3.i32[0];
  }

  a3.i32[0] = *(a1 + 12);
  v6 = vrev64_s16(*&vmovl_u8(a3));
  v7 = vuzp1_s8(v6, v6);
  *(a1 + 12) = v7.i32[0];
  v8 = bswap32(v7.u32[0]);
  if ((CalledByWrite & (mach_endian == 2)) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7.u32[0];
  }

  if (v9)
  {
    v10 = (a2 + 12);
    do
    {
      v11 = vrev32_s8(*(v10 - 3));
      *(v10 - 3) = v11;
      v11.i32[0] = *(v10 - 1);
      a4.i32[0] = *v10;
      v12 = vrev64_s16(*&vmovl_u8(v11));
      v7 = vuzp1_s8(v12, v12);
      a4 = vuzp1_s8(vrev64_s16(*&vmovl_u8(a4)), v7);
      v7.i32[1] = a4.i32[0];
      *(v10 - 1) = v7;
      v10 += 36;
      --v9;
    }

    while (v9);
  }

  v7.i32[0] = *(a1 + 20);
  v13 = vrev64_s16(*&vmovl_u8(v7));
  *(a1 + 20) = vuzp1_s8(v13, v13).u32[0];
  return 1;
}

BOOL PRGSequencer::AddToGlobalStruct(PRGSequencer *this, char *a2)
{
  v2 = *(this + 812);
  if (v2 <= 199)
  {
    LongFromLong = PRGH_GetLongFromLong(*a2);
    PRGSequencer::AllocateAndCopy(this, a2, LongFromLong);
  }

  return v2 < 200;
}

uint64_t PRGSequencer::AllocateAndCopy(PRGSequencer *this, char *a2, unsigned int a3)
{
  v3 = *(this + 812);
  if (v3 > 199)
  {
    return 0;
  }

  switch(a3)
  {
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Eu:
      v8 = 20;
      v9 = 20;
      goto LABEL_15;
    case 0xBu:
      v8 = 1640;
      v9 = 1640;
      goto LABEL_15;
    case 0xCu:
    case 0x1Du:
      v8 = 40;
      v9 = 40;
      goto LABEL_15;
    case 0xDu:
      v8 = 184;
      v9 = 184;
      goto LABEL_15;
    case 0xEu:
      v8 = 1148;
      v9 = 1148;
      goto LABEL_15;
    case 0xFu:
      v8 = 2060;
      v9 = 2060;
      goto LABEL_15;
    case 0x10u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
      v8 = 24;
      v9 = 24;
      goto LABEL_15;
    case 0x11u:
      v8 = 28;
      v9 = 28;
      goto LABEL_15;
    case 0x12u:
    case 0x13u:
      v8 = 32;
      v9 = 32;
LABEL_15:
      v10 = malloc(v9);
      v11 = v10;
      break;
    default:
      if (a3 != 1000)
      {
        return 0;
      }

      v8 = 40;
      v10 = malloc(0x28uLL);
      v11 = v10;
      break;
  }

  v12 = this + 48;
  *(this + v3 + 6) = v11;
  if (a2)
  {
    memcpy(v11, a2, v8);
    v13 = PRGSequencer::TamperDataAfterRead(this, a3, a2);
    if (*(this + 814) == 2)
    {
      if ((v13 & 0x80000000) != 0 || *(this + 813) <= v13)
      {
        v16 = 0;
      }

      else
      {
        v16 = *(this + v13 + 206);
      }

      PRGH_SwapElementEndian(*&v12[8 * *(this + 812)], a3, v16, v14, v15);
    }
  }

  else
  {
    PRGSequencer::InitializeElement(v10, v11, a3, v8);
    *v11 = a3;
    v11[1] = v8;
  }

  v17 = *(this + 2);
  v18 = *(this + 812);
  if (v17)
  {
    v17(*&v12[8 * v18]);
    v18 = *(this + 812);
  }

  *(this + 812) = v18 + 1;
  return 1;
}

uint64_t PRGSequencer::TamperDataAfterRead(PRGSequencer *this, unsigned int a2, char *a3)
{
  if (a2 <= 0x19)
  {
    if (((1 << a2) & 0x700000) != 0)
    {
      goto LABEL_13;
    }

    if (((1 << a2) & 0x3800000) != 0)
    {
      v3 = *(this + 813);
      v4 = 16;
      if (v3 > 199)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    if (((1 << a2) & 0xC0000) != 0)
    {
      v3 = *(this + 813);
      v4 = 24;
      if (v3 < 200)
      {
        v5 = 32;
        goto LABEL_15;
      }

LABEL_16:
      v3 = 0xFFFFFFFFLL;
      goto LABEL_17;
    }
  }

  if (a2 == 16)
  {
LABEL_13:
    v3 = *(this + 813);
    v4 = 16;
    if (v3 < 200)
    {
LABEL_14:
      v5 = 24;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (a2 != 12)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(this + 813);
  v4 = 32;
  if (v3 >= 200)
  {
    goto LABEL_16;
  }

  v5 = 40;
LABEL_15:
  *(this + v3 + 206) = &a3[v5];
  *(this + 813) = v3 + 1;
LABEL_17:
  *(*(this + *(this + 812) + 6) + v4) = v3;
  return v3;
}

uint64_t PRGSequencer::GetElementData(PRGSequencer *this, unsigned int a2)
{
  if (*(this + 813) <= a2)
  {
    return 0;
  }

  else
  {
    return *(this + a2 + 206);
  }
}

void PRGSequencer::InitializeElement(PRGSequencer *this, char *a2, int a3, int a4)
{
  bzero(a2, a4);
  v6 = 0x2000200020002;
  switch(a3)
  {
    case 3:
      goto LABEL_15;
    case 4:
    case 5:
      v6 = vdup_n_s32(0x20003u);
      goto LABEL_15;
    case 6:
    case 7:
    case 8:
    case 26:
    case 27:
    case 28:
    case 30:
      v6 = 0x20000;
      goto LABEL_15;
    case 9:
      v6 = 0x40000;
      goto LABEL_15;
    case 10:
      v6 = 0x10000;
LABEL_15:
      *(a2 + 12) = v6;
      break;
    case 11:
      v7 = xmmword_100085BB0;
      v8 = xmmword_100085BC0;
      v9 = a2 + 76;
      v10 = 52;
      v11 = vdupq_n_s64(0x32uLL);
      v12 = vdupq_n_s64(4uLL);
      do
      {
        if (vuzp1_s16(vmovn_s64(vcgtq_u64(v11, v8)), *v7.i8).u8[0])
        {
          *(v9 - 16) = -1;
        }

        if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x32uLL), *&v8)), *&v7).i8[2])
        {
          *(v9 - 8) = -1;
        }

        if (vuzp1_s16(*&v7, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x32uLL), *&v7))).i32[1])
        {
          *v9 = -1;
          v9[8] = -1;
        }

        v7 = vaddq_s64(v7, v12);
        v8 = vaddq_s64(v8, v12);
        v9 += 32;
        v10 -= 4;
      }

      while (v10);
      break;
    default:
      return;
  }
}

uint64_t PRGSequencer::RegisterElementData(PRGSequencer *this, const void *a2)
{
  result = *(this + 813);
  if (result > 199)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + result + 206) = a2;
  *(this + 813) = result + 1;
  return result;
}

_DWORD *PRGSequencer::FindElementStructure(PRGSequencer *this, int a2, int a3)
{
  v3 = *(this + 812);
  v4 = v3 - 1;
  if (v3 < 1)
  {
    return 0;
  }

  v5 = (this + 48);
  if (v4 >= 0xC7)
  {
    v4 = 199;
  }

  v6 = v4 + 1;
  while (1)
  {
    result = *v5;
    if (*v5)
    {
      if (*result == a2 && result[2] == a3)
      {
        break;
      }
    }

    ++v5;
    if (!--v6)
    {
      return 0;
    }
  }

  return result;
}

uint64_t PRGSequencer::WriteElementToFile(PRGSequencer *this, IFWD_MemoryStream *a2, unsigned int a3, unsigned int a4, char *a5)
{
  v5 = 0;
  v6 = 28;
  switch(a3)
  {
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Eu:
      v5 = 0;
      v6 = 8;
      goto LABEL_22;
    case 0xBu:
      v5 = 0;
      v6 = 1628;
      goto LABEL_22;
    case 0xCu:
      v10 = *(a5 + 8);
      if (*(this + 813) <= v10)
      {
        v5 = 0;
      }

      else
      {
        v5 = *(this + v10 + 206);
      }

      v6 = 28;
      goto LABEL_22;
    case 0xDu:
      v5 = 0;
      v6 = 172;
      goto LABEL_22;
    case 0xEu:
      v5 = 0;
      v6 = 1136;
      goto LABEL_22;
    case 0xFu:
      v5 = 0;
      v6 = 2048;
      goto LABEL_22;
    case 0x10u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
      v7 = *(a5 + 4);
      if (*(this + 813) <= v7)
      {
        v5 = 0;
      }

      else
      {
        v5 = *(this + v7 + 206);
      }

      v6 = 12;
      goto LABEL_22;
    case 0x11u:
      v5 = 0;
      v6 = 16;
      goto LABEL_22;
    case 0x12u:
    case 0x13u:
      v9 = *(a5 + 6);
      if (*(this + 813) <= v9)
      {
        v5 = 0;
      }

      else
      {
        v5 = *(this + v9 + 206);
      }

      v6 = 32;
      goto LABEL_22;
    case 0x1Du:
      goto LABEL_22;
    default:
      if (a3 != 1000)
      {
        return 0;
      }

LABEL_22:
      PRGH_WriteElement(a2, a3, a4, a5 + 12, v6, v5);
      return 1;
  }
}

void PRGSequencer::PRGSequencer(PRGSequencer *this)
{
  v2 = operator new(0x18uLL);
  IFWD_MemoryStream::IFWD_MemoryStream(v2);
  *this = v3;
  *(this + 3260) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 10) = 0;
  bzero(this + 48, 0xC88uLL);
}

void PRGSequencer::~PRGSequencer(IFWD_MemoryStream **this)
{
  PRGSequencer::CleanUp(this);
  if (*this)
  {
    IFWD_MemoryStream::~IFWD_MemoryStream(*this);
    operator delete(v2);
    *this = 0;
  }
}

void PRGSequencer::CleanUp(IFWD_MemoryStream **this)
{
  IFWD_MemoryStream::Clear(*this);
  v2 = *(this + 812);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = (this + 6);
    do
    {
      v5 = *&v4[8 * v3];
      if (v5)
      {
        free(v5);
        v2 = *(this + 812);
      }

      *&v4[8 * v3++] = 0;
    }

    while (v3 < v2);
  }

  *(this + 812) = 0;
  this[3] = 0;
  this[4] = 0;
  *(this + 10) = 0;
}

uint64_t PRGSequencer::ReadBuffer(PRGSequencer *this, const char *a2, unsigned int a3, int a4, unsigned int a5, void (*a6)(void *))
{
  IFWD_MemoryStream::Clear(*this);
  v12 = operator new[](a3 + 1);
  v13 = *this;
  *v13 = v12;
  *(v13 + 2) = v12;
  memcpy(v12, a2, a3);
  *(v13 + 2) = a3;
  *(this + 814) = PRGH_GetEndian(v12);
  v14 = PRGH_FileCheck(*(*this + 16));
  if (v14 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 815) = a4;
  *(this + 817) = v14;
  if (v14 == 5)
  {
    v15 = 0;
  }

  else
  {
    v16 = PRGH_VersionCheck(*(*this + 16), a4, a5);
    v15 = v16;
    if (v16 && (*(this + 815) != 5 || HIWORD(a5) <= WORD1(v16) || *(this + 817) != 1))
    {
      return v15;
    }
  }

  v21 = 0;
  *(this + 2) = a6;
  v17 = *(*this + 16);
  if (PRGH_GetElementIndex(v17, 1000, 0, &v21))
  {
    v18 = &v17[v21];
    v19 = *(v18 + 9);
    *(this + 24) = *(v18 + 20);
    *(this + 10) = v19;
    PRGSequencer::AddToGlobalStruct(this, v18);
    while (PRGH_GetNextElementIndex(v17, &v21))
    {
      PRGSequencer::AddToGlobalStruct(this, &v17[v21]);
    }
  }

  return v15;
}

uint64_t PRGSequencer::WriteToBuffer(PRGSequencer *this, char **a2, unsigned int *a3)
{
  v6 = operator new(0x18uLL);
  IFWD_MemoryStream::IFWD_MemoryStream(v6);
  *(this + 1) = v7;
  IFWD_MemoryStream::Clear(v7);
  v8 = *(this + 812);
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      v10 = *(this + i + 6);
      if (v10)
      {
        v11 = *v10;
        if ((*v10 & 0xFFFFFFFA) != 0x12 && (v11 > 0x1D || ((1 << v11) & 0x23319000) == 0))
        {
          PRGSequencer::WriteElementToFile(this, *(this + 1), v11, v10[2], v10);
          v8 = *(this + 812);
        }
      }

      if (i > 0xC6)
      {
        break;
      }
    }
  }

  if (*(this + 815) != 5 && v8 >= 1)
  {
    v14 = 0;
    do
    {
      v15 = *(this + v14 + 6);
      if (v15)
      {
        v16 = *v15;
        if ((*v15 & 0xFFFFFFFA) == 0x12 || (v16 <= 0x1D ? (v17 = ((1 << v16) & 0x23319000) == 0) : (v17 = 1), !v17))
        {
          PRGSequencer::WriteElementToFile(this, *(this + 1), v16, v15[2], v15);
          v8 = *(this + 812);
        }
      }

      if (v14 > 0xC6)
      {
        break;
      }

      ++v14;
    }

    while (v14 < v8);
  }

  PRGH_WriteElement(*(this + 1), 2u, 0, 0, 0, 0);
  v18 = malloc(*(*(this + 1) + 8));
  *a2 = v18;
  v19 = *(this + 1);
  if (v18)
  {
    memcpy(v18, *(v19 + 16), *(v19 + 8));
    v20 = 0;
    *a3 = *(v19 + 8);
LABEL_29:
    IFWD_MemoryStream::~IFWD_MemoryStream(v19);
    operator delete(v21);
    *(this + 1) = 0;
    return v20;
  }

  v20 = 5;
  if (v19)
  {
    goto LABEL_29;
  }

  return v20;
}

uint64_t PRGSequencer::CreateElement(PRGSequencer *this, unsigned int a2)
{
  v3 = PRGSequencer::AllocateAndCopy(this, 0, a2);
  result = 0;
  if (v3)
  {
    return *(this + *(this + 812) + 5);
  }

  return result;
}

BOOL PRGSequencer::RemoveElement(PRGSequencer *this, void *a2)
{
  v2 = *(this + 812);
  if (v2 < 1)
  {
    return 0;
  }

  v4 = (this + 48);
  v3 = *(this + 6);
  if (v3 == a2)
  {
    v9 = 1;
    if (a2)
    {
LABEL_17:
      free(v3);
    }
  }

  else
  {
    v5 = 0;
    v6 = (v2 - 1);
    if (v6 >= 0xC7)
    {
      v6 = 199;
    }

    do
    {
      if (v6 == v5)
      {
        return v5 < 0xC7 && v5 + 1 < v2;
      }

      v7 = v4[1];
      ++v4;
      v3 = v7;
      ++v5;
    }

    while (v7 != a2);
    v9 = v5 - 1 < 0xC7 && v5 < v2;
    if (a2)
    {
      goto LABEL_17;
    }
  }

  *v4 = 0;
  return v9;
}

unint64_t b64_ntop(unsigned __int8 *a1, unint64_t a2, _BYTE *a3, unint64_t a4)
{
  *a3 = 0;
  if (a2 >= 3)
  {
    v5 = 0;
    while (1)
    {
      result = v5 + 4;
      if (v5 + 4 > a4)
      {
        goto LABEL_16;
      }

      v7 = a1[2];
      v8 = a1[1];
      v9 = *a1;
      a1 += 3;
      a2 -= 3;
      v10 = &a3[v5];
      *v10 = aAbcdefghijklmn[v9 >> 2];
      v10[1] = aAbcdefghijklmn[(v8 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v9 & 3))];
      v10[2] = aAbcdefghijklmn[(v7 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v8 & 0xF))];
      v10[3] = aAbcdefghijklmn[v7 & 0x3F];
      v5 = result;
      if (a2 <= 2)
      {
        if (a2)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }
  }

  result = 0;
  if (a2)
  {
LABEL_8:
    v11 = 0;
    v18 = 0;
    v17 = 0;
    do
    {
      *(&v17 + v11) = a1[v11];
      ++v11;
    }

    while (a2 > v11);
    if (result + 4 > a4)
    {
      goto LABEL_16;
    }

    v12 = HIBYTE(v17);
    v13 = (HIBYTE(v17) >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v17 & 3));
    v14 = &a3[result];
    *v14 = aAbcdefghijklmn[v17 >> 2];
    v15 = v18;
    v14[1] = aAbcdefghijklmn[v13];
    v16 = 61;
    if (a2 != 1)
    {
      v16 = aAbcdefghijklmn[(v15 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v12 & 0xF))];
    }

    a3[result | 2] = v16;
    v14[3] = 61;
    result += 4;
  }

LABEL_14:
  if (result < a4)
  {
    a3[result] = 0;
    return result;
  }

LABEL_16:
  a3[a4 - 1] = 0;
  *a3 = 0;
  return 0xFFFFFFFFLL;
}

_BYTE *b64encode(unsigned __int8 *a1, unsigned int a2)
{
  v2 = 0;
  if (a1 && a2 >= 1)
  {
    v5 = a2 / 3;
    if (a2 != 3 * (a2 / 3))
    {
      ++v5;
    }

    v6 = (4 * v5) | 1;
    v2 = malloc(v6);
    if (v2)
    {
      b64_ntop(a1, a2, v2, v6);
    }
  }

  return v2;
}

uint64_t b64decode(char *__s, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    v3 = strlen(__s);
  }

  else
  {
    v3 = a2;
  }

  v4 = __s;
  if (v3 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = __s;
    v4 = __s;
    do
    {
      v8 = *v7;
      if (v8 == 10 || v8 == 13)
      {
        v10 = 0;
        v5 = 0;
      }

      else
      {
        v10 = dword_100085BD0[*v7];
        if (v10 == -1)
        {
          v10 = v6;
        }

        else if (v5 > 1)
        {
          if (v5 == 2)
          {
            *v4++ = (16 * v6) | (v10 >> 2) & 0xF;
            v5 = 3;
          }

          else
          {
            v5 = 0;
            *v4++ = v10 | (v6 << 6);
          }
        }

        else if (v5)
        {
          *v4++ = (4 * v6) | (v10 >> 4) & 3;
          v5 = 2;
        }

        else
        {
          v5 = 1;
        }
      }

      ++v7;
      v6 = v10;
    }

    while (v7 < &__s[v3]);
  }

  *v4 = 0;
  return (v4 - __s);
}

const __CFString *tss_lookup_error(int a1)
{
  v1 = off_1000C7E68;
  if (off_1000C7E68)
  {
    if (tss_err_map == a1)
    {
      return CFStringCreateWithCString(kCFAllocatorDefault, v1, 0x8000100u);
    }

    for (i = &off_1000C7E78; ; i += 2)
    {
      v1 = *i;
      if (!*i)
      {
        break;
      }

      v3 = *(i - 2);
      if (v3 == a1)
      {
        return CFStringCreateWithCString(kCFAllocatorDefault, v1, 0x8000100u);
      }
    }
  }

  return @"Unknown";
}

uint64_t tss_strip_img3_signature(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 10004;
  }

  if (*a1 != 1231906611)
  {
    AMAuthInstallLog(3, "tss_strip_img3_signature", "bad magic 0x%08x expecting 0x%08x", a4, a5, a6, a7, a8, *a1);
    return 10004;
  }

  v10 = a1[2];
  v9 = a1[3];
  if (v9 > v10)
  {
    v12 = a1[2];
    AMAuthInstallLog(3, "tss_strip_img3_signature", "signed length %u too large for buffer length %u", a4, a5, a6, a7, a8, a1[3]);
    return 10004;
  }

  result = 0;
  if (v9)
  {
    *a2 += v9 - v10;
    a1[2] = a1[3];
    a1[1] = *a2;
  }

  return result;
}

uint64_t tss_image_is_img3(_DWORD *a1)
{
  result = 10004;
  if (a1)
  {
    if (*a1 == 1231906611)
    {
      return 0;
    }

    else
    {
      return 10004;
    }
  }

  return result;
}

uint64_t tss_image_is_finalized(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 10004;
  }

  if (*a1 == 1231906611)
  {
    if (a1[3])
    {
      return 0;
    }

    else
    {
      return 10003;
    }
  }

  else
  {
    AMAuthInstallLog(3, "tss_image_is_finalized", "bad magic 0x%08x expecting 0x%08x", a4, a5, a6, a7, a8, *a1);
    return 10004;
  }
}

uint64_t tss_get_partial_hash(_DWORD *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = a2;
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  v47 = 0;
  v46 = 0;
  if (a1 && a2 >= 1)
  {
    v10 = a3;
    v16 = tss_strip_img3_signature(a1, &v48, a3, a4, a5, a6, a7, a8);
    if (v16)
    {
      AMAuthInstallLog(3, "tss_get_partial_hash", "failed to strip img3 header", v11, v12, v13, v14, v15, v45);
    }

    v17 = a1[2];
    if (((v17 + 8) & 0x3F) != 0)
    {
      AMAuthInstallLog(3, "tss_get_partial_hash", "ih_buffer_len(%d) + 8 is not a multiple of %d", v11, v12, v13, v14, v15, a1[2]);
      v18 = 0;
      v16 = 10004;
    }

    else
    {
      v20 = malloc(v17 + 8);
      v18 = v20;
      if (v20)
      {
        bzero(v20, v17 + 8);
        a1[3] = v17 + v10;
        memcpy(v18, a1 + 3, v17 + 8);
        v26 = SHA1Reset(v49);
        if (v26)
        {
          AMAuthInstallLog(3, "tss_get_partial_hash", "SHA1Reset failed=%d", v27, v28, v29, v30, v31, v26);
        }

        else
        {
          v32 = SHA1Input(v49, v18, v17 + 8);
          if (v32)
          {
            AMAuthInstallLog(3, "tss_get_partial_hash", "SHA1Input failed=%d", v33, v34, v35, v36, v37, v32);
          }

          else
          {
            v38 = SHA1ResultPartial(v49, &v51, &v47, &v46);
            if (v38)
            {
              AMAuthInstallLog(3, "tss_get_partial_hash", "SHA1ResultPartial failed=%d", v39, v40, v41, v42, v43, v38);
            }

            else
            {
              if (!v16)
              {
                *a4 = v10;
                *(a4 + 4) = v17;
                *(a4 + 8) = v51;
                *(a4 + 24) = v52;
                goto LABEL_21;
              }

              AMAuthInstallLog(3, "tss_get_partial_hash", "tss_sha1_hash failed=%d", v39, v40, v41, v42, v43, v16);
            }
          }
        }

        v16 = 10007;
      }

      else
      {
        AMAuthInstallLog(3, "tss_get_partial_hash", "out of memory", v21, v22, v23, v24, v25, v45);
        v16 = 10006;
      }
    }

LABEL_21:
    v19 = v18;
    a1[3] = v17;
    v18 = v47;
    goto LABEL_22;
  }

  AMAuthInstallLog(3, "tss_get_partial_hash", "invalid img3: (%p), size %d", a4, a5, a6, a7, a8, a1);
  v18 = 0;
  v16 = 10004;
  if (a1)
  {
    LODWORD(v17) = 0;
    goto LABEL_21;
  }

  v19 = 0;
LABEL_22:
  free(v18);
  free(v19);
  return v16;
}

uint64_t tss_get_hash(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a2;
  if (a1)
  {
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    v15 = tss_strip_img3_signature(a1, &v37, a3, a4, a5, a6, a7, a8);
    if (v15)
    {
      AMAuthInstallLog(3, "tss_get_hash", "failed to strip img3 header", v10, v11, v12, v13, v14, v36);
    }

    if (v37 > 11)
    {
      v16 = *(a1 + 8);
      if (v37 >= v16 + 20)
      {
        v18 = SHA1Reset(v38);
        if (v18)
        {
          AMAuthInstallLog(3, "tss_get_hash", "SHA1Reset failed=%d", v19, v20, v21, v22, v23, v18);
        }

        else
        {
          v24 = SHA1Input(v38, (a1 + 12), v16 + 8);
          if (v24)
          {
            AMAuthInstallLog(3, "tss_get_hash", "SHA1Input failed=%d", v25, v26, v27, v28, v29, v24);
          }

          else
          {
            v30 = SHA1Result(v38, a3);
            if (!v30)
            {
              return v15;
            }

            AMAuthInstallLog(3, "tss_get_hash", "SHA1Result failed=%d", v31, v32, v33, v34, v35, v30);
          }
        }

        return 10007;
      }
    }

    AMAuthInstallLog(3, "tss_get_hash", "invalid image3 length=%d", v10, v11, v12, v13, v14, v37);
  }

  return 10004;
}

uint64_t tss_stitch_img3(_DWORD *a1, int a2, signed int *a3, const void *a4, uint64_t a5, void *a6, _DWORD *a7, uint64_t a8)
{
  v35 = a2;
  if (!a1 || a2 <= 0)
  {
    AMAuthInstallLog(3, "tss_stitch_img3", "invalid img3: (%p), size %d", a4, a5, a6, a7, a8, a1);
    return 10004;
  }

  v9 = a5;
  if (!a4 || a5 <= 0)
  {
    LOBYTE(v33) = a4;
    v29 = "invalid tatsu data: (%p), size %d";
LABEL_15:
    AMAuthInstallLog(3, "tss_stitch_img3", v29, a4, a5, a6, a7, a8, v33);
    return 10004;
  }

  v12 = 10008;
  if (a6 && a7)
  {
    v12 = tss_strip_img3_signature(a1, &v35, a3, a4, a5, a6, a7, a8);
    if (v12)
    {
      AMAuthInstallLog(3, "tss_stitch_img3", "failed to strip img3 header", v15, v16, v17, v18, v19, v33);
    }

    v20 = v35;
    v21 = v35 + v9;
    *a7 = v21;
    v22 = malloc(v21);
    *a6 = v22;
    if (!v22)
    {
      *a7 = 0;
      AMAuthInstallLog(3, "tss_stitch_img3", "out of memory", v23, v24, v25, v26, v27, v33);
      return 10006;
    }

    v28 = v22;
    bzero(v22, v21);
    memcpy(v28, a1, v20);
    if (*a3 >= v9)
    {
      LOBYTE(v33) = v9;
      v34 = *a3;
      v29 = "invalid img3 (tatsublob_len %d <= mastered_reservation_len %d";
    }

    else if (((a3[1] + 8) & 0x3F) != 0)
    {
      v33 = a3[1] + 8;
      v29 = "mastered_signed_len(%d) + 8 is not a multiple of %d";
    }

    else
    {
      v31 = a1[2] + v9;
      if (v31 == v21 - 20)
      {
        v32 = *a3 + a1[3];
        if (v32 <= v31 + 8)
        {
          v28[1] = a1[1] + v9;
          v28[2] = v31;
          v28[3] = v32;
          memcpy(v28 + v20, a4, v9);
          return v12;
        }
      }

      v29 = "invalid img3";
    }

    goto LABEL_15;
  }

  return v12;
}

FILE *(**amai_fill_fopen_filefunc(FILE *(**result)(int a1, char *__filename, char a3)))(int a1, char *__filename, char a3)
{
  *result = sub_10001637C;
  result[1] = sub_1000163E0;
  result[2] = sub_1000163F8;
  result[3] = sub_100016410;
  result[4] = sub_100016418;
  result[5] = sub_100016454;
  result[6] = sub_10001645C;
  result[7] = 0;
  return result;
}

FILE *sub_10001637C(int a1, char *__filename, char a3)
{
  v3 = a3 & 3;
  v4 = "r+b";
  v5 = "wb";
  if ((a3 & 8) == 0)
  {
    v5 = 0;
  }

  if ((a3 & 4) != 0)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = (a3 & 8) >> 3;
  }

  if ((a3 & 4) == 0)
  {
    v4 = v5;
  }

  if (v3 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  if (v3 == 1)
  {
    v8 = "rb";
  }

  else
  {
    v8 = v4;
  }

  if (__filename && (v7 & 1) != 0)
  {
    return fopen(__filename, v8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100016418(int a1, FILE *a2, uint64_t a3, unsigned int a4)
{
  if (a4 > 2)
  {
    return -1;
  }

  fseek(a2, a3, a4);
  return 0;
}

void *tss_create_session(const void *a1, const void *a2)
{
  v4 = malloc(0x60uLL);
  v10 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  v4[4] = 0u;
  v4[5] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  *v4 = 0u;
  v4[1] = 0u;
  if (!a2)
  {
    v13 = "signingServerURL is NULL";
    goto LABEL_10;
  }

  v11 = CFGetTypeID(a2);
  if (v11 != CFURLGetTypeID())
  {
    v13 = "signingServerURL is malformed";
    goto LABEL_10;
  }

  v10[1] = CFRetain(a2);
  *(v10 + 10) = 256;
  if (a1)
  {
    CFRetain(a1);
  }

  *v10 = a1;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v10[3] = Mutable;
  if (!Mutable)
  {
LABEL_7:
    v13 = "out of memory";
LABEL_10:
    AMAuthInstallLog(3, "tss_create_session", v13, v5, v6, v7, v8, v9, v15);
    free(v10);
    return 0;
  }

  return v10;
}

uint64_t tss_close_session(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = tss_reset_session(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v9)
  {
    free(a1);
  }

  return v9;
}

uint64_t tss_reset_session(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = *a1;
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = *(a1 + 24);
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      CFRelease(v12);
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      CFRelease(v13);
    }

    v14 = *(a1 + 72);
    if (v14)
    {
      CFRelease(v14);
      *(a1 + 72) = 0;
    }

    v15 = *(a1 + 56);
    if (v15)
    {
      free(v15);
    }

    result = 0;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    AMAuthInstallLog(3, "tss_reset_session", "NULL session", a4, a5, a6, a7, a8, v17);
    return 10009;
  }

  return result;
}

uint64_t SHA1Reset(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 20) = 0;
  *(a1 + 28) = 0;
  *a1 = xmmword_100085FD0;
  *(a1 + 16) = -1009589776;
  *(a1 + 96) = 0;
  return result;
}

uint64_t SHA1ResultPartial(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  result = 1;
  if (a1 && a2)
  {
    v8 = !a3 || a4 == 0;
    v9 = !v8;
    result = *(a1 + 100);
    if (!result)
    {
      if (*(a1 + 96))
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      if (v10)
      {
        if (!v9)
        {
          return 1;
        }

        v11 = *(a1 + 28);
        *a4 = v11;
        if (v11 >= 1)
        {
          v12 = malloc(v11);
          *a3 = v12;
          memcpy(v12, (a1 + 30), v11);
        }
      }

      else
      {
        SHA1PadMessage(a1);
        *(a1 + 78) = 0u;
        *(a1 + 62) = 0u;
        *(a1 + 46) = 0u;
        *(a1 + 30) = 0u;
        *(a1 + 20) = 0;
        *(a1 + 24) = 0;
        *(a1 + 96) = 1;
      }

      v13 = 0;
      for (i = 0; i != 20; ++i)
      {
        *(a2 + i) = *(a1 + (i & 0xFFFFFFFC)) >> (~v13 & 0x18);
        v13 += 8;
      }

      return 0;
    }
  }

  return result;
}

int *SHA1PadMessage(uint64_t a1)
{
  v2 = *(a1 + 28);
  v3 = a1 + 30;
  LOWORD(v4) = v2 + 1;
  *(a1 + 28) = v2 + 1;
  if (v2 < 56)
  {
    *(v3 + v2) = 0x80;
    v6 = *(a1 + 28);
    if (v6 <= 55)
    {
      do
      {
        *(a1 + 28) = v6 + 1;
        *(v3 + v6) = 0;
        v6 = *(a1 + 28);
      }

      while (v6 < 56);
    }
  }

  else
  {
    *(v3 + v2) = 0x80;
    if (v4 <= 63)
    {
      do
      {
        *(a1 + 28) = v4 + 1;
        *(v3 + v4) = 0;
        v4 = *(a1 + 28);
      }

      while (v4 < 64);
    }

    SHA1ProcessMessageBlock(a1);
    v5 = *(a1 + 28);
    if (v5 <= 55)
    {
      do
      {
        *(a1 + 28) = v5 + 1;
        *(v3 + v5) = 0;
        v5 = *(a1 + 28);
      }

      while (v5 < 56);
    }
  }

  v7 = *(a1 + 20);
  *(a1 + 86) = bswap32(*(a1 + 24));
  *(a1 + 90) = bswap32(v7);

  return SHA1ProcessMessageBlock(a1);
}

uint64_t SHA1Input(uint64_t a1, char *a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  result = 1;
  if (a1)
  {
    v5 = a2;
    if (a2)
    {
      if (*(a1 + 96))
      {
        result = 3;
        *(a1 + 100) = 3;
      }

      else
      {
        result = *(a1 + 100);
        if (!result)
        {
          v6 = a3;
          while (!*(a1 + 100))
          {
            v7 = *v5;
            v8 = *(a1 + 28);
            *(a1 + 28) = v8 + 1;
            *(a1 + 30 + v8) = v7;
            v9 = *(a1 + 20) + 8;
            *(a1 + 20) = v9;
            if (!v9)
            {
              v10 = *(a1 + 24);
              *(a1 + 24) = v10 + 1;
              if (v10 == -1)
              {
                *(a1 + 100) = 1;
              }
            }

            if (*(a1 + 28) == 64)
            {
              SHA1ProcessMessageBlock(a1);
            }

            result = 0;
            ++v5;
            if (!--v6)
            {
              return result;
            }
          }

          return 0;
        }
      }
    }
  }

  return result;
}

int *SHA1ProcessMessageBlock(int *result)
{
  v1 = 0;
  v2 = result + 30;
  v51 = vld4q_s8(v2);
  v3 = vmovl_u8(*v51.val[0].i8);
  v4 = vmovl_high_u8(v51.val[0]);
  _Q16 = vmovl_u8(*v51.val[1].i8);
  _Q17 = vmovl_high_u8(v51.val[1]);
  __asm
  {
    SHLL2           V18.4S, V17.8H, #0x10
    SHLL2           V19.4S, V16.8H, #0x10
  }

  v13 = vmovl_high_u8(v51.val[2]);
  v14 = vmovl_u8(*v51.val[2].i8);
  v15 = vorrq_s8(vorrq_s8(vshll_n_u16(*v14.i8, 8uLL), vshll_n_s16(*_Q16.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v3.i8), 0x18uLL));
  v16 = vmovl_high_u8(v51.val[3]);
  v51.val[0] = vmovl_u8(*v51.val[3].i8);
  v50[3] = vorrq_s8(vorrq_s8(vorrq_s8(vshll_high_n_u16(v13, 8uLL), _Q18), vshlq_n_s32(vmovl_high_u16(v4), 0x18uLL)), vmovl_high_u16(v16));
  v50[2] = vorrq_s8(vorrq_s8(vorrq_s8(vshll_n_u16(*v13.i8, 8uLL), vshll_n_s16(*_Q17.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v4.i8), 0x18uLL)), vmovl_u16(*v16.i8));
  v50[1] = vorrq_s8(vorrq_s8(vorrq_s8(vshll_high_n_u16(v14, 8uLL), _Q19), vshlq_n_s32(vmovl_high_u16(v3), 0x18uLL)), vmovl_high_u16(v51.val[0]));
  v50[0] = vorrq_s8(v15, vmovl_u16(*v51.val[0].i8));
  do
  {
    HIDWORD(v17) = *(&v50[2] + v1) ^ *(&v50[3] + v1 + 4) ^ *(v50 + v1 + 8) ^ *(v50 + v1);
    LODWORD(v17) = HIDWORD(v17);
    *(&v50[4] + v1) = v17 >> 31;
    v1 += 4;
  }

  while (v1 != 256);
  v18 = 0;
  v19 = result[1];
  v21 = result[3];
  v20 = result[4];
  v22 = v20;
  v23 = result[2];
  v24 = v21;
  v25 = v23;
  v26 = v19;
  v27 = *result;
  do
  {
    v28 = v27;
    v29 = v25;
    v30 = v24;
    HIDWORD(v31) = v27;
    LODWORD(v31) = v27;
    v32 = (v31 >> 27) + v22 + (v24 & ~v26 | v25 & v26) + 1518500249;
    HIDWORD(v31) = v26;
    LODWORD(v31) = v26;
    v25 = v31 >> 2;
    v27 = v32 + *(v50 + v18);
    v18 += 4;
    v22 = v24;
    v24 = v29;
    v26 = v28;
  }

  while (v18 != 80);
  v33 = 80;
  do
  {
    v34 = v27;
    v35 = v25;
    v36 = v29;
    HIDWORD(v37) = v27;
    LODWORD(v37) = v27;
    v38 = (v37 >> 27) + (v25 ^ v28 ^ v29) + v30 + 1859775393;
    HIDWORD(v37) = v28;
    LODWORD(v37) = v28;
    v25 = v37 >> 2;
    v27 = v38 + *(v50 + v33);
    v33 += 4;
    v30 = v29;
    v29 = v35;
    v28 = v34;
  }

  while (v33 != 160);
  do
  {
    v39 = v27;
    v40 = v25;
    HIDWORD(v41) = v27;
    LODWORD(v41) = v27;
    v42 = v35;
    v43 = (v41 >> 27) + v36 + ((v35 | v40) & v34 | v35 & v40) - 1894007588;
    HIDWORD(v41) = v34;
    LODWORD(v41) = v34;
    v25 = v41 >> 2;
    v27 = v43 + *(v50 + v33);
    v33 += 4;
    v36 = v35;
    v35 = v40;
    v34 = v39;
  }

  while (v33 != 240);
  v44 = 240;
  do
  {
    v45 = v27;
    v46 = v25;
    v47 = v40;
    HIDWORD(v48) = v27;
    LODWORD(v48) = v27;
    v49 = (v48 >> 27) + (v25 ^ v39 ^ v40) + v42 - 899497514;
    HIDWORD(v48) = v39;
    LODWORD(v48) = v39;
    v25 = v48 >> 2;
    v27 = v49 + *(v50 + v44);
    v44 += 4;
    v42 = v40;
    v40 = v46;
    v39 = v45;
  }

  while (v44 != 320);
  *result += v27;
  result[1] = v45 + v19;
  result[2] = v25 + v23;
  result[3] = v46 + v21;
  result[4] = v47 + v20;
  *(result + 14) = 0;
  return result;
}

uint64_t tss_submit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    AMAuthInstallLog(3, "tss_submit", "NULL session", a4, a5, a6, a7, a8, v19);
    return 10009;
  }

  if (!*(a1 + 24))
  {
    AMAuthInstallLog(3, "tss_submit", "NULL request in session", a4, a5, a6, a7, a8, v19);
    v15 = 10008;
    v16 = a1;
    v17 = 10008;
LABEL_10:
    sub_100016D38(v16, v17);
    return v15;
  }

  if (!*(a1 + 48))
  {
    sub_100016D80();
    return *(a1 + 64);
  }

  v9 = malloc(8uLL);
  *(a1 + 56) = v9;
  if (!v9)
  {
    AMAuthInstallLog(3, "tss_submit_non_block", "out of memory", v10, v11, v12, v13, v14, v19);
    v15 = 10006;
    v16 = a1;
    v17 = 10006;
    goto LABEL_10;
  }

  pthread_create(v9, 0, sub_100016D80, a1);
  return 0;
}

const __CFString *sub_100016D38(const __CFString *result, int a2)
{
  if (result)
  {
    v3 = result;
    LODWORD(result[2].isa) = a2;
    info = result[2].info;
    if (info)
    {
      CFRelease(info);
    }

    result = tss_lookup_error(a2);
    v3[2].info = result;
  }

  return result;
}

uint64_t sub_100016D80()
{
  v0 = __chkstk_darwin();
  v6 = v0;
  if (v0)
  {
    if (*(v0 + 16) <= 1u)
    {
      v7 = 1;
    }

    else
    {
      v7 = *(v0 + 16);
    }
  }

  else
  {
    v7 = 1;
  }

  v8 = 0;
  v9 = kCFAllocatorDefault;
  key = _kCFSystemVersionBuildVersionKey;
  do
  {
    AMAuthInstallLog(6, "tss_submit_job_with_retry", "TSS Connection attempt %d of %d.  (Will retry if TSS_ERR_SERVER_NOT_REACHABLE.)", v1, v2, v3, v4, v5, ++v8);
    error = 0;
    bzero(v212, 0x19000uLL);
    if (!*(v6 + 8))
    {
      AMAuthInstallLog(3, "tss_submit_job", "no server URL", v10, v11, v12, v13, v14, v175);
      v71 = 10008;
LABEL_25:
      sub_100016D38(v6, v71);
      v72 = 0;
      v35 = 0;
      v73 = 0;
      v50 = 0;
      Request = 0;
      v28 = 0;
      *(v6 + 64) = v71;
      goto LABEL_35;
    }

    v15 = CFPropertyListCreateData(v9, *(v6 + 24), kCFPropertyListXMLFormat_v1_0, 0, &error);
    if (!v15)
    {
      AMAuthInstallLog(3, "tss_submit_job", "CFPropertyListCreateXMLData failed %@", v16, v17, v18, v19, v20, error);
      v71 = 10036;
      goto LABEL_25;
    }

    v21 = v15;
    Length = CFDataGetLength(v15);
    v28 = CFURLCreateWithString(v9, @"TSS/controller?action=2", *(v6 + 8));
    if (!v28)
    {
      AMAuthInstallLog(3, "tss_submit_job", "CFURLCreateCopyAppendingPathComponent() failed", v23, v24, v25, v26, v27, v175);
      v74 = 10041;
      sub_100016D38(v6, 10041);
      v72 = 0;
      v35 = 0;
      v50 = 0;
      Request = 0;
LABEL_34:
      *(v6 + 64) = v74;
      CFRelease(v21);
      v73 = 0;
      goto LABEL_35;
    }

    Request = CFHTTPMessageCreateRequest(v9, @"POST", v28, kCFHTTPVersion1_1);
    if (!Request)
    {
      AMAuthInstallLog(3, "tss_submit_job", "CFHTTPMessageCreateRequest failed", v29, v30, v31, v32, v33, v175);
      v74 = 10041;
      sub_100016D38(v6, 10041);
      v72 = 0;
      v35 = 0;
      v50 = 0;
      goto LABEL_34;
    }

    v176 = Length;
    v35 = CFStringCreateWithFormat(v9, 0, @"%d");
    CFHTTPMessageSetHeaderFieldValue(Request, @"Proxy-Connection", @"Keep-Alive");
    CFHTTPMessageSetHeaderFieldValue(Request, @"Pragma", @"no-cache");
    CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Type", @"text/xml; charset=utf-8");
    CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Length", v35);
    v36 = _CFCopySystemVersionDictionary();
    if (v36)
    {
      v42 = v36;
      Value = CFDictionaryGetValue(v36, key);
      CFHTTPMessageSetHeaderFieldValue(Request, @"X-OS-Version", Value);
      CFRelease(v42);
    }

    if (*(v6 + 32))
    {
      AMAuthInstallLog(7, "tss_submit_job", "Attempting to add additional entries to HTTP header", v37, v38, v39, v40, v41, v176);
      CFDictionaryApplyFunction(*(v6 + 32), sub_100017894, Request);
      AMAuthInstallLog(7, "tss_submit_job", "Done adding additional fields to HTTP header", v44, v45, v46, v47, v48, v177);
    }

    CFHTTPMessageSetBody(Request, v21);
    Mutable = CFDictionaryCreateMutable(v9, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v50 = Mutable;
    v51 = *(v6 + 80);
    if (v51)
    {
      CFDictionaryAddValue(Mutable, @"SocksProxySettings", v51);
      AMAuthInstallLog(7, "tss_submit_job", "Found a SOCKS proxy setting. Will attempt to use it.", v52, v53, v54, v55, v56, v176);
    }

    v57 = *(v6 + 88);
    if (v57)
    {
      CFDictionaryAddValue(v50, @"TrustedServerCAs", v57);
      AMAuthInstallLog(7, "tss_submit_job", "Found a trusted server CA. Will attempt to use it.", v58, v59, v60, v61, v62, v176);
    }

    theData[0] = 0;
    v63 = CFURLCopyScheme(*(v6 + 8));
    if (!v63)
    {
      v70 = "Invalid scheme in url";
      goto LABEL_31;
    }

    v69 = v63;
    *__s = 10000;
    if (CFStringCompare(v63, @"https", 1uLL) && CFStringCompare(v69, @"http", 1uLL))
    {
      CFRelease(v69);
      v70 = "unsupported URL scheme";
LABEL_31:
      AMAuthInstallLog(3, "tss_submit_job", v70, v64, v65, v66, v67, v68, v176);
      v74 = 10008;
      v80 = v6;
      v81 = 10008;
      goto LABEL_32;
    }

    CFRelease(v69);
    if (AMAuthInstallHttpMessageSendSyncNew(v9, Request, theData, __s, v50, 300.0))
    {
      AMAuthInstallLog(3, "tss_submit_job", "failed to send http request", v75, v76, v77, v78, v79, v176);
      v74 = 10002;
      v80 = v6;
      v81 = 10002;
LABEL_32:
      sub_100016D38(v80, v81);
LABEL_33:
      v72 = @"Content-Length";
      goto LABEL_34;
    }

    v74 = *__s;
    if (*__s != 200)
    {
      AMAuthInstallLog(3, "tss_submit_job", "SendHttpRequest failed %d", v75, v76, v77, v78, v79, __s[0]);
      if (*__s == -1)
      {
        v74 = 10002;
      }

      v88 = v6;
      v89 = v74;
      goto LABEL_61;
    }

    if (CFDataGetLength(theData[0]) > 0x19000)
    {
      AMAuthInstallLog(3, "tss_submit_job", "Response too large", v83, v84, v85, v86, v87, v176);
      v74 = 10052;
      v88 = v6;
      v89 = 10052;
LABEL_61:
      sub_100016D38(v88, v89);
      CFRelease(theData[0]);
      goto LABEL_33;
    }

    CFDataGetBytePtr(theData[0]);
    CFDataGetLength(theData[0]);
    __memcpy_chk();
    v90 = CFDataGetLength(theData[0]);
    CFRelease(theData[0]);
    v96 = v90;
    *v210 = 0;
    *__s = 0u;
    v195 = 0u;
    v196 = 0u;
    v197 = 0u;
    v198 = 0u;
    v199 = 0u;
    v200 = 0u;
    v201 = 0u;
    v202 = 0u;
    v203 = 0u;
    v204 = 0u;
    v205 = 0u;
    v206 = 0u;
    v207 = 0u;
    v208 = 0u;
    v209 = 0u;
    v182 = v90;
    if (v90 < 1)
    {
      v100 = 0;
      v187 = 0;
      cfb = 0;
      goto LABEL_108;
    }

    v97 = 0;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v101 = v212;
    do
    {
      if (v99)
      {
        if (v98)
        {
          goto LABEL_66;
        }
      }

      else if (v100 + 7 >= v96)
      {
        v99 = 0;
        if (v98)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v186 = v98;
        cf = v97;
        if (!strncmp(v101, "STATUS", 6uLL))
        {
          v102 = 0;
          v99 = v101 + 7;
          v97 = cf;
          do
          {
            v103 = v101[v102 + 7];
            if (v103 == 38)
            {
              break;
            }

            v210[v102++] = v103;
          }

          while (v102 != 8);
          v210[7] = 0;
          v96 = v182;
        }

        else
        {
          v99 = 0;
          v96 = v182;
          v97 = cf;
        }

        v98 = v186;
        if (v186)
        {
LABEL_66:
          if (v97)
          {
            goto LABEL_98;
          }

          goto LABEL_67;
        }
      }

      if (v100 + 8 >= v96)
      {
        v98 = 0;
        if (v97)
        {
          goto LABEL_98;
        }
      }

      else
      {
        v184 = v99;
        cfa = v97;
        if (!strncmp(v101, "MESSAGE", 7uLL))
        {
          v104 = 0;
          v98 = v101 + 8;
          v97 = cfa;
          v99 = v184;
          do
          {
            v105 = v101[v104 + 8];
            if (v105 == 10)
            {
              break;
            }

            if (v105 == 38)
            {
              break;
            }

            __s[v104++] = v105;
          }

          while (v104 != 256);
          HIBYTE(v209) = 0;
          v96 = v182;
          if (cfa)
          {
            goto LABEL_98;
          }
        }

        else
        {
          v98 = 0;
          v96 = v182;
          v99 = v184;
          v97 = cfa;
          if (cfa)
          {
            goto LABEL_98;
          }
        }
      }

LABEL_67:
      if (v100 + 15 >= v96)
      {
        v97 = 0;
        goto LABEL_98;
      }

      v183 = v99;
      v185 = v98;
      if (strncmp(v101, "REQUEST_STRING", 0xEuLL))
      {
        v97 = 0;
        v96 = v182;
        v99 = v183;
LABEL_97:
        v98 = v185;
        goto LABEL_98;
      }

      v97 = v101 + 15;
      v99 = v183;
      if (!v183)
      {
        v96 = v182;
        goto LABEL_97;
      }

      v96 = v182;
      v98 = v185;
      if (v185)
      {
        goto LABEL_100;
      }

LABEL_98:
      ++v101;
      ++v100;
    }

    while (v100 != v96);
    v100 = v96;
LABEL_100:
    cfb = v97;
    if (v99)
    {
      v106 = v98 == 0;
    }

    else
    {
      v106 = 1;
    }

    v107 = !v106;
    v187 = v107;
LABEL_108:
    AMAuthInstallLog(8, "tss_submit_job", "----Begin request", v91, v92, v93, v94, v95, v176);
    AMAuthInstallLog(8, "tss_submit_job", "%@", v108, v109, v110, v111, v112, *(v6 + 24));
    AMAuthInstallLog(8, "tss_submit_job", "----End request", v113, v114, v115, v116, v117, v178);
    AMAuthInstallLog(8, "tss_submit_job", "----Begin response", v118, v119, v120, v121, v122, v179);
    AMAuthInstallLog(8, "tss_submit_job", "%s", v123, v124, v125, v126, v127, v212);
    AMAuthInstallLog(8, "tss_submit_job", "----End response", v128, v129, v130, v131, v132, v180);
    if ((v187 & 1) == 0)
    {
      AMAuthInstallLog(3, "tss_submit_job", "invalid response", v133, v134, v135, v136, v137, v181);
      v144 = 10052;
      v153 = v6;
      v154 = 10052;
      goto LABEL_115;
    }

    v138 = atoi(v210);
    if (!v138)
    {
      if (cfb)
      {
        __memcpy_chk();
        v155 = CFDataCreate(kCFAllocatorDefault, theData, v182 - v100 - 15);
        if (v155)
        {
          v161 = v155;
          if (error)
          {
            CFRelease(error);
          }

          cfc = v161;
          v73 = CFPropertyListCreateWithData(kCFAllocatorDefault, v161, 0, 0, &error);
          if (v73)
          {
            Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, v73);
            *(v6 + 40) = Copy;
            if (Copy)
            {
              v173 = 0;
LABEL_130:
              *(v6 + 64) = v173;
              CFRelease(v21);
              CFRelease(cfc);
              goto LABEL_117;
            }

            AMAuthInstallLog(3, "tss_submit_job", "CFDictionaryCreateCopy failed", v168, v169, v170, v171, v172, v181);
            v173 = 10056;
          }

          else
          {
            AMAuthInstallLog(3, "tss_submit_job", "CFPropertyListCreateFromXMLData failed (%@)", v162, v163, v164, v165, v166, error);
            v173 = 10055;
          }

          sub_100016D38(v6, v173);
          goto LABEL_130;
        }

        AMAuthInstallLog(3, "tss_submit_job", "CFDataCreate failed", v156, v157, v158, v159, v160, v181);
        v144 = 10054;
        v153 = v6;
        v154 = 10054;
      }

      else
      {
        AMAuthInstallLog(3, "tss_submit_job", "no data in response", v139, v140, v141, v142, v143, v181);
        v144 = 10053;
        v153 = v6;
        v154 = 10053;
      }

LABEL_115:
      sub_100016D38(v153, v154);
      goto LABEL_116;
    }

    v144 = v138;
    AMAuthInstallLog(3, "tss_submit_job", "error from server=%d (%s)", v139, v140, v141, v142, v143, v138);
    v145 = *(v6 + 72);
    if (v145)
    {
      CFRelease(v145);
    }

    v146 = strlen(__s);
    v147 = CFStringCreateWithBytes(kCFAllocatorDefault, __s, v146, 0x8000100u, 0);
    *(v6 + 72) = v147;
    if (!v147)
    {
      AMAuthInstallLog(3, "tss_submit_job", "Server message failed to convert: %d", v148, v149, v150, v151, v152, v144);
    }

LABEL_116:
    *(v6 + 64) = v144;
    CFRelease(v21);
    v73 = 0;
LABEL_117:
    v72 = @"Content-Length";
LABEL_35:
    if (error)
    {
      CFRelease(error);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    if (Request)
    {
      CFRelease(Request);
    }

    if (v72)
    {
      CFRelease(v72);
    }

    if (v35)
    {
      CFRelease(v35);
    }

    v9 = kCFAllocatorDefault;
    if (v73)
    {
      CFRelease(v73);
    }

    if (v50)
    {
      CFRelease(v50);
    }

    v82 = *(v6 + 48);
    if (v82)
    {
      v82(v6);
    }
  }

  while (v6 && v8 < v7 && *(v6 + 64) == 10002);
  return 0;
}

void sub_100017894(const __CFString *a1, const __CFString *a2, __CFHTTPMessage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AMAuthInstallLog(7, "_AMAuthInstallUpdateHTTPHeaderWithEntry", "HTTP Request Header: %@=%@", a4, a5, a6, a7, a8, a1);

  CFHTTPMessageSetHeaderFieldValue(a3, a1, a2);
}

uint64_t amai_unzStringFileNameCompare(const char *a1, const char *a2, int a3)
{
  if (a3 == 1)
  {
    return strcmp(a1, a2);
  }

  while (1)
  {
    v5 = *a1++;
    v4 = v5;
    v7 = *a2++;
    v6 = v7;
    if ((v4 - 97) < 0x1A)
    {
      LOBYTE(v4) = v4 - 32;
    }

    if ((v6 - 97) < 0x1A)
    {
      LOBYTE(v6) = v6 - 32;
    }

    if (!v4)
    {
      break;
    }

    if (!v6)
    {
      return 1;
    }

    if (v4 < v6)
    {
      return 0xFFFFFFFFLL;
    }

    if (v4 > v6)
    {
      return 1;
    }
  }

  if (v6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void *amai_unzOpen2(uint64_t a1, _OWORD *a2)
{
  memset(__src, 0, 336);
  if (a2)
  {
    v3 = a2[1];
    __src[0] = *a2;
    __src[1] = v3;
    v4 = a2[3];
    __src[2] = a2[2];
    __src[3] = v4;
    v5 = (*&__src[0])(*(&v4 + 1), a1, 5);
  }

  else
  {
    amai_fill_fopen_filefunc(__src);
    v5 = (*&__src[0])(*(&__src[3] + 1), a1, 5);
  }

  v6 = v5;
  *&__src[4] = v5;
  if (v5)
  {
    if ((*&__src[2])(*(&__src[3] + 1), v5, 0, 2) || ((v8 = (*(&__src[1] + 1))(*(&__src[3] + 1), v6), v9 = v8, v8 >= 0xFFFF) ? (v10 = 0xFFFFLL) : (v10 = v8), (v11 = malloc(0x404uLL)) == 0))
    {
      v7 = 0;
      v34 = 0;
    }

    else
    {
      v12 = v11;
      if (v9 >= 5)
      {
        v13 = 4;
        while (2)
        {
          v14 = v13 + 1024;
          if (v13 + 1024 >= v10)
          {
            v13 = v10;
          }

          else
          {
            v13 += 1024;
          }

          v15 = v13 >= 0x404 ? 1028 : v13;
          if (!(*&__src[2])(*(&__src[3] + 1), v6, v9 - v13, 0) && (*(&__src[0] + 1))(*(&__src[3] + 1), v6, v12, v15) == v15)
          {
            v16 = (v15 - 4);
            v17 = v13 - v9 - v16;
            v18 = v15 - 3;
            v19 = &v12[v16 + 1];
            while (*(v19 - 1) != 80 || *v19 != 75 || v19[1] != 5 || v19[2] != 6)
            {
              ++v17;
              --v19;
              v20 = __OFSUB__(v18--, 1);
              if ((v18 < 0) ^ v20 | (v18 == 0))
              {
                goto LABEL_28;
              }
            }

            if (v17)
            {
              v7 = -v17;
              v34 = 1;
              goto LABEL_33;
            }

LABEL_28:
            if (v14 < v10)
            {
              continue;
            }
          }

          break;
        }
      }

      v7 = 0;
      v34 = 0;
LABEL_33:
      free(v12);
    }

    v36 = 0;
    v37 = 0;
    v35 = 0;
    v31 = (*&__src[2])(*(&__src[3] + 1), *&__src[4], v7, 0);
    HIDWORD(v32) = sub_100017CD8(__src, *&__src[4], &v38);
    LODWORD(v32) = sub_100017D94(__src, *&__src[4], &v37);
    v33 = sub_100017D94(__src, *&__src[4], &v36);
    v21 = sub_100017D94(__src, *&__src[4], &__src[4] + 1);
    v22 = sub_100017D94(__src, *&__src[4], &v35);
    v24 = v35;
    v23 = v36;
    v25 = v37;
    v26 = *(&__src[4] + 1);
    v27 = sub_100017CD8(__src, *&__src[4], &__src[8]);
    v28 = sub_100017CD8(__src, *&__src[4], &__src[8] + 1);
    v29 = sub_100017D94(__src, *&__src[4], &__src[5]);
    if (v7 < *&__src[8] + *(&__src[8] + 1) || v28 | v27 | v29 || v24 != v26 || v23 || v25 || !v34 || v22 || v21 || v33 || v32 || v31)
    {
      (*(&__src[2] + 1))(*(&__src[3] + 1), *&__src[4]);
      return 0;
    }

    else
    {
      *(&__src[5] + 1) = v7 - (*&__src[8] + *(&__src[8] + 1));
      *(&__src[7] + 1) = v7;
      *&__src[18] = 0;
      DWORD2(__src[18]) = 0;
      v6 = malloc(0x150uLL);
      memcpy(v6, __src, 0x150uLL);
      amai_unzGoToFirstFile(v6);
    }
  }

  return v6;
}

uint64_t sub_100017CD8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11 = 0;
  if (sub_100018EE0(a1, a2, &v11) || (v6 = v11, sub_100018EE0(a1, a2, &v11)) || (v7 = v11, sub_100018EE0(a1, a2, &v11)))
  {
    v8 = 0;
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v10 = v6 + (v7 << 8) + (v11 << 16);
    result = sub_100018EE0(a1, a2, &v11);
    v8 = v10 + (v11 << 24);
    if (result)
    {
      v8 = 0;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100017D94(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = 0;
  if (sub_100018EE0(a1, a2, &v9))
  {
    v6 = 0;
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = v9;
    result = sub_100018EE0(a1, a2, &v9);
    v6 = v8 + (v9 << 8);
    if (result)
    {
      v6 = 0;
    }
  }

  *a3 = v6;
  return result;
}

uint64_t amai_unzGoToFirstFile(void *a1)
{
  if (!a1)
  {
    return 4294967194;
  }

  v2 = a1[17];
  a1[12] = 0;
  a1[13] = v2;
  result = sub_100017FB4(a1, (a1 + 18), a1 + 35, 0, 0, 0, 0, 0, 0);
  a1[14] = result == 0;
  return result;
}

uint64_t amai_unzClose(uint64_t a1)
{
  if (!a1)
  {
    return 4294967194;
  }

  if (*(a1 + 288))
  {
    amai_unzCloseCurrentFile(a1);
  }

  (*(a1 + 40))(*(a1 + 56), *(a1 + 64));
  free(a1);
  return 0;
}

uint64_t amai_unzCloseCurrentFile(uint64_t a1)
{
  if (!a1)
  {
    return 4294967194;
  }

  v2 = *(a1 + 288);
  if (!v2)
  {
    return 4294967194;
  }

  if (*(v2 + 184) || *(v2 + 280))
  {
    v3 = 0;
  }

  else if (*(v2 + 160) == *(v2 + 168))
  {
    v3 = 0;
  }

  else
  {
    v3 = 4294967191;
  }

  if (*v2)
  {
    free(*v2);
  }

  *v2 = 0;
  if (*(v2 + 128))
  {
    inflateEnd((v2 + 8));
  }

  free(v2);
  *(a1 + 288) = 0;
  return v3;
}

uint64_t sub_100017FB4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  if (!a1)
  {
    return 4294967194;
  }

  if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(a1 + 88) + *(a1 + 104), 0) || (v52 = 0, sub_100017CD8(a1, *(a1 + 64), &v52)))
  {
    v11 = -1;
  }

  else if (v52 == 33639248)
  {
    v11 = 0;
  }

  else
  {
    v11 = -103;
  }

  v46 = v11;
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0;
  v45 = sub_100017D94(a1, *(a1 + 64), &v54);
  v44 = sub_100017D94(a1, *(a1 + 64), &v54 + 1);
  v12 = sub_100017D94(a1, *(a1 + 64), &v55);
  v13 = sub_100017D94(a1, *(a1 + 64), &v55 + 1);
  v14 = sub_100017CD8(a1, *(a1 + 64), &v56);
  v15.i32[0] = v56;
  v16 = vshlq_u32(vdupq_n_s32(v56), xmmword_100085FF0);
  v16.i32[0] = vshlq_u32(v15, xmmword_100085FE0).u32[0];
  LODWORD(v62) = ((v56 >> 21) & 0xF) - 1;
  HIDWORD(v62) = (v56 >> 25) + 1980;
  v61 = vandq_s8(v16, xmmword_100086000);
  v17 = sub_100017CD8(a1, *(a1 + 64), &v56 + 1) | v14;
  v18 = sub_100017CD8(a1, *(a1 + 64), &v57);
  v19 = v17 | v18 | sub_100017CD8(a1, *(a1 + 64), &v57 + 1);
  v20 = v19 | sub_100017D94(a1, *(a1 + 64), &v58);
  v21 = sub_100017D94(a1, *(a1 + 64), &v58 + 1);
  v22 = sub_100017D94(a1, *(a1 + 64), &v59);
  v23 = sub_100017D94(a1, *(a1 + 64), &v59 + 1);
  v24 = sub_100017D94(a1, *(a1 + 64), &v60);
  v25 = sub_100017CD8(a1, *(a1 + 64), &v60 + 1);
  if (sub_100017CD8(a1, *(a1 + 64), &v53) | v25 | v24 | v23 | v22 | v21 | v20 | v13 | v12 | v44 | v45)
  {
    v26 = 0xFFFFFFFFLL;
  }

  else
  {
    v26 = v46;
  }

  v27 = v58;
  if (a4)
  {
    v29 = a7;
    v28 = a6;
    if (v26)
    {
      v31 = a8;
    }

    else
    {
      v30 = a5;
      v31 = a8;
      if (v58 < a5)
      {
        *(a4 + v58) = 0;
        v30 = v27;
      }

      v26 = 0;
      if (a5 && v27)
      {
        if ((*(a1 + 8))(*(a1 + 56), *(a1 + 64)) == v30)
        {
          v26 = 0;
        }

        else
        {
          v26 = 0xFFFFFFFFLL;
        }
      }

      v27 -= v30;
    }
  }

  else
  {
    v28 = a6;
    v31 = a8;
    v29 = a7;
  }

  v32 = *(&v58 + 1);
  if (!v28 || v26)
  {
    v35 = *(&v58 + 1) + v27;
    if (!v31)
    {
      goto LABEL_56;
    }

    goto LABEL_42;
  }

  if (*(&v58 + 1) >= v29)
  {
    v33 = v29;
  }

  else
  {
    v33 = *(&v58 + 1);
  }

  if (!v27)
  {
    v26 = 0;
    if (!v29)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  v34 = (*(a1 + 32))(*(a1 + 56), *(a1 + 64), v27, 1);
  if (v34)
  {
    v26 = 0xFFFFFFFFLL;
  }

  else
  {
    v26 = 0;
  }

  if (!v34)
  {
    v27 = 0;
  }

  if (v29)
  {
LABEL_37:
    if (v32)
    {
      if ((*(a1 + 8))(*(a1 + 56), *(a1 + 64), v28, v33) == v33)
      {
        v26 = v26;
      }

      else
      {
        v26 = 0xFFFFFFFFLL;
      }
    }
  }

LABEL_41:
  v35 = v32 - v33 + v27;
  if (!v31)
  {
    goto LABEL_56;
  }

LABEL_42:
  if (!v26)
  {
    v36 = v59;
    v37 = a9;
    if (v59 < a9)
    {
      *(v31 + v59) = 0;
      v37 = v36;
    }

    if (v35)
    {
      if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), v35, 1))
      {
        v26 = 0xFFFFFFFFLL;
      }

      else
      {
        v26 = 0;
      }

      if (!a9)
      {
        goto LABEL_56;
      }

LABEL_52:
      if (v36)
      {
        if ((*(a1 + 8))(*(a1 + 56), *(a1 + 64), v31, v37) == v37)
        {
          v26 = v26;
        }

        else
        {
          v26 = 0xFFFFFFFFLL;
        }
      }

      goto LABEL_56;
    }

    v26 = 0;
    if (a9)
    {
      goto LABEL_52;
    }
  }

LABEL_56:
  if (a2 && !v26)
  {
    v38 = v61;
    *(a2 + 96) = v60;
    *(a2 + 112) = v38;
    *(a2 + 128) = v62;
    v39 = v57;
    *(a2 + 32) = v56;
    *(a2 + 48) = v39;
    v40 = v59;
    *(a2 + 64) = v58;
    *(a2 + 80) = v40;
    v41 = v55;
    *a2 = v54;
    *(a2 + 16) = v41;
  }

  if (a3 && !v26)
  {
    *a3 = v53;
  }

  return v26;
}

uint64_t amai_unzGoToNextFile(void *a1)
{
  if (!a1)
  {
    return 4294967194;
  }

  if (!a1[14])
  {
    return 4294967196;
  }

  v2 = a1[9];
  v3 = a1[12] + 1;
  if (v2 != 0xFFFF && v3 == v2)
  {
    return 4294967196;
  }

  v5 = a1[26] + a1[27] + a1[28] + a1[13] + 46;
  a1[12] = v3;
  a1[13] = v5;
  result = sub_100017FB4(a1, (a1 + 18), a1 + 35, 0, 0, 0, 0, 0, 0);
  a1[14] = result == 0;
  return result;
}

uint64_t amai_unzLocateFile(uint64_t a1, char *__s, int a3)
{
  if (!a1 || strlen(__s) > 0xFF)
  {
    return 4294967194;
  }

  if (!*(a1 + 112))
  {
    return 4294967196;
  }

  v7 = *(a1 + 96);
  v8 = *(a1 + 104);
  v17 = *(a1 + 240);
  v18 = *(a1 + 256);
  v9 = *(a1 + 280);
  v19 = *(a1 + 272);
  v13 = *(a1 + 176);
  v14 = *(a1 + 192);
  v15 = *(a1 + 208);
  v16 = *(a1 + 224);
  v11 = *(a1 + 144);
  v12 = *(a1 + 160);
  v10 = *(a1 + 136);
  *(a1 + 96) = 0;
  *(a1 + 104) = v10;
  result = sub_100017FB4(a1, a1 + 144, (a1 + 280), 0, 0, 0, 0, 0, 0);
  for (*(a1 + 112) = result == 0; !result; result = amai_unzGoToNextFile(a1))
  {
    result = sub_100017FB4(a1, 0, 0, v20, 0x100uLL, 0, 0, 0, 0);
    if (result)
    {
      break;
    }

    result = amai_unzStringFileNameCompare(v20, __s, a3);
    if (!result)
    {
      return result;
    }
  }

  *(a1 + 96) = v7;
  *(a1 + 104) = v8;
  *(a1 + 240) = v17;
  *(a1 + 256) = v18;
  *(a1 + 176) = v13;
  *(a1 + 192) = v14;
  *(a1 + 208) = v15;
  *(a1 + 224) = v16;
  *(a1 + 144) = v11;
  *(a1 + 160) = v12;
  *(a1 + 272) = v19;
  *(a1 + 280) = v9;
  return result;
}

uint64_t amai_unzOpenCurrentFile3(uint64_t a1, _DWORD *a2, int *a3, int a4, _BYTE *a5)
{
  if (!a1 || !*(a1 + 112))
  {
    return 4294967194;
  }

  if (*(a1 + 288))
  {
    amai_unzCloseCurrentFile(a1);
  }

  if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(a1 + 88) + *(a1 + 280), 0))
  {
    return 4294967193;
  }

  v54 = 0;
  v55[0] = 0;
  v53 = 0;
  v10 = sub_100017CD8(a1, *(a1 + 64), v55);
  v11 = v55[0];
  v12 = sub_100017D94(a1, *(a1 + 64), &v54);
  v13 = sub_100017D94(a1, *(a1 + 64), &v53);
  v14 = -103;
  if (!sub_100017D94(a1, *(a1 + 64), &v54))
  {
    v19 = v11 == 67324752 ? 0 : -103;
    v20 = v13 | v12 | v10;
    v14 = v20 ? -1 : v19;
    if (!v20 && v11 == 67324752)
    {
      v14 = -103;
      if (v54 == *(a1 + 168))
      {
        if ((v54 & 0xFFFFFFFFFFFFFFF7) != 0)
        {
          v14 = -103;
        }

        else
        {
          v14 = 0;
        }
      }
    }
  }

  v15 = sub_100017CD8(a1, *(a1 + 64), &v54);
  v16 = sub_100017CD8(a1, *(a1 + 64), &v54) || v15 | v14 || v54 != *(a1 + 184) && (v53 & 8) == 0;
  v18 = 1;
  if (!sub_100017CD8(a1, *(a1 + 64), &v54) && !v16)
  {
    v18 = v54 != *(a1 + 192) && (v53 & 8) == 0;
  }

  v21 = 1;
  if (!sub_100017CD8(a1, *(a1 + 64), &v54) && !v18)
  {
    v21 = v54 != *(a1 + 200) && (v53 & 8) == 0;
  }

  v52 = 0;
  v22 = sub_100017D94(a1, *(a1 + 64), &v52);
  v23 = 0;
  v24 = v52;
  if (!v22 && !v21)
  {
    v23 = v52 == *(a1 + 208);
  }

  v51 = 0;
  if (sub_100017D94(a1, *(a1 + 64), &v51) || !v23)
  {
    return 4294967193;
  }

  v25 = *(a1 + 280);
  v26 = v51;
  v27 = malloc(0x120uLL);
  if (!v27)
  {
    return 4294967192;
  }

  v28 = v27;
  v29 = malloc(0x4000uLL);
  *v28 = v29;
  *(v28 + 17) = v24 + v25 + 30;
  *(v28 + 36) = v26;
  *(v28 + 19) = 0;
  *(v28 + 70) = a4;
  if (!v29)
  {
    free(v28);
    return 4294967192;
  }

  *(v28 + 16) = 0;
  if (a2)
  {
    *a2 = *(a1 + 168);
  }

  if (a3)
  {
    *a3 = 6;
    v30 = *(a1 + 160) & 6;
    if (v30 > 3)
    {
      if (v30 == 6)
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }
    }

    else
    {
      if (!v30)
      {
        goto LABEL_56;
      }

      v31 = 9;
    }

    *a3 = v31;
  }

LABEL_56:
  v33 = *(a1 + 184);
  *(v28 + 20) = 0;
  *(v28 + 21) = v33;
  v34 = *(a1 + 168);
  *(v28 + 32) = *(a1 + 64);
  *(v28 + 33) = v34;
  v35 = *(a1 + 16);
  *(v28 + 12) = *a1;
  *(v28 + 13) = v35;
  v36 = *(a1 + 48);
  *(v28 + 14) = *(a1 + 32);
  *(v28 + 15) = v36;
  *(v28 + 34) = *(a1 + 88);
  *(v28 + 6) = 0;
  if (!a4 && v34 == 8)
  {
    *(v28 + 1) = 0;
    *(v28 + 4) = 0;
    *(v28 + 10) = 0;
    *(v28 + 11) = 0;
    *(v28 + 9) = 0;
    v37 = inflateInit2_((v28 + 8), -15, "1.2.12", 112);
    if (v37)
    {
      v17 = v37;
      free(v28);
      return v17;
    }

    *(v28 + 16) = 1;
    v25 = *(a1 + 280);
  }

  *(v28 + 11) = *(a1 + 192);
  *(v28 + 15) = v25 + (v26 + v24) + 30;
  *(v28 + 4) = 0;
  *(a1 + 288) = v28;
  if (!a5)
  {
    return 0;
  }

  v38 = 878082192;
  crc_table = get_crc_table();
  *(a1 + 304) = xmmword_100086010;
  *(a1 + 320) = 878082192;
  *(a1 + 328) = crc_table;
  v40 = *a5;
  if (*a5)
  {
    v41 = a5 + 1;
    v42 = 305419896;
    v43 = 591751049;
    do
    {
      v42 = crc_table[v40 ^ v42] ^ (v42 >> 8);
      v43 = 134775813 * (v43 + v42) + 1;
      *(a1 + 304) = v42;
      *(a1 + 312) = v43;
      v38 = crc_table[(v38 ^ BYTE3(v43))] ^ (v38 >> 8);
      *(a1 + 320) = v38;
      v44 = *v41++;
      v40 = v44;
    }

    while (v44);
  }

  if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(*(a1 + 288) + 272) + *(*(a1 + 288) + 120), 0) || (*(a1 + 8))(*(a1 + 56), *(a1 + 64), v55, 12) < 0xC)
  {
    return 4294967192;
  }

  v45 = 0;
  v47 = *(a1 + 320);
  v46 = *(a1 + 328);
  v48 = *(a1 + 304);
  v49 = *(a1 + 312);
  do
  {
    v50 = *(v55 + v45) ^ (((v47 & 0xFFFD ^ 3) * (v47 | 2)) >> 8);
    *(v55 + v45) = v50;
    v48 = *(v46 + 8 * (v50 ^ v48)) ^ (v48 >> 8);
    v49 = 134775813 * (v49 + v48) + 1;
    *(a1 + 304) = v48;
    *(a1 + 312) = v49;
    v47 = *(v46 + 8 * (v47 ^ BYTE3(v49))) ^ (v47 >> 8);
    *(a1 + 320) = v47;
    ++v45;
  }

  while (v45 != 12);
  v17 = 0;
  *(*(a1 + 288) + 120) += 12;
  *(a1 + 296) = 1;
  return v17;
}

uint64_t amai_unzReadCurrentFile(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a1)
  {
    return 4294967194;
  }

  v4 = *(a1 + 288);
  if (!v4)
  {
    return 4294967194;
  }

  if (!*v4)
  {
    return 4294967196;
  }

  if (!a3)
  {
    return 0;
  }

  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  v5 = a3;
  v6 = *(v4 + 184);
  if (v6 < a3 && !*(v4 + 280))
  {
    *(v4 + 40) = v6;
    a3 = v6;
  }

  v7 = *(v4 + 176);
  v8 = *(v4 + 16);
  if (v7 + v8 < v5 && *(v4 + 280))
  {
    a3 = v8 + v7;
    *(v4 + 40) = v8 + v7;
  }

  if (!a3)
  {
    return 0;
  }

  v9 = 0;
  while (1)
  {
    while (1)
    {
      LODWORD(v10) = *(v4 + 16);
      if (!v10)
      {
        v11 = *(v4 + 176);
        if (v11)
        {
          if (v11 >= 0x4000)
          {
            v10 = 0x4000;
          }

          else
          {
            v10 = *(v4 + 176);
          }

          if ((*(v4 + 224))(*(v4 + 248), *(v4 + 256), *(v4 + 272) + *(v4 + 120), 0) || (*(v4 + 200))(*(v4 + 248), *(v4 + 256), *v4, v10) != v10)
          {
            return 0xFFFFFFFFLL;
          }

          if (*(a1 + 296))
          {
            v12 = 0;
            do
            {
              v13 = *(a1 + 328);
              v14 = *(*v4 + v12) ^ (((*(a1 + 320) & 0xFFFD ^ 3) * (*(a1 + 320) | 2u)) >> 8);
              *(*v4 + v12) ^= ((*(a1 + 320) & 0xFFFD ^ 3) * (*(a1 + 320) | 2)) >> 8;
              v15 = *(v13 + 8 * (v14 ^ *(a1 + 304))) ^ (*(a1 + 304) >> 8);
              v16 = 134775813 * (*(a1 + 312) + v15) + 1;
              *(a1 + 304) = v15;
              *(a1 + 312) = v16;
              *(a1 + 320) = *(v13 + 8 * (*(a1 + 320) ^ BYTE3(v16))) ^ (*(a1 + 320) >> 8);
              *(*v4 + v12++) = v14;
            }

            while (v10 != v12);
          }

          *(v4 + 120) += v10;
          *(v4 + 176) -= v10;
          *(v4 + 8) = *v4;
          *(v4 + 16) = v10;
        }

        else
        {
          LODWORD(v10) = 0;
        }
      }

      if (*(v4 + 264) && !*(v4 + 280))
      {
        break;
      }

      if (v10 || *(v4 + 176))
      {
        v17 = *(v4 + 40);
        v10 = v17 >= v10 ? v10 : v17;
        if (v10)
        {
          for (i = 0; i != v10; ++i)
          {
            *(*(v4 + 32) + i) = *(*(v4 + 8) + i);
          }

          v19 = v10;
        }

        else
        {
          v19 = 0;
        }

        *(v4 + 160) = crc32(*(v4 + 160), *(v4 + 32), v10);
        *(v4 + 184) -= v19;
        *(v4 + 16) -= v10;
        v20 = *(v4 + 40) - v10;
        *(v4 + 40) = v20;
        *(v4 + 32) += v19;
        *(v4 + 8) += v19;
        v9 = (v10 + v9);
        *(v4 + 48) += v19;
        if (v20)
        {
          continue;
        }
      }

      return v9;
    }

    v21 = *(v4 + 48);
    v22 = *(v4 + 32);
    v23 = inflate((v4 + 8), 2);
    if ((v23 & 0x80000000) == 0 && *(v4 + 56))
    {
      v26 = *(v4 + 48);
      v27 = v26 - v21;
      *(v4 + 160) = crc32(*(v4 + 160), v22, v26 - v21);
      *(v4 + 184) -= v27;
      return 4294967293;
    }

    v24 = *(v4 + 48) - v21;
    *(v4 + 160) = crc32(*(v4 + 160), v22, v24);
    *(v4 + 184) -= v24;
    v9 = (v9 + v24);
    if (v23)
    {
      break;
    }

    if (!*(v4 + 40))
    {
      return v9;
    }
  }

  if (v23 == 1)
  {
    return v9;
  }

  else
  {
    return v23;
  }
}

uint64_t sub_100018EE0(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v7 = 0;
  if ((*(a1 + 8))(*(a1 + 56), a2, &v7, 1) == 1)
  {
    result = 0;
    *a3 = v7;
  }

  else if ((*(a1 + 48))(*(a1 + 56), a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }

  return result;
}

void *amai_zipOpen2()
{
  v0 = __chkstk_darwin();
  v3 = v2;
  v5 = v4;
  v6 = v0;
  memset(__src, 0, 512);
  if (v1)
  {
    v7 = v1[1];
    __src[0] = *v1;
    __src[1] = v7;
    v8 = v1[3];
    __src[2] = v1[2];
    __src[3] = v8;
  }

  else
  {
    amai_fill_fopen_filefunc(__src);
  }

  if (v5)
  {
    v9 = 7;
  }

  else
  {
    v9 = 11;
  }

  v10 = (*&__src[0])(*(&__src[3] + 1), v6, v9);
  *&__src[4] = v10;
  if (!v10)
  {
    return 0;
  }

  *&__src[1044] = (*(&__src[1] + 1))(*(&__src[3] + 1), v10);
  LODWORD(__src[13]) = 0;
  v11 = malloc(0x4160uLL);
  *(&__src[4] + 8) = 0u;
  DWORD2(__src[5]) = 0;
  *(&__src[1044] + 8) = 0u;
  if (v11)
  {
    *(&__src[1045] + 1) = 0;
    if (v5 == 2)
    {
      v63 = 0;
      v64 = 0;
      v60 = 0;
      v61 = 0;
      v58 = 0;
      v59 = 0;
      v57 = 0;
      v12 = *&__src[4];
      v51 = v3;
      if ((*&__src[2])(*(&__src[3] + 1), *&__src[4], 0, 2) || ((v15 = (*(&__src[1] + 1))(*(&__src[3] + 1), v12), v16 = v15, v15 >= 0xFFFF) ? (v17 = 0xFFFFLL) : (v17 = v15), (v18 = malloc(0x404uLL)) == 0))
      {
        v13 = 0;
        v55 = 0;
      }

      else
      {
        v19 = v18;
        if (v16 >= 5)
        {
          v20 = 4;
          while (2)
          {
            v21 = v20 + 1024;
            if (v20 + 1024 >= v17)
            {
              v20 = v17;
            }

            else
            {
              v20 += 1024;
            }

            v22 = v20 >= 0x404 ? 1028 : v20;
            if (!(*&__src[2])(*(&__src[3] + 1), v12, v16 - v20, 0) && (*(&__src[0] + 1))(*(&__src[3] + 1), v12, v19, v22) == v22)
            {
              v23 = (v22 - 4);
              v24 = v20 - v16 - v23;
              v25 = v22 - 3;
              v26 = &v19[v23 + 1];
              while (*(v26 - 1) != 80 || *v26 != 75 || v26[1] != 5 || v26[2] != 6)
              {
                ++v24;
                --v26;
                v27 = __OFSUB__(v25--, 1);
                if ((v25 < 0) ^ v27 | (v25 == 0))
                {
                  goto LABEL_40;
                }
              }

              if (v24)
              {
                v13 = -v24;
                v55 = 1;
                goto LABEL_45;
              }

LABEL_40:
              if (v21 < v17)
              {
                continue;
              }
            }

            break;
          }
        }

        v13 = 0;
        v55 = 0;
LABEL_45:
        free(v19);
      }

      v52 = (*&__src[2])(*(&__src[3] + 1), *&__src[4], v13, 0);
      HIDWORD(v53) = sub_100017CD8(__src, *&__src[4], &v62);
      LODWORD(v53) = sub_100017D94(__src, *&__src[4], &v61);
      v54 = sub_100017D94(__src, *&__src[4], &v60);
      v28 = sub_100017D94(__src, *&__src[4], &v59);
      v29 = sub_100017D94(__src, *&__src[4], &v58);
      v30 = v59;
      v56 = v58;
      v31 = v60;
      v32 = v61;
      v33 = sub_100017CD8(__src, *&__src[4], &v64);
      v34 = sub_100017CD8(__src, *&__src[4], &v63);
      v35 = sub_100017D94(__src, *&__src[4], &v57);
      v36 = v64;
      v50 = v63;
      v37 = v13 >= v64 + v63;
      v38 = v13 - (v64 + v63);
      if (!v37 || v34 | v33 | v35 || v56 != v30 || v31 || v32 || !v55 || v29 || v28 || v54 || v53 || v52)
      {
        (*(&__src[2] + 1))(*(&__src[3] + 1), *&__src[4]);
LABEL_74:
        free(v11);
        return 0;
      }

      v39 = v57;
      if (v57)
      {
        v40 = malloc(v57 + 1);
        *(&__src[1045] + 1) = v40;
        if (v40)
        {
          v41 = (*(&__src[0] + 1))(*(&__src[3] + 1), *&__src[4], v40, v39);
          *(*(&__src[1045] + 1) + v41) = 0;
        }
      }

      *(&__src[1044] + 1) = v38;
      v42 = malloc(0xFF0uLL);
      v43 = v38;
      v44 = (*&__src[2])(*(&__src[3] + 1), *&__src[4], v38 + v50, 0);
      if (v44)
      {
        v45 = -1;
      }

      else
      {
        v45 = 0;
      }

      if (v36 && !v44)
      {
        while (1)
        {
          v46 = v36 >= 0xFF0 ? 4080 : v36;
          if ((*(&__src[0] + 1))(*(&__src[3] + 1), *&__src[4], v42, v46) != v46)
          {
            break;
          }

          v47 = sub_1000194B0(&__src[4] + 1, v42, v46);
          v45 = v47;
          v36 -= v46;
          if (!v36 || v47)
          {
            goto LABEL_78;
          }
        }

        v45 = -1;
      }

LABEL_78:
      if (v42)
      {
        free(v42);
      }

      *&__src[1044] = v43;
      *&__src[1045] = v56;
      if ((*&__src[2])(*(&__src[3] + 1), *&__src[4], v43 + v50, 0))
      {
        v49 = 0;
      }

      else
      {
        v49 = v45 == 0;
      }

      v14 = v49;
      v3 = v51;
      if (!v51)
      {
LABEL_15:
        if (v14)
        {
          memcpy(v11, __src, 0x4160uLL);
          return v11;
        }

        if (*(&__src[1045] + 1))
        {
          free(*(&__src[1045] + 1));
        }

        goto LABEL_74;
      }
    }

    else
    {
      v14 = 1;
      if (!v3)
      {
        goto LABEL_15;
      }
    }

    *v3 = *(&__src[1045] + 1);
    goto LABEL_15;
  }

  (*(&__src[2] + 1))(*(&__src[3] + 1), *&__src[4]);
  return v11;
}

uint64_t sub_1000194B0(void *a1, char *a2, unint64_t a3)
{
  if (!a1)
  {
    return 4294967192;
  }

  v3 = a3;
  v6 = a1[1];
  if (v6)
  {
    if (!a3)
    {
      return 0;
    }

    goto LABEL_8;
  }

  v8 = malloc(0x1010uLL);
  if (v8)
  {
    v6 = v8;
    *v8 = 0;
    *(v8 + 8) = xmmword_100086020;
    *a1 = v8;
    a1[1] = v8;
    if (!v3)
    {
      return 0;
    }

LABEL_8:
    v9 = v6[1];
    while (1)
    {
      if (v9)
      {
        v10 = v6[2];
      }

      else
      {
        v11 = malloc(0x1010uLL);
        if (!v11)
        {
          *v6 = 0;
          return 4294967192;
        }

        v10 = 0;
        *v11 = 0;
        *(v11 + 8) = xmmword_100086020;
        *v6 = v11;
        v9 = 4080;
        v6 = v11;
        a1[1] = v11;
      }

      if (v9 >= v3)
      {
        v12 = v3;
      }

      else
      {
        v12 = v9;
      }

      if (v12)
      {
        v13 = v6 + v10 + 32;
        v14 = v12;
        v15 = a2;
        do
        {
          v16 = *v15++;
          *v13++ = v16;
          --v14;
        }

        while (v14);
        v9 = v6[1];
        v10 = v6[2];
      }

      v9 -= v12;
      v6[1] = v9;
      v6[2] = v10 + v12;
      a2 += v12;
      v3 -= v12;
      if (!v3)
      {
        return 0;
      }
    }
  }

  *a1 = 0;
  a1[1] = 0;
  return 4294967192;
}

uint64_t amai_zipOpenNewFileInZip3(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, unsigned int a5, char *a6, unsigned int a7, char *__s, int a9, int a10, int a11, int a12, int a13, int a14, _BYTE *a15, uint64_t a16)
{
  result = 4294967194;
  if (!a1)
  {
    return result;
  }

  if ((a9 & 0xFFFFFFF7) != 0)
  {
    return result;
  }

  if (*(a1 + 88) == 1)
  {
    result = amai_zipCloseFileInZipRaw(a1, 0, 0);
    if (result)
    {
      return result;
    }
  }

  v94 = a4;
  if (a2)
  {
    v25 = a2;
  }

  else
  {
    v25 = "-";
  }

  v95 = a5;
  if (__s)
  {
    v26 = strlen(__s);
  }

  else
  {
    v26 = 0;
  }

  v27 = strlen(v25);
  if (a3)
  {
    v28 = *(a3 + 24);
    if (!v28)
    {
      v29 = *(a3 + 20);
      v30 = v29 - 80;
      if (v29 <= 0x50)
      {
        v30 = *(a3 + 20);
      }

      if (v29 <= 0x7BC)
      {
        v31 = v30;
      }

      else
      {
        v31 = v29 - 1980;
      }

      v28 = ((32 * *(a3 + 4) + (*a3 >> 1)) + (*(a3 + 8) << 11)) | (((*(a3 + 12) + 32 * *(a3 + 16) + 32) << 16) + (v31 << 25));
    }
  }

  else
  {
    v28 = 0;
  }

  *(a1 + 16640) = v28;
  v32 = 2 * ((a10 & 0xFFFFFFFE) == 8);
  *(a1 + 240) = v32;
  if (a10 == 2)
  {
    v32 = 4;
  }

  else
  {
    if (a10 != 1)
    {
      goto LABEL_25;
    }

    v32 = 6;
  }

  *(a1 + 240) = v32;
LABEL_25:
  if (a15)
  {
    *(a1 + 240) = v32 | 1;
  }

  *(a1 + 16648) = 0;
  *(a1 + 16656) = 0;
  *(a1 + 208) = 0;
  *(a1 + 248) = a9;
  *(a1 + 252) = a11;
  v33 = (*(a1 + 24))(*(a1 + 56), *(a1 + 64));
  *(a1 + 216) = v33;
  v34 = a7 + v26 + v27 + 46;
  *(a1 + 232) = v34;
  v35 = malloc(v34);
  *(a1 + 224) = v35;
  *v35 = 33639248;
  v35[1] = 1310720;
  v36 = *(a1 + 240);
  *(v35 + 4) = v36;
  if (v36 >= 0x10000)
  {
    *(v35 + 4) = -1;
  }

  v37 = *(a1 + 248);
  *(v35 + 5) = v37;
  if (v37 >= 0x10000)
  {
    *(v35 + 5) = -1;
  }

  v38 = 0;
  v39 = v35 + 3;
  v40 = *(a1 + 16640);
  do
  {
    v41 = v40;
    *(v39 + v38) = v40;
    v40 >>= 8;
    ++v38;
  }

  while (v38 != 4);
  if (v41 >= 0x100)
  {
    *v39 = -1;
  }

  *(v35 + 2) = 0;
  v35[6] = 0;
  *(v35 + 14) = v27;
  if (v27 >= 0x10000uLL)
  {
    *(v35 + 14) = -1;
  }

  *(v35 + 15) = a7;
  if (a7 >= 0x10000)
  {
    *(v35 + 15) = -1;
  }

  *(v35 + 16) = v26;
  if (v26 >= 0x10000)
  {
    *(v35 + 16) = -1;
  }

  *(v35 + 17) = 0;
  v42 = v26;
  if (a3)
  {
    v43 = *(a3 + 32);
    *(v35 + 18) = v43;
    if (v43 >= 0x10000)
    {
      *(v35 + 18) = -1;
    }

    v44 = 0;
    v45 = (v35 + 38);
    v46 = *(a3 + 40);
    do
    {
      v47 = v46;
      *(v45 + v44) = v46;
      v46 >>= 8;
      ++v44;
    }

    while (v44 != 4);
    if (v47 >= 0x100)
    {
      *v45 = -1;
    }
  }

  else
  {
    *(v35 + 18) = 0;
    *(v35 + 38) = 0;
  }

  v48 = 0;
  v49 = (v35 + 42);
  v50 = v33 - *(a1 + 16712);
  do
  {
    v51 = v50;
    *(v49 + v48) = v50;
    v50 >>= 8;
    ++v48;
  }

  while (v48 != 4);
  if (v51 >= 0x100)
  {
    *v49 = -1;
  }

  if (v27)
  {
    for (i = 0; i != v27; ++i)
    {
      *(*(a1 + 224) + i + 46) = v25[i];
    }
  }

  if (a7)
  {
    v53 = v27 + 46;
    v54 = a7;
    do
    {
      v55 = *a6++;
      *(*(a1 + 224) + v53++) = v55;
      --v54;
    }

    while (v54);
  }

  if (v26)
  {
    v56 = a7 + v27 + 46;
    do
    {
      v57 = *__s++;
      *(*(a1 + 224) + v56++) = v57;
      --v42;
    }

    while (v42);
  }

  if (!*(a1 + 224))
  {
    return 4294967192;
  }

  v96[0] = 67324752;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v96, 4) != 4)
  {
    goto LABEL_91;
  }

  LOWORD(v96[0]) = 20;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v96, 2) != 2)
  {
    goto LABEL_91;
  }

  v58 = *(a1 + 64);
  v59 = *(a1 + 240);
  LOWORD(v96[0]) = v59;
  if (v59 >= 0x10000)
  {
    LOWORD(v96[0]) = -1;
  }

  if ((*(a1 + 16))(*(a1 + 56), v58, v96, 2) != 2)
  {
    goto LABEL_91;
  }

  v60 = *(a1 + 64);
  v61 = *(a1 + 248);
  LOWORD(v96[0]) = v61;
  if (v61 >= 0x10000)
  {
    LOWORD(v96[0]) = -1;
  }

  if ((*(a1 + 16))(*(a1 + 56), v60, v96, 2) != 2)
  {
    goto LABEL_91;
  }

  v62 = 0;
  v63 = *(a1 + 64);
  v64 = *(a1 + 16640);
  do
  {
    v65 = v64;
    *(v96 + v62) = v64;
    v64 >>= 8;
    ++v62;
  }

  while (v62 != 4);
  if (v65 >= 0x100)
  {
    v96[0] = -1;
  }

  if ((*(a1 + 16))(*(a1 + 56), v63, v96, 4) != 4)
  {
    goto LABEL_91;
  }

  v96[0] = 0;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v96, 4) != 4)
  {
    goto LABEL_91;
  }

  v96[0] = 0;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v96, 4) != 4)
  {
    goto LABEL_91;
  }

  v96[0] = 0;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v96, 4) != 4)
  {
    goto LABEL_91;
  }

  v66 = *(a1 + 64);
  LOWORD(v96[0]) = v27;
  if (v27 >= 0x10000uLL)
  {
    LOWORD(v96[0]) = -1;
  }

  if ((*(a1 + 16))(*(a1 + 56), v66, v96, 2) != 2)
  {
    goto LABEL_91;
  }

  v67 = *(a1 + 64);
  LOWORD(v96[0]) = v95;
  if (v95 >= 0x10000)
  {
    LOWORD(v96[0]) = -1;
  }

  v68 = (*(a1 + 16))(*(a1 + 56), v67, v96, 2);
  v69 = v68 != 2;
  if (v68 == 2 && v27)
  {
    v69 = (*(a1 + 16))(*(a1 + 56), *(a1 + 64), v25, v27) != v27;
  }

  v70 = v95;
  if (v95 && !v69)
  {
    if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v94, v95) == v70)
    {
      *(a1 + 104) = 0;
      *(a1 + 128) = 0x4000;
      *(a1 + 112) = 0;
      *(a1 + 120) = a1 + 256;
      *(a1 + 136) = 0;
      v71 = a1 + 0x4000;
      v72 = a15;
      goto LABEL_97;
    }

LABEL_91:
    *(a1 + 104) = 0;
    *(a1 + 128) = 0x4000;
    *(a1 + 112) = 0;
    *(a1 + 120) = a1 + 256;
    result = 0xFFFFFFFFLL;
    *(a1 + 136) = 0;
    v71 = a1 + 0x4000;
    goto LABEL_92;
  }

  *(a1 + 104) = 0;
  *(a1 + 128) = 0x4000;
  *(a1 + 112) = 0;
  *(a1 + 120) = a1 + 256;
  *(a1 + 136) = 0;
  v71 = a1 + 0x4000;
  v72 = a15;
  if (v69)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_92;
  }

LABEL_97:
  if (*(a1 + 248) != 8 || *(a1 + 252))
  {
    goto LABEL_99;
  }

  if (a12 < 0)
  {
    v93 = a12;
  }

  else
  {
    v93 = -a12;
  }

  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  result = deflateInit2_((a1 + 96), a10, 8, v93, a13, a14, "1.2.12", 112);
  if (result)
  {
LABEL_92:
    *(v71 + 312) = 0;
    return result;
  }

  *(a1 + 208) = 1;
  v72 = a15;
LABEL_99:
  *(v71 + 312) = 0;
  if (!v72)
  {
    goto LABEL_107;
  }

  *(v71 + 272) = 1;
  crc_table = get_crc_table();
  *(a1 + 16688) = crc_table;
  if (!dword_1000C87D0++)
  {
    v75 = time(0);
    srand(v75 ^ 0xBB40E64E);
  }

  sub_10001A850(a15, (a1 + 16664), crc_table);
  for (j = 0; j != 10; v99[j++] = (((v78 & 0xFFFD ^ 3) * (v78 | 2)) >> 8) ^ (v77 >> 7))
  {
    v77 = rand();
    v78 = *(a1 + 16680);
    v79 = crc_table[(*(a1 + 16664) ^ (v77 >> 7))] ^ (*(a1 + 16664) >> 8);
    *(a1 + 16664) = v79;
    v80 = 134775813 * (*(a1 + 16672) + v79) + 1;
    *(a1 + 16672) = v80;
    *(a1 + 16680) = crc_table[(v78 ^ BYTE3(v80))] ^ (v78 >> 8);
  }

  sub_10001A850(a15, (a1 + 16664), crc_table);
  v81 = 0;
  v82 = *(a1 + 16680);
  v83 = *(a1 + 16664);
  v84 = *(a1 + 16672);
  do
  {
    v85 = (v82 & 0xFFFD ^ 3) * (v82 | 2);
    v86 = v99[v81];
    v83 = crc_table[(v86 ^ v83)] ^ (v83 >> 8);
    *(a1 + 16664) = v83;
    v84 = 134775813 * (v84 + v83) + 1;
    *(a1 + 16672) = v84;
    v82 = crc_table[(v82 ^ BYTE3(v84))] ^ (v82 >> 8);
    *(a1 + 16680) = v82;
    *(v96 + v81++) = v86 ^ HIBYTE(v85);
  }

  while (v81 != 10);
  v87 = ((v82 & 0xFFFFFFFD ^ 3) * (v82 | 2)) >> 8;
  v88 = crc_table[(v83 ^ BYTE2(a16))] ^ (v83 >> 8);
  *(a1 + 16664) = v88;
  v89 = 134775813 * (v84 + v88) + 1;
  *(a1 + 16672) = v89;
  v90 = crc_table[(v82 ^ BYTE3(v89))] ^ (v82 >> 8);
  *(a1 + 16680) = v90;
  v97 = v87 ^ BYTE2(a16);
  v91 = crc_table[v88 ^ BYTE3(a16)] ^ (v88 >> 8);
  *(a1 + 16664) = v91;
  v92 = 134775813 * (v89 + v91) + 1;
  *(a1 + 16672) = v92;
  *(a1 + 16680) = crc_table[(v90 ^ BYTE3(v92))] ^ (v90 >> 8);
  v98 = (((v90 & 0xFFFD ^ 3) * (v90 | 2)) >> 8) ^ BYTE3(a16);
  *(a1 + 16696) = 12;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v96, 12) != 12)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_107:
  result = 0;
  *(a1 + 88) = 1;
  return result;
}

uint64_t amai_zipWriteInFileInZip(uint64_t a1, const Bytef *a2, uInt a3)
{
  if (!a1)
  {
    return 4294967194;
  }

  if (!*(a1 + 88))
  {
    return 4294967194;
  }

  *(a1 + 96) = a2;
  *(a1 + 104) = a3;
  *(a1 + 16648) = crc32(*(a1 + 16648), a2, a3);
  while (*(a1 + 104))
  {
    v4 = *(a1 + 128);
    if (v4 || (result = sub_10001A0B4(a1), v4 = 0x4000, *(a1 + 128) = 0x4000, *(a1 + 120) = a1 + 256, result != -1))
    {
      if (*(a1 + 248) == 8 && !*(a1 + 252))
      {
        v10 = *(a1 + 136);
        result = deflate((a1 + 96), 0);
        LODWORD(v7) = *(a1 + 136) - v10;
      }

      else
      {
        v6 = *(a1 + 104);
        v7 = v6 >= v4 ? v4 : v6;
        if (v6)
        {
          v8 = 0;
          do
          {
            *(*(a1 + 120) + v8) = *(*(a1 + 96) + v8);
            ++v8;
          }

          while (v7 != v8);
          v6 = *(a1 + 104);
          v4 = *(a1 + 128);
        }

        result = 0;
        *(a1 + 104) = v6 - v7;
        *(a1 + 128) = v4 - v7;
        *(a1 + 96) += v7;
        v9 = *(a1 + 120) + v7;
        *(a1 + 112) += v7;
        *(a1 + 120) = v9;
        *(a1 + 136) += v7;
      }

      *(a1 + 212) += v7;
      if (!result)
      {
        continue;
      }
    }

    return result;
  }

  return 0;
}

uint64_t sub_10001A0B4(uint64_t a1)
{
  v2 = *(a1 + 212);
  if (*(a1 + 16656) && v2)
  {
    v3 = (a1 + 256);
    v4 = *(a1 + 212);
    do
    {
      v5 = *(a1 + 16680);
      v6 = *(a1 + 16688);
      v7 = *(v6 + 8 * (*v3 ^ *(a1 + 16664))) ^ (*(a1 + 16664) >> 8);
      *(a1 + 16664) = v7;
      v8 = 134775813 * (*(a1 + 16672) + v7) + 1;
      *(a1 + 16672) = v8;
      *(a1 + 16680) = *(v6 + 8 * (v5 ^ BYTE3(v8))) ^ (v5 >> 8);
      *v3++ ^= ((v5 & 0xFFFD ^ 3) * (v5 | 2)) >> 8;
      --v4;
    }

    while (v4);
  }

  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), a1 + 256, v2) == *(a1 + 212))
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *(a1 + 212) = 0;
  return result;
}

uint64_t amai_zipCloseFileInZipRaw(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a1 || !*(a1 + 88))
  {
    return 4294967194;
  }

  *(a1 + 104) = 0;
  if (*(a1 + 248) == 8 && !*(a1 + 252))
  {
    do
    {
      if (!*(a1 + 128))
      {
        v33 = sub_10001A0B4(a1);
        *(a1 + 128) = 0x4000;
        *(a1 + 120) = a1 + 256;
        if (v33 == -1)
        {
          v6 = 0xFFFFFFFFLL;
          goto LABEL_10;
        }
      }

      v34 = *(a1 + 136);
      v35 = deflate((a1 + 96), 4);
      *(a1 + 212) += *(a1 + 136) - v34;
    }

    while (!v35);
    if (v35 == 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = v35;
    }

    if (v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 212))
  {
    if (sub_10001A0B4(a1) == -1)
    {
      v6 = 0xFFFFFFFFLL;
    }

    else
    {
      v6 = 0;
    }
  }

LABEL_10:
  if (*(a1 + 248) == 8 && !(*(a1 + 252) | v6))
  {
    v6 = deflateEnd((a1 + 96));
    *(a1 + 208) = 0;
  }

  if (!*(a1 + 252))
  {
    a3 = *(a1 + 16648);
    a2 = *(a1 + 112);
  }

  v7 = 0;
  v8 = *(a1 + 136);
  v9 = *(a1 + 16696);
  v10 = (*(a1 + 224) + 16);
  v11 = a3;
  do
  {
    v12 = v11;
    *(v10 + v7) = v11;
    v11 >>= 8;
    ++v7;
  }

  while (v7 != 4);
  v13 = v8 + v9;
  if (v12 >= 0x100)
  {
    *v10 = -1;
  }

  v14 = 0;
  v15 = (*(a1 + 224) + 20);
  v16 = v8 + v9;
  do
  {
    v17 = v16;
    *(v15 + v14) = v16;
    v16 >>= 8;
    ++v14;
  }

  while (v14 != 4);
  if (v17 >= 0x100)
  {
    *v15 = -1;
  }

  if (*(a1 + 184) == 1)
  {
    *(*(a1 + 224) + 36) = 1;
  }

  v18 = 0;
  v19 = (*(a1 + 224) + 24);
  v20 = a2;
  do
  {
    v21 = v20;
    *(v19 + v18) = v20;
    v20 >>= 8;
    ++v18;
  }

  while (v18 != 4);
  if (v21 >= 0x100)
  {
    *v19 = -1;
  }

  if (v6)
  {
    free(*(a1 + 224));
  }

  else
  {
    v6 = sub_1000194B0((a1 + 72), *(a1 + 224), *(a1 + 232));
    free(*(a1 + 224));
    if (!v6)
    {
      v22 = (*(a1 + 24))(*(a1 + 56), *(a1 + 64));
      if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(a1 + 216) + 14, 0))
      {
        goto LABEL_59;
      }

      v23 = 0;
      v24 = *(a1 + 64);
      do
      {
        v25 = a3;
        *(&v37 + v23) = a3;
        a3 >>= 8;
        ++v23;
      }

      while (v23 != 4);
      if (v25 >= 0x100)
      {
        v37 = -1;
      }

      if ((*(a1 + 16))(*(a1 + 56), v24, &v37, 4) != 4)
      {
        goto LABEL_59;
      }

      v26 = 0;
      v27 = *(a1 + 64);
      do
      {
        v28 = v13;
        *(&v38 + v26) = v13;
        v13 >>= 8;
        ++v26;
      }

      while (v26 != 4);
      if (v28 >= 0x100)
      {
        v38 = -1;
      }

      if ((*(a1 + 16))(*(a1 + 56), v27, &v38, 4) == 4)
      {
        v29 = 0;
        v30 = *(a1 + 64);
        do
        {
          v31 = a2;
          *(&v39 + v29) = a2;
          a2 >>= 8;
          ++v29;
        }

        while (v29 != 4);
        if (v31 >= 0x100)
        {
          v39 = -1;
        }

        if ((*(a1 + 16))(*(a1 + 56), v30, &v39, 4) == 4)
        {
          v32 = 0;
        }

        else
        {
          v32 = -1;
        }
      }

      else
      {
LABEL_59:
        v32 = -1;
      }

      if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), v22, 0))
      {
        v6 = 0xFFFFFFFFLL;
      }

      else
      {
        v6 = v32;
      }
    }
  }

  ++*(a1 + 16720);
  *(a1 + 88) = 0;
  return v6;
}

uint64_t amai_zipClose(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return 4294967194;
  }

  v2 = a2;
  if (*(a1 + 88) != 1)
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }

LABEL_8:
    v6 = strlen(v2);
    goto LABEL_9;
  }

  v4 = amai_zipCloseFileInZipRaw(a1, 0, 0);
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_7:
  v2 = *(a1 + 16728);
  if (v2)
  {
    goto LABEL_8;
  }

  v6 = 0;
LABEL_9:
  v7 = (*(a1 + 24))(*(a1 + 56), *(a1 + 64));
  if (!v4)
  {
    v9 = *(a1 + 72);
    if (v9)
    {
      v8 = 0;
      v4 = 0;
      do
      {
        v10 = v9[2];
        if (v4)
        {
          v4 = -1;
        }

        else if (v10)
        {
          v11 = (*(a1 + 16))(*(a1 + 56), *(a1 + 64), v9 + 4);
          v10 = v9[2];
          if (v11 == v10)
          {
            v4 = 0;
          }

          else
          {
            v4 = -1;
          }
        }

        else
        {
          v4 = 0;
        }

        v8 += v10;
        v9 = *v9;
      }

      while (v9);
      goto LABEL_21;
    }

    v4 = 0;
  }

  v8 = 0;
LABEL_21:
  v12 = *(a1 + 72);
  if (v12)
  {
    do
    {
      v13 = *v12;
      free(v12);
      v12 = v13;
    }

    while (v13);
  }

  if (!v4)
  {
    v31 = 101010256;
    if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), &v31, 4) != 4)
    {
      goto LABEL_53;
    }

    LOWORD(v31) = 0;
    if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), &v31, 2) != 2)
    {
      goto LABEL_53;
    }

    LOWORD(v31) = 0;
    if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), &v31, 2) != 2)
    {
      goto LABEL_53;
    }

    v14 = *(a1 + 64);
    v15 = *(a1 + 16720);
    LOWORD(v31) = v15;
    if (v15 >= 0x10000)
    {
      LOWORD(v31) = -1;
    }

    if ((*(a1 + 16))(*(a1 + 56), v14, &v31, 2) != 2)
    {
      goto LABEL_53;
    }

    v16 = *(a1 + 64);
    v17 = *(a1 + 16720);
    LOWORD(v31) = v17;
    if (v17 >= 0x10000)
    {
      LOWORD(v31) = -1;
    }

    if ((*(a1 + 16))(*(a1 + 56), v16, &v31, 2) != 2)
    {
      goto LABEL_53;
    }

    v18 = 0;
    v19 = *(a1 + 64);
    do
    {
      v20 = v8;
      *(&v31 + v18) = v8;
      v8 >>= 8;
      ++v18;
    }

    while (v18 != 4);
    if (v20 >= 0x100)
    {
      v31 = -1;
    }

    if ((*(a1 + 16))(*(a1 + 56), v19, &v31, 4) != 4)
    {
      goto LABEL_53;
    }

    v21 = 0;
    v22 = *(a1 + 64);
    v23 = v7 - *(a1 + 16712);
    do
    {
      v24 = v23;
      *(&v31 + v21) = v23;
      v23 >>= 8;
      ++v21;
    }

    while (v21 != 4);
    if (v24 >= 0x100)
    {
      v31 = -1;
    }

    if ((*(a1 + 16))(*(a1 + 56), v22, &v31, 4) == 4)
    {
      v25 = *(a1 + 64);
      LOWORD(v31) = v6;
      if (v6 >= 0x10000)
      {
        LOWORD(v31) = -1;
      }

      v26 = (*(a1 + 16))(*(a1 + 56), v25, &v31, 2);
      if (v26 == 2)
      {
        v4 = 0;
      }

      else
      {
        v4 = -1;
      }

      if (v26 == 2 && v6)
      {
        if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v2, v6) == v6)
        {
          v4 = 0;
        }

        else
        {
          v4 = -1;
        }
      }
    }

    else
    {
LABEL_53:
      v4 = -1;
    }
  }

  v27 = (*(a1 + 40))(*(a1 + 56), *(a1 + 64));
  if (v4)
  {
    v28 = v4;
  }

  else
  {
    v28 = -1;
  }

  if (v27)
  {
    v5 = v28;
  }

  else
  {
    v5 = v4;
  }

  v29 = *(a1 + 16728);
  if (v29)
  {
    free(v29);
  }

  free(a1);
  return v5;
}

_BYTE *sub_10001A850(_BYTE *result, void *a2, uint64_t a3)
{
  *a2 = xmmword_100086010;
  a2[2] = 878082192;
  v3 = *result;
  if (*result)
  {
    v6 = result + 1;
    do
    {
      result = sub_10001A8B8(a2, a3, v3);
      v7 = *v6++;
      v3 = v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_10001A8B8(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8 * (*a1 ^ a3)) ^ (*a1 >> 8);
  v4 = 134775813 * (a1[1] + v3) + 1;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = *(a2 + 8 * (a1[2] ^ BYTE3(v4))) ^ (a1[2] >> 8);
  return a3;
}

uint64_t _AMPortDFUModeDeviceCreate(uint64_t a1, uint64_t a2, int a3)
{
  pthread_once(&stru_1000C82F0, sub_10001A99C);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v6 = _AMDFUModeDeviceCreate(kCFAllocatorDefault, a2, a3);
    if (v6)
    {
      *(Instance + 48) = v6;
    }

    else
    {
      return 0;
    }
  }

  return Instance;
}

uint64_t sub_10001A99C()
{
  result = _CFRuntimeRegisterClass();
  qword_1000C87D8 = result;
  return result;
}

void sub_10001AA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AMRLog(7, @"%s: %p", a3, a4, a5, a6, a7, a8, "_AMPortDFUModeDeviceFinalize");
  v9 = *(a1 + 48);
  if (v9)
  {

    CFRelease(v9);
  }
}

uint64_t AMBootedModeDeviceIsBootstrapOnly(uint64_t a1, const __CFDictionary *a2)
{
  if (*(a1 + 144) || !sub_10001ABC0(a1))
  {
    v4 = _AMRestoreCopyDeviceInfo(a1 + 16);
    if (v4)
    {
      v11 = v4;
      IsBootstrapOnly = AMRestoreDeviceIsBootstrapOnly(a2, v4, v5, v6, v7, v8, v9, v10);
      free(v11);
      return IsBootstrapOnly;
    }

    AMRLog(3, @"unable to get firmware info from device", v5, v6, v7, v8, v9, v10, v14);
  }

  return 0;
}

uint64_t sub_10001ABC0(uint64_t a1)
{
  if (*(a1 + 144))
  {
    return 0;
  }

  FirmwareInfo = _AMRUSBDeviceGetFirmwareInfo(*(a1 + 136), a1 + 16, 0);
  v1 = FirmwareInfo;
  if (FirmwareInfo)
  {
    AMRLog(3, @"unable to get firmware info from device: %d", v4, v5, v6, v7, v8, v9, FirmwareInfo);
  }

  else
  {
    *(a1 + 144) = 1;
  }

  return v1;
}

uint64_t _AMRestoreErrorForErrno(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 16;
  if (a1 > 0x3D)
  {
    goto LABEL_8;
  }

  if (((1 << a1) & 0x2060000001800020) != 0)
  {
    a2 = 43;
LABEL_4:
    AMRLog(7, @"untranslated errno=%d", a3, a4, a5, a6, a7, a8, a1);
    return a2;
  }

  if (a1 == 12)
  {
    return 18;
  }

  if (a1 != 13)
  {
LABEL_8:
    if (a1 == 1)
    {
      return v9;
    }

    if (a1 == 2)
    {
      return 17;
    }

    goto LABEL_4;
  }

  return v9;
}

uint64_t _AMRestoreErrorForAMSupportError(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((result - 3100) >= 0x384)
  {
    if (result < 0x18 && ((0xBF797Fu >> result) & 1) != 0)
    {
      return dword_1000860E0[result];
    }

    else
    {
      AMRLog(7, @"untranslated AMSupportError=%d", a3, a4, a5, a6, a7, a8, result);
      if (a2)
      {
        return a2;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

void AMRLogWithFilePath(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (dword_1000C8318 >= a1)
  {
    v23 = v9;
    v24 = v10;
    keyExistsAndHasValidFormat = 0;
    Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
    CFStringAppendFormatAndArguments(Mutable, 0, a3, &a9);
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"LogFilePaths", kCFPreferencesCurrentApplication, &keyExistsAndHasValidFormat);
    if (dword_1000C8824 || keyExistsAndHasValidFormat && AppBooleanValue)
    {
      CFStringAppendFormat(Mutable, 0, @" File:'%@'", a2);
    }

    AMRLog(a1, @"%@", v16, v17, v18, v19, v20, v21, Mutable);
    CFRelease(Mutable);
  }
}

char *_AMRestoreGetDeviceIDToMatchAPOnly(unsigned int a1)
{
  if (qword_1000C8300 <= a1)
  {
    return 0;
  }

  if (*(off_1000C8308 + 3 * a1 + 2) == 2)
  {
    return 0;
  }

  return off_1000C8308 + 12 * a1;
}

char *_AMRestoreGetDeviceIDToMatch(unsigned int a1)
{
  if (qword_1000C8300 <= a1)
  {
    return 0;
  }

  else
  {
    return off_1000C8308 + 12 * a1;
  }
}

uint64_t parseNumTokenValue(const char *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  *__error() = 0;
  *a2 = strtol(a1, 0, 16);
  if (*__error())
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t parseNum64TokenValue(const char *a1, unint64_t *a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  *__error() = 0;
  *a2 = strtoull(a1, 0, 16);
  if (*__error())
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t parseStringTokenValue(uint64_t a1, CFStringRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 == 91 && (v10 = a1 + 1, (v11 = strchr((a1 + 1), 93)) != 0))
  {
    v12 = CFStringCreateWithBytes(kCFAllocatorDefault, (a1 + 1), &v11[-v10], 0x8000100u, 0);
    result = 0;
    *a2 = v12;
  }

  else
  {
    AMRLog(3, @"string value '%s' not formatted correctly", a3, a4, a5, a6, a7, a8, a1);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t parseKeyValueIntoDeviceInfo(char *__s2, const char *a2, uint64_t a3)
{
  if (!strcmp("CPID", __s2))
  {
    v13 = a2;
    v14 = a3;
LABEL_17:

    return parseNumTokenValue(v13, v14);
  }

  if (!strcmp("BDID", __s2))
  {
    v14 = (a3 + 4);
LABEL_16:
    v13 = a2;
    goto LABEL_17;
  }

  if (!strcmp("SCEP", __s2))
  {
    if (!parseNumTokenValue(a2, (a3 + 8)))
    {
      v15 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, (a3 + 8));
      result = 0;
      *(a3 + 16) = v15;
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  if (!strcmp("SRNM", __s2))
  {
    v16 = (a3 + 32);
LABEL_27:

    return parseStringTokenValue(a2, v16, v6, v7, v8, v9, v10, v11);
  }

  if (!strcmp("IBFL", __s2))
  {
    result = parseNumTokenValue(a2, (a3 + 28));
    if (!result)
    {
      v17 = vdup_n_s16(*(a3 + 28));
      *(a3 + 103) = 1;
      v18 = vand_s8(v17, 0x20000400080010);
      *(a3 + 99) = vuzp1_s8(v18, v18).u32[0];
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  if (!strcmp("IMEI", __s2))
  {
    v16 = (a3 + 48);
    goto LABEL_27;
  }

  if (!strcmp("IBEC", __s2))
  {
    v14 = (a3 + 24);
    goto LABEL_16;
  }

  if (!strcmp("ECID", __s2))
  {

    return parseNum64TokenValue(a2, (a3 + 80));
  }

  if (!strcmp("CPFM", __s2))
  {
    v24 = 0;
    result = parseNumTokenValue(a2, &v24);
    v19 = v24;
    *(a3 + 96) = (v24 & 2) != 0;
    *(a3 + 97) = v19 & 1;
    *(a3 + 98) = (v19 & 4) != 0;
    return result;
  }

  if (!strcmp("SDOM", __s2))
  {
    v14 = (a3 + 92);
    goto LABEL_16;
  }

  if (!strcmp("SIKA", __s2))
  {
    valuePtr = 0;
    v20 = parseNumTokenValue(a2, &valuePtr);
    v21 = *(a3 + 104);
    AMSupportSafeRelease();
    v22 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
    *(a3 + 104) = v22;
    if (v22)
    {
      return v20;
    }

    else
    {
      return 18;
    }
  }

  else
  {
    if (strcmp("epochs", __s2))
    {
      return 0;
    }

    strlen(a2);
    result = AMSupportCopyDataFromAsciiEncodedHex();
    *(a3 + 72) = result;
    if (result)
    {
      if (CFDataGetLength(result) == 8)
      {
        return 0;
      }

      CFRelease(*(a3 + 72));
      *(a3 + 72) = 0;
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t _legacy_AMRestoreGetDeviceMapEntryForHardware(const __CFDictionary *a1, _DWORD *a2, char *a3)
{
  Value = CFDictionaryGetValue(a1, @"FirmwareDirectory");
  if (sub_10001B464(Value, a2, a3))
  {
    return 1;
  }

  v8 = CFDictionaryGetValue(a1, @"RestoreBundlePath");
  if (v8)
  {
    v15 = sub_10001B868(v8);
    if (v15)
    {
      v16 = v15;
      v17 = sub_10001B914(v15, a2, a3);
      CFRelease(v16);
      if (v17)
      {
        return 1;
      }
    }
  }

  v18 = a2[1];
  v19 = a2[23];
  AMRLog(4, @"unable to find device map entry for 0x%08x 0x%08x 0x%08x", v9, v10, v11, v12, v13, v14, *a2);
  return 0;
}

uint64_t sub_10001B464(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (a1)
  {
    v5 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%cdevice_map.txt", a1, 47);
    bzero(buffer, 0x400uLL);
    CFStringGetFileSystemRepresentation(v5, buffer, 1024);
    v6 = open(buffer, 0, 0);
    if (v6 == -1)
    {
      v11 = __error();
      v12 = strerror(*v11);
      AMRLogWithFilePath(3, v5, @"unable to open device_map.txt: %s", v13, v14, v15, v16, v17, v12);
      CFRelease(v5);
      goto LABEL_60;
    }

    v7 = v6;
    memset(&v45, 0, sizeof(v45));
    if (fstat(v6, &v45) != -1)
    {
      st_size = v45.st_size;
      v9 = malloc_type_malloc(v45.st_size + 1, 0x100004077774924uLL);
      if (!v9)
      {
        goto LABEL_11;
      }

      if (read(v7, v9, st_size) == st_size)
      {
        v9[st_size] = 0;
        goto LABEL_11;
      }

      v18 = __error();
      v19 = strerror(*v18);
      AMRLogWithFilePath(3, v5, @"unable to read device_map.txt: %s", v20, v21, v22, v23, v24, v19);
      free(v9);
    }

    v9 = 0;
LABEL_11:
    close(v7);
    CFRelease(v5);
    if (v9)
    {
      v44 = v9;
      while (1)
      {
        if (!*v9)
        {
LABEL_58:
          v10 = 0;
          goto LABEL_59;
        }

        *(a3 + 176) = 0;
        *(a3 + 144) = 0u;
        *(a3 + 160) = 0u;
        *(a3 + 112) = 0u;
        *(a3 + 128) = 0u;
        *(a3 + 80) = 0u;
        *(a3 + 96) = 0u;
        *(a3 + 48) = 0u;
        *(a3 + 64) = 0u;
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
        *a3 = 0u;
        *(a3 + 92) = 1;
        if (*v9 == 48)
        {
          *buffer = 0;
          LOWORD(v45.st_dev) = 0;
          v46 = 0;
          if (sscanf(v9, "%hx %hx %hx %15s", buffer, &v45, &v46, a3 + 120) == 4)
          {
            v25 = v46;
          }

          else
          {
            v25 = 0;
            *buffer = 0;
            LOWORD(v45.st_dev) = 0;
            v46 = 0;
          }

          *a3 = 35072;
          *(a3 + 8) = v25;
          v37 = v25 >> 8;
          v38 = &word_1000860CA;
          v39 = 6;
          while (*(v38 - 1) != v37)
          {
            v38 += 2;
            if (!--v39)
            {
              v40 = 0xFFFF;
              goto LABEL_50;
            }
          }

          v40 = *v38;
LABEL_50:
          *(a3 + 4) = v40;
          v41 = strchr(v9, 10);
          v9 = v41 ? v41 + 1 : 0;
          v36 = 35072;
        }

        else
        {
          do
          {
            do
            {
              v26 = v9;
              v28 = *v9++;
              v27 = v28;
            }

            while (v28 == 32);
            v29 = 0;
            v30 = 0;
            while (v27 > 0x20 || ((1 << v27) & 0x100000401) == 0)
            {
              if (v30)
              {
                v31 = 0;
              }

              else
              {
                v31 = v27 == 58;
              }

              if (v31)
              {
                v30 = &v26[v29];
              }

              v27 = v26[++v29];
            }

            if (v30)
            {
              v32 = *v30;
              *v30 = 0;
              parseKeyValueIntoDeviceInfo(v26, v30 + 1, a3);
              *v30 = v32;
            }

            else if (v29)
            {
              if (v27 != 10 && v27)
              {
                strlcpy((a3 + 152), v26, 0x20uLL);
                *(a3 + v29 + 152) = 0;
              }

              else
              {
                __strlcpy_chk();
                *(a3 + v29 + 120) = 0;
              }
            }

            v9 = &v26[v29];
            v33 = v26[v29];
          }

          while (v33 != 10 && v33 != 0);
          v35 = (v26[v29] ? v26 + 1 : v26);
          v9 = (v35 + v29);
          v36 = *a3;
        }

        if (v36 == *a2 && *(a3 + 4) == a2[1] && *(a3 + 92) == a2[23])
        {
          break;
        }

        if (!v9)
        {
          goto LABEL_58;
        }
      }

      v10 = 1;
LABEL_59:
      v42 = v44;
      goto LABEL_61;
    }

LABEL_60:
    v42 = 0;
    v10 = 0;
LABEL_61:
    free(v42);
    return v10;
  }

  return 0;
}

const __CFString *sub_10001B868(uint64_t a1)
{
  theDict = 0;
  v1 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%cRestore.plist", a1, 47);
  v8 = v1;
  if (v1)
  {
    v9 = sub_10001C334(v1, &theDict, v2, v3, v4, v5, v6, v7);
    CFRelease(v8);
    if (v9)
    {
      return 0;
    }

    else
    {
      v10 = theDict;
      Value = CFDictionaryGetValue(theDict, @"DeviceMap");
      v8 = Value;
      if (Value)
      {
        CFRetain(Value);
      }

      CFRelease(v10);
    }
  }

  return v8;
}

uint64_t sub_10001B914(const __CFArray *a1, _DWORD *a2, char *a3)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v7 = Count;
  v8 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
    *a3 = 0u;
    *(a3 + 1) = 0u;
    *(a3 + 2) = 0u;
    *(a3 + 3) = 0u;
    *(a3 + 4) = 0u;
    *(a3 + 5) = 0u;
    *(a3 + 6) = 0u;
    *(a3 + 14) = 0;
    *(a3 + 23) = 1;
    Value = CFDictionaryGetValue(ValueAtIndex, @"DeviceReleaseNumber");
    if (Value)
    {
      valuePtr = 0;
      CFNumberGetValue(Value, kCFNumberSInt16Type, &valuePtr);
      v11 = valuePtr;
      *a3 = 35072;
      *(a3 + 2) = v11;
      v12 = v11 >> 8;
      v13 = &word_1000860CA;
      v14 = 6;
      while (*(v13 - 1) != v12)
      {
        v13 += 2;
        if (!--v14)
        {
          v15 = 0xFFFF;
          goto LABEL_17;
        }
      }

      v15 = *v13;
LABEL_17:
      *(a3 + 1) = v15;
    }

    else
    {
      v16 = CFDictionaryGetValue(ValueAtIndex, @"CPID");
      if (v16)
      {
        CFNumberGetValue(v16, kCFNumberSInt32Type, a3);
      }

      v17 = CFDictionaryGetValue(ValueAtIndex, @"BDID");
      if (v17)
      {
        CFNumberGetValue(v17, kCFNumberSInt32Type, a3 + 4);
      }

      v18 = CFDictionaryGetValue(ValueAtIndex, @"SDOM");
      if (v18)
      {
        CFNumberGetValue(v18, kCFNumberSInt32Type, a3 + 92);
      }

      v19 = CFDictionaryGetValue(ValueAtIndex, @"SCEP");
      if (v19)
      {
        CFNumberGetValue(v19, kCFNumberSInt32Type, a3 + 8);
      }
    }

    if (*a3 == *a2 && *(a3 + 1) == a2[1] && *(a3 + 23) == a2[23])
    {
      break;
    }

    if (++v8 == v7)
    {
      return 0;
    }
  }

  v21 = CFDictionaryGetValue(ValueAtIndex, @"BoardConfig");
  if (v21)
  {
    CFStringGetCString(v21, a3 + 120, 32, 0x8000100u);
  }

  else
  {
    a3[120] = 0;
  }

  v22 = CFDictionaryGetValue(ValueAtIndex, @"Platform");
  if (v22)
  {
    CFStringGetCString(v22, a3 + 152, 32, 0x8000100u);
  }

  else
  {
    a3[152] = 0;
  }

  return 1;
}

uint64_t _AMRestoreGetDeviceMapEntryForHardware(const __CFDictionary *a1, _DWORD *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  if (AMRestoreOptionsAreLegacy(a1, a2, a3, a4, a5, a6, a7, a8))
  {

    return _legacy_AMRestoreGetDeviceMapEntryForHardware(a1, a2, a3);
  }

  if (AMRAuthInstallCopyPathToFirmware(a1, &cf))
  {
    AMRLog(3, @"Failed to get path to Firmware directory", v12, v13, v14, v15, v16, v17, v29);
  }

  else
  {
    if (sub_10001B464(cf, a2, a3) || (Value = CFDictionaryGetValue(a1, @"RestoreBundlePath")) != 0 && (v26 = sub_10001B868(Value)) != 0 && (v27 = v26, v28 = sub_10001B914(v26, a2, a3), CFRelease(v27), v28))
    {
      v18 = 1;
      goto LABEL_10;
    }

    v30 = a2[1];
    v31 = a2[23];
    AMRLog(4, @"unable to find device map entry for 0x%08x 0x%08x 0x%08x", v20, v21, v22, v23, v24, v25, *a2);
  }

  v18 = 0;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  return v18;
}

uint64_t AMRestoreOptionsAreLegacy(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"IsLegacy");
    if (Value)
    {

      return CFBooleanGetValue(Value);
    }

    else
    {
      return !CFDictionaryGetValue(a1, @"AuthInstallRestoreBehavior") && CFDictionaryGetValue(a1, @"AuthInstallVariant") == 0;
    }
  }

  else
  {
    AMRLog(3, @"Can't check for legacy options on NULL dictionary", a3, a4, a5, a6, a7, a8, v11);
    return 1;
  }
}

const __CFString *AMRestoreGetTransformedDFUType(const __CFString *a1)
{
  if (CFStringCompare(a1, @"Production", 0) == kCFCompareEqualTo)
  {
    return @"RELEASE";
  }

  if (CFStringCompare(a1, @"Development", 0) == kCFCompareEqualTo)
  {
    return @"DEVELOPMENT";
  }

  if (CFStringCompare(a1, @"Debug", 0))
  {
    return a1;
  }

  return @"DEBUG";
}

const __CFString *AMRestoreGetTransformedFirmwareTypeValue(const __CFString *a1)
{
  if (CFStringCompare(a1, @"Production", 0) == kCFCompareEqualTo)
  {
    return @"production";
  }

  if (CFStringCompare(a1, @"Development", 0) == kCFCompareEqualTo)
  {
    return @"firmwaredevelopment";
  }

  if (CFStringCompare(a1, @"Factory - SA", 0) == kCFCompareEqualTo)
  {
    return @"factorysa";
  }

  if (CFStringCompare(a1, @"Factory - FA", 0) == kCFCompareEqualTo)
  {
    return @"factoryfa";
  }

  if (CFStringCompare(a1, @"Debug", 0))
  {
    return a1;
  }

  return @"debug";
}

uint64_t _AMRestoreCopyDeviceMapPlistEntryForHardware(const __CFDictionary *a1, int *a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2 && a3)
  {
    v66 = 0;
    memset(v65, 0, sizeof(v65));
    DeviceMapEntryForHardware = _AMRestoreGetDeviceMapEntryForHardware(a1, a2, v65, a4, a5, a6, a7, a8);
    v18 = *a2;
    v19 = a2[23];
    if (DeviceMapEntryForHardware)
    {
      v60 = a2[1];
      v62 = a2[23];
      AMRLog(7, @"found device map entry for 0x%08x 0x%08x 0x%08x. boardConfig=%s platform=%s", v12, v13, v14, v15, v16, v17, v18);
      v20 = CFStringCreateWithCString(kCFAllocatorDefault, &v65[7] + 8, 0x8000100u);
      if (v20)
      {
        v27 = v20;
        Value = CFDictionaryGetValue(a1, @"FirmwareDirectory");
        if (!Value)
        {
          AMRLog(4, @"%s: firmwareDirectory not in options", v29, v30, v31, v32, v33, v34, "_AMRestoreCopyDeviceMapPlistEntryForHardware");
          v57 = 0;
LABEL_23:
          CFRelease(v27);
          return v57;
        }

        theDict = 0;
        v59 = Value;
        v35 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%cdevice_map.plist");
        v42 = sub_10001C334(v35, &theDict, v36, v37, v38, v39, v40, v41);
        v48 = theDict;
        if (v42 || !theDict)
        {
          AMRLogWithFilePath(3, v35, @"device_map.plist file not found", v43, v44, v45, v46, v47, v59);
          v56 = 0;
          v57 = 0;
          if (!v48)
          {
LABEL_21:
            if (v35)
            {
              CFRelease(v35);
            }

            goto LABEL_23;
          }
        }

        else
        {
          v49 = CFDictionaryGetValue(theDict, v27);
          if (v49)
          {
            *a3 = CFRetain(v49);
            v56 = 1;
          }

          else
          {
            AMRLog(4, @"boardConfigDict is NULL", v50, v51, v52, v53, v54, v55, v59);
            v56 = 0;
          }
        }

        CFRelease(v48);
        v57 = v56;
        goto LABEL_21;
      }

      AMRLog(4, @"%s: unable to create c-string", v21, v22, v23, v24, v25, v26, "_AMRestoreCopyDeviceMapPlistEntryForHardware");
    }

    else
    {
      v61 = a2[1];
      v63 = a2[23];
      AMRLog(4, @"unable to find device map entry for 0x%08x 0x%08x 0x%08x", v12, v13, v14, v15, v16, v17, v18);
    }
  }

  else
  {
    AMRLog(4, @"%s: bad paramater", a3, a4, a5, a6, a7, a8, "_AMRestoreCopyDeviceMapPlistEntryForHardware");
  }

  return 0;
}

uint64_t AMRestoreDeviceIsBootstrapOnly(const __CFDictionary *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  theDict = 0;
  if (a1 && a2)
  {
    Value = CFDictionaryGetValue(a1, @"ApBootstrapOnly");
    if (!Value || (v16 = Value, v17 = CFGetTypeID(Value), v17 != CFBooleanGetTypeID()))
    {
      v16 = kCFBooleanFalse;
      v18 = _AMRestoreCopyDeviceMapPlistEntryForHardware(a1, a2, &theDict, v11, v12, v13, v14, v15);
      v19 = theDict;
      if (v18 && theDict)
      {
        v20 = CFDictionaryGetValue(theDict, @"ApBootstrapOnly");
        if (v20)
        {
          v16 = v20;
        }

        v19 = theDict;
      }

      if (v19)
      {
        CFRelease(v19);
      }
    }
  }

  else
  {
    v16 = kCFBooleanFalse;
    AMRLog(4, @"%s: bad paramater", a3, a4, a5, a6, a7, a8, "AMRestoreDeviceIsBootstrapOnly");
  }

  return CFBooleanGetValue(v16);
}

CFArrayRef _AMRestoreCopyManifestForNORImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v12 = @"Can't copy manifest since NOR image path is null";
LABEL_8:
    AMRLog(3, v12, a3, a4, a5, a6, a7, a8, v14);
    return 0;
  }

  data = 0;
  v14 = a1;
  v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%cmanifest");
  if (!v8)
  {
    v12 = @"Invalid manifest file path";
    goto LABEL_8;
  }

  v9 = v8;
  _AMRestoreCreateCFDataWithContentsOfFile(v8, &data, a3, a4, a5, a6, a7, a8);
  CFRelease(v9);
  if (!data)
  {
    return 0;
  }

  v10 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, data, 0x8000100u);
  CFRelease(data);
  if (!v10)
  {
    return 0;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, v10, @"\n");
  CFRelease(v10);
  return ArrayBySeparatingStrings;
}

uint64_t _AMRestoreCreateCFDataWithContentsOfFile(CFStringRef filePath, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (filePath)
  {
    if (CFURLCreateWithFileSystemPath(0, filePath, kCFURLPOSIXPathStyle, 0))
    {
      DataFromMappedFileURL = AMSupportPlatformCreateDataFromMappedFileURL();
      v15 = _AMRestoreErrorForAMSupportError(DataFromMappedFileURL, 0xBu, v9, v10, v11, v12, v13, v14);
      AMSupportSafeRelease();
      if (!v15)
      {
        return v15;
      }

      goto LABEL_8;
    }

    v22 = @"%s failed to convert file path to CFURL";
  }

  else
  {
    v22 = @"Can't create CFData from file path since path was null: %s";
  }

  AMRLog(3, v22, a3, a4, a5, a6, a7, a8, "_AMRestoreCreateCFDataWithContentsOfFile");
  AMSupportSafeRelease();
  v15 = 1;
LABEL_8:
  AMRLog(8, @"%s failed to load %@: %d", v16, v17, v18, v19, v20, v21, "_AMRestoreCreateCFDataWithContentsOfFile");
  return v15;
}

uint64_t sub_10001C334(const __CFString *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    data = 0;
    CFDataWithContentsOfFile = _AMRestoreCreateCFDataWithContentsOfFile(a1, &data, a3, a4, a5, a6, a7, a8);
    if (CFDataWithContentsOfFile)
    {
      v16 = CFDataWithContentsOfFile;
      AMRLogWithFilePath(3, a1, @"unable to create data from file: %d", v11, v12, v13, v14, v15, CFDataWithContentsOfFile);
    }

    else
    {
      error = 0;
      v17 = CFPropertyListCreateWithData(kCFAllocatorDefault, data, 0, 0, &error);
      *a2 = v17;
      if (v17)
      {
        v16 = 0;
      }

      else
      {
        v16 = 19;
      }

      if (error)
      {
        AMRLog(3, @"%s: CFPropertyListCreateFromXMLData: %@", v18, v19, v20, v21, v22, v23, "_AMRestoreCreateCFPropertyListWithContentsOfFile");
        CFRelease(error);
      }

      if (data)
      {
        CFRelease(data);
      }
    }
  }

  else
  {
    AMRLog(3, @"Can't load plist since file path is NULL", a3, a4, a5, a6, a7, a8, v25);
    return 1;
  }

  return v16;
}

char *_AMRestoreCopyDeviceInfo(uint64_t a1)
{
  if (!a1)
  {
    sub_10007656C();
  }

  v2 = malloc_type_calloc(1uLL, 0x78uLL, 0x10600409D570FDBuLL);
  *v2 = *a1;
  *(v2 + 2) = *(a1 + 8);
  *(v2 + 3) = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    *(v2 + 4) = CFRetain(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    *(v2 + 6) = CFRetain(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    *(v2 + 7) = CFRetain(v5);
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    *(v2 + 8) = CFRetain(v6);
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    *(v2 + 9) = CFRetain(v7);
  }

  v8 = *(a1 + 104);
  if (v8)
  {
    *(v2 + 13) = CFRetain(v8);
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    *(v2 + 2) = CFRetain(v9);
  }

  v10 = *(a1 + 112);
  if (v10)
  {
    *(v2 + 14) = CFRetain(v10);
  }

  *(v2 + 10) = *(a1 + 80);
  *(v2 + 11) = *(a1 + 88);
  v2[96] = *(a1 + 96);
  *(v2 + 97) = *(a1 + 97);
  v2[103] = *(a1 + 103);
  return v2;
}

void _AMRestoreDestroyDeviceInfo(void *a1)
{
  if (!a1)
  {
    sub_100076598();
  }

  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[8];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[9];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[13];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[2];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[14];
  if (v10)
  {

    CFRelease(v10);
  }
}

uint64_t copyKeyValuePairsFromIBootString(const __CFString *a1, __CFDictionary **a2)
{
  if (!a1)
  {
    result = 1;
LABEL_15:
    *a2 = 0;
    return result;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    result = 18;
    goto LABEL_15;
  }

  v5 = Mutable;
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, a1, @" ");
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  if (Count >= 1)
  {
    v8 = Count;
    for (i = 0; i != v8; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, i);
      if (CFStringGetLength(ValueAtIndex))
      {
        location = CFStringFind(ValueAtIndex, @":", 0).location;
        if (location == -1)
        {
          AMRLog(4, @"token '%@' has unexpected format", v12, v13, v14, v15, v16, v17, ValueAtIndex);
        }

        else
        {
          v18 = location;
          v22.location = 0;
          v22.length = location;
          v19 = CFStringCreateWithSubstring(kCFAllocatorDefault, ValueAtIndex, v22);
          ++v18;
          v23.length = CFStringGetLength(ValueAtIndex) - v18;
          v23.location = v18;
          v20 = CFStringCreateWithSubstring(kCFAllocatorDefault, ValueAtIndex, v23);
          CFDictionarySetValue(v5, v19, v20);
          CFRelease(v19);
          CFRelease(v20);
        }
      }
    }
  }

  *a2 = v5;
  if (ArrayBySeparatingStrings)
  {
    CFRelease(ArrayBySeparatingStrings);
  }

  return 0;
}

void loadDeviceInfo(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  *buffer = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *v11 = 0u;
  v12 = 0u;
  CFStringGetCString(a1, buffer, 256, 0x8000100u);
  CFStringGetCString(a2, v11, 256, 0x8000100u);
  if (parseKeyValueIntoDeviceInfo(buffer, v11, a3))
  {
    AMRLog(3, @"unable to parse '%s'->'%s'", v5, v6, v7, v8, v9, v10, buffer);
  }
}

uint64_t parseSerialNumberInfo(const __CFString *a1, uint64_t a2, char a3, int a4)
{
  theDict = 0;
  v6 = a3 & 3 ^ 2;
  if (!a4)
  {
    v6 = 1;
  }

  *(a2 + 88) = 448;
  *(a2 + 92) = v6;
  v7 = copyKeyValuePairsFromIBootString(a1, &theDict);
  v8 = theDict;
  if (!v7)
  {
    CFDictionaryApplyFunction(theDict, loadDeviceInfo, a2);
    if (!*(a2 + 112))
    {
      *(a2 + 112) = CFRetain(a1);
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v7;
}

uint64_t _AMRestorePIDStoresInfoInSerialNumber(int a1)
{
  result = 1;
  if (a1 <= 4736)
  {
    if ((a1 - 4646) < 4)
    {
      return result;
    }

    return 0;
  }

  if ((a1 - 61460) >= 2 && a1 != 4737 && a1 != 5770)
  {
    return 0;
  }

  return result;
}

uint64_t _AMRUSBDeviceGetFirmwareInfo(void *a1, uint64_t a2, int a3)
{
  *(a2 + 112) = 0;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  ProductID = _AMRUSBDeviceGetProductID(a1);
  v7 = ProductID;
  if (_AMRestorePIDStoresInfoInSerialNumber(ProductID))
  {
    v8 = _AMRUSBDeviceCopySerialNumber(a1);
    if (!v8)
    {
      AMRLog(3, @"unable to get device serial number", v9, v10, v11, v12, v13, v14, v29);
      return 0xFFFFFFFFLL;
    }

    v15 = v8;
    v16 = parseSerialNumberInfo(v8, a2, v7, a3);
    if (v16)
    {
      goto LABEL_14;
    }
  }

  else
  {
    DeviceReleaseNumber = _AMRUSBDeviceGetDeviceReleaseNumber(a1);
    *a2 = 35072;
    *(a2 + 8) = DeviceReleaseNumber;
    v18 = &word_1000860CA;
    v19 = 6;
    while (*(v18 - 1) != DeviceReleaseNumber >> 8)
    {
      v18 += 2;
      if (!--v19)
      {
        v20 = 0xFFFF;
        goto LABEL_11;
      }
    }

    v20 = *v18;
LABEL_11:
    v15 = 0;
    *(a2 + 4) = v20;
  }

  v21 = _AMRUSBDeviceCopyProductString(a1);
  *(a2 + 40) = v21;
  if (!v21)
  {
    AMRLog(3, @"unable to get device proudct string", v22, v23, v24, v25, v26, v27, v29);
    v16 = 0xFFFFFFFFLL;
    if (!v15)
    {
      return v16;
    }

    goto LABEL_14;
  }

  v16 = 0;
  if (v15)
  {
LABEL_14:
    CFRelease(v15);
  }

  return v16;
}

uint64_t _AMRUSBDeviceAddNonceWithInfo(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = 0;
  cf = 0;
  if (!a2)
  {
    v19 = @"device info must be provided to query nonce";
    goto LABEL_12;
  }

  v11 = (a2 + 64);
  v10 = *(a2 + 64);
  if (v10)
  {
    CFRelease(v10);
    *v11 = 0;
  }

  v13 = (a2 + 56);
  v12 = *(a2 + 56);
  if (v12)
  {
    CFRelease(v12);
    *v13 = 0;
  }

  if (_AMRUSBDeviceCopyNonceWithTag(a1, a2, @"NONC", &cf, a5, a6, a7, a8) || (v20 = cf, v21 = AMAuthInstallSupportCopyDataFromHexString(kCFAllocatorDefault, cf, (a2 + 56)), !v21))
  {
    if (!*(a2 + 103) || (*(a2 + 28) & 4) == 0 || _AMRUSBDeviceCopyNonceWithTag(a1, a2, @"SNON", &v37, v14, v15, v16, v17))
    {
      goto LABEL_10;
    }

    v27 = v37;
    if (v37)
    {
      v28 = AMAuthInstallSupportCopyDataFromHexString(kCFAllocatorDefault, v37, v11);
      if (v28)
      {
        v35 = v28;
        AMRLog(3, @"unparsable sep nonce: %@", v29, v30, v31, v32, v33, v34, v27);
        if (*v11)
        {
          CFRelease(*v11);
          *v11 = 0;
        }

        v25 = v35;
        goto LABEL_17;
      }

LABEL_10:
      v18 = 0;
      goto LABEL_18;
    }

    v19 = @"sep nonce is NULL";
LABEL_12:
    AMRLog(3, v19, a3, a4, a5, a6, a7, a8, v36);
    v18 = 1;
    goto LABEL_18;
  }

  v24 = v21;
  AMRLog(3, @"unparsable ap nonce: %@", v22, v23, v14, v15, v16, v17, v20);
  if (*v13)
  {
    CFRelease(*v13);
    *v13 = 0;
  }

  v25 = v24;
LABEL_17:
  v18 = AMAuthInstallToRestoreError(v25);
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  return v18;
}

uint64_t _AMRUSBDeviceCopyNonceWithTag(void *a1, uint64_t a2, const void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a4 = 0;
  if (a2)
  {
    if (*(a2 + 103))
    {
      v8 = (*(a2 + 28) & 6) == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      AMRLog(7, @"device software does not support nonce generation", a3, a4, a5, a6, a7, a8, v36);
      return 48;
    }

    else
    {
      memset(v39, 0, sizeof(v39));
      v12 = _AMRUSBDeviceSendDeviceRequest(a1, 1033, 1, 0, 0, 6, 769, 0x100u, v39);
      v9 = v12;
      if (!v12)
      {
        theDict = 0;
        if (BYTE1(v39[0]) == 3)
        {
          v19 = CFStringCreateWithBytes(kCFAllocatorDefault, v39 + 2, LOBYTE(v39[0]) - 2, 0x100u, 0);
          if (v19)
          {
            v26 = v19;
            v9 = copyKeyValuePairsFromIBootString(v19, &theDict);
            if (!v9)
            {
              v27 = theDict;
              Value = CFDictionaryGetValue(theDict, a3);
              *a4 = Value;
              if (Value)
              {
                CFRetain(Value);
                v9 = 0;
              }

              else
              {
                AMRLog(7, @"%@ tag not found", v29, v30, v31, v32, v33, v34, a3);
                v9 = 6;
              }

              CFRelease(v27);
            }

            CFRelease(v26);
          }

          else
          {
            AMRLog(3, @"nonce conversion failure", v20, v21, v22, v23, v24, v25, v37);
            return 31;
          }
        }

        else
        {
          AMRLog(3, @"nonce string descriptor has unexpected type %d", v13, v14, v15, v16, v17, v18, SBYTE1(v39[0]));
          return 59;
        }
      }
    }
  }

  else
  {
    AMRLog(3, @"device info must be provided to query nonce", a3, a4, a5, a6, a7, a8, v36);
    return 1;
  }

  return v9;
}

uint64_t _AMRUSBDeviceCopyNonce(void *a1, void *a2)
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  FirmwareInfo = _AMRUSBDeviceGetFirmwareInfo(a1, v15, 0);
  if (FirmwareInfo)
  {
    v11 = FirmwareInfo;
    v12 = @"unable to get firmware info from device";
    v13 = 3;
LABEL_5:
    AMRLog(v13, v12, v5, v6, v7, v8, v9, v10, v15[0]);
    return v11;
  }

  v11 = _AMRUSBDeviceCopyNonceWithTag(a1, v15, @"NONC", a2, v7, v8, v9, v10);
  if (v11)
  {
    v12 = @"Could not query ap nonce from device";
    v13 = 7;
    goto LABEL_5;
  }

  return v11;
}

uint64_t _AMRUSBDeviceCopySEPNonce(void *a1, void *a2)
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  FirmwareInfo = _AMRUSBDeviceGetFirmwareInfo(a1, v15, 0);
  if (FirmwareInfo)
  {
    v11 = FirmwareInfo;
    v12 = @"unable to get firmware info from device";
    v13 = 3;
LABEL_5:
    AMRLog(v13, v12, v5, v6, v7, v8, v9, v10, v15[0]);
    return v11;
  }

  v11 = _AMRUSBDeviceCopyNonceWithTag(a1, v15, @"SNON", a2, v7, v8, v9, v10);
  if (v11)
  {
    v12 = @"Could not query sep nonce from device";
    v13 = 7;
    goto LABEL_5;
  }

  return v11;
}

void AMRestoreCaptureSubsystemLogsIfNeeded()
{
  if ((byte_1000C8828 & 1) == 0)
  {
    byte_1000C8828 = 1;
    AMSupportLogSetHandler();

    AMAuthInstallLogSetHandler(_AMAuthInstallLogHandler);
  }
}

void sub_10001CFD8(uint64_t a1, char *cStr, CFTypeRef cf)
{
  if (dword_1000C8318 < a1)
  {
    return;
  }

  if (off_1000C8830)
  {
    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
    }

    v6 = v5;
    off_1000C8830(v5, a1);
    CFRelease(v6);
  }

  if (dword_1000C8310 == -1)
  {
    if (a1 == 7)
    {
      v21 = 6;
    }

    else
    {
      v21 = a1;
    }

    if (a1 <= 7)
    {
      v20 = v21;
    }

    else
    {
      v20 = 7;
    }

LABEL_26:
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    *__str = 0u;
    v31 = 0u;
    v22 = __strlcat_chk();
    if (dword_1000C8820 || v22 <= 0)
    {
      syslog(v20, "%s");
    }

    else
    {
      syslog(v20, "%s - %s");
    }

    return;
  }

  __s = cStr;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  *__str = 0u;
  v31 = 0u;
  Current = CFAbsoluteTimeGetCurrent();
  v8 = qword_1000C8840;
  if (!qword_1000C8840)
  {
    v8 = CFCalendarCopyCurrent();
    qword_1000C8840 = v8;
  }

  v27 = 0;
  v28 = 0;
  v26 = 0;
  CFCalendarDecomposeAbsoluteTime(v8, Current, "yMdHms", &v28 + 4, &v28, &v27 + 4, &v27, &v26 + 4, &v26);
  v9 = v28;
  v23 = HIDWORD(v28);
  v11 = v27;
  v10 = HIDWORD(v27);
  v12 = v26;
  v13 = HIDWORD(v26);
  v14 = modf(Current, &__y);
  v15 = getprogname();
  v16 = getpid();
  v29 = 0;
  pthread_threadid_np(0, &v29);
  v17 = snprintf(__str, 0x100uLL, "%04d-%02d-%02d %02d:%02d:%02d.%03d %s[%d:%llx]: ", v23, v9, v10, v11, v13, v12, v14, v15, v16, v29);
  if (v17)
  {
    write(dword_1000C8310, __str, v17);
  }

  v18 = strlen(__s);
  write(dword_1000C8310, __s, v18);
  write(dword_1000C8310, "\n", 1uLL);
  if (a1 == 7)
  {
    v19 = 6;
  }

  else
  {
    v19 = a1;
  }

  if (a1 <= 7)
  {
    v20 = v19;
  }

  else
  {
    v20 = 7;
  }

  if (dword_1000C8310 == -1)
  {
    goto LABEL_26;
  }
}

void AMRLogv(uint64_t a1, CFStringRef format, va_list arguments)
{
  if (dword_1000C8318 >= a1)
  {
    v4 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, format, arguments);
    if (v4)
    {
      v5 = v4;
      bzero(buffer, 0x400uLL);
      v6 = buffer;
      if (!CFStringGetCString(v5, buffer, 1024, 0x8000100u))
      {
        Length = CFStringGetLength(v5);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        v9 = malloc_type_malloc(MaximumSizeForEncoding, 0x100004077774924uLL);
        if (v9)
        {
          v6 = v9;
          CFStringGetCString(v5, v9, MaximumSizeForEncoding, 0x8000100u);
        }

        else
        {
          v6 = buffer;
        }
      }

      sub_10001CFD8(a1, v6, v5);
      CFRelease(v5);
      if (v6 != buffer)
      {
        free(v6);
      }
    }
  }
}