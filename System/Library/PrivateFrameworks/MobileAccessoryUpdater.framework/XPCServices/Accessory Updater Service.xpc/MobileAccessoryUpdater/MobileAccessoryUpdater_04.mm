uint64_t AMAuthInstallApImg3CopyPersonalizedData(void *a1, const __CFURL *a2, CFStringRef a3, const void *a4, const __CFDictionary *a5, CFTypeRef *a6, char a7)
{
  v10 = a4;
  v36 = 0;
  theDict = a5;
  v34 = 0;
  v35 = 0;
  SafeRetain(a4);
  SafeRetain(a5);
  if (!a1 || !a1[2])
  {
    v17 = 1;
    goto LABEL_10;
  }

  if (v10)
  {
    if (a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v33 = 0;
  v31 = CFGetAllocator(a1);
  v32 = AMAuthInstallApImg3CreateMeasurementsFromURL(v31, a2, &v33, a7);
  if (v32)
  {
    v17 = v32;
    v10 = 0;
    goto LABEL_10;
  }

  v10 = v33;
  if (!a3)
  {
LABEL_5:
    v14 = CFGetAllocator(a1);
    a3 = AMAuthInstallApCopyImageTag(v14, a2);
    if (!a3)
    {
      v17 = 0;
      goto LABEL_10;
    }
  }

LABEL_6:
  if (!a5)
  {
    v16 = AMAuthInstallApImg3CreateServerRequestDictionary(a1, a3, v10, 0, &v36);
    if (v16)
    {
      goto LABEL_8;
    }

    v16 = AMAuthInstallRequestSendSync(a1, v36, &theDict);
    if (v16)
    {
      goto LABEL_8;
    }
  }

  v15 = CFGetAllocator(a1);
  v16 = AMAuthInstallPlatformCreateDataFromFileURL(v15, &v35, a2);
  if (v16)
  {
    goto LABEL_8;
  }

  Value = CFDictionaryGetValue(theDict, a3);
  if (!Value)
  {
    v30 = "response missing entry %@";
LABEL_24:
    AMAuthInstallLog(3, "AMAuthInstallApImg3CopyPersonalizedData", v30, v20, v21, v22, v23, v24, a3);
    v29 = &v35;
LABEL_25:
    v17 = 0;
    *a6 = CFRetain(*v29);
    goto LABEL_10;
  }

  v25 = Value;
  v26 = CFDictionaryGetValue(Value, @"Blob");
  if (!v26)
  {
    v30 = "response missing personalization data for %@";
    goto LABEL_24;
  }

  v27 = v26;
  v28 = CFDictionaryGetValue(v25, @"PartialDigest");
  if (!v28)
  {
    v30 = "response missing partial digest for %@";
    goto LABEL_24;
  }

  v29 = &v34;
  v16 = AMAuthInstallApImg3CreatePersonalizedData(a1, v35, v27, v28, &v34);
  if (!v16)
  {
    goto LABEL_25;
  }

LABEL_8:
  v17 = v16;
LABEL_10:
  SafeRelease(v36);
  SafeRelease(v10);
  SafeRelease(theDict);
  SafeRelease(v35);
  SafeRelease(v34);
  return v17;
}

const __CFData *AMAuthInstallApImg3IsImg3Payload(const __CFData *result)
{
  if (result)
  {
    BytePtr = CFDataGetBytePtr(result);
    return (tss_image_is_img3(BytePtr) == 0);
  }

  return result;
}

uint64_t AMAuthInstallApImg3IsFinalized(const __CFAllocator *a1, const void *a2, BOOL *a3)
{
  theData = 0;
  DataFromFileURL = AMAuthInstallSupportCreateDataFromFileURL(a1, &theData, a2);
  if (!DataFromFileURL)
  {
    BytePtr = CFDataGetBytePtr(theData);
    *a3 = tss_image_is_finalized(BytePtr, v6, v7, v8, v9, v10, v11, v12) == 0;
  }

  SafeRelease(theData);
  return DataFromFileURL;
}

uint64_t AMAuthInstallApImg3Finalize(const __CFAllocator *a1, const void *a2, const __CFURL *a3)
{
  v21 = 0;
  v22 = 0;
  theData = 0;
  v20 = 0;
  DataFromFileURL = AMAuthInstallSupportCreateDataFromFileURL(a1, &theData, a2);
  if (DataFromFileURL)
  {
    v16 = DataFromFileURL;
    v12 = 0;
    v15 = 0;
  }

  else
  {
    MutableCopy = CFDataCreateMutableCopy(a1, 0, theData);
    v12 = MutableCopy;
    if (MutableCopy)
    {
      BytePtr = CFDataGetBytePtr(MutableCopy);
      Length = CFDataGetLength(v12);
      if (image3InstantiateFromBuffer(&v20, BytePtr, Length, 1))
      {
        v15 = 0;
        v16 = 9;
        v17 = "%s: invalid image 3 object";
LABEL_10:
        AMAuthInstallLog(3, "AMAuthInstallApImg3Finalize", v17, v6, v7, v8, v9, v10, "AMAuthInstallApImg3Finalize");
        goto LABEL_11;
      }

      if (image3Finalize(v20, &v22, &v21, 1, 0))
      {
        v15 = 0;
        v16 = 14;
        v17 = "%s: failed to finalize image";
        goto LABEL_10;
      }

      v15 = CFDataCreate(a1, v22, v21);
      if (v15)
      {
        v16 = AMAuthInstallSupportWriteDataToFileURL(a1, v15, a3, 1);
        if (!v16)
        {
          goto LABEL_11;
        }

        v17 = "%s: failed to write finalized image3";
        goto LABEL_10;
      }

      v16 = 0;
    }

    else
    {
      v15 = 0;
      v16 = 2;
    }
  }

LABEL_11:
  if (v20)
  {
    image3Discard(&v20);
  }

  if (v16)
  {
    AMAuthInstallLog(8, "AMAuthInstallApImg3Finalize", "%s: %@", v6, v7, v8, v9, v10, "AMAuthInstallApImg3Finalize");
  }

  SafeRelease(theData);
  SafeRelease(v12);
  SafeRelease(v15);
  return v16;
}

uint64_t AMAuthInstallApImg3CopyRequestTag(int a1, CFDataRef theData, void *a3)
{
  v30 = 0;
  v28 = 0;
  v3 = 1;
  if (!theData || !a3)
  {
    goto LABEL_13;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (image3InstantiateFromBuffer(&v28, BytePtr, Length, 0))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg3CopyRequestTag", "%s: invalid image 3 object", v8, v9, v10, v11, v12, "AMAuthInstallApImg3CopyRequestTag");
  }

  else
  {
    if (!image3GetTagSignedNumber(v28, 1415139397, &v30, 0))
    {
      __s1 = bswap32(v30);
      v30 = __s1;
      v18 = off_1000A92E8;
      v19 = 28;
      do
      {
        if (CFStringGetCString(*v18, buffer, 5, 0x8000100u) && !memcmp(&__s1, buffer, 5uLL))
        {
          v26 = CFRetain(*(v18 - 1));
          *a3 = v26;
          if (v26)
          {
            goto LABEL_10;
          }

          goto LABEL_15;
        }

        v18 += 2;
        --v19;
      }

      while (v19);
      if (*a3)
      {
LABEL_10:
        v3 = 0;
        goto LABEL_11;
      }

LABEL_15:
      AMAuthInstallLog(3, "AMAuthInstallApImg3CopyRequestTag", "failed to find entry for %@", v20, v21, v22, v23, v24, 0);
      v3 = 8;
      goto LABEL_11;
    }

    AMAuthInstallLog(3, "AMAuthInstallApImg3CopyRequestTag", "%s: failed to get tag", v13, v14, v15, v16, v17, "AMAuthInstallApImg3CopyRequestTag");
  }

  v3 = 9;
LABEL_11:
  if (v28)
  {
    image3Discard(&v28);
  }

LABEL_13:
  SafeRelease(0);
  return v3;
}

uint64_t AMAuthInstallApImg4CreateRequestTagFromFileURL(const __CFAllocator *a1, CFStringRef theString, CFStringRef stringToFind, CFStringRef *a4, CFURLRef *a5)
{
  v5 = 0;
  cf = 0;
  v6 = 1;
  if (!theString || !stringToFind || !a4)
  {
    v9 = 0;
    goto LABEL_16;
  }

  v9 = 0;
  if (a5)
  {
    location = CFStringFind(theString, stringToFind, 0).location;
    if (location == -1)
    {
      v17 = CFURLCreateWithFileSystemPath(a1, theString, kCFURLPOSIXPathStyle, 0);
      *a5 = v17;
      if (v17)
      {
        DataFromMappedFileURL = AMAuthInstallSupportCreateDataFromMappedFileURL(a1, &cf, v17);
        if (DataFromMappedFileURL)
        {
          v6 = DataFromMappedFileURL;
          AMAuthInstallLog(3, "AMAuthInstallApImg4CreateRequestTagFromFileURL", "failed to create file from %@", v20, v21, v22, v23, v24, theString);
          v5 = 0;
        }

        else
        {
          v25 = AMAuthInstallApImg4CopyPayloadType(a1, cf, v19, v20, v21, v22, v23, v24);
          v5 = v25;
          if (v25)
          {
            EntryNameForType = AMAuthInstallApImg4GetEntryNameForType(v25);
            *a4 = EntryNameForType;
            if (!EntryNameForType)
            {
              AMAuthInstallLog(3, "AMAuthInstallApImg4CreateRequestTagFromFileURL", "entry not found for %@", v32, v33, v34, v35, v36, v5);
              v9 = 0;
              v6 = 8;
              goto LABEL_16;
            }

            CFRetain(EntryNameForType);
            v9 = 0;
LABEL_15:
            v6 = 0;
            goto LABEL_16;
          }

          AMAuthInstallLog(3, "AMAuthInstallApImg4CreateRequestTagFromFileURL", "failed to get payload type from %@", v26, v27, v28, v29, v30, theString);
        }

        v9 = 0;
        goto LABEL_16;
      }

      sub_100007154();
    }

    else
    {
      v13 = location;
      v14 = location + 1;
      v39.length = CFStringGetLength(theString) - (location + 1);
      v39.location = v14;
      v9 = CFStringCreateWithSubstring(a1, theString, v39);
      if (v9)
      {
        v15 = CFURLCreateWithFileSystemPath(a1, v9, kCFURLPOSIXPathStyle, 0);
        *a5 = v15;
        if (v15)
        {
          v40.location = 0;
          v40.length = v13;
          v16 = CFStringCreateWithSubstring(a1, theString, v40);
          v5 = 0;
          *a4 = v16;
          if (!v16)
          {
            goto LABEL_20;
          }

          goto LABEL_15;
        }
      }

      v5 = 0;
    }

LABEL_20:
    v6 = 2;
  }

LABEL_16:
  SafeRelease(cf);
  SafeRelease(v5);
  SafeRelease(0);
  SafeRelease(v9);
  return v6;
}

const __CFData *AMAuthInstallApImg4IsImg4Payload(int a1, CFDataRef theData)
{
  v2 = theData;
  v42[0] = 0;
  v42[1] = 0;
  v40 = 0;
  v41 = 0;
  HIDWORD(v39) = 0;
  if (!theData)
  {
    goto LABEL_13;
  }

  HIDWORD(v41) = CFDataGetLength(theData);
  BytePtr = CFDataGetBytePtr(v2);
  v4 = DERDecoderInitialize(v42, BytePtr, &v41 + 1, HIDWORD(v41));
  if (v4 || (v12 = sub_10000716C(v4, v5, v6, v7, v8, v9, v10, v11, v37, v39, v40, v41, v42[0]), DERDecoderGetDataWithTag(v12, v13, 0x10u, 1, v14, v15, v16)) || (v17 = DERDecoderInitialize(v42, v40, &v39 + 1, HIDWORD(v39)), v17) || (LODWORD(v41) = 0, v25 = sub_10000716C(v17, v18, v19, v20, v21, v22, v23, v24, v38, v39, v40, v41, v42[0]), DERDecoderGetDataWithTag(v25, v26, 0x16u, 0, v27, v28, v29)))
  {
    v2 = 0;
LABEL_13:
    v35 = 0;
    goto LABEL_11;
  }

  sub_100007148();
  v34 = CFStringCreateWithBytes(v30, v31, v32, v33, 0);
  v35 = v34;
  v2 = (v34 && (CFStringCompare(v34, @"IMG4", 0) == kCFCompareEqualTo || CFStringCompare(v35, @"IM4P", 0) == kCFCompareEqualTo));
LABEL_11:
  SafeRelease(v35);
  return v2;
}

uint64_t AMAuthInstallApImg4CopyPayload(const __CFAllocator *a1, const void *a2, CFTypeRef *a3)
{
  cf = 0;
  v3 = 1;
  if (a2 && a3)
  {
    v5 = a1;
    DataFromMappedFileURL = AMAuthInstallSupportCreateDataFromMappedFileURL(a1, &cf, a2);
    if (DataFromMappedFileURL)
    {
      v3 = DataFromMappedFileURL;
    }

    else if (AMAuthInstallApImg4IsImg4Payload(v5, cf))
    {
      v3 = 0;
      *a3 = CFRetain(cf);
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4CopyPayload", "object is not a valid img4/im4p type", v7, v8, v9, v10, v11, v13);
      v3 = 23;
    }
  }

  SafeRelease(cf);
  return v3;
}

uint64_t AMAuthInstallApImg4CreateMeasurementsWithTag(uint64_t a1, uint64_t a2, uint64_t a3, int a4, CFTypeRef *a5)
{
  value = 0;
  cf = 0;
  v127 = 0;
  v128 = 0;
  v5 = 1;
  if (!a2)
  {
    sub_100007208();
    goto LABEL_42;
  }

  sub_100007208();
  if (v10)
  {
    v11 = v9;
    v12 = v8;
    v13 = v7;
    v14 = CFURLCopyFileSystemPath(v8, kCFURLPOSIXPathStyle);
    v15 = v14;
    if (!v14)
    {
      goto LABEL_77;
    }

    if (CFStringFind(v14, @"=", 0).location == -1)
    {
      v22 = CFRetain(v12);
      if (v11)
      {
        goto LABEL_13;
      }

      goto LABEL_25;
    }

    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(v13, v15, @"=");
    v17 = ArrayBySeparatingStrings;
    if (!ArrayBySeparatingStrings)
    {
      goto LABEL_77;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
    v19 = ValueAtIndex;
    if (ValueAtIndex)
    {
      if (!v11)
      {
        TypeForEntryName = AMAuthInstallApImg4GetTypeForEntryName(ValueAtIndex);
        if (!TypeForEntryName)
        {
          goto LABEL_75;
        }

        v11 = TypeForEntryName;
        if (CFStringCompare(TypeForEntryName, v19, 0) == kCFCompareEqualTo)
        {
          v83 = sub_100007234(0, @"ftap");
          if (v83)
          {
            v84 = sub_100007234(v83, @"rfta");
            if (v84)
            {
              v85 = sub_100007234(v84, @"ftsp");
              if (v85)
              {
                if (sub_100007234(v85, @"rfts"))
                {
                  v11 = 0;
                }
              }
            }
          }
        }
      }

      v21 = CFArrayGetValueAtIndex(v17, 1);
      if (v21)
      {
        v22 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v21, kCFURLPOSIXPathStyle, 0);
        if (!v22)
        {
          goto LABEL_77;
        }

        if (v11)
        {
LABEL_13:
          sub_100007148();
          CFStringGetCString(v23, v24, v25, v26);
          DataFromMappedFileURL = AMAuthInstallSupportCreateDataFromMappedFileURL(v13, &cf, v22);
          if (DataFromMappedFileURL)
          {
            v5 = DataFromMappedFileURL;
            goto LABEL_42;
          }

          v28 = sub_10000719C();
          if (v28)
          {
            v5 = v28;
            v57 = "failed to create im4p with override tag";
          }

          else
          {
            AMSupportSafeRelease();
            cf = 0;
            if (AMAuthInstallCryptoCreateDigestForDataType(v13, v128, &value, a4) != 1)
            {
              v34 = AMSupportSafeRetain();
              AMSupportSafeRelease();
              v128 = 0;
              goto LABEL_17;
            }

            v5 = 1;
            v57 = "Unsupported digestType";
          }

LABEL_27:
          AMAuthInstallLog(3, "AMAuthInstallApImg4CreateMeasurementsWithTag", v57, v29, v30, v31, v32, v33, v123);
          goto LABEL_42;
        }

LABEL_25:
        v55 = AMAuthInstallSupportCreateDataFromMappedFileURL(v13, &cf, v22);
        if (!v55)
        {
          v34 = AMAuthInstallApImg4CopyPayloadType(v13, cf, v56, v29, v30, v31, v32, v33);
          AMAuthInstallCryptoCreateDigestForDataType(v13, cf, &value, a4);
          if (!value)
          {
            v5 = 3;
            AMAuthInstallLog(3, "AMAuthInstallApImg4CreateMeasurementsWithTag", "failed to create digest for %@ with error %d", v64, v65, v66, v67, v68, v22);
            goto LABEL_42;
          }

          AMSupportSafeRelease();
          cf = 0;
LABEL_17:
          if (value)
          {
            Mutable = CFDictionaryCreateMutable(v13, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            v46 = Mutable;
            if (Mutable)
            {
              CFDictionarySetValue(Mutable, @"Digest", value);
              if (!v34)
              {
LABEL_41:
                v5 = 0;
                *a5 = CFRetain(v46);
                goto LABEL_42;
              }

              v48 = sub_10000724C(v47, @"sepi");
              if (v48)
              {
                if (sub_10000724C(v48, @"rsep"))
                {
                  goto LABEL_33;
                }

                v49 = AMAuthInstallApImg4CopyPayloadVersionProperty(v13, v22, 2, &v127);
                if (v49)
                {
                  AMAuthInstallLog(3, "AMAuthInstallApImg4CreateMeasurementsWithTag", "could not get tbmr property, status:%d\n", v50, v51, v52, v53, v54, v49);
                  goto LABEL_33;
                }
              }

              else
              {
                v58 = AMAuthInstallApImg4CopyPayloadVersionProperty(v13, v22, 1, &v127);
                if (v58)
                {
                  AMAuthInstallLog(3, "AMAuthInstallApImg4CreateMeasurementsWithTag", "could not get tbms property, status:%d\n", v59, v60, v61, v62, v63, v58);
                  goto LABEL_33;
                }
              }

              CFDictionarySetValue(v46, @"TBMDigests", v127);
LABEL_33:
              v136 = 0;
              theData = 0;
              BytePtr = 0;
              bzero(v138, 0xA0uLL);
              v134 = 0;
              if (!v22)
              {
                v76 = 0;
                v5 = 1;
                goto LABEL_40;
              }

              v69 = AMAuthInstallApImg4CopyPayload(v13, v22, &theData);
              if (v69)
              {
                v5 = v69;
                v76 = 0;
                goto LABEL_40;
              }

              BytePtr = CFDataGetBytePtr(theData);
              v136 = CFDataGetLength(theData);
              bzero(v138, 0xA0uLL);
              v70 = DERImg4DecodePayloadWithProperties(&BytePtr, v138);
              if (v70)
              {
                AMAuthInstallLog(7, "AMAuthInstallCopyPayloadPropertiesToMeasurementDictionary", "failed to decode img4 payload with properties (error=%d), assuming no properties", v71, v72, v73, v74, v75, v70);
LABEL_38:
                v76 = 0;
LABEL_39:
                v5 = 0;
                goto LABEL_40;
              }

              if (!v139)
              {
                goto LABEL_38;
              }

              *bytes = 0u;
              *length = 0u;
              v131 = 0u;
              v86 = sub_10000724C(v70, @"sepi");
              if (v86)
              {
                v93 = sub_10000724C(v86, @"rsep");
                if (v93)
                {
                  goto LABEL_59;
                }

                if (sub_1000071C0(0, 1952607602, v94, v95, v96, v97, v98, v99, v123, v124) || (v92 = bytes[1]) == 0)
                {
                  AMAuthInstallLog(3, "AMAuthInstallCopyPayloadPropertiesToMeasurementDictionary", "could not get tbmr payload property, status:%d\n", v100, v101, v102, v103, v104, 23);
                  goto LABEL_59;
                }
              }

              else if (sub_10005BF44(&BytePtr, 0xE000000074626D73, &v131) || (v92 = bytes[1]) == 0)
              {
                AMAuthInstallLog(3, "AMAuthInstallCopyPayloadPropertiesToMeasurementDictionary", "could not get tbms payload property, status:%d\n", v87, v88, v89, v90, v91, 23);
                goto LABEL_59;
              }

              v105 = CFDataCreate(v13, v92, length[0]);
              if (!v105)
              {
                goto LABEL_84;
              }

              v106 = v105;
              CFDictionarySetValue(v46, @"TBMDigests", v105);
              SafeRelease(v106);
LABEL_59:
              v107 = sub_1000071C0(v93, 1835884912, v94, v95, v96, v97, v98, v99, v123, v124);
              if (!v107 && bytes[1])
              {
                v114 = CFDataCreate(v13, bytes[1], length[0]);
                if (!v114)
                {
                  goto LABEL_84;
                }

                v115 = v114;
                CFDictionarySetValue(v46, @"MemoryMap", v114);
                SafeRelease(v115);
              }

              if (sub_1000071C0(v107, 1919181927, v108, v109, v110, v111, v112, v113, v123, v125) || !bytes[1])
              {
                goto LABEL_67;
              }

              v116 = CFDataCreate(v13, bytes[1], length[0]);
              if (v116)
              {
                v117 = v116;
                CFDictionarySetValue(v46, @"RawDataDigest", v116);
                SafeRelease(v117);
LABEL_67:
                v76 = CFDataCreate(v13, v139, v140);
                AMAuthInstallCryptoCreateDigestForDataType(v13, v76, &v134, a4);
                if (v134)
                {
                  CFDictionarySetValue(v46, @"ObjectPayloadPropertyDigest", v134);
                  goto LABEL_39;
                }

                AMAuthInstallLog(3, "AMAuthInstallCopyPayloadPropertiesToMeasurementDictionary", "created digest is NULL", v118, v119, v120, v121, v122, v123);
                goto LABEL_86;
              }

LABEL_84:
              v76 = 0;
LABEL_86:
              v5 = 2;
LABEL_40:
              SafeRelease(v134);
              SafeRelease(v76);
              SafeRelease(0);
              SafeRelease(theData);
              if (v5)
              {
                AMAuthInstallLog(3, "AMAuthInstallApImg4CreateMeasurementsWithTag", "failed to copy payload properties to measurement dictionary.", v77, v78, v79, v80, v81, v123);
                goto LABEL_42;
              }

              goto LABEL_41;
            }

            AMAuthInstallLog(3, "AMAuthInstallApImg4CreateMeasurementsWithTag", "failed to create mutable dict measurementDict", v41, v42, v43, v44, v45, v123);
          }

          else
          {
            AMAuthInstallLog(3, "AMAuthInstallApImg4CreateMeasurementsWithTag", "created digest is NULL", v35, v36, v37, v38, v39, v123);
          }

LABEL_77:
          v5 = 2;
          goto LABEL_42;
        }

        v5 = v55;
        LOBYTE(v123) = v22;
        v57 = "Failed to read file %@: error=%d";
        goto LABEL_27;
      }
    }

LABEL_75:
    v5 = 8;
  }

LABEL_42:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v5;
}

uint64_t AMAuthInstallApImg4CreateServerRequestDictionary(void *a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  cf = 0;
  v3 = 1;
  if (a1 && a2 && a3)
  {
    v7 = CFGetAllocator(a1);
    cf = CFDictionaryCreateMutable(v7, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (cf)
    {
      v8 = CFGetAllocator(a1);
      v9 = AMAuthInstallSupportApplyDictionaryOverrides(v8, a2, &cf, 0);
      if (v9)
      {
        v3 = v9;
        AMAuthInstallLog(3, "AMAuthInstallApImg4CreateServerRequestDictionary", "failed to apply measurements override", v10, v11, v12, v13, v14, v16);
      }

      else
      {
        v3 = AMAuthInstallApImg4ServerRequestAddRequiredTagsWithRecoveryOS(a1, cf, 1, 0);
        if (!v3)
        {
          *a3 = CFRetain(cf);
        }
      }
    }

    else
    {
      v3 = 2;
    }
  }

  SafeRelease(cf);
  return v3;
}

uint64_t AMAuthInstallApImg4SetSepNonce(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 1;
  }

  result = 1;
  if (cf && *(a1 + 16))
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFDataGetTypeID() && CFDataGetLength(cf) == 20)
    {
      SafeRelease(*(*(a1 + 16) + 48));
      v6 = CFRetain(cf);
      return sub_1000071F4(v6);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t AMAuthInstallApImg4SetSepNonceSlotID(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 1;
  }

  if (!*(a1 + 16))
  {
    return 1;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFNumberGetTypeID())
  {
    return 1;
  }

  CFRetain(cf);
  SafeRelease(*(*(a1 + 16) + 56));
  result = 0;
  *(*(a1 + 16) + 56) = cf;
  return result;
}

uint64_t AMAuthInstallApImg4ServerRequestAddUIDMode(uint64_t a1, CFDictionaryRef theDict)
{
  if (!a1)
  {
    return 1;
  }

  result = 1;
  if (theDict)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = *(v5 + 184);
      if (CFDictionaryContainsKey(theDict, @"UniqueBuildID") || CFDictionaryContainsKey(theDict, @"UID_MODE"))
      {
        return 0;
      }

      if (v6)
      {
        v7 = v6 == kCFBooleanFalse;
      }

      else
      {
        v7 = 1;
      }

      if (!v7 || *(*(a1 + 16) + 192) == kCFBooleanTrue || (result = CFDictionaryContainsKey(theDict, @"SepNonce"), !kCFBooleanTrue) || result)
      {
        if (v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = kCFBooleanFalse;
        }

        CFDictionarySetValue(theDict, @"UID_MODE", v8);
        return 0;
      }
    }
  }

  return result;
}

uint64_t AMAuthInstallApImg4ServerRequestAddRequiredTagsWithRecoveryOS(void *a1, __CFDictionary *a2, int a3, int a4)
{
  if (!a1)
  {
    return 1;
  }

  result = 1;
  if (a2)
  {
    v7 = a1[2];
    if (v7)
    {
      v10 = *(v7 + 132);
      v11 = *(v7 + 88);
      v12 = kAMAuthInstallTagX86SecurityMode;
      if (!v10)
      {
        v12 = kAMAuthInstallTagApSecurityMode;
      }

      _CFDictionarySetBoolean(a2, *v12, v11);
      v14 = a1[2];
      if (*(v14 + 90))
      {
        if (*(v14 + 132))
        {
          v15 = kAMAuthInstallTagX86AllowMixAndMatch;
        }

        else
        {
          v15 = kAMAuthInstallTagApAllowMixAndMatch;
        }

        CFDictionarySetValue(a2, *v15, kCFBooleanTrue);
      }

      v16 = a1[2];
      if (v16[91])
      {
        sub_1000071DC(v13, @"Ap,InternalUseOnlySW");
        v16 = a1[2];
      }

      if (v16[132])
      {
        _CFDictionarySetBoolean(a2, @"x86,ProductionMode", v16[20]);
        if (*(a1[2] + 95))
        {
          _CFDictionarySetInteger32(a2, @"x86,UseGlobalSigning", 1);
        }

        if (!a3)
        {
          goto LABEL_39;
        }

        v18 = *(a1[2] + 24);
        if (v18)
        {
          CFDictionarySetValue(a2, @"x86,Nonce", v18);
        }

        sub_1000071DC(v17, @"@x86,Ticket");
      }

      else
      {
        if (v16[95])
        {
          _CFDictionarySetInteger32(a2, @"Ap,UseGlobalSigning", 1);
        }

        if (!a3)
        {
          goto LABEL_39;
        }
      }

      v19 = a1[2];
      if (!*(v19 + 132))
      {
        sub_1000071DC(v13, @"@ApImg4Ticket");
        v19 = a1[2];
      }

      v20 = *(v19 + 24);
      if (v20)
      {
        CFDictionarySetValue(a2, @"ApNonce", v20);
        v19 = a1[2];
      }

      v21 = *(v19 + 48);
      if (v21)
      {
        CFDictionarySetValue(a2, @"SepNonce", v21);
        v19 = a1[2];
      }

      v22 = *(v19 + 40);
      if (v22)
      {
        CFDictionarySetValue(a2, @"Ap,SoftwareNonceForUpdateFreshness", v22);
        v19 = a1[2];
      }

      v23 = *(v19 + 136);
      if (v23)
      {
        CFDictionarySetValue(a2, @"@BCert", v23);
        sub_1000071DC(v24, @"@Managed");
        v19 = a1[2];
      }

      v25 = *(v19 + 144);
      if (v25)
      {
        CFDictionarySetValue(a2, @"@BCert", v25);
        sub_1000071DC(v26, @"@AlternateSU");
        v19 = a1[2];
      }

      v27 = *(v19 + 176);
      if (v27)
      {
        CFDictionarySetValue(a2, @"Ap,SikaFuse", v27);
        v19 = a1[2];
      }

      v28 = *(v19 + 208);
      if (v28)
      {
        CFDictionarySetValue(a2, @"Ap,DisablePlatformOnlyCode", v28);
      }

LABEL_39:
      result = AMAuthInstallApImg3ServerRequestAddRequiredTags(a1, a2, 0, a4);
      if (!result)
      {

        return AMAuthInstallApImg4ServerRequestAddUIDMode(a1, a2);
      }
    }
  }

  return result;
}

uint64_t AMAuthInstallApImg4StitchData(const void **a1, uint64_t a2, const void *a3, uint64_t a4, CFDictionaryRef theDict, int a6)
{
  v6 = 0;
  v53 = 0;
  v54 = 0;
  v7 = 1;
  if (a3 && a4)
  {
    if (a6)
    {
      Value = 0;
    }

    else
    {
      if (!theDict)
      {
LABEL_20:
        v6 = 0;
        goto LABEL_14;
      }

      Value = CFDictionaryGetValue(theDict, a1[11]);
      if (!Value)
      {
        v51 = a1[11];
        AMAuthInstallLog(3, "AMAuthInstallApImg4StitchData", "%s: could not find ticket %@ data in response.", v13, v14, v15, v16, v17, "AMAuthInstallApImg4StitchData");
        v6 = 0;
        v7 = 8;
        goto LABEL_14;
      }
    }

    if (a2)
    {
      sub_100007148();
      CFStringGetCString(v18, v19, v20, v21);
      v22 = CFGetAllocator(a1);
      DataFromMappedFileURL = AMAuthInstallSupportCreateDataFromMappedFileURL(v22, &v54, a3);
      if (DataFromMappedFileURL)
      {
        v7 = DataFromMappedFileURL;
      }

      else
      {
        v24 = sub_10000719C();
        if (!v24)
        {
          SafeRelease(v54);
          v54 = 0;
          CFGetAllocator(a1);
          Length = CFDataGetLength(v53);
          v7 = sub_10000596C(a4, Value, Length, v53, sub_100005BBC, v31, v32, v33);
          v6 = 0;
          if (!v7)
          {
            goto LABEL_14;
          }

LABEL_17:
          AMAuthInstallLog(3, "AMAuthInstallApImg4StitchData", "failed to write stitched data to %@", v34, v35, v36, v37, v38, a4);
          goto LABEL_14;
        }

        v7 = v24;
        AMAuthInstallLog(3, "AMAuthInstallApImg4StitchData", "failed to recreate", v25, v26, v27, v28, v29, v50);
      }

      goto LABEL_20;
    }

    v6 = AMAuthInstallPlatformOpenFileStreamWithURL();
    if (v6)
    {
      bzero(&v52, 0x90uLL);
      v39 = fileno(v6);
      fstat(v39, &v52);
      CFGetAllocator(a1);
      v7 = sub_10000596C(a4, Value, LODWORD(v52.st_size), v6, sub_100005C18, v40, v41, v42);
      if (!v7)
      {
        goto LABEL_14;
      }

      goto LABEL_17;
    }

    v44 = __error();
    strerror(*v44);
    AMAuthInstallLog(3, "AMAuthInstallApImg4StitchData", "failed to open file %@, error=%s", v45, v46, v47, v48, v49, a3);
    v7 = 4;
  }

LABEL_14:
  SafeRelease(v54);
  SafeRelease(v53);
  if (v6)
  {
    fclose(v6);
  }

  return v7;
}

uint64_t AMAuthInstallApImg4PersonalizeFile(uint64_t a1, CFURLRef anURL, const void *a3, const void *a4)
{
  *v57 = 0;
  key = 0;
  v55 = 0;
  value = 0;
  theDict = 0;
  if (!a1)
  {
    sub_100007154();
    PersonalizedResponse = 1;
    goto LABEL_24;
  }

  v4 = 0;
  PersonalizedResponse = 1;
  if (!a3 || !anURL)
  {
    TypeForEntryName = 0;
    goto LABEL_24;
  }

  TypeForEntryName = 0;
  if (*(a1 + 16))
  {
    v4 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
    if (!v4)
    {
      TypeForEntryName = 0;
      goto LABEL_30;
    }

    v10 = CFGetAllocator(a1);
    RequestTagFromFileURL = AMAuthInstallApImg4CreateRequestTagFromFileURL(v10, v4, @"=", &key, v57);
    if (RequestTagFromFileURL)
    {
      PersonalizedResponse = RequestTagFromFileURL;
      AMAuthInstallLog(3, "AMAuthInstallApImg4PersonalizeFile", "could not get request tag from path %@", v12, v13, v14, v15, v16, v4);
    }

    else
    {
      TypeForEntryName = 0;
      PersonalizedResponse = 14;
      if (!key || !*v57)
      {
        goto LABEL_24;
      }

      if (a4)
      {
        value = CFRetain(a4);
        goto LABEL_13;
      }

      TypeForEntryName = AMAuthInstallApImg4GetTypeForEntryName(key);
      if (!TypeForEntryName)
      {
        goto LABEL_34;
      }

      v17 = CFGetAllocator(a1);
      MeasurementsWithTag = AMAuthInstallApImg4CreateMeasurementsWithTag(v17, *v57, TypeForEntryName, *(*(a1 + 16) + 128), &value);
      if (!MeasurementsWithTag)
      {
LABEL_13:
        v24 = CFGetAllocator(a1);
        Mutable = CFDictionaryCreateMutable(v24, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        TypeForEntryName = Mutable;
        if (Mutable)
        {
          CFDictionaryAddValue(Mutable, key, value);
          ServerRequestDictionary = AMAuthInstallApImg4CreateServerRequestDictionary(a1, TypeForEntryName, &v55);
          if (ServerRequestDictionary)
          {
            PersonalizedResponse = ServerRequestDictionary;
            v52 = "failed to create request dict";
            goto LABEL_37;
          }

          PersonalizedResponse = AMAuthInstallApCreatePersonalizedResponse(a1, v55, &theDict);
          if (PersonalizedResponse || !theDict)
          {
            v52 = "failed to create response dict";
            goto LABEL_37;
          }

          if (CFDictionaryGetValue(theDict, *(a1 + 88)))
          {
            v42 = AMAuthInstallApImg4GetTypeForEntryName(key);
            if (v42)
            {
              v43 = v42;
              if (CFStringCompare(v42, key, 0))
              {
                v44 = v43;
              }

              else
              {
                v44 = 0;
              }

              v45 = AMAuthInstallApImg4StitchData(a1, v44, *v57, a3, theDict, 0);
              if (v45)
              {
                PersonalizedResponse = v45;
                AMAuthInstallLog(3, "AMAuthInstallApImg4PersonalizeFile", "failed to stitch ticket to %@", v46, v47, v48, v49, v50, a3);
                goto LABEL_24;
              }

              PersonalizedResponse = AMAuthInstallApImg4StitchRestoreInfoWithAMAI(key, a3, theDict, 0, a1);
              if (!PersonalizedResponse)
              {
                goto LABEL_24;
              }

              v53 = a3;
              v52 = "failed to stitch restore info to %@";
LABEL_37:
              AMAuthInstallLog(3, "AMAuthInstallApImg4PersonalizeFile", v52, v32, v33, v34, v35, v36, v53);
              goto LABEL_24;
            }
          }

          else
          {
            AMAuthInstallLog(3, "AMAuthInstallApImg4PersonalizeFile", "Ap ticket not found in response", v37, v38, v39, v40, v41, v53);
          }

LABEL_34:
          PersonalizedResponse = 8;
          goto LABEL_24;
        }

        AMAuthInstallLog(3, "AMAuthInstallApImg4PersonalizeFile", "failed to create mutable dict measurementDict", v26, v27, v28, v29, v30, v53);
LABEL_30:
        PersonalizedResponse = 2;
        goto LABEL_24;
      }

      PersonalizedResponse = MeasurementsWithTag;
      AMAuthInstallLog(3, "AMAuthInstallApImg4PersonalizeFile", "could not measure %@", v19, v20, v21, v22, v23, v4);
    }

    TypeForEntryName = 0;
  }

LABEL_24:
  SafeRelease(v4);
  SafeRelease(key);
  SafeRelease(*v57);
  SafeRelease(value);
  SafeRelease(TypeForEntryName);
  SafeRelease(v55);
  SafeRelease(theDict);
  return PersonalizedResponse;
}

uint64_t AMAuthInstallApImg4ForceServerSigning(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = *(a1 + 16);
  result = 1;
  if (v1)
  {
    *(v1 + 94) = 1;
    return 0;
  }

  return result;
}

uint64_t AMAuthInstallApImg4SetParameters(uint64_t a1, CFDictionaryRef theDict, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 1;
  }

  if (!*(a1 + 16))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4SetParameters", "%s: make sure to call AMAuthInstallApSetParameters first", a4, a5, a6, a7, a8, "AMAuthInstallApImg4SetParameters");
    return 1;
  }

  if (!theDict)
  {
    return 1;
  }

  Value = CFDictionaryGetValue(theDict, @"ApCertificateEpoch");
  if (Value)
  {
    v11 = Value;
    v12 = CFGetTypeID(Value);
    if (v12 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      if (CFNumberGetValue(v11, kCFNumberIntType, &valuePtr))
      {
        *(*(a1 + 16) + 84) = valuePtr;
      }
    }
  }

  v13 = CFDictionaryGetValue(theDict, @"ApLeafCertStatus");
  if (v13)
  {
    v14 = v13;
    v15 = CFGetTypeID(v13);
    if (v15 == CFBooleanGetTypeID())
    {
      *(*(a1 + 16) + 89) = CFBooleanGetValue(v14);
    }
  }

  v16 = CFDictionaryGetValue(theDict, @"ApAllowMixAndMatch");
  if (v16)
  {
    v17 = v16;
    v18 = CFGetTypeID(v16);
    if (v18 == CFBooleanGetTypeID())
    {
      *(*(a1 + 16) + 90) = CFBooleanGetValue(v17);
    }
  }

  result = CFDictionaryGetValue(theDict, @"SepNonce");
  if (result)
  {
    v20 = result;
    v21 = CFGetTypeID(result);
    if (v21 == CFDataGetTypeID())
    {
      SafeRelease(*(*(a1 + 16) + 48));
      v22 = CFRetain(v20);
      return sub_1000071F4(v22);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AMAuthInstallApImg4DecodeRestoreInfo(const __CFData *a1, CFMutableDictionaryRef *a2)
{
  if (!a1 || !*a2)
  {
    return 1;
  }

  bzero(v38, 0x1C8uLL);
  v37[0] = 0;
  v37[1] = 0;
  v36[0] = 0;
  v36[1] = 0;
  v35 = 0;
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  Img4DecodeInit(BytePtr, Length, v38);
  if (v11)
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4DecodeRestoreInfo", "Img4DecodeInit img4 decode failed.", v6, v7, v8, v9, v10, v28);
  }

  else
  {
    if (!DERDecodeSeqContentInit(&v39, v37))
    {
      while (1)
      {
        do
        {
          while (1)
          {
            v12 = DERDecodeSeqNext(v37, &v35);
            if (!v12)
            {
              break;
            }

            if (v12 == 1)
            {
              return 0;
            }
          }

          v33 = 0;
          v34[0] = 0;
          v34[1] = 0;
          v32[0] = 0;
          v32[1] = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
        }

        while (DERDecodeItem(v36, &v33) || DERDecodeSeqContentInit(v34, v32) || DERDecodeSeqNext(v32, &v29) || v29 != 22);
        sub_100007148();
        v17 = CFStringCreateWithBytes(v13, v14, v15, v16, 0);
        if (v17)
        {
          if (!DERDecodeSeqNext(v32, &v29))
          {
            break;
          }
        }

LABEL_34:
        SafeRelease(v17);
      }

      if (v29 == 1)
      {
        LOBYTE(v28) = 0;
        if (DERParseBoolean(&v30, &v28))
        {
          return 23;
        }

        if (v28)
        {
          v24 = kCFBooleanFalse;
        }

        else
        {
          v24 = kCFBooleanTrue;
        }

        if (!v24)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v29 != 2)
        {
          if (v29 == 4)
          {
            v22 = CFDataCreate(kCFAllocatorDefault, v30, v31);
          }

          else
          {
            if (v29 != 22)
            {
              goto LABEL_34;
            }

            sub_100007148();
            v22 = CFStringCreateWithBytes(v18, v19, v20, v21, 0);
          }

          v25 = v22;
          if (v22)
          {
            CFDictionarySetValue(*a2, v17, v22);
          }

          v26 = v25;
          goto LABEL_33;
        }

        v28 = 0;
        if (DERParseInteger64(&v30, &v28))
        {
          return 23;
        }

        v23 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &v28);
        if (!v23)
        {
LABEL_32:
          v26 = 0;
LABEL_33:
          SafeRelease(v26);
          goto LABEL_34;
        }

        v24 = v23;
      }

      CFDictionarySetValue(*a2, v17, v24);
      goto LABEL_32;
    }

    AMSupportLogInternal();
  }

  return 99;
}

uint64_t AMAuthInstallApImg4EncodeRestoreDict(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (!a1 || !a2)
  {
    sub_100007184();
    goto LABEL_41;
  }

  sub_100007184();
  if (!v5)
  {
    goto LABEL_41;
  }

  v6 = v4;
  v7 = DEREncoderCreate();
  if (!v7)
  {
    v3 = 0;
    v2 = 0;
    goto LABEL_41;
  }

  Count = CFDictionaryGetCount(v6);
  v9 = 8 * Count;
  v3 = malloc(v9);
  v10 = malloc(v9);
  v2 = v10;
  if (!v3 || !v10)
  {
    goto LABEL_41;
  }

  CFDictionaryGetKeysAndValues(v6, v3, v10);
  if (Count)
  {
    v16 = 0;
    v17 = 8 * Count;
    v18 = "%s: unexpected restore property type";
    while (1)
    {
      v19 = v3[v16 / 8];
      if (!v19 || (v20 = CFGetTypeID(v3[v16 / 8]), v20 != CFStringGetTypeID()))
      {
        v65 = "invalid overridesKey";
        goto LABEL_40;
      }

      v21 = v2[v16 / 8];
      if (!v21)
      {
        break;
      }

      v22 = CFGetTypeID(v21);
      if (v22 == CFDataGetTypeID())
      {
        if (AMAuthInstallApImg4AddDataProperty(v7, v19, v2[v16 / 8], v23, v24, v25, v26, v27))
        {
          goto LABEL_39;
        }
      }

      else
      {
        v28 = CFGetTypeID(v2[v16 / 8]);
        TypeID = CFBooleanGetTypeID();
        v30 = v2[v16 / 8];
        if (v28 == TypeID)
        {
          Value = CFBooleanGetValue(v30);
          if (AMAuthInstallApImg4AddBooleanProperty(v7, v19, Value, v32, v33, v34, v35, v36))
          {
            goto LABEL_39;
          }
        }

        else
        {
          v37 = CFGetTypeID(v30);
          if (v37 != CFNumberGetTypeID())
          {
            goto LABEL_38;
          }

          v43 = v2[v16 / 8];
          if (CFNumberGetType(v43) == kCFNumberSInt32Type)
          {
            if (AMAuthInstallApImg4AddInteger32Property(v7, v19, v43, v44, v45, v46, v47, v48))
            {
              goto LABEL_39;
            }
          }

          else
          {
            if (CFNumberGetType(v43) != kCFNumberSInt64Type)
            {
              v18 = "%s: unexpected integer type";
LABEL_38:
              AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreDict", v18, v38, v39, v40, v41, v42, "AMAuthInstallApImg4EncodeRestoreDict");
LABEL_39:
              v65 = "failed to encode restore property";
              goto LABEL_40;
            }

            if (AMAuthInstallApImg4AddInteger64Property(v7, v3[v16 / 8], v43, v38, v39, v40, v41, v42))
            {
              goto LABEL_39;
            }
          }
        }
      }

      v16 += 8;
      if (v17 == v16)
      {
        goto LABEL_25;
      }
    }

    v65 = "invalid overridesValue";
LABEL_40:
    AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreDict", v65, v11, v12, v13, v14, v15, v67);
    goto LABEL_41;
  }

LABEL_25:
  if (!DEREncoderCreate())
  {
LABEL_41:
    v63 = 3;
    goto LABEL_36;
  }

  sub_100007148();
  if (CFStringGetCString(v49, v50, v51, v52))
  {
    strlen(__s);
    sub_100007160();
    if (DEREncoderAddData())
    {
      v67 = @"IM4M";
      v66 = "failed to add %@ string";
      goto LABEL_52;
    }
  }

  if (DEREncoderAddSetFromEncoder())
  {
    v66 = "failed to encode restore info properties as set";
LABEL_52:
    AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreDict", v66, v53, v54, v55, v56, v57, v67);
    goto LABEL_41;
  }

  if (!DEREncoderCreate())
  {
LABEL_48:
    v63 = 2;
    goto LABEL_36;
  }

  if (DEREncoderAddSequenceFromEncoder())
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreDict", "failed to encode restore info sequence", v58, v59, v60, v61, v62, v67);
    goto LABEL_41;
  }

  if (DEREncoderCreateEncodedBuffer())
  {
    goto LABEL_41;
  }

  if (!DEREncoderCreate())
  {
    goto LABEL_48;
  }

  if (DEREncoderAddData() || DEREncoderCreateEncodedBuffer())
  {
    goto LABEL_41;
  }

  v63 = 0;
LABEL_36:
  SafeFree(v3);
  SafeFree(v2);
  SafeFree(0);
  DEREncoderDestroy();
  DEREncoderDestroy();
  DEREncoderDestroy();
  DEREncoderDestroy();
  return v63;
}

uint64_t AMAuthInstallApImg4CopyURLAddingExtension(const __CFAllocator *a1, CFURLRef url, CFTypeRef *a3)
{
  v3 = 0;
  v4 = 1;
  if (!url)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_6;
  }

  v6 = 0;
  v7 = 0;
  if (a3)
  {
    v3 = CFURLCopyPathExtension(url);
    v6 = CFURLCreateCopyDeletingPathExtension(a1, url);
    if (v6)
    {
      v10 = CFURLCreateCopyAppendingPathExtension(a1, v6, @"img4");
      v7 = v10;
      if (v10)
      {
        v4 = 0;
        *a3 = CFRetain(v10);
        goto LABEL_6;
      }
    }

    else
    {
      v7 = 0;
    }

    v4 = 2;
  }

LABEL_6:
  SafeRelease(v3);
  SafeRelease(v6);
  SafeRelease(v7);
  return v4;
}

uint64_t AMAuthInstallApImg4ReCreatePayloadWithProperties()
{
  v4 = 0;
  BytePtr = 0;
  Length = 0;
  PayloadWithProperties = 1;
  v6 = 0;
  sub_100007124();
  if (v9 && v14)
  {
    v15 = v9;
    v16 = v8;
    v17 = v7;
    v18 = v10;
    v1 = v11;
    v2 = v12;
    v3 = v13;
    v0 = v14;
    BytePtr = CFDataGetBytePtr(v9);
    Length = CFDataGetLength(v15);
    bzero(v40, 0x90uLL);
    v19 = DERImg4DecodePayload(&BytePtr, v40);
    if (v19)
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4ReCreatePayloadWithProperties", "failed to decode img4 payload, error:%d", v20, v21, v22, v23, v24, v19);
      v4 = 0;
      v6 = 0;
      sub_100007124();
      PayloadWithProperties = 99;
      goto LABEL_45;
    }

    if (v17 && !sub_100006E3C(__s1, v17))
    {
      v4 = strdup(v17);
      if (!v4)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (!__s1[0])
      {
        v4 = 0;
        goto LABEL_16;
      }

      v4 = strndup(__s1[0], __s1[1]);
      LOBYTE(PayloadWithProperties) = 0;
      if (!v4)
      {
        goto LABEL_16;
      }
    }

    if (!v16 || sub_100006E3C(v42, v16))
    {
      if (!v42[0])
      {
        goto LABEL_16;
      }

      v25 = strndup(v42[0], v42[1]);
      if (!v25)
      {
        goto LABEL_16;
      }

LABEL_18:
      if (v18)
      {
        v26 = CFRetain(v18);
        LOBYTE(PayloadWithProperties) = 1;
        if (!v26)
        {
LABEL_31:
          sub_100007124();
          PayloadWithProperties = 2;
LABEL_44:
          v6 = v25;
          goto LABEL_45;
        }
      }

      else
      {
        if (!v43)
        {
          goto LABEL_31;
        }

        v26 = sub_10000721C(0, v43, v44);
        if (!v26)
        {
          goto LABEL_31;
        }
      }

      v27 = v1;
      if (v1)
      {
        v27 = CFRetain(v1);
        v1 = v27;
        LOBYTE(PayloadWithProperties) = 1;
        if (!v2)
        {
          goto LABEL_33;
        }
      }

      else if (v45)
      {
        v27 = sub_10000721C(0, v45, v46);
        v1 = v27;
        if (!v27)
        {
          v2 = 0;
          goto LABEL_51;
        }

        if (!v2)
        {
LABEL_33:
          if (!v47)
          {
            v2 = 0;
            if (!v3)
            {
              goto LABEL_36;
            }

            goto LABEL_47;
          }

          v2 = sub_10000721C(v27, v47, v48);
          if (v2)
          {
            if (!v3)
            {
              goto LABEL_36;
            }

            goto LABEL_47;
          }

LABEL_51:
          v3 = 0;
          goto LABEL_52;
        }
      }

      else
      {
        v1 = 0;
        if (!v2)
        {
          goto LABEL_33;
        }
      }

      v2 = CFRetain(v2);
      LOBYTE(PayloadWithProperties) = 1;
      if (!v3)
      {
LABEL_36:
        bzero(v37, 0xA0uLL);
        v28 = DERImg4DecodePayloadWithProperties(&BytePtr, v37);
        if (v28)
        {
          AMAuthInstallLog(7, "AMAuthInstallApImg4ReCreatePayloadWithProperties", "failed to decode img4 payload with properties (error=%d), assuming no properties", v29, v30, v31, v32, v33, v28);
LABEL_38:
          v3 = 0;
          goto LABEL_41;
        }

        if (!v38)
        {
          goto LABEL_38;
        }

        v3 = sub_10000721C(v28, v38, v39);
        if (v3)
        {
LABEL_41:
          if ((PayloadWithProperties & 1) == 0)
          {
            PayloadWithProperties = 0;
            *v0 = CFRetain(v15);
LABEL_43:
            v0 = v26;
            goto LABEL_44;
          }

LABEL_48:
          PayloadWithProperties = AMAuthInstallApImg4CreatePayloadWithProperties(v4, v25, v26, v1, v2, v3, v0);
          goto LABEL_43;
        }

LABEL_52:
        PayloadWithProperties = 2;
        goto LABEL_43;
      }

LABEL_47:
      v3 = CFRetain(v3);
      goto LABEL_48;
    }

    v25 = strdup(v16);
    LOBYTE(PayloadWithProperties) = 1;
    if (v25)
    {
      goto LABEL_18;
    }

LABEL_16:
    v6 = 0;
    sub_100007124();
    PayloadWithProperties = 2;
  }

LABEL_45:
  SafeFree(v4);
  SafeFree(v6);
  SafeRelease(v0);
  SafeRelease(v1);
  SafeRelease(v2);
  SafeRelease(v3);
  return PayloadWithProperties;
}

uint64_t AMAuthInstallApImg4CreatePayloadWithProperties(const char *a1, const char *a2, const __CFData *a3, const __CFData *a4, const __CFData *a5, const __CFData *a6, CFDataRef *a7)
{
  v7 = 1;
  if (a1 && a2 && a3 && a7)
  {
    if (strlen(a1) != 4)
    {
      sub_100007154();
      goto LABEL_21;
    }

    if (!DEREncoderCreate() || !DEREncoderCreate())
    {
LABEL_34:
      v7 = 2;
      goto LABEL_21;
    }

    sub_100007160();
    if (DEREncoderAddData())
    {
      v20 = "failed to add payload tag to DER file";
    }

    else
    {
      sub_100007160();
      if (DEREncoderAddData())
      {
        v20 = "failed to add payload type to DER file";
      }

      else
      {
        strlen(a2);
        sub_100007138();
        if (DEREncoderAddData())
        {
          v20 = "failed to add payload version to DER file";
        }

        else
        {
          CFDataGetBytePtr(a3);
          CFDataGetLength(a3);
          sub_100007138();
          if (!DEREncoderAddDataNoCopy())
          {
            if (a4)
            {
              CFDataGetBytePtr(a4);
              CFDataGetLength(a4);
              sub_100007138();
              if (DEREncoderAddData())
              {
                v20 = "failed to add payloadKeybag to DER file";
                goto LABEL_33;
              }
            }

            if (a5)
            {
              CFDataGetBytePtr(a5);
              CFDataGetLength(a5);
              sub_100007138();
              if (DEREncoderAddData())
              {
                v20 = "failed to add payloadCompression to DER file";
                goto LABEL_33;
              }
            }

            if (!a6 || (CFDataGetBytePtr(a6), CFDataGetLength(a6), !DEREncoderAddData()))
            {
              if (DEREncoderAddDataFromEncoderNoCopy())
              {
                v20 = "failed to add payload to sequence";
              }

              else
              {
                if (!DEREncoderCreateEncodedBuffer())
                {
                  v7 = 0;
                  *a7 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, 0, 0, kCFAllocatorMalloc);
                  goto LABEL_21;
                }

                v20 = "failed to create DER encoded buffer: sequenceEncoder";
              }

              goto LABEL_33;
            }
          }

          v20 = "failed to add payload data to DER file";
        }
      }
    }

LABEL_33:
    AMAuthInstallLog(3, "AMAuthInstallApImg4CreatePayloadWithProperties", v20, v14, v15, v16, v17, v18, 0);
    goto LABEL_34;
  }

LABEL_21:
  DEREncoderDestroy();
  DEREncoderDestroy();
  return v7;
}

uint64_t sub_10005BF44(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  v13 = 0uLL;
  v12 = 0uLL;
  v11 = 0uLL;
  v10 = 0uLL;
  v5 = sub_100007058(a1, 0x2000000000000010, &v13);
  if (v5)
  {
    return v5;
  }

  v5 = sub_100007058(&v13, 0xA000000000000000, &v12);
  if (v5)
  {
    return v5;
  }

  v5 = sub_100007058(&v12, 0x2000000000000010, &v11);
  if (v5)
  {
    return v5;
  }

  v5 = sub_100007058(&v11, 0x2000000000000011, &v10);
  if (v5)
  {
    return v5;
  }

  v15 = 0uLL;
  v14 = 0;
  v6 = sub_100007058(&v10, a2, &v15);
  if (v6)
  {
    v8 = v6;
LABEL_14:
    AMSupportLogInternal();
    return v8;
  }

  v16 = xmmword_1000814D0;
  v17 = 0;
  v18 = xmmword_1000814E0;
  v19 = 0;
  v7 = DERParseSequence(&v15, 2u, &v16, a3, 0);
  if (v7)
  {
    v8 = v7;
    goto LABEL_14;
  }

  v5 = DERParseInteger(a3, &v14);
  if (v5)
  {
    return v5;
  }

  if ((v14 | 0xE000000000000000) != a2)
  {
    return 2;
  }

  v8 = 0;
  *(a3 + 16) = a2 | 0xE000000000000000;
  *(a3 + 40) = 4;
  return v8;
}

void sub_10005C21C(uint64_t a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  AMAuthInstallLog(3, "_AMAuthInstallApImg4StitchToURL", a1, v4, v5, v6, v7, v8, v3);
  perror("error:");
}

void sub_10005C274(char a1)
{
  v2 = __error();
  strerror(*v2);
  AMAuthInstallLog(3, "_AMAuthInstallApImg4StitchToURL", "failed to open file %@, error=%s", v3, v4, v5, v6, v7, a1);
}

void sub_10005C2EC()
{
  v0 = __error();
  v1 = strerror(*v0);
  AMAuthInstallLog(3, "_WriteStreamIntoFile", "failed to stitch payload to file: %s", v2, v3, v4, v5, v6, v1);

  perror("error:");
}

uint64_t AMAuthInstallApImg4LocalAddImages(const __CFAllocator *a1, CFDictionaryRef theDict, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!theDict)
  {
    v35 = "requestDict cannot be NULL";
LABEL_23:
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImages", v35, a4, a5, a6, a7, a8, v36);
    v12 = 0;
    v13 = 0;
    Mutable = 0;
LABEL_24:
    v33 = 1;
    goto LABEL_18;
  }

  if (!a3)
  {
    v35 = "dstEncoder cannot be NULL";
    goto LABEL_23;
  }

  Count = CFDictionaryGetCount(theDict);
  v12 = malloc(8 * Count);
  v13 = malloc(8 * Count);
  CFDictionaryGetKeysAndValues(theDict, v12, v13);
  Mutable = CFArrayCreateMutable(a1, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    v33 = 2;
    goto LABEL_18;
  }

  if (Count >= 1)
  {
    v15 = 0;
    do
    {
      v16 = v12[v15];
      if (!v16)
      {
        goto LABEL_24;
      }

      v17 = v13[v15];
      v18 = CFGetTypeID(v12[v15]);
      if (v18 != CFStringGetTypeID() || v17 == 0)
      {
        goto LABEL_24;
      }

      v20 = CFGetTypeID(v17);
      if (v20 == CFDictionaryGetTypeID())
      {
        if (CFDictionaryGetValue(v17, @"Digest"))
        {
          v37.length = CFArrayGetCount(Mutable);
          v37.location = 0;
          if (CFArrayGetFirstIndexOfValue(Mutable, v37, v16) == -1)
          {
            CFArrayAppendValue(Mutable, v16);
            TypeForEntryName = AMAuthInstallApImg4GetTypeForEntryName(v16);
            if (!TypeForEntryName)
            {
              AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImages", "did not find a matching tag for requestTag %@", v22, v23, v24, v25, v26, v16);
              goto LABEL_24;
            }

            v27 = AMAuthInstallApImg4LocalAddImageProperties(TypeForEntryName, a3, TypeForEntryName, v17, v23, v24, v25, v26);
            if (v27)
            {
              v33 = v27;
              AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImages", "failed to add %@ image to the ticket body", v28, v29, v30, v31, v32, v16);
              goto LABEL_18;
            }
          }
        }
      }
    }

    while (Count != ++v15);
  }

  v33 = 0;
LABEL_18:
  SafeFree(v12);
  SafeFree(v13);
  SafeRelease(Mutable);
  return v33;
}

uint64_t AMAuthInstallApImg4LocalRegisterKeys(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 1;
  }

  v8 = *(a1 + 16);
  if (*(v8 + 20))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalRegisterKeys", "local signing is not available for production fused devices.", a4, a5, a6, a7, a8, v26);
    return 14;
  }

  if (!*(a1 + 392))
  {
    if (*(v8 + 88) || *(v8 + 16))
    {
      if (*(v8 + 89))
      {
        v10 = *(v8 + 8);
        if (v10 == 32784)
        {
          v11 = @"ap.ticket.insec.rsa4k.key.private";
        }

        else
        {
          if (v10 != 35168)
          {
            AMAuthInstallLog(3, "AMAuthInstallApImg4LocalRegisterKeys", "unrecognized chipid: 0x%08X", a4, a5, a6, a7, a8, v10);
            return 1;
          }

          v11 = @"ap.ticket.insec.rsa1k.key.private";
        }
      }

      else
      {
        v11 = @"ap.ticket.localpolicy.hacktivation.key.private";
        if (!*(a1 + 505))
        {
          v11 = @"ap.ticket.dev.key.private";
        }
      }
    }

    else
    {
      v11 = @"ap.ticket.unfused.key.private";
    }

    *(a1 + 392) = v11;
  }

  if (CFDictionaryContainsKey(*(a1 + 376), @"ap.ticket.dev.key.private"))
  {
    return 0;
  }

  v28 = sub_100008098();
  v27 = sub_100008098();
  v12 = AMAuthInstallCryptoRegisterCertFromPEMBuffer();
  v13 = AMAuthInstallCryptoRegisterCertFromPEMBuffer();
  v14 = AMAuthInstallCryptoRegisterCertFromPEMBuffer();
  v15 = sub_100008098();
  v16 = AMAuthInstallCryptoRegisterCertFromPEMBuffer();
  v17 = sub_100008098();
  v18 = AMAuthInstallCryptoRegisterCertFromPEMBuffer();
  v19 = AMAuthInstallCryptoRegisterCertFromPEMBuffer();
  v20 = AMAuthInstallCryptoRegisterCertFromPEMBuffer();
  result = sub_100008098();
  if ((!v28 || !v27 || !v15 || !v17 || !result) && (!v12 || !v13 || !v14 || !v16 || !v18 || !v19 || !v20))
  {
    AMAuthInstallLog(6, "AMAuthInstallApImg4LocalRegisterKeys", "ap local signing keys available", v21, v22, v23, v24, v25, v26);
    return 0;
  }

  return result;
}

uint64_t AMAuthInstallApImg4LocalCreateEncodedCertificateChain(uint64_t a1, CFTypeRef *a2)
{
  if (!a1 || !a2)
  {
    Mutable = 0;
    v12 = 1;
    if (!a2)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  v4 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v4, 0);
  if (!Mutable)
  {
    v12 = 2;
    goto LABEL_6;
  }

  v11 = *(a1 + 16);
  if (!*(v11 + 20))
  {
    if (!*(a1 + 400))
    {
      if (*(a1 + 505))
      {
        v13 = @"ap.ticket.localpolicy.hacktivation.leaf.cert";
      }

      else if (*(v11 + 88) || *(v11 + 16))
      {
        if (*(v11 + 89))
        {
          v27 = *(v11 + 8);
          switch(v27)
          {
            case 32770:
              v13 = @"ap.ticket.8002.insec.cert";
              break;
            case 35168:
              if (!*(a1 + 408))
              {
                *(a1 + 408) = @"ap.ticket.ca.cert";
              }

              CertData = AMAuthInstallCryptoGetCertData();
              if (CertData)
              {
                goto LABEL_46;
              }

              BytePtr = CFDataGetBytePtr(0);
              Length = CFDataGetLength(0);
              CFDataAppendBytes(Mutable, BytePtr, Length);
              v13 = @"ap.ticket.8960.insec.cert";
              break;
            case 32784:
              v13 = @"ap.ticket.8010.insec.cert";
              break;
            default:
              AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateEncodedCertificateChain", "unrecognized chipid: 0x%08X", v5, v6, v7, v8, v9, v27);
              goto LABEL_42;
          }
        }

        else
        {
          v13 = @"ap.ticket.8960.dev.cert";
        }
      }

      else
      {
        v13 = @"ap.ticket.8960.unfused.cert";
      }

      *(a1 + 400) = v13;
    }

    if (!*(a1 + 505))
    {
      v14 = *(a1 + 16);
      if (!*(v14 + 93))
      {
        v15 = *(v14 + 8);
        v16 = v15 == 32770 || v15 == 35168;
        if (!v16 && v15 != 32784)
        {
          AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateEncodedCertificateChain", "chipid: 0x%08X unsupported for img4 local signing", v5, v6, v7, v8, v9, v15);
LABEL_42:
          v12 = 1;
          goto LABEL_6;
        }
      }
    }

    CertData = AMAuthInstallCryptoGetCertData();
    if (!CertData)
    {
      v19 = CFDataGetBytePtr(0);
      v20 = CFDataGetLength(0);
      CFDataAppendBytes(Mutable, v19, v20);
      if (DEREncoderCreate())
      {
        CFDataGetBytePtr(Mutable);
        CFDataGetLength(Mutable);
        if (DEREncoderAddData())
        {
          v12 = 3;
          goto LABEL_6;
        }

        if (!DEREncoderCreateEncodedBuffer())
        {
          v12 = 0;
          *a2 = CFDataCreate(0, 0, 0);
          goto LABEL_26;
        }

        AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateEncodedCertificateChain", "%s: failed to create buffer", v21, v22, v23, v24, v25, "AMAuthInstallApImg4LocalCreateEncodedCertificateChain");
      }

      v12 = 0;
      goto LABEL_26;
    }

LABEL_46:
    v12 = CertData;
    goto LABEL_6;
  }

  AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateEncodedCertificateChain", "local signing is not available for production fused devices.", v5, v6, v7, v8, v9, v30);
  v12 = 14;
LABEL_6:
  SafeRelease(*a2);
LABEL_26:
  SafeRelease(Mutable);
  SafeFree(0);
  DEREncoderDestroy();
  return v12;
}

uint64_t AMAuthInstallApImg4LocalAddImageProperties(uint64_t a1, uint64_t a2, const __CFString *a3, const __CFDictionary *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    v104 = "toEncoder cannot be NULL";
LABEL_28:
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", v104, a4, a5, a6, a7, a8, v105);
    v25 = 1;
    goto LABEL_24;
  }

  if (!a3)
  {
    v104 = "imageTag cannot be NULL";
    goto LABEL_28;
  }

  if (!a4)
  {
    v104 = "requestDict cannot be NULL";
    goto LABEL_28;
  }

  v11 = DEREncoderCreate();
  if (!v11)
  {
    v25 = 2;
    goto LABEL_24;
  }

  Value = CFDictionaryGetValue(a4, @"Digest");
  if (Value)
  {
    v13 = Value;
    if (CFDataGetLength(Value) < 1)
    {
      AMAuthInstallLog(6, "AMAuthInstallApImg4LocalAddImageProperties", "'%@' has zero length digest - skipping digest", v14, v15, v16, v17, v18, a3);
    }

    else
    {
      v19 = AMAuthInstallApImg4AddDataProperty(v11, @"DGST", v13, v14, v15, v16, v17, v18);
      if (v19)
      {
        v25 = v19;
        AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add Digest property for '%@'", v20, v21, v22, v23, v24, a3);
        goto LABEL_24;
      }
    }
  }

  v26 = CFDictionaryGetValue(a4, @"Trusted");
  if (v26 && (v27 = CFBooleanGetValue(v26), v33 = AMAuthInstallApImg4AddBooleanProperty(v11, @"EKEY", v27, v28, v29, v30, v31, v32), v33))
  {
    v25 = v33;
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add EKEY property for '%@'", v34, v35, v36, v37, v38, a3);
  }

  else
  {
    v39 = CFDictionaryGetValue(a4, @"DPRO");
    if (v39 && (v40 = CFBooleanGetValue(v39), v46 = AMAuthInstallApImg4AddBooleanProperty(v11, @"DPRO", v40, v41, v42, v43, v44, v45), v46))
    {
      v25 = v46;
      AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add DPRO property for '%@'", v47, v48, v49, v50, v51, a3);
    }

    else
    {
      v52 = CFDictionaryGetValue(a4, @"DSEC");
      if (v52 && (v53 = CFBooleanGetValue(v52), v59 = AMAuthInstallApImg4AddBooleanProperty(v11, @"DSEC", v53, v54, v55, v56, v57, v58), v59))
      {
        v25 = v59;
        AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add DSEC property for '%@'", v60, v61, v62, v63, v64, a3);
      }

      else
      {
        v65 = CFDictionaryGetValue(a4, @"ESEC");
        if (v65 && (v66 = CFBooleanGetValue(v65), v72 = AMAuthInstallApImg4AddBooleanProperty(v11, @"ESEC", v66, v67, v68, v69, v70, v71), v72))
        {
          v25 = v72;
          AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add ESEC property for '%@'", v73, v74, v75, v76, v77, a3);
        }

        else
        {
          v78 = CFDictionaryGetValue(a4, @"EPRO");
          if (v78 && (v79 = CFBooleanGetValue(v78), v85 = AMAuthInstallApImg4AddBooleanProperty(v11, @"EPRO", v79, v80, v81, v82, v83, v84), v85))
          {
            v25 = v85;
            AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add EPRO property for '%@'", v86, v87, v88, v89, v90, a3);
          }

          else
          {
            v91 = CFDictionaryGetValue(a4, @"TBMDigests");
            if (v91 && (v97 = AMAuthInstallApImg4AddDataProperty(v11, @"tbms", v91, v92, v93, v94, v95, v96), v97))
            {
              v25 = v97;
              AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add %@ property for '%@'", v92, v93, v94, v95, v96, @"tbms");
            }

            else
            {
              v25 = AMAuthInstallApImg4AddDictionaryProperty(v11, a2, a3, v92, v93, v94, v95, v96);
              if (v25)
              {
                AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "AMAuthInstallApImg4LocalAddDictionaryProperty failed for '%@'", v98, v99, v100, v101, v102, a3);
              }
            }
          }
        }
      }
    }
  }

LABEL_24:
  DEREncoderDestroy();
  return v25;
}

uint64_t AMAuthInstallBasebandServerRequestAddRequiredTags(uint64_t a1, __CFDictionary *a2, const void **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  theDict = a2;
  if (!a1)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "%s: amai is NULL", a4, a5, a6, a7, a8, "AMAuthInstallBasebandServerRequestAddRequiredTags");
LABEL_40:
    v10 = 0;
    goto LABEL_41;
  }

  v9 = *(a1 + 48);
  if (!v9)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "%s: amai->bbParameters is NULL", a4, a5, a6, a7, a8, "AMAuthInstallBasebandServerRequestAddRequiredTags");
    goto LABEL_40;
  }

  if (!*(v9 + 16))
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "%s: amai->bbParameters->snum is NULL", a4, a5, a6, a7, a8, "AMAuthInstallBasebandServerRequestAddRequiredTags");
    goto LABEL_40;
  }

  v10 = a2;
  if (!a2)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "%s: requestDict is NULL", a4, a5, a6, a7, a8, "AMAuthInstallBasebandServerRequestAddRequiredTags");
LABEL_41:
    a3 = 0;
LABEL_42:
    v48 = 1;
    goto LABEL_31;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v10))
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "%s: requestDict mistyped", v13, v14, v15, v16, v17, "AMAuthInstallBasebandServerRequestAddRequiredTags");
    goto LABEL_40;
  }

  if (!a3)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "%s: bbfwURL is NULL", v13, v14, v15, v16, v17, "AMAuthInstallBasebandServerRequestAddRequiredTags");
    v10 = 0;
    goto LABEL_42;
  }

  sub_1000088FC();
  v26 = AMAuthInstallBasebandApplyTssOverrides(v18, v19, v20, v21, v22, v23, v24, v25);
  if (v26)
  {
    v48 = v26;
    AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "%s: failed to apply tss overrides", v27, v28, v29, v30, v31, "AMAuthInstallBasebandServerRequestAddRequiredTags");
LABEL_46:
    v10 = 0;
    a3 = 0;
    goto LABEL_31;
  }

  CFDictionarySetValue(v10, @"BbSNUM", *(*(a1 + 48) + 16));
  _CFDictionarySetInteger32(v10, @"BbChipID", *(*(a1 + 48) + 4));
  _CFDictionarySetInteger32(v10, @"BbGoldCertId", *(*(a1 + 48) + 8));
  v32 = *(*(a1 + 48) + 24);
  if (v32)
  {
    CFDictionarySetValue(v10, @"BbNonce", v32);
    CFDictionarySetValue(v10, @"@BBTicket", kCFBooleanTrue);
  }

  v33 = *(a1 + 136);
  if (v33)
  {
    CFDictionarySetValue(v10, @"BbVendorData", v33);
  }

  v34 = *(a1 + 144);
  if (v34)
  {
    CFDictionarySetValue(v10, @"BbAntennaType", v34);
  }

  v35 = *(a1 + 152);
  if (v35)
  {
    CFDictionarySetValue(v10, @"BbBehavior", v35);
  }

  v36 = *(a1 + 424);
  if (v36)
  {
    Value = CFDictionaryGetValue(v36, @"BbRequestEntries");
    if (Value)
    {
      v38 = Value;
      v39 = CFGetAllocator(a1);
      v40 = AMAuthInstallSupportApplyDictionaryOverrides(v39, v38, &theDict, 0);
      if (v40)
      {
        v48 = v40;
        AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "failed to set Bb entitlements", v41, v42, v43, v44, v45, v67);
        goto LABEL_46;
      }
    }
  }

  Count = CFDictionaryGetCount(*(a1 + 200));
  v10 = malloc(8 * Count);
  v47 = malloc(8 * Count);
  a3 = v47;
  v48 = 2;
  if (v10 && v47)
  {
    v49 = *(a1 + 200);
    sub_1000088FC();
    CFDictionaryGetKeysAndValues(v50, v51, v52);
    if (Count < 1)
    {
LABEL_27:
      v68 = 0;
      if (!AMAuthInstallVinylIsLegacyChipId(a1, &v68) && v68 && (TagForKeyHashName = AMAuthInstallBasebandVinylAddMeasurementTags(a1, theDict), TagForKeyHashName))
      {
LABEL_32:
        v48 = TagForKeyHashName;
      }

      else
      {
        v48 = 0;
      }
    }

    else
    {
      v58 = 0;
      while (1)
      {
        key = 0;
        v59 = *(v10 + v58);
        if (!v59)
        {
          AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "invalid HashKeysBuffer array", v53, v54, v55, v56, v57, v67);
          v48 = 99;
          goto LABEL_31;
        }

        TagForKeyHashName = AMAuthInstallBasebandGetTagForKeyHashName(a1, v59, &key, v53, v54, v55, v56, v57);
        if (TagForKeyHashName)
        {
          goto LABEL_32;
        }

        if (!key)
        {
          break;
        }

        CFDictionarySetValue(theDict, key, a3[v58++]);
        if (Count == v58)
        {
          goto LABEL_27;
        }
      }

      v48 = 3;
      AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "keyHashTag not found for %@", v61, v62, v63, v64, v65, *(v10 + v58));
    }
  }

LABEL_31:
  SafeFree(v10);
  SafeFree(a3);
  return v48;
}

uint64_t AMAuthInstallBasebandCreateServerRequestDictionary(void *a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4, const void **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandCreateServerRequestDictionary", "%s: measurementDict is NULL", a4, a5, a6, a7, a8, "AMAuthInstallBasebandCreateServerRequestDictionary");
LABEL_16:
    v15 = 0;
    v27 = 1;
    goto LABEL_12;
  }

  if (!a4)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandCreateServerRequestDictionary", "%s: outRequestDict is NULL", 0, a5, a6, a7, a8, "AMAuthInstallBasebandCreateServerRequestDictionary");
    goto LABEL_16;
  }

  if (!a5)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandCreateServerRequestDictionary", "%s: bbfwURL is NULL", a4, 0, a6, a7, a8, "AMAuthInstallBasebandCreateServerRequestDictionary");
    goto LABEL_16;
  }

  v13 = CFGetAllocator(a1);
  if (a3)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v13, 0, a3);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v13, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v15 = MutableCopy;
  if (MutableCopy)
  {
    CFDictionarySetValue(MutableCopy, @"BasebandFirmware", a2);
    v21 = AMAuthInstallBasebandServerRequestAddRequiredTags(a1, v15, a5, v16, v17, v18, v19, v20);
    if (v21)
    {
      v27 = v21;
    }

    else
    {
      if (a1[2])
      {
        AMAuthInstallApServerRequestAddRequiredTags(a1, v15, 0, v22, v23, v24, v25, v26);
      }

      v27 = 0;
      *a4 = CFRetain(v15);
    }
  }

  else
  {
    v27 = 2;
  }

LABEL_12:
  SafeRelease(v15);
  return v27;
}

uint64_t AMAuthInstallBasebandCopyAllPersonalizedComponents(void *a1, void *a2, const void *a3, __CFDictionary *a4, const __CFDictionary *a5, const __CFDictionary *a6, CFTypeRef *a7)
{
  v10 = a4;
  v190 = 0;
  theDict = a5;
  v189 = 0;
  SafeRetain(a4);
  SafeRetain(a5);
  if (!a1 || !a1[6])
  {
    Mutable = 0;
    goto LABEL_190;
  }

  v14 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v14, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    v136 = 2;
    goto LABEL_158;
  }

  v16 = *(a1[6] + 4);
  v17 = (v16 - 94) > 0xA || ((1 << (v16 - 94)) & 0x685) == 0;
  if (!v17)
  {
    sub_100008820();
    v33 = AMAuthInstallBasebandRembrandtFuseIfNecessary();
    if (v33)
    {
      goto LABEL_191;
    }

    goto LABEL_59;
  }

  sub_100008880();
  if (v17 || v18 == 520417)
  {
LABEL_44:
    v31 = sub_100008820();
    v33 = AMAuthInstallBasebandMAV10FuseIfNecessary(v31);
    if (v33)
    {
      goto LABEL_191;
    }

    goto LABEL_59;
  }

  sub_1000088A8();
  if (v17 || v20 == 1327329 || v20 == 1515745 || v20 == 1700065 || v20 == 2044129 || v20 == 2089185 || v20 == 2814177)
  {
    v32 = sub_100008820();
    v33 = AMAuthInstallBasebandMAV20FuseIfNecessary(v32);
    if (v33)
    {
      goto LABEL_191;
    }

    goto LABEL_59;
  }

  sub_100008850();
  if (!v17)
  {
    sub_1000088EC();
    if (!v17)
    {
      sub_100008840();
      if (v17)
      {
        v44 = sub_100008820();
        v33 = AMAuthInstallBasebandN94FuseIfNecessary(v44);
        if (v33)
        {
          goto LABEL_191;
        }

        goto LABEL_59;
      }

      sub_100008830();
      if (v17 || v27 == 7282913)
      {
        v41 = sub_100008820();
        v33 = AMAuthInstallBasebandN41FuseIfNecessary(v41);
        if (v33)
        {
          goto LABEL_191;
        }

        goto LABEL_59;
      }

      sub_100008870();
      if (!v17 && v29 != 9572577)
      {
        sub_100008860();
        if (v42)
        {
          v43 = sub_100008820();
          v33 = AMAuthInstallBasebandN92FuseIfNecessary(v43);
          if (v33)
          {
            goto LABEL_191;
          }
        }

        goto LABEL_59;
      }
    }

    goto LABEL_44;
  }

  v45 = sub_100008820();
  v33 = AMAuthInstallBasebandJ2FuseIfNecessary(v45);
  if (v33)
  {
    goto LABEL_191;
  }

LABEL_59:
  v46 = a1[6];
  if (!*(v46 + 16))
  {
    goto LABEL_157;
  }

  if (v10)
  {
LABEL_61:
    if (*(v46 + 4) == 104)
    {
      IsICE19BBGoldCertIDECDSA = AMAuthInstallIsICE19BBGoldCertIDECDSA(*(v46 + 8), v34, v35, v36, v37, v38, v39, v40);
      v48 = kAMAuthInstallTagBbPsiPartialDigest;
      if (IsICE19BBGoldCertIDECDSA)
      {
        v48 = kAMAuthInstallTagBbPsi2PartialDigest;
        v49 = kAMAuthInstallTagBbRestorePsi2PartialDigest;
      }

      else
      {
        v49 = kAMAuthInstallTagBbRestorePsiPartialDigest;
      }

      CFDictionaryRemoveValue(v10, *v48);
      CFDictionaryRemoveValue(v10, *v49);
    }

LABEL_66:
    v50 = theDict;
    if (theDict)
    {
LABEL_67:
      Value = CFDictionaryGetValue(v50, @"BBTicket");
      if (Value)
      {
        v52 = Value;
        BytePtr = CFDataGetBytePtr(Value);
        Length = CFDataGetLength(v52);
        AMAuthInstallLogDumpMemory(8, "AMAuthInstallBasebandCopyAllPersonalizedComponents", "BBTicket:", BytePtr, Length, v55, v56, v57);
      }

LABEL_69:
      if ((*(a1[6] + 4) - 80) <= 0x18)
      {
        sub_100008890();
        if (!v17)
        {
          v78 = sub_1000087EC();
          v76 = AMAuthInstallBasebandRembrandtStitchFirmware(v78, v79, v80, v81);
          goto LABEL_146;
        }

        if (!v77)
        {
          v94 = sub_1000087EC();
          v76 = AMAuthInstallBasebandICE3StitchFirmware(v94, v95, v96, v97);
          goto LABEL_146;
        }
      }

      sub_100008880();
      if (v17 || v58 == 520417)
      {
LABEL_98:
        v72 = sub_1000087EC();
        v76 = AMAuthInstallBasebandMAV10StitchFirmware(v72, v73, v74, v75);
LABEL_146:
        v136 = v76;
        if (v76)
        {
          goto LABEL_142;
        }

        v146 = a1[6];
        if (*(v146 + 24))
        {
          if (*(v146 + 4) != 80)
          {
            v147 = CFDictionaryGetValue(theDict, @"BBTicket");
            if (v147)
            {
              CFDictionaryAddValue(Mutable, @"bbticket.der", v147);
            }
          }
        }

        v148 = CFRetain(theDict);
        v190 = v148;
        if (a3 && *(a1[6] + 160))
        {
          v149 = AMAuthInstallVinylPersonalizeFirmware(a1, a3, 0, &v190, a6, v133, v134, v135);
          if (v149)
          {
            v136 = v149;
            v137 = "failed to personalize vinyl fw";
            goto LABEL_143;
          }

          v148 = v190;
        }

        v150 = AMAuthInstallBasebandVinylStitchFirmware(a1, a2, a3, v148, Mutable, v133, v134, v135);
        if (v150)
        {
          v136 = v150;
          v137 = "failed to stitch vinyl fw";
          goto LABEL_143;
        }

        v152 = AMAuthInstallProvisioningProvisionIfNecessary(a1, Mutable, v151, v131, v132, v133, v134, v135);
        if (v152)
        {
          v136 = v152;
          v137 = "AMAuthInstallProvisioningProvisionIfNecessary failed";
          goto LABEL_143;
        }

LABEL_157:
        v136 = 0;
        *a7 = CFRetain(Mutable);
        goto LABEL_158;
      }

      sub_1000088A8();
      if (v17)
      {
        v123 = sub_1000087EC();
        v76 = AMAuthInstallBasebandMAV20StitchFirmware(v123, v124, v125, v126);
        goto LABEL_146;
      }

      if (v60 != 1327329)
      {
        if (v60 == 1515745)
        {
          goto LABEL_101;
        }

        if (v60 != 1700065)
        {
          if (v60 == 2044129)
          {
            v119 = sub_1000087EC();
            v76 = AMAuthInstallBasebandMAV25StitchFirmware(v119, v120, v121, v122);
            goto LABEL_146;
          }

          if (v60 != 2089185 && v60 != 2814177)
          {
            sub_100008850();
            if (v17)
            {
              v142 = sub_1000087EC();
              v76 = AMAuthInstallBasebandJ2StitchFirmware(v142, v143, v144, v145);
              goto LABEL_146;
            }

            sub_100008860();
            if (v17)
            {
              v127 = sub_1000087EC();
              v76 = AMAuthInstallBasebandN92StitchFirmware(v127, v128, v129, v130);
              goto LABEL_146;
            }

            sub_100008840();
            if (v17)
            {
              v138 = sub_1000087EC();
              v76 = AMAuthInstallBasebandN94StitchFirmware(v138, v139, v140, v141);
              goto LABEL_146;
            }

            sub_100008830();
            if (v17 || v62 == 7282913)
            {
              v90 = sub_1000087EC();
              v76 = AMAuthInstallBasebandN41StitchFirmware(v90, v91, v92, v93);
              goto LABEL_146;
            }

            sub_100008870();
            if (!v17 && v69 != 9572577 && v69 != 9781473)
            {
              AMAuthInstallLog(3, "AMAuthInstallBasebandCopyAllPersonalizedComponents", "chipID: 0x%x is not supported", v64, v65, v66, v67, v68, v69);
              v136 = 13;
LABEL_142:
              v137 = "failed to stitch bbfw";
LABEL_143:
              AMAuthInstallLog(3, "AMAuthInstallBasebandCopyAllPersonalizedComponents", v137, v131, v132, v133, v134, v135, v186);
              goto LABEL_158;
            }

            goto LABEL_98;
          }

LABEL_101:
          v82 = sub_1000087EC();
          v76 = AMAuthInstallBasebandMAV22StitchFirmware(v82, v83, v84, v85);
          goto LABEL_146;
        }
      }

      v86 = sub_1000087EC();
      v76 = AMAuthInstallBasebandMAV21StitchFirmware(v86, v87, v88, v89);
      goto LABEL_146;
    }

    LOBYTE(v188) = 0;
    if (!AMAuthInstallBasebandLocalSigningEnabled(a1, &v188))
    {
      v33 = AMAuthInstallBasebandCreateServerRequestDictionary(a1, v10, a6, &v189, a2, v99, v100, v101);
      if (v33)
      {
        goto LABEL_191;
      }

      if (v188)
      {
        AMAuthInstallLog(6, "AMAuthInstallBasebandCopyAllPersonalizedComponents", "this certid specifies local signing", v102, v103, v104, v105, v106, v186);
        v107 = *(a1[6] + 4) - 94;
        if (v107 <= 0xA && ((1 << v107) & 0x685) != 0)
        {
          v166 = sub_100008810();
          v118 = AMAuthInstallBasebandRembrandtHandleLocalSigningRequest(v166);
          goto LABEL_185;
        }

        sub_100008880();
        if (v17 || v108 == 520417 || v108 == 938209 || v108 == 1327329 || v108 == 1515745 || v108 == 1700065 || v108 == 2044129 || v108 == 2089185 || v108 == 2814177)
        {
          goto LABEL_138;
        }

        sub_100008850();
        if (v154)
        {
          v177 = sub_100008810();
          v118 = AMAuthInstallBasebandJ2HandleLocalSigningRequest(v177);
        }

        else
        {
          sub_1000088EC();
          if (v17)
          {
            goto LABEL_138;
          }

          sub_100008840();
          if (v17)
          {
            v176 = sub_100008810();
            v118 = AMAuthInstallBasebandN94HandleLocalSigningRequest(v176);
          }

          else
          {
            sub_100008830();
            if (!v17 && v155 != 7282913)
            {
              sub_100008870();
              if (!v17 && v157 != 9572577)
              {
                sub_100008860();
                if (v17)
                {
                  v165 = sub_100008810();
                  v118 = AMAuthInstallBasebandN92HandleLocalSigningRequest(v165);
                  goto LABEL_185;
                }

                AMAuthInstallLog(3, "AMAuthInstallBasebandCopyAllPersonalizedComponents", "chipID: 0x%x is not supported", v159, v160, v161, v162, v163, v164);
LABEL_182:
                v136 = 14;
                goto LABEL_158;
              }

LABEL_138:
              v117 = sub_100008810();
              v118 = AMAuthInstallBasebandMAV10HandleLocalSigningRequest(v117);
              goto LABEL_185;
            }

            v167 = sub_100008810();
            v118 = AMAuthInstallBasebandN41HandleLocalSigningRequest(v167);
          }
        }

LABEL_185:
        v136 = v118;
        if (v118)
        {
          goto LABEL_158;
        }

        v178 = sub_100008810();
        v33 = AMAuthInstallBasebandVinylLocalHandleRequest(v178, v179, v180, v181, v182, v183, v184, v185);
        if (!v33)
        {
          v50 = theDict;
          if (!theDict)
          {
            goto LABEL_69;
          }

          goto LABEL_67;
        }

LABEL_191:
        v136 = v33;
        goto LABEL_158;
      }

      v187 = 0;
      if (!AMAuthInstallBasebandSupportsServerSigning(a1, &v187))
      {
        if (v187 != 1)
        {
          AMAuthInstallLog(3, "AMAuthInstallBasebandCopyAllPersonalizedComponents", "This chipid/certid does not support local or server personalization.", v168, v169, v170, v171, v172, v186);
          v136 = 13;
          goto LABEL_158;
        }

        v173 = sub_100008810();
        v33 = AMAuthInstallRequestSendSync(v173, v174, v175);
        if (v33)
        {
          goto LABEL_191;
        }

        v50 = theDict;
        if (theDict)
        {
          goto LABEL_67;
        }

        goto LABEL_182;
      }
    }

LABEL_190:
    v136 = 1;
    goto LABEL_158;
  }

  v188 = 0;
  Measurements = AMAuthInstallBasebandCreateMeasurements(a1, a2, a3, &v188);
  if (!Measurements)
  {
    v10 = v188;
    v46 = a1[6];
    if (!v46)
    {
      goto LABEL_66;
    }

    goto LABEL_61;
  }

  v136 = Measurements;
  v10 = 0;
LABEL_158:
  SafeRelease(v10);
  SafeRelease(v190);
  SafeRelease(theDict);
  SafeRelease(v189);
  SafeRelease(Mutable);
  SafeRelease(0);
  return v136;
}

uint64_t AMAuthInstallBasebandCreateMeasurements(void *a1, const void *a2, const void *a3, CFTypeRef *a4)
{
  v79 = 0;
  v8 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v8, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v80 = Mutable;
  v15 = a1[6];
  if (v15 && (v16 = *(v15 + 4)) != 0)
  {
    AMAuthInstallLog(5, "AMAuthInstallBasebandCreateMeasurements", "Using set ChipID 0x%08X to measure", v9, v10, v11, v12, v13, *(v15 + 4));
  }

  else
  {
    if (AMAuthInstallBasebandReadChipIDFromBbfw(a2, &v79))
    {
      if (AMAuthInstallBasebandICE3FirmwareSupported(a2))
      {
        v16 = 80;
        AMAuthInstallLog(5, "AMAuthInstallBasebandCreateMeasurements", "Using detected ICE3 ChipID 0x%08X to measure", v46, v47, v48, v49, v50, 80);
      }

      else
      {
        v16 = 5243105;
        AMAuthInstallLog(5, "AMAuthInstallBasebandCreateMeasurements", "Using default ChipID 0x%08X to measure", v46, v47, v48, v49, v50, 225);
      }
    }

    else
    {
      v16 = v79;
      if (!v79)
      {
        AMAuthInstallLog(3, "AMAuthInstallBasebandCreateMeasurements", "chipid 0 read from Info.plist!", v41, v42, v43, v44, v45, v77);
        v63 = 14;
        goto LABEL_63;
      }

      AMAuthInstallLog(5, "AMAuthInstallBasebandCreateMeasurements", "Using ChipID 0x%08X from Info.plist to measure", v41, v42, v43, v44, v45, v79);
    }

    v75 = calloc(1uLL, 0xB0uLL);
    if (!v75)
    {
      a1[6] = 0;
      v63 = 2;
      goto LABEL_63;
    }

    v76 = v75;
    bzero(v75, 0xB0uLL);
    a1[6] = v76;
    v76[1] = v16;
  }

  if ((v16 - 80) <= 0x18)
  {
    sub_1000088C8();
    if (!v22)
    {
      v35 = sub_100008800();
      v33 = AMAuthInstallBasebandRembrandtMeasureFirmware(v35, v36, v37);
      goto LABEL_55;
    }

    if (!v34)
    {
      v54 = sub_100008800();
      v33 = AMAuthInstallBasebandICE3MeasureFirmware(v54, v55, v56);
      goto LABEL_55;
    }
  }

  v22 = v16 == 241889 || v16 == 520417;
  if (v22)
  {
    goto LABEL_39;
  }

  switch(v16)
  {
    case 938209:
    case 1327329:
    case 1515745:
    case 1700065:
      goto LABEL_42;
    case 2044129:
      v57 = sub_100008800();
      v33 = AMAuthInstallBasebandMAV25MeasureFirmware(v57, v58, v59);
      goto LABEL_55;
    case 2089185:
    case 2814177:
LABEL_42:
      v38 = sub_100008800();
      v33 = AMAuthInstallBasebandMAV20MeasureFirmware(v38, v39, v40);
      goto LABEL_55;
    case 4587745:
      v67 = sub_100008800();
      v33 = AMAuthInstallBasebandJ2MeasureFirmware(v67, v68, v69);
LABEL_55:
      v63 = v33;
      if (v33)
      {
        goto LABEL_63;
      }

      v78 = 0;
      if (a3)
      {
        if (!AMAuthInstallVinylIsLegacyChipId(a1, &v78) && v78)
        {
          Measurements = AMAuthInstallVinylCreateMeasurements(a1, a3, &v80, 0);
          Mutable = v80;
          if (Measurements)
          {
            goto LABEL_60;
          }
        }
      }

      else
      {
        v71 = sub_100008800();
        Measurements = AMAuthInstallBasebandVinylCreateMeasurements(v71, v72, v73);
        if (Measurements)
        {
LABEL_60:
          v63 = Measurements;
          goto LABEL_63;
        }
      }

      v63 = 0;
      *a4 = CFRetain(Mutable);
      Mutable = v80;
      goto LABEL_63;
    case 5243105:
      v60 = sub_100008800();
      v33 = AMAuthInstallBasebandN92MeasureFirmware(v60, v61, v62);
      goto LABEL_55;
    case 5898465:
      v64 = sub_100008800();
      v33 = AMAuthInstallBasebandN94MeasureFirmware(v64, v65, v66);
      goto LABEL_55;
    case 7278817:
    case 7282913:
      v51 = sub_100008800();
      v33 = AMAuthInstallBasebandN41MeasureFirmware(v51, v52, v53);
      goto LABEL_55;
    case 8343777:
    case 9572577:
    case 9781473:
LABEL_39:
      v30 = sub_100008800();
      v33 = AMAuthInstallBasebandMAV10MeasureFirmware(v30, v31, v32);
      goto LABEL_55;
  }

  AMAuthInstallLog(3, "AMAuthInstallBasebandCreateMeasurements", "unrecognized chipid: 0x%08X", v17, v18, v19, v20, v21, v16);
  v63 = 13;
LABEL_63:
  SafeRelease(Mutable);
  return v63;
}

uint64_t AMAuthInstallBasebandLocalSigningEnabled(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 1;
  if (a2 && *(a1 + 48))
  {
    v14 = 0;
    if (AMAuthInstallBasebandSupportsServerSigning(a1, &v14 + 1))
    {
      v12 = "failed to query is server signing is supported.";
    }

    else
    {
      BooleanValue = AMAuthInstallPreferencesGetBooleanValue(@"AuthInstallEnableLocalSigning", 0, 0);
      if (HIBYTE(v14) && BooleanValue != 1)
      {
        v11 = 0;
LABEL_8:
        result = 0;
        *a2 = v11;
        return result;
      }

      if (!AMAuthInstallBasebandSupportsLocalSigning(a1, &v14))
      {
        v11 = v14;
        goto LABEL_8;
      }

      v12 = "failed to query is local signing is supported.";
    }

    AMAuthInstallLog(3, "AMAuthInstallBasebandLocalSigningEnabled", v12, v5, v6, v7, v8, v9, v13);
    return 1;
  }

  return result;
}

uint64_t AMAuthInstallBasebandSupportsServerSigning(uint64_t a1, _BYTE *a2)
{
  v2 = 1;
  if (a1 && a2)
  {
    v4 = *(a1 + 48);
    if (!v4)
    {
LABEL_50:
      v23 = 0;
      goto LABEL_51;
    }

    if ((*(v4 + 4) - 80) <= 0x18)
    {
      sub_100008890();
      if (!v6)
      {
        v23 = AMAuthInstallBasebandRembrandtSupportsServerSigning(v24);
        goto LABEL_51;
      }

      if (!v25)
      {
        v23 = AMAuthInstallBasebandICE3SupportsServerSigning();
        goto LABEL_51;
      }
    }

    sub_100008880();
    v6 = v6 || v5 == 520417;
    if (!v6)
    {
      sub_1000088A8();
      if (v6)
      {
        v23 = AMAuthInstallBasebandMAV20SupportsServerSigning();
        goto LABEL_51;
      }

      if (v7 == 1327329 || v7 == 1515745 || v7 == 1700065 || v7 == 2044129 || v7 == 2089185 || v7 == 2814177)
      {
        v23 = AMAuthInstallBasebandMAV21SupportsServerSigning();
        goto LABEL_51;
      }

      sub_100008850();
      if (v6)
      {
        v23 = AMAuthInstallBasebandJ2SupportsServerSigning();
        goto LABEL_51;
      }

      sub_100008860();
      if (v6)
      {
        v23 = AMAuthInstallBasebandN92SupportsServerSigning();
        goto LABEL_51;
      }

      sub_100008840();
      if (v6)
      {
        v23 = AMAuthInstallBasebandN94SupportsServerSigning();
        goto LABEL_51;
      }

      sub_100008830();
      if (v6 || v13 == 7282913)
      {
        v23 = AMAuthInstallBasebandN41SupportsServerSigning();
        goto LABEL_51;
      }

      sub_100008870();
      if (!v6 && v20 != 9572577 && v20 != 9781473)
      {
        AMAuthInstallLog(3, "AMAuthInstallBasebandSupportsServerSigning", "chipID: 0x%x is not supported for server signing", v15, v16, v17, v18, v19, v20);
        goto LABEL_50;
      }
    }

    v23 = AMAuthInstallBasebandMAV10SupportsServerSigning();
LABEL_51:
    v2 = 0;
    *a2 = v23;
  }

  return v2;
}

uint64_t AMAuthInstallBasebandCopyAllComponents(const void *a1, const void *a2, CFTypeRef *a3)
{
  v3 = 0;
  v24[0] = 0;
  v24[1] = 0;
  v4 = 1;
  v25 = 0;
  if (a1 && a2 && a3)
  {
    v8 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v8, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v3 = Mutable;
    if (Mutable)
    {
      v24[0] = a1;
      v25 = Mutable;
      v10 = BbfwReaderStart(a2, sub_100008374, v24);
      if (v10)
      {
        v4 = v10;
      }

      else
      {
        v17 = AMAuthInstallProvisioningProvisionIfNecessary(a1, v3, v11, v12, v13, v14, v15, v16);
        v4 = v17;
        if (v17)
        {
          AMAuthInstallLog(3, "AMAuthInstallBasebandCopyAllComponents", "AMAuthInstallProvisioningProvisionIfNecessary failed: %d", v18, v19, v20, v21, v22, v17);
        }

        else
        {
          *a3 = CFRetain(v3);
        }
      }
    }

    else
    {
      v4 = 2;
    }
  }

  SafeRelease(v3);
  return v4;
}

CFIndex AMAuthInstallBasebandCopyFirmware(const void *a1, const void *a2, const void *a3)
{
  v14 = 0;
  v4 = AMAuthInstallBasebandCopyAllComponents(a1, a2, &v14);
  if (v4)
  {
    v10 = v4;
    v12 = "AMAuthInstallBasebandCopyAllComponents failed";
LABEL_6:
    AMAuthInstallLog(3, "AMAuthInstallBasebandCopyFirmware", v12, v5, v6, v7, v8, v9, v13);
    goto LABEL_3;
  }

  v10 = AMAuthInstallBasebandWriteFilesToBbfw(0, a3, v14);
  if (v10)
  {
    v12 = "AMAuthInstallBasebandWriteFilesToBbfw failed";
    goto LABEL_6;
  }

LABEL_3:
  SafeRelease(v14);
  return v10;
}

CFIndex AMAuthInstallBasebandWriteFilesToBbfw(int a1, CFTypeRef cf, const __CFDictionary *a3)
{
  context = 0;
  v12 = BbfwWriterCreate(cf);
  if (!v12)
  {
    return 4;
  }

  CFDictionaryApplyFunction(a3, sub_100008678, &context);
  BbfwWriterFinalize(v12);
  if (!context)
  {
    return 0;
  }

  AMAuthInstallLog(3, "AMAuthInstallBasebandWriteFilesToBbfw", "Error writing bbfw zip: %@", v4, v5, v6, v7, v8, context);
  Code = CFErrorGetCode(context);
  CFRelease(context);
  return Code;
}

unint64_t AMAuthInstallBasebandPersonalizationRequired(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v9 = *(result + 48);
    if (v9)
    {
      v10 = *(v9 + 96);
      v11 = v10 > 3 || v10 == 1;
      return !v11 && *(v9 + 16) || *(result + 168) || *(result + 176) != 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandPersonalizationRequired", "failed to get fusing status", a4, a5, a6, a7, a8, v8);
      return 0;
    }
  }

  return result;
}

uint64_t AMAuthInstallBasebandSetKeyHash(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  result = sub_1000088B8();
  if (v5 && v4 && *(v2 + 216))
  {
    if (CFDataGetLength(v1) == 20 || CFDataGetLength(v1) == 32 || CFDataGetLength(v1) == 48 || !CFDataGetLength(v1))
    {
      sub_100008908(*(v2 + 216));
      sub_100008908(*(v2 + 200));
      return 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandSetKeyHash", "Invalid hash length", v6, v7, v8, v9, v10, v11);
      return 99;
    }
  }

  return result;
}

uint64_t AMAuthInstallBasebandPersonalizeFirmwareInternal(void *a1, void *a2, const void *a3, const void *a4, __CFDictionary *a5, const __CFDictionary *a6, const __CFDictionary *a7)
{
  v12 = 0;
  if (a1)
  {
    v8 = 0;
    v9 = 1;
    if (a4 && a2 && a1[6])
    {
      v10 = AMAuthInstallBasebandCopyAllPersonalizedComponents(a1, a2, a3, a5, a6, a7, &v12);
      v8 = v12;
      if (!v10)
      {
        v10 = AMAuthInstallBasebandWriteFilesToBbfw(0, a4, v12);
      }

      v9 = v10;
    }
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  SafeRelease(v8);
  SafeRelease(0);
  return v9;
}

uint64_t AMAuthInstallBasebandReadChipIDFromBbfw(const void *a1, _DWORD *a2)
{
  data = 0;
  v25 = 0;
  error = 0;
  if (!a1)
  {
    v9 = 0;
    v17 = 0;
    v20 = 1;
    goto LABEL_9;
  }

  v3 = BbfwReaderOpen(a1);
  v9 = v3;
  if (!v3)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandReadChipIDFromBbfw", "failed to open bbfw archive for reading", v4, v5, v6, v7, v8, v23);
    v17 = 0;
    v20 = 4;
    goto LABEL_9;
  }

  v10 = BbfwReaderFindAndCopyFileData(v3, @"Info.plist", &data);
  if (v10)
  {
    v20 = v10;
    v17 = 0;
    goto LABEL_9;
  }

  v11 = CFPropertyListCreateWithData(kCFAllocatorDefault, data, 0, 0, &error);
  v17 = v11;
  if (!v11)
  {
    v23 = @"Info.plist";
    v22 = "failed to parse %@: %@";
LABEL_17:
    v20 = 3;
    AMAuthInstallLog(3, "AMAuthInstallBasebandReadChipIDFromBbfw", v22, v12, v13, v14, v15, v16, v23);
    goto LABEL_9;
  }

  Value = CFDictionaryGetValue(v11, @"com.apple.EmbeddedSoftwareRestore.Baseband.ChipId");
  if (!Value)
  {
    v23 = @"Info.plist";
    v22 = "failed to find ChipId in %@";
    goto LABEL_17;
  }

  v19 = Value;
  if (!_CFStringToUInt32(Value, &v25))
  {
    LOBYTE(v23) = v19;
    v22 = "failed to convert ChipId(%@) to int";
    goto LABEL_17;
  }

  if (!v25)
  {
    v22 = "ChipId is 0 (invalid)";
    goto LABEL_17;
  }

  v20 = 0;
  *a2 = v25;
LABEL_9:
  BbfwReaderClose(v9);
  SafeRelease(data);
  SafeRelease(v17);
  SafeRelease(error);
  return v20;
}

uint64_t AMAuthInstallBasebandReadVersionFromBbfw(CFDataRef data, const void *a2, CFTypeRef *a3)
{
  v3 = 0;
  valuePtr = 0;
  error = 0;
  v4 = 1;
  if (!data || !a2)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v7 = 0;
  if (a3)
  {
    v8 = CFPropertyListCreateWithData(kCFAllocatorDefault, data, 0, 0, &error);
    v3 = v8;
    if (v8)
    {
      Value = CFDictionaryGetValue(v8, a2);
      v7 = Value;
      if (!Value)
      {
        v4 = 3;
        AMAuthInstallLog(3, "AMAuthInstallBasebandReadVersionFromBbfw", "failed to find VersionStr in %@", v15, v16, v17, v18, v19, @"Info.plist");
        goto LABEL_10;
      }

      if (_CFStringToUInt32(Value, &valuePtr))
      {
        if (valuePtr)
        {
          v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
          v7 = v20;
          if (v20)
          {
            v4 = 0;
            *a3 = CFRetain(v20);
          }

          else
          {
            AMAuthInstallLog(3, "AMAuthInstallBasebandReadVersionFromBbfw", "Failed to create versionNumber", v21, v22, v23, v24, v25, v28);
            v4 = 2;
          }

          goto LABEL_10;
        }

        v27 = "Version is 0 (invalid)";
      }

      else
      {
        LOBYTE(v28) = v7;
        v27 = "failed to convert VersionStr(%@) to int";
      }
    }

    else
    {
      v28 = @"Info.plist";
      v27 = "failed to parse %@: %@";
    }

    v4 = 3;
    AMAuthInstallLog(3, "AMAuthInstallBasebandReadVersionFromBbfw", v27, v9, v10, v11, v12, v13, v28);
    v7 = 0;
  }

LABEL_10:
  SafeRelease(v7);
  SafeRelease(v3);
  SafeRelease(error);
  return v4;
}

uint64_t AMAuthInstallBasebandLocalSetSigningParameters(void *cf, uint64_t a2, const void *a3, const void *a4, const void *a5, const void *a6)
{
  if (cf)
  {
    if (a2 && a3 && a4 || (v12 = 1, !a2) && !a3 && !a4 && !a5 && !a6)
    {
      v13 = *(cf + 46);
      if (v13)
      {
        AMAuthInstallReleaseRsaKeyData(*v13);
        SafeRelease(*(*(cf + 46) + 8));
        SafeRelease(*(*(cf + 46) + 16));
        SafeRelease(*(*(cf + 46) + 24));
        SafeRelease(*(*(cf + 46) + 32));
        free(*(cf + 46));
        *(cf + 46) = 0;
      }

      if (a2)
      {
        CFGetAllocator(cf);
        v14 = AMAuthInstallCopyRsaKeyDataForKey();
        if (v14)
        {
          v12 = v14;
          LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(cf, v14);
          AMAuthInstallLog(3, "AMAuthInstallBasebandLocalSetSigningParameters", "bad local signing key: %@", v16, v17, v18, v19, v20, LocalizedStatusString);
        }

        else
        {
          v21 = calloc(1uLL, 0x28uLL);
          *(cf + 46) = v21;
          if (v21)
          {
            **(cf + 46) = CFRetain(0);
            *(*(cf + 46) + 8) = CFRetain(a3);
            *(*(cf + 46) + 16) = CFRetain(a4);
            *(*(cf + 46) + 32) = CFRetain(a6);
            v12 = 0;
            *(*(cf + 46) + 24) = SafeRetain(a5);
          }

          else
          {
            v12 = 2;
          }
        }
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  SafeRelease(0);
  SafeRelease(0);
  return v12;
}

void AMAuthInstallBasebandFinalize(uint64_t a1)
{
  if (*(a1 + 176))
  {
    sub_1000088FC();
    AMAuthInstallLog(v2, v3, v4, v5, v6, v7, v8, v9, v24);
    AMAuthInstallLog(3, "AMAuthInstallBasebandFinalize", "* unacknowledged fusing program *", v10, v11, v12, v13, v14, v25);
    sub_1000088FC();
    AMAuthInstallLog(v15, v16, v17, v18, v19, v20, v21, v22, v26);
  }

  _AMAuthInstallBasebandParametersFinalize(*(a1 + 48));
  AMAuthInstallBasebandLocalSetSigningParameters(a1, 0, 0, 0, 0, 0);
  SafeRelease(*(a1 + 160));
  SafeRelease(*(a1 + 168));
  SafeRelease(*(a1 + 176));
  SafeRelease(*(a1 + 192));
  SafeRelease(*(a1 + 200));
  SafeRelease(*(a1 + 208));
  SafeRelease(*(a1 + 216));
  SafeRelease(*(a1 + 136));
  SafeRelease(*(a1 + 240));
  SafeRelease(*(a1 + 264));
  SafeRelease(*(a1 + 248));
  SafeRelease(*(a1 + 232));
  SafeRelease(*(a1 + 272));
  v23 = *(a1 + 280);

  SafeRelease(v23);
}

uint64_t AMAuthInstallBasebandCopyNextComponentName(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 48);
  if (!v2)
  {
    *a2 = 0;
    return 99;
  }

  if ((*(v2 + 4) - 80) > 0x18)
  {
    goto LABEL_4;
  }

  sub_100008890();
  if (!v6)
  {

    return AMAuthInstallBasebandRembrandtCopyNextComponentName();
  }

  if (v37)
  {
LABEL_4:
    sub_100008880();
    v5 = v4;
    v6 = v6 || v3 == 520417;
    if (v6 || v3 == 938209 || v3 == 1327329 || v3 == 1515745 || v3 == 1700065 || v3 == 2044129 || v3 == 2089185 || v3 == 2814177)
    {
LABEL_44:

      return AMAuthInstallBasebandMAV10CopyNextComponentName();
    }

    sub_100008850();
    if (v6)
    {

      return AMAuthInstallBasebandJ2CopyNextComponentName();
    }

    else
    {
      sub_100008860();
      if (v6)
      {

        return AMAuthInstallBasebandN92CopyNextComponentName();
      }

      else
      {
        sub_100008840();
        if (v6)
        {

          return AMAuthInstallBasebandN94CopyNextComponentName();
        }

        else
        {
          sub_100008830();
          if (!v6 && v18 != 7282913)
          {
            sub_100008870();
            v5 = v26;
            if (!v6 && v25 != 9572577 && v25 != 9781473)
            {
              AMAuthInstallLog(3, "AMAuthInstallBasebandCopyNextComponentName", "chipID: 0x%x is not supported", v20, v21, v22, v23, v24, v25);
              return 99;
            }

            goto LABEL_44;
          }

          return AMAuthInstallBasebandN41CopyNextComponentName();
        }
      }
    }
  }

  else
  {

    return AMAuthInstallBasebandICE3CopyNextComponentName(v29, v30, v31, v32, v33, v34, v35, v36);
  }
}

uint64_t AMAuthInstallBasebandSupportsLocalSigning(uint64_t a1, _BYTE *a2)
{
  v2 = 1;
  if (a1 && a2)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = *(v4 + 4);
      v6 = (v5 - 94) > 0xA || ((1 << (v5 - 94)) & 0x685) == 0;
      if (!v6)
      {
        v28 = AMAuthInstallBasebandRembrandtSupportsLocalSigning();
LABEL_51:
        v2 = 0;
        *a2 = v28;
        return v2;
      }

      sub_100008880();
      if (v6 || v7 == 520417)
      {
        goto LABEL_44;
      }

      sub_1000088A8();
      if (v6 || v9 == 1327329 || v9 == 1515745 || v9 == 1700065 || v9 == 2044129 || v9 == 2089185 || v9 == 2814177)
      {
        v28 = AMAuthInstallBasebandMAV20SupportsLocalSigning();
        goto LABEL_51;
      }

      sub_100008850();
      if (v6)
      {
        v28 = AMAuthInstallBasebandJ2SupportsLocalSigning();
        goto LABEL_51;
      }

      sub_1000088EC();
      if (v6)
      {
        goto LABEL_44;
      }

      sub_100008840();
      if (v6)
      {
        v28 = AMAuthInstallBasebandN94SupportsLocalSigning();
        goto LABEL_51;
      }

      sub_100008830();
      if (v6 || v24 == 7282913)
      {
        v28 = AMAuthInstallBasebandN41SupportsLocalSigning(v16, v17, v18, v19, v20, v21, v22, v23);
        goto LABEL_51;
      }

      sub_100008870();
      if (v6 || v26 == 9572577)
      {
LABEL_44:
        v28 = AMAuthInstallBasebandMAV10SupportsLocalSigning();
        goto LABEL_51;
      }

      sub_100008860();
      if (v29)
      {
        v28 = AMAuthInstallBasebandN92SupportsLocalSigning();
        goto LABEL_51;
      }

      AMAuthInstallLog(3, "AMAuthInstallBasebandSupportsLocalSigning", "chipID: 0x%x is not supported for local signing", v30, v31, v32, v33, v34, v35);
    }

    v28 = 0;
    goto LABEL_51;
  }

  return v2;
}

uint64_t AMAuthInstallBasebandSetKeyHashInternal(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  result = sub_1000088B8();
  if (v5 && v4 && *(v2 + 200))
  {
    if (CFDataGetLength(v1) == 20 || CFDataGetLength(v1) == 32 || CFDataGetLength(v1) == 48 || !CFDataGetLength(v1))
    {
      sub_100008908(*(v2 + 200));
      return 0;
    }

    else
    {
      Length = CFDataGetLength(v1);
      AMAuthInstallLog(3, "AMAuthInstallBasebandSetKeyHashInternal", "Invalid hash length %d", v7, v8, v9, v10, v11, Length);
      return 99;
    }
  }

  return result;
}

uint64_t AMAuthInstallBasebandMeasureFirmwareFromBbfw(int a1, uint64_t a2, const __CFString *a3, uint64_t (*a4)(uint64_t, CFTypeRef, uint64_t), uint64_t a5, uint64_t a6)
{
  v8 = a3;
  v25 = 0;
  v11 = BbfwReaderFindAndCopyFileData(a5, a3, &v25);
  if (!a1 && v11)
  {
    AMAuthInstallLog(6, "AMAuthInstallBasebandMeasureFirmwareFromBbfw", "%@ absent; but ignoring", v12, v13, v14, v15, v16, v8);
LABEL_8:
    v23 = 1;
    goto LABEL_9;
  }

  if (!v11)
  {
    v17 = a4(a2, v25, a6);
    if (!v17)
    {
      goto LABEL_8;
    }

    AMAuthInstallGetLocalizedStatusString(0, v17);
    AMAuthInstallLog(3, "AMAuthInstallBasebandMeasureFirmwareFromBbfw", "failed to measure %@: %@;", v18, v19, v20, v21, v22, v8);
  }

  v23 = 0;
LABEL_9:
  SafeRelease(v25);
  return v23;
}

uint64_t AMAuthInstallBasebandStitchCopyFile(uint64_t a1, CFTypeRef cf, uint64_t a3, void *a4)
{
  if (!a1)
  {
    return 1;
  }

  CFRetain(cf);
  result = sub_1000088E0();
  *a4 = v6;
  return result;
}

uint64_t AMAuthInstallBasebandStitchFirmwareFromBbfw(uint64_t a1, const __CFString *a2, uint64_t (*a3)(uint64_t, CFTypeRef, uint64_t, void **), uint64_t a4, uint64_t a5, __CFDictionary *a6)
{
  value = 0;
  v25 = 0;
  if (!BbfwReaderFindAndCopyFileData(a4, a2, &v25))
  {
    v11 = a3(a1, v25, a5, &value);
    if (v11)
    {
      AMAuthInstallGetLocalizedStatusString(0, v11);
      AMAuthInstallLog(4, "AMAuthInstallBasebandStitchFirmwareFromBbfw", "failed to stitch %@: %@; continuing anyway", v17, v18, v19, v20, v21, a2);
    }

    else
    {
      if (value)
      {
        CFDictionarySetValue(a6, a2, value);
        v22 = 1;
        goto LABEL_7;
      }

      AMAuthInstallLog(3, "AMAuthInstallBasebandStitchFirmwareFromBbfw", "stitch function returned NULL for %@; continuing anyway", v12, v13, v14, v15, v16, a2);
    }
  }

  v22 = 0;
LABEL_7:
  SafeRelease(v25);
  SafeRelease(value);
  return v22;
}

uint64_t AMAuthInstallBasebandLocalProvisionDevice(uint64_t a1, uint64_t a2)
{
  v3 = 1;
  if (!a1)
  {
    return v3;
  }

  if (!a2)
  {
    return v3;
  }

  v4 = *(a1 + 48);
  if (!v4)
  {
    return v3;
  }

  v5 = *(v4 + 4);
  v6 = (v5 - 94) > 0xA || ((1 << (v5 - 94)) & 0x685) == 0;
  if (!v6)
  {

    return AMAuthInstallBasebandRembrandtLocalProvisionDevice();
  }

  sub_100008880();
  v9 = v8;
  if (v6 || v7 == 520417)
  {
    goto LABEL_44;
  }

  sub_1000088A8();
  if (v6 || v12 == 1327329 || v12 == 1515745 || v12 == 1700065 || v12 == 2044129 || v12 == 2089185 || v12 == 2814177)
  {

    return AMAuthInstallBasebandMAV20LocalProvisionDevice();
  }

  sub_100008850();
  if (v6)
  {

    return AMAuthInstallBasebandJ2LocalProvisionDevice();
  }

  sub_1000088EC();
  v9 = v20;
  if (v6)
  {
    goto LABEL_44;
  }

  sub_100008840();
  if (v6)
  {

    return AMAuthInstallBasebandN94LocalProvisionDevice();
  }

  sub_100008830();
  if (v6 || v23 == 7282913)
  {

    return AMAuthInstallBasebandN41LocalProvisionDevice();
  }

  sub_100008870();
  v9 = v26;
  if (v6 || v25 == 9572577)
  {
LABEL_44:

    return AMAuthInstallBasebandMAV10LocalProvisionDevice();
  }

  sub_100008860();
  if (!v29)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandLocalProvisionDevice", "chipID: 0x%x is not supported for local provisioning", v32, v33, v34, v35, v36, v37);
    return 13;
  }

  return AMAuthInstallBasebandN92LocalProvisionDevice(v30);
}

uint64_t AMAuthInstallBasebandSetAntennaType(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 1;
  }

  SafeRelease(*(a1 + 144));
  SafeRetain(a2);
  result = sub_1000088E0();
  *(a1 + 144) = v5;
  return result;
}

uint64_t AMAuthInstallBasebandSetBehavior(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 1;
  }

  SafeRelease(*(a1 + 152));
  SafeRetain(a2);
  result = sub_1000088E0();
  *(a1 + 152) = v5;
  return result;
}

uint64_t AMAuthInstallBasebandIsFused(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 48);
  if (!v2)
  {
    return 1;
  }

  result = 0;
  v4 = *(v2 + 16);
  v5 = (*(v2 + 96) < 4u) & (0xDu >> (*(v2 + 96) & 0xF));
  if (!v4)
  {
    LOBYTE(v5) = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t AMAuthInstallBasebandGetVersion(uint64_t a1, CFDataRef data, __CFDictionary *a3, const void *a4, const void *a5)
{
  value = 0;
  result = 1;
  if (a1 && data && a3 && a4)
  {
    if (AMAuthInstallBasebandReadVersionFromBbfw(data, a4, &value) || !value)
    {
      return 14;
    }

    else
    {
      CFDictionarySetValue(a3, a5, value);
      return 0;
    }
  }

  return result;
}

uint64_t AMAuthInstallBasebandICE3MeasureRamPsi(const void *a1, uint64_t a2, __CFDictionary *a3)
{
  sub_1000092FC();
  v6 = CFGetAllocator(v5);
  v7 = FlsParserCreate(v6);
  if (v7)
  {
    v8 = sub_1000092F0();
    v10 = FlsParserReadFromData(v8, v9);
    if (v10 || (v10 = FlsParserCopyRamPsi(v7, &theData), v10) || (v11 = CFGetAllocator(a1), BytePtr = CFDataGetBytePtr(theData), Length = CFDataGetLength(theData), v10 = sub_100008920(v11, BytePtr, Length, &v32, &value, v14, v15, v16), v10))
    {
      v30 = v10;
    }

    else
    {
      sub_100009308(v10, v17, "Version = %@", v18, v19, v20, v21, v22, value);
      CFDictionarySetValue(a3, @"RamPSI-Version", value);
      sub_100009308(v23, v24, "PartialDigest = %@", v25, v26, v27, v28, v29, v32);
      CFDictionarySetValue(a3, @"RamPSI-PartialDigest", v32);
      v30 = 0;
    }
  }

  else
  {
    v30 = 2;
  }

  SafeRelease(v7);
  SafeRelease(value);
  SafeRelease(theData);
  SafeRelease(v32);
  return v30;
}

uint64_t AMAuthInstallBasebandICE3StitchRamPsi()
{
  sub_100009344();
  sub_1000092FC();
  v4 = CFGetAllocator(v3);
  v5 = FlsParserCreate(v4);
  if (v5)
  {
    v6 = sub_100009370();
    if (v6 || (v6 = FlsParserCopyRamPsi(v5, &v18), v6))
    {
      v14 = v6;
      v9 = 0;
    }

    else
    {
      AMAuthInstallDebugWriteObject(v2, v18, @"RamPSI-Original", 1);
      v7 = sub_10005FEC8(v2, v18, v1, @"RamPSI-Blob", &v17);
      v9 = v17;
      if (v7 || (sub_100009358(v2, v8, @"RamPSI-Personalized"), v10 = sub_1000092F0(), v7 = FlsParserReplaceRamPsi(v10, v11), v7))
      {
        v14 = v7;
      }

      else
      {
        v12 = sub_100009338();
        v14 = FlsParserCopyAsData(v12, v13);
        if (!v14)
        {
          *v0 = CFRetain(cf);
        }
      }
    }
  }

  else
  {
    v9 = 0;
    v14 = 2;
  }

  SafeRelease(v5);
  SafeRelease(v18);
  SafeRelease(v9);
  SafeRelease(cf);
  return v14;
}

uint64_t sub_10005FEC8(const void *a1, const void *a2, CFDictionaryRef theDict, const void *a4, CFTypeRef *a5)
{
  Value = CFDictionaryGetValue(theDict, @"BasebandFirmware");
  if (!Value)
  {
    AMAuthInstallLog(3, "_AMAuthInstallBasebandStitchICE3Psi", "response missing %@", v10, v11, v12, v13, v14, @"BasebandFirmware");
LABEL_8:
    v24 = 0;
    v29 = 8;
    goto LABEL_5;
  }

  v15 = CFDictionaryGetValue(Value, a4);
  if (!v15)
  {
    AMAuthInstallLog(3, "_AMAuthInstallBasebandStitchICE3Psi", "response missing %@", v16, v17, v18, v19, v20, a4);
    goto LABEL_8;
  }

  v21 = v15;
  AMAuthInstallDebugWriteObject(a1, a2, a4, 1);
  v22 = CFGetAllocator(a1);
  MutableCopy = CFDataCreateMutableCopy(v22, 0, a2);
  v24 = MutableCopy;
  if (MutableCopy)
  {
    Length = CFDataGetLength(MutableCopy);
    v26 = CFDataGetLength(v21);
    CFDataSetLength(v24, Length - v26);
    BytePtr = CFDataGetBytePtr(v21);
    v28 = CFDataGetLength(v21);
    CFDataAppendBytes(v24, BytePtr, v28);
    v29 = 0;
    *a5 = CFRetain(v24);
  }

  else
  {
    v29 = 2;
  }

LABEL_5:
  SafeRelease(v24);
  return v29;
}

uint64_t AMAuthInstallBasebandICE3MeasureEbl(const void *a1, uint64_t a2, __CFDictionary *a3)
{
  v19 = 0;
  theData = 0;
  v5 = CFGetAllocator(a1);
  v6 = FlsParserCreate(v5);
  if (v6)
  {
    v7 = sub_100009370();
    if (v7 || (v7 = FlsParserCopyEbl(v6, &theData), v7))
    {
      v16 = v7;
      v17 = 0;
    }

    else
    {
      v8 = CFGetAllocator(a1);
      BytePtr = CFDataGetBytePtr(theData);
      Length = CFDataGetLength(theData);
      v16 = sub_100008AA8(v8, BytePtr, Length, &v19);
      v17 = v19;
      if (!v16)
      {
        AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureEbl", "Digest = %@", v11, v12, v13, v14, v15, v19);
        CFDictionarySetValue(a3, @"EBL-Digest", v17);
      }
    }
  }

  else
  {
    v17 = 0;
    v16 = 2;
  }

  SafeRelease(v6);
  SafeRelease(theData);
  SafeRelease(v17);
  return v16;
}

uint64_t AMAuthInstallBasebandICE3StitchEbl(void *a1, const __CFData *a2, CFDictionaryRef theDict, CFTypeRef *a4)
{
  cf = 0;
  theData = 0;
  Value = CFDictionaryGetValue(theDict, @"BBTicket");
  if (!Value)
  {
    v11 = 0;
    v24 = 8;
    goto LABEL_12;
  }

  if (!*(a1[6] + 24))
  {
    v24 = 0;
    v11 = 0;
LABEL_11:
    Value = 0;
    goto LABEL_12;
  }

  sub_100009358(a1, v7, @"BB-Ticket");
  v9 = CFGetAllocator(a1);
  v10 = FlsParserCreate(v9);
  v11 = v10;
  if (!v10)
  {
    Value = 0;
    goto LABEL_16;
  }

  v12 = FlsParserReadFromData(v10, a2);
  if (v12 || (v13 = sub_100009338(), v12 = FlsParserCopyEbl(v13, v14), v12))
  {
    v24 = v12;
    goto LABEL_11;
  }

  v15 = CFGetAllocator(a1);
  MutableCopy = CFDataCreateMutableCopy(v15, 0, Value);
  Value = MutableCopy;
  if (!MutableCopy)
  {
LABEL_16:
    v24 = 2;
    goto LABEL_12;
  }

  Length = CFDataGetLength(MutableCopy);
  CFDataAppendBytes(Value, byte_1000848BF, -Length & 3);
  BytePtr = CFDataGetBytePtr(theData);
  v19 = CFDataGetLength(theData);
  CFDataAppendBytes(Value, BytePtr, v19);
  sub_100009358(a1, v20, @"EBL-Personalized");
  v21 = sub_1000092F0();
  v23 = FlsParserReplaceEbl(v21, v22);
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = FlsParserCopyAsData(v11, &cf);
    if (!v24)
    {
      *a4 = CFRetain(cf);
    }
  }

LABEL_12:
  SafeRelease(v11);
  SafeRelease(theData);
  SafeRelease(cf);
  SafeRelease(Value);
  return v24;
}

uint64_t AMAuthInstallBasebandICE3MeasureFlashPsi(const void *a1, uint64_t a2, __CFDictionary *a3)
{
  theData = 0;
  value = 0;
  sub_1000092FC();
  v6 = CFGetAllocator(v5);
  v7 = FlsParserCreate(v6);
  if (v7)
  {
    v8 = sub_1000092F0();
    v10 = FlsParserReadFromData(v8, v9);
    if (v10 || (v10 = FlsParserCopyFlashPsi(v7, &theData, &v46), v10) || (v11 = CFGetAllocator(a1), v12 = CFDataGetBytePtr(theData), v13 = CFDataGetLength(theData), v10 = sub_100008920(v11, v12, v13, &v45, &value, v14, v15, v16), v10))
    {
      v42 = v10;
      v34 = 0;
    }

    else
    {
      v17 = CFGetAllocator(a1);
      BytePtr = CFDataGetBytePtr(v46);
      Length = CFDataGetLength(v46);
      v20 = sub_100008AA8(v17, BytePtr, Length, &v44);
      if (v20)
      {
        v42 = v20;
        v34 = v44;
      }

      else
      {
        sub_100009308(v20, v21, "Version = %@", v22, v23, v24, v25, v26, value);
        CFDictionarySetValue(a3, @"FlashPSI-Version", value);
        sub_100009308(v27, v28, "PartialDigest = %@", v29, v30, v31, v32, v33, v45);
        CFDictionarySetValue(a3, @"FlashPSI-PartialDigest", v45);
        v34 = v44;
        sub_100009308(v35, v36, "SecPack Digest = %@", v37, v38, v39, v40, v41, v44);
        CFDictionarySetValue(a3, @"FlashPSI-SecPackDigest", v34);
        v42 = 0;
      }
    }
  }

  else
  {
    v34 = 0;
    v42 = 2;
  }

  SafeRelease(v7);
  SafeRelease(value);
  SafeRelease(theData);
  SafeRelease(v46);
  SafeRelease(v45);
  SafeRelease(v34);
  return v42;
}

uint64_t AMAuthInstallBasebandICE3StitchFlashPsi()
{
  sub_1000092FC();
  if (*(*(v3 + 48) + 24))
  {
    sub_100009344();
    v5 = CFGetAllocator(v4);
    v6 = FlsParserCreate(v5);
    if (v6)
    {
      v7 = sub_100009370();
      if (v7 || (v7 = FlsParserCopyFlashPsi(v6, &v19, 0), v7))
      {
        v15 = v7;
        v10 = 0;
      }

      else
      {
        AMAuthInstallDebugWriteObject(v2, v19, @"FlashPsi-Original", 1);
        v8 = sub_10005FEC8(v2, v19, v1, @"FlashPSI-Blob", &v18);
        v10 = v18;
        if (v8 || (sub_100009358(v2, v9, @"FlashPsi-Personalized"), v11 = sub_1000092F0(), v8 = FlsParserReplaceFlashPsi(v11, v12), v8))
        {
          v15 = v8;
        }

        else
        {
          v13 = sub_100009338();
          v15 = FlsParserCopyAsData(v13, v14);
          if (!v15)
          {
            *v0 = CFRetain(cf);
          }
        }
      }
    }

    else
    {
      v10 = 0;
      v15 = 2;
    }
  }

  else
  {
    v10 = 0;
    v15 = 0;
    v6 = 0;
  }

  SafeRelease(v6);
  SafeRelease(v19);
  SafeRelease(v10);
  SafeRelease(cf);
  return v15;
}

uint64_t AMAuthInstallBasebandICE3MeasureModemStack(const void *a1, const __CFData *a2, __CFDictionary *a3)
{
  v36 = 0;
  theData = 0;
  v34 = 0;
  v35 = 0;
  v6 = CFGetAllocator(a1);
  v7 = FlsParserCreate(v6);
  v8 = v7;
  if (!v7)
  {
    v32 = 0;
    v19 = 0;
    v22 = 0;
LABEL_14:
    v31 = 2;
    goto LABEL_8;
  }

  v9 = FlsParserReadFromData(v7, a2);
  if (v9 || (v9 = FlsParserCopyModemStack(v8, &theData, &v36), v9))
  {
    v31 = v9;
    v32 = 0;
    v19 = 0;
LABEL_12:
    v22 = 0;
    goto LABEL_8;
  }

  v10 = CFGetAllocator(a1);
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v13 = sub_100008AA8(v10, BytePtr, Length, &v35);
  v19 = v35;
  if (v13)
  {
    v31 = v13;
    v32 = 0;
    goto LABEL_12;
  }

  AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureModemStack", "Digest = %@", v14, v15, v16, v17, v18, v35);
  CFDictionarySetValue(a3, @"ModemStack-Digest", v19);
  v20 = CFGetAllocator(a1);
  v21 = CFDataGetLength(theData);
  v22 = CFStringCreateWithFormat(v20, 0, @"0x%08lx", v21);
  if (!v22)
  {
    v32 = 0;
    goto LABEL_14;
  }

  CFDictionarySetValue(a3, @"ModemStack-Length", v22);
  v23 = CFGetAllocator(a1);
  v24 = CFDataGetBytePtr(v36);
  v25 = CFDataGetLength(v36);
  v31 = sub_100008AA8(v23, v24, v25, &v34);
  v32 = v34;
  if (!v31)
  {
    AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureModemStack", "SecPack Digest = %@", v26, v27, v28, v29, v30, v34);
    CFDictionarySetValue(a3, @"ModemStack-SecPackDigest", v32);
  }

LABEL_8:
  SafeRelease(v8);
  SafeRelease(theData);
  SafeRelease(v36);
  SafeRelease(v19);
  SafeRelease(v32);
  SafeRelease(v22);
  return v31;
}

uint64_t AMAuthInstallBasebandICE3StitchWorld()
{
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  sub_1000092FC();
  if (!v0 || (v3 = v0, !v0[6]))
  {
    v7 = 0;
    v9 = 1;
    goto LABEL_8;
  }

  v4 = v2;
  v5 = v1;
  v6 = CFGetAllocator(v0);
  v7 = FlsParserCreate(v6);
  if (!v7)
  {
    goto LABEL_33;
  }

  v8 = sub_100009370();
  if (!v8)
  {
    v8 = FlsParserCopyRamPsi(v7, &v31);
    if (!v8)
    {
      if (!*(v3[6] + 24) || (v8 = FlsParserCopyFlashPsi(v7, &v30, 0), !v8) && (v8 = FlsParserCopyEbl(v7, &v29), !v8))
      {
        Value = CFDictionaryGetValue(v5, @"BasebandFirmware");
        v9 = Value;
        if (!Value)
        {
          AMAuthInstallLog(3, "AMAuthInstallBasebandICE3StitchWorld", "server response doesn't contain personalization data", v12, v13, v14, v15, v16, v24);
          goto LABEL_8;
        }

        v17 = CFDictionaryGetValue(Value, @"RamPSI-Blob");
        v18 = CFDictionaryGetValue(v9, @"FlashPSI-Blob");
        v19 = CFDictionaryGetValue(v5, @"BBTicket");
        if (v31 && v17)
        {
          v8 = AMAuthInstallBasebandCreatePersonalizedPsiData(v3, v31, v17, &v28);
          if (v8)
          {
            goto LABEL_6;
          }

          sub_100009320(v8, v31, @"rampsi-original");
          v20 = AMAuthInstallDebugWriteObject(v3, v17, @"rampsi-stitch", 1);
          sub_100009320(v20, v28, @"rampsi-personalized");
        }

        if (!v30 || !v18)
        {
          goto LABEL_21;
        }

        v8 = AMAuthInstallBasebandCreatePersonalizedPsiData(v3, v30, v18, &v27);
        if (!v8)
        {
          sub_100009320(v8, v30, @"flashpsi-original");
          v21 = AMAuthInstallDebugWriteObject(v3, v18, @"flashpsi-stitch", 1);
          sub_100009320(v21, v27, @"flashpsi-personalized");
LABEL_21:
          if (!v29 || !v19)
          {
LABEL_25:
            if (v28)
            {
              FlsParserReplaceRamPsi(v7, v28);
            }

            if (v27)
            {
              FlsParserReplaceFlashPsi(v7, v27);
            }

            if (v26)
            {
              FlsParserReplaceEbl(v7, v26);
            }

            v22 = sub_100009338();
            FlsParserCopyAsData(v22, v23);
            if (cf)
            {
              v9 = 0;
              *v4 = CFRetain(cf);
              goto LABEL_8;
            }

LABEL_33:
            v9 = 2;
            goto LABEL_8;
          }

          v8 = AMAuthInstallBasebandCreatePersonalizedTicketPlusEblData(v3, v29, v19, &v26);
          if (!v8)
          {
            sub_100009320(v8, v26, @"ticket-plus-ebl");
            goto LABEL_25;
          }
        }
      }
    }
  }

LABEL_6:
  v9 = v8;
LABEL_8:
  SafeRelease(v7);
  SafeRelease(v31);
  SafeRelease(v30);
  SafeRelease(v29);
  SafeRelease(v28);
  SafeRelease(v27);
  SafeRelease(v26);
  SafeRelease(cf);
  return v9;
}

uint64_t AMAuthInstallBasebandICE3CopyNextComponentName(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 1;
  }

  v8 = *(a1 + 48);
  if (!v8)
  {
    return 1;
  }

  if (*(v8 + 4) != 80)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandICE3CopyNextComponentName", "unsupported chipID: 0x%08x", a4, a5, a6, a7, a8, *(v8 + 4));
    return 1;
  }

  if (!*(v8 + 16))
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandICE3CopyNextComponentName", "missing snum", a4, a5, a6, a7, a8, v13);
    return 1;
  }

  if (*(v8 + 24))
  {
    v10 = @"stack.bbfw";
  }

  else
  {
    v10 = @"boot.bbfw";
  }

  v11 = CFRetain(v10);
  result = 0;
  *a2 = v11;
  return result;
}

uint64_t AMAuthInstallBasebandICE3StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v6 = BbfwReaderOpen(cf);
    v4 = v6;
    if (v6)
    {
      v12 = sub_1000092A8(v6, @"psi_ram.fls");
      v13 = sub_1000092A8(v12, @"ebl.fls");
      v14 = sub_1000092A8(v13, @"psi_flash.fls");
      v15 = sub_1000092A8(v14, @"stack.fls");
      v16 = sub_1000092A8(v15, @"world.fls");
      sub_1000092A8(v16, @"Options.plist");
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandICE3StitchFirmware", "failed to open bbfw archive for reading", v7, v8, v9, v10, v11, v18);
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallBasebandICE3MeasureFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  if (a1 && cf && a3)
  {
    v5 = BbfwReaderOpen(cf);
    v3 = v5;
    if (!v5)
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandICE3MeasureFirmware", "failed to open bbfw archive for reading", v7, v8, v9, v10, v11, v27);
      v4 = 4;
      goto LABEL_10;
    }

    v12 = sub_1000092CC(v5, v6, @"psi_ram.fls");
    if (v12)
    {
      v19 = sub_1000092CC(v12, v13, @"ebl.fls");
      if (v19)
      {
        v21 = sub_1000092CC(v19, v20, @"psi_flash.fls");
        if (v21)
        {
          v23 = sub_1000092CC(v21, v22, @"stack.fls");
          if (v23)
          {
            sub_1000092CC(v23, v24, @"world.fls");
            v4 = 0;
            goto LABEL_10;
          }

          v26 = "failed to measure: stack.fls";
        }

        else
        {
          v26 = "failed to measure: psi_flash.fls";
        }
      }

      else
      {
        v26 = "failed to measure: ebl.fls";
      }
    }

    else
    {
      v26 = "failed to measure: psi_ram.fls";
    }

    AMAuthInstallLog(3, "AMAuthInstallBasebandICE3MeasureFirmware", v26, v14, v15, v16, v17, v18, v27);
    v4 = 15;
  }

LABEL_10:
  BbfwReaderClose(v3);
  return v4;
}

BOOL AMAuthInstallBasebandICE3FirmwareSupported(const void *a1)
{
  if (!a1)
  {
    v7 = 0;
LABEL_7:
    v8 = 0;
    goto LABEL_4;
  }

  v1 = BbfwReaderOpen(a1);
  v7 = v1;
  if (!v1)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandICE3FirmwareSupported", "failed to open bbfw archive for reading", v2, v3, v4, v5, v6, v10);
    goto LABEL_7;
  }

  v8 = BbfwReaderFindFile(v1, @"psi_ram.fls") == 0;
LABEL_4:
  BbfwReaderClose(v7);
  return v8;
}

uint64_t AMAuthInstallBasebandJ2StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v7 = BbfwReaderOpen(cf);
    v4 = v7;
    if (v7)
    {
      v13 = sub_1000092A8(v7, @"ENPRG.mbn");
      sub_1000092A8(v13, @"dbl.mbn");
      sub_1000093A4(a1, @"osbl.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      sub_1000093A4(a1, @"amss.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      sub_1000093A4(a1, @"dsp1.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v14 = sub_1000093A4(a1, @"dsp2.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v15 = sub_1000092A8(v14, @"partition.mbn");
      sub_1000092A8(v15, @"Options.plist");
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandJ2StitchFirmware", "failed to open bbfw archive for reading", v8, v9, v10, v11, v12, v17);
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallBasebandJ2MeasureFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  if (a1 && cf && a3)
  {
    v5 = BbfwReaderOpen(cf);
    v3 = v5;
    if (v5)
    {
      v12 = sub_1000092CC(v5, v6, @"ENPRG.mbn");
      if (v12)
      {
        v14 = sub_1000092CC(v12, v13, @"dbl.mbn");
        if (v14)
        {
          v16 = sub_1000092CC(v14, v15, @"osbl.mbn");
          if (v16)
          {
            v18 = sub_1000092CC(v16, v17, @"amss.mbn");
            if (v18)
            {
              v20 = sub_1000092CC(v18, v19, @"dsp1.mbn");
              if (v20)
              {
                v22 = sub_1000092CC(v20, v21, @"dsp2.mbn");
                if (v22)
                {
                  if (sub_1000092CC(v22, v23, @"partition.mbn"))
                  {
                    v4 = 0;
                    goto LABEL_13;
                  }

                  v4 = 15;
                  v25 = "failed to measure: partition.mbn";
                }

                else
                {
                  v4 = 15;
                  v25 = "failed to measure: dsp2.mbn";
                }
              }

              else
              {
                v4 = 15;
                v25 = "failed to measure: dsp1.mbn";
              }
            }

            else
            {
              v4 = 15;
              v25 = "failed to measure: amss.mbn";
            }
          }

          else
          {
            v4 = 15;
            v25 = "failed to measure: osbl.mbn";
          }
        }

        else
        {
          v4 = 15;
          v25 = "failed to measure: dbl.mbn";
        }
      }

      else
      {
        v4 = 15;
        v25 = "failed to measure: ENPRG.mbn";
      }
    }

    else
    {
      v4 = 4;
      v25 = "failed to open bbfw archive for reading";
    }

    AMAuthInstallLog(3, "AMAuthInstallBasebandJ2MeasureFirmware", v25, v7, v8, v9, v10, v11, v26);
  }

LABEL_13:
  BbfwReaderClose(v3);
  return v4;
}

uint64_t AMAuthInstallBasebandMAV10StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v4 = BbfwReaderOpen(cf);
    if (v4)
    {
      sub_1000093A4(a1, @"sbl1.mbn", AMAuthInstallMonetStitchSbl1);
      sub_1000093A4(a1, @"restoresbl1.mbn", AMAuthInstallMonetStitchRestoreSbl1);
      v12 = sub_1000093A4(a1, @"acdb.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v13 = sub_1000093DC(v12, @"apps.mbn");
      v14 = sub_1000093DC(v13, @"dsp3.mbn");
      v15 = sub_1000093DC(v14, @"mba.mbn");
      v16 = sub_1000093DC(v15, @"qdsp6sw.mbn");
      v17 = sub_1000093DC(v16, @"rpm.mbn");
      v18 = sub_1000093DC(v17, @"tz.mbn");
      v19 = sub_1000093DC(v18, @"wdt.mbn");
      sub_1000093DC(v19, @"bbcfg.mbn");
      sub_1000093A4(a1, @"Options.plist", AMAuthInstallBasebandStitchCopyFile);
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandMAV10StitchFirmware", "failed to open bbfw archive for reading", v7, v8, v9, v10, v11, v21);
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallBasebandMAV10MeasureFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  if (a1 && cf && a3)
  {
    v7 = BbfwReaderOpen(cf);
    v3 = v7;
    if (!v7)
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandMAV10MeasureFirmware", "failed to open bbfw archive for reading", v9, v10, v11, v12, v13, v51);
      v4 = 4;
      goto LABEL_47;
    }

    v14 = sub_1000092CC(v7, v8, @"acdb.mbn");
    if (!v14)
    {
      AMAuthInstallLog(4, "AMAuthInstallBasebandMAV10MeasureFirmware", "missing acdb or failed to measure image", v16, v17, v18, v19, v20, v51);
    }

    if (!sub_1000092CC(v14, v15, @"apps.mbn"))
    {
      goto LABEL_48;
    }

    sub_100009420();
    v24 = v24 || v23 == 520417;
    if (!v24 && v23 != 9781473)
    {
      v21 = sub_1000092CC(v21, v22, @"dsp3.mbn");
      if (!v21)
      {
        goto LABEL_48;
      }
    }

    v26 = sub_1000092CC(v21, v22, @"mba.mbn");
    if (!v26 || !sub_1000092CC(v26, v27, @"qdsp6sw.mbn"))
    {
      goto LABEL_48;
    }

    sub_100009420();
    v31 = v24 || v30 == 9781473;
    v32 = @"restoresbl1.mbn";
    if (v31 || v30 == 520417)
    {
      v28 = sub_1000092CC(v28, v29, @"restoresbl1.mbn");
      if (!v28)
      {
        goto LABEL_48;
      }

      v32 = @"Info.plist";
      v34 = AMAuthInstallBasebandGetRestoreSbl1Version;
    }

    else
    {
      v34 = AMAuthInstallMonetMeasureRestoreSbl1;
    }

    v35 = sub_100009400(v28, v29, v32, v34);
    if (!v35 || !sub_1000092CC(v35, v36, @"rpm.mbn"))
    {
      goto LABEL_48;
    }

    sub_100009420();
    v40 = v24 || v39 == 9781473;
    v41 = @"sbl1.mbn";
    if (v40 || v39 == 520417)
    {
      v37 = sub_1000092CC(v37, v38, @"sbl1.mbn");
      if (!v37)
      {
        goto LABEL_48;
      }

      v41 = @"Info.plist";
      v43 = AMAuthInstallBasebandGetSbl1Version;
    }

    else
    {
      v43 = AMAuthInstallMonetMeasureSbl1;
    }

    v44 = sub_100009400(v37, v38, v41, v43);
    if (v44)
    {
      v46 = sub_1000092CC(v44, v45, @"tz.mbn");
      if (v46)
      {
        v48 = *(*(a1 + 48) + 4);
        v49 = AMAuthInstallMonetMeasureWdt;
        if (v48 != 8343777)
        {
          if (v48 != 9572577)
          {
LABEL_46:
            sub_1000092CC(v46, v47, @"bbcfg.mbn");
            v4 = 0;
            goto LABEL_47;
          }

          v49 = AMAuthInstallMonetMeasureWdtElf;
        }

        v46 = AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, a1, @"wdt.mbn", v49, v3, a3);
        if (v46)
        {
          goto LABEL_46;
        }
      }
    }

LABEL_48:
    v4 = 15;
  }

LABEL_47:
  BbfwReaderClose(v3);
  return v4;
}

uint64_t AMAuthInstallBasebandMAV20StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v4 = BbfwReaderOpen(cf);
    if (v4)
    {
      v12 = sub_1000093A4(a1, @"acdb.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v13 = sub_1000093DC(v12, @"aop.mbn");
      v14 = sub_1000093DC(v13, @"apdp.mbn");
      v15 = sub_1000093DC(v14, @"apps.mbn");
      v16 = sub_1000093DC(v15, @"bbcfg.mbn");
      v17 = sub_1000093DC(v16, @"devcfg.mbn");
      v18 = sub_1000093DC(v17, @"hyp.mbn");
      v19 = sub_1000093DC(v18, @"qdsp6sw.mbn");
      sub_1000093DC(v19, @"sec.elf");
      sub_1000093A4(a1, @"restoresbl1.mbn", AMAuthInstallMonetStitchRestoreSbl1);
      sub_1000093A4(a1, @"sbl1.mbn", AMAuthInstallMonetStitchSbl1);
      v20 = sub_1000093A4(a1, @"multi_image.mbn", AMAuthInstallMonetStitchMisc);
      v21 = sub_1000093DC(v20, @"multi_image_qti.mbn");
      sub_1000093DC(v21, @"tz.mbn");
      sub_1000093A4(a1, @"Info.plist", AMAuthInstallBasebandStitchCopyFile);
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandMAV20StitchFirmware", "failed to open bbfw archive for reading", v7, v8, v9, v10, v11, v23);
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallBasebandMAV20MeasureFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  if (a1 && cf && a3)
  {
    v5 = BbfwReaderOpen(cf);
    v3 = v5;
    if (v5)
    {
      v12 = sub_1000092CC(v5, v6, @"acdb.mbn");
      if (!v12)
      {
        AMAuthInstallLog(4, "AMAuthInstallBasebandMAV20MeasureFirmware", "missing acdb or failed to measure image", v14, v15, v16, v17, v18, v30);
      }

      v19 = sub_1000092CC(v12, v13, @"restoresbl1.mbn");
      if (v19 && (v21 = sub_1000092CC(v19, v20, @"Info.plist"), v21) && (v23 = sub_1000092CC(v21, v22, @"sbl1.mbn"), v23) && (v25 = sub_1000092CC(v23, v24, @"multi_image.mbn"), v25) && (v27 = sub_1000092CC(v25, v26, @"Info.plist"), v27))
      {
        sub_1000092CC(v27, v28, @"bbcfg.mbn");
        v4 = 0;
      }

      else
      {
        v4 = 15;
      }
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandMAV20MeasureFirmware", "failed to open bbfw archive for reading", v7, v8, v9, v10, v11, v30);
      v4 = 4;
    }
  }

  BbfwReaderClose(v3);
  return v4;
}

uint64_t AMAuthInstallBasebandMAV21StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v4 = BbfwReaderOpen(cf);
    if (v4)
    {
      v12 = sub_1000093A4(a1, @"acdb.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v13 = sub_1000093DC(v12, @"aop.mbn");
      v14 = sub_1000093DC(v13, @"apdp.mbn");
      v15 = sub_1000093DC(v14, @"apps.mbn");
      v16 = sub_1000093DC(v15, @"bbcfg.mbn");
      v17 = sub_1000093DC(v16, @"devcfg.mbn");
      v18 = sub_1000093DC(v17, @"hyp.mbn");
      v19 = sub_1000093DC(v18, @"qdsp6sw.mbn");
      sub_1000093DC(v19, @"sec.elf");
      sub_1000093A4(a1, @"restoresbl1.mbn", AMAuthInstallMonetStitchRestoreSbl1);
      sub_1000093A4(a1, @"sbl1.mbn", AMAuthInstallMonetStitchSbl1);
      v20 = sub_1000093A4(a1, @"multi_image.mbn", AMAuthInstallMonetStitchMisc);
      v21 = sub_1000093DC(v20, @"multi_image_qti.mbn");
      sub_1000093DC(v21, @"tz.mbn");
      v22 = sub_1000093A4(a1, @"Info.plist", AMAuthInstallBasebandStitchCopyFile);
      sub_1000093DC(v22, @"xbl_cfg.elf");
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandMAV21StitchFirmware", "failed to open bbfw archive for reading", v7, v8, v9, v10, v11, v24);
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallBasebandN41StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v4 = BbfwReaderOpen(cf);
    if (v4)
    {
      sub_1000093A4(a1, @"sbl1.mbn", AMAuthInstallMonetStitchSbl1);
      v12 = sub_1000093A4(a1, @"sbl2.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v13 = sub_1000093DC(v12, @"rpm.mbn");
      v14 = sub_1000093DC(v13, @"apps.mbn");
      v15 = sub_1000093DC(v14, @"dsp1.mbn");
      v16 = sub_1000093DC(v15, @"dsp2.mbn");
      sub_1000093DC(v16, @"dsp3.mbn");
      sub_1000093A4(a1, @"restoresbl1.mbn", AMAuthInstallMonetStitchRestoreSbl1);
      sub_1000093A4(a1, @"Options.plist", AMAuthInstallBasebandStitchCopyFile);
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandN41StitchFirmware", "failed to open bbfw archive for reading", v7, v8, v9, v10, v11, v18);
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallBasebandN41MeasureFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  if (a1 && cf && a3)
  {
    v5 = BbfwReaderOpen(cf);
    v3 = v5;
    if (v5)
    {
      v12 = sub_1000092CC(v5, v6, @"sbl1.mbn");
      if (v12 && (v14 = sub_1000092CC(v12, v13, @"sbl2.mbn"), v14) && (v16 = sub_1000092CC(v14, v15, @"rpm.mbn"), v16) && (v18 = sub_1000092CC(v16, v17, @"apps.mbn"), v18) && (v20 = sub_1000092CC(v18, v19, @"dsp1.mbn"), v20) && (v22 = sub_1000092CC(v20, v21, @"dsp2.mbn"), v22))
      {
        v24 = sub_1000092CC(v22, v23, @"dsp3.mbn");
        v4 = 15;
        if (v24)
        {
          if (sub_1000092CC(v24, v25, @"restoresbl1.mbn"))
          {
            v4 = 0;
          }

          else
          {
            v4 = 15;
          }
        }
      }

      else
      {
        v4 = 15;
      }
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandN41MeasureFirmware", "failed to open bbfw archive for reading", v7, v8, v9, v10, v11, v27);
      v4 = 4;
    }
  }

  BbfwReaderClose(v3);
  return v4;
}

uint64_t AMAuthInstallBasebandN92StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, __CFDictionary *a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v9 = BbfwReaderOpen(cf);
    v4 = v9;
    if (v9)
    {
      v15 = sub_1000092A8(v9, @"ENPRG.mbn");
      sub_1000092A8(v15, @"dbl.mbn");
      AMAuthInstallBasebandStitchFirmwareFromBbfw(a1, @"osbl.mbn", AMAuthInstallMonetStitchCopyIfPersonalized, v4, a3, a4);
      v16 = AMAuthInstallBasebandStitchFirmwareFromBbfw(a1, @"amss.mbn", AMAuthInstallMonetStitchCopyIfPersonalized, v4, a3, a4);
      v17 = sub_1000092A8(v16, @"partition.mbn");
      sub_1000092A8(v17, @"Options.plist");
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandN92StitchFirmware", "failed to open bbfw archive for reading", v10, v11, v12, v13, v14, v19);
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallBasebandN92MeasureFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  if (a1 && cf && a3)
  {
    v5 = BbfwReaderOpen(cf);
    v3 = v5;
    if (v5)
    {
      v12 = sub_1000092CC(v5, v6, @"ENPRG.mbn");
      if (v12)
      {
        v14 = sub_1000092CC(v12, v13, @"dbl.mbn");
        if (v14)
        {
          v16 = sub_1000092CC(v14, v15, @"osbl.mbn");
          if (v16)
          {
            v18 = sub_1000092CC(v16, v17, @"amss.mbn");
            if (v18)
            {
              if (sub_1000092CC(v18, v19, @"partition.mbn"))
              {
                v4 = 0;
                goto LABEL_11;
              }

              v4 = 15;
              v21 = "failed to measure: partition.mbn";
            }

            else
            {
              v4 = 15;
              v21 = "failed to measure: amss.mbn";
            }
          }

          else
          {
            v4 = 15;
            v21 = "failed to measure: osbl.mbn";
          }
        }

        else
        {
          v4 = 15;
          v21 = "failed to measure: dbl.mbn";
        }
      }

      else
      {
        v4 = 15;
        v21 = "failed to measure: ENPRG.mbn";
      }
    }

    else
    {
      v4 = 4;
      v21 = "failed to open bbfw archive for reading";
    }

    AMAuthInstallLog(3, "AMAuthInstallBasebandN92MeasureFirmware", v21, v7, v8, v9, v10, v11, v22);
  }

LABEL_11:
  BbfwReaderClose(v3);
  return v4;
}

uint64_t AMAuthInstallBasebandN92LocalProvisionDevice(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 272);
  v3 = *(a1 + 280);
  v4 = *(a1 + 232);
  v5 = *(a1 + 240);
  AMAuthInstallMonetLocalSetProvisioningManifestInfo();
  *(a1 + 256) = 0;

  return AMAuthInstallMonetLocalProvisionDevice();
}

uint64_t AMAuthInstallBasebandN94StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, __CFDictionary *a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v9 = BbfwReaderOpen(cf);
    v4 = v9;
    if (v9)
    {
      v15 = sub_1000092A8(v9, @"dbl.mbn");
      sub_1000092A8(v15, @"restoredbl.mbn");
      AMAuthInstallBasebandStitchFirmwareFromBbfw(a1, @"osbl.mbn", AMAuthInstallMonetStitchCopyIfPersonalized, v4, a3, a4);
      v16 = AMAuthInstallBasebandStitchFirmwareFromBbfw(a1, @"amss.mbn", AMAuthInstallMonetStitchCopyIfPersonalized, v4, a3, a4);
      sub_1000092A8(v16, @"Options.plist");
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandN94StitchFirmware", "failed to open bbfw archive for reading", v10, v11, v12, v13, v14, v18);
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallBasebandN94MeasureFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  if (a1 && cf && a3)
  {
    v5 = BbfwReaderOpen(cf);
    v3 = v5;
    if (v5)
    {
      v12 = sub_100009514(v5, v6, @"dbl.mbn");
      if (v12)
      {
        v14 = sub_100009514(v12, v13, @"restoredbl.mbn");
        if (v14)
        {
          v16 = sub_100009514(v14, v15, @"osbl.mbn");
          if (v16)
          {
            if (sub_100009514(v16, v17, @"amss.mbn"))
            {
              v4 = 0;
              goto LABEL_10;
            }

            v4 = 15;
            v19 = "failed to measure: amss.mbn";
          }

          else
          {
            v4 = 15;
            v19 = "failed to measure: osbl.mbn";
          }
        }

        else
        {
          v4 = 15;
          v19 = "failed to measure: restoredbl.mbn";
        }
      }

      else
      {
        v4 = 15;
        v19 = "failed to measure: dbl.mbn";
      }
    }

    else
    {
      v4 = 4;
      v19 = "failed to open bbfw archive for reading";
    }

    AMAuthInstallLog(3, "AMAuthInstallBasebandN94MeasureFirmware", v19, v7, v8, v9, v10, v11, v20);
  }

LABEL_10:
  BbfwReaderClose(v3);
  return v4;
}

uint64_t AMAuthInstallBasebandRembrandtStitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v7 = BbfwReaderOpen(cf);
    v4 = v7;
    if (v7)
    {
      v5 = 0;
      v15 = *(a1 + 48);
      switch(*(v15 + 4))
      {
        case '^':
          v16 = sub_100009698(v7, @"psi_ram.bin");
          sub_100009788(v16, @"restorepsi.bin");
          sub_100009654();
          v19 = sub_1000093A4(a1, v17, v18);
          v20 = sub_1000093DC(v19, @"SYS_SW.elf");
          v21 = sub_1000093DC(v20, @"TDSFW.elf");
          v22 = sub_1000093DC(v21, @"LTEFW.elf");
          v23 = sub_1000093DC(v22, @"bbcfg.bin");
          v24 = sub_1000093DC(v23, @"3GFW.elf");
          v25 = sub_1000093DC(v24, @"2GFW.elf");
          v26 = sub_1000093DC(v25, @"RFFW.elf");
          v27 = sub_1000093DC(v26, @"AudioFW.elf");
          v28 = sub_1000093DC(v27, @"Debug_info.elf");
          v29 = sub_1000093DC(v28, @"RPCU.elf");
          v30 = sub_1000093DC(v29, @"DPC.elf");
          v31 = sub_1000093DC(v30, @"CDMA2KFW.elf");
          v32 = @"custpack.elf";
          goto LABEL_15;
          v44 = sub_100009698(v7, @"psi_ram.bin");
          sub_100009788(v44, @"restorepsi.bin");
          sub_100009654();
          v47 = sub_1000093A4(a1, v45, v46);
          v48 = sub_1000093DC(v47, @"SYS_SW.elf");
          v49 = sub_1000093DC(v48, @"TDSFW.elf");
          v31 = sub_1000093DC(v49, @"LTEFW.elf");
          v32 = @"bbcfg.bin";
          goto LABEL_15;
        case 'e':
          v33 = sub_100009698(v7, @"psi_ram.bin");
          sub_100009788(v33, @"restorepsi.bin");
          sub_100009654();
          v36 = sub_1000093A4(a1, v34, v35);
          v37 = sub_1000093DC(v36, @"SYS_SW.elf");
          v38 = sub_1000093DC(v37, @"TDSFW.elf");
          v39 = sub_1000093DC(v38, @"LTEFW.elf");
          v40 = sub_1000093DC(v39, @"bbcfg.bin");
          v41 = sub_1000093DC(v40, @"3GFW.elf");
          v42 = sub_1000093DC(v41, @"2GFW.elf");
          v43 = sub_1000093DC(v42, @"RFFW.elf");
          v31 = sub_1000093DC(v43, @"AudioFW.elf");
          v32 = @"Debug_info.elf";
          goto LABEL_15;
        case 'g':
          v50 = sub_100009698(v7, @"psi_ram.bin");
          sub_100009788(v50, @"restorepsi.bin");
          sub_100009654();
          v53 = sub_1000093A4(a1, v51, v52);
          v54 = sub_1000093DC(v53, @"SYS_SW.elf");
          v55 = sub_1000093DC(v54, @"LTEFW.elf");
          v56 = sub_1000093DC(v55, @"bbcfg.bin");
          v57 = sub_1000093DC(v56, @"3GFW.elf");
          v58 = sub_1000093DC(v57, @"RFFW.elf");
          v59 = sub_1000093DC(v58, @"AudioFW.elf");
          v60 = sub_1000093DC(v59, @"Debug_info.elf");
          v31 = sub_1000093DC(v60, @"GNSS_FW.elf");
          v32 = @"irx_coefficient.elf";
          goto LABEL_15;
        case 'h':
          IsICE19BBGoldCertIDECDSA = AMAuthInstallIsICE19BBGoldCertIDECDSA(*(v15 + 8), v8, v9, v10, v11, v12, v13, v14);
          if (IsICE19BBGoldCertIDECDSA)
          {
            v62 = sub_100009698(IsICE19BBGoldCertIDECDSA, @"psi_ram.bin");
            v63 = @"restorepsi.bin";
            v64 = AMAuthInstallRembrandtCreateStitchedRestorePSI;
          }

          else
          {
            v62 = sub_1000097B8(IsICE19BBGoldCertIDECDSA, @"psi_ram2.bin", AMAuthInstallRembrandtCreateStitchedPSI2);
            v63 = @"restorepsi2.bin";
            v64 = AMAuthInstallRembrandtCreateStitchedRestorePSI2;
          }

          sub_1000097B8(v62, v63, v64);
          sub_100009654();
          v67 = sub_1000093A4(a1, v65, v66);
          v68 = sub_1000093DC(v67, @"SYS_SW.elf");
          v69 = sub_1000093DC(v68, @"bbcfg.bin");
          v70 = sub_1000093DC(v69, @"RFFW.elf");
          v71 = sub_1000093DC(v70, @"custpack.elf");
          v72 = sub_1000093DC(v71, @"TPCU.elf");
          v73 = sub_1000093DC(v72, @"upc.elf");
          v31 = sub_1000093DC(v73, @"legacy_rat_fw.elf");
          v32 = @"ant_cfg_data.elf";
LABEL_15:
          sub_1000093DC(v31, v32);
          v5 = 0;
          break;
        default:
          break;
      }
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandRembrandtStitchFirmware", "failed to open bbfw archive for reading", v10, v11, v12, v13, v14, v75);
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallBasebandRembrandtMeasureFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  if (a1 && cf && a3)
  {
    v6 = BbfwReaderOpen(cf);
    v3 = v6;
    if (v6)
    {
      v4 = 0;
      switch(*(*(a1 + 48) + 4))
      {
        case '^':
          v13 = sub_100009728(v6, v7, @"psi_ram.bin");
          if (!v13)
          {
            goto LABEL_72;
          }

          v15 = sub_1000096F8(v13, v14, @"restorepsi.bin");
          if (!v15)
          {
            goto LABEL_72;
          }

          v17 = sub_1000096C8(v15, v16, @"ebl.bin");
          if (!v17)
          {
            goto LABEL_72;
          }

          v19 = sub_100009668(v17, v18, @"SYS_SW.elf");
          if (!v19)
          {
            goto LABEL_74;
          }

          v21 = sub_1000092CC(v19, v20, @"TDSFW.elf");
          if (!v21)
          {
            goto LABEL_78;
          }

          v23 = sub_1000092CC(v21, v22, @"LTEFW.elf");
          if (!v23)
          {
            goto LABEL_76;
          }

          v25 = sub_100009758(v23, v24, @"bbcfg.bin");
          if (!v25)
          {
            goto LABEL_75;
          }

          v27 = sub_1000092CC(v25, v26, @"3GFW.elf");
          if (!v27)
          {
            goto LABEL_79;
          }

          v29 = sub_1000092CC(v27, v28, @"2GFW.elf");
          if (!v29)
          {
            goto LABEL_82;
          }

          v31 = sub_1000092CC(v29, v30, @"RFFW.elf");
          if (!v31)
          {
            goto LABEL_77;
          }

          v33 = sub_1000092CC(v31, v32, @"AudioFW.elf");
          if (!v33)
          {
            goto LABEL_80;
          }

          v35 = sub_1000092CC(v33, v34, @"Debug_info.elf");
          if (!v35)
          {
            goto LABEL_81;
          }

          v37 = sub_1000092CC(v35, v36, @"RPCU.elf");
          if (!v37)
          {
            v4 = 15;
            v99 = "failed to measure: RPCU.elf";
            break;
          }

          v39 = sub_1000092CC(v37, v38, @"DPC.elf");
          if (!v39)
          {
            v4 = 15;
            v99 = "failed to measure: DPC.elf";
            break;
          }

          v41 = sub_1000092CC(v39, v40, @"CDMA2KFW.elf");
          if (!v41)
          {
            v4 = 15;
            v99 = "failed to measure: CDMA2KFW.elf";
            break;
          }

          if (sub_1000092CC(v41, v42, @"custpack.elf"))
          {
            goto LABEL_70;
          }

          goto LABEL_83;
          v65 = sub_100009728(v6, v7, @"psi_ram.bin");
          if (!v65)
          {
            goto LABEL_72;
          }

          v67 = sub_1000096F8(v65, v66, @"restorepsi.bin");
          if (!v67)
          {
            goto LABEL_72;
          }

          v69 = sub_1000096C8(v67, v68, @"ebl.bin");
          if (!v69)
          {
            goto LABEL_72;
          }

          v71 = sub_100009668(v69, v70, @"SYS_SW.elf");
          if (!v71)
          {
            goto LABEL_74;
          }

          v73 = sub_1000092CC(v71, v72, @"TDSFW.elf");
          if (!v73)
          {
            goto LABEL_78;
          }

          v75 = sub_1000092CC(v73, v74, @"LTEFW.elf");
          if (!v75)
          {
            goto LABEL_76;
          }

          if (!sub_100009758(v75, v76, @"bbcfg.bin"))
          {
            goto LABEL_75;
          }

          goto LABEL_70;
        case 'e':
          v43 = sub_100009728(v6, v7, @"psi_ram.bin");
          if (!v43)
          {
            goto LABEL_72;
          }

          v45 = sub_1000096F8(v43, v44, @"restorepsi.bin");
          if (!v45)
          {
            goto LABEL_72;
          }

          v47 = sub_1000096C8(v45, v46, @"ebl.bin");
          if (!v47)
          {
            goto LABEL_72;
          }

          v49 = sub_100009668(v47, v48, @"SYS_SW.elf");
          if (!v49)
          {
            goto LABEL_74;
          }

          v51 = sub_1000092CC(v49, v50, @"TDSFW.elf");
          if (v51)
          {
            v53 = sub_1000092CC(v51, v52, @"LTEFW.elf");
            if (v53)
            {
              v55 = sub_100009758(v53, v54, @"bbcfg.bin");
              if (!v55)
              {
                goto LABEL_75;
              }

              v57 = sub_1000092CC(v55, v56, @"3GFW.elf");
              if (v57)
              {
                v59 = sub_1000092CC(v57, v58, @"2GFW.elf");
                if (v59)
                {
                  v61 = sub_1000092CC(v59, v60, @"RFFW.elf");
                  if (!v61)
                  {
                    goto LABEL_77;
                  }

                  v63 = sub_1000092CC(v61, v62, @"AudioFW.elf");
                  if (v63)
                  {
                    if (sub_1000092CC(v63, v64, @"Debug_info.elf"))
                    {
                      goto LABEL_70;
                    }

LABEL_81:
                    v4 = 15;
                    v99 = "failed to measure: Debug_info.elf";
                  }

                  else
                  {
LABEL_80:
                    v4 = 15;
                    v99 = "failed to measure: AudioFW.elf";
                  }
                }

                else
                {
LABEL_82:
                  v4 = 15;
                  v99 = "failed to measure: 2GFW.elf";
                }
              }

              else
              {
LABEL_79:
                v4 = 15;
                v99 = "failed to measure: 3GFW.elf";
              }
            }

            else
            {
LABEL_76:
              v4 = 15;
              v99 = "failed to measure: LTE.elf";
            }
          }

          else
          {
LABEL_78:
            v4 = 15;
            v99 = "failed to measure: TDS.elf";
          }

          break;
        case 'g':
          v77 = sub_100009728(v6, v7, @"psi_ram.bin");
          if (!v77)
          {
            goto LABEL_72;
          }

          v79 = sub_1000096F8(v77, v78, @"restorepsi.bin");
          if (!v79)
          {
            goto LABEL_72;
          }

          v81 = sub_1000096C8(v79, v80, @"ebl.bin");
          if (!v81)
          {
            goto LABEL_72;
          }

          v83 = sub_100009668(v81, v82, @"SYS_SW.elf");
          if (!v83)
          {
            goto LABEL_74;
          }

          v85 = sub_1000092CC(v83, v84, @"LTEFW.elf");
          if (!v85)
          {
            goto LABEL_76;
          }

          v87 = sub_100009758(v85, v86, @"bbcfg.bin");
          if (!v87)
          {
            goto LABEL_75;
          }

          v89 = sub_1000092CC(v87, v88, @"3GFW.elf");
          if (!v89)
          {
            goto LABEL_79;
          }

          v91 = sub_1000092CC(v89, v90, @"RFFW.elf");
          if (!v91)
          {
            goto LABEL_77;
          }

          v93 = sub_1000092CC(v91, v92, @"AudioFW.elf");
          if (!v93)
          {
            goto LABEL_80;
          }

          v95 = sub_1000092CC(v93, v94, @"Debug_info.elf");
          if (!v95)
          {
            goto LABEL_81;
          }

          v97 = sub_1000092CC(v95, v96, @"GNSS_FW.elf");
          if (v97)
          {
            if (sub_1000092CC(v97, v98, @"irx_coefficient.elf"))
            {
              goto LABEL_70;
            }

            v4 = 15;
            v99 = "failed to measure: irx_coefficient.elf";
          }

          else
          {
            v4 = 15;
            v99 = "failed to measure: GNSS_FW.elf";
          }

          break;
        case 'h':
          v100 = sub_100009728(v6, v7, @"psi_ram.bin");
          if (!v100 || (v102 = sub_1000096F8(v100, v101, @"restorepsi.bin"), !v102) || (v104 = sub_1000097D8(v102, v103, @"psi_ram2.bin"), !v104) || (v106 = sub_1000097D8(v104, v105, @"restorepsi2.bin"), !v106) || (v108 = sub_1000096C8(v106, v107, @"ebl.bin"), !v108))
          {
LABEL_72:
            v4 = 15;
            goto LABEL_71;
          }

          v110 = sub_100009668(v108, v109, @"SYS_SW.elf");
          if (v110)
          {
            v112 = sub_100009758(v110, v111, @"bbcfg.bin");
            if (v112)
            {
              v114 = sub_1000092CC(v112, v113, @"RFFW.elf");
              if (v114)
              {
                v116 = sub_1000092CC(v114, v115, @"custpack.elf");
                if (v116)
                {
                  v118 = sub_1000092CC(v116, v117, @"ant_cfg_data.elf");
                  if (v118)
                  {
                    v120 = sub_1000092CC(v118, v119, @"TPCU.elf");
                    if (v120)
                    {
                      v122 = sub_1000092CC(v120, v121, @"upc.elf");
                      if (v122)
                      {
                        if (sub_1000092CC(v122, v123, @"legacy_rat_fw.elf"))
                        {
LABEL_70:
                          v4 = 0;
                          goto LABEL_71;
                        }

                        v4 = 15;
                        v99 = "failed to measure: legacy_rat_fw.elf";
                      }

                      else
                      {
                        v4 = 15;
                        v99 = "failed to measure: upc.elf";
                      }
                    }

                    else
                    {
                      v4 = 15;
                      v99 = "failed to measure: TPCU.elf";
                    }
                  }

                  else
                  {
                    v4 = 15;
                    v99 = "failed to measure: ant_cfg_data.elf";
                  }
                }

                else
                {
LABEL_83:
                  v4 = 15;
                  v99 = "failed to measure: custpack.elf";
                }
              }

              else
              {
LABEL_77:
                v4 = 15;
                v99 = "failed to measure: RFFW.elf";
              }
            }

            else
            {
LABEL_75:
              v4 = 15;
              v99 = "failed to measure: bbcfg.bin";
            }
          }

          else
          {
LABEL_74:
            v4 = 15;
            v99 = "failed to measure: SYS_SW.elf";
          }

          break;
        default:
          goto LABEL_71;
      }
    }

    else
    {
      v4 = 4;
      v99 = "failed to open bbfw archive for reading";
    }

    AMAuthInstallLog(3, "AMAuthInstallBasebandRembrandtMeasureFirmware", v99, v8, v9, v10, v11, v12, v125);
  }

LABEL_71:
  BbfwReaderClose(v3);
  return v4;
}

uint64_t AMAuthInstallBasebandVinylStitchFirmware(void *a1, const void *a2, const void *a3, const __CFDictionary *a4, __CFDictionary *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a1[6])
  {
    return 1;
  }

  MutableCopy = 0;
  v37[1] = a5;
  v38 = 0;
  v37[0] = a1;
  v11 = a2 != 0;
  if (a3)
  {
    v11 = 0;
  }

  LOBYTE(v38) = v11;
  if (a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = a2;
  }

  v13 = 1;
  if (!a5 || !a4)
  {
    v15 = 0;
    v16 = 0;
    goto LABEL_24;
  }

  v15 = 0;
  v16 = 0;
  if (v12)
  {
    v17 = BbfwReaderStart(v12, sub_1000097FC, v37);
    if (v17)
    {
      v13 = v17;
      AMAuthInstallLog(3, "_VinylStitchInternal", "Failed to copy unperso'd Vinyl files", v18, v19, v20, v21, v22, v35);
    }

    else
    {
      if (!*(a1[6] + 160))
      {
        MutableCopy = 0;
        v15 = 0;
        v16 = 0;
        goto LABEL_28;
      }

      v36 = 0;
      IsLegacyChipId = AMAuthInstallVinylIsLegacyChipId(a1, &v36);
      if (!IsLegacyChipId)
      {
        if (v36)
        {
          MutableCopy = 0;
          v15 = 0;
          v16 = @"vinyl";
          goto LABEL_28;
        }

        v24 = *(a1[6] + 152);
        if (v24)
        {
          MutableCopy = CFDataCreateMutableCopy(kCFAllocatorDefault, 0, v24);
          if (MutableCopy)
          {
            v25 = *(a1[6] + 168);
            if (!v25 || AMAuthInstallVinylCheckVinylFwLdrVerLegacy(v25))
            {
              v16 = _CopyHexStringFromData(kCFAllocatorDefault, MutableCopy);
              v15 = 0;
              if (v16)
              {
                goto LABEL_28;
              }

              goto LABEL_23;
            }

            BytePtr = CFDataGetBytePtr(*(a1[6] + 168));
            Length = CFDataGetLength(*(a1[6] + 168));
            CFDataAppendBytes(MutableCopy, BytePtr, Length - 1);
            CFDataGetBytePtr(MutableCopy);
            CFDataGetLength(MutableCopy);
            if (!AMSupportDigestSha256())
            {
              v15 = CFDataCreate(kCFAllocatorDefault, bytes, 32);
              v16 = _CopyHexStringFromData(kCFAllocatorDefault, v15);
              if (!v16)
              {
LABEL_23:
                v13 = 2;
                goto LABEL_24;
              }

LABEL_28:
              v34 = sub_1000634B4(v16, @"/update/main/ticket.der", a4, @"EuiccMainTicket", a5);
              if (!v34)
              {
                v34 = sub_1000634B4(v16, @"/update/gold/ticket.der", a4, @"EuiccGoldTicket", a5);
              }

              v13 = v34;
              goto LABEL_24;
            }

            AMAuthInstallLog(3, "_VinylStitchInternal", "failed to compute digest", v28, v29, v30, v31, v32, v35);
            v13 = 5;
          }

          else
          {
            v13 = 2;
          }
        }

        else
        {
          MutableCopy = 0;
          v13 = 8;
        }

LABEL_38:
        v15 = 0;
        v16 = 0;
        goto LABEL_24;
      }

      v13 = IsLegacyChipId;
    }

    MutableCopy = 0;
    goto LABEL_38;
  }

LABEL_24:
  AMAuthInstallLog(6, "_VinylStitchInternal", "%d", a4, a5, a6, a7, a8, v13);
  SafeRelease(MutableCopy);
  SafeRelease(v16);
  SafeRelease(v15);
  return v13;
}

uint64_t AMAuthInstallBasebandVinylCreateMeasurements(uint64_t a1, CFTypeRef cf, __CFDictionary *a3)
{
  value = 0;
  v16[0] = @"EUICCSignedProfileMain";
  v16[1] = @"vinyl/update/main/signedprofile.der";
  v17[0] = @"EUICCSignedProfileGold";
  v17[1] = @"vinyl/update/gold/signedprofile.der";
  if (a1)
  {
    v4 = 0;
    v5 = 1;
    if (a3 && cf && *(a1 + 48))
    {
      v4 = BbfwReaderOpen(cf);
      if (v4)
      {
        v11 = v16;
        v12 = 1;
        do
        {
          v13 = v12;
          if (!BbfwReaderFindAndCopyFileData(v4, v11[1], &value))
          {
            CFDictionarySetValue(a3, *v11, value);
            SafeRelease(value);
            value = 0;
          }

          v12 = 0;
          v11 = v17;
        }

        while ((v13 & 1) != 0);
        v5 = 0;
      }

      else
      {
        AMAuthInstallLog(3, "AMAuthInstallBasebandVinylCreateMeasurements", "failed to open bbfw archive for reading", v6, v7, v8, v9, v10, value);
        v5 = 4;
      }
    }
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  BbfwReaderClose(v4);
  SafeRelease(value);
  return v5;
}

uint64_t AMAuthInstallBasebandVinylAddMeasurementTags(uint64_t a1, CFDictionaryRef theDict)
{
  if (!a1)
  {
    return 1;
  }

  if (!*(a1 + 48))
  {
    return 1;
  }

  Value = CFDictionaryGetValue(theDict, @"BasebandFirmware");
  if (Value)
  {
    TypeID = CFDictionaryGetTypeID();
    LODWORD(Value) = TypeID == CFGetTypeID(Value) && CFDictionaryContainsKey(Value, @"EUICCSignedProfileMain") != 0;
  }

  AMAuthInstallLog(6, "AMAuthInstallBasebandVinylAddMeasurementTags", "Vinyl Tags %d Measurements %d", v4, v5, v6, v7, v8, *(*(a1 + 48) + 120) != 0);
  v11 = *(a1 + 48);
  v12 = v11[15];
  if (!v12 || !v11[16])
  {
    return 8;
  }

  result = 8;
  if (Value && v11[19])
  {
    CFDictionarySetValue(theDict, @"EUICCCSN", v12);
    v14 = *(a1 + 48);
    v15 = v14[16];
    if (v15)
    {
      CFDictionarySetValue(theDict, @"EUICCMainNonce", v15);
      v14 = *(a1 + 48);
    }

    v16 = v14[17];
    if (v16)
    {
      CFDictionarySetValue(theDict, @"EUICCGoldNonce", v16);
      v14 = *(a1 + 48);
    }

    v17 = v14[18];
    if (v17)
    {
      CFDictionarySetValue(theDict, @"EUICCTicketVersion", v17);
      v14 = *(a1 + 48);
    }

    v18 = v14[19];
    if (v18)
    {
      CFDictionarySetValue(theDict, @"EUICCCertIdentifier", v18);
      v14 = *(a1 + 48);
    }

    v19 = v14[20];
    if (v19)
    {
      CFDictionarySetValue(theDict, @"EUICCChipID", v19);
      v14 = *(a1 + 48);
    }

    v20 = v14[21];
    if (v20)
    {
      CFDictionarySetValue(theDict, @"EUICCFirmwareLoaderVersion", v20);
    }

    CFDictionarySetValue(theDict, @"@EUICCTicket", kCFBooleanTrue);
    return 0;
  }

  return result;
}

uint64_t sub_1000634B4(const __CFString *a1, const __CFString *a2, CFDictionaryRef theDict, void *key, __CFDictionary *a5)
{
  Value = CFDictionaryGetValue(theDict, key);
  if (Value)
  {
    TypeID = CFDataGetTypeID();
    if (TypeID == CFGetTypeID(Value))
    {
      Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
      v11 = Mutable;
      if (Mutable)
      {
        CFStringAppend(Mutable, a1);
        CFStringAppend(v11, a2);
        CFDictionarySetValue(a5, v11, Value);
        SafeRetain(Value);
        v12 = 0;
      }

      else
      {
        v12 = 2;
      }
    }

    else
    {
      v11 = 0;
      v12 = 17;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  SafeRelease(v11);
  SafeRelease(Value);
  return v12;
}

uint64_t AMAuthInstallBundleCopyNextBasebandComponentName(const void *a1, CFTypeRef *a2)
{
  v10 = 0;
  v4 = AMAuthInstallBasebandCopyNextComponentName(a1, &v10);
  if (v4)
  {
    v8 = v4;
    v7 = 0;
  }

  else
  {
    v5 = CFGetAllocator(a1);
    v6 = CFStringCreateWithFormat(v5, 0, @"%s/%@", "amai", v10);
    v7 = v6;
    if (v6)
    {
      v8 = 0;
      *a2 = CFRetain(v6);
    }

    else
    {
      v8 = 2;
    }
  }

  SafeRelease(v10);
  SafeRelease(v7);
  return v8;
}

uint64_t AMAuthInstallBundleCopyBuildIdentityForVariant(uint64_t a1, char *a2, CFStringRef theString1, void *a4)
{
  v203 = 0;
  v202 = @"ApBoardID";
  v6 = @"ApChipID";
  key = @"ApSecurityDomain";
  if (!a1)
  {
    sub_10000C708();
    v8 = 1;
    goto LABEL_111;
  }

  v4 = 0;
  v8 = 1;
  if (!a4 || (v9 = a2) == 0 || (v10 = a1, (v11 = *(a1 + 16)) == 0))
  {
    Copy = 0;
    goto LABEL_111;
  }

  v14 = *(v11 + 8);
  v13 = *(v11 + 12);
  theDict = *(v11 + 16);
  v15 = *(v11 + 160);
  if (v15)
  {
    v188 = v15;
    v16 = sub_10000C818();
    v6 = CFStringCreateWithFormat(v16, v17, v18);
    if (v6)
    {
      sub_10000C8C8();
      v189 = v24;
      v25 = sub_10000C818();
      v202 = CFStringCreateWithFormat(v25, v26, v27);
      if (v202)
      {
        sub_10000C8C8();
        v187 = v33;
        v34 = sub_10000C818();
        key = CFStringCreateWithFormat(v34, v35, v36);
        if (key)
        {
          goto LABEL_9;
        }

        AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "failed secdomKey allocation", v37, v38, v39, v40, v41, v187);
        sub_10000C708();
        key = 0;
      }

      else
      {
        AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "failed boardKey allocation", v28, v29, v30, v31, v32, v189);
        sub_10000C708();
        v202 = 0;
      }
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "failed chipKey allocation", v19, v20, v21, v22, v23, v188);
      sub_10000C708();
    }

    v8 = 99;
    goto LABEL_111;
  }

LABEL_9:
  v42 = sub_100009AD8(v10, theString1);
  Copy = v42;
  v48 = *(v10 + 128);
  if (!v48 || !*(v48 + 32))
  {
    goto LABEL_13;
  }

  Value = CFBooleanGetValue(v42);
  v50 = *(v10 + 128);
  if (!Value)
  {
    v51 = *(v50 + 32);
    goto LABEL_78;
  }

  v51 = *(v50 + 40);
  if (v51)
  {
LABEL_78:
    CFRetain(v51);
    sub_10000C708();
    v8 = 0;
    *a4 = v110;
    goto LABEL_111;
  }

LABEL_13:
  if (theString1)
  {
    CFBooleanGetValue(Copy);
    AMAuthInstallLog(6, "AMAuthInstallBundleCopyBuildIdentityForVariant", "searching for variant %@ (%d recovery)", v52, v53, v54, v55, v56, theString1);
  }

  else
  {
    AMAuthInstallLog(4, "AMAuthInstallBundleCopyBuildIdentityForVariant", "variant not specified, will use first variant found for this device in build manifest", v43, v44, v45, v46, v47, v187);
  }

  v57 = CFGetAllocator(v10);
  v58 = AMAuthInstallBundleCopyPublishedVariantsArray(v57, v9, &v203);
  if (v58)
  {
    v8 = v58;
    AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "AMAuthInstallBundleCopyPublishedVariantsArray failed", v59, v60, v61, v62, v63, v190);
    Copy = 0;
    v4 = v203;
    goto LABEL_111;
  }

  v4 = v203;
  if (!v203)
  {
    v186 = "AMAuthInstallBundleCopyPublishedVariantsArray returned NULL";
LABEL_120:
    AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", v186, v59, v60, v61, v62, v63, v190);
    Copy = 0;
    v8 = 7;
    goto LABEL_111;
  }

  v64 = CFGetTypeID(v203);
  if (v64 != CFArrayGetTypeID())
  {
    v186 = "publishedVariants is not a CFArray";
    goto LABEL_120;
  }

  Count = CFArrayGetCount(v4);
  cf = v10;
  v193 = a4;
  theString2 = theString1;
  BOOLean = Copy;
  if (*(*(v10 + 16) + 112))
  {
LABEL_20:
    Copy = 0;
    v196 = -1;
    goto LABEL_23;
  }

  v71 = *(v10 + 48);
  if (!v71)
  {
    AMAuthInstallLog(7, "AMAuthInstallBundleCopyBuildIdentityForVariant", "No baseband chipid reported. Will match Build Identity based on ap chipid, boardid, and secdomain only.", v65, v66, v67, v68, v69, v190);
    goto LABEL_20;
  }

  v196 = *(v71 + 4);
  Copy = 1;
LABEL_23:
  if (Count < 1)
  {
LABEL_48:
    if (CFBooleanGetValue(BOOLean))
    {
LABEL_49:
      v92 = *(cf + 2);
      v93 = v92[2];
      v94 = v92[3];
      v95 = v92[4];
      if (theString2)
      {
        AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "variant %@ isn't published for this device (chipID=0x%08X boardID=0x%X secDom=%d bbChipId=0x%08X) in build manifest", v87, v88, v89, v90, v91, theString2);
      }

      else
      {
        AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "no variant published for this device (chipID=0x%08X boardID=0x%X secDom=%d bbChipId=0x%08X) in build manifest", v87, v88, v89, v90, v91, v93);
      }

      Copy = 0;
      v8 = 8;
      goto LABEL_111;
    }

    v96 = *(cf + 3);
    if (v96 && (v97 = CFDictionaryGetCount(v96), v97 >= 1))
    {
      v9 = v97;
      Count = calloc(v97, 8uLL);
      if (Count)
      {
        v98 = calloc(v9, 8uLL);
        if (v98 && (CFDictionaryGetKeysAndValues(*(cf + 3), Count, v98), v99 = CFArrayGetCount(v4), v99 >= 1))
        {
          v100 = v99;
          v191 = v6;
          v101 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v4, v101);
            if (ValueAtIndex)
            {
              theString1 = ValueAtIndex;
              v103 = CFGetTypeID(ValueAtIndex);
              if (v103 == CFDictionaryGetTypeID())
              {
                v10 = 0;
                v104 = 0;
                do
                {
                  v105 = CFDictionaryGetValue(theString1, *(Count + 8 * v10));
                  if (v105)
                  {
                    v106 = v98[v10];
                    if (v106)
                    {
                      v104 = CFEqual(v105, v106);
                    }
                  }

                  if (!v104)
                  {
                    break;
                  }

                  ++v10;
                }

                while (v10 < v9);
                if (v104)
                {
                  v107 = CFDictionaryGetValue(theString1, @"Info");
                  if (v107)
                  {
                    v108 = v107;
                    Copy = CFGetTypeID(v107);
                    if (Copy == CFDictionaryGetTypeID() && !*(cf + 56))
                    {
                      v109 = CFDictionaryGetValue(v108, @"Variant");
                      if (v109)
                      {
                        if (!theString2 || CFStringCompare(v109, theString2, 0) == kCFCompareEqualTo)
                        {
                          break;
                        }
                      }
                    }
                  }
                }
              }
            }

            if (++v101 == v100)
            {
              theString1 = 0;
              goto LABEL_74;
            }
          }

          CFDictionaryGetValue(v108, @"Variant");
          AMAuthInstallLog(4, "_AMAuthInstallBundleGetMatchingSoftwareCoprocessorBuildIdentity", "%s: Found variant: %@", v181, v182, v183, v184, v185, "_AMAuthInstallBundleGetMatchingSoftwareCoprocessorBuildIdentity");
LABEL_74:
          v6 = v191;
        }

        else
        {
          theString1 = 0;
        }

LABEL_81:
        SafeFree(Count);
        SafeFree(v98);
        if (theString1)
        {
          goto LABEL_82;
        }

        goto LABEL_49;
      }

      theString1 = 0;
    }

    else
    {
      sub_10000C890();
    }

    v98 = 0;
    goto LABEL_81;
  }

  v9 = 0;
  while (1)
  {
    v72 = CFArrayGetValueAtIndex(v4, v9);
    if (!v72)
    {
      goto LABEL_42;
    }

    theString1 = v72;
    v73 = CFGetTypeID(v72);
    if (v73 != CFDictionaryGetTypeID() || !AMAuthInstallSupportCompareStringToInt32(theString1, v202, v13) || !AMAuthInstallSupportCompareStringToInt32(theString1, v6, v14) || CFDictionaryGetValue(theString1, key) && !AMAuthInstallSupportCompareStringToInt32(theString1, key, theDict))
    {
      goto LABEL_42;
    }

    if (Copy && !AMAuthInstallSupportCompareStringToInt32(theString1, @"BbChipID", v196))
    {
      goto LABEL_42;
    }

    v74 = CFDictionaryGetValue(theString1, @"Info");
    if (!v74)
    {
      goto LABEL_42;
    }

    v75 = v74;
    v10 = v6;
    v76 = CFGetTypeID(v74);
    v77 = v76 == CFDictionaryGetTypeID();
    v6 = v10;
    if (!v77)
    {
      goto LABEL_42;
    }

    if (!*(cf + 56) || CFBooleanGetValue(BOOLean))
    {
      v78 = @"Variant";
      goto LABEL_39;
    }

    v80 = CFDictionaryGetValue(v75, @"Variant");
    if (!v80)
    {
      break;
    }

    v81 = v80;
    if (!CFStringHasPrefix(v80, @"Recovery"))
    {
      break;
    }

    AMAuthInstallLog(4, "AMAuthInstallBundleCopyBuildIdentityForVariant", "Restore Behavior specified - skipping recovery variant: %@", v82, v83, v84, v85, v86, v81);
    v6 = v10;
LABEL_42:
    if (Count == ++v9)
    {
      goto LABEL_48;
    }
  }

  v78 = @"RestoreBehavior";
  v6 = v10;
LABEL_39:
  v79 = CFDictionaryGetValue(v75, v78);
  if (!v79 || theString2 && CFStringCompare(v79, theString2, 0))
  {
    goto LABEL_42;
  }

  CFDictionaryGetValue(v75, @"Variant");
  AMAuthInstallLog(4, "AMAuthInstallBundleCopyBuildIdentityForVariant", "%s: Found variant: %@", v176, v177, v178, v179, v180, "AMAuthInstallBundleCopyBuildIdentityForVariant");
LABEL_82:
  v111 = sub_10000C818();
  MutableCopy = CFDictionaryCreateMutableCopy(v111, v112, theString1);
  v114 = CFDictionaryGetValue(MutableCopy, @"Manifest");
  v192 = v6;
  if (!v114)
  {
    sub_10000C87C();
LABEL_131:
    v8 = 7;
    goto LABEL_93;
  }

  v115 = sub_10000C818();
  theDicta = CFDictionaryCreateMutableCopy(v115, v116, v114);
  if (!theDicta)
  {
    sub_10000C87C();
    LOBYTE(v114) = 0;
    goto LABEL_131;
  }

  v197 = MutableCopy;
  v117 = CFDictionaryGetCount(v114);
  v6 = malloc(8 * v117);
  v9 = malloc(8 * v117);
  CFDictionaryGetKeysAndValues(v114, &v6->isa, v9);
  if (v117 < 1)
  {
LABEL_92:
    MutableCopy = v197;
    v10 = theDicta;
    CFDictionarySetValue(v197, @"Manifest", theDicta);
    v139 = CFGetAllocator(v197);
    Copy = CFDictionaryCreateCopy(v139, v197);
    v8 = 0;
    LOBYTE(v114) = 1;
  }

  else
  {
    v118 = 0;
    while (1)
    {
      v119 = *(&v6->isa + v118);
      v120 = *&v9[8 * v118];
      v121 = CFGetTypeID(v120);
      if (v121 != CFDictionaryGetTypeID())
      {
        break;
      }

      if (CFDictionaryGetValue(v120, @"Info"))
      {
        v132 = *(cf + 66);
        if (v132)
        {
          if (!_CFDictionaryGetBoolean(v132, v119, 1, v127, v128, v129, v130, v131))
          {
            v133 = sub_10000C7E8();
            AMAuthInstallLog(v133, "_AMAuthInstallBundleCreateAbridgedEntries", "Removing %@ from the build identity", v134, v135, v136, v137, v138, v190);
            CFDictionaryRemoveValue(theDicta, v119);
          }
        }
      }

      if (v117 == ++v118)
      {
        goto LABEL_92;
      }
    }

    AMAuthInstallLog(3, "_AMAuthInstallBundleCreateAbridgedEntries", "Unexpected manifest entry structure - should be dictionary.\n", v122, v123, v124, v125, v126, v190);
    Copy = 0;
    v8 = 0;
    LOBYTE(v114) = 1;
    MutableCopy = v197;
    v10 = theDicta;
  }

LABEL_93:
  SafeFree(v6);
  SafeFree(v9);
  SafeRelease(v10);
  SafeRelease(MutableCopy);
  if ((v114 & 1) == 0)
  {
    AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "unable to abridge the build identity", v140, v141, v142, v143, v144, v190);
    v6 = v192;
    goto LABEL_111;
  }

  v145 = CFBooleanGetValue(BOOLean);
  v146 = *(cf + 16);
  v6 = v192;
  if (!v145)
  {
    SafeRelease(*(v146 + 32));
    v164 = *(cf + 16);
    if (!v164)
    {
      AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "amai->bundleParameters is NULL", v159, v160, v161, v162, v163, v190);
      v8 = 0;
      goto LABEL_111;
    }

    v165 = *(v164 + 16);
    v166 = CFGetAllocator(cf);
    if (v165)
    {
      MergedDictionary = AMAuthInstallSupportCreateMergedDictionary(v166, Copy, *(*(cf + 16) + 16), (*(cf + 16) + 32));
      if (MergedDictionary)
      {
        goto LABEL_133;
      }

      v167 = *(*(cf + 16) + 32);
    }

    else
    {
      v167 = CFDictionaryCreateCopy(v166, Copy);
      *(*(cf + 16) + 32) = v167;
    }

    if (v167)
    {
      v168 = CFGetAllocator(cf);
      ValueForKeyPathInDict = AMAuthInstallSupportGetValueForKeyPathInDict(v168, theString1, @"Info.DeviceClass", v169, v170, v171, v172, v173);
      *(*(cf + 2) + 120) = ValueForKeyPathInDict;
      SafeRetain(ValueForKeyPathInDict);
      v158 = CFRetain(*(*(cf + 16) + 32));
      v155 = v193;
      goto LABEL_110;
    }

LABEL_132:
    v8 = 2;
    goto LABEL_111;
  }

  SafeRelease(*(v146 + 40));
  v147 = *(cf + 16);
  if (!v147 || !*(v147 + 24))
  {
    v157 = CFGetAllocator(cf);
    v156 = CFDictionaryCreateCopy(v157, Copy);
    *(*(cf + 16) + 40) = v156;
    v155 = v193;
LABEL_100:
    if (v156)
    {
      v158 = CFRetain(v156);
LABEL_110:
      v8 = 0;
      *v155 = v158;
      goto LABEL_111;
    }

    goto LABEL_132;
  }

  v148 = CFGetAllocator(cf);
  MergedDictionary = AMAuthInstallSupportCreateMergedDictionary(v148, Copy, *(*(cf + 16) + 24), (*(cf + 16) + 40));
  v155 = v193;
  if (!MergedDictionary)
  {
    v156 = *(*(cf + 16) + 40);
    goto LABEL_100;
  }

LABEL_133:
  v8 = MergedDictionary;
  AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "failed to merge build identities", v150, v151, v152, v153, v154, v190);
LABEL_111:
  SafeRelease(v4);
  SafeRelease(v202);
  SafeRelease(v6);
  SafeRelease(key);
  SafeRelease(Copy);
  return v8;
}

uint64_t AMAuthInstallBundleCopyFullPathForBuildIdentityKey(CFDictionaryRef **a1, const void *a2, void *key, const __CFDictionary *a4, CFTypeRef *a5)
{
  v5 = 0;
  v26 = 0;
  v6 = 1;
  if (a1 && a2)
  {
    v10 = key;
    Value = CFDictionaryGetValue(*a1[16], key);
    v26 = Value;
    if (Value)
    {
      v5 = Value;
      CFRetain(Value);
      AMAuthInstallLog(8, "AMAuthInstallBundleCopyFullPathForBuildIdentityKey", "using override: %@ = %@", v13, v14, v15, v16, v17, v10);
    }

    else
    {
      if (!a4)
      {
        v5 = 0;
        goto LABEL_9;
      }

      v5 = sub_100009B34(a4);
      if (!v5)
      {
        AMAuthInstallLog(3, "AMAuthInstallBundleCopyFullPathForBuildIdentityKey", "%@ key not found.", v18, v19, v20, v21, v22, v10);
        goto LABEL_9;
      }

      v23 = CFGetAllocator(a1);
      v24 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v23, a2, v5, 0, &v26);
      v5 = v26;
      if (v24)
      {
        v6 = v24;
        goto LABEL_9;
      }
    }

    v6 = 0;
    *a5 = CFRetain(v5);
    v5 = v26;
  }

LABEL_9:
  SafeRelease(v5);
  return v6;
}

uint64_t sub_10006420C(CFDictionaryRef **a1, const __CFDictionary *a2, const __CFDictionary *a3, const __CFDictionary *a4, const void *a5, const void *a6, __CFArray *a7, const __CFDictionary *a8)
{
  v67 = 0;
  v68 = 0;
  v66 = 0;
  Value = CFDictionaryGetValue(*a1[16], @"VinylFirmware");
  v65 = Value;
  if (Value)
  {
    CFRetain(Value);
    AMAuthInstallLog(8, "_AMAuthInstallBundleInstallPersonalizedBasebandFirmware", "using vinyl firmware override: %@ = %@", v17, v18, v19, v20, v21, @"VinylFirmware");
  }

  else
  {
    v48 = CFDictionaryGetValue(a4, @"eUICC,Main");
    v49 = CFDictionaryGetValue(a4, @"eUICC,Gold");
    if (v48)
    {
      v50 = v49;
      if (v49)
      {
        v51 = sub_100009B34(v48);
        v52 = sub_100009B34(v50);
        if (CFStringCompare(v51, v52, 0))
        {
LABEL_26:
          v38 = 0;
          v46 = 1;
          goto LABEL_12;
        }

        if (v51 && v52)
        {
          v58 = CFGetAllocator(a1);
          v31 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v58, a5, v51, 0, &v65);
          if (v31)
          {
            goto LABEL_19;
          }
        }

        else
        {
          AMAuthInstallLog(3, "_AMAuthInstallBundleInstallPersonalizedBasebandFirmware", "%@ OR %@ key not found, but that's okay. Moving along...", v53, v54, v55, v56, v57, @"eUICC,Main");
        }
      }
    }
  }

  v22 = CFDictionaryGetValue(*a1[16], @"BasebandFirmware");
  v67 = v22;
  if (v22)
  {
    CFRetain(v22);
    AMAuthInstallLog(8, "_AMAuthInstallBundleInstallPersonalizedBasebandFirmware", "using baseband firmware override: %@ = %@", v59, v60, v61, v62, v63, @"BasebandFirmware");
    a2 = 0;
    goto LABEL_6;
  }

  v23 = sub_100009B34(a2);
  if (!v23)
  {
    AMAuthInstallLog(3, "_AMAuthInstallBundleInstallPersonalizedBasebandFirmware", "%@ key not found.", v24, v25, v26, v27, v28, @"BasebandFirmware");
    goto LABEL_26;
  }

  v29 = v23;
  v30 = CFGetAllocator(a1);
  v31 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v30, a5, v29, 0, &v67);
  if (v31)
  {
LABEL_19:
    v46 = v31;
    v38 = 0;
    goto LABEL_12;
  }

LABEL_6:
  BasebandComponentName = AMAuthInstallBundleCopyNextBasebandComponentName(a1, &v68);
  v38 = v68;
  if (BasebandComponentName)
  {
    goto LABEL_22;
  }

  if (!v68)
  {
    AMAuthInstallLog(4, "_AMAuthInstallBundleInstallPersonalizedBasebandFirmware", "server provided unneeded baseband data; ignoring it", v33, v34, v35, v36, v37, v64);
    v46 = 0;
    goto LABEL_12;
  }

  v39 = CFGetAllocator(a1);
  BasebandComponentName = AMAuthInstallPlatformCopyURLWithAppendedComponent(v39, a6, v38, 0, &v66);
  if (BasebandComponentName)
  {
LABEL_22:
    v46 = BasebandComponentName;
  }

  else
  {
    DirectoryForURL = AMAuthInstallPlatformMakeDirectoryForURL(v66);
    if (DirectoryForURL)
    {
      v46 = DirectoryForURL;
      AMAuthInstallLog(3, "_AMAuthInstallBundleInstallPersonalizedBasebandFirmware", "failed to create output directory", v41, v42, v43, v44, v45, v64);
    }

    else
    {
      v46 = AMAuthInstallBasebandPersonalizeFirmwareInternal(a1, v67, v65, v66, a2, a3, a8);
      if (!v46)
      {
        CFArrayAppendValue(a7, v38);
      }
    }
  }

LABEL_12:
  SafeRelease(v38);
  SafeRelease(v67);
  SafeRelease(v66);
  SafeRelease(v65);
  return v46;
}

uint64_t AMAuthInstallBundleWriteReceipt(void *a1, const void *a2, const void *a3, const __CFBoolean *a4)
{
  error = 0;
  cf = 0;
  v8 = CFGetAllocator(a1);
  v9 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v8, a2, @"amai/receipt.plist", 0, &cf);
  if (!v9)
  {
    v13 = CFGetAllocator(a1);
    v11 = CFPropertyListCreateData(v13, a3, kCFPropertyListXMLFormat_v1_0, 0, &error);
    if (error)
    {
      v12 = CFErrorCopyDescription(error);
      AMAuthInstallLog(3, "AMAuthInstallBundleWriteReceipt", "%@", v14, v15, v16, v17, v18, v12);
    }

    else
    {
      if (v11)
      {
        DirectoryForURL = AMAuthInstallPlatformMakeDirectoryForURL(cf);
        if (DirectoryForURL)
        {
          v10 = DirectoryForURL;
          LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, DirectoryForURL);
          AMAuthInstallLog(3, "AMAuthInstallBundleWriteReceipt", "failed to create receipt directory: %@", v22, v23, v24, v25, v26, LocalizedStatusString);
          AMAuthInstallLog(8, "AMAuthInstallBundleWriteReceipt", "%@", v27, v28, v29, v30, v31, cf);
        }

        else
        {
          v32 = CFGetAllocator(a1);
          v10 = AMAuthInstallSupportWriteDataToFileURL(v32, v11, cf, 1);
          Value = CFBooleanGetValue(a4);
          v34 = *(a1[16] + 8);
          if (!Value)
          {
            SafeRelease(v34);
            v35 = CFRetain(a3);
            v12 = 0;
            *(a1[16] + 8) = v35;
            goto LABEL_7;
          }

          CFDictionarySetValue(v34, @"RecoveryOS", a3);
        }

        goto LABEL_3;
      }

      v12 = 0;
    }

    v10 = 2;
    goto LABEL_7;
  }

  v10 = v9;
  v11 = 0;
LABEL_3:
  v12 = 0;
LABEL_7:
  SafeRelease(cf);
  SafeRelease(v11);
  SafeRelease(error);
  SafeRelease(v12);
  return v10;
}

uint64_t AMAuthInstallBundlePersonalizePartialWithRecoveryOS(unint64_t a1, char *a2, int a3, const __CFString *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v378 = 0;
  v379 = 0;
  v376 = 0;
  v377 = 0;
  v374 = 0;
  v375 = 0;
  v373 = 0;
  v371 = 0;
  value = 0;
  v369 = 0;
  v370 = 0;
  if (!*(a1 + 16))
  {
    AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "bundle personalization requires AP parameters (even with AP personalization disabled)", a4, a5, a6, a7, a8, theArray);
    v14 = 0;
    sub_10000C6E4();
    v12 = 0;
    MutableCopy = 0;
    v11 = 0;
    v17 = 0;
    v15 = 1;
    goto LABEL_149;
  }

  v14 = 0;
  v15 = 1;
  if (!a2)
  {
    v17 = sub_10000C758();
    goto LABEL_149;
  }

  v17 = sub_10000C758();
  if (v18)
  {
    v22 = v20;
    v23 = v19;
    v24 = v18;
    sub_10000B538(a1);
    v25 = sub_10000C774();
    DebugDirectory = _AMAuthInstallBundleCreateDebugDirectory(v25, v26);
    v34 = sub_10000C854(DebugDirectory, v28, v29, &v379, v30, v31, v32, v33, theArray, v334, BOOLean, v338, v340, v342, v344, v346, v348, a8, v352, cf, v356, theDict, a5, a4, v364, a2);
    if (v34)
    {
      v15 = v34;
      v14 = 0;
      sub_10000C6E4();
      v12 = 0;
      MutableCopy = 0;
    }

    else
    {
      v21 = v379;
      if (!v379)
      {
        v14 = 0;
        v13 = 0;
        v12 = 0;
        MutableCopy = 0;
        goto LABEL_162;
      }

      v35 = CFGetAllocator(a1);
      MutableCopy = CFDictionaryCreateMutableCopy(v35, 0, v379);
      if (!MutableCopy)
      {
        v14 = 0;
        sub_10000C6E4();
        v12 = 0;
        goto LABEL_164;
      }

      if (!v361)
      {
        sub_10000C708();
        if (v22)
        {
          goto LABEL_9;
        }

        goto LABEL_15;
      }

      v39 = CFGetAllocator(a1);
      v12 = CFURLCreateCopyAppendingPathComponent(v39, v24, @"RecoveryOS", 1u);
      v40 = AMAuthInstallBundleCopyBuildIdentityForVariant(a1, v361, v23, &v378);
      if (!v40)
      {
        v21 = v378;
        if (v378)
        {
          v41 = CFGetAllocator(a1);
          v14 = CFDictionaryCreateMutableCopy(v41, 0, v378);
          if (!v14)
          {
            sub_10000C6E4();
            goto LABEL_164;
          }

          _AMAuthInstallBundleCreateDebugDirectory(a1, v12);
          if (v22)
          {
LABEL_9:
            CFGetAllocator(a1);
            sub_10000C830();
            v17 = CFArrayCreateMutableCopy(v36, v37, v38);
            v13 = v17;
            if (!v17)
            {
              v21 = 0;
LABEL_164:
              v11 = 0;
LABEL_166:
              v15 = 2;
              goto LABEL_149;
            }

            goto LABEL_16;
          }

LABEL_15:
          v13 = 0;
LABEL_16:
          v349 = v23;
          v42 = CFGetAllocator(a1);
          if (a9)
          {
            sub_10000C8EC();
            Mutable = CFArrayCreateMutableCopy(v43, v44, v45);
          }

          else
          {
            Mutable = CFArrayCreateMutable(v42, 0, &kCFTypeArrayCallBacks);
          }

          v11 = Mutable;
          if (!Mutable)
          {
            v17 = sub_10000C6A8();
            goto LABEL_166;
          }

          v365 = v13;
          if (!a10 || !v13)
          {
            goto LABEL_25;
          }

          v47 = sub_10000B68C(a1, MutableCopy, v13, Mutable);
          if (!v47)
          {
            if (!v14)
            {
              v270 = sub_10000C774();
              IfNecessary = AMAuthInstallBundleCopyReceiptCreateIfNecessary(v270, v271, v272);
              if (!IfNecessary)
              {
                goto LABEL_27;
              }

              goto LABEL_121;
            }

            sub_10000C8D4();
            v47 = sub_10000B68C(v48, v49, v50, v11);
            if (!v47)
            {
LABEL_25:
              v51 = sub_10000C774();
              IfNecessary = AMAuthInstallBundleCopyReceiptCreateIfNecessary(v51, v52, v53);
              if (!IfNecessary)
              {
                if (v14)
                {
                  v55 = AMAuthInstallBundleCopyReceiptCreateIfNecessary(a1, v12, &value);
                  if (v55)
                  {
                    theArraya = sub_10000C780(v55);
                    v322 = "failed to generate a recovery OS receipt: %@";
                    goto LABEL_184;
                  }

                  CFDictionarySetValue(v373, @"RecoveryOS", value);
                  SafeRelease(value);
                  HIDWORD(v347) = 1;
LABEL_30:
                  v56 = sub_100065BA8(a1, v13, v367, v24, MutableCopy, v361);
                  if (!v56)
                  {
                    v357 = v14;
                    theDicta = MutableCopy;
                    v353 = v11;
                    cfa = v24;
                    if (!*(a1 + 48))
                    {
                      goto LABEL_75;
                    }

                    v381[0] = 0;
                    v62 = CFGetAllocator(a1);
                    v341 = @"BbFDRSecurityKeyHash";
                    v343 = 0;
                    BOOLeana = @"BbCalibrationManifestKeyHash";
                    v339 = @"BbFactoryActivationManifestKeyHash";
                    v335 = @"BbActivationManifestKeyHash";
                    v70 = _CFArrayCreateWithObjects(v62, v63, v64, v65, v66, v67, v68, v69, @"BbProvisioningManifestKeyHash");
                    v77 = v70;
                    if (!v70)
                    {
                      v15 = 2;
                      goto LABEL_56;
                    }

                    v78 = sub_10000C854(v70, v71, v72, v381, v73, v74, v75, v76, theArrayb, @"BbActivationManifestKeyHash", @"BbCalibrationManifestKeyHash", @"BbFactoryActivationManifestKeyHash", @"BbFDRSecurityKeyHash", 0, v345, v347, v23, v351, v11, cfa, v14, MutableCopy, v361, v363, v13, v367);
                    if (v78)
                    {
                      v15 = v78;
                      goto LABEL_56;
                    }

                    Count = CFArrayGetCount(v77);
                    if (Count < 1)
                    {
                      v15 = 0;
                      MutableCopy = theDicta;
                      goto LABEL_56;
                    }

                    v80 = Count;
                    v345 = v12;
                    v81 = 0;
                    v22 = "_AMAuthInstallBundleSetBasebandKeyHashes";
                    while (1)
                    {
                      v380 = 0;
                      ValueAtIndex = CFArrayGetValueAtIndex(v77, v81);
                      if (!ValueAtIndex)
                      {
LABEL_151:
                        v15 = 14;
                        goto LABEL_54;
                      }

                      v83 = ValueAtIndex;
                      if (CFDictionaryGetValue(*(a1 + 216), ValueAtIndex))
                      {
                        v84 = sub_10000C8B4();
                        AMAuthInstallLog(v84, v85, "setting (from PR2 document/Override): %@ = %@", v86, v87, v88, v89, v90, theArrayb);
                        v91 = sub_10000C740();
                        if (AMAuthInstallBasebandSetKeyHashInternal(v91))
                        {
                          v92 = sub_10000C79C();
                          v99 = "Failed setting (from PR2 document/Override) %@ = %@";
LABEL_51:
                          AMAuthInstallLog(v92, v93, v99, v94, v95, v96, v97, v98, theArrayb);
                        }
                      }

                      else
                      {
                        v100 = CFDictionaryGetValue(*(a1 + 208), v83);
                        if (v100)
                        {
                          v101 = v100;
                          v102 = CFDictionaryGetValue(*(a1 + 200), v83);
                          if (v102 && !CFEqual(v102, v101))
                          {
                            AMAuthInstallLog(4, "_AMAuthInstallBundleSetBasebandKeyHashes", "key hash mismatch, triggering bbfw re-personalization", v103, v104, v105, v106, v107, theArrayb);
                            *(a1 + 224) = 1;
                          }

                          v335 = v101;
                          AMAuthInstallLog(6, "_AMAuthInstallBundleSetBasebandKeyHashes", "setting (from hash baseband returned): %@ = %@", v103, v104, v105, v106, v107, v83);
                          v108 = sub_10000C740();
                          if (!AMAuthInstallBasebandSetKeyHashInternal(v108))
                          {
                            goto LABEL_52;
                          }

                          v92 = sub_10000C79C();
                          v99 = "Failed setting (from hash baseband returned) %@ = %@";
                          goto LABEL_51;
                        }

                        v109 = sub_10000C740();
                        TagForKeyHashName = AMAuthInstallBasebandGetTagForKeyHashName(v109, v110, v111, v112, v113, v114, v115, v116);
                        if (TagForKeyHashName)
                        {
                          v15 = TagForKeyHashName;
LABEL_54:
                          v14 = v357;
                          MutableCopy = theDicta;
                          v13 = v365;
                          v11 = v353;
LABEL_56:
                          SafeRelease(v77);
                          SafeRelease(v381[0]);
                          if (!v15)
                          {
                            v381[0] = 0;
                            v133 = sub_10000C854(v126, v127, v128, v381, v129, v130, v131, v132, theArrayb, v335, BOOLeana, v339, v341, v343, v345, v347, v349, v351, v353, cfa, v357, theDicta, v361, v363, v365, v367);
                            if (v133)
                            {
                              LOBYTE(theArrayc) = v133;
                              v144 = "Failed to read build identity : error = %d";
LABEL_172:
                              v145 = 3;
                            }

                            else
                            {
                              v139 = CFDictionaryGetValue(v381[0], @"BbFactoryDebugEnable");
                              if (!v139)
                              {
                                goto LABEL_65;
                              }

                              v140 = v139;
                              CFBooleanGetTypeID();
                              v141 = sub_10000C8A8();
                              if (v22 != CFGetTypeID(v141))
                              {
                                goto LABEL_65;
                              }

                              if (CFBooleanGetValue(v140) == 1)
                              {
                                AMAuthInstallLog(6, "_AMAuthInstallBundleSetBasebandFactoryDebugEnable", "setting (from build manifest): %@ = %@", v134, v135, v136, v137, v138, @"BbFactoryDebugEnable");
                                v142 = sub_10000C740();
                                if (AMAuthInstallSetBbRequestEntry(v142, v143, kCFBooleanTrue))
                                {
                                  theArrayc = @"BbFactoryDebugEnable";
                                  v144 = "Failed setting (from build manifest) %@ : error = %d";
                                  goto LABEL_172;
                                }

LABEL_65:
                                SafeRelease(v381[0]);
                                if (*(a1 + 224))
                                {
                                  if (!v373)
                                  {
                                    v15 = 1;
                                    goto LABEL_153;
                                  }

                                  v146 = CFDictionaryGetValue(v373, @"Personalized");
                                  if (!v146)
                                  {
                                    AMAuthInstallLog(3, "_AMAuthInstallBundleRemovePersonalizedBbfw", "failed to find personalized array", v147, v148, v149, v150, v151, theArraya);
                                    v15 = 14;
                                    goto LABEL_153;
                                  }

                                  v152 = v146;
                                  v13 = v12;
                                  v153 = CFArrayGetCount(v146);
                                  if (v153 >= 1)
                                  {
                                    v154 = v153;
                                    v155 = 0;
                                    while (1)
                                    {
                                      v156 = CFArrayGetValueAtIndex(v152, v155);
                                      if (!v156)
                                      {
                                        break;
                                      }

                                      if (CFStringHasSuffix(v156, @".bbfw"))
                                      {
                                        v162 = sub_10000C7E8();
                                        AMAuthInstallLog(v162, "_AMAuthInstallBundleRemovePersonalizedBbfw", "removing personalizedEntry %@", v163, v164, v165, v166, v167, theArraya);
                                        CFArrayRemoveValueAtIndex(v152, v155--);
                                        --v154;
                                      }

                                      if (++v155 >= v154)
                                      {
                                        goto LABEL_74;
                                      }
                                    }

                                    AMAuthInstallLog(3, "_AMAuthInstallBundleRemovePersonalizedBbfw", "failed to find personalized entry %d", v157, v158, v159, v160, v161, v155);
                                    v15 = 14;
                                    v14 = v357;
                                    MutableCopy = theDicta;
                                    v11 = v353;
LABEL_153:
                                    LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, v15);
                                    AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "failed to remove bbfw: %@", v317, v318, v319, v320, v321, LocalizedStatusString);
LABEL_154:
                                    sub_10000C6E4();
                                    v17 = v365;
                                    goto LABEL_149;
                                  }

LABEL_74:
                                  *(a1 + 224) = 0;
                                  v14 = v357;
                                  MutableCopy = theDicta;
                                  v13 = v365;
                                }

LABEL_75:
                                if (!v13)
                                {
                                  goto LABEL_134;
                                }

                                v382.length = CFArrayGetCount(v13);
                                v382.location = 0;
                                if (!CFArrayContainsValue(v13, v382, @"BasebandFirmware") || (LOBYTE(v381[0]) = 0, LOBYTE(v380) = 0, v168 = *(a1 + 304), AMAuthInstallBasebandIsFused(a1, v381)) || (!LOBYTE(v381[0]) ? (v176 = AMAuthInstallBasebandPersonalizationRequired(a1, v169, v170, v171, v172, v173, v174, v175) == 0) : (v176 = 1), AMAuthInstallBasebandLocalSigningEnabled(a1, &v380) || (!v380 ? (v177 = v176) : (v177 = 0), v177 && !v168)))
                                {
                                  v13 = 0;
                                  goto LABEL_123;
                                }

                                v178 = *(a1 + 304);
                                v179 = CFDictionaryGetValue(v373, @"Personalized");
                                if (!v179)
                                {
                                  AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "'%@' not found in receiptDict", v180, v181, v182, v183, v184, @"Personalized");
                                  v17 = sub_10000C6A8();
                                  v15 = 8;
                                  goto LABEL_190;
                                }

                                v185 = v179;
                                v186 = sub_10000C74C();
                                v188 = CFDictionaryGetValue(v186, v187);
                                if (v188)
                                {
                                  v194 = v188;
                                  v195 = CFDictionaryGetValue(v188, @"BasebandFirmware");
                                  if (v195 | CFDictionaryGetValue(**(a1 + 128), @"BasebandFirmware"))
                                  {
                                    sub_10000BA10(v13, @"BasebandFirmware");
                                    BasebandComponentName = AMAuthInstallBundleCopyNextBasebandComponentName(a1, &v369);
                                    if (BasebandComponentName)
                                    {
                                      v15 = BasebandComponentName;
                                      v17 = sub_10000C6A8();
                                    }

                                    else
                                    {
                                      v207 = v369;
                                      if (v369)
                                      {
                                        CFArrayGetCount(v185);
                                        v208 = sub_10000C910();
                                        if (CFArrayContainsValue(v208, v383, v207))
                                        {
                                          AMAuthInstallLog(7, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "entry %@ has been previously personalized; skipping it", v209, v210, v211, v212, v213, v207);
                                          if (v178)
                                          {
                                            AMAuthInstallLog(7, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "inserting provisioning info (if any) into existing bbfw for %@", v214, v215, v216, v217, v218, v207);
                                            v219 = CFGetAllocator(a1);
                                            v220 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v219, cfa, v207, 0, &v371);
                                            MutableCopy = theDicta;
                                            v226 = v367;
                                            if (!v220)
                                            {
                                              v14 = v357;
                                              if (!v371)
                                              {
                                                AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "bbfwURL AMAuthInstallPlatformCopyURLWithAppendedComponent failed", v221, v222, v223, v224, v225, theArraya);
                                                v17 = sub_10000C6A8();
                                                v15 = 2;
                                                goto LABEL_118;
                                              }

                                              v227 = AMAuthInstallBasebandCopyFirmware(a1, v371, v371);
                                              if (v227)
                                              {
                                                v15 = v227;
                                                v329 = "AMAuthInstallBasebandCopyFirmware failed";
                                              }

                                              else
                                              {
                                                v233 = AMAuthInstallBasebandCopyAllComponents(a1, v371, &v370);
                                                if (!v233)
                                                {
                                                  v234 = AMAuthInstallBasebandWriteFilesToBbfw(a1, v371, v370);
                                                  if (!v234)
                                                  {
                                                    v13 = 0;
                                                    goto LABEL_124;
                                                  }

                                                  v15 = v234;
                                                  AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "AMAuthInstallBasebandWriteFilesToBbfw failed", v235, v236, v237, v238, v239, theArraya);
                                                  v21 = 0;
LABEL_116:
                                                  v13 = 0;
LABEL_117:
                                                  v17 = v365;
LABEL_118:
                                                  v11 = v353;
                                                  goto LABEL_149;
                                                }

                                                v15 = v233;
                                                v329 = "AMAuthInstallBasebandCopyAllComponents failed";
                                              }

                                              AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", v329, v228, v229, v230, v231, v232, theArraya);
                                              v17 = sub_10000C6A8();
                                              goto LABEL_118;
                                            }

                                            v15 = v220;
                                            v17 = sub_10000C6A8();
LABEL_190:
                                            v14 = v357;
                                            goto LABEL_118;
                                          }

                                          v13 = 0;
                                          v14 = v357;
                                          MutableCopy = theDicta;
LABEL_123:
                                          v226 = v367;
LABEL_124:
                                          v279 = sub_1000667E4(a1, v365, MutableCopy, v373, v226, v14, &v377, &v376);
                                          if (v279)
                                          {
                                            v15 = v279;
                                          }

                                          else
                                          {
                                            v280 = CFDictionaryGetValue(v373, @"CumulativeResponse");
                                            if (!(v280 | v377))
                                            {
                                              v21 = v13;
                                              v13 = 0;
                                              v15 = 0;
                                              goto LABEL_117;
                                            }

                                            if (!v377)
                                            {
                                              v375 = CFRetain(v280);
                                              AMAuthInstallLog(7, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "This is an install/stitch-only request.", v284, v285, v286, v287, v288, theArraya);
                                              goto LABEL_134;
                                            }

                                            v281 = AMAuthInstallApCreatePersonalizedResponse(a1, v377, &v375);
                                            if (!v281)
                                            {
                                              v282 = HIDWORD(v347);
                                              if (!v376)
                                              {
                                                v282 = 0;
                                              }

                                              if (v282 == 1)
                                              {
                                                PersonalizedResponse = AMAuthInstallApCreatePersonalizedResponse(a1, v376, &v374);
                                                if (PersonalizedResponse)
                                                {
                                                  v15 = PersonalizedResponse;
                                                  v269 = "failed to create ap ticket for recovery OS";
                                                  goto LABEL_114;
                                                }
                                              }

LABEL_134:
                                              *v368 = v13;
                                              v289 = CFDictionaryGetValue(v373, @"Updaters");
                                              if (v289)
                                              {
                                                v290 = v289;
                                                v291 = CFDictionaryGetCount(v289);
                                                v13 = malloc(8 * v291);
                                                if (v13)
                                                {
                                                  CFDictionaryGetKeysAndValues(v290, v13, 0);
                                                  if (v291 >= 1)
                                                  {
                                                    v292 = v13;
                                                    do
                                                    {
                                                      v293 = *v292++;
                                                      v294 = CFDictionaryGetValue(v290, v293);
                                                      CFDictionaryRemoveValue(v294, @"RequestTags");
                                                      --v291;
                                                    }

                                                    while (v291);
                                                  }

                                                  v295 = kCFBooleanFalse;
                                                  v296 = AMAuthInstallBundleWriteReceipt(a1, cfa, v373, kCFBooleanFalse);
                                                  if (!v296)
                                                  {
                                                    v14 = v357;
                                                    MutableCopy = theDicta;
                                                    goto LABEL_142;
                                                  }

                                                  v15 = v296;
                                                  AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "AMAuthInstallBundleWriteReceipt returned %d", v297, v298, v299, v300, v301, v296);
                                                  v14 = v357;
                                                  MutableCopy = theDicta;
                                                }

                                                else
                                                {
                                                  v15 = 2;
                                                }

                                                v17 = v365;
                                                v11 = v353;
                                              }

                                              else
                                              {
                                                v13 = 0;
                                                v295 = kCFBooleanFalse;
LABEL_142:
                                                v11 = v353;
                                                v302 = sub_10000C774();
                                                v307 = _AMAuthInstallBundlePopulatePersonalizedBundle(v302, v303, v304, v363, MutableCopy, v305, v306, v365, v351, v353, v295);
                                                if (v307)
                                                {
                                                  v323 = sub_10000C780(v307);
                                                  AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "failed to personalize bundle", v324, v325, v326, v327, v328, v323);
                                                }

                                                else if (v376)
                                                {
                                                  v15 = _AMAuthInstallBundlePopulatePersonalizedBundle(a1, v361, v12, v349, v14, v374, v373, v365, v351, v353, kCFBooleanTrue);
                                                  if (v15)
                                                  {
                                                    v308 = AMAuthInstallGetLocalizedStatusString(a1, v15);
                                                    AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "failed to personalize recovery OS bundle", v309, v310, v311, v312, v313, v308);
                                                  }
                                                }

                                                else
                                                {
                                                  v15 = 0;
                                                }

                                                v17 = v365;
                                              }

                                              v21 = *v368;
                                              goto LABEL_149;
                                            }

                                            v15 = v281;
                                            v269 = "failed to create ap ticket";
LABEL_114:
                                            AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", v269, v264, v265, v266, v267, v268, theArraya);
                                          }

                                          v21 = v13;
                                          goto LABEL_116;
                                        }

                                        AMAuthInstallLog(7, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "performing separate baseband firmware personalization of %@", v209, v210, v211, v212, v213, v207);
                                        v240 = CFDictionaryGetValue(theDicta, @"UniqueBuildID");
                                        if (!v240)
                                        {
                                          AMAuthInstallLog(6, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "this build lacks UniqueBuildID", v241, v242, v243, v244, v245, theArraya);
                                          v13 = 0;
                                          goto LABEL_105;
                                        }

                                        v246 = v240;
                                        v247 = CFGetAllocator(a1);
                                        v248 = CFDictionaryCreateMutable(v247, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                                        v13 = v248;
                                        if (!v248)
                                        {
                                          goto LABEL_196;
                                        }

                                        CFDictionarySetValue(v248, @"UniqueBuildID", v246);
LABEL_105:
                                        v249 = *(a1 + 16);
                                        if (*(v249 + 136) || *(v249 + 144))
                                        {
                                          v250 = CFDictionaryGetValue(theDicta, @"ProductMarketingVersion");
                                          if (v250)
                                          {
                                            v256 = v250;
                                            if (v13 || (v257 = CFGetAllocator(a1), (v13 = CFDictionaryCreateMutable(v257, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks)) != 0))
                                            {
                                              CFDictionarySetValue(v13, @"ProductMarketingVersion", v256);
                                              goto LABEL_111;
                                            }

LABEL_196:
                                            v21 = 0;
                                            v15 = 2;
                                            v14 = v357;
LABEL_200:
                                            MutableCopy = theDicta;
                                            goto LABEL_117;
                                          }

                                          AMAuthInstallLog(6, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "this build lacks ProductMarketingVersion", v251, v252, v253, v254, v255, theArraya);
                                        }

LABEL_111:
                                        v258 = sub_10006420C(a1, v195, 0, v194, v367, cfa, v185, v13);
                                        v14 = v357;
                                        if (!v258)
                                        {
                                          v259 = sub_10000C740();
                                          v263 = AMAuthInstallBundleWriteReceipt(v259, v260, v261, v262);
                                          MutableCopy = theDicta;
                                          if (!v263)
                                          {
                                            goto LABEL_123;
                                          }

                                          theArraya = sub_10000C780(v263);
                                          v269 = "failed to write receipt: %@";
                                          goto LABEL_114;
                                        }

                                        v15 = v258;
                                        v21 = v13;
                                        v13 = 0;
                                        goto LABEL_200;
                                      }

                                      AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "nextBbfwComponentStr is NULL", v202, v203, v204, v205, v206, theArraya);
                                      v17 = sub_10000C6A8();
                                      v15 = 14;
                                    }

LABEL_179:
                                    v14 = v357;
                                    MutableCopy = theDicta;
                                    goto LABEL_118;
                                  }

                                  AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "'%@' not found in manifestDict", v196, v197, v198, v199, v200, @"BasebandFirmware");
                                }

                                else
                                {
                                  AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "'%@' not found in buildIdentity", v189, v190, v191, v192, v193, @"Manifest");
                                }

                                v17 = sub_10000C6A8();
                                v15 = 8;
                                goto LABEL_179;
                              }

                              theArrayc = @"BbFactoryDebugEnable";
                              v144 = "%@ (from build manifest) is not true. Not setting it";
                              v145 = 6;
                            }

                            AMAuthInstallLog(v145, "_AMAuthInstallBundleSetBasebandFactoryDebugEnable", v144, v134, v135, v136, v137, v138, theArrayc);
                            goto LABEL_65;
                          }

LABEL_185:
                          v17 = sub_10000C6A8();
                          goto LABEL_149;
                        }

                        if (!v380)
                        {
                          goto LABEL_151;
                        }

                        if (CFDictionaryGetValue(v381[0], v380))
                        {
                          v118 = sub_10000C8B4();
                          AMAuthInstallLog(v118, v119, "setting (from build manifest): %@ = %@", v120, v121, v122, v123, v124, theArrayb);
                          v125 = sub_10000C740();
                          if (AMAuthInstallBasebandSetKeyHashInternal(v125))
                          {
                            v92 = sub_10000C79C();
                            v99 = "Failed setting (from build manifest) %@ = %@";
                            goto LABEL_51;
                          }
                        }
                      }

LABEL_52:
                      if (v80 == ++v81)
                      {
                        v15 = 0;
                        goto LABEL_54;
                      }
                    }
                  }

                  v15 = v56;
                  v322 = "failed to create build identity with overrides";
LABEL_184:
                  AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", v322, v57, v58, v59, v60, v61, theArraya);
                  goto LABEL_185;
                }

LABEL_27:
                HIDWORD(v347) = 0;
                goto LABEL_30;
              }

LABEL_121:
              v273 = sub_10000C780(IfNecessary);
              AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "failed to generate a receipt: %@", v274, v275, v276, v277, v278, v273);
              goto LABEL_154;
            }
          }

          v15 = v47;
          goto LABEL_185;
        }

        v14 = 0;
        v13 = 0;
LABEL_162:
        v11 = 0;
        v17 = 0;
        v15 = 14;
        goto LABEL_149;
      }

      v15 = v40;
      v14 = 0;
      sub_10000C6E4();
    }

    v11 = 0;
    v17 = 0;
  }

LABEL_149:
  v314 = v21;
  SafeRelease(v17);
  SafeRelease(v11);
  SafeRelease(v379);
  SafeRelease(MutableCopy);
  SafeRelease(v377);
  SafeRelease(v376);
  SafeRelease(v375);
  SafeRelease(v374);
  SafeRelease(v373);
  SafeRelease(v314);
  SafeRelease(v371);
  SafeRelease(v370);
  SafeRelease(v369);
  SafeFree(v13);
  SafeRelease(v12);
  SafeRelease(v378);
  SafeRelease(v14);
  return v15;
}

uint64_t AMAuthInstallBundleCopyReceiptCreateIfNecessary(uint64_t a1, const __CFURL *a2, CFPropertyListRef *a3)
{
  v67 = 0;
  propertyList = 0;
  v66 = 0;
  context = 0;
  v65 = 0;
  AMAuthInstallLockLock(*(a1 + 360));
  Mutable = 0;
  v7 = 1;
  if (!a3 || !a2)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_18;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (*(a1 + 128))
  {
    v11 = CFURLGetString(a2);
    location = CFStringFind(v11, @"RecoveryOS", 0).location;
    v13 = &kCFBooleanTrue;
    if (location == -1)
    {
      v13 = &kCFBooleanFalse;
    }

    v14 = *v13;
    if (*(*(a1 + 128) + 8))
    {
      Value = CFBooleanGetValue(v14);
      v16 = *(a1 + 128);
      v17 = *(v16 + 8);
      if (Value)
      {
        v18 = CFDictionaryGetValue(*(v16 + 8), @"RecoveryOS");
        if (!v18)
        {
          goto LABEL_14;
        }

        v17 = v18;
      }

      v19 = CFDictionaryGetValue(v17, @"Manifest");
      if (v17 && v19 && CFDictionaryGetCount(v19) >= 1)
      {
        v20 = CFGetAllocator(a1);
        DeepCopy = CFPropertyListCreateDeepCopy(v20, v17, 2uLL);
        Mutable = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        *a3 = DeepCopy;
        v7 = 2 * (DeepCopy == 0);
        goto LABEL_18;
      }
    }

LABEL_14:
    v22 = CFGetAllocator(a1);
    v23 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v22, a2, @"amai/receipt.plist", 0, &v67);
    if (v23)
    {
      v7 = v23;
LABEL_16:
      Mutable = 0;
LABEL_17:
      v8 = 0;
      v9 = 0;
      v10 = 0;
      goto LABEL_18;
    }

    v25 = AMAuthInstallPlatformFileURLExists(v67, &v66);
    if (v25)
    {
      v7 = v25;
      LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, v25);
      AMAuthInstallLog(3, "AMAuthInstallBundleCopyReceiptCreateIfNecessary", "AMAuthInstallPlatformFileURLExists failed: %@", v52, v53, v54, v55, v56, LocalizedStatusString);
      goto LABEL_16;
    }

    v26 = v66;
    v27 = CFGetAllocator(a1);
    if (v26)
    {
      DictionaryFromFileURL = AMAuthInstallSupportCreateDictionaryFromFileURL();
      if (DictionaryFromFileURL)
      {
        v7 = DictionaryFromFileURL;
        v57 = AMAuthInstallGetLocalizedStatusString(a1, DictionaryFromFileURL);
        AMAuthInstallLog(3, "AMAuthInstallBundleCopyReceiptCreateIfNecessary", "failed to read receipt: %@", v58, v59, v60, v61, v62, v57);
        goto LABEL_16;
      }

      v29 = CFGetAllocator(a1);
      v7 = 2;
      v30 = CFPropertyListCreateDeepCopy(v29, propertyList, 2uLL);
      Mutable = v30;
      if (!v30)
      {
        goto LABEL_17;
      }

      v8 = CFDictionaryGetValue(v30, @"Overrides");
      if (v8)
      {
        v31 = CFGetAllocator(a1);
        context = CFDictionaryCreateMutable(v31, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (context)
        {
          CFDictionaryApplyFunction(v8, _AMAuthInstallBundleNormalizeOverridePaths, &context);
          v32 = sub_10000C870();
          if (CFDictionaryGetCount(v32) >= 1)
          {
            v33 = CFGetAllocator(a1);
            v34 = AMAuthInstallSupportCreateMergedDictionary(v33, **(a1 + 128), context, &v65);
            if (v34)
            {
              v7 = v34;
              AMAuthInstallLog(3, "AMAuthInstallBundleCopyReceiptCreateIfNecessary", "failed to merge override dictionaries", v35, v36, v37, v38, v39, v63);
              goto LABEL_17;
            }
          }

          v40 = sub_10000C870();
          SafeRelease(v40);
          v41 = v65;
          v42 = CFGetAllocator(a1);
          p_context = &v65;
          if (!v41)
          {
            p_context = &context;
          }

          MutableCopy = CFDictionaryCreateMutableCopy(v42, 0, *p_context);
          v8 = 0;
          **(a1 + 128) = MutableCopy;
          if (!MutableCopy)
          {
            v7 = 2;
            v9 = 0;
            v10 = 0;
            goto LABEL_18;
          }

          v9 = 0;
          v10 = 0;
          goto LABEL_37;
        }

        goto LABEL_44;
      }

      v9 = 0;
      v10 = 0;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(v27, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (!Mutable)
      {
LABEL_44:
        v8 = 0;
        goto LABEL_45;
      }

      v45 = CFGetAllocator(a1);
      v8 = CFArrayCreateMutable(v45, 0, &kCFTypeArrayCallBacks);
      if (!v8)
      {
LABEL_45:
        v9 = 0;
        goto LABEL_46;
      }

      v46 = CFGetAllocator(a1);
      v9 = CFArrayCreateMutable(v46, 0, &kCFTypeArrayCallBacks);
      if (!v9)
      {
LABEL_46:
        v10 = 0;
        goto LABEL_47;
      }

      v47 = CFGetAllocator(a1);
      v10 = CFDictionaryCreateMutable(v47, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (!v10)
      {
LABEL_47:
        v7 = 2;
        goto LABEL_18;
      }

      CFDictionarySetValue(Mutable, @"Personalized", v8);
      CFDictionarySetValue(Mutable, @"Linked", v9);
      CFDictionarySetValue(Mutable, @"Manifest", v10);
    }

LABEL_37:
    v48 = CFGetAllocator(a1);
    *a3 = CFPropertyListCreateDeepCopy(v48, Mutable, 2uLL);
    v49 = CFBooleanGetValue(v14);
    v50 = *(*(a1 + 128) + 8);
    if (v49)
    {
      if (v50)
      {
        CFDictionaryReplaceValue(v50, @"RecoveryOS", Mutable);
      }

      v7 = 0;
    }

    else
    {
      if (v50)
      {
        CFRelease(v50);
        *(*(a1 + 128) + 8) = 0;
      }

      v7 = 0;
      *(*(a1 + 128) + 8) = CFRetain(Mutable);
    }
  }

LABEL_18:
  AMAuthInstallLockUnlock(*(a1 + 360));
  SafeRelease(v67);
  SafeRelease(0);
  SafeRelease(Mutable);
  SafeRelease(v8);
  SafeRelease(v9);
  SafeRelease(propertyList);
  SafeRelease(v10);
  SafeRelease(v65);
  SafeRelease(context);
  return v7;
}

uint64_t sub_100065BA8(uint64_t a1, const __CFArray *a2, const __CFURL *a3, const __CFURL *a4, const __CFDictionary *a5, const __CFURL *a6)
{
  v178 = 0;
  v179 = 0;
  v177 = 0;
  v11 = 1;
  if (!a1 || (v12 = a2) == 0 || !a3)
  {
    sub_10000C720();
    goto LABEL_120;
  }

  sub_10000C720();
  if (v20)
  {
    v21 = v16;
    v22 = CFGetAllocator(a1);
    MutableCopy = CFDictionaryCreateMutableCopy(v22, 0, **(a1 + 128));
    if (!MutableCopy)
    {
      ValueForKeyPathInDict = 0;
      v7 = 0;
      goto LABEL_142;
    }

    theDict = CFDictionaryGetValue(a5, @"Manifest");
    if (!theDict)
    {
      sub_10000C694();
      v7 = 0;
      Value = 0;
      goto LABEL_144;
    }

    if (v21)
    {
      Value = CFDictionaryGetValue(v21, @"Manifest");
      if (!Value)
      {
        sub_10000C694();
        v7 = 0;
LABEL_144:
        sub_10000C6FC();
        v11 = 8;
        goto LABEL_120;
      }
    }

    else
    {
      Value = 0;
    }

    v23 = CFGetAllocator(a1);
    v7 = CFDictionaryCreateMutableCopy(v23, 0, theDict);
    if (!v7)
    {
LABEL_14:
      sub_10000C694();
LABEL_142:
      Value = 0;
      sub_10000C6FC();
      v11 = 2;
      goto LABEL_120;
    }

    v163 = a5;
    if (v21)
    {
      CFGetAllocator(a1);
      sub_10000C830();
      v27 = CFDictionaryCreateMutableCopy(v24, v25, v26);
      if (!v27)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v27 = 0;
    }

    v161 = a3;
    v162 = v21;
    v166 = v27;
    v171 = v7;
    v167 = MutableCopy;
    v174 = v12;
    if (CFArrayGetCount(v12) < 1)
    {
LABEL_90:
      v7 = v171;
      if (CFDictionaryGetCount(MutableCopy) < 1)
      {
        goto LABEL_117;
      }

      v181[0] = 0;
      Count = CFDictionaryGetCount(MutableCopy);
      ValueForKeyPathInDict = (8 * Count);
      keys = malloc(8 * Count);
      if (keys)
      {
        PathComponent = malloc(ValueForKeyPathInDict);
        if (PathComponent)
        {
          CFDictionaryGetKeysAndValues(MutableCopy, keys, &PathComponent->isa);
          v170 = PathComponent;
          if (Count < 1)
          {
            MutableCopy = 0;
            sub_10000C890();
            v11 = 0;
            goto LABEL_116;
          }

          v139 = a1;
          v140 = 0;
          while (1)
          {
            ValueForKeyPathInDict = keys[v140];
            v141 = *(&PathComponent->isa + v140);
            v180 = 0;
            v182.length = CFArrayGetCount(v174);
            v182.location = 0;
            if (CFArrayContainsValue(v174, v182, ValueForKeyPathInDict))
            {
              sub_10000C824();
              v181[0] = CFDictionaryCreateMutable(v142, v143, v144, &kCFTypeDictionaryValueCallBacks);
              if (!v181[0])
              {
                MutableCopy = 0;
LABEL_130:
                PathComponent = 0;
LABEL_131:
                v176 = 0;
                v11 = 2;
                goto LABEL_133;
              }

              if (CFStringCompare(ValueForKeyPathInDict, @"BasebandFirmware", 0))
              {
                CFDictionaryAddValue(v181[0], @"Trusted", kCFBooleanFalse);
              }

              v145 = v139[2];
              if (*(v145 + 20))
              {
                v146 = kCFBooleanTrue;
              }

              else
              {
                v146 = kCFBooleanFalse;
              }

              if (*(v145 + 88))
              {
                v147 = kCFBooleanTrue;
              }

              else
              {
                v147 = kCFBooleanFalse;
              }

              CFDictionaryAddValue(v181[0], @"EPRO", v146);
              CFDictionaryAddValue(v181[0], @"ESEC", v147);
              sub_10000C824();
              MutableCopy = CFDictionaryCreateMutable(v148, v149, v150, &kCFTypeDictionaryValueCallBacks);
              if (!MutableCopy)
              {
                goto LABEL_130;
              }

              PathComponent = CFURLCopyLastPathComponent(v141);
              if (!PathComponent)
              {
                v176 = 0;
                v11 = 3;
LABEL_133:
                v7 = v171;
                ValueForKeyPathInDict = v176;
LABEL_116:
                SafeRelease(v181[0]);
                SafeRelease(MutableCopy);
                SafeRelease(PathComponent);
                SafeFree(keys);
                SafeFree(v170);
                SafeRelease(ValueForKeyPathInDict);
                if (!v11)
                {
LABEL_117:
                  CFDictionarySetValue(v163, @"Manifest", v7);
                  Value = v166;
                  if (v162)
                  {
                    CFDictionarySetValue(v162, @"Manifest", v166);
                  }

                  sub_10000C6F0();
                  sub_10000C6B8();
                  v11 = 0;
                  v15 = v167;
                  goto LABEL_120;
                }

                sub_10000C6F0();
                sub_10000C6B8();
LABEL_136:
                Value = v166;
                goto LABEL_120;
              }

              v151 = v139;
              v152 = CFGetAllocator(v139);
              v153 = CFURLCreateCopyAppendingPathComponent(v152, a4, PathComponent, 0);
              if (!v153)
              {
                goto LABEL_131;
              }

              v154 = ValueForKeyPathInDict;
              ValueForKeyPathInDict = v141;
              v176 = v153;
              SoftLink = AMAuthInstallSupportFileURLExists(v153, &v180);
              if (SoftLink || !v180 && (SoftLink = AMAuthInstallPlatformCreateSoftLink(v176, v141), SoftLink) || (CFDictionaryAddValue(MutableCopy, @"Path", PathComponent), CFDictionaryAddValue(v181[0], @"Info", MutableCopy), SoftLink = _AMAuthInstallBundleApplyMeasurements(v151, v154, v141, 0, v181), SoftLink))
              {
                v11 = SoftLink;
                goto LABEL_133;
              }

              CFDictionarySetValue(v171, v154, v181[0]);
              SafeRelease(PathComponent);
              SafeRelease(MutableCopy);
              SafeRelease(v181[0]);
              SafeRelease(v176);
              v181[0] = 0;
              PathComponent = v170;
              v139 = v151;
            }

            if (Count == ++v140)
            {
              MutableCopy = 0;
              sub_10000C890();
              v11 = 0;
              v7 = v171;
              goto LABEL_116;
            }
          }
        }

        MutableCopy = 0;
      }

      else
      {
        MutableCopy = 0;
        PathComponent = 0;
      }

      v170 = 0;
      ValueForKeyPathInDict = 0;
      v11 = 2;
      goto LABEL_116;
    }

    v28 = 0;
    v169 = Value;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v12, v28);
      if (!ValueAtIndex)
      {
        sub_10000C694();
        sub_10000C6FC();
        v11 = 1;
        goto LABEL_135;
      }

      v30 = ValueAtIndex;
      if (CFStringFind(ValueAtIndex, @"RecoveryOS", 0).location == -1)
      {
        v31 = kCFBooleanFalse;
      }

      else
      {
        v31 = kCFBooleanTrue;
      }

      v32 = CFBooleanGetValue(v31);
      v33 = CFGetAllocator(a1);
      if (Value && v32)
      {
        v39 = AMAuthInstallICreateTranslationOfRecoveryEnteryName(v33, v30);
        v40 = CFGetAllocator(a1);
        ValueForKeyPathInDict = AMAuthInstallSupportGetValueForKeyPathInDict(v40, Value, v39, v41, v42, v43, v44, v45);
        if (ValueForKeyPathInDict)
        {
          goto LABEL_27;
        }
      }

      else
      {
        ValueForKeyPathInDict = AMAuthInstallSupportGetValueForKeyPathInDict(v33, theDict, v30, v34, v35, v36, v37, v38);
        v39 = 0;
        if (ValueForKeyPathInDict)
        {
LABEL_27:
          v46 = CFStringCompare(v30, @"BasebandFirmware", 0);
          CFGetAllocator(a1);
          sub_10000C8EC();
          v50 = CFDictionaryCreateMutableCopy(v47, v48, v49);
          v178 = v50;
          if (!v50)
          {
            sub_10000C694();
            sub_10000C6FC();
            v11 = 2;
            goto LABEL_135;
          }

          v51 = _AMAuthInstallBundleSetObjectPropertyOverrides(a1, v30, v50);
          if (v51)
          {
            v11 = v51;
            AMAuthInstallLog(3, "_AMAuthInstallBundleCopyOverrideBuildIdentity", "failed to set %@ property overrides", v52, v53, v54, v55, v56, v30);
            sub_10000C694();
            goto LABEL_125;
          }

          v175 = v39;
          v57 = CFGetAllocator(a1);
          ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(v57, ValueForKeyPathInDict, @"%@.%@", v58, v59, v60, v61, v62, @"Info");
          v64 = CFDictionaryGetValue(MutableCopy, v30);
          if (v64)
          {
            ValueForKeyPathInDict = CFDictionaryGetValue(v178, @"Info");
            if (!ValueForKeyPathInDict)
            {
              MutableCopy = 0;
              sub_10000C6B8();
              v11 = 7;
              goto LABEL_134;
            }

            CFGetAllocator(a1);
            sub_10000C8EC();
            MutableCopy = CFDictionaryCreateMutableCopy(v65, v66, v67);
            if (!MutableCopy)
            {
              ValueForKeyPathInDict = 0;
              sub_10000C6B8();
              v11 = 2;
              goto LABEL_134;
            }

            v68 = CFURLCopyLastPathComponent(v64);
            ValueForKeyPathInDict = v68;
            if (!v68)
            {
              sub_10000C6B8();
              v11 = 3;
              goto LABEL_134;
            }

            if (ValueForKeyWithFormat)
            {
              v69 = CFGetAllocator(a1);
              v70 = AMAuthInstallSupportCopyStringReplacingLastComponent(v69, ValueForKeyWithFormat, @"/", ValueForKeyPathInDict, &v179);
              if (v70)
              {
                v11 = v70;
                sub_10000C6B8();
LABEL_134:
                v15 = v167;
                goto LABEL_135;
              }
            }

            else
            {
              v179 = CFRetain(v68);
            }

            SafeRelease(ValueForKeyPathInDict);
            CFDictionarySetValue(MutableCopy, @"Path", v179);
            SafeRelease(v179);
            CFDictionarySetValue(v178, @"Info", MutableCopy);
            SafeRelease(MutableCopy);
            if (v46)
            {
              v71 = CFGetAllocator(a1);
              Mutable = CFDataCreateMutable(v71, 0);
              CFDictionarySetValue(v178, @"Digest", Mutable);
              CFRelease(Mutable);
            }

            v179 = 0;
            MutableCopy = v167;
            CFDictionaryRemoveValue(v167, v30);
          }

          v73 = *(a1 + 128);
          if (v73 && *(v73 + 8))
          {
            if (CFBooleanGetValue(v31))
            {
              ValueForKeyPathInDict = CFDictionaryGetValue(*(*(a1 + 128) + 8), @"RecoveryOSOS");
              if (ValueForKeyPathInDict)
              {
                v74 = CFGetAllocator(a1);
                v80 = AMAuthInstallSupportGetValueForKeyWithFormat(v74, ValueForKeyPathInDict, @"%@.%@.%@", v75, v76, v77, v78, v79, @"Manifest");
                goto LABEL_47;
              }
            }

            else
            {
              v81 = CFGetAllocator(a1);
              v80 = AMAuthInstallSupportGetValueForKeyWithFormat(v81, *(*(a1 + 128) + 8), @"%@.%@.%@", v82, v83, v84, v85, v86, @"Manifest");
LABEL_47:
              ValueForKeyPathInDict = v80;
            }
          }

          else
          {
            ValueForKeyPathInDict = 0;
          }

          if (CFBooleanGetValue(v31))
          {
            v87 = @"RecoveryOSOS";
          }

          else
          {
            v87 = @"OS";
          }

          v88 = CFStringCompare(v87, v30, 0);
          if (ValueForKeyPathInDict)
          {
            v96 = 0;
            if (v64)
            {
              goto LABEL_62;
            }

LABEL_61:
            if (v96)
            {
              goto LABEL_62;
            }

LABEL_82:
            AMAuthInstallLog(6, "_AMAuthInstallBundleCopyOverrideBuildIdentity", "Inserting %@ to Manifest to personalize later", v91, v92, v93, v94, v95, v30);
            if (CFBooleanGetValue(v31))
            {
              ValueForKeyPathInDict = v175;
              CFDictionarySetValue(v166, v175, v178);
              v12 = v174;
              Value = v169;
            }

            else
            {
              CFDictionarySetValue(v171, v30, v178);
              v12 = v174;
              Value = v169;
              ValueForKeyPathInDict = v175;
            }

            SafeRelease(v178);
            v178 = 0;
            SafeRelease(ValueForKeyPathInDict);
            goto LABEL_86;
          }

          if (*(a1 + 434))
          {
            v97 = 1;
          }

          else
          {
            v97 = (v64 | v88) == 0;
          }

          v96 = !v97;
          if (!v64)
          {
            goto LABEL_61;
          }

LABEL_62:
          if (v64)
          {
            IsImg4 = AMAuthInstallApIsImg4(a1, v89, v90, v91, v92, v93, v94, v95);
            if (v46 == kCFCompareEqualTo || IsImg4)
            {
              goto LABEL_75;
            }

            LOBYTE(v181[0]) = 0;
            if (_AMAuthInstallBundleImageHasBuildString(v30))
            {
              v99 = CFGetAllocator(a1);
              v100 = AMAuthInstallApImg3CopyBuildString(v99, v64, &v177);
              if (v100)
              {
                v11 = v100;
                AMAuthInstallLog(3, "_AMAuthInstallBundleCopyOverrideBuildIdentity", "failed to copy image build string %@", v101, v102, v103, v104, v105, v30);
                goto LABEL_140;
              }

              CFDictionarySetValue(v178, @"BuildString", v177);
              SafeRelease(v177);
              v177 = 0;
            }

            v106 = CFGetAllocator(a1);
            IsFinalized = AMAuthInstallApImg3IsFinalized(v106, v64, v181);
            if (IsFinalized)
            {
              v11 = IsFinalized;
              AMAuthInstallLog(3, "_AMAuthInstallBundleCopyOverrideBuildIdentity", "failed to check %@ alignment", v108, v109, v110, v111, v112, v30);
LABEL_140:
              v115 = 0;
              v113 = 0;
              goto LABEL_149;
            }

            if (LOBYTE(v181[0]))
            {
              goto LABEL_75;
            }

            v113 = CFURLCopyLastPathComponent(v64);
            if (!v113)
            {
              v115 = 0;
LABEL_146:
              v11 = 2;
LABEL_149:
              sub_10000C6F0();
              Value = v166;
              v15 = v167;
              v7 = v171;
              v18 = v115;
              v19 = v113;
              break;
            }

            v114 = CFGetAllocator(a1);
            v115 = CFURLCreateCopyAppendingPathComponent(v114, a4, v113, 0);
            if (!v115)
            {
              goto LABEL_146;
            }

            v116 = CFGetAllocator(a1);
            v117 = AMAuthInstallApImg3Finalize(v116, v64, v115);
            if (v117)
            {
              v11 = v117;
              AMAuthInstallLog(3, "_AMAuthInstallBundleCopyOverrideBuildIdentity", "failed to finalize image3 override", v118, v119, v120, v121, v122, v160);
              goto LABEL_149;
            }

            ValueForKeyPathInDict = CFRetain(v115);
            v123 = CFDictionaryGetValue(v178, @"Info");
            if (!v123)
            {
              v11 = 8;
              goto LABEL_149;
            }

            CFDictionarySetValue(v123, @"Path", v113);
            v124 = **(a1 + 128);
            sub_10000C80C();
            CFDictionarySetValue(v125, v126, v127);
            SafeRelease(v113);
            SafeRelease(v115);
            if (!ValueForKeyPathInDict)
            {
LABEL_75:
              v128 = CFRetain(v64);
              goto LABEL_81;
            }
          }

          else
          {
            if (!ValueForKeyWithFormat)
            {
              goto LABEL_82;
            }

            v129 = CFBooleanGetValue(v31);
            v130 = CFGetAllocator(a1);
            if (v129)
            {
              v131 = a6;
            }

            else
            {
              v131 = v161;
            }

            v128 = CFURLCreateCopyAppendingPathComponent(v130, v131, ValueForKeyWithFormat, 0);
LABEL_81:
            ValueForKeyPathInDict = v128;
            if (!v128)
            {
              goto LABEL_82;
            }
          }

          sub_10000C80C();
          v137 = _AMAuthInstallBundleApplyMeasurements(v132, v133, v134, v135, v136);
          if (v137)
          {
            v11 = v137;
            ValueForKeyPathInDict = 0;
            MutableCopy = 0;
LABEL_125:
            sub_10000C6FC();
LABEL_135:
            v7 = v171;
            goto LABEL_136;
          }

          CFRelease(ValueForKeyPathInDict);
          goto LABEL_82;
        }
      }

LABEL_86:
      if (++v28 >= CFArrayGetCount(v12))
      {
        goto LABEL_90;
      }
    }
  }

LABEL_120:
  v156 = v17;
  v157 = v18;
  v158 = v19;
  SafeRelease(v15);
  SafeRelease(ValueForKeyPathInDict);
  SafeRelease(v179);
  SafeRelease(v178);
  SafeRelease(MutableCopy);
  SafeRelease(v156);
  SafeRelease(v7);
  SafeRelease(v157);
  SafeRelease(v158);
  SafeRelease(v177);
  SafeRelease(Value);
  return v11;
}

CFIndex sub_1000667E4(uint64_t a1, const __CFArray *a2, CFDictionaryRef theDict, const __CFDictionary *a4, const void *a5, const __CFDictionary *a6, void *a7, void *a8)
{
  Mutable = 0;
  v199[0] = 0;
  v197 = 0;
  v198 = 0;
  Code = 1;
  if (!a4 || !a1 || !theDict)
  {
    v13 = 0;
    MutableCopy = 0;
    goto LABEL_127;
  }

  v13 = 0;
  MutableCopy = 0;
  if (a7)
  {
    Value = CFDictionaryGetValue(theDict, @"Manifest");
    if (!Value)
    {
LABEL_8:
      Mutable = 0;
      v13 = 0;
      MutableCopy = 0;
      Code = 7;
      goto LABEL_127;
    }

    v19 = Value;
    if (a6)
    {
      v194 = CFDictionaryGetValue(a6, @"Manifest");
      if (!v194)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v194 = 0;
    }

    MutableCopy = CFDictionaryGetValue(a4, @"Personalized");
    if (!MutableCopy)
    {
      Mutable = 0;
      v13 = 0;
LABEL_133:
      Code = 8;
      goto LABEL_127;
    }

    v13 = CFDictionaryGetValue(a4, @"Manifest");
    if (v13)
    {
      v20 = CFGetAllocator(a1);
      Mutable = CFDictionaryCreateMutable(v20, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v184 = v13;
        if (!a6)
        {
          v180 = a7;
          v181 = a8;
          v179 = 0;
          theDicta = 0;
          v13 = 0;
LABEL_22:
          if (AMAuthInstallApIsImg4(a1, v21, v22, v23, v24, v25, v26, v27))
          {
            v29 = @"amai/apimg4ticket.der";
          }

          else
          {
            v29 = @"amai/apticket.der";
          }

          CFArrayGetCount(MutableCopy);
          v30 = sub_10000C7CC();
          theArray = MutableCopy;
          v191 = v13;
          v186 = theDict;
          if (CFArrayContainsValue(v30, v200, v29))
          {
            v31 = 0;
          }

          else
          {
            v31 = *(*(a1 + 16) + 24) || *(a1 + 433);
          }

          v201.length = CFArrayGetCount(MutableCopy);
          v201.location = 0;
          CFArrayContainsValue(MutableCopy, v201, v29);
          *(*(a1 + 16) + 24);
          *(a1 + 433);
          AMAuthInstallLog(7, "_AMAuthInstallBundleCreateServerRequestDictionary", "ticketPath %@ , withApTicket is %s,  (!%s &&(%s || %s))", v32, v33, v34, v35, v36, v29);
          v188 = v31;
          *(a1 + 32) = !v31;
          v37 = a2;
          v183 = a6;
          if (a2)
          {
            Count = CFArrayGetCount(a2);
            if (Count >= 1)
            {
              v178 = !v31;
              v185 = 0;
              MutableCopy = 0;
              v38 = 0;
              v39 = kCFBooleanFalse;
              v187 = v19;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v37, v38);
                v193 = CFStringCompare(ValueAtIndex, @"BasebandFirmware", 0);
                v41 = v39;
                if (ValueAtIndex)
                {
                  if (CFStringFind(ValueAtIndex, @"RecoveryOS", 0).location == -1)
                  {
                    v41 = v39;
                  }

                  else
                  {
                    v41 = kCFBooleanTrue;
                  }
                }

                if (CFBooleanGetValue(v41))
                {
                  v42 = CFGetAllocator(a1);
                  v43 = AMAuthInstallICreateTranslationOfRecoveryEnteryName(v42, ValueAtIndex);
                  v44 = CFDictionaryGetValue(v194, v43);
                  if (v44)
                  {
                    goto LABEL_39;
                  }
                }

                else
                {
                  v44 = CFDictionaryGetValue(v19, ValueAtIndex);
                  v43 = 0;
                  if (v44)
                  {
LABEL_39:
                    v45 = CFDictionaryGetValue(v44, @"Info");
                    if (!v45)
                    {
                      v37 = a2;
                      goto LABEL_93;
                    }

                    v46 = v45;
                    v196 = 0;
                    SafeRelease(MutableCopy);
                    v47 = CFGetAllocator(a1);
                    MutableCopy = CFDictionaryCreateMutableCopy(v47, 0, v44);
                    if (!MutableCopy)
                    {
                      Code = 2;
                      goto LABEL_123;
                    }

                    v48 = AMAuthInstallBundleProcessRulesWithEntryDict(a1, MutableCopy);
                    if (v48)
                    {
                      Code = v48;
                      v176 = "failed to process image rules";
LABEL_136:
                      AMAuthInstallLog(3, "_AMAuthInstallBundleCreateServerRequestDictionary", v176, v49, v50, v51, v52, v53, v177);
                      goto LABEL_123;
                    }

                    v54 = CFDictionaryGetValue(v46, @"Personalize");
                    v19 = v187;
                    if (v54 && !CFBooleanGetValue(v54))
                    {
                      if (!CFBooleanGetValue(v41))
                      {
                        v89 = CFDictionaryGetValue(v184, ValueAtIndex);
                        v90 = v188 ^ 1;
                        if (v89)
                        {
                          v90 = 1;
                        }

                        if (v90)
                        {
                          v95 = sub_10000C7E8();
                          v101 = "skipping %@ entry";
                        }

                        else
                        {
                          CFGetAllocator(a1);
                          sub_10000C8F8();
                          v94 = CFDataCreate(v91, v92, v93);
                          CFDictionaryAddValue(MutableCopy, @"Digest", v94);
                          CFDictionarySetValue(Mutable, ValueAtIndex, MutableCopy);
                          CFRelease(v94);
                          v95 = sub_10000C7E8();
                          v101 = "personalizing %@";
                        }

                        AMAuthInstallLog(v95, "_AMAuthInstallBundleCreateServerRequestDictionary", v101, v96, v97, v98, v99, v100, v177);
                        v37 = a2;
                        goto LABEL_94;
                      }

                      v55 = CFDictionaryGetValue(theDicta, v43);
                      v61 = v188 ^ 1;
                      if (v55)
                      {
                        v61 = 1;
                      }

                      v62 = "skipping %@ entry";
                      if ((v61 & 1) == 0)
                      {
                        CFGetAllocator(a1);
                        sub_10000C8F8();
                        v66 = CFDataCreate(v63, v64, v65);
                        CFDictionaryAddValue(MutableCopy, @"Digest", v66);
                        v67 = sub_10000C89C();
                        CFDictionarySetValue(v67, v68, MutableCopy);
                        CFRelease(v66);
                        v62 = "personalizing %@";
                      }

                      AMAuthInstallLog(6, "_AMAuthInstallBundleCreateServerRequestDictionary", v62, v56, v57, v58, v59, v60, v43);
                    }

                    if (v193)
                    {
                      if (CFDictionaryContainsKey(MutableCopy, @"PartialDigest"))
                      {
                        v74 = CFDictionaryGetValue(v46, @"Path");
                        v196 = v74;
                        SafeRetain(v74);
                        if (!v74)
                        {
                          goto LABEL_61;
                        }

                        goto LABEL_53;
                      }

                      if (v188)
                      {
                        v74 = 0;
LABEL_61:
                        v37 = a2;
LABEL_82:
                        SafeRelease(v74);
                        if (CFDictionaryGetValue(MutableCopy, @"Digest"))
                        {
                          AMAuthInstallLog(7, "_AMAuthInstallBundleCreateServerRequestDictionary", "personalizing %@ Digest = %@", v105, v106, v107, v108, v109, ValueAtIndex);
                        }

                        v19 = v187;
                        if (v193 == kCFCompareEqualTo)
                        {
                          v110 = CFBooleanGetValue(v41);
                          Code = 1;
                          if (!a5 || v110 == 1)
                          {
                            goto LABEL_123;
                          }

                          v111 = AMAuthInstallBundleCopyFullPathForBuildIdentityKey(a1, a5, @"BasebandFirmware", v44, &v198);
                          if (v111)
                          {
                            Code = v111;
                            v176 = "failed to find baseband firmware path";
                            goto LABEL_136;
                          }

                          v19 = v187;
                          v185 = v198;
                          if (!v198)
                          {
                            Code = 14;
                            v176 = "failed to create bbfwURL";
                            goto LABEL_136;
                          }
                        }

                        if (CFBooleanGetValue(v41))
                        {
                          v112 = sub_10000C89C();
                        }

                        else
                        {
                          v112 = Mutable;
                          v113 = ValueAtIndex;
                        }

                        CFDictionarySetValue(v112, v113, MutableCopy);
LABEL_93:
                        SafeRelease(v43);
                        goto LABEL_94;
                      }

                      AMAuthInstallLog(7, "_AMAuthInstallBundleCreateServerRequestDictionary", "not personalizing %@", v69, v70, v71, v72, v73, ValueAtIndex);
                      v37 = a2;
LABEL_81:
                      v19 = v187;
                      goto LABEL_94;
                    }

                    v102 = AMAuthInstallBundleCopyNextBasebandComponentName(a1, &v196);
                    if (v102)
                    {
                      Code = v102;
LABEL_123:
                      v13 = v191;
                      goto LABEL_127;
                    }

                    v74 = v196;
                    if (!v196)
                    {
                      goto LABEL_61;
                    }

LABEL_53:
                    v37 = a2;
                    if (CFBooleanGetValue(v41))
                    {
                      if (!CFDictionaryContainsKey(theDicta, v43))
                      {
                        v80.length = CFArrayGetCount(v179);
                        v81 = v179;
LABEL_76:
                        v80.location = 0;
                        v103 = CFArrayContainsValue(v81, v80, v74);
                        v104 = v178;
                        if (v193 == kCFCompareEqualTo)
                        {
                          v104 = 1;
                        }

                        if (!v103 || (v104 & 1) == 0)
                        {
                          goto LABEL_82;
                        }

LABEL_80:
                        AMAuthInstallLog(7, "_AMAuthInstallBundleCreateServerRequestDictionary", "entry %@ has been previously personalized; skipping it", v75, v76, v77, v78, v79, ValueAtIndex);
                        SafeRelease(v74);
                        goto LABEL_81;
                      }
                    }

                    else if (!CFDictionaryContainsKey(v184, ValueAtIndex))
                    {
                      v80.length = CFArrayGetCount(theArray);
                      v81 = theArray;
                      goto LABEL_76;
                    }

                    v88 = v178;
                    if (v193 == kCFCompareEqualTo)
                    {
                      v88 = 1;
                    }

                    if (v88 != 1)
                    {
                      goto LABEL_82;
                    }

                    goto LABEL_80;
                  }
                }

                v82 = sub_10000C7E8();
                AMAuthInstallLog(v82, "_AMAuthInstallBundleCreateServerRequestDictionary", "entry %@ not part of manifest, skipping", v83, v84, v85, v86, v87, v177);
LABEL_94:
                v39 = kCFBooleanFalse;
                if (Count == ++v38)
                {
                  goto LABEL_99;
                }
              }
            }
          }

          v185 = 0;
          MutableCopy = 0;
LABEL_99:
          v13 = v191;
          if (v191 && CFDictionaryGetCount(v191))
          {
            sub_10000C160(a1, v183, v191, v114, v115, v116, v117, v118);
            v123 = AMAuthInstallApServerRequestAddRequiredTagsWithRecoveryOS(a1, v191, v188, 1, v119, v120, v121, v122);
            if (v123)
            {
              goto LABEL_134;
            }

            v124 = *(a1 + 440);
            v125 = sub_10000C74C();
            if (!v126(v125))
            {
              goto LABEL_126;
            }

            v132 = CFGetAllocator(a1);
            Code = 2;
            DeepCopy = CFPropertyListCreateDeepCopy(v132, v191, 2uLL);
            *v181 = DeepCopy;
            if (!DeepCopy)
            {
              goto LABEL_127;
            }
          }

          v134 = CFDictionaryGetCount(Mutable);
          sub_10000C160(a1, v186, Mutable, v135, v136, v137, v138, v139);
          v140 = sub_10000C74C();
          v123 = AMAuthInstallApServerRequestAddRequiredTags(v140, v141, v188, v142, v143, v144, v145, v146);
          if (!v123)
          {
            v123 = AMAuthInstallBasebandSupportsServerSigning(a1, v199);
            if (!v123)
            {
              if (v199[0])
              {
                if (AMAuthInstallBasebandPersonalizationEnabled(a1))
                {
                  if (v185)
                  {
                    v147 = sub_10000C74C();
                    v154 = AMAuthInstallBasebandServerRequestAddRequiredTags(v147, v148, v185, v149, v150, v151, v152, v153);
                    if (v154)
                    {
                      Code = v154;
                      AMAuthInstallLog(3, "_AMAuthInstallBundleCreateServerRequestDictionary", "%s: missing required baseband parameters", v155, v156, v157, v158, v159, "_AMAuthInstallBundleCreateServerRequestDictionary");
                      goto LABEL_127;
                    }
                  }
                }
              }

              if ((v160 = *(a1 + 48)) == 0 || !*(v160 + 160) || (LOBYTE(v196) = 1, AMAuthInstallVinylIsLegacyChipId(a1, &v196)) || v196 || !CFDictionaryGetValue(Mutable, @"eUICC,Gold") && !CFDictionaryGetValue(Mutable, @"eUICC,Main") || (v161 = sub_10000C74C(), v123 = AMAuthInstallVinylServerRequestAddRequiredTags(v161, v162, 0), !v123))
              {
                v163 = CFDictionaryGetCount(Mutable);
                v164 = *(a1 + 440);
                v165 = sub_10000C74C();
                if (v166(v165))
                {
                  v167 = CFDictionaryGetCount(Mutable);
                  if (v134 || v167 != v163)
                  {
                    v173 = CFGetAllocator(a1);
                    v174 = CFPropertyListCreateDeepCopy(v173, Mutable, 2uLL);
                    *v180 = v174;
                    Code = 2 * (v174 == 0);
                  }

                  else
                  {
                    AMAuthInstallLog(6, "_AMAuthInstallBundleCreateServerRequestDictionary", "nothing to be done", v168, v169, v170, v171, v172, v177);
                    Code = 0;
                  }

                  goto LABEL_127;
                }

LABEL_126:
                AMAuthInstallLog(3, "_AMAuthInstallBundleCreateServerRequestDictionary", "failed to add updater tags %@", v127, v128, v129, v130, v131, v197);
                Code = CFErrorGetCode(v197);
                goto LABEL_127;
              }
            }
          }

LABEL_134:
          Code = v123;
          goto LABEL_127;
        }

        v28 = CFGetAllocator(a1);
        v13 = CFDictionaryCreateMutable(v28, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v13)
        {
          if (CFDictionaryGetValue(a4, @"RecoveryOS"))
          {
            v179 = CFDictionaryGetValue(a4, @"Personalized");
            if (v179)
            {
              theDicta = CFDictionaryGetValue(a4, @"Manifest");
              if (theDicta)
              {
                v180 = a7;
                v181 = a8;
                goto LABEL_22;
              }
            }
          }

          goto LABEL_132;
        }
      }

      else
      {
        v13 = 0;
      }

      MutableCopy = 0;
      Code = 2;
      goto LABEL_127;
    }

    Mutable = 0;
LABEL_132:
    MutableCopy = 0;
    goto LABEL_133;
  }

LABEL_127:
  SafeRelease(v198);
  SafeRelease(Mutable);
  SafeRelease(v13);
  SafeRelease(MutableCopy);
  SafeRelease(v197);
  return Code;
}