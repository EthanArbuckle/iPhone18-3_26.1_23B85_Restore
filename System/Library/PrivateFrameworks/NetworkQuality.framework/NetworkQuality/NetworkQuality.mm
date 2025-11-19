const char *NetworkQualityStages_to_string(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return "UnknownStage";
  }

  else
  {
    return off_2799694F8[a1];
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25B967EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 224), 8);
  _Block_object_dispose((v39 - 192), 8);
  _Block_object_dispose((v39 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __getSymptomReporter_block_invoke()
{
  result = symptom_framework_init();
  getSymptomReporter_symptomReporter = result;
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

uint64_t CreateSelfSignedIdentity(void *a1, void **a2, CFArrayRef *a3)
{
  v41[2] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = *MEMORY[0x277CDC060];
  v7 = *MEMORY[0x277CDC018];
  v40[0] = *MEMORY[0x277CDC028];
  v40[1] = v7;
  v41[0] = v6;
  v41[1] = &unk_286D22C88;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
  RandomKey = SecKeyCreateRandomKey(v8, 0);
  if (RandomKey)
  {
    v10 = RandomKey;
    v11 = SecKeyCopyPublicKey(RandomKey);
    if (v11)
    {
      v12 = v11;
      v31 = a3;
      v37[0] = *MEMORY[0x277CDC458];
      v37[1] = @"Apple Inc.";
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
      v38 = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
      v39[0] = v14;
      v35[0] = *MEMORY[0x277CDC448];
      v35[1] = v5;
      v32 = v5;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
      v36 = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
      v39[1] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];

      v33 = *MEMORY[0x277CDC210];
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:7];
      v34 = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];

      SelfSignedCertificate = SecGenerateSelfSignedCertificate();
      if (SelfSignedCertificate)
      {
        v21 = SelfSignedCertificate;
        v22 = SecIdentityCreate();
        if (v22)
        {
          v23 = v22;
          v24 = [MEMORY[0x277CBEA60] arrayWithObject:v21];
          v25 = *v31;
          *v31 = v24;

          v26 = sec_identity_create_with_certificates(v23, *v31);
          v27 = *a2;
          *a2 = v26;

          CFRelease(v23);
          CFRelease(v21);
          v28 = 0;
LABEL_18:
          v5 = v32;
          CFRelease(v12);
          CFRelease(v10);

          goto LABEL_19;
        }

        netqual_log_init();
        if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
        {
          CreateSelfSignedIdentity_cold_1();
        }

        CFRelease(v21);
      }

      else
      {
        netqual_log_init();
        if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
        {
          CreateSelfSignedIdentity_cold_2();
        }
      }

      v28 = 4294966387;
      goto LABEL_18;
    }

    netqual_log_init();
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      CreateSelfSignedIdentity_cold_3();
    }

    CFRelease(v10);
  }

  else
  {
    netqual_log_init();
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      CreateSelfSignedIdentity_cold_4();
    }
  }

  v28 = 4294966387;
LABEL_19:

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

const char *nw_connection_client_accurate_ecn_state_to_string(unsigned int a1)
{
  if (a1 > 9)
  {
    return "ecn_unknown_state";
  }

  else
  {
    return off_279969558[a1];
  }
}

const char *nw_interface_type_to_string(unsigned int a1)
{
  if (a1 > 4)
  {
    return "unknown";
  }

  else
  {
    return off_2799695A8[a1];
  }
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void sub_25B96FB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 216), 8);
  _Block_object_dispose((v34 - 184), 8);
  _Block_object_dispose((v34 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25B9722B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

float get_average(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v13;
      v6 = 0.0;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v12 + 1) + 8 * i) floatValue];
          v6 = v6 + v8;
        }

        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v4);
    }

    else
    {
      v6 = 0.0;
    }

    v9 = v6 / [v2 count];
  }

  else
  {
    v9 = 0.0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void netqual_log_init()
{
  if (netqual_log_init_onceToken != -1)
  {
    netqual_log_init_cold_1();
  }
}

uint64_t __netqual_log_init_block_invoke()
{
  os_log_netqual = os_log_create("com.apple.networkQuality", "netqual");

  return MEMORY[0x2821F96F8]();
}

void sub_25B973A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NetworkQualityNetworkServiceType_ToString(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return @"unknown";
  }

  else
  {
    return off_2799696C0[a1];
  }
}

void sub_25B9784C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void CreateSelfSignedIdentity_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25B962000, v0, v1, "%s:%u - SecIdentityCreate() failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void CreateSelfSignedIdentity_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25B962000, v0, v1, "%s:%u - SecGenerateSelfSignedCertificate() failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void CreateSelfSignedIdentity_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25B962000, v0, v1, "%s:%u - SecKeyCopyPublicKey failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void CreateSelfSignedIdentity_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25B962000, v0, v1, "%s:%u - SecKeyCreateRandomKey failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}