void sub_22EB0B9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22EB0C848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22EB0CDE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak(&a20);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22EB0D100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getACAccountStoreClass_block_invoke(uint64_t a1)
{
  v5[9] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AppleAccountLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AppleAccountLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v5[7] = 0;
    v5[8] = 0;
    v5[6] = "/System/Library/PrivateFrameworks/AppleAccount.framework/AppleAccount";
    AppleAccountLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AppleAccountLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
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
  result = objc_getClass("ACAccountStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getACAccountStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AppleAccountLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppleAccountLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22EB0EC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t CloudServicesLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!CloudServicesLibraryCore_frameworkLibrary)
  {
    CloudServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = CloudServicesLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t getSecureBackupIsGuitarfishEnabledSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getSecureBackupIsGuitarfishEnabledSymbolLoc_ptr;
  v6 = getSecureBackupIsGuitarfishEnabledSymbolLoc_ptr;
  if (!getSecureBackupIsGuitarfishEnabledSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getSecureBackupIsGuitarfishEnabledSymbolLoc_block_invoke;
    v2[3] = &unk_278863628;
    v2[4] = &v3;
    __getSecureBackupIsGuitarfishEnabledSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22EB0EDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_SecureBackupIsGuitarfishEnabled()
{
  IsGuitarfishEnabledSymbolLoc = getSecureBackupIsGuitarfishEnabledSymbolLoc();
  if (IsGuitarfishEnabledSymbolLoc)
  {

    return IsGuitarfishEnabledSymbolLoc();
  }

  else
  {
    dlerror();
    v2 = abort_report_np();
    return __49__KCPairingChannel_acceptorThirdPacket_complete___block_invoke_293(v2);
  }
}

void *__getSecureBackupIsGuitarfishEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudServicesLibraryCore();
  if (!v2)
  {
    v4 = abort_report_np();
    free(v4);
  }

  result = dlsym(v2, "SecureBackupIsGuitarfishEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSecureBackupIsGuitarfishEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CloudServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CloudServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22EB0F870(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 176));
  _Block_object_dispose((v2 - 168), 8);
  _Block_object_dispose((v2 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_22EB10590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  objc_destroyWeak((v58 + 88));
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose((v59 - 176), 8);
  _Block_object_dispose((v59 - 232), 8);
  objc_destroyWeak((v59 - 200));
  _Unwind_Resume(a1);
}

void sub_22EB1198C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22EB12D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose((v68 - 192), 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&a68, 8);
  objc_destroyWeak((v68 - 232));
  _Unwind_Resume(a1);
}

void sub_22EB14E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id location)
{
  objc_destroyWeak((v56 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22EB15E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22EB16C58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 216));
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_22EB17DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  objc_destroyWeak((v34 + 80));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v35 - 168), 8);
  _Block_object_dispose((v35 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_22EB18E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  objc_destroyWeak((v26 + 72));
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v27 - 120), 8);
  objc_destroyWeak((v27 - 88));
  _Unwind_Resume(a1);
}

void sub_22EB196A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  objc_destroyWeak((v31 + 64));
  _Block_object_dispose(&a31, 8);
  objc_destroyWeak((v32 - 136));
  _Unwind_Resume(a1);
}

void sub_22EB1A484(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_22EB1BF68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22EB1C534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t OTSupportOctagonMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t OTSponsorToApplicantRound2M2ReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___OTSponsorToApplicantRound2M2__voucherSignature;
LABEL_21:
        v14 = PBReaderReadData();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___OTSponsorToApplicantRound2M2__voucher;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void derive_and_init(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a4;
  v6 = a3;
  v11 = [MEMORY[0x277CBEB28] dataWithLength:*ccsha256_di()];
  [v6 length];
  [v6 bytes];

  [v5 length];
  [v5 bytes];

  [v11 length];
  v7 = v11;
  v10 = [v11 mutableBytes];
  if (!cchkdf())
  {
    v8 = v11;
    [v11 bytes];
    ccgcm_init();
    [v11 length];
    v9 = v11;
    [v11 mutableBytes];
    cc_clear();
  }
}

uint64_t __Block_byref_object_copy__377(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22EB242B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

unint64_t decode_seq_string_data(uint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    return 0;
  }

  v9 = ccder_decode_constructed_tl();
  if (!v9 || a5)
  {
    KCJoiningErrorCreate(1, a3, @"decode failed", v10, v11, v12, v13, v14, v17);
    return 0;
  }

  else
  {
    v15 = kcder_decode_string(a1, a3, v9, 0);
    return kcder_decode_data_internal(a2, 1, a3, v15, 0);
  }
}

unint64_t decode_seq_data_data(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    return 0;
  }

  v9 = ccder_decode_constructed_tl();
  if (!v9 || a5)
  {
    KCJoiningErrorCreate(1, a3, @"decode failed", v10, v11, v12, v13, v14, v17);
    return 0;
  }

  else
  {
    v15 = kcder_decode_data_internal(a1, 1, a3, v9, 0);
    return kcder_decode_data_internal(a2, 1, a3, v15, 0);
  }
}

uint64_t sizeof_seq_string_data(void *a1, void *a2)
{
  v3 = a2;
  [a1 lengthOfBytesUsingEncoding:4];
  v4 = ccder_sizeof();
  if (v4)
  {
    [v3 length];
    if (ccder_sizeof_raw_octet_string())
    {
      v4 = ccder_sizeof();
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

uint64_t encode_seq_string_data(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = kcder_encode_data(a2);
  kcder_encode_string(v7, a3, a4, v8);

  return ccder_encode_constructed_tl();
}

uint64_t sizeof_seq_data_data(void *a1, void *a2)
{
  v3 = a2;
  [a1 length];
  v4 = ccder_sizeof_raw_octet_string();
  if (v4)
  {
    [v3 length];
    if (ccder_sizeof_raw_octet_string())
    {
      v4 = ccder_sizeof();
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

uint64_t encode_seq_data_data(void *a1, void *a2)
{
  v3 = a1;
  kcder_encode_data(a2);
  kcder_encode_data(v3);

  return ccder_encode_constructed_tl();
}

id extractStartFromInitialMessage(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = [v9 bytes];
  v11 = [v9 length];

  v12 = v10 + v11;
  v33 = 0;
  v13 = decode_initialmessage(&v33, a5, v10, v12);
  v14 = v33;
  v15 = v14;
  if (!v13)
  {
    v23 = 0;
    goto LABEL_17;
  }

  if (v13 != v12)
  {
    v31 = 0;
    v32 = 0;
    v30 = 0;
    v16 = decode_version2(v14, &v31, &v30, &v32, a5, v13, v12);
    v17 = v31;
    v18 = v30;
    v19 = v18;
    if (v16)
    {
      v20 = v32;
      switch(v32)
      {
        case 0:
          *a2 = 0;
          goto LABEL_15;
        case 1:
LABEL_8:
          v22 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v17, "bytes")}];
          *a3 = [v22 UUIDString];
          *a2 = v20;

LABEL_15:
          goto LABEL_16;
        case 2:
          v21 = v18;
          *a4 = v19;
          goto LABEL_8;
      }

      v24 = secLogObjForScope("SecError");
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:

        goto LABEL_15;
      }

      *buf = 0;
      v25 = "unsupported version";
      v26 = v24;
      v27 = 2;
    }

    else
    {
      v24 = secLogObjForScope("SecError");
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 134217984;
      v35 = v32;
      v25 = "decoding piggybacking message failed for version (%llu)";
      v26 = v24;
      v27 = 12;
    }

    _os_log_impl(&dword_22EB09000, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
    goto LABEL_14;
  }

LABEL_16:
  v23 = v15;
LABEL_17:

  v28 = *MEMORY[0x277D85DE8];

  return v23;
}

unint64_t decode_initialmessage(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  if (!ccder_decode_constructed_tl() || a4)
  {
    v13 = @"Decoding failed";
  }

  else
  {
    v12 = ccder_decode_uint64();
    if (v12)
    {
      return kcder_decode_data_internal(a1, 1, a2, v12, a4);
    }

    v13 = @"Version mising";
  }

  KCJoiningErrorCreate(1, a2, v13, v7, v8, v9, v10, v11, v15);
  return 0;
}

unint64_t decode_version2(uint64_t a1, uint64_t a2, id *a3, void *a4, void *a5, uint64_t a6, unint64_t a7)
{
  v11 = decode_version1(a1, a2, a4, a5, a6);
  if (!v11)
  {
    v14 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 0;
      v15 = "error parsing version 1";
      v16 = &v22;
LABEL_16:
      _os_log_impl(&dword_22EB09000, v14, OS_LOG_TYPE_DEFAULT, v15, v16, 2u);
    }

LABEL_17:

    return 0;
  }

  v12 = v11;
  if (v11 != a7)
  {
    v13 = kcder_decode_data_internal(a3, 1, a5, v11, a7);
    if (v13)
    {
      v12 = v13;
      if (*a3 && [*a3 length])
      {
        *a4 = 2;
        return v12;
      }

      v14 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 0;
        v15 = "no octagon version set";
        v16 = &v19;
        goto LABEL_16;
      }
    }

    else
    {
      v14 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        v15 = "failed to decode v2";
        v16 = v20;
        goto LABEL_16;
      }
    }

    goto LABEL_17;
  }

  v17 = secLogObjForScope("octagon");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22EB09000, v17, OS_LOG_TYPE_DEFAULT, "first message is piggybacking v1, no more data", buf, 2u);
  }

  return v12;
}

uint64_t decode_version1(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a5)
  {
    return 0;
  }

  if (ccder_decode_uint64())
  {
    v14 = 0;
    v12 = @"Bad version: %llu";
    v13 = 8;
  }

  else
  {
    v12 = @"Version mising";
    v13 = 1;
  }

  KCJoiningErrorCreate(v13, a4, v12, v6, v7, v8, v9, v10, v14);
  return 0;
}

uint64_t sizeof_initialmessage(void *a1)
{
  v1 = a1;
  v2 = ccder_sizeof_uint64();
  if (v2)
  {
    [v1 length];
    if (ccder_sizeof_raw_octet_string())
    {
      v2 = ccder_sizeof();
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t encode_initialmessage(void *a1)
{
  kcder_encode_data(a1);
  ccder_encode_uint64();

  return ccder_encode_constructed_tl();
}

uint64_t sizeof_initialmessage_version2(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a1;
  v7 = a3;
  v8 = a4;
  v9 = ccder_sizeof_uint64();
  if (v9)
  {
    [v6 length];
    if (ccder_sizeof_raw_octet_string() && ccder_sizeof_uint64() && ([v7 length], ccder_sizeof_raw_octet_string()) && (objc_msgSend(v8, "length"), ccder_sizeof_raw_octet_string()))
    {
      v9 = ccder_sizeof();
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

uint64_t sizeof_initialmessage_version1(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  if (!ccder_sizeof_uint64())
  {
    goto LABEL_6;
  }

  [v4 length];
  if (!ccder_sizeof_raw_octet_string())
  {
    goto LABEL_6;
  }

  v6 = ccder_sizeof_uint64();
  if (v6)
  {
    [v5 length];
    if (ccder_sizeof_raw_octet_string())
    {
      v6 = ccder_sizeof();
      goto LABEL_7;
    }

LABEL_6:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

uint64_t encode_initialmessage_version1(void *a1, void *a2)
{
  v3 = a1;
  kcder_encode_data(a2);
  ccder_encode_uint64();
  kcder_encode_data(v3);

  ccder_encode_uint64();

  return ccder_encode_constructed_tl();
}

uint64_t encode_initialmessage_version2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1;
  kcder_encode_data(a3);
  kcder_encode_data(v5);

  ccder_encode_uint64();
  kcder_encode_data(v6);

  ccder_encode_uint64();

  return ccder_encode_constructed_tl();
}

uint64_t KCInitialMessageDataReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t OTSponsorToApplicantRound1M2ReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

unint64_t kcder_decode_data_internal(void *a1, char a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (!a4)
  {
    return 0;
  }

  v9 = ccder_decode_tl();
  v14 = 0;
  v16 = v9;
  if (!v9 || v9 > a5)
  {
    v17 = @"Unknown data encoding";
    v18 = 1;
LABEL_9:
    KCJoiningErrorCreate(v18, a3, v17, v14, v10, v11, v12, v13, v20);
    return 0;
  }

  if (a2)
  {
    [MEMORY[0x277CBEA90] dataWithBytes:v9 length:?];
  }

  else
  {
    [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v9 length:? freeWhenDone:?];
  }
  v19 = ;
  *a1 = v19;

  if (!*a1)
  {
    v17 = @"Allocation failure!";
    v18 = 0;
    goto LABEL_9;
  }

  return v16;
}

uint64_t kcder_sizeof_data(void *a1)
{
  [a1 length];

  return ccder_sizeof_raw_octet_string();
}

uint64_t kcder_encode_data_optional(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    return kcder_encode_data(a1);
  }

  else
  {
    return a4;
  }
}

uint64_t kcder_encode_data(void *a1)
{
  v1 = a1;
  [v1 length];
  [v1 length];
  [v1 bytes];

  ccder_encode_body();

  return ccder_encode_tl();
}

unint64_t kcder_decode_string(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v7 = ccder_decode_tl();
  v14 = v7;
  if (v7 && v7 <= a4)
  {
    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v7 length:0 encoding:4];
    *a1 = v15;
    if (v15)
    {
      return v14;
    }

    v16 = @"Allocation failure!";
  }

  else
  {
    v16 = @"Unknown string encoding";
    v15 = 1;
  }

  KCJoiningErrorCreate(v15, a2, v16, v8, v9, v10, v11, v12, v17);
  return 0;
}

uint64_t kcder_sizeof_string(void *a1)
{
  [a1 lengthOfBytesUsingEncoding:4];

  return ccder_sizeof();
}

uint64_t kcder_encode_string(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v6 = a4 - a3;
  v14 = 0;
  v7 = a1;
  [v7 length];
  LOBYTE(v6) = [v7 getBytes:a3 maxLength:v6 usedLength:&v14 encoding:4 options:0 range:? remainingRange:?];

  if (v6)
  {
    ccder_encode_body();
    return ccder_encode_tl();
  }

  else
  {
    KCJoiningErrorCreate(2, a2, @"String encoding failed", v8, v9, v10, v11, v12, 0);
    return 0;
  }
}

uint64_t kcder_encode_raw_octet_space(uint64_t a1, uint64_t *a2)
{
  v3 = ccder_encode_body_nocopy();
  if (a2 && v3)
  {
    *a2 = v3;
  }

  return ccder_encode_tl();
}

void sub_22EB2885C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__915(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22EB2A61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_22EB2A940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void KCJoiningErrorCreate(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a3;
  if (a2 && !*a2)
  {
    *a2 = [MEMORY[0x277CCA9B8] errorWithJoiningError:a1 format:v11 arguments:&a9];
  }
}

uint64_t OTSupportSOSMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t OTApplicantToSponsorRound2M1ReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = &OBJC_IVAR___OTApplicantToSponsorRound2M1__peerID;
          goto LABEL_28;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadData();
          v15 = &OBJC_IVAR___OTApplicantToSponsorRound2M1__permanentInfo;
          goto LABEL_28;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadData();
            v15 = &OBJC_IVAR___OTApplicantToSponsorRound2M1__permanentInfoSig;
            goto LABEL_28;
          case 4:
            v14 = PBReaderReadData();
            v15 = &OBJC_IVAR___OTApplicantToSponsorRound2M1__stableInfo;
            goto LABEL_28;
          case 5:
            v14 = PBReaderReadData();
            v15 = &OBJC_IVAR___OTApplicantToSponsorRound2M1__stableInfoSig;
LABEL_28:
            v16 = *v15;
            v17 = *(a1 + v16);
            *(a1 + v16) = v14;

            goto LABEL_29;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id UserInfoFromVA(void *a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277CCA450];
  v3 = MEMORY[0x277CCACA8];
  v4 = a1;
  v5 = [[v3 alloc] initWithFormat:v4 arguments:a2];

  v10[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

BOOL CoreCryptoError(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a3;
  if (a1 && a2 && !*a2)
  {
    *a2 = [MEMORY[0x277CCA9B8] errorWithCoreCryptoStatus:a1 description:v11 args:&a9];
  }

  return a1 == 0;
}

BOOL OSStatusError(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a3;
  if (a1 && a2 && !*a2)
  {
    *a2 = [MEMORY[0x277CCA9B8] errorWithOSStatus:a1 description:v11 args:&a9];
  }

  return a1 == 0;
}

uint64_t RequirementError(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a3;
  if (a2 && (a1 & 1) == 0 && !*a2)
  {
    *a2 = [MEMORY[0x277CCA9B8] errorWithOSStatus:4294967246 description:v11 args:&a9];
  }

  return a1;
}

BOOL ExactDataSizeRequirement(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a1;
  v9 = [v8 length] == a2;
  [v8 length];

  RequirementError(v9, a3, @"%@ incorrect size, Expected %ld, got %ld", v10, v11, v12, v13, v14, v7);
  return v9;
}

CFURLRef SecCopyHomeURL()
{
  v0 = sCustomHomeURL;
  if (sCustomHomeURL)
  {
    CFRetain(sCustomHomeURL);
    return v0;
  }

  else
  {

    return CFCopyHomeDirectoryURL();
  }
}

CFURLRef SecCopyBaseFilesURL(int a1)
{
  v1 = sCustomHomeURL;
  if (sCustomHomeURL)
  {
    CFRetain(sCustomHomeURL);
    return v1;
  }

  else if (a1)
  {

    return CFURLCreateWithFileSystemPath(0, @"/", kCFURLPOSIXPathStyle, 1u);
  }

  else
  {

    return SecCopyHomeURL();
  }
}

CFTypeRef SecSetCustomHomeURL(CFTypeRef cf)
{
  v1 = cf;
  if (cf)
  {
    cf = CFRetain(cf);
  }

  sCustomHomeURL = v1;
  return cf;
}

void SecSetCustomHomeURLString(CFStringRef filePath)
{
  v2 = sCustomHomeURL;
  if (sCustomHomeURL)
  {
    sCustomHomeURL = 0;
    CFRelease(v2);
  }

  if (filePath)
  {
    sCustomHomeURL = CFURLCreateWithFileSystemPath(0, filePath, kCFURLPOSIXPathStyle, 1u);
  }
}

uint64_t IsScopeActive(int a1, uint64_t a2)
{
  valuePtr = a1;
  if (a2)
  {
    v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
    v7 = 0;
    v8 = &v7;
    v9 = 0x2000000000;
    v10 = 0;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = __IsScopeActive_block_invoke;
    v6[3] = &unk_278863F38;
    v6[4] = &v7;
    v6[5] = v3;
    v6[6] = a2;
    with_scopes_read(v6);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

void __IsScopeActive_block_invoke(uint64_t a1)
{
  v1 = sLogSettings;
  if (sLogSettings)
  {
    context[0] = MEMORY[0x277D85DD0];
    context[1] = 0x40000000;
    context[2] = __IsScopeActive_block_invoke_2;
    context[3] = &unk_278863F10;
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v5.length = CFArrayGetCount(sLogSettings);
    v5.location = 0;
    CFArrayApplyFunction(v1, v5, apply_block_1, context);
  }
}

void with_scopes_read(dispatch_block_t block)
{
  if (GetDispatchControlQueue_onceToken != -1)
  {
    dispatch_once(&GetDispatchControlQueue_onceToken, &__block_literal_global_34);
  }

  v2 = GetDispatchControlQueue_sLoggingScopeControlQueue;

  dispatch_sync(v2, block);
}

dispatch_queue_t __GetDispatchControlQueue_block_invoke()
{
  result = dispatch_queue_create("security scope control", MEMORY[0x277D85CD8]);
  GetDispatchControlQueue_sLoggingScopeControlQueue = result;
  return result;
}

uint64_t __IsScopeActive_block_invoke_2(uint64_t result, const __CFSet *cf)
{
  if (cf)
  {
    v2 = cf;
    v3 = result;
    v4 = CFGetTypeID(cf);
    result = CFSetGetTypeID();
    if (v4 == result || (v6 = CFGetTypeID(v2), result = CFDictionaryGetTypeID(), v6 == result) && (result = CFDictionaryGetValue(v2, *(v3 + 40))) != 0 && (v2 = result, v7 = CFGetTypeID(result), result = CFSetGetTypeID(), v7 == result))
    {
      if ((*(*(*(v3 + 32) + 8) + 24) & 1) == 0)
      {
        v5 = CFSetContainsValue(v2, @"-") != 0;
        result = CFSetContainsValue(v2, *(v3 + 48));
        *(*(*(v3 + 32) + 8) + 24) = v5 ^ (result != 0);
      }
    }
  }

  return result;
}

uint64_t IsScopeActiveC(int a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], __s, v4, 0x8000100u, 0);
  v6 = IsScopeActive(a1, v5);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

CFMutableArrayRef CopyCurrentScopePlist()
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v1 = Mutable;
  if (sLogSettings)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __CopyCurrentScopePlist_block_invoke;
    block[3] = &__block_descriptor_tmp_14;
    block[4] = Mutable;
    with_scopes_read(block);
  }

  return v1;
}

void __CopyCurrentScopePlist_block_invoke(uint64_t a1)
{
  v1 = sLogSettings;
  context[0] = MEMORY[0x277D85DD0];
  context[1] = 0x40000000;
  context[2] = __CopyCurrentScopePlist_block_invoke_2;
  context[3] = &__block_descriptor_tmp_13;
  context[4] = *(a1 + 32);
  v3.length = CFArrayGetCount(sLogSettings);
  v3.location = 0;
  CFArrayApplyFunction(v1, v3, apply_block_1, context);
}

void __CopyCurrentScopePlist_block_invoke_2(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFSetGetTypeID())
    {
      v5 = CFSetOfCFObjectsCopyValues(cf);
      CFArrayAppendValue(*(a1 + 32), v5);
      if (v5)
      {

        CFRelease(v5);
      }

      return;
    }

    v6 = CFGetTypeID(cf);
    if (v6 == CFDictionaryGetTypeID())
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      context[0] = MEMORY[0x277D85DD0];
      context[1] = 0x40000000;
      context[2] = __CopyCurrentScopePlist_block_invoke_3;
      context[3] = &__block_descriptor_tmp_12;
      context[4] = Mutable;
      CFDictionaryApplyFunction(cf, apply_block_2, context);
      CFArrayAppendValue(*(a1 + 32), Mutable);
      return;
    }
  }

  v8 = *(a1 + 32);
  v9 = *MEMORY[0x277CBEEE8];

  CFArrayAppendValue(v8, v9);
}

CFMutableArrayRef CFSetOfCFObjectsCopyValues(const __CFSet *a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  context[0] = MEMORY[0x277D85DD0];
  context[1] = 0x40000000;
  context[2] = __CFSetOfCFObjectsCopyValues_block_invoke;
  context[3] = &__block_descriptor_tmp_36;
  context[4] = Mutable;
  CFSetApplyFunction(a1, apply_block_1, context);
  return Mutable;
}

void __CopyCurrentScopePlist_block_invoke_3(uint64_t a1, const void *a2, CFTypeRef cf)
{
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFSetGetTypeID())
    {
      v7 = CFSetOfCFObjectsCopyValues(cf);
      CFDictionaryAddValue(*(a1 + 32), a2, v7);
      if (v7)
      {

        CFRelease(v7);
      }
    }
  }
}

void ApplyScopeDictionaryForID(const __CFDictionary *a1, int a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  context[0] = MEMORY[0x277D85DD0];
  context[1] = 0x40000000;
  context[2] = __ApplyScopeDictionaryForID_block_invoke;
  context[3] = &__block_descriptor_tmp_15;
  context[4] = Mutable;
  CFDictionaryApplyFunction(a1, apply_block_2, context);
  if (CFDictionaryGetCount(Mutable) >= 1)
  {
    SetNthScopeSet(a2, Mutable);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void __ApplyScopeDictionaryForID_block_invoke(uint64_t a1, const __CFNumber *cf, const __CFString *a3)
{
  v4 = cf;
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFStringGetTypeID())
    {
      if (CFEqual(v4, @"Emergency"))
      {
        v7 = 0;
LABEL_22:
        valuePtr = v7;
        v4 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
        goto LABEL_23;
      }

      if (CFEqual(v4, @"Alert"))
      {
        v7 = 1;
        goto LABEL_22;
      }

      if (CFEqual(v4, @"Critical"))
      {
        v7 = 2;
        goto LABEL_22;
      }

      if (CFEqual(v4, @"Error"))
      {
        v7 = 3;
        goto LABEL_22;
      }

      if (CFEqual(v4, @"Warning"))
      {
        v7 = 4;
        goto LABEL_22;
      }

      if (CFEqual(v4, @"Notice"))
      {
        v7 = 5;
        goto LABEL_22;
      }

      if (CFEqual(v4, @"Info"))
      {
        v7 = 6;
        goto LABEL_22;
      }

      if (CFEqual(v4, @"Debug"))
      {
        v7 = 7;
        goto LABEL_22;
      }
    }

    else
    {
      v8 = CFGetTypeID(v4);
      if (v8 == CFNumberGetTypeID())
      {
        CFRetain(v4);
        if (a3)
        {
          goto LABEL_24;
        }

        goto LABEL_29;
      }
    }

    v4 = 0;
    if (a3)
    {
      goto LABEL_24;
    }

LABEL_29:
    if (!v4)
    {
      return;
    }

    goto LABEL_30;
  }

LABEL_23:
  if (!a3)
  {
    goto LABEL_29;
  }

LABEL_24:
  v9 = CFGetTypeID(a3);
  if (v9 != CFStringGetTypeID())
  {
    goto LABEL_29;
  }

  v10 = CopyScopesFromScopeList(a3);
  v11 = v10;
  if (v4 && v10)
  {
    CFDictionaryAddValue(*(a1 + 32), v4, v10);
    CFRelease(v4);
    v4 = v11;
LABEL_30:
    CFRelease(v4);
    return;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v4 = v11;
  if (v11)
  {
    goto LABEL_30;
  }
}

void SetNthScopeSet(int a1, uint64_t a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = __SetNthScopeSet_block_invoke;
  v2[3] = &__block_descriptor_tmp_71;
  v3 = a1;
  v2[4] = a2;
  if (GetDispatchControlQueue_onceToken != -1)
  {
    dispatch_once(&GetDispatchControlQueue_onceToken, &__block_literal_global_34);
  }

  dispatch_barrier_sync(GetDispatchControlQueue_sLoggingScopeControlQueue, v2);
}

void __SetNthScopeSet_block_invoke(uint64_t a1)
{
  Mutable = sLogSettings;
  if (sLogSettings)
  {
    v3 = *MEMORY[0x277CBEEE8];
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 4, MEMORY[0x277CBF128]);
    v3 = *MEMORY[0x277CBEEE8];
    v4 = 5;
    do
    {
      CFArrayAppendValue(Mutable, v3);
      --v4;
    }

    while (v4);
    sLogSettings = Mutable;
  }

  CFArraySetValueAtIndex(Mutable, *(a1 + 40), *(a1 + 32));
  v5 = sLogSettings;
  v9.length = CFArrayGetCount(sLogSettings);
  v9.location = 0;
  CountOfValue = CFArrayGetCountOfValue(v5, v9, v3);
  if (CountOfValue == CFArrayGetCount(v5))
  {
    v7 = sLogSettings;
    if (sLogSettings)
    {
      sLogSettings = 0;

      CFRelease(v7);
    }
  }
}

__CFSet *CopyScopesFromScopeList(const __CFString *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]);
  HasPrefix = CFStringHasPrefix(a1, @"-");
  if (HasPrefix)
  {
    Length = CFStringGetLength(@"-");
    v12.length = CFStringGetLength(a1) - 1;
    v12.location = Length;
    v6 = CFStringCreateWithSubstring(v2, a1, v12);
    a1 = v6;
  }

  else
  {
    v6 = 0;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(v2, a1, @",");
  v8 = ArrayBySeparatingStrings;
  if (ArrayBySeparatingStrings)
  {
    context[0] = MEMORY[0x277D85DD0];
    context[1] = 0x40000000;
    context[2] = __CopyScopesFromScopeList_block_invoke;
    context[3] = &__block_descriptor_tmp_64;
    context[4] = Mutable;
    v11.length = CFArrayGetCount(ArrayBySeparatingStrings);
    v11.location = 0;
    CFArrayApplyFunction(v8, v11, apply_block_1, context);
  }

  CFSetRemoveValue(Mutable, @"none");
  CFSetRemoveValue(Mutable, &stru_2843734B8);
  if (CFSetContainsValue(Mutable, @"all"))
  {
    CFSetRemoveAllValues(Mutable);
    if (HasPrefix)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (HasPrefix)
  {
LABEL_8:
    CFSetSetValue(Mutable, @"-");
  }

LABEL_9:
  if (v8)
  {
    CFRelease(v8);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return Mutable;
}

void __CopyScopesFromScopeList_block_invoke(uint64_t a1, const __CFString *cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID())
    {
      MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, cf);
      CFStringTrimWhitespace(MutableCopy);
      CFSetSetValue(*(a1 + 32), MutableCopy);
      if (MutableCopy)
      {

        CFRelease(MutableCopy);
      }
    }
  }
}

void ApplyScopeListForID(const __CFString *a1, int a2)
{
  v3 = CopyScopesFromScopeList(a1);
  SetNthScopeSet(a2, v3);
  if (v3)
  {

    CFRelease(v3);
  }
}

void ApplyScopeListForIDC(char *cStr, int a2)
{
  v3 = CFStringCreateWithCStringNoCopy(*MEMORY[0x277CBECE8], cStr, 0x8000100u, *MEMORY[0x277CBED00]);
  ApplyScopeListForID(v3, a2);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __security_debug_init()
{
  if (__security_debug_init_sdOnceToken != -1)
  {
    dispatch_once(&__security_debug_init_sdOnceToken, &__block_literal_global_1445);
  }
}

void ____security_debug_init_block_invoke()
{
  v0 = getenv("DEBUGSCOPE");
  if (!v0)
  {
    v0 = "";
  }

  ApplyScopeListForIDC(v0, 0);
  v1 = SecCopyURLForFileInManagedPreferencesDirectory(@".GlobalPreferences.plist");
  if (v1)
  {
    v2 = v1;
    v3 = *MEMORY[0x277CBECE8];
    v4 = CFReadStreamCreateWithFile(*MEMORY[0x277CBECE8], v1);
    if (v4)
    {
      v5 = v4;
      if (!CFReadStreamOpen(v4))
      {
LABEL_8:
        CFRelease(v5);
        goto LABEL_9;
      }

      v6 = CFPropertyListCreateWithStream(v3, v5, 0, 0, 0, 0);
      CFRelease(v5);
      if (v6)
      {
        Value = CFDictionaryGetValue(v6, @"SecLogging");
        ApplyScopeByTypeForID(Value, 2);
        v5 = v6;
        goto LABEL_8;
      }
    }

LABEL_9:
    CFRelease(v2);
  }

  v8 = *MEMORY[0x277CBF020];
  v9 = *MEMORY[0x277CBF030];
  v10 = CFPreferencesCopyValue(@"Logging", @"com.apple.security", *MEMORY[0x277CBF020], *MEMORY[0x277CBF030]);
  ApplyScopeByTypeForID(v10, 1);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = CFPreferencesCopyValue(@"Circle-Logging", @"com.apple.security", v8, v9);
  ApplyScopeByTypeForID(v11, 1);
  if (v11)
  {

    CFRelease(v11);
  }
}

void ApplyScopeByTypeForID(const __CFString *a1, int a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFDictionaryGetTypeID())
    {

      ApplyScopeDictionaryForID(a1, a2);
    }

    else
    {
      v5 = CFGetTypeID(a1);
      if (v5 == CFStringGetTypeID())
      {

        ApplyScopeListForID(a1, a2);
      }
    }
  }
}

const void *secLogObjForCFScope(__CFString *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = @"logging";
  }

  os_unfair_lock_lock_with_options();
  Mutable = secLogObjForCFScope_scopeMap;
  if (!secLogObjForCFScope_scopeMap)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBED60], 0);
    secLogObjForCFScope_scopeMap = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, v1);
  if (!Value)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 0x40000000;
    v5[2] = __secLogObjForCFScope_block_invoke;
    v5[3] = &__block_descriptor_tmp_22;
    v5[4] = v1;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = __CFStringPerformWithCString_block_invoke;
    v6[3] = &unk_2788640F0;
    v6[4] = v5;
    CFStringPerformWithCStringAndLength(v1, v6);
    Value = CFDictionaryGetValue(secLogObjForCFScope_scopeMap, v1);
  }

  os_unfair_lock_unlock(&secLogObjForCFScope_lock);
  return Value;
}

void __secLogObjForCFScope_block_invoke(uint64_t a1, const char *a2)
{
  v2 = secLogObjForCFScope_scopeMap;
  v3 = *(a1 + 32);
  v4 = os_log_create("com.apple.securityd", a2);

  CFDictionaryAddValue(v2, v3, v4);
}

BOOL secLogEnabled()
{
  pthread_mutex_lock(&loggingMutex);
  v0 = loggingEnabled;
  pthread_mutex_unlock(&loggingMutex);
  return (v0 & 1) == 0;
}

uint64_t secLogDisable()
{
  pthread_mutex_lock(&loggingMutex);
  loggingEnabled = 1;

  return pthread_mutex_unlock(&loggingMutex);
}

uint64_t secLogEnable()
{
  pthread_mutex_lock(&loggingMutex);
  loggingEnabled = 0;

  return pthread_mutex_unlock(&loggingMutex);
}

const void *secLogObjForScope(const char *a1)
{
  pthread_mutex_lock(&loggingMutex);
  v2 = loggingEnabled;
  pthread_mutex_unlock(&loggingMutex);
  if (v2)
  {
    return MEMORY[0x277D86228];
  }

  if (a1)
  {
    v4 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a1, 0x600u);
    v3 = secLogObjForCFScope(v4);
    if (v4)
    {
      CFRelease(v4);
    }

    return v3;
  }

  return secLogObjForCFScope(0);
}

__CFString *SecLogAPICreate(int a1, const char *a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v25 = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v14 = Mutable;
  if (a1)
  {
    v15 = "ENTER";
  }

  else
  {
    v15 = "RETURN";
  }

  CFStringAppend(Mutable, @"SecAPITrace ");
  CFStringAppendCString(v14, a2, 0x600u);
  CFStringAppendCString(v14, v15, 0x600u);
  if (a3)
  {
    v16 = CFStringCreateWithFormatAndArguments(v12, 0, a3, &a9);
    CFStringAppend(v14, v16);
    if (v16)
    {
      CFRelease(v16);
    }
  }

  if (a1)
  {
    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23 = v17;
    v24 = v17;
    v21 = v17;
    v22 = v17;
    *__str = v17;
    snprintf(__str, 0x50uLL, "C%p F%p", vars0[1], *vars0);
    CFStringAppend(v14, @"CALLER ");
    CFStringAppendCString(v14, __str, 0x600u);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t SecGetDebugDescriptionFormatOptions()
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __SecGetDebugDescriptionFormatOptions_block_invoke;
  block[3] = &__block_descriptor_tmp_1482;
  block[4] = &SecGetDebugDescriptionFormatOptions_sSecGetDebugDescriptionFormatOptionsSingleton;
  if (SecGetDebugDescriptionFormatOptions_sSecGetDebugDescriptionFormatOptionsOnce != -1)
  {
    dispatch_once(&SecGetDebugDescriptionFormatOptions_sSecGetDebugDescriptionFormatOptionsOnce, block);
  }

  return SecGetDebugDescriptionFormatOptions_sSecGetDebugDescriptionFormatOptionsSingleton;
}

CFDictionaryRef __SecGetDebugDescriptionFormatOptions_block_invoke(uint64_t a1)
{
  keys[1] = *MEMORY[0x277D85DE8];
  values = *MEMORY[0x277CBED28];
  keys[0] = kSecDebugFormatOption;
  result = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  **(a1 + 32) = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void CFStringArrayPerformWithDelimiterWithDescription(const __CFArray *a1, CFStringRef theString, const __CFString *a3, uint64_t a4)
{
  if (a1)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2000000000;
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theString);
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2000000000;
    v10[3] = &stru_2843734B8;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 0x40000000;
    v9[2] = __CFStringArrayPerformWithDelimiterWithDescription_block_invoke;
    v9[3] = &unk_2788641F0;
    v9[4] = &v11;
    v9[5] = v10;
    v16.length = CFArrayGetCount(a1);
    v16.location = 0;
    CFArrayApplyFunction(a1, v16, apply_block_1_1489, v9);
    CFStringAppend(v12[3], a3);
    (*(a4 + 16))(a4, v12[3]);
    v7 = v12[3];
    if (v7)
    {
      v12[3] = 0;
      CFRelease(v7);
    }

    _Block_object_dispose(v10, 8);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = *(a4 + 16);

    v8(a4, @"null");
  }
}

void CFStringSetPerformWithDescription(const __CFSet *a1, uint64_t a2)
{
  if (a1)
  {
    Count = CFSetGetCount(a1);
    Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x277CBF128]);
    CFSetApplyFunction(a1, appendDescriptionToArray, Mutable);
    v8.length = CFArrayGetCount(Mutable);
    v8.location = 0;
    CFArraySortValues(Mutable, v8, compare, 0);
    CFStringArrayPerformWithDelimiterWithDescription(Mutable, @"{("), CFSTR(")}", a2);
    if (Mutable)
    {

      CFRelease(Mutable);
    }
  }

  else
  {
    v6 = *(a2 + 16);

    v6(a2, @"null");
  }
}

void appendDescriptionToArray(__CFString *a1, __CFArray *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == CFStringGetTypeID())
  {
    v5 = a2;
    v6 = a1;
LABEL_8:

    CFArrayAppendValue(v5, v6);
    return;
  }

  v7 = CFCopyDescription(a1);
  if (!v7)
  {
    v6 = @"null";
    v5 = a2;
    goto LABEL_8;
  }

  v8 = v7;
  CFArrayAppendValue(a2, v7);

  CFRelease(v8);
}

void SecCFCalendarDoWithZuluCalendar(uint64_t a1)
{
  if (SecCFCalendarGetZuluQueue_onceToken != -1)
  {
    dispatch_once(&SecCFCalendarGetZuluQueue_onceToken, &__block_literal_global_1510);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __SecCFCalendarDoWithZuluCalendar_block_invoke;
  block[3] = &unk_2788640A0;
  block[4] = a1;
  dispatch_sync(fqueue_cf, block);
}

uint64_t __SecCFCalendarDoWithZuluCalendar_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (SecCFCalendarGetZulu_onceToken != -1)
  {
    dispatch_once(&SecCFCalendarGetZulu_onceToken, &__block_literal_global_67);
  }

  v2 = sZuluCalendar;
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void __SecCFCalendarGetZulu_block_invoke()
{
  v0 = *MEMORY[0x277CBECE8];
  sZuluCalendar = CFCalendarCreateWithIdentifier(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE80]);
  v1 = CFTimeZoneCreateWithTimeIntervalFromGMT(v0, 0.0);
  CFCalendarSetTimeZone(sZuluCalendar, v1);
  if (v1)
  {

    CFRelease(v1);
  }
}

dispatch_queue_t __SecCFCalendarGetZuluQueue_block_invoke()
{
  result = dispatch_queue_create("ZuluCalendar", 0);
  fqueue_cf = result;
  return result;
}

void CFStringPerformWithCStringAndLength(const __CFString *a1, uint64_t a2)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    v5 = CStringPtr;
    v6 = strlen(CStringPtr);
    v7 = *(a2 + 16);

    v7(a2, v5, v6);
  }

  else
  {
    usedBufLen = 0;
    Length = CFStringGetLength(a1);
    v12.location = 0;
    v12.length = Length;
    CFStringGetBytes(a1, v12, 0x8000100u, 0, 0, 0, 0, &usedBufLen);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 0x40000000;
    v9[2] = __CFStringPerformWithCStringAndLength_block_invoke;
    v9[3] = &unk_2788640C8;
    v9[6] = 0;
    v9[7] = Length;
    v9[8] = usedBufLen;
    v9[4] = a2;
    v9[5] = a1;
    PerformWithBuffer(usedBufLen + 1, v9);
  }
}

uint64_t __CFStringPerformWithCStringAndLength_block_invoke(uint64_t result, int a2, UInt8 *buffer)
{
  if (buffer)
  {
    v4 = result;
    v5 = *(result + 40);
    v8 = *(v4 + 48);
    v6 = *(v4 + 64);
    usedBufLen = 0xAAAAAAAAAAAAAAAALL;
    CFStringGetBytes(v5, v8, 0x8000100u, 0, 0, buffer, v6, &usedBufLen);
    buffer[usedBufLen] = 0;
    return (*(*(v4 + 32) + 16))();
  }

  return result;
}

void CFStringPerformWithCString(const __CFString *a1, uint64_t a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = __CFStringPerformWithCString_block_invoke;
  v2[3] = &unk_2788640F0;
  v2[4] = a2;
  CFStringPerformWithCStringAndLength(a1, v2);
}

void CFStringPerformWithUTF8CFData(const __CFString *a1, uint64_t a2)
{
  maxBufLen = 0;
  Length = CFStringGetLength(a1);
  v10.location = 0;
  v10.length = Length;
  CFStringGetBytes(a1, v10, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
  v5 = maxBufLen;
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFDataSetLength(Mutable, v5);
  usedBufLen = 0xAAAAAAAAAAAAAAAALL;
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  v11.location = 0;
  v11.length = Length;
  CFStringGetBytes(a1, v11, 0x8000100u, 0, 0, MutableBytePtr, maxBufLen, &usedBufLen);
  (*(a2 + 16))(a2, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

CFStringRef CFStringCreateByTrimmingCharactersInSet(const __CFString *a1, const __CFCharacterSet *a2)
{
  Length = CFStringGetLength(a1);
  theString = a1;
  v38 = 0;
  v39 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v36 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v40 = 0;
  v41 = 0;
  v37 = CStringPtr;
  if (Length < 1)
  {
    return &stru_2843734B8;
  }

  v7 = 0;
  v8 = 0;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v34[6] = v9;
  v34[7] = v9;
  v34[4] = v9;
  v34[5] = v9;
  v34[2] = v9;
  v34[3] = v9;
  v10 = 64;
  v11 = &stru_2843734B8;
  v34[0] = v9;
  v34[1] = v9;
  while (1)
  {
    v12 = v8 >= 4 ? 4 : v8;
    v13 = v39;
    if (v39 <= v8)
    {
      v15 = 0;
    }

    else
    {
      if (v36)
      {
        v14 = &v36[v38];
LABEL_11:
        v15 = v14[v8];
        goto LABEL_13;
      }

      if (!v37)
      {
        v16 = v40;
        if (v41 <= v8 || v40 > v8)
        {
          v18 = v12 + v7;
          v19 = v10 - v12;
          v20 = v8 - v12;
          v21 = v20 + 64;
          if (v20 + 64 >= v39)
          {
            v21 = v39;
          }

          v40 = v20;
          v41 = v21;
          if (v39 >= v19)
          {
            v13 = v19;
          }

          v42.location = v20 + v38;
          v42.length = v13 + v18;
          CFStringGetCharacters(theString, v42, v34);
          v16 = v40;
        }

        v14 = v34 - v16;
        goto LABEL_11;
      }

      v15 = v37[v38 + v8];
    }

LABEL_13:
    if (!CFCharacterSetIsCharacterMember(a2, v15))
    {
      break;
    }

    ++v8;
    --v7;
    ++v10;
    if (Length == v8)
    {
      return v11;
    }
  }

  v22 = -Length;
  v23 = Length + 64;
  v24 = 1;
  while (1)
  {
    v25 = Length >= 5 ? 5 : Length;
    if (Length < 2)
    {
      break;
    }

    v26 = v39;
    if (v39 >= Length)
    {
      if (v36)
      {
        v27 = v36[v38 - 1 + Length];
      }

      else if (v37)
      {
        v27 = v37[v38 - 1 + Length];
      }

      else
      {
        if (v41 < Length || (v28 = v40, v40 >= Length))
        {
          v29 = v25 + v22;
          v30 = v23 - v25;
          v31 = Length - v25;
          v32 = v31 + 64;
          if (v31 + 64 >= v39)
          {
            v32 = v39;
          }

          v40 = v31;
          v41 = v32;
          if (v39 >= v30)
          {
            v26 = v30;
          }

          v43.location = v31 + v38;
          v43.length = v26 + v29;
          CFStringGetCharacters(theString, v43, v34);
          v28 = v40;
        }

        v27 = *(&v34[-1] + Length - v28 + 7);
      }
    }

    else
    {
      v27 = 0;
    }

    ++v22;
    --v23;
    --Length;
    if (!CFCharacterSetIsCharacterMember(a2, v27))
    {
      v24 = Length + 1;
      break;
    }
  }

  v44.length = v24 - v8;
  v44.location = v8;
  return CFStringCreateWithSubstring(0, a1, v44);
}

CFStringRef CFDictionaryCopyCompactDescription(const __CFDictionary *a1)
{
  if (a1)
  {
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, @"{");
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x2000000000;
    v7[3] = &stru_2843734B8;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = __CFDictionaryCopyCompactDescription_block_invoke;
    v6[3] = &unk_278864118;
    v6[4] = v7;
    v6[5] = MutableCopy;
    CFDictionaryApplyFunction(a1, apply_block_2_1520, v6);
    CFStringAppendFormat(MutableCopy, 0, @"}");
    _Block_object_dispose(v7, 8);
    return MutableCopy;
  }

  else
  {
    v5 = *MEMORY[0x277CBEEE8];

    return CFCopyDescription(v5);
  }
}

void __CFDictionaryCopyCompactDescription_block_invoke(uint64_t a1, uint64_t a2, const __CFData *cf)
{
  if (cf && (v6 = CFGetTypeID(cf), v6 == CFDataGetTypeID()))
  {
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, @"0x");
    BytePtr = CFDataGetBytePtr(cf);
    Length = CFDataGetLength(cf);
    if (Length >= 1)
    {
      v10 = Length;
      do
      {
        v11 = *BytePtr++;
        CFStringAppendFormat(MutableCopy, 0, @"%02X", v11);
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    MutableCopy = 0;
  }

  if (MutableCopy)
  {
    v12 = MutableCopy;
  }

  else
  {
    v12 = cf;
  }

  CFStringAppendFormat(*(a1 + 40), 0, @"%@%@:%@", *(*(*(a1 + 32) + 8) + 24), a2, v12);
  *(*(*(a1 + 32) + 8) + 24) = @", ";
  if (MutableCopy)
  {

    CFRelease(MutableCopy);
  }
}

CFStringRef CFDictionaryCopySuperCompactDescription(const __CFDictionary *a1)
{
  if (a1)
  {
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, @"{");
    context[0] = MEMORY[0x277D85DD0];
    context[1] = 0x40000000;
    context[2] = __CFDictionaryCopySuperCompactDescription_block_invoke;
    context[3] = &__block_descriptor_tmp_48;
    context[4] = MutableCopy;
    CFDictionaryApplyFunction(a1, apply_block_2_1520, context);
    CFStringAppendFormat(MutableCopy, 0, @"}");
    return MutableCopy;
  }

  else
  {
    v5 = *MEMORY[0x277CBEEE8];

    return CFCopyDescription(v5);
  }
}

void __CFDictionaryCopySuperCompactDescription_block_invoke(uint64_t a1, const __CFString *a2, const __CFString *cf)
{
  if (!cf)
  {
    goto LABEL_12;
  }

  v6 = CFGetTypeID(cf);
  if (v6 == CFDataGetTypeID())
  {
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, @"0x");
    BytePtr = CFDataGetBytePtr(cf);
    Length = CFDataGetLength(cf);
    if (Length >= 1)
    {
      v10 = Length;
      do
      {
        v11 = *BytePtr++;
        CFStringAppendFormat(MutableCopy, 0, @"%02X", v11);
        --v10;
      }

      while (v10);
    }

    v21.location = 0;
    v21.length = 5;
    CFStringDelete(MutableCopy, v21);
    goto LABEL_16;
  }

  v12 = CFGetTypeID(cf);
  if (v12 != CFStringGetTypeID())
  {
    v16 = CFGetTypeID(cf);
    if (v16 == CFNumberGetTypeID())
    {
      v14 = *MEMORY[0x277CBECE8];
      Copy = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@", cf);
      goto LABEL_14;
    }

LABEL_12:
    MutableCopy = 0;
    goto LABEL_16;
  }

  v13 = CFStringGetLength(cf);
  v14 = *MEMORY[0x277CBECE8];
  if (v13 > 5)
  {
    v22.location = 0;
    v22.length = 6;
    Copy = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], cf, v22);
  }

  else
  {
    Copy = CFStringCreateCopy(*MEMORY[0x277CBECE8], cf);
  }

LABEL_14:
  v17 = Copy;
  v18 = CFStringGetLength(Copy);
  MutableCopy = CFStringCreateMutableCopy(v14, v18, v17);
  if (v17)
  {
    CFRelease(v17);
  }

LABEL_16:
  CharacterAtIndex = CFStringGetCharacterAtIndex(a2, 0);
  CFStringAppendFormat(*(a1 + 32), 0, @"%c:%@ ", CharacterAtIndex, MutableCopy);
  if (MutableCopy)
  {

    CFRelease(MutableCopy);
  }
}

uint64_t CFDataCreateWithRandomBytes(size_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = __CFDataCreateWithRandomBytes_block_invoke;
  v3[3] = &unk_278864160;
  v3[4] = &v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = __PerformWithBufferAndClear_block_invoke;
  v8[3] = &unk_278864378;
  v8[4] = v3;
  PerformWithBuffer(a1, v8);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

CFDataRef __CFDataCreateWithRandomBytes_block_invoke(uint64_t a1, size_t a2, void *bytes)
{
  CCRandomGenerateBytes(bytes, a2);
  result = CFDataCreate(0, bytes, a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t GetShortDateFormatter()
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __GetShortDateFormatter_block_invoke;
  block[3] = &__block_descriptor_tmp_53;
  block[4] = &GetShortDateFormatter_sGetShortDateFormatterSingleton;
  if (GetShortDateFormatter_sGetShortDateFormatterOnce != -1)
  {
    dispatch_once(&GetShortDateFormatter_sGetShortDateFormatterOnce, block);
  }

  return GetShortDateFormatter_sGetShortDateFormatterSingleton;
}

void __GetShortDateFormatter_block_invoke(uint64_t a1)
{
  v2 = CFLocaleCopyCurrent();
  **(a1 + 32) = CFDateFormatterCreate(*MEMORY[0x277CBECE8], v2, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetFormat(**(a1 + 32), @"yyyy-MM-dd HH:mm");
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t GetShortDateFormatterQueue()
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __GetShortDateFormatterQueue_block_invoke;
  block[3] = &__block_descriptor_tmp_55;
  block[4] = &GetShortDateFormatterQueue_sGetShortDateFormatterQueueSingleton;
  if (GetShortDateFormatterQueue_sGetShortDateFormatterQueueOnce != -1)
  {
    dispatch_once(&GetShortDateFormatterQueue_sGetShortDateFormatterQueueOnce, block);
  }

  return GetShortDateFormatterQueue_sGetShortDateFormatterQueueSingleton;
}

dispatch_queue_t __GetShortDateFormatterQueue_block_invoke(uint64_t a1)
{
  result = dispatch_queue_create("Date Formatting", 0);
  **(a1 + 32) = result;
  return result;
}

void withStringOfAbsoluteTime(uint64_t a1, double a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __withStringOfAbsoluteTime_block_invoke;
  v5[3] = &unk_2788641C8;
  v5[4] = &v6;
  *&v5[5] = a2;
  ShortDateFormatterQueue = GetShortDateFormatterQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __withShortDateFormatter_block_invoke;
  block[3] = &unk_278864258;
  block[4] = v5;
  dispatch_sync(ShortDateFormatterQueue, block);
  (*(a1 + 16))(a1, v7[3]);
  v4 = v7[3];
  if (v4)
  {
    v7[3] = 0;
    CFRelease(v4);
  }

  _Block_object_dispose(&v6, 8);
}

CFStringRef __withStringOfAbsoluteTime_block_invoke(uint64_t a1, __CFDateFormatter *a2)
{
  result = CFDateFormatterCreateStringWithAbsoluteTime(*MEMORY[0x277CBECE8], a2, *(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __withShortDateFormatter_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  ShortDateFormatter = GetShortDateFormatter();
  v3 = *(v1 + 16);

  return v3(v1, ShortDateFormatter);
}

BOOL SecKernError(int a1, CFTypeRef *a2, CFStringRef format, ...)
{
  va_start(va, format);
  if (a1 && a2)
  {
    v5 = *a2;
    *a2 = 0;
    SecCFCreateErrorWithFormatAndArguments(a1, *MEMORY[0x277CBEE38], v5, a2, 0, format, va);
  }

  return a1 == 0;
}

uint64_t SecCFCreateErrorWithFormatAndArguments(CFIndex a1, const __CFString *a2, __CFError *cf, CFTypeRef *a4, CFDictionaryRef formatOptions, CFStringRef format, va_list arguments)
{
  if (!a4)
  {
    return 0;
  }

  if (*a4)
  {
    if (!cf || *a4 == cf)
    {
      return 0;
    }

    goto LABEL_41;
  }

  v11 = CFStringCreateWithFormatAndArguments(0, formatOptions, format, arguments);
  v32 = 0;
  v12 = MEMORY[0x277CBEE30];
  if (cf)
  {
    v13 = CFErrorCopyUserInfo(cf);
    Value = CFDictionaryGetValue(v13, *v12);
    if (Value)
    {
      v15 = CFStringCompare(v11, Value, 0) == kCFCompareEqualTo;
      if (!v13)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v15 = 0;
      if (!v13)
      {
LABEL_10:
        Code = CFErrorGetCode(cf);
        Domain = CFErrorGetDomain(cf);
        v18 = CFStringCompare(a2, Domain, 0);
        v20 = Code == a1 && v18 == kCFCompareEqualTo;
        v21 = cf;
        if (v20 && v15)
        {
          goto LABEL_17;
        }

        v23 = CFErrorCopyUserInfo(cf);
        if (v23)
        {
          v24 = v23;
          v25 = *MEMORY[0x277CDBE80];
          if (CFDictionaryContainsKey(v23, *MEMORY[0x277CDBE80]) == 1)
          {
            v26 = CFDictionaryGetValue(v24, v25);
            if (v26)
            {
              valuePtr = 0;
              CFNumberGetValue(v26, kCFNumberLongType, &valuePtr);
              if (valuePtr > 199)
              {
                CFRelease(v24);
                v21 = cf;
LABEL_17:
                CFRetain(v21);
                *a4 = cf;
                CFRelease(cf);
                if (!v11)
                {
                  return 0;
                }

                v22 = v11;
LABEL_42:
                CFRelease(v22);
                return 0;
              }

              v32 = valuePtr + 1;
            }
          }

          CFRelease(v24);
        }

        goto LABEL_28;
      }
    }

    CFRelease(v13);
    goto LABEL_10;
  }

LABEL_28:
  v27 = *MEMORY[0x277CBECE8];
  v28 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongType, &v32);
  Mutable = CFDictionaryCreateMutable(v27, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v30 = Mutable;
  if (cf)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CBEE78], cf);
  }

  if (v28)
  {
    CFDictionaryAddValue(v30, *MEMORY[0x277CDBE80], v28);
  }

  if (v11)
  {
    CFDictionaryAddValue(v30, *v12, v11);
  }

  *a4 = CFErrorCreate(v27, a2, a1, v30);
  if (v28)
  {
    CFRelease(v28);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (cf)
  {
LABEL_41:
    v22 = cf;
    goto LABEL_42;
  }

  return 0;
}

BOOL SecCheckErrno(int a1, CFTypeRef *a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1)
  {
    if (a2)
    {
      v12 = *__error();
      v13 = *a2;
      *a2 = 0;
      v14 = CFStringCreateWithFormatAndArguments(*MEMORY[0x277CBECE8], 0, a3, &a9);
      v15 = *MEMORY[0x277CBEE48];
      strerror(v12);
      SecCFCreateErrorWithFormat(v12, v15, v13, a2, 0, @"%@: [%d] %s", v16, v17, v14);
      if (v14)
      {
        CFRelease(v14);
      }
    }
  }

  return a1 == 0;
}

BOOL SecError(int a1, __CFError **a2, CFStringRef format, ...)
{
  va_start(va, format);
  if (a1)
  {
    cf = 0;
    v5 = *MEMORY[0x277CBEE40];
    if (a2)
    {
      SecCFCreateErrorWithFormatAndArguments(a1, v5, *a2, &cf, 0, format, va);
      *a2 = cf;
    }

    else
    {
      SecCFCreateErrorWithFormatAndArguments(a1, v5, 0, &cf, 0, format, va);
      v6 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v6);
      }
    }
  }

  return a1 == 0;
}

uint64_t SecRequirementError(uint64_t a1, CFTypeRef *a2, CFStringRef format, ...)
{
  va_start(va, format);
  if (a2 && (a1 & 1) == 0)
  {
    v5 = *a2;
    *a2 = 0;
    SecCFCreateErrorWithFormatAndArguments(-50, *MEMORY[0x277CBEE40], v5, a2, 0, format, va);
  }

  return a1;
}

BOOL SecAllocationError(uint64_t a1, CFTypeRef *a2, CFStringRef format, ...)
{
  va_start(va, format);
  if (!a1 && a2)
  {
    v5 = *a2;
    *a2 = 0;
    SecCFCreateErrorWithFormatAndArguments(-108, *MEMORY[0x277CBEE40], v5, a2, 0, format, va);
  }

  return a1 != 0;
}

uint64_t GetKeybagAssertionQueue()
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __GetKeybagAssertionQueue_block_invoke;
  block[3] = &__block_descriptor_tmp_1546;
  block[4] = &GetKeybagAssertionQueue_sGetKeybagAssertionQueueSingleton;
  if (GetKeybagAssertionQueue_sGetKeybagAssertionQueueOnce != -1)
  {
    dispatch_once(&GetKeybagAssertionQueue_sGetKeybagAssertionQueueOnce, block);
  }

  return GetKeybagAssertionQueue_sGetKeybagAssertionQueueSingleton;
}

dispatch_queue_t __GetKeybagAssertionQueue_block_invoke(uint64_t a1)
{
  result = dispatch_queue_create("AKS Lock Assertion Queue", 0);
  **(a1 + 32) = result;
  return result;
}

BOOL SecAKSKeybagHoldLockAssertion(int a1, uint64_t a2, CFTypeRef *a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  KeybagAssertionQueue = GetKeybagAssertionQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __SecAKSKeybagHoldLockAssertion_block_invoke;
  block[3] = &unk_2788642A8;
  block[4] = &v11;
  block[5] = a2;
  v10 = a1;
  dispatch_sync(KeybagAssertionQueue, block);
  v7 = SecKernError(*(v12 + 6), a3, @"Kern return error");
  _Block_object_dispose(&v11, 8);
  return v7;
}

uint64_t __SecAKSKeybagHoldLockAssertion_block_invoke(uint64_t result)
{
  v1 = result;
  v9 = *MEMORY[0x277D85DE8];
  if (!count)
  {
    v2 = secLogObjForScope("lockassertions");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(v1 + 40);
      v7 = 134217984;
      v8 = v3;
      _os_log_impl(&dword_22EB09000, v2, OS_LOG_TYPE_DEFAULT, "Requesting lock assertion for %lld seconds", &v7, 0xCu);
    }

    v4 = *(v1 + 48);
    v5 = *(v1 + 40);
    result = aks_assert_hold();
    *(*(*(v1 + 32) + 8) + 24) = result;
  }

  if (!*(*(*(v1 + 32) + 8) + 24))
  {
    ++count;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL SecAKSKeybagDropLockAssertion(int a1, CFTypeRef *a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  KeybagAssertionQueue = GetKeybagAssertionQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = __SecAKSKeybagDropLockAssertion_block_invoke;
  v7[3] = &unk_2788642D0;
  v7[4] = &v9;
  v8 = a1;
  dispatch_sync(KeybagAssertionQueue, v7);
  v5 = SecKernError(*(v10 + 6), a2, @"Kern return error");
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t __SecAKSKeybagDropLockAssertion_block_invoke(uint64_t result)
{
  v3 = count;
  if (count)
  {
    --count;
    if (v3 == 1)
    {
      v8 = v1;
      v9 = v2;
      v4 = result;
      v5 = secLogObjForScope("lockassertions");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_22EB09000, v5, OS_LOG_TYPE_DEFAULT, "Dropping lock assertion", v7, 2u);
      }

      v6 = *(v4 + 40);
      result = aks_assert_drop();
      *(*(*(v4 + 32) + 8) + 24) = result;
    }
  }

  return result;
}

BOOL SecAKSDoWithKeybagLockAssertion(int a1, CFTypeRef *a2, uint64_t a3)
{
  result = SecAKSKeybagHoldLockAssertion(a1, 60, a2);
  if (result)
  {
    (*(a3 + 16))(a3);

    return SecAKSKeybagDropLockAssertion(a1, a2);
  }

  return result;
}

uint64_t SecAKSDoWithKeybagLockAssertionSoftly(int a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  cf = 0;
  if (SecAKSKeybagHoldLockAssertion(a1, 60, &cf))
  {
    (*(a2 + 16))(a2);
    SecAKSKeybagDropLockAssertion(a1, &cf);
    v4 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v4);
    }
  }

  else
  {
    v5 = secLogObjForScope("secaks");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v11 = a1;
      v12 = 2112;
      v13 = cf;
      _os_log_impl(&dword_22EB09000, v5, OS_LOG_TYPE_DEFAULT, "SecAKSDoWithKeybagLockAssertionSoftly: failed to get assertion for %d proceeding bravely: %@", buf, 0x12u);
    }

    v6 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v6);
    }

    (*(a2 + 16))(a2);
  }

  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

CFDataRef SecAKSCopyBackupBagWithSecret(unint64_t a1, int a2, CFTypeRef *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a1 >> 31;
  SecRequirementError(a1 >> 31 == 0, a3, @"Invalid size: %zu", a1);
  if (!v4 && (bag = aks_create_bag(), SecKernError(bag, a3, @"bag allocation failed: %d", bag)) && (v6 = aks_save_bag(), SecKernError(v6, a3, @"save bag failed: %d", v6)))
  {
    v7 = aks_unload_bag();
    if (v7)
    {
      v8 = v7;
      v9 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v14 = v8;
        _os_log_impl(&dword_22EB09000, v9, OS_LOG_TYPE_DEFAULT, "unload bag failed: %d", buf, 8u);
      }
    }

    v10 = CFDataCreate(*MEMORY[0x277CBECE8], 0, 0);
    SecAllocationError(v10, a3, @"Bag CFData Allocation Failed");
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t SecAKSSanitizedKeyclass(uint64_t a1)
{
  v1 = a1;
  v9 = *MEMORY[0x277D85DE8];
  if (a1 < 32)
  {
    v2 = a1;
  }

  else
  {
    v2 = a1 & 0x1F;
    v3 = secLogObjForScope("SanitizeKeyclass");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v6[0] = 67109376;
      v6[1] = v1;
      v7 = 1024;
      v8 = v2;
      _os_log_debug_impl(&dword_22EB09000, v3, OS_LOG_TYPE_DEBUG, "sanitizing request for keyclass %d to keyclass %d", v6, 0xEu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t SecSupportsEnhancedApfs()
{
  if (DeviceTree_SupportsEnhancedApfs_onceToken != -1)
  {
    dispatch_once(&DeviceTree_SupportsEnhancedApfs_onceToken, &__block_literal_global_29);
  }

  if (DeviceTree_SupportsEnhancedApfs_supported)
  {
    return 1;
  }

  if (SecSharedDataVolumeBootArgSet_onceToken != -1)
  {
    dispatch_once(&SecSharedDataVolumeBootArgSet_onceToken, &__block_literal_global_37);
  }

  return SecSharedDataVolumeBootArgSet_boot_arg_set;
}

void __SecSharedDataVolumeBootArgSet_block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  __len = 1023;
  bzero(__big, 0x400uLL);
  if (!sysctlbyname("kern.bootargs", __big, &__len, 0, 0) && strnstr(__big, "-apfs_shared_datavolume", __len))
  {
    SecSharedDataVolumeBootArgSet_boot_arg_set = 1;
  }

  v0 = secLogObjForScope("eapfs");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v4 = SecSharedDataVolumeBootArgSet_boot_arg_set;
    _os_log_impl(&dword_22EB09000, v0, OS_LOG_TYPE_DEFAULT, "eapfs boot-arg set to %{BOOL}d", buf, 8u);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t SecIsEduMode()
{
  if (SecIsEduMode_once != -1)
  {
    dispatch_once(&SecIsEduMode_once, &__block_literal_global_1586);
  }

  return SecIsEduMode_result;
}

void __SecIsEduMode_block_invoke()
{
  v0 = MKBUserTypeDeviceMode();
  if (v0)
  {
    v1 = v0;
    value = 0;
    if (CFDictionaryGetValueIfPresent(v0, *MEMORY[0x277D28AD0], &value))
    {
      if (CFEqual(value, *MEMORY[0x277D28AE0]))
      {
        SecIsEduMode_result = 1;
      }
    }

    CFRelease(v1);
  }

  else
  {
    v2 = secLogObjForScope("edumode");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_22EB09000, v2, OS_LOG_TYPE_DEFAULT, "Cannot determine because deviceMode is NULL", v3, 2u);
    }
  }
}

uint64_t SecSeparateUserKeychain()
{
  if (SecSeparateUserKeychain_onceToken != -1)
  {
    dispatch_once(&SecSeparateUserKeychain_onceToken, &__block_literal_global_4);
  }

  return SecSeparateUserKeychain_ffSeparateUserKeychain;
}

void __SecSeparateUserKeychain_block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  SecSeparateUserKeychain_ffSeparateUserKeychain = _os_feature_enabled_impl();
  v0 = secLogObjForScope("keychain");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    if (SecSeparateUserKeychain_ffSeparateUserKeychain)
    {
      v1 = "enabled";
    }

    else
    {
      v1 = "disabled";
    }

    v3 = 136315138;
    v4 = v1;
    _os_log_impl(&dword_22EB09000, v0, OS_LOG_TYPE_DEFAULT, "SeparateUserKeychain set via feature flag to %s", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

CFURLRef SecCopyURLForFileInBaseDirectory(int a1, const __CFString *a2, uint64_t a3)
{
  v5 = SecCopyBaseFilesURL(a1);
  if (a3)
  {
    v6 = *MEMORY[0x277CBECE8];
    Copy = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@/%@", a2, a3);
  }

  else
  {
    if (!a2)
    {
      goto LABEL_10;
    }

    v6 = *MEMORY[0x277CBECE8];
    Copy = CFStringCreateCopy(*MEMORY[0x277CBECE8], a2);
  }

  v8 = Copy;
  if (v5 && Copy)
  {
    v9 = CFURLCreateCopyAppendingPathComponent(v6, v5, Copy, a3 == 0);
    CFRelease(v8);
LABEL_11:
    CFRelease(v5);
    return v9;
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

LABEL_10:
  v9 = 0;
  if (v5)
  {
    goto LABEL_11;
  }

  return v9;
}

CFURLRef SecCopyURLForFileInUserScopedKeychainDirectory(uint64_t a1)
{
  if (SecSeparateUserKeychain_onceToken != -1)
  {
    dispatch_once(&SecSeparateUserKeychain_onceToken, &__block_literal_global_4);
  }

  v2 = SecSeparateUserKeychain_ffSeparateUserKeychain;
  syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", SecSeparateUserKeychain_ffSeparateUserKeychain);

  return SecCopyURLForFileInBaseDirectory(v2 ^ 1u, @"Library/Keychains", a1);
}

CFURLRef SecCopyURLForFileInKeychainDirectory(uint64_t a1)
{
  syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", 0);

  return SecCopyURLForFileInBaseDirectory(1, @"Library/Keychains", a1);
}

CFURLRef SecCopyURLForFileInManagedPreferencesDirectory(uint64_t a1)
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], "mobile", 0x600u);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFStringCreateWithFormat(v2, 0, @"/Library/Managed Preferences/%@/%@", v3, a1);
  if (v5)
  {
    v6 = v5;
    v7 = CFURLCreateWithFileSystemPath(v2, v5, kCFURLPOSIXPathStyle, 0);
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v4);
  return v7;
}

void WithPathInDirectory(const __CFURL *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    memset(__b, 170, sizeof(__b));
    CFURLGetFileSystemRepresentation(a1, 0, __b, 1024);
    (*(a2 + 16))(a2, __b);
    CFRelease(a1);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void WithPathInKeychainDirectory(uint64_t a1, uint64_t a2)
{
  syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", 0);
  v4 = SecCopyURLForFileInBaseDirectory(1, @"Library/Keychains", a1);

  WithPathInDirectory(v4, a2);
}

void WithPathInUserCacheDirectory(uint64_t a1, uint64_t a2)
{
  v3 = SecCopyURLForFileInBaseDirectory(1, @"Library/Caches", a1);

  WithPathInDirectory(v3, a2);
}

void WithPathInProtectedDirectory(uint64_t a1, uint64_t a2)
{
  v3 = SecCopyURLForFileInBaseDirectory(1, @"private/var/protected/", a1);

  WithPathInDirectory(v3, a2);
}

void SetCustomHomePath(char *cStr)
{
  if (cStr)
  {
    v1 = CFStringCreateWithCStringNoCopy(0, cStr, 0x8000100u, *MEMORY[0x277CBED00]);
    SecSetCustomHomeURLString(v1);
    if (!v1)
    {
      return;
    }
  }

  else
  {
    v1 = sCustomHomeURL;
    if (!sCustomHomeURL)
    {
      return;
    }

    sCustomHomeURL = 0;
  }

  CFRelease(v1);
}

void PerformWithBuffer(size_t size, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (size)
  {
    if (size <= 0x800)
    {
      MEMORY[0x28223BE20]();
      memset(v9 - ((size + 15) & 0xFFFFFFFFFFFFFFF0), 170, size);
      (*(a2 + 16))(a2, size, v9 - ((size + 15) & 0xFFFFFFFFFFFFFFF0));
LABEL_11:
      v8 = *MEMORY[0x277D85DE8];
      return;
    }

    v6 = malloc_type_malloc(size, 0x2B51245EuLL);
    (*(a2 + 16))(a2, size, v6);
    if (!v6)
    {
      goto LABEL_11;
    }

    v7 = *MEMORY[0x277D85DE8];

    free(v6);
  }

  else
  {
    v4 = *(a2 + 16);
    v5 = *MEMORY[0x277D85DE8];

    v4(a2, 0, 0);
  }
}

void PerformWithBufferAndClear(size_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = __PerformWithBufferAndClear_block_invoke;
  v2[3] = &unk_278864378;
  v2[4] = a2;
  PerformWithBuffer(a1, v2);
}

void __PerformWithBufferAndClear_block_invoke(uint64_t a1, size_t a2, void *a3)
{
  (*(*(a1 + 32) + 16))();

  bzero(a3, a2);
}

double gotLoadHelper_x8__OBJC_CLASS___AAFAnalyticsEvent(double result)
{
  if (!atomic_load(&dlopenHelperFlag_AAAFoundation))
  {
    return dlopenHelper_AAAFoundation(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___AAFAnalyticsReporter(double result)
{
  if (!atomic_load(&dlopenHelperFlag_AAAFoundation))
  {
    return dlopenHelper_AAAFoundation(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___AAFAnalyticsTransportRTC(double result)
{
  if (!atomic_load(&dlopenHelperFlag_AAAFoundation))
  {
    return dlopenHelper_AAAFoundation(result);
  }

  return result;
}

double gotLoadHelper_x8__kAAFDeviceSessionIdString(double result)
{
  if (!atomic_load(&dlopenHelperFlag_AAAFoundation))
  {
    return dlopenHelper_AAAFoundation(result);
  }

  return result;
}

double gotLoadHelper_x8__kAAFFlowIdString(double result)
{
  if (!atomic_load(&dlopenHelperFlag_AAAFoundation))
  {
    return dlopenHelper_AAAFoundation(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_AAAFoundation(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/AAAFoundation.framework/AAAFoundation", 0);
  atomic_store(1u, &dlopenHelperFlag_AAAFoundation);
  return a1;
}