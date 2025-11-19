void log_item_applier(uint64_t a1, __CFString *theString)
{
  Length = CFStringGetLength(theString);
  v5 = *(a1 + 40);
  if (Length)
  {
    CFStringAppendFormat(theString, 0, @", %lld", *(a1 + 40));
  }

  else
  {
    CFStringAppendFormat(theString, 0, @"%lld", *(a1 + 40));
  }
}

void _log_error_0(__CFError *a1, unsigned int *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = mmcs_cferror_copy_description(a1);
  v4 = mmcs_logging_logger_summary();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"\tprevious error %d:           \t%@", *a2, v3);
    v6 = mmcs_logging_logger_summary();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v9 = v5;
      _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
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

  ++*a2;
  v7 = *MEMORY[0x277D85DE8];
}

void mmcs_put_request_finalize(uint64_t a1)
{
  v1 = *(a1 + 304);
  if (*(v1 + 88))
  {
    v2 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_2577D8000, v2, OS_LOG_TYPE_FAULT, "progressTimer must always be invalidated/freed first to break retain cycle, invariant violation.", v20, 2u);
    }
  }

  v3 = *(v1 + 96);
  if (v3)
  {
    mmcs_http_context_invalidate(v3);
    v4 = *(v1 + 96);
    if (v4)
    {
      C3BaseRelease(v4);
    }

    *(v1 + 96) = 0;
  }

  v5 = *(v1 + 104);
  if (v5)
  {
    CFRelease(v5);
  }

  *(v1 + 104) = 0;
  v6 = *(v1 + 24);
  if (v6)
  {
    CFRelease(v6);
  }

  *(v1 + 24) = 0;
  v7 = *(v1 + 32);
  if (v7)
  {
    CFRelease(v7);
  }

  *(v1 + 32) = 0;
  v8 = *(v1 + 40);
  if (v8)
  {
    CFRelease(v8);
  }

  *(v1 + 40) = 0;
  v9 = *(v1 + 48);
  if (v9)
  {
    CFRelease(v9);
  }

  *(v1 + 48) = 0;
  v10 = *(v1 + 56);
  if (v10)
  {
    CFRelease(v10);
  }

  *(v1 + 56) = 0;
  v11 = *(v1 + 72);
  if (v11)
  {
    CFRelease(v11);
  }

  *(v1 + 72) = 0;
  v12 = *(v1 + 64);
  if (v12)
  {
    CFSetApplyFunction(v12, dealloc_chunk_references_0, 0);
    v13 = *(v1 + 64);
    if (v13)
    {
      CFRelease(v13);
    }

    *(v1 + 64) = 0;
  }

  v14 = *(v1 + 80);
  if (v14)
  {
    mmcs_put_state_dealloc(v14);
    *(v1 + 80) = 0;
  }

  v15 = *(v1 + 128);
  if (v15)
  {
    CFSetApplyFunction(v15, dealloc_put_completes, 0);
    v16 = *(v1 + 128);
    if (v16)
    {
      CFRelease(v16);
    }

    *(v1 + 128) = 0;
  }

  if (*v1)
  {
    CFRelease(*v1);
  }

  *v1 = 0;
  if (*(v1 + 144))
  {
    v17 = 0;
    v18 = v1 + 152;
    do
    {
      mmcs_item_finalize(v18);
      ++v17;
      v18 += 416;
    }

    while (v17 < *(v1 + 144));
  }

  *(v1 + 144) = 0;
  v19 = *(v1 + 120);
  if (v19)
  {
    CFRelease(v19);
  }

  *(v1 + 120) = 0;
}

uint64_t mmcs_put_request_stop_with_error(uint64_t a1, CFErrorRef a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 144))
  {
    result = 0;
    goto LABEL_43;
  }

  C3BaseRetain(a1);
  *(a1 + 144) = 1;
  if (a2)
  {
    error = 0;
  }

  else
  {
    error = mmcs_cferror_create_error(@"com.apple.mmcs", 4, @"Put request was cancelled.");
    a2 = error;
  }

  CFRetain(a2);
  *(a1 + 152) = a2;
  mmcs_http_context_should_cancel(*(*(a1 + 304) + 96), a2);
  v6 = *(a1 + 304);
  v7 = *(v6 + 80);
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      v9 = 0;
      v10 = *MEMORY[0x277CBECE8];
      do
      {
        if (gMMCS_DebugLevel >= 5)
        {
          v11 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v12 = CFStringCreateWithFormat(v10, 0, @"canceling put container %u", v9);
            v13 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              *&buf[4] = v12;
              _os_log_impl(&dword_2577D8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
            }

            if (v12)
            {
              CFRelease(v12);
            }
          }

          if (gMMCS_DebugLevel >= 5)
          {
            v14 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v15 = CFStringCreateWithFormat(v10, 0, @"request's put state ref: %p", *(*(a1 + 304) + 80));
              v16 = mmcs_logging_logger_default();
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

            if (gMMCS_DebugLevel >= 5)
            {
              v17 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                v18 = CFStringCreateWithFormat(v10, 0, @"container's put state: %p", **(*(*(v7 + 64) + 8 * v9) + 88));
                v19 = mmcs_logging_logger_default();
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
            }
          }
        }

        mmcs_container_cancel(*(*(v7 + 64) + 8 * v9++), *(a1 + 152));
      }

      while (v8 != v9);
      v6 = *(a1 + 304);
    }
  }

  CFSetApplyFunction(*(v6 + 128), mmcs_put_req_cancel_put_complete, *(a1 + 152));
  v20 = *(a1 + 304);
  for (i = *(v20 + 8); i < *(v20 + 144); i = *(v20 + 8))
  {
    v22 = (v20 + 416 * i + 152);
    if (CFSetGetValue(*(v20 + 56), v22) == v22)
    {
      mmcs_put_item_progress_make_done_error(*(a1 + 152), buf);
      mmcs_put_request_set_progress_and_notify_items_like_item(a1, v22, buf);
    }

    ++*(*(a1 + 304) + 8);
    v20 = *(a1 + 304);
  }

  Count = CFSetGetCount(*v20);
  if (Count >= 1)
  {
    CFSetApplyFunction(**(a1 + 304), cancel_chunk_job, a1);
    CFSetRemoveAllValues(**(a1 + 304));
  }

  v24 = *(a1 + 192);
  if (v24 && mmcs_proxy_locator_is_locating(v24))
  {
    mmcs_proxy_locator_cancel(*(a1 + 192));
LABEL_39:
    mmcs_metrics_request_set_error(*(a1 + 184), *(a1 + 152));
    mmcs_put_request_context_cleanup(a1, *(a1 + 152));
    goto LABEL_40;
  }

  if (Count >= 1)
  {
    goto LABEL_39;
  }

LABEL_40:
  if (error)
  {
    CFRelease(error);
  }

  C3BaseRelease(a1);
  result = 1;
LABEL_43:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t cancel_chunk_job(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 136);
  mmcs_put_item_progress_make_done_error(*(a2 + 152), v7);
  mmcs_put_request_set_progress_and_notify_items_like_item(a2, v4, v7);
  v5 = *(a2 + 152);

  return mmcs_chunk_job_cancel(a1);
}

void mmcs_put_request_append_description(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 16);
  context = *a1;
  *theString = v2;
  v16 = *(a1 + 32);
  theString[1] = (*(&v2 + 1) + 1);
  if (*(a1 + 16))
  {
    v4 = _mmcs_request_copy_description(v1);
    if (v4)
    {
      v5 = v4;
      mmcs_op_requestor_context_indent(a1);
      CFStringAppend(*(a1 + 16), v5);
      CFStringAppend(*(a1 + 16), @"\n");
      CFRelease(v5);
      v6 = *(v1 + 304);
      if (*v6)
      {
        Count = CFSetGetCount(*v6);
        v6 = *(v1 + 304);
        if (Count >= 1)
        {
          CFSetApplyFunction(*v6, _mmcs_chunk_job_append_description, &context);
          v6 = *(v1 + 304);
        }
      }

      v8 = *(v6 + 96);
      if (v8)
      {
        is_sending = mmcs_http_context_is_sending(v8);
        v6 = *(v1 + 304);
        if (is_sending)
        {
          *&context = *(v6 + 96);
          mmcs_http_context_append_description(&context);
          v6 = *(v1 + 304);
        }
      }

      v10 = *(v6 + 80);
      if (v10)
      {
        if (*(v10 + 8))
        {
          v11 = 0;
          do
          {
            *&context = *(*(v10 + 64) + 8 * v11);
            mmcs_put_container_append_description(&context);
            ++v11;
          }

          while (v11 < *(v10 + 8));
        }

        v12 = vaddq_s64(*(a1 + 32), v16);
        *(a1 + 32) = v12;
        if (v12.i64[1] >= 11)
        {
          mmcs_op_requestor_context_indent(&context);
          CFStringAppendFormat(theString[0], 0, @"<%ld more container(s)> enqueued\n", *(a1 + 40) - 10);
        }
      }

      v13 = *(*(v1 + 304) + 128);
      if (v13)
      {
        CFSetApplyFunction(v13, _mmcs_put_complete_append_description, &context);
      }
    }
  }
}

uint64_t mmcs_put_req_is_using_itemid(uint64_t result, uint64_t a2)
{
  v2 = *(result + 304);
  if (*(v2 + 144))
  {
    v3 = 0;
    v4 = *(a2 + 8);
    v5 = 316;
    do
    {
      if (v4)
      {
        break;
      }

      if (*(v2 + v5 - 124) == *a2 && *(v2 + v5) != 7)
      {
        v4 = 1;
        *(a2 + 8) = 1;
        v2 = *(result + 304);
      }

      else
      {
        v4 = 0;
      }

      ++v3;
      v5 += 416;
    }

    while (v3 < *(v2 + 144));
  }

  return result;
}

void mmcs_put_section_req_is_using_itemid(uint64_t a1, void *valuePtr)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 304);
  if (*(v2 + 144) != 1)
  {
    mmcs_put_section_req_is_using_itemid_cold_1();
  }

  if (*(v2 + 316) == 7)
  {
    goto LABEL_3;
  }

  v6 = *MEMORY[0x277CBECE8];
  v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, valuePtr);
  if (!v7)
  {
    v10 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = CFStringCreateWithFormat(v6, 0, @"Failed to create itemId to test conflicting use.");
      v12 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = 138543362;
        v14 = v11;
        _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_ERROR, "%{public}@", &v13, 0xCu);
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }

LABEL_3:
    v3 = *MEMORY[0x277D85DE8];
    return;
  }

  v8 = v7;
  if (CFSetContainsValue(*(*(a1 + 304) + 72), v7))
  {
    *(valuePtr + 8) = 1;
  }

  v9 = *MEMORY[0x277D85DE8];

  CFRelease(v8);
}

void mmcs_put_request_set_progress_and_notify_all_items_not_done(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 304);
  if (*(v2 + 144))
  {
    v5 = 0;
    v6 = 316;
    do
    {
      if (*(v2 + v6) != 7)
      {
        v7 = *(a2 + 16);
        v8[0] = *a2;
        v8[1] = v7;
        v9 = *(a2 + 32);
        mmcs_put_request_set_progress_and_notify_item(a1, (v2 + v6 - 164), v8);
        v2 = *(a1 + 304);
      }

      ++v5;
      v6 += 416;
    }

    while (v5 < *(v2 + 144));
  }
}

void mmcs_put_item_progress_make_done_error(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  a2[1] = 0xBFF0000000000000;
  *a2 = 7;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = a1;
  if (!a1)
  {
    v2 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"non-NULL error expected");
      v4 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v6 = 138543362;
        v7 = v3;
        _os_log_impl(&dword_2577D8000, v4, OS_LOG_TYPE_ERROR, "%{public}@", &v6, 0xCu);
      }

      if (v3)
      {
        CFRelease(v3);
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

const void *mmcs_put_req_context_add_chunk_reference(uint64_t a1, const void *a2)
{
  result = CFSetGetValue(*(*(a1 + 304) + 64), a2);
  if (!result)
  {
    CFSetSetValue(*(*(a1 + 304) + 64), a2);
    return a2;
  }

  return result;
}

void **mmcs_put_req_context_get_chunk_reference_with_signature(uint64_t a1, const void *a2)
{
  v12 = 0;
  v10 = 0u;
  v11 = 0uLL;
  v8[0] = 0;
  v9 = 0u;
  v4 = CKChunkSchemeAndSignatureSize();
  v8[1] = malloc_type_malloc(v4, 0x100004077774924uLL);
  v5 = CKChunkSchemeAndSignatureSize();
  memcpy(v8[1], a2, v5);
  *&v9 = 0;
  Value = CFSetGetValue(*(*(a1 + 304) + 64), v8);
  if (v8[1])
  {
    free(v8[1]);
  }

  if (Value == v8)
  {
    return 0;
  }

  else
  {
    return Value;
  }
}

void mmcs_put_item_progress_make_state(int a1@<W0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  a2[1] = 0xBFF0000000000000;
  *a2 = a1;
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = 0;
  if (a1 == 7)
  {
    v2 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"a put item is done either with an error or a putReceipt");
      v4 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v6 = 138543362;
        v7 = v3;
        _os_log_impl(&dword_2577D8000, v4, OS_LOG_TYPE_ERROR, "%{public}@", &v6, 0xCu);
      }

      if (v3)
      {
        CFRelease(v3);
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t mmcs_put_item_progress_make_state_progress@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = 0;
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  return result;
}

void mmcs_put_item_progress_make_done_success(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v12 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *(a2 + 8) = 0xBFF0000000000000;
  *a2 = 7;
  if (!a1)
  {
    v6 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"non-NULL putReceipt expected");
      v8 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = 138543362;
        v11 = v7;
        _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_ERROR, "%{public}@", &v10, 0xCu);
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }
  }

  *(a2 + 16) = a1;
  *(a2 + 24) = a3;
  *(a2 + 32) = 0;
  v9 = *MEMORY[0x277D85DE8];
}

BOOL mmcs_put_request_has_items_not_done(uint64_t a1)
{
  v1 = *(a1 + 304);
  v2 = *(v1 + 144);
  if (!v2)
  {
    return 0;
  }

  v3 = (v1 + 316);
  v4 = 1;
  do
  {
    v5 = *v3;
    if (v4 >= v2)
    {
      break;
    }

    ++v4;
    v3 += 104;
  }

  while (v5 == 7);
  return v5 != 7;
}

void mmcs_put_request_set_progress_and_notify_item(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v6 = *(a3 + 1);
  *buf = *a3;
  v28 = v6;
  v29 = *(a3 + 4);
  mmcs_item_set_put_progress(a2, buf, &v26 + 1, &v26);
  v7 = *(a3 + 4);
  if (*a3 != 7 && v7)
  {
    v7 = mmcs_cferror_copy_description(*(a3 + 4));
    v8 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Notifying a put item state change %d with error %@.", *a3, v7);
      v10 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v9;
        _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }

    if (v7)
    {
      CFRelease(v7);
      v7 = 0;
    }
  }

  v11 = *(a1 + 32);
  if (mmcs_engine_get_sparse_block_size())
  {
    v12 = *(a1 + 32);
    mmcs_engine_get_sparse_block_size();
  }

  if (HIBYTE(v26) | v26)
  {
    results_dictionary_for_item = mmcs_item_create_results_dictionary_for_item(a2);
    Mutable = results_dictionary_for_item;
    v15 = *(a3 + 2);
    if (v15)
    {
      if (!results_dictionary_for_item)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v15 = *(a3 + 2);
      }

      CFDictionaryAddValue(Mutable, @"kMMCSPutReceipt", v15);
      if (*(a3 + 3) != 0.0)
      {
        *buf = *(a3 + 3);
        v16 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberDoubleType, buf);
        CFDictionaryAddValue(Mutable, @"kMMCSPutReceiptExpiry", v16);
        if (v16)
        {
          CFRelease(v16);
        }
      }
    }

    if (v7)
    {
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      }

      CFDictionaryAddValue(Mutable, @"kMMCSResultError", v7);
    }
  }

  else
  {
    Mutable = 0;
  }

  if (*a3 == 4)
  {
    if (*(a1 + 272))
    {
      v17 = *(a1 + 280);
      if (v17)
      {
        CFDictionaryAddValue(Mutable, @"kMMCSAuthorizeSimulcastResponse", v17);
        CFDictionaryAddValue(Mutable, @"kMMCSAuthorizeSimulcastResponseSignature", *(a1 + 288));
        *(a1 + 280) = 0;
      }
    }
  }

  if (HIBYTE(v26))
  {
    is_section = mmcs_put_request_is_section(a1);
    v20 = *(a1 + 40);
    v21 = *(*(a1 + 32) + 152);
    if (is_section)
    {
      MMCSEngineClientContextPutSectionProgress(v21, v20, *(*(a1 + 304) + 488), *a2, *a3, *(a3 + 2), v7);
    }

    else
    {
      v19.n128_u64[0] = *(a3 + 1);
      MMCSEngineClientContextPutItemProgress(v21, v20, a2[5], *a2, *a3, Mutable, v19);
    }
  }

  if (v26)
  {
    v22 = mmcs_put_request_is_section(a1);
    v23 = *(a1 + 40);
    v24 = *(*(a1 + 32) + 152);
    if (!v22)
    {
      MMCSEngineClientContextPutItemDone(v24, v23, a2[5], *a2, Mutable);
      if (!Mutable)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    MMCSEngineClientContextPutSectionDone(v24, v23, *(*(a1 + 304) + 488), *a2, Mutable);
  }

  if (Mutable)
  {
LABEL_36:
    CFRelease(Mutable);
  }

LABEL_37:
  v25 = *MEMORY[0x277D85DE8];
}

void mmcs_put_request_notify_all_items_with_pending_progress(void *a1)
{
  v1 = a1[38];
  if (*(v1 + 144))
  {
    v3 = 0;
    v4 = 316;
    do
    {
      if (*(v1 + v4) != 7)
      {
        mmcs_put_request_notify_item_with_pending_progress(a1, v1 + v4 - 164);
        v1 = a1[38];
      }

      ++v3;
      v4 += 416;
    }

    while (v3 < *(v1 + 144));
  }
}

void mmcs_put_request_notify_item_with_pending_progress(void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 328))
  {
    goto LABEL_23;
  }

  *(a2 + 328) = 0;
  v4 = a1[4];
  if (mmcs_engine_get_sparse_block_size())
  {
    v5 = a1[4];
    mmcs_engine_get_sparse_block_size();
  }

  is_section = mmcs_put_request_is_section(a1);
  v7 = *(a2 + 164);
  if (is_section)
  {
    if (v7 == 7)
    {
      v8 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"pending progress should never notify the done state or that an error has occurred");
        v10 = mmcs_logging_logger_default();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        v22 = 138543362;
        v23 = v9;
        goto LABEL_13;
      }

      goto LABEL_23;
    }

    v12 = a1[5];
    v13 = *(a1[4] + 152);
    v14 = *(a1[38] + 488);
    v15 = *a2;
    v16 = *(a2 + 248);
    v17 = *MEMORY[0x277D85DE8];

    MMCSEngineClientContextPutSectionProgress(v13, v12, v14, v15, v7, 0, 0);
  }

  else
  {
    if (v7 == 7)
    {
      v11 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"pending progress should never notify the done state or that an error has occurred");
        v10 = mmcs_logging_logger_default();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        v22 = 138543362;
        v23 = v9;
LABEL_13:
        _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_ERROR, "%{public}@", &v22, 0xCu);
LABEL_14:
        if (v9)
        {
          CFRelease(v9);
        }
      }

LABEL_23:
      v21 = *MEMORY[0x277D85DE8];
      return;
    }

    results_dictionary_for_item = mmcs_item_create_results_dictionary_for_item(a2);
    v19.n128_u64[0] = *(a2 + 248);
    MMCSEngineClientContextPutItemProgress(*(a1[4] + 152), a1[5], *(a2 + 40), *a2, *(a2 + 164), results_dictionary_for_item, v19);
    if (!results_dictionary_for_item)
    {
      goto LABEL_23;
    }

    v20 = *MEMORY[0x277D85DE8];

    CFRelease(results_dictionary_for_item);
  }
}

void mmcs_put_request_set_progress_and_notify_items_like_item(uint64_t a1, const void *a2, __int128 *a3)
{
  Value = CFDictionaryGetValue(*(*(a1 + 304) + 48), a2);
  if (Value)
  {
    v6 = Value;
    v8 = a1;
    v7 = a3[1];
    v9 = *a3;
    v10 = v7;
    v11 = *(a3 + 4);
    v12.length = CFArrayGetCount(Value);
    v12.location = 0;
    CFArrayApplyFunction(v6, v12, _mmcs_item_set_progress_and_notify_0, &v8);
  }
}

void _mmcs_item_set_progress_and_notify_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 24);
  v5[0] = *(a2 + 8);
  v5[1] = v4;
  v6 = *(a2 + 40);
  mmcs_put_request_set_progress_and_notify_item(v3, a1, v5);
}

void mmcs_put_request_set_progress_and_notify_items_with_signature_reference(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v43 = 0;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v20 = 0;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  key = a2;
  v21 = a3;
  Value = CFDictionaryGetValue(*(*(a1 + 304) + 48), &key);
  if (Value)
  {
    v8 = Value;
    v9 = *(a4 + 16);
    *&context[1] = *a4;
    v45 = v9;
    v10 = *(a4 + 32);
    context[0] = a1;
    v46 = v10;
    v48.length = CFArrayGetCount(Value);
    v48.location = 0;
    CFArrayApplyFunction(v8, v48, _mmcs_item_set_progress_and_notify_0, context);
  }

  else
  {
    v11 = mmcs_file_signature_to_hexstring(a2);
    v12 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Cannot notify; No items found with signature %s", v11);
      v14 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LODWORD(context[0]) = 138543362;
        *(context + 4) = v13;
        _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_ERROR, "%{public}@", context, 0xCu);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }

    if (v11)
    {
      free(v11);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void mmcs_put_request_set_progress_for_items_with_signature_reference(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v43 = 0;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v20 = 0;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  key = a2;
  v21 = a3;
  Value = CFDictionaryGetValue(*(*(a1 + 304) + 48), &key);
  if (Value)
  {
    v8 = Value;
    v9 = *(a4 + 16);
    *&context[1] = *a4;
    v45 = v9;
    v10 = *(a4 + 32);
    context[0] = a1;
    v46 = v10;
    v48.length = CFArrayGetCount(Value);
    v48.location = 0;
    CFArrayApplyFunction(v8, v48, _mmcs_item_set_progress, context);
  }

  else
  {
    v11 = mmcs_file_signature_to_hexstring(a2);
    v12 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Cannot notify; No items found with signature %s", v11);
      v14 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LODWORD(context[0]) = 138543362;
        *(context + 4) = v13;
        _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_ERROR, "%{public}@", context, 0xCu);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }

    if (v11)
    {
      free(v11);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void _mmcs_item_set_progress(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3[0] = *(a2 + 8);
  v3[1] = v2;
  v4 = *(a2 + 40);
  mmcs_item_set_put_progress(a1, v3, 0, 0);
}

void mmcs_put_req_context_items_by_signature_description(uint64_t a1, const __CFArray *a2, uint64_t *a3)
{
  if (mmcs_put_request_is_section(*a3))
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  mmcs_item_items_by_signature_description(a1, a2, v5);
}

void mmcs_put_req_context_did_chunk_item(uint64_t a1, uint64_t a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"completed chunk job %p", a2);
    v6 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v5;
      _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  if (!*(a1 + 144))
  {
    v8 = **(a1 + 304);
    if (v8 && CFSetContainsValue(v8, a2))
    {
      if (a2)
      {
        C3BaseRetain(a2);
        CFSetRemoveValue(**(a1 + 304), a2);
        cf = 0;
        v9 = *(a2 + 136);
        *(v9 + 256) = *(a2 + 224);
        v10 = *(a2 + 264);
        if (v10)
        {
          *&buf = 0;
          if (mmcs_chunking_profile_create(&buf, *(a2 + 256), v10))
          {
            if (buf)
            {
              if (*(v9 + 112))
              {
                mmcs_put_req_context_did_chunk_item_cold_1();
              }

              *(v9 + 112) = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, &kC3BaseArrayCallBacks);
              v11 = buf;
            }

            else
            {
              v11 = 0;
            }
          }

          else
          {
            if (buf)
            {
              C3BaseRelease(buf);
            }

            v11 = 0;
            *&buf = 0;
          }

          v17 = *(v9 + 112);
          if (v17)
          {
            CFArrayAppendValue(v17, v11);
            v11 = buf;
          }

          if (v11)
          {
            C3BaseRelease(v11);
          }
        }

        *(v9 + 128) = *(a2 + 248);
        *(a2 + 248) = 0;
        v18 = *(a2 + 280);
        if (v18)
        {
          CFRetain(v18);
          v19 = *(a2 + 280);
LABEL_35:
          cf = v19;
          goto LABEL_36;
        }

        v26 = *(a2 + 176);
        v27 = CKFileDigestResultsFileVerificationKey();
        mmcs_item_set_file_verification_key(v9, v27);
        v28 = *(a2 + 176);
        v29 = CKFileDigestResultsFileLength();
        v35 = v29;
        if (*(a2 + 256))
        {
          if (v29 < 0)
          {
            v44 = *(*(a2 + 136) + 40);
            v19 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 17, @"Calculated item size was too large (%llu) for item %lld", v30, v31, v32, v33, v34, v29);
            goto LABEL_35;
          }

          mmcs_engine_add_bytes_chunked(*(a2 + 144), v29);
          mmcs_engine_commit_if_over_threshold(*(a2 + 144));
          v36 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            v37 = *(a2 + 256);
            v38 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Got %llu chunks for %lld", v37, *(*(a2 + 136) + 40));
            v39 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v38;
              _os_log_impl(&dword_2577D8000, v39, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
            }

            if (v38)
            {
              CFRelease(v38);
            }
          }
        }

        if (mmcs_put_req_context_init_item_with_chunks(a1, v9, v35, *(a2 + 256), &cf))
        {
          *&buf = 2;
          *(&buf + 1) = 0x3FF0000000000000;
          v48 = 0;
          v49 = 0;
          v47 = 0;
          mmcs_put_request_set_progress_and_notify_items_like_item(a1, v9, &buf);
          if (gMMCS_DebugLevel >= 5)
          {
            v40 = CFCopyDescription(*(v9 + 280));
            if (gMMCS_DebugLevel >= 5)
            {
              v41 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
              {
                v42 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Item %lld outstanding chunk references for put %@", *(v9 + 40), v40);
                v43 = mmcs_logging_logger_default();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
                {
                  LODWORD(buf) = 138543362;
                  *(&buf + 4) = v42;
                  _os_log_impl(&dword_2577D8000, v43, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
                }

                if (v42)
                {
                  CFRelease(v42);
                }
              }
            }

            if (v40)
            {
              CFRelease(v40);
            }
          }

          goto LABEL_37;
        }

        v19 = cf;
LABEL_36:
        mmcs_put_item_progress_make_done_error(v19, &buf);
        mmcs_put_request_set_progress_and_notify_items_like_item(a1, v9, &buf);
LABEL_37:
        if (cf)
        {
          CFRelease(cf);
        }

        cf = 0;
        if (*(a1 + 144))
        {
          goto LABEL_41;
        }

        mmcs_put_req_context_schedule_chunk_jobs(a1);
        if (*(a1 + 144))
        {
          goto LABEL_41;
        }

        if (CFSetGetCount(**(a1 + 304)) <= 0)
        {
          mmcs_put_req_context_chunking_complete(a1);
          goto LABEL_52;
        }

        if (*(a1 + 144))
        {
LABEL_41:
          v20 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v21 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Cancelled during notification. Notifying all remaining items of cancel");
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

          v23 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v24 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Clean up put request as last step of cancel");
            v25 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v24;
              _os_log_impl(&dword_2577D8000, v25, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
            }

            if (v24)
            {
              CFRelease(v24);
            }
          }

          mmcs_metrics_request_set_error(*(a1 + 184), *(a1 + 152));
          mmcs_put_request_context_cleanup(a1, *(a1 + 152));
        }

LABEL_52:
        C3BaseRelease(a2);
        v15 = cf;
        if (!cf)
        {
          goto LABEL_7;
        }

        goto LABEL_53;
      }

      v16 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"NULL job. Ignoring");
      v14 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
LABEL_20:
        if (!v13)
        {
          goto LABEL_7;
        }

        v15 = v13;
LABEL_53:
        CFRelease(v15);
        goto LABEL_7;
      }

      LODWORD(buf) = 138543362;
      *(&buf + 4) = v13;
    }

    else
    {
      v12 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unrecogized chunk job. Ignoring");
      v14 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      LODWORD(buf) = 138543362;
      *(&buf + 4) = v13;
    }

    _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
    goto LABEL_20;
  }

LABEL_7:
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t find_put_complete(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 8))
  {
    v3 = result;
    v4 = *(result + 24);
    v5.length = CFArrayGetCount(v4);
    v5.location = 0;
    result = CFArrayContainsValue(v4, v5, *a2);
    if (result)
    {
      *(a2 + 8) = v3;
    }
  }

  return result;
}

uint64_t mmcs_register_item_create(void *a1, const void *a2)
{
  *a1 = 0;
  v4 = C3TypeRegister(&mmcs_register_itemGetTypeID_typeID);
  Instance = C3TypeCreateInstance_(0, v4, 0x90uLL);
  v6 = Instance;
  if (a2 && Instance)
  {
    Instance[2] = a2;
    CFRetain(a2);
    result = 1;
    *(v6 + 136) = 1;
    v6[10] = 0;
    v6[18] = 0;
    *a1 = v6;
  }

  else
  {
    if (Instance)
    {
      C3BaseRelease(Instance);
    }

    return 0;
  }

  return result;
}

uint64_t mmcs_register_item_get_itemid(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  if (!a1 || (v2 = *(a1 + 16)) == 0 || !CFNumberGetValue(v2, kCFNumberSInt64Type, &valuePtr))
  {
    v3 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      if (a1)
      {
        v4 = *(a1 + 16);
      }

      else
      {
        v4 = 0;
      }

      v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"error getting itemID from registerItem %p with itemID %@", a1, v4);
      v6 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v11 = v5;
        _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }
  }

  result = valuePtr;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void mmcs_register_item_set_boundary_key(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 48);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 48) = 0;
    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 48) = cf;
  }
}

void mmcs_register_item_set_file_verification_key(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 56);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 56) = 0;
    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 56) = cf;
  }
}

CFStringRef mmcs_register_item_padded_length(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v11 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs_register_item_padded_length RegisterItem cannot be NULL.");
      v10 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = 138543362;
      v21 = v3;
      goto LABEL_33;
    }

LABEL_36:
    v3 = 0;
    goto LABEL_37;
  }

  if (!*(a1 + 80))
  {
    v12 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs_register_item_padded_length RegisterItem cannot have NULL chunks.");
      v10 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = 138543362;
      v21 = v3;
      goto LABEL_33;
    }

    goto LABEL_36;
  }

  valuePtr = 0;
  if (!CFNumberGetValue(*(a1 + 120), kCFNumberSInt64Type, &valuePtr))
  {
    v13 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs_register_item_padded_length RegisterItem cannot parse registerItem->chunkCount value.");
      v10 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = 138543362;
      v21 = v3;
      goto LABEL_33;
    }

    goto LABEL_36;
  }

  if (!valuePtr)
  {
    v14 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs_register_item_padded_length RegisterItem cannot registerItem->chunkCount has invalid value %llu.", valuePtr);
      v10 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = 138543362;
      v21 = v3;
      goto LABEL_33;
    }

    goto LABEL_36;
  }

  BytePtr = CFDataGetBytePtr(*(a1 + 96));
  if (!valuePtr)
  {
LABEL_12:
    v9 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs_register_item_padded_length RegisterItem paddedFileLength cannot be zero.");
      v10 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = 138543362;
      v21 = v3;
LABEL_33:
      _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  v3 = 0;
  v4 = *BytePtr;
  v5 = *(a1 + 80);
  v6 = 1;
  while (1)
  {
    if (!v5)
    {
      v15 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs_register_item_padded_length RegisterItem chunk %llu of %llu not returned.", v6, valuePtr);
      v10 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v21 = v3;
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v4 >= 0 != (CKRegisteredChunkKey() != 0))
    {
      break;
    }

    v7 = CKRegisteredChunkLength();
    v3 = (v3 + mmcs_padded_chunk_length_with_policy_and_chunk_length(*(a1 + 40), v7));
    v5 += CKRegisteredChunkSize();
    if (v6++ >= valuePtr)
    {
      if (v3)
      {
        goto LABEL_37;
      }

      goto LABEL_12;
    }
  }

  v16 = mmcs_logging_logger_default();
  if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_36;
  }

  v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs_register_item_padded_length RegisterItem inconsistent Encryption between File and Chunks.");
  v10 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v21 = v3;
    goto LABEL_33;
  }

LABEL_34:
  if (v3)
  {
    CFRelease(v3);
    goto LABEL_36;
  }

LABEL_37:
  v17 = *MEMORY[0x277D85DE8];
  return v3;
}

CFStringRef mmcs_register_item_copy_description(uint64_t a1)
{
  v1 = *MEMORY[0x277CBECE8];
  itemid = mmcs_register_item_get_itemid(a1);
  return CFStringCreateWithFormat(v1, 0, @"<RegisterItem itemId:%llu", itemid);
}

CFStringRef mmcs_register_item_copy_short_description(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a1 + 137))
  {
    v2 = " chunk";
  }

  else
  {
    v2 = "";
  }

  v3 = *(a1 + 128);
  if (v3)
  {
    StringDescription = mmcs_cferror_copy_short_description(v3);
    v5 = *MEMORY[0x277CBECE8];
    itemid = mmcs_register_item_get_itemid(a1);
    v6 = CFStringCreateWithFormat(v5, 0, @"[%llu%s==> %@]", itemid, v2, StringDescription);
  }

  else
  {
    v10 = *(a1 + 96);
    if (!v10)
    {
      v18 = *MEMORY[0x277CBECE8];
      v19 = mmcs_register_item_get_itemid(a1);
      result = CFStringCreateWithFormat(v18, 0, @"[%llu%s]", v19, v2);
      v20 = *MEMORY[0x277D85DE8];
      return result;
    }

    StringDescription = XCFDataCreateStringDescription(v10);
    if (*(a1 + 137))
    {
      v11 = *MEMORY[0x277CBECE8];
      v12 = mmcs_register_item_get_itemid(a1);
      file_size = mmcs_register_item_get_file_size(a1);
      valuePtr = 0;
      v14 = *(a1 + 120);
      if (!v14 || !CFNumberGetValue(v14, kCFNumberSInt32Type, &valuePtr))
      {
        v15 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = CFStringCreateWithFormat(v11, 0, @"error getting chunkCount from registerItem %p with chunkCount %@", a1, *(a1 + 120));
          v17 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v29 = v16;
            _os_log_impl(&dword_2577D8000, v17, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v16)
          {
            CFRelease(v16);
          }
        }
      }

      v6 = CFStringCreateWithFormat(v11, 0, @"[%llu%s ==> %@ %llu bytes %lu chunks]", v12, v2, StringDescription, file_size, valuePtr);
    }

    else
    {
      v21 = *(a1 + 104);
      v22 = *MEMORY[0x277CBECE8];
      v23 = mmcs_register_item_get_itemid(a1);
      v24 = v23;
      if (v21)
      {
        v26 = mmcs_register_item_get_file_size(a1);
        v6 = CFStringCreateWithFormat(v22, 0, @"[%llu ==> %@  %llu bytes]", v24, StringDescription, v26);
      }

      else
      {
        v6 = CFStringCreateWithFormat(v22, 0, @"[%llu ==> %@]", v23, StringDescription);
      }
    }
  }

  v7 = v6;
  if (StringDescription)
  {
    CFRelease(StringDescription);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mmcs_register_item_get_file_size(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  if (!a1 || (v2 = *(a1 + 104)) == 0 || !CFNumberGetValue(v2, kCFNumberSInt64Type, &valuePtr))
  {
    v3 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      if (a1)
      {
        v4 = *(a1 + 104);
      }

      else
      {
        v4 = 0;
      }

      v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"error getting fileSize from registerItem %p with fileSize %@", a1, v4);
      v6 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v11 = v5;
        _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }
  }

  result = valuePtr;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mmcs_register_item_signature_equals(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 96);
  if (!v3)
  {
    mmcs_register_item_signature_equals_cold_2();
  }

  if (!*(a2 + 96))
  {
    mmcs_register_item_signature_equals_cold_1();
  }

  CFDataGetBytePtr(v3);
  CFDataGetBytePtr(*(a2 + 96));
  result = CKFileSignaturesEqual();
  if (result)
  {
    v6 = *(a1 + 24);
    v7 = *(a2 + 24);

    return XCFSafelyEquals(v6, v7);
  }

  return result;
}

uint64_t mmcs_register_item_signature_hash(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (!v1)
  {
    mmcs_register_item_signature_hash_cold_1();
  }

  return *CFDataGetBytePtr(v1);
}

const __CFNumber *mmcs_register_item_chunk_count(uint64_t a1)
{
  valuePtr = 0;
  result = *(a1 + 120);
  if (result)
  {
    if (CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr))
    {
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mmcs_register_item_chunk_length_at_index(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 80) + CKRegisteredChunkSize() * a2;

  return CKRegisteredChunkLength();
}

uint64_t mmcs_register_item_chunk_signature_at_index(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 80) + CKRegisteredChunkSize() * a2;

  return CKRegisteredChunkSignature();
}

uint64_t mmcs_register_item_chunk_key_at_index(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 80) + CKRegisteredChunkSize() * a2;

  return CKRegisteredChunkKey();
}

uint64_t mmcs_register_item_chunk_subchunk_digest_at_index(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 80) + CKRegisteredChunkSize() * a2;

  return CKRegisteredSubchunkDigest();
}

void _mmcs_register_itemCFFinalize(void *a1)
{
  mmcs_wrapping_state_set_reference_signature_and_object((a1 + 3), 0, 0);
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
    a1[6] = 0;
  }

  v3 = a1[7];
  if (v3)
  {
    CFRelease(v3);
    a1[7] = 0;
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  a1[2] = 0;
  v5 = a1[12];
  if (v5)
  {
    CFRelease(v5);
  }

  a1[12] = 0;
  v6 = a1[16];
  if (v6)
  {
    CFRelease(v6);
  }

  a1[16] = 0;
  v7 = a1[13];
  if (v7)
  {
    CFRelease(v7);
  }

  a1[13] = 0;
  v8 = a1[14];
  if (v8)
  {
    CFRelease(v8);
  }

  a1[14] = 0;
  v9 = a1[9];
  if (v9)
  {
    CFRelease(v9);
  }

  a1[9] = 0;
  v10 = a1[15];
  if (v10)
  {
    CFRelease(v10);
  }

  a1[15] = 0;
  v11 = a1[10];
  if (v11)
  {
    free(v11);
  }

  a1[10] = 0;
  v12 = a1[18];
  if (v12)
  {
    os_release(v12);
  }

  a1[18] = 0;
  v13 = a1[19];
  if (v13)
  {
    CFRelease(v13);
  }

  a1[19] = 0;
}

void mmcs_put_state_invalidate(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = 0;
    do
    {
      mmcs_put_container_invalidate(*(*(a1 + 64) + 8 * v2++));
    }

    while (v2 < *(a1 + 8));
  }
}

uint64_t mmcs_put_state_create(uint64_t **a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v5 = a3;
  v226 = *MEMORY[0x277D85DE8];
  item_signature_chunk_signature_error_with_format = 0;
  *a1 = 0;
  if (a4)
  {
    *a4 = 0;
  }

  if (!a3)
  {
    v67 = 0;
    v68 = 0;
    goto LABEL_290;
  }

  if (a3[5])
  {
    v6 = 0;
    v210 = *MEMORY[0x277CBECE8];
    do
    {
      v7 = *(v5[6] + 8 * v6);
      is_valid_n = mmcs_file_signature_is_valid_n(*(v7 + 32), *(v7 + 24));
      v12 = *(v7 + 32);
      if (is_valid_n)
      {
        v13 = mmcs_file_signature_to_hexstring(*(v7 + 32));
      }

      else if (v12)
      {
        v13 = hextostrdup(*(v7 + 32), *(v7 + 24));
        v12 = 0;
      }

      else
      {
        v13 = 0;
      }

      if (*(v7 + 48))
      {
        Data = ProtobufCBinaryData_CreateData((v7 + 56));
      }

      else
      {
        Data = 0;
      }

      error_with_error_response_and_format = mmcs_cferror_create_error_with_error_response_and_format(1, 0, 33, *(v7 + 40), @"The server returned an error for signature %s", v9, v10, v11, v13);
      v16 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = CFCopyDescription(error_with_error_response_and_format);
        v18 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          LOBYTE(v194) = v17;
          v19 = CFStringCreateWithFormat(v210, 0, @"file error %@");
          v20 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v217 = v19;
            _os_log_impl(&dword_2577D8000, v20, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v19)
          {
            CFRelease(v19);
          }
        }

        if (v17)
        {
          CFRelease(v17);
        }
      }

      if (v12)
      {
        mmcs_put_item_progress_make_done_error(error_with_error_response_and_format, buf);
        mmcs_put_request_set_progress_and_notify_items_with_signature_reference(a2, v12, Data, buf);
      }

      else
      {
        v21 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          LOBYTE(v194) = error_with_error_response_and_format;
          v22 = CFStringCreateWithFormat(v210, 0, @"putAuth response invalid: ignoring putAuth file error %@ for invalid signature %s");
          v23 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v217 = v22;
            _os_log_impl(&dword_2577D8000, v23, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v22)
          {
            CFRelease(v22);
          }
        }
      }

      if (Data)
      {
        CFRelease(Data);
      }

      if (error_with_error_response_and_format)
      {
        CFRelease(error_with_error_response_and_format);
      }

      if (v13)
      {
        free(v13);
      }

      ++v6;
    }

    while (v6 < v5[5]);
  }

  alloc = *MEMORY[0x277CBECE8];
  v211 = v5;
  if (v5[8])
  {
    v24 = 0;
    theSet = 0;
    v204 = 0;
    v25 = 0;
    v26 = a2;
    while (1)
    {
      v27 = *(v5[9] + 8 * v25);
      v28 = *(v27 + 40);
      if ((v28 - 3) >= 3)
      {
        if (v28 == 2)
        {
          theSet = (theSet + 1);
        }

        else if (v28 == 1)
        {
          ++v204;
        }
      }

      else
      {
        ++v24;
      }

      v29 = mmcs_file_signature_is_valid_n(*(v27 + 32), *(v27 + 24));
      v30 = *(v27 + 32);
      if (v29)
      {
        break;
      }

      if (!v30)
      {
        goto LABEL_49;
      }

      v31 = hextostrdup(*(v27 + 32), *(v27 + 24));
      v30 = 0;
      if (!v31)
      {
        goto LABEL_49;
      }

LABEL_50:
      if (*(v27 + 56))
      {
        v32 = ProtobufCBinaryData_CreateData((v27 + 64));
        CStringDescription = XCFDataCreateCStringDescription(v32);
        if (CStringDescription)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v32 = 0;
      }

      CStringDescription = strdup("(null)");
LABEL_55:
      if (v32)
      {
        v34 = v32;
      }

      else
      {
        v34 = @"(null)";
      }

      if (!v30)
      {
        v44 = mmcs_logging_logger_default();
        if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_82;
        }

        LOBYTE(v194) = v31;
        String = CFStringCreateWithFormat(alloc, 0, @"putAuth response invalid: ignoring putAuth success for invalid signature %s ref %@");
        v45 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
LABEL_79:
          *buf = 138543362;
          v217 = String;
          _os_log_impl(&dword_2577D8000, v45, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

LABEL_80:
        if (String)
        {
          goto LABEL_81;
        }

        goto LABEL_82;
      }

      distinct_item_with_signature_reference = mmcs_put_request_get_distinct_item_with_signature_reference(v26, v30, v32);
      if (distinct_item_with_signature_reference)
      {
        v207 = v24;
        v36 = *(v27 + 48);
        if (v36 && (v37 = distinct_item_with_signature_reference, (v38 = strlen(*(v27 + 48))) != 0))
        {
          v39 = CFStringCreateWithBytes(alloc, v36, v38, 0x8000100u, 0);
          if (v39)
          {
            v40 = v39;
            if (*(v27 + 80))
            {
              v41 = mmcs_time_convert_server_time_to_cfabsolutetime(*(v27 + 88));
              v42 = v41;
              if (v41 == 0.0)
              {
                String = 0;
              }

              else
              {
                String = XCFAbsoluteTimeDateFormatterCreateString(v41);
              }
            }

            else
            {
              String = 0;
              v42 = 0.0;
            }

            v63 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
            {
              v64 = v37[5];
              v65 = v37[2];
              *buf = 134219266;
              v217 = v64;
              v218 = 2114;
              v219 = v40;
              v220 = 2114;
              v221 = String;
              v222 = 2082;
              *v223 = v31;
              *&v223[8] = 2082;
              *&v223[10] = CStringDescription;
              v224 = 2048;
              v225 = v65;
              _os_log_impl(&dword_2577D8000, v63, OS_LOG_TYPE_DEFAULT, "Server Receipt Received. itemId:%llu receipt:%{public}@ expiry:%{public}@ sig:%{public}s ref:%{public}s len:%llu", buf, 0x3Eu);
            }

            mmcs_item_set_put_receipt_with_expiry_time(v37, v40, v42);
            mmcs_put_item_progress_make_done_success(v40, buf, v42);
            mmcs_put_request_set_progress_and_notify_items_with_signature_reference(a2, v30, v32, buf);
            v66 = v40;
            v26 = a2;
            CFRelease(v66);
          }

          else
          {
            v55 = mmcs_logging_logger_default();
            v26 = a2;
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              v61 = CFStringCreateWithFormat(alloc, 0, @"Invalid return receipt %s file signature %s ref %@", *(v27 + 48), v31, v34);
              v62 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v217 = v61;
                _os_log_impl(&dword_2577D8000, v62, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
              }

              if (v61)
              {
                CFRelease(v61);
              }
            }

            String = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Invalid return receipt for file signature %s ref %@", v56, v57, v58, v59, v60, v31);
            mmcs_put_item_progress_make_done_error(String, buf);
            mmcs_put_request_set_progress_and_notify_items_like_item(a2, v37, buf);
          }

          v24 = v207;
          if (!String)
          {
            goto LABEL_82;
          }
        }

        else
        {
          v24 = v207;
          if ((*(v27 + 40) - 3) > 2)
          {
            goto LABEL_82;
          }

          v46 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v52 = CFStringCreateWithFormat(alloc, 0, @"Invalid return receipt for success_code %d file signature %s ref %@", *(v27 + 40), v31, v34);
            v53 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v217 = v52;
              _os_log_impl(&dword_2577D8000, v53, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            v24 = v207;
            if (v52)
            {
              CFRelease(v52);
            }
          }

          String = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Invalid return receipt for file signature %s", v47, v48, v49, v50, v51, v31);
          mmcs_put_item_progress_make_done_error(String, buf);
          mmcs_put_request_set_progress_and_notify_items_with_signature_reference(v26, v30, v32, buf);
          if (!String)
          {
            goto LABEL_82;
          }
        }

LABEL_81:
        CFRelease(String);
        goto LABEL_82;
      }

      v54 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        LOBYTE(v194) = v31;
        String = CFStringCreateWithFormat(alloc, 0, @"putAuth response invalid: ignoring putAuth success unknown signature %s ref %@");
        v45 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_79;
        }

        goto LABEL_80;
      }

LABEL_82:
      if (v31)
      {
        free(v31);
      }

      v5 = v211;
      if (CStringDescription)
      {
        free(CStringDescription);
      }

      if (v32)
      {
        CFRelease(v32);
      }

      if (++v25 >= v211[8])
      {
        goto LABEL_105;
      }
    }

    v31 = mmcs_file_signature_to_hexstring(*(v27 + 32));
    if (v31)
    {
      goto LABEL_50;
    }

LABEL_49:
    v31 = strdup("(null)");
    goto LABEL_50;
  }

  theSet = 0;
  v204 = 0;
  v24 = 0;
  v26 = a2;
LABEL_105:
  v69 = v5;
  v5 = malloc_type_calloc(1uLL, 0x48uLL, 0x10E00409AC7CB0AuLL);
  v5[8] = malloc_type_calloc(1uLL, 8 * v69[3], 0x2004093837F09uLL);
  *v5 = v26;
  v5[1] = 0;
  v5[2] = CFDictionaryCreateMutable(alloc, 0, 0, 0);
  v5[3] = v24;
  v5[4] = theSet;
  v5[5] = v204;
  if (*(v69 + 14))
  {
    v70 = *(v69 + 15);
  }

  else
  {
    v70 = 0;
  }

  mmcs_request_set_reporting_level(v26, v70);
  if (*(v69 + 20))
  {
    v71 = ProtobufCBinaryData_CreateData((v211 + 11));
    v72 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      if (v71)
      {
        Length = CFDataGetLength(v71);
      }

      else
      {
        Length = 0;
      }

      *buf = 134217984;
      v217 = Length;
      _os_log_impl(&dword_2577D8000, v72, OS_LOG_TYPE_DEFAULT, "Opaque Method Completion Info List Context of Length %llu Found.", buf, 0xCu);
    }

    mmcs_put_state_set_opaque_context(v5, v71);
    if (v71)
    {
      CFRelease(v71);
    }
  }

  chunk_references = mmcs_put_req_context_get_chunk_references(v26);
  MutableCopy = CFSetCreateMutableCopy(alloc, 0, chunk_references);
  v68 = MutableCopy;
  if (!v211[3])
  {
    v76 = 0;
    v67 = 0;
LABEL_217:
    http_request_options = mmcs_request_get_http_request_options(v26);
    is_cloudkit_dataclass = mmcs_request_is_cloudkit_dataclass(v26);
    v150 = mmcs_put_request_item_count(v26);
    if (mmcs_http_request_options_should_use_bk_sys(http_request_options, is_cloudkit_dataclass, v150, v76))
    {
      http_request_options = mmcs_http_request_options_create_override_network_service_type_to_background_system_initiated_copy(http_request_options);
    }

    else if (http_request_options)
    {
      CFRetain(http_request_options);
    }

    if (v5[1])
    {
      v151 = 0;
      do
      {
        mmcs_http_request_set_options(*(*(*(v5[8] + 8 * v151++) + 16) + 24), http_request_options);
      }

      while (v151 < v5[1]);
    }

    if (http_request_options)
    {
      CFRelease(http_request_options);
    }

    if (gMMCS_DebugLevel >= 4)
    {
      Mutable = CFStringCreateMutable(alloc, 0);
      CFSetApplyFunction(v68, append_chunk_ref_signature_and_length_description, Mutable);
      v153 = mmcs_logging_logger_chunk();
      if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
      {
        Count = CFSetGetCount(v68);
        *buf = 134218242;
        v217 = Count;
        v218 = 2114;
        v219 = Mutable;
        _os_log_impl(&dword_2577D8000, v153, OS_LOG_TYPE_DEFAULT, "Unneeded chunk reference count %ld (%{public}@)", buf, 0x16u);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    CFSetApplyFunction(v68, chunk_reference_was_read, v26);
    *a1 = v5;
    v155 = 1;
    if (v67)
    {
      goto LABEL_296;
    }

    goto LABEL_297;
  }

  v67 = 0;
  v76 = 0;
  v77 = 0;
  v201 = *MEMORY[0x277CBED00];
  theSeta = MutableCopy;
LABEL_118:
  v78 = *(v211[4] + 8 * v77);
  v214 = 0;
  if (!mmcs_put_container_create((v5[8] + 8 * v77), v5))
  {
    goto LABEL_276;
  }

  ++v5[1];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(*(v5[8] + 8 * v77) + 80), &state);
  v79 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
  {
    v80 = *(v78 + 24);
    *buf = 136446210;
    v217 = v80;
    _os_log_impl(&dword_2577D8000, v79, OS_LOG_TYPE_DEFAULT, "Container %{public}s", buf, 0xCu);
  }

  v81 = *(v78 + 40);
  v82 = *(v78 + 64);
  if (v81)
  {
    v83 = v82 == 0;
  }

  else
  {
    v83 = 1;
  }

  if (!v83)
  {
    v170 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
    {
      v172 = CFStringCreateWithFormat(alloc, 0, @"Cannot have both chunk checksums and container uploade elements");
      v173 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v173, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_273;
      }

      *buf = 138543362;
      v217 = v172;
      goto LABEL_272;
    }

    goto LABEL_275;
  }

  v84 = v82 + v81;
  if (v81)
  {
    if (v84)
    {
      v174 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v174, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2577D8000, v174, OS_LOG_TYPE_FAULT, "Cannot have chunk checksums in MMCS Protocol version 5 upload.", buf, 2u);
      }

      goto LABEL_275;
    }

    goto LABEL_266;
  }

  if (!v82)
  {
    v176 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
    {
      v172 = CFStringCreateWithFormat(alloc, 0, @"Cannot have neither chunk checksums or container upload elements");
      v173 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v173, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_273;
      }

      *buf = 138543362;
      v217 = v172;
LABEL_272:
      _os_log_impl(&dword_2577D8000, v173, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_273:
      if (v172)
      {
        CFRelease(v172);
      }
    }

LABEL_275:
    os_activity_scope_leave(&state);
LABEL_276:
    v4 = a4;
    goto LABEL_290;
  }

  if (!v84)
  {
LABEL_266:
    v175 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
    {
      v172 = CFStringCreateWithFormat(alloc, 0, @"Cannot have zero container chunk instances");
      v173 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v173, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_273;
      }

      *buf = 138543362;
      v217 = v172;
      goto LABEL_272;
    }

    goto LABEL_275;
  }

  v85 = *(v5[8] + 8 * v77);
  if (!mmcs_storage_container_create(&v214, *(v78 + 24), *(v78 + 56), v84))
  {
    goto LABEL_275;
  }

  mmcs_put_container_set_storage_container(v85, v214);
  v212 = 0;
  server_version = mmcs_request_get_server_version(v26);
  v88 = mmcs_server_version_compare(server_version, v87, 3, 8) != 1 || *(mmcs_chunk_instance_offset(v26) + 174) == 0;
  if (!mmcs_storage_container_stream_create(&v212, v85, v214, v88))
  {
    goto LABEL_286;
  }

  v197 = v88;
  v208 = v84;
  mmcs_put_container_set_storage_container_stream(v85, v212);
  v89 = *(v85 + 16);
  v90 = *(v78 + 32);
  should_disable_vendor_tls = mmcs_request_should_disable_vendor_tls(v26);
  if (mmcs_http_request_create_with_host_info((v89 + 24), v90, 0, should_disable_vendor_tls, &item_signature_chunk_signature_error_with_format))
  {
    v92 = v212;
    is_put_complete_at_edge_protocol_v2 = mmcs_http_request_is_put_complete_at_edge_protocol_v2(*(*(v85 + 16) + 24));
    mmcs_storage_container_set_should_write_payload_trailer(v92, is_put_complete_at_edge_protocol_v2);
    v94 = *(*v5 + 68);
    if (v94)
    {
      v95 = v208;
      if (v94 != 2)
      {
        mmcs_put_state_create_cold_1();
      }

      if (*(*v5 + 296) && !mmcs_http_request_is_put_complete_at_edge_protocol_v2(*(*(v85 + 16) + 24)))
      {
        v185 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
        {
          v192 = CFStringCreateWithFormat(alloc, 0, @"PutCompleteAtEdge Required Version 2, Content Returned Something Else.");
          v193 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v217 = v192;
            _os_log_impl(&dword_2577D8000, v193, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v192)
          {
            CFRelease(v192);
          }
        }

        v184 = @"PutCompleteAtEdge Required Version 2, Content Returned Something Else.";
LABEL_314:
        item_signature_chunk_signature_error_with_format = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, v184, v187, v188, v189, v190, v191, v194);
        goto LABEL_286;
      }
    }

    else
    {
      v95 = v208;
      if (mmcs_http_request_is_put_complete_at_edge_protocol_v2(*(*(v85 + 16) + 24)))
      {
        v181 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v181, OS_LOG_TYPE_ERROR))
        {
          v182 = CFStringCreateWithFormat(alloc, 0, @"PutCompleteAtEdge Disabled, Content Returned PutCompleteAtEdge.");
          v183 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v183, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v217 = v182;
            _os_log_impl(&dword_2577D8000, v183, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v182)
          {
            CFRelease(v182);
          }
        }

        v184 = @"PutCompleteAtEdge Disabled, Content Returned PutCompleteAtEdge.";
        goto LABEL_314;
      }
    }

    v195 = v77;
    v196 = v76;
    http_clock_skew_metrics = mmcs_request_get_http_clock_skew_metrics(v26);
    if (http_clock_skew_metrics)
    {
      mmcs_container_set_http_clock_skew_metrics(v85, http_clock_skew_metrics);
    }

    v205 = v85;
    if (mmcs_request_get_url_expiry_override(v26))
    {
      v97 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
      {
        v194 = *(*(v78 + 32) + 120);
        v98 = CFStringCreateWithFormat(alloc, 0, @"overriding url expiry %llu from content server");
        v99 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v217 = v98;
          _os_log_impl(&dword_2577D8000, v99, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v98)
        {
          CFRelease(v98);
        }
      }

      v100 = *(v205[2] + 24);
      url_expiry_override = mmcs_request_get_url_expiry_override(v26);
      mmcs_http_request_override_url_expiry(v100, url_expiry_override);
      v95 = v208;
    }

    v102 = *(*(v78 + 32) + 128);
    if (v102)
    {
      v103 = strlen(*(v102 + 24));
      v104 = CFStringCreateWithBytes(alloc, *(v102 + 24), v103, 0x8000100u, 0);
      v105 = strlen(*(v102 + 32));
      v106 = CFStringCreateWithBytes(alloc, *(v102 + 32), v105, 0x8000100u, 0);
      v107 = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v205[4] = v107;
      CFDictionaryAddValue(v107, v104, v106);
      v108 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v217 = v104;
        v218 = 2112;
        v219 = v106;
        _os_log_impl(&dword_2577D8000, v108, OS_LOG_TYPE_DEFAULT, "AcceleratorRequestHeader (%@:%@)", buf, 0x16u);
      }

      if (v104)
      {
        CFRelease(v104);
      }

      v95 = v208;
      if (v106)
      {
        CFRelease(v106);
      }
    }

    if (v67)
    {
      CFRelease(v67);
    }

    str = CFHTTPMessageCopyHeaderFieldValue(*(*(v205[2] + 24) + 16), @"Content-Length");
    v109 = 0;
    v110 = 0;
    v111 = 8;
    while (1)
    {
      if (*(v78 + 40))
      {
        v112 = (*(v78 + 48) + v111);
      }

      else
      {
        v119 = *(*(v78 + 72) + 8 * v110);
        v120 = *(v211[9] + 8 * *(v119 + 52));
        if (*(v120 + 56))
        {
          v121 = XCFDataCreateWithBytesNoCopy(alloc, *(v120 + 72), *(v120 + 64), v201);
          v122 = mmcs_put_request_get_distinct_item_with_signature_reference(a2, *(v120 + 32), v121);
          if (v121)
          {
            CFRelease(v121);
          }

          v95 = v208;
          if (!v122)
          {
LABEL_238:
            v158 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_2577D8000, v158, OS_LOG_TYPE_ERROR, "AuthorizePut response referenced unknown chunk/file in chunkList.", buf, 2u);
            }

LABEL_287:
            v4 = a4;
            v68 = theSeta;
LABEL_288:
            v67 = str;
            goto LABEL_289;
          }
        }

        else
        {
          v122 = mmcs_put_request_get_distinct_item_with_signature_reference(a2, *(v120 + 32), 0);
          if (!v122)
          {
            goto LABEL_238;
          }
        }

        if (*(v119 + 48))
        {
          if (v211[8] <= *(v119 + 52))
          {
            v159 = mmcs_logging_logger_default();
            if (!os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_287;
            }

            v160 = CFStringCreateWithFormat(alloc, 0, @"FileOpaqueReferenceData requested by server is beyond the length of file_success list.");
            v161 = mmcs_logging_logger_default();
            v68 = theSeta;
            v67 = str;
            if (!os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_284;
            }

            *buf = 138543362;
            v217 = v160;
            goto LABEL_283;
          }

          if (!*(v122 + 104))
          {
            v162 = mmcs_logging_logger_default();
            if (!os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_287;
            }

            v160 = CFStringCreateWithFormat(alloc, 0, @"FileOpaqueReferenceData requested by server when not requested by client.");
            v161 = mmcs_logging_logger_default();
            v68 = theSeta;
            v67 = str;
            if (!os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_284;
            }

            *buf = 138543362;
            v217 = v160;
            goto LABEL_283;
          }

          FileOpaqueReferenceData = *(v122 + 26);
          if (!FileOpaqueReferenceData)
          {
            FileOpaqueReferenceData = mmcs_item_create_FileOpaqueReferenceData(v122);
            *(v122 + 26) = FileOpaqueReferenceData;
            if (!FileOpaqueReferenceData)
            {
              v178 = mmcs_logging_logger_default();
              if (!os_log_type_enabled(v178, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_287;
              }

              v160 = CFStringCreateWithFormat(alloc, 0, @"Failed to generate file opaque reference data.");
              v161 = mmcs_logging_logger_default();
              v68 = theSeta;
              v67 = str;
              if (!os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_284;
              }

              *buf = 138543362;
              v217 = v160;
LABEL_283:
              _os_log_impl(&dword_2577D8000, v161, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_284:
              if (v160)
              {
                CFRelease(v160);
              }

              goto LABEL_286;
            }
          }

          if (!CFDataGetLength(FileOpaqueReferenceData))
          {
            v163 = mmcs_logging_logger_default();
            if (!os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_287;
            }

            v160 = CFStringCreateWithFormat(alloc, 0, @"Failed to generate appropriate size for reference data.");
            v161 = mmcs_logging_logger_default();
            v68 = theSeta;
            v67 = str;
            if (!os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_284;
            }

            *buf = 138543362;
            v217 = v160;
            goto LABEL_283;
          }

          if (v110)
          {
            v129 = v214[4] + v109;
            v130 = *(v129 - 9);
            v131 = v130 + mmcs_chunk_instance_get_length(v129 - 13);
            v95 = v208;
          }

          else
          {
            v131 = 0;
          }

          mmcs_chunk_instance_init_with_file_opaque_reference_data(v214[4] + v109, v131, v110, *(v122 + 26));
          v132 = *(v122 + 26);
          if (v132)
          {
            CFRelease(v132);
          }

          *(v122 + 26) = 0;
          goto LABEL_193;
        }

        if (*(v122 + 216))
        {
          v164 = mmcs_chunk_signature_to_hexstring(*(v119 + 40));
          v165 = mmcs_file_signature_to_hexstring(*v122);
          v166 = XCFDataCreateCStringDescription(*(v122 + 8));
          v167 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v217 = "Unexpected chunk reference for metadata only item.";
            v218 = 2082;
            v219 = v164;
            v220 = 2082;
            v221 = v165;
            v222 = 2082;
            *v223 = v166;
            _os_log_impl(&dword_2577D8000, v167, OS_LOG_TYPE_ERROR, "%s: chunk:%{public}s sig:%{public}s ref:%{public}s", buf, 0x2Au);
          }

          item_signature_chunk_signature_error_with_format = mmcs_cferror_create_item_signature_chunk_signature_error_with_format(@"com.apple.mmcs", 25, *(v122 + 5), *v122, *(v119 + 40), 0, @"%s", v168, "Unexpected chunk reference for metadata only item.");
          v67 = str;
          if (v164)
          {
            free(v164);
          }

          v68 = theSeta;
          if (v165)
          {
            free(v165);
          }

          if (v166)
          {
            free(v166);
          }

          goto LABEL_286;
        }

        if (!*(v119 + 24))
        {
          v169 = mmcs_logging_logger_default();
          v68 = theSeta;
          if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
          {
            v160 = CFStringCreateWithFormat(alloc, 0, @"FileOpaqueReferenceData requested by server is unknown ContainerUploadElement type.");
            v161 = mmcs_logging_logger_default();
            v67 = str;
            if (!os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_284;
            }

            *buf = 138543362;
            v217 = v160;
            goto LABEL_283;
          }

LABEL_237:
          v4 = a4;
          goto LABEL_288;
        }

        v112 = (v119 + 40);
      }

      v113 = *v112;
      if (*v112)
      {
        chunk_reference_with_signature = mmcs_put_req_context_get_chunk_reference_with_signature(a2, *v112);
        if (!chunk_reference_with_signature)
        {
          v156 = mmcs_chunk_signature_to_hexstring(v113);
          v157 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218498;
            v217 = (v110 + 1);
            v218 = 2048;
            v219 = v208;
            v220 = 2082;
            v221 = v156;
            _os_log_impl(&dword_2577D8000, v157, OS_LOG_TYPE_ERROR, "Unknown Chunk Requested in Container at position %lu of %zu with signature %{public}s", buf, 0x20u);
          }

          v68 = theSeta;
          if (v156)
          {
            free(v156);
          }

          goto LABEL_237;
        }

        v115 = chunk_reference_with_signature;
        mmcs_chunk_reference_apply_function_to_instances(chunk_reference_with_signature, add_attributed_items, (v205[11] + 16));
        CFSetRemoveValue(theSeta, v115);
        if (v110)
        {
          v116 = v214[4] + v109;
          v117 = *(v116 - 9);
          v118 = v117 + mmcs_chunk_instance_get_length(v116 - 13);
          v95 = v208;
        }

        else
        {
          v118 = 0;
        }

        mmcs_chunk_instance_init(v214[4] + v109, v115, v118, v110, 0);
        v123 = mmcs_item_padded_chunk_length(*(*(v115 + 48) + 8), *(v115 + 4));
        *(v214[4] + v109 + 64) = v123;
        if (gMMCS_DebugLevel >= 4)
        {
          v124 = mmcs_chunk_signature_to_hexstring(v113);
          v125 = mmcs_logging_logger_chunk();
          if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
          {
            v126 = (*(v78 + 64) + *(v78 + 40));
            v127 = *(v115 + 4);
            *buf = 134219010;
            v217 = (v110 + 1);
            v218 = 2048;
            v219 = v126;
            v220 = 2048;
            v221 = v118;
            v222 = 1024;
            *v223 = v127;
            *&v223[4] = 2082;
            *&v223[6] = v124;
            _os_log_impl(&dword_2577D8000, v125, OS_LOG_TYPE_DEFAULT, "Chunk %lu of %zu at containerOffset %llu with byteLength %u has signature %{public}s", buf, 0x30u);
          }

          if (v124)
          {
            free(v124);
          }
        }
      }

LABEL_193:
      ++v110;
      v109 += 104;
      v111 += 16;
      if (v95 == v110)
      {
        mmcs_storage_container_compute_size(v214, v197);
        v133 = mmcs_request_index(v214);
        v67 = str;
        if (str)
        {
          IntValue = CFStringGetIntValue(str);
          v68 = theSeta;
          if ((IntValue & 0x80000000) == 0)
          {
            v135 = mmcs_request_index(v214);
            v136 = mmcs_logging_logger_default();
            v137 = v136;
            v26 = a2;
            if (v135 == IntValue)
            {
              if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
              {
                v194 = *v214;
                v138 = CFStringCreateWithFormat(alloc, 0, @"put container %s has expected Content-Length %llu.");
                v139 = mmcs_logging_logger_default();
                if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543362;
                  v217 = v138;
                  v140 = v139;
                  v141 = OS_LOG_TYPE_DEBUG;
                  goto LABEL_207;
                }

                goto LABEL_208;
              }
            }

            else if (os_log_type_enabled(v136, OS_LOG_TYPE_FAULT))
            {
              v145 = *v214;
              v146 = mmcs_request_index(v214);
              *buf = 136315906;
              v147 = "false";
              if (v197)
              {
                v147 = "true";
              }

              v217 = v145;
              v218 = 2048;
              v219 = v146;
              v220 = 2048;
              v221 = IntValue;
              v222 = 2080;
              *v223 = v147;
              _os_log_impl(&dword_2577D8000, v137, OS_LOG_TYPE_FAULT, "put container size mismatch containerId=%s containerLength=%llu contentLengthHeader=%llu shouldWriteToc=%s", buf, 0x2Au);
            }

            goto LABEL_214;
          }

          v144 = mmcs_logging_logger_default();
          v26 = a2;
          if (!os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_214;
          }

          v194 = *v214;
          v138 = CFStringCreateWithFormat(alloc, 0, @"put container %s has invalid Content-Length %d.");
          v143 = mmcs_logging_logger_default();
          if (!os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_208;
          }
        }

        else
        {
          v26 = a2;
          v68 = theSeta;
          if (mmcs_http_request_is_put_complete_at_edge_protocol_v2(*(v205[2] + 24)))
          {
            goto LABEL_214;
          }

          v142 = mmcs_logging_logger_default();
          if (!os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_214;
          }

          v194 = *v214;
          v138 = CFStringCreateWithFormat(alloc, 0, @"put container %s has no Content-Length header.");
          v143 = mmcs_logging_logger_default();
          if (!os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_208;
          }
        }

        *buf = 138543362;
        v217 = v138;
        v140 = v143;
        v141 = OS_LOG_TYPE_ERROR;
LABEL_207:
        _os_log_impl(&dword_2577D8000, v140, v141, "%{public}@", buf, 0xCu);
LABEL_208:
        if (v138)
        {
          CFRelease(v138);
        }

LABEL_214:
        v76 = v133 + v196;
        os_activity_scope_leave(&state);
        v77 = v195 + 1;
        if (v195 + 1 < v211[3])
        {
          goto LABEL_118;
        }

        goto LABEL_217;
      }
    }
  }

  v177 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v177, OS_LOG_TYPE_ERROR))
  {
    v160 = CFStringCreateWithFormat(alloc, 0, @"Unable to create message for storage container %s", *(*(v211[4] + 8 * v77) + 24));
    v161 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v217 = v160;
      goto LABEL_283;
    }

    goto LABEL_284;
  }

LABEL_286:
  v4 = a4;
LABEL_289:
  os_activity_scope_leave(&state);
LABEL_290:
  if (v4 && item_signature_chunk_signature_error_with_format)
  {
    CFRetain(item_signature_chunk_signature_error_with_format);
    *v4 = item_signature_chunk_signature_error_with_format;
  }

  if (v5)
  {
    mmcs_put_state_dealloc(v5);
  }

  v155 = 0;
  if (v67)
  {
LABEL_296:
    CFRelease(v67);
  }

LABEL_297:
  if (item_signature_chunk_signature_error_with_format)
  {
    CFRelease(item_signature_chunk_signature_error_with_format);
  }

  if (v68)
  {
    CFRelease(v68);
  }

  v179 = *MEMORY[0x277D85DE8];
  return v155;
}

void mmcs_put_state_set_opaque_context(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v4 = *(a1 + 48);
    if (v4 != cf)
    {
      if (v4)
      {
        CFRelease(v4);
      }

      *(a1 + 48) = 0;
      if (cf)
      {
        CFRetain(cf);
      }

      *(a1 + 48) = cf;
    }
  }
}

void append_chunk_ref_signature_and_length_description(uint64_t a1, __CFString *theString)
{
  if (CFStringGetLength(theString) >= 1)
  {
    CFStringAppend(theString, @", ");
  }

  mmcs_chunk_reference_append_signature_length_description(a1, theString);
}

void mmcs_put_state_dealloc(void *a1)
{
  if (!a1[1])
  {
    *a1 = 0;
    v4 = a1[8];
    if (!v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v2 = 0;
  do
  {
    mmcs_put_container_invalidate(*(a1[8] + 8 * v2++));
    v3 = a1[1];
  }

  while (v2 < v3);
  *a1 = 0;
  v4 = a1[8];
  if (v4)
  {
    if (v3)
    {
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[8];
        v7 = *(v6 + 8 * i);
        if (v7)
        {
          C3BaseRelease(v7);
          v6 = a1[8];
          v3 = a1[1];
        }

        *(v6 + 8 * i) = 0;
      }

      v4 = a1[8];
    }

LABEL_12:
    free(v4);
  }

LABEL_13:
  v8 = a1[6];
  if (v8)
  {
    CFRelease(v8);
  }

  a1[6] = 0;
  v9 = a1[2];
  if (v9)
  {
    CFRelease(v9);
  }

  a1[2] = 0;
  v10 = a1[7];
  if (v10)
  {
    CFRelease(v10);
  }

  free(a1);
}

BOOL mmcs_put_state_has_outstanding_async_transactions(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v2 = 0;
  do
  {
    result = mmcs_container_request_enqueued_or_inflight(*(*(a1 + 64) + 8 * v2++));
  }

  while (v2 < *(a1 + 8) && !result);
  return result;
}

uint64_t mmcs_put_state_containers_done_count(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  LODWORD(v2) = 0;
  v3 = 0;
  do
  {
    if (mmcs_container_is_done(*(*(a1 + 64) + 8 * v3)))
    {
      v2 = (v2 + 1);
    }

    else
    {
      v2 = v2;
    }

    ++v3;
  }

  while (v3 < *(a1 + 8));
  return v2;
}

uint64_t mmcs_put_state_containers_failed_count(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  LODWORD(v2) = 0;
  v3 = 0;
  do
  {
    if (mmcs_container_is_done_and_failed(*(*(a1 + 64) + 8 * v3)))
    {
      v2 = (v2 + 1);
    }

    else
    {
      v2 = v2;
    }

    ++v3;
  }

  while (v3 < *(a1 + 8));
  return v2;
}

uint64_t mmcs_put_state_get_put_container_for_storage_container_key(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v6 = *(*(a1 + 64) + 8 * i);
      has_storage_container_key = mmcs_put_container_has_storage_container_key(v6, a2);
      v2 = *(a1 + 8);
      if (has_storage_container_key)
      {
        break;
      }
    }
  }

  else
  {
    i = 0;
    v6 = 0;
  }

  if (i >= v2)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

BOOL mmcs_put_state_put_container_did_reserve_chunk_reference(uint64_t a1, const void *a2, void *key)
{
  Value = CFDictionaryGetValue(*(a1 + 16), key);
  if (Value)
  {
    return Value == a2;
  }

  CFDictionarySetValue(*(a1 + 16), key, a2);
  return 1;
}

void mmcs_put_state_container_will_be_retried(uint64_t *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = a2[11];
  v3 = *(v2 + 56);
  v4 = *(v2 + 8);
  if (*(v3 + 64) <= *(v4 + 40))
  {
    v10 = -1;
    v11 = 56;
    do
    {
      if (v10 + 1 >= *(v4 + 40))
      {
        break;
      }

      v12 = *(v4 + 32);
      if (!mmcs_chunk_instance_is_ford((v12 + v11 - 56)))
      {
        if (!mmcs_chunk_instance_is_chunk_reference((v12 + v11 - 56)))
        {
          mmcs_put_state_container_will_be_retried_cold_1();
        }

        if (mmcs_put_state_put_container_did_reserve_chunk_reference(a1, a2, *(v12 + v11)))
        {
          v13 = *(v12 + v11);
          v14 = *(v13 + 4);
          if (v10 + 1 == *(v3 + 64) && *(v3 + 72) < v14)
          {
            v14 = *(v3 + 72);
          }

          mmcs_chunk_reference_was_unread(v13, *a1, v14);
        }
      }

      ++v10;
      v11 += 104;
    }

    while (v10 < *(v3 + 64));
  }

  else
  {
    v5 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"storage container stream chunk index is beyond the storage container chunk count");
      v7 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v16 = 138543362;
        v17 = v6;
        _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_ERROR, "%{public}@", &v16, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

CFErrorRef mmcs_put_state_copy_error_for_failed_containers(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v2 = 0;
  Mutable = 0;
  v4 = *MEMORY[0x277CBECE8];
  v5 = MEMORY[0x277CBF128];
  do
  {
    primary_error = mmcs_container_get_primary_error(*(*(a1 + 64) + 8 * v2));
    if (primary_error)
    {
      v7 = primary_error;
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(v4, 0, v5);
      }

      CFArrayAppendValue(Mutable, v7);
    }

    ++v2;
  }

  while (v2 < *(a1 + 8));
  if (!Mutable)
  {
    return 0;
  }

  error_with_underlying_errors = mmcs_cferror_create_error_with_underlying_errors(@"com.apple.mmcs", 7, @"Put container failed.", Mutable, 0);
  CFRelease(Mutable);
  return error_with_underlying_errors;
}

void mmcs_put_state_process_storage_container_error_list(uint64_t *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (a2[3])
    {
      v4 = 0;
      v5 = *MEMORY[0x277CBECE8];
      do
      {
        v6 = *(a2[4] + 8 * v4);
        put_container_for_storage_container_key = mmcs_put_state_get_put_container_for_storage_container_key(a1, *(v6 + 24));
        if (put_container_for_storage_container_key)
        {
          v11 = *(v6 + 32);
          if (v11)
          {
            v12 = put_container_for_storage_container_key;
            error_with_error_response_and_format = mmcs_cferror_create_error_with_error_response_and_format(0, 1, 7, v11, @"The server returned an error for container %s", v8, v9, v10, *(v6 + 24));
            mmcs_container_set_complete_error(v12, error_with_error_response_and_format);
            v14 = mmcs_logging_logger_default();
            XCFPrint(v14, @"ContainerCompleteIssue", error_with_error_response_and_format);
LABEL_7:
            if (error_with_error_response_and_format)
            {
              CFRelease(error_with_error_response_and_format);
            }
          }
        }

        else
        {
          v15 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            error_with_error_response_and_format = CFStringCreateWithFormat(v5, 0, @"no storage container matching key %s", *(v6 + 24));
            v16 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v24 = error_with_error_response_and_format;
              _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            goto LABEL_7;
          }
        }

        ++v4;
      }

      while (v4 < a2[3]);
    }

    if (a2[5])
    {
      v17 = 0;
      do
      {
        mmcs_put_state_process_file_error(a1, *(a2[6] + 8 * v17++));
      }

      while (v17 < a2[5]);
    }

    if (a2[7])
    {
      v18 = 0;
      do
      {
        mmcs_put_state_process_file_success(a1, *(a2[8] + 8 * v18++));
      }

      while (v18 < a2[7]);
    }
  }

  else
  {
    v19 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Malformed putComplete response body");
      v21 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v24 = v20;
        _os_log_impl(&dword_2577D8000, v21, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v20)
      {
        CFRelease(v20);
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void mmcs_put_state_process_file_error(uint64_t *a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  is_valid_n = mmcs_file_signature_is_valid_n(*(a2 + 32), *(a2 + 24));
  v5 = *(a2 + 32);
  if (is_valid_n)
  {
    v6 = mmcs_file_signature_to_hexstring(*(a2 + 32));
    if (v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (!v5 || (v6 = hextostrdup(*(a2 + 32), *(a2 + 24)), v5 = 0, !v6))
  {
LABEL_6:
    v6 = strdup("(null)");
  }

LABEL_7:
  if (*(a2 + 48))
  {
    Data = ProtobufCBinaryData_CreateData((a2 + 56));
    CStringDescription = XCFDataCreateCStringDescription(Data);
    if (CStringDescription)
    {
      goto LABEL_12;
    }
  }

  else
  {
    Data = 0;
  }

  CStringDescription = strdup("(null)");
LABEL_12:
  error_with_error_response_and_format = mmcs_cferror_create_error_with_error_response_and_format(0, 1, 33, *(a2 + 40), @"The server returned an error. sig:%s ref:%s", v8, v9, v10, v6);
  v13 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = CFCopyDescription(error_with_error_response_and_format);
    v15 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"file error %@", v14, CStringDescription);
      v17 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v25 = v16;
        _os_log_impl(&dword_2577D8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v16)
      {
        CFRelease(v16);
      }
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  if (!v5)
  {
    v19 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"PutComplete response invalid: ignoring putComplete file error %@ for invalid item. sig:%s ref:%s", error_with_error_response_and_format, v6, CStringDescription);
    v21 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    *buf = 138543362;
    v25 = v20;
    goto LABEL_29;
  }

  distinct_item_with_signature_reference = mmcs_put_request_get_distinct_item_with_signature_reference(*a1, v5, Data);
  if (distinct_item_with_signature_reference)
  {
    mmcs_item_set_server_error(distinct_item_with_signature_reference, error_with_error_response_and_format);
    goto LABEL_32;
  }

  v22 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"PutComplete response error: ignoring putComplete file error %@; cannot find item. sig:%s ref:%s", error_with_error_response_and_format, v6, CStringDescription);
    v21 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    *buf = 138543362;
    v25 = v20;
LABEL_29:
    _os_log_impl(&dword_2577D8000, v21, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_30:
    if (v20)
    {
      CFRelease(v20);
    }
  }

LABEL_32:
  if (error_with_error_response_and_format)
  {
    CFRelease(error_with_error_response_and_format);
  }

  if (Data)
  {
    CFRelease(Data);
  }

  if (v6)
  {
    free(v6);
  }

  if (CStringDescription)
  {
    free(CStringDescription);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void mmcs_put_state_process_file_success(uint64_t *a1, uint64_t a2)
{
  v63 = *MEMORY[0x277D85DE8];
  is_valid_n = mmcs_file_signature_is_valid_n(*(a2 + 32), *(a2 + 24));
  v5 = *(a2 + 32);
  if (is_valid_n)
  {
    v6 = mmcs_file_signature_to_hexstring(*(a2 + 32));
    if (v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (!v5 || (v6 = hextostrdup(*(a2 + 32), *(a2 + 24)), v5 = 0, !v6))
  {
LABEL_6:
    v6 = strdup("(null)");
  }

LABEL_7:
  if (*(a2 + 56))
  {
    Data = ProtobufCBinaryData_CreateData((a2 + 64));
    CStringDescription = XCFDataCreateCStringDescription(Data);
    if (CStringDescription)
    {
      if (v5)
      {
        goto LABEL_10;
      }

LABEL_24:
      v19 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_46;
      }

      String = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"PutComplete response invalid: ignoring putAuth success for invalid item. sig:%s ref:%s", v6, CStringDescription);
      v20 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_44;
      }

      *buf = 138543362;
      v52 = String;
      goto LABEL_42;
    }
  }

  else
  {
    Data = 0;
  }

  CStringDescription = strdup("(null)");
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_10:
  distinct_item_with_signature_reference = mmcs_put_request_get_distinct_item_with_signature_reference(*a1, v5, Data);
  if (Data)
  {
    CFRelease(Data);
  }

  if (!distinct_item_with_signature_reference)
  {
    v21 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    String = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"PutComplete response invalid: ignoring putAuth success for unknown item. sig:%s ref:%s", v6, CStringDescription);
    v20 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 138543362;
    v52 = String;
LABEL_42:
    v33 = v20;
    v34 = OS_LOG_TYPE_ERROR;
    goto LABEL_43;
  }

  v10 = *(a2 + 40);
  if (v10 != 5)
  {
    if (v10 == 2)
    {
      v31 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }

      String = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"One or more contributing containers. sig:%s ref:%s len:%llu", v6, CStringDescription, distinct_item_with_signature_reference[2]);
      v32 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v52 = String;
        v33 = v32;
        v34 = OS_LOG_TYPE_DEFAULT;
LABEL_43:
        _os_log_impl(&dword_2577D8000, v33, v34, "%{public}@", buf, 0xCu);
      }
    }

    else
    {
      if (v10 == 1)
      {
        goto LABEL_16;
      }

      v35 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_46;
      }

      String = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unknown success code %d. sig:%s ref:%s len:%llu", *(a2 + 40), v6, CStringDescription, distinct_item_with_signature_reference[2]);
      v20 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v52 = String;
        goto LABEL_42;
      }
    }

LABEL_44:
    if (!String)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_16:
  v11 = *(a2 + 48);
  if (!v11 || (v12 = strlen(*(a2 + 48))) == 0)
  {
    v22 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v28 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid return receipt for success_code %d. sig:%s ref:%s len:%llu", *(a2 + 40), v6, CStringDescription, distinct_item_with_signature_reference[2]);
      v29 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v52 = v28;
        _os_log_impl(&dword_2577D8000, v29, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v28)
      {
        CFRelease(v28);
      }
    }

    v50 = distinct_item_with_signature_reference[2];
    v30 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Invalid return receipt. sig:%s ref:%s len:%llu", v23, v24, v25, v26, v27, v6);
LABEL_57:
    String = v30;
    v45 = *a1;
    mmcs_put_item_progress_make_done_error(v30, buf);
    mmcs_put_request_set_progress_and_notify_items_like_item(v45, distinct_item_with_signature_reference, buf);
    if (!String)
    {
      goto LABEL_46;
    }

LABEL_45:
    CFRelease(String);
    goto LABEL_46;
  }

  v13 = *MEMORY[0x277CBECE8];
  v14 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v11, v12, 0x8000100u, 0);
  if (!v14)
  {
    v37 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v43 = CFStringCreateWithFormat(v13, 0, @"Invalid receipt received. receipt:%s sig:%s ref:%s len:%llu", *(a2 + 48), v6, CStringDescription, distinct_item_with_signature_reference[2]);
      v44 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v52 = v43;
        _os_log_impl(&dword_2577D8000, v44, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v43)
      {
        CFRelease(v43);
      }
    }

    v30 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Invalid return receipt for file signature %s", v38, v39, v40, v41, v42, v6);
    goto LABEL_57;
  }

  v15 = v14;
  if (*(a2 + 80))
  {
    v16 = mmcs_time_convert_server_time_to_cfabsolutetime(*(a2 + 88));
    v17 = v16;
    if (v16 == 0.0)
    {
      String = 0;
    }

    else
    {
      String = XCFAbsoluteTimeDateFormatterCreateString(v16);
    }
  }

  else
  {
    String = 0;
    v17 = 0.0;
  }

  v46 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v47 = distinct_item_with_signature_reference[5];
    v48 = distinct_item_with_signature_reference[2];
    *buf = 134219266;
    v52 = v47;
    v53 = 2114;
    v54 = v15;
    v55 = 2114;
    v56 = String;
    v57 = 2082;
    v58 = v6;
    v59 = 2082;
    v60 = CStringDescription;
    v61 = 2048;
    v62 = v48;
    _os_log_impl(&dword_2577D8000, v46, OS_LOG_TYPE_DEFAULT, "Server Receipt Received. itemId:%llu receipt:%{public}@ expiry:%{public}@ sig:%{public}s ref:%{public}s len:%llu", buf, 0x3Eu);
  }

  mmcs_item_set_put_receipt_with_expiry_time(distinct_item_with_signature_reference, v15, v17);
  v49 = *a1;
  mmcs_put_item_progress_make_done_success(v15, buf, v17);
  mmcs_put_request_set_progress_and_notify_items_like_item(v49, distinct_item_with_signature_reference, buf);
  CFRelease(v15);
  if (String)
  {
    goto LABEL_45;
  }

LABEL_46:
  if (v6)
  {
    free(v6);
  }

  if (CStringDescription)
  {
    free(CStringDescription);
  }

  v36 = *MEMORY[0x277D85DE8];
}

void mmcs_put_state_process_clone_complete(uint64_t *a1, void *a2)
{
  if (a2[5])
  {
    v4 = 0;
    do
    {
      mmcs_put_state_process_file_error(a1, *(a2[6] + 8 * v4++));
    }

    while (v4 < a2[5]);
  }

  if (a2[3])
  {
    v5 = 0;
    do
    {
      mmcs_put_state_process_file_success(a1, *(a2[4] + 8 * v5++));
    }

    while (v5 < a2[3]);
  }
}

CFDataRef mmcs_put_state_create_put_complete_request_body(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  MethocCompletionInfoList = mmcs_put_state_create_MethocCompletionInfoList(a1, a2);
  if (!MethocCompletionInfoList)
  {
    return 0;
  }

  v3 = MethocCompletionInfoList;
  packed_size = chunkserver__method_completion_info_list__get_packed_size(MethocCompletionInfoList);
  v5 = malloc_type_malloc(packed_size, 0x100004077774924uLL);
  chunkserver__method_completion_info_list__pack(v3, v5);
  v6 = XCFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v5, packed_size, *MEMORY[0x277CBECF0]);
  chunkserver__method_completion_info_list__free_unpacked(v3, 0);
  return v6;
}

void *mmcs_put_state_create_MethocCompletionInfoList(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = malloc_type_malloc(0x40uLL, 0x10F0040790CF86CuLL);
  if (v4)
  {
    Count = CFArrayGetCount(*(a2 + 24));
    if (Count < 1)
    {
      chunkserver__method_completion_info_list__init(v4);
      v6 = 0;
      v4[3] = 0;
      v13 = v4 + 3;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 24), v7);
        v9 = ValueAtIndex[3];
        if (v9)
        {
          if (*(v9 + 16))
          {
            mmcs_put_state_create_MethocCompletionInfoList_cold_1();
          }

          v10 = *(v9 + 40);
          if (v10)
          {
            v6 += CFArrayGetCount(v10);
          }
        }

        v11 = ValueAtIndex[2];
        if (v11)
        {
          if (*(v11 + 16))
          {
            mmcs_put_state_create_MethocCompletionInfoList_cold_2();
          }

          v12 = *(v11 + 40);
          if (v12)
          {
            v6 += CFArrayGetCount(v12);
          }
        }

        if (ValueAtIndex[5])
        {
          ++v6;
        }

        ++v7;
      }

      while (Count != v7);
      chunkserver__method_completion_info_list__init(v4);
      v4[3] = 0;
      v13 = v4 + 3;
      if (v6 > 0)
      {
        v14 = malloc_type_calloc(1uLL, 8 * v6, 0x2004093837F09uLL);
        v4[4] = v14;
        if (!v14)
        {
          goto LABEL_42;
        }

        goto LABEL_20;
      }
    }

    if (!v4[4])
    {
LABEL_42:
      chunkserver__method_completion_info_list__free_unpacked(v4, 0);
      goto LABEL_43;
    }

LABEL_20:
    if (Count < 1)
    {
      v25 = 0;
    }

    else
    {
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = CFArrayGetValueAtIndex(*(a2 + 24), v15);
        v18 = v17[3];
        if (v18)
        {
          if (*(v18 + 16))
          {
            mmcs_put_state_create_MethocCompletionInfoList_cold_3();
          }

          v19 = *(v18 + 40);
          if (v19)
          {
            v36.length = CFArrayGetCount(*(v18 + 40));
            v36.location = 0;
            CFArrayApplyFunction(v19, v36, _copy_methodCompletionInfoToList_0, v4);
          }
        }

        v20 = v17[2];
        if (v20)
        {
          if (*(v20 + 16))
          {
            mmcs_put_state_create_MethocCompletionInfoList_cold_4();
          }

          v21 = *(v20 + 40);
          if (v21)
          {
            v37.length = CFArrayGetCount(*(v20 + 40));
            v37.location = 0;
            CFArrayApplyFunction(v21, v37, _copy_methodCompletionInfoToList_0, v4);
          }
        }

        if (v17[5])
        {
          method_completion_info = mmcs_put_container_create_method_completion_info(v17, v17[2], 0);
          if (method_completion_info)
          {
            v24 = v4[3];
            v23 = v4[4];
            v4[3] = v24 + 1;
            *(v23 + 8 * v24) = method_completion_info;
          }

          else
          {
            v16 = 0;
          }
        }

        ++v15;
      }

      while (Count != v15);
      v25 = v16 == 0;
    }

    if (*(a1 + 48))
    {
      v26 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        Length = CFDataGetLength(*(a1 + 48));
        *buf = 134217984;
        v34 = Length;
        _os_log_impl(&dword_2577D8000, v26, OS_LOG_TYPE_DEFAULT, "Opaque Method Completion Info List Context of Length %llu Set.", buf, 0xCu);
      }

      *(v4 + 10) = 1;
      ProtobufCBinaryData_SetData(v4 + 6, *(a1 + 48));
    }

    if (!v25)
    {
      if (*v13 == v6)
      {
        goto LABEL_43;
      }

      v30 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"error Put MethodCompletionInfoList for putComplete (%p) creating response list", a2);
        v32 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v34 = v31;
          _os_log_impl(&dword_2577D8000, v32, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v31)
        {
          CFRelease(v31);
        }
      }
    }

    goto LABEL_42;
  }

LABEL_43:
  v28 = *MEMORY[0x277D85DE8];
  return v4;
}

CFDataRef mmcs_put_state_create_clone_complete_request_body(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  FileChunkLists = mmcs_put_request_create_FileChunkLists(a1);
  if (!FileChunkLists)
  {
    return 0;
  }

  v6 = FileChunkLists;
  MethocCompletionInfoList = mmcs_put_state_create_MethocCompletionInfoList(a2, a3);
  if (MethocCompletionInfoList && (v8 = malloc_type_malloc(0x28uLL, 0x1060040A76FABEDuLL)) != 0)
  {
    v9 = v8;
    chunkserver__clone_complete_request__init(v8);
    v9[3] = v6;
    v9[4] = MethocCompletionInfoList;
    packed_size = chunkserver__clone_complete_request__get_packed_size(v9);
    v11 = malloc_type_malloc(packed_size, 0x100004077774924uLL);
    chunkserver__clone_complete_request__pack(v9, v11);
    v12 = XCFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v11, packed_size, *MEMORY[0x277CBECF0]);
    free(v9);
  }

  else
  {
    v12 = 0;
  }

  chunkserver__method_completion_info_list__free_unpacked(MethocCompletionInfoList, 0);
  mmcs_free_FileChunkLists(v6);
  return v12;
}

_BYTE *_copy_methodCompletionInfoToList_0(void **a1, uint64_t a2)
{
  result = Copy_MethodCompletionInfo(a1);
  if (result)
  {
    v5 = *(a2 + 24);
    v4 = *(a2 + 32);
    *(a2 + 24) = v5 + 1;
    *(v4 + 8 * v5) = result;
  }

  return result;
}

uint64_t mmcs_storage_container_init(uint64_t a1, char *__s1, const char *a3, uint64_t a4)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *a1 = strdup(__s1);
  *(a1 + 8) = 0;
  *(a1 + 40) = a4;
  *(a1 + 24) = 0;
  if (!a4 || (result = malloc_type_calloc(1uLL, 104 * a4, 0x1060040917B5EB5uLL), (*(a1 + 32) = result) != 0))
  {
    if (a3)
    {
      *(a1 + 16) = strdup(a3);
    }

    return 1;
  }

  return result;
}

uint64_t mmcs_storage_container_create(void *a1, char *a2, const char *a3, uint64_t a4)
{
  *a1 = 0;
  result = malloc_type_malloc(0x30uLL, 0x1070040E3208243uLL);
  if (result)
  {
    v9 = result;
    if (mmcs_storage_container_init(result, a2, a3, a4))
    {
      *a1 = v9;
      return 1;
    }

    else
    {
      free(v9);
      return 0;
    }
  }

  return result;
}

void mmcs_storage_container_finalize(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  *a1 = 0;
  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  a1[1] = 0;
  mmcs_storage_container_cleanup_instances(a1);
  v4 = a1[2];
  if (v4)
  {
    free(v4);
  }

  a1[2] = 0;
}

void mmcs_storage_container_cleanup_instances(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (!*(a1 + 40))
    {
      goto LABEL_6;
    }

    v3 = 0;
    v4 = 0;
    do
    {
      mmcs_chunk_instance_finalize((*(a1 + 32) + v3));
      ++v4;
      v3 += 104;
    }

    while (v4 < *(a1 + 40));
    v2 = *(a1 + 32);
    if (v2)
    {
LABEL_6:
      free(v2);
    }

    *(a1 + 32) = 0;
  }

  *(a1 + 40) = 0;
}

void mmcs_storage_container_dealloc(void **a1)
{
  mmcs_storage_container_finalize(a1);
  if (a1)
  {

    free(a1);
  }
}

uint64_t mmcs_storage_container_compute_size(uint64_t result, int a2)
{
  v2 = result;
  v3 = *(result + 40);
  if (!a2)
  {
    v8 = 0;
    if (!v3)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v3)
  {
    v4 = 0;
    v5 = 4;
    v6 = 56;
    do
    {
      v7 = *(*(v2[4] + v6) + 8);
      result = CKChunkSchemeAndSignatureSize();
      v5 += result + 4;
      ++v4;
      v3 = v2[5];
      v6 += 104;
    }

    while (v4 < v3);
  }

  else
  {
    v5 = 4;
  }

  v8 = v2[3] + v5;
  if (v3)
  {
LABEL_10:
    v9 = 0;
    v10 = 0;
    do
    {
      result = mmcs_chunk_instance_get_length((v2[4] + v9));
      v8 += result;
      ++v10;
      v9 += 104;
    }

    while (v10 < v2[5]);
  }

LABEL_12:
  v2[3] = v8;
  return result;
}

void mmcs_storage_container_set_message_digest(void *a1, CFTypeRef cf)
{
  v11 = *MEMORY[0x277D85DE8];
  if (gMMCS_DebugLevel >= 4)
  {
    v4 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"container %s set message digest %@", *a1, cf);
      v6 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v10 = v5;
        _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }
  }

  v7 = a1[1];
  if (v7 != cf)
  {
    if (v7)
    {
      CFRelease(v7);
    }

    a1[1] = cf;
    if (cf)
    {
      CFRetain(cf);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void *mmcs_epilogue_buffer_init(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  result[2] = 0;
  return result;
}

uint64_t mmcs_epilogue_buffer_send(uint64_t result, uint64_t a2, unint64_t a3, void *a4, unint64_t *a5)
{
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v6 + a3 > v5)
  {
    v7 = a3 - v5 + v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3 >= v5;
  v9 = a3 - v5;
  if (!v8)
  {
    v6 = v7;
    v9 = 0;
  }

  if (a4)
  {
    *a4 = v6;
  }

  if (a5)
  {
    *a5 = v9;
  }

  return result;
}

void *mmcs_epilogue_buffer_append(uint64_t a1, uint64_t a2, size_t a3)
{
  v3 = a3;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = v6 - a3;
  if (v6 > a3 && v7 + a3 > v6)
  {
    memmove(*a1, (*a1 + v7 - v8), v8);
    *(a1 + 16) = v8;
    v6 = *(a1 + 8);
    v7 = v8;
  }

  v10 = v3 - v6;
  if (v3 >= v6)
  {
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = v7;
  }

  if (v6 < v3)
  {
    v3 = v6;
  }

  result = memcpy((*a1 + v11), (a2 + v10), v3);
  *(a1 + 16) = v11 + v3;
  return result;
}

double opaque__file_reference_data__v1__chunk__init(uint64_t a1)
{
  *(a1 + 32) = xmmword_279845708;
  *(a1 + 48) = unk_279845718;
  *(a1 + 64) = xmmword_279845728;
  *(a1 + 80) = 0;
  result = *&opaque__file_reference_data__v1__chunk__init_init_value;
  *a1 = opaque__file_reference_data__v1__chunk__init_init_value;
  *(a1 + 16) = unk_2798456F8;
  return result;
}

double opaque__file_reference_data__v1__init(_OWORD *a1)
{
  *a1 = opaque__file_reference_data__v1__init_init_value;
  a1[1] = *algn_279845750;
  result = 0.0;
  a1[2] = xmmword_279845760;
  a1[3] = unk_279845770;
  return result;
}

double opaque__file_reference_data__v2__chunk_group__chunk__init(_OWORD *a1)
{
  *a1 = opaque__file_reference_data__v2__chunk_group__chunk__init_init_value;
  a1[1] = *algn_279845790;
  result = 0.0;
  a1[2] = xmmword_2798457A0;
  a1[3] = unk_2798457B0;
  return result;
}

double opaque__file_reference_data__v2__chunk_group__init(uint64_t a1)
{
  *a1 = opaque__file_reference_data__v2__chunk_group__init_init_value;
  *(a1 + 16) = *algn_2798457D0;
  result = 0.0;
  *(a1 + 32) = xmmword_2798457E0;
  *(a1 + 48) = 0;
  return result;
}

double opaque__file_reference_data__v2__init(uint64_t a1)
{
  *a1 = opaque__file_reference_data__v2__init_init_value;
  *(a1 + 16) = unk_279845808;
  result = 0.0;
  *(a1 + 32) = xmmword_279845818;
  *(a1 + 48) = 0;
  return result;
}

double opaque__file_reference_data__v3__chunk__init(_OWORD *a1)
{
  *a1 = opaque__file_reference_data__v3__chunk__init_init_value;
  a1[1] = unk_279845840;
  result = 0.0;
  a1[2] = xmmword_279845850;
  a1[3] = unk_279845860;
  return result;
}

double opaque__file_reference_data__v3__chunk_length_index_set__index_range__init(uint64_t a1)
{
  result = *&opaque__file_reference_data__v3__chunk_length_index_set__index_range__init_init_value;
  *a1 = opaque__file_reference_data__v3__chunk_length_index_set__index_range__init_init_value;
  *(a1 + 16) = unk_279845880;
  *(a1 + 32) = 0;
  return result;
}

double opaque__file_reference_data__v3__chunk_length_index_set__init(uint64_t a1)
{
  *a1 = opaque__file_reference_data__v3__chunk_length_index_set__init_init_value;
  *(a1 + 16) = unk_2798458A8;
  result = 0.0;
  *(a1 + 32) = xmmword_2798458B8;
  *(a1 + 48) = 0;
  return result;
}

double opaque__file_reference_data__v3__init(uint64_t a1)
{
  *(a1 + 32) = xmmword_2798458F0;
  *(a1 + 48) = unk_279845900;
  *(a1 + 64) = 0;
  result = dbl_2798458E0[0];
  *a1 = opaque__file_reference_data__v3__init_init_value;
  *(a1 + 16) = *dbl_2798458E0;
  return result;
}

double opaque__file_reference_data__ranged_item__init(uint64_t a1)
{
  *a1 = opaque__file_reference_data__ranged_item__init_init_value;
  *(a1 + 16) = unk_279845928;
  result = 0.0;
  *(a1 + 32) = xmmword_279845938;
  *(a1 + 48) = 0;
  return result;
}

double opaque__file_reference_data__init(_OWORD *a1)
{
  *a1 = opaque__file_reference_data__init_init_value;
  a1[1] = unk_279845960;
  result = 0.0;
  a1[2] = xmmword_279845970;
  a1[3] = unk_279845980;
  return result;
}

uint64_t opaque__file_reference_data__get_packed_size(void **a1)
{
  if (*a1 != &opaque__file_reference_data__descriptor)
  {
    opaque__file_reference_data__get_packed_size_cold_1();
  }

  return protobuf_c_message_get_packed_size(a1);
}

uint64_t opaque__file_reference_data__pack(void **a1, uint64_t a2)
{
  if (*a1 != &opaque__file_reference_data__descriptor)
  {
    opaque__file_reference_data__pack_cold_1();
  }

  return protobuf_c_message_pack(a1, a2);
}

void **opaque__file_reference_data__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &opaque__file_reference_data__descriptor)
    {
      opaque__file_reference_data__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

uint64_t mmcs_storage_container_stream_create(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (result)
  {
    v7 = result;
    *result = 0;
    result = malloc_type_calloc(1uLL, 0x70uLL, 0x1060040E30FB482uLL);
    if (result)
    {
      v8 = result;
      if (mmcs_storage_container_stream_init(result, a2, a3, a4))
      {
        *v7 = v8;
        return 1;
      }

      else
      {
        mmcs_storage_container_stream_dealloc(v8);
        return 0;
      }
    }
  }

  return result;
}

uint64_t mmcs_storage_container_stream_init(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = 0;
  if (a1 && a2 && a3)
  {
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 48) = a4;
    *(a1 + 96) = 0;
    result = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
    *(a1 + 16) = result;
    if (result)
    {
      mmcs_storage_container_stream_reset(a1);
      return 1;
    }
  }

  return result;
}

void mmcs_storage_container_stream_dealloc(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v2 = a1[2];
  if (v2)
  {
    free(v2);
  }

  a1[2] = 0;
  mmcs_storage_container_stream_clear_item_reader_cache(a1);
  v3 = a1[5];
  if (v3)
  {
    free(v3);
  }

  a1[5] = 0;
  v4 = a1[13];
  if (v4)
  {
    CFRelease(v4);
  }

  a1[13] = 0;
  v5 = a1[10];
  if (v5)
  {
    C3BaseRelease(v5);
  }

  free(a1);
}

uint64_t mmcs_storage_container_stream_reset(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    mmcs_storage_container_stream_reset_cold_1();
  }

  CC_MD5_Init(v2);
  mmcs_storage_container_set_message_digest(*(a1 + 8), 0);
  mmcs_storage_container_stream_clear_item_reader_cache(a1);
  v3 = *(a1 + 40);
  if (v3)
  {
    free(v3);
  }

  *(a1 + 40) = 0;
  if (!*(a1 + 48))
  {
    *(a1 + 56) = *(*(a1 + 8) + 40);
  }

  *(a1 + 88) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v4 = *(a1 + 104);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 104) = 0;
  v5 = *(a1 + 80);
  if (v5)
  {
    C3BaseRelease(v5);
  }

  *(a1 + 80) = 0;
  return 1;
}

void mmcs_storage_container_stream_clear_item_reader_cache(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    MMCSItemReaderWriterEnsureClosed(v2);
    v3 = *(a1 + 24);
    if (v3)
    {
      C3BaseRelease(v3);
    }

    *(a1 + 24) = 0;
  }

  *(a1 + 32) = -1;
}

uint64_t mmcs_storage_container_stream_read(uint64_t *a1, CFDataRef theData, unint64_t a3, CFErrorRef *a4, _BYTE *a5)
{
  v5 = a4;
  v6 = a3;
  v226 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v9 = 0;
  if (!a1 || !theData || !a3)
  {
    goto LABEL_187;
  }

  Length = CFDataGetLength(theData);
  v10 = a1[7];
  v11 = a1[1];
  v12 = *(v11 + 40);
  if (v10 < v12)
  {
    v13 = v5;
    *bytes = 0;
    while (1)
    {
      v14 = *(v11 + 32) + 104 * v10;
      v15 = *(*(v14 + 56) + 8);
      v16 = CKChunkSchemeAndSignatureSize();
      v10 = a1[7];
      v17 = v10 ? 4 : 8;
      v18 = v17 + v16;
      v19 = v6 - v18;
      if (v6 < v18)
      {
        break;
      }

      if (!v10)
      {
        *bytes = bswap32(*(a1[1] + 40));
        CFDataAppendBytes(theData, bytes, 4);
      }

      v20 = *(*(v14 + 56) + 8);
      v21 = CKChunkSchemeAndSignatureSize();
      CFDataAppendBytes(theData, v20, v21);
      *bytes = 0;
      *bytes = bswap32(*(v14 + 64));
      CFDataAppendBytes(theData, bytes, 4);
      v10 = a1[7] + 1;
      a1[7] = v10;
      v11 = a1[1];
      v12 = *(v11 + 40);
      v6 = v19;
      if (v10 >= v12)
      {
        v6 = v19;
        goto LABEL_19;
      }
    }

    v12 = *(a1[1] + 40);
LABEL_19:
    v5 = v13;
  }

  if (v10 < v12)
  {
    v22 = 0;
LABEL_27:
    v32 = 0;
LABEL_28:
    v34 = CFDataGetLength(theData);
    v35 = v34 - Length;
    if (v34 - Length >= 1)
    {
      MutableBytePtr = CFDataGetMutableBytePtr(theData);
      CC_MD5_Update(a1[2], &MutableBytePtr[Length], v35);
      if (v22)
      {
        v37 = malloc_type_calloc(1uLL, 0x10uLL, 0x100004077774924uLL);
        CC_MD5_Final(v37, a1[2]);
        v38 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v39 = v5;
          v40 = hextostrdup(v37, 0x10uLL);
          v41 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            *bytes = 136446210;
            *&bytes[4] = v40;
            _os_log_impl(&dword_2577D8000, v41, OS_LOG_TYPE_INFO, "client computed container md5 %{public}s", bytes, 0xCu);
          }

          v5 = v39;
          if (v40)
          {
            free(v40);
          }
        }

        v42 = XCFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v37, 16, *MEMORY[0x277CBECF0]);
        mmcs_storage_container_set_message_digest(a1[1], v42);
        if (v42)
        {
          CFRelease(v42);
        }
      }
    }

    v43 = 0;
    v44 = 1;
    v9 = 1;
    goto LABEL_38;
  }

  item_signature_chunk_signature_error_with_format = 0;
  v22 = a1[8] >= v12;
  if (!v6)
  {
    goto LABEL_27;
  }

  if (mmcs_request_is_container_interrupted_mode(***(*a1 + 88)))
  {
    v28 = a1[11];
    v29 = (CFDataGetLength(theData) + v28);
    if (mmcs_request_index(*(*(*a1 + 88) + 8)) * 0.1 < v29)
    {
      error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Simulate a container failure after making around 10 percent progress.", v23, v24, v25, v26, v27, v202);
      item_signature_chunk_signature_error_with_format = error;
      if (!error)
      {
        goto LABEL_216;
      }

LABEL_26:
      CFRetain(error);
      v31 = 1;
      v32 = item_signature_chunk_signature_error_with_format;
      v33 = item_signature_chunk_signature_error_with_format;
LABEL_195:
      if (v33)
      {
        CFRelease(v33);
      }

      if (v31)
      {
        v44 = 0;
        v9 = 0;
        goto LABEL_217;
      }

      goto LABEL_28;
    }
  }

  v207 = v5;
  v46 = a1[8];
  v47 = a1[1];
  if (v46 >= *(v47 + 40))
  {
LABEL_194:
    v32 = 0;
    v31 = 0;
    v22 = a1[8] >= *(a1[1] + 40);
    v33 = item_signature_chunk_signature_error_with_format;
    v5 = v207;
    goto LABEL_195;
  }

  alloc = *MEMORY[0x277CBECE8];
  v209 = v22;
  while (1)
  {
    v48 = *(v47 + 32) + 104 * v46;
    if (mmcs_chunk_instance_is_chunk_reference(v48) && !a1[10])
    {
      a1[10] = mmcs_chunk_instance_chunk_coder_create(v48, 1);
    }

    v49 = CFDataGetLength(theData);
    if (*v48 == 2)
    {
      v58 = v49;
      item_signature_chunk_signature_error_with_format = 0;
      v59 = (*(a1[1] + 32) + 104 * a1[8]);
      if (gMMCS_DebugLevel >= 6)
      {
        v60 = mmcs_chunk_instance_copy_description(*(a1[1] + 32) + 104 * a1[8]);
        if (gMMCS_DebugLevel >= 5)
        {
          v61 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
          {
            v202 = v60;
            v204 = a1[9];
            v62 = CFStringCreateWithFormat(alloc, 0, @"Reading chunk %@ beginning at chunk offset %lu");
            v63 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
            {
              *bytes = 138543362;
              *&bytes[4] = v62;
              _os_log_impl(&dword_2577D8000, v63, OS_LOG_TYPE_DEBUG, "%{public}@", bytes, 0xCu);
            }

            if (v62)
            {
              CFRelease(v62);
            }
          }
        }

        if (v60)
        {
          CFRelease(v60);
        }
      }

      v64 = mmcs_chunk_instance_get_length(v59);
      v65 = v64;
      v66 = a1[9];
      if (v64 - v66 >= v6)
      {
        v67 = v6;
      }

      else
      {
        v67 = v64 - v66;
      }

      v68 = CFDataGetLength(theData);
      CFDataSetLength(theData, v67 + v68);
      v69 = CFDataGetMutableBytePtr(theData);
      BytePtr = CFDataGetBytePtr(v59[10]);
      memcpy(&v69[v68], &BytePtr[a1[9]], v67);
      v6 -= v67;
      v71 = a1[9] + v67;
      a1[9] = v71;
      v72 = v71 == v65;
      v22 = v209;
      goto LABEL_128;
    }

    v208 = v49;
    if (*v48 != 1)
    {
      mmcs_storage_container_stream_read_cold_4();
    }

    item_signature_chunk_signature_error_with_format = 0;
    v213 = 0;
    v50 = *(a1[1] + 32) + 104 * a1[8];
    v51 = *(*(v50 + 56) + 8);
    if (gMMCS_DebugLevel >= 6)
    {
      v52 = mmcs_chunk_instance_copy_description(*(a1[1] + 32) + 104 * a1[8]);
      if (gMMCS_DebugLevel >= 5)
      {
        v53 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          v202 = v52;
          v203 = a1[9];
          v54 = CFStringCreateWithFormat(alloc, 0, @"Reading chunk %@ beginning at chunk offset %lu");
          v55 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            *bytes = 138543362;
            *&bytes[4] = v54;
            _os_log_impl(&dword_2577D8000, v55, OS_LOG_TYPE_DEBUG, "%{public}@", bytes, 0xCu);
          }

          if (v54)
          {
            CFRelease(v54);
          }
        }
      }

      if (v52)
      {
        CFRelease(v52);
      }
    }

    if (a1[5])
    {
      CKRegisteredChunkSignature();
      v56 = CKChunkSignaturesEqual();
      v57 = a1[5];
      if (v56)
      {
        if (v57)
        {
          goto LABEL_92;
        }
      }

      else
      {
        if (v57)
        {
          free(v57);
        }

        a1[5] = 0;
      }
    }

    v73 = ***(*a1 + 88);
    v74 = mmcs_chunk_instance_offset(v73);
    v213 = 0;
    v75 = *(a1[1] + 32) + 104 * a1[8];
    if (!mmcs_chunk_instance_is_chunk_reference(v75))
    {
      mmcs_storage_container_stream_read_cold_3();
    }

    v76 = *(v75 + 56);
    v77 = *(v76 + 8);
    first_chunk_instance = mmcs_chunk_reference_get_first_chunk_instance(v76);
    if (!first_chunk_instance)
    {
      mmcs_storage_container_stream_read_cold_2();
    }

    RegisteredChunk = mmcs_chunk_instance_create_RegisteredChunk(first_chunk_instance);
    a1[5] = RegisteredChunk;
    if (!RegisteredChunk)
    {
      v112 = mmcs_chunk_signature_to_hexstring(v77);
      v113 = mmcs_logging_logger_default();
      v22 = v209;
      if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
      {
        v119 = CFStringCreateWithFormat(alloc, 0, @"unable to create chunk for chunk signature %s", v112);
        v120 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
        {
          *bytes = 138543362;
          *&bytes[4] = v119;
          _os_log_impl(&dword_2577D8000, v120, OS_LOG_TYPE_ERROR, "%{public}@", bytes, 0xCu);
        }

        if (v119)
        {
          CFRelease(v119);
        }
      }

      error_with_underlying_error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 36, @"unable to allocate chunk signature %s", v114, v115, v116, v117, v118, v112);
      if (v112)
      {
        free(v112);
      }

      goto LABEL_119;
    }

    CKRegisteredChunkSetLocation();
    if (a1[3])
    {
      v81 = a1[4];
      v80 = a1[5];
      if (v81 == CKRegisteredChunkItemID())
      {
        goto LABEL_92;
      }
    }

    mmcs_storage_container_stream_clear_item_reader_cache(a1);
    cf = 0;
    v82 = mmcs_engine_owner(v74);
    requestor = mmcs_request_get_requestor(v73);
    v84 = a1[5];
    v85 = CKRegisteredChunkItemID();
    if (!mmcs_engine_get_item_reader_writer_for_item_callback(v74, v82, requestor, v85, a1 + 3, &cf) || (v86 = a1[3]) == 0 || !MMCSItemReaderWriterOpen(v86, &cf))
    {
      v122 = mmcs_chunk_signature_to_hexstring(v77);
      v123 = cf;
      v124 = a1[5];
      v125 = CKRegisteredChunkItemID();
      error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 9, v123, @"Unable to open item %lld while looking for chunk %s", v126, v127, v128, v129, v125);
      if (v122)
      {
        free(v122);
      }

      v22 = v209;
      if (cf)
      {
        CFRelease(cf);
      }

      cf = 0;
      v130 = mmcs_cferror_copy_description(error_with_underlying_error);
      v131 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
      {
        v202 = v130;
        v132 = CFStringCreateWithFormat(alloc, 0, @"An error occurred: %@");
        v133 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
        {
          *bytes = 138543362;
          *&bytes[4] = v132;
          _os_log_impl(&dword_2577D8000, v133, OS_LOG_TYPE_ERROR, "%{public}@", bytes, 0xCu);
        }

        v22 = v209;
        if (v132)
        {
          CFRelease(v132);
        }
      }

      if (v130)
      {
        CFRelease(v130);
      }

      mmcs_storage_container_stream_clear_item_reader_cache(a1);
LABEL_119:
      v58 = v208;
      v134 = a1[5];
      if (v134)
      {
        free(v134);
      }

      a1[5] = 0;
      CFRetain(error_with_underlying_error);
      v213 = error_with_underlying_error;
      if (error_with_underlying_error)
      {
        CFRelease(error_with_underlying_error);
        goto LABEL_123;
      }

LABEL_124:
      v135 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Unknown error in mmcs_storage_container_stream_read_chunk_data", v98, v99, v100, v101, v102, v202);
      v213 = v135;
LABEL_125:
      CFRetain(v135);
      v72 = 0;
      v136 = v213;
      item_signature_chunk_signature_error_with_format = v213;
      v137 = 1;
      if (!v213)
      {
        goto LABEL_127;
      }

LABEL_126:
      CFRelease(v136);
      goto LABEL_127;
    }

    if (!a1[3])
    {
      mmcs_storage_container_stream_read_cold_1();
    }

    v87 = a1[5];
    a1[4] = CKRegisteredChunkItemID();
LABEL_92:
    v88 = a1[5];
    if (a1[9] >= CKRegisteredChunkLength())
    {
      v22 = v209;
    }

    else
    {
      v89 = a1[5];
      v90 = v6;
      if (CKRegisteredChunkLength() - a1[9] < v6)
      {
        v91 = a1[5];
        v90 = CKRegisteredChunkLength() - a1[9];
      }

      v92 = CFDataGetLength(theData);
      CFDataSetLength(theData, v92 + v90);
      v93 = CFDataGetMutableBytePtr(theData);
      *bytes = 0;
      v94 = a1[3];
      v95 = a1[5];
      v96 = CKRegisteredChunkOffset();
      v97 = MMCSItemReaderWriterRead(v94, a1[9] + v96, &v93[v92], v90, bytes, &v213);
      v22 = v209;
      if (!v97)
      {
        goto LABEL_99;
      }

      if (*bytes < v90)
      {
        v103 = mmcs_chunk_signature_to_hexstring(v51);
        v104 = a1[5];
        v105 = CKRegisteredChunkItemID();
        v106 = a1[5];
        v205 = a1[9] + CKRegisteredChunkOffset();
        v213 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 12, @"Short read of item %lld: while looking for chunk %s (read:%llu, expected:%lu, offset:%lld)", v107, v108, v109, v110, v111, v105);
        if (v103)
        {
          free(v103);
        }

LABEL_99:
        v58 = v208;
LABEL_123:
        v135 = v213;
        if (!v213)
        {
          goto LABEL_124;
        }

        goto LABEL_125;
      }

      v6 -= v90;
      a1[9] += v90;
      request = mmcs_put_container_get_request(*a1);
      mmcs_put_container_chunk_reference_was_read(*a1, request, *(v50 + 56), v90);
    }

    v58 = v208;
    v154 = a1[5];
    v155 = CKRegisteredChunkLength();
    v156 = a1[9];
    if (v156 >= v155)
    {
      v157 = *(v50 + 64) - v156;
      if (v157 >= v6)
      {
        v158 = v6;
      }

      else
      {
        v158 = v157;
      }

      v159 = CFDataGetLength(theData);
      CFDataSetLength(theData, v158 + v159);
      v160 = CFDataGetMutableBytePtr(theData);
      bzero(&v160[v159], v158);
      v6 -= v158;
      v156 = a1[9] + v158;
      a1[9] = v156;
    }

    v137 = 0;
    v72 = v156 == *(v50 + 64);
    v136 = v213;
    if (v213)
    {
      goto LABEL_126;
    }

LABEL_127:
    if (v137)
    {
      goto LABEL_214;
    }

LABEL_128:
    v138 = CFDataGetLength(theData) - v58;
    if (v138 >= 1)
    {
      CFDataGetMutableBytePtr(theData);
      if (a1[10] && !CKChunkCoderUpdate())
      {
        error = mmcs_cferror_create_error(@"com.apple.mmcs", 22, @"Chunk stream update error");
        item_signature_chunk_signature_error_with_format = error;
        goto LABEL_215;
      }

      a1[11] += v138;
    }

    if (!v72)
    {
      if (v6)
      {
        v181 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v181, OS_LOG_TYPE_ERROR))
        {
          v182 = CFStringCreateWithFormat(alloc, 0, @"The chunk isn't done and the buffer isn't full.");
          v183 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v183, OS_LOG_TYPE_ERROR))
          {
            *bytes = 138543362;
            *&bytes[4] = v182;
            _os_log_impl(&dword_2577D8000, v183, OS_LOG_TYPE_ERROR, "%{public}@", bytes, 0xCu);
          }

          if (v182)
          {
            CFRelease(v182);
          }
        }
      }

      goto LABEL_194;
    }

    if (a1[10])
    {
      break;
    }

LABEL_137:
    a1[10] = 0;
    if (mmcs_chunk_instance_is_chunk_reference(v48))
    {
      mmcs_put_container_chunk_reference_was_put(*a1, *(v48 + 56));
      if (gMMCS_DebugLevel >= 4)
      {
        v145 = mmcs_chunk_signature_to_hexstring(*(*(v48 + 56) + 8));
        v146 = mmcs_logging_logger_chunk();
        if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
        {
          v147 = a1[8] + 1;
          v148 = a1[1];
          v149 = *(v148 + 40);
          v150 = *(v48 + 32);
          v151 = *(v148 + 24);
          v152 = *(v48 + 64);
          *bytes = 134219266;
          *&bytes[4] = v147;
          v216 = 2048;
          v217 = v149;
          v218 = 2048;
          v219 = v150;
          v220 = 2048;
          v221 = v151;
          v222 = 1024;
          v223 = v152;
          v224 = 2082;
          v225 = v145;
          _os_log_impl(&dword_2577D8000, v146, OS_LOG_TYPE_DEFAULT, "Chunk %lu of %zu at containerOffset %llu of %llu with byteLength %u and signature %{public}s sent.", bytes, 0x3Au);
        }

        if (v145)
        {
          free(v145);
        }
      }
    }

    v46 = a1[8] + 1;
    a1[8] = v46;
    a1[9] = 0;
    v47 = a1[1];
    if (v46 >= *(v47 + 40))
    {
      goto LABEL_194;
    }
  }

  if (CKChunkCoderFinish())
  {
    v144 = a1[10];
    if (v144)
    {
      C3BaseRelease(v144);
    }

    goto LABEL_137;
  }

  v184 = item_signature_chunk_signature_error_with_format;
  v185 = a1[10];
  if (v185)
  {
    C3BaseRelease(v185);
  }

  a1[10] = 0;
  if (a1[5])
  {
    v186 = CKRegisteredChunkSignatureCopyCString();
    v187 = a1[5];
    v188 = CKRegisteredChunkItemID();
    v189 = a1[5];
    v190 = CKRegisteredChunkSignature();
    v191 = a1[5];
    CKRegisteredChunkItemID();
    item_signature_chunk_signature_error_with_format = mmcs_cferror_create_item_signature_chunk_signature_error_with_format(@"com.apple.mmcs", 11, v188, 0, v190, item_signature_chunk_signature_error_with_format, @"The container content is incorrect. Any items contributing will need to be retried. The data for chunk %s provided by item %lld did not match.", v192, v186);
    v193 = mmcs_put_container_get_request(*a1);
    v194 = mmcs_chunk_instance_offset(v193);
    v195 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
    {
      v196 = a1[5];
      v197 = CKRegisteredChunkItemID();
      v198 = CFStringCreateWithFormat(alloc, 0, @"Unregistering item %lld which had a bogus chunk %s", v197, v186);
      v199 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
      {
        *bytes = 138543362;
        *&bytes[4] = v198;
        _os_log_impl(&dword_2577D8000, v199, OS_LOG_TYPE_DEFAULT, "%{public}@", bytes, 0xCu);
      }

      v22 = v209;
      if (v198)
      {
        CFRelease(v198);
      }
    }

    v200 = *(v194 + 16);
    v201 = a1[5];
    CKRegisteredChunkItemID();
    CKUnregisterFile();
    if (v186)
    {
      free(v186);
    }
  }

  else
  {
    item_signature_chunk_signature_error_with_format = mmcs_cferror_create_with_format(@"com.apple.mmcs", 11, @"The container content is incorrect. Any items contributing will need to be retried. It is not known which chunk was responsible", v139, v140, v141, v142, v143, v202);
  }

  if (v184)
  {
    CFRelease(v184);
  }

LABEL_214:
  error = item_signature_chunk_signature_error_with_format;
LABEL_215:
  v5 = v207;
  if (error)
  {
    goto LABEL_26;
  }

LABEL_216:
  v44 = 0;
  v9 = 0;
  v32 = 0;
LABEL_217:
  v43 = 1;
LABEL_38:
  if (!*(a1 + 96))
  {
LABEL_170:
    if (a5 && v9 && v22)
    {
      v9 = 1;
      *a5 = 1;
      goto LABEL_185;
    }

    goto LABEL_182;
  }

  if (!v22)
  {
    v44 = 0;
  }

  if (v44 != 1)
  {
    if ((v43 & 1) == 0)
    {
      v45 = a1[13] != 0;
      goto LABEL_155;
    }

    goto LABEL_45;
  }

  if (a1[13])
  {
    goto LABEL_43;
  }

  if (a1[9])
  {
    mmcs_storage_container_stream_read_cold_5();
  }

  v170 = a1[1];
  if (a1[8] != v170[5])
  {
    mmcs_storage_container_stream_read_cold_6();
  }

  v9 = v170[1];
  if (!v9)
  {
    v32 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Calculated MD5 Not Available for Trailer, Container (%s)", v23, v24, v25, v26, v27, *v170);
LABEL_182:
    if (!v5 || v9)
    {
      goto LABEL_185;
    }

    *v5 = v32;
    goto LABEL_187;
  }

  v171 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v171, OS_LOG_TYPE_INFO))
  {
    v172 = *a1[1];
    *bytes = 136315138;
    *&bytes[4] = v172;
    _os_log_impl(&dword_2577D8000, v171, OS_LOG_TYPE_INFO, "Appending Payload Trailer for Container (%s)", bytes, 0xCu);
  }

  put_complete_at_edge_payload_trailer = mmcs_create_put_complete_at_edge_payload_trailer(v9, *(**(*a1 + 88) + 48));
  if (!put_complete_at_edge_payload_trailer)
  {
    v32 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Failed produce payload trailer for container (%s)", v174, v175, v176, v177, v178, *a1[1]);
LABEL_45:
    v9 = 0;
    goto LABEL_182;
  }

  v32 = 0;
  a1[13] = put_complete_at_edge_payload_trailer;
LABEL_43:
  v45 = 1;
LABEL_155:
  v9 = 1;
  if (v45 && v6)
  {
    if (a1[8] != *(a1[1] + 40))
    {
      mmcs_storage_container_stream_read_cold_7();
    }

    if (gMMCS_DebugLevel >= 6)
    {
      v161 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v161, OS_LOG_TYPE_DEBUG))
      {
        v162 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Reading payload trailer at offset %lu", a1[9]);
        v163 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
        {
          *bytes = 138543362;
          *&bytes[4] = v162;
          _os_log_impl(&dword_2577D8000, v163, OS_LOG_TYPE_DEBUG, "%{public}@", bytes, 0xCu);
        }

        if (v162)
        {
          CFRelease(v162);
        }
      }
    }

    v164 = CFDataGetLength(a1[13]);
    v165 = a1[9];
    if (v164 > v165)
    {
      if (v164 - v165 >= v6)
      {
        v166 = v6;
      }

      else
      {
        v166 = v164 - v165;
      }

      v167 = CFDataGetLength(theData);
      CFDataSetLength(theData, v167 + v166);
      v168 = CFDataGetMutableBytePtr(theData);
      v169 = CFDataGetBytePtr(a1[13]);
      memcpy(&v168[v167], &v169[a1[9]], v166);
      v165 = a1[9] + v166;
      a1[9] = v165;
      a1[11] += v166;
    }

    v22 = v165 >= CFDataGetLength(a1[13]);
    v9 = 1;
    goto LABEL_170;
  }

LABEL_185:
  if (v32)
  {
    CFRelease(v32);
  }

LABEL_187:
  v179 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t mmcs_perform_run_loop_source_create(void *a1, _OWORD *a2, uint64_t a3, const __CFArray *a4)
{
  *a1 = 0;
  v15 = 0;
  v7 = a2[1];
  v14[0] = *a2;
  v14[1] = v7;
  v8 = mmcs_perform_source_create(&v15, 1, 8, v14);
  v9 = v15;
  if (v8 && v15)
  {
    v10 = v15[7];
    v13.version = 0;
    v13.info = v15;
    v13.retain = C3BaseRetain;
    v13.release = C3BaseRelease;
    memset(&v13.copyDescription, 0, 40);
    v13.perform = mmcs_perform_run_loop_source_perform_callback;
    v11 = CFRunLoopSourceCreate(*MEMORY[0x277CBECE8], 0, &v13);
    *v10 = v11;
    XCFRunLoopAddSourceToModes(a3, v11, a4);
    C3BaseRetain(v15);
    v9 = v15;
    *a1 = v15;
  }

  if (v9)
  {
    C3BaseRelease(v9);
  }

  return v8;
}

void mmcs_perform_run_loop_source_finalize(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*v1)
  {
    CFRelease(*v1);
  }

  *v1 = 0;
}

void mmcs_perform_run_loop_source_invalidate(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*v1)
  {
    CFRunLoopSourceInvalidate(*v1);
    if (*v1)
    {
      CFRelease(*v1);
    }

    *v1 = 0;
  }
}

uint64_t get_path_for_fd(int a1, char *a2)
{
  memset(&v8, 0, sizeof(v8));
  v4 = -5;
  v7 = 0;
  while (1)
  {
    if (fstat(a1, &v8) < 0)
    {
      return 0xFFFFFFFFLL;
    }

    v7.val[1] = 0;
    v7.val[0] = v8.st_dev;
    if ((fsgetpath(a2, 0x400uLL, &v7, v8.st_ino) & 0x8000000000000000) == 0)
    {
      break;
    }

    if (*__error() != 35 || v4++ == 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

_BYTE *hextostrdup(char *a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    hextostrdup_cold_1();
  }

  v2 = a2;
  result = malloc_type_malloc((2 * a2) | 1, 0x100004077774924uLL);
  v5 = result;
  if (v2)
  {
    v6 = result;
    do
    {
      *v6 = hextostr_hexdigits[*a1 >> 4];
      v7 = *a1++;
      v5 = v6 + 2;
      v6[1] = hextostr_hexdigits[v7 & 0xF];
      v6 += 2;
      --v2;
    }

    while (v2);
  }

  *v5 = 0;
  return result;
}

const char *_getCStringFromCFStringSafely(const __CFString *a1, CFStringEncoding a2, uint64_t a3)
{
  result = CFStringGetCStringPtr(a1, a2);
  if (a3)
  {
    if (!result)
    {
      Length = CFStringGetLength(a1);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, a2);
      v9 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
      *a3 = v9;
      CFStringGetCString(a1, v9, MaximumSizeForEncoding + 1, a2);
      return *a3;
    }
  }

  return result;
}

__CFString *createCStringWithCFString(const __CFString *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v4 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  if (v4)
  {
    v5 = v4;
    if (!CFStringGetCString(a1, v4, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      free(v5);
LABEL_9:
      v5 = 0;
    }
  }

  else
  {
    v6 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"malloc");
    v7 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = v5;
      _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_ERROR, "%{public}@", &v10, 0xCu);
    }

    if (v5)
    {
      CFRelease(v5);
      goto LABEL_9;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

CFNumberRef mmcs_copy_cfnumber_from_cfdictionary_object_for_key(const __CFDictionary *a1, void *key, const void *a3)
{
  if (!a1 || !key)
  {
    return a3;
  }

  Value = CFDictionaryGetValue(a1, key);

  return mmcs_copy_cfnumber_from_cftype_using_description(key, Value, a3);
}

const __CFString *mmcs_get_cfBOOLean_from_cfdictionary_object_for_key(const __CFDictionary *a1, void *key, const __CFString *a3)
{
  if (!a1 || !key)
  {
    return a3;
  }

  Value = CFDictionaryGetValue(a1, key);

  return mmcs_get_cfBOOLean_from_cftype_using_description(key, Value, a3);
}

uint64_t mmcs_get_BOOLean_from_cfpreferences_object_for_key(const __CFString *a1, uint64_t BOOLean_from_cftype_using_description)
{
  if (a1)
  {
    v4 = CFPreferencesCopyAppValue(a1, @"com.apple.mmcs");
    if (v4)
    {
      v5 = v4;
      BOOLean_from_cftype_using_description = mmcs_get_BOOLean_from_cftype_using_description(a1, v4, BOOLean_from_cftype_using_description);
      CFRelease(v5);
    }
  }

  return BOOLean_from_cftype_using_description;
}

BOOL mmcs_file_signature_is_valid_n(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2 == 21)
    {
      return CKFileSchemeAndSignatureSize() == 21;
    }
  }

  return result;
}

BOOL mmcs_file_signature_is_valid(_BOOL8 result)
{
  if (result)
  {
    return CKFileSchemeAndSignatureSize() == 21;
  }

  return result;
}

const UInt8 *mmcs_file_digest_arguments_create_with_boudnary_key(const UInt8 *result)
{
  if (result)
  {
    v1 = result;
    if (CFDataGetLength(result) != 32)
    {
      return 0;
    }

    result = CFDataGetBytePtr(v1);
    if (!result)
    {
      return result;
    }

    BytePtr = CFDataGetBytePtr(v1);
    if (!mmcs_zcmp(BytePtr, 0x20uLL))
    {
      if (CKFileDigestArgumentsV2WithBoundaryKeyCreate())
      {
        return 0;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_BYTE *strtohex(_BYTE *result, _BYTE *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = 0;
    v4 = result + 2;
    do
    {
      v5 = v2 - 48;
      v6 = (v2 - 48);
      v7 = (v2 - 97);
      if ((v2 - 65) < 6u)
      {
        v3 = v2 - 55;
      }

      v8 = v2 - 87;
      if (v7 > 5)
      {
        v8 = v3;
      }

      if (v6 < 0xA)
      {
        v8 = v5;
      }

      v9 = 16 * v8;
      v10 = *(v4 - 1);
      v11 = v10 - 48;
      v12 = v10 - 97;
      if ((v10 - 65) <= 5)
      {
        v13 = (v10 - 55) | v9;
      }

      else
      {
        v13 = v9;
      }

      v3 = (v10 - 87) | v9;
      if (v12 > 5)
      {
        v3 = v13;
      }

      v14 = v11 | v9;
      if (v11 <= 9)
      {
        v3 = v14;
      }

      *a2++ = v3;
      v15 = *v4;
      v4 += 2;
      v2 = v15;
    }

    while (v15);
  }

  return result;
}

uint64_t mmcs_buffer_create_with_hex_string(char *__s, uint64_t *a2, void *a3)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (!__s)
  {
    return 0;
  }

  v6 = strlen(__s);
  result = 0;
  if (v6)
  {
    if ((v6 & 1) == 0)
    {
      result = malloc_type_malloc(v6 >> 1, 0x100004077774924uLL);
      if (result)
      {
        v8 = result;
        strtohex(__s, result);
        if (a2)
        {
          *a2 = v8;
        }

        if (a3)
        {
          *a3 = (v6 >> 1);
        }

        return 1;
      }
    }
  }

  return result;
}

CFDataRef mmcs_cfdata_create_with_hexstring(char *a1)
{
  v4 = 0;
  v5 = 0;
  v1 = mmcs_buffer_create_with_hex_string(a1, &v5, &v4);
  result = 0;
  if (v1)
  {
    if (v5)
    {
      v3 = v4 == 0;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      return CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v5, v4, *MEMORY[0x277CBECF0]);
    }
  }

  return result;
}

_BYTE *mmcs_file_signature_create_with_string(char *a1)
{
  if (!a1 || strlen(a1) > 0x2A)
  {
    return 0;
  }

  v2 = malloc_type_malloc(0x15uLL, 0x100004077774924uLL);
  if (v2)
  {
    strtohex(a1, v2);
    if (CKFileSchemeAndSignatureSize() != 21)
    {
      free(v2);
      return 0;
    }
  }

  return v2;
}

void *mmcs_file_signature_copy(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CKFileSchemeAndSignatureSize();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = malloc_type_malloc(v2, 0x100004077774924uLL);
  if (!v4)
  {
    return 0;
  }

  return memcpy(v4, a1, v3);
}

CFDataRef mmcs_file_signature_to_cfdata(const UInt8 *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CKFileSchemeAndSignatureSize();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *MEMORY[0x277CBECE8];

  return CFDataCreate(v4, a1, v3);
}

_BYTE *mmcs_file_signature_to_hexstring(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CKFileSchemeAndSignatureSize();
  if (!v2)
  {
    return 0;
  }

  return hextostrdup(a1, v2);
}

uint64_t mmcs_file_signature_create_from_file_descriptor(const UInt8 *a1, uint64_t a2, CFTypeRef *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    CKFileDigestArgumentsV1WithFileCreate();
LABEL_8:
    if (a3)
    {
      v10 = 0;
      *a3 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"failed to create fileDigestArguments", v5, v6, v7, v8, v9, v16);
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  cf = mmcs_file_digest_arguments_create_with_boudnary_key(a1);
  if (!cf)
  {
    goto LABEL_8;
  }

  if (CK2CalculateFileSignatureWithFlags())
  {
    CKFileDigestResultsFileSignature();
    v10 = CKFileSignatureCopy();
    CFRelease(cf);
    goto LABEL_20;
  }

  v11 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"MMCSGetSignatureForFileDescriptor can't calculate file signature for fd (%d)", a2);
    v13 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = v12;
      _os_log_impl(&dword_2577D8000, v13, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }

  if (!a3)
  {
LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  if (*a3)
  {
    CFRelease(*a3);
  }

  v10 = 0;
  *a3 = 0;
LABEL_20:
  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

BOOL mmcs_chunk_signature_is_valid_n(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if ((a2 - 22) >= 0xFFFFFFFFFFFFFFEBLL)
    {
      return CKChunkSchemeAndSignatureSize() == 21;
    }
  }

  return result;
}

BOOL mmcs_chunk_signature_is_valid(_BOOL8 result)
{
  if (result)
  {
    return CKChunkSchemeAndSignatureSize() == 21;
  }

  return result;
}

void *mmcs_chunk_signature_copy(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CKChunkSchemeAndSignatureSize();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = malloc_type_malloc(v2, 0x100004077774924uLL);
  if (!v4)
  {
    return 0;
  }

  return memcpy(v4, a1, v3);
}

_BYTE *mmcs_chunk_signature_to_hexstring(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CKChunkSchemeAndSignatureSize();
  if (!v2)
  {
    return 0;
  }

  return hextostrdup(a1, v2);
}

uint64_t mmcs_print_registered_chunk_list(uint64_t result, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (result)
  {
    if (gMMCS_DebugLevel >= 4 && a2 != 0)
    {
      v4 = result;
      v5 = 0;
      do
      {
        v6 = CKRegisteredChunkSignatureCopyCString();
        v7 = mmcs_logging_logger_chunk();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = CKRegisteredChunkOffset();
          v9 = CKRegisteredChunkLength();
          *buf = 134219010;
          v12 = v5 + 1;
          v13 = 2048;
          v14 = a2;
          v15 = 2048;
          v16 = v8;
          v17 = 1024;
          v18 = v9;
          v19 = 2082;
          v20 = v6;
          _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_DEFAULT, "Chunk %llu of %llu at itemOffset %llu with byteLength %u has signature %{public}s", buf, 0x30u);
        }

        if (v6)
        {
          free(v6);
        }

        result = CKRegisteredChunkSize();
        v4 += result;
        ++v5;
      }

      while (a2 != v5);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void mmcs_op_requestor_context_indent(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 1)
  {
    v2 = *(a1 + 16);
    v3 = v1 + 1;
    do
    {
      CFStringAppend(v2, @"    ");
      --v3;
    }

    while (v3 > 1);
  }
}

__CFString *mmcs_cferror_copy_description(__CFError *a1)
{
  if (a1)
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    _mmcs_cferror_append_description(Mutable, a1, 0);
    return Mutable;
  }

  else
  {

    return CFRetain(@"(null)");
  }
}

void _mmcs_cferror_append_description(CFMutableStringRef theString, CFErrorRef err, int a3)
{
  if (a3)
  {
    v6 = a3;
    do
    {
      --v6;
      CFStringAppend(theString, @"    ");
    }

    while (v6);
  }

  Domain = CFErrorGetDomain(err);
  Code = CFErrorGetCode(err);
  CFStringAppendFormat(theString, 0, @"Error Domain=%@ Code=%ld", Domain, Code);
  v9 = CFErrorCopyDescription(err);
  if (v9)
  {
    v10 = v9;
    CFStringAppendFormat(theString, 0, @" %@", v9);
    CFRelease(v10);
  }

  v11 = CFErrorCopyUserInfo(err);
  if (v11)
  {
    v12 = v11;
    Value = CFDictionaryGetValue(v11, @"NSDebugDescription");
    if (Value)
    {
      CFStringAppendFormat(theString, 0, @" (%@)", Value);
    }

    CFStringAppend(theString, @"\n");
    context[0] = theString;
    context[1] = (a3 + 1);
    CFDictionaryApplyFunction(v12, _mmcs_cferror_append_description_userInfo, context);
    v14 = CFDictionaryGetValue(v12, *MEMORY[0x277CBEE78]);
    _mmcs_cferror_append_underlying_error_description(v14, context);
    v15 = CFDictionaryGetValue(v12, @"kMMCSErrorUnderlyingErrorArrayKey");
    if (v15)
    {
      v16 = v15;
      v17 = CFGetTypeID(v15);
      if (v17 == CFArrayGetTypeID())
      {
        v21.length = CFArrayGetCount(v16);
        v21.location = 0;
        CFArrayApplyFunction(v16, v21, _mmcs_cferror_append_underlying_error_description, context);
      }
    }

    v18 = mmcs_cfnetwork_copy_underlying_stream_error(v12);
    if (v18)
    {
      v19 = v18;
      _mmcs_cferror_append_underlying_error_description(v18, context);
      CFRelease(v19);
    }

    CFRelease(v12);
  }
}

__CFString *mmcs_cferror_copy_short_description(__CFError *a1)
{
  if (a1)
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    _mmcs_cferror_append_short_description(Mutable, a1);
    return Mutable;
  }

  else
  {

    return CFRetain(@"(null)");
  }
}

void _mmcs_cferror_append_short_description(__CFString *a1, __CFError *a2)
{
  Domain = CFErrorGetDomain(a2);
  Code = CFErrorGetCode(a2);
  CFStringAppendFormat(a1, 0, @"%@/%ld", Domain, Code);
  v6 = CFErrorCopyUserInfo(a2);
  Value = CFDictionaryGetValue(v6, *MEMORY[0x277CBEE78]);
  if (Value)
  {
    v8 = Value;
    v9 = CFGetTypeID(Value);
    if (v9 == CFErrorGetTypeID())
    {
      CFStringAppend(a1, @"(");
      _mmcs_cferror_append_short_description(a1, v8);
LABEL_11:
      CFStringAppend(a1, @""));
      goto LABEL_12;
    }
  }

  v10 = CFDictionaryGetValue(v6, @"kMMCSErrorUnderlyingErrorArrayKey");
  if (v10)
  {
    v11 = v10;
    v12 = CFGetTypeID(v10);
    if (v12 == CFArrayGetTypeID())
    {
      CFStringAppend(a1, @"(");
      Count = CFArrayGetCount(v11);
      if (Count >= 1)
      {
        v14 = Count;
        for (i = 0; i != v14; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v11, i);
          if (i)
          {
            CFStringAppend(a1, @", ");
          }

          _mmcs_cferror_append_short_description(a1, ValueAtIndex);
        }
      }

      goto LABEL_11;
    }
  }

LABEL_12:
  if (v6)
  {

    CFRelease(v6);
  }
}

char *mmcs_cfnetwork_cfstream_error_domain_copy_description(int a1)
{
  v26 = *MEMORY[0x277D85DE8];
  switch(a1)
  {
    case -1:
      v1 = *MEMORY[0x277D85DE8];
      v2 = "_kCFStreamErrorDomainCustom";
      goto LABEL_18;
    case 0:
      v11 = *MEMORY[0x277D85DE8];
      v2 = "_kCFStreamErrorDomainNoError";
      goto LABEL_18;
    case 1:
      v6 = *MEMORY[0x277D85DE8];
      v2 = "_kCFStreamErrorDomainPOSIX";
      goto LABEL_18;
    case 2:
      v15 = *MEMORY[0x277D85DE8];
      v2 = "_kCFStreamErrorDomainMacOSStatus";
      goto LABEL_18;
    case 3:
      v16 = *MEMORY[0x277D85DE8];
      v2 = "_kCFStreamErrorDomainSSL";
      goto LABEL_18;
    case 4:
      v7 = *MEMORY[0x277D85DE8];
      v2 = "_kCFStreamErrorDomainHTTP";
      goto LABEL_18;
    case 5:
      v12 = *MEMORY[0x277D85DE8];
      v2 = "_kCFStreamErrorDomainSOCKS";
      goto LABEL_18;
    case 6:
      v13 = *MEMORY[0x277D85DE8];
      v2 = "_kCFStreamErrorDomainFTP";
      goto LABEL_18;
    case 7:
      v18 = *MEMORY[0x277D85DE8];
      v2 = "_kCFStreamErrorDomainWinSock";
      goto LABEL_18;
    case 10:
      v17 = *MEMORY[0x277D85DE8];
      v2 = "_kCFStreamErrorDomainNetServices";
      goto LABEL_18;
    case 11:
      v4 = *MEMORY[0x277D85DE8];
      v2 = "_kCFStreamErrorDomainMach";
      goto LABEL_18;
    case 12:
      v8 = *MEMORY[0x277D85DE8];
      v2 = "_kCFStreamErrorDomainNetDB";
      goto LABEL_18;
    case 13:
      v5 = *MEMORY[0x277D85DE8];
      v2 = "_kCFStreamErrorDomainSystemConfiguration";
      goto LABEL_18;
    case 15:
      v3 = *MEMORY[0x277D85DE8];
      v2 = "__kCFURLErrorDomain";
      goto LABEL_18;
    case 20:
      v14 = *MEMORY[0x277D85DE8];
      v2 = "_kCFStreamErrorDomainCFHTTPServer";
LABEL_18:

      result = strdup(v2);
      break;
    default:
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      *__str = 0u;
      v20 = 0u;
      snprintf(__str, 0x64uLL, "_kCFStreamErrorDomainNumber%d", a1);
      result = strdup(__str);
      v10 = *MEMORY[0x277D85DE8];
      break;
  }

  return result;
}

char *mmcs_cfnetwork_cfstream_http_error_copy_description(int a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a1 <= -2099)
  {
    if (a1 <= -2102)
    {
      switch(a1)
      {
        case -2104:
          v9 = *MEMORY[0x277D85DE8];
          v2 = "kCFStreamErrorWatchdogTimeout";
          goto LABEL_28;
        case -2103:
          v11 = *MEMORY[0x277D85DE8];
          v2 = "kCFStreamErrorResourceTimeout";
          goto LABEL_28;
        case -2102:
          v3 = *MEMORY[0x277D85DE8];
          v2 = "kCFStreamErrorRequestTimeout";
          goto LABEL_28;
      }

      goto LABEL_31;
    }

    if (a1 == -2101)
    {
      v10 = *MEMORY[0x277D85DE8];
      v2 = "kCFStreamErrorAdaptiveReadTimeout";
    }

    else
    {
      v5 = *MEMORY[0x277D85DE8];
      if (a1 == -2100)
      {
        v2 = "kCFStreamErrorAdaptiveWriteTimeout";
      }

      else
      {
        v2 = "__kCFStreamErrorHTTPLedBellyDisconnect";
      }
    }
  }

  else
  {
    if (a1 > -2096)
    {
      if (a1 <= -2094)
      {
        v1 = *MEMORY[0x277D85DE8];
        if (a1 == -2095)
        {
          v2 = "__kCFStreamErrorHTTPStreamAtMark";
        }

        else
        {
          v2 = "__kCFStreamErrorHTTPProxyFailure";
        }

        goto LABEL_28;
      }

      if (a1 == -2093)
      {
        v7 = *MEMORY[0x277D85DE8];
        v2 = "__kCFStreamErrorHTTPProxyConfigChanged";
        goto LABEL_28;
      }

      if (a1 == -4)
      {
        v6 = *MEMORY[0x277D85DE8];
        v2 = "_kCFStreamErrorHTTPConnectionLost";
        goto LABEL_28;
      }

LABEL_31:
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      *__str = 0u;
      v15 = 0u;
      snprintf(__str, 0x64uLL, "_CFStreamErrorHTTPErrorNumber%d", a1);
      result = strdup(__str);
      v13 = *MEMORY[0x277D85DE8];
      return result;
    }

    if (a1 == -2098)
    {
      v8 = *MEMORY[0x277D85DE8];
      v2 = "__kCFStreamErrorHTTPSProxyFailureUnexpectedResponseToCONNECTMethod";
    }

    else
    {
      v4 = *MEMORY[0x277D85DE8];
      if (a1 == -2097)
      {
        v2 = "__kCFStreamErrorHTTPSProxyAuthRequired";
      }

      else
      {
        v2 = "__kCFStreamErrorHTTPSProxyFailure";
      }
    }
  }

LABEL_28:

  return strdup(v2);
}

CFErrorRef mmcs_cfnetwork_copy_underlying_stream_error(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"_kCFStreamErrorDomainKey");
  if (Value)
  {
    v3 = Value;
    v4 = CFGetTypeID(Value);
    if (v4 == CFNumberGetTypeID())
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = CFDictionaryGetValue(a1, @"_kCFStreamErrorCodeKey");
  if (!v7)
  {
LABEL_20:
    v6 = 0;
    goto LABEL_21;
  }

  v8 = v7;
  v9 = CFGetTypeID(v7);
  TypeID = CFNumberGetTypeID();
  v6 = 0;
  if (v9 != TypeID)
  {
    v8 = 0;
  }

  if (v5 && v9 == TypeID)
  {
    valuePtr = 0;
    if (CFNumberGetValue(v5, kCFNumberIntType, &valuePtr + 4))
    {
      if (CFNumberGetValue(v8, kCFNumberIntType, &valuePtr))
      {
        v11 = mmcs_cfnetwork_cfstream_error_domain_copy_description(SHIDWORD(valuePtr));
        if (v11)
        {
          v12 = v11;
          v13 = strlen(v11);
          v14 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v12, v13, 0x8000100u, 0);
          if (!v14)
          {
            v6 = 0;
LABEL_37:
            free(v12);
            goto LABEL_21;
          }

          v20 = v14;
          if (HIDWORD(valuePtr) == 1)
          {
            v41 = strerror(valuePtr);
            v21 = strdup(v41);
          }

          else
          {
            if (HIDWORD(valuePtr) != 4)
            {
              v42 = 0;
LABEL_35:
              v6 = mmcs_cferror_create_with_format(v20, valuePtr, @"%@/%d%s%s", v15, v16, v17, v18, v19, v20);
              CFRelease(v20);
              if (v42)
              {
                free(v42);
              }

              goto LABEL_37;
            }

            v21 = mmcs_cfnetwork_cfstream_http_error_copy_description(valuePtr);
          }

          v42 = v21;
          goto LABEL_35;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  nsurlerror_background_task_cancelled_reason_key = mmcs_get_nsurlerror_background_task_cancelled_reason_key();
  v23 = CFDictionaryGetValue(a1, nsurlerror_background_task_cancelled_reason_key);
  if (v23)
  {
    v24 = v23;
    v25 = CFGetTypeID(v23);
    if (v25 == CFNumberGetTypeID())
    {
      v43 = 0;
      if (CFNumberGetValue(v24, kCFNumberIntType, &v43))
      {
        if (v6)
        {
          CFRelease(v6);
        }

        v31 = v43;
        if (v43 <= 2)
        {
          v32 = off_279846150[v43];
          v6 = mmcs_cferror_create_with_format(@"com.apple.nsurlsessiond", v43, @"%@", v26, v27, v28, v29, v30, v32);
LABEL_29:
          CFRelease(v32);
          return v6;
        }

        v33 = *MEMORY[0x277CBECE8];
        v34 = mmcs_get_nsurlerror_background_task_cancelled_reason_key();
        v32 = CFStringCreateWithFormat(v33, 0, @"%@%d", v34, v31);
        v6 = mmcs_cferror_create_with_format(@"com.apple.nsurlsessiond", v43, @"%@", v35, v36, v37, v38, v39, v32);
        if (v32)
        {
          goto LABEL_29;
        }
      }
    }
  }

  return v6;
}

const char *MMCSPutItemStateCString(unsigned int a1)
{
  if (a1 <= 7)
  {
    return MMCSPutItemStateCString_strings[a1];
  }

  else
  {
    return "(unknown put item state)";
  }
}

const char *MMCSGetItemStateCString(unsigned int a1)
{
  if (a1 <= 5)
  {
    return MMCSGetItemStateCString_strings[a1];
  }

  else
  {
    return "(unknown get item state)";
  }
}

CFURLRef XCFURLCreateWithCString(const char *a1)
{
  v2 = strlen(a1);
  v3 = *MEMORY[0x277CBECE8];

  return CFURLCreateWithBytes(v3, a1, v2, 0x8000100u, 0);
}

CFHTTPMessageRef XCFHTTPMessageCopyWithNewURLAndHeaders(__CFHTTPMessage *a1, const __CFURL *a2, const __CFDictionary *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v17 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"cannot create new message with a null url!");
      v18 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v32 = 138543362;
        v33 = v11;
LABEL_18:
        _os_log_impl(&dword_2577D8000, v18, OS_LOG_TYPE_ERROR, "%{public}@", &v32, 0xCu);
      }

LABEL_19:
      v20 = 0;
      goto LABEL_46;
    }

LABEL_20:
    v20 = 0;
    goto LABEL_48;
  }

  v6 = CFHTTPMessageCopyRequestMethod(a1);
  if (!v6)
  {
    v19 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"failed to get request method");
      v18 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v32 = 138543362;
        v33 = v11;
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v7 = v6;
  v8 = CFHTTPMessageCopyVersion(a1);
  if (!v8)
  {
    v21 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"failed to get version");
      v23 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v32 = 138543362;
        v33 = v22;
        _os_log_impl(&dword_2577D8000, v23, OS_LOG_TYPE_ERROR, "%{public}@", &v32, 0xCu);
      }

      if (v22)
      {
        CFRelease(v22);
      }
    }

    v20 = 0;
    v11 = v7;
    goto LABEL_47;
  }

  v9 = v8;
  v10 = CFHTTPMessageCopyAllHeaderFields(a1);
  if (v10)
  {
    v11 = CFHTTPMessageCopyBody(a1);
    if (v11 || gMMCS_DebugLevel <= 4)
    {
      v14 = *MEMORY[0x277CBECE8];
    }

    else
    {
      v12 = mmcs_logging_logger_default();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
      v14 = *MEMORY[0x277CBECE8];
      if (v13)
      {
        v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"failed to copy body; possibly empty");
        v16 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v32 = 138543362;
          v33 = v15;
          _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@", &v32, 0xCu);
        }

        if (v15)
        {
          CFRelease(v15);
        }
      }
    }

    Request = CFHTTPMessageCreateRequest(v14, v7, a2, v9);
    if (Request)
    {
      v20 = Request;
      CFDictionaryApplyFunction(v10, copyWithNewUrlHelper, Request);
      if (a3)
      {
        CFDictionaryApplyFunction(a3, copyWithNewUrlHelper, v20);
      }

      CFHTTPMessageSetBody(v20, v11);
      goto LABEL_44;
    }

    v27 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = CFStringCreateWithFormat(v14, 0, @"failed to create new message");
      v29 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v32 = 138543362;
        v33 = v28;
        _os_log_impl(&dword_2577D8000, v29, OS_LOG_TYPE_ERROR, "%{public}@", &v32, 0xCu);
      }

      if (v28)
      {
        CFRelease(v28);
      }
    }
  }

  else
  {
    v24 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"failed to copy headers");
      v25 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v32 = 138543362;
        v33 = v11;
        _os_log_impl(&dword_2577D8000, v25, OS_LOG_TYPE_ERROR, "%{public}@", &v32, 0xCu);
      }

      if (!v11)
      {
        goto LABEL_43;
      }

      CFRelease(v11);
    }

    v11 = 0;
  }

LABEL_43:
  v20 = 0;
LABEL_44:
  CFRelease(v7);
  CFRelease(v9);
  if (v10)
  {
    CFRelease(v10);
  }

LABEL_46:
  if (v11)
  {
LABEL_47:
    CFRelease(v11);
  }

LABEL_48:
  v30 = *MEMORY[0x277D85DE8];
  return v20;
}

BOOL XCFSafelyEquals(unint64_t cf1, unint64_t a2)
{
  if (!(cf1 | a2))
  {
    return 1;
  }

  result = 0;
  if (cf1)
  {
    if (a2)
    {
      return CFEqual(cf1, a2) != 0;
    }
  }

  return result;
}

CFTypeRef XCFSafelyHash(CFTypeRef cf)
{
  if (cf)
  {
    return CFHash(cf);
  }

  return cf;
}

CFStringRef XCFCreateTruncatedHash(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = *MEMORY[0x277CBECE8];
    v2 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"com.apple.mmcs.%@", a1);
    MutableCopy = CFStringCreateMutableCopy(v1, 0, v2);
    CFStringNormalize(MutableCopy, kCFStringNormalizationFormD);
    DataUsingEncoding = XCFStringCreateDataUsingEncoding(MutableCopy, 0x8000100u);
    memset(&c, 0, sizeof(c));
    CC_SHA256_Init(&c);
    BytePtr = CFDataGetBytePtr(DataUsingEncoding);
    Length = CFDataGetLength(DataUsingEncoding);
    CC_SHA256_Update(&c, BytePtr, Length);
    *md = 0u;
    v13 = 0u;
    CC_SHA256_Final(md, &c);
    if (DataUsingEncoding)
    {
      CFRelease(DataUsingEncoding);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (v2)
    {
      CFRelease(v2);
    }

    v7 = hextostrdup(md, 2uLL);
    v8 = CFStringCreateWithCString(v1, v7, 0x8000100u);
    if (v7)
    {
      free(v7);
    }
  }

  else
  {
    v8 = &stru_2868BF3F0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

CFDataRef XCFStringCreateDataUsingEncoding(const __CFString *a1, CFStringEncoding a2)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, a2);
  v6 = malloc_type_calloc(1uLL, MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (!CFStringGetCString(a1, v6, MaximumSizeForEncoding + 1, a2))
  {
    free(v7);
    return 0;
  }

  v8 = *MEMORY[0x277CBECE8];
  v9 = *MEMORY[0x277CBECF0];

  return XCFDataCreateWithBytesNoCopy(v8, v7, MaximumSizeForEncoding + 1, v9);
}

void XCFSetAddValuesFromArray(void *a1, CFArrayRef theArray)
{
  v4.length = CFArrayGetCount(theArray);
  v4.location = 0;

  CFArrayApplyFunction(theArray, v4, XCFSetAddValuesFromSetApplier, a1);
}

void XCFSetRemoveValuesFromArray(void *a1, CFArrayRef theArray)
{
  v4.length = CFArrayGetCount(theArray);
  v4.location = 0;

  CFArrayApplyFunction(theArray, v4, XCFSetRemoveValuesFromSetApplier, a1);
}

void XCFSetSafelyRemoveValue(void *a1, const void *a2)
{
  CFRetain(a1);
  CFSetRemoveValue(a1, a2);
  if (a1)
  {

    CFRelease(a1);
  }
}

void mmcs_cfarray_free_callback(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

CFIndex XCFArrayRemoveAllInstancesOfValue(const __CFArray *a1, const void *a2)
{
  v6.length = CFArrayGetCount(a1);
  v6.location = 0;
  result = CFArrayGetLastIndexOfValue(a1, v6, a2);
  if (result != -1)
  {
    v5 = result;
    do
    {
      CFArrayRemoveValueAtIndex(a1, v5);
      v7.length = CFArrayGetCount(a1);
      v7.location = 0;
      result = CFArrayGetLastIndexOfValue(a1, v7, a2);
      v5 = result;
    }

    while (result != -1);
  }

  return result;
}

void XCFArrayRemoveAllValuesWithArray(void *a1, CFArrayRef theArray)
{
  v4.length = CFArrayGetCount(theArray);
  v4.location = 0;

  CFArrayApplyFunction(theArray, v4, XCFArrayRemoveValuesFromArrayApplier, a1);
}

CFArrayRef XCFArrayCreateWithObject(const void *a1)
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = a1;
  result = CFArrayCreate(*MEMORY[0x277CBECE8], v3, 1, MEMORY[0x277CBF128]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void XCFDictionaryAppendValue(const __CFDictionary *a1, const CFArrayCallBacks *a2, void *key, const void *a4)
{
  Value = CFDictionaryGetValue(a1, key);
  if (Value)
  {

    CFArrayAppendValue(Value, a4);
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, a2);
    CFArrayAppendValue(Mutable, a4);
    CFDictionarySetValue(a1, key, Mutable);
    if (Mutable)
    {

      CFRelease(Mutable);
    }
  }
}

CFArrayRef XCFDictionaryCopyKeys(const __CFDictionary *a1, const CFArrayCallBacks *a2)
{
  Count = CFDictionaryGetCount(a1);
  v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  CFDictionaryGetKeysAndValues(a1, v5, 0);
  v6 = CFArrayCreate(*MEMORY[0x277CBECE8], v5, Count, a2);
  if (v5)
  {
    free(v5);
  }

  return v6;
}

CFMutableArrayRef XCFSetMutableCopyValues(const __CFSet *a1, const CFArrayCallBacks *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  Count = CFSetGetCount(a1);
  Mutable = CFArrayCreateMutable(v4, Count, a2);
  CFSetApplyFunction(a1, _set_applier_append_array, Mutable);
  return Mutable;
}

CFStringRef XCFAbsoluteTimeDateFormatterCreateString(CFAbsoluteTime a1)
{
  pthread_once(&sAbsoluteTimeDateFormatter_once, _AbsoluteTimeDateFormatter_init_once);
  pthread_mutex_lock(&XCFAbsoluteTimeDateFormatterCreateString_lock);
  if (sAbsoluteTimeDateFormatter)
  {
    StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(*MEMORY[0x277CBECE8], sAbsoluteTimeDateFormatter, a1);
  }

  else
  {
    StringWithAbsoluteTime = 0;
  }

  pthread_mutex_unlock(&XCFAbsoluteTimeDateFormatterCreateString_lock);
  return StringWithAbsoluteTime;
}

void _AbsoluteTimeDateFormatter_init_once()
{
  v0 = CFLocaleCreate(0, @"en_US");
  v1 = *MEMORY[0x277CBECE8];
  DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(*MEMORY[0x277CBECE8], @"yyyy/MM/dd kk:mm:ss.SSSS", 0, v0);
  sAbsoluteTimeDateFormatter = CFDateFormatterCreate(v1, v0, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetFormat(sAbsoluteTimeDateFormatter, DateFormatFromTemplate);
  if (DateFormatFromTemplate)
  {
    CFRelease(DateFormatFromTemplate);
  }

  if (v0)
  {

    CFRelease(v0);
  }
}

uint64_t XCFReadStreamGetSocketNativeHandle(__CFReadStream *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = CFReadStreamCopyProperty(a1, *MEMORY[0x277CBF078]);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = v1;
  TypeID = CFDataGetTypeID();
  if (TypeID == CFGetTypeID(v2) && CFDataGetLength(v2) == 4)
  {
    v4 = *CFDataGetBytePtr(v2);
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  CFRelease(v2);
  return v4;
}

char *XCFDataCreateCStringDescription(const __CFData *a1)
{
  if (a1)
  {
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);

    return hextostrdup(BytePtr, Length);
  }

  else
  {

    return strdup("(null)");
  }
}

CFStringRef XCFDataCreateStringDescription(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v4 = hextostrdup(BytePtr, Length);
  v5 = strlen(v4);
  v6 = *MEMORY[0x277CBECF0];
  v7 = *MEMORY[0x277CBECE8];

  return XCFStringCreateWithBytesNoCopy(v7, v4, v5, 0x8000100u, 0, v6);
}

CFStringRef XCFStringCopyPathExtension(CFStringRef filePath)
{
  v1 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], filePath, kCFURLPOSIXPathStyle, 0);
  v2 = CFURLCopyPathExtension(v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t mmcs_server_version_compare(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 > a3;
  if (a1 < a3)
  {
    v4 = -1;
  }

  v5 = a2 > a4;
  if (a2 < a4)
  {
    v5 = -1;
  }

  if (v4)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t mmcs_server_version_make_from_CFString(CFStringRef theString)
{
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x277CBECE8], theString, @".");
  if (!ArrayBySeparatingStrings)
  {
    return 0;
  }

  v2 = ArrayBySeparatingStrings;
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  if (Count < 1)
  {
    IntValue = 0;
  }

  else
  {
    v4 = Count;
    ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
    IntValue = CFStringGetIntValue(ValueAtIndex);
    if (v4 != 1)
    {
      v7 = CFArrayGetValueAtIndex(v2, 1);
      CFStringGetIntValue(v7);
    }
  }

  CFRelease(v2);
  return IntValue;
}

double mmcs_server_version_as_double(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = log10(a2);
  return v3 / __exp10(floor(v4) + 1.0) + a1;
}

void _mmcs_cferror_append_description_userInfo(const __CFString *cf, const __CFString *a2, uint64_t a3)
{
  if (!cf || (v6 = CFGetTypeID(cf), v6 != CFStringGetTypeID()) || !CFEqual(cf, @"NSDebugDescription") && !CFEqual(cf, *MEMORY[0x277CBEE58]) && !CFEqual(cf, *MEMORY[0x277CBEE30]) && !CFEqual(cf, *MEMORY[0x277CBEE78]) && !CFEqual(cf, @"kMMCSErrorUnderlyingErrorArrayKey"))
  {

    _mmcs_cferror_append_description_dict(cf, a2, a3);
  }
}

__CFError *_mmcs_cferror_append_underlying_error_description(__CFError *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    result = CFErrorGetTypeID();
    if (v4 == result)
    {
      v5 = *a2;
      v6 = *(a2 + 8);

      return _mmcs_cferror_append_description(v5, v3);
    }
  }

  return result;
}

void _mmcs_cferror_append_description_dict(const __CFString *a1, CFStringRef StringWithNumber, uint64_t a3)
{
  if (a1)
  {
    v5 = a1;
    v6 = CFGetTypeID(a1);
    if (v6 == CFStringGetTypeID())
    {
      v7 = 0;
    }

    else
    {
      v5 = CFCopyDescription(v5);
      v7 = v5;
    }
  }

  else
  {
    v7 = 0;
    v5 = @"(null)";
  }

  v8 = *a3;
  v9 = *(a3 + 8);
  if (v9)
  {
    do
    {
      --v9;
      CFStringAppend(v8, @"    ");
    }

    while (v9);
    v8 = *a3;
  }

  CFStringAppend(v8, @"");
  CFStringAppend(*a3, v5);
  CFStringAppend(*a3, @"");
  if (v7)
  {
    CFRelease(v7);
  }

  CFStringAppend(*a3, @" = ");
  if (!StringWithNumber)
  {
    v12 = @"(null)";
    goto LABEL_18;
  }

  v10 = CFGetTypeID(StringWithNumber);
  if (v10 == CFStringGetTypeID())
  {
    v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@", StringWithNumber);
LABEL_14:
    StringWithNumber = v11;
    goto LABEL_15;
  }

  v13 = CFGetTypeID(StringWithNumber);
  if (v13 != CFDictionaryGetTypeID())
  {
    v16 = CFGetTypeID(StringWithNumber);
    if (v16 == CFNumberGetTypeID())
    {
      v17 = *MEMORY[0x277CBECE8];
      v18 = CFLocaleCreate(*MEMORY[0x277CBECE8], @"en_US");
      v19 = CFNumberFormatterCreate(v17, v18, kCFNumberFormatterDecimalStyle);
      StringWithNumber = CFNumberFormatterCreateStringWithNumber(v17, v19, StringWithNumber);
      if (v19)
      {
        CFRelease(v19);
      }

      if (v18)
      {
        CFRelease(v18);
      }

LABEL_15:
      v12 = StringWithNumber;
      if (!StringWithNumber)
      {
        return;
      }

      goto LABEL_18;
    }

    v20 = CFGetTypeID(StringWithNumber);
    if (v20 != CFBooleanGetTypeID())
    {
      v11 = CFCopyDescription(StringWithNumber);
      goto LABEL_14;
    }

    Value = CFBooleanGetValue(StringWithNumber);
    StringWithNumber = 0;
    if (Value)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

LABEL_18:
    CFStringAppend(*a3, v12);
    CFStringAppend(*a3, @"\n");
    if (StringWithNumber)
    {

      CFRelease(StringWithNumber);
    }

    return;
  }

  CFStringAppend(*a3, @"{\n");
  context = *a3;
  v23 = 0;
  LODWORD(v23) = *(a3 + 8) + 1;
  CFDictionaryApplyFunction(StringWithNumber, _mmcs_cferror_append_description_dict, &context);
  v14 = *a3;
  v15 = *(a3 + 8);
  if (v15)
  {
    do
    {
      --v15;
      CFStringAppend(v14, @"    ");
    }

    while (v15);
    v14 = *a3;
  }

  CFStringAppend(v14, @"}\n");
}

uint64_t MMCSEngineGetRequestMetrics(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *(a1 + 192);
    v3 = *(a1 + 200);
    if (v2)
    {
      if (v3)
      {
        v4 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"This shouldn't happen: currentGetRequestContext and currentPutRequestContext are both non-NULL! I refuse to choose.");
          v6 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            v10 = 138543362;
            v11 = v5;
            _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_ERROR, "%{public}@", &v10, 0xCu);
          }

          if (v5)
          {
            CFRelease(v5);
          }
        }

        goto LABEL_13;
      }

      return mmcs_get_req_context_get_current_request_metrics(v2);
    }

    if (v3)
    {
      v7 = *MEMORY[0x277D85DE8];
      v2 = v3;

      return mmcs_get_req_context_get_current_request_metrics(v2);
    }
  }

LABEL_13:
  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

void MMCSGetChunks(uint64_t a1, uint64_t a2, uint64_t a3, const __CFArray *a4, unsigned int (*a5)(uint64_t, const void *, CFTypeRef *), void (*a6)(uint64_t, void))
{
  v54 = *MEMORY[0x277D85DE8];
  v11 = _os_activity_create(&dword_2577D8000, "mmcs-get-chunks", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  v12 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_DEFAULT, "MMCSGetChunks - Start.", buf, 2u);
  }

  if (!a5 || !a6)
  {
    MMCSGetChunks_cold_1();
  }

  v45 = 0;
  v46 = 0;
  if (mmcs_local_chunk_satisfyer_create(&v46, a1, a2, 0, &v45, 0))
  {
    v38 = a6;
    object = v11;
    v40 = malloc_type_malloc(0x8000uLL, 0x100004077774924uLL);
    Count = CFArrayGetCount(a4);
    if (Count >= 1)
    {
      v14 = Count;
      for (i = 0; v14 != i; ++i)
      {
        v43 = 0;
        cf = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(a4, i);
        v17 = CFGetTypeID(ValueAtIndex);
        if (v17 == CFDataGetTypeID())
        {
          if (a5(a2, ValueAtIndex, &v43))
          {
            if (v43)
            {
              if (MMCSItemReaderWriterOpen(v43, &cf))
              {
                v18 = v46;
                v46[4] = v43;
                v18[5] = &v45;
                v42 = 0;
                BytePtr = CFDataGetBytePtr(ValueAtIndex);
                if (mmcs_chunk_reference_create(&v42, 0, BytePtr, 0, 0))
                {
                  v41 = 0;
                  if (mmcs_chunk_instance_create(&v41, v42, 0, 0, 0))
                  {
                    RegisteredChunk = mmcs_chunk_instance_create_RegisteredChunk(v41);
                    if (RegisteredChunk)
                    {
                      v21 = RegisteredChunk;
                      if (!mmcs_local_chunk_satisfyer_perform(v46, v41, RegisteredChunk, 1, v40, 0x8000uLL, &cf))
                      {
                        v22 = mmcs_logging_logger_default();
                        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_2577D8000, v22, OS_LOG_TYPE_ERROR, "MMCSGetChunks, fatal error copying source chunk.", buf, 2u);
                        }
                      }

                      goto LABEL_34;
                    }

                    v31 = mmcs_logging_logger_default();
                    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      v24 = v31;
                      v25 = "MMCSGetChunks, failed to created source registered chunk.";
                      goto LABEL_32;
                    }
                  }

                  else
                  {
                    v30 = mmcs_logging_logger_default();
                    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      v24 = v30;
                      v25 = "MMCSGetChunks, failed to created source chunk instance.";
                      goto LABEL_32;
                    }
                  }
                }

                else
                {
                  v29 = mmcs_logging_logger_default();
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    v24 = v29;
                    v25 = "MMCSGetChunks, failed to created destionation chunk reference.";
                    goto LABEL_32;
                  }
                }
              }

              else
              {
                v28 = mmcs_logging_logger_default();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  v24 = v28;
                  v25 = "MMCSGetChunks, destination item reader did not open.";
                  goto LABEL_32;
                }
              }
            }

            else
            {
              v27 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                v24 = v27;
                v25 = "MMCSGetChunks, retrieval of destination item reader writer returned nil.";
                goto LABEL_32;
              }
            }
          }

          else
          {
            v26 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v24 = v26;
              v25 = "MMCSGetChunks, retrieval of destination item reader writer failed.";
              goto LABEL_32;
            }
          }
        }

        else
        {
          v23 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v24 = v23;
            v25 = "MMCSGetChunks, chunkSignatures array element had incorrect type.";
LABEL_32:
            _os_log_impl(&dword_2577D8000, v24, OS_LOG_TYPE_ERROR, v25, buf, 2u);
          }
        }

        v21 = 0;
LABEL_34:
        v32 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          if (v41)
          {
            v33 = "no";
            if (*(v41 + 48))
            {
              v33 = "yes";
            }
          }

          else
          {
            v33 = "no";
          }

          *buf = 138412802;
          v49 = ValueAtIndex;
          v50 = 2080;
          v51 = v33;
          v52 = 2112;
          v53 = cf;
          _os_log_impl(&dword_2577D8000, v32, OS_LOG_TYPE_DEFAULT, "MMCSGetChunks, chunk %@ satisfied locally %s eith error %@", buf, 0x20u);
        }

        v46[4] = 0;
        MMCSItemReaderWriterClose(v43, 0);
        if (v43)
        {
          C3BaseRelease(v43);
        }

        v43 = 0;
        if (v45)
        {
          C3BaseRelease(v45);
        }

        v45 = 0;
        mmcs_chunk_reference_dealloc(v42);
        mmcs_chunk_instance_dealloc(v41);
        if (v21)
        {
          free(v21);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }
    }

    v38(a2, 0);
    v34 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = v46[9];
      *buf = 134217984;
      v49 = v35;
      _os_log_impl(&dword_2577D8000, v34, OS_LOG_TYPE_DEFAULT, "MMCSGetChunks - Done, found %llu bytes.", buf, 0xCu);
    }

    if (v46)
    {
      C3BaseRelease(v46);
    }

    v46 = 0;
    if (object)
    {
      os_release(object);
    }

    if (v40)
    {
      free(v40);
    }
  }

  else
  {
    v36 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2577D8000, v36, OS_LOG_TYPE_ERROR, "MMCSGetChunks, failed to initialize local chunk satisfyer.", buf, 2u);
    }

    a6(a2, 0);
  }

  os_activity_scope_leave(&state);
  v37 = *MEMORY[0x277D85DE8];
}

uint64_t MMCSGetItems(uint64_t a1, const void *a2, const __CFString *a3, uint64_t a4, const __CFDictionary *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, CFErrorRef *a10)
{
  v35 = *MEMORY[0x277D85DE8];
  v18 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v33 = a2;
    v19 = a3;
    v20 = a7;
    v21 = a8;
    v22 = a4;
    v23 = a5;
    v24 = a6;
    v25 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"get items");
    v26 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_impl(&dword_2577D8000, v26, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    a6 = v24;
    a5 = v23;
    a4 = v22;
    a8 = v21;
    a7 = v20;
    a3 = v19;
    a2 = v33;
    if (v25)
    {
      CFRelease(v25);
    }
  }

  if (a10)
  {
    *a10 = 0;
  }

  if (!a1)
  {
    goto LABEL_19;
  }

  if (!a2 || !a3 || !a7 || !a8)
  {
    if (a10)
    {
      v27 = @"Missing required parameters.";
      v28 = 40;
      goto LABEL_18;
    }

LABEL_19:
    items = 0;
    goto LABEL_20;
  }

  if (*(a1 + 120))
  {
    if (a10)
    {
      v27 = @"Engine is already closed.";
      v28 = 26;
LABEL_18:
      items = 0;
      *a10 = mmcs_cferror_create_error(@"com.apple.mmcs", v28, v27);
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  *buf = 0;
  CStringFromCFStringSafely = _getCStringFromCFStringSafely(a3, 0x8000100u, buf);
  items = mmcs_get_items(a1, a4, a5, a2, CStringFromCFStringSafely, a6, a7, a8, a9, a10);
  if (*buf)
  {
    free(*buf);
  }

LABEL_20:
  v30 = *MEMORY[0x277D85DE8];
  return items;
}

const __CFArray *MMCSPutItems(uint64_t a1, const void *a2, const __CFString *a3, uint64_t a4, const __CFDictionary *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, CFErrorRef *a11)
{
  v29 = *MEMORY[0x277D85DE8];
  v18 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"put items");
    v20 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v19;
      _os_log_impl(&dword_2577D8000, v20, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v19)
    {
      CFRelease(v19);
    }
  }

  if (a11)
  {
    *a11 = 0;
  }

  if (!a1)
  {
    goto LABEL_19;
  }

  if (!a2 || !a3 || !a7 || !a8)
  {
    if (a11)
    {
      v21 = @"Missing required parameters.";
      v22 = 40;
      goto LABEL_18;
    }

LABEL_19:
    v23 = 0;
    goto LABEL_20;
  }

  if (*(a1 + 120))
  {
    if (a11)
    {
      v21 = @"Engine is already closed.";
      v22 = 26;
LABEL_18:
      v23 = 0;
      *a11 = mmcs_cferror_create_error(@"com.apple.mmcs", v22, v21);
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  *buf = 0;
  CStringFromCFStringSafely = _getCStringFromCFStringSafely(a3, 0x8000100u, buf);
  v23 = mmcs_put_items(a1, a4, a5, a2, CStringFromCFStringSafely, a6, a7, a8, a9, a10, a11);
  if (*buf)
  {
    free(*buf);
  }

LABEL_20:
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

void MMCSUpdateItems(uint64_t a1, const void *a2, const __CFString *a3, uint64_t a4, const __CFDictionary *a5, void (*a6)(uint64_t, CFDictionaryRef))
{
  v23 = *MEMORY[0x277D85DE8];
  v12 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"update items");
    v14 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v22 = v13;
      _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }

  if (!a1 || !a2 || !a3 || !a5)
  {
    v15 = @"Missing required parameters.";
    v16 = 40;
LABEL_13:
    error = mmcs_cferror_create_error(@"com.apple.mmcs", v16, v15);
    mmcs_update_request_abort(a4, error, a6);
    if (error)
    {
      CFRelease(error);
    }

    goto LABEL_15;
  }

  if (*(a1 + 120))
  {
    v15 = @"Engine is already closed.";
    v16 = 26;
    goto LABEL_13;
  }

  v20 = 0;
  CStringFromCFStringSafely = _getCStringFromCFStringSafely(a3, 0x8000100u, &v20);
  mmcs_update_items(a1, a2, CStringFromCFStringSafely, a4, a5, a6);
  if (v20)
  {
    free(v20);
  }

LABEL_15:
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t MMCSPutSection(uint64_t a1, const void *a2, const __CFString *a3, uint64_t a4, const __CFDictionary *a5, const void *a6, uint64_t a7, CFIndex a8, uint64_t a9, uint64_t a10, int a11, CFErrorRef *a12)
{
  v30 = *MEMORY[0x277D85DE8];
  v19 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"put section");
    v21 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v20;
      _os_log_impl(&dword_2577D8000, v21, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v20)
    {
      CFRelease(v20);
    }
  }

  if (a12)
  {
    *a12 = 0;
  }

  if (!a1)
  {
    goto LABEL_19;
  }

  if (!a2 || !a3 || !a7 || !a9)
  {
    if (a12)
    {
      v22 = @"Missing required parameters.";
      v23 = 40;
      goto LABEL_18;
    }

LABEL_19:
    v24 = 0;
    goto LABEL_20;
  }

  if (*(a1 + 120))
  {
    if (a12)
    {
      v22 = @"Engine is already closed.";
      v23 = 26;
LABEL_18:
      v24 = 0;
      *a12 = mmcs_cferror_create_error(@"com.apple.mmcs", v23, v22);
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  *buf = 0;
  CStringFromCFStringSafely = _getCStringFromCFStringSafely(a3, 0x8000100u, buf);
  v24 = mmcs_put_section_with_items(a1, a2, CStringFromCFStringSafely, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  if (*buf)
  {
    free(*buf);
  }

LABEL_20:
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t MMCSGetItemsWithSection(uint64_t a1, const void *a2, const __CFString *a3, uint64_t a4, const __CFDictionary *a5, uint64_t a6, uint64_t a7, int64_t a8, uint64_t *a9, uint64_t a10, char *a11, char *a12, CFErrorRef *a13)
{
  v62 = *MEMORY[0x277D85DE8];
  v18 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"get section");
    v20 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v19;
      _os_log_impl(&dword_2577D8000, v20, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v19)
    {
      CFRelease(v19);
    }
  }

  if (a13)
  {
    *a13 = 0;
  }

  v60 = 0;
  *buf = 0;
  if (!a2 || !a3 || !a9 || !a1 || !a10)
  {
    v21 = @"Missing required parameters.";
    v22 = 40;
    goto LABEL_16;
  }

  if (*(a1 + 120))
  {
    v21 = @"Engine is already closed.";
    v22 = 26;
LABEL_16:
    error = mmcs_cferror_create_error(@"com.apple.mmcs", v22, v21);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    Mutable = 0;
    v28 = 0;
    goto LABEL_17;
  }

  v30 = *MEMORY[0x277CBECE8];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a5);
  v28 = MutableCopy;
  if (!MutableCopy)
  {
    v46 = @"Failed to alloc mutableRequestOptions.";
    v47 = 36;
    goto LABEL_58;
  }

  Value = CFDictionaryGetValue(MutableCopy, @"kMMCSRequestOptionItemOptions");
  if (!Value || (theArray = Value, v33 = CFGetTypeID(Value), v33 != CFArrayGetTypeID()))
  {
    v46 = @"Missing kMMCSRequestOptionItemOptions.";
LABEL_56:
    v47 = 40;
LABEL_58:
    error = mmcs_cferror_create_error(@"com.apple.mmcs", v47, v46);
    v24 = 0;
    v25 = 0;
LABEL_59:
    v26 = 0;
LABEL_60:
    Mutable = 0;
    goto LABEL_17;
  }

  if (CFArrayGetCount(theArray) != a8)
  {
    v46 = @"kMMCSRequestOptionItemOptions had wrong type.";
    goto LABEL_56;
  }

  Mutable = CFArrayCreateMutable(v30, 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    v48 = @"Failed to alloc newItemOptionsArray.";
    v49 = 36;
LABEL_64:
    error = mmcs_cferror_create_error(@"com.apple.mmcs", v49, v48);
    v24 = 0;
LABEL_65:
    v25 = 0;
LABEL_73:
    v26 = 0;
LABEL_17:
    items = 0;
    *buf = error;
    if (!a13)
    {
      goto LABEL_40;
    }

    goto LABEL_18;
  }

  v51 = a8;
  allocator = v30;
  if (a8 >= 1)
  {
    v34 = 0;
    while (1)
    {
      v53 = v34;
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v34);
      if (!ValueAtIndex || (v36 = ValueAtIndex, v37 = CFGetTypeID(ValueAtIndex), v37 != CFDictionaryGetTypeID()))
      {
        v48 = @"kMMCSRequestOptionItemOptions element had wrong type.";
        v49 = 40;
        goto LABEL_64;
      }

      v24 = CFDictionaryCreateMutableCopy(allocator, 0, v36);
      if (!v24)
      {
        error = mmcs_cferror_create_error(@"com.apple.mmcs", 36, @"Failed to alloc mutableItemOptionsElementDictionary.");
        goto LABEL_65;
      }

      v25 = CFNumberCreate(allocator, kCFNumberSInt64Type, a11);
      if (!v25)
      {
        v50 = @"offsets type issue.";
        goto LABEL_72;
      }

      CFDictionarySetValue(v24, @"kMMCSRequestedFileOffset", v25);
      CFRelease(v25);
      v25 = CFNumberCreate(allocator, kCFNumberSInt64Type, a12);
      if (!v25)
      {
        v50 = @"lengths type issue.";
        goto LABEL_72;
      }

      CFDictionarySetValue(v24, @"kMMCSRequestedLengthAtFileOffset", v25);
      CFRelease(v25);
      v25 = mmcs_file_signature_to_cfdata(*(a10 + 8 * v34));
      if (!v25)
      {
        break;
      }

      CFDictionarySetValue(v24, @"kMMCSRequestedRangeSignature", v25);
      CFRelease(v25);
      CFArrayAppendValue(Mutable, v24);
      CFRelease(v24);
      ++v34;
      a12 += 8;
      a11 += 8;
      a8 = v51;
      if (v51 == v53 + 1)
      {
        goto LABEL_34;
      }
    }

    v50 = @"signatures issue.";
LABEL_72:
    error = mmcs_cferror_create_error(@"com.apple.mmcs", 40, v50);
    goto LABEL_73;
  }

LABEL_34:
  CFDictionarySetValue(v28, @"kMMCSRequestOptionItemOptions", Mutable);
  CFRelease(Mutable);
  v38 = a8;
  v25 = malloc_type_calloc(a8, 8uLL, 0x50040EE9192B6uLL);
  if (!v25)
  {
    error = mmcs_cferror_create_error(@"com.apple.mmcs", 36, @"Failed to alloc newTokens.");
    v24 = 0;
    goto LABEL_59;
  }

  v39 = malloc_type_calloc(v38, 8uLL, 0x50040EE9192B6uLL);
  v26 = v39;
  if (!v39)
  {
    error = mmcs_cferror_create_error(@"com.apple.mmcs", 36, @"Failed to alloc newSignatures.");
    v24 = 0;
    goto LABEL_60;
  }

  if (v38 >= 1)
  {
    v40 = v25;
    v41 = v39;
    v42 = v51;
    do
    {
      *v40++ = a7;
      *v41++ = a6;
      --v42;
    }

    while (v42);
  }

  CStringFromCFStringSafely = _getCStringFromCFStringSafely(a3, 0x8000100u, &v60);
  items = mmcs_get_items(a1, a4, v28, a2, CStringFromCFStringSafely, v51, a9, v26, v25, buf);
  v24 = 0;
  Mutable = 0;
  error = *buf;
  if (!a13)
  {
    goto LABEL_40;
  }

LABEL_18:
  if (error)
  {
    *a13 = error;
    goto LABEL_42;
  }

LABEL_40:
  if (error)
  {
    CFRelease(error);
  }

LABEL_42:
  *buf = 0;
  if (v60)
  {
    free(v60);
  }

  v60 = 0;
  if (v25)
  {
    free(v25);
  }

  if (v26)
  {
    free(v26);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  v44 = *MEMORY[0x277D85DE8];
  return items;
}

uint64_t MMCSRegisterFileWithOptions(uint64_t a1, uint64_t a2, void **a3, void *a4, CFErrorRef *a5, const __CFDictionary *a6)
{
  v33 = *MEMORY[0x277D85DE8];
  v12 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"register file");
    v14 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v13;
      _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }

  *buf = 0;
  theDict[1] = 0;
  v32 = 0;
  *&buf[8] = a2;
  theDict[0] = a6;
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
    if (!MMCSRegisterFilesWithOptions(a1, buf, 1u))
    {
      v22 = 0;
      *a5 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 40, @"engine argument is NULL", v15, v16, v17, v18, v19, v28);
      goto LABEL_30;
    }

    if (!v32)
    {
      if (theDict[1] && (Value = CFDictionaryGetValue(theDict[1], @"kMMCSRegisterFileResultError")) != 0)
      {
        v21 = Value;
        CFRetain(Value);
        v22 = 0;
        *a5 = v21;
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v23 = MMCSRegisterFilesWithOptions(a1, buf, 1u);
    v22 = 0;
    if (!v23 || !v32)
    {
      goto LABEL_30;
    }
  }

  if (a3)
  {
    if (theDict[1])
    {
      v24 = CFDictionaryGetValue(theDict[1], @"kMMCSRegisterFileResultSignature");
      if (v24)
      {
        *a3 = MMCSSignatureCreateWithData(v24);
      }
    }
  }

  if (a4)
  {
    if (theDict[1])
    {
      v25 = CFDictionaryGetValue(theDict[1], @"kMMCSRegisterFileResultFileSize");
      if (v25)
      {
        valuePtr = 0;
        if (CFNumberGetValue(v25, kCFNumberSInt64Type, &valuePtr))
        {
          *a4 = valuePtr;
        }
      }
    }
  }

  v22 = 1;
LABEL_30:
  if (theDict[1])
  {
    CFRelease(theDict[1]);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t MMCSRegisterFilesWithOptions(uint64_t result, uint64_t a2, unsigned int a3)
{
  v73 = *MEMORY[0x277D85DE8];
  if (result)
  {
    if (a3)
    {
      v3 = result;
      v61 = 0;
      v4 = *MEMORY[0x277CBECE8];
      v5 = a3;
      v6 = (a2 + 32);
      v7 = MEMORY[0x277CBF138];
      v8 = MEMORY[0x277CBF150];
      v9 = a3;
      alloc = *MEMORY[0x277CBECE8];
      do
      {
        Mutable = CFDictionaryCreateMutable(v4, 0, v7, v8);
        *v6 = 0;
        *(v6 - 1) = Mutable;
        if (*(v3 + 120))
        {
          v16 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 26, @"The engine is closed", v10, v11, v12, v13, v14, v59);
          if (v16)
          {
            v17 = v16;
            CFDictionarySetValue(Mutable, @"kMMCSRegisterFileResultError", v16);
            CFRelease(v17);
          }
        }

        else
        {
          v18 = v8;
          v19 = v7;
          v67 = 0;
          v20 = *(v6 - 2);
          if (v20)
          {
            v21 = mmcs_get_BOOLean_from_cfdictionary_object_for_key(v20, @"kMMCSRegisterFileOptionPublic", 0) == 0;
            BOOLean_from_cfdictionary_object_for_key = mmcs_get_BOOLean_from_cfdictionary_object_for_key(*(v6 - 2), @"kMMCSRegisterFileOptionChunk", 0);
          }

          else
          {
            BOOLean_from_cfdictionary_object_for_key = 0;
            v21 = 1;
          }

          v65 = 0;
          v66 = 0;
          v64 = 0;
          v23 = *(v3 + 152);
          v24 = mmcs_engine_owner(v3);
          ItemReaderWriterForItem = MMCSEngineClientContextGetItemReaderWriterForItem(v23, v24, 0, *(v6 - 3), 1, &v65, &v67);
          v26 = v65;
          if (ItemReaderWriterForItem && v65)
          {
            if (MMCSItemReaderWriterOpen(v65, &v67))
            {
              *v6 = mmcs_compute_signature_and_register_item_with_item_reader_writer(*(v3 + 16), *(v6 - 3), v65, v21, BOOLean_from_cfdictionary_object_for_key, 0, &v66, &v64, 0, 0, &v67);
              if (!MMCSItemReaderWriterClose(v65, &v67))
              {
                if (v67)
                {
                  v27 = mmcs_cferror_copy_description(v67);
                  v28 = mmcs_logging_logger_default();
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                  {
                    v29 = @"(none)";
                    if (v27)
                    {
                      v29 = v27;
                    }

                    v30 = CFStringCreateWithFormat(alloc, 0, @"Closing itemReaderWriter failed with error %@", v29);
                    v31 = mmcs_logging_logger_default();
                    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543362;
                      *&buf[4] = v30;
                      _os_log_impl(&dword_2577D8000, v31, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
                    }

                    if (v30)
                    {
                      CFRelease(v30);
                    }
                  }

                  if (v27)
                  {
                    CFRelease(v27);
                  }
                }
              }
            }

            v26 = v65;
          }

          v7 = v19;
          if (v26)
          {
            C3BaseRelease(v26);
          }

          v65 = 0;
          v8 = v18;
          if (*v6)
          {
            v32 = CKFileDigestResultsFileSignature();
            v33 = MMCSSignatureCopyData(v32);
            v4 = alloc;
            if (v33)
            {
              v34 = v33;
              CFDictionarySetValue(Mutable, @"kMMCSRegisterFileResultSignature", v33);
              CFRelease(v34);
            }

            *buf = CKFileDigestResultsFileLength();
            v35 = CFNumberCreate(alloc, kCFNumberSInt64Type, buf);
            if (v35)
            {
              v36 = v35;
              CFDictionarySetValue(Mutable, @"kMMCSRegisterFileResultFileSize", v35);
              CFRelease(v36);
            }

            valuePtr = v64;
            v37 = CFNumberCreate(alloc, kCFNumberSInt32Type, &valuePtr);
            if (v37)
            {
              v38 = v37;
              CFDictionarySetValue(Mutable, @"kMMCSRegisterFileResultChunkCount", v37);
              CFRelease(v38);
            }

            v39 = *v6 == 0;
            v61 = 1;
          }

          else
          {
            v39 = 1;
            v4 = alloc;
          }

          v40 = v67;
          if (v39 && v67)
          {
            CFDictionarySetValue(Mutable, @"kMMCSRegisterFileResultError", v67);
            v40 = v67;
          }

          if (v40)
          {
            CFRelease(v40);
          }

          v67 = 0;
          if (v66)
          {
            C3BaseRelease(v66);
          }
        }

        v6 += 40;
        --v9;
      }

      while (v9);
      if (v61)
      {
        mmcs_engine_force_commit(v3);
      }

      v41 = a2 + 24;
      do
      {
        v42 = *v41;
        if (!*(v41 + 8))
        {
          if (v42 && (Value = CFDictionaryGetValue(v42, @"kMMCSRegisterFileResultError")) != 0)
          {
            v52 = mmcs_cferror_copy_description(Value);
          }

          else
          {
            v52 = 0;
          }

          v55 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = *(v41 - 16);
            if (v52)
            {
              v57 = v52;
            }

            else
            {
              v57 = @"(no error specified)";
            }

            *buf = 134218242;
            *&buf[4] = v56;
            v69 = 2114;
            v70 = v57;
            _os_log_impl(&dword_2577D8000, v55, OS_LOG_TYPE_DEFAULT, "Failed to register item %lld in chunk store: %{public}@.", buf, 0x16u);
          }

          if (v52)
          {
            CFRelease(v52);
          }

          goto LABEL_68;
        }

        if (v42)
        {
          v43 = CFDictionaryGetValue(v42, @"kMMCSRegisterFileResultSignature");
          if (*v41)
          {
            v44 = CFDictionaryGetValue(*v41, @"kMMCSRegisterFileResultChunkCount");
            if (v44)
            {
              v45 = v44;
              v46 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
              {
                v47 = *(v41 - 16);
                *buf = 134218498;
                *&buf[4] = v47;
                v69 = 2114;
                v70 = v43;
                v71 = 2114;
                v72 = v45;
                v48 = v46;
                v49 = "Committed newly registered item %lld as %{public}@ to chunk store with %{public}@ chunks.";
                v50 = 32;
LABEL_59:
                _os_log_impl(&dword_2577D8000, v48, OS_LOG_TYPE_INFO, v49, buf, v50);
                goto LABEL_68;
              }

              goto LABEL_68;
            }
          }
        }

        else
        {
          v43 = 0;
        }

        v53 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = *(v41 - 16);
          *buf = 134218242;
          *&buf[4] = v54;
          v69 = 2114;
          v70 = v43;
          v48 = v53;
          v49 = "Committed newly registered item %lld as %{public}@ to chunk store.";
          v50 = 22;
          goto LABEL_59;
        }

LABEL_68:
        v41 += 40;
        --v5;
      }

      while (v5);
    }

    result = 1;
  }

  v58 = *MEMORY[0x277D85DE8];
  return result;
}

void *MMCSSignatureCreateWithData(const __CFData *a1)
{
  if (!a1)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (!mmcs_file_signature_is_valid_n(BytePtr, Length))
  {
    return 0;
  }

  v4 = CFDataGetBytePtr(a1);

  return mmcs_file_signature_copy(v4);
}

CFDataRef MMCSSignatureCopyData(const UInt8 *a1)
{
  if (!mmcs_file_signature_is_valid(a1))
  {
    return 0;
  }

  v2 = *MEMORY[0x277CBECE8];
  v3 = mmcs_file_signature_size_with_scheme(a1);

  return CFDataCreate(v2, a1, v3);
}

uint64_t MMCSDuplicateRegisteredfile(uint64_t a1, const __CFString *a2, const void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 16);
  if (CKGetRegisteredFileMetadata() && (v7 = *(a1 + 16), (CKRegisterFile() & 1) != 0))
  {
    v8 = *(a1 + 16);
    if (CKGetRegisteredChunksForItemID())
    {
      v9 = 0;
      while (1)
      {
        CKRegisteredChunkSignature();
        CKRegisteredChunkKey();
        v10 = CKCreateRegisteredChunk();
        if (!v10)
        {
          break;
        }

        v11 = v10;
        CKRegisteredChunkSetItemID();
        CKRegisteredChunkLength();
        CKRegisteredChunkSetLength();
        CKRegisteredChunkOffset();
        CKRegisteredChunkSetOffset();
        v12 = *(a1 + 16);
        v13 = CKRegisterTemporaryChunk();
        free(v11);
        if (!v13)
        {
          break;
        }

        CKRegisteredChunkSize();
        if (++v9 >= 0x4E20)
        {
          v14 = *(a1 + 16);
          v15 = CKConvertTemporaryChunks();
          goto LABEL_16;
        }
      }
    }

    v19 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v24 = a2;
      _os_log_impl(&dword_2577D8000, v19, OS_LOG_TYPE_ERROR, "MMCSDuplicateRegisteredfile failed to get chunk list for itemID %lld", buf, 0xCu);
    }

    v15 = 0;
LABEL_16:
    mmcs_engine_copy_cached_ranged_items(a1, a2, a3);
    if (v15)
    {
      v20 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"MMCSDuplicateRegisteredfile copied id %llu to %llu", a2, a3);
        v22 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v24 = v21;
          _os_log_impl(&dword_2577D8000, v22, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v21)
        {
          CFRelease(v21);
        }
      }
    }
  }

  else
  {
    v16 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v24 = a2;
      _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_ERROR, "Unable to duplicate itemID %lld", buf, 0xCu);
    }

    v15 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t MMCSRegisterFiles(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a3)
  {
    return 1;
  }

  v6 = malloc_type_calloc(1uLL, 40 * a3, 0x10600401EFA0F88uLL);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = a3;
  v9 = (a2 + 16);
  v10 = v6 + 2;
  v11 = a3;
  do
  {
    v12 = *(v9 - 2);
    *(v10 - 2) = 0;
    *(v10 - 1) = v12;
    *v10 = 0;
    v10[1] = 0;
    v10 += 5;
    *(v9 - 8) = 0;
    v9[1] = 0;
    v9[2] = 0;
    *v9 = 0;
    v9 += 5;
    --v11;
  }

  while (v11);
  v13 = MMCSRegisterFilesWithOptions(a1, v6, a3);
  if (v13)
  {
    v14 = (a2 + 32);
    v15 = (v7 + 24);
    do
    {
      *(v14 - 24) = *(v15 + 8);
      if (*v15)
      {
        Value = CFDictionaryGetValue(*v15, @"kMMCSRegisterFileResultSignature");
        if (Value)
        {
          *(v14 - 2) = MMCSSignatureCreateWithData(Value);
        }

        v17 = CFDictionaryGetValue(*v15, @"kMMCSRegisterFileResultFileSize");
        if (v17)
        {
          valuePtr = 0;
          if (CFNumberGetValue(v17, kCFNumberSInt64Type, &valuePtr))
          {
            *(v14 - 1) = valuePtr;
          }
        }

        v18 = CFDictionaryGetValue(*v15, @"kMMCSRegisterFileResultError");
        if (v18)
        {
          v19 = v18;
          CFRetain(v18);
          *v14 = v19;
        }

        if (*v15)
        {
          CFRelease(*v15);
        }

        *v15 = 0;
      }

      v14 += 5;
      v15 += 5;
      --v8;
    }

    while (v8);
  }

  free(v7);
  return v13;
}

void MMCSRegisterItems(uint64_t a1, uint64_t a2, const __CFDictionary *a3, void (*a4)(uint64_t, CFDictionaryRef))
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"register items");
    v10 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138543362;
      v16 = v9;
      _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@", &v15, 0xCu);
    }

    if (v9)
    {
      CFRelease(v9);
    }
  }

  if (a1 && a3)
  {
    if (!*(a1 + 120))
    {
      mmcs_register_items(a1, a2, a3, a4);
      goto LABEL_14;
    }

    v11 = @"Engine is already closed.";
    v12 = 26;
  }

  else
  {
    v11 = @"Missing required parameters.";
    v12 = 40;
  }

  error = mmcs_cferror_create_error(@"com.apple.mmcs", v12, v11);
  mmcs_register_request_abort(a2, error, a4);
  if (error)
  {
    CFRelease(error);
  }

LABEL_14:
  v14 = *MEMORY[0x277D85DE8];
}

void MMCSUnregisterFiles(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a1 && !*(a1 + 120) && *(a1 + 16))
  {
    mmcs_library_init();
    alloc = *MEMORY[0x277CBECE8];
    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    if (a3)
    {
      v8 = 0;
      while (1)
      {
        v9 = *(a2 + v8);
        cf = 0;
        v24 = 0;
        if (mmcs_engine_file_path(a1, "tmpm", v9, &v24, &cf))
        {
          break;
        }

        v19 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v17 = CFStringCreateWithFormat(alloc, 0, @"Unable to create path for item %lld %@", v9, cf);
          v18 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          goto LABEL_22;
        }

LABEL_24:
        if (v24)
        {
          free(v24);
        }

        v24 = 0;
        if (v8)
        {
          CFStringAppendFormat(Mutable, 0, @", %llu", v9);
        }

        else
        {
          CFStringAppendFormat(Mutable, 0, @"%llu", v9);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        cf = 0;
        v20 = *(a1 + 16);
        CKUnregisterFile();
        mmcs_engine_clear_cached_ranged_items(a1, v9);
        v8 += 8;
        if (8 * a3 == v8)
        {
          goto LABEL_32;
        }
      }

      if (gMMCS_DebugLevel >= 5)
      {
        v10 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = CFStringCreateWithFormat(alloc, 0, @"Deleting temporary file at path %s for item %lld", v24, v9);
          v12 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v26 = v11;
            _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v11)
          {
            CFRelease(v11);
          }
        }
      }

      if (!unlink(v24))
      {
        goto LABEL_24;
      }

      v13 = *__error();
      if (*__error() == 2)
      {
        goto LABEL_24;
      }

      v14 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v15 = v24;
      v16 = strerror(v13);
      v17 = CFStringCreateWithFormat(alloc, 0, @"Deleting temporary file at path %s for item %lld failed :%s(%d)", v15, v9, v16, v13);
      v18 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
LABEL_21:
        *buf = 138543362;
        v26 = v17;
        _os_log_impl(&dword_2577D8000, v18, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

LABEL_22:
      if (v17)
      {
        CFRelease(v17);
      }

      goto LABEL_24;
    }

LABEL_32:
    mmcs_engine_force_commit(a1);
    v21 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v26 = Mutable;
      _os_log_impl(&dword_2577D8000, v21, OS_LOG_TYPE_INFO, "Committed unregister of items with itemIDs (%{public}@)", buf, 0xCu);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}