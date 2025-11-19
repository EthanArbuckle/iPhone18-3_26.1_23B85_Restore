uint64_t MMCSRegisteredItemCount(uint64_t result)
{
  if (result)
  {
    if (*(result + 120))
    {
      return 0;
    }

    else
    {
      result = *(result + 16);
      if (result)
      {
        return CKRegisteredItemCount();
      }
    }
  }

  return result;
}

uint64_t MMCSGetRegisteredItems(uint64_t result)
{
  if (result)
  {
    if (*(result + 120))
    {
      return 0;
    }

    else
    {
      result = *(result + 16);
      if (result)
      {
        return CKGetRegisteredItems();
      }
    }
  }

  return result;
}

uint64_t MMCSSignatureGeneratorCreate()
{
  CKFileDigestArgumentsV1WithFileCreate();
  CKFileSignatureGeneratorCreate();
  return 0;
}

const UInt8 *MMCSSignatureGeneratorCreateWithBoundaryKey(const UInt8 *a1)
{
  result = mmcs_file_digest_arguments_create_with_boudnary_key(a1);
  if (result)
  {
    v2 = result;
    CKFileSignatureGeneratorCreate();
    C3BaseRelease(v2);
    return 0;
  }

  return result;
}

const UInt8 *MMCSSignatureGeneratorCreateWithVerificationKey(const UInt8 *result)
{
  if (result)
  {
    v1 = result;
    if (CFDataGetLength(result) == 32)
    {
      result = CFDataGetBytePtr(v1);
      if (!result)
      {
        return result;
      }

      BytePtr = CFDataGetBytePtr(v1);
      if (!mmcs_zcmp(BytePtr, 0x20uLL))
      {
        CKFileDigestArgumentsV2WithFileKeyCreate();
        return 0;
      }
    }

    return 0;
  }

  return result;
}

uint64_t MMCSSignatureGeneratorFinish(const void *a1)
{
  CKFileSignatureGeneratorFinish();
  if (a1)
  {
    CFRelease(a1);
  }

  CKFileDigestResultsFileSignature();
  return CKFileSignatureCopy();
}

uint64_t MMCSPackageSectionSignatureGeneratorCreate()
{
  CKFileDigestArgumentsV1WithPackageCreate();
  CKFileSignatureGeneratorCreate();
  return 0;
}

uint64_t MMCSPackageSectionSignatureGeneratorCreateWithBoundaryKey()
{
  CKFileDigestArgumentsV2ForPackageWithBoundaryKeyCreate();
  CKFileSignatureGeneratorCreate();
  return 0;
}

uint64_t MMCSPackageSectionSignatureGeneratorCreateWithFileKey()
{
  CKFileDigestArgumentsV2ForPackageWithVerificationKeyCreate();
  CKFileSignatureGeneratorCreate();
  return 0;
}

uint64_t MMCSPackageSectionSignatureGeneratorFinish(const void *a1)
{
  CKFileSignatureGeneratorFinish();
  if (a1)
  {
    CFRelease(a1);
  }

  CKFileDigestResultsFileSignature();
  return CKFileSignatureCopy();
}

__CFDictionary *MMCSPackageSectionSignatureGeneratorFinishWithResults(const void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  CKFileSignatureGeneratorFinish();
  if (a1)
  {
    CFRelease(a1);
  }

  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v2 = Mutable;
    v7 = CKFileDigestResultsFileSignature();
    v8 = MMCSSignatureCopyData(v7);
    CFDictionaryAddValue(v2, @"kMMCSSignature", v8);
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = CKFileDigestResultsFileVerificationKey();
    if (v9)
    {
      CFDictionaryAddValue(v2, @"kMMCSVerificationKey", v9);
    }

    goto LABEL_5;
  }

  v10 = mmcs_logging_logger_default();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
LABEL_4:
    v2 = 0;
    goto LABEL_5;
  }

  v2 = CFStringCreateWithFormat(v5, 0, @"Unable to allocate results");
  v11 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v2;
    _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  if (v2)
  {
    CFRelease(v2);
    goto LABEL_4;
  }

LABEL_5:
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t MMCSSignatureIsValidV2(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = mmcs_file_signature_is_valid(result);
    if (result)
    {
      v2 = *v1;
      v3 = v2 & 0x7F;
      v4 = (v2 >> 3) & 1;
      if (v3 == 4)
      {
        return 1;
      }

      else
      {
        return v4;
      }
    }
  }

  return result;
}

uint64_t MMCSSignatureCreateWithBoundaryKeyFromFileDescriptor(const UInt8 *a1, uint64_t a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {

    return mmcs_file_signature_create_from_file_descriptor(a1, a2, a3);
  }

  else
  {
    if (a3)
    {
      *a3 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 40, @"boundaryKey must not be NULL", a4, a5, a6, a7, a8, v9);
    }

    return 0;
  }
}

uint64_t MMCSComputeSignatureAndRegisterItemWithDescriptor(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, char **a7, uint64_t *a8, void *a9)
{
  v46 = *MEMORY[0x277D85DE8];
  if (a1 && !*(a1 + 120))
  {
    cf = 0;
    v19 = MMCSItemReaderWriterCreateWithFileDescriptor(a6, 0, 0, 0, &cf);
    if (v19)
    {
      v20 = v19;
      if (MMCSItemReaderWriterOpen(v19, &cf))
      {
        v40 = 0;
        v39 = 0;
        v38 = 0;
        v10 = mmcs_compute_signature_and_register_item_with_item_reader_writer(*(a1 + 16), a2, v20, a3 == 0, a5 != 0, a5, &v40, &v39, &v38, 0, &cf);
        if (v10 || !cf)
        {
          if (v10)
          {
            if (a7)
            {
              v26 = CKFileDigestResultsFileSignature();
              *a7 = mmcs_file_signature_copy(v26);
            }

            if (a8)
            {
              *a8 = CKFileDigestResultsFileLength();
            }

            if (a9)
            {
              v27 = 0;
              if (a5 && v39)
              {
                v27 = 0;
                for (i = 0; i < v39; ++i)
                {
                  v29 = CKRegisteredChunkLength();
                  v27 += mmcs_padded_chunk_length_with_policy_and_chunk_length(a4, v29);
                  CKRegisteredChunkSize();
                }
              }

              *a9 = v27;
            }

            mmcs_engine_force_commit(a1);
            v30 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              v31 = mmcs_file_signature_to_hexstring(*a7);
              v32 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
              {
                *buf = 134218242;
                v43 = a2;
                v44 = 2082;
                v45 = v31;
                _os_log_impl(&dword_2577D8000, v32, OS_LOG_TYPE_INFO, "Committed newly registered item %lld as %{public}s to chunk store.", buf, 0x16u);
              }

              if (v31)
              {
                free(v31);
              }
            }
          }
        }

        else
        {
          v21 = mmcs_cferror_copy_description(cf);
          v22 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = @"(none)";
            if (v21)
            {
              v23 = v21;
            }

            v24 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"registering item failed with error %@", v23);
            v25 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v43 = v24;
              _os_log_impl(&dword_2577D8000, v25, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v24)
            {
              CFRelease(v24);
            }
          }

          if (v21)
          {
            CFRelease(v21);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          cf = 0;
        }

        if (!MMCSItemReaderWriterClose(v20, &cf) && cf)
        {
          v33 = mmcs_cferror_copy_description(cf);
          v34 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = @"(none)";
            if (v33)
            {
              v35 = v33;
            }

            v36 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Closing itemReaderWriter failed with error %@", v35);
            v37 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v43 = v36;
              _os_log_impl(&dword_2577D8000, v37, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v36)
            {
              CFRelease(v36);
            }
          }

          if (v33)
          {
            CFRelease(v33);
          }
        }

        if (v40)
        {
          C3BaseRelease(v40);
        }

        v40 = 0;
        if (v38)
        {
          free(v38);
        }
      }

      else
      {
        v10 = 0;
      }

      C3BaseRelease(v20);
    }

    else
    {
      v10 = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

CFDataRef MMCSReferenceObjectCreateWithType(int a1, CFErrorRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == 1)
  {
    v9 = 16;
  }

  else
  {
    if (a1 != 2)
    {
      v23 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 40, @"Unsupported asset key type requested : %llu", a4, a5, a6, a7, a8, a1);
      v15 = 0;
      if (a2)
      {
LABEL_16:
        v24 = 0;
        goto LABEL_17;
      }

LABEL_9:
      if (v23)
      {
        CFRelease(v23);
      }

      v24 = 0;
      if (v15)
      {
        goto LABEL_18;
      }

      return v24;
    }

    v9 = 32;
  }

  v15 = malloc_type_malloc(v9, 0x100004077774924uLL);
  if (!v15)
  {
    v25 = @"Failed to allocated bytes for key generation.";
LABEL_14:
    v23 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 36, v25, v10, v11, v12, v13, v14, v28);
LABEL_15:
    if (a2)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], v9, v15))
  {
    v16 = *__error();
    v17 = __error();
    strerror(*v17);
    v23 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"SecRandomCopyBytes failed with error code %d: %s", v18, v19, v20, v21, v22, v16);
    goto LABEL_15;
  }

  v27 = XCFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v15, v9, *MEMORY[0x277CBECF0]);
  if (!v27)
  {
    v25 = @"Failed to allocated CFData wrapper for AssetKey.";
    goto LABEL_14;
  }

  v24 = v27;
  if (!a2)
  {
    return v24;
  }

  v23 = 0;
  v15 = 0;
LABEL_17:
  *a2 = v23;
  if (v15)
  {
LABEL_18:
    free(v15);
  }

  return v24;
}

CFDataRef MMCSReferenceSignatureCreateWithReferenceObject(const __CFData *a1, CFErrorRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v22 = @"ReferenceObject must not be NULL.";
    goto LABEL_9;
  }

  if (!CFDataGetLength(a1))
  {
    v22 = @"ReferenceObject must have non-zero size.";
LABEL_9:
    v21 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 40, v22, a4, a5, a6, a7, a8, v25);
    v16 = 0;
    if (!a2)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  v10 = malloc_type_calloc(1uLL, 0x15uLL, 0x100004077774924uLL);
  v16 = v10;
  if (v10)
  {
    *v10 = 1;
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);
    CC_SHA1(BytePtr, Length, v16 + 1);
    v19 = XCFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v16, 21, *MEMORY[0x277CBECF0]);
    if (v19)
    {
      v20 = v19;
      if (!a2)
      {
        return v20;
      }

      v21 = 0;
      v16 = 0;
      goto LABEL_11;
    }

    v24 = @"Failed to allocated CFData wrapper for ReferenceSignature.";
  }

  else
  {
    v24 = @"Failed to allocated bytes for ReferneceSignature generation.";
  }

  v21 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 36, v24, v11, v12, v13, v14, v15, v25);
  if (!a2)
  {
LABEL_17:
    if (v21)
    {
      CFRelease(v21);
    }

    v20 = 0;
    if (v16)
    {
      goto LABEL_12;
    }

    return v20;
  }

LABEL_10:
  v20 = 0;
LABEL_11:
  *a2 = v21;
  if (v16)
  {
LABEL_12:
    free(v16);
  }

  return v20;
}

uint64_t MMCSSetLogLevel(int a1, int a2)
{
  result = mmcs_library_init();
  if (a1 == 7)
  {
    gMMCS_DebugLevel = a2;
    gMMCS_LogTimeouts = a2 > 4;
  }

  return result;
}

CFMutableStringRef MMCSEngineCopyStatusReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v7 = Mutable;
  if (a1 && Mutable && !*(a1 + 120))
  {
    v9[0] = a1;
    v9[1] = a2;
    v9[2] = Mutable;
    v9[3] = a3;
    v9[4] = 0;
    v9[5] = 0;
    mmcs_engine_append_requests_description(v9);
  }

  return v7;
}

__CFArray *_MMCSFlattenError(__CFError *a1, uint64_t a2)
{
  Mutable = 0;
  if (!a1 || a2 == 4)
  {
    return Mutable;
  }

  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  valuePtr = CFErrorGetCode(a1);
  v6 = CFNumberCreate(v5, kCFNumberCFIndexType, &valuePtr);
  Domain = CFErrorGetDomain(a1);
  CFArrayAppendValue(Mutable, Domain);
  CFArrayAppendValue(Mutable, v6);
  if (v6)
  {
    CFRelease(v6);
  }

  v8 = CFErrorCopyUserInfo(a1);
  v9 = *MEMORY[0x277CBEE78];
  if (CFDictionaryGetValue(v8, *MEMORY[0x277CBEE78]))
  {
    Value = CFDictionaryGetValue(v8, v9);
    goto LABEL_9;
  }

  if (CFDictionaryGetValue(v8, @"kMMCSErrorUnderlyingErrorArrayKey"))
  {
    v11 = CFDictionaryGetValue(v8, @"kMMCSErrorUnderlyingErrorArrayKey");
    Value = CFArrayGetValueAtIndex(v11, 0);
LABEL_9:
    v12 = Value;
    if (!v8)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v12 = 0;
  if (v8)
  {
LABEL_10:
    CFRelease(v8);
  }

LABEL_11:
  v13 = _MMCSFlattenError(v12, a2 + 1);
  if (v13)
  {
    v14 = v13;
    v17.length = CFArrayGetCount(v13);
    v17.location = 0;
    CFArrayAppendArray(Mutable, v14, v17);
    CFRelease(v14);
  }

  return Mutable;
}

CFStringRef MMCSTemporaryFilePathForItem(const __CFURL *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  cf = 0;
  cStr = 0;
  if (mmcs_working_directory_file_path(a1, "tmpm", a2, &cStr, &cf))
  {
    v2 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  }

  else
  {
    v2 = 0;
  }

  if (cStr)
  {
    free(cStr);
  }

  cStr = 0;
  if (cf)
  {
    CFRelease(cf);
  }

  return v2;
}

uint64_t mmcs_put_complete_create(CFArrayRef **a1, uint64_t a2, const void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *a1 = 0;
  }

  result = 0;
  if (a2)
  {
    if (a3)
    {
      result = malloc_type_calloc(1uLL, 0x20uLL, 0x6004087AB86DCuLL);
      if (result)
      {
        v7 = result;
        *result = a2;
        *(result + 8) = 0;
        CFRetain(a3);
        v7[3] = a3;
        if (gMMCS_DebugLevel >= 4)
        {
          v8 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            v9 = *MEMORY[0x277CBECE8];
            Count = CFArrayGetCount(v7[3]);
            v11 = CFStringCreateWithFormat(v9, 0, @"created mmcs_put_complete (%p) for %ld containers", v7, Count);
            v12 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v15 = v11;
              _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
            }

            if (v11)
            {
              CFRelease(v11);
            }
          }
        }

        if (a1)
        {
          *a1 = v7;
        }

        else
        {
          free(v7);
        }

        result = 1;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void mmcs_put_complete_cleanup_containers(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2.length = CFArrayGetCount(*(a1 + 24));
    v2.location = 0;

    CFArrayApplyFunction(v1, v2, _mmcs_put_container_put_complete_done, 0);
  }
}

void mmcs_put_complete_set_error_and_push_to_containers(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 16);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 16) = 0;
    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 16) = cf;
    v5 = *(a1 + 24);
    v7.length = CFArrayGetCount(v5);
    v6 = *(a1 + 16);
    v7.location = 0;

    CFArrayApplyFunction(v5, v7, mmcs_container_set_complete_error_if_absent, v6);
  }
}

void mmcs_put_complete_cancel(uint64_t a1, void *cf)
{
  if (!*(a1 + 16))
  {
    mmcs_put_complete_set_error_and_push_to_containers(a1, cf);
  }

  v4 = *(a1 + 8);
  if (v4)
  {

    mmcs_http_context_should_cancel(v4, cf);
  }
}

void mmcs_put_complete_dealloc(void *a1)
{
  if (a1)
  {
    *a1 = 0;
    v2 = a1[1];
    if (v2)
    {
      mmcs_http_context_invalidate(v2);
      v3 = a1[1];
      if (v3)
      {
        C3BaseRelease(v3);
      }

      a1[1] = 0;
    }

    v4 = a1[3];
    if (v4)
    {
      CFRelease(v4);
    }

    a1[3] = 0;
    v5 = a1[2];
    if (v5)
    {
      CFRelease(v5);
    }

    free(a1);
  }
}

void mmcs_put_complete_append_description(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  v5 = *(a1 + 1);
  v6 = v2;
  v4 = *a1;
  ++*(&v5 + 1);
  v3 = *(v1 + 8);
  if (v3)
  {
    *&v4 = v3;
    mmcs_http_context_append_description(&v4);
  }
}

uint64_t mmcs_perform_run_loop_target_create(uint64_t *a1, const void *a2, const void *a3)
{
  v9 = 0;
  result = mmcs_perform_target_create(&v9, 1, 16);
  if (result)
  {
    v7 = v9;
    if (v9)
    {
      v8 = *(v9 + 24);
      if (a2)
      {
        CFRetain(a2);
      }

      *v8 = a2;
      if (a3)
      {
        CFRetain(a3);
      }

      v8[1] = a3;
      *a1 = v7;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void mmcs_perform_run_loop_target_finalize(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (*v1)
  {
    CFRelease(*v1);
  }

  *v1 = 0;
  v2 = *(v1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  *(v1 + 8) = 0;
}

void mmcs_perform_run_loop_target_async(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = voucher_copy();
  v6 = *v3;
  v5 = *(v3 + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = __mmcs_perform_run_loop_target_async_block_invoke;
  v7[3] = &unk_279846170;
  v7[4] = a2;
  v7[5] = v4;
  CFRunLoopPerformBlock(v6, v5, v7);
  CFRunLoopWakeUp(*v3);
}

void __mmcs_perform_run_loop_target_async_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    os_retain(v2);
    v3 = *(a1 + 40);
  }

  voucher_adopt();
  (*(*(a1 + 32) + 16))();
  v4 = voucher_adopt();
  if (v4)
  {
    os_release(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {

    os_release(v5);
  }
}

uint64_t mmcs_perform_run_loop_target_get_underlying_run_loop_and_run_modes(uint64_t result, void *a2, void *a3)
{
  v3 = *(result + 24);
  if (a2)
  {
    *a2 = *v3;
  }

  if (a3)
  {
    *a3 = v3[1];
  }

  return result;
}

void mmcs_perform_run_loop_target_stream_schedule(uint64_t a1, void *cf)
{
  v3 = *(a1 + 24);
  v4 = CFGetTypeID(cf);
  Count = CFArrayGetCount(v3[1]);
  if (Count >= 1)
  {
    v6 = Count;
    for (i = 0; i != v6; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3[1], i);
      if (v4 == CFReadStreamGetTypeID())
      {
        CFReadStreamScheduleWithRunLoop(cf, *v3, ValueAtIndex);
      }

      else if (v4 == CFWriteStreamGetTypeID())
      {
        CFWriteStreamScheduleWithRunLoop(cf, *v3, ValueAtIndex);
      }

      else
      {
        v9 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *v10 = 0;
          _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_ERROR, "Unknown stream type. Failed to schedule request", v10, 2u);
        }
      }
    }
  }
}

void mmcs_perform_run_loop_target_stream_unschedule(uint64_t a1, void *cf)
{
  v3 = *(a1 + 24);
  v4 = CFGetTypeID(cf);
  Count = CFArrayGetCount(v3[1]);
  if (Count >= 1)
  {
    v6 = Count;
    for (i = 0; i != v6; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3[1], i);
      if (v4 == CFReadStreamGetTypeID())
      {
        CFReadStreamUnscheduleFromRunLoop(cf, *v3, ValueAtIndex);
      }

      else if (v4 == CFWriteStreamGetTypeID())
      {
        CFWriteStreamUnscheduleFromRunLoop(cf, *v3, ValueAtIndex);
      }

      else
      {
        v9 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *v10 = 0;
          _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_ERROR, "Unknown stream type. Failed to unschedule request", v10, 2u);
        }
      }
    }
  }
}

uint64_t mmcs_perform_run_loop_target_create_source(uint64_t a1, void *a2, _OWORD *a3)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    mmcs_perform_run_loop_target_create_source_cold_1();
  }

  v5 = *v3;
  v4 = v3[1];
  v6 = a3[1];
  v8[0] = *a3;
  v8[1] = v6;
  return mmcs_perform_run_loop_source_create(a2, v8, v5, v4);
}

uint64_t mmcs_perform_run_loop_target_create_timer(uint64_t a1, void *a2, _OWORD *a3)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    mmcs_perform_run_loop_target_create_timer_cold_1();
  }

  v5 = *v3;
  v4 = v3[1];
  v6 = a3[1];
  v8[0] = *a3;
  v8[1] = v6;
  return mmcs_perform_run_loop_timer_create(a2, v8, v5, v4);
}

uint64_t mmcs_job_queue_enqueue(uint64_t a1, void *cf)
{
  if (!cf)
  {
    return 0;
  }

  C3BaseRetain(cf);
  pthread_mutex_lock((a1 + 16));
  if (*(a1 + 104))
  {
    pthread_mutex_unlock((a1 + 16));
    C3BaseRelease(cf);
    return 0;
  }

  else
  {
    dispatch_group_async_f(*(a1 + 96), *(a1 + 88), cf, _mmcs_job_queue_execute_job);
    pthread_mutex_unlock((a1 + 16));
    return 1;
  }
}

void _mmcs_job_queue_execute_job(const void *a1)
{
  mmcs_job_execute(a1);
  if (a1)
  {

    C3BaseRelease(a1);
  }
}

void __get_home_dir_path_block_invoke()
{
  v13 = *MEMORY[0x277D85DE8];
  if (!ub_home_dir)
  {
    v0 = sysconf(71);
    if (v0 == -1)
    {
      v7 = *__error();
      v8 = strerror(v7);
      syslog(3, "can't get home dir path size %s (%d)", v8, v7);
    }

    else
    {
      v1 = v0;
      v2 = &v10 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v2, v0);
      memset(&v12, 0, sizeof(v12));
      v11 = 0;
      v3 = getuid();
      if (getpwuid_r(v3, &v12, v2, v1, &v11))
      {
        v4 = 1;
      }

      else
      {
        v4 = v11 == 0;
      }

      if (v4)
      {
        v5 = *__error();
        v6 = strerror(v5);
        syslog(3, "can't get home dir path %s (%d)", v6, v5);
      }

      else
      {
        ub_home_dir = strdup(v12.pw_dir);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t get_log_dir_path(void *context)
{
  if (s_cached_log_dir_path_once != -1)
  {
    dispatch_once_f(&s_cached_log_dir_path_once, context, get_log_dir_path_once);
  }

  return s_cached_log_dir_path;
}

void get_log_dir_path_once(const char *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (get_home_dir_path_onceToken != -1)
  {
    get_log_dir_path_once_cold_1();
  }

  if (ub_home_dir)
  {
    v2 = ub_home_dir;
  }

  else
  {
    v2 = ".";
  }

  if (a1)
  {
    asprintf(&s_cached_log_dir_path, "%s/Library/Logs/Ubiquity/%s", v2, a1);
  }

  else
  {
    v22 = 0;
    asprintf(&s_cached_log_dir_path, "%s/Library/Logs/CrashReporter/DiagnosticLogs/Ubiquity", v2);
    if (access(s_cached_log_dir_path, 0) == -1)
    {
      if (mkpath_np(s_cached_log_dir_path, 0x1C0u) < 0)
      {
        v14 = s_cached_log_dir_path;
        v15 = *__error();
        v16 = __error();
        v17 = strerror(*v16);
        syslog(3, "unable to mkpath_np(%s); error %d; %s", v14, v15, v17);
      }

      else
      {
        asprintf(&v22, "%s/Library/Logs/CrashReporter/DiagnosticLogs", v2);
        v3 = s_cached_log_dir_path;
        v4 = v22;
        v5 = opendir(s_cached_log_dir_path);
        if (v5)
        {
          v6 = v5;
          v7 = readdir(v5);
          if (v7)
          {
            v8 = v7;
            do
            {
              bzero(__str, 0x400uLL);
              bzero(&__to, 0x400uLL);
              if ((v8->d_name[0] != 46 || v8->d_name[1] && (v8->d_name[1] != 46 || v8->d_name[2])) && !strncmp(v8->d_name, "ubiquity", 8uLL))
              {
                snprintf(__str, 0x400uLL, "%s/%s", v3, v8->d_name);
                snprintf(&__to, 0x400uLL, "%s/%s", v4, v8->d_name);
                rename(__str, &__to, v9);
                if (v10)
                {
                  v11 = *__error();
                  v12 = __error();
                  v13 = strerror(*v12);
                  syslog(3, "unable to rename(%s, %s); error %d; %s", __str, &__to, v11, v13);
                }
              }

              v8 = readdir(v6);
            }

            while (v8);
          }

          closedir(v6);
        }

        else
        {
          v18 = *__error();
          v19 = __error();
          v20 = strerror(*v19);
          syslog(3, "unable to opendir(%s); error %d; %s", v3, v18, v20);
        }

        free(v22);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t *mmcs_get_file_sparse_context_create(uint64_t **a1, uint64_t a2)
{
  *a1 = 0;
  if (!a2)
  {
    mmcs_get_file_sparse_context_create_cold_1();
  }

  v4 = C3TypeRegister(&mmcs_get_file_sparse_contextGetTypeID_typeID);
  result = C3TypeCreateInstance_(0, v4, 0x18uLL);
  if (result)
  {
    v6 = result;
    result[2] = a2;
    result[4] = 0;
    if (!mmcs_index_set_create(result + 3))
    {
      C3BaseRelease(v6);
      v6 = 0;
    }

    *a1 = v6;
    return (v6 != 0);
  }

  return result;
}

BOOL mmcs_get_file_sparse_context_contains_zero_filled_block(void *a1)
{
  v1 = a1[4];
  if (!v1)
  {
    mmcs_get_file_sparse_context_contains_zero_filled_block_cold_3();
  }

  v3 = a1[3];
  if (!v3)
  {
    mmcs_get_file_sparse_context_contains_zero_filled_block_cold_2();
  }

  v4 = a1[2];
  if (v1 % v4)
  {
    v5 = v1 / v4 + 1;
  }

  else
  {
    v5 = v1 / v4;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    mmcs_get_file_sparse_context_contains_zero_filled_block_cold_1();
  }

  return mmcs_index_set_contains_range(v3, 0, v5 - 1) == 0;
}

void _mmcs_get_file_sparse_contextCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    C3BaseRelease(v2);
  }

  *(a1 + 24) = 0;
}

uint64_t mmcs_job_create(__int128 *a1)
{
  v2 = C3TypeRegister(&mmcs_jobGetTypeID_typeID);
  Instance = C3TypeCreateInstance_(0, v2, 0x78uLL);
  v4 = Instance;
  if (Instance)
  {
    v5 = pthread_mutex_init((Instance + 16), 0);
    *(v4 + 80) = v5 == 0;
    if (!a1 || v5)
    {
      C3BaseRelease(v4);
      return 0;
    }

    else
    {
      *(v4 + 81) = 1;
      v6 = a1[2];
      v7 = *a1;
      *(v4 + 104) = a1[1];
      *(v4 + 120) = v6;
      *(v4 + 88) = v7;
      v8 = *(v4 + 104);
      if (v8)
      {
        v8(*(v4 + 96));
      }
    }
  }

  return v4;
}

uint64_t mmcs_job_execute(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    v2(*(a1 + 96));
  }

  return mmcs_job_invalidate(a1);
}

uint64_t mmcs_job_invalidate(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  v2 = *(a1 + 81);
  *(a1 + 81) = *(a1 + 81) == 0;
  result = pthread_mutex_unlock((a1 + 16));
  if (v2)
  {
    v4 = *(a1 + 112);
    if (v4)
    {
      v5 = *(a1 + 96);

      return v4(v5);
    }
  }

  return result;
}

uint64_t _mmcs_jobCFFinalize(uint64_t a1)
{
  result = mmcs_job_invalidate(a1);
  if (*(a1 + 80))
  {

    return pthread_mutex_destroy((a1 + 16));
  }

  return result;
}

uint64_t mmcs_container_id_info_parse_container_id(const __CFString *a1)
{
  v14 = 0;
  if (!a1)
  {
    v12 = 0.0;
    return *&v12;
  }

  CStringFromCFStringSafely = _getCStringFromCFStringSafely(a1, 0x600u, &v14);
  if (CStringFromCFStringSafely)
  {
    v2 = mmcs_base64_encoded_cstring_to_cfdata(CStringFromCFStringSafely);
    v3 = v2;
    if (v2 && CFDataGetLength(v2) == 15)
    {
      BytePtr = CFDataGetBytePtr(v3);
      v5 = 0;
      v6 = 0;
      v7 = BytePtr + 5;
      do
      {
        v6 = v7[v5++] | (v6 << 8);
      }

      while (v5 != 6);
      v8 = mmcs_time_convert_server_time_to_cfabsolutetime(v6);
      v9 = CFDataGetBytePtr(v3);
      v10 = 0;
      v11 = 0;
      do
      {
        v11 = v9[v10++ + 11] | (v11 << 8);
      }

      while (v10 != 4);
      v12 = v8;
      goto LABEL_14;
    }
  }

  else
  {
    v3 = 0;
  }

  v12 = 0.0;
LABEL_14:
  if (v14)
  {
    free(v14);
  }

  v14 = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  return *&v12;
}

uint64_t mmcs_chunk_instance_chunk_coder_create(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 56);
  if ((**(v4 + 8) & 0x7F) == 4)
  {
    v5 = *MEMORY[0x277CBECE8];
    v6 = *(v4 + 16);
    v7 = CKChunkSchemeAndEncryptionKeySize();
    v8 = CFDataCreate(v5, v6, v7);
    CKChunkDigestArgumentsV2WithChunkKeyCreate();
    if (v8)
    {
      CFRelease(v8);
    }
  }

  else
  {
    v9 = *(v4 + 16);
    CKChunkDigestArgumentsV1Create();
  }

  if (a2 == 3 || !*(v4 + 16))
  {
    v13 = *(v4 + 8);
    v14 = *(v4 + 4);
    goto LABEL_11;
  }

  if (a2 == 1)
  {
    v17 = *(v4 + 8);
    v18 = *(v4 + 4);
    v19 = *(a1 + 64);
    goto LABEL_11;
  }

  if (a2 == 2)
  {
    v10 = *(v4 + 8);
    v11 = *(v4 + 4);
    v12 = *(a1 + 64);
LABEL_11:
    CKChunkCoderCreate();
    goto LABEL_12;
  }

  v20 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v22 = a2;
    _os_log_impl(&dword_2577D8000, v20, OS_LOG_TYPE_ERROR, "Unexpected chunk coder mode requested %d.", buf, 8u);
  }

LABEL_12:
  result = 0;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

const char *mmcs_network_activity_type_as_c_string(uint64_t a1)
{
  v1 = "unknown activity type";
  if (a1 == 1)
  {
    v1 = "download";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "upload";
  }
}

uint64_t mmcs_perform_target_async(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    mmcs_perform_target_async_cold_1();
  }

  v3 = _performTargetCallbacks[7 * *(result + 16)];
  if (v3)
  {

    return v3();
  }

  return result;
}

uint64_t mmcs_perform_target_get_underlying_run_loop_and_run_modes(uint64_t result)
{
  v1 = *(result + 16);
  if ((v1 & 0xFFFFFFFD) != 0)
  {
    return _performTargetCallbacks[7 * v1 + 1]();
  }

  return result;
}

uint64_t mmcs_perform_target_stream_schedule(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return _performTargetCallbacks[7 * v1 + 2]();
  }

  return result;
}

__CFString *metricsinfo__set_request_url_with_cfstring(uint64_t a1, const __CFString *a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    free(v4);
  }

  if (a2)
  {
    result = createCStringWithCFString(a2);
  }

  else
  {
    result = 0;
  }

  *(a1 + 24) = result;
  return result;
}

uint64_t metricsinfo__get_timed_out(uint64_t a1)
{
  if (!*(a1 + 36))
  {
    metricsinfo__get_timed_out_cold_1();
  }

  return *(a1 + 40);
}

uint64_t metricsinfo__set_timed_out(uint64_t result, int a2)
{
  *(result + 36) = 1;
  *(result + 40) = a2;
  return result;
}

uint64_t metricsinfo__clear_timed_out(uint64_t result)
{
  *(result + 36) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t metricsinfo__get_http_status(uint64_t a1)
{
  if (!*(a1 + 44))
  {
    metricsinfo__get_http_status_cold_1();
  }

  return *(a1 + 48);
}

uint64_t metricsinfo__set_http_status(uint64_t result, int a2)
{
  *(result + 44) = 1;
  *(result + 48) = a2;
  return result;
}

uint64_t metricsinfo__clear_http_status(uint64_t result)
{
  *(result + 44) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t metricsinfo__set_connection_init_time(uint64_t result, double a2)
{
  *(result + 216) = a2;
  *(result + 208) = 1;
  return result;
}

uint64_t metricsinfo__set_enqueued_time(uint64_t result, double a2)
{
  *(result + 232) = a2;
  *(result + 224) = 1;
  return result;
}

uint64_t metricsinfo__clear_enqueued_time(uint64_t result)
{
  *(result + 224) = 0;
  *(result + 232) = 0;
  return result;
}

double metricsinfo__get_start_name_resolution(uint64_t a1)
{
  if (!*(a1 + 64))
  {
    metricsinfo__get_start_name_resolution_cold_1();
  }

  return *(a1 + 72);
}

uint64_t metricsinfo__set_start_name_resolution(uint64_t result, double a2)
{
  *(result + 72) = a2;
  *(result + 64) = 1;
  return result;
}

uint64_t metricsinfo__clear_start_name_resolution(uint64_t result)
{
  *(result + 64) = 0;
  *(result + 72) = 0;
  return result;
}

double metricsinfo__get_stop_name_resolution(uint64_t a1)
{
  if (!*(a1 + 80))
  {
    metricsinfo__get_stop_name_resolution_cold_1();
  }

  return *(a1 + 88);
}

uint64_t metricsinfo__set_stop_name_resolution(uint64_t result, double a2)
{
  *(result + 88) = a2;
  *(result + 80) = 1;
  return result;
}

uint64_t metricsinfo__clear_stop_name_resolution(uint64_t result)
{
  *(result + 80) = 0;
  *(result + 88) = 0;
  return result;
}

uint64_t metricsinfo__get_bytes_written(uint64_t a1)
{
  if (!*(a1 + 128))
  {
    metricsinfo__get_bytes_written_cold_1();
  }

  return *(a1 + 136);
}

uint64_t metricsinfo__set_bytes_written(uint64_t result, uint64_t a2)
{
  *(result + 136) = a2;
  *(result + 128) = 1;
  return result;
}

uint64_t metricsinfo__clear_bytes_written(uint64_t result)
{
  *(result + 128) = 0;
  *(result + 136) = 0;
  return result;
}

uint64_t metricsinfo__clear_last_send_time(uint64_t result)
{
  *(result + 152) = 0;
  *(result + 160) = 0;
  return result;
}

uint64_t metricsinfo__get_response_size(uint64_t a1)
{
  if (!*(a1 + 168))
  {
    metricsinfo__get_response_size_cold_1();
  }

  return *(a1 + 176);
}

uint64_t metricsinfo__set_response_size(uint64_t result, uint64_t a2)
{
  *(result + 176) = a2;
  *(result + 168) = 1;
  return result;
}

uint64_t metricsinfo__clear_response_size(uint64_t result)
{
  *(result + 168) = 0;
  *(result + 176) = 0;
  return result;
}

uint64_t metricsinfo__get_bytes_read(uint64_t a1)
{
  if (!*(a1 + 184))
  {
    metricsinfo__get_bytes_read_cold_1();
  }

  return *(a1 + 192);
}

uint64_t metricsinfo__set_bytes_read(uint64_t result, uint64_t a2)
{
  *(result + 192) = a2;
  *(result + 184) = 1;
  return result;
}

uint64_t metricsinfo__clear_bytes_read(uint64_t result)
{
  *(result + 184) = 0;
  *(result + 192) = 0;
  return result;
}

_OWORD *metricsinfo__set_http_error_with_cferror(uint64_t a1, __CFError *a2)
{
  v4 = *(a1 + 200);
  if (v4)
  {
    chunkserver__error_response__free_unpacked(v4, 0);
  }

  if (a2)
  {
    result = create_error_response_for_Error(a2);
  }

  else
  {
    result = 0;
  }

  *(a1 + 200) = result;
  return result;
}

uint64_t metricsinfo__new(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = malloc_type_malloc(0xF0uLL, 0x1070040979AF96BuLL);
    if (result)
    {
      v2 = result;
      metricsinfo__httpmetrics_info__init(result);
      *v1 = v2;
      return 1;
    }
  }

  return result;
}

void **metricsinfo__free(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    free(v2);
  }

  *(a1 + 24) = 0;
  v3 = *(a1 + 200);
  if (v3)
  {
    chunkserver__error_response__free_unpacked(v3, 0);
  }

  *(a1 + 200) = 0;

  return metricsinfo__httpmetrics_info__free_unpacked(a1, 0);
}

CFStringRef socketinfo__create_cfstring_with_interface_identifier(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    return CFStringCreateWithCString(*MEMORY[0x277CBECE8], v1, 0x8000100u);
  }

  else
  {
    return 0;
  }
}

void socketinfo__set_interface_identifier_with_c_string(uint64_t a1, char *__s1)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    free(v4);
  }

  *(a1 + 24) = 0;
  if (__s1)
  {
    *(a1 + 24) = strdup(__s1);
  }
}

CFStringRef socketinfo__create_cfstring_with_peer_address(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return CFStringCreateWithCString(*MEMORY[0x277CBECE8], v1, 0x8000100u);
  }

  else
  {
    return 0;
  }
}

void socketinfo__set_peer_address_with_c_string(uint64_t a1, char *__s1)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    free(v4);
  }

  *(a1 + 32) = 0;
  if (__s1)
  {
    *(a1 + 32) = strdup(__s1);
  }
}

uint64_t socketinfo__new(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = malloc_type_malloc(0x30uLL, 0x10700407919B52CuLL);
    if (result)
    {
      v2 = result;
      metricsinfo__socket_info__init(result);
      *v1 = v2;
      return 1;
    }
  }

  return result;
}

void **socketinfo__free(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    free(v2);
  }

  *(a1 + 24) = 0;
  v3 = *(a1 + 32);
  if (v3)
  {
    free(v3);
  }

  *(a1 + 32) = 0;

  return metricsinfo__socket_info__free_unpacked(a1, 0);
}

CFTypeRef C3BaseRetainCallBack(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void C3BaseReleaseCallBack(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t mmcs_runloop_reply_job_create(const void *a1, __int128 *a2)
{
  v4 = C3TypeRegister(&mmcs_runloop_reply_jobGetTypeID_typeID);
  Instance = C3TypeCreateInstance_(0, v4, 0xA0uLL);
  v6 = Instance;
  if (Instance)
  {
    v7 = pthread_mutex_init((Instance + 16), 0);
    *(v6 + 80) = v7 == 0;
    if (!a2 || v7)
    {
      C3BaseRelease(v6);
      return 0;
    }

    else
    {
      *(v6 + 81) = 1;
      v9 = a2[1];
      v8 = a2[2];
      v10 = *a2;
      *(v6 + 144) = *(a2 + 6);
      *(v6 + 112) = v9;
      *(v6 + 128) = v8;
      *(v6 + 96) = v10;
      v11 = *(v6 + 112);
      if (v11)
      {
        v11(*(v6 + 104));
      }

      *(v6 + 152) = a1;
      C3BaseRetain(a1);
      *(v6 + 168) = voucher_copy();
      *&v13 = 0;
      *(&v13 + 1) = v6;
      v14 = C3BaseRetain;
      v15 = C3BaseRelease;
      v16 = 0;
      v17 = mmcs_runloop_reply_job_execute;
      *(v6 + 88) = mmcs_job_create(&v13);
    }
  }

  return v6;
}

void mmcs_runloop_reply_job_execute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 136);
  if (v5)
  {
    v5(*(a1 + 104));
  }

  cf = 0;
  if (!*(a1 + 82))
  {
    v6 = *(a1 + 152);
    *&v10 = a1;
    *(&v10 + 1) = C3BaseRetain;
    v11 = C3BaseRelease;
    v12 = mmcs_runloop_reply_job_completed;
    v7 = mmcs_perform_target_create_timer(v6, &cf, &v10, a4);
    if (!cf || !v7)
    {
      mmcs_runloop_reply_job_execute_cold_1();
    }
  }

  pthread_mutex_lock((a1 + 16));
  v8 = *(a1 + 88);
  *(a1 + 88) = 0;
  v9 = *(a1 + 82);
  if (!*(a1 + 82) && cf)
  {
    C3BaseRetain(cf);
    *(a1 + 160) = cf;
  }

  pthread_mutex_unlock((a1 + 16));
  if (v8)
  {
    C3BaseRelease(v8);
  }

  if (cf)
  {
    if (v9)
    {
      mmcs_perform_timer_invalidate(cf);
    }

    else
    {
      mmcs_perform_timer_set_next_fire_date(cf);
    }

    if (cf)
    {
      C3BaseRelease(cf);
    }

    cf = 0;
  }

  if (v9)
  {
    mmcs_runloop_reply_job_invalidate(a1);
  }
}

void mmcs_runloop_reply_job_cancel(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  if (*(a1 + 82))
  {

    pthread_mutex_unlock((a1 + 16));
  }

  else
  {
    *(a1 + 82) = 1;
    v2 = *(a1 + 160);
    if (v2)
    {
      *(a1 + 160) = 0;
    }

    v3 = *(a1 + 88);
    if (v3)
    {
      *(a1 + 88) = 0;
      pthread_mutex_unlock((a1 + 16));
      C3BaseRelease(v3);
      if (!v2)
      {
        return;
      }
    }

    else
    {
      pthread_mutex_unlock((a1 + 16));
      if (!v2)
      {
        return;
      }
    }

    mmcs_perform_timer_invalidate(v2);

    CFRelease(v2);
  }
}

void mmcs_runloop_reply_job_dispatch_async(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 168);
  if (v4)
  {
    os_retain(v4);
    v5 = *(a1 + 168);
  }

  voucher_adopt();
  mmcs_job_dispatch_async(*(a1 + 88), a2);
  v6 = voucher_adopt();
  if (v6)
  {

    os_release(v6);
  }
}

void _mmcs_runloop_reply_jobCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    C3BaseRelease(v2);
  }

  *(a1 + 88) = 0;
  v3 = *(a1 + 152);
  if (v3)
  {
    C3BaseRelease(v3);
  }

  *(a1 + 152) = 0;
  v4 = *(a1 + 168);
  if (v4)
  {
    os_release(v4);
  }

  *(a1 + 168) = 0;
  mmcs_runloop_reply_job_invalidate(a1);
  if (*(a1 + 80))
  {

    pthread_mutex_destroy((a1 + 16));
  }
}

void mmcs_runloop_reply_job_invalidate(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  v2 = *(a1 + 81);
  *(a1 + 81) = 0;
  v3 = *(a1 + 160);
  if (v3)
  {
    *(a1 + 160) = 0;
  }

  pthread_mutex_unlock((a1 + 16));
  if (v2)
  {
    v4 = *(a1 + 120);
    if (v4)
    {
      v4(*(a1 + 104));
    }
  }

  if (v3)
  {
    mmcs_perform_timer_invalidate(v3);

    CFRelease(v3);
  }
}

void mmcs_runloop_reply_job_completed(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 168);
  if (v3)
  {
    os_retain(v3);
    v4 = *(a2 + 168);
  }

  voucher_adopt();
  if (!*(a2 + 82))
  {
    v5 = *(a2 + 144);
    if (v5)
    {
      v5(*(a2 + 104));
    }
  }

  mmcs_runloop_reply_job_invalidate(a2);
  v6 = voucher_adopt();
  if (v6)
  {

    os_release(v6);
  }
}

uint64_t mmcs_get_request_alloc(void *a1, uint64_t a2)
{
  *a1 = 0;
  v5 = 0;
  if (!a2)
  {
    return 0;
  }

  if (!is_mul_ok(a2 - 1, 0x1A0uLL))
  {
    return 0;
  }

  v2 = 416 * (a2 - 1);
  if (v2 >= 0xFFFFFFFFFFFFFDB0)
  {
    return 0;
  }

  result = mmcs_request_allocate(&v5, 2, v2 + 592);
  if (result)
  {
    *a1 = v5;
  }

  return result;
}

BOOL mmcs_get_request_is_validation_queue_empty(uint64_t a1)
{
  v1 = *(a1 + 304);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  return !v2 || CFArrayGetCount(v2) == 0;
}

uint64_t mmcs_get_request_should_error_on_preallocation_failure(uint64_t a1)
{
  v1 = *(a1 + 304);
  if (!v1)
  {
    mmcs_get_request_should_error_on_preallocation_failure_cold_1();
  }

  return *(v1 + 56);
}

uint64_t mmcs_get_request_is_insufficient_disk_space_mode(uint64_t a1)
{
  v1 = *(a1 + 304);
  if (!v1)
  {
    mmcs_get_request_is_insufficient_disk_space_mode_cold_1();
  }

  return *(v1 + 58);
}

uint64_t mmcs_get_request_get_failed_to_preallocate(uint64_t a1)
{
  v1 = *(a1 + 304);
  if (!v1)
  {
    mmcs_get_request_get_failed_to_preallocate_cold_1();
  }

  return *(v1 + 57);
}

uint64_t mmcs_get_request_set_failed_to_preallocate(uint64_t result, char a2)
{
  v2 = *(result + 304);
  if (!v2)
  {
    mmcs_get_request_set_failed_to_preallocate_cold_1();
  }

  *(v2 + 57) = a2;
  return result;
}

void mmcs_chunk_job_chunk_callback(uint64_t a1)
{
  v78 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 288), &state);
  err = 0;
  if (*(a1 + 84))
  {
    v2 = 0;
    goto LABEL_63;
  }

  *(a1 + 224) = CFAbsoluteTimeGetCurrent();
  FileTypeHint = MMCSItemReaderWriterGetFileTypeHint(*(a1 + 152));
  if (FileTypeHint)
  {
    CStringWithCFString = createCStringWithCFString(FileTypeHint);
  }

  else
  {
    CStringWithCFString = 0;
  }

  v5 = *(a1 + 152);
  v6 = *(*(a1 + 144) + 16);
  v7 = *(a1 + 160);
  v8 = *(a1 + 168);
  v9 = *(a1 + 216);
  v10 = *(a1 + 220);
  v11 = CKFileDigestResultsFileSignature();
  if (!mmcs_RegisterChunksForItem(v6, v5, v7, v8, CStringWithCFString, v9, (a1 + 248), (a1 + 256), v10, *v11, *(a1 + 184), (a1 + 176), (a1 + 264), &err))
  {
    v31 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v36 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"failed to register chunks for itemid %lld", *(a1 + 160));
      v37 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v77 = v36;
        _os_log_impl(&dword_2577D8000, v37, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v36)
      {
        CFRelease(v36);
      }
    }

    if (err)
    {
      Domain = CFErrorGetDomain(err);
      v39 = CFEqual(Domain, *MEMORY[0x277CFA590]);
      v40 = err;
      if (v39)
      {
        if (CFErrorGetCode(err) == 3)
        {
          v41 = *(a1 + 168);
          v42 = CKFileDigestResultsFileSignature();
          v43 = mmcs_file_signature_to_hexstring(v42);
          v44 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v49 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunked file signature changed for itemid %lld expected %s", *(a1 + 160), v43);
            v50 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v77 = v49;
              _os_log_impl(&dword_2577D8000, v50, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v49)
            {
              CFRelease(v49);
            }
          }

          v71 = *(a1 + 160);
          *(a1 + 280) = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 28, err, @"The file signature changed from %s before chunking for item %llu", v45, v46, v47, v48, v43);
          if (v43)
          {
            free(v43);
          }

          v2 = 0;
          if (!CStringWithCFString)
          {
            goto LABEL_62;
          }

LABEL_61:
          free(CStringWithCFString);
          goto LABEL_62;
        }

        v40 = err;
      }
    }

    else
    {
      v40 = 0;
    }

    v2 = 0;
    *(a1 + 280) = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 29, v40, @"Unable to register chunks for item %lld", v32, v33, v34, v35, *(a1 + 160));
    if (CStringWithCFString)
    {
      goto LABEL_61;
    }

    goto LABEL_62;
  }

  if (!*(a1 + 256))
  {
    v51 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v57 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"No chunks for itemid %lld. The file may have been empty.", *(a1 + 160));
      v58 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v77 = v57;
        _os_log_impl(&dword_2577D8000, v58, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v57)
      {
        CFRelease(v57);
      }
    }

    *(a1 + 280) = mmcs_cferror_create_with_format(@"com.apple.mmcs", 28, @"There were no chunks in item %lld", v52, v53, v54, v55, v56, *(a1 + 160));
    v59 = *(a1 + 248);
    if (v59)
    {
      free(v59);
    }

    v2 = 0;
    *(a1 + 248) = 0;
    if (!CStringWithCFString)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  v73 = CStringWithCFString;
  v12 = 0;
  v13 = 0;
  v14 = *(a1 + 248);
  v15 = *MEMORY[0x277CBECE8];
  do
  {
    v16 = CKRegisteredChunkLength();
    if (gMMCS_DebugLevel < 5)
    {
      goto LABEL_23;
    }

    v17 = CKRegisteredChunkSignatureCopyCString();
    if (*(a1 + 220) == 1)
    {
      v18 = CKRegisteredChunkKey();
      CKRegisteredChunkKey();
      v19 = CKSchemeAndEncryptionKeySize();
      v20 = mmcs_key_description_create_with_bytes(v18, v19, 1);
      v21 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = CKRegisteredChunkLength();
        v23 = v15;
        v24 = CFStringCreateWithFormat(v15, 0, @"\t%s %@ len %10d", v17, v20, v22);
        v25 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v77 = v24;
          _os_log_impl(&dword_2577D8000, v25, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        v15 = v23;
        if (v24)
        {
          CFRelease(v24);
        }
      }

LABEL_19:
      if (v20)
      {
        CFRelease(v20);
      }

      goto LABEL_21;
    }

    v26 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = CKRegisteredChunkLength();
      v20 = CFStringCreateWithFormat(v15, 0, @"\t%s len %10d", v17, v27);
      v28 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v77 = v20;
        _os_log_impl(&dword_2577D8000, v28, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      goto LABEL_19;
    }

LABEL_21:
    if (v17)
    {
      free(v17);
    }

LABEL_23:
    v12 += v16;
    CKRegisteredChunkSize();
    ++v13;
  }

  while (v13 < *(a1 + 256));
  v29 = *(a1 + 176);
  v30 = CKFileDigestResultsFileLength();
  if (v30 == v12)
  {
    v2 = 1;
  }

  else
  {
    v60 = v30;
    v61 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v67 = CFStringCreateWithFormat(v15, 0, @"Chunk length sum %llu does not equal file length %llu for itemid %lld.", v12, v60, *(a1 + 160));
      v68 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v77 = v67;
        _os_log_impl(&dword_2577D8000, v68, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v67)
      {
        CFRelease(v67);
      }
    }

    v72 = *(a1 + 160);
    *(a1 + 280) = mmcs_cferror_create_with_format(@"com.apple.mmcs", 28, @"Chunk length sum %llu does not equal file length %llu for itemid %lld.", v62, v63, v64, v65, v66, v12);
    v69 = *(a1 + 248);
    if (v69)
    {
      free(v69);
    }

    v2 = 0;
    *(a1 + 248) = 0;
  }

  CStringWithCFString = v73;
  if (v73)
  {
    goto LABEL_61;
  }

LABEL_62:
  *(a1 + 232) = CFAbsoluteTimeGetCurrent();
LABEL_63:
  mmcs_chunk_job_ensure_item_reader_writer_closed(a1);
  if (err)
  {
    CFRelease(err);
  }

  err = 0;
  *(a1 + 240) = v2;
  mmcs_metrics_harvest_chunking_info(*(a1 + 200), a1);
  os_activity_scope_leave(&state);
  v70 = *MEMORY[0x277D85DE8];
}

void mmcs_chunk_job_done_callback(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 288), &v13);
  v2 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 176) ? CKFileDigestResultsFileLength() : -1;
    v4 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 160);
      v6 = *(a1 + 224);
      v7 = -1.0;
      if (v6 != 0.0)
      {
        v8 = *(a1 + 232);
        v9 = v8 < v6;
        v10 = v8 - v6;
        if (v9)
        {
          v10 = -1.0;
        }

        if (v8 == 0.0)
        {
          v7 = -1.0;
        }

        else
        {
          v7 = v10;
        }
      }

      *buf = 134218496;
      v15 = v5;
      v16 = 2048;
      v17 = v3;
      v18 = 2048;
      v19 = v7;
      _os_log_impl(&dword_2577D8000, v4, OS_LOG_TYPE_DEFAULT, "Chunking finished for itemId %llu of %llu bytes in %0.4lf sec.", buf, 0x20u);
    }
  }

  if (*(a1 + 82))
  {
    mmcs_print_registered_chunk_list(*(a1 + 248), *(a1 + 256));
  }

  v11 = *(a1 + 128);
  if (v11)
  {
    v11(*(a1 + 96), a1);
  }

  mmcs_chunk_job_invalidate(a1);
  os_activity_scope_leave(&v13);
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t mmcs_chunk_job_create(__int128 *a1, uint64_t a2, const void *a3, uint64_t *a4, int a5, char a6, void *a7)
{
  if (!a1)
  {
    return 0;
  }

  v14 = C3TypeRegister(&mmcs_chunk_jobGetTypeID_typeID);
  Instance = C3TypeCreateInstance_(0, v14, 0x118uLL);
  v16 = Instance;
  if (Instance)
  {
    v17 = pthread_mutex_init((Instance + 16), 0);
    *(v16 + 80) = v17 == 0;
    if (v17)
    {
      C3BaseRelease(v16);
      return 0;
    }

    *(v16 + 83) = 1;
    v19 = a1[2];
    v20 = *a1;
    *(v16 + 104) = a1[1];
    *(v16 + 120) = v19;
    *(v16 + 88) = v20;
    v21 = *(v16 + 104);
    if (v21)
    {
      v21(*(v16 + 96));
    }

    *(v16 + 144) = a2;
    if (a3)
    {
      C3BaseRetain(a3);
      *(v16 + 152) = a3;
    }

    *(v16 + 136) = a4;
    *(v16 + 160) = a4[5];
    v22 = *a4;
    v23 = a4[2];
    v24 = a4[11];
    CKFileDigestResultsCreate();
    v25 = a4[10];
    if (v25)
    {
      *(v16 + 184) = CFRetain(v25);
    }

    *(v16 + 216) = a5;
    *(v16 + 220) = a6;
    *(v16 + 224) = 0;
    *(v16 + 232) = 0;
    if (a7)
    {
      os_retain(a7);
    }

    *(v16 + 288) = a7;
    *&v26 = 0;
    *(&v26 + 1) = v16;
    v27 = C3BaseRetain;
    v28 = C3BaseRelease;
    v29 = 0;
    v30 = mmcs_chunk_job_chunk_callback;
    v31 = mmcs_chunk_job_done_callback;
    if (*(a2 + 175))
    {
      *(v16 + 200) = mmcs_chunking_info_create();
    }

    *(v16 + 272) = mmcs_runloop_reply_job_create(*(*(v16 + 144) + 56), &v26);
  }

  return v16;
}

uint64_t mmcs_register_and_chunk_job_create(__int128 *a1, uint64_t a2, const void *a3, uint64_t a4, int a5, char a6, int a7, const void *a8, CFTypeRef cf, void *object)
{
  if (!a1)
  {
    return 0;
  }

  v18 = C3TypeRegister(&mmcs_chunk_jobGetTypeID_typeID);
  Instance = C3TypeCreateInstance_(0, v18, 0x118uLL);
  v20 = Instance;
  if (Instance)
  {
    if (pthread_mutex_init((Instance + 16), 0))
    {
      C3BaseRelease(v20);
      return 0;
    }

    *(v20 + 83) = 1;
    *(v20 + 81) = 1;
    *(v20 + 82) = a6;
    v22 = a1[2];
    v23 = *a1;
    *(v20 + 104) = a1[1];
    *(v20 + 120) = v22;
    *(v20 + 88) = v23;
    v24 = *(v20 + 104);
    if (v24)
    {
      v24(*(v20 + 96));
    }

    *(v20 + 144) = a2;
    if (a3)
    {
      C3BaseRetain(a3);
      *(v20 + 152) = a3;
    }

    *(v20 + 160) = a4;
    *(v20 + 216) = a5;
    *(v20 + 220) = a7 != 0;
    *(v20 + 224) = 0;
    *(v20 + 232) = 0;
    if (a8)
    {
      *(v20 + 184) = CFRetain(a8);
    }

    if (cf)
    {
      *(v20 + 192) = CFRetain(cf);
    }

    if (object)
    {
      os_retain(object);
    }

    *(v20 + 288) = object;
    *&v25 = 0;
    *(&v25 + 1) = v20;
    v26 = C3BaseRetain;
    v27 = C3BaseRelease;
    v28 = 0;
    v29 = mmcs_chunk_job_register_and_chunk_callback;
    v30 = mmcs_chunk_job_done_callback;
    if (*(a2 + 175))
    {
      *(v20 + 200) = mmcs_chunking_info_create();
    }

    *(v20 + 272) = mmcs_runloop_reply_job_create(*(*(v20 + 144) + 56), &v25);
  }

  return v20;
}

void mmcs_chunk_job_register_and_chunk_callback(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 288), &state);
  cf = 0;
  if (!*(a1 + 84))
  {
    *(a1 + 224) = CFAbsoluteTimeGetCurrent();
    v18 = 0;
    v2 = *(a1 + 152);
    v3 = *(*(a1 + 144) + 16);
    v4 = *(a1 + 160);
    v5 = *(a1 + 220);
    v6 = *(a1 + 82);
    v7 = *(a1 + 184);
    v17 = 0;
    if (!mmcs_compute_signature_and_register_item_with_item_reader_writer(v3, v4, v2, v5, v6, v7, (a1 + 176), &v18, &v17, (a1 + 264), &cf))
    {
      v8 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"failed to register chunks for itemid %lld", *(a1 + 160));
        v14 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v22 = v13;
          _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v13)
        {
          CFRelease(v13);
        }
      }

      *(a1 + 280) = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 29, cf, @"Unable to register chunks for item %lld", v9, v10, v11, v12, *(a1 + 160));
    }

    v15 = v18;
    *(a1 + 248) = v17;
    *(a1 + 256) = v15;
    *(a1 + 232) = CFAbsoluteTimeGetCurrent();
  }

  mmcs_chunk_job_ensure_item_reader_writer_closed(a1);
  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  *(a1 + 240) = 0;
  mmcs_metrics_harvest_chunking_info(*(a1 + 200), a1);
  os_activity_scope_leave(&state);
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t mmcs_chunk_job_cancel(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  if (*(a1 + 84))
  {

    return pthread_mutex_unlock((a1 + 16));
  }

  else
  {
    *(a1 + 84) = 1;
    pthread_mutex_unlock((a1 + 16));
    mmcs_runloop_reply_job_cancel(*(a1 + 272));
    v3 = *(a1 + 272);
    if (v3)
    {
      C3BaseRelease(v3);
    }

    *(a1 + 272) = 0;

    return mmcs_chunk_job_invalidate(a1);
  }
}

uint64_t mmcs_chunk_job_invalidate(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  v2 = *(a1 + 83);
  *(a1 + 83) = 0;
  result = pthread_mutex_unlock((a1 + 16));
  if (v2)
  {
    v4 = *(a1 + 112);
    v5 = *(a1 + 96);

    return v4(v5);
  }

  return result;
}

void mmcs_chunk_job_append_description(uint64_t a1)
{
  v2 = *a1;
  mmcs_op_requestor_context_indent(a1);
  CFStringAppendFormat(*(a1 + 16), 0, @"Chunking item %lld\n", *(v2 + 160));
}

void mmcs_chunk_job_ensure_item_reader_writer_closed(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 152);
  if (v2)
  {
    cf = 0;
    if (MMCSItemReaderWriterIsOpen(v2))
    {
      if (!MMCSItemReaderWriterClose(*(a1 + 152), &cf))
      {
        v3 = mmcs_cferror_copy_description(cf);
        v4 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Error closing item reader: %@", v3);
          v6 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v10 = v5;
            _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v5)
          {
            CFRelease(v5);
          }
        }

        if (v3)
        {
          CFRelease(v3);
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void _mmcs_chunk_jobCFFinalize(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 144) = 0;
    mmcs_chunk_job_invalidate(a1);
    *(a1 + 136) = 0;
    v2 = *(a1 + 168);
    if (v2)
    {
      C3BaseRelease(v2);
    }

    *(a1 + 168) = 0;
    v3 = *(a1 + 176);
    if (v3)
    {
      C3BaseRelease(v3);
    }

    *(a1 + 176) = 0;
    v4 = *(a1 + 264);
    if (v4)
    {
      C3BaseRelease(v4);
    }

    *(a1 + 264) = 0;
    v5 = *(a1 + 184);
    if (v5)
    {
      CFRelease(v5);
    }

    *(a1 + 184) = 0;
    v6 = *(a1 + 192);
    if (v6)
    {
      CFRelease(v6);
    }

    *(a1 + 192) = 0;
    mmcs_chunk_job_ensure_item_reader_writer_closed(a1);
    v7 = *(a1 + 152);
    if (v7)
    {
      C3BaseRelease(v7);
    }

    *(a1 + 152) = 0;
    v8 = *(a1 + 272);
    if (v8)
    {
      C3BaseRelease(v8);
    }

    *(a1 + 272) = 0;
    v9 = *(a1 + 248);
    if (v9)
    {
      free(v9);
    }

    *(a1 + 248) = 0;
    v10 = *(a1 + 280);
    if (v10)
    {
      CFRelease(v10);
    }

    *(a1 + 280) = 0;
    v11 = *(a1 + 200);
    if (v11)
    {
      mmcs_metrics_chunking_info_release(v11);
      *(a1 + 200) = 0;
    }

    if (*(a1 + 80))
    {
      pthread_mutex_destroy((a1 + 16));
    }

    v12 = *(a1 + 288);
    if (v12)
    {
      os_release(v12);
    }

    *(a1 + 288) = 0;
  }
}

void mmcs_file_job_validate_file_callback(uint64_t a1)
{
  if (!*(a1 + 82))
  {
    *(a1 + 200) = CFAbsoluteTimeGetCurrent();
    v2 = *(a1 + 176) & 0x7F;
    if (v2 == 4)
    {
      if (*(a1 + 176) < 0)
      {
        mmcs_file_job_validate_file_callback_cold_1();
      }

      if (*(a1 + 192))
      {
        CKFileDigestArgumentsV2WithFileKeyCreate();
      }

      else
      {
        if (!*(a1 + 184))
        {
          mmcs_file_job_validate_file_callback_cold_2();
        }

        CKFileDigestArgumentsV2WithBoundaryKeyCreate();
      }
    }

    else
    {
      if (v2 != 1)
      {
        mmcs_file_job_validate_file_callback_cold_3();
      }

      CKFileDigestArgumentsV1WithFileCreate();
    }

    v3 = *(a1 + 168);
    v4 = *(a1 + 144);
    v5 = CK2CalculateItemSignatureWithFlags();
    v6 = v5;
    if (v5)
    {
      *(a1 + 152) = 0;
    }

    else
    {
      *(a1 + 232) = 0;
    }

    *(a1 + 208) = CFAbsoluteTimeGetCurrent();
    *(a1 + 216) = v6;
  }
}

uint64_t mmcs_file_job_done_callback(void *a1)
{
  v2 = a1[21];
  if (v2)
  {
    free(v2);
  }

  a1[21] = 0;
  v3 = a1[20];
  if (v3)
  {
    MMCSItemReaderWriterEnsureClosed(v3);
    v4 = a1[20];
    if (v4)
    {
      C3BaseRelease(v4);
    }

    a1[20] = 0;
  }

  v5 = a1[16];
  if (v5)
  {
    v5(a1[12], a1);
  }

  return mmcs_file_job_invalidate(a1);
}

uint64_t mmcs_file_job_create(__int128 *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  v4 = 0;
  v75 = *MEMORY[0x277D85DE8];
  v68 = 0;
  if (!a1 || !a3)
  {
    goto LABEL_75;
  }

  v67 = 0;
  if (!mmcs_get_file_ensure_temp_file_is_open(a3, &v67) || v67)
  {
    if (!a4)
    {
      goto LABEL_70;
    }

    v11 = @"Error opening temp reader writer";
LABEL_44:
    error = mmcs_cferror_create_error(@"com.apple.mmcs", 1, v11);
    v4 = 0;
    v34 = 0;
    goto LABEL_45;
  }

  v9 = *(a3 + 8);
  if (*(v9 + 400))
  {
    BytePtr = CFDataGetBytePtr(*(v9 + 400));
    v9 = *(a3 + 8);
  }

  else
  {
    BytePtr = *v9;
  }

  file_signature_scheme_for_derivative_validation = *BytePtr;
  is_derivative = mmcs_item_is_derivative(v9);
  v14 = *(a3 + 8);
  if (!is_derivative)
  {
    v21 = v14[2];
    v22 = v14[11];
    CKFileDigestResultsCreate();
    goto LABEL_14;
  }

  v15 = v14[46];
  if (!v15)
  {
    v26 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"derivative digest results are null for data validation");
      v28 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v27;
        _os_log_impl(&dword_2577D8000, v28, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
      }

      if (v27)
      {
        CFRelease(v27);
      }
    }

    if (!a4)
    {
      goto LABEL_70;
    }

    v11 = @"Derivative digest results are null for data validation";
    goto LABEL_44;
  }

  C3BaseRetain(v15);
  v68 = *(*(a3 + 8) + 368);
  file_signature_scheme_for_derivative_validation = mmcs_item_get_file_signature_scheme_for_derivative_validation();
LABEL_14:
  valuePtr = 0;
  v23 = *(a3 + 24);
  if (!v23)
  {
    goto LABEL_42;
  }

  cf = 0;
  theDict = 0;
  if (MMCSItemReaderWriterStat(v23, &theDict, &cf, v16, v17, v18, v19, v20))
  {
    Value = CFDictionaryGetValue(theDict, @"kMMCSItemReaderWriterFileSize");
    v25 = CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr) == 0;
  }

  else
  {
    v29 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"could not stat temp file in file job: %@", cf);
      v31 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v30;
        _os_log_impl(&dword_2577D8000, v31, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
      }

      if (v30)
      {
        CFRelease(v30);
      }
    }

    v25 = 1;
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (!v25)
  {
    if (CKFileDigestResultsHasFileLength())
    {
      v32 = valuePtr;
      if (v32 > CKFileDigestResultsFileLength())
      {
        v33 = CKFileDigestResultsFileLength();
        theDict = 0;
        mmcs_get_file_close_temp_reader_writer(a3);
        if (!mmcs_get_file_ensure_temp_file_is_open_with_length_check(a3, &theDict, v33))
        {
          v59 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            v60 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"could not reopen temp reader writer for truncation in file job: %@", theDict);
            v61 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v60;
              _os_log_impl(&dword_2577D8000, v61, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
            }

            if (v60)
            {
              CFRelease(v60);
            }
          }

          if (a4)
          {
            *a4 = mmcs_cferror_create_error(@"com.apple.mmcs", 1, @"Error reopening temp reader writer for truncation");
          }

          if (theDict)
          {
            CFRelease(theDict);
          }

          goto LABEL_70;
        }
      }
    }
  }

  v34 = *(a3 + 24);
  *(a3 + 24) = 0;
  if (!v34)
  {
LABEL_42:
    if (a4)
    {
      v11 = @"Error opening temp reader writer, found NULL";
      goto LABEL_44;
    }

LABEL_70:
    v4 = 0;
    v34 = 0;
    goto LABEL_71;
  }

  v35 = C3TypeRegister(&mmcs_file_jobGetTypeID_typeID);
  Instance = C3TypeCreateInstance_(0, v35, 0xE0uLL);
  if (Instance)
  {
    v4 = Instance;
    v37 = pthread_mutex_init((Instance + 16), 0);
    *(v4 + 80) = v37 == 0;
    if (!v37)
    {
      *(v4 + 81) = 1;
      v52 = a1[2];
      v53 = *a1;
      *(v4 + 104) = a1[1];
      *(v4 + 120) = v52;
      *(v4 + 88) = v53;
      v54 = *(v4 + 104);
      if (v54)
      {
        v54(*(v4 + 96));
      }

      *(v4 + 160) = v34;
      *(v4 + 168) = MMCSItemReaderWriterCKItemReadContextCreate(v34);
      v55 = v68;
      *(v4 + 136) = a3;
      *(v4 + 144) = v55;
      v68 = 0;
      *(v4 + 176) = file_signature_scheme_for_derivative_validation;
      v56 = *(a3 + 8);
      v57 = *(v56 + 80);
      if (v57)
      {
        *(v4 + 184) = CFRetain(v57);
        v56 = *(a3 + 8);
      }

      v58 = *(v56 + 88);
      if (v58)
      {
        *(v4 + 192) = CFRetain(v58);
      }

      *(v4 + 200) = 0;
      *(v4 + 208) = 0;
      *&buf = 0;
      *(&buf + 1) = v4;
      v70 = C3BaseRetain;
      v71 = C3BaseRelease;
      v72 = 0;
      v73 = mmcs_file_job_validate_file_callback;
      v74 = mmcs_file_job_done_callback;
      v34 = 0;
      *(v4 + 224) = mmcs_runloop_reply_job_create(*(a2 + 56), &buf);
      goto LABEL_71;
    }

    C3BaseRelease(v4);
    goto LABEL_53;
  }

  v39 = *__error();
  v40 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    v41 = *MEMORY[0x277CBECE8];
    v42 = *(*(a3 + 8) + 40);
    v43 = strerror(v39);
    v44 = CFStringCreateWithFormat(v41, 0, @"unable to create job for data validation of %llu: %s(%d)", v42, v43, v39);
    v45 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v44;
      _os_log_impl(&dword_2577D8000, v45, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
    }

    if (v44)
    {
      CFRelease(v44);
    }
  }

  if (!a4)
  {
LABEL_53:
    v4 = 0;
    goto LABEL_71;
  }

  v46 = *(*(a3 + 8) + 40);
  strerror(v39);
  error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 36, @"Unable to create job for data validation of %llu: %s(%d)", v47, v48, v49, v50, v51, v46);
  v4 = 0;
LABEL_45:
  *a4 = error;
LABEL_71:
  if (v68)
  {
    C3BaseRelease(v68);
  }

  v68 = 0;
  if (v34)
  {
    MMCSItemReaderWriterEnsureClosed(v34);
    C3BaseRelease(v34);
  }

LABEL_75:
  v62 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t mmcs_file_job_cancel(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  if (*(a1 + 82))
  {

    return pthread_mutex_unlock((a1 + 16));
  }

  else
  {
    *(a1 + 82) = 1;
    pthread_mutex_unlock((a1 + 16));
    mmcs_runloop_reply_job_cancel(*(a1 + 224));
    v3 = *(a1 + 224);
    if (v3)
    {
      C3BaseRelease(v3);
    }

    *(a1 + 224) = 0;

    return mmcs_file_job_invalidate(a1);
  }
}

uint64_t mmcs_file_job_invalidate(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  v2 = *(a1 + 81);
  *(a1 + 81) = 0;
  result = pthread_mutex_unlock((a1 + 16));
  if (v2)
  {
    v4 = *(a1 + 112);
    v5 = *(a1 + 96);

    return v4(v5);
  }

  return result;
}

void mmcs_file_job_append_description(uint64_t a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = *(v1 + 136);
    if (v2)
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        v5 = *(v3 + 40);
        mmcs_op_requestor_context_indent(a1);
        CFStringAppendFormat(*(a1 + 16), 0, @"<file_job %p> item %lld\n", v1, v5);
      }
    }
  }
}

void _mmcs_file_jobCFFinalize(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 136) = 0;
    mmcs_file_job_invalidate(a1);
    v2 = *(a1 + 168);
    if (v2)
    {
      free(v2);
    }

    *(a1 + 168) = 0;
    v3 = *(a1 + 160);
    if (v3)
    {
      MMCSItemReaderWriterEnsureClosed(v3);
      v4 = *(a1 + 160);
      if (v4)
      {
        C3BaseRelease(v4);
      }

      *(a1 + 160) = 0;
    }

    v5 = *(a1 + 184);
    if (v5)
    {
      CFRelease(v5);
    }

    *(a1 + 184) = 0;
    v6 = *(a1 + 192);
    if (v6)
    {
      CFRelease(v6);
    }

    *(a1 + 192) = 0;
    v7 = *(a1 + 224);
    if (v7)
    {
      C3BaseRelease(v7);
    }

    *(a1 + 224) = 0;
    v8 = *(a1 + 232);
    if (v8)
    {
      CFRelease(v8);
    }

    *(a1 + 232) = 0;
    v9 = *(a1 + 144);
    if (v9)
    {
      C3BaseRelease(v9);
    }

    *(a1 + 144) = 0;
    v10 = *(a1 + 152);
    if (v10)
    {
      C3BaseRelease(v10);
    }

    *(a1 + 152) = 0;
    if (*(a1 + 80))
    {

      pthread_mutex_destroy((a1 + 16));
    }
  }
}

uint64_t _mmcs_metrics_http_info_retain_callback(uint64_t a1, uint64_t a2)
{
  result = a2;
  if (a2)
  {
    ++*(a2 + 8);
  }

  return result;
}

void *mmcs_chunking_info_create()
{
  result = malloc_type_calloc(1uLL, 0x50uLL, 0x10700403F21534CuLL);
  if (result)
  {
    result[1] = 1;
  }

  return result;
}

void mmcs_metrics_chunking_info_release(void *a1)
{
  if (a1)
  {
    v2 = a1[1] - 1;
    a1[1] = v2;
    if (!v2)
    {
      v3 = a1[5];
      if (v3)
      {
        CFRelease(v3);
      }

      a1[5] = 0;
      v4 = a1[8];
      if (v4)
      {
        CFRelease(v4);
      }

      a1[8] = 0;
      v5 = a1[2];
      if (v5)
      {
        free(v5);
      }

      free(a1);
    }
  }
}

CFStringRef mmcs_metrics_chunking_info_copy_description(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2 - *(a1 + 48);
  }

  v4 = mmcs_file_signature_to_hexstring(*(a1 + 16));
  v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"<chunking_metrics %p> item_sig:%s nrBytes:%lld nrChunks:%lld start:%f elapsed:%0.4lf cancelled: %d chunkErr:%@", a1, v4, *(a1 + 24), *(a1 + 32), *(a1 + 48), *&v3, *(a1 + 72), *(a1 + 64));
  if (v4)
  {
    free(v4);
  }

  return v5;
}

__CFArray *mmcs_metrics_request_add_chunking_info(__CFArray *result, void *a2)
{
  if (result)
  {
    return _addToLazyArray(result + 17, a2, &_chunkingInfoArrayCallbacks);
  }

  return result;
}

__CFArray *_addToLazyArray(__CFArray **a1, void *value, const CFArrayCallBacks *a3)
{
  result = 0;
  if (a1)
  {
    if (value)
    {
      result = *a1;
      if (*a1 || (result = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, a3), (*a1 = result) != 0))
      {
        CFArrayAppendValue(result, value);
        return (*a1 != 0);
      }
    }
  }

  return result;
}

void mmcs_metrics_harvest_chunking_info(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    if (*(a2 + 176))
    {
      if (CKFileDigestResultsFileSignature())
      {
        v4 = *(a2 + 176);
        v5 = CKFileDigestResultsFileSignature();
        *(a1 + 16) = mmcs_file_signature_copy(v5);
      }

      v6 = *(a2 + 176);
      *(a1 + 24) = CKFileDigestResultsFileLength();
    }

    *(a1 + 48) = *(a2 + 224);
    v7 = *(a2 + 264);
    *(a1 + 32) = *(a2 + 256);
    if (v7)
    {
      CKProfileResultsType();
    }

    v8 = CKProfileTypeDescription();
    *(a1 + 40) = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v8, 0x8000100u);
    *(a1 + 72) = *(a2 + 84);
    v9 = *(a2 + 280);
    if (v9)
    {
      CFRetain(v9);
    }

    v10 = *(a1 + 64);
    if (v10)
    {
      CFRelease(v10);
    }

    *(a1 + 64) = *(a2 + 280);
  }
}

char *mmcs_metrics_http_info_create(const void *a1, const void *a2, uint64_t a3, char a4)
{
  if (!a3)
  {
    return 0;
  }

  v8 = malloc_type_calloc(1uLL, 0x60uLL, 0x1060040DBE1133DuLL);
  if (!v8)
  {
    return v8;
  }

  if (a1)
  {
    CFRetain(a1);
    *(v8 + 2) = a1;
  }

  if (a2)
  {
    CFRetain(a2);
    *(v8 + 4) = a2;
  }

  if (!metricsinfo__new((v8 + 24)) || !socketinfo__new((v8 + 56)))
  {
    return 0;
  }

  *(v8 + 1) = 1;
  metricsinfo__clear_response_size(*(v8 + 3));
  v8[64] = *(a3 + 72);
  *(v8 + 65) = *(a3 + 73);
  v8[67] = *(a3 + 80) == 0;
  v8[68] = *(a3 + 77);
  v8[69] = a4;
  v9 = *(a3 + 56);
  if (v9)
  {
    CFRetain(v9);
    *(v8 + 11) = *(a3 + 56);
  }

  return v8;
}

void mmcs_metrics_http_info_release(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = a1[1] - 1;
    a1[1] = v2;
    if (!v2)
    {
      if (metricsinfo__get_stop_time(a1[3]) == 0.0)
      {
        v3 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"no stopTime %p !!", a1);
          v5 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v12 = v4;
            _os_log_impl(&dword_2577D8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }

          if (v4)
          {
            CFRelease(v4);
          }
        }
      }

      v6 = a1[2];
      if (v6)
      {
        CFRelease(v6);
      }

      a1[2] = 0;
      v7 = a1[4];
      if (v7)
      {
        CFRelease(v7);
      }

      a1[4] = 0;
      v8 = a1[5];
      if (v8)
      {
        CFRelease(v8);
      }

      a1[5] = 0;
      metricsinfo__free(a1[3]);
      a1[3] = 0;
      socketinfo__free(a1[7]);
      a1[7] = 0;
      a1[9] = 0;
      a1[10] = 0;
      v9 = a1[11];
      if (v9)
      {
        CFRelease(v9);
      }

      free(a1);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

CFStringRef mmcs_metrics_http_info_copy_description(uint64_t a1)
{
  if (metricsinfo__get_stop_time(*(a1 + 24)) == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    stop_time = metricsinfo__get_stop_time(*(a1 + 24));
    v3 = stop_time - metricsinfo__get_start_time(*(a1 + 24));
  }

  v4 = *(a1 + 24);
  v5 = *(v4 + 96);
  if (v5 != 0.0)
  {
    v5 = v5 - *(v4 + 56);
  }

  cferror_with_http_error = metricsinfo__create_cferror_with_http_error(v4);
  v20 = *(a1 + 16);
  v21 = *MEMORY[0x277CBECE8];
  v7 = mmcs_request_index(*(a1 + 24));
  v8 = mmcs_request_index(*(a1 + 56));
  v9 = mmcs_chunk_instance_offset(*(a1 + 56));
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  start_time = metricsinfo__get_start_time(*(a1 + 24));
  v13 = *(a1 + 24);
  v14 = *(v13 + 112);
  v15 = *(v13 + 176);
  v16 = *(v13 + 48);
  transaction_complete = metricsinfo__get_transaction_complete(v13);
  v18 = CFStringCreateWithFormat(v21, 0, @"<http_metrics %p> operation:%@ url:%s interfaceIdentifier:%s destination address:%s uuid:%@ identifier:%@ start:%f respRecd:%0.4lf elapsed:%0.4lf httpStatus:%d httpErr:%@ requestBytes:%lld responseBytes:%lld completed:%d timedout:%d cancelled:%d networkServiceType:%@", a1, v20, v7, v8, v9, v10, v11, *&start_time, *&v5, *&v3, v16, cferror_with_http_error, v14, v15, transaction_complete, *(*(a1 + 24) + 40), *(a1 + 48), *(a1 + 88));
  if (cferror_with_http_error)
  {
    CFRelease(cferror_with_http_error);
  }

  return v18;
}

uint64_t mmcs_metrics_harvest_http_info(uint64_t result, uint64_t a2)
{
  if (result && a2)
  {
    v3 = result;
    v4 = *(result + 56);
    is_connection_reused = mmcs_http_context_is_connection_reused(a2);
    socketinfo__set_is_reused(v4, is_connection_reused);
    v6 = *(v3 + 24);
    started = mmcs_http_context_start_time(a2);
    metricsinfo__set_start_time(v6, started);
    if (mmcs_http_context_has_enqueued_time(a2))
    {
      v8 = *(v3 + 24);
      v9 = mmcs_http_context_enqueued_time(a2);
      metricsinfo__set_enqueued_time(v8, v9);
    }

    v10 = *(v3 + 24);
    v11 = mmcs_http_context_response_received_time(a2);
    metricsinfo__set_response_received_time(v10, v11);
    v12 = *(v3 + 24);
    v13 = mmcs_http_context_stop_time(a2);
    metricsinfo__set_stop_time(v12, v13);
    if (mmcs_http_context_has_http_status(a2))
    {
      v14 = *(v3 + 24);
      v15 = mmcs_http_context_http_status(a2);
      metricsinfo__set_http_status(v14, v15);
    }

    v16 = *(v3 + 24);
    error = mmcs_http_context_get_error(a2);
    metricsinfo__set_http_error_with_cferror(v16, error);
    *(v3 + 40) = mmcs_http_context_copy_uuid(a2);
    v18 = *(v3 + 56);
    interface_identifier = mmcs_http_context_get_interface_identifier(a2);
    socketinfo__set_interface_identifier_with_c_string(v18, interface_identifier);
    if (mmcs_http_context_is_to_mobile_me(a2))
    {
      v20 = mmcs_http_context_copy_request_url(a2);
      v21 = *(v3 + 24);
      v22 = CFURLGetString(v20);
      metricsinfo__set_request_url_with_cfstring(v21, v22);
      if (v20)
      {
        CFRelease(v20);
      }

      v23 = *(v3 + 56);
      destination_address = mmcs_http_context_get_destination_address(a2);
      socketinfo__set_peer_address_with_c_string(v23, destination_address);
      v25 = *(v3 + 56);
      v26 = mmcs_http_context_destination_port(a2);
      socketinfo__set_peer_port(v25, v26);
    }

    else
    {
      user_data = mmcs_http_context_get_user_data(a2);
      if (mmcs_transaction_is_proxy(user_data))
      {
        user_data = *(*(user_data + 64) + 16);
      }

      else
      {
        v28 = *(v3 + 56);
        v29 = mmcs_http_context_get_destination_address(a2);
        socketinfo__set_peer_address_with_c_string(v28, v29);
      }

      v30 = CFHTTPMessageCopyRequestURL(*(*(user_data + 24) + 16));
      v31 = *(v3 + 24);
      v32 = CFURLGetString(v30);
      metricsinfo__set_request_url_with_cfstring(v31, v32);
      v33 = CFURLGetPortNumber(v30);
      socketinfo__set_peer_port(*(v3 + 56), v33);
      if (v30)
      {
        CFRelease(v30);
      }
    }

    if (mmcs_http_context_has_bytes_written(a2))
    {
      v34 = mmcs_http_context_bytes_written(a2);
      v35 = mmcs_http_context_request_size(a2);
      v36 = *(v3 + 24);
      if (v34)
      {
        v37 = v34;
      }

      else
      {
        v37 = v35;
      }

      metricsinfo__set_request_size(*(v3 + 24), v37);
    }

    if (mmcs_http_context_has_bytes_read(a2))
    {
      if (mmcs_http_context_has_bytes_read(a2))
      {
        v38 = mmcs_http_context_bytes_read(a2);
      }

      else
      {
        v38 = 0;
      }

      if (mmcs_http_context_has_response_size(a2))
      {
        v39 = mmcs_http_context_response_size(a2);
      }

      else
      {
        v39 = 0;
      }

      v40 = *(v3 + 24);
      if (v38)
      {
        v41 = v38;
      }

      else
      {
        v41 = v39;
      }

      metricsinfo__set_response_size(*(v3 + 24), v41);
    }

    v42 = *(v3 + 24);
    is_complete = mmcs_http_context_is_complete(a2);
    metricsinfo__set_transaction_complete(v42, is_complete);
    if (mmcs_http_context_has_timedout(a2))
    {
      v44 = *(v3 + 24);
      is_timedout = mmcs_http_context_is_timedout(a2);
      metricsinfo__set_timed_out(v44, is_timedout);
    }

    result = mmcs_http_context_is_cancelled(a2);
    *(v3 + 48) = result;
  }

  return result;
}

__CFArray *mmcs_metrics_request_add_http_info_for_auth(__CFArray *result, void *a2)
{
  if (result)
  {
    return _addToLazyArray(result + 9, a2, &httpInfoArrayCallbacks);
  }

  return result;
}

__CFArray *mmcs_metrics_request_add_http_info_for_transfer(__CFArray *result, void *a2)
{
  if (result)
  {
    return _addToLazyArray(result + 10, a2, &httpInfoArrayCallbacks);
  }

  return result;
}

__CFArray *mmcs_metrics_request_add_http_info_for_completion(__CFArray *result, void *a2)
{
  if (result)
  {
    return _addToLazyArray(result + 11, a2, &httpInfoArrayCallbacks);
  }

  return result;
}

uint64_t mmcs_metrics_http_info_set_final_try_in_request(uint64_t result, int a2)
{
  if (result)
  {
    v2 = MEMORY[0x277CBED28];
    if (!a2)
    {
      v2 = MEMORY[0x277CBED10];
    }

    *(result + 72) = *v2;
  }

  return result;
}

uint64_t mmcs_metrics_http_info_set_inline_edge_complete(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 80) = a2;
  }

  return result;
}

void *mmcs_metrics_request_create(const void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0xA8uLL, 0x1060040DC2DA957uLL);
  if (v2)
  {
    if (a1)
    {
      CFRetain(a1);
      v2[2] = a1;
    }

    v2[1] = 1;
  }

  return v2;
}

uint64_t mmcs_metrics_request_retain(uint64_t result)
{
  if (result)
  {
    ++*(result + 8);
  }

  return result;
}

void mmcs_metrics_request_release(double *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *(a1 + 1) - 1;
    *(a1 + 1) = v2;
    if (!v2)
    {
      if (a1[5] == 0.0)
      {
        v3 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"no stopTime %p !!", a1);
          v5 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v15 = v4;
            _os_log_impl(&dword_2577D8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }

          if (v4)
          {
            CFRelease(v4);
          }
        }
      }

      v6 = *(a1 + 2);
      if (v6)
      {
        CFRelease(v6);
      }

      a1[2] = 0.0;
      v7 = *(a1 + 6);
      if (v7)
      {
        CFRelease(v7);
      }

      a1[6] = 0.0;
      v8 = *(a1 + 7);
      if (v8)
      {
        CFRelease(v8);
      }

      a1[7] = 0.0;
      v9 = *(a1 + 17);
      if (v9)
      {
        CFRelease(v9);
      }

      a1[17] = 0.0;
      v10 = *(a1 + 9);
      if (v10)
      {
        CFRelease(v10);
      }

      a1[9] = 0.0;
      v11 = *(a1 + 10);
      if (v11)
      {
        CFRelease(v11);
      }

      a1[10] = 0.0;
      v12 = *(a1 + 11);
      if (v12)
      {
        CFRelease(v12);
      }

      free(a1);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

CFStringRef mmcs_metrics_request_copy_description(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2 - *(a1 + 32);
  }

  v4 = CFStringCompare(@"get", *(a1 + 16), 0);
  v5 = *MEMORY[0x277CBECE8];
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  if (v4)
  {
    v12 = *(a1 + 128);
    return CFStringCreateWithFormat(v5, 0, @"<request_metrics %p> type:%@ protoVers:%0.3lf start:%f elapsed:%0.4lf cancelErr:%@ reqErr:%@ nrItems:%ld nrChunksUploaded:%ld chunking:%@ authRequests:%@ containerRequests:%@ completionRequests:%@", a1, v6, v7, v8, *&v3, v9, v10, v11, *(a1 + 128), *(a1 + 136), *(a1 + 72), *(a1 + 80), *(a1 + 88));
  }

  else
  {
    v14 = *(a1 + 112);
    return CFStringCreateWithFormat(v5, 0, @"<request_metrics %p> type:%@ protoVers:%0.3lf start:%f elapsed:%0.4lf cancelErr:%@ reqErr:%@ nrItems:%ld nrItemsNeedingChunks:%ld bytesFromPeers:%lld bytesFromLocal:%lld bytesResumed:%lld authRequests:%@ containerRequests:%@ completionRequests:%@", a1, v6, v7, v8, *&v3, v9, v10, v11, *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 72), *(a1 + 80), *(a1 + 88));
  }
}

void mmcs_metrics_request_started(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    *(a1 + 32) = CFAbsoluteTimeGetCurrent();
    *(a1 + 64) = a2;
  }
}

void _mmcs_metrics_request_stopped(uint64_t a1, const void *a2, const void *a3)
{
  if (a1)
  {
    *(a1 + 40) = CFAbsoluteTimeGetCurrent();
    if (a2)
    {
      CFRetain(a2);
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      CFRelease(v6);
    }

    *(a1 + 56) = a2;
    if (a3)
    {
      CFRetain(a3);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      CFRelease(v7);
    }

    *(a1 + 48) = a3;
  }
}

uint64_t _mmcs_metrics_chunking_info_retain_callback(uint64_t a1, uint64_t a2)
{
  result = a2;
  if (a2)
  {
    ++*(a2 + 8);
  }

  return result;
}

uint64_t MMCSEngineClientContextGetItemReaderWriterForItem(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, CFTypeRef *a7)
{
  v10 = a4;
  v59 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    *a7 = 0;
  }

  cf = 0;
  v55 = 0;
  v12 = *(a1 + 16);
  if (*a1 >= 3)
  {
    if (v12)
    {
      goto LABEL_12;
    }

    if (*a1 > 5uLL)
    {
      *v56 = 0;
      if (!(*(a1 + 64))(a2, a3, a4, v56, &v55) || (v32 = *v56) == 0)
      {
        v49 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v40 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"getItemReaderWriterForItemCallback did not succeed");
          v41 = mmcs_logging_logger_default();
          if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_46;
          }

          *buf = 138543362;
          v58 = v40;
LABEL_45:
          _os_log_impl(&dword_2577D8000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
LABEL_46:
          if (v40)
          {
            CFRelease(v40);
          }
        }

LABEL_48:
        file_error_wrapping_error_to_release = mmcs_cferror_create_file_error_wrapping_error_to_release(v55, @"Getting the item readerWriter failed. ", v34, v35, v36, v37, v38, v39);
        goto LABEL_49;
      }
    }

    else
    {
      *v56 = 0;
      if (!(*(a1 + 64))(a2, a4, v56, &v55) || (v32 = *v56) == 0)
      {
        v33 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v40 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"getItemReaderWriterForItemCallback did not succeed");
          v41 = mmcs_logging_logger_default();
          if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_46;
          }

          *buf = 138543362;
          v58 = v40;
          goto LABEL_45;
        }

        goto LABEL_48;
      }
    }

    *a6 = v32;
LABEL_35:
    v31 = 1;
    goto LABEL_50;
  }

  if (!v12)
  {
    v13 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Missing MMCSGetFileDescriptorAndContentTypeFromItemCallback.");
      v15 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v58 = v14;
        _os_log_impl(&dword_2577D8000, v15, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }

    file_error_wrapping_error_to_release = mmcs_cferror_create_error(@"com.apple.mmcs", 40, @"Missing MMCSGetFileDescriptorAndContentTypeFromItemCallback.");
    goto LABEL_49;
  }

LABEL_12:
  v53 = -1;
  if (!v12(a2, a4, &v53, &cf, &v55))
  {
    if (!v55)
    {
      file_error_wrapping_error_to_release = mmcs_cferror_create_with_format(@"com.apple.mmcs", 9, @"No client error provided for failed getFileDescriptorAndContentTypeFromItemCallback for item %lld", v17, v18, v19, v20, v21, v10);
      goto LABEL_49;
    }

    goto LABEL_16;
  }

  bzero(buf, 0x400uLL);
  if (get_path_for_fd(v53, buf))
  {
    v22 = *__error();
    v23 = v22;
    v24 = v53;
    strerror(v22);
    file_error_wrapping_error_to_release = mmcs_cferror_create_file_error_with_format(v23, @"get_path_for_fd(%d) failed: %s for item %lld ", v25, v26, v27, v28, v29, v30, v24);
LABEL_49:
    v31 = 0;
    v55 = file_error_wrapping_error_to_release;
    goto LABEL_50;
  }

  v42 = *MEMORY[0x277CBECE8];
  v43 = CFStringCreateWithFileSystemRepresentation(*MEMORY[0x277CBECE8], buf);
  v44 = v43;
  v45 = cf;
  if (*a1 <= 2 && !cf)
  {
    v45 = XCFStringCopyPathExtension(v43);
    cf = v45;
  }

  v46 = MMCSItemReaderWriterCreateWithFileDescriptor(v53, v45, v44, 0, &v55);
  if (v44)
  {
    CFRelease(v44);
  }

  if (v46)
  {
    if (*a1 <= 1)
    {
      MMCSItemReaderWriterSetNeverClose(v46, a5);
    }

    *a6 = v46;
    goto LABEL_35;
  }

  v47 = mmcs_logging_logger_default();
  if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_16;
  }

  v31 = CFStringCreateWithFormat(v42, 0, @"failed MMCSItemReaderWriterCreateWithFileDescriptor");
  v48 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    *v56 = 138543362;
    *&v56[4] = v31;
    _os_log_impl(&dword_2577D8000, v48, OS_LOG_TYPE_ERROR, "%{public}@", v56, 0xCu);
  }

  if (v31)
  {
    CFRelease(v31);
LABEL_16:
    v31 = 0;
  }

LABEL_50:
  if (a7 && !v31)
  {
    error = v55;
    if (!v55)
    {
      error = mmcs_cferror_create_error(@"com.apple.mmcs", 39, @"MMCSEngineClientContextGetItemReaderWriterForItem missing local error");
      v55 = error;
    }

    CFRetain(error);
    *a7 = v55;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  if (v55)
  {
    CFRelease(v55);
  }

  v51 = *MEMORY[0x277D85DE8];
  return v31;
}

uint64_t MMCSEngineClientContextGetItemProgress(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v6 = *(result + 24);
    if (v6)
    {
      return v6(a2, a3, a4, a5, a6);
    }
  }

  return result;
}

void *MMCSEngineClientContextGetItemDone(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    v7 = result[4];
    if ((*result - 5) > 5)
    {
      if (v7)
      {
        return v7(a2, a3, a4, a5, a6);
      }
    }

    else if (v7)
    {
      return (v7)(a2, a3, a4, a5, a6, a7);
    }
  }

  return result;
}

uint64_t *MMCSEngineClientContextRequestCompleted(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = result[7];
  if (*result < 7)
  {
    if (v3)
    {
      return v3(a2);
    }
  }

  else if (v3)
  {
    return (v3)(a2, a3);
  }

  return result;
}

void MMCSEngineClientContextPutItemProgress(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CFDictionaryRef theDict, __n128 a7)
{
  v8 = a7.n128_u64[0];
  v26 = *MEMORY[0x277D85DE8];
  if (*a1 > 7uLL)
  {
    if ((*a1 - 8) > 2)
    {
      v18 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"unknown engine client version %ld\n", *a1);
        v20 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v25 = v19;
          _os_log_impl(&dword_2577D8000, v20, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v19)
        {
          CFRelease(v19);
        }
      }

      v21 = *MEMORY[0x277D85DE8];
    }

    else
    {
      v16 = a1[5];
      v17 = *MEMORY[0x277D85DE8];

      v16(a2, a3, a4, a5, theDict);
    }
  }

  else
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"kMMCSPutReceipt");
      v15 = CFDictionaryGetValue(theDict, @"kMMCSResultError");
    }

    else
    {
      Value = 0;
      v15 = 0;
    }

    v22 = a1[5];
    v23 = *MEMORY[0x277D85DE8];
    a7.n128_u64[0] = v8;

    v22(a2, a3, a4, a5, Value, v15, a7);
  }
}

void MMCSEngineClientContextPutItemDone(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, CFDictionaryRef theDict)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*a1 > 7uLL)
  {
    if ((*a1 - 8) > 2)
    {
      v14 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"unknown engine client version %ld\n", *a1);
        v16 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v21 = v15;
          _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v15)
        {
          CFRelease(v15);
        }
      }

      v17 = *MEMORY[0x277D85DE8];
    }

    else
    {
      v12 = a1[6];
      v13 = *MEMORY[0x277D85DE8];

      v12(a2, a3, a4, theDict);
    }
  }

  else
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"kMMCSPutReceipt");
      v11 = CFDictionaryGetValue(theDict, @"kMMCSResultError");
    }

    else
    {
      Value = 0;
      v11 = 0;
    }

    v18 = a1[6];
    v19 = *MEMORY[0x277D85DE8];

    v18(a2, a3, a4, Value, v11);
  }
}

void MMCSEngineClientContextPutSectionProgress(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((*a1 - 4) > 6)
  {
    v10 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"unknown engine client version %ld\n", *a1);
      v12 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v15 = v11;
        _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }

    goto LABEL_11;
  }

  v8 = a1[9];
  if (!v8)
  {
LABEL_11:
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  v9 = *MEMORY[0x277D85DE8];

  v8(a2, a3, a4, a5, a6, a7);
}

void MMCSEngineClientContextPutSectionDone(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, CFDictionaryRef theDict)
{
  v22 = *MEMORY[0x277D85DE8];
  if ((*a1 - 4) <= 4)
  {
    v10 = a1[10];
    if (v10)
    {
      if (theDict)
      {
        Value = CFDictionaryGetValue(theDict, @"kMMCSPutReceipt");
        v12 = CFDictionaryGetValue(theDict, @"kMMCSResultError");
        v10 = a1[10];
      }

      else
      {
        Value = 0;
        v12 = 0;
      }

      v19 = *MEMORY[0x277D85DE8];

      v10(a2, a3, a4, Value, v12);
      return;
    }

    goto LABEL_15;
  }

  if ((*a1 - 9) > 1)
  {
    v15 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"unknown engine client version %ld\n", *a1);
      v17 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v21 = v16;
        _os_log_impl(&dword_2577D8000, v17, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v16)
      {
        CFRelease(v16);
      }
    }

    goto LABEL_15;
  }

  v13 = a1[10];
  if (!v13)
  {
LABEL_15:
    v18 = *MEMORY[0x277D85DE8];
    return;
  }

  v14 = *MEMORY[0x277D85DE8];

  v13(a2, a3, a4, theDict);
}

uint64_t MMCSEngineClientContextGetItemReaderWriterForChunkSignature(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, CFTypeRef *a6)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    *a6 = 0;
  }

  cf = 0;
  if (*a1 == 10)
  {
    v26 = 0;
    v9 = a1[11];
    if (v9)
    {
      if (v9(a2, a3, a4, &v26, &cf))
      {
        v10 = v26 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        *a5 = v26;
        v22 = 1;
        goto LABEL_23;
      }

      v11 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v29 = cf;
        _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_INFO, "Retrieving itemReaderWriter for chunk signature unsuccessful with error %@", buf, 0xCu);
      }

      file_error_wrapping_error_to_release = mmcs_cferror_create_file_error_wrapping_error_to_release(cf, @"Retrieving itemReaderWriter for chunk signature unsuccessful.", v12, v13, v14, v15, v16, v17);
    }

    else
    {
      v21 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2577D8000, v21, OS_LOG_TYPE_INFO, "Retrieving itemReaderWriter for chunk signature unsuccessful, no callback provided on engine context.", buf, 2u);
      }

      file_error_wrapping_error_to_release = mmcs_cferror_create_error(@"com.apple.mmcs", 1, @"Retrieving itemReaderWriter for chunk signature unsuccessful, no callback provided on engine context.");
    }

    v22 = 0;
    cf = file_error_wrapping_error_to_release;
    goto LABEL_23;
  }

  v19 = mmcs_logging_logger_default();
  if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
LABEL_18:
    v22 = 0;
    goto LABEL_23;
  }

  v22 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"unsupported engine client version %ld\n", *a1);
  v20 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v29 = v22;
    _os_log_impl(&dword_2577D8000, v20, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  if (v22)
  {
    CFRelease(v22);
    goto LABEL_18;
  }

LABEL_23:
  error = cf;
  if (a6 && !v22)
  {
    if (!cf)
    {
      error = mmcs_cferror_create_error(@"com.apple.mmcs", 39, @"MMCSEngineClientContextGetItemReaderWriterForItem missing local error");
      cf = error;
    }

    CFRetain(error);
    error = cf;
    *a6 = cf;
  }

  if (error)
  {
    CFRelease(error);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v22;
}

__n128 MMCSEngineClientContextCopy0(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x40uLL, 0x108004041683268uLL);
  if (v2)
  {
    result = *a1;
    v4 = *(a1 + 16);
    v5 = *(a1 + 48);
    v2[2] = *(a1 + 32);
    v2[3] = v5;
    *v2 = result;
    v2[1] = v4;
  }

  return result;
}

void mmcs_update_request_abort(uint64_t a1, CFErrorRef err, void (*a3)(uint64_t, CFDictionaryRef))
{
  keys[1] = *MEMORY[0x277D85DE8];
  if (err && a3)
  {
    Domain = CFErrorGetDomain(err);
    if (!CFEqual(@"com.apple.mmcs", Domain))
    {
      mmcs_update_request_abort_cold_1();
    }

    values = err;
    keys[0] = @"kMMCSResultError";
    v7 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    a3(a1, v7);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void mmcs_update_request_append_description(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = _mmcs_request_copy_description(*a1);
    if (v2)
    {
      v3 = v2;
      CFStringAppend(*(a1 + 16), v2);

      CFRelease(v3);
    }
  }
}

void mmcs_update_request_finalize(uint64_t a1)
{
  v2 = *(a1 + 304);
  v3 = *(v2 + 16);
  if (v3)
  {
    CFRelease(v3);
    v2 = *(a1 + 304);
  }

  *(v2 + 16) = 0;
  v4 = *(a1 + 304);
  v5 = *(v4 + 24);
  if (v5)
  {
    CFRelease(v5);
    v4 = *(a1 + 304);
  }

  *(v4 + 24) = 0;
  v6 = *(a1 + 304);
  v7 = *(v6 + 32);
  if (v7)
  {
    CFRelease(v7);
    v6 = *(a1 + 304);
  }

  *(v6 + 32) = 0;
  v8 = *(a1 + 304);
  v9 = *(v8 + 40);
  if (v9)
  {
    CFRelease(v9);
    v8 = *(a1 + 304);
  }

  *(v8 + 40) = 0;
  v10 = *(a1 + 304);
  v11 = *(v10 + 64);
  if (v11)
  {
    CFRelease(v11);
    v10 = *(a1 + 304);
  }

  *(v10 + 64) = 0;
  v12 = *(a1 + 304);
  v13 = v12[6];
  if (v13)
  {
    mmcs_http_context_invalidate(v13);
    v14 = *(a1 + 304);
    v15 = *(v14 + 48);
    if (v15)
    {
      C3BaseRelease(v15);
      v14 = *(a1 + 304);
    }

    *(v14 + 48) = 0;
    v12 = *(a1 + 304);
  }

  v16 = v12[7];
  if (v16)
  {
    mmcs_http_context_invalidate(v16);
    v17 = *(a1 + 304);
    v18 = *(v17 + 56);
    if (v18)
    {
      C3BaseRelease(v18);
      v17 = *(a1 + 304);
    }

    *(v17 + 56) = 0;
    v12 = *(a1 + 304);
  }

  v19 = v12[11];
  if (v19)
  {
    CFRelease(v19);
    v12 = *(a1 + 304);
  }

  v12[11] = 0;
}

uint64_t mmcs_update_request_stop_with_error(uint64_t a1, CFErrorRef error)
{
  if (*(a1 + 144))
  {
    return 0;
  }

  C3BaseRetain(a1);
  *(a1 + 144) = 1;
  if (error)
  {
    v5 = 0;
  }

  else
  {
    error = mmcs_cferror_create_error(@"com.apple.mmcs", 4, @"Update request was cancelled.");
    v5 = error;
  }

  CFRetain(error);
  *(a1 + 152) = error;
  mmcs_http_context_should_cancel(*(*(a1 + 304) + 48), error);
  mmcs_http_context_should_cancel(*(*(a1 + 304) + 56), *(a1 + 152));
  if (v5)
  {
    CFRelease(v5);
  }

  C3BaseRelease(a1);
  return 1;
}

void mmcs_update_items(uint64_t a1, const void *a2, const char *a3, uint64_t a4, const __CFDictionary *a5, void (*a6)(uint64_t, CFDictionaryRef))
{
  v12 = _os_activity_create(&dword_2577D8000, "mmcs-update-items", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v12, &state);
  v69 = 0;
  v68[0] = 0;
  if (!mmcs_request_allocate(v68, 4, 96) || (v18 = v68[0]) == 0)
  {
    v30 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 36, @"Cannot allocate update request", v13, v14, v15, v16, v17, v60);
    v69 = v30;
    if (v30)
    {
      mmcs_update_request_abort(a4, v30, a6);
      goto LABEL_41;
    }

    goto LABEL_61;
  }

  if (!_mmcs_request_init(v68[0], a1, a4, a5, a2, a3, v12, &v69))
  {
    v29 = @"Cannot initialize update request";
    v58 = 37;
LABEL_37:
    v59 = mmcs_cferror_create_with_format(@"com.apple.mmcs", v58, v29, v19, v20, v21, v22, v23, v60);
    v69 = v59;
LABEL_38:
    if (v59)
    {
      mmcs_update_request_abort(a4, v59, a6);
      goto LABEL_40;
    }

LABEL_61:
    mmcs_update_items_cold_1();
  }

  *v18[38] = mmcs_get_cfBOOLean_from_cfdictionary_object_for_key(a5, @"kMMCSRequestOptionReturnOpaqueCloneContext", 0);
  v18[38][1] = a6;
  v24 = *MEMORY[0x277CBECE8];
  v18[38][2] = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, &_update_items_array_callbacks);
  v25 = MEMORY[0x277CBF150];
  v18[38][3] = CFDictionaryCreateMutable(v24, 0, &_update_items_unwrap_dictionary_key_callbacks, MEMORY[0x277CBF150]);
  v18[38][4] = CFDictionaryCreateMutable(v24, 0, &_update_items_wrap_dictionary_key_callbacks, v25);
  *(v18[38] + 73) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a5, @"kMMCSRequestOptionReturnPreauthorizationRequestObject", 0);
  v26 = CFDictionaryGetValue(a5, @"kMMCSRequestOptionPreauthorization");
  if (v26 && (v27 = v26, TypeID = CFDataGetTypeID(), TypeID == CFGetTypeID(v27)))
  {
    v18[38][10] = v27;
    if (*(v18[38] + 73))
    {
      v29 = @"Cannot use kMMCSRequestOptionPreauthorization and kMMCSRequestOptionReturnPreauthorizationRequestObject together";
LABEL_36:
      v58 = 40;
      goto LABEL_37;
    }

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = CFDictionaryGetValue(a5, @"kMMCSRequestOptionItemOptions");
  if (!v32 || (v33 = v32, v34 = CFArrayGetTypeID(), v34 != CFGetTypeID(v33)))
  {
    v60 = a5;
    v29 = @"expected item options array in request options %@";
    goto LABEL_36;
  }

  v18[28] = voucher_copy();
  Count = CFArrayGetCount(v33);
  if (!Count)
  {
    v60 = a5;
    v29 = @"did not expect empty item options array in request options %@";
    goto LABEL_36;
  }

  v61 = a1;
  if (Count >= 1)
  {
    v36 = 0;
    v37 = 32;
    if (v31)
    {
      v37 = 24;
    }

    v62 = v37;
    v63 = Count;
    v65 = v31;
    v64 = v33;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v33, v36);
      v39 = CFGetTypeID(ValueAtIndex);
      if (v39 != CFDictionaryGetTypeID())
      {
        v60 = ValueAtIndex;
        v29 = @"expected item option to be a dictionary %@";
        goto LABEL_36;
      }

      v40 = CFDictionaryGetValue(ValueAtIndex, @"kMMCSSignature");
      if (!v40 || (v41 = v40, v42 = CFGetTypeID(v40), v42 != CFDataGetTypeID()))
      {
        v60 = ValueAtIndex;
        v29 = @"expected item option dictionary to include a signature. Got: %@";
        goto LABEL_36;
      }

      v43 = CFDictionaryGetValue(ValueAtIndex, @"kMMCSAuthorizationToken");
      if (!v43 || (v44 = v43, v45 = CFGetTypeID(v43), v45 != CFStringGetTypeID()))
      {
        v60 = ValueAtIndex;
        v29 = @"expected item option dictionary to include an authToken. Got: %@";
        goto LABEL_36;
      }

      v46 = CFDictionaryGetValue(ValueAtIndex, @"kMMCSMIMEType");
      v47 = v46;
      if (v46)
      {
        v48 = v36;
        v49 = CFGetTypeID(v46);
        v50 = v49 == CFStringGetTypeID();
        v36 = v48;
        if (!v50)
        {
          v60 = ValueAtIndex;
          v29 = @"expected item option dictionary MIMEType to be a string. Got: %@";
          goto LABEL_36;
        }
      }

      v68[0] = 0;
      v68[1] = 0;
      v67[0] = 0;
      v67[1] = 0;
      if (!mmcs_wrapping_state_init_with_option_dict(v68, ValueAtIndex, @"kMMCSWrappingState", &v69))
      {
        break;
      }

      if (!mmcs_wrapping_state_init_with_option_dict(v67, ValueAtIndex, @"kMMCSUnwrappingState", &v69))
      {
        if (!v69)
        {
          v69 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"expected specific error for kMMCSWrappingState", v51, v52, v53, v54, v55, v60);
        }

        mmcs_wrapping_state_set_reference_signature_and_object(v68, 0, 0);
        v59 = v69;
        goto LABEL_38;
      }

      value = 0;
      v56 = mmcs_update_item_create(&value, v41, v44, v67, v68);
      mmcs_wrapping_state_set_reference_signature_and_object(v68, 0, 0);
      mmcs_wrapping_state_set_reference_signature_and_object(v67, 0, 0);
      if (!v56)
      {
        v29 = @"mmcs_update_item_create";
        goto LABEL_60;
      }

      mmcs_update_item_set_MIME_type(value, v47);
      CFArrayAppendValue(v18[38][2], value);
      XCFDictionaryAppendValue(*(v18[38] + v62), &_update_items_array_callbacks, value, value);
      if (value)
      {
        C3BaseRelease(value);
      }

      ++v36;
      v33 = v64;
      LOBYTE(v31) = v65;
      if (v63 == v36)
      {
        goto LABEL_32;
      }
    }

    v59 = v69;
    if (v69)
    {
      goto LABEL_38;
    }

    v29 = @"expected specific error for kMMCSWrappingState";
LABEL_60:
    v58 = 1;
    goto LABEL_37;
  }

LABEL_32:
  v57 = v18[38];
  if ((v31 & 1) == 0)
  {
    v18[38][5] = XCFDictionaryCopyKeys(v57[4], &_update_items_array_callbacks);
    if (CFArrayGetCount(v18[38][5]))
    {
      *(v18[38] + 72) = 1;
      mmcs_engine_add_request(v61, v18);
      mmcs_update_request_process_authorize_put_response(v18, v18[38][10]);
      goto LABEL_40;
    }

    v29 = @"There were no distinct items from the putChunkKeys response";
    goto LABEL_60;
  }

  *(v57 + 72) = 1;
  mmcs_engine_add_request(v61, v18);
  mmcs_update_items_send_get_chunk_keys(v18);
LABEL_40:
  C3BaseRelease(v18);
LABEL_41:
  if (v69)
  {
    CFRelease(v69);
  }

  if (v12)
  {
    os_release(v12);
  }

  os_activity_scope_leave(&state);
}

void mmcs_update_request_process_authorize_put_response(uint64_t a1, CFDataRef theData)
{
  Length = CFDataGetLength(theData);
  BytePtr = CFDataGetBytePtr(theData);
  v6 = chunkserver__storage_container_chunk_lists__unpack(0, Length, BytePtr);
  if (v6)
  {
    v12 = v6;
    mmcs_update_request_process_put_file_success_and_error(a1, 0, v6[8], v6[9], v6[5], v6[6]);

    chunkserver__storage_container_chunk_lists__free_unpacked(v12, 0);
  }

  else
  {
    v13 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Authorize Put Response could not be deserialized", v7, v8, v9, v10, v11, v15);
    if (!v13)
    {
      mmcs_update_request_process_authorize_put_response_cold_1();
    }

    v14 = v13;
    mmcs_update_request_set_error(a1, v13);
    mmcs_update_request_cleanup(a1);

    CFRelease(v14);
  }
}

void mmcs_update_items_send_get_chunk_keys(uint64_t a1)
{
  v68 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x277CBECE8];
  v4 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x277CBECE8], *(a1 + 160), @"getChunkKeys", 0);
  if (!v4)
  {
    error = mmcs_cferror_create_error(@"com.apple.mmcs", 37, @"Failed to create getChunkKeys request url");
    data = 0;
    goto LABEL_22;
  }

  v5 = *(a1 + 304);
  v6 = *(v5 + 40);
  if (v6)
  {
    CFRelease(v6);
    v5 = *(a1 + 304);
  }

  *(*(a1 + 304) + 40) = XCFDictionaryCopyKeys(*(v5 + 24), &_update_items_array_callbacks);
  Count = CFArrayGetCount(*(*(a1 + 304) + 40));
  v8 = chunkserver__get_chunk_keys_request__create(Count);
  if (v8)
  {
    v9 = v8;
    v10 = *(*(a1 + 304) + 40);
    v69.length = CFArrayGetCount(v10);
    v69.location = 0;
    CFArrayApplyFunction(v10, v69, _add_items, v9);
    data = 0;
    if (Count == *(v9 + 3))
    {
      if (**(a1 + 304))
      {
        *(v9 + 10) = 1;
        *(v9 + 11) = CFBooleanGetValue(**(a1 + 304));
      }

      data = chunkserver__get_chunk_keys_request__create_data(v9);
    }

    chunkserver__get_chunk_keys_request__free_unpacked(v9, 0);
  }

  else
  {
    data = 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 304) + 40), 0);
  v14 = v2[8];
  v15 = v2[10];
  dataclass = mmcs_request_get_dataclass(a1);
  http_protobuf_message = create_http_protobuf_message(v14, v15, dataclass, *(a1 + 168), *(a1 + 176), v4, data);
  if (!http_protobuf_message)
  {
    v23 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = CFStringCreateWithFormat(v3, 0, @"unable to create getChunkKeys msg");
      v25 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v67 = v24;
        _os_log_impl(&dword_2577D8000, v25, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v24)
      {
        CFRelease(v24);
      }
    }

    error = mmcs_cferror_create_error(@"com.apple.mmcs", 37, @"Failed to create getChunkKeys msg");
LABEL_22:
    v18 = 0;
    CStringWithCFString = 0;
    v20 = 0;
    if (!error)
    {
LABEL_69:
      mmcs_update_items_send_get_chunk_keys_cold_1();
    }

LABEL_48:
    mmcs_update_request_set_error(a1, error);
    mmcs_update_request_cleanup(a1);
    if (!v4)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v18 = http_protobuf_message;
  mmcs_request_insert_headers(a1, http_protobuf_message);
  BytePtr = CFDataGetBytePtr(*(ValueAtIndex + 2));
  v20 = mmcs_file_signature_copy(BytePtr);
  CStringWithCFString = createCStringWithCFString(*(ValueAtIndex + 3));
  if (!mmcs_http_msg_add_auth_header(v18, v20, *(ValueAtIndex + 8), CStringWithCFString, 0, 0))
  {
    v26 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v32 = CFStringCreateWithFormat(v3, 0, @"unable to add getChunkKeys token header");
      v33 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v67 = v32;
        _os_log_impl(&dword_2577D8000, v33, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v32)
      {
        CFRelease(v32);
      }
    }

    v34 = @"Failed to add getChunkKeys token header";
LABEL_30:
    v35 = 1;
    goto LABEL_47;
  }

  v63 = 0;
  v51[0] = @"getChunkKeys";
  v51[1] = v18;
  v51[2] = *(a1 + 56);
  v51[3] = *(a1 + 96);
  if (mmcs_request_is_background(a1))
  {
    v22 = *(a1 + 104);
  }

  else
  {
    v22 = 0;
  }

  v51[4] = v22;
  v52 = xmmword_25785FB20;
  v53 = 0;
  v54 = 0;
  v55 = mmcs_update_request_will_retry_get_chunk_keys_after_error;
  v56 = handle_response_get_chunk_keys;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = a1;
  sparse_block_size = mmcs_engine_get_sparse_block_size();
  v62 = mmcs_engine_owner(v2);
  LOBYTE(v63) = 0;
  v64 = 0;
  request_activity_marker = mmcs_request_get_request_activity_marker(a1);
  memset(v50, 0, sizeof(v50));
  mmcs_read_stream_pool_parameters_make_pool_timeout_max(v2[4], 100, v50, 90.0);
  if (!mmcs_http_context_create((*(a1 + 304) + 48), *(a1 + 140), v51))
  {
    v41 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = CFStringCreateWithFormat(v3, 0, @"unable to create http context");
      v43 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v67 = v42;
        _os_log_impl(&dword_2577D8000, v43, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v42)
      {
        CFRelease(v42);
      }
    }

    v49 = "mmcs_update_items_send_get_chunk_keys";
    v34 = @"Failed to create http context %s";
    v35 = 37;
LABEL_47:
    error = mmcs_cferror_create_with_format(@"com.apple.mmcs", v35, v34, v27, v28, v29, v30, v31, v49);
    if (!error)
    {
      goto LABEL_69;
    }

    goto LABEL_48;
  }

  mmcs_http_context_make_metrics(*(*(a1 + 304) + 48), @"getChunkKeys", 0, *(a1 + 56), 0);
  current_request_metrics = mmcs_get_req_context_get_current_request_metrics(a1);
  metrics = mmcs_http_context_get_metrics(*(*(a1 + 304) + 48));
  mmcs_metrics_request_add_http_info_for_transfer(current_request_metrics, metrics);
  if (!mmcs_http_context_send(*(*(a1 + 304) + 48), v50, v2[7]))
  {
    v45 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = CFStringCreateWithFormat(v3, 0, @"unable to send http msg");
      v47 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v67 = v46;
        _os_log_impl(&dword_2577D8000, v47, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v46)
      {
        CFRelease(v46);
      }
    }

    v48 = *(*(a1 + 304) + 48);
    if (v48 && mmcs_http_context_get_error(v48))
    {
      error = mmcs_http_context_get_error(*(*(a1 + 304) + 48));
      CFRetain(error);
      if (!error)
      {
        goto LABEL_69;
      }

      goto LABEL_48;
    }

    v49 = "mmcs_update_items_send_get_chunk_keys";
    v34 = @"Failed to send http msg %s";
    goto LABEL_30;
  }

  if (gMMCS_DebugLevel >= 4)
  {
    v38 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v39 = CFStringCreateWithFormat(v3, 0, @"sent mmcs_get_chunk_keys (%p) for update request: %p", *(*(a1 + 304) + 48), a1);
      v40 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v67 = v39;
        _os_log_impl(&dword_2577D8000, v40, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v39)
      {
        CFRelease(v39);
      }
    }
  }

  error = 0;
LABEL_49:
  CFRelease(v4);
LABEL_50:
  if (v18)
  {
    CFRelease(v18);
  }

  if (data)
  {
    CFRelease(data);
  }

  if (v20)
  {
    free(v20);
  }

  if (CStringWithCFString)
  {
    free(CStringWithCFString);
  }

  if (error)
  {
    CFRelease(error);
  }

  v44 = *MEMORY[0x277D85DE8];
}

void mmcs_update_request_process_put_file_success_and_error(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v67 = *MEMORY[0x277D85DE8];
  v64 = 0;
  v62 = 0;
  cf = 0;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  if (a3)
  {
    v11 = 0;
    alloc = *MEMORY[0x277CBECE8];
    do
    {
      v12 = *(a4 + 8 * v11);
      if (!chunkserver__file_success__parse_and_validate(v12, &cf, &v62, &v61, &v60, &v64))
      {
        goto LABEL_71;
      }

      v57 = 0;
      key = 0;
      context = v62;
      if (!mmcs_update_item_create(&key, cf, @"fake", 0, &context))
      {
LABEL_72:
        v47 = @"mmcs_update_item_create";
        v48 = 37;
        goto LABEL_73;
      }

      ArrayValue = XCFDictionaryGetArrayValue(*(*(a1 + 304) + 32), key);
      if (key)
      {
        C3BaseRelease(key);
      }

      key = 0;
      if (!ArrayValue)
      {
        v23 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v51 = cf;
          v24 = CFStringCreateWithFormat(alloc, 0, @"The server replied with FileSuccess signature %@ reference %@ which was not requested");
          v25 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v66 = v24;
            _os_log_impl(&dword_2577D8000, v25, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v24)
          {
            CFRelease(v24);
          }
        }

        goto LABEL_29;
      }

      v19 = *(v12 + 40);
      if (a2)
      {
        if (v19 != 1)
        {
          v20 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v52 = *(v12 + 40);
            v51 = cf;
            v21 = CFStringCreateWithFormat(alloc, 0, @"FileSuccess signature %@ reference %@ with unexpected success code %d");
            v22 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
LABEL_21:
              *buf = 138543362;
              v66 = v21;
              _os_log_impl(&dword_2577D8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
            }

LABEL_22:
            if (v21)
            {
              CFRelease(v21);
            }
          }
        }
      }

      else if ((v19 - 3) >= 3)
      {
        v26 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v53 = *(v12 + 40);
          v51 = cf;
          v21 = CFStringCreateWithFormat(alloc, 0, @"FileSuccess signature %@ reference %@ with unexpected success code %d");
          v22 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_21;
          }

          goto LABEL_22;
        }
      }

      Count = CFArrayGetCount(ArrayValue);
      if (Count >= 1)
      {
        v28 = Count;
        for (i = 0; i != v28; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(ArrayValue, i);
          if (!ValueAtIndex[5])
          {
            mmcs_update_item_set_put_receipt_if_not_already_done(ValueAtIndex, v61, v60);
          }
        }
      }

LABEL_29:
      if (cf)
      {
        CFRelease(cf);
      }

      cf = 0;
      if (v62)
      {
        CFRelease(v62);
      }

      v62 = 0;
      if (v61)
      {
        CFRelease(v61);
      }

      v61 = 0;
      if (v60)
      {
        CFRelease(v60);
      }

      v60 = 0;
      if (v64)
      {
        mmcs_update_request_process_put_file_success_and_error_cold_1();
      }

      ++v11;
    }

    while (v11 != a3);
  }

  if (a5)
  {
    v31 = 0;
    v32 = *MEMORY[0x277CBECE8];
    while (chunkserver__file_error__parse_and_validate(*(a6 + 8 * v31), &cf, &v62, &v59, &v64, 33, @"The server returned an error for this item"))
    {
      v57 = 0;
      key = 0;
      context = v62;
      if (!mmcs_update_item_create(&key, cf, @"fake", 0, &context))
      {
        goto LABEL_72;
      }

      v33 = XCFDictionaryGetArrayValue(*(*(a1 + 304) + 32), key);
      if (key)
      {
        C3BaseRelease(key);
      }

      key = 0;
      if (v33)
      {
        v34 = CFArrayGetCount(v33);
        if (v34 >= 1)
        {
          v35 = v34;
          for (j = 0; j != v35; ++j)
          {
            v37 = CFArrayGetValueAtIndex(v33, j);
            if (!v37[5])
            {
              mmcs_update_item_set_error_if_not_already_done(v37, v59);
            }
          }
        }
      }

      else
      {
        v38 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v51 = cf;
          v39 = CFStringCreateWithFormat(v32, 0, @"The server replied with FileError signature %@ reference %@ which was not requested");
          v40 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v66 = v39;
            _os_log_impl(&dword_2577D8000, v40, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v39)
          {
            CFRelease(v39);
          }
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }

      cf = 0;
      if (v62)
      {
        CFRelease(v62);
      }

      v62 = 0;
      if (v59)
      {
        CFRelease(v59);
      }

      v59 = 0;
      if (v64)
      {
        mmcs_update_request_process_put_file_success_and_error_cold_2();
      }

      if (++v31 == a5)
      {
        goto LABEL_65;
      }
    }

LABEL_71:
    v49 = v64;
  }

  else
  {
LABEL_65:
    LOBYTE(context) = 1;
    v41 = CFArrayGetCount(*(*(a1 + 304) + 40));
    if (v41 < 1)
    {
      goto LABEL_69;
    }

    v42 = v41;
    for (k = 0; k != v42; ++k)
    {
      v44 = CFArrayGetValueAtIndex(*(*(a1 + 304) + 40), k);
      v45 = XCFDictionaryGetArrayValue(*(*(a1 + 304) + 32), v44);
      v68.length = CFArrayGetCount(v45);
      v68.location = 0;
      CFArrayApplyFunction(v45, v68, _is_done, &context);
    }

    if (context)
    {
LABEL_69:
      LOBYTE(context) = 1;
      v46 = *(*(a1 + 304) + 16);
      v69.length = CFArrayGetCount(v46);
      v69.location = 0;
      CFArrayApplyFunction(v46, v69, _set_error, &context);
      if (context)
      {
        goto LABEL_76;
      }

      v47 = @"All items should have been handled";
      v48 = 1;
    }

    else
    {
      v47 = @"The server failed to respond for all items in putChunkKeys";
      v48 = 6;
    }

LABEL_73:
    v49 = mmcs_cferror_create_with_format(@"com.apple.mmcs", v48, v47, v13, v14, v15, v16, v17, v51);
    v64 = v49;
  }

  if (!v49)
  {
    mmcs_update_request_process_put_file_success_and_error_cold_3();
  }

  mmcs_update_request_set_error(a1, v49);
LABEL_76:
  mmcs_update_request_cleanup(a1);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  v50 = *MEMORY[0x277D85DE8];
}

void mmcs_update_request_set_error(uint64_t a1, CFTypeRef cf)
{
  v3 = *(*(a1 + 304) + 64);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    if (cf)
    {
      CFRetain(cf);
    }

    *(*(a1 + 304) + 64) = cf;
  }
}

BOOL mmcs_update_request_cleanup(uint64_t a1)
{
  v65 = *MEMORY[0x277D85DE8];
  *(*(a1 + 304) + 72) = 0;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  request_activity_marker = mmcs_request_get_request_activity_marker(a1);
  os_activity_scope_enter(request_activity_marker, &state);
  v3 = mmcs_logging_logger_summary();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = mmcs_request_copy_description(a1);
    v5 = *MEMORY[0x277CBECE8];
    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    CFStringAppend(Mutable, @"(");
    v7 = *(*(a1 + 304) + 16);
    if (v7)
    {
      Count = CFArrayGetCount(v7);
      if (Count >= 1)
      {
        v9 = Count;
        for (i = 0; i != v9; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 304) + 16), i);
          updated = mmcs_update_item_copy_short_description(ValueAtIndex);
          if (i)
          {
            CFStringAppend(Mutable, @", ");
          }

          CFStringAppend(Mutable, updated);
          if (updated)
          {
            CFRelease(updated);
          }
        }
      }
    }

    CFStringAppend(Mutable, @""));
    LOBYTE(v62) = v4;
    v13 = CFStringCreateWithFormat(v5, 0, @"%@ %@");
    if (v4)
    {
      CFRelease(v4);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v14 = mmcs_logging_logger_summary();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v62 = *(a1 + 32);
      v15 = CFStringCreateWithFormat(v5, 0, @"Engine %p completed request %@");
      v16 = mmcs_logging_logger_summary();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v15;
        _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v15)
      {
        CFRelease(v15);
      }
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (*(*(a1 + 304) + 48))
    {
      v17 = mmcs_logging_logger_summary();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        LOBYTE(v62) = COERCE_UNSIGNED_INT64(mmcs_http_context_elapsed_seconds(*(*(a1 + 304) + 48)));
        v18 = CFStringCreateWithFormat(v5, 0, @"\tgetChunkKeys:     \t%0.4lf sec.");
        v19 = mmcs_logging_logger_summary();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = v18;
          _os_log_impl(&dword_2577D8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v18)
        {
          CFRelease(v18);
        }
      }

      v20 = mmcs_http_context_copy_error(*(*(a1 + 304) + 48));
      if (v20)
      {
        v21 = v20;
        v22 = mmcs_cferror_copy_description(v20);
        v23 = mmcs_logging_logger_summary();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          LOBYTE(v62) = v22;
          v24 = CFStringCreateWithFormat(v5, 0, @"\terror:     \t%@");
          v25 = mmcs_logging_logger_summary();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            *&buf[4] = v24;
            _os_log_impl(&dword_2577D8000, v25, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v24)
          {
            CFRelease(v24);
          }
        }

        if (v22)
        {
          CFRelease(v22);
        }

        CFRelease(v21);
      }
    }

    if (*(*(a1 + 304) + 56))
    {
      v26 = mmcs_logging_logger_summary();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        LOBYTE(v62) = COERCE_UNSIGNED_INT64(mmcs_http_context_elapsed_seconds(*(*(a1 + 304) + 56)));
        v27 = CFStringCreateWithFormat(v5, 0, @"\tputChunkKeys:     \t%0.4lf sec.");
        v28 = mmcs_logging_logger_summary();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = v27;
          _os_log_impl(&dword_2577D8000, v28, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v27)
        {
          CFRelease(v27);
        }
      }

      v29 = mmcs_http_context_copy_error(*(*(a1 + 304) + 56));
      if (v29)
      {
        v30 = v29;
        v31 = mmcs_cferror_copy_description(v29);
        v32 = mmcs_logging_logger_summary();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          LOBYTE(v62) = v31;
          v33 = CFStringCreateWithFormat(v5, 0, @"\terror:     \t%@");
          v34 = mmcs_logging_logger_summary();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            *&buf[4] = v33;
            _os_log_impl(&dword_2577D8000, v34, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v33)
          {
            CFRelease(v33);
          }
        }

        if (v31)
        {
          CFRelease(v31);
        }

        CFRelease(v30);
      }
    }
  }

  else
  {
    v5 = *MEMORY[0x277CBECE8];
  }

  v35 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v36 = v35;
  v37 = *(*(a1 + 304) + 64);
  if (v37)
  {
    goto LABEL_55;
  }

  if (*(a1 + 144))
  {
    v37 = *(a1 + 152);
    if (!v37)
    {
      mmcs_update_request_cleanup_cold_1();
    }

LABEL_55:
    CFDictionarySetValue(v35, @"kMMCSResultError", v37);
    goto LABEL_56;
  }

  v53 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
  *buf = a1;
  *&buf[8] = v53;
  v54 = *(*(a1 + 304) + 16);
  v66.length = CFArrayGetCount(v54);
  v66.location = 0;
  CFArrayApplyFunction(v54, v66, _add_item_result_0, buf);
  *buf = 0;
  *&buf[8] = 0;
  CFDictionarySetValue(v36, @"kMMCSRequestOptionItemOptions", v53);
  if (v53)
  {
    CFRelease(v53);
  }

  if (*(*(a1 + 304) + 73))
  {
    AuthorizePutRequestBody = mmcs_update_request_create_AuthorizePutRequestBody(a1);
    if (AuthorizePutRequestBody)
    {
      v61 = AuthorizePutRequestBody;
      CFDictionarySetValue(v36, @"kMMCSRequestOptionReturnPreauthorizationRequestObject", AuthorizePutRequestBody);
    }

    else
    {
      v61 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"mmcs_update_request_create_AuthorizePutRequestBody returned NULL", v56, v57, v58, v59, v60, v62);
      CFDictionarySetValue(v36, @"kMMCSResultError", v61);
      if (!v61)
      {
        goto LABEL_56;
      }
    }

    CFRelease(v61);
  }

LABEL_56:
  if (*(a1 + 16) != 4)
  {
    v45 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_74;
    }

    v39 = CFStringCreateWithFormat(v5, 0, @"got a mmcs_update_request whose request class is not mmcs_request_class_update");
    v46 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v39;
LABEL_71:
      _os_log_impl(&dword_2577D8000, v46, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

LABEL_72:
    if (!v39)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  v38 = CFArrayCreateMutable(v5, 0, &httpInfoArrayCallbacks);
  if (!v38)
  {
    v47 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_74;
    }

    v39 = CFStringCreateWithFormat(v5, 0, @"could not create metrics array for update");
    v46 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v39;
      goto LABEL_71;
    }

    goto LABEL_72;
  }

  v39 = v38;
  v40 = *(a1 + 304);
  v41 = *(v40 + 48);
  if (v41)
  {
    metrics = mmcs_http_context_get_metrics(v41);
    if (metrics)
    {
      CFArrayAppendValue(v39, metrics);
    }
  }

  v43 = *(v40 + 56);
  if (v43)
  {
    v44 = mmcs_http_context_get_metrics(v43);
    if (v44)
    {
      CFArrayAppendValue(v39, v44);
    }
  }

  CFDictionarySetValue(v36, @"kMMCSRequestOptionMMCSMetrics", v39);
LABEL_73:
  CFRelease(v39);
LABEL_74:
  v48 = mmcs_request_copy_description(a1);
  v49 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
  {
    v50 = *(a1 + 32);
    *buf = 134218242;
    *&buf[4] = v50;
    *&buf[12] = 2114;
    *&buf[14] = v48;
    _os_log_impl(&dword_2577D8000, v49, OS_LOG_TYPE_INFO, "Engine %p request will notify request %{public}@ done", buf, 0x16u);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  (*(*(a1 + 304) + 8))(*(a1 + 40), v36);
  if (v36)
  {
    CFRelease(v36);
  }

  os_activity_scope_leave(&state);
  result = mmcs_engine_remove_request(*(a1 + 32), a1);
  v52 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL _is_done(_BOOL8 result, _BYTE *a2)
{
  if (a2)
  {
    result = mmcs_update_item_is_done(result);
    *a2 &= result;
  }

  return result;
}

void _add_item_result_0(void *a1, CFMutableArrayRef *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = Mutable;
  v7 = a1[6];
  if (!*(*(*a2 + 38) + 73))
  {
    if (!v7)
    {
      if (!a1[5])
      {
        _add_item_result_cold_3_0();
      }

      goto LABEL_8;
    }

LABEL_5:
    CFDictionarySetValue(Mutable, @"kMMCSPutReceipt", v7);
    v8 = a1[7];
    if (!v8)
    {
      goto LABEL_12;
    }

    v9 = @"kMMCSPutReceiptExpiry";
    goto LABEL_11;
  }

  if (v7)
  {
    goto LABEL_5;
  }

LABEL_8:
  v10 = a1[5];
  if (!v10)
  {
    goto LABEL_12;
  }

  Domain = CFErrorGetDomain(v10);
  if (!CFEqual(@"com.apple.mmcs", Domain))
  {
    _add_item_result_cold_1_0();
  }

  v9 = @"kMMCSResultError";
  v8 = a1[5];
LABEL_11:
  CFDictionarySetValue(v6, v9, v8);
LABEL_12:
  v12 = a1[2];
  if (!v12)
  {
    _add_item_result_cold_2_0();
  }

  CFDictionarySetValue(v6, @"kMMCSSignature", v12);
  wrapping_state_dictionary = mmcs_wrapping_state_create_wrapping_state_dictionary((a1 + 10));
  if (wrapping_state_dictionary)
  {
    v14 = wrapping_state_dictionary;
    CFDictionarySetValue(v6, @"kMMCSWrappingState", wrapping_state_dictionary);
    CFRelease(v14);
  }

  v15 = mmcs_wrapping_state_create_wrapping_state_dictionary((a1 + 8));
  if (v15)
  {
    v16 = v15;
    CFDictionarySetValue(v6, @"kMMCSUnwrappingState", v15);
    CFRelease(v16);
  }

  if (a1[16])
  {
    v17 = CFNumberCreate(v4, kCFNumberSInt64Type, a1 + 16);
    CFDictionarySetValue(v6, @"kMMCSFileSize", v17);
    if (v17)
    {
      CFRelease(v17);
    }
  }

  v19 = a1[15];
  v18 = a1 + 15;
  if (v19)
  {
    v20 = CFNumberCreate(v4, kCFNumberSInt64Type, v18);
    CFDictionarySetValue(v6, @"kMMCSPaddedFileSize", v20);
    if (v20)
    {
      CFRelease(v20);
    }
  }

  CFArrayAppendValue(a2[1], v6);
  if (v6)
  {

    CFRelease(v6);
  }
}

void mmcs_update_request_will_retry_get_chunk_keys_after_error(uint64_t a1, uint64_t a2, __CFError *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = mmcs_request_copy_description(a2);
    v7 = mmcs_cferror_copy_description(a3);
    v8 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ retry get chunk keys after error %@", v6, v7);
      v10 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v13 = v9;
        _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void handle_response_get_chunk_keys(uint64_t a1, CFDataRef *a2, uint64_t a3)
{
  v3 = a3;
  v187 = *MEMORY[0x277D85DE8];
  v162 = 0;
  context = 0;
  v160 = 0;
  cf = 0;
  v6 = *(a3 + 304);
  v7 = *(v6 + 40);
  if (v7)
  {
    CFRelease(v7);
    v6 = *(v3 + 304);
  }

  *(v6 + 40) = 0;
  v8 = mmcs_http_context_status_succeeded(a1);
  if (!a2 || !v8 || !*a2)
  {
    has_http_status = mmcs_http_context_has_http_status(a1);
    v76 = mmcs_logging_logger_default();
    if (has_http_status)
    {
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
      {
        v77 = *MEMORY[0x277CBECE8];
        v78 = mmcs_http_context_http_status(a1);
        v79 = CFStringCreateWithFormat(v77, 0, @"getChunkKeys (%p) HTTP status: %d", a1, v78);
        v80 = mmcs_logging_logger_default();
        if (!os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_92;
        }

        LODWORD(buf) = 138543362;
        *(&buf + 4) = v79;
        v81 = v80;
        v82 = OS_LOG_TYPE_DEBUG;
        goto LABEL_91;
      }
    }

    else if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      v79 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"getChunkKeys (%p) has no http status!", a1);
      v83 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_92;
      }

      LODWORD(buf) = 138543362;
      *(&buf + 4) = v79;
      v81 = v83;
      v82 = OS_LOG_TYPE_DEFAULT;
LABEL_91:
      _os_log_impl(&dword_2577D8000, v81, v82, "%{public}@", &buf, 0xCu);
LABEL_92:
      if (v79)
      {
        CFRelease(v79);
      }
    }

    v84 = mmcs_http_context_copy_error(a1);
    Mutable = 0;
    v54 = 0;
    v47 = 0;
    v46 = 0;
    chunk_keys_response__unpack = 0;
LABEL_95:
    v162 = v84;
    v85 = 1;
    goto LABEL_96;
  }

  mmcs_http_context_validate_request_uuid_with_response(a1);
  Length = CFDataGetLength(*a2);
  BytePtr = CFDataGetBytePtr(*a2);
  chunk_keys_response__unpack = chunkserver__get_chunk_keys_response__unpack(0, Length, BytePtr);
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a2 = 0;
  if (!chunk_keys_response__unpack)
  {
    v46 = 0;
    v47 = 0;
    v54 = 0;
    Mutable = 0;
    v162 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"The getChunkKeys server response could not be deserialized", v11, v12, v13, v14, v15, v149);
    LOBYTE(v85) = 1;
LABEL_97:
    if (*a2)
    {
      CFRelease(*a2);
    }

    *a2 = 0;
    if (v85)
    {
      goto LABEL_100;
    }

    goto LABEL_101;
  }

  if (*(chunk_keys_response__unpack + 14))
  {
    Data = ProtobufCBinaryData_CreateData((chunk_keys_response__unpack + 8));
    v18 = *(v3 + 304);
    v19 = *(v18 + 88);
    if (v19 != Data)
    {
      if (v19)
      {
        CFRelease(v19);
        v18 = *(v3 + 304);
      }

      *(v18 + 88) = 0;
      if (Data)
      {
        CFRetain(Data);
      }

      *(*(v3 + 304) + 88) = Data;
    }

    CFRelease(Data);
  }

  allocator = *MEMORY[0x277CBECE8];
  Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &_update_items_set_callbacks);
  XCFSetAddValuesFromArray(Mutable, *(*(v3 + 304) + 16));
  v153 = a2;
  v154 = v3;
  theSet = Mutable;
  if (!chunk_keys_response__unpack[3])
  {
LABEL_68:
    if (chunk_keys_response__unpack[5])
    {
      v67 = 0;
      while (chunkserver__file_error__parse_and_validate(*(chunk_keys_response__unpack[6] + 8 * v67), &cf, &v160, &context, &v162, 33, @"The server returned an error for this item"))
      {
        key[0] = 0;
        buf = v160;
        if (!mmcs_update_item_create(key, cf, @"fake", &buf, 0))
        {
          v88 = @"mmcs_update_item_create";
          v89 = 37;
LABEL_131:
          v54 = 0;
          v47 = 0;
          v46 = 0;
          v162 = mmcs_cferror_create_with_format(@"com.apple.mmcs", v89, v88, v68, v69, v70, v71, v72, v149);
          goto LABEL_132;
        }

        ArrayValue = XCFDictionaryGetArrayValue(*(*(v3 + 304) + 24), key[0]);
        if (key[0])
        {
          C3BaseRelease(key[0]);
        }

        key[0] = 0;
        if (!ArrayValue)
        {
          v88 = @"The server returned a getChunkKeys response with a FileError containing unknown (signature, reference)";
          v89 = 6;
          goto LABEL_131;
        }

        v188.length = CFArrayGetCount(ArrayValue);
        v188.location = 0;
        CFArrayApplyFunction(ArrayValue, v188, _set_error, context);
        XCFSetRemoveValuesFromArray(theSet, ArrayValue);
        if (cf)
        {
          CFRelease(cf);
        }

        cf = 0;
        if (v160)
        {
          CFRelease(v160);
        }

        v160 = 0;
        if (context)
        {
          CFRelease(context);
        }

        context = 0;
        if (++v67 >= chunk_keys_response__unpack[5])
        {
          goto LABEL_82;
        }
      }

      if (!v162)
      {
        handle_response_get_chunk_keys_cold_3();
      }

      v54 = 0;
      v47 = 0;
      v46 = 0;
LABEL_132:
      v85 = 1;
      Mutable = theSet;
      goto LABEL_96;
    }

LABEL_82:
    Mutable = theSet;
    if (CFSetGetCount(theSet))
    {
      v74 = @"There were (file signature, reference) tuples which were not mentioned in the getChunkKeys server response";
LABEL_135:
      v84 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, v74, v26, v27, v28, v29, v30, v149);
      v54 = 0;
      v47 = 0;
      v46 = 0;
      goto LABEL_95;
    }

    v87 = *(v3 + 304);
    if (*(v87 + 73))
    {
      mmcs_update_request_cleanup(v3);
LABEL_155:
      v54 = 0;
      v47 = 0;
      v46 = 0;
      v85 = 0;
      goto LABEL_96;
    }

    *(*(v3 + 304) + 40) = XCFDictionaryCopyKeys(*(v87 + 32), &_update_items_array_callbacks);
    if (CFArrayGetCount(*(*(v3 + 304) + 40)) < 1)
    {
      v85 = 1;
      v54 = 0;
      v47 = 0;
      v46 = 0;
      v162 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"There were no distinct items from the getChunkKeys response", v91, v92, v93, v94, v95, v149);
      goto LABEL_96;
    }

    v96 = *(v3 + 32);
    v97 = CFURLCreateCopyAppendingPathComponent(allocator, *(v3 + 160), @"putChunkKeys", 0);
    if (v97)
    {
      v98 = v97;
      Count = CFArrayGetCount(*(*(v3 + 304) + 40));
      v100 = chunkserver__put_chunk_keys_request__create(Count);
      if (v100)
      {
        v101 = v100;
        v102 = *(*(v3 + 304) + 40);
        v189.length = CFArrayGetCount(v102);
        v189.location = 0;
        CFArrayApplyFunction(v102, v189, _add_put_item, v101);
        v103 = chunkserver__put_chunk_keys_request__create_data(v101);
        chunkserver__put_chunk_keys_request__free_unpacked(v101, 0);
        if (v103)
        {
          v152 = chunk_keys_response__unpack;
          ValueAtIndex = CFArrayGetValueAtIndex(*(*(v3 + 304) + 40), 0);
          v105 = CFDataGetBytePtr(*(ValueAtIndex + 2));
          v106 = v3;
          v107 = mmcs_file_signature_copy(v105);
          CStringWithCFString = createCStringWithCFString(*(ValueAtIndex + 3));
          v109 = v96[8];
          v110 = v96[10];
          dataclass = mmcs_request_get_dataclass(v106);
          http_protobuf_message = create_http_protobuf_message(v109, v110, dataclass, *(v106 + 168), *(v106 + 176), v98, v103);
          if (!http_protobuf_message)
          {
            v116 = mmcs_logging_logger_default();
            chunk_keys_response__unpack = v152;
            a2 = v153;
            Mutable = theSet;
            if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
            {
              v117 = CFStringCreateWithFormat(allocator, 0, @"unable to create putChunkKeys msg");
              v118 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf) = 138543362;
                *(&buf + 4) = v117;
                _os_log_impl(&dword_2577D8000, v118, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
              }

              if (v117)
              {
                CFRelease(v117);
              }
            }

            error = mmcs_cferror_create_error(@"com.apple.mmcs", 37, @"Failed to create putChunkKeys msg");
            LODWORD(v119) = 1;
LABEL_199:
            CFRelease(v98);
            CFRelease(v103);
            if (v107)
            {
              free(v107);
            }

            if (CStringWithCFString)
            {
              free(CStringWithCFString);
              v3 = v154;
              if ((v119 & 1) == 0)
              {
LABEL_205:
                if (!error)
                {
                  goto LABEL_155;
                }

                goto LABEL_154;
              }
            }

            else
            {
              v3 = v154;
              if (!v119)
              {
                goto LABEL_205;
              }
            }

LABEL_152:
            if (!error)
            {
              handle_response_get_chunk_keys_cold_4();
            }

            mmcs_update_request_set_error(v3, error);
            mmcs_update_request_cleanup(v3);
LABEL_154:
            CFRelease(error);
            goto LABEL_155;
          }

          v113 = http_protobuf_message;
          if (!mmcs_http_msg_add_auth_header(http_protobuf_message, v107, *(ValueAtIndex + 10), CStringWithCFString, 0, 0))
          {
            v120 = mmcs_logging_logger_default();
            a2 = v153;
            Mutable = theSet;
            if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
            {
              v126 = CFStringCreateWithFormat(allocator, 0, @"unable to add putChunkKeys token header");
              v127 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf) = 138543362;
                *(&buf + 4) = v126;
                _os_log_impl(&dword_2577D8000, v127, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
              }

              if (v126)
              {
                CFRelease(v126);
              }
            }

            LODWORD(v119) = 1;
            error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Failed to add putChunkKeys token header", v121, v122, v123, v124, v125, v149);
            goto LABEL_198;
          }

          mmcs_request_insert_headers(v154, v113);
          v184 = 0;
          *&buf = @"putChunkKeys";
          *(&buf + 1) = v113;
          v169 = *(v154 + 56);
          v170 = *(v154 + 96);
          Mutable = theSet;
          if (mmcs_request_is_background(v154))
          {
            v114 = *(v154 + 104);
          }

          else
          {
            v114 = 0;
          }

          v171 = v114;
          v172 = -1;
          v173 = -1;
          v174 = 0;
          v175 = 0;
          v176 = mmcs_update_request_will_retry_put_chunk_keys_after_error;
          v177 = handle_response_put_chunk_keys;
          v178 = 0;
          v179 = 0;
          v180 = 0;
          v181 = v154;
          sparse_block_size = mmcs_engine_get_sparse_block_size();
          v183 = mmcs_engine_owner(v96);
          LOBYTE(v184) = 0;
          v185 = 0;
          request_activity_marker = mmcs_request_get_request_activity_marker(v154);
          *key = 0u;
          v165 = 0u;
          mmcs_read_stream_pool_parameters_make_pool_timeout_max(v96[4], 100, key, 90.0);
          if (!mmcs_http_context_create((*(v154 + 304) + 56), *(v154 + 140), &buf))
          {
            v132 = mmcs_logging_logger_default();
            a2 = v153;
            if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
            {
              v138 = CFStringCreateWithFormat(allocator, 0, @"unable to create http context");
              v139 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
              {
                *v166 = 138543362;
                v167 = v138;
                _os_log_impl(&dword_2577D8000, v139, OS_LOG_TYPE_ERROR, "%{public}@", v166, 0xCu);
              }

              if (v138)
              {
                CFRelease(v138);
              }
            }

            error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"Failed to create http context %s", v133, v134, v135, v136, v137, "mmcs_update_items_send_put_chunk_keys");
            LODWORD(v119) = 1;
            goto LABEL_198;
          }

          mmcs_http_context_make_metrics(*(*(v154 + 304) + 56), @"putChunkKeys", 0, *(v154 + 56), 0);
          current_request_metrics = mmcs_get_req_context_get_current_request_metrics(v154);
          metrics = mmcs_http_context_get_metrics(*(*(v154 + 304) + 56));
          mmcs_metrics_request_add_http_info_for_transfer(current_request_metrics, metrics);
          if (!mmcs_http_context_send(*(*(v154 + 304) + 56), key, v96[7]))
          {
            v140 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
            {
              v146 = CFStringCreateWithFormat(allocator, 0, @"unable to send http msg");
              v147 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
              {
                *v166 = 138543362;
                v167 = v146;
                _os_log_impl(&dword_2577D8000, v147, OS_LOG_TYPE_ERROR, "%{public}@", v166, 0xCu);
              }

              if (v146)
              {
                CFRelease(v146);
              }
            }

            v148 = *(*(v154 + 304) + 56);
            if (v148 && mmcs_http_context_get_error(v148))
            {
              error = mmcs_http_context_get_error(*(*(v154 + 304) + 56));
              CFRetain(error);
              LODWORD(v119) = 1;
            }

            else
            {
              LODWORD(v119) = 1;
              error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Failed to send http msg %s", v141, v142, v143, v144, v145, "mmcs_update_items_send_put_chunk_keys");
            }

            goto LABEL_197;
          }

          if (gMMCS_DebugLevel < 4)
          {
            error = 0;
            LODWORD(v119) = 0;
            a2 = v153;
LABEL_198:
            CFRelease(v98);
            v98 = v113;
            chunk_keys_response__unpack = v152;
            goto LABEL_199;
          }

          v130 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
          {
            v119 = CFStringCreateWithFormat(allocator, 0, @"sent mmcs_get_chunk_keys (%p) for update request: %p", *(*(v154 + 304) + 56), v154);
            v131 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v131, OS_LOG_TYPE_DEBUG))
            {
              *v166 = 138543362;
              v167 = v119;
              _os_log_impl(&dword_2577D8000, v131, OS_LOG_TYPE_DEBUG, "%{public}@", v166, 0xCu);
            }

            if (!v119)
            {
              error = 0;
              goto LABEL_197;
            }

            CFRelease(v119);
          }

          error = 0;
          LODWORD(v119) = 0;
LABEL_197:
          a2 = v153;
          Mutable = theSet;
          goto LABEL_198;
        }
      }

      error = mmcs_cferror_create_error(@"com.apple.mmcs", 37, @"Failed to create putChunkKeys request body");
      CFRelease(v98);
    }

    else
    {
      error = mmcs_cferror_create_error(@"com.apple.mmcs", 37, @"Failed to create putChunkKeys request url");
    }

    a2 = v153;
    goto LABEL_152;
  }

  v21 = 0;
  v22 = MEMORY[0x277CBF128];
  v151 = chunk_keys_response__unpack;
  while (1)
  {
    v23 = *(chunk_keys_response__unpack[4] + 8 * v21);
    v25 = *(v23 + 24);
    v24 = (v23 + 24);
    v158 = *(chunk_keys_response__unpack[4] + 8 * v21);
    if (mmcs_file_signature_is_valid_n(*(v158 + 32), v25))
    {
      v31 = ProtobufCBinaryData_CreateData(v24);
      cf = v31;
    }

    else
    {
      v31 = cf;
    }

    if (!v31)
    {
      v74 = @"The server returned a getChunkKeys response with an invalid signature";
      goto LABEL_135;
    }

    if (*(v158 + 40))
    {
      v32 = ProtobufCBinaryData_CreateData((v158 + 48));
      v160 = v32;
      v31 = cf;
    }

    else
    {
      v32 = v160;
    }

    key[0] = 0;
    buf = v32;
    if (!mmcs_update_item_create(key, v31, @"fake", &buf, 0))
    {
      v54 = 0;
      v47 = 0;
      v46 = 0;
      v162 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"mmcs_update_item_create", v33, v34, v35, v36, v37, v149);
      goto LABEL_139;
    }

    v43 = XCFDictionaryGetArrayValue(*(*(v3 + 304) + 24), key[0]);
    if (key[0])
    {
      C3BaseRelease(key[0]);
    }

    key[0] = 0;
    if (!v43)
    {
      break;
    }

    v44 = CFArrayGetCount(v43);
    if (v44 <= 0)
    {
      handle_response_get_chunk_keys_cold_2();
    }

    v45 = v44;
    v150 = v21;
    v157 = CFArrayGetValueAtIndex(v43, 0);
    v46 = CFArrayCreateMutable(allocator, 0, v22);
    v47 = CFArrayCreateMutable(allocator, 0, v22);
    v48 = CFArrayCreateMutable(allocator, 0, v22);
    v54 = v48;
    v55 = v158;
    if (*(v158 + 64))
    {
      v56 = 0;
      v57 = 0;
      v156 = v48;
      while (1)
      {
        v58 = *(*(v55 + 72) + 8 * v56);
        if (!*(v58 + 40) || !*(v58 + 48))
        {
          v162 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"The server returned a getChunkKeys response with a FileChunkKeys missing a chunk encryption key", v49, v50, v51, v52, v53, v149);
          a2 = v153;
          Mutable = theSet;
          goto LABEL_139;
        }

        if (*(v157 + 8))
        {
          if (!*(v157 + 9))
          {
            handle_response_get_chunk_keys_cold_1();
          }

          v59 = ProtobufCBinaryData_CreateData((v58 + 48));
          v60 = mmcs_chunk_key_copy_wraptured_scheme_and_key(v59, *(v157 + 9), 0, &v162);
          if (v59)
          {
            CFRelease(v59);
          }

          if (!v60)
          {
            a2 = v153;
            v3 = v154;
            Mutable = theSet;
            v54 = v156;
            goto LABEL_139;
          }

          ProtobufCBinaryData_SetData((v58 + 48), v60);
          CFRelease(v60);
          v3 = v154;
        }

        v61 = ProtobufCBinaryData_CreateData((v58 + 24));
        CFArrayAppendValue(v46, v61);
        if (v61)
        {
          CFRelease(v61);
        }

        v62 = ProtobufCBinaryData_CreateData((v58 + 48));
        CFArrayAppendValue(v47, v62);
        if (v62)
        {
          CFRelease(v62);
        }

        v54 = v156;
        if (*(v58 + 64))
        {
          v57 += *(v58 + 72);
          v63 = CFNumberCreate(allocator, kCFNumberSInt64Type, (v58 + 72));
          CFArrayAppendValue(v156, v63);
          Mutable = theSet;
          if (v63)
          {
            CFRelease(v63);
          }
        }

        else
        {
          Mutable = theSet;
          if (*(*(v3 + 304) + 73))
          {
            v90 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"The server returned a getChunkKeys response with a FileChunkKeys missing a chunk length when one is required", v49, v50, v51, v52, v53, v149);
            goto LABEL_138;
          }
        }

        ++v56;
        v55 = v158;
        if (v56 >= *(v158 + 64))
        {
          goto LABEL_52;
        }
      }
    }

    v57 = 0;
LABEL_52:
    for (i = 0; i != v45; ++i)
    {
      v65 = CFArrayGetValueAtIndex(v43, i);
      mmcs_update_item_set_chunk_signatures_keys_and_lengths(v65, v46, v47, v54);
      mmcs_update_item_set_padded_file_size(v65, v57);
      v66 = v65[2];
      if (v66 && (*CFDataGetBytePtr(v66) & 0x7F) != 4)
      {
        mmcs_update_item_set_file_size(v65, v57);
      }

      XCFDictionaryAppendValue(*(*(v3 + 304) + 32), &_update_items_array_callbacks, v65, v65);
      CFSetRemoveValue(Mutable, v65);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    chunk_keys_response__unpack = v151;
    a2 = v153;
    if (v160)
    {
      CFRelease(v160);
    }

    v160 = 0;
    if (v46)
    {
      CFRelease(v46);
    }

    if (v47)
    {
      CFRelease(v47);
    }

    if (v54)
    {
      CFRelease(v54);
    }

    v21 = v150 + 1;
    v22 = MEMORY[0x277CBF128];
    if ((v150 + 1) >= v151[3])
    {
      goto LABEL_68;
    }
  }

  v90 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"The server returned a getChunkKeys response with a FileChunkKeys containing unknown (signature, reference)", v38, v39, v40, v41, v42, v149);
  v54 = 0;
  v47 = 0;
  v46 = 0;
LABEL_138:
  v162 = v90;
  a2 = v153;
LABEL_139:
  v85 = 1;
  chunk_keys_response__unpack = v151;
LABEL_96:
  if (a2)
  {
    goto LABEL_97;
  }

  if (v85)
  {
LABEL_100:
    mmcs_update_request_set_error(v3, v162);
    mmcs_update_request_cleanup(v3);
  }

LABEL_101:
  if (chunk_keys_response__unpack)
  {
    chunkserver__get_chunk_keys_response__free_unpacked(chunk_keys_response__unpack, 0);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  if (v160)
  {
    CFRelease(v160);
  }

  v160 = 0;
  if (context)
  {
    CFRelease(context);
  }

  context = 0;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v162)
  {
    CFRelease(v162);
  }

  v86 = *MEMORY[0x277D85DE8];
}

void _add_items(uint64_t a1, uint64_t a2)
{
  v4 = chunkserver__get_file_chunk_keys__create();
  if (v4)
  {
    v5 = v4;
    ProtobufCBinaryData_SetData(v4 + 3, *(a1 + 16));
    ProtobufCString_SetString(v5 + 8, *(a1 + 24));
    v6 = *(a1 + 64);
    if (v6)
    {
      *(v5 + 10) = 1;
      ProtobufCBinaryData_SetData(v5 + 6, v6);
    }

    v8 = *(a2 + 24);
    v7 = *(a2 + 32);
    *(a2 + 24) = v8 + 1;
    *(v7 + 8 * v8) = v5;
  }
}

void mmcs_update_request_will_retry_put_chunk_keys_after_error(uint64_t a1, uint64_t a2, __CFError *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = mmcs_request_copy_description(a2);
    v7 = mmcs_cferror_copy_description(a3);
    v8 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ retry put chunk keys after error %@", v6, v7);
      v10 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v13 = v9;
        _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void handle_response_put_chunk_keys(uint64_t a1, CFDataRef *a2, CFTypeRef cf)
{
  v36 = *MEMORY[0x277D85DE8];
  C3BaseRetain(cf);
  v6 = mmcs_http_context_status_succeeded(a1);
  if (!a2 || !v6 || !*a2)
  {
    has_http_status = mmcs_http_context_has_http_status(a1);
    v18 = mmcs_logging_logger_default();
    if (has_http_status)
    {
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }

      v19 = *MEMORY[0x277CBECE8];
      v20 = mmcs_http_context_http_status(a1);
      v21 = CFStringCreateWithFormat(v19, 0, @"putChunkKeys (%p) HTTP status: %d", a1, v20);
      v22 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_14;
      }

      *buf = 138543362;
      v35 = v21;
      v23 = v22;
      v24 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v21 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"putChunkKeys (%p) has no HTTP status!", a1);
      v25 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:
        if (v21)
        {
          CFRelease(v21);
        }

LABEL_16:
        v26 = mmcs_http_context_copy_error(a1);
        v27 = 1;
        if (!a2)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      }

      *buf = 138543362;
      v35 = v21;
      v23 = v25;
      v24 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&dword_2577D8000, v23, v24, "%{public}@", buf, 0xCu);
    goto LABEL_14;
  }

  mmcs_http_context_validate_request_uuid_with_response(a1);
  v7 = *a2;
  Length = CFDataGetLength(*a2);
  BytePtr = CFDataGetBytePtr(v7);
  v10 = chunkserver__put_chunk_keys_response__unpack(0, Length, BytePtr);
  if (v10)
  {
    v16 = v10;
    mmcs_update_request_process_put_file_success_and_error(cf, 1, v10[3], v10[4], v10[5], v10[6]);
    chunkserver__put_chunk_keys_response__free_unpacked(v16, 0);
  }

  else
  {
    v28 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"PutChunkKeysResponse could not be deserialized", v11, v12, v13, v14, v15, v33);
    if (!v28)
    {
      handle_response_put_chunk_keys_cold_1();
    }

    v29 = v28;
    mmcs_update_request_set_error(cf, v28);
    mmcs_update_request_cleanup(cf);
    CFRelease(v29);
  }

  if (*a2)
  {
    CFRelease(*a2);
  }

  *a2 = 0;
  v30 = *(*(cf + 38) + 56);
  if (v30)
  {
    mmcs_http_context_cleanup_response(v30);
  }

  v27 = 0;
  v26 = 0;
LABEL_25:
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a2 = 0;
LABEL_28:
  v31 = *(*(cf + 38) + 56);
  if (v31)
  {
    mmcs_http_context_cleanup_response(v31);
  }

  if (v27)
  {
    if (!v26)
    {
      handle_response_put_chunk_keys_cold_2();
    }

    mmcs_update_request_set_error(cf, v26);
    mmcs_update_request_cleanup(cf);
    goto LABEL_34;
  }

  if (v26)
  {
LABEL_34:
    CFRelease(v26);
  }

  C3BaseRelease(cf);
  v32 = *MEMORY[0x277D85DE8];
}

void _add_put_item(uint64_t a1, uint64_t a2)
{
  if (CFArrayGetCount(*(a1 + 96)) < 1 || (Count = CFArrayGetCount(*(a1 + 96)), Count != CFArrayGetCount(*(a1 + 104))))
  {
    _add_put_item_cold_1();
  }

  v5 = CFArrayGetCount(*(a1 + 96));
  v6 = chunkserver__put_file_chunk_keys__create(v5);
  if (v6)
  {
    v7 = v6;
    ProtobufCBinaryData_SetData(v6 + 3, *(a1 + 16));
    ProtobufCString_SetString(v7 + 10, *(a1 + 24));
    v8 = *(a1 + 80);
    if (v8)
    {
      *(v7 + 14) = 1;
      ProtobufCBinaryData_SetData(v7 + 8, v8);
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      ProtobufCString_SetString(v7 + 11, v9);
    }

    v10 = CFArrayGetCount(*(a1 + 96));
    if (v10 >= 1)
    {
      v11 = v10;
      for (i = 0; i != v11; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 96), i);
        v14 = CFArrayGetValueAtIndex(*(a1 + 104), i);
        v15 = chunkserver__chunk_key__create();
        ProtobufCBinaryData_SetData(v15 + 3, ValueAtIndex);
        *(v15 + 10) = 1;
        ProtobufCBinaryData_SetData(v15 + 6, v14);
        if (*(a1 + 80))
        {
          if (!*(a1 + 88))
          {
            _add_put_item_cold_3();
          }

          Data = ProtobufCBinaryData_CreateData((v15 + 6));
          cf = 0;
          v17 = mmcs_chunk_key_copy_wraptured_scheme_and_key(Data, *(a1 + 88), 1, &cf);
          if (!v17)
          {
            _add_put_item_cold_2();
          }

          v18 = v17;
          ProtobufCBinaryData_SetData(v15 + 6, v17);
          CFRelease(v18);
          if (cf)
          {
            CFRelease(cf);
          }

          if (Data)
          {
            CFRelease(Data);
          }
        }

        v20 = v7[5];
        v19 = v7[6];
        v7[5] = v20 + 1;
        *(v19 + 8 * v20) = v15;
      }
    }

    v22 = *(a2 + 24);
    v21 = *(a2 + 32);
    *(a2 + 24) = v22 + 1;
    *(v21 + 8 * v22) = v7;
  }
}

uint64_t mmcs_get_derivative_container_create(void *a1, uint64_t a2, char a3, uint64_t *a4)
{
  v13 = 0;
  result = mmcs_container_create(&v13, 3, 272);
  if (result)
  {
    request_activity_marker = mmcs_request_get_request_activity_marker(*a4);
    v10 = _os_activity_create(&dword_2577D8000, "mmcs-get-derivative-container", request_activity_marker, OS_ACTIVITY_FLAG_DEFAULT);
    v11 = v13;
    *(v13 + 80) = v10;
    v12 = *(v11 + 88);
    *v12 = a4;
    *(v12 + 17) = a3;
    C3BaseRetain(*a4);
    *(v12 + 16) = 0;
    *(v12 + 8) = a2;
    mmcs_get_derivative_container_reset_stream(v11);
    *a1 = v13;
    return 1;
  }

  return result;
}

void mmcs_get_derivative_container_finalize(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = v1[32];
  if (v2)
  {
    C3BaseRelease(v2);
  }

  v1[32] = 0;
  v3 = v1[24];
  if (v3)
  {
    C3BaseRelease(v3);
  }

  v1[24] = 0;
  v4 = v1[33];
  if (v4)
  {
    C3BaseRelease(v4);
  }

  v1[33] = 0;
  *v1 = 0;
  v1[1] = 0;
}

__CFString *mmcs_get_derivative_copy_containerID(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0 && (v2 = *(v1 + 24)) != 0 && (v3 = *(v2 + 16)) != 0 && (v4 = CFHTTPMessageCopyRequestURL(v3)) != 0)
  {
    v5 = v4;
    value_for_tag = mmcs_url_copy_query_value_for_tag(v4, @"id");
    if (value_for_tag)
    {
      v7 = value_for_tag;
      v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"getDerivative.%@", value_for_tag);
      CFRelease(v5);
      v5 = v7;
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    return v8;
  }

  else
  {
    return @"getDerivative";
  }
}

uint64_t mmcs_get_derivative_container_schedule(uint64_t a1, uint64_t a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = _os_activity_create(&dword_2577D8000, "mmcs-get-derivative-schedule", *(a1 + 80), OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);
  v5 = *(a1 + 88);
  if (mmcs_container_check_expired(a1, a2, "get-derivative", "get-derivative-container-name-here"))
  {
    goto LABEL_2;
  }

  v9 = *v5;
  if (!*v5)
  {
    v17 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_2;
    }

    v18 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"null get state backref in container %p", a1);
    v19 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 138543362;
    *&buf[4] = v18;
    goto LABEL_25;
  }

  v10 = *v9;
  if (!*v9)
  {
    v20 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_2;
    }

    v18 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"null get request backref in container %p", a1);
    v19 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 138543362;
    *&buf[4] = v18;
LABEL_25:
    _os_log_impl(&dword_2577D8000, v19, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    goto LABEL_26;
  }

  v11 = mmcs_chunk_instance_offset(*v9);
  if (!v11)
  {
    v21 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_2;
    }

    v18 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"null engine backref in container %p", a1);
    v19 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v18;
      goto LABEL_25;
    }

LABEL_26:
    if (!v18)
    {
      goto LABEL_2;
    }

LABEL_50:
    CFRelease(v18);
    goto LABEL_2;
  }

  v12 = v11;
  if (*(a2 + 56) == 0.0)
  {
    v13 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"enqueueTime should be defined for get request");
      v15 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v14;
        _os_log_impl(&dword_2577D8000, v15, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }
  }

  v61 = 0;
  v45 = @"getDerivative";
  v46 = *(*(a2 + 24) + 16);
  network_timeout_period = mmcs_request_get_network_timeout_period(v10);
  if (mmcs_request_is_background(v10))
  {
    v16 = *(*(a2 + 24) + 40);
  }

  else
  {
    v16 = 0;
  }

  v48 = v16;
  v49 = -1;
  v50 = -1;
  v51 = 0;
  v52 = 0;
  v53 = handle_derivative_container_request_will_retry_after_error;
  v54 = handle_response_downloadGetDerivativeContainer;
  v55 = handle_callback_downloadDerivativeDataBuffer;
  v56 = handle_http_endOfDataCallback;
  v57 = mmcs_container_xmitcallback;
  v58 = a2;
  sparse_block_size = mmcs_engine_get_sparse_block_size();
  v60 = mmcs_engine_owner(v12);
  v22 = 1;
  LOBYTE(v61) = 1;
  v62 = *(a2 + 56);
  v63 = v4;
  *cf = 0u;
  v44 = 0u;
  mmcs_read_stream_pool_parameters_make_pool(*(v12 + 40), cf);
  http_class = mmcs_request_get_http_class(v10);
  v24 = mmcs_http_context_create((a2 + 16), http_class, &v45);
  if (v24)
  {
    mmcs_http_context_extract_vendor_name_from_message_and_create_pool_parameters(*(a2 + 16), *(v12 + 40), buf);
    *cf = *buf;
    v44 = v66;
    v25 = *(*(a2 + 24) + 24);
    if (mmcs_get_req_context_get_current_request_metrics(v10))
    {
      v26 = *(a2 + 64);
      v27 = *(v26 + 88);
      derivative_copy_containerID = mmcs_get_derivative_copy_containerID(v26);
      mmcs_transaction_make_req_context_metrics(a2, **v27, v25, @"getDerivativeContainer", derivative_copy_containerID);
      CFRelease(derivative_copy_containerID);
    }

    mmcs_http_context_update_voucher(*(a2 + 16));
    mmcs_http_context_uuid_hash_code(*(a2 + 16));
    kdebug_trace();
    v22 = mmcs_http_context_send(*(a2 + 16), cf, *(v12 + 56)) == 0;
  }

  if (cf[1])
  {
    CFRelease(cf[1]);
  }

  if (v24)
  {
    if (!v22)
    {
      v6 = 1;
      if (!v4)
      {
        goto LABEL_4;
      }

      goto LABEL_3;
    }

    v29 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v35 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"unable to send http message");
      v36 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v35;
        _os_log_impl(&dword_2577D8000, v36, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v35)
      {
        CFRelease(v35);
      }
    }

    v37 = @"Unable to send http request";
    v38 = 1;
  }

  else
  {
    v39 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"unable to create http context");
      v41 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v40;
        _os_log_impl(&dword_2577D8000, v41, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v40)
      {
        CFRelease(v40);
      }
    }

    v37 = @"Unable to create http context";
    v38 = 37;
  }

  v18 = mmcs_cferror_create_with_format(@"com.apple.mmcs", v38, v37, v30, v31, v32, v33, v34, v42);
  mmcs_get_derivative_container_set_error_and_fail_container(a1, v18);
  if (v18)
  {
    goto LABEL_50;
  }

LABEL_2:
  v6 = 0;
  if (v4)
  {
LABEL_3:
    os_release(v4);
  }

LABEL_4:
  os_activity_scope_leave(&state);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void handle_derivative_container_request_will_retry_after_error(uint64_t a1, uint64_t a2, const void *a3)
{
  user_data = mmcs_http_context_get_user_data(a1);
  if (a3)
  {
    v5 = user_data;
    if (user_data)
    {
      v6 = *(user_data + 64);
      if (v6)
      {
        mmcs_container_set_error(*(user_data + 64), a3);

        _mmcs_get_derivative_container_reset_for_retry(v6, v5);
      }
    }
  }
}

void handle_response_downloadGetDerivativeContainer(uint64_t a1, CFTypeRef *a2, uint64_t a3)
{
  v88 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (*a2)
    {
      CFRelease(*a2);
    }

    *a2 = 0;
  }

  if (!a1)
  {
    handle_response_downloadGetDerivativeContainer_cold_3();
  }

  if (!a3)
  {
    handle_response_downloadGetDerivativeContainer_cold_2();
  }

  if (*(a3 + 16) != a1)
  {
    handle_response_downloadGetDerivativeContainer_cold_1();
  }

  v6 = *(a3 + 64);
  v7 = **(v6 + 88);
  *(a3 + 48) = 4;
  if (v7)
  {
    mmcs_http_context_uuid_hash_code(a1);
    kdebug_trace();
    if (!mmcs_http_context_is_connection_reused(a1))
    {
      kdebug_trace();
    }

    v8 = *v7;
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    request_activity_marker = mmcs_request_get_request_activity_marker(v8);
    os_activity_scope_enter(request_activity_marker, &state);
    C3BaseRetain(v8);
    v67 = 1;
    ++*(*(v8 + 38) + 24);
    v10 = *(*(v8 + 4) + 48);
    if (mmcs_transaction_is_proxy(a3) || mmcs_http_context_is_background(a1))
    {
      error = 0;
    }

    else
    {
      error = mmcs_http_context_get_error(a1);
    }

    is_connection_reused = mmcs_http_context_is_connection_reused(a1);
    Current = CFAbsoluteTimeGetCurrent();
    mmcs_request_queue_request_did_complete(v10, a3, error, is_connection_reused, &v67, Current);
    if (*(*(v8 + 38) + 40))
    {
      goto LABEL_15;
    }

    if (*(v8 + 144))
    {
      has_outstanding_asynchronous_work = mmcs_get_req_has_outstanding_asynchronous_work(v8);
      v19 = mmcs_logging_logger_default();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
      if (has_outstanding_asynchronous_work)
      {
        if (v20)
        {
          v21 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Request is cancelled but has_outstanding_asynchronous_work  (Get request %p)", v8);
          v22 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v21;
            _os_log_impl(&dword_2577D8000, v22, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
          }

          if (v21)
          {
            CFRelease(v21);
          }
        }

        goto LABEL_15;
      }

      if (v20)
      {
        v39 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Cancelled and downloads complete. All done! (Get request %p)", v8);
        v40 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v39;
          _os_log_impl(&dword_2577D8000, v40, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
        }

        if (v39)
        {
          CFRelease(v39);
        }
      }

      v41 = *(v8 + 19);
      v42 = v8;
      goto LABEL_47;
    }

    v23 = mmcs_http_context_get_error(a1);
    if (!v23)
    {
      if (*(*(v6 + 88) + 168))
      {
        v43 = 0;
        goto LABEL_84;
      }

      v45 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 11, @"There was an unspecified error processing data from container", v24, v25, v26, v27, v28, v66);
      mmcs_container_set_error(v6, v45);
      if (v45)
      {
        CFRelease(v45);
      }

      goto LABEL_72;
    }

    v29 = v23;
    host_error = mmcs_cferror_copy_transformed_cannot_find_host_error(a1);
    v31 = host_error;
    if (host_error)
    {
      v32 = host_error;
    }

    else
    {
      v32 = v29;
    }

    mmcs_container_set_error(v6, v32);
    Domain = CFErrorGetDomain(v32);
    Code = CFErrorGetCode(v32);
    if (!CFEqual(@"com.apple.mmcs", Domain))
    {
      if (CFEqual(*MEMORY[0x277CBEE40], Domain))
      {
        v44 = Code == -9810;
      }

      else
      {
        if (!CFEqual(*MEMORY[0x277CBACE8], Domain))
        {
          v35 = CFEqual(*MEMORY[0x277CBEE48], Domain) != 0;
          goto LABEL_69;
        }

        v44 = Code == -1005;
      }

      v35 = v44;
LABEL_69:
      if (v31)
      {
        CFRelease(v31);
      }

      if (!v35)
      {
LABEL_83:
        v43 = 1;
LABEL_84:
        metrics = mmcs_http_context_get_metrics(a1);
        mmcs_metrics_http_info_set_final_try_in_request(metrics, 1);
        *(v6 + 68) = 4;
        v57 = *(a3 + 16);
        if (v57)
        {
          mmcs_http_context_invalidate(v57);
          v58 = *(a3 + 16);
          if (v58)
          {
            C3BaseRelease(v58);
          }
        }

        *(a3 + 16) = 0;
        if (v43)
        {
          mmcs_get_state_fail_container(v7, v6);
        }

        goto LABEL_95;
      }

LABEL_72:
      v49 = *(a3 + 32);
      if (v49 >= 1)
      {
        *(a3 + 32) = --v49;
      }

      if (v49)
      {
        v50 = mmcs_http_context_get_metrics(a1);
        mmcs_metrics_http_info_set_final_try_in_request(v50, 0);
        if (mmcs_transaction_is_proxy(a3))
        {
          v51 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            v52 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"caching server failed; retrying with vendor");
            v53 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v52;
              _os_log_impl(&dword_2577D8000, v53, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
            }

            if (v52)
            {
              CFRelease(v52);
            }
          }
        }

        v54 = **(v6 + 88);
        if (v54)
        {
          v55 = *v54;
        }

        else
        {
          v55 = 0;
        }

        v59 = *(v6 + 16);
        v60 = *(a3 + 16);
        if (v60)
        {
          mmcs_http_context_invalidate(v60);
        }

        _mmcs_get_derivative_container_reset_for_retry(v6, a3);
        v61 = *(a3 + 16);
        if (v61)
        {
          C3BaseRelease(v61);
        }

        *(a3 + 16) = 0;
        *(v6 + 68) = 3;
        *(v59 + 48) = 2;
        *(v59 + 56) = CFAbsoluteTimeGetCurrent();
        v62 = mmcs_http_request_options_network_behavior_type(*(*(v59 + 24) + 24));
        v63 = mmcs_request_type_for_behavior_and_activity(v62, 1);
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        mmcs_container_requirements(v6);
        *&buf = 0;
        *(&buf + 1) = v59;
        v76 = v63;
        priority = mmcs_request_get_priority(v55);
        v80 = v71;
        v81 = v72;
        v82 = v73;
        v83 = v74;
        v78 = v69;
        v79 = v70;
        v84 = mmcs_container_schedule_request_callback;
        v85 = mmcs_container_cancel_request_callback;
        v86 = C3BaseRetain;
        v87 = C3BaseRelease;
        v64 = mmcs_chunk_instance_offset(v55);
        mmcs_request_queue_enqueue_request(*(v64 + 48), &buf, *(v59 + 56));
LABEL_95:
        --*(*(v8 + 38) + 24);
        if (mmcs_get_req_has_outstanding_asynchronous_work(v8) || *(*(v8 + 38) + 24))
        {
          goto LABEL_15;
        }

        v65 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v8;
          _os_log_impl(&dword_2577D8000, v65, OS_LOG_TYPE_INFO, "Derivative downloads complete. All done! (Get request %p)", &buf, 0xCu);
        }

        v42 = v8;
        v41 = 0;
LABEL_47:
        mmcs_get_req_context_cleanup(v42, v41);
LABEL_15:
        C3BaseRelease(v8);
        os_activity_scope_leave(&state);
        goto LABEL_21;
      }

      goto LABEL_83;
    }

    v35 = 1;
    if (Code > 15)
    {
      if (Code == 16)
      {
        v46 = CFErrorCopyUserInfo(v32);
        if (!v46)
        {
          goto LABEL_69;
        }

        v37 = v46;
        Value = CFDictionaryGetValue(v46, @"kMMCSErrorSupplementalDictionaryKey");
        if (Value)
        {
          v48 = CFDictionaryGetValue(Value, @"Retry-After");
          if (v48)
          {
            v35 = CFStringGetIntValue(v48) < 6;
          }
        }

        goto LABEL_68;
      }

      if (Code == 38)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (Code == 3)
      {
        goto LABEL_69;
      }

      if (Code == 6)
      {
        v36 = CFErrorCopyUserInfo(v32);
        if (v36)
        {
          v37 = v36;
          v38 = CFDictionaryGetValue(v36, @"kMMCSErrorHTTPStatusKey");
          if (v38)
          {
            *&buf = -1;
            CFNumberGetValue(v38, kCFNumberCFIndexType, &buf);
            v35 = buf == 500;
          }

          else
          {
            v35 = 0;
          }

LABEL_68:
          CFRelease(v37);
          goto LABEL_69;
        }
      }
    }

    v35 = 0;
    goto LABEL_69;
  }

  v14 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"null get state backref in get container %p context %p", v6, a1);
    v16 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }

LABEL_21:
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t handle_callback_downloadDerivativeDataBuffer(uint64_t a1, const UInt8 *a2, CFIndex a3, CFErrorRef *a4)
{
  if (a4)
  {
    *a4 = 0;
    if (!mmcs_http_context_has_http_status(a1))
    {
      v8 = *(mmcs_http_context_get_user_data(a1) + 64);
      if (v8)
      {
        derivative_copy_containerID = mmcs_get_derivative_copy_containerID(v8);
        if (a1)
        {
          request_message = mmcs_http_context_get_request_message(a1);
          response_message = mmcs_http_context_get_response_message(a1);
          goto LABEL_20;
        }
      }

      else
      {
        derivative_copy_containerID = 0;
      }

      request_message = 0;
      response_message = 0;
LABEL_20:
      *a4 = mmcs_cferror_create_with_request_response_and_format(@"com.apple.mmcs", 1, request_message, response_message, 0, @"Context %p while downloading container %@ does not have a status", v9, v10, a1);
      if (derivative_copy_containerID)
      {
        v26 = derivative_copy_containerID;
        goto LABEL_22;
      }

      return 0;
    }
  }

  else
  {
    result = mmcs_http_context_has_http_status(a1);
    if (!result)
    {
      return result;
    }
  }

  if ((mmcs_http_context_http_status(a1) - 300) > 0xFFFFFFFFFFFFFF9BLL)
  {
    user_data = mmcs_http_context_get_user_data(a1);
    v16 = *(user_data + 64);
    v17 = *(v16 + 88);
    v18 = *v17;
    if (!*v17)
    {
      handle_callback_downloadDerivativeDataBuffer_cold_2();
    }

    v19 = user_data;
    if (!*v18 || mmcs_request_is_cancelled(*v18))
    {
      handle_callback_downloadDerivativeDataBuffer_cold_1();
    }

    result = mmcs_get_state_process_container_data(*v17, v19);
    if (a4 && !result)
    {
      if (!*a4)
      {
        v20 = mmcs_get_derivative_copy_containerID(v16);
        *a4 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 11, @"There was an unspecified error processing data from container %@", v21, v22, v23, v24, v25, v20);
        v26 = v20;
LABEL_22:
        CFRelease(v26);
      }

      return 0;
    }
  }

  else
  {
    if (a3 >= 1)
    {
      mmcs_http_write_response_body(a1, a2, a3);
    }

    return 1;
  }

  return result;
}

uint64_t handle_http_endOfDataCallback(uint64_t a1, CFErrorRef *a2)
{
  user_data = mmcs_http_context_get_user_data(a1);
  v4 = *(user_data + 64);
  state_process_container_data = mmcs_get_state_process_container_data(**(v4 + 88), user_data);
  v6 = state_process_container_data;
  if (a2 && !state_process_container_data && !*a2)
  {
    derivative_copy_containerID = mmcs_get_derivative_copy_containerID(v4);
    *a2 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 11, @"There was an unspecified error processing data from container %@", v8, v9, v10, v11, v12, derivative_copy_containerID);
    CFRelease(derivative_copy_containerID);
  }

  return v6;
}

void mmcs_get_derivative_container_set_error_and_fail_container(uint64_t a1, const void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mmcs_container_set_error(a1, a2);
  }

  else
  {
    v3 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"There should always be an error set here for container %p", a1);
      v5 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v8 = v4;
        _os_log_impl(&dword_2577D8000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }
  }

  mmcs_get_state_fail_deriviative_container(**(a1 + 88), a1);
  v6 = *MEMORY[0x277D85DE8];
}

void mmcs_get_derivative_container_failed_to_schedule_transaction(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  *(a1 + 68) = 4;
  v1 = ***(a1 + 88);
  if (!mmcs_get_req_has_outstanding_asynchronous_work(v1))
  {
    v2 = *(v1 + 304);
    if (!*(v2 + 24) && !*(v2 + 32))
    {
      v3 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v5 = 134217984;
        v6 = v1;
        _os_log_impl(&dword_2577D8000, v3, OS_LOG_TYPE_INFO, "Downloads complete. All done! (Get request %p)", &v5, 0xCu);
      }

      mmcs_get_req_context_cleanup(v1, 0);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t mmcs_get_derivative_container_get_request(uint64_t a1)
{
  v1 = **(a1 + 88);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

void mmcs_get_derivative_container_cancel_transaction(void *a1, unsigned int *a2, __CFError *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2[12] == 2)
  {
    v6 = mmcs_container_request_queue(a1);
    mmcs_transaction_cancel_enqueued(a2, v6, a3);
    if (a1[5])
    {
      v7 = a1[5];
    }

    else
    {
      v7 = a3;
    }

    mmcs_get_derivative_container_set_error_and_fail_container(a1, v7);
    v8 = mmcs_container_mmcs_request(a1);
    if (!mmcs_get_req_has_outstanding_asynchronous_work(v8))
    {
      v9 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 134217984;
        v13 = v8;
        _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_INFO, "Downloads complete. All done! (Get request %p)", &v12, 0xCu);
      }

      mmcs_get_req_context_cleanup(v8, 0);
    }

    v10 = *MEMORY[0x277D85DE8];
  }

  else
  {
    mmcs_transaction_cancel_not_enqueued(a2, a3);
    v11 = *MEMORY[0x277D85DE8];

    mmcs_container_set_error(a1, a3);
  }
}

uint64_t mmcs_get_derivative_container_process_data(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, CFErrorRef *a6, uint64_t a7, uint64_t a8)
{
  v9 = a5;
  v43 = *MEMORY[0x277D85DE8];
  v13 = a1[11];
  if (*(a1[2] + 32) == 6 && *(v13 + 24) && *(*(v13 + 8) + 248) > 0.5 && mmcs_request_is_container_resumable_limp_mode(**v13))
  {
    v14 = @"Fake network error";
    v15 = 38;
LABEL_28:
    v20 = mmcs_cferror_create_with_format(@"com.apple.mmcs", v15, v14, a4, a5, a6, a7, a8, v38);
    result = 0;
    *a6 = v20;
    goto LABEL_47;
  }

  if (!*(v13 + 17))
  {
    if (v9)
    {
      v18 = *(v13 + 24);
      if (!(v18 | a4))
      {
        v14 = @"Short container";
        goto LABEL_27;
      }

      if (a4 > 0 || v18)
      {
        *(v13 + 168) = 1;
      }

      v19 = md;
    }

    else
    {
      v19 = 0;
    }

    *md = 0;
    _process_unencrypted_derivative_data_for_signature_generation(a1, a3, a4, v19);
    mmcs_get_state_process_derivative_data(*v13, a1, *(v13 + 24), a3, a4, v9, *md);
    if (*md)
    {
      C3BaseRelease(*md);
    }

    *(v13 + 24) += a4;
LABEL_46:
    result = 1;
    goto LABEL_47;
  }

  *v39 = 0;
  *len = 0;
  mmcs_epilogue_buffer_send(v13 + 144, a3, a4, len, v39);
  if (!*len || (CC_MD5_Update((a1[11] + 32), (v13 + 124), len[0]), result = _process_derivative_stream(a1, (v13 + 124), *len, 0, a6), result))
  {
    mmcs_epilogue_buffer_append(v13 + 144, a3, a4);
    if (!v9 && !*v39)
    {
      goto LABEL_46;
    }

    v17 = a1[11];
    if (*v39)
    {
      CC_MD5_Update((v17 + 32), a3, v39[0]);
    }

    if (!v9)
    {
      goto LABEL_45;
    }

    if (mmcs_epilogue_buffer_length(v17 + 144) <= 0xF)
    {
      v14 = @"MD5 from transcoder is too short";
LABEL_27:
      v15 = 11;
      goto LABEL_28;
    }

    *md = 0;
    v42 = 0;
    CC_MD5_Final(md, (v17 + 32));
    v21 = *MEMORY[0x277CBECE8];
    v22 = CFDataCreate(*MEMORY[0x277CBECE8], md, 16);
    v23 = CFDataCreate(v21, (v17 + 124), 16);
    v29 = v23;
    if (v22 && v23)
    {
      if (CFEqual(v22, v23))
      {
        *(v17 + 168) = 1;
LABEL_35:
        v35 = 0;
LABEL_40:
        C3BaseRelease(v22);
LABEL_41:
        if (v29)
        {
          CFRelease(v29);
        }

        if (v35)
        {
          result = 0;
          goto LABEL_47;
        }

LABEL_45:
        result = _process_derivative_stream(a1, a3, *v39, v9, a6);
        if (!result)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      v36 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 11, @"MD5 mismatch: locally computed MD5 %@ doesn't match transcoder MD5 %@", v30, v31, v32, v33, v34, v22);
    }

    else
    {
      if (!v22)
      {
        *a6 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"local MD5 creation failed", v24, v25, v26, v27, v28, v38);
        v35 = 1;
        goto LABEL_41;
      }

      if (v23)
      {
        goto LABEL_35;
      }

      v36 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"transcoder MD5 creation failed", v24, v25, v26, v27, v28, v38);
    }

    *a6 = v36;
    v35 = 1;
    goto LABEL_40;
  }

LABEL_47:
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _process_derivative_stream(void *a1, char *a2, unint64_t a3, int a4, void *a5)
{
  v10 = a1[11];
  v12 = 0;
  v13 = 0;
  mmcs_epilogue_buffer_send(v10 + 232, a2, a3, &v13, &v12);
  if (!v13 || (result = _process_derivative_stream_header(a1, (v10 + 216), v13, 0, a5), result))
  {
    mmcs_epilogue_buffer_append(v10 + 232, a2, a3);
    if (!a4 && !v12)
    {
      return 1;
    }

    result = _process_derivative_stream_header(a1, a2, v12, a4, a5);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void _process_unencrypted_derivative_data_for_signature_generation(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 88);
  if (a4)
  {
    *a4 = 0;
    if (!*(v4 + 264) || CKFileSignatureGeneratorFinish())
    {
      goto LABEL_14;
    }

    v5 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v6 = *(*(v4 + 8) + 40);
    *buf = 134218242;
    v15 = v6;
    v16 = 2112;
    v17 = 0;
    v7 = "Error finishing signature generator for item %lld: %@";
    v8 = v5;
    v9 = 22;
    goto LABEL_10;
  }

  if (!*(v4 + 264) || CKFileSignatureGeneratorUpdate())
  {
    goto LABEL_14;
  }

  v10 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = *(*(v4 + 8) + 40);
    *buf = 134217984;
    v15 = v11;
    v7 = "Error updating signature generator for item %lld";
    v8 = v10;
    v9 = 12;
LABEL_10:
    _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_ERROR, v7, buf, v9);
  }

LABEL_11:
  v12 = *(v4 + 264);
  if (v12)
  {
    C3BaseRelease(v12);
  }

  *(v4 + 264) = 0;
LABEL_14:
  v13 = *MEMORY[0x277D85DE8];
}

void mmcs_get_derivative_container_requirements(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(a1 + 88);
  v6 = mmcs_http_request_options_network_behavior_type(*(*(a2 + 24) + 24));
  v7 = mmcs_request_type_for_behavior_and_activity(v6, 1);
  *a3 = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[1] = 0u;
  mmcs_http_request_make_request_requirements(*(a2 + 24), a3);
  *(a3 + v7 + 2) = *(*(v5 + 8) + 312);
}

void mmcs_get_derivative_container_invalidate(uint64_t a1)
{
  v2 = *(a1 + 88);
  v3 = *v2;
  if (*v2)
  {
    if (*v3)
    {
      C3BaseRelease(*v3);
    }

    *v2 = 0;
  }

  mmcs_container_invalidate_transactions(a1);
}

void mmcs_get_derivative_container_reset_stream(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 88);
  *(v1 + 168) = 0;
  CC_MD5_Init((v1 + 32));
  mmcs_epilogue_buffer_init((v1 + 144), v1 + 124, 16);
  *(v1 + 177) = 0;
  *(v1 + 169) = 0;
  *(v1 + 188) = 0;
  v2 = *(v1 + 192);
  if (v2)
  {
    C3BaseRelease(v2);
  }

  *(v1 + 216) = 0;
  *(v1 + 192) = 0;
  *(v1 + 200) = 0;
  *(v1 + 208) = 0;
  *(v1 + 224) = 0;
  mmcs_epilogue_buffer_init((v1 + 232), v1 + 216, 16);
  v3 = *(v1 + 256);
  if (v3)
  {
    C3BaseRelease(v3);
  }

  *(v1 + 256) = 0;
  *(v1 + 24) = 0;
  v4 = *(v1 + 264);
  if (v4)
  {
    C3BaseRelease(v4);
  }

  *(v1 + 264) = 0;
  v5 = *(v1 + 8);
  arguments_for_derivative_validation_signature_generator = mmcs_item_create_arguments_for_derivative_validation_signature_generator();
  if (arguments_for_derivative_validation_signature_generator && CKFileSignatureGeneratorCreate())
  {
    goto LABEL_12;
  }

  v7 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(*(v1 + 8) + 40);
    v10 = 134217984;
    v11 = v8;
    _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_ERROR, "Error creating signature generator for item %llu", &v10, 0xCu);
  }

  if (arguments_for_derivative_validation_signature_generator)
  {
LABEL_12:
    C3BaseRelease(arguments_for_derivative_validation_signature_generator);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void _mmcs_get_derivative_container_reset_for_retry(uint64_t a1, uint64_t a2)
{
  mmcs_container_remember_error(a1, a2);
  mmcs_container_reset_error_for_retry(a1);
  mmcs_get_derivative_container_reset_stream(a1);
  v3 = *(*(a1 + 88) + 8);
  v4 = *(v3 + 320);

  mmcs_item_update_unget_derivative_progress(v3, v4);
}

uint64_t _process_derivative_stream_header(void *a1, char *__src, uint64_t a3, int a4, void *a5)
{
  v7 = a3;
  v8 = __src;
  v66 = 0;
  error_with_underlying_error = 0;
  cf = 0;
  if (a5)
  {
    *a5 = 0;
  }

  chunk_key_concatenation = 0;
  v11 = a1[11];
  if (a3 < 1 || (v12 = *(v11 + 188), v12 > 0xF))
  {
    v14 = 0;
  }

  else
  {
    if (16 - v12 >= a3)
    {
      v13 = a3;
    }

    else
    {
      v13 = (16 - v12);
    }

    memcpy((v11 + 169 + v12), __src, v13);
    *(v11 + 188) += v13;
    v8 += v13;
    v7 -= v13;
    if (*(a1[11] + 188) == 16)
    {
      chunk_key_concatenation = mmcs_item_create_chunk_key_concatenation(*(v11 + 8));
      v14 = CFDataCreate(*MEMORY[0x277CBECE8], (v11 + 169), *(v11 + 188));
      v15 = *(*(v11 + 8) + 56);
      v20 = CKStreamKeyDerivation();
      v21 = cf;
      v22 = error_with_underlying_error;
      if (v20)
      {
        v23 = cf == 0;
      }

      else
      {
        v23 = 1;
      }

      if (v23 || error_with_underlying_error != 0)
      {
        error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 1, error_with_underlying_error, @"CKStreamKeyDerivation", v16, v17, v18, v19, v62);
        if (v22)
        {
          CFRelease(v22);
          v22 = 0;
        }

        goto LABEL_60;
      }

      if (*(v11 + 192))
      {
        CFRelease(*(v11 + 192));
        v21 = cf;
      }

      *(v11 + 192) = 0;
      CFRetain(v21);
      *(v11 + 192) = cf;
    }

    else
    {
      chunk_key_concatenation = 0;
      v14 = 0;
    }
  }

  v25 = *(v11 + 212);
  v26 = v25 > 0xB || v7 < 1;
  if (v26 || (12 - v25 >= v7 ? (v27 = v7) : (v27 = (12 - v25)), memcpy((v11 + 200 + v25), v8, v27), v28 = (*(v11 + 212) + v27), *(v11 + 212) = v28, v8 += v27, v7 -= v27, *(a1[11] + 212) != 12))
  {
    v22 = 0;
    if (a4)
    {
      goto LABEL_35;
    }

LABEL_45:
    if (v7 <= 0)
    {
LABEL_52:
      v43 = 1;
      goto LABEL_66;
    }

    if (*(v11 + 256))
    {
      if (CKStreamCoderUpdate())
      {
        v42 = 0;
LABEL_49:
        v64 = 0;
        _process_unencrypted_derivative_data_for_signature_generation(a1, v8, v7, v42);
        mmcs_get_state_process_derivative_data(*v11, a1, *(v11 + 24), v8, v7, a4, v64);
        if (v64)
        {
          C3BaseRelease(v64);
        }

        *(v11 + 24) += v7;
        goto LABEL_52;
      }

LABEL_79:
      v52 = error_with_underlying_error;
      v53 = @"CKStreamCoderUpdate";
LABEL_80:
      error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 1, v52, v53, v31, v32, v33, v34, v62);
      if (v52)
      {
        CFRelease(v52);
      }

      goto LABEL_60;
    }

LABEL_55:
    v50 = @"Stream coder missing.";
    v51 = 1;
LABEL_56:
    error = mmcs_cferror_create_error(@"com.apple.mmcs", v51, v50);
    goto LABEL_59;
  }

  v22 = CFDataCreate(*MEMORY[0x277CBECE8], (v11 + 200), v28);
  v29 = *(v11 + 256);
  if (v29)
  {
    C3BaseRelease(v29);
  }

  *(v11 + 256) = 0;
  v30 = *(v11 + 192);
  if (!CKStreamCoderCreate())
  {
    v52 = error_with_underlying_error;
    v53 = @"Stream coder.";
    goto LABEL_80;
  }

  if (!a4)
  {
    goto LABEL_45;
  }

LABEL_35:
  if (mmcs_epilogue_buffer_length(a1[11] + 232) == 16)
  {
    v40 = a1[11];
    if (*(v40 + 188) == 16)
    {
      if (*(v40 + 212) != 12)
      {
        error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 11, @"Short derivative container missing iv: iv length %u", v35, v36, v37, v38, v39, *(v11 + 212));
        goto LABEL_59;
      }

      if (*(v11 + 256))
      {
        if (v7 <= 0 || CKStreamCoderUpdate())
        {
          v66 = CFDataCreate(*MEMORY[0x277CBECE8], (v11 + 216), 16);
          if (v66)
          {
            v41 = *(v11 + 256);
            if (!CKStreamCoderFinish())
            {
              v56 = error_with_underlying_error;
              CStringDescription = XCFDataCreateCStringDescription(v66);
              error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 11, error_with_underlying_error, @"AES GCM tag mismatch. Processed %llu bytes of derivative content. Expected tag %s", v58, v59, v60, v61, *(v11 + 24));
              if (v56)
              {
                CFRelease(v56);
              }

              if (CStringDescription)
              {
                free(CStringDescription);
              }

              goto LABEL_60;
            }

            v42 = &v64;
            goto LABEL_49;
          }

          v50 = @"tagObject";
          v51 = 37;
          goto LABEL_56;
        }

        goto LABEL_79;
      }

      goto LABEL_55;
    }

    error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 11, @"Short derivative container missing salt: salt length %u", v35, v36, v37, v38, v39, *(v11 + 188));
  }

  else
  {
    v63 = mmcs_epilogue_buffer_length(v11 + 232);
    error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 11, @"Short derivative container missing tag: tag length %ld", v44, v45, v46, v47, v48, v63);
  }

LABEL_59:
  error_with_underlying_error = error;
LABEL_60:
  if (a5)
  {
    if (error_with_underlying_error)
    {
      CFRetain(error_with_underlying_error);
      v54 = error_with_underlying_error;
    }

    else
    {
      v54 = 0;
    }

    v43 = 0;
    *a5 = v54;
  }

  else
  {
    v43 = 0;
  }

LABEL_66:
  if (v22)
  {
    CFRelease(v22);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (error_with_underlying_error)
  {
    CFRelease(error_with_underlying_error);
  }

  if (chunk_key_concatenation)
  {
    CFRelease(chunk_key_concatenation);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v43;
}

__n128 MMCSEngineClientContextCopy1(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x40uLL, 0x108004041683268uLL);
  if (v2)
  {
    result = *a1;
    v4 = *(a1 + 16);
    v5 = *(a1 + 48);
    v2[2] = *(a1 + 32);
    v2[3] = v5;
    *v2 = result;
    v2[1] = v4;
  }

  return result;
}

__n128 MMCSEngineClientContextCopy3(__n128 *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x48uLL, 0x1080040F19B2D45uLL);
  if (v2)
  {
    *v2 = *a1;
    result = a1[1];
    v4 = a1[2];
    v5 = a1[3];
    v2[4].n128_u64[0] = a1[4].n128_u64[0];
    v2[2] = v4;
    v2[3] = v5;
    v2[1] = result;
  }

  return result;
}

__n128 MMCSEngineClientContextCopy4(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x58uLL, 0x10800405B6EA996uLL);
  if (v2)
  {
    v4 = *(a1 + 16);
    *v2 = *a1;
    v2[1] = v4;
    result = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = *(a1 + 64);
    *(v2 + 10) = *(a1 + 80);
    v2[3] = v5;
    v2[4] = v6;
    v2[2] = result;
  }

  return result;
}

__n128 MMCSEngineClientContextCopy5(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x58uLL, 0x10800405B6EA996uLL);
  if (v2)
  {
    v4 = *(a1 + 16);
    *v2 = *a1;
    v2[1] = v4;
    result = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = *(a1 + 64);
    *(v2 + 10) = *(a1 + 80);
    v2[3] = v5;
    v2[4] = v6;
    v2[2] = result;
  }

  return result;
}

__n128 MMCSEngineClientContextCopy6(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x58uLL, 0x10800405B6EA996uLL);
  if (v2)
  {
    v4 = *(a1 + 16);
    *v2 = *a1;
    v2[1] = v4;
    result = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = *(a1 + 64);
    *(v2 + 10) = *(a1 + 80);
    v2[3] = v5;
    v2[4] = v6;
    v2[2] = result;
  }

  return result;
}

CFStringRef XCFStringCreateWithBytesNoCopy(const __CFAllocator *a1, const UInt8 *a2, CFIndex a3, CFStringEncoding a4, Boolean a5, const __CFAllocator *a6)
{
  if (*MEMORY[0x277CBECF0] != a6 && *MEMORY[0x277CBED00] != a6)
  {
    XCFStringCreateWithBytesNoCopy_cold_1();
  }

  return CFStringCreateWithBytesNoCopy(a1, a2, a3, a4, a5, a6);
}

CFDataRef XCFDataCreateWithBytesNoCopy(const __CFAllocator *a1, const UInt8 *a2, CFIndex a3, const __CFAllocator *a4)
{
  if (*MEMORY[0x277CBECF0] != a4 && *MEMORY[0x277CBED00] != a4)
  {
    XCFDataCreateWithBytesNoCopy_cold_1();
  }

  return CFDataCreateWithBytesNoCopy(a1, a2, a3, a4);
}

void mmcs_read_stream_pool_discard_recycled_streams(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (gMMCS_DebugLevel >= 4)
  {
    v2 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Pool %@ discarding recycled entries from source", *(a1 + 16));
      v4 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v7 = v3;
        _os_log_impl(&dword_2577D8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v3)
      {
        CFRelease(v3);
      }
    }
  }

  _mmcs_read_stream_pool_discard_recycled_streams(a1);
  v5 = *MEMORY[0x277D85DE8];
}

void mmcs_read_stream_pool_gc_timer_fired(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (gMMCS_DebugLevel >= 4)
  {
    v3 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Pool %@: discarding expired entries, discarding recycled entries, updating next fire date", *(a2 + 16));
      v5 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v10 = v4;
        _os_log_impl(&dword_2577D8000, v5, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }
  }

  if (CFDictionaryGetCount(*(a2 + 104)) >= 1)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v7 = Mutable;
      CFDictionaryApplyFunction(*(a2 + 104), _add_name, Mutable);
      v12.length = CFArrayGetCount(v7);
      v12.location = 0;
      CFArrayApplyFunction(v7, v12, _check_expired, a2);
      CFRelease(v7);
    }
  }

  _mmcs_read_stream_pool_discard_recycled_streams(a2);
  mmcs_read_stream_pool_update_gc_fire_date(a2, 1);
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t _close_http_session_entry(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (gMMCS_DebugLevel >= 4)
  {
    v3 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Entry with name '%@' closing because the pool is finalizing.", *(a2 + 32));
      v5 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v9 = v4;
        _os_log_impl(&dword_2577D8000, v5, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }
  }

  result = mmcs_http_session_pool_entry_close(a2);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void _mmcs_read_stream_pool_discard_recycled_streams(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    v5.length = CFArrayGetCount(*(a1 + 96));
    v5.location = 0;
    CFArrayApplyFunction(v1, v5, _close_read_stream, 0);
    v3 = *(a1 + 96);

    CFArrayRemoveAllValues(v3);
  }
}

void _close_read_stream(CFReadStreamRef stream)
{
  v9 = *MEMORY[0x277D85DE8];
  if (gMMCS_DebugLevel >= 4)
  {
    SocketNativeHandle = XCFReadStreamGetSocketNativeHandle(stream);
    v3 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Closing read stream %p (socket %d)", stream, SocketNativeHandle);
      v5 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v8 = v4;
        _os_log_impl(&dword_2577D8000, v5, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }
  }

  CFReadStreamClose(stream);
  v6 = *MEMORY[0x277D85DE8];
}

void _check_expired(void *key, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(*(a2 + 104), key);
  if (Value)
  {
    v4 = Value;
    if (!*(Value + 4))
    {
      v5 = Value[5] + 600.0;
      if (v5 < CFAbsoluteTimeGetCurrent())
      {
        if (gMMCS_DebugLevel >= 4)
        {
          v6 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
          {
            v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Entry with name '%@' expired.", *(v4 + 4));
            v8 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v12 = v7;
              _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
            }

            if (v7)
            {
              CFRelease(v7);
            }
          }
        }

        mmcs_http_session_pool_entry_close(v4);
        if (*(v4 + 4))
        {
          v9 = *(v4 + 4);
        }

        else
        {
          v9 = *MEMORY[0x277CBEEE8];
        }

        CFDictionaryRemoveValue(*(a2 + 104), v9);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t mmcs_http_request_create_with_url(CFTypeRef *a1, const __CFURL *a2, const void *a3, CFErrorRef *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*a1)
  {
    v8 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"stomping existing http request");
      v10 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v26 = 138543362;
        v27 = v9;
        _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_ERROR, "%{public}@", &v26, 0xCu);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }

    if (*a1)
    {
      C3BaseRelease(*a1);
    }
  }

  *a1 = 0;
  v11 = C3TypeRegister(&mmcs_http_requestGetTypeID_typeID);
  Instance = C3TypeCreateInstance_(0, v11, 0x30uLL);
  if (Instance)
  {
    Request = CFHTTPMessageCreateRequest(*MEMORY[0x277CBECE8], @"GET", a2, *MEMORY[0x277CBAD00]);
    if (Request)
    {
      v19 = Request;
      *(Instance + 16) = Request;
      CFRetain(Request);
      *(Instance + 32) = @"fakeVendorName";
      CFRetain(@"fakeVendorName");
      mmcs_http_request_set_options(Instance, a3);
      *(Instance + 40) = 0;
      *(Instance + 48) = 0;
      *(Instance + 56) = 0;
      C3BaseRetain(Instance);
      *a1 = Instance;
      CFRelease(v19);
      v20 = 1;
LABEL_20:
      C3BaseRelease(Instance);
      result = v20;
      goto LABEL_21;
    }

    v21 = @"mmcs_http_request msg";
  }

  else
  {
    v21 = @"mmcs_http_request";
  }

  v22 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, v21, v12, v13, v14, v15, v16, v26);
  v23 = v22;
  if (a4 && v22)
  {
    CFRetain(v22);
    *a4 = v23;
  }

  else if (!v22)
  {
    goto LABEL_19;
  }

  CFRelease(v23);
LABEL_19:
  v20 = 0;
  result = 0;
  if (Instance)
  {
    goto LABEL_20;
  }

LABEL_21:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void mmcs_http_request_init(uint64_t a1, CFTypeRef cf, const void *a3, char a4, uint64_t a5, const void *a6, void *a7, double a8)
{
  if (a7)
  {
    *a7 = 0;
  }

  *(a1 + 16) = cf;
  CFRetain(cf);
  *(a1 + 32) = a6;
  if (a6)
  {
    CFRetain(a6);
  }

  mmcs_http_request_set_options(a1, a3);
  *(a1 + 40) = a8;
  *(a1 + 48) = a5;
  *(a1 + 56) = a4;
}

uint64_t mmcs_http_request_create_with_host_info(CFTypeRef *a1, uint64_t a2, const void *a3, int a4, CFErrorRef *a5)
{
  v196 = *MEMORY[0x277D85DE8];
  if (*a1)
  {
    v10 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"stomping existing http request");
      v12 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v195 = v11;
        _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }

    if (*a1)
    {
      C3BaseRelease(*a1);
    }
  }

  *a1 = 0;
  v13 = C3TypeRegister(&mmcs_http_requestGetTypeID_typeID);
  result = C3TypeCreateInstance_(0, v13, 0x30uLL);
  if (result)
  {
    v15 = result;
    __s = 0;
    if (a5)
    {
      *a5 = 0;
    }

    v16 = _validate_string(*(a2 + 24), "hostInfo->hostname");
    v17 = _validate_string(*(a2 + 40), "hostInfo->method") && v16;
    v18 = _validate_string(*(a2 + 48), "hostInfo->uri");
    v19 = v17 & v18 & _validate_string(*(a2 + 56), "hostInfo->transport_protocol");
    v20 = _validate_string(*(a2 + 64), "hostInfo->transport_protocol_version");
    if ((v19 & v20 & _validate_string(*(a2 + 72), "hostInfo->scheme")) == 0)
    {
      v34 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Invalid host_info", v21, v22, v23, v24, v25, v175);
LABEL_21:
      v35 = v34;
LABEL_22:
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 1;
      goto LABEL_23;
    }

    if (strcmp(*(a2 + 56), "HTTP"))
    {
      v26 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v32 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Expected transport protocol to be HTTP, not %s", *(a2 + 56));
        v33 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v195 = v32;
          _os_log_impl(&dword_2577D8000, v33, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v32)
        {
          CFRelease(v32);
        }
      }

      v34 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Expected transport protocol to be HTTP, not %s", v27, v28, v29, v30, v31, *(a2 + 56));
      goto LABEL_21;
    }

    v44 = *MEMORY[0x277CBECE8];
    v45 = strlen(*(a2 + 40));
    v46 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], *(a2 + 40), v45, 0x8000100u, 0);
    if (!v46)
    {
      v52 = strlen(*(a2 + 40));
      v53 = hextostrdup(*(a2 + 40), v52);
      v35 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"Method string could not be created with %s 0x%s", v54, v55, v56, v57, v58, *(a2 + 40));
      if (v53)
      {
        free(v53);
      }

      goto LABEL_22;
    }

    v47 = v46;
    v48 = strlen(*(a2 + 48));
    v49 = CFStringCreateWithBytes(v44, *(a2 + 48), v48, 0x8000100u, 0);
    if (!v49)
    {
      v59 = strlen(*(a2 + 48));
      v60 = hextostrdup(*(a2 + 48), v59);
      v35 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"URI string could not be created with %s 0x%s", v61, v62, v63, v64, v65, *(a2 + 48));
      if (v60)
      {
        free(v60);
      }

      CFRelease(v47);
      goto LABEL_22;
    }

    v50 = v49;
    v191 = v49;
    cf = v47;
    if (a4)
    {
      v51 = asprintf(&__s, "%s://%s:%u/", "http", *(a2 + 24), 80);
    }

    else
    {
      v51 = asprintf(&__s, "%s://%s:%u/", *(a2 + 72), *(a2 + 24), *(a2 + 32));
    }

    if (v51 < 0)
    {
      v81 = __error();
      v82 = strerror(*v81);
      v177 = *__error();
      v35 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"asprintf error %s(%d)", v83, v84, v85, v86, v87, v82);
    }

    else
    {
      v66 = strlen(__s);
      v67 = CFStringCreateWithBytes(v44, __s, v66, 0x8000100u, 0);
      if (v67)
      {
        v36 = v67;
        if (__s)
        {
          free(__s);
        }

        __s = 0;
        v68 = CFURLCreateWithString(v44, v36, 0);
        if (v68)
        {
          v37 = v68;
          v185 = a3;
          v69 = CFURLCreateWithString(v44, v50, v68);
          if (v69)
          {
            v38 = v69;
            if (asprintf(&__s, "%s/%s", *(a2 + 56), *(a2 + 64)) < 0)
            {
              v115 = __error();
              v116 = strerror(*v115);
              v178 = *__error();
              v35 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"asprintf error %s(%d)", v117, v118, v119, v120, v121, v116);
            }

            else
            {
              v70 = strlen(__s);
              v71 = CFStringCreateWithBytes(v44, __s, v70, 0x8000100u, 0);
              if (v71)
              {
                v39 = v71;
                if (__s)
                {
                  free(__s);
                }

                __s = 0;
                if (CFStringCompare(*MEMORY[0x277CBACF8], v39, 0) && CFStringCompare(*MEMORY[0x277CBAD00], v39, 0))
                {
                  v72 = mmcs_logging_logger_default();
                  if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
                  {
                    v78 = CFStringCreateWithFormat(v44, 0, @"version string invalid %@", v39);
                    v79 = mmcs_logging_logger_default();
                    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543362;
                      v195 = v78;
                      _os_log_impl(&dword_2577D8000, v79, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
                    }

                    if (v78)
                    {
                      CFRelease(v78);
                    }
                  }

                  v80 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"version string invalid %@", v73, v74, v75, v76, v77, v39);
LABEL_128:
                  v35 = v80;
                  goto LABEL_87;
                }

                Request = CFHTTPMessageCreateRequest(v44, cf, v38, v39);
                if (!Request)
                {
                  v143 = mmcs_logging_logger_default();
                  if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
                  {
                    v149 = CFStringCreateWithFormat(v44, 0, @"msg could not be created with method %@ url %@ version %@", cf, v38, v39);
                    v150 = mmcs_logging_logger_default();
                    if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543362;
                      v195 = v149;
                      _os_log_impl(&dword_2577D8000, v150, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
                    }

                    if (v149)
                    {
                      CFRelease(v149);
                    }
                  }

                  v80 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"msg could not be created with method %@ url %@ version %@", v144, v145, v146, v147, v148, cf);
                  goto LABEL_128;
                }

                message = Request;
                alloc = v44;
                if (*(a2 + 112))
                {
                  v123 = mmcs_time_convert_server_time_to_cfabsolutetime(*(a2 + 120));
                  String = XCFAbsoluteTimeDateFormatterCreateString(v123);
                  v125 = mmcs_logging_logger_default();
                  if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
                  {
                    v181 = String;
                    v176 = *(a2 + 120);
                    v187 = CFStringCreateWithFormat(v44, 0, @"received url expiry %lld (%@) from the server");
                    v126 = mmcs_logging_logger_default();
                    if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138543362;
                      v195 = v187;
                      _os_log_impl(&dword_2577D8000, v126, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
                    }

                    String = v181;
                    if (v187)
                    {
                      CFRelease(v187);
                    }
                  }

                  if (String)
                  {
                    CFRelease(String);
                  }

                  if (v123 >= CFAbsoluteTimeGetCurrent() + 120.0)
                  {
                    v128 = v123;
                    goto LABEL_136;
                  }

                  v127 = mmcs_logging_logger_default();
                  v128 = 0.0;
                  if (!os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_136;
                  }

                  v179 = *(a2 + 120);
                  LOBYTE(v176) = LOBYTE(v123);
                  v188 = CFStringCreateWithFormat(v44, 0, @"invalid url expiry within 2 minutes of wall clock received: %f (server value %llu). ignoring value.");
                  v129 = mmcs_logging_logger_default();
                  if (!os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
                  {
LABEL_133:
                    if (v188)
                    {
                      CFRelease(v188);
                    }

LABEL_136:
                    v153 = "Disabled";
                    if (*(a2 + 136))
                    {
                      v154 = *(a2 + 144);
                      if (v154)
                      {
                        v156 = mmcs_logging_logger_default();
                        if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_2577D8000, v156, OS_LOG_TYPE_ERROR, "PutCompleteAtEdge V1 Requested By Server, Not Supported by Client", buf, 2u);
                        }

                        v35 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"PutCompleteAtEdge V1 Requested By Server, Not Supported by Client", v157, v158, v159, v160, v161, v176);
                        v40 = 0;
                        v41 = 1;
                        v162 = message;
                        goto LABEL_167;
                      }

                      v182 = *(a2 + 144) & 2;
                      v189 = (v182 >> 1);
                      if ((v154 & 2) != 0)
                      {
                        v153 = "V2";
                      }
                    }

                    else
                    {
                      LOBYTE(v189) = 0;
                      v182 = 0;
                    }

                    v155 = mmcs_logging_logger_default();
                    if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136446210;
                      v195 = v153;
                      _os_log_impl(&dword_2577D8000, v155, OS_LOG_TYPE_DEFAULT, "PutComplete at Edge Protocol : %{public}s", buf, 0xCu);
                    }

                    v183 = v36;
                    if (*(a2 + 136))
                    {
                      v180 = (*(a2 + 144) >> 3) & 1;
                    }

                    else
                    {
                      LOBYTE(v180) = 0;
                    }

                    if (*(a2 + 80))
                    {
                      v163 = 0;
                      v186 = v37;
                      do
                      {
                        v164 = *(*(a2 + 88) + 8 * v163);
                        v165 = strlen(*(v164 + 24));
                        v166 = CFStringCreateWithBytes(alloc, *(v164 + 24), v165, 0x8000100u, 0);
                        v167 = *(v164 + 32);
                        v168 = strlen(v167);
                        v169 = CFStringCreateWithBytes(alloc, v167, v168, 0x8000100u, 0);
                        if ((v189 & (CFStringCompare(@"Content-Length", v166, 1uLL) == kCFCompareEqualTo)) == 0)
                        {
                          CFHTTPMessageSetHeaderFieldValue(message, v166, v169);
                        }

                        if (v166)
                        {
                          CFRelease(v166);
                        }

                        v37 = v186;
                        if (v169)
                        {
                          CFRelease(v169);
                        }

                        ++v163;
                      }

                      while (v163 < *(a2 + 80));
                    }

                    v170 = *(a2 + 96);
                    if (v170)
                    {
                      v171 = strlen(*(a2 + 96));
                      v40 = CFStringCreateWithBytes(alloc, v170, v171, 0x8000100u, 0);
                      v172 = mmcs_logging_logger_default();
                      v36 = v183;
                      if (os_log_type_enabled(v172, OS_LOG_TYPE_DEBUG))
                      {
                        v173 = CFStringCreateWithFormat(alloc, 0, @"ContentVendor %@", v40);
                        v174 = mmcs_logging_logger_default();
                        if (os_log_type_enabled(v174, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 138543362;
                          v195 = v173;
                          _os_log_impl(&dword_2577D8000, v174, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
                        }

                        if (v173)
                        {
                          CFRelease(v173);
                        }
                      }
                    }

                    else
                    {
                      v40 = 0;
                      v36 = v183;
                    }

                    mmcs_http_request_init(v15, message, v185, v180, v182, v40, a5, v128);
                    v162 = message;
                    v41 = 0;
                    v35 = 0;
LABEL_167:
                    CFRelease(v162);
                    goto LABEL_88;
                  }

                  *buf = 138543362;
                  v195 = v188;
                  v130 = v129;
                  v131 = OS_LOG_TYPE_DEFAULT;
                }

                else
                {
                  v151 = mmcs_logging_logger_default();
                  v128 = 0.0;
                  if (!os_log_type_enabled(v151, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_136;
                  }

                  LOBYTE(v176) = CFURLGetString(v38);
                  v188 = CFStringCreateWithFormat(v44, 0, @"url %@ does not have url expiry");
                  v152 = mmcs_logging_logger_default();
                  if (!os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_133;
                  }

                  *buf = 138543362;
                  v195 = v188;
                  v130 = v152;
                  v131 = OS_LOG_TYPE_DEBUG;
                }

                _os_log_impl(&dword_2577D8000, v130, v131, "%{public}@", buf, 0xCu);
                goto LABEL_133;
              }

              v132 = v44;
              v133 = strlen(__s);
              v134 = hextostrdup(__s, v133);
              v135 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
              {
                v141 = CFStringCreateWithFormat(v132, 0, @"version could not be created with %s 0x%s", __s, v134);
                v142 = mmcs_logging_logger_default();
                if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v195 = v141;
                  _os_log_impl(&dword_2577D8000, v142, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
                }

                if (v141)
                {
                  CFRelease(v141);
                }
              }

              v35 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"version string could not be created with %s 0x%s", v136, v137, v138, v139, v140, __s);
              if (v134)
              {
                free(v134);
              }
            }

LABEL_86:
            v39 = 0;
LABEL_87:
            v40 = 0;
            v41 = 1;
LABEL_88:
            CFRelease(cf);
            CFRelease(v191);
LABEL_23:
            if (__s)
            {
              free(__s);
            }

            __s = 0;
            if (v36)
            {
              CFRelease(v36);
            }

            if (v37)
            {
              CFRelease(v37);
            }

            if (v38)
            {
              CFRelease(v38);
            }

            if (v39)
            {
              CFRelease(v39);
            }

            if (v40)
            {
              CFRelease(v40);
            }

            if (v35)
            {
              v42 = v41;
            }

            else
            {
              v42 = 0;
            }

            if (a5 && v42)
            {
              *a5 = v35;
              CFRetain(v35);
            }

            else if (!v35)
            {
              goto LABEL_43;
            }

            CFRelease(v35);
LABEL_43:
            if (v41)
            {
              C3BaseRelease(v15);
              result = 0;
            }

            else
            {
              *a1 = v15;
              result = 1;
            }

            goto LABEL_46;
          }

          v107 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
          {
            v113 = CFStringCreateWithFormat(v44, 0, @"url could not be created with uri %@ baseURL %@", v50, v37);
            v114 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v195 = v113;
              _os_log_impl(&dword_2577D8000, v114, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v113)
            {
              CFRelease(v113);
            }
          }

          v35 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"url could not be created with uri %@ baseURL %@", v108, v109, v110, v111, v112, v50);
LABEL_85:
          v38 = 0;
          goto LABEL_86;
        }

        v99 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
        {
          v105 = CFStringCreateWithFormat(v44, 0, @"baseUrl could not be created with %@", v36);
          v106 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v195 = v105;
            _os_log_impl(&dword_2577D8000, v106, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v105)
          {
            CFRelease(v105);
          }
        }

        v35 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"baseUrl could not be created with %@", v100, v101, v102, v103, v104, v36);
LABEL_84:
        v37 = 0;
        goto LABEL_85;
      }

      v88 = v44;
      v89 = strlen(__s);
      v90 = hextostrdup(__s, v89);
      v91 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        v97 = CFStringCreateWithFormat(v88, 0, @"urlString could not be created with  %s 0x%s ", __s, v90);
        v98 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v195 = v97;
          _os_log_impl(&dword_2577D8000, v98, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v97)
        {
          CFRelease(v97);
        }
      }

      v35 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"URL string could not be created with %s 0x%s", v92, v93, v94, v95, v96, __s);
      if (v90)
      {
        free(v90);
      }
    }

    v36 = 0;
    goto LABEL_84;
  }

LABEL_46:
  v43 = *MEMORY[0x277D85DE8];
  return result;
}