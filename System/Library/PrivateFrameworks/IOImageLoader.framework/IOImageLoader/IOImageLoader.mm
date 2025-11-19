const void *IOImageLoaderImageDictionary::getAttributes(IOImageLoaderImageDictionary *this, __CFDictionary *a2, const char *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0x8000100u);
  v6 = v5;
  if (this && v5)
  {
    Count = CFDictionaryGetCount(this);
    Value = 0;
    if (a2 && Count)
    {
      Value = CFDictionaryGetValue(this, v6);
    }
  }

  else
  {
    Value = 0;
    if (!v5)
    {
      return Value;
    }
  }

  CFRelease(v6);
  return Value;
}

const void *IOImageLoaderImageDictionary::getAttributes(IOImageLoaderImageDictionary *this, const __CFString *a2, const __CFString *a3)
{
  if (!this)
  {
    return 0;
  }

  Count = CFDictionaryGetCount(this);
  if (!a2 || !Count)
  {
    return 0;
  }

  CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);

  return IOImageLoaderImageDictionary::getAttributes(this, CStringPtr, v7);
}

const void *IOImageLoaderImageDictionary::getAttribute(IOImageLoaderImageDictionary *this, __CFDictionary *a2, const char *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0x8000100u);
  v6 = v5;
  if (this && v5)
  {
    Count = CFDictionaryGetCount(this);
    Value = 0;
    if (a2 && Count)
    {
      Value = CFDictionaryGetValue(this, v6);
    }
  }

  else
  {
    Value = 0;
    if (!v5)
    {
      return Value;
    }
  }

  CFRelease(v6);
  return Value;
}

const void *IOImageLoaderImageDictionary::getAttribute(IOImageLoaderImageDictionary *this, const __CFString *a2, const __CFString *a3)
{
  if (!this)
  {
    return 0;
  }

  Count = CFDictionaryGetCount(this);
  if (!a2 || !Count)
  {
    return 0;
  }

  CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);

  return IOImageLoaderImageDictionary::getAttribute(this, CStringPtr, v7);
}

uint64_t IOImageLoaderImageDictionary::setAttributeWithObject(IOImageLoaderImageDictionary *this, __CFDictionary *a2, const char *a3, void *a4)
{
  result = 0;
  if (this && a2 && a3)
  {
    result = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0x8000100u);
    if (result)
    {
      v7 = result;
      CFDictionarySetValue(this, result, a3);
      CFRelease(v7);
      return 1;
    }
  }

  return result;
}

uint64_t IOImageLoaderImageDictionary::setAttributeWithObject(IOImageLoaderImageDictionary *this, CFStringRef theString, const __CFString *a3, void *a4)
{
  if (!this || !theString || !a3)
  {
    return 0;
  }

  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);

  return IOImageLoaderImageDictionary::setAttributeWithObject(this, CStringPtr, a3, v7);
}

BOOL IOImageLoaderImageDictionary::setAttributeWithString(IOImageLoaderImageDictionary *this, __CFDictionary *a2, const char *a3, const char *a4)
{
  v4 = 0;
  if (this && a2 && a3)
  {
    v7 = *MEMORY[0x277CBECE8];
    v8 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0x8000100u);
    if (v8)
    {
      v9 = v8;
      v10 = CFStringCreateWithCString(v7, a3, 0x8000100u);
      v4 = v10 != 0;
      if (v10)
      {
        v11 = v10;
        CFDictionarySetValue(this, v9, v10);
        CFRelease(v9);
        v9 = v11;
      }

      CFRelease(v9);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

BOOL IOImageLoaderImageDictionary::setAttributeWithString(IOImageLoaderImageDictionary *this, CFStringRef theString, const __CFString *a3, const __CFString *a4)
{
  if (!this || !theString || !a3)
  {
    return 0;
  }

  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v7 = CFStringGetCStringPtr(a3, 0x8000100u);

  return IOImageLoaderImageDictionary::setAttributeWithString(this, CStringPtr, v7, v8);
}

uint64_t IOImageLoaderImageDictionary::setAttributeWithNumber(IOImageLoaderImageDictionary *this, __CFDictionary *a2, const char *a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CBECE8];
  v7 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0x8000100u);
  v17[0] = a3;
  v8 = CFNumberCreate(v6, kCFNumberLongLongType, v17);
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v12 = v10 || this == 0 || a2 == 0;
  v13 = v12;
  if (v12)
  {
    if (!v8)
    {
      v14 = 0;
      if (!v7)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else
  {
    CFDictionarySetValue(this, v7, v8);
  }

  v14 = v13 ^ 1u;
  CFRelease(v9);
  if (v7)
  {
LABEL_16:
    CFRelease(v7);
  }

LABEL_17:
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t IOImageLoaderImageDictionary::setAttributeWithNumber(IOImageLoaderImageDictionary *this, const __CFString *a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr[1] = *MEMORY[0x277D85DE8];
  valuePtr[0] = 0;
  printf("DEBUG: %s:%d\n", "setAttributeWithNumber", 258);
  result = 0;
  if (this)
  {
    if (a2)
    {
      if (a3)
      {
        result = CFNumberGetValue(a3, kCFNumberLongLongType, valuePtr);
        if (result)
        {
          CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
          result = IOImageLoaderImageDictionary::setAttributeWithNumber(this, CStringPtr, valuePtr[0]);
        }
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IOImageLoaderImageDictionary::setAttributeWithNumber(IOImageLoaderImageDictionary *this, const __CFString *a2, const __CFString *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = a3;
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongLongType, v11);
  v6 = v5;
  if (this && a2 && v5)
  {
    CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
    v8 = IOImageLoaderImageDictionary::setAttributeWithNumber(this, CStringPtr, v11[0]);
  }

  else
  {
    v8 = 0;
    result = 0;
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  CFRelease(v6);
  result = v8;
LABEL_6:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IOImageLoaderImageDictionary::setAttributeWithNumber(IOImageLoaderImageDictionary *this, __CFDictionary *a2, CFNumberRef number, const __CFNumber *a4)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  if (number)
  {
    result = CFNumberGetValue(number, kCFNumberLongLongType, v8);
    if (result)
    {
      result = IOImageLoaderImageDictionary::setAttributeWithNumber(this, a2, v8[0]);
    }
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}