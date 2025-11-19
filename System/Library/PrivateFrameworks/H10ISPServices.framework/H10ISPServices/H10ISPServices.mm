void H10ISP::H10ISPAppendNamedValuesToCFString(__CFString *this, __CFString *a2, const __CFArray *a3, const __CFArray *a4)
{
  v24 = a2;
  v27 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a3);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
      v8 = Name(ValueAtIndex);
      v9 = Value(ValueAtIndex);
      v10 = List(ValueAtIndex);
      if (v8)
      {
        v11 = CFStringGetCString(v8, buffer, 256, 0x8000100u) != 0;
        if (v9)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v11 = 0;
        if (v9)
        {
LABEL_5:
          if (CFStringGetCString(v9, v25, 256, 0x8000100u))
          {
            v12 = v25;
          }

          else
          {
            v12 = "";
          }

          goto LABEL_10;
        }
      }

      v12 = "";
LABEL_10:
      if (v11)
      {
        v13 = buffer;
      }

      else
      {
        v13 = "";
      }

      v14 = v24;
      if (v24 >= 1)
      {
        do
        {
          CFStringAppendCString(this, "    ", 0x8000100u);
          --v14;
        }

        while (v14);
      }

      if (v10)
      {
        if (a4)
        {
          CFStringAppendCString(this, "<name>", 0x8000100u);
          CFStringAppendCString(this, v13, 0x8000100u);
          CFStringAppendCString(this, "</name>", 0x8000100u);
          v13 = "<value>";
        }

        CFStringAppendCString(this, v13, 0x8000100u);
        CFStringAppendCString(this, "\n", 0x8000100u);
        H10ISP::H10ISPAppendNamedValuesToCFString(this, (v24 + 1), v10, a4, v15);
        if (!v24)
        {
          CFStringAppendCString(this, "\n", 0x8000100u);
        }

        v16 = "</value>\n";
        if ((a4 & 1) == 0)
        {
          continue;
        }

        goto LABEL_34;
      }

      if (v8)
      {
        Length = CFStringGetLength(v8);
        if (Length <= 38)
        {
          v18 = 38 - Length;
        }

        else
        {
          v18 = 0;
        }

        if (!a4)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v18 = 38;
        if (!a4)
        {
          goto LABEL_28;
        }
      }

      CFStringAppendCString(this, "<name>", 0x8000100u);
      CFStringAppendCString(this, v13, 0x8000100u);
      v13 = "</name>";
LABEL_28:
      CFStringAppendCString(this, v13, 0x8000100u);
      if (v18 >= 1)
      {
        do
        {
          CFStringAppendCString(this, " ", 0x8000100u);
          --v18;
        }

        while (v18);
      }

      CFStringAppendCString(this, "\t", 0x8000100u);
      v19 = this;
      if (a4)
      {
        CFStringAppendCString(this, "<value>", 0x8000100u);
        CFStringAppendCString(this, v12, 0x8000100u);
        v19 = this;
        v20 = "</value>";
      }

      else
      {
        v20 = v12;
      }

      CFStringAppendCString(v19, v20, 0x8000100u);
      v16 = "\n";
LABEL_34:
      CFStringAppendCString(this, v16, 0x8000100u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

__CFString *H10ISP::H10ISPCreateFrameMetaDataAsCFString(uint64_t a1, const __CFArray *a2)
{
  Mutable = CFStringCreateMutable(0, 0);
  if (!Mutable)
  {
    return @"Apple H10 MetaData\n";
  }

  v5 = Mutable;
  CFStringAppendCString(Mutable, "Apple H10 Metadata\n", 0x8000100u);
  if (!a1)
  {
    v8 = "No additional frame metadata.\n";
LABEL_8:
    CFStringAppendCString(v5, v8, 0x8000100u);
    return v5;
  }

  FormatedMetadata = H10ISP::CreateFormatedMetadata(a1);
  if (!FormatedMetadata)
  {
    v8 = "Frame metadata could not be formatted.\n";
    goto LABEL_8;
  }

  v7 = FormatedMetadata;
  H10ISP::H10ISPAppendNamedValuesToCFString(v5, 0, FormatedMetadata, a2);
  CFRelease(v7);
  return v5;
}

__CFDictionary *H10ISP::H10ISPCreateFrameMetaDataAsCFDictionary(uint64_t a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  FormatedMetadata = H10ISP::CreateFormatedMetadata(a1);
  if (FormatedMetadata)
  {
    v5 = FormatedMetadata;
    Count = CFArrayGetCount(FormatedMetadata);
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      v9 = MEMORY[0x277CBF138];
      v10 = MEMORY[0x277CBF150];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
        v12 = List(ValueAtIndex);
        if (v12)
        {
          v13 = v12;
          v14 = CFDictionaryCreateMutable(v2, 0, v9, v10);
          H10ISP::AddMetadataToDictionary(v14, v13, v15);
          v16 = Name(ValueAtIndex);
          CFDictionaryAddValue(Mutable, v16, v14);
          CFRelease(v14);
        }

        else
        {
          v17 = Name(ValueAtIndex);
          v18 = Value(ValueAtIndex);
          CFDictionaryAddValue(Mutable, v17, v18);
        }

        ++v8;
      }

      while (v7 != v8);
    }
  }

  return Mutable;
}

const __CFArray *H10ISP::AddMetadataToDictionary(H10ISP *this, __CFDictionary *a2, __CFArray *a3)
{
  result = CountNamedValues(a2);
  if (result >= 1)
  {
    v6 = 0;
    v7 = *MEMORY[0x277CBECE8];
    v8 = MEMORY[0x277CBF138];
    v9 = MEMORY[0x277CBF150];
    do
    {
      NamedValue = GetNamedValue(a2, v6);
      v11 = List(NamedValue);
      if (v11)
      {
        v12 = v11;
        Mutable = CFDictionaryCreateMutable(v7, 0, v8, v9);
        H10ISP::AddMetadataToDictionary(Mutable, v12, v14);
        v15 = Name(NamedValue);
        CFDictionaryAddValue(this, v15, Mutable);
        CFRelease(Mutable);
      }

      else
      {
        v16 = Name(NamedValue);
        v17 = Value(NamedValue);
        CFDictionaryAddValue(this, v16, v17);
      }

      ++v6;
      result = CountNamedValues(a2);
    }

    while (v6 < result);
  }

  return result;
}

void OUTLINED_FUNCTION_1(void *value)
{

  CFArrayAppendValue(v1, value);
}

uint64_t OUTLINED_FUNCTION_2(int a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *value)
{

  return CFDictionaryGetValueIfPresent(v15, a2, &value);
}

void OUTLINED_FUNCTION_3(int a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *value)
{

  CFDictionaryAddValue(v15, a2, value);
}

uint64_t OUTLINED_FUNCTION_6(const __CFNumber *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char valuePtr)
{

  return CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
}

CFNumberRef OUTLINED_FUNCTION_7(uint64_t a1, uint64_t a2, const void *a3)
{

  return CFNumberCreate(v3, kCFNumberShortType, a3);
}

CFDictionaryRef CreateNamedValue(const char *cStr, const char *a2, __CFArray *a3)
{
  keys[3] = *MEMORY[0x277D85DE8];
  memset(keys, 0, 24);
  values = 0;
  cf = 0;
  v13 = 0;
  v10 = 0;
  v5 = MEMORY[0x277CBECE8];
  if (cStr)
  {
    keys[0] = @"Name";
    values = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
    v6 = 1;
    LOBYTE(v10) = 1;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  if (a2)
  {
LABEL_3:
    keys[v6] = @"Value";
    *(&values + v6) = CFStringCreateWithCString(*v5, a2, 0x8000100u);
    *(&v10 | v6++) = 1;
  }

LABEL_4:
  if (a3)
  {
    keys[v6] = @"List";
    *(&values + v6++) = a3;
  }

  else if (!v6)
  {
    v7 = 0;
    goto LABEL_14;
  }

  v7 = CFDictionaryCreate(*v5, keys, &values, v6, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v10 == 1)
  {
    CFRelease(values);
  }

  if (HIBYTE(v10) == 1)
  {
    CFRelease(cf);
  }

LABEL_14:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void ReleaseNamedValue(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

const __CFDictionary *Name(const __CFDictionary *result)
{
  value = 0;
  if (result)
  {
    CFDictionaryGetValueIfPresent(result, @"Name", &value);
    return value;
  }

  return result;
}

const __CFDictionary *Value(const __CFDictionary *result)
{
  value = 0;
  if (result)
  {
    CFDictionaryGetValueIfPresent(result, @"Value", &value);
    return value;
  }

  return result;
}

const __CFDictionary *List(const __CFDictionary *result)
{
  value = 0;
  if (result)
  {
    CFDictionaryGetValueIfPresent(result, @"List", &value);
    return value;
  }

  return result;
}

void ReleaseNamedValues(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void ClearNamedValues(CFMutableArrayRef theArray)
{
  if (theArray)
  {
    CFArrayRemoveAllValues(theArray);
  }
}

void AppendNamedValue(CFMutableArrayRef theArray, const void *value)
{
  if (theArray)
  {
    CFArrayAppendValue(theArray, value);
  }
}

const __CFArray *CountNamedValues(const __CFArray *theArray)
{
  if (theArray)
  {
    return CFArrayGetCount(theArray);
  }

  return theArray;
}

const __CFArray *GetNamedValue(const __CFArray *result, int a2)
{
  if (result)
  {
    return CFArrayGetValueAtIndex(result, a2);
  }

  return result;
}

void NamedValue::NamedValue(NamedValue *this)
{
  *this = 0;
}

{
  *this = 0;
}

void NamedValue::NamedValue(NamedValue *this, const char *a2, const char *a3, __CFArray *a4)
{
  *this = 0;
  NamedValue::Set(this, a2, a3, a4);
}

{
  *this = 0;
  NamedValue::Set(this, a2, a3, a4);
}

CFDictionaryRef NamedValue::Set(const void **this, const char *cStr, const char *a3, __CFArray *a4)
{
  v8 = *this;
  if (v8)
  {
    CFRelease(v8);
  }

  result = CreateNamedValue(cStr, a3, a4);
  *this = result;
  return result;
}

void NamedValue::~NamedValue(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void NamedValue::Name(Name *this)
{
  v1 = *this;
  value = 0;
  if (v1)
  {
    CFDictionaryGetValueIfPresent(v1, @"Name", &value);
  }
}

const __CFDictionary *NamedValue::Value(const __CFDictionary **this)
{
  result = *this;
  value = 0;
  if (result)
  {
    CFDictionaryGetValueIfPresent(result, @"Value", &value);
    return value;
  }

  return result;
}

const __CFDictionary *NamedValue::List(const __CFDictionary **this)
{
  result = *this;
  value = 0;
  if (result)
  {
    CFDictionaryGetValueIfPresent(result, @"List", &value);
    return value;
  }

  return result;
}

void NamedValues::NamedValues(NamedValues *this)
{
  *this = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
}

{
  *this = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
}

void NamedValues::~NamedValues(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void NamedValues::push_back(__CFArray **this, const void **a2)
{
  v2 = *this;
  if (v2)
  {
    CFArrayAppendValue(v2, *a2);
  }
}

const __CFArray *NamedValues::size(const __CFArray **this)
{
  result = *this;
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

void NamedValues::clear(__CFArray **this)
{
  v1 = *this;
  if (v1)
  {
    CFArrayRemoveAllValues(v1);
  }
}

H10ISP::H10ISPThreadReadySyncer *H10ISP::H10ISPThreadReadySyncer::H10ISPThreadReadySyncer(H10ISP::H10ISPThreadReadySyncer *this)
{
  pthread_mutex_init(this, 0);
  pthread_cond_init((this + 64), 0);
  pthread_mutex_lock(this);
  return this;
}

uint64_t H10ISP::H10ISPThreadReadySyncer::signalAndUnlock(H10ISP::H10ISPThreadReadySyncer *this)
{
  pthread_cond_signal((this + 64));

  return pthread_mutex_unlock(this);
}

CFTypeRef H10ISP::CreateFormatedMetadata(uint64_t a1)
{
  v99[112] = *MEMORY[0x277D85DE8];
  if (*a1 == 3393)
  {
    NamedValues::NamedValues(&cf);
    NamedValues::NamedValues(&v84);
    *__str = 20;
    v3 = *(a1 + 16);
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = *(MEMORY[0x277D82818] + 64);
      v81 = v5;
      v82 = *MEMORY[0x277D82818];
      v80 = *(MEMORY[0x277D82818] + 72);
      while (1)
      {
        v6 = *(a1 + 20 + 4 * v4);
        if (v6)
        {
          break;
        }

LABEL_154:
        if (++v4 == v3)
        {
          goto LABEL_155;
        }
      }

      NamedValues::NamedValues(&v83);
      v8 = (a1 + v6);
      v9 = "Shared AiCam";
      switch(v4)
      {
        case 0:
          *__str = "unknown";
          v10 = *(v8 + 4);
          if (v10 > 1)
          {
            if (v10 == 2)
            {
              v11 = "blue";
            }

            else
            {
              if (v10 != 3)
              {
                goto LABEL_111;
              }

              v11 = "green-blue";
            }
          }

          else if (v10)
          {
            if (v10 != 1)
            {
              goto LABEL_111;
            }

            v11 = "red";
          }

          else
          {
            v11 = "green-red";
          }

          *__str = v11;
LABEL_111:
          __p[0] = "unknown";
          v65 = v8[14];
          if (v65 == 2)
          {
            v66 = "binning 1/4";
          }

          else if (v65 == 1)
          {
            v66 = "binning 1/2";
          }

          else
          {
            if (v8[14])
            {
              goto LABEL_118;
            }

            v66 = "binning disabled";
          }

          __p[0] = v66;
LABEL_118:
          *v91 = "unknown";
          v67 = v8[15];
          if (v67 == 2)
          {
            v68 = "binning 1/4";
          }

          else if (v67 == 1)
          {
            v68 = "binning 1/2";
          }

          else
          {
            if (v8[15])
            {
              goto LABEL_125;
            }

            v68 = "binning disabled";
          }

          *v91 = v68;
LABEL_125:
          *v90 = "unknown";
          v69 = v8[34];
          if (v69 > 1)
          {
            if (v69 == 2)
            {
              v70 = "raw12";
            }

            else
            {
              if (v69 != 3)
              {
                goto LABEL_135;
              }

              v70 = "raw14";
            }
          }

          else if (v8[34])
          {
            if (v69 != 1)
            {
              goto LABEL_135;
            }

            v70 = "raw10";
          }

          else
          {
            v70 = "raw8";
          }

          *v90 = v70;
LABEL_135:
          *v89 = "unknown";
          if (v8[35] == 1)
          {
            v71 = "unpacked";
          }

          else
          {
            if (v8[35])
            {
LABEL_140:
              *&v88 = 760;
              LODWORD(v88) = *(v8 + 43);
              LODWORD(v88) = *(v8 + 44);
              LODWORD(v88) = *(v8 + 45);
              LODWORD(v88) = *(v8 + 46);
              LODWORD(v88) = *(v8 + 47);
              v88 = vcvtd_n_f64_u32(*(v8 + 12), 8uLL);
              v88 = vcvtd_n_f64_u32(v8[32], 8uLL);
              LODWORD(v88) = *(v8 + 72);
              LODWORD(v88) = *(v8 + 73);
              v88 = COERCE_DOUBLE(bswap64(*(v8 + 37)));
              *&v88 = v8 + 48;
              *&v88 = v8 + 64;
              *&v88 = v8 + 80;
              *&v88 = v8 + 96;
              v72 = *(v8 + 80);
              v73 = *(v8 + 81);
              v87 = bswap32(v73);
              LODWORD(v88) = bswap32(v72);
              v86 = v72;
              v86 = BYTE1(v72);
              v86 = BYTE2(v72);
              v86 = HIBYTE(v72) & 0xF;
              v86 = v72 >> 28;
              v86 = HIBYTE(v73);
              v86 = BYTE2(v73);
              v86 = BYTE1(v73);
              v86 = v73;
              v86 = v8[168];
              v86 = *(v8 + 338);
              v86 = *(v8 + 339);
              v86 = *(v8 + 460);
              v86 = *(v8 + 461);
              v86 = v8[229];
              v86 = v8[246];
              v86 = v8[247];
              v86 = v8[248];
              v86 = v8[249];
              v86 = *(v8 + 500);
              v86 = *(v8 + 501);
              v86 = v8[254];
              v86 = v8[255];
              v86 = v8[256];
              v86 = v8[257];
              v86 = *(v8 + 129);
              v86 = *(v8 + 130);
              v86 = *(v8 + 131);
              v86 = *(v8 + 132);
              v86 = *(v8 + 133);
              v86 = *(v8 + 134);
              v86 = *(v8 + 135);
              v86 = v8[272];
              v86 = v8[273];
              v86 = v8[282];
              v86 = v8[283];
              v86 = v8[284];
              v86 = v8[285];
              v86 = v8[286];
              v86 = v8[287];
              v86 = v8[288];
              v86 = v8[289];
              v86 = *(v8 + 145);
              v86 = *(v8 + 146);
              v86 = v8[294];
              v86 = *(v8 + 148);
              v86 = *(v8 + 149);
              v86 = *(v8 + 150);
              v86 = *(v8 + 604);
              v86 = *(v8 + 605);
              v86 = *(v8 + 152);
              v86 = *(v8 + 153);
              v86 = *(v8 + 154);
              v86 = v8[312];
              v86 = v8[313];
              v86 = v8[314];
              v86 = v8[315];
              v86 = *(v8 + 155);
              v86 = *(v8 + 632);
              v86 = v8[317];
              v86 = *(v8 + 159);
              v86 = *(v8 + 162);
              v86 = v8[326];
              v86 = v8[327];
              v86 = v8[328];
              v86 = v8[329];
              v86 = *(v8 + 660);
              v86 = *(v8 + 661);
              v86 = *(v8 + 167);
              v86 = *(v8 + 168);
              v86 = v8[338];
              v86 = v8[339];
              v86 = v8[340];
              v86 = v8[341];
              v86 = *(v8 + 173);
              v86 = v8[348];
              v86 = v8[349];
              v86 = v8[350];
              v86 = v8[351];
              v86 = v8[352];
              v86 = v8[353];
              v86 = v8[354];
              v86 = v8[355];
              v86 = v8[356];
              v86 = v8[357];
              v86 = v8[358];
              v86 = v8[359];
              v86 = v8[360];
              v86 = v8[361];
              v86 = v8[362];
              v86 = v8[363];
              v86 = v8[364];
              v86 = v8[365];
              v86 = v8[366];
              v86 = v8[367];
              v86 = v8[368];
              v86 = v8[369];
              v86 = v8[370];
              v86 = v8[371];
              v86 = v8[372];
              v86 = v8[373];
              v86 = *(v8 + 748);
              v86 = *(v8 + 749);
              v86 = *(v8 + 750);
              v86 = v8[377];
              v9 = "Shared Input";
              goto LABEL_152;
            }

            v71 = "packed";
          }

          *v89 = v71;
          goto LABEL_140;
        case 1:
          v28 = "unknown";
          *__str = "unknown";
          v29 = *v8;
          if (v29 == 2)
          {
            v30 = "R'G'B'";
          }

          else if (v29 == 1)
          {
            v30 = "Y'CbCr 4:2:2";
          }

          else
          {
            if (*v8)
            {
              goto LABEL_100;
            }

            v30 = "Y'CbCr 4:2:0";
          }

          *__str = v30;
LABEL_100:
          __p[0] = "unknown";
          v63 = v8[1];
          if (v63 <= 1)
          {
            if (v8[1])
            {
              if (v63 != 1)
              {
                goto LABEL_145;
              }

              v64 = "StatsBlock";
            }

            else
            {
              v64 = "BackEnd";
            }
          }

          else
          {
            switch(v63)
            {
              case 2u:
                v64 = "RawProcBlock";
                break;
              case 3u:
                v64 = "RGBProcBlock";
                break;
              case 4u:
                v64 = "YCCProcBlock";
                break;
              default:
                goto LABEL_145;
            }
          }

          __p[0] = v64;
LABEL_145:
          v74 = "RGBY";
          if (!*(v8 + 9))
          {
            v74 = "RGGB";
          }

          *v91 = v74;
          v75 = *(v8 + 1028);
          if (v75 == 1)
          {
            v28 = "log2";
          }

          else if (!v75)
          {
            v28 = "linear";
          }

          *v90 = v28;
          *v89 = 4280;
          NamedValues::NamedValues(v89);
          v88 = vcvtd_n_f64_u32(*(v8 + 1027), 4uLL);
          LODWORD(v88) = *(v8 + 4138);
          LODWORD(v88) = *(v8 + 4139);
          LODWORD(v88) = *(v8 + 1035);
          LODWORD(v88) = *(v8 + 1036);
          LODWORD(v88) = *(v8 + 1037);
          LODWORD(v88) = *(v8 + 1038);
          LODWORD(v88) = *(v8 + 1039);
          LODWORD(v88) = *(v8 + 1040);
          LODWORD(v88) = *(v8 + 1041);
          LODWORD(v88) = *(v8 + 1042);
          LODWORD(v88) = *(v8 + 1043);
          LODWORD(v88) = *(v8 + 1044);
          LODWORD(v88) = *(v8 + 1045);
          LODWORD(v88) = *(v8 + 1046);
          LODWORD(v88) = *(v8 + 4188);
          NamedValues::~NamedValues(v89);
          v9 = "Shared Output";
LABEL_152:
LABEL_153:
          NamedValues::~NamedValues(&v83);
          goto LABEL_154;
        case 2:
          *__str = 5264;
          *__str = vcvtd_n_f64_u32(v8[2], 8uLL);
          *__str = vcvtd_n_f64_u32(*(v8 + 1313), 8uLL);
          *__str = vcvtd_n_f64_u32(v8[4], 8uLL);
          *__str = v8[5];
          *__str = *(v8 + 13);
          *__str = vcvtd_n_f64_u32(*(v8 + 5), 0x10uLL);
          NamedValues::NamedValues(v90);
          NamedValues::NamedValues(v89);
          v31 = 0;
          v32 = v8 + 30;
          do
          {
            snprintf(__p, 0x40uLL, "row[%d]", v31);
            v33 = 0;
            strcpy(__str, "{");
            v34 = 1;
            do
            {
              v35 = snprintf(&__str[v34], (1024 - v34), "%3d ", *(v32 + v33));
              v34 += v35;
              if (v35 <= 0)
              {
                v36 = 1024;
              }

              else
              {
                v36 = v34;
              }

              if (v33 > 0xE)
              {
                break;
              }

              ++v33;
            }

            while (v36 < 1024);
            if (v36 <= 1023)
            {
              snprintf(&__str[v36], (1024 - v36), "}");
            }

            NamedValue::NamedValue(v91, __p, __str, 0);
            NamedValues::push_back(v89, v91);
            NamedValue::~NamedValue(v91);
            ++v31;
            v32 += 8;
          }

          while (v31 != 32);
          *__str = *(v8 + 1732);
          *__str = *(v8 + 434);
          *__str = v8[870];
          *__str = v8[871];
          *__str = v8[872];
          *__str = *(v8 + 437);
          *__str = *(v8 + 438);
          *__str = *(v8 + 439);
          *__str = *(v8 + 440);
          *__str = *(v8 + 441);
          *__str = *(v8 + 442);
          *__str = *(v8 + 443);
          *__str = *(v8 + 444);
          *__str = *(v8 + 445);
          *__str = *(v8 + 446);
          *__str = *(v8 + 447);
          *__str = *(v8 + 448);
          *__str = *(v8 + 449);
          *__str = *(v8 + 450);
          *__str = *(v8 + 451);
          *__str = *(v8 + 452);
          *__str = *(v8 + 453);
          *__str = *(v8 + 454);
          *__str = *(v8 + 455);
          *__str = *(v8 + 456);
          *__str = *(v8 + 457);
          *__str = *(v8 + 458);
          *__str = *(v8 + 459);
          *__str = *(v8 + 460);
          *__str = *(v8 + 461);
          *__str = *(v8 + 462);
          *__str = *(v8 + 463);
          *__str = *(v8 + 464);
          *__str = *(v8 + 465);
          *__str = *(v8 + 466);
          *__str = *(v8 + 467);
          *__str = *(v8 + 468);
          *__str = *(v8 + 469);
          *__str = *(v8 + 470);
          *__str = *(v8 + 471);
          *__str = *(v8 + 472);
          *__str = *(v8 + 473);
          *__str = *(v8 + 474);
          *__str = *(v8 + 475);
          *__str = *(v8 + 476);
          *__str = *(v8 + 477);
          *__str = *(v8 + 478);
          *__str = *(v8 + 479);
          *__str = *(v8 + 480);
          *__str = *(v8 + 481);
          *__str = *(v8 + 482);
          *__str = *(v8 + 483);
          *__str = *(v8 + 484);
          *__str = *(v8 + 485);
          *__str = *(v8 + 486);
          *__str = *(v8 + 487);
          *__str = *(v8 + 488);
          *__str = *(v8 + 489);
          *__str = *(v8 + 490);
          *__str = *(v8 + 491);
          *__str = *(v8 + 492);
          *__str = *(v8 + 493);
          *__str = v8[988];
          *__str = v8[989];
          *__str = v8[990];
          *__str = v8[991];
          *__str = v8[992];
          *__str = *(v8 + 497);
          NamedValues::NamedValues(__str);
          *v91 = *(v8 + 592);
          *v91 = *(v8 + 593);
          NamedValues::NamedValues(v91);
          LODWORD(v88) = *(v8 + 405);
          LODWORD(v88) = *(v8 + 406);
          LODWORD(v88) = *(v8 + 407);
          LODWORD(v88) = *(v8 + 408);
          LODWORD(v88) = *(v8 + 409);
          LODWORD(v88) = *(v8 + 410);
          LODWORD(v88) = *(v8 + 411);
          LODWORD(v88) = *(v8 + 412);
          LODWORD(v88) = *(v8 + 413);
          LODWORD(v88) = *(v8 + 414);
          LODWORD(v88) = *(v8 + 415);
          LODWORD(v88) = *(v8 + 416);
          NamedValues::~NamedValues(v91);
          NamedValues::~NamedValues(__str);
          NamedValues::~NamedValues(v89);
          NamedValues::~NamedValues(v90);
          v9 = "Shared Auto Exposure";
          goto LABEL_152;
        case 3:
          *__str = 3652;
          NamedValues::NamedValues(v90);
          *__str = v8[80];
          *__str = v8[81];
          *__str = v8[82];
          *__str = v8[83];
          *__str = v8[1292];
          *__str = v8[1293];
          *__str = *(v8 + 2716);
          *__str = v8[1360];
          *__str = v8[1361];
          *__str = *(v8 + 682);
          *__str = *(v8 + 2732);
          *__str = *(v8 + 2733);
          *__str = *(v8 + 2734);
          *__str = *(v8 + 684);
          *__str = *(v8 + 685);
          *__str = v8[1372];
          *__str = v8[1373];
          *__str = v8[1390];
          *__str = v8[1391];
          *__str = v8[1392];
          *__str = v8[1393];
          *__str = v8[1394];
          *__str = *(v8 + 775);
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__str);
          MEMORY[0x253061580](&v95, *(v8 + 840));
          std::stringbuf::str();
          if (v93 >= 0)
          {
            v15 = __p;
          }

          else
          {
            v15 = __p[0];
          }

          NamedValue::NamedValue(v91, "roiType", v15, 0);
          if (v93 < 0)
          {
            operator delete(__p[0]);
          }

          NamedValues::push_back(&v83, v91);
          NamedValue::~NamedValue(v91);
          *__str = v82;
          *&__str[*(v82 - 24)] = v81;
          v95 = v80;
          v96 = MEMORY[0x277D82878] + 16;
          if (v98 < 0)
          {
            operator delete(v97[7].__locale_);
          }

          v96 = MEMORY[0x277D82868] + 16;
          std::locale::~locale(v97);
          std::iostream::~basic_iostream();
          MEMORY[0x253061640](v99);
          *__str = v8[1695];
          NamedValues::~NamedValues(v90);
          v9 = "Shared Auto Focus";
          goto LABEL_152;
        case 4:
          *__str = 876;
          *__str = vcvtd_n_f64_u32(v8[21], 0xEuLL);
          *__str = vcvtd_n_f64_u32(v8[22], 0xEuLL);
          *__str = vcvtd_n_f64_u32(*(v8 + 13), 0xCuLL);
          *__str = v8[73];
          *__str = v8[86];
          *__str = v8[87];
          *__str = v8[88];
          *__str = *(v8 + 178);
          *__str = *(v8 + 179);
          *__str = v8[90];
          *__str = v8[91];
          *__str = v8[92];
          *__str = v8[93];
          *__str = v8[94];
          *__str = v8[95];
          *__str = v8[96];
          *__str = v8[97];
          *__str = v8[98];
          *__str = v8[99];
          *__str = *(v8 + 68);
          *__str = *(v8 + 86);
          *__str = v8[206];
          *__str = vcvtd_n_f64_u32(v8[138], 0xEuLL);
          *__str = vcvtd_n_f64_u32(v8[139], 0xEuLL);
          *__str = *(v8 + 70);
          v9 = "Shared Auto White Balance";
          goto LABEL_152;
        case 5:
          *__str = 24;
          v9 = "Adaptive Tone Curve";
          goto LABEL_152;
        case 6:
          *__str = 24;
          *__str = *v8;
          *__str = v8[1];
          *__str = v8[2];
          *__str = v8[3];
          *__str = v8[4];
          *__str = v8[5];
          *__str = v8[10];
          v9 = "Shared LTM";
          goto LABEL_152;
        case 7:
          *__str = 396;
          *__str = vcvtd_n_f64_u32(*(v8 + 5), 8uLL);
          *__str = vcvtd_n_f64_u32(*(v8 + 10), 8uLL);
          *__str = *(v8 + 60);
          *__str = *(v8 + 61);
          *__str = *(v8 + 62);
          *__str = *(v8 + 63);
          *__str = *(v8 + 64);
          *__str = *(v8 + 65);
          *__str = *(v8 + 66);
          *__str = *(v8 + 67);
          *__str = *(v8 + 68);
          *__str = *(v8 + 69);
          *__str = *(v8 + 70);
          *__str = *(v8 + 71);
          *__str = *(v8 + 72);
          *__str = *(v8 + 73);
          *__str = *(v8 + 74);
          *__str = *(v8 + 75);
          *__str = v8[38];
          *__str = v8[39];
          *__str = v8[40];
          *__str = v8[41];
          *__str = vcvtd_n_f64_u32(v8[56], 0xEuLL);
          *__str = vcvtd_n_f64_u32(v8[57], 0xEuLL);
          *__str = vcvtd_n_f64_u32(v8[58], 0xCuLL);
          *__str = vcvtd_n_f64_u32(v8[59], 0xCuLL);
          *__str = vcvtd_n_f64_u32(v8[60], 0xCuLL);
          *__str = vcvtd_n_f64_u32(v8[61], 0xCuLL);
          *__str = vcvtd_n_f64_u32(v8[62], 0xCuLL);
          *__str = vcvtd_n_f64_u32(v8[63], 0xCuLL);
          *__str = *(v8 + 128);
          *__str = *(v8 + 129);
          *__str = *(v8 + 132);
          *__str = *(v8 + 133);
          *__str = v8[67];
          *__str = v8[68];
          *__str = v8[69];
          *__str = v8[76];
          *__str = v8[77];
          *__str = *(v8 + 160);
          *__str = *(v8 + 161);
          *__str = *(v8 + 162);
          *__str = *(v8 + 41);
          *__str = *(v8 + 44);
          *__str = *(v8 + 45);
          *__str = *(v8 + 46);
          *__str = *(v8 + 47);
          *__str = *(v8 + 48);
          *__str = *(v8 + 49);
          *__str = *(v8 + 50);
          *__str = *(v8 + 51);
          *__str = *(v8 + 52);
          *__str = *(v8 + 53);
          *__str = v8[108];
          *__str = v8[109];
          *__str = *(v8 + 243);
          *__str = v8[149];
          *__str = v8[154];
          *__str = v8[155];
          v55 = 0;
          v56 = v8 + 122;
          v57 = (a1 + 250 + v6);
          do
          {
            NamedValues::NamedValues(__p);
            v58 = &v56[8 * v55];
            *v91 = *v58;
            *v91 = *(v58 + 4);
            v59 = 0;
            v60 = v57;
            do
            {
              NamedValues::NamedValues(v91);
              *v90 = *(v60 - 1);
              *v90 = *v60;
              snprintf(__str, 0x40uLL, "strength[%d]", v59);
              NamedValues::~NamedValues(v91);
              ++v59;
              v60 += 2;
            }

            while (v59 != 5);
            snprintf(__str, 0x40uLL, "mbnrConfig[%d]", v55);
            NamedValues::~NamedValues(__p);
            ++v55;
            v57 += 16;
          }

          while (v55 != 3);
          v9 = "Shared RAW Proc";
          goto LABEL_152;
        case 8:
          *__str = 772;
          *__str = v8[2];
          *__str = v8[275];
          *__str = *(v8 + 552);
          *__str = *(v8 + 553);
          *__str = *(v8 + 554);
          *__str = *(v8 + 555);
          *__str = *(v8 + 568);
          *__str = *(v8 + 640);
          v9 = "Shared RGB Proc";
          goto LABEL_152;
        case 9:
          *__str = 188;
          *__str = *v8;
          *__str = *(v8 + 2);
          *__str = *(v8 + 3);
          *__str = *(v8 + 4);
          *__str = *(v8 + 5);
          *__str = *(v8 + 6);
          *__str = *(v8 + 7);
          *__str = *(v8 + 8);
          *__str = *(v8 + 9);
          *__str = *(v8 + 10);
          *__str = *(v8 + 11);
          *__str = *(v8 + 12);
          *__str = *(v8 + 13);
          *__str = v8[7];
          *__str = v8[8];
          *__str = v8[9];
          *__str = v8[10];
          *__str = v8[11];
          *__str = v8[12];
          *__str = v8[79];
          *__str = v8[80];
          *__str = *(v8 + 162);
          *__str = v8[82];
          *__str = v8[83];
          *__str = v8[84];
          *__str = *(v8 + 43);
          *__str = *(v8 + 44);
          *__str = *(v8 + 45);
          *__str = *(v8 + 184);
          v9 = "Shared YCC Proc";
          goto LABEL_152;
        case 10:
          *__str = 4;
          *__str = *v8;
          *__str = *(v8 + 1);
          v9 = "Shared BES Proc";
          goto LABEL_152;
        case 11:
          *__str = 19528;
          *__str = *(v8 + 164);
          *__str = *(v8 + 165);
          *__str = *(v8 + 166);
          *__str = v8[84];
          *__str = v8[85];
          *__str = v8[86];
          *__str = v8[87];
          *__str = *(v8 + 166);
          *__str = *(v8 + 166);
          *__str = *(v8 + 166);
          *__str = *(v8 + 166);
          *__str = *(v8 + 166);
          *__str = *(v8 + 166);
          *__str = *(v8 + 166);
          *__str = v8[90];
          *__str = *(v8 + 182);
          *__str = *(v8 + 183);
          *__str = v8[94];
          *__str = v8[95];
          *__str = v8[96];
          *__str = v8[97];
          *__str = v8[98];
          *__str = v8[99];
          *__str = v8[100];
          *__str = v8[101];
          LOWORD(v16) = v8[106];
          LOWORD(v17) = v8[107];
          LOWORD(v18) = v8[108];
          LOWORD(v20) = v8[109];
          LOWORD(v21) = v8[110];
          LOWORD(v22) = v8[111];
          *__str = v8[112];
          *__str = v8[113];
          *__str = v8[118];
          *__str = v8[119];
          *__str = v8[120];
          *__str = v8[121];
          *__str = v8[124];
          *__str = v8[125];
          *__str = v8[132];
          *__str = v8[133];
          *__str = v8[134];
          *__str = v8[135];
          *__str = v8[136];
          *__str = v8[137];
          *__str = v8[260];
          *__str = v8[261];
          *__str = v8[262];
          *__str = v8[263];
          *__str = v8[264];
          *__str = v8[265];
          *__str = *(v8 + 4031);
          *__str = *(v8 + 4032);
          v9 = "Shared Stats";
          goto LABEL_152;
        case 12:
          *__str = 2048;
          v9 = "Shared Debug";
          goto LABEL_152;
        case 13:
          *__str = 54888;
          v9 = "Shared OIS";
          goto LABEL_152;
        case 14:
          *__str = 32840;
          v9 = "Shared FocusPixel";
          goto LABEL_152;
        case 15:
          *__str = 6156;
          *__str = *v8;
          *__str = v8[1];
          *__str = v8[2];
          *__str = v8[3];
          *__str = v8[4];
          *__str = v8[5];
          v9 = "Shared LocalHist";
          goto LABEL_152;
        case 16:
          *__str = 65540;
          v9 = "Shared VIS";
          goto LABEL_152;
        case 17:
          *__str = 16388;
          v9 = "Shared TNR";
          goto LABEL_152;
        case 18:
          *__str = 64;
          *__str = v8[8];
          *__str = v8[9];
          *__str = v8[10];
          *__str = v8[11];
          *__str = v8[12];
          *__str = v8[13];
          *__str = v8[14];
          *__str = v8[15];
          *__str = v8[16];
          *__str = v8[17];
          *__str = v8[28];
          *__str = *(v8 + 58);
          *__str = *(v8 + 59);
          *__str = *(v8 + 60);
          v9 = "Shared System";
          goto LABEL_152;
        case 19:
          *__str = 35900;
          *__str = v8[17667];
          *__str = v8[17668];
          *__str = v8[17669];
          *__str = v8[17670];
          *__str = v8[17671];
          *__str = v8[17672];
          *__str = v8[17673];
          *__str = v8[17674];
          *__str = v8[17933];
          *__str = v8[17934];
          *__str = *(v8 + 8968);
          *__str = v8[17938];
          *__str = v8[17939];
          *__str = v8[17940];
          v9 = "Shared LTM LUTs";
          goto LABEL_152;
        case 20:
          *__str = 1736;
          v9 = "Shared VIS Info";
          goto LABEL_152;
        case 21:
          *__str = 11008;
          v9 = "Shared Motion Info";
          goto LABEL_152;
        case 22:
          *__str = 4144;
          v9 = "Shared AF FocusMap";
          goto LABEL_152;
        case 23:
          *__str = 644;
          *__str = *v8;
          v9 = "Shared DMA Config";
          goto LABEL_152;
        case 24:
          *__str = 9236;
          *__str = *v8;
          *__str = v8[1];
          *__str = v8[2];
          *__str = v8[3];
          *__str = v8[4];
          *__str = v8[5];
          *__str = v8[6];
          *__str = v8[7];
          *__str = v8[8];
          *__str = v8[9];
          v9 = "Shared HITH";
          goto LABEL_152;
        case 25:
          *__str = 61208;
          *__str = *v8;
          *__str = v8[1];
          *__str = *(v8 + 15301);
          v9 = "Shared APS";
          goto LABEL_152;
        case 26:
          *__str = 786600;
          v9 = "Shared SideBand";
          goto LABEL_152;
        case 27:
          *__str = 33012;
          *__str = *v8;
          *__str = *(v8 + 4);
          v9 = "Shared VisionProc";
          goto LABEL_152;
        case 28:
          *__str = 116;
          *__str = *v8;
          *__str = v8[1];
          *__str = v8[2];
          *__str = v8[3];
          *__str = *(v8 + 2);
          *__str = *(v8 + 3);
          *__str = *(v8 + 4);
          *__str = *(v8 + 5);
          *__str = *(v8 + 6);
          *__str = *(v8 + 14);
          *__str = *(v8 + 15);
          *__str = v8[14];
          *__str = v8[15];
          *__str = vcvtd_n_f64_s32(*(v8 + 8), 5uLL);
          *__str = vcvtd_n_f64_s32(*(v8 + 9), 5uLL);
          *__str = vcvtd_n_f64_s32(*(v8 + 10), 5uLL);
          *__str = vcvtd_n_f64_s32(*(v8 + 11), 5uLL);
          *__str = vcvtd_n_f64_s32(*(v8 + 12), 5uLL);
          *__str = vcvtd_n_f64_s32(*(v8 + 13), 5uLL);
          *__str = vcvtd_n_f64_s32(*(v8 + 16), 5uLL);
          *__str = *(v8 + 18);
          *__str = v8[34];
          *__str = *(v8 + 19);
          *__str = *(v8 + 20);
          v9 = "Shared Projector";
          goto LABEL_152;
        case 29:
          *__str = 456;
          *__str = *v8;
          *__str = *(v8 + 1);
          v9 = "Shared BodyDetector";
          goto LABEL_152;
        case 30:
          *__str = 96;
          *__str = *v8;
          *__str = v8[1];
          *__str = v8[6];
          *__str = v8[7];
          *__str = v8[8];
          *__str = v8[9];
          *__str = *(v8 + 5);
          *__str = *(v8 + 6);
          *__str = *(v8 + 7);
          *__str = *(v8 + 8);
          *__str = *(v8 + 9);
          *__str = *(v8 + 10);
          *__str = *(v8 + 11);
          *__str = *(v8 + 12);
          *__str = *(v8 + 13);
          *__str = v8[30];
          *__str = *(v8 + 16);
          *__str = *(v8 + 17);
          *__str = *(v8 + 18);
          *__str = *(v8 + 19);
          *__str = *(v8 + 20);
          v9 = "Shared Distortion";
          goto LABEL_152;
        case 31:
          *__str = 1024;
          v9 = "BodyDetector Debug";
          goto LABEL_152;
        case 32:
          *__str = 1453212;
          *__str = *v8;
          *__str = v8[1];
          v9 = "PDE Debug";
          goto LABEL_152;
        case 33:
          *__str = 44;
          *__str = *v8;
          *__str = v8[1];
          *__str = vcvtd_n_f64_s32(*(v8 + 3), 5uLL);
          *__str = vcvtd_n_f64_s32(*(v8 + 4), 5uLL);
          *__str = vcvtd_n_f64_s32(*(v8 + 5), 5uLL);
          *__str = vcvtd_n_f64_s32(*(v8 + 6), 5uLL);
          *__str = *(v8 + 7);
          *__str = *(v8 + 8);
          *__str = *(v8 + 9);
          *__str = *(v8 + 10);
          v9 = "Shared Powersupply";
          goto LABEL_152;
        case 34:
          *__str = 1252;
          *__str = *(v8 + 312);
          *__str = 0;
          if (*(v8 + 312))
          {
            v12 = 0;
            v13 = v8;
            do
            {
              LODWORD(__p[0]) = *v13;
              LODWORD(__p[0]) = v13[1];
              LODWORD(__p[0]) = *(v13 + 1);
              LODWORD(__p[0]) = *(v13 + 2);
              LODWORD(__p[0]) = *(v13 + 3);
              LODWORD(__p[0]) = *(v13 + 4);
              LODWORD(__p[0]) = *(v13 + 5);
              LODWORD(__p[0]) = *(v13 + 6);
              LODWORD(__p[0]) = *(v13 + 7);
              LODWORD(__p[0]) = v13[16];
              LODWORD(__p[0]) = v13[17];
              LODWORD(__p[0]) = *(v13 + 9);
              LODWORD(__p[0]) = v13[20];
              LODWORD(__p[0]) = v13[21];
              LODWORD(__p[0]) = v13[22];
              LODWORD(__p[0]) = *(v13 + 101);
              LODWORD(__p[0]) = *(v13 + 51);
              LODWORD(__p[0]) = v13[24];
              LODWORD(__p[0]) = *(v13 + 13);
              LODWORD(__p[0]) = v13[28];
              LODWORD(__p[0]) = v13[29];
              LODWORD(__p[0]) = *(v13 + 15);
              LODWORD(__p[0]) = *(v13 + 16);
              LODWORD(__p[0]) = *(v13 + 17);
              LODWORD(__p[0]) = *(v13 + 18);
              LODWORD(__p[0]) = *(v13 + 19);
              LODWORD(__p[0]) = v13[40];
              LODWORD(__p[0]) = v13[201];
              *__str = ++v12;
              v13 += 208;
            }

            while (v12 < *(v8 + 312));
          }

          v9 = "Shared Multi Slave";
          goto LABEL_152;
        case 35:
          *__str = 10032;
          *__str = *v8;
          *__str = HIWORD(*v8) & 1;
          *__str = v8[2];
          v9 = "Shared FD DCN";
          goto LABEL_152;
        case 36:
          *__str = 4212;
          *__str = *v8;
          *__str = HIWORD(*v8) & 1;
          *__str = (*v8 >> 18) & 1;
          *__str = (*v8 >> 19) & 1;
          *__str = (*v8 >> 20) & 1;
          *__str = (*v8 >> 21) & 1;
          *__str = *(v8 + 1);
          *__str = *(v8 + 2);
          v9 = "Shared FID DCN";
          goto LABEL_152;
        case 37:
          *__str = 1036;
          *__str = *v8;
          *__str = v8[1];
          *__str = v8[2];
          *__str = v8[3];
          *__str = v8[4];
          *__str = v8[5];
          v9 = "Shared YCC Histogram";
          goto LABEL_152;
        case 38:
          *__str = 148024;
          *__str = *v8;
          v9 = "Shared FD DCN Debug";
          goto LABEL_152;
        case 39:
          *__str = 695440;
          *__str = *v8;
          v9 = "Shared FID DCN Debug";
          goto LABEL_152;
        case 40:
          *__str = 1788;
          *__str = *v8;
          *__str = HIWORD(*v8) & 1;
          *__str = (*v8 >> 17) & 1;
          *__str = *(v8 + 1);
          v9 = "Shared Attention";
          goto LABEL_152;
        case 41:
          *__str = 246036;
          *__str = *v8;
          v9 = "Shared Attention Debug";
          goto LABEL_152;
        case 42:
          *__str = 2945604;
          *__str = *v8;
          *__str = v8[1];
          v9 = "Shared IR PDP Debug";
          goto LABEL_152;
        case 43:
          *__str = 3848;
          *__str = *v8;
          *__str = v8[1];
          *__str = *(v8 + 1);
          v9 = "Shared MasterSlave AF";
          goto LABEL_152;
        case 44:
          *__str = 452;
          *__str = *v8;
          *__str = v8[1];
          *__str = v8[2];
          *__str = *(v8 + 2);
          *__str = v8[6];
          *__str = *(v8 + 6);
          *__str = v8[14];
          *__str = v8[15];
          *__str = v8[36];
          if (*(v8 + 91))
          {
            *__str = v8[186];
            *__str = v8[187];
            *__str = v8[208];
          }

          *__str = v8[38];
          *__str = v8[39];
          *__str = v8[40];
          *__str = v8[41];
          *__str = v8[7];
          *__str = v8[8];
          *__str = v8[42];
          *__str = *(v8 + 22);
          *__str = *(v8 + 23);
          *__str = *(v8 + 24);
          *__str = *(v8 + 25);
          *__str = *(v8 + 26);
          *__str = v8[37];
          v9 = "Shared PDE";
          goto LABEL_152;
        case 45:
          *__str = 132608;
          *__str = *v8;
          *__str = *(v8 + 9);
          *__str = *(v8 + 40);
          *__str = *(v8 + 49);
          *__str = *(v8 + 52);
          *__str = *(v8 + 212);
          *__str = *(v8 + 105);
          *__str = *(v8 + 824);
          *__str = *(v8 + 207);
          *__str = *(v8 + 208);
          *__str = *(v8 + 209);
          *__str = *(v8 + 210);
          *__str = *(v8 + 213);
          *__str = *(v8 + 215);
          *__str = *(v8 + 221);
          *__str = *(v8 + 222);
          *__str = *(v8 + 223);
          *__str = *(v8 + 224);
          *__str = *(v8 + 225);
          *__str = *(v8 + 226);
          *__str = *(v8 + 227);
          *__str = *(v8 + 912);
          *__str = v8[457];
          *__str = v8[458];
          *__str = v8[459];
          *__str = v8[460];
          *__str = v8[461];
          *__str = *(v8 + 940);
          *__str = *(v8 + 956);
          *__str = *(v8 + 957);
          *__str = *(v8 + 958);
          *__str = *(v8 + 959);
          *__str = *(v8 + 240);
          *__str = *(v8 + 964);
          *__str = *(v8 + 242);
          *__str = *(v8 + 243);
          *__str = *(v8 + 992);
          *__str = v8[497];
          *__str = *(v8 + 249);
          *__str = *(v8 + 250);
          *__str = v8[1182];
          *__str = *(v8 + 6052);
          *__str = *(v8 + 25556);
          *__str = *(v8 + 25557);
          *__str = *(v8 + 25558);
          *__str = *(v8 + 25559);
          *__str = *(v8 + 25560);
          *__str = *(v8 + 25561);
          *__str = *(v8 + 25562);
          *__str = *(v8 + 25563);
          *__str = *(v8 + 25564);
          *__str = *(v8 + 25565);
          *__str = *(v8 + 25566);
          *__str = *(v8 + 25567);
          *__str = *(v8 + 25568);
          *__str = *(v8 + 25569);
          *__str = *(v8 + 25570);
          *__str = *(v8 + 25571);
          *__str = *(v8 + 25572);
          *__str = *(v8 + 25573);
          *__str = *(v8 + 25574);
          *__str = *(v8 + 25575);
          *__str = *(v8 + 25656);
          *__str = *(v8 + 25664);
          *__str = *(v8 + 25665);
          *__str = *(v8 + 25666);
          *__str = *(v8 + 25667);
          *__str = *(v8 + 25668);
          *__str = *(v8 + 25669);
          *__str = *(v8 + 6422);
          *__str = *(v8 + 6711);
          *__str = *(v8 + 6985);
          *__str = *(v8 + 6986);
          *__str = *(v8 + 6987);
          *__str = *(v8 + 6988);
          *__str = *(v8 + 6994);
          *__str = *(v8 + 6995);
          *__str = *(v8 + 6997);
          *__str = *(v8 + 7000);
          *__str = *(v8 + 7005);
          *__str = *(v8 + 7014);
          *__str = *(v8 + 7015);
          *__str = *(v8 + 7020);
          *__str = *(v8 + 7021);
          *__str = *(v8 + 7025);
          *__str = *(v8 + 7026);
          *__str = *(v8 + 7027);
          *__str = *(v8 + 7028);
          *__str = *(v8 + 7534);
          *__str = *(v8 + 7535);
          v9 = "Shared CBAF Debug";
          goto LABEL_152;
        case 46:
          *__str = 10033888;
          v9 = "Shared PDAFHW Debug";
          goto LABEL_152;
        case 47:
          *__str = 256;
          v9 = "Shared CRC Check";
          goto LABEL_152;
        case 48:
          *__str = 24;
          v9 = "Shared Calibration";
          goto LABEL_152;
        case 49:
          *__str = 32;
          *__str = *v8;
          *__str = *(v8 + 1);
          *__str = *(v8 + 2);
          *__str = *(v8 + 3);
          *__str = *(v8 + 4);
          *__str = *(v8 + 5);
          *__str = *(v8 + 6);
          v9 = "Shared Motion Stats";
          goto LABEL_152;
        case 50:
          *__str = 44;
          *__str = *v8;
          *__str = *(v8 + 1);
          *__str = *(v8 + 2);
          *__str = *(v8 + 3);
          v9 = "Shared APS Stats";
          goto LABEL_152;
        case 51:
          *__str = 100;
          *__str = *v8;
          *__str = *(v8 + 1);
          *__str = *(v8 + 4);
          *__str = *(v8 + 5);
          v9 = "Shared OIS Stats";
          goto LABEL_152;
        case 52:
          goto LABEL_152;
        case 53:
          v9 = "Shared AiCam Debug";
          goto LABEL_152;
        case 54:
          *__str = 40;
          *__str = *v8;
          *__str = v8[1];
          *__str = vcvtd_n_f64_u32(v8[8], 8uLL);
          *__str = vcvtd_n_f64_u32(*(v8 + 9), 8uLL);
          *__str = vcvtd_n_f64_u32(v8[10], 8uLL);
          *__str = vcvtd_n_f64_u32(v8[11], 8uLL);
          v9 = "Shared SIFR";
          goto LABEL_152;
        case 55:
          *__str = *v8;
          *__str = *(v8 + 1);
          v9 = "Shared FPC";
          goto LABEL_152;
        case 56:
          *__str = *v8;
          *__str = v8[1];
          v9 = "Shared Reduced APS";
          goto LABEL_152;
        default:
          goto LABEL_153;
      }
    }

LABEL_155:
    v77 = cf;
    CFRetain(cf);
    NamedValues::~NamedValues(&v84);
    NamedValues::~NamedValues(&cf);
  }

  else
  {
    v77 = 0;
  }

  v78 = *MEMORY[0x277D85DE8];
  return v77;
}

void sub_2507FA7C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, char a28, int a29, __int16 a30, char a31, char a32, int a33, __int16 a34, char a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  NamedValues::~NamedValues(&a28);
  NamedValues::~NamedValues(&a30);
  NamedValues::~NamedValues(&a17);
  NamedValues::~NamedValues(&a19);
  NamedValues::~NamedValues(&a23);
  _Unwind_Resume(a1);
}

void anonymous namespace::AppendMetadataList(__CFArray **this, NamedValues *a2, __CFArray **a3, NamedValues *a4)
{
  NamedValue::NamedValue(&v5, a2, 0, *a3);
  NamedValues::push_back(this, &v5);
  NamedValue::~NamedValue(&v5);
}

void sub_2507FAC04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  NamedValue::~NamedValue(va);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<unsigned long>(__CFArray **a1, void *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v10);
  MEMORY[0x2530615A0](&v11, *a2);
  std::stringbuf::str();
  if (v8 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  NamedValue::NamedValue(&v9, "size", p_p, 0);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  NamedValues::push_back(a1, &v9);
  NamedValue::~NamedValue(&v9);
  v10[0] = *MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11 = v5;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x253061640](&v15);
}

void sub_2507FADF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<unsigned short>(__CFArray **a1, const char *a2, _WORD *a3, int a4)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  if (a4 == 1)
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "0x", 2);
    *(v10 + *(*v10 - 24) + 8) = *(v10 + *(*v10 - 24) + 8) & 0xFFFFFFB5 | 8;
LABEL_12:
    MEMORY[0x2530615C0](v10, *a3);
    goto LABEL_13;
  }

  if (a4 != 2)
  {
    v10 = &v18;
    goto LABEL_12;
  }

  if (*a3)
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  if (*a3)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v8, v9);
LABEL_13:
  std::stringbuf::str();
  if (v15 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  NamedValue::NamedValue(&v16, a2, p_p, 0);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  NamedValues::push_back(a1, &v16);
  NamedValue::~NamedValue(&v16);
  v17[0] = *MEMORY[0x277D82818];
  v12 = *(MEMORY[0x277D82818] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v18 = v12;
  v19 = MEMORY[0x277D82878] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x253061640](&v22);
}

void sub_2507FB094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<unsigned long long>(__CFArray **a1, const char *a2, void *a3, int a4)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  if (a4 == 1)
  {
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "0x", 2);
    *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  }

  else
  {
    v8 = &v16;
  }

  MEMORY[0x2530615D0](v8, *a3);
  std::stringbuf::str();
  if (v13 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  NamedValue::NamedValue(&v14, a2, p_p, 0);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  NamedValues::push_back(a1, &v14);
  NamedValue::~NamedValue(&v14);
  v15[0] = *MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v16 = v10;
  v17 = MEMORY[0x277D82878] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x253061640](&v20);
}

void sub_2507FB300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<unsigned int>(__CFArray **a1, const char *a2, _DWORD *a3, int a4)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  if (a4 == 1)
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "0x", 2);
    *(v10 + *(*v10 - 24) + 8) = *(v10 + *(*v10 - 24) + 8) & 0xFFFFFFB5 | 8;
LABEL_12:
    MEMORY[0x253061590](v10, *a3);
    goto LABEL_13;
  }

  if (a4 != 2)
  {
    v10 = &v18;
    goto LABEL_12;
  }

  if (*a3)
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  if (*a3)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v8, v9);
LABEL_13:
  std::stringbuf::str();
  if (v15 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  NamedValue::NamedValue(&v16, a2, p_p, 0);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  NamedValues::push_back(a1, &v16);
  NamedValue::~NamedValue(&v16);
  v17[0] = *MEMORY[0x277D82818];
  v12 = *(MEMORY[0x277D82818] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v18 = v12;
  v19 = MEMORY[0x277D82878] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x253061640](&v22);
}

void sub_2507FB5A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_2507FB860(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x253061640](v1);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x253061640](a1 + 128);
  return a1;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x2530615F0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_2507FBA70(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x253061540](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x253061550](v13);
  return a1;
}

void sub_2507FBCE0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x253061550](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2507FBCC0);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_2507FBF14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_27969EBC0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t anonymous namespace::AppendMetadataItem<char const*>(__CFArray **a1, const char *a2, const char **a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v14);
  v6 = *a3;
  v7 = strlen(v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v6, v7);
  std::stringbuf::str();
  if (v12 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  NamedValue::NamedValue(&v13, a2, p_p, 0);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  NamedValues::push_back(a1, &v13);
  NamedValue::~NamedValue(&v13);
  v14[0] = *MEMORY[0x277D82818];
  v9 = *(MEMORY[0x277D82818] + 72);
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v15 = v9;
  v16 = MEMORY[0x277D82878] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return MEMORY[0x253061640](&v19);
}

void sub_2507FC1C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<unsigned char>(__CFArray **a1, const char *a2, _BYTE *a3, int a4)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v18);
  v8 = "on";
  if (!*a3)
  {
    v8 = "off";
  }

  v9 = "no";
  if (*a3)
  {
    v9 = "yes";
  }

  if (a4 == 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if ((*a3 == 0) != (a4 == 2))
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, v10, v11);
  std::stringbuf::str();
  if (v16 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  NamedValue::NamedValue(&v17, a2, p_p, 0);
  if (v16 < 0)
  {
    operator delete(__p);
  }

  NamedValues::push_back(a1, &v17);
  NamedValue::~NamedValue(&v17);
  v18[0] = *MEMORY[0x277D82818];
  v13 = *(MEMORY[0x277D82818] + 72);
  *(v18 + *(v18[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v19 = v13;
  v20 = MEMORY[0x277D82878] + 16;
  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  v20 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  return MEMORY[0x253061640](&v23);
}

void sub_2507FC428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<int>(__CFArray **a1, const char *a2, unsigned int *a3, int a4)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  if (a4 == 1)
  {
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "0x", 2);
    *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  }

  else
  {
    v8 = &v16;
  }

  MEMORY[0x253061580](v8, *a3);
  std::stringbuf::str();
  if (v13 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  NamedValue::NamedValue(&v14, a2, p_p, 0);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  NamedValues::push_back(a1, &v14);
  NamedValue::~NamedValue(&v14);
  v15[0] = *MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v16 = v10;
  v17 = MEMORY[0x277D82878] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x253061640](&v20);
}

void sub_2507FC694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<double>(__CFArray **a1, const char *a2, double *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v12);
  MEMORY[0x253061560](&v13, *a3);
  std::stringbuf::str();
  if (v10 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  NamedValue::NamedValue(&v11, a2, p_p, 0);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  NamedValues::push_back(a1, &v11);
  NamedValue::~NamedValue(&v11);
  v12[0] = *MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 72);
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v13 = v7;
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return MEMORY[0x253061640](&v17);
}

void sub_2507FC8AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<short>(__CFArray **a1, const char *a2, __int16 *a3, int a4)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  if (a4 == 1)
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "0x", 2);
    *(v10 + *(*v10 - 24) + 8) = *(v10 + *(*v10 - 24) + 8) & 0xFFFFFFB5 | 8;
LABEL_12:
    MEMORY[0x2530615B0](v10, *a3);
    goto LABEL_13;
  }

  if (a4 != 2)
  {
    v10 = &v18;
    goto LABEL_12;
  }

  if (*a3)
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  if (*a3)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v8, v9);
LABEL_13:
  std::stringbuf::str();
  if (v15 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  NamedValue::NamedValue(&v16, a2, p_p, 0);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  NamedValues::push_back(a1, &v16);
  NamedValue::~NamedValue(&v16);
  v17[0] = *MEMORY[0x277D82818];
  v12 = *(MEMORY[0x277D82818] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v18 = v12;
  v19 = MEMORY[0x277D82878] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x253061640](&v22);
}

void sub_2507FCB50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<char [4]>(__CFArray **a1, const char *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "...", 3);
  std::stringbuf::str();
  if (v8 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  NamedValue::NamedValue(&v9, a2, p_p, 0);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  NamedValues::push_back(a1, &v9);
  NamedValue::~NamedValue(&v9);
  v10[0] = *MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11 = v5;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x253061640](&v15);
}

void sub_2507FCD6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<float>(__CFArray **a1, const char *a2, int *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  v6 = *a3;
  std::ostream::operator<<();
  std::stringbuf::str();
  if (v11 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  NamedValue::NamedValue(&v12, a2, p_p, 0);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  NamedValues::push_back(a1, &v12);
  NamedValue::~NamedValue(&v12);
  v13[0] = *MEMORY[0x277D82818];
  v8 = *(MEMORY[0x277D82818] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v13[2] = v8;
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return MEMORY[0x253061640](&v17);
}

void sub_2507FCF84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<eCIspFocusingMethod>(__CFArray **a1, unsigned int *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v10);
  MEMORY[0x253061580](&v11, *a2);
  std::stringbuf::str();
  if (v8 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  NamedValue::NamedValue(&v9, "lastFocusingMethod", p_p, 0);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  NamedValues::push_back(a1, &v9);
  NamedValue::~NamedValue(&v9);
  v10[0] = *MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11 = v5;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x253061640](&v15);
}

void sub_2507FD19C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem(__CFArray **this, NamedValues *a2, const char *a3, double a4, double a5, double a6)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v21);
  *(&v24[0].__locale_ + *(v22 - 24)) = 5;
  v11 = MEMORY[0x253061560](&v22, a4);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", ", 2);
  v13 = MEMORY[0x253061560](v12, a5);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", ", 2);
  MEMORY[0x253061560](v14, a6);
  std::stringbuf::str();
  if (v19 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  NamedValue::NamedValue(&v20, a2, p_p, 0);
  if (v19 < 0)
  {
    operator delete(__p);
  }

  NamedValues::push_back(this, &v20);
  NamedValue::~NamedValue(&v20);
  v21[0] = *MEMORY[0x277D82818];
  v16 = *(MEMORY[0x277D82818] + 72);
  *(v21 + *(v21[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v22 = v16;
  v23 = MEMORY[0x277D82878] + 16;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  v23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v24);
  std::iostream::~basic_iostream();
  return MEMORY[0x253061640](&v26);
}

void sub_2507FD420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

__CFDictionary *H10ISP::H10ISPCreateEXIFDictFromMetadataDict(H10ISP *this, const __CFDictionary *a2, int a3)
{
  v243 = a3;
  v244 = a2;
  v241 = 0;
  cf = 0;
  v4 = *MEMORY[0x277CBECE8];
  v5 = OUTLINED_FUNCTION_0();
  Mutable = CFDictionaryCreateMutable(v5, v6, v7, v8);
  if (Mutable)
  {
    v10 = OUTLINED_FUNCTION_0();
    v13 = CFNumberCreate(v10, v11, v12);
    cf = v13;
    if (v13)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD3410], v13);
      CFRelease(cf);
    }

    v14 = CFDictionaryCreateMutable(v4, 18, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v14)
    {
      v21 = v14;
      if (v244 && v243)
      {
        v22 = OUTLINED_FUNCTION_0();
        v25 = CFNumberCreate(v22, v23, v24);
        cf = v25;
        if (v25)
        {
          CFDictionaryAddValue(v21, *MEMORY[0x277CD3110], v25);
          CFRelease(cf);
        }

        v26 = OUTLINED_FUNCTION_0();
        v14 = CFNumberCreate(v26, v27, v28);
        cf = v14;
        if (v14)
        {
          CFDictionaryAddValue(v21, *MEMORY[0x277CD3118], v14);
          CFRelease(cf);
        }
      }

      if (this)
      {
        LODWORD(v29) = OUTLINED_FUNCTION_2(v14, *MEMORY[0x277CF4C58], v15, v16, v17, v18, v19, v20, v221, v237, v238, *&valuePtr, *v240, v241, cf);
        if (v29)
        {
          valuePtr = 0.0;
          *v240 = 0.0;
          CFNumberGetValue(cf, kCFNumberFloat64Type, &valuePtr);
          *&v238 = 0.0;
          if (valuePtr > 0.0)
          {
            *&v238 = 1.0 / (1.0 / valuePtr + 0.5);
          }

          v36 = CFNumberCreate(v4, kCFNumberFloat64Type, &v238);
          if (v36)
          {
            v43 = v36;
            OUTLINED_FUNCTION_3(v36, *MEMORY[0x277CD3060], v37, v38, v39, v40, v41, v42, v222, v237, v238, *&valuePtr, *v240, v241, cf);
            CFRelease(v43);
          }

          if (valuePtr > 0.0)
          {
            *v240 = -log2(valuePtr);
          }

          v29 = CFNumberCreate(v4, kCFNumberFloat64Type, v240);
          cf = v29;
          if (v29)
          {
            CFDictionaryAddValue(v21, *MEMORY[0x277CD3158], v29);
            CFRelease(cf);
          }
        }

        v44 = OUTLINED_FUNCTION_2(v29, *MEMORY[0x277CF4CF0], v30, v31, v32, v33, v34, v35, v222, v237, v238, *&valuePtr, *v240, v241, cf);
        if (v44)
        {
          v52 = OUTLINED_FUNCTION_5(v44, v45, v46, v47, v48, v49, v50, v51, v223, v237, v238, 0, 0, v241, cf);
          Value = CFNumberGetValue(v52, kCFNumberFloat64Type, v53);
          OUTLINED_FUNCTION_3(Value, *MEMORY[0x277CD3068], v55, v56, v57, v58, v59, v60, v224, v237, v238, *&valuePtr, *v240, v241, cf);
          if (*v240 > 0.0)
          {
            v61 = log2(*v240);
            valuePtr = v61 + v61;
          }

          v44 = CFNumberCreate(v4, kCFNumberFloat64Type, &valuePtr);
          cf = v44;
          if (v44)
          {
            CFDictionaryAddValue(v21, *MEMORY[0x277CD2F48], v44);
            CFRelease(cf);
          }
        }

        v62 = OUTLINED_FUNCTION_2(v44, *MEMORY[0x277CF4DF0], v46, v47, v48, v49, v50, v51, v223, v237, v238, *&valuePtr, *v240, v241, cf);
        if (v62)
        {
          *v240 = 0;
          v70 = OUTLINED_FUNCTION_5(v62, v63, v64, v65, v66, v67, v68, v69, v225, v237, v238, *&valuePtr, *v240, v241, cf);
          CFNumberGetValue(v70, kCFNumberSInt16Type, v71);
          v72 = &word_250803EFE;
          v73 = 31;
          while (v73)
          {
            v74 = *(v72 - 1);
            v75 = (*v72 + v74) >> 1;
            --v73;
            ++v72;
            if (v75 >= *v240)
            {
              *v240 = v74;
              break;
            }
          }

          v62 = CFNumberCreate(v4, kCFNumberSInt16Type, v240);
          cf = v62;
          if (v62)
          {
            v76 = CFArrayCreate(v4, &cf, 1, MEMORY[0x277CBF128]);
            CFRelease(cf);
            if (v76)
            {
              CFDictionaryAddValue(v21, *MEMORY[0x277CD30B0], v76);
              CFRelease(v76);
            }
          }
        }

        LODWORD(v77) = OUTLINED_FUNCTION_2(v62, @"FocusWindow", v64, v65, v66, v67, v68, v69, v225, v237, v238, *&valuePtr, *v240, v241, cf);
        if (v77)
        {
          *v240 = 0;
          LOWORD(valuePtr) = 0;
          LOWORD(v238) = 0;
          HIDWORD(v237) = 0;
          v77 = CFArrayCreateMutable(v4, 4, MEMORY[0x277CBF128]);
          if (v77)
          {
            v84 = v77;
            ValueAtIndex = CFArrayGetValueAtIndex(cf, 0);
            OUTLINED_FUNCTION_6(ValueAtIndex, v86, v87, v88, v89, v90, v91, v92, v226, v237, v238, *&valuePtr, v240[0]);
            LOWORD(valuePtr) = v244 * *v240 / 0x3E8u;
            v93 = CFArrayGetValueAtIndex(cf, 1);
            OUTLINED_FUNCTION_6(v93, v94, v95, v96, v97, v98, v99, v100, v227, v237, v238, *&valuePtr, v240[0]);
            OUTLINED_FUNCTION_4();
            LOWORD(v238) = v101;
            v102 = CFArrayGetValueAtIndex(cf, 2);
            OUTLINED_FUNCTION_6(v102, v103, v104, v105, v106, v107, v108, v109, v228, v237, v238, *&valuePtr, v240[0]);
            HIWORD(v237) = v244 * *v240 / 0x3E8u;
            v110 = CFArrayGetValueAtIndex(cf, 3);
            OUTLINED_FUNCTION_6(v110, v111, v112, v113, v114, v115, v116, v117, v229, v237, v238, *&valuePtr, v240[0]);
            OUTLINED_FUNCTION_4();
            WORD2(v237) = v118;
            LOWORD(valuePtr) += SHIWORD(v237) / 2;
            LOWORD(v238) = v238 + v118 / 2;
            v121 = OUTLINED_FUNCTION_7(v119, v120, &valuePtr);
            if (v121)
            {
              OUTLINED_FUNCTION_1(v121);
              CFRelease(0x3E8);
            }

            v123 = OUTLINED_FUNCTION_7(v121, v122, &v238);
            if (v123)
            {
              OUTLINED_FUNCTION_1(v123);
              CFRelease(0x3E8);
            }

            v125 = OUTLINED_FUNCTION_7(v123, v124, &v237 + 6);
            if (v125)
            {
              OUTLINED_FUNCTION_1(v125);
              CFRelease(0x3E8);
            }

            v127 = OUTLINED_FUNCTION_7(v125, v126, &v237 + 4);
            if (v127)
            {
              OUTLINED_FUNCTION_1(v127);
              CFRelease(0x3E8);
            }

            CFDictionaryAddValue(v21, *MEMORY[0x277CD3178], v84);
            CFRelease(v84);
          }
        }

        v128 = OUTLINED_FUNCTION_2(v77, *MEMORY[0x277CF51B0], v78, v79, v80, v81, v82, v83, v226, v237, v238, *&valuePtr, *v240, v241, cf);
        if (v128)
        {
          *v240 = -1;
          LODWORD(valuePtr) = 0;
          v136 = OUTLINED_FUNCTION_5(v128, v129, v130, v131, v132, v133, v134, v135, v230, v237, v238, *&valuePtr, *v240, v241, cf);
          LODWORD(v128) = CFNumberGetValue(v136, kCFNumberSInt32Type, v137);
          if ((*v240 & 0x80000000) == 0)
          {
            if (*v240 > 8u)
            {
              v138 = *v240 > 0xCu ? 2 : 1;
              LODWORD(valuePtr) = v138;
            }

            else
            {
              LODWORD(valuePtr) = 0;
            }

            v139 = OUTLINED_FUNCTION_0();
            v128 = CFNumberCreate(v139, v140, v141);
            if (v128)
            {
              v142 = v128;
              CFDictionaryAddValue(v21, *MEMORY[0x277CD3150], v128);
              CFRelease(v142);
            }
          }
        }

        v143 = OUTLINED_FUNCTION_2(v128, *MEMORY[0x277CF4D00], v130, v131, v132, v133, v134, v135, v230, v237, v238, *&valuePtr, *v240, v241, cf);
        if (v143)
        {
          OUTLINED_FUNCTION_3(v143, *MEMORY[0x277CD3088], v144, v145, v146, v147, v148, v149, v231, v237, v238, *&valuePtr, *v240, v241, cf);
        }

        v150 = OUTLINED_FUNCTION_2(v143, *MEMORY[0x277CF5330], v144, v145, v146, v147, v148, v149, v231, v237, v238, *&valuePtr, *v240, v241, cf);
        v157 = MEMORY[0x277CD31A8];
        if (v150)
        {
          OUTLINED_FUNCTION_3(v150, *MEMORY[0x277CD31A8], v151, v152, v153, v154, v155, v156, v232, v237, v238, *&valuePtr, *v240, v241, cf);
        }

        v158 = OUTLINED_FUNCTION_2(v150, *MEMORY[0x277CF4CF8], v151, v152, v153, v154, v155, v156, v232, v237, v238, *&valuePtr, *v240, v241, cf);
        if (v158)
        {
          OUTLINED_FUNCTION_3(v158, *MEMORY[0x277CD3080], v159, v160, v161, v162, v163, v164, v233, v237, v238, *&valuePtr, *v240, v241, cf);
        }

        v165 = OUTLINED_FUNCTION_2(v158, *MEMORY[0x277CF4E40], v159, v160, v161, v162, v163, v164, v233, v237, v238, *&valuePtr, *v240, v241, cf);
        if (v165)
        {
          OUTLINED_FUNCTION_3(v165, *MEMORY[0x277CD30B8], v166, v167, v168, v169, v170, v171, v234, v237, v238, *&valuePtr, *v240, v241, cf);
        }

        HIDWORD(v241) = 1;
        if (OUTLINED_FUNCTION_2(v165, @"MeteringMode", v166, v167, v168, v169, v170, v171, v234, v237, v238, *&valuePtr, *v240, v241, cf))
        {
          CFNumberGetValue(cf, kCFNumberSInt32Type, &v241 + 4);
        }

        v172 = OUTLINED_FUNCTION_0();
        v175 = CFNumberCreate(v172, v173, v174);
        cf = v175;
        if (v175)
        {
          CFDictionaryAddValue(v21, *MEMORY[0x277CD30F0], v175);
          CFRelease(cf);
        }

        LODWORD(v241) = 2;
        v176 = OUTLINED_FUNCTION_0();
        v179 = CFNumberCreate(v176, v177, v178);
        cf = v179;
        if (v179)
        {
          CFDictionaryAddValue(v21, *MEMORY[0x277CD3058], v179);
          CFRelease(cf);
        }

        cf = @"H10ISP Test Application";
        CFDictionaryAddValue(v21, *MEMORY[0x277CD30E0], @"H10ISP Test Application");
        CFRelease(cf);
        LODWORD(v241) = 0;
        v187 = OUTLINED_FUNCTION_2(v180, @"GlobalShutterFlag", v181, v182, v183, v184, v185, v186, v235, v237, v238, *&valuePtr, *v240, v241, cf);
        if (v187)
        {
          *v240 = -1;
          v195 = OUTLINED_FUNCTION_5(v187, v188, v189, v190, v191, v192, v193, v194, v236, v237, v238, *&valuePtr, *v240, v241, cf);
          CFNumberGetValue(v195, kCFNumberSInt32Type, v196);
        }

        LODWORD(v241) = 32;
        v197 = OUTLINED_FUNCTION_0();
        v200 = CFNumberCreate(v197, v198, v199);
        cf = v200;
        if (v200)
        {
          CFDictionaryAddValue(v21, *MEMORY[0x277CD3070], v200);
          CFRelease(cf);
        }

        LODWORD(v241) = 2;
        v201 = OUTLINED_FUNCTION_0();
        v204 = CFNumberCreate(v201, v202, v203);
        cf = v204;
        if (v204)
        {
          CFDictionaryAddValue(v21, *MEMORY[0x277CD3140], v204);
          CFRelease(cf);
        }

        LODWORD(v241) = 1;
        v205 = OUTLINED_FUNCTION_0();
        v208 = CFNumberCreate(v205, v206, v207);
        cf = v208;
        if (v208)
        {
          CFDictionaryAddValue(v21, *MEMORY[0x277CD3138], v208);
          CFRelease(cf);
        }

        LODWORD(v241) = 0;
        v209 = OUTLINED_FUNCTION_0();
        v212 = CFNumberCreate(v209, v210, v211);
        cf = v212;
        if (v212)
        {
          CFDictionaryAddValue(v21, *MEMORY[0x277CD3050], v212);
          CFRelease(cf);
        }

        LODWORD(v241) = 0;
        v213 = OUTLINED_FUNCTION_0();
        v216 = CFNumberCreate(v213, v214, v215);
        cf = v216;
        if (v216)
        {
          CFDictionaryAddValue(v21, *v157, v216);
          CFRelease(cf);
        }

        v217 = CFDictionaryGetValue(this, *MEMORY[0x277CF5088]);
        if (v217)
        {
          BytePtr = CFDataGetBytePtr(v217);
          if (BytePtr)
          {
            v219 = H10ISP::H10ISPCreateFrameMetaDataAsCFString(BytePtr, 0);
            CFDictionaryAddValue(v21, *MEMORY[0x277CD3198], v219);
            CFRelease(v219);
          }
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CD3038], v21);
      }

      CFRelease(v21);
    }
  }

  return Mutable;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7920]();
}

{
  return MEMORY[0x2821F7928]();
}

{
  return MEMORY[0x2821F7938]();
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