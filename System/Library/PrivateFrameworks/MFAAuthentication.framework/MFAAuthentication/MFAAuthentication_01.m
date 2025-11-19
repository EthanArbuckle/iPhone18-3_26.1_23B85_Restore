id base64EncodeArray(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) base64EncodedStringWithOptions:{0, v11}];
        if (v8)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

id base64DecodeArray(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = objc_alloc(MEMORY[0x277CBEA90]);
        v10 = [v9 initWithBase64EncodedString:v8 options:{0, v13}];
        if (v10)
        {
          [v2 addObject:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

uint64_t MFAACreateSecurityCertificateReference(const __CFData *a1)
{
  v2 = SecCMSCertificatesOnlyMessageCopyCertificates();
  v3 = v2;
  if (v2 && CFArrayGetCount(v2) >= 1)
  {
    Count = CFArrayGetCount(v3);
    ValueAtIndex = CFArrayGetValueAtIndex(v3, Count - 1);
    v6 = ValueAtIndex;
    if (ValueAtIndex)
    {
      CFRetain(ValueAtIndex);
    }

    goto LABEL_6;
  }

  v7 = *MEMORY[0x277CBECE8];
  CFDataGetBytePtr(a1);
  CFDataGetLength(a1);
  v6 = SecCertificateCreateWithBytes();
  if (v3)
  {
LABEL_6:
    CFRelease(v3);
  }

  if (!v6)
  {
    v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v8)
    {
      MFAACreateSecurityCertificateReference_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  return v6;
}

uint64_t MFAACreateSecurityCertificateReferenceFromBytes(UInt8 *bytes, CFIndex length)
{
  if (!bytes)
  {
    return 0;
  }

  if (!length)
  {
    return 0;
  }

  v2 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], bytes, length, *MEMORY[0x277CBED00]);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = MFAACreateSecurityCertificateReference(v2);
  CFRelease(v3);
  return v4;
}

__CFArray *MFAACreateAnchorCertificateAuthorityArray(int a1)
{
  if (MFAAIsInternalBuild_onceToken != -1)
  {
    MFAACreateAnchorCertificateAuthorityArray_cold_1();
  }

  if (MFAAIsDesenseBuild_onceToken != -1)
  {
    MFAACreateAnchorCertificateAuthorityArray_cold_2();
  }

  if (MFAAIsDevelopmentHW_onceToken != -1)
  {
    MFAACreateAnchorCertificateAuthorityArray_cold_3();
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    switch(a1)
    {
      case 5:
        v15 = MFAACreateSecurityCertificateReferenceFromBytes(kCertDER_Mfi4_Root, 504);
        if (v15)
        {
          v16 = v15;
          CFArrayAppendValue(Mutable, v15);
          CFRelease(v16);
        }

        else
        {
          v47 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v47)
          {
            MFAACreateAnchorCertificateAuthorityArray_cold_4(v47, v48, v49, v50, v51, v52, v53, v54);
          }
        }

        if ((gbIsInternalBuild & 1) != 0 || gbIsDesenseBuild == 1)
        {
          v55 = MFAACreateSecurityCertificateReferenceFromBytes(kCertDER_Mfi4_Root_Test, 505);
          if (v55)
          {
            goto LABEL_54;
          }

          v56 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v56)
          {
            MFAACreateAnchorCertificateAuthorityArray_cold_5(v56, v57, v58, v59, v60, v61, v62, v63);
          }
        }

        break;
      case 3:
        v13 = MFAACreateSecurityCertificateReferenceFromBytes(kiPodAccessoryTestAuth3CA, 667);
        if (v13)
        {
          v14 = v13;
          CFArrayAppendValue(Mutable, v13);
          CFRelease(v14);
        }

        else
        {
          v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v17)
          {
            MFAACreateAnchorCertificateAuthorityArray_cold_6(v17, v18, v19, v20, v21, v22, v23, v24);
          }
        }

        v25 = MFAACreateSecurityCertificateReferenceFromBytes(kAuth3ECSSubCADev, 667);
        if (v25)
        {
          v26 = v25;
          CFArrayAppendValue(Mutable, v25);
          CFRelease(v26);
        }

        else
        {
          v27 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v27)
          {
            MFAACreateAnchorCertificateAuthorityArray_cold_7(v27, v28, v29, v30, v31, v32, v33, v34);
          }
        }

        v35 = MFAACreateSecurityCertificateReferenceFromBytes(kAuth3ECSSubCAProd, 667);
        if (v35)
        {
          v36 = v35;
          CFArrayAppendValue(Mutable, v35);
          CFRelease(v36);
        }

        else
        {
          v37 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v37)
          {
            MFAACreateAnchorCertificateAuthorityArray_cold_8(v37, v38, v39, v40, v41, v42, v43, v44);
          }
        }

        if ((gbIsInternalBuild & 1) != 0 || gbIsDesenseBuild == 1)
        {
          v45 = MFAACreateSecurityCertificateReferenceFromBytes(kiPodAccessoryTestCAProto, 637);
          if (v45)
          {
            v46 = v45;
            CFArrayAppendValue(Mutable, v45);
            CFRelease(v46);
          }

          else
          {
            v80 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
            if (v80)
            {
              MFAACreateAnchorCertificateAuthorityArray_cold_9(v80, v81, v82, v83, v84, v85, v86, v87);
            }
          }

          v88 = MFAACreateSecurityCertificateReferenceFromBytes(kAuth3ECSSubCASimu, 667);
          if (v88)
          {
            v89 = v88;
            CFArrayAppendValue(Mutable, v88);
            CFRelease(v89);
          }

          else
          {
            v90 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
            if (v90)
            {
              MFAACreateAnchorCertificateAuthorityArray_cold_10(v90, v91, v92, v93, v94, v95, v96, v97);
            }
          }

          v55 = MFAACreateSecurityCertificateReferenceFromBytes(kAuth3ECSSubCADev0, 667);
          if (v55)
          {
            goto LABEL_54;
          }

          v100 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v100)
          {
            MFAACreateAnchorCertificateAuthorityArray_cold_11(v100, v101, v102, v103, v104, v105, v106, v107);
          }
        }

        break;
      case 2:
        v3 = SecCertificateCreateWithBytes();
        if (v3)
        {
          v4 = v3;
          CFArrayAppendValue(Mutable, v3);
          CFRelease(v4);
        }

        else
        {
          v64 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v64)
          {
            MFAACreateAnchorCertificateAuthorityArray_cold_12(v64, v65, v66, v67, v68, v69, v70, v71);
          }
        }

        v55 = SecCertificateCreateWithBytes();
        if (!v55)
        {
          v72 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v72)
          {
            MFAACreateAnchorCertificateAuthorityArray_cold_13(v72, v73, v74, v75, v76, v77, v78, v79);
          }

          return Mutable;
        }

LABEL_54:
        v98 = v55;
        CFArrayAppendValue(Mutable, v55);
        CFRelease(v98);
        return Mutable;
      default:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          MFAACreateAnchorCertificateAuthorityArray_cold_14();
        }

        break;
    }
  }

  else
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v5)
    {
      MFAACreateAnchorCertificateAuthorityArray_cold_15(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  return Mutable;
}

uint64_t MFAAIsDesenseBuild()
{
  if (MFAAIsDesenseBuild_onceToken != -1)
  {
    MFAACreateAnchorCertificateAuthorityArray_cold_2();
  }

  return gbIsDesenseBuild;
}

uint64_t MFAACertificateAuthVersionNumber(const __CFData *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = MFAACreateSecurityCertificateReference(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = SecCertificateGetiAuthVersion();
  if (v3 - 2 >= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  CFRelease(v2);
  return v4;
}

uint64_t MFAACertificateAuthV2Class(uint64_t a1)
{
  v1 = MFAACreateCertificateSerialNumber(a1);
  if (v1)
  {
    v2 = v1;
    BytePtr = CFDataGetBytePtr(v1);
    Length = CFDataGetLength(v2);
    if (BytePtr && Length == 15)
    {
      if (BytePtr[7] <= 0x10u && BytePtr[2] == 170 && BytePtr[6] == 170)
      {
        v5 = 0x7FFFFFFFLL;
        if (BytePtr[8] == 170)
        {
          if (BytePtr[11] == 170)
          {
            v5 = BytePtr[7];
          }

          else
          {
            v5 = 0x7FFFFFFFLL;
          }
        }

        goto LABEL_17;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      MFAACertificateAuthV2Class_cold_1();
    }

    v5 = 0x7FFFFFFFLL;
LABEL_17:
    CFRelease(v2);
    return v5;
  }

  v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (v6)
  {
    MFAACertificateAuthV2Class_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  return 0x7FFFFFFFLL;
}

void MFAAPrintCertSerialNumber(uint64_t a1)
{
  v1 = MFAACreateCertificateSerialNumber(a1);
  if (v1)
  {
    v2 = v1;
    BytePtr = CFDataGetBytePtr(v1);
    Length = CFDataGetLength(v2);
    MFAAPrintCertSerialNumberBytes(BytePtr, Length);

    CFRelease(v2);
  }

  else
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v5)
    {
      MFAACertificateAuthV2Class_cold_2(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

void MFAAPrintCertSerialNumberBytes(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v22 = *MEMORY[0x277D85DE8];
  if (a1 && (a2 - 1) <= 0xF)
  {
    v20 = 0u;
    memset(v21, 0, sizeof(v21));
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = v7;
    *v7 = 0u;
    while (1)
    {
      v5 = sprintf(v4, "%02X", *v3);
      if (v5 < 1)
      {
        break;
      }

      ++v3;
      v4 += v5;
      if (!--v2)
      {
        goto LABEL_11;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      MFAAPrintCertSerialNumberBytes_cold_2();
    }

LABEL_11:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      MFAAPrintCertSerialNumberBytes_cold_3();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    MFAAPrintCertSerialNumberBytes_cold_1();
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __MFAAIsInternalBuild_block_invoke()
{
  result = MGGetBoolAnswer();
  gbIsInternalBuild = result;
  return result;
}

uint64_t __MFAAIsDesenseBuild_block_invoke()
{
  result = MGGetBoolAnswer();
  gbIsDesenseBuild = result;
  return result;
}

uint64_t MFAAIsDeveloperBuild()
{
  if (MFAAIsDeveloperBuild_onceToken != -1)
  {
    MFAAIsDeveloperBuild_cold_1();
  }

  return gbIsDeveloperBuild;
}

void __MFAAIsDeveloperBuild_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    gbIsDeveloperBuild = CFEqual(v0, @"Beta") != 0;

    CFRelease(v1);
  }
}

uint64_t __MFAAIsDevelopmentHW_block_invoke()
{
  result = MGGetBoolAnswer();
  gbIsDevelopmentHW = result ^ 1;
  return result;
}

double MFAACreateDEVNCertCapsForCable()
{
  v0 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
  if (v0)
  {
    result = *&MFAACreateDEVNCertCapsForCable_kDEVNTempCertCapsForCable;
    *v0 = MFAACreateDEVNCertCapsForCable_kDEVNTempCertCapsForCable;
    v0[1] = unk_256315358;
  }

  return result;
}

uint64_t MFAAPrefixesBinarySearch(uint64_t a1, unint64_t a2, int a3)
{
  v3 = a3 - 1;
  if (a3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = (v4 + v3) >> 1;
      v6 = *(a1 + 24 * v5);
      if (v6 <= a2)
      {
        if (v6 >= a2)
        {
          return v5;
        }

        v4 = v5 + 1;
      }

      else
      {
        v3 = v5 - 1;
      }
    }

    while (v4 <= v3);
  }

  return 0xFFFFFFFFLL;
}

BOOL MFAABatchBinarySearch(uint64_t a1, unsigned int a2, signed int a3)
{
  v3 = 0;
LABEL_2:
  v4 = a3 - 1;
  v5 = v3;
  do
  {
    v3 = v5;
    if (v5 >= a3)
    {
      break;
    }

    v6 = (v5 + v4) >> 1;
    v7 = (a1 + 3 * ((v3 + v4) >> 1));
    v8 = (*v7 << 16) | (v7[1] << 8) | v7[2];
    if (v8 > a2)
    {
      a3 = (v3 + v4) >> 1;
      goto LABEL_2;
    }

    v5 = v6 + 1;
  }

  while (v8 < a2);
  return v3 < a3;
}

BOOL MFAAWaferBinarySearch(uint64_t a1, unint64_t a2, signed int a3)
{
  v3 = 0;
LABEL_2:
  v4 = a3 - 1;
  v5 = v3;
  do
  {
    v3 = v5;
    if (v5 >= a3)
    {
      break;
    }

    v6 = (v5 + v4) >> 1;
    v7 = *(a1 + 8 * v6);
    if (v7 > a2)
    {
      a3 = (v3 + v4) >> 1;
      goto LABEL_2;
    }

    v5 = v6 + 1;
  }

  while (v7 < a2);
  return v3 < a3;
}

uint64_t MFAADeviceIdentityRequestCertificate(const void *a1, int a2, void *a3, void *a4)
{
  v134 = *MEMORY[0x277D85DE8];
  v130 = 0u;
  v131 = 0u;
  v91 = dispatch_semaphore_create(0);
  v117 = 0;
  v118 = &v117;
  v119 = 0x3032000000;
  v120 = __Block_byref_object_copy__0;
  v121 = __Block_byref_object_dispose__0;
  v122 = 0;
  v111 = 0;
  v112 = &v111;
  v113 = 0x3032000000;
  v114 = __Block_byref_object_copy__0;
  v115 = __Block_byref_object_dispose__0;
  v116 = 0;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v110 = 0;
  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = 0;
  if ((DeviceIdentityFrameworkAvailable_available & 1) == 0)
  {
    if (DeviceIdentityLibraryCore())
    {
      DeviceIdentityIssueClientCertificateWithCompletionSymbolLoc = getDeviceIdentityIssueClientCertificateWithCompletionSymbolLoc();
      DeviceIdentityFrameworkAvailable_available = DeviceIdentityIssueClientCertificateWithCompletionSymbolLoc != 0;
      if (DeviceIdentityIssueClientCertificateWithCompletionSymbolLoc)
      {
        goto LABEL_4;
      }
    }

    else
    {
      DeviceIdentityFrameworkAvailable_available = 0;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      MFAADeviceIdentityRequestCertificate_cold_1();
    }

    v66 = 0;
    v92 = 0;
    v73 = 1;
    goto LABEL_84;
  }

LABEL_4:
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = v118[5];
  v118[5] = v5;

  HIWORD(v131) = 770;
  v92 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v130 length:32];
  v102 = 0;
  v7 = SecAccessControlCreate();
  if (v7)
  {
    v8 = *MEMORY[0x277CDBF00];
    if (SecAccessControlSetProtection())
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "MFAADeviceIdentityRequestCertificate";
        *&buf[12] = 1024;
        *&buf[14] = 93;
        *&buf[18] = 2112;
        *&buf[20] = v7;
        _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d localAccessControl %@", buf, 0x1Cu);
      }

      v9 = MEMORY[0x277CBEB38];
      v123 = 0;
      v124 = &v123;
      v125 = 0x2020000000;
      v10 = getkMAOptionsBAAKeychainLabelSymbolLoc_ptr;
      v126 = getkMAOptionsBAAKeychainLabelSymbolLoc_ptr;
      if (!getkMAOptionsBAAKeychainLabelSymbolLoc_ptr)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getkMAOptionsBAAKeychainLabelSymbolLoc_block_invoke;
        *&buf[24] = &unk_279831D78;
        v133 = &v123;
        v11 = DeviceIdentityLibrary();
        v12 = dlsym(v11, "kMAOptionsBAAKeychainLabel");
        *(v133[1] + 24) = v12;
        getkMAOptionsBAAKeychainLabelSymbolLoc_ptr = *(v133[1] + 24);
        v10 = v124[3];
      }

      _Block_object_dispose(&v123, 8);
      if (v10)
      {
        v86 = *v10;
        v128[0] = v86;
        v129[0] = a1;
        v123 = 0;
        v124 = &v123;
        v125 = 0x2020000000;
        v13 = getkMAOptionsBAAKeychainAccessGroupSymbolLoc_ptr;
        v126 = getkMAOptionsBAAKeychainAccessGroupSymbolLoc_ptr;
        if (!getkMAOptionsBAAKeychainAccessGroupSymbolLoc_ptr)
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __getkMAOptionsBAAKeychainAccessGroupSymbolLoc_block_invoke;
          *&buf[24] = &unk_279831D78;
          v133 = &v123;
          v14 = DeviceIdentityLibrary();
          v15 = dlsym(v14, "kMAOptionsBAAKeychainAccessGroup");
          *(v133[1] + 24) = v15;
          getkMAOptionsBAAKeychainAccessGroupSymbolLoc_ptr = *(v133[1] + 24);
          v13 = v124[3];
        }

        _Block_object_dispose(&v123, 8);
        if (v13)
        {
          v85 = *v13;
          v128[1] = v85;
          v129[1] = @"com.apple.mfiaccessory";
          v123 = 0;
          v124 = &v123;
          v125 = 0x2020000000;
          v16 = getkMAOptionsResuseExistingKeySymbolLoc_ptr;
          v126 = getkMAOptionsResuseExistingKeySymbolLoc_ptr;
          if (!getkMAOptionsResuseExistingKeySymbolLoc_ptr)
          {
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = __getkMAOptionsResuseExistingKeySymbolLoc_block_invoke;
            *&buf[24] = &unk_279831D78;
            v133 = &v123;
            v17 = DeviceIdentityLibrary();
            v18 = dlsym(v17, "kMAOptionsResuseExistingKey");
            *(v133[1] + 24) = v18;
            getkMAOptionsResuseExistingKeySymbolLoc_ptr = *(v133[1] + 24);
            v16 = v124[3];
          }

          _Block_object_dispose(&v123, 8);
          if (v16)
          {
            v19 = *v16;
            v20 = MEMORY[0x277CBEC38];
            v84 = v19;
            v128[2] = v19;
            if (a2)
            {
              v21 = MEMORY[0x277CBEC28];
            }

            else
            {
              v21 = MEMORY[0x277CBEC38];
            }

            v129[2] = v21;
            v123 = 0;
            v124 = &v123;
            v125 = 0x2020000000;
            v22 = getkMAOptionsBAAAccessControlsSymbolLoc_ptr;
            v126 = getkMAOptionsBAAAccessControlsSymbolLoc_ptr;
            if (!getkMAOptionsBAAAccessControlsSymbolLoc_ptr)
            {
              *buf = MEMORY[0x277D85DD0];
              *&buf[8] = 3221225472;
              *&buf[16] = __getkMAOptionsBAAAccessControlsSymbolLoc_block_invoke;
              *&buf[24] = &unk_279831D78;
              v133 = &v123;
              v23 = DeviceIdentityLibrary();
              v24 = dlsym(v23, "kMAOptionsBAAAccessControls");
              *(v133[1] + 24) = v24;
              getkMAOptionsBAAAccessControlsSymbolLoc_ptr = *(v133[1] + 24);
              v22 = v124[3];
            }

            _Block_object_dispose(&v123, 8);
            if (v22)
            {
              v83 = *v22;
              v128[3] = v83;
              v129[3] = v7;
              v123 = 0;
              v124 = &v123;
              v125 = 0x2020000000;
              v25 = getkMAOptionsBAASkipNetworkRequestSymbolLoc_ptr;
              v126 = getkMAOptionsBAASkipNetworkRequestSymbolLoc_ptr;
              if (!getkMAOptionsBAASkipNetworkRequestSymbolLoc_ptr)
              {
                *buf = MEMORY[0x277D85DD0];
                *&buf[8] = 3221225472;
                *&buf[16] = __getkMAOptionsBAASkipNetworkRequestSymbolLoc_block_invoke;
                *&buf[24] = &unk_279831D78;
                v133 = &v123;
                v26 = DeviceIdentityLibrary();
                v27 = dlsym(v26, "kMAOptionsBAASkipNetworkRequest");
                *(v133[1] + 24) = v27;
                getkMAOptionsBAASkipNetworkRequestSymbolLoc_ptr = *(v133[1] + 24);
                v25 = v124[3];
              }

              _Block_object_dispose(&v123, 8);
              if (v25)
              {
                v82 = *v25;
                v128[4] = v82;
                v129[4] = v21;
                v123 = 0;
                v124 = &v123;
                v125 = 0x2020000000;
                v28 = getkMAOptionsBAASCRTAttestationSymbolLoc_ptr;
                v126 = getkMAOptionsBAASCRTAttestationSymbolLoc_ptr;
                if (!getkMAOptionsBAASCRTAttestationSymbolLoc_ptr)
                {
                  *buf = MEMORY[0x277D85DD0];
                  *&buf[8] = 3221225472;
                  *&buf[16] = __getkMAOptionsBAASCRTAttestationSymbolLoc_block_invoke;
                  *&buf[24] = &unk_279831D78;
                  v133 = &v123;
                  v29 = DeviceIdentityLibrary();
                  v30 = dlsym(v29, "kMAOptionsBAASCRTAttestation");
                  *(v133[1] + 24) = v30;
                  getkMAOptionsBAASCRTAttestationSymbolLoc_ptr = *(v133[1] + 24);
                  v28 = v124[3];
                }

                _Block_object_dispose(&v123, 8);
                if (v28)
                {
                  v81 = *v28;
                  v128[5] = v81;
                  v129[5] = v20;
                  v123 = 0;
                  v124 = &v123;
                  v125 = 0x2020000000;
                  v31 = getkMAOptionsBAAValiditySymbolLoc_ptr;
                  v126 = getkMAOptionsBAAValiditySymbolLoc_ptr;
                  if (!getkMAOptionsBAAValiditySymbolLoc_ptr)
                  {
                    *buf = MEMORY[0x277D85DD0];
                    *&buf[8] = 3221225472;
                    *&buf[16] = __getkMAOptionsBAAValiditySymbolLoc_block_invoke;
                    *&buf[24] = &unk_279831D78;
                    v133 = &v123;
                    v32 = DeviceIdentityLibrary();
                    v33 = dlsym(v32, "kMAOptionsBAAValidity");
                    *(v133[1] + 24) = v33;
                    getkMAOptionsBAAValiditySymbolLoc_ptr = *(v133[1] + 24);
                    v31 = v124[3];
                  }

                  _Block_object_dispose(&v123, 8);
                  if (v31)
                  {
                    v34 = *v31;
                    v128[6] = v34;
                    v129[6] = &unk_2868543F8;
                    v123 = 0;
                    v124 = &v123;
                    v125 = 0x2020000000;
                    v35 = getkMAOptionsBAACertTypeSymbolLoc_ptr;
                    v126 = getkMAOptionsBAACertTypeSymbolLoc_ptr;
                    if (!getkMAOptionsBAACertTypeSymbolLoc_ptr)
                    {
                      *buf = MEMORY[0x277D85DD0];
                      *&buf[8] = 3221225472;
                      *&buf[16] = __getkMAOptionsBAACertTypeSymbolLoc_block_invoke;
                      *&buf[24] = &unk_279831D78;
                      v133 = &v123;
                      v36 = DeviceIdentityLibrary();
                      v37 = dlsym(v36, "kMAOptionsBAACertType");
                      *(v133[1] + 24) = v37;
                      getkMAOptionsBAACertTypeSymbolLoc_ptr = *(v133[1] + 24);
                      v35 = v124[3];
                    }

                    _Block_object_dispose(&v123, 8);
                    if (v35)
                    {
                      v38 = *v35;
                      v128[7] = v38;
                      v39 = MEMORY[0x277CCABB0];
                      v123 = 0;
                      v124 = &v123;
                      v125 = 0x2020000000;
                      v40 = getkMAOptionsBAACertTypeMFiSymbolLoc_ptr;
                      v126 = getkMAOptionsBAACertTypeMFiSymbolLoc_ptr;
                      if (!getkMAOptionsBAACertTypeMFiSymbolLoc_ptr)
                      {
                        *buf = MEMORY[0x277D85DD0];
                        *&buf[8] = 3221225472;
                        *&buf[16] = __getkMAOptionsBAACertTypeMFiSymbolLoc_block_invoke;
                        *&buf[24] = &unk_279831D78;
                        v133 = &v123;
                        v41 = DeviceIdentityLibrary();
                        v42 = dlsym(v41, "kMAOptionsBAACertTypeMFi");
                        *(v133[1] + 24) = v42;
                        getkMAOptionsBAACertTypeMFiSymbolLoc_ptr = *(v133[1] + 24);
                        v40 = v124[3];
                      }

                      _Block_object_dispose(&v123, 8);
                      if (v40)
                      {
                        v43 = [v39 numberWithUnsignedInt:*v40];
                        v129[7] = v43;
                        v123 = 0;
                        v124 = &v123;
                        v125 = 0x2020000000;
                        v44 = getkMAOptionsBAAMFiPropertiesSymbolLoc_ptr;
                        v126 = getkMAOptionsBAAMFiPropertiesSymbolLoc_ptr;
                        if (!getkMAOptionsBAAMFiPropertiesSymbolLoc_ptr)
                        {
                          *buf = MEMORY[0x277D85DD0];
                          *&buf[8] = 3221225472;
                          *&buf[16] = __getkMAOptionsBAAMFiPropertiesSymbolLoc_block_invoke;
                          *&buf[24] = &unk_279831D78;
                          v133 = &v123;
                          v45 = DeviceIdentityLibrary();
                          v46 = dlsym(v45, "kMAOptionsBAAMFiProperties");
                          *(v133[1] + 24) = v46;
                          getkMAOptionsBAAMFiPropertiesSymbolLoc_ptr = *(v133[1] + 24);
                          v44 = v124[3];
                        }

                        _Block_object_dispose(&v123, 8);
                        if (v44)
                        {
                          v47 = *v44;
                          v128[8] = v47;
                          v129[8] = v92;
                          v123 = 0;
                          v124 = &v123;
                          v125 = 0x2020000000;
                          v48 = getkMAOptionsBAAOIDSToIncludeSymbolLoc_ptr;
                          v126 = getkMAOptionsBAAOIDSToIncludeSymbolLoc_ptr;
                          if (!getkMAOptionsBAAOIDSToIncludeSymbolLoc_ptr)
                          {
                            *buf = MEMORY[0x277D85DD0];
                            *&buf[8] = 3221225472;
                            *&buf[16] = __getkMAOptionsBAAOIDSToIncludeSymbolLoc_block_invoke;
                            *&buf[24] = &unk_279831D78;
                            v133 = &v123;
                            v49 = DeviceIdentityLibrary();
                            v50 = dlsym(v49, "kMAOptionsBAAOIDSToInclude");
                            *(v133[1] + 24) = v50;
                            getkMAOptionsBAAOIDSToIncludeSymbolLoc_ptr = *(v133[1] + 24);
                            v48 = v124[3];
                          }

                          _Block_object_dispose(&v123, 8);
                          if (v48)
                          {
                            v51 = *v48;
                            v128[9] = v51;
                            v123 = 0;
                            v124 = &v123;
                            v125 = 0x2020000000;
                            v52 = getkMAOptionsBAAOIDMFiAccessoryPropertiesSymbolLoc_ptr;
                            v126 = getkMAOptionsBAAOIDMFiAccessoryPropertiesSymbolLoc_ptr;
                            if (!getkMAOptionsBAAOIDMFiAccessoryPropertiesSymbolLoc_ptr)
                            {
                              *buf = MEMORY[0x277D85DD0];
                              *&buf[8] = 3221225472;
                              *&buf[16] = __getkMAOptionsBAAOIDMFiAccessoryPropertiesSymbolLoc_block_invoke;
                              *&buf[24] = &unk_279831D78;
                              v133 = &v123;
                              v53 = DeviceIdentityLibrary();
                              v54 = dlsym(v53, "kMAOptionsBAAOIDMFiAccessoryProperties");
                              *(v133[1] + 24) = v54;
                              getkMAOptionsBAAOIDMFiAccessoryPropertiesSymbolLoc_ptr = *(v133[1] + 24);
                              v52 = v124[3];
                            }

                            _Block_object_dispose(&v123, 8);
                            if (v52)
                            {
                              v55 = *v52;
                              v127 = v55;
                              v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v127 count:1];
                              v129[9] = v56;
                              v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v129 forKeys:v128 count:10];
                              v58 = [v9 dictionaryWithDictionary:v57];

                              CFRelease(v7);
                              if (!a2)
                              {
LABEL_52:
                                CFRetain(a1);
                                v63 = [MEMORY[0x277CBEAA8] date];
                                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                {
                                  *buf = 136315650;
                                  *&buf[4] = "MFAADeviceIdentityRequestCertificate";
                                  *&buf[12] = 2112;
                                  *&buf[14] = a1;
                                  *&buf[22] = 2112;
                                  *&buf[24] = v58;
                                  _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: %@, options %@\n\n", buf, 0x20u);
                                }

                                v93[0] = MEMORY[0x277D85DD0];
                                v93[1] = 3221225472;
                                v93[2] = __MFAADeviceIdentityRequestCertificate_block_invoke;
                                v93[3] = &unk_279831D50;
                                v96 = &v111;
                                v97 = &v107;
                                v98 = &v117;
                                v64 = v63;
                                v101 = a2;
                                v94 = v64;
                                v99 = &v103;
                                v100 = a1;
                                v65 = v91;
                                v95 = v65;
                                v66 = v58;
                                v67 = v93;
                                v68 = getDeviceIdentityIssueClientCertificateWithCompletionSymbolLoc();
                                if (v68)
                                {
                                  v68(0, v66, v67);

                                  dispatch_semaphore_wait(v65, 0xFFFFFFFFFFFFFFFFLL);
                                  if (v104[3])
                                  {
                                    if (v112[5])
                                    {
                                      v69 = MEMORY[0x277D86220];
                                      v70 = MEMORY[0x277D86220];
                                      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                                      {
                                        v71 = [v112[5] description];
                                        v72 = v71;
                                        MFAADeviceIdentityRequestCertificate_cold_4([v71 UTF8String], buf, v71);
                                      }
                                    }

                                    if (a3)
                                    {
                                      *a3 = v118[5];
                                    }

                                    v73 = 0;
                                    if (a4)
                                    {
                                      *a4 = v108[3];
                                    }
                                  }

                                  else
                                  {
                                    v74 = MEMORY[0x277D86220];
                                    v75 = MEMORY[0x277D86220];
                                    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
                                    {
                                      v76 = [v112[5] description];
                                      v77 = v76;
                                      MFAADeviceIdentityRequestCertificate_cold_3([v76 UTF8String], buf, v76);
                                    }

                                    v78 = v108[3];
                                    if (v78)
                                    {
                                      CFRelease(v78);
                                      v108[3] = 0;
                                    }

                                    v73 = 1;
                                  }

                                  goto LABEL_84;
                                }

                                dlerror();
                                abort_report_np();
LABEL_87:
                                __break(1u);
                              }

                              v123 = 0;
                              v124 = &v123;
                              v125 = 0x2020000000;
                              v59 = getkMAOptionsBAAIgnoreExistingKeychainItemsSymbolLoc_ptr;
                              v126 = getkMAOptionsBAAIgnoreExistingKeychainItemsSymbolLoc_ptr;
                              if (!getkMAOptionsBAAIgnoreExistingKeychainItemsSymbolLoc_ptr)
                              {
                                *buf = MEMORY[0x277D85DD0];
                                *&buf[8] = 3221225472;
                                *&buf[16] = __getkMAOptionsBAAIgnoreExistingKeychainItemsSymbolLoc_block_invoke;
                                *&buf[24] = &unk_279831D78;
                                v133 = &v123;
                                v60 = DeviceIdentityLibrary();
                                v61 = dlsym(v60, "kMAOptionsBAAIgnoreExistingKeychainItems");
                                *(v133[1] + 24) = v61;
                                getkMAOptionsBAAIgnoreExistingKeychainItemsSymbolLoc_ptr = *(v133[1] + 24);
                                v59 = v124[3];
                              }

                              _Block_object_dispose(&v123, 8);
                              if (v59)
                              {
                                v62 = *v59;
                                [v58 setValue:MEMORY[0x277CBEC38] forKey:v62];

                                goto LABEL_52;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      dlerror();
      abort_report_np();
      goto LABEL_87;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      MFAADeviceIdentityRequestCertificate_cold_2(v8, &v102);
    }

    if (v102)
    {
      CFRelease(v102);
    }

    v66 = 0;
    v73 = 14;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      MFAADeviceIdentityRequestCertificate_cold_5(&v102);
    }

    if (v102)
    {
      CFRelease(v102);
    }

    v66 = 0;
    v73 = 12;
  }

LABEL_84:
  _Block_object_dispose(&v103, 8);
  _Block_object_dispose(&v107, 8);
  _Block_object_dispose(&v111, 8);

  _Block_object_dispose(&v117, 8);
  v79 = *MEMORY[0x277D85DE8];
  return v73;
}

void sub_2562A4400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a50, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __MFAADeviceIdentityRequestCertificate_block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a4);
  *(*(*(a1 + 56) + 8) + 24) = a2;
  [*(*(*(a1 + 64) + 8) + 40) addObjectsFromArray:v7];
  v24 = [MEMORY[0x277CBEAA8] date];
  [v24 timeIntervalSinceDate:*(a1 + 32)];
  v10 = v9;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 80);
    *buf = 136316162;
    v27 = "MFAADeviceIdentityRequestCertificate_block_invoke";
    v28 = 1024;
    *v29 = 132;
    *&v29[4] = 2112;
    *&v29[6] = v11;
    *&v29[14] = 2048;
    *&v29[16] = v10;
    v30 = 2112;
    v31 = v8;
    _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d %@, got IssueClientCertificate response in %f seconds. error %@", buf, 0x30u);
  }

  v25 = v8;
  if (v10 > 0.05 && *(a1 + 88) == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    __MFAADeviceIdentityRequestCertificate_block_invoke_cold_1(a1, v10);
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  else if (!v7)
  {
    goto LABEL_17;
  }

  if ([v7 count] == 2 && objc_msgSend(v7, "count"))
  {
    v12 = 0;
    v13 = MEMORY[0x277D86220];
    do
    {
      v14 = [v7 objectAtIndexedSubscript:v12];

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v7 objectAtIndexedSubscript:v12];
        v16 = [v15 description];
        v17 = [v16 UTF8String];
        *buf = 136315650;
        v27 = "MFAADeviceIdentityRequestCertificate_block_invoke";
        v28 = 2048;
        *v29 = v12;
        *&v29[8] = 2080;
        *&v29[10] = v17;
        _os_log_impl(&dword_25627E000, v13, OS_LOG_TYPE_DEFAULT, "%s[%lu]: desc: %s\n\n", buf, 0x20u);
      }

      v18 = SecCertificateCopyData(v14);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [(__CFData *)v18 length];
        v20 = [(__CFData *)v18 length];
        v21 = [(__CFData *)v18 bytes];
        *buf = 136316162;
        v27 = "MFAADeviceIdentityRequestCertificate_block_invoke";
        v28 = 2048;
        *v29 = v12;
        *&v29[8] = 2048;
        *&v29[10] = v19;
        *&v29[18] = 1040;
        *&v29[20] = v20;
        v30 = 2096;
        v31 = v21;
        _os_log_impl(&dword_25627E000, v13, OS_LOG_TYPE_DEFAULT, "%s[%lu]: data: (%zu bytes)\n%{coreacc:bytes}.*P", buf, 0x30u);
      }

      if (v12 == [v7 count] - 1)
      {
        *(*(*(a1 + 72) + 8) + 24) = 1;
      }

      ++v12;
    }

    while (v12 < [v7 count]);
  }

LABEL_17:
  v22 = *(a1 + 80);
  if (v22)
  {
    CFRelease(v22);
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t DeviceIdentityLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!DeviceIdentityLibraryCore_frameworkLibrary)
  {
    DeviceIdentityLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = DeviceIdentityLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t getDeviceIdentityIssueClientCertificateWithCompletionSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getDeviceIdentityIssueClientCertificateWithCompletionSymbolLoc_ptr;
  v6 = getDeviceIdentityIssueClientCertificateWithCompletionSymbolLoc_ptr;
  if (!getDeviceIdentityIssueClientCertificateWithCompletionSymbolLoc_ptr)
  {
    v1 = DeviceIdentityLibrary();
    v4[3] = dlsym(v1, "DeviceIdentityIssueClientCertificateWithCompletion");
    getDeviceIdentityIssueClientCertificateWithCompletionSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2562A49E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __DeviceIdentityLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  DeviceIdentityLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getDeviceIdentityIssueClientCertificateWithCompletionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DeviceIdentityLibrary();
  result = dlsym(v2, "DeviceIdentityIssueClientCertificateWithCompletion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDeviceIdentityIssueClientCertificateWithCompletionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t DeviceIdentityLibrary()
{
  v0 = DeviceIdentityLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void *__getkMAOptionsBAAKeychainLabelSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DeviceIdentityLibrary();
  result = dlsym(v2, "kMAOptionsBAAKeychainLabel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMAOptionsBAAKeychainLabelSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMAOptionsBAAKeychainAccessGroupSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DeviceIdentityLibrary();
  result = dlsym(v2, "kMAOptionsBAAKeychainAccessGroup");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMAOptionsBAAKeychainAccessGroupSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMAOptionsResuseExistingKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DeviceIdentityLibrary();
  result = dlsym(v2, "kMAOptionsResuseExistingKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMAOptionsResuseExistingKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMAOptionsBAAAccessControlsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DeviceIdentityLibrary();
  result = dlsym(v2, "kMAOptionsBAAAccessControls");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMAOptionsBAAAccessControlsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMAOptionsBAASkipNetworkRequestSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DeviceIdentityLibrary();
  result = dlsym(v2, "kMAOptionsBAASkipNetworkRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMAOptionsBAASkipNetworkRequestSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMAOptionsBAASCRTAttestationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DeviceIdentityLibrary();
  result = dlsym(v2, "kMAOptionsBAASCRTAttestation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMAOptionsBAASCRTAttestationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMAOptionsBAAValiditySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DeviceIdentityLibrary();
  result = dlsym(v2, "kMAOptionsBAAValidity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMAOptionsBAAValiditySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMAOptionsBAACertTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DeviceIdentityLibrary();
  result = dlsym(v2, "kMAOptionsBAACertType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMAOptionsBAACertTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMAOptionsBAACertTypeMFiSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DeviceIdentityLibrary();
  result = dlsym(v2, "kMAOptionsBAACertTypeMFi");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMAOptionsBAACertTypeMFiSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMAOptionsBAAMFiPropertiesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DeviceIdentityLibrary();
  result = dlsym(v2, "kMAOptionsBAAMFiProperties");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMAOptionsBAAMFiPropertiesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMAOptionsBAAOIDSToIncludeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DeviceIdentityLibrary();
  result = dlsym(v2, "kMAOptionsBAAOIDSToInclude");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMAOptionsBAAOIDSToIncludeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMAOptionsBAAOIDMFiAccessoryPropertiesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DeviceIdentityLibrary();
  result = dlsym(v2, "kMAOptionsBAAOIDMFiAccessoryProperties");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMAOptionsBAAOIDMFiAccessoryPropertiesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMAOptionsBAAIgnoreExistingKeychainItemsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DeviceIdentityLibrary();
  result = dlsym(v2, "kMAOptionsBAAIgnoreExistingKeychainItems");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMAOptionsBAAIgnoreExistingKeychainItemsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a2 + 4) = a3;
  *(a2 + 12) = 2080;
  *(a2 + 14) = result;
  return result;
}

uint64_t createCertificateRefWithData(void *a1, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = 134218240;
    v15 = [v3 length];
    v16 = 1024;
    v17 = a2;
    _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "_createCertificateRefWithData (certData.length: %lu, optimize: %{coreacc:CertificateType_t}d)", &v14, 0x12u);
  }

  if (!v3)
  {
    v8 = 0;
    v7 = 0;
    goto LABEL_16;
  }

  if (a2 != 2)
  {
    v9 = *MEMORY[0x277CBECE8];
    [v3 bytes];
    [v3 length];
    v10 = SecCertificateCreateWithBytes();
    if (v10)
    {
      v7 = v10;
      v8 = 1;
      goto LABEL_16;
    }

    v11 = SecCMSCertificatesOnlyMessageCopyCertificates();
    v5 = v11;
    if (!v11 || ![v11 count])
    {
      v8 = 0;
      v7 = 0;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v4 = SecCMSCertificatesOnlyMessageCopyCertificates();
  v5 = v4;
  if (v4 && [v4 count])
  {
LABEL_13:
    v7 = [v5 objectAtIndexedSubscript:0];
    v8 = 2;
    goto LABEL_15;
  }

  v6 = *MEMORY[0x277CBECE8];
  [v3 bytes];
  [v3 length];
  v7 = SecCertificateCreateWithBytes();
  v8 = v7 != 0;
LABEL_15:

LABEL_16:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = 67109120;
    LODWORD(v15) = v8;
    _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "certType: %{coreacc:CertificateType_t}d", &v14, 8u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t createCertificateRefWithBytes(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  v4 = [MEMORY[0x277CBEA90] dataWithBytes:a1 length:a2];
  CertificateRefWithData = createCertificateRefWithData(v4, a3);

  return CertificateRefWithData;
}

char *MFAACreateSignatureContext(int a1)
{
  v2 = malloc_type_malloc(0x64uLL, 0x100004093FC706DuLL);
  v3 = v2;
  if (v2)
  {
    *v2 = a1;
    CC_SHA1_Init((v2 + 4));
  }

  return v3;
}

BOOL MFAAUpdateDataSignature(uint64_t a1, CFDataRef theData)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    if (HIDWORD(Length) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = 134217984;
      v9 = Length;
      _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Losing integer precision on dataSignLen 0x%08lX\n", &v8, 0xCu);
    }

    CC_SHA1_Update((a1 + 4), BytePtr, Length);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    MFAAUpdateDataSignature_cold_1();
  }

  result = a1 != 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MFAAFinalizeDataSignature(_DWORD *a1, void **a2, size_t *a3)
{
  ConnectionToAuthDaemon = 0;
  if (a1 && a2 && a3)
  {
    if (*a1 == 1)
    {
      ConnectionToAuthDaemon = GetConnectionToAuthDaemon();
      if (ConnectionToAuthDaemon)
      {
        v7 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_string(v7, "requestType", "finalTagging");
        xpc_dictionary_set_data(v7, "signingContext", a1 + 1, 0x60uLL);
        v14 = xpc_connection_send_message_with_reply_sync(ConnectionToAuthDaemon, v7);
        if (v14)
        {
          v9 = v14;
          length = 0;
          if (xpc_dictionary_get_BOOL(v14, "isValid"))
          {
            data = xpc_dictionary_get_data(v9, "signedTagData", &length);
            v11 = *a2;
            if (!*a2)
            {
              v12 = length;
              v13 = 2729603259;
LABEL_27:
              v11 = malloc_type_malloc(v12, v13);
              *a2 = v11;
              v15 = length;
              *a3 = length;
              if (v11)
              {
                goto LABEL_28;
              }

              goto LABEL_29;
            }

LABEL_15:
            v15 = length;
            if (*a3 >= length)
            {
LABEL_28:
              memcpy(v11, data, v15);
              *a3 = length;
              ConnectionToAuthDaemon = 1;
LABEL_30:
              xpc_release(v9);
              goto LABEL_31;
            }

LABEL_29:
            ConnectionToAuthDaemon = 0;
            goto LABEL_30;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_29;
          }

          *v18 = 0;
          v16 = MEMORY[0x277D86220];
LABEL_25:
          _os_log_impl(&dword_25627E000, v16, OS_LOG_TYPE_INFO, "isValid from authd is false!", v18, 2u);
          goto LABEL_29;
        }

LABEL_20:
        ConnectionToAuthDaemon = 0;
LABEL_31:
        xpc_release(v7);
      }
    }

    else if (*a1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        MFAAFinalizeDataSignature_cold_1();
      }

      return 0;
    }

    else
    {
      ConnectionToAuthDaemon = GetConnectionToAuthDaemon();
      if (ConnectionToAuthDaemon)
      {
        v7 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_string(v7, "requestType", "finalSports");
        xpc_dictionary_set_data(v7, "signingContext", a1 + 1, 0x60uLL);
        v8 = xpc_connection_send_message_with_reply_sync(ConnectionToAuthDaemon, v7);
        if (v8)
        {
          v9 = v8;
          length = 0;
          if (xpc_dictionary_get_BOOL(v8, "isValid"))
          {
            data = xpc_dictionary_get_data(v9, "signedSportsData", &length);
            v11 = *a2;
            if (!*a2)
            {
              v12 = length;
              v13 = 2533308064;
              goto LABEL_27;
            }

            goto LABEL_15;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_29;
          }

          *v18 = 0;
          v16 = MEMORY[0x277D86220];
          goto LABEL_25;
        }

        goto LABEL_20;
      }
    }
  }

  return ConnectionToAuthDaemon;
}

void MFAADeallocSignatureContext(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t GetConnectionToAuthDaemon()
{
  if (!gAuthdXPCConnection)
  {
    mach_service = xpc_connection_create_mach_service("com.apple.authd.xpc", 0, 0);
    gAuthdXPCConnection = mach_service;
    if (mach_service)
    {
      xpc_connection_set_event_handler(mach_service, &__block_literal_global_2);
      xpc_connection_resume(gAuthdXPCConnection);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      GetConnectionToAuthDaemon_cold_1();
    }
  }

  return gAuthdXPCConnection;
}

void __GetConnectionToAuthDaemon_block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x259C60AC0](a2);
  v4 = MEMORY[0x277D86480];
  if (v3 == MEMORY[0x277D86480])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __GetConnectionToAuthDaemon_block_invoke_cold_1(a2);
    }
  }

  else if (MEMORY[0x259C60AC0](a2) == v4)
  {
    if ((a2 == MEMORY[0x277D863F8] || a2 == MEMORY[0x277D863F0]) && gAuthdXPCConnection != 0)
    {
      xpc_connection_cancel(gAuthdXPCConnection);
      xpc_release(gAuthdXPCConnection);
      gAuthdXPCConnection = 0;
    }
  }

  else if (a2)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "certData", &length);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v11 = data;
      _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "data from authd pData:%04lX", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t acc_userDefaults_BOOLForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 BOOLForKey:a1];

  return v3;
}

uint64_t acc_userDefaults_copyStringForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 stringForKey:a1];

  return v3;
}

uint64_t acc_userDefaults_copyArrayForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 arrayForKey:a1];

  return v3;
}

uint64_t acc_userDefaults_copyDictionaryForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 dictionaryForKey:a1];

  return v3;
}

uint64_t acc_userDefaults_copyIntegerForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 integerForKey:a1];

  return v3;
}

double acc_userDefaults_copyDoubleForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  [v2 doubleForKey:a1];
  v4 = v3;

  return v4;
}

void acc_userDefaults_setArrayForKey(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCUserDefaults sharedDefaults];
  [v4 setObject:a2 forKey:a1];
}

void acc_userDefaults_setIntegerForKey(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCUserDefaults sharedDefaults];
  [v4 setInteger:a2 forKey:a1];
}

void acc_userDefaults_setDoubleForKey(uint64_t a1, double a2)
{
  v4 = +[ACCUserDefaults sharedDefaults];
  [v4 setDouble:a1 forKey:a2];
}

uint64_t acc_userDefaultsIapd_BOOLForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 BOOLForKey:a1];

  return v3;
}

uint64_t acc_userDefaultsIapd_copyStringForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 stringForKey:a1];

  return v3;
}

uint64_t acc_userDefaultsIapd_copyArrayForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 arrayForKey:a1];

  return v3;
}

uint64_t acc_userDefaultsIapd_copyDictionaryForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 dictionaryForKey:a1];

  return v3;
}

uint64_t acc_userDefaultsIapd_copyIntegerForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 integerForKey:a1];

  return v3;
}

double acc_userDefaultsIapd_copyDoubleForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  [v2 doubleForKey:a1];
  v4 = v3;

  return v4;
}

uint64_t acc_userDefaultsLogging_BOOLForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsLogging];
  v3 = [v2 BOOLForKey:a1];

  return v3;
}

uint64_t MFAADeviceIdentityInitCertStates()
{
  v4 = *MEMORY[0x277D85DE8];
  if (qword_280CC7870 != -1)
  {
    MFAADeviceIdentityInitCertStates_cold_1();
  }

  if ((_certsExist() & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v2 = 136315138;
      v3 = "MFAADeviceIdentityInitCertStates";
      _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: no valid certs, schedule refresh", &v2, 0xCu);
    }

    _scheduleRefreshCertificates(@"mfi-baa");
  }

  v0 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t _certsExist()
{
  v7 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&gCertificateStateLock);
  v0 = (_MergedGlobals_0 != 0) & ~acc_userDefaults_BOOLForKey(@"PretendNoDeviceIdentityCerts");
  pthread_mutex_unlock(&gCertificateStateLock);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315394;
    v4 = "_certsExist";
    v5 = 1024;
    v6 = v0;
    _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: deviceIdentityCertsExist %d", &v3, 0x12u);
  }

  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

void _scheduleRefreshCertificates(uint64_t a1)
{
  v2 = 0;
  v3 = 10000000000;
  do
  {
    v4 = dispatch_time(0, v3);
    global_queue = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = ___scheduleRefreshCertificates_block_invoke;
    v6[3] = &__block_descriptor_tmp_11;
    v7 = v2;
    v6[4] = a1;
    dispatch_after(v4, global_queue, v6);
    v3 += 10000000000;
    ++v2;
  }

  while (v2 != 4);
}

uint64_t MFAADeviceIdentityCertsExist()
{
  if (qword_280CC7870 == -1)
  {
  }

  else
  {
    MFAADeviceIdentityInitCertStates_cold_1();
  }

  return _certsExist();
}

CFDataRef MFAACreateDeviceDataCertificate(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  lLcAnSGNpbJv(*MEMORY[0x277CBECE8], 318767107 - a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = SecCertificateCopyData(v1);
  CFRelease(v2);
  return v3;
}

CFDataRef MFAACreateDeviceNonceSignature(const __CFData *a1)
{
  v47 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = fukQllQ9ln(*MEMORY[0x277CBECE8], 318767105);
    if (v2)
    {
      v3 = v2;
      BytePtr = CFDataGetBytePtr(a1);
      Length = CFDataGetLength(a1);
      v6 = Length;
      if (BytePtr && Length)
      {
        sigLen = 256;
        *sig = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v7 = SecKeyRawSign(v3, 0x8002u, BytePtr, Length, sig, &sigLen);
        v8 = sigLen;
        if (v7)
        {
          v9 = 1;
        }

        else
        {
          v9 = sigLen == 0;
        }

        if (!v9)
        {
          v27 = CFDataCreate(0, sig, sigLen);
LABEL_20:
          CFRelease(v3);
          goto LABEL_21;
        }

        v10 = v7;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          MFAACreateDeviceNonceSignature_cold_2(v10, v8);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        MFAACreateDeviceNonceSignature_cold_1(BytePtr, v6);
      }

      v27 = 0;
      goto LABEL_20;
    }

    v19 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v19)
    {
      MFAACreateDeviceNonceSignature_cold_3(v19, v20, v21, v22, v23, v24, v25, v26);
    }
  }

  else
  {
    v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v11)
    {
      MFAACreateDeviceNonceSignature_cold_4(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  v27 = 0;
LABEL_21:
  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

BOOL _storeRefreshStateToDisk()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MFAADeviceIdentity: _storeRefreshStateToDisk\n", v6, 2u);
  }

  v0 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 4, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    pthread_mutex_lock(&gCertificateStateLock);
    for (i = 0; i != 4; ++i)
    {
      v3 = CFNumberCreate(v0, kCFNumberSInt8Type, &_MergedGlobals_0 + i);
      if (v3)
      {
        v4 = v3;
        CFArraySetValueAtIndex(Mutable, i, v3);
        CFRelease(v4);
      }
    }

    pthread_mutex_unlock(&gCertificateStateLock);
    acc_userDefaults_setArrayForKey(@"IdentityCertRefreshState", Mutable);
    CFRelease(Mutable);
  }

  else
  {
    _storeRefreshStateToDisk_cold_1();
  }

  return Mutable != 0;
}

uint64_t _fetchAllCertificates(const __CFString *a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v10 = "_fetchAllCertificates";
    v11 = 2112;
    v12 = a1;
    v13 = 1024;
    v14 = a2;
    v15 = 1024;
    v16 = dword_280CC785C;
    _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: %@, startIndex %d (%d), ENTER", buf, 0x22u);
  }

  if (a2 > 3)
  {
    goto LABEL_7;
  }

    ;
  }

  if (a2 >= 1)
  {
LABEL_7:
    v5 = 0;
    do
    {
      _fetchCertificate(a1, v5++, &v8);
    }

    while (a2 != v5);
  }

  if (v8)
  {
    _storeRefreshStateToDisk();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v10 = "_fetchAllCertificates";
    v11 = 2112;
    v12 = a1;
    v13 = 1024;
    v14 = dword_280CC785C;
    v15 = 1024;
    v16 = 1;
    _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: %@, gCertificateIndex %d, EXIT success %d", buf, 0x22u);
  }

  v6 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t _findValidIndex()
{
  v35 = *MEMORY[0x277D85DE8];
  valuePtr = NAN;
  pthread_mutex_lock(&gCertificateStateLock);
  v0 = dword_280CC785C;
  if (!qword_280CC7860 || (v1 = CFGetTypeID(qword_280CC7860), v1 != CFDictionaryGetTypeID()) || (Value = CFDictionaryGetValue(qword_280CC7860, @"RefreshInterval")) == 0 || (v3 = Value, v4 = CFGetTypeID(Value), v4 != CFNumberGetTypeID()))
  {
    _findValidIndex_cold_1(v0, buf);
    v8 = *buf;
    goto LABEL_50;
  }

  CFNumberGetValue(v3, kCFNumberDoubleType, &valuePtr);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v28 = 760;
    v29 = 1024;
    v30 = dword_280CC785C;
    _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MFAADeviceIdentity: _findValidIndex:%d: start index: %d\n", buf, 0xEu);
  }

  v5 = 0;
  v6 = *MEMORY[0x277CBECE8];
  v7 = MEMORY[0x277D86220];
  while (1)
  {
    v8 = v5 + dword_280CC785C <= 0 ? -(-(v5 + dword_280CC785C) & 3) : (v5 + dword_280CC785C) & 3u;
    v9 = *(&_MergedGlobals_0 + v8);
    if (v9 == 2)
    {
      break;
    }

    if (v9 == 1)
    {
      gCertificateUseTimestamp[v8] = 0;
      goto LABEL_42;
    }

LABEL_20:
    if (++v5 == 4)
    {
      v15 = 0;
      v16 = MEMORY[0x277D86220];
      while (1)
      {
        if (v15 + dword_280CC785C <= 0)
        {
          v17 = -(-(v15 + dword_280CC785C) & 3);
        }

        else
        {
          v17 = (v15 + dword_280CC785C) & 3;
        }

        if (*(&_MergedGlobals_0 + v17) == 4)
        {
          v18 = *&gCertificateUseTimestamp[v17];
          Current = CFAbsoluteTimeGetCurrent();
          v20 = CFDateCreate(v6, Current);
          v21 = CFDateCreate(v6, v18);
          TimeIntervalSinceDate = CFDateGetTimeIntervalSinceDate(v20, v21);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109888;
            v28 = 834;
            v29 = 1024;
            v30 = v17;
            v31 = 2048;
            v32 = TimeIntervalSinceDate;
            v33 = 2048;
            v34 = valuePtr;
            _os_log_impl(&dword_25627E000, v16, OS_LOG_TYPE_DEFAULT, "MFAADeviceIdentity: _findValidIndex:%d: %d: elapsed: %f <? %f\n", buf, 0x22u);
          }

          if (TimeIntervalSinceDate < valuePtr)
          {
LABEL_34:
            if (dword_280CC785C + v15 <= 0)
            {
              v8 = -(-(dword_280CC785C + v15) & 3);
            }

            else
            {
              v8 = (dword_280CC785C + v15) & 3;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              v28 = 848;
              v29 = 1024;
              v30 = v8;
              _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MFAADeviceIdentity: _findValidIndex:%d: %d\n", buf, 0xEu);
            }

            goto LABEL_49;
          }

          *(&_MergedGlobals_0 + v17) = 3;
        }

        else
        {
          if (*(&_MergedGlobals_0 + v17))
          {
            goto LABEL_34;
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            v28 = 821;
            v29 = 1024;
            v30 = v17;
            _os_log_impl(&dword_25627E000, v16, OS_LOG_TYPE_DEFAULT, "MFAADeviceIdentity: _findValidIndex:%d: %d: skip invalid cert\n", buf, 0xEu);
          }
        }

        if (++v15 == 4)
        {
          goto LABEL_34;
        }
      }
    }
  }

  v10 = *&gCertificateUseTimestamp[v8];
  v11 = CFAbsoluteTimeGetCurrent();
  v12 = CFDateCreate(v6, v11);
  v13 = CFDateCreate(v6, v10);
  v14 = CFDateGetTimeIntervalSinceDate(v12, v13);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    v28 = 778;
    v29 = 1024;
    v30 = v8;
    v31 = 2048;
    v32 = v14;
    v33 = 2048;
    v34 = valuePtr;
    _os_log_impl(&dword_25627E000, v7, OS_LOG_TYPE_DEFAULT, "MFAADeviceIdentity: _findValidIndex:%d: %d: elapsed: %f <? %f\n", buf, 0x22u);
  }

  if (v14 >= valuePtr)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v28 = 786;
      v29 = 1024;
      v30 = v8;
      _os_log_impl(&dword_25627E000, v7, OS_LOG_TYPE_DEFAULT, "MFAADeviceIdentity: _findValidIndex:%d: %d: expired\n", buf, 0xEu);
    }

    *(&_MergedGlobals_0 + v8) = 3;
    goto LABEL_20;
  }

  if (dword_280CC785C + v5 <= 0)
  {
    v8 = -(-(dword_280CC785C + v5) & 3);
  }

  else
  {
    v8 = (dword_280CC785C + v5) & 3;
  }

LABEL_42:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v28 = 797;
    v29 = 1024;
    v30 = v8;
    _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MFAADeviceIdentity: _findValidIndex:%d: %d\n", buf, 0xEu);
  }

  v23 = 0;
  while (*(&_MergedGlobals_0 + v23) != 4)
  {
    if (++v23 == 4)
    {
      goto LABEL_49;
    }
  }

  *(&_MergedGlobals_0 + v23) = 3;
LABEL_49:
  pthread_mutex_unlock(&gCertificateStateLock);
LABEL_50:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v28 = v8;
    _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MFAADeviceIdentity: _findValidIndex: %d\n", buf, 8u);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t _copyCertificateForIndex(const __CFString *a1, int a2, int a3, int a4, CFTypeRef *a5, CFTypeRef *a6)
{
  v34 = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277CBECE8];
  Length = CFStringGetLength(a1);
  MutableCopy = CFStringCreateMutableCopy(v12, Length + 1, a1);
  v15 = MutableCopy;
  if (MutableCopy)
  {
    CFStringAppendFormat(MutableCopy, 0, @"%d", (a2 + 1));
    pthread_mutex_lock(&gCertificateStateLock);
    if (*(&_MergedGlobals_0 + a2))
    {
      if (gCertificateDeviceIdentityCerts[a2])
      {
        v16 = gCertificateDeviceIdentityKeyRefs[a2] == 0;
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
      v16 = 0;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      *&buf[4] = "_copyCertificateForIndex";
      v27 = 1024;
      v28 = 502;
      v29 = 2112;
      *v30 = v15;
      *&v30[8] = 1024;
      *v31 = a3;
      *&v31[4] = 1024;
      *&v31[6] = a4;
      v32 = 1024;
      v33 = v16;
      _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d %@, requestInit %d, requestNew %d, needInitCertKeyCache %d\n", buf, 0x2Eu);
    }

    if ((a3 | a4 | v16))
    {
      pthread_mutex_unlock(&gCertificateStateLock);
      v25 = 0;
      *buf = 0;
      v17 = MFAADeviceIdentityRequestCertificate(v15, a4, buf, &v25);
      pthread_mutex_lock(&gCertificateStateLock);
      if (v17)
      {
LABEL_27:
        pthread_mutex_unlock(&gCertificateStateLock);
        goto LABEL_28;
      }

      v18 = gCertificateDeviceIdentityCerts[a2];
      if (v18)
      {
        CFRelease(v18);
        gCertificateDeviceIdentityCerts[a2] = 0;
      }

      v19 = gCertificateDeviceIdentityKeyRefs[a2];
      if (v19)
      {
        CFRelease(v19);
      }

      v21 = v25;
      v20 = *buf;
      gCertificateDeviceIdentityCerts[a2] = *buf;
      gCertificateDeviceIdentityKeyRefs[a2] = v21;
      if (!*(&_MergedGlobals_0 + a2))
      {
        *(&_MergedGlobals_0 + a2) = 1;
        _storeRefreshStateToDisk();
        v20 = gCertificateDeviceIdentityCerts[a2];
      }

      if (!v20)
      {
LABEL_26:
        v17 = 96;
        goto LABEL_27;
      }
    }

    else
    {
      v20 = gCertificateDeviceIdentityCerts[a2];
      if (!v20 || !gCertificateDeviceIdentityKeyRefs[a2])
      {
        goto LABEL_26;
      }
    }

    if (gCertificateDeviceIdentityKeyRefs[a2])
    {
      if (a5)
      {
        *a5 = CFRetain(v20);
      }

      v17 = 0;
      if (a6)
      {
        *a6 = CFRetain(gCertificateDeviceIdentityKeyRefs[a2]);
      }

      goto LABEL_27;
    }

    goto LABEL_26;
  }

  _copyCertificateForIndex_cold_1(buf);
  v17 = *buf;
LABEL_28:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    if (v15)
    {
      v22 = v15;
    }

    else
    {
      v22 = a1;
    }

    *buf = 136316418;
    *&buf[4] = "_copyCertificateForIndex";
    v27 = 1024;
    v28 = 566;
    v29 = 1024;
    *v30 = a2;
    *&v30[4] = 1024;
    *&v30[6] = a4;
    *v31 = 2112;
    *&v31[2] = v22;
    v32 = 1024;
    v33 = v17;
    _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d index %d, requestNew %d, %@, error %d\n", buf, 0x2Eu);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v17;
}

CFDataRef MFAADeviceIdentityCreateSignature(__CFString *cf1, __SecKey *a2, const __CFData *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    MFAADeviceIdentityCreateSignature_cold_3(buf);
    v7 = *buf;
    goto LABEL_25;
  }

  v5 = cf1;
  if (!cf1 || !CFEqual(cf1, @"mfi-baa"))
  {
    v5 = @"mfi-baa";
  }

  if (qword_280CC7870 != -1)
  {
    MFAADeviceIdentityInitCertStates_cold_1();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MFAADeviceIdentityCreateSignature: SecKeyCreateSignature\n", buf, 2u);
  }

  error = 0;
  v6 = SecKeyCreateSignature(a2, *MEMORY[0x277CDC318], a3, &error);
  if (v6)
  {
    v7 = v6;
    pthread_mutex_lock(&gCertificateStateLock);
    v8 = *(&_MergedGlobals_0 + dword_280CC785C);
    if (v8 == 3)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *&buf[4] = dword_280CC785C;
        v24 = 2048;
        v25 = Current;
        _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MFAADeviceIdentity: _storeStateToDisk[%d]: %f\n", buf, 0x12u);
      }

      v10 = 4;
    }

    else
    {
      if (v8 != 1)
      {
LABEL_24:
        pthread_mutex_unlock(&gCertificateStateLock);
        _storeStateToDisk(v5, dword_280CC785C);
        goto LABEL_25;
      }

      Current = CFAbsoluteTimeGetCurrent();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *&buf[4] = dword_280CC785C;
        v24 = 2048;
        v25 = Current;
        _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MFAADeviceIdentity: _storeStateToDisk[%d]: %f\n", buf, 0x12u);
      }

      v10 = 2;
    }

    v19 = dword_280CC785C;
    *(&_MergedGlobals_0 + dword_280CC785C) = v10;
    *&gCertificateUseTimestamp[v19] = Current;
    goto LABEL_24;
  }

  if (error)
  {
    CFRelease(error);
    error = 0;
  }

  v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (v11)
  {
    MFAADeviceIdentityCreateSignature_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  v7 = 0;
LABEL_25:
  v20 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t _storeStateToDisk(uint64_t a1, int a2)
{
  v3 = pthread_mutex_lock(&gCertificateStateLock);
  _storeIndexToDisk(v3, a2);
  _storeUseTimeToDisk();
  _storeRefreshStateToDisk();
  _storeIsClassDToDisk();
  pthread_mutex_unlock(&gCertificateStateLock);
  return 1;
}

uint64_t ___scheduleRefreshCertificates_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&gCertificateStateLock);
  v2 = *(a1 + 40);
  v3 = *(&_MergedGlobals_0 + v2);
  if (v3 == 3 || v3 == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v15 = 688;
      v16 = 1024;
      v17 = v2;
      _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MFAADeviceIdentity: _scheduleRefreshCertificates:%d: refresh: %d\n", buf, 0xEu);
    }

    v12 = 0;
    cf = 0;
    pthread_mutex_unlock(&gCertificateStateLock);
    v5 = _copyCertificateForIndex(*(a1 + 32), *(a1 + 40), 0, 1, &cf, &v12);
    pthread_mutex_lock(&gCertificateStateLock);
    v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v6)
      {
        v7 = *(a1 + 40);
        *buf = 67109376;
        v15 = 713;
        v16 = 1024;
        v17 = v7;
        _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MFAADeviceIdentity: _scheduleRefreshCertificates:%d: error refreshing: %d\n", buf, 0xEu);
      }
    }

    else
    {
      if (v6)
      {
        v8 = *(a1 + 40);
        *buf = 67109376;
        v15 = 702;
        v16 = 1024;
        v17 = v8;
        _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MFAADeviceIdentity: _scheduleRefreshCertificates:%d: refreshed: %d\n", buf, 0xEu);
      }

      *(&_MergedGlobals_0 + *(a1 + 40)) = 1;
      v9 = *(a1 + 40);
      gCertificateUseTimestamp[v9] = 0;
      gCertificateIsClassD[v9] = 1;
      _storeRefreshStateToDisk();
      _storeUseTimeToDisk();
      _storeIsClassDToDisk();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }

  result = pthread_mutex_unlock(&gCertificateStateLock);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL _storeUseTimeToDisk()
{
  v0 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 4, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    pthread_mutex_lock(&gCertificateStateLock);
    v2 = 0;
    v3 = &gCertificateUseTimestamp;
    do
    {
      v4 = CFNumberCreate(v0, kCFNumberDoubleType, v3);
      if (v4)
      {
        v5 = v4;
        CFArraySetValueAtIndex(Mutable, v2, v4);
        CFRelease(v5);
      }

      ++v2;
      v3 += 8;
    }

    while (v2 != 4);
    pthread_mutex_unlock(&gCertificateStateLock);
    acc_userDefaults_setArrayForKey(@"IdentityCertUseTime", Mutable);
    CFRelease(Mutable);
  }

  else
  {
    _storeUseTimeToDisk_cold_1();
  }

  return Mutable != 0;
}

BOOL _storeIsClassDToDisk()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 0;
    _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MFAADeviceIdentity: _storeIsClassDToDisk\n", v6, 2u);
  }

  v0 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 4, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    pthread_mutex_lock(&gCertificateStateLock);
    for (i = 0; i != 4; ++i)
    {
      v3 = CFNumberCreate(v0, kCFNumberSInt8Type, &gCertificateIsClassD[i]);
      if (v3)
      {
        v4 = v3;
        CFArraySetValueAtIndex(Mutable, i, v3);
        CFRelease(v4);
      }
    }

    pthread_mutex_unlock(&gCertificateStateLock);
    acc_userDefaults_setArrayForKey(@"IdentityCertIsClassD", Mutable);
    CFRelease(Mutable);
  }

  else
  {
    _storeIsClassDToDisk_cold_1();
  }

  return Mutable != 0;
}

uint64_t _storeIndexToDisk(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MFAADeviceIdentity: _storeIndexToDisk: %d\n", v5, 8u);
  }

  acc_userDefaults_setIntegerForKey(@"IdentityCertUseIndex", a2);
  v3 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t _readStateFromDisk()
{
  v29 = *MEMORY[0x277D85DE8];
  v0 = acc_userDefaults_copyArrayForKey(@"IdentityCertUseTime");
  v1 = acc_userDefaults_copyArrayForKey(@"IdentityCertRefreshState");
  v2 = acc_userDefaults_copyArrayForKey(@"IdentityCertIsClassD");
  v3 = acc_userDefaults_copyIntegerForKey(@"IdentityCertUseIndex");
  pthread_mutex_lock(&gCertificateStateLock);
  if (v3 <= 3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  dword_280CC785C = v4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "_readStateFromDisk";
    *&buf[12] = 1024;
    *&buf[14] = v4;
    _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MFAADeviceIdentity: %s: gCertificateIndex: %d\n", buf, 0x12u);
  }

  if (v0 && CFArrayGetCount(v0) <= 4)
  {
    memset(buf, 0, 32);
    v30.length = CFArrayGetCount(v0);
    v30.location = 0;
    CFArrayGetValues(v0, v30, buf);
    v5 = 0;
    v6 = gCertificateUseTimestamp;
    do
    {
      CFNumberGetValue(*&buf[v5], kCFNumberDoubleType, v6++);
      v5 += 8;
    }

    while (v5 != 32);
    v7 = 0;
    v8 = MEMORY[0x277D86220];
    do
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = gCertificateUseTimestamp[v7];
        *v22 = 136315650;
        v23 = "_readStateFromDisk";
        v24 = 1024;
        v25 = v7;
        v26 = 2048;
        v27 = v9;
        _os_log_impl(&dword_25627E000, v8, OS_LOG_TYPE_DEFAULT, "MFAADeviceIdentity: %s: gCertificateUseTimestamp[%d]:%f\n", v22, 0x1Cu);
      }

      ++v7;
    }

    while (v7 != 4);
    CFRelease(v0);
  }

  if (v1 && CFArrayGetCount(v1) <= 4)
  {
    memset(buf, 0, 32);
    v31.length = CFArrayGetCount(v1);
    v31.location = 0;
    CFArrayGetValues(v1, v31, buf);
    v10 = 0;
    v11 = &_MergedGlobals_0;
    do
    {
      CFNumberGetValue(*&buf[v10], kCFNumberSInt8Type, v11);
      v11 = (v11 + 1);
      v10 += 8;
    }

    while (v10 != 32);
    v12 = 0;
    v13 = MEMORY[0x277D86220];
    do
    {
      v14 = *(&_MergedGlobals_0 + v12);
      if (v14 >= 5)
      {
        v14 = 0;
        *(&_MergedGlobals_0 + v12) = 0;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 136315650;
        v23 = "_readStateFromDisk";
        v24 = 1024;
        v25 = v12;
        v26 = 1024;
        LODWORD(v27) = v14;
        _os_log_impl(&dword_25627E000, v13, OS_LOG_TYPE_DEFAULT, "MFAADeviceIdentity: %s: gCertificateRefreshState[%d]:%d\n", v22, 0x18u);
      }

      ++v12;
    }

    while (v12 != 4);
    CFRelease(v1);
  }

  if (v2 && CFArrayGetCount(v2) <= 4)
  {
    memset(buf, 0, 32);
    v32.length = CFArrayGetCount(v2);
    v32.location = 0;
    CFArrayGetValues(v2, v32, buf);
    v15 = 0;
    v16 = gCertificateIsClassD;
    do
    {
      CFNumberGetValue(*&buf[v15], kCFNumberSInt8Type, v16++);
      v15 += 8;
    }

    while (v15 != 32);
    v17 = 0;
    v18 = MEMORY[0x277D86220];
    do
    {
      if (gCertificateIsClassD[v17])
      {
        v19 = 1;
        gCertificateIsClassD[v17] = 1;
      }

      else
      {
        v19 = 0;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 136315650;
        v23 = "_readStateFromDisk";
        v24 = 1024;
        v25 = v17;
        v26 = 1024;
        LODWORD(v27) = v19;
        _os_log_impl(&dword_25627E000, v18, OS_LOG_TYPE_DEFAULT, "MFAADeviceIdentity: %s: gCertificateIsClassD[%d]:%d\n", v22, 0x18u);
      }

      ++v17;
    }

    while (v17 != 4);
    CFRelease(v2);
  }

  pthread_mutex_unlock(&gCertificateStateLock);
  v20 = *MEMORY[0x277D85DE8];
  return 1;
}

void ____initMFAADeviceIdentity_block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "__initMFAADeviceIdentity_block_invoke";
    _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: do once", &v1, 0xCu);
  }

  qword_280CC7868 = dispatch_queue_create("MFAADeviceIdentityFetchAll", 0);
  _readStateFromDisk();
  dispatch_async(qword_280CC7868, &__block_literal_global_17);
  v0 = *MEMORY[0x277D85DE8];
}

void init_logging()
{
  init_logging_modules(&_gLogObjects, 5, _kLoggingModuleEntries);

  init_logging_signposts();
}

unint64_t systemInfo_getCurrentUnixTime()
{
  v0 = [MEMORY[0x277CBEAA8] date];
  [v0 timeIntervalSince1970];
  v2 = v1;

  v3 = vcvtad_u64_f64(v2);
  if (v2 <= 0.0)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

unint64_t systemInfo_getCurrentUnixTimeMS()
{
  v0 = [MEMORY[0x277CBEAA8] date];
  [v0 timeIntervalSince1970];
  v2 = v1;

  v3 = vcvtad_u64_f64(v2 * 1000.0);
  if (v2 <= 0.0)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t systemInfo_isInternalBuild()
{
  if (systemInfo_isInternalBuild_onceToken != -1)
  {
    systemInfo_isInternalBuild_cold_1();
  }

  return systemInfo_isInternalBuild_internalBuild;
}

uint64_t __systemInfo_isInternalBuild_block_invoke()
{
  result = MGGetBoolAnswer();
  systemInfo_isInternalBuild_internalBuild = result;
  return result;
}

uint64_t systemInfo_isDeveloperBuild()
{
  if (systemInfo_isDeveloperBuild_onceToken != -1)
  {
    systemInfo_isDeveloperBuild_cold_1();
  }

  return systemInfo_isDeveloperBuild_developerBuild;
}

void __systemInfo_isDeveloperBuild_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    systemInfo_isDeveloperBuild_developerBuild = CFEqual(v0, @"Beta") != 0;

    CFRelease(v1);
  }

  else
  {
    systemInfo_isDeveloperBuild_developerBuild = 0;
  }
}

uint64_t systemInfo_systemSupportsPearl()
{
  if (systemInfo_systemSupportsPearl_onceToken != -1)
  {
    systemInfo_systemSupportsPearl_cold_1();
  }

  return systemInfo_systemSupportsPearl_supportsPearl;
}

uint64_t __systemInfo_systemSupportsPearl_block_invoke()
{
  result = MGGetBoolAnswer();
  systemInfo_systemSupportsPearl_supportsPearl = result;
  return result;
}

uint64_t systemInfo_systemSupportsWAPI()
{
  if (systemInfo_systemSupportsWAPI_onceToken != -1)
  {
    systemInfo_systemSupportsWAPI_cold_1();
  }

  return systemInfo_systemSupportsWAPI_supportsWAPI;
}

uint64_t __systemInfo_systemSupportsWAPI_block_invoke()
{
  result = MGGetBoolAnswer();
  systemInfo_systemSupportsWAPI_supportsWAPI = result;
  return result;
}

uint64_t systemInfo_isHomePod()
{
  v0 = MGCopyAnswer();
  v1 = [v0 isEqualToString:@"AudioAccessory"];

  return v1;
}

uint64_t systemInfo_copyRegionCode()
{
  if (systemInfo_copyRegionCode_onceToken != -1)
  {
    systemInfo_copyRegionCode_cold_1();
  }

  if (systemInfo_copyRegionCode_regionCode)
  {
    v0 = CFGetTypeID(systemInfo_copyRegionCode_regionCode);
    if (v0 == CFStringGetTypeID())
    {
      return systemInfo_copyRegionCode_regionCode;
    }
  }

  result = 0;
  systemInfo_copyRegionCode_regionCode = 0;
  return result;
}

uint64_t __systemInfo_copyRegionCode_block_invoke()
{
  result = MGCopyAnswer();
  systemInfo_copyRegionCode_regionCode = result;
  return result;
}

void init_logging_modules(uint64_t a1, char a2, uint64_t a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __init_logging_modules_block_invoke;
  block[3] = &__block_descriptor_tmp_3;
  v4 = a2;
  block[4] = a3;
  block[5] = a1;
  if (init_logging_modules_onceToken != -1)
  {
    dispatch_once(&init_logging_modules_onceToken, block);
  }
}

void __init_logging_modules_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = &loc_2562BC000;
  if (*(a1 + 48))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = MEMORY[0x277D86220];
    do
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + v3);
      if (!v8)
      {
        v8 = "<Undefined>";
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v14) = v4;
          _os_log_error_impl(&dword_25627E000, v6, OS_LOG_TYPE_ERROR, "Subsystem missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
          v7 = *(a1 + 32);
          v8 = "<Undefined>";
        }
      }

      v9 = *(v7 + v3 + 8);
      if (!v9)
      {
        v9 = "<Undefined>";
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __init_logging_modules_block_invoke_cold_1(v17, v4, &v18);
          v9 = "<Undefined>";
        }
      }

      v10 = os_log_create(v8, v9);
      *(*(a1 + 40) + 8 * v4) = v10;
      if (v10)
      {
        ++v5;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v14 = v8;
          v15 = 2080;
          v16 = v9;
          _os_log_debug_impl(&dword_25627E000, v6, OS_LOG_TYPE_DEBUG, "Created log object %s: %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = v8;
        v15 = 2080;
        v16 = v9;
        _os_log_error_impl(&dword_25627E000, v6, OS_LOG_TYPE_ERROR, "Failed to create os_log_t object %s: %s!", buf, 0x16u);
      }

      ++v4;
      v11 = *(a1 + 48);
      v3 += 16;
    }

    while (v4 < v11);
    v2 = &loc_2562BC000;
  }

  else
  {
    LODWORD(v11) = 0;
    v5 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = v2[430];
    LODWORD(v14) = v5;
    _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Created %d log object(s)!", buf, 8u);
    LODWORD(v11) = *(a1 + 48);
  }

  gLogObjects = *(a1 + 40);
  gNumLogObjects = v11;
  v12 = *MEMORY[0x277D85DE8];
}

void init_logging_signpost_modules(uint64_t a1, char a2, uint64_t a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __init_logging_signpost_modules_block_invoke;
  block[3] = &__block_descriptor_tmp_4;
  v4 = a2;
  block[4] = a3;
  block[5] = a1;
  if (init_logging_signpost_modules_onceToken != -1)
  {
    dispatch_once(&init_logging_signpost_modules_onceToken, block);
  }
}

void __init_logging_signpost_modules_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = &loc_2562BC000;
  if (*(a1 + 48))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = MEMORY[0x277D86220];
    do
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + v3);
      if (!v8)
      {
        v8 = "<Undefined>";
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v14) = v4;
          _os_log_error_impl(&dword_25627E000, v6, OS_LOG_TYPE_ERROR, "Subsystem missing for logging module %d!\n(Check LoggingSignpostModuleEntry_t table)", buf, 8u);
          v7 = *(a1 + 32);
          v8 = "<Undefined>";
        }
      }

      v9 = *(v7 + v3 + 8);
      if (!v9)
      {
        v9 = "<Undefined>";
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __init_logging_signpost_modules_block_invoke_cold_1(v17, v4, &v18);
          v9 = "<Undefined>";
        }
      }

      v10 = os_log_create(v8, v9);
      *(*(a1 + 40) + 8 * v4) = v10;
      if (v10)
      {
        ++v5;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v14 = v8;
          v15 = 2080;
          v16 = v9;
          _os_log_debug_impl(&dword_25627E000, v6, OS_LOG_TYPE_DEBUG, "Created log object %s: %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = v8;
        v15 = 2080;
        v16 = v9;
        _os_log_error_impl(&dword_25627E000, v6, OS_LOG_TYPE_ERROR, "Failed to create os_log_t object %s: %s!", buf, 0x16u);
      }

      ++v4;
      v11 = *(a1 + 48);
      v3 += 16;
    }

    while (v4 < v11);
    v2 = &loc_2562BC000;
  }

  else
  {
    LODWORD(v11) = 0;
    v5 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = v2[430];
    LODWORD(v14) = v5;
    _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Created %d log object(s)!", buf, 8u);
    LODWORD(v11) = *(a1 + 48);
  }

  gLogSignpostObjects = *(a1 + 40);
  gNumLogSignpostObjects = v11;
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t mfaa_certificateManager_validateCertificate(uint64_t a1, uint64_t a2)
{
  v4 = +[MFAACertificateManager sharedManager];
  v5 = [v4 validateCertificate:a1 realtime:a2 error:0];

  return v5;
}

void pbx7(uint64_t a1, int a2)
{
  v3 = *MEMORY[0x277D85DE8];
  if ((a2 & 0x3F000000) == 0x13000000)
  {
    v2 = 8;
  }

  else
  {
    v2 = 7;
  }

  __asm { BRAA            X10, X9 }
}

uint64_t fukQllQ9ln(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = ((a2 >> 5) * a2) > 0xB7u;
  v3 = (32 * ((((((-2114445439 * (v2 | 0x20u)) >> 37) + (-2114445439 * (v2 | 0x20u) < 0)) >> 5) ^ 0x94u) > 0xC0) / -76) >> 1;
  v4 = qword_286852020[(((4 * v3 + 83) ^ 0x88888888) & 0xFD) - 211];
  v5 = -((((((v3 + 45) >> 7) ^ 0x3D) + 18) / 0x53) & ((((v3 + 45) >> 7) ^ 0x3D) + 18));
  return v4(a1, qword_2798325D0[(((((((v5 & 0x40) - 72 * ((v5 & 0xC0) / 0x48)) & 0x10 | 0xA0) % 0xA9 % 0x1B) ^ 0xB9) / 0x6F - 97) & 0xBF) - 106] - 14, &v7, 8, 100);
}

void lLcAnSGNpbJv(uint64_t a1, int a2)
{
  v3 = *MEMORY[0x277D85DE8];
  if ((a2 & 0x3F000000) == 0x13000000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 3;
  }

  __asm { BRAA            X9, X10 }
}

uint64_t sub_2562A98AC@<X0>(int a1@<W1>, int a2@<W8>, uint64_t a3)
{
  v4 = (-1936509884 * a2) | 3;
  v5 = a1 & 0xFFFFFF | 0x1000000;
  HIDWORD(a3) = (v4 + 1166996050) ^ (704005591 * (&a3 ^ 0xF7D78CF0));
  v6 = (qword_286852020[v4 + 1936509941])(&a3);
  if (v5 <= 16781312)
  {
    switch(v5)
    {
      case 16777217:
        v7 = 5;
        goto LABEL_17;
      case 16777218:
        v7 = 7;
        goto LABEL_17;
      case 16777219:
        v7 = 9;
        goto LABEL_17;
    }

    return (*(v3 + 24))(v6);
  }

  if (v5 > 16785409)
  {
    if (v5 == 16785410)
    {
      v7 = 2;
      goto LABEL_17;
    }

    if (v5 == 16785411)
    {
      v7 = 3;
      goto LABEL_17;
    }

    return (*(v3 + 24))(v6);
  }

  v7 = 0;
  if (v5 != 16781313)
  {
    if (v5 == 16781314)
    {
      v7 = 1;
      goto LABEL_17;
    }

    return (*(v3 + 24))(v6);
  }

LABEL_17:
  v8 = qword_286852028((*(&unk_2798324D8 + 6 * v7 + 4) - 1302691225));
  return (*(v3 + 8 * (4 * (v8 != 0) + 8)))(v8);
}

uint64_t sub_2562A9BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v11 = a3 + v4 * (v9 + 14);
  v12 = v10 - 1302691229;
  if (!v3)
  {
    v12 = -4;
  }

  if (v5 == v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 4294967292;
  }

  if (v6 + 4 <= v6)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return (*(v7 + 8 * v14))(a1, a2, v13);
}

uint64_t sub_2562A9C98()
{
  v4 = *(v2 + 20);
  *v2 = *(v2 + 4);
  v2[1] = v4;
  if ((v0 & 0xFFFFFFE0) == 0x20)
  {
    ++v1;
  }

  return (*(v3 + 8 * v1))();
}

uint64_t sub_2562A9CD0()
{
  v4 = *(v1 + 4);
  *(v1 - 1) = *(v1 - 12);
  *v1 = v4;
  if (v2)
  {
    v5 = v0;
  }

  else
  {
    v5 = v0 + 1;
  }

  return (*(v3 + 8 * v5))();
}

uint64_t sub_2562A9D00()
{
  if (v1 == v0)
  {
    v4 = v2 + 1;
  }

  else
  {
    v4 = v2;
  }

  return (*(v3 + 8 * v4))();
}

void Xzz3XGhEjs(uint64_t a1, int a2)
{
  v2 = *MEMORY[0x277D85DE8];
  __asm { BRAA            X8, X9 }
}

uint64_t sub_2562A9F84(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, unsigned int a12)
{
  v16 = a2 & 0xFFFFFF | 0x1000000;
  a12 = (v15 - 1036443534) ^ (704005591 * (&a11 ^ 0xF7D78CF0));
  v17 = (*(v12 + 8 * (v15 - 266929643)))(&a11);
  if (v16 <= 16781312)
  {
    switch(v16)
    {
      case 16777217:
        v18 = 5;
        goto LABEL_17;
      case 16777218:
        v18 = 7;
        goto LABEL_17;
      case 16777219:
        v18 = 9;
        goto LABEL_17;
    }

    return (*(v13 + 136))(v17);
  }

  if (v16 > 16785409)
  {
    if (v16 == 16785410)
    {
      v18 = 2;
      goto LABEL_17;
    }

    if (v16 == 16785411)
    {
      v18 = 3;
      goto LABEL_17;
    }

    return (*(v13 + 136))(v17);
  }

  v18 = 0;
  if (v16 != 16781313)
  {
    if (v16 == 16781314)
    {
      v18 = 1;
      goto LABEL_17;
    }

    return (*(v13 + 136))(v17);
  }

LABEL_17:
  v19 = (*(v12 + 8 * (v14 - 266929702)))((*(qword_2798325D0[v14 - 266929642] - 11 + 24 * v18 + 16) - 1302691225));
  return (*(v13 + 8 * (v14 - 266929702 + ((v19 != 0) | (2 * (v19 != 0))) + 14)))(v19, v20, v21);
}

void nvIb10An(uint64_t a1, int a2)
{
  v3 = *MEMORY[0x277D85DE8];
  if ((a2 & 0x3F000000) == 0x13000000)
  {
    v2 = 10;
  }

  else
  {
    v2 = 9;
  }

  __asm { BRAA            X10, X11 }
}

uint64_t cpGetDeviceInfo(io_registry_entry_t entry, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = 3758097084;
  v12 = MEMORY[0x277CBECE8];
  if (a2)
  {
    CFProperty = IORegistryEntryCreateCFProperty(entry, @"DeviceVersion", *MEMORY[0x277CBECE8], 0);
    if (!CFProperty)
    {
      return 3758097136;
    }

    v15 = CFProperty;
    Value = CFNumberGetValue(CFProperty, kCFNumberSInt8Type, a2);
    CFRelease(v15);
    if (!Value)
    {
      return v11;
    }
  }

  if (a3)
  {
    v17 = IORegistryEntryCreateCFProperty(entry, @"FirmwareVersion", *v12, 0);
    if (!v17)
    {
      return 3758097136;
    }

    v18 = v17;
    v19 = CFNumberGetValue(v17, kCFNumberSInt8Type, a3);
    CFRelease(v18);
    if (!v19)
    {
      return v11;
    }
  }

  if (a4)
  {
    v20 = IORegistryEntryCreateCFProperty(entry, @"AuthMajorVersion", *v12, 0);
    if (!v20)
    {
      return 3758097136;
    }

    v21 = v20;
    v22 = CFNumberGetValue(v20, kCFNumberSInt8Type, a4);
    CFRelease(v21);
    if (!v22)
    {
      return v11;
    }
  }

  if (a5)
  {
    v23 = IORegistryEntryCreateCFProperty(entry, @"AuthMinorVersion", *v12, 0);
    if (!v23)
    {
      return 3758097136;
    }

    v24 = v23;
    v25 = CFNumberGetValue(v23, kCFNumberSInt8Type, a5);
    CFRelease(v24);
    if (!v25)
    {
      return v11;
    }
  }

  if (!a6)
  {
    return 0;
  }

  v26 = IORegistryEntryCreateCFProperty(entry, @"DeviceID", *v12, 0);
  if (!v26)
  {
    return 3758097136;
  }

  v27 = v26;
  v28 = CFNumberGetValue(v26, kCFNumberSInt32Type, a6);
  CFRelease(v27);
  if (v28)
  {
    return 0;
  }

  return v11;
}

uint64_t cpGetChallengeSignatureLengths(mach_port_t a1, uint64_t *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  output = 0;
  v11 = 0;
  outputCnt = 2;
  puts("cpGetChallengeSignatureLengths");
  result = IOConnectCallScalarMethod(a1, 0x14u, 0, 0, &output, &outputCnt);
  v7 = v11;
  *a2 = output;
  *a3 = v7;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t cpCreateFormattedChallengeFromServerRequest(mach_port_t a1, const __CFData *a2, CFDataRef *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  puts("cpCreateFormattedChallengeFromServerRequest");
  memset(outputStruct, 0, sizeof(outputStruct));
  outputStructCnt = 128;
  BytePtr = CFDataGetBytePtr(a2);
  Length = CFDataGetLength(a2);
  v8 = IOConnectCallStructMethod(a1, 0x15u, BytePtr, Length, outputStruct, &outputStructCnt);
  if (!v8 && outputStructCnt)
  {
    *a3 = CFDataCreate(*MEMORY[0x277CBECE8], outputStruct, outputStructCnt);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t cpCreateFormattedResponseForServerResponse(mach_port_t a1, const __CFData *a2, CFDataRef *a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  input = a4;
  puts("cpCreateFormattedResponseForServerResponse");
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *bytes = 0u;
  v15 = 0u;
  length = 128;
  BytePtr = CFDataGetBytePtr(a2);
  v8 = CFDataGetLength(a2);
  v9 = IOConnectCallMethod(a1, 0x16u, &input, 1u, BytePtr, v8, 0, 0, bytes, &length);
  if (!v9)
  {
    *a3 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, length);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t cpCreateSignature(mach_port_t a1, CFDataRef theData, CFDataRef *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  length = 128;
  BytePtr = CFDataGetBytePtr(theData);
  v7 = CFDataGetLength(theData);
  v8 = IOConnectCallStructMethod(a1, 0, BytePtr, v7, outputStruct, &length);
  if (!v8)
  {
    *a3 = CFDataCreate(*MEMORY[0x277CBECE8], outputStruct, length);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t cpCreateSignatureWithIndexAndToken(mach_port_t a1, const __CFData *a2, CFDataRef *a3, uint64_t *a4, int a5)
{
  v27 = *MEMORY[0x277D85DE8];
  puts("cpCreateSignatureWithIndexAndToken");
  if (a2)
  {
    v10 = CFDataGetLength(a2);
    if (v10)
    {
      CFDataGetBytePtr(a2);
    }
  }

  else
  {
    v10 = 0;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  *bytes = 0u;
  v20 = 0u;
  input[0] = a5;
  input[1] = v10;
  input[2] = 128;
  outputCnt = 1;
  length = 128;
  BytePtr = CFDataGetBytePtr(a2);
  v12 = CFDataGetLength(a2);
  v13 = IOConnectCallMethod(a1, 0x13u, input, 3u, BytePtr, v12, a4, &outputCnt, bytes, &length);
  if (!v13)
  {
    *a3 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, length);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t cpSetAuthErrorDescription(mach_port_t a1, CFStringRef theString)
{
  v4 = 3758097085;
  Length = CFStringGetLength(theString);
  v6 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  if (v6)
  {
    v7 = v6;
    if (CFStringGetCString(theString, v6, Length + 1, 0x8000100u))
    {
      v4 = IOConnectCallStructMethod(a1, 0xBu, v7, Length + 1, 0, 0);
    }

    else
    {
      v4 = 3758097090;
    }

    free(v7);
  }

  return v4;
}

uint64_t cpSetAuthError(mach_port_t a1, unsigned int a2)
{
  printf("cpSetAuthError %d\n", a2);
  input = a2;
  return IOConnectCallScalarMethod(a1, 0xCu, &input, 1u, 0, 0);
}

uint64_t cpCopyDownstreamCertificateSerialNumber(mach_port_t a1, CFStringRef *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  outputStructCnt = 33;
  v3 = IOConnectCallStructMethod(a1, 1u, 0, 0, outputStruct, &outputStructCnt);
  v4 = 0;
  if (!v3)
  {
    v4 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], outputStruct, 0x600u);
  }

  *a2 = v4;
  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t cpGetDownstreamAuthMajorVer(mach_port_t a1, _BYTE *a2)
{
  output = 0;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(a1, 3u, 0, 0, &output, &outputCnt);
  *a2 = output;
  return result;
}

uint64_t cpSetExpectedPairedCertSN(mach_port_t a1, CFStringRef theString)
{
  v4 = 3758097085;
  Length = CFStringGetLength(theString);
  v6 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  if (v6)
  {
    v7 = v6;
    if (CFStringGetCString(theString, v6, Length + 1, 0x8000100u))
    {
      v4 = IOConnectCallStructMethod(a1, 0x11u, v7, Length + 1, 0, 0);
    }

    else
    {
      puts("cpSetExpectedPairedCertSN: !CFStringGetCString");
      v4 = 3758097090;
    }

    free(v7);
  }

  return v4;
}

uint64_t cpSetActualPairedCertSN(mach_port_t a1, CFStringRef theString)
{
  v4 = 3758097085;
  Length = CFStringGetLength(theString);
  v6 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  if (v6)
  {
    v7 = v6;
    if (CFStringGetCString(theString, v6, Length + 1, 0x8000100u))
    {
      v4 = IOConnectCallStructMethod(a1, 0x12u, v7, Length + 1, 0, 0);
    }

    else
    {
      puts("cpSetActualPairedCertSN: !CFStringGetCString");
      v4 = 3758097090;
    }

    free(v7);
  }

  return v4;
}

uint64_t cpGetTransportEntryId(mach_port_t a1, uint64_t *a2)
{
  output = 0;
  outputCnt = 1;
  v3 = IOConnectCallScalarMethod(a1, 0x10u, 0, 0, &output, &outputCnt);
  v4 = v3;
  if (v3)
  {
    printf("cpGetTransportEntryId: IOConnectCallScalarMethod failed: 0x%x\n", v3);
  }

  else
  {
    *a2 = output;
  }

  return v4;
}

uint64_t cpGetUpstreamAccessoryManager(io_registry_entry_t a1)
{
  parent = 0;
  if (IORegistryEntryGetParentEntry(a1, "IOAccessory", &parent))
  {
    return 0;
  }

  else
  {
    return parent;
  }
}

uint64_t AuthCPI2CRead(mach_port_t a1, char a2, unsigned int a3, void *outputStruct)
{
  LOBYTE(input) = a2;
  outputStructCnt = a3;
  return IOConnectCallMethod(a1, 0xEu, &input, 1u, 0, 0, 0, 0, outputStruct, &outputStructCnt);
}

CFTypeRef OUTLINED_FUNCTION_0_4(io_registry_entry_t a1)
{

  return IORegistryEntryCreateCFProperty(a1, v1, v2, 0);
}

uint64_t CTEvaluateAccessoryCert(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, void *a11)
{
  v57[42] = *MEMORY[0x277D85DE8];
  bzero(v52, 0x390uLL);
  v48 = 0;
  v49 = 0;
  memset(v47, 170, sizeof(v47));
  if (__CFADD__(a1, a2))
  {
    goto LABEL_57;
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_58;
  }

  v47[0] = a1;
  v47[1] = a1 + a2;
  result = X509CertificateParse(v52, v47);
  if (result)
  {
    goto LABEL_47;
  }

  v20 = v48;
  v21 = &v49;
  if (v48)
  {
    v21 = (v48 + 35);
  }

  *v21 = v53;
  v48 = v52;
  v53[0] = v20;
  v53[1] = &v48;
  v45 = 0xAAAAAAAAAAAAAAAALL;
  v46 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a5, a6))
  {
    goto LABEL_57;
  }

  if (a5 + a6 < a5)
  {
    goto LABEL_58;
  }

  v45 = a5;
  v46 = a5 + a6;
  if ((v54 + 1) != 0 && v52 >= 0xFFFFFFFFFFFFFECFLL)
  {
    goto LABEL_57;
  }

  result = X509CertificateParse(v54, &v45);
  if (result)
  {
    goto LABEL_47;
  }

  v57[0] = 0;
  v57[1] = v49;
  *v49 = v54;
  v49 = v57;
  bzero(v50, 0x390uLL);
  if (!a3 || !a4)
  {
    goto LABEL_22;
  }

  v33 = 0xAAAAAAAAAAAAAAAALL;
  v34 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a3, a4))
  {
LABEL_57:
    __break(0x5513u);
    goto LABEL_58;
  }

  if (a3 + a4 < a3)
  {
    goto LABEL_58;
  }

  v33 = a3;
  v34 = a3 + a4;
  if (a3 + a4 <= a3)
  {
LABEL_22:
    result = X509ChainBuildPath(v52, &v48, &v47[2]);
    if (result)
    {
      goto LABEL_47;
    }

    v26 = 0;
    v27 = 0;
    v28 = 28;
    result = 327700;
    if (a7 <= 0x1FFFFFFF)
    {
      if (a7 <= 0x7FFFFFF)
      {
        if (a7)
        {
          v29 = 0;
          if (a7 != 4)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v27 = 0;
          v26 = 0;
          v29 = 1;
        }

        goto LABEL_44;
      }

      if (a7 == 0x8000000)
      {
        v26 = 0;
        v29 = 0;
        v28 = 29;
        v27 = 1;
LABEL_44:
        if (!v56)
        {
          v56 = a7;
        }

        memset(v44, 170, sizeof(v44));
        v43[0] = 0xAAAAAAAAAAAAAAAALL;
        v43[1] = 0xAAAAAAAAAAAAAAAALL;
        X509CertificateParseSPKI(v55, &v44[2], v43, v44);
        v33 = v26;
        v34 = a7;
        v38 = -1431655766;
        v39 = v44;
        v35 = 0;
        v36 = v29;
        v37 = v27;
        v40 = &v44[2];
        v41 = v43;
        v42 = 0;
        result = X509ChainCheckPath(v28, &v47[2], &v33);
        if (result)
        {
          goto LABEL_47;
        }

        v31 = v47[2];
        if (!a8 || !a9 || !v47[2])
        {
LABEL_53:
          result = 0;
          if (a10 && a11 && v31)
          {
            result = 0;
            v32 = *(v31 + 256);
            *a10 = *(v31 + 248);
            *a11 = v32;
          }

          goto LABEL_47;
        }

        if (v47[2] < v47[2] + 304)
        {
          result = X509CertificateParseKey(v47[2], a8, a9);
          if (result)
          {
            goto LABEL_47;
          }

          goto LABEL_53;
        }

LABEL_58:
        __break(0x5519u);
      }

      if (a7 != 0x10000000)
      {
        goto LABEL_47;
      }
    }

    else
    {
      if (a7 > 0x3FFFFFFFFLL)
      {
        if (a7 == 0x400000000 || a7 == 0x800000000)
        {
          v29 = 0;
        }

        else
        {
          v29 = 0;
          if (a7 != 0x1000000000)
          {
            goto LABEL_47;
          }
        }

        goto LABEL_44;
      }

      if (a7 != 0x20000000)
      {
        if (a7 != 0x40000000)
        {
          goto LABEL_47;
        }

        v27 = 0;
        v29 = 0;
        v26 = 3;
        goto LABEL_44;
      }

      v27 = 1;
    }

    v29 = v27;
    v26 = 2;
    v27 = 0;
    goto LABEL_44;
  }

  v22 = 0;
  v23 = &v51;
  while (1)
  {
    result = X509CertificateParse(v23 - 34, &v33);
    if (result)
    {
      break;
    }

    v24 = v49;
    *v23 = 0;
    v23[1] = v24;
    *v24 = (v23 - 34);
    v49 = v23;
    v25 = v33 >= v34 || v22++ > 1;
    v23 += 38;
    if (v25)
    {
      goto LABEL_22;
    }
  }

LABEL_47:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509PolicySetFlagsForCommonNames(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 104);
  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  if (v2 > a1 + 120)
  {
    __break(0x5519u);
  }

  result = X509CertificateSubjectNameGetCommonName(v2, v6);
  if (!result)
  {
    result = compare_octet_string(&iPhoneCAName, v6);
    if (!result)
    {
      v4 = 3840;
      goto LABEL_13;
    }

    result = compare_octet_string(&CodeSigningCAName, v6);
    if (!result)
    {
      v4 = 0x800000000008;
      goto LABEL_13;
    }

    result = compare_octet_string_partial(&MFi4AccessoryCAName, v6);
    if (!result)
    {
      v4 = 0x400000000;
      goto LABEL_13;
    }

    result = compare_octet_string_partial(&MFi4AttestationCAName, v6);
    if (!result)
    {
      v4 = 0x800000000;
      goto LABEL_13;
    }

    result = compare_octet_string_partial(&MFi4ProvisioningCAName, v6);
    if (!result)
    {
      v4 = 0x1000000000;
LABEL_13:
      *(a1 + 240) |= v4;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void X509PolicySetFlagsForMFI(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 104);
  v7[0] = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = 0xAAAAAAAAAAAAAAAALL;
  if (v2 > a1 + 120)
  {
    __break(0x5519u);
  }

  if (!X509CertificateSubjectNameGetCommonName(v2, v7))
  {
    if (!compare_octet_string_partial(&MFICommonNamePrefix, v7))
    {
      v6 = 0;
      if (X509CertificateGetNotBefore(a1, &v6))
      {
        goto LABEL_9;
      }

      memset(&v5, 0, sizeof(v5));
      strptime("2006-05-31", "%F", &v5);
      v3 = timegm(&v5);
      if (difftime(v3, v6) >= 0.0)
      {
        goto LABEL_9;
      }

      *(a1 + 240) |= 0x8000000uLL;
    }

    if (!compare_octet_string_partial(&MFi4ProvisioningHostNamePrefix, v7))
    {
      *(a1 + 240) |= 0x1000000000uLL;
    }
  }

LABEL_9:
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t X509PolicySetFlagsForRoots(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (*(result + 16) == 1)
  {
    v4 = numAppleProdRoots;
    if (numAppleProdRoots)
    {
      if (a2 + 88 <= (a2 + 104))
      {
        v5 = AppleRootSPKIs;
        while (1)
        {
          v6 = v5 + 1;
          v7 = v5 < AppleRootSPKIs || v6 > &rsaEncryption;
          if (v7 || v5 >= v6)
          {
            break;
          }

          result = compare_octet_string(a2 + 88, *v5);
          if (!result)
          {
            *(a2 + 240) |= 0xD8E30653FFF8uLL;
            goto LABEL_17;
          }

          ++v5;
          if (!--v4)
          {
            goto LABEL_17;
          }
        }
      }

      goto LABEL_50;
    }
  }

LABEL_17:
  v9 = *(v3 + 8);
  if ((v9 & 0x1000000) != 0)
  {
    result = a2 + 88;
    if (a2 + 88 > (a2 + 104))
    {
      goto LABEL_50;
    }

    result = compare_octet_string(result, &UcrtRootSPKI);
    if (!result)
    {
      v10 = *(a2 + 240) | 0x1000000;
      goto LABEL_27;
    }
  }

  else
  {
    if ((v9 & 0x1C00000000) == 0)
    {
      goto LABEL_28;
    }

    result = a2 + 88;
    if (a2 + 88 > (a2 + 104))
    {
      goto LABEL_50;
    }

    result = compare_octet_string(result, &MFi4RootSPKI);
    if (!result)
    {
      v10 = *(a2 + 240) | 0x1C00000000;
LABEL_27:
      *(a2 + 240) = v10;
      goto LABEL_28;
    }
  }

  if (*(v3 + 17) == 1)
  {
    result = X509PolicySetFlagsForTestAnchor(v3, a2);
  }

LABEL_28:
  if (*(v3 + 16) == 1 && *(v3 + 17) == 1 && numAppleProdRoots < numAppleRoots)
  {
    if (a2 + 88 <= (a2 + 104))
    {
      v11 = &AppleRootSPKIs[numAppleProdRoots];
      v12 = numAppleRoots - numAppleProdRoots;
      while (1)
      {
        v13 = v11 + 1;
        v14 = v11 < AppleRootSPKIs || v13 > &rsaEncryption;
        if (v14 || v11 >= v13)
        {
          break;
        }

        result = compare_octet_string(a2 + 88, *v11);
        if (!result)
        {
          *(a2 + 240) |= 0xD8E30653FFF8uLL;
          goto LABEL_44;
        }

        ++v11;
        if (!--v12)
        {
          goto LABEL_44;
        }
      }
    }

    goto LABEL_50;
  }

LABEL_44:
  if (*(v3 + 16) == 1 && *(v3 + 17) == 1)
  {
    result = a2 + 88;
    if (a2 + 88 <= (a2 + 104))
    {
      result = compare_octet_string(result, &TestAppleRootECCSPKI);
      if (!result)
      {
        *(a2 + 240) |= 0x6400000uLL;
      }

      return result;
    }

LABEL_50:
    __break(0x5519u);
  }

  return result;
}

uint64_t X509PolicySetFlagsForTestAnchor(void *a1, uint64_t a2)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v7[1] = 0;
  v6[0] = 0;
  v6[1] = 0;
  if (a2 + 88 > (a2 + 104))
  {
    __break(0x5519u);
  }

  result = X509CertificateParseSPKI((a2 + 88), v7, 0, v6);
  if (!result)
  {
    result = compare_octet_string(a1[4], v7);
    if (!result)
    {
      result = compare_octet_string(a1[3], v6);
      if (!result)
      {
        *(a2 + 240) |= a1[1];
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t X509PolicyCheckForBlockedKeys(uint64_t a1)
{
  result = a1 + 88;
  if (result > a1 + 104)
  {
    __break(0x5519u);
  }

  else
  {
    result = compare_octet_string(result, &BlockedYonkersSPKI);
    if (!result)
    {
      *(a1 + 240) &= 0xFFFFFFFFFFF3FFFFLL;
    }
  }

  return result;
}

int *find_digest(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    result = &digests[v2 / 4 + 2];
    if (result > &digests[v2 / 4 + 6])
    {
      __break(0x5519u);
      goto LABEL_9;
    }

    result = compare_octet_string_raw(result, *a1, *(a1 + 8));
    if (!result)
    {
      break;
    }

    v2 += 32;
    if (v2 == 160)
    {
      return 0;
    }
  }

  if (v2 <= ~digests)
  {
    return &digests[v2 / 4];
  }

LABEL_9:
  __break(0x5513u);
  return result;
}

int *find_digest_by_type(int *result)
{
  v1 = 0;
  while (digests[v1 / 4] != result)
  {
    v1 += 32;
    if (v1 == 160)
    {
      return 0;
    }
  }

  if (v1 <= ~digests)
  {
    return &digests[v1 / 4];
  }

  __break(0x5513u);
  return result;
}

uint64_t find_digestOID_for_signingOID(uint64_t a1, void *a2)
{
  if (!compare_octet_string_raw(a1, &sha1WithRSA_oid, 9uLL) || !compare_octet_string_raw(a1, &sha1WithECDSA_oid, 7uLL))
  {
    v6 = &CTOidSha1;
    v4 = 5;
    goto LABEL_11;
  }

  v4 = 9;
  if (!compare_octet_string_raw(a1, &sha256WithRSA_oid, 9uLL))
  {
    v6 = &CTOidSha256;
    goto LABEL_11;
  }

  if (!compare_octet_string_raw(a1, &sha256WithECDSA_oid, 8uLL))
  {
    v6 = &CTOidSha256;
LABEL_18:
    v4 = 9;
    goto LABEL_11;
  }

  v4 = 9;
  if (!compare_octet_string_raw(a1, &sha384WithRSA_oid, 9uLL))
  {
    v6 = &CTOidSha384;
    goto LABEL_11;
  }

  if (!compare_octet_string_raw(a1, &sha384WithECDSA_oid, 8uLL))
  {
    v6 = &CTOidSha384;
    goto LABEL_18;
  }

  v4 = 9;
  if (compare_octet_string_raw(a1, &sha512WithRSA_oid, 9uLL))
  {
    if (compare_octet_string_raw(a1, &sha512WithECDSA_oid, 8uLL))
    {
      return 0;
    }

    v6 = &CTOidSha512;
    goto LABEL_18;
  }

  v6 = &CTOidSha512;
LABEL_11:
  *a2 = v6;
  a2[1] = v4;
  return 1;
}

unint64_t validateSignatureRSA(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = 0;
  v31 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (!result)
  {
    goto LABEL_24;
  }

  if (!a2)
  {
    goto LABEL_24;
  }

  v5 = 0;
  if (!a3 || !a4 || !a5)
  {
    goto LABEL_24;
  }

  if (a5 + 7 > a5 + 9)
  {
    goto LABEL_34;
  }

  v8 = result;
  result = compare_octet_string(&rsaEncryption, (a5 + 7));
  if (result)
  {
    result = validateOIDs(&rsaAlgs, (a5 + 3), (a5 + 7));
    if (!result)
    {
      goto LABEL_23;
    }
  }

  v25 = 0xAAAAAAAAAAAAAAAALL;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v10 = a5[9];
  v9 = a5[10];
  if (__CFADD__(v10, v9))
  {
    goto LABEL_35;
  }

  if (v10 > v10 + v9)
  {
    goto LABEL_34;
  }

  v25 = a5[9];
  v26 = v10 + v9;
  if (v9)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (__CFADD__(v8, a2))
  {
    goto LABEL_35;
  }

  if (v8 + a2 < v8)
  {
    goto LABEL_34;
  }

  result = ccder_decode_rsa_pub_n();
  if (!result)
  {
LABEL_23:
    v5 = 0;
LABEL_24:
    v15 = *MEMORY[0x277D85DE8];
    return v5 & 1;
  }

  v11 = result;
  if (!(result >> 58))
  {
    v12 = result << 6;
    if (result << 6 >= 0x400)
    {
      v29 = 0xAAAAAAAAAAAAAAAALL;
      v30 = -21846;
      v28 = 6;
      if (&vars0 == 82)
      {
        goto LABEL_35;
      }

      v13 = a5[4];
      LOBYTE(v29) = v13;
      if (&v28 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_35;
      }

      if (v13 < 0xA)
      {
        v14 = a5[3];
        result = __memcpy_chk();
        if (result <= result + v13)
        {
          if (v12 > 0x1068)
          {
            goto LABEL_23;
          }

          result = MEMORY[0x28223BE20](result);
          v18 = (&v24 - 4 * v17);
          v19 = 0;
          *&v20 = 0xAAAAAAAAAAAAAAAALL;
          *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
          do
          {
            v21 = &v18[v19 / 8];
            *v21 = v20;
            *(v21 + 1) = v20;
            v19 += 32;
          }

          while ((v16 & 0x7FFFFFFFFFFFFFE0) != v19);
          if (v18 + 4 <= &v24 && v18 <= v18 + 4)
          {
            *v18 = v11;
            if (ccrsa_import_pub())
            {
              v5 = 0;
            }

            else
            {
              v23 = a5[11];
              v22 = a5[12];
              if (ccrsa_verify_pkcs1v15_allowshortsigs())
              {
                v5 = 0;
                v27 = 0;
              }

              else
              {
                v5 = v27;
              }
            }

            goto LABEL_24;
          }
        }
      }

LABEL_34:
      __break(0x5519u);
LABEL_35:
      __break(0x5513u);
      goto LABEL_36;
    }

    goto LABEL_23;
  }

LABEL_36:
  __break(0x550Cu);
  return result;
}

uint64_t validateOIDs(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 1;
  while (v5 < v5 + 16)
  {
    result = compare_octet_string(v5, a2);
    if (result)
    {
      goto LABEL_11;
    }

    if (v5 + 16 > v5 + 32)
    {
      break;
    }

    result = compare_octet_string(v5 + 16, a3);
    if (result)
    {
LABEL_11:
      v7 = v6 < 3;
      v5 += 32;
      if (++v6 != 4)
      {
        continue;
      }
    }

    return v7;
  }

  __break(0x5519u);
  return result;
}

_UNKNOWN **oidForPubKeyLength()
{
  v0 = ccec_x963_import_pub_size();
  is_supported = ccec_keysize_is_supported();
  v2 = &CTOidSECP256r1;
  v3 = &CTOidSECP521r1;
  v4 = &CTOidSECP384r1;
  if (v0 != 384)
  {
    v4 = 0;
  }

  if (v0 != 521)
  {
    v3 = v4;
  }

  if (v0 != 256)
  {
    v2 = v3;
  }

  if (is_supported)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t *validateSignatureEC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v22 = *MEMORY[0x277D85DE8];
  v21 = 0;
  if (!result)
  {
    goto LABEL_31;
  }

  if (!a2)
  {
    goto LABEL_31;
  }

  v5 = 0;
  if (!a3 || !a4 || !a5)
  {
    goto LABEL_31;
  }

  v7 = a5 + 72;
  if (a5 + 56 > (a5 + 72))
  {
    goto LABEL_32;
  }

  result = compare_octet_string(&ecPublicKey, a5 + 56);
  if (result)
  {
    result = validateOIDs(&ecAlgs, a5 + 24, a5 + 56);
    if (!result)
    {
      goto LABEL_27;
    }
  }

  if (v7 > a5 + 88)
  {
    goto LABEL_32;
  }

  result = ccec_cp_for_oid((a5 + 72));
  if (!result)
  {
LABEL_27:
    v5 = 0;
LABEL_31:
    v19 = *MEMORY[0x277D85DE8];
    return (v5 & 1);
  }

  if (result >= result + 4)
  {
    goto LABEL_32;
  }

  v8 = *result;
  if (*result >> 61 || !is_mul_ok(8 * v8, 3uLL))
  {
    goto LABEL_33;
  }

  v9 = 24 * v8;
  v10 = __CFADD__(v9, 16);
  v11 = v9 + 16;
  if (v10 || v11 >= 0xFFFFFFFFFFFFFFF0)
  {
    goto LABEL_34;
  }

  result = MEMORY[0x28223BE20](result);
  v14 = &v20[-16 * v13];
  v15 = 0;
  do
  {
    v16 = &v14[v15 / 8];
    *v16 = 0xAAAAAAAAAAAAAAAALL;
    v16[1] = 0xAAAAAAAAAAAAAAAALL;
    v15 += 16;
  }

  while ((v12 & 0xFFFFFFFFFFFFFFF0) != v15);
  if (v12 < 0x10)
  {
    goto LABEL_35;
  }

  *v14 = result;
  if (v14 + 2 > v20 || v14 > v14 + 2)
  {
LABEL_32:
    __break(0x5519u);
LABEL_33:
    __break(0x550Cu);
LABEL_34:
    __break(0x5500u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (MEMORY[0x259C604A0]())
  {
    goto LABEL_30;
  }

  result = ccec_x963_import_pub_size();
  if (result != 256 || *(a5 + 96) != 64)
  {
    v18 = *(a5 + 88);
    if (ccec_verify())
    {
LABEL_29:
      v21 = 0;
    }

LABEL_30:
    v5 = v21;
    goto LABEL_31;
  }

  if (*(a5 + 88) < 0xFFFFFFFFFFFFFFE0)
  {
    v17 = *(a5 + 88);
    if (!ccec_verify_composite())
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_36:
  __break(0x5513u);
  return result;
}

uint64_t ccec_cp_for_oid(int **a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1[1];
  if (v1 != 7)
  {
    if (v1 == 10 && **a1 == 0x33DCE48862A0806 && *(*a1 + 4) == 1793)
    {
      JUMPOUT(0x259C60460);
    }

    return 0;
  }

  v3 = *a1;
  if (**a1 == -2127887098 && *(*a1 + 3) == 570426497)
  {
    JUMPOUT(0x259C60470);
  }

  v5 = *v3;
  v6 = *(v3 + 3);
  if (v5 != -2127887098 || v6 != 587203713)
  {
    return 0;
  }

  return MEMORY[0x282201600]();
}

uint64_t compressECPublicKey(void *a1, int **a2, uint64_t a3, uint64_t a4)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v7 = ccec_cp_for_oid(a2);
  if (!v7)
  {
    result = 655366;
    goto LABEL_19;
  }

  v8 = v7;
  if (v7 >= v7 + 4)
  {
LABEL_20:
    __break(0x5519u);
LABEL_21:
    __break(0x550Cu);
    goto LABEL_22;
  }

  v9 = *v7;
  if (*v7 >> 61 || !is_mul_ok(8 * v9, 3uLL))
  {
    goto LABEL_21;
  }

  v10 = 24 * v9;
  v11 = __CFADD__(v10, 16);
  v12 = v10 + 16;
  if (v11 || v12 >= 0xFFFFFFFFFFFFFFF0)
  {
LABEL_22:
    __break(0x5500u);
  }

  result = MEMORY[0x28223BE20](v7);
  v16 = &v20[-2 * v15];
  v17 = 0;
  do
  {
    v18 = &v16[v17 / 8];
    *v18 = 0xAAAAAAAAAAAAAAAALL;
    v18[1] = 0xAAAAAAAAAAAAAAAALL;
    v17 += 16;
  }

  while ((v14 & 0xFFFFFFFFFFFFFFF0) != v17);
  if (v14 >= 0x10)
  {
    *v16 = v8;
    if (v16 + 2 <= v20 && v16 <= v16 + 2)
    {
      result = MEMORY[0x259C604A0](v8, a1[1], *a1, v16);
      if (result)
      {
LABEL_19:
        v19 = *MEMORY[0x277D85DE8];
        return result;
      }

      if (ccec_compressed_x962_export_pub_size() != a4)
      {
        result = 393220;
        goto LABEL_19;
      }

      if (!a3 || a4)
      {
        result = ccec_compressed_x962_export_pub();
        goto LABEL_19;
      }
    }

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t decompressECPublicKey(uint64_t *a1, int **a2, uint64_t a3, uint64_t a4)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v7 = ccec_cp_for_oid(a2);
  if (!v7)
  {
    v20 = 655366;
    goto LABEL_22;
  }

  if (v7 >= v7 + 4)
  {
LABEL_23:
    __break(0x5519u);
    goto LABEL_24;
  }

  v8 = *v7;
  if (*v7 >> 61 || !is_mul_ok(8 * v8, 3uLL))
  {
LABEL_25:
    __break(0x550Cu);
  }

  v9 = 24 * v8;
  v10 = __CFADD__(v9, 16);
  v11 = v9 + 16;
  if (v10 || v11 >= 0xFFFFFFFFFFFFFFF0)
  {
    goto LABEL_24;
  }

  result = MEMORY[0x28223BE20](v7);
  v15 = &v24[-2 * v14];
  v16 = 0;
  do
  {
    v17 = &v15[v16 / 8];
    *v17 = 0xAAAAAAAAAAAAAAAALL;
    v17[1] = 0xAAAAAAAAAAAAAAAALL;
    v16 += 16;
  }

  while ((v13 & 0xFFFFFFFFFFFFFFF0) != v16);
  if (v13 >= 0x10)
  {
    *v15 = result;
    if (v15 + 2 <= v24 && v15 <= v15 + 2)
    {
      v19 = *a1;
      v18 = a1[1];
      v20 = ccec_compressed_x962_import_pub();
      if (!v20)
      {
        v21 = *v15;
        v22 = cczp_bitlen();
        if (v22 < 0xFFFFFFFFFFFFFFF9)
        {
          if (!a3 || a4)
          {
            if ((((v22 + 7) >> 2) | 1) == a4)
            {
              v20 = 0;
            }

            else
            {
              v20 = 393220;
            }

            ccec_export_pub();
            goto LABEL_22;
          }

          goto LABEL_23;
        }

LABEL_24:
        __break(0x5500u);
        goto LABEL_25;
      }

LABEL_22:
      v23 = *MEMORY[0x277D85DE8];
      return v20;
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t CMSParseSignerInfos(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, __int128 *))
{
  v84 = *MEMORY[0x277D85DE8];
  v82 = 0xAAAAAAAAAAAAAAAALL;
  v83 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (__CFADD__(v4, v3))
  {
    goto LABEL_94;
  }

  if (v4 > v4 + v3)
  {
LABEL_93:
    __break(0x5519u);
LABEL_94:
    __break(0x5513u);
LABEL_95:
    __break(0x5500u);
  }

  v82 = *(a1 + 40);
  v83 = v4 + v3;
  v70 = 0xAAAAAAAAAAAAAAAALL;
  if (v4 >= v4 + v3)
  {
    v48 = 0;
    result = 0;
    if (!v3)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  v8 = 0;
  v60 = 0;
  v9 = 196871;
  v10 = 256;
  while (1)
  {
    v69 = 0;
    v80 = 0u;
    v81 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    DWORD2(v81) = 327681;
    LOBYTE(v80) = v8 + 1;
    if ((ccder_blob_decode_ber_tl(&v82, 0x2000000000000010, &v69, &v70) & 1) == 0)
    {
      result = (v9 - 6);
      goto LABEL_84;
    }

    v67 = 0xAAAAAAAAAAAAAAAALL;
    v68 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v82, v70))
    {
      goto LABEL_94;
    }

    if (v82 > v82 + v70 || v82 + v70 > v83)
    {
      goto LABEL_93;
    }

    v67 = v82;
    v68 = v82 + v70;
    if ((ccder_blob_decode_uint64() & 1) == 0)
    {
      result = (v9 - 5);
      goto LABEL_84;
    }

    v11 = v67;
    v12 = v68;
    v65 = 0xAAAAAAAAAAAAAAAALL;
    v66 = 0xAAAAAAAAAAAAAAAALL;
    if (v67 > v68)
    {
      goto LABEL_93;
    }

    v65 = v67;
    v66 = v68;
    v63 = v67;
    v64 = v68;
    if (ccder_blob_decode_tl())
    {
      v13 = v67;
    }

    else
    {
      if (ccder_blob_decode_tl())
      {
        v13 = v65;
        v14 = v66;
      }

      else
      {
        if (!ccder_blob_decode_tl())
        {
          v59 = 196611;
          goto LABEL_92;
        }

        v13 = v63;
        v14 = v64;
      }

      if (v13 > v14)
      {
        goto LABEL_93;
      }

      v67 = v13;
      v68 = v14;
    }

    if (__CFADD__(v70, v13 - v11))
    {
      goto LABEL_95;
    }

    if (v70 + v13 - v11 > v12 - v11)
    {
      goto LABEL_93;
    }

    *(&v71 + 1) = v11;
    *&v72 = v70 + v13 - v11;
    if (__CFADD__(v13, v70))
    {
      goto LABEL_94;
    }

    if (v13 > v13 + v70 || v13 + v70 > v68)
    {
      goto LABEL_93;
    }

    v67 = v13 + v70;
    if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v67, &v72 + 1))
    {
      v59 = 196612;
LABEL_92:
      result = (v59 + v10);
      goto LABEL_84;
    }

    v61 = 0xAAAAAAAAAAAAAAAALL;
    v62 = 0xAAAAAAAAAAAAAAAALL;
    if (v67 > v68)
    {
      goto LABEL_93;
    }

    v61 = v67;
    v62 = v68;
    if (ccder_blob_decode_tl())
    {
      if (v62 < v61 || v70 > v62 - v61)
      {
        goto LABEL_93;
      }

      *(&v73 + 1) = v61;
      *&v74 = v70;
      if (__CFADD__(v61, v70))
      {
        goto LABEL_94;
      }

      if (v61 + v70 > v62 || v61 > v61 + v70)
      {
        goto LABEL_93;
      }

      v67 = v61 + v70;
      v68 = v62;
    }

    else
    {
      *(&v73 + 1) = 0;
      *&v74 = 0;
    }

    if ((ccder_blob_decode_AlgorithmIdentifierNULL(&v67, &v74 + 1) & 1) == 0)
    {
      result = (v9 - 2);
      goto LABEL_84;
    }

    if ((ccder_blob_decode_tl() & 1) == 0)
    {
      result = (v9 - 1);
      goto LABEL_84;
    }

    if (v68 < v67 || v70 > v68 - v67)
    {
      goto LABEL_93;
    }

    *(&v76 + 1) = v67;
    *&v77 = v70;
    if (__CFADD__(v67, v70))
    {
      goto LABEL_94;
    }

    v15 = v67 + v70;
    if (v67 + v70 > v68 || v67 > v15)
    {
      goto LABEL_93;
    }

    v67 += v70;
    v61 = v15;
    v62 = v68;
    if (ccder_blob_eat_ber_inner(&v61, 0xA000000000000001, 0, 125))
    {
      if (v61 > v62)
      {
        goto LABEL_93;
      }

      v67 = v61;
      v68 = v62;
    }

    if (!ccder_blob_decode_eoc(&v67, v69))
    {
      result = v9;
      goto LABEL_84;
    }

    digest = find_digest(&v72 + 8);
    if (!digest)
    {
      goto LABEL_73;
    }

    v17 = digest;
    v18 = *(a1 + 96);
    if (v18)
    {
      if (*digest > v18)
      {
        goto LABEL_73;
      }
    }

    result = a3(a2, a1, &v71);
    if (result == 327710)
    {
      goto LABEL_73;
    }

    if (result)
    {
      goto LABEL_84;
    }

    v20 = *(a1 + 64);
    if (v20 <= v60)
    {
      if (v20)
      {
        v32 = *(a1 + 56);
        v33 = 176 * v60 - 176;
        if (__CFADD__(v32, v33))
        {
          goto LABEL_94;
        }

        v34 = v32 + v33;
        if (v32 + v33 < v32 || v34 + 176 > v32 + 176 * v20 || v34 > v34 + 176 || v34 + 24 > v34 + 40)
        {
          goto LABEL_93;
        }

        v35 = find_digest(v34 + 24);
        if (v35)
        {
          if (*v17 > *v35)
          {
            v36 = *(a1 + 96);
            if (!v36 || *v17 <= v36)
            {
              v37 = *(a1 + 56);
              if (__CFADD__(v37, v33))
              {
                goto LABEL_94;
              }

              v38 = 176 * *(a1 + 64);
              if ((v38 - v33) < 0xB0)
              {
                goto LABEL_93;
              }

              v39 = (v37 + v33);
              if (v37 + v33 > v37 + v38)
              {
                goto LABEL_93;
              }

              if (v37 > v39)
              {
                goto LABEL_93;
              }

              v40 = v71;
              v41 = v73;
              v39[1] = v72;
              v39[2] = v41;
              *v39 = v40;
              v42 = v74;
              v43 = v75;
              v44 = v77;
              v39[5] = v76;
              v39[6] = v44;
              v39[3] = v42;
              v39[4] = v43;
              v45 = v78;
              v46 = v79;
              v47 = v81;
              v39[9] = v80;
              v39[10] = v47;
              v39[7] = v45;
              v39[8] = v46;
              if (v39 >= v39 + 11)
              {
                goto LABEL_93;
              }
            }
          }
        }
      }

      goto LABEL_73;
    }

    v21 = *(a1 + 96);
    if (!v21 || *v17 <= v21)
    {
      break;
    }

LABEL_73:
    if (v67 > v83 || v82 > v67)
    {
      goto LABEL_93;
    }

    v82 = v67;
    v48 = v8 + 1;
    if (v8 <= 6)
    {
      v10 += 256;
      v9 = (v9 + 256);
      ++v8;
      if (v67 < v83)
      {
        continue;
      }
    }

    if (v67 == v83)
    {
      if (v60)
      {
        goto LABEL_81;
      }

      if (!*(a1 + 64))
      {
        goto LABEL_81;
      }

      v49 = *(a1 + 56);
      v50 = v71;
      v51 = v73;
      v49[1] = v72;
      v49[2] = v51;
      *v49 = v50;
      v52 = v74;
      v53 = v75;
      v54 = v77;
      v49[5] = v76;
      v49[6] = v54;
      v49[3] = v52;
      v49[4] = v53;
      v55 = v78;
      v56 = v79;
      v57 = v81;
      v49[9] = v80;
      v49[10] = v57;
      v49[7] = v55;
      v49[8] = v56;
      if (v49 < v49 + 11)
      {
LABEL_81:
        result = 0;
LABEL_84:
        v58 = *MEMORY[0x277D85DE8];
        return result;
      }

      goto LABEL_93;
    }

LABEL_83:
    result = (v48 << 8) + 196616;
    goto LABEL_84;
  }

  v22 = *(a1 + 56);
  if (__CFADD__(v22, 176 * v60))
  {
    goto LABEL_94;
  }

  if (176 * (v20 - v60) < 0xB0)
  {
    goto LABEL_93;
  }

  v23 = (v22 + 176 * v60);
  v24 = v71;
  v25 = v73;
  v23[1] = v72;
  v23[2] = v25;
  *v23 = v24;
  v26 = v74;
  v27 = v75;
  v28 = v77;
  v23[5] = v76;
  v23[6] = v28;
  v23[3] = v26;
  v23[4] = v27;
  v29 = v78;
  v30 = v79;
  v31 = v81;
  v23[9] = v80;
  v23[10] = v31;
  v23[7] = v29;
  v23[8] = v30;
  if (v23 >= v23 + 11)
  {
    goto LABEL_93;
  }

  if (v60 != 0xFF)
  {
    ++v60;
    goto LABEL_73;
  }

  __break(0x5507u);
  return result;
}

uint64_t CMSBuildPath(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v3 = a3[1];
  v4 = a3[2];
  if (__CFADD__(v3, v4))
  {
LABEL_55:
    __break(0x5513u);
  }

  v5 = v3 + v4;
  if (v3 > v5)
  {
    goto LABEL_54;
  }

  v20 = a3[1];
  v21 = v5;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  if (*a3 == 3)
  {
    if (*(a2 + 88) == 1)
    {
      v8 = 524298;
      goto LABEL_53;
    }

    v18[2] = 0xAAAAAAAAAAAAAAAALL;
    v18[3] = 0xAAAAAAAAAAAAAAAALL;
    v18[0] = v3;
    v18[1] = v5;
    if (ccder_blob_decode_tl())
    {
      v11 = v20;
      v12 = v21;
    }

    else
    {
      if (!ccder_blob_decode_tl() || !ccder_blob_decode_tl())
      {
        v8 = 524294;
        goto LABEL_53;
      }

      v11 = v18[0];
      v12 = v18[1];
      if (v18[0] > v18[1])
      {
        goto LABEL_54;
      }

      v20 = v18[0];
      v21 = v18[1];
    }

    if (v12 < v11 || v19 > v12 - v11)
    {
      goto LABEL_54;
    }

    v18[2] = v11;
    v18[3] = v19;
    if (__CFADD__(v11, v19))
    {
      goto LABEL_55;
    }

    if (v11 + v19 > v12 || v11 > v11 + v19)
    {
      goto LABEL_54;
    }

    v20 = v11 + v19;
    CertificateUsingKeyIdentifier = X509ChainGetCertificateUsingKeyIdentifier((a2 + 24), &v18[2]);
    if (!CertificateUsingKeyIdentifier)
    {
      v8 = 524295;
      goto LABEL_53;
    }

LABEL_38:
    if (v20 != v21)
    {
      v8 = 524543;
      goto LABEL_53;
    }

    if (CertificateUsingKeyIdentifier < CertificateUsingKeyIdentifier + 38 && a2 + 24 <= (a2 + 40))
    {
      v13 = a3 + 19;
      v14 = a3 + 21;
      if (v13 <= v14)
      {
        v15 = X509ChainBuildPath(CertificateUsingKeyIdentifier, (a2 + 24), v13);
        v8 = v15;
        if (*v14 == 327681)
        {
          *v14 = v15;
        }

        goto LABEL_53;
      }
    }

LABEL_54:
    __break(0x5519u);
    goto LABEL_55;
  }

  if (*a3 == 1)
  {
    v8 = 524290;
    memset(v18, 170, sizeof(v18));
    if (ccder_blob_decode_tl())
    {
      if (ccder_blob_decode_tl())
      {
        if (v21 < v20 || v19 > v21 - v20)
        {
          goto LABEL_54;
        }

        v18[0] = v20;
        v18[1] = v19;
        if (__CFADD__(v20, v19))
        {
          goto LABEL_55;
        }

        if (v20 + v19 > v21 || v20 > v20 + v19)
        {
          goto LABEL_54;
        }

        v20 += v19;
        if (ccder_blob_decode_tl())
        {
          if (v21 < v20 || v19 > v21 - v20)
          {
            goto LABEL_54;
          }

          v18[2] = v20;
          v18[3] = v19;
          if (__CFADD__(v20, v19))
          {
            goto LABEL_55;
          }

          if (v20 + v19 > v21)
          {
            goto LABEL_54;
          }

          if (v20 > v20 + v19)
          {
            goto LABEL_54;
          }

          v20 += v19;
          v9 = (a2 + 24);
          if (a2 + 24 > (a2 + 40))
          {
            goto LABEL_54;
          }

          CertificateUsingKeyIdentifier = *v9;
          if (*v9)
          {
            while (CertificateUsingKeyIdentifier < CertificateUsingKeyIdentifier + 38 && CertificateUsingKeyIdentifier + 15 <= CertificateUsingKeyIdentifier + 17)
            {
              if (!compare_octet_string(v18, (CertificateUsingKeyIdentifier + 15)))
              {
                if (CertificateUsingKeyIdentifier + 17 > CertificateUsingKeyIdentifier + 19)
                {
                  goto LABEL_54;
                }

                if (!compare_octet_string(&v18[2], (CertificateUsingKeyIdentifier + 17)))
                {
                  goto LABEL_38;
                }
              }

              CertificateUsingKeyIdentifier = CertificateUsingKeyIdentifier[34];
              if (!CertificateUsingKeyIdentifier)
              {
                goto LABEL_26;
              }
            }

            goto LABEL_54;
          }

LABEL_26:
          v8 = 524293;
        }

        else
        {
          v8 = 524292;
        }
      }

      else
      {
        v8 = 524291;
      }
    }
  }

  else
  {
    v8 = 524289;
  }

LABEL_53:
  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t validateSignerInfo(unint64_t a1, void *a2, uint64_t a3)
{
  v96 = *MEMORY[0x277D85DE8];
  v3 = (a3 + 24);
  v4 = (a3 + 40);
  if (a3 + 24 > (a3 + 40))
  {
    goto LABEL_183;
  }

  digest = find_digest(a3 + 24);
  if (!digest)
  {
    result = 327682;
    goto LABEL_181;
  }

  v9 = (*(digest + 3))();
  v10 = v9;
  memset(v95, 0, sizeof(v95));
  v11 = a2[13];
  v12 = a2[14];
  if (!v11 || !v12)
  {
    if (a2[9] && a2[10])
    {
      v11 = v95;
      v13 = ccdigest();
      v12 = *v10;
      if (*v10 >= 0x41)
      {
        goto LABEL_183;
      }

      goto LABEL_14;
    }

    if (!v11)
    {
      goto LABEL_144;
    }
  }

  if (*v9 != v12)
  {
LABEL_144:
    *(a3 + 168) = 327710;
    result = 327710;
    goto LABEL_181;
  }

  if (v12 >= 0x41)
  {
    goto LABEL_183;
  }

  v15 = a2[13];
  v16 = a2[14];
  v13 = __memcpy_chk();
  if (v13 > v13 + v12)
  {
    goto LABEL_183;
  }

LABEL_14:
  v17 = a1 + 16;
  *(a3 + 128) = v11;
  *(a3 + 136) = v12;
  v18 = (a3 + 128);
  v19 = *(a3 + 48);
  if (!v19)
  {
    goto LABEL_157;
  }

  if (v17 < a1)
  {
    goto LABEL_183;
  }

  v80 = a1 + 16;
  v81 = v10;
  v89 = 0xAAAAAAAAAAAAAAAALL;
  v90 = 0xAAAAAAAAAAAAAAAALL;
  v20 = *v4;
  if (__CFADD__(*v4, v19))
  {
    goto LABEL_184;
  }

  v21 = &v20[v19];
  if (v20 > v21)
  {
    goto LABEL_183;
  }

  v89 = *v4;
  v90 = v21;
  v88 = 0xAAAAAAAAAAAAAAAALL;
  if (v20 >= v21)
  {
LABEL_145:
    result = 262156;
    goto LABEL_179;
  }

  v22 = 0;
  v23 = 0x96463F78648862ALL;
  v84 = 0x2000000000000010;
  v79 = 262146;
  v83 = 262147;
  v82 = 262148;
  do
  {
    if (!ccder_blob_decode_tl())
    {
      result = 262145;
      goto LABEL_179;
    }

    if (__CFADD__(v89, v88))
    {
      goto LABEL_184;
    }

    v24 = &v89[v88];
    v87 = 0xAAAAAAAAAAAAAAAALL;
    v86 = 0xAAAAAAAAAAAAAAAALL;
    if (v89 > &v89[v88] || v24 > v90)
    {
      goto LABEL_183;
    }

    v86 = v89;
    v87 = &v89[v88];
    if (!ccder_blob_decode_tl())
    {
      result = v79;
      goto LABEL_179;
    }

    v26 = v86;
    if (__CFADD__(v86, v88))
    {
      goto LABEL_184;
    }

    if (&v86[v88] > v87 || v86 > &v86[v88])
    {
      goto LABEL_183;
    }

    v86 += v88;
    if (v88 != 9)
    {
      goto LABEL_147;
    }

    if ((v87 - v26) < 9)
    {
      goto LABEL_183;
    }

    if (*v26 == 0x9010DF78648862ALL && v26[8] == 3)
    {
      if (v22)
      {
        goto LABEL_149;
      }

      v94[0] = 0xAAAAAAAAAAAAAAAALL;
      v37 = ccder_blob_decode_tl();
      result = v83;
      if (v37)
      {
        if (CMSAttributeParseContentType(&v86))
        {
          result = 0;
        }

        else
        {
          result = v82;
        }
      }

      v22 |= 1u;
      goto LABEL_134;
    }

    if (*v26 == 0x9010DF78648862ALL && v26[8] == 4)
    {
      if ((v22 & 2) != 0)
      {
        goto LABEL_149;
      }

      v94[0] = 0xAAAAAAAAAAAAAAAALL;
      v40 = ccder_blob_decode_tl();
      result = v83;
      if (v40)
      {
        if (CMSAttributeParseMessageDigest(&v86, v38, v39, a3))
        {
          result = 0;
        }

        else
        {
          result = v82;
        }
      }

      v22 |= 2u;
      goto LABEL_134;
    }

    if (*v26 == v23 && v26[8] == 2)
    {
      if ((v22 & 0x10) != 0)
      {
        goto LABEL_149;
      }

      v93 = 0xAAAAAAAAAAAAAAAALL;
      v41 = ccder_blob_decode_tl();
      result = v83;
      if (v41)
      {
        v42 = v86;
        v43 = v87;
        if (v86 >= v87)
        {
LABEL_110:
          if (v42 == v43)
          {
            result = 0;
          }

          else
          {
            result = 262155;
          }
        }

        else
        {
          v78 = a1;
          while (1)
          {
            if (!ccder_blob_decode_tl())
            {
              result = 262157;
              goto LABEL_132;
            }

            v94[0] = 0xAAAAAAAAAAAAAAAALL;
            v94[1] = 0xAAAAAAAAAAAAAAAALL;
            if (__CFADD__(v86, v93))
            {
              goto LABEL_184;
            }

            if (v86 > &v86[v93] || &v86[v93] > v87)
            {
              goto LABEL_183;
            }

            v45 = v23;
            v94[0] = v86;
            v94[1] = &v86[v93];
            if ((ccder_blob_decode_tl() & 1) == 0)
            {
              result = 262151;
              goto LABEL_131;
            }

            v91 = 0xAAAAAAAAAAAAAAAALL;
            v92 = 0xAAAAAAAAAAAAAAAALL;
            if (v94[1] < v94[0] || v93 > v94[1] - v94[0])
            {
              goto LABEL_183;
            }

            v91 = v94[0];
            v92 = v93;
            if (__CFADD__(v94[0], v93))
            {
              goto LABEL_184;
            }

            if (v94[0] + v93 > v94[1] || v94[0] > v94[0] + v93)
            {
              goto LABEL_183;
            }

            v94[0] += v93;
            if (!ccder_blob_decode_tl())
            {
              result = 262152;
              goto LABEL_131;
            }

            v46 = v94[0];
            if (__CFADD__(v94[0], v93))
            {
              goto LABEL_184;
            }

            v47 = v94[1];
            v48 = v94[0] + v93;
            if (v94[0] + v93 > v94[1] || v94[0] > v48)
            {
              goto LABEL_183;
            }

            v94[0] += v93;
            if (v48 != v94[1])
            {
              break;
            }

            v49 = find_digest(&v91);
            if (v49)
            {
              v50 = *v49;
              if (*v49 > *(a3 + 104))
              {
                v51 = *(v78 + 8);
                if (!v51 || v50 <= v51)
                {
                  *(a3 + 104) = v50;
                  v52 = v93;
                  if (v93 > v47 - v46)
                  {
                    goto LABEL_183;
                  }

                  *(a3 + 112) = v46;
                  *(a3 + 120) = v52;
                }
              }
            }

            v42 = v94[0];
            v43 = v87;
            if (v94[0] > v87 || v86 > v94[0])
            {
              goto LABEL_183;
            }

            v86 = v94[0];
            v23 = v45;
            if (v94[0] >= v87)
            {
              a1 = v78;
              goto LABEL_110;
            }
          }

          result = 262153;
LABEL_131:
          v23 = v45;
LABEL_132:
          a1 = v78;
        }
      }

      v22 |= 0x10u;
      goto LABEL_134;
    }

    if (*v26 == 0x9010DF78648862ALL && v26[8] == 5)
    {
      if ((v22 & 4) != 0)
      {
        goto LABEL_149;
      }

      v94[0] = 0xAAAAAAAAAAAAAAAALL;
      v53 = ccder_blob_decode_tl();
      result = v83;
      if (v53)
      {
        if (CMSAttributeParseSigningTime(&v86))
        {
          result = 0;
        }

        else
        {
          result = v82;
        }
      }

      v22 |= 4u;
      goto LABEL_134;
    }

    if (*v26 == v23 && v26[8] == 1)
    {
      if ((v22 & 8) != 0)
      {
        goto LABEL_149;
      }

      v94[0] = 0xAAAAAAAAAAAAAAAALL;
      v56 = ccder_blob_decode_tl();
      result = v83;
      if (v56)
      {
        if (CMSAttributeParseAppleHashAgility(&v86, v54, v55, a3))
        {
          result = 0;
        }

        else
        {
          result = v82;
        }
      }

      v22 |= 8u;
LABEL_134:
      if (result)
      {
        goto LABEL_179;
      }

      goto LABEL_135;
    }

    if (*v26 != 0x9010DF78648862ALL || v26[8] != 52)
    {
      v33 = *v26;
      v34 = v26[8];
      if (v33 != 0x9010DF78648862ALL || v34 != 15)
      {
LABEL_147:
        result = 262150;
        goto LABEL_179;
      }

      if ((v22 & 0x40) != 0)
      {
        goto LABEL_149;
      }

      v94[0] = 0xAAAAAAAAAAAAAAAALL;
      v36 = ccder_blob_decode_tl();
      result = v83;
      if (v36)
      {
        if (CMSAttributeParseSMIMECapabilities(&v86))
        {
          result = 0;
        }

        else
        {
          result = v82;
        }
      }

      v22 |= 0x40u;
      goto LABEL_134;
    }

    if ((v22 & 0x20) != 0)
    {
LABEL_149:
      result = 262149;
      goto LABEL_179;
    }

    v22 |= 0x20u;
LABEL_135:
    if (v24 > v90 || v89 > v24)
    {
      goto LABEL_183;
    }

    v89 = v24;
  }

  while (v24 < v90);
  if ((~v22 & 3) != 0)
  {
    goto LABEL_145;
  }

  v58 = ccder_sizeof_tag();
  v59 = *(a3 + 48);
  result = ccder_sizeof_len();
  v60 = __CFADD__(v58, result);
  v61 = v58 + result;
  v10 = v81;
  if (v60)
  {
    goto LABEL_185;
  }

  if (v61 > 0x14)
  {
    result = 327689;
    goto LABEL_179;
  }

  memset(v94, 170, 20);
  if (__CFADD__(v94, v61))
  {
LABEL_184:
    __break(0x5513u);
  }

  v91 = v94;
  v92 = v94 + v61;
  result = ccder_blob_encode_tl();
  if (!result)
  {
    result = 327688;
    goto LABEL_179;
  }

  v62 = v81[1];
  v60 = __CFADD__(v62, 8);
  v63 = v62 + 8;
  if (v60 || (v64 = v81[2], v60 = __CFADD__(v63, v64), v65 = v63 + v64, v60) || (v60 = __CFADD__(v65, 4), v66 = v65 + 4, v60) || v66 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_185:
    __break(0x5500u);
    return result;
  }

  MEMORY[0x28223BE20](result);
  v68 = &v77 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v68, 170, ((v69 - 9) & 0xFFFFFFFFFFFFFFF8) + 8);
  ccdigest_init();
  ccdigest_update();
  v71 = *(a3 + 40);
  v70 = *(a3 + 48);
  ccdigest_update();
  v13 = (v10[7])(v10, v68, v95);
  v17 = v80;
LABEL_157:
  if (v17 <= a1)
  {
LABEL_183:
    __break(0x5519u);
    goto LABEL_184;
  }

  result = CMSBuildPath(v13, a2, a3);
  if (result <= 524294)
  {
    if (!result)
    {
      goto LABEL_169;
    }

    if (result != 524293)
    {
      goto LABEL_179;
    }

    goto LABEL_166;
  }

  switch(result)
  {
    case 0x80007:
LABEL_166:
      *(a3 + 168) = result;
      result = 0;
      goto LABEL_181;
    case 0x80009:
      v72 = 524297;
LABEL_168:
      *(a3 + 168) = v72;
      break;
    case 0x80008:
      if (*(a3 + 168) == 458753)
      {
        v72 = 524296;
        goto LABEL_168;
      }

      break;
    default:
      goto LABEL_179;
  }

LABEL_169:
  v73 = *v10;
  if (*v10 > 0x40)
  {
    goto LABEL_183;
  }

  v85[0] = v95;
  v85[1] = v73;
  v74 = *(a3 + 152);
  if (v74 >= v74 + 304)
  {
    goto LABEL_183;
  }

  result = X509CertificateCheckSignatureDigest(29, v74, v85, v3, (a3 + 88));
  if (!result || result == 655648 || result == 655632)
  {
    v75 = *(a3 + 168);
    if (!v75 || v75 == 458753 || v75 == 327681)
    {
      *(a3 + 168) = result;
    }

    result = 0;
  }

LABEL_179:
  if (*v18 == v95)
  {
    *v18 = 0;
    *(a3 + 136) = 0;
  }

LABEL_181:
  v76 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t validateSignerInfoAndChain(uint64_t *a1, void *a2, uint64_t a3)
{
  result = validateSignerInfo(a1, a2, a3);
  v6 = result;
  if (result)
  {
    return v6;
  }

  v7 = (a3 + 152);
  v8 = (a3 + 168);
  if (v7 <= v8)
  {
    v9 = X509ChainCheckPath(29, v7, *a1);
    if (v9)
    {
      if (!*v8)
      {
        *v8 = v9;
      }
    }

    return v6;
  }

  __break(0x5519u);
  return result;
}

uint64_t CMSVerifySignedDataWithLeaf(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v10[1] = *MEMORY[0x277D85DE8];
  result = CMSVerify(a1, a2, a3, a4, a5, a6, a7, &v9, v10);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CMSVerify(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9)
{
  v33 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31[0] = 0;
  memset(v29, 0, sizeof(v29));
  v27 = 0;
  v26 = 0;
  v24 = 0u;
  v25 = &v24 + 8;
  v31[1] = 0;
  memset(__b, 170, sizeof(__b));
  v23[0] = 4;
  v23[1] = __b;
  v21 = 0u;
  v22 = 0u;
  memset(v20, 0, sizeof(v20));
  v28 = v20;
  *&v29[0] = 1;
  DWORD2(v22) = 327681;
  if (a2 < 0)
  {
    goto LABEL_20;
  }

  result = CMSParseContentInfoSignedDataWithOptions(a1, a2, v23, 0);
  if (result)
  {
    goto LABEL_9;
  }

  if (a4)
  {
    result = 131091;
    if (*(v29 + 8) != 0)
    {
      goto LABEL_9;
    }

    if (a4 < 0)
    {
      goto LABEL_20;
    }

    *(&v29[0] + 1) = a3;
    *&v29[1] = a4;
  }

  v31[0] = a5;
  DWORD2(v22) = 458753;
  result = CMSParseSignerInfos(v23, v31, validateSignerInfoAndChain);
  if (result)
  {
    goto LABEL_9;
  }

  result = DWORD2(v22);
  if (DWORD2(v22))
  {
    goto LABEL_9;
  }

  if (a6 && a7)
  {
    if (*(&v21 + 1) < (*(&v21 + 1) + 304))
    {
      result = X509CertificateParseKey(*(&v21 + 1), a6, a7);
      goto LABEL_14;
    }

LABEL_20:
    __break(0x5519u);
  }

LABEL_14:
  if (!a4)
  {
    if (a8)
    {
      if (a9)
      {
        v19 = *&v29[1];
        if (*&v29[1])
        {
          if (*(&v29[0] + 1))
          {
            *a8 = *(&v29[0] + 1);
            *a9 = v19;
          }
        }
      }
    }
  }

LABEL_9:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CMSVerifySignedData(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8 = 0;
  result = CMSVerify(a1, a2, a3, a4, a5, &v7, &v8, &v9, v10);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CMSVerifyAndReturnSignedData(char *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8[0] = 0;
  result = CMSVerify(a1, a2, 0, 0, a5, &v7, v8, a3, a4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CMSAttributeParseContentType(char **a1)
{
  v5 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_7;
  }

  v3 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
  }

  else
  {
    if (v3 - 0x5555555555555556 != a1[1])
    {
      result = 0;
LABEL_7:
      v4 = *MEMORY[0x277D85DE8];
      return result;
    }

    if (v3 <= v3 - 0x5555555555555556)
    {
      result = compare_octet_string_raw(&pkcs7_data_oid, v3, 0xAAAAAAAAAAAAAAAALL) == 0;
      goto LABEL_7;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t CMSAttributeParseMessageDigest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_16;
  }

  if (*a1 >= 0x5555555555555556uLL)
  {
    __break(0x5513u);
  }

  else
  {
    if (*a1 - 0x5555555555555556 != *(a1 + 8))
    {
      result = 0;
LABEL_16:
      v10 = *MEMORY[0x277D85DE8];
      return result;
    }

    result = a4 + 24;
    if (a4 + 24 <= (a4 + 40))
    {
      result = find_digest(result);
      if (!result)
      {
        goto LABEL_16;
      }

      if (*(a4 + 136) != 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_14;
      }

      result = (*(result + 24))();
      if (*result != 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_14;
      }

      v7 = *(a1 + 8);
      v8 = v7 >= *a1;
      v9 = v7 - *a1;
      if (v8 && *(a4 + 136) >= 0xAAAAAAAAAAAAAAAALL && v9 >= 0xAAAAAAAAAAAAAAAALL)
      {
        if (!memcmp(*(a4 + 128), *a1, 0xAAAAAAAAAAAAAAAALL))
        {
LABEL_15:
          result = 1;
          goto LABEL_16;
        }

LABEL_14:
        *(a4 + 168) = 458754;
        goto LABEL_15;
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t CMSAttributeParseSigningTime(unint64_t *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*a1 > a1[1])
  {
    goto LABEL_10;
  }

  v5 = *a1;
  v6 = a1[1];
  result = ccder_blob_decode_tl();
  if (result)
  {
    v3 = *a1;
    goto LABEL_7;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
LABEL_9:
    v4 = *MEMORY[0x277D85DE8];
    return result;
  }

  v3 = v5;
  if (v5 > v6)
  {
LABEL_10:
    __break(0x5519u);
  }

  *a1 = v5;
  a1[1] = v6;
LABEL_7:
  if (v3 < 0x5555555555555556)
  {
    result = v3 - 0x5555555555555556 == a1[1];
    goto LABEL_9;
  }

  __break(0x5513u);
  return result;
}

uint64_t CMSAttributeParseAppleHashAgility(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_9;
  }

  v7 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
  }

  else
  {
    if (v7 - 0x5555555555555556 != a1[1])
    {
      result = 0;
LABEL_9:
      v8 = *MEMORY[0x277D85DE8];
      return result;
    }

    if (*(a4 + 104))
    {
LABEL_8:
      result = 1;
      goto LABEL_9;
    }

    if (v7 <= v7 - 0x5555555555555556)
    {
      *(a4 + 112) = v7;
      *(a4 + 120) = 0xAAAAAAAAAAAAAAAALL;
      goto LABEL_8;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t CMSAttributeParseSMIMECapabilities(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_4;
  }

  if (*a1 < 0x5555555555555556uLL)
  {
    result = *a1 - 0x5555555555555556 == a1[1];
LABEL_4:
    v3 = *MEMORY[0x277D85DE8];
    return result;
  }

  __break(0x5513u);
  return result;
}

uint64_t compare_octet_string_partial(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 <= *(a2 + 8))
  {
    return memcmp(*a2, *a1, v2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ccder_blob_decode_Time(uint64_t *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*a1 > a1[1])
  {
    goto LABEL_7;
  }

  v4 = *a1;
  if ((ccder_blob_decode_tl() & 1) == 0)
  {
    if (*a1 <= a1[1])
    {
      v5 = *a1;
      ccder_blob_decode_tl();
      result = 0;
      goto LABEL_6;
    }

LABEL_7:
    __break(0x5519u);
  }

  result = 0;
LABEL_6:
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ccder_blob_decode_GeneralName(unint64_t *a1, int *a2, unint64_t *a3)
{
  result = 0;
  v22 = *MEMORY[0x277D85DE8];
  if (a2 && a3)
  {
    *a3 = 0;
    a3[1] = 0;
    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v11 = *a1;
    if (ccder_blob_decode_tl())
    {
      *a2 = 0;
LABEL_6:
      v7 = v11;
LABEL_16:
      if (v7 <= a1[1] && *a1 <= v7)
      {
        *a1 = v7;
        result = 1;
        goto LABEL_19;
      }

LABEL_42:
      __break(0x5519u);
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v12 = *a1;
    v17 = a1[1];
    if (ccder_blob_decode_tl())
    {
      v7 = v12;
      if (v17 < v12)
      {
        goto LABEL_42;
      }

      *a3 = v12;
      a3[1] = 0;
      v8 = 1;
    }

    else
    {
      if (*a1 > a1[1])
      {
        goto LABEL_42;
      }

      v13 = *a1;
      v18 = a1[1];
      if (!ccder_blob_decode_tl())
      {
        if (*a1 > a1[1])
        {
          goto LABEL_42;
        }

        v11 = *a1;
        if (ccder_blob_decode_tl())
        {
          v10 = 3;
        }

        else
        {
          if (*a1 > a1[1])
          {
            goto LABEL_42;
          }

          v14 = *a1;
          v19 = a1[1];
          if (ccder_blob_decode_tl())
          {
            v7 = v14;
            if (v19 < v14)
            {
              goto LABEL_42;
            }

            *a3 = v14;
            a3[1] = 0;
            v8 = 4;
            goto LABEL_15;
          }

          if (*a1 > a1[1])
          {
            goto LABEL_42;
          }

          v11 = *a1;
          if (ccder_blob_decode_tl())
          {
            v10 = 5;
          }

          else
          {
            if (*a1 > a1[1])
            {
              goto LABEL_42;
            }

            v15 = *a1;
            v20 = a1[1];
            if (ccder_blob_decode_tl())
            {
              v7 = v15;
              if (v20 < v15)
              {
                goto LABEL_42;
              }

              *a3 = v15;
              a3[1] = 0;
              v8 = 6;
              goto LABEL_15;
            }

            if (*a1 > a1[1])
            {
              goto LABEL_42;
            }

            v16 = *a1;
            v21 = a1[1];
            if (ccder_blob_decode_tl())
            {
              v7 = v16;
              if (v21 < v16)
              {
                goto LABEL_42;
              }

              *a3 = v16;
              a3[1] = 0;
              v8 = 7;
              goto LABEL_15;
            }

            if (*a1 > a1[1])
            {
              goto LABEL_42;
            }

            v11 = *a1;
            result = ccder_blob_decode_tl();
            if (!result)
            {
              goto LABEL_19;
            }

            v10 = 8;
          }
        }

        *a2 = v10;
        goto LABEL_6;
      }

      v7 = v13;
      if (v18 < v13)
      {
        goto LABEL_42;
      }

      *a3 = v13;
      a3[1] = 0;
      v8 = 2;
    }

LABEL_15:
    *a2 = v8;
    goto LABEL_16;
  }

LABEL_19:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ccder_blob_check_null()
{
  v2 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CTParseCertificateSet(unint64_t a1, unint64_t a2, _OWORD *a3, uint64_t a4, void *a5)
{
  v6 = 0;
  v19 = *MEMORY[0x277D85DE8];
  if (a1 < a2 && a4)
  {
    v8 = 0;
    v9 = a4 - 1;
    v10 = a3;
    v11 = &a3[a4];
    while (1)
    {
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v18[17] = v12;
      v18[18] = v12;
      v18[15] = v12;
      v18[16] = v12;
      v18[13] = v12;
      v18[14] = v12;
      v18[11] = v12;
      v18[12] = v12;
      v18[9] = v12;
      v18[10] = v12;
      v18[7] = v12;
      v18[8] = v12;
      v18[5] = v12;
      v18[6] = v12;
      v18[3] = v12;
      v18[4] = v12;
      v18[1] = v12;
      v18[2] = v12;
      v18[0] = v12;
      v16 = a1;
      v17 = a2;
      result = X509CertificateParse(v18, &v16);
      if (result)
      {
        break;
      }

      a1 = v16;
      a2 = v17;
      if (v16 > v17 || v10 < a3 || (v10 + 1) > v11 || v10 > v10 + 1)
      {
        __break(0x5519u);
      }

      *v10 = v18[0];
      v6 = v8 + 1;
      if (a1 < a2)
      {
        ++v10;
        if (v9 != v8++)
        {
          continue;
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
LABEL_12:
    result = 0;
    if (a5)
    {
      *a5 = v6;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CTParseExtensionValue(unint64_t a1, uint64_t a2, const void *a3, size_t a4, void *a5, void *a6)
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  memset(v12, 0, sizeof(v12));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_11;
  }

  v11[0] = a1;
  v11[1] = a1 + a2;
  result = X509CertificateParseWithExtension(v12, v11, a3, a4);
  if (!result)
  {
    result = 720914;
    if (*(&v13 + 1))
    {
      v10 = v14;
      if (v14)
      {
        result = 0;
        if (a5)
        {
          if (a6)
          {
            result = 0;
            *a5 = *(&v13 + 1);
            *a6 = v10;
          }
        }
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CTParseKey(unint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = *MEMORY[0x277D85DE8];
  memset(v9, 0, sizeof(v9));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_7:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_7;
  }

  v8[0] = a1;
  v8[1] = a1 + a2;
  result = X509CertificateParse(v9, v8);
  if (!result)
  {
    result = X509CertificateParseKey(v9, a3, a4);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CTEvaluateCertifiedChip(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6, _BYTE *a7, uint64_t a8, const void *a9, size_t a10, BOOL *a11, uint64_t a12, uint64_t a13)
{
  __b[152] = *MEMORY[0x277D85DE8];
  memset(__b, 170, 0x4C0uLL);
  memset(v37, 170, sizeof(v37));
  v35 = 0xAAAAAAAAAAAAAAAALL;
  v36 = 0;
  v34 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
    goto LABEL_42;
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_41;
  }

  v34 = a1;
  v35 = a1 + a2;
  CommonName = X509ChainParseCertificateSet(&v34, __b, 4, &v37[2], &v36);
  if (CommonName)
  {
LABEL_4:
    v22 = CommonName;
    goto LABEL_25;
  }

  v22 = 327690;
  if (v34 != v35)
  {
    goto LABEL_25;
  }

  if (v36 != 2)
  {
    v22 = 327692;
    goto LABEL_25;
  }

  X509ChainResetChain(v37, &v37[2]);
  __b[74] = v37[0];
  v23 = v37[0] ? (v37[0] + 296) : &v37[1];
  *v23 = &__b[74];
  if ((&__b[38] + 1) != 0 && __b >= 0xFFFFFFFFFFFFFECFLL)
  {
LABEL_42:
    __break(0x5513u);
  }

  v37[0] = &__b[38];
  __b[75] = v37;
  __b[36] = 0;
  __b[37] = v37[1];
  *v37[1] = __b;
  v37[1] = &__b[36];
  CommonName = X509ChainCheckPathWithOptions(12, v37, a12, 0);
  if (CommonName)
  {
    goto LABEL_4;
  }

  v24 = **(v37[1] + 8);
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_41;
  }

  v32 = a3;
  v33 = a4;
  v25 = oidForPubKeyLength();
  if (v24 > v24 + 304)
  {
    goto LABEL_41;
  }

  if (v24 + 16 > v24 + 32)
  {
    goto LABEL_41;
  }

  v26 = (v24 + 56);
  if (v24 + 40 > v24 + 56 || v26 > v24 + 72)
  {
    goto LABEL_41;
  }

  CommonName = X509CertificateCheckSignatureWithPublicKey(&v32, &ecPublicKey, v25, (v24 + 16), (v24 + 40), v26);
  if (CommonName)
  {
    goto LABEL_4;
  }

  if (a9 && a10)
  {
    if ((a10 & 0x8000000000000000) != 0 || v24 + 248 > v24 + 264)
    {
      goto LABEL_41;
    }

    if (compare_octet_string_raw(v24 + 248, a9, a10))
    {
      v22 = 590085;
      goto LABEL_25;
    }
  }

  v29 = v37[0];
  if (v37[0] >= v37[0] + 304)
  {
LABEL_41:
    __break(0x5519u);
    goto LABEL_42;
  }

  v30 = X509CertificateParseKey(v37[0], a5, a6);
  if (v30)
  {
    v22 = v30;
  }

  else
  {
    v22 = 327691;
  }

  if (v29 && !v30)
  {
    if (a11)
    {
      *a11 = (*(v29 + 240) & a13) != 0;
    }

    if (!a7 || !a8)
    {
      goto LABEL_40;
    }

    v31[0] = 0;
    v31[1] = 0;
    if (v29 + 104 <= v29 + 120)
    {
      CommonName = X509CertificateSubjectNameGetCommonName((v29 + 104), v31);
      if (CommonName)
      {
        goto LABEL_4;
      }

      if ((a8 & 0x8000000000000000) == 0)
      {
        CommonName = CTCopyUID(v31, a7, a8);
        if (CommonName)
        {
          goto LABEL_4;
        }

LABEL_40:
        v22 = 0;
        goto LABEL_25;
      }
    }

    goto LABEL_41;
  }

LABEL_25:
  v27 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t CTEvaluateCertsForPolicy(unint64_t a1, uint64_t a2, char a3, int a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9, void *a10, __int128 *a11)
{
  v46 = *MEMORY[0x277D85DE8];
  memset(v42, 170, sizeof(v42));
  bzero(v43, 0x4C0uLL);
  v39 = 0xAAAAAAAAAAAAAAAALL;
  v40 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
LABEL_47:
    __break(0x5513u);
  }

  v41 = 0xAAAAAAAAAAAAAAAALL;
  if (a1 + a2 < a1)
  {
    goto LABEL_46;
  }

  v39 = a1;
  v40 = a1 + a2;
  result = X509ChainParseCertificateSet(&v39, v43, 4, &v42[2], &v41);
  if (result)
  {
    goto LABEL_34;
  }

  if (v39 != v40)
  {
    result = 327690;
    goto LABEL_34;
  }

  if ((a4 & 1) == 0 && !v44)
  {
    X509ChainResetChain(v42, &v42[2]);
    v20 = v42[0];
    v21 = (v42[0] + 296);
    if (!v42[0])
    {
      v21 = &v42[1];
    }

    *v21 = v45;
    v42[0] = v43;
    v45[0] = v20;
    v45[1] = v42;
LABEL_23:
    v38[0] = a7;
    v38[1] = a8;
    if (a7)
    {
      v24 = a8 == 0;
    }

    else
    {
      v24 = 1;
    }

    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v37 = 0xAAAAAAAAAAAAAAAALL;
    v35 = v25;
    v36 = v25;
    v34 = *a11;
    LOBYTE(v35) = *(a11 + 16);
    if (v24)
    {
      v26 = a3;
    }

    else
    {
      v26 = 1;
    }

    BYTE1(v35) = v26;
    WORD1(v35) = *(a11 + 9);
    if (!v24)
    {
      v27 = *(a11 + 4);
      *(&v35 + 1) = v38;
      *&v36 = v27;
      v28 = oidForPubKeyLength();
LABEL_33:
      v30 = *(a11 + 6);
      *(&v36 + 1) = v28;
      v37 = v30;
      result = X509ChainCheckPathWithOptions(12, v42, &v34, 0);
      if (result)
      {
        goto LABEL_34;
      }

      v32 = v42[0];
      if (!a5 || !a6 || !v42[0])
      {
        goto LABEL_40;
      }

      if (v42[0] < v42[0] + 304)
      {
        result = X509CertificateParseKey(v42[0], a5, a6);
        if (result)
        {
          goto LABEL_34;
        }

LABEL_40:
        if (a10 && v32)
        {
          v33 = v32[32];
          *a10 = v32[31];
          a10[1] = v33;
        }

        result = 0;
        if (a9 && v32)
        {
          result = 0;
          *a9 = v32[30];
        }

        goto LABEL_34;
      }

      goto LABEL_46;
    }

    if (*(a11 + 3) < (*(a11 + 3) + 16))
    {
      v29 = *(a11 + 4);
      v28 = *(a11 + 5);
      *(&v35 + 1) = *(a11 + 3);
      *&v36 = v29;
      goto LABEL_33;
    }

LABEL_46:
    __break(0x5519u);
    goto LABEL_47;
  }

  if (v43[265] != 1)
  {
    v23 = &v46;
    v22 = v43;
    goto LABEL_20;
  }

  if (!v42[2])
  {
    v22 = 0;
    goto LABEL_22;
  }

  v22 = v42[2];
  do
  {
    if ((v22[265] & 1) == 0)
    {
      v23 = (v22 + 304);
      if (v22 < v22 + 304)
      {
        goto LABEL_20;
      }

      goto LABEL_46;
    }

    v22 = *(v22 + 34);
  }

  while (v22);
  v23 = (v42[2] + 304);
  v22 = v42[2];
LABEL_20:
  if (v22 + 304 > v23 || v22 > v22 + 304)
  {
    goto LABEL_46;
  }

LABEL_22:
  result = X509ChainBuildPathPartial(v22, &v42[2], v42, a4 ^ 1u);
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_34:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CTEvaluatePragueSignatureCMS(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0xAAAAAAAA0000AA01;
  v9 = xmmword_25631ECB0;
  BYTE1(v10) = a5;
  v11 = 0u;
  v12 = 0u;
  result = CMSVerifySignedDataWithLeaf(a1, a2, a3, a4, &v9, a6, a7);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CTEvaluateKDLSignatureCMS(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0xAAAAAAAA0000AA01;
  v9 = xmmword_25631ECC0;
  BYTE1(v10) = a5;
  v11 = 0u;
  v12 = 0u;
  result = CMSVerifySignedDataWithLeaf(a1, a2, a3, a4, &v9, a6, a7);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CTVerifyAppleMarkerExtension(void *a1, uint64_t a2)
{
  result = 327700;
  v4 = a1[31];
  v5 = a1[32];
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 327707;
  }

  v7 = a1[30];
  if ((v7 & 0x100000000) == 0)
  {
    if ((v7 & 0x200000000) == 0)
    {
      return result;
    }

    if (!__CFADD__(v4, v5))
    {
      v11 = v4 + v5;
      if (v4 + v5 != -1)
      {
        if (v5 > 0x13)
        {
          return 327704;
        }

        v15 = (v11 - 1);
        if (v11 - 1 >= v4)
        {
          v16 = 0;
          v10 = 0;
          v17 = 0;
          while (v15 < v11)
          {
            v18 = *v15;
            if ((v18 - 58) < 0xFFFFFFF6)
            {
              return 327705;
            }

            v19 = (&powersOfTen + v16);
            if ((&powersOfTen + v16) < &powersOfTen || v19 + 1 > &CTOidCommonName || v19 > v19 + 1)
            {
              break;
            }

            if (v16 == 160 || (v17 & 0x1FFFFFFFFFFFFFFFLL) == 0x14)
            {
              goto LABEL_42;
            }

            v20 = v18 & 0xF;
            v21 = *v19;
            if (!is_mul_ok(v20, v21))
            {
              goto LABEL_43;
            }

            v22 = v20 * v21;
            v14 = __CFADD__(v10, v22);
            v10 += v22;
            if (v14)
            {
              goto LABEL_41;
            }

            ++v17;
            --v15;
            v16 += 8;
            if (v15 < v4)
            {
              goto LABEL_23;
            }
          }

LABEL_40:
          __break(0x5519u);
LABEL_41:
          __break(0x5500u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(0x550Cu);
          goto LABEL_44;
        }

        goto LABEL_13;
      }
    }

LABEL_44:
    __break(0x5513u);
    return result;
  }

  if (__CFADD__(v4, v5))
  {
    goto LABEL_44;
  }

  v8 = v4 + v5;
  if (v4 + v5 == -1)
  {
    goto LABEL_44;
  }

  v9 = (v8 - 1);
  if (v8 - 1 >= v4)
  {
    LOBYTE(v12) = 0;
    v10 = 0;
    while (v9 < v8)
    {
      v13 = (*v9 & 0x7F) << (7 * v12);
      v14 = __CFADD__(v10, v13);
      v10 += v13;
      if (v14)
      {
        goto LABEL_41;
      }

      if (--v9 >= v4)
      {
        v12 = (v12 + 1);
        if (v12 < 9)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

    goto LABEL_40;
  }

LABEL_13:
  v10 = 0;
LABEL_23:
  if (v10 == a2)
  {
    return 0;
  }

  else
  {
    return 589829;
  }
}

uint64_t CTVerifyHostname(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 327702;
  if (*(a1 + 232) && *(a1 + 224))
  {
    v8[1] = a3;
    v9 = 0xAAAAAAAAAAAAAA00;
    v8[0] = a2;
    v4 = X509CertificateParseGeneralNamesContent(a1, CTCompareGeneralNameToHostname, v8);
    if (v9)
    {
      v5 = 0;
    }

    else
    {
      v5 = 327706;
    }

    if (v4)
    {
      v3 = v4;
    }

    else
    {
      v3 = v5;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t CTCompareGeneralNameToHostname(uint64_t result, uint64_t *a2, void *a3)
{
  if (result != 2)
  {
    return 1;
  }

  v3 = *a3;
  v4 = a3[1];
  v5 = ~*a3;
  if (v4 > v5)
  {
    goto LABEL_55;
  }

  v6 = &v3[v4];
  if (&v3[v4] == -1)
  {
    goto LABEL_55;
  }

  v7 = v6 - 1;
  if (v6)
  {
    v8 = v7 >= v3;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_54;
  }

  if (a3 + 3 < a3)
  {
    goto LABEL_54;
  }

  v9 = a3 + 2;
  if (a3 + 2 < a3)
  {
    goto LABEL_54;
  }

  v11 = *v7;
  result = compare_octet_string(a2, a3);
  if (!result)
  {
    goto LABEL_53;
  }

  if (v11 != 46)
  {
    goto LABEL_16;
  }

  v12 = v4 - 1;
  if (v4)
  {
    if (v12 <= v4)
    {
      result = compare_octet_string_raw(a2, v3, v12);
      if (result)
      {
LABEL_16:
        v13 = a2[1];
        if (v13 < 3)
        {
          return 1;
        }

        v14 = *a2;
        if (**a2 != 42)
        {
          return 1;
        }

        if (v14 != -1)
        {
          if (v14[1] == 46)
          {
            v15 = -2;
            if (v14 < 0xFFFFFFFFFFFFFFFELL)
            {
              v15 = *a2;
            }

            v16 = -v15;
            v17 = 2;
            result = 1;
            while (v16 != v17)
            {
              if (v14[v17] == 46)
              {
                if (v13 == v17)
                {
                  return 1;
                }

                v18 = 0;
                if (v4)
                {
                  while (1)
                  {
                    v19 = &v3[v18];
                    if (&v3[v18] >= v6 || v19 < v3)
                    {
                      goto LABEL_54;
                    }

                    if (*v19 == 46)
                    {
                      break;
                    }

                    if (v4 == ++v18)
                    {
                      v18 = v4;
                      break;
                    }
                  }
                }

                v21 = v13 - 1;
                v8 = v4 >= v18;
                v22 = v4 - v18;
                if (!v8)
                {
                  goto LABEL_56;
                }

                if (v21 == v22)
                {
                  if (v18 > v5)
                  {
                    goto LABEL_55;
                  }

                  v23 = &v3[v18];
                  if (&v3[v18] > v6 || v3 > v23)
                  {
                    goto LABEL_54;
                  }

                  result = memcmp(v14 + 1, v23, v13 - 1);
                  if (!result)
                  {
                    goto LABEL_53;
                  }
                }

                if (v11 != 46)
                {
                  return 1;
                }

                if (!v22)
                {
                  goto LABEL_56;
                }

                if (v21 != v22 - 1)
                {
                  return 1;
                }

                if (v18 > v5)
                {
                  goto LABEL_55;
                }

                v24 = &v3[v18];
                if (&v3[v18] > v6 || v3 > v24 || v21 > v22)
                {
                  goto LABEL_54;
                }

                if (!memcmp(v14 + 1, v24, v21))
                {
                  goto LABEL_53;
                }

                return 1;
              }

              if (v13 == ++v17)
              {
                return result;
              }
            }

            goto LABEL_55;
          }

          return 1;
        }

LABEL_55:
        __break(0x5513u);
        goto LABEL_56;
      }

LABEL_53:
      result = 0;
      *v9 = 1;
      return result;
    }

LABEL_54:
    __break(0x5519u);
    goto LABEL_55;
  }

LABEL_56:
  __break(0x5515u);
  return result;
}

uint64_t CTEvaluateAppleSSLWithOptionalTemporalCheck(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0xAAAAAAAA00AAAA01;
  v22 = &null_octet;
  v20 = xmmword_25631ECD0;
  BYTE1(v21) = a6;
  BYTE2(v21) = a7;
  v23 = &null_octet;
  v24 = &null_octet;
  v25 = &CTOctetServerAuthEKU;
  v18 = 0;
  v19 = 0;
  result = CTEvaluateCertsForPolicy(a1, a2, a6, 1, &v18, &v19, 0, 0, 0, 0, &v20);
  if (result)
  {
LABEL_6:
    v14 = *MEMORY[0x277D85DE8];
    return result;
  }

  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[17] = v13;
  v17[18] = v13;
  v17[15] = v13;
  v17[16] = v13;
  v17[13] = v13;
  v17[14] = v13;
  v17[11] = v13;
  v17[12] = v13;
  v17[9] = v13;
  v17[10] = v13;
  v17[7] = v13;
  v17[8] = v13;
  v17[6] = v13;
  v17[4] = v13;
  v17[5] = v13;
  v17[2] = v13;
  v17[3] = v13;
  v17[0] = v13;
  v17[1] = v13;
  memset(v16, 170, sizeof(v16));
  if (!__CFADD__(a1, a2))
  {
    v15[0] = a1;
    v15[1] = a1 + a2;
    result = X509ChainParseCertificateSet(v15, v17, 1, &v16[1], v16);
    if (!result)
    {
      result = CTVerifyAppleMarkerExtension(v17, a5);
      if (!result)
      {
        result = CTVerifyHostname(v17, a3, a4);
      }
    }

    goto LABEL_6;
  }

  __break(0x5513u);
  return result;
}

uint64_t CTGetSEKType(unint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_10:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_10;
  }

  v4[0] = a1;
  v4[1] = a1 + a2;
  if (X509CertificateParse(v5, v4))
  {
    result = 0;
  }

  else if (compare_octet_string(&v5[10] + 8, &SEKTestRootSKID))
  {
    result = compare_octet_string(&v5[10] + 8, &SEKProdRootSKID) == 0;
  }

  else
  {
    result = 2;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CTEvaluateSEK(char a1, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = 327712;
  if ((a1 & 3) != 0)
  {
    if ((a1 & 1) == 0 || (result = CTEvaluateCertsForPolicy(a2, a3, 0, 0, a4, a5, 0, 0, 0, 0, X509PolicySEK), result))
    {
      if ((a1 & 2) != 0)
      {
        return CTEvaluateCertsForPolicy(a2, a3, 0, 0, a4, a5, &SEKTestRoot_public_key, 97, 0, 0, X509PolicySEK);
      }
    }
  }

  return result;
}

uint64_t CTGetICDPFederationType(unint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  memset(v11, 0, sizeof(v11));
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
LABEL_20:
    __break(0x5513u);
  }

  if (a1 + a2 < a1)
  {
LABEL_19:
    __break(0x5519u);
    goto LABEL_20;
  }

  v9 = a1;
  v10 = a1 + a2;
  if (X509CertificateParse(v11, &v9) || (v4 = numICDPRoots, !numICDPRoots))
  {
LABEL_4:
    result = 0;
  }

  else
  {
    v5 = icdpFederationAnchors;
    while (1)
    {
      v6 = v5 + 3;
      if (v5 < icdpFederationAnchors || v6 > &off_2798360C0 || v5 >= v6)
      {
        goto LABEL_19;
      }

      if (!compare_octet_string(&v11[10] + 8, *v5))
      {
        break;
      }

      v5 += 3;
      if (!--v4)
      {
        goto LABEL_4;
      }
    }

    result = v5[2];
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CTEvaluateICDPFederation(uint64_t result, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if ((result & 0x7F) == 0)
  {
    return 327712;
  }

  v5 = numICDPRoots;
  if (!numICDPRoots)
  {
    return 327712;
  }

  v6 = 0;
  v7 = 0;
  v8 = off_279836030;
  while (1)
  {
    v9 = v8 - 3 < icdpFederationAnchors || v8 > &off_2798360C0;
    if (v9 || v8 - 3 >= v8)
    {
      break;
    }

    if (*(v8 - 1) == result)
    {
      v6 = *(v8 - 2);
      v7 = (v6 + 2);
    }

    v8 += 3;
    if (!--v5)
    {
      if (!v6)
      {
        return 327712;
      }

      if ((v6 + 2) <= v7)
      {
        return CTEvaluateCertsForPolicy(a2, a3, 0, 0, a4, a5, *v6, v6[1], 0, 0, X509PolicyICDPFederation);
      }

      break;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t CTCopyUID(uint64_t result, _BYTE *a2, uint64_t a3)
{
  v5 = *result;
  v4 = *(result + 8);
  if (__CFADD__(*result, v4))
  {
    goto LABEL_31;
  }

  v6 = v5 + v4;
  v7 = *result;
  if (v5 < v6)
  {
    while (v7 >= v5)
    {
      v3 = *v7;
      if (v3 != 45 && ++v7 < v6)
      {
        continue;
      }

      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_6:
  if (v7 == -1)
  {
    goto LABEL_31;
  }

  v8 = v7 + 1;
  v3 = 327693;
  result = 327693;
  if ((v7 + 1) >= v6)
  {
    return result;
  }

  if (a3 < 0 || v5 > v8)
  {
LABEL_34:
    __break(0x5519u);
    return result;
  }

  if (__CFADD__(v8, v6 - v8))
  {
    goto LABEL_31;
  }

  if (v6 - v8 != 2 * a3)
  {
    return (v3 + 1);
  }

  if (__CFADD__(a2, a3) || v7 == -2)
  {
LABEL_31:
    __break(0x5513u);
    return (v3 + 1);
  }

  v9 = v7 + 2;
  v10 = a2;
  while (1)
  {
    result = 0;
    if (v9 >= v6 || v10 >= &a2[a3])
    {
      return result;
    }

    v11 = v9 - 1;
    if ((v9 - 1) >= v6 || v11 < v8)
    {
      goto LABEL_34;
    }

    v12 = &asciiNibbleToByte[*v11];
    result = &CTOidAppleImg4Manifest;
    if (v12 >= &CTOidAppleImg4Manifest || v12 < asciiNibbleToByte)
    {
      goto LABEL_34;
    }

    if (v11 < v7)
    {
      goto LABEL_34;
    }

    v14 = &asciiNibbleToByte[*v9];
    result = &CTOidAppleImg4Manifest;
    if (v14 >= &CTOidAppleImg4Manifest || v14 < asciiNibbleToByte)
    {
      goto LABEL_34;
    }

    v15 = *v12;
    result = 327695;
    if (v15 > 0xF)
    {
      return result;
    }

    v16 = *v14;
    if (v16 > 0xF)
    {
      return result;
    }

    if (v10 < a2)
    {
      goto LABEL_34;
    }

    *v10++ = v16 | (16 * v15);
    v9 += 2;
    if (!v9)
    {
      goto LABEL_31;
    }
  }
}

uint64_t X509ExtensionParseExtendedKeyUsage(unint64_t *a1, unint64_t *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = ccder_blob_decode_tl();
  result = 0;
  if (!v6)
  {
    goto LABEL_10;
  }

  if (*a1 > a1[1])
  {
    goto LABEL_11;
  }

  v11 = *a1;
  v12 = a1[1];
  result = ccder_blob_decode_tl();
  if (!result)
  {
LABEL_10:
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (v12 < v11 || v12 - v11 < 0xAAAAAAAAAAAAAAAALL)
  {
LABEL_11:
    __break(0x5519u);
  }

  *a2 = v11;
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  v8 = *a1;
  if (*a1 < 0x5555555555555556)
  {
    v9 = v8 - 0x5555555555555556;
    if (v8 <= v8 - 0x5555555555555556 && v9 <= a1[1])
    {
      *a1 = v9;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  __break(0x5513u);
  return result;
}

uint64_t X509ExtensionParseSubjectAltName(unint64_t *a1, unint64_t *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (result != 1)
  {
    goto LABEL_12;
  }

  v7 = a1[1];
  v8 = v7 >= *a1;
  v9 = v7 - *a1;
  if (!v8 || v9 < 0xAAAAAAAAAAAAAAAALL)
  {
LABEL_13:
    __break(0x5519u);
  }

  *a2 = *a1;
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  v11 = *a1;
  if (*a1 < 0x5555555555555556)
  {
    v12 = v11 - 0x5555555555555556;
    if (v11 <= v11 - 0x5555555555555556 && v12 <= a1[1])
    {
      *a1 = v12;
LABEL_12:
      v14 = *MEMORY[0x277D85DE8];
      return result;
    }

    goto LABEL_13;
  }

  __break(0x5513u);
  return result;
}

uint64_t X509CertificateParseWithExtension(unint64_t *a1, unint64_t *a2, const void *a3, size_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = 720939;
  v9 = *a2;
  v10 = a2[1];
  if (!ccder_blob_decode_tl())
  {
    goto LABEL_9;
  }

  v11 = *a2;
  result = X509CertificateParseImplicit(a1, a2, a3, a4);
  v8 = result;
  if (result)
  {
    goto LABEL_9;
  }

  if (v11 >= 0x5555555555555556)
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5500u);
    goto LABEL_12;
  }

  v8 = 720939;
  if (*a2 != v11 - 0x5555555555555556)
  {
LABEL_9:
    v14 = *MEMORY[0x277D85DE8];
    return v8;
  }

  v13 = v11 - v9 - 0x5555555555555556;
  if (v11 - v9 >= 0x5555555555555556)
  {
    goto LABEL_11;
  }

  if (v10 >= v9 && v13 <= v10 - v9)
  {
    *a1 = v9;
    a1[1] = v13;
    X509PolicyCheckForBlockedKeys(a1);
    v8 = 0;
    goto LABEL_9;
  }

LABEL_12:
  __break(0x5519u);
  return result;
}

uint64_t X509CertificateParseSPKI(unint64_t *a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = a1[1];
  if (__CFADD__(*a1, v5))
  {
    goto LABEL_31;
  }

  v6 = v4 + v5;
  if (v4 > v6)
  {
    goto LABEL_30;
  }

  v10 = 655361;
  v15 = *a1;
  v16 = v6;
  if (!ccder_blob_decode_tl())
  {
    goto LABEL_29;
  }

  if (!ccder_blob_decode_tl())
  {
    v10 = 655363;
    goto LABEL_29;
  }

  if (v15 >= 0x5555555555555556)
  {
LABEL_31:
    __break(0x5513u);
  }

  if (v15 > v15 - 0x5555555555555556 || v15 - 0x5555555555555556 > v16)
  {
    goto LABEL_30;
  }

  v14 = v15 - 0x5555555555555556;
  if (!ccder_blob_decode_tl())
  {
    v10 = 655362;
    goto LABEL_29;
  }

  if (a2)
  {
    if (v14 >= v15)
    {
      *a2 = v15;
      a2[1] = 0xAAAAAAAAAAAAAAAALL;
      goto LABEL_12;
    }

LABEL_30:
    __break(0x5519u);
    goto LABEL_31;
  }

LABEL_12:
  v11 = v15 - 0x5555555555555556;
  if (v15 > v15 - 0x5555555555555556 || v11 > v14)
  {
    goto LABEL_30;
  }

  if (v11 == v14)
  {
    if (a3)
    {
      *a3 = 0;
      a3[1] = 0;
    }
  }

  else if (a3)
  {
    *a3 = v11;
    a3[1] = v14 - v11;
  }

  if (v14 > v16 || v15 > v14)
  {
    goto LABEL_30;
  }

  if (ccder_blob_decode_bitstring())
  {
    *a4 = 0;
    a4[1] = 0;
    if (v14 == v16)
    {
      v10 = 0;
    }

    else
    {
      v10 = 655365;
    }
  }

  else
  {
    v10 = 655364;
  }

LABEL_29:
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t X509CertificateParseKey(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  result = 327691;
  if (!a1 || !*(a1 + 96))
  {
LABEL_8:
    v8 = *MEMORY[0x277D85DE8];
    return result;
  }

  result = a1 + 88;
  v9 = 0;
  v10 = 0;
  if (a1 + 88 <= (a1 + 104))
  {
    result = X509CertificateParseSPKI(result, 0, 0, &v9);
    if (!result && a2)
    {
      if (a3)
      {
        v7 = v10;
        *a2 = v9;
        *a3 = v7;
      }
    }

    goto LABEL_8;
  }

  __break(0x5519u);
  return result;
}

uint64_t X509CertificateCheckSignatureDigest(char a1, uint64_t a2, void *a3, __int128 *a4, __int128 *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v21 = 0uLL;
  v20 = 0uLL;
  v18 = 0;
  v19 = 0;
  if (a2 + 88 > (a2 + 104))
  {
    goto LABEL_22;
  }

  v9 = X509CertificateParseSPKI((a2 + 88), &v21, &v20, &v18);
  if (!v9)
  {
    v9 = 655632;
    v12 = compare_octet_string(&v21, &rsaEncryption);
    v13 = validateSignatureRSA;
    if (v12)
    {
      v14 = compare_octet_string(&v21, &ecPublicKey);
      v13 = validateSignatureEC;
      if (v14)
      {
        v9 = 655617;
        goto LABEL_3;
      }
    }

    if (v15 = v13, v17 = *a5, v16 = *a4, (a1) && !compare_octet_string_raw(a4, &CTOidSha1, 5uLL) || (a1 & 4) != 0 && !compare_octet_string_raw(a4, &CTOidSha256, 9uLL) || (a1 & 8) != 0 && !compare_octet_string_raw(a4, &CTOidSha384, 9uLL) || (a1 & 0x10) != 0 && !compare_octet_string_raw(a4, &CTOidSha512, 9uLL))
    {
      if ((v19 || !v18) && (a3[1] || !*a3))
      {
        if (v15(v18))
        {
          v9 = 0;
        }

        else
        {
          v9 = 655648;
        }

        goto LABEL_3;
      }

LABEL_22:
      __break(0x5519u);
    }
  }

LABEL_3:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t X509CertificateCheckSignature(char a1, uint64_t a2, uint64_t *a3, uint64_t a4, __int128 *a5)
{
  v14 = *MEMORY[0x277D85DE8];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13[2] = v8;
  v13[3] = v8;
  v13[0] = v8;
  v13[1] = v8;
  v12[0] = v13;
  v12[1] = 64;
  v11 = 0uLL;
  result = X509MatchSignatureAlgorithm(a3, a4, v12, &v11);
  if (!result)
  {
    result = X509CertificateCheckSignatureDigest(a1, a2, v12, &v11, a5);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509MatchSignatureAlgorithm(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = compare_octet_string_raw(a2, &sha1WithRSA_oid, 9uLL);
  if (!result)
  {
    goto LABEL_8;
  }

  result = compare_octet_string_raw(a2, &sha256WithRSA_oid, 9uLL);
  if (!result)
  {
LABEL_10:
    *a4 = &CTOidSha256;
    a4[1] = 9;
    if (*(a3 + 8) < 0x20uLL)
    {
      goto LABEL_15;
    }

    *(a3 + 8) = 32;
    ccsha256_di();
    goto LABEL_14;
  }

  result = compare_octet_string_raw(a2, &sha384WithRSA_oid, 9uLL);
  if (!result)
  {
    goto LABEL_12;
  }

  result = compare_octet_string_raw(a2, &sha1WithECDSA_oid, 7uLL);
  if (!result)
  {
LABEL_8:
    *a4 = &CTOidSha1;
    a4[1] = 5;
    if (*(a3 + 8) < 0x14uLL)
    {
      goto LABEL_15;
    }

    *(a3 + 8) = 20;
    ccsha1_di();
LABEL_14:
    v10 = *a1;
    v9 = a1[1];
    ccdigest();
    return 0;
  }

  result = compare_octet_string_raw(a2, &sha256WithECDSA_oid, 8uLL);
  if (!result)
  {
    goto LABEL_10;
  }

  result = compare_octet_string_raw(a2, &sha384WithECDSA_oid, 8uLL);
  if (result)
  {
    return 656640;
  }

LABEL_12:
  *a4 = &CTOidSha384;
  a4[1] = 9;
  if (*(a3 + 8) >= 0x30uLL)
  {
    *(a3 + 8) = 48;
    ccsha384_di();
    goto LABEL_14;
  }

LABEL_15:
  __break(0x5519u);
  return result;
}

uint64_t X509CertificateCheckSignatureWithPublicKey(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t *a4, __int128 *a5, __int128 *a6)
{
  v25 = *MEMORY[0x277D85DE8];
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[2] = v11;
  v24[3] = v11;
  v24[0] = v11;
  v24[1] = v11;
  v22 = v24;
  v23 = 64;
  v21 = 0uLL;
  matched = X509MatchSignatureAlgorithm(a4, a5, &v22, &v21);
  if (matched)
  {
    goto LABEL_13;
  }

  matched = 655617;
  v13 = compare_octet_string(a2, &rsaEncryption);
  v14 = validateSignatureRSA;
  if (v13)
  {
    v15 = compare_octet_string(a2, &ecPublicKey);
    v14 = validateSignatureEC;
    if (v15)
    {
      goto LABEL_13;
    }
  }

  v19 = *a5;
  v20 = *a6;
  if (a3)
  {
    v16 = *a3;
  }

  result = *a1;
  if ((a1[1] || !result) && (!v22 || v23))
  {
    if (v14(result))
    {
      matched = 0;
    }

    else
    {
      matched = 655648;
    }

LABEL_13:
    v18 = *MEMORY[0x277D85DE8];
    return matched;
  }

  __break(0x5519u);
  return result;
}

uint64_t X509CertificateParseGeneralNamesContent(uint64_t a1, uint64_t (*a2)(void, int *, uint64_t), uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 224);
  v4 = *(a1 + 232);
  if (__CFADD__(v3, v4))
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5519u);
  }

  v5 = v3 + v4;
  if (v3 > v5)
  {
    goto LABEL_11;
  }

  v11 = *(a1 + 224);
  v12 = v5;
  while (1)
  {
    if (v11 >= v12)
    {
LABEL_7:
      result = 0;
      goto LABEL_9;
    }

    memset(v10, 170, sizeof(v10));
    if ((ccder_blob_decode_GeneralName(&v11, v10, &v10[1]) & 1) == 0)
    {
      break;
    }

    if ((a2(v10[0], &v10[1], a3) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  result = 720912;
LABEL_9:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509CertificateSubjectNameGetCommonName(unint64_t *a1, unint64_t *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  v21 = v3;
  if (__CFADD__(*a1, v3))
  {
    goto LABEL_61;
  }

  v4 = v2 + v3;
  if (v2 > v4)
  {
    goto LABEL_60;
  }

  v19 = *a1;
  v20 = v4;
  *a2 = 0;
  a2[1] = 0;
  if (a2 + 2 < a2)
  {
    goto LABEL_60;
  }

  v6 = 720901;
  if (v2 < v4)
  {
    while (1)
    {
      if (!ccder_blob_decode_tl() || !v21)
      {
        v6 = 720898;
        goto LABEL_59;
      }

      v2 = v19;
      if (__CFADD__(v19, v21))
      {
        break;
      }

      v7 = v19 + v21;
      if (v19 > v19 + v21 || v7 > v20)
      {
        goto LABEL_60;
      }

      v17 = v19;
      v18 = v19 + v21;
      while (v2 < v7)
      {
        if (!ccder_blob_decode_tl())
        {
          v6 = 720899;
          goto LABEL_59;
        }

        if (__CFADD__(v17, v21))
        {
          goto LABEL_61;
        }

        if (v17 > v17 + v21 || v17 + v21 > v18)
        {
          goto LABEL_60;
        }

        v16 = v17 + v21;
        if (!ccder_blob_decode_tl())
        {
          v6 = 720900;
          goto LABEL_59;
        }

        v2 = v17 + v21;
        if (v17 > v16)
        {
          goto LABEL_60;
        }

        if (__CFADD__(v17, v21))
        {
          goto LABEL_61;
        }

        if (v17 > v17 + v21)
        {
          goto LABEL_60;
        }

        v15 = v17 + v21;
        if (v21 == 3 && *v17 == 1109 && *(v17 + 2) == 3)
        {
          v13 = v17 + v21;
          v14 = v17 + v21;
          if ((ccder_blob_decode_tl() & 1) == 0)
          {
            if (v15 > v16)
            {
              goto LABEL_60;
            }

            v13 = v17 + v21;
            v14 = v17 + v21;
            if ((ccder_blob_decode_tl() & 1) == 0)
            {
              if (v15 > v16)
              {
                goto LABEL_60;
              }

              v13 = v17 + v21;
              v14 = v17 + v21;
              if (!ccder_blob_decode_tl())
              {
                goto LABEL_59;
              }
            }
          }

          if (__CFADD__(v13, v21))
          {
            goto LABEL_61;
          }

          v2 = v17 + v21;
          if (v16 != v13 + v21)
          {
            v6 = 720902;
            goto LABEL_59;
          }

          if (v14 < v13 || v21 > v14 - v13)
          {
            goto LABEL_60;
          }

          *a2 = v13;
          a2[1] = v21;
        }

        v7 = v19 + v21;
        if (v2 > v18 || v17 > v2)
        {
          goto LABEL_60;
        }

        v17 = v2;
      }

      if (v2 != v7)
      {
        v6 = 720903;
        goto LABEL_59;
      }

      v4 = v20;
      if (v2 > v20 || v19 > v2)
      {
        goto LABEL_60;
      }

      v19 = v2;
      if (v2 >= v20)
      {
        goto LABEL_47;
      }
    }

LABEL_61:
    __break(0x5513u);
  }

LABEL_47:
  if (v2 == v4)
  {
    if (a2[1] && *a2)
    {
      v6 = 0;
      goto LABEL_59;
    }

    *a2 = 0;
    a2[1] = 0;
    if (a2 + 2 >= a2)
    {
      v6 = 720905;
      goto LABEL_59;
    }

LABEL_60:
    __break(0x5519u);
    goto LABEL_61;
  }

  v6 = 720904;
LABEL_59:
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL X509CertificateValidAtTime(uint64_t a1, time_t a2)
{
  result = 0;
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7[0] = 0;
  if (a1 && a2 != -1)
  {
    result = !X509CertificateGetNotBefore(a1, v7) && !X509CertificateGetNotAfter(a1, &v6) && difftime(a2, v7[0]) >= 0.0 && difftime(a2, v6) <= 0.0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509CertificateGetNotBefore(uint64_t a1, time_t *a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  v5[1] = 0xAAAAAAAAAAAAAAAALL;
  result = X509CertificateParseValidity(a1);
  if (!result)
  {
    result = X509TimeConvert(v5, a2);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509CertificateGetNotAfter(uint64_t a1, time_t *a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  v5[1] = 0xAAAAAAAAAAAAAAAALL;
  result = X509CertificateParseValidity(a1);
  if (!result)
  {
    result = X509TimeConvert(v5, a2);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL X509CertificateIsValid(uint64_t a1)
{
  v2 = time(0);

  return X509CertificateValidAtTime(a1, v2);
}

uint64_t X509CertificateParseValidity(uint64_t result)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v1 = 720906;
  if (!result)
  {
    goto LABEL_13;
  }

  v2 = *(result + 72);
  v3 = *(result + 80);
  if (!v2 || v3 == 0)
  {
    goto LABEL_13;
  }

  if (__CFADD__(v2, v3))
  {
    __break(0x5513u);
  }

  else
  {
    v5 = v2 + v3;
    if (v2 <= v5)
    {
      v7[0] = *(result + 72);
      v7[1] = v5;
      if (ccder_blob_decode_Time(v7))
      {
        if (ccder_blob_decode_Time(v7))
        {
          v1 = 0;
        }

        else
        {
          v1 = 720908;
        }
      }

      else
      {
        v1 = 720907;
      }

LABEL_13:
      v6 = *MEMORY[0x277D85DE8];
      return v1;
    }
  }

  __break(0x5519u);
  return result;
}

char *X509TimeConvert(uint64_t *a1, time_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = 720909;
  if (!a1)
  {
    goto LABEL_19;
  }

  v4 = a1[1];
  if ((v4 | 2) != 0xF)
  {
    goto LABEL_19;
  }

  v13.tm_zone = 0xAAAAAAAAAAAAAAAALL;
  *v14 = 0;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v13.tm_mon = v6;
  *&v13.tm_isdst = v6;
  *&v13.tm_sec = v6;
  v15 = 0;
  v7 = *a1;
  result = __memcpy_chk();
  if (result > &result[v4])
  {
    goto LABEL_24;
  }

  v9 = &v14[v4];
  if (&v14[v4] >= &v16 || &v14[v4] < v14)
  {
    goto LABEL_24;
  }

  if (v4 > 0xF)
  {
    __break(1u);
    goto LABEL_26;
  }

  v14[v4] = 0;
  if (v4 != 13)
  {
    if (v9 + 1 >= v9 && v9 + 1 <= &v16)
    {
      result = strptime(v14, "%Y%m%d%H%M%SZ", &v13);
      goto LABEL_15;
    }

LABEL_24:
    __break(0x5519u);
  }

  if (BYTE5(v15))
  {
    goto LABEL_24;
  }

  result = strptime(v14, "%y%m%d%H%M%SZ", &v13);
  if (result && v13.tm_year >= 150)
  {
    v13.tm_year -= 100;
  }

LABEL_15:
  v10 = a1[1];
  if (v10 >= 0x11)
  {
LABEL_26:
    __break(0x5512u);
    goto LABEL_27;
  }

  if (!__CFADD__(v14, v10))
  {
    if (result == &v14[v10])
    {
      v12 = timegm(&v13);
      if (v12 == -1)
      {
        v2 = 720911;
      }

      else
      {
        v2 = 0;
        if (a2)
        {
          *a2 = v12;
        }
      }
    }

    else
    {
      v2 = 720910;
    }

LABEL_19:
    v11 = *MEMORY[0x277D85DE8];
    return v2;
  }

LABEL_27:
  __break(0x5513u);
  return result;
}

BOOL X509ExtensionParseComponentAuth(unint64_t *a1, void *a2, unint64_t *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  if (*a1 > v3)
  {
    goto LABEL_19;
  }

  v14 = *a1;
  v15 = a1[1];
  v13 = v3 - *a1;
  if (ccder_blob_decode_tl())
  {
    goto LABEL_5;
  }

  if (*a1 > a1[1])
  {
    goto LABEL_19;
  }

  v14 = *a1;
  v15 = a1[1];
  if (ccder_blob_decode_tl())
  {
LABEL_5:
    v8 = v14;
    v7 = v15;
    if (v14 > v15)
    {
      goto LABEL_19;
    }

    *a1 = v14;
    a1[1] = v15;
    v9 = v13;
  }

  else
  {
    v8 = *a1;
    v7 = a1[1];
    v9 = v7 - *a1;
  }

  if (__CFADD__(v8, v9))
  {
    goto LABEL_20;
  }

  v10 = v8 + v9;
  if (v7 == v8 + v9)
  {
    if (!v9)
    {
      goto LABEL_16;
    }

    if (!a3)
    {
LABEL_15:
      *a2 |= 0x40000000uLL;
LABEL_16:
      if (v8 <= v7)
      {
        *a1 = v10;
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    if (v8 <= v7 && v9 <= v7 - v8)
    {
      *a3 = v8;
      a3[1] = v9;
      goto LABEL_15;
    }

LABEL_19:
    __break(0x5519u);
LABEL_20:
    __break(0x5513u);
  }

LABEL_18:
  result = v7 == v10;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509ExtensionParseCertifiedChipIntermediate(unint64_t *a1, void *a2, unint64_t *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_10;
  }

  v7 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
    goto LABEL_12;
  }

  v8 = v7 - 0x5555555555555556;
  if (a1[1] != v7 - 0x5555555555555556)
  {
    result = 0;
LABEL_10:
    v9 = *MEMORY[0x277D85DE8];
    return result;
  }

  *a2 |= 0x30000000000uLL;
  if (a3)
  {
    if (v7 > v8)
    {
      goto LABEL_12;
    }

    *a3 = v7;
    a3[1] = 0xAAAAAAAAAAAAAAAALL;
  }

  if (v7 <= v8)
  {
    *a1 = v8;
    result = 1;
    goto LABEL_10;
  }

LABEL_12:
  __break(0x5519u);
  return result;
}

uint64_t X509ExtensionParseMFISWAuth(unint64_t *a1, void *a2, unint64_t *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_11;
  }

  v7 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
  }

  else
  {
    v8 = a1[1];
    if (v8 != v7 - 0x5555555555555556)
    {
      result = 0;
LABEL_11:
      v9 = *MEMORY[0x277D85DE8];
      return result;
    }

    if (a3)
    {
      if (v8 < v7 || v8 - v7 < 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_13;
      }

      *a3 = v7;
      a3[1] = 0xAAAAAAAAAAAAAAAALL;
    }

    *a2 |= 0x30000000uLL;
    if (v7 <= v8)
    {
      *a1 = v7 - 0x5555555555555556;
      result = 1;
      goto LABEL_11;
    }
  }

LABEL_13:
  __break(0x5519u);
  return result;
}