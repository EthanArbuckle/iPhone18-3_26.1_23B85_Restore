_DWORD *Create_MethodCompletionInfo(__CFError *a1, __CFHTTPMessage *a2, uint64_t a3, const char *a4, unsigned int a5, int a6, int a7)
{
  v52 = *MEMORY[0x277D85DE8];
  v14 = malloc_type_malloc(0xB8uLL, 0x10F004063C8919BuLL);
  if (!v14)
  {
    goto LABEL_54;
  }

  if (a1)
  {
    Domain = CFErrorGetDomain(a1);
    if (CFEqual(@"com.apple.mmcs", Domain) && CFErrorGetCode(a1) == 38)
    {
      v16 = CFErrorCopyUserInfo(a1);
      Value = CFDictionaryGetValue(v16, *MEMORY[0x277CBEE78]);
      if (Value)
      {
        v18 = Value;
        cf = mmcs_cferror_copy_description(a1);
        v47 = mmcs_cferror_copy_description(v18);
        v19 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v49 = v47;
          v50 = 2112;
          v51 = cf;
          _os_log_impl(&dword_2577D8000, v19, OS_LOG_TYPE_DEBUG, "Reporting underlyingError %@ back to iCloud instead of %@", buf, 0x16u);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v47)
        {
          CFRelease(v47);
        }
      }

      else
      {
        v18 = a1;
      }

      if (v16)
      {
        CFRelease(v16);
      }
    }

    else
    {
      v18 = a1;
    }
  }

  else
  {
    v18 = 0;
  }

  chunkserver__method_completion_info__init(v14);
  v14[44] = 1;
  v14[45] = a7;
  if (v18 && mmcs_report_is_enabled_for_config_key(@"client.error.on.failure", a6, a5))
  {
    *(v14 + 11) = create_error_response_for_Error(v18);
  }

  if (!a2)
  {
    v23 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v24 = "expected request url.";
    goto LABEL_27;
  }

  v20 = CFHTTPMessageCopyRequestURL(a2);
  if (v20)
  {
    v21 = v20;
    v22 = CFURLGetString(v20);
    *(v14 + 3) = createCStringWithCFString(v22);
    CFRelease(v21);
    goto LABEL_28;
  }

  v23 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v24 = "can't get request url.";
LABEL_27:
    _os_log_impl(&dword_2577D8000, v23, OS_LOG_TYPE_ERROR, v24, buf, 2u);
  }

LABEL_28:
  if (!a3 || !mmcs_http_context_get_response_message(a3))
  {
    goto LABEL_52;
  }

  if (mmcs_report_is_enabled_for_config_key(@"vendor.response.code", a6, a5))
  {
    if (mmcs_http_context_has_http_status(a3))
    {
      v25 = mmcs_http_context_http_status(a3);
    }

    else
    {
      v26 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v49 = a3;
        _os_log_impl(&dword_2577D8000, v26, OS_LOG_TYPE_ERROR, "mmcs http context <%p> does not have status code!", buf, 0xCu);
      }

      v25 = -1;
    }

    v14[8] = v25;
  }

  v27 = mmcs_http_context_status_succeeded(a3);
  response_message = mmcs_http_context_get_response_message(a3);
  *(v14 + 6) = 0;
  v29 = mmcs_report_copy_headers_from_vendor_response(response_message, v27, a6, a5);
  if (v29)
  {
    v30 = v29;
    Count = CFDictionaryGetCount(v29);
    *(v14 + 7) = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
    CFDictionaryApplyFunction(v30, copy_vendor_response_headers, v14);
    CFRelease(v30);
  }

  if (v27)
  {
    goto LABEL_52;
  }

  if (mmcs_report_is_enabled_for_config_key(@"status.line.on.failure", a6, a5))
  {
    v32 = mmcs_http_context_get_response_message(a3);
    v33 = CFHTTPMessageCopyResponseStatusLine(v32);
    if (v33)
    {
      v34 = v33;
      *(v14 + 5) = createCStringWithCFString(v33);
      CFRelease(v34);
    }
  }

  if (!mmcs_is_apple_internal_install())
  {
    goto LABEL_52;
  }

  v35 = mmcs_report_value_for_config_key(@"vendor.body.max.bytes.on.failure.internal", a6, a5);
  cfindex_from_cftype_using_description = mmcs_get_cfindex_from_cftype_using_description(@"vendor.body.max.bytes.on.failure.internal", v35, 0);
  if (cfindex_from_cftype_using_description < 1)
  {
    goto LABEL_52;
  }

  v37 = cfindex_from_cftype_using_description;
  v38 = mmcs_http_context_copy_response_body(a3);
  if (!v38)
  {
    goto LABEL_52;
  }

  v39 = v38;
  if (v37 < CFDataGetLength(v38))
  {
    goto LABEL_49;
  }

  Length = CFDataGetLength(v39);
  if (Length)
  {
    v37 = Length;
LABEL_49:
    v41 = malloc_type_malloc(v37, 0x100004077774924uLL);
    *(v14 + 10) = v41;
    if (v41)
    {
      v42 = v41;
      *(v14 + 9) = v37;
      BytePtr = CFDataGetBytePtr(v39);
      memcpy(v42, BytePtr, v37);
      v14[16] = 1;
    }
  }

  CFRelease(v39);
LABEL_52:
  if (a4)
  {
    *(v14 + 19) = strdup(a4);
  }

LABEL_54:
  v44 = *MEMORY[0x277D85DE8];
  return v14;
}

void MethodCompletionInfo_SetReportingProperties(void *a1, CFDictionaryRef theDict, CFDictionaryRef a3)
{
  a1[15] = 0;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    a1[16] = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
    CFDictionaryApplyFunction(theDict, copy_vendor_nv_pairs, a1);
  }

  a1[18] = 0;
  if (a3)
  {
    v7 = CFDictionaryGetCount(a3);
    a1[18] = malloc_type_malloc(8 * v7, 0x2004093837F09uLL);

    CFDictionaryApplyFunction(a3, copy_client_nv_pairs, a1);
  }
}

void *copy_vendor_nv_pairs(const __CFString *a1, __CFString *a2, uint64_t a3)
{
  result = createNameValuePair(a1, a2);
  v6 = *(a3 + 120);
  v5 = *(a3 + 128);
  *(a3 + 120) = v6 + 1;
  *(v5 + 8 * v6) = result;
  return result;
}

void *copy_client_nv_pairs(const __CFString *a1, __CFString *a2, uint64_t a3)
{
  result = createNameValuePair(a1, a2);
  v6 = *(a3 + 136);
  v5 = *(a3 + 144);
  *(a3 + 136) = v6 + 1;
  *(v5 + 8 * v6) = result;
  return result;
}

_OWORD *mmcs_create_FileReferenceData(const __CFArray *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = malloc_type_malloc(0x40uLL, 0x10E004044EB5B3DuLL);
  if (!v2)
  {
    v8 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "mmcs_create_FileReferenceData";
      v9 = "%s failed to allocate fileReferenceData.";
LABEL_12:
      _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_ERROR, v9, &v12, 0xCu);
    }

LABEL_13:
    v3 = 0;
    goto LABEL_14;
  }

  v3 = v2;
  opaque__file_reference_data__init(v2);
  if (!a1)
  {
    goto LABEL_14;
  }

  Count = CFArrayGetCount(a1);
  v5 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
  if (!v5)
  {
    v8 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "mmcs_create_FileReferenceData";
      v9 = "%s failed to allocate package section item list";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v6 = v5;
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      v6[i] = CFArrayGetValueAtIndex(a1, i);
    }
  }

  *(v3 + 6) = Count;
  *(v3 + 7) = v6;
LABEL_14:
  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

_OWORD *mmcs_create_FileReferenceDataV3Chunk(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v11 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v17 = 0;
    v12 = "mmcs_create_FileReferenceDataV1Chunk cannot have NULL chunkEncryptionKey.";
    v13 = &v17;
LABEL_15:
    _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_ERROR, v12, v13, 2u);
    return 0;
  }

  v5 = CKChunkSchemeAndEncryptionKeySize();
  if (!v5)
  {
    v11 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v16 = 0;
    v12 = "mmcs_create_FileReferenceDataV1Chunk cannot have zero length chunkEncryptionSignature.";
    v13 = &v16;
    goto LABEL_15;
  }

  v6 = v5;
  v7 = malloc_type_malloc(0x40uLL, 0x10700407A2CD8F7uLL);
  if (!v7)
  {
    v11 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = 0;
      v12 = "mmcs_create_FileReferenceDataV1Chunk failed to allocate fileReferenceDataChunk.";
      v13 = &v15;
      goto LABEL_15;
    }

    return 0;
  }

  v8 = v7;
  opaque__file_reference_data__v3__chunk__init(v7);
  *(v8 + 3) = v6;
  *(v8 + 4) = a1;
  if (a3)
  {
    v9 = CKSubchunkBlobSize();
    if (v9)
    {
      v10 = a3;
    }

    else
    {
      v10 = 0;
    }

    *(v8 + 6) = v9;
    *(v8 + 7) = v10;
    *(v8 + 10) = 1;
  }

  else
  {
    *(v8 + 10) = 0;
  }

  return v8;
}

void _add_index_set(int a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = *a3;
    v7 = malloc_type_malloc(0x38uLL, 0x10F0040167B91E7uLL);
    if (v7)
    {
      v8 = v7;
      opaque__file_reference_data__v3__chunk_length_index_set__init(v7);
      v10 = *(v6 + 56);
      v9 = *(v6 + 64);
      *(v6 + 56) = v10 + 1;
      *(v9 + 8 * v10) = v8;
      v11 = a1;
      ProtobufCBinaryData_SetCopyBufferLen(v8 + 3, &v11, 4uLL);
      if (v8[4])
      {
        *(a3 + 8) = v8;
        mmcs_index_set_apply_function(a2, _add_index_set_range, a3);
      }

      else
      {
        *(a3 + 16) = 0;
        free(v8);
      }
    }

    else
    {
      *(a3 + 16) = 0;
    }
  }
}

void *_index_set_applier_function(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 >= 1)
  {
    v10 = v3;
    v11 = v4;
    v6 = result;
    v7 = a2 + result - 1;
    if (mmcs_index_set_contains_range(a3, result, v7))
    {
      v8 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_ERROR, "index set overlap", v9, 2u);
      }
    }

    return mmcs_index_set_add_range(a3, v6, v7);
  }

  return result;
}

void _add_index_set_range(int a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    if (a2 && (v6 = *(a3 + 8), (v7 = malloc_type_realloc(*(v6 + 48), 8 * *(v6 + 40) + 8, 0x2004093837F09uLL)) != 0))
    {
      *(v6 + 48) = v7;
      v8 = malloc_type_malloc(0x28uLL, 0x10600409AC856DDuLL);
      opaque__file_reference_data__v3__chunk_length_index_set__index_range__init(v8);
      v10 = *(v6 + 40);
      v9 = *(v6 + 48);
      *(v6 + 40) = v10 + 1;
      *(v9 + 8 * v10) = v8;
      v8[6] = a1;
      if (a2 >= 2)
      {
        v8[7] = 1;
        v8[8] = a2;
      }
    }

    else
    {
      *(a3 + 16) = 0;
    }
  }
}

void *add_checksum_applier(uint64_t a1, void *a2)
{
  v4 = (*(*a2 + 56) + 16 * a2[1]);
  *v4 = mmcs_chunk_signature_size_with_scheme(*(a1 + 8));
  result = mmcs_chunk_signature_copy(*(a1 + 8));
  v4[1] = result;
  ++a2[1];
  return result;
}

void *createNameValuePair(const __CFString *a1, __CFString *a2)
{
  v4 = malloc_type_malloc(0x28uLL, 0x1070040084410A6uLL);
  v5 = v4;
  if (v4)
  {
    chunkserver__name_value_pair__init(v4);
    v5[3] = createCStringWithCFString(a1);
    v6 = CFGetTypeID(a2);
    if (v6 != CFStringGetTypeID())
    {
      v7 = CFGetTypeID(a2);
      if (v7 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(a2))
        {
          a2 = @"true";
        }

        else
        {
          a2 = @"false";
        }
      }

      else
      {
        a2 = @"(null)";
      }
    }

    v5[4] = createCStringWithCFString(a2);
  }

  return v5;
}

void *copy_vendor_response_headers(const __CFString *a1, __CFString *a2, uint64_t a3)
{
  result = createNameValuePair(a1, a2);
  v6 = *(a3 + 48);
  v5 = *(a3 + 56);
  *(a3 + 48) = v6 + 1;
  *(v5 + 8 * v6) = result;
  return result;
}

uint64_t mmcs_http_session_pool_entry_equal_callback(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4 == v5)
  {
    return 1;
  }

  result = 0;
  if (v4)
  {
    if (v5)
    {
      return CFEqual(v4, v5);
    }
  }

  return result;
}

void schedulePutComplete(uint64_t *a1)
{
  v120 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  LODWORD(v4) = mmcs_put_state_containers_done_count(a1);
  v5 = v3 == v4;
  if (v3 != v4 && CFAbsoluteTimeGetCurrent() - *(*(v2 + 304) + 16) < 0.0)
  {
    goto LABEL_63;
  }

  v4 = v4;
  request_activity_marker = mmcs_request_get_request_activity_marker(v2);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  object = _os_activity_create(&dword_2577D8000, "mmcs-put-complete", request_activity_marker, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(object, &state);
  v7 = *(v2 + 32);
  value = 0;
  if (*(v2 + 144))
  {
    error = CFRetain(*(v2 + 152));
    Mutable = 0;
    v15 = 0;
LABEL_5:
    v16 = 0;
LABEL_6:
    v17 = 0;
LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v90 = v7;
  v92 = v3;
  allocator = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, &kC3BaseArrayCallBacks);
  if (a1[1])
  {
    v19 = 0;
    do
    {
      v20 = *(a1[8] + 8 * v19);
      if (mmcs_put_container_needs_put_complete(v20, v5))
      {
        v21 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = **(v20[11] + 8);
          LODWORD(buf) = 136446210;
          *(&buf + 4) = v22;
          _os_log_impl(&dword_2577D8000, v21, OS_LOG_TYPE_DEFAULT, "Adding container %{public}s to putComplete.", &buf, 0xCu);
        }

        *(v20[11] + 33) = 1;
        mmcs_container_clear_complete_error(v20);
        CFArrayAppendValue(Mutable, v20);
      }

      ++v19;
    }

    while (v19 < a1[1]);
  }

  if (CFArrayGetCount(Mutable))
  {
    if (*(*(v2 + 304) + 120))
    {
      v23 = @"cloneComplete";
    }

    else
    {
      v23 = @"putComplete";
    }

    v15 = CFURLCreateCopyAppendingPathComponent(allocator, *(v2 + 160), v23, 0);
    if (!v15)
    {
      error = mmcs_cferror_create_error(@"com.apple.mmcs", 37, @"Failed to create putComplete request url");
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v4 = v4;
      v3 = v92;
      goto LABEL_8;
    }

    if (*(*(v2 + 304) + 80))
    {
      if (mmcs_put_complete_create(&value, *a1, Mutable))
      {
        CFSetAddValue(*(*(v2 + 304) + 128), value);
        v4 = v4;
        if (*(*(v2 + 304) + 120))
        {
          clone_complete_request_body = mmcs_put_state_create_clone_complete_request_body(v2, a1, value);
        }

        else
        {
          clone_complete_request_body = mmcs_put_state_create_put_complete_request_body(a1, value);
        }

        v16 = clone_complete_request_body;
        if (clone_complete_request_body)
        {
          if (v92 == v4)
          {
            mmcs_put_request_notify_all_items_with_pending_progress(v2);
            if (*(v2 + 144))
            {
LABEL_85:
              error = CFRetain(*(v2 + 152));
              v17 = 0;
              v18 = 0;
              v3 = v92;
LABEL_8:
              if (!v18 && !error)
              {
                error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Unknown local error %s", v8, v9, v10, v11, v12, "send_request_putComplete");
              }

              if (!value)
              {
                goto LABEL_36;
              }

              if (v18)
              {
                v18 = 1;
              }

              else
              {
                mmcs_put_complete_set_error_and_push_to_containers(value, error);
              }

LABEL_35:
              value = 0;
LABEL_36:
              if (!Mutable)
              {
                goto LABEL_40;
              }

              if ((v18 & 1) == 0)
              {
                v121.length = CFArrayGetCount(Mutable);
                v121.location = 0;
                CFArrayApplyFunction(Mutable, v121, failed_to_send_put_complete, error);
              }

LABEL_39:
              CFRelease(Mutable);
LABEL_40:
              v26 = 0;
              if (!v18 && error)
              {
                CFRetain(error);
                v26 = error;
              }

              if (v17)
              {
                CFRelease(v17);
              }

              if (v16)
              {
                CFRelease(v16);
              }

              if (v15)
              {
                CFRelease(v15);
              }

              if (error)
              {
                CFRelease(error);
              }

              goto LABEL_51;
            }

            mmcs_put_item_progress_make_state(5, &buf);
            mmcs_put_request_set_progress_and_notify_all_items_not_done(v2, &buf);
          }

          if (*(v2 + 144))
          {
            goto LABEL_85;
          }

          v41 = v90[8];
          v42 = v90[10];
          dataclass = mmcs_request_get_dataclass(v2);
          http_protobuf_message = create_http_protobuf_message(v41, v42, dataclass, *(v2 + 168), *(v2 + 176), v15, v16);
          if (!http_protobuf_message)
          {
            v48 = mmcs_logging_logger_default();
            v3 = v92;
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              v49 = CFStringCreateWithFormat(allocator, 0, @"unable to create put complete msg");
              v50 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf) = 138543362;
                *(&buf + 4) = v49;
                _os_log_impl(&dword_2577D8000, v50, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
              }

              if (v49)
              {
                CFRelease(v49);
              }
            }

            error = mmcs_cferror_create_error(@"com.apple.mmcs", 37, @"Failed to create put complete msg");
            goto LABEL_6;
          }

          v17 = http_protobuf_message;
          ValueAtIndex = CFArrayGetValueAtIndex(*(value + 3), 0);
          if (!mmcs_put_container_http_msg_add_token_header(ValueAtIndex, v17))
          {
            v51 = mmcs_logging_logger_default();
            v3 = v92;
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              v57 = CFStringCreateWithFormat(allocator, 0, @"unable to add put container token header");
              v58 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf) = 138543362;
                *(&buf + 4) = v57;
                _os_log_impl(&dword_2577D8000, v58, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
              }

              if (v57)
              {
                CFRelease(v57);
              }
            }

            error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Failed to add put container token header", v52, v53, v54, v55, v56, v88);
            goto LABEL_7;
          }

          mmcs_request_insert_headers(v2, v17);
          if (*(*(v2 + 56) + 56))
          {
            numberc = *(*(v2 + 56) + 56);
            cf = CFLocaleCreate(allocator, @"en_US");
            v46 = CFNumberFormatterCreate(allocator, cf, kCFNumberFormatterDecimalStyle);
            number = CFNumberFormatterCreateStringWithNumber(allocator, v46, numberc);
            if (v46)
            {
              CFRelease(v46);
            }

            if (cf)
            {
              CFRelease(cf);
            }

            if (number)
            {
              v47 = number;
            }

            else
            {
              v47 = @"NULL";
            }

            CFHTTPMessageSetHeaderFieldValue(v17, @"mmcs_network_service_type", v47);
            if (number)
            {
              CFRelease(number);
            }
          }

          else
          {
            CFHTTPMessageSetHeaderFieldValue(v17, @"mmcs_network_service_type", @"NULL");
          }

          v59 = mmcs_request_get_dataclass(v2);
          if (CFStringCompare(v59, @"com.apple.Dataclass.Messenger", 1uLL) == kCFCompareEqualTo)
          {
            v60 = CFURLCopyHostName(*(v2 + 160));
            if (v60)
            {
              v61 = v60;
              ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v60, @"-");
              if (ArrayBySeparatingStrings)
              {
                numbera = ArrayBySeparatingStrings;
                if (CFArrayGetCount(ArrayBySeparatingStrings) >= 2)
                {
                  v63 = CFArrayGetValueAtIndex(numbera, 0);
                  CFHTTPMessageSetHeaderFieldValue(v17, @"x-apple-content-partition", v63);
                }

                CFRelease(v61);
                v64 = numbera;
              }

              else
              {
                v64 = v61;
              }

              CFRelease(v64);
            }
          }

          promoted_to_foreground_copy = mmcs_http_request_options_create_promoted_to_foreground_copy(*(v2 + 56));
          v119 = 0;
          v118 = 0u;
          v117 = 0u;
          *&buf = @"putComplete";
          *(&buf + 1) = v17;
          v66 = promoted_to_foreground_copy;
          v104 = promoted_to_foreground_copy;
          v105 = *(v2 + 96);
          v106 = 0;
          v107 = -1;
          v109 = 0;
          v110 = 0;
          v108 = -1;
          v111 = mmcs_put_req_will_retry_put_complete_after_error;
          v112 = handle_response_putComplete;
          v113 = 0;
          v114 = 0;
          v115 = 0;
          v116 = value;
          *&v117 = mmcs_engine_get_sparse_block_size();
          *(&v117 + 1) = mmcs_engine_owner(v90);
          LOBYTE(v118) = 0;
          *(&v118 + 1) = 0;
          v119 = object;
          memset(v98, 0, sizeof(v98));
          mmcs_read_stream_pool_parameters_make_pool_timeout_max(v90[4], 100, v98, 90.0);
          numberb = v66;
          if (mmcs_http_context_create(value + 1, *(v2 + 140), &buf))
          {
            mmcs_put_req_context_make_put_complete_metrics(v2, value, v66);
            *(*(v2 + 304) + 136) = v5;
            v3 = v92;
            if (mmcs_http_context_send(*(value + 1), v98, v90[7]))
            {
              if (gMMCS_DebugLevel >= 4)
              {
                v67 = mmcs_logging_logger_default();
                if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
                {
                  v68 = CFStringCreateWithFormat(allocator, 0, @"sent mmcs_put_complete (%p) for put request: %p", value, v2);
                  v69 = mmcs_logging_logger_default();
                  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
                  {
                    *v101 = 138543362;
                    v102 = v68;
                    _os_log_impl(&dword_2577D8000, v69, OS_LOG_TYPE_DEBUG, "%{public}@", v101, 0xCu);
                  }

                  if (v68)
                  {
                    CFRelease(v68);
                  }
                }
              }

              error = 0;
              *(*(v2 + 304) + 16) = CFAbsoluteTimeGetCurrent();
              v18 = 1;
              goto LABEL_152;
            }

            v79 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
            {
              v85 = CFStringCreateWithFormat(allocator, 0, @"unable to send http msg");
              v86 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
              {
                *v101 = 138543362;
                v102 = v85;
                _os_log_impl(&dword_2577D8000, v86, OS_LOG_TYPE_ERROR, "%{public}@", v101, 0xCu);
              }

              if (v85)
              {
                CFRelease(v85);
              }
            }

            v87 = *(value + 1);
            if (v87 && mmcs_http_context_get_error(v87))
            {
              error = mmcs_http_context_get_error(*(value + 1));
              CFRetain(error);
LABEL_151:
              v18 = 0;
LABEL_152:
              if (numberb)
              {
                C3BaseRelease(numberb);
              }

              goto LABEL_8;
            }

            v78 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Failed to send http msg %s", v80, v81, v82, v83, v84, "send_request_putComplete");
          }

          else
          {
            v70 = mmcs_logging_logger_default();
            v3 = v92;
            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              v76 = CFStringCreateWithFormat(allocator, 0, @"unable to create http context");
              v77 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
              {
                *v101 = 138543362;
                v102 = v76;
                _os_log_impl(&dword_2577D8000, v77, OS_LOG_TYPE_ERROR, "%{public}@", v101, 0xCu);
              }

              if (v76)
              {
                CFRelease(v76);
              }
            }

            v78 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"Failed to create http context %s", v71, v72, v73, v74, v75, "send_request_putComplete");
          }

          error = v78;
          goto LABEL_151;
        }

        v38 = mmcs_logging_logger_default();
        v3 = v92;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = CFStringCreateWithFormat(allocator, 0, @"unable to create putComplete request");
          v40 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v39;
            _os_log_impl(&dword_2577D8000, v40, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
          }

          if (v39)
          {
            CFRelease(v39);
          }
        }

        v34 = @"Failed to create putComplete request body";
      }

      else
      {
        v35 = mmcs_logging_logger_default();
        v4 = v4;
        v3 = v92;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = CFStringCreateWithFormat(allocator, 0, @"unable to create mmcs_put_complete");
          v37 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v36;
            _os_log_impl(&dword_2577D8000, v37, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
          }

          if (v36)
          {
            CFRelease(v36);
          }
        }

        v34 = @"Failed to create mmcs_put_complete";
      }
    }

    else
    {
      v31 = mmcs_logging_logger_default();
      v4 = v4;
      v3 = v92;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = CFStringCreateWithFormat(allocator, 0, @"no put state");
        v33 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v32;
          _os_log_impl(&dword_2577D8000, v33, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
        }

        if (v32)
        {
          CFRelease(v32);
        }
      }

      v34 = @"no put state";
    }

    error = mmcs_cferror_create_error(@"com.apple.mmcs", 37, v34);
    goto LABEL_5;
  }

  v25 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_2577D8000, v25, OS_LOG_TYPE_DEFAULT, "no containers were eligible for putComplete.", &buf, 2u);
  }

  v3 = v92;
  if (value)
  {
    v17 = 0;
    v16 = 0;
    v15 = 0;
    error = 0;
    v18 = 1;
    v4 = v4;
    goto LABEL_35;
  }

  error = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v26 = 0;
  v18 = 1;
  v4 = v4;
  if (Mutable)
  {
    goto LABEL_39;
  }

LABEL_51:
  if (object)
  {
    os_release(object);
  }

  os_activity_scope_leave(&state);
  if (!v18)
  {
    if (v3 == v4)
    {
      mmcs_put_request_context_cleanup(v2, v26);
    }

    else
    {
      v27 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Incremental put complete failed with error: %@", v26);
        v29 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v28;
          _os_log_impl(&dword_2577D8000, v29, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
        }

        if (v28)
        {
          CFRelease(v28);
        }
      }
    }
  }

  if (v26)
  {
    CFRelease(v26);
  }

LABEL_63:
  v30 = *MEMORY[0x277D85DE8];
}

void handle_response_uploadChunks(uint64_t a1, CFDataRef *a2, uint64_t a3)
{
  v162 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    handle_response_uploadChunks_cold_6();
  }

  if (!a3)
  {
    handle_response_uploadChunks_cold_5();
  }

  if (*(a3 + 16) != a1)
  {
    handle_response_uploadChunks_cold_1();
  }

  v6 = *(a3 + 64);
  v7 = **(v6 + 88);
  v8 = *v7;
  if (!v7[7])
  {
    v9 = *(a1 + 616);
    if (v9)
    {
      CFRetain(v9);
      v10 = *(a1 + 616);
    }

    else
    {
      v10 = 0;
    }

    v7[7] = v10;
  }

  if (*(v8 + 272))
  {
    if (!*(v8 + 72))
    {
      v25 = mmcs_http_context_copy_blocked_application_header_value(a1);
      if (v25)
      {
        error = mmcs_cferror_create_error(@"com.apple.mmcs", 51, v25);
        goto LABEL_91;
      }
    }
  }

  response_message = mmcs_http_context_get_response_message(a1);
  if (response_message && (v12 = CFHTTPMessageCopyHeaderFieldValue(response_message, @"x-apple-put-complete-response")) != 0)
  {
    v13 = v12;
    if (CFStringCompare(v12, @"true", 1uLL))
    {
      if (CFStringCompare(v13, @"false", 1uLL))
      {
        CFRelease(v13);
LABEL_87:
        v155 = 0;
        v27 = @"ResponseHeader x-apple-put-complete-response malformed with value %@";
LABEL_89:
        v28 = 6;
        goto LABEL_90;
      }

      v29 = MEMORY[0x277CBED10];
    }

    else
    {
      v29 = MEMORY[0x277CBED28];
    }

    v19 = *v29;
    CFRelease(v13);
    if (!v19)
    {
      goto LABEL_87;
    }
  }

  else
  {
    v19 = 0;
  }

  metrics = mmcs_http_context_get_metrics(a1);
  mmcs_metrics_http_info_set_inline_edge_complete(metrics, v19);
  is_put_complete_at_edge_protocol_v2 = mmcs_http_request_is_put_complete_at_edge_protocol_v2(*(a3 + 24));
  is_request_body_done = mmcs_http_context_is_request_body_done(a1);
  if (!is_put_complete_at_edge_protocol_v2)
  {
    if (!v19)
    {
      goto LABEL_28;
    }

    v23 = 3;
    goto LABEL_22;
  }

  if (v19)
  {
    v23 = 2;
LABEL_22:
    if (CFBooleanGetValue(v19))
    {
      v24 = 1;
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  if (is_request_body_done)
  {
    v24 = 1;
    v23 = 2;
    goto LABEL_32;
  }

LABEL_28:
  if (!*(v8 + 296))
  {
    v24 = 2;
    v23 = 1;
LABEL_32:
    if (!*(v8 + 297))
    {
      v24 = v23;
    }

    if (v24 != 1)
    {
      if (v24 != 2 && !*(v8 + 296))
      {
        v27 = @"PutCompleteAtEdge Returned Without Being Requested By Vendor When PutCompleteAtEdge Response Was Not Required";
        goto LABEL_89;
      }

      v30 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2577D8000, v30, OS_LOG_TYPE_DEFAULT, "Handling PutComplete Response", buf, 2u);
      }

      v31 = _os_activity_create(&dword_2577D8000, "mmcs-inline-put-complete", *(v6 + 80), OS_ACTIVITY_FLAG_DEFAULT);
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      os_activity_scope_enter(v31, &state);
      C3BaseRetain(a3);
      v32 = *(*(***(v6 + 88) + 32) + 48);
      is_connection_reused = mmcs_http_context_is_connection_reused(a1);
      Current = CFAbsoluteTimeGetCurrent();
      mmcs_request_queue_request_did_complete(v32, a3, 0, is_connection_reused, 0, Current);
      mmcs_put_container_vendor_put_done(v6);
      v35 = mmcs_http_context_get_metrics(a1);
      mmcs_metrics_http_info_set_final_try_in_request(v35, 1);
      method_completion_info = mmcs_put_container_create_method_completion_info(v6, a3, 0);
      mmcs_transaction_add_method_completion_info(a3, method_completion_info);
      value = 0;
      v42 = *(v6 + 88);
      v43 = **v42;
      if (*(v42 + 33))
      {
        v44 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 16, @"Already handled putComplete for this container. Retry", v37, v38, v39, v40, v41, v155);
        goto LABEL_65;
      }

      *(v42 + 33) = 1;
      v63 = *(v6 + 56);
      if (v63)
      {
        CFRelease(v63);
      }

      *(v6 + 56) = 0;
      mmcs_put_request_notify_all_items_with_pending_progress(v43);
      if (*(v43 + 144))
      {
        v44 = CFRetain(*(v43 + 152));
LABEL_65:
        v64 = v44;
        v65 = 0;
        if (v44)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }

      v65 = XCFArrayCreateWithObject(v6);
      if (!mmcs_put_complete_create(&value, v43, v65))
      {
        v64 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 40, @"Error initializing putComplete", v94, v95, v96, v97, v98, v155);
        if (v64)
        {
LABEL_67:
          mmcs_container_set_complete_error_if_absent(v6, v64);
          if (!mmcs_put_request_has_outstanding_async_transactions(v43))
          {
            *buf = 0;
            *&buf[8] = 0;
            request_activity_marker = mmcs_request_get_request_activity_marker(v43);
            os_activity_scope_enter(request_activity_marker, buf);
            v67 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              v68 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Uploads complete. All done (with errors)! (Put request %p)", v43);
              v69 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
              {
                *v160 = 138543362;
                *&v160[4] = v68;
                _os_log_impl(&dword_2577D8000, v69, OS_LOG_TYPE_DEFAULT, "%{public}@", v160, 0xCu);
              }

              if (v68)
              {
                CFRelease(v68);
              }
            }

            mmcs_put_request_all_put_completes_done(v43);
            os_activity_scope_leave(buf);
          }

          if (!v65)
          {
            goto LABEL_76;
          }

LABEL_75:
          CFRelease(v65);
LABEL_76:
          if (v64)
          {
            CFRelease(v64);
          }

          if (v31)
          {
            os_release(v31);
          }

          v70 = *(a3 + 16);
          if (v70)
          {
            mmcs_http_context_invalidate(v70);
            v71 = *(a3 + 16);
            if (v71)
            {
              C3BaseRelease(v71);
            }

            *(a3 + 16) = 0;
          }

          C3BaseRelease(a3);
          p_state = &state;
          goto LABEL_108;
        }

LABEL_66:
        v64 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Error Occured Handling Inline Put Complete", v45, v46, v47, v48, v49, v155);
        goto LABEL_67;
      }

      CFSetAddValue(*(*(v43 + 304) + 128), value);
      handle_response_putComplete(a1, a2, value);
      if (mmcs_transaction_is_proxy(a3))
      {
        mmcs_http_context_get_error(a1);
        *v160 = 0;
        CFHTTPMessageCopyRequestURL(*(a1 + 336));
        if (!ACSUpdateCachingServerHealth())
        {
          v99 = *v160;
          v100 = mmcs_logging_logger_default();
          v101 = os_log_type_enabled(v100, OS_LOG_TYPE_ERROR);
          if (v99)
          {
            if (v101)
            {
              v102 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Failed to update proxy cache server health with error %@", *v160);
              v103 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                *&buf[4] = v102;
                _os_log_impl(&dword_2577D8000, v103, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
              }

              if (v102)
              {
                CFRelease(v102);
              }
            }

            v104 = *v160;
          }

          else
          {
            if (!v101)
            {
              goto LABEL_156;
            }

            v104 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Failed to update proxy cache server health with unknown error");
            v118 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v104;
              _os_log_impl(&dword_2577D8000, v118, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }
          }

          if (v104)
          {
            CFRelease(v104);
          }
        }
      }

LABEL_156:
      v64 = 0;
      if (!v65)
      {
        goto LABEL_76;
      }

      goto LABEL_75;
    }

    v50 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2577D8000, v50, OS_LOG_TYPE_DEFAULT, "Handling Vendor Response", buf, 2u);
    }

    if (*(a3 + 16) != a1)
    {
      handle_response_uploadChunks_cold_2();
    }

    v51 = *(a3 + 64);
    v52 = v51[11];
    v53 = *v52;
    v54 = v52[1];
    *(a3 + 48) = 4;
    if (a2)
    {
      if (*a2)
      {
        CFRelease(*a2);
      }

      *a2 = 0;
    }

    if (!v53)
    {
      v85 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        v86 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"null put state backref in put container");
        v87 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v86;
          _os_log_impl(&dword_2577D8000, v87, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v86)
        {
          CFRelease(v86);
        }
      }

      goto LABEL_109;
    }

    v55 = *v53;
    C3BaseRetain(*v53);
    if (!mmcs_http_context_get_error(a1))
    {
      mmcs_http_session_pool_entry_close(v51);
    }

    v56 = *(v55 + 144);
    v160[0] = 1;
    v57 = *(v55[4] + 48);
    if (mmcs_transaction_is_proxy(a3) || mmcs_http_context_is_background(a1))
    {
      v58 = 0;
    }

    else
    {
      v58 = mmcs_http_context_get_error(a1);
    }

    v59 = mmcs_http_context_is_connection_reused(a1);
    v60 = CFAbsoluteTimeGetCurrent();
    mmcs_request_queue_request_did_complete(v57, a3, v58, v59, v160, v60);
    if (*(v55 + 144))
    {
      v61 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        v62 = "Already c";
        if (!v56)
        {
          v62 = "C";
        }

        *buf = 136446210;
        *&buf[4] = v62;
        _os_log_impl(&dword_2577D8000, v61, OS_LOG_TYPE_INFO, "%{public}sancelled during container completion handler.", buf, 0xCu);
      }

      if (!mmcs_put_state_has_outstanding_async_transactions(*(v55[38] + 80)))
      {
        mmcs_put_request_context_cleanup(v55, v55[19]);
      }

      goto LABEL_221;
    }

    if (*(v55[38] + 136))
    {
LABEL_221:
      C3BaseRelease(v55);
      goto LABEL_109;
    }

    v88 = *(a3 + 32);
    v89 = v88 < 1;
    v90 = v88 - 1;
    if (!v89)
    {
      *(a3 + 32) = v90;
    }

    v91 = mmcs_http_context_get_error(a1);
    v92 = v91;
    v156 = v54;
    if (!v91)
    {
      v105 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
      {
        v106 = *v54;
        *buf = 136446210;
        *&buf[4] = v106;
        _os_log_impl(&dword_2577D8000, v105, OS_LOG_TYPE_INFO, "Container %{public}s successfully put", buf, 0xCu);
      }

      v107 = mmcs_http_context_get_metrics(a1);
      v108 = 1;
      mmcs_metrics_http_info_set_final_try_in_request(v107, 1);
      v109 = 0;
      cf = 0;
LABEL_192:
      if (mmcs_transaction_is_proxy(a3))
      {
        state.opaque[0] = 0;
        CFHTTPMessageCopyRequestURL(*(a1 + 336));
        if (!ACSUpdateCachingServerHealth())
        {
          v130 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
          {
            v132 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Failed to update proxy cache server health with unknown error");
            v133 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v132;
              _os_log_impl(&dword_2577D8000, v133, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v132)
            {
              CFRelease(v132);
            }
          }
        }
      }

      if (!v108)
      {
        goto LABEL_207;
      }

      v134 = mmcs_put_state_containers_failed_count(v53);
      done = mmcs_put_state_containers_done_count(v53);
      has_http_status = mmcs_http_context_has_http_status(a1);
      v137 = mmcs_logging_logger_default();
      v138 = os_log_type_enabled(v137, OS_LOG_TYPE_INFO);
      if (has_http_status)
      {
        if (!v138)
        {
          goto LABEL_207;
        }

        v139 = *v156;
        v140 = mmcs_http_context_http_status(a1);
        v141 = *(v53 + 8);
        *buf = 136447234;
        *&buf[4] = v139;
        *&buf[12] = 1024;
        *&buf[14] = v140;
        *&buf[18] = 2048;
        *&buf[20] = v134;
        *&buf[28] = 2048;
        *&buf[30] = done;
        *&buf[38] = 2048;
        *&buf[40] = v141;
        v142 = "Completed container %{public}s status %d (%llu failed / %llu completed / %llu count)";
        v143 = v137;
        v144 = 48;
      }

      else
      {
        if (!v138)
        {
          goto LABEL_207;
        }

        v145 = *v156;
        v146 = *(v53 + 8);
        *buf = 136446978;
        *&buf[4] = v145;
        *&buf[12] = 2048;
        *&buf[14] = v134;
        *&buf[22] = 2048;
        *&buf[24] = done;
        *&buf[32] = 2048;
        *&buf[34] = v146;
        v142 = "Completed container %{public}s status N/A (%llu failed / %llu completed / %llu count)";
        v143 = v137;
        v144 = 42;
      }

      _os_log_impl(&dword_2577D8000, v143, OS_LOG_TYPE_INFO, v142, buf, v144);
LABEL_207:
      if ((v109 & 1) == 0)
      {
        mmcs_put_container_vendor_put_done(v51);
        if (*(a3 + 16))
        {
          v147 = mmcs_put_container_create_method_completion_info(v51, a3, 0);
          mmcs_transaction_add_method_completion_info(a3, v147);
          mmcs_http_context_invalidate(*(a3 + 16));
          v148 = *(a3 + 16);
          if (v148)
          {
            C3BaseRelease(v148);
          }

          *(a3 + 16) = 0;
        }
      }

      schedulePutComplete(v53);
      if (!*(v55 + 144))
      {
        v149 = *(v53 + 8);
        if (v149 < mmcs_put_state_containers_done_count(v53))
        {
          v150 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
          {
            v151 = *MEMORY[0x277CBECE8];
            v152 = mmcs_put_state_containers_done_count(v53);
            v153 = CFStringCreateWithFormat(v151, 0, @"completed count (%llu) exceeds upload count (%llu).", v152, *(v53 + 8));
            v154 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v153;
              _os_log_impl(&dword_2577D8000, v154, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v153)
            {
              CFRelease(v153);
            }
          }
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_221;
    }

    if (v51[5])
    {
      cf = 0;
      v93 = v91;
    }

    else
    {
      host_error = mmcs_cferror_copy_transformed_cannot_find_host_error(a1);
      cf = host_error;
      if (host_error)
      {
        v93 = host_error;
      }

      else
      {
        v93 = v92;
      }

      mmcs_container_set_error(v51, v93);
    }

    if (*(a3 + 32) >= 1)
    {
      Domain = CFErrorGetDomain(v93);
      Code = CFErrorGetCode(v93);
      if (!CFEqual(@"com.apple.mmcs", Domain))
      {
        if (CFEqual(*MEMORY[0x277CBEE40], Domain))
        {
          v117 = Code == -9810;
        }

        else
        {
          if (!CFEqual(*MEMORY[0x277CBACE8], Domain))
          {
            v113 = CFEqual(*MEMORY[0x277CBEE48], Domain) != 0;
            goto LABEL_178;
          }

          v117 = Code == -1005;
        }

        v113 = v117;
        goto LABEL_178;
      }

      v113 = 1;
      if (Code <= 15)
      {
        if (Code != 3)
        {
          if (Code == 6)
          {
            v114 = CFErrorCopyUserInfo(v93);
            if (v114)
            {
              v115 = v114;
              v116 = CFDictionaryGetValue(v114, @"kMMCSErrorHTTPStatusKey");
              if (v116)
              {
                *buf = -1;
                CFNumberGetValue(v116, kCFNumberCFIndexType, buf);
                v113 = *buf == 500;
              }

              else
              {
                v113 = 0;
              }

LABEL_177:
              CFRelease(v115);
              goto LABEL_178;
            }
          }

          goto LABEL_160;
        }

LABEL_178:
        if (v160[0] && (mmcs_transaction_is_proxy(a3) || v113))
        {
          v122 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
          {
            v123 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Container %s failed and will be retried", *v156);
            v124 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = v123;
              _os_log_impl(&dword_2577D8000, v124, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
            }

            if (v123)
            {
              CFRelease(v123);
            }
          }

          v125 = mmcs_http_context_get_metrics(a1);
          mmcs_metrics_http_info_set_final_try_in_request(v125, 0);
          mmcs_put_container_vendor_put_retry(v51, a3);
          v108 = 0;
          v109 = 1;
        }

        else
        {
          v126 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
          {
            v127 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Container %s failed permanently", *v156);
            v128 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = v127;
              _os_log_impl(&dword_2577D8000, v128, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
            }

            if (v127)
            {
              CFRelease(v127);
            }
          }

          v129 = mmcs_http_context_get_metrics(a1);
          v108 = 1;
          mmcs_metrics_http_info_set_final_try_in_request(v129, 1);
          v109 = 0;
        }

        goto LABEL_192;
      }

      if (Code == 16)
      {
        v119 = CFErrorCopyUserInfo(v93);
        if (v119)
        {
          v115 = v119;
          v120 = CFDictionaryGetValue(v119, @"kMMCSErrorSupplementalDictionaryKey");
          if (v120)
          {
            v121 = CFDictionaryGetValue(v120, @"Retry-After");
            if (v121)
            {
              v113 = CFStringGetIntValue(v121) < 6;
            }
          }

          goto LABEL_177;
        }

        goto LABEL_178;
      }

      if (Code == 38)
      {
        goto LABEL_178;
      }
    }

LABEL_160:
    v113 = 0;
    goto LABEL_178;
  }

  v27 = @"Vendor Response Received, Inline PutCompleteAtEdge Required.";
  v28 = 16;
LABEL_90:
  error = mmcs_cferror_create_with_format(@"com.apple.mmcs", v28, v27, v14, v15, v16, v17, v18, v155);
LABEL_91:
  v73 = error;
  if (!error)
  {
    handle_response_uploadChunks_cold_4();
  }

  v74 = *(*(***(v6 + 88) + 32) + 48);
  v75 = mmcs_http_context_is_connection_reused(a1);
  v76 = CFAbsoluteTimeGetCurrent();
  mmcs_request_queue_request_did_complete(v74, a3, v73, v75, 0, v76);
  mmcs_put_container_vendor_put_done(v6);
  v77 = *(a3 + 16);
  if (v77)
  {
    if (v77 != a1)
    {
      handle_response_uploadChunks_cold_3();
    }

    v78 = mmcs_put_container_create_method_completion_info(v6, a3, 0);
    mmcs_transaction_add_method_completion_info(a3, v78);
    mmcs_http_context_invalidate(*(a3 + 16));
    v79 = *(a3 + 16);
    if (v79)
    {
      C3BaseRelease(v79);
    }

    *(a3 + 16) = 0;
  }

  mmcs_container_set_complete_error_if_absent(v6, v73);
  if (a2)
  {
    if (*a2)
    {
      CFRelease(*a2);
    }

    *a2 = 0;
  }

  CFRelease(v73);
  if (!mmcs_put_request_has_outstanding_async_transactions(v8))
  {
    *buf = 0;
    *&buf[8] = 0;
    v80 = mmcs_request_get_request_activity_marker(v8);
    os_activity_scope_enter(v80, buf);
    v81 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      v82 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Uploads complete. All done! (Put request %p)", v8);
      v83 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(state.opaque[0]) = 138543362;
        *(state.opaque + 4) = v82;
        _os_log_impl(&dword_2577D8000, v83, OS_LOG_TYPE_DEFAULT, "%{public}@", &state, 0xCu);
      }

      if (v82)
      {
        CFRelease(v82);
      }
    }

    mmcs_put_request_all_put_completes_done(v8);
    p_state = buf;
LABEL_108:
    os_activity_scope_leave(p_state);
  }

LABEL_109:
  v84 = *MEMORY[0x277D85DE8];
}

uint64_t mmcs_put_request_has_outstanding_async_transactions(uint64_t a1)
{
  v2 = *(a1 + 304);
  v3 = *(v2 + 96);
  if (v3)
  {
    if (mmcs_http_context_is_sending(v3))
    {
      return 1;
    }

    v2 = *(a1 + 304);
  }

  if (mmcs_put_state_has_outstanding_async_transactions(*(v2 + 80)))
  {
    return 1;
  }

  context = 0;
  CFSetApplyFunction(*(*(a1 + 304) + 128), mmcs_put_request_has_outstanding_put_completes, &context);
  return context;
}

void mmcs_put_request_all_put_completes_done(void *context)
{
  v2 = context[38];
  v3 = *(v2 + 80);
  if (*(v3 + 8))
  {
    v4 = 0;
    do
    {
      v5 = *(*(v3 + 64) + 8 * v4);
      primary_error = mmcs_container_get_primary_error(v5);
      if (primary_error)
      {
        CFSetApplyFunction(*(*(v5 + 88) + 16), append_error, primary_error);
      }

      ++v4;
    }

    while (v4 < *(v3 + 8));
    v2 = context[38];
  }

  CFSetApplyFunction(*(v2 + 56), notify_item_of_put_container_errors, context);
  v7 = mmcs_put_state_copy_error_for_failed_containers(*(context[38] + 80));
  if (v7 || (v7 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 7, @"There was no specific acknowledgement of success", v8, v9, v10, v11, v12, v14)) != 0)
  {
    v13 = v7;
    mmcs_put_request_put_complete_failed(context, v7);
    mmcs_put_request_context_cleanup(context, v13);

    CFRelease(v13);
  }

  else
  {

    mmcs_put_request_context_cleanup(context, 0);
  }
}

void mmcs_put_request_process_put_authorization_data(uint64_t a1, CFDataRef *a2)
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *MEMORY[0x277CBECE8];
    Length = CFDataGetLength(*a2);
    v6 = CFStringCreateWithFormat(v5, 0, @"Got %ld bytes");
    v7 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v68 = v6;
      _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  if (mmcs_server_version_compare(*(a1 + 120), *(a1 + 128), 5, 0) == -1)
  {
    v22 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v28 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Server version %ld.%ld not supported. Must be at least %ld.%ld", *(a1 + 120), *(a1 + 128), 5, 0);
      v29 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v68 = v28;
        _os_log_impl(&dword_2577D8000, v29, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v28)
      {
        CFRelease(v28);
      }
    }

    v65 = *(a1 + 128);
    v30 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Server version %ld.%ld not supported. Must be at least %ld.%ld", v23, v24, v25, v26, v27, *(a1 + 120));
  }

  else
  {
    v8 = *(a1 + 272);
    v9 = CFDataGetLength(*a2);
    BytePtr = CFDataGetBytePtr(*a2);
    v11 = v9;
    if (v8)
    {
      v12 = chunkserver__authorize_simulcast_response__unpack(0, v9, BytePtr);
      v13 = v12[3];
      v14 = v12[4];
      v15 = v12[7];
      v16 = v12[8];
      *(a1 + 280) = CFDataCreate(0, v12[6], v12[5]);
      *(a1 + 288) = CFDataCreate(0, v16, v15);
      v11 = v13;
      BytePtr = v14;
    }

    v17 = chunkserver__storage_container_chunk_lists__unpack(0, v11, BytePtr);
    if (*a2)
    {
      CFRelease(*a2);
    }

    *a2 = 0;
    if (v17)
    {
      cf = 0;
      if (!mmcs_put_state_create((*(a1 + 304) + 80), a1, v17, &cf))
      {
        v40 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v46 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Failed to create upload state");
          v47 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v68 = v46;
            _os_log_impl(&dword_2577D8000, v47, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v46)
          {
            CFRelease(v46);
          }
        }

        v48 = cf;
        if (!cf)
        {
          v48 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"Failed to create upload state", v41, v42, v43, v44, v45, Length);
          cf = v48;
        }

        mmcs_put_request_context_cleanup(a1, v48);
        if (cf)
        {
          CFRelease(cf);
        }

        cf = 0;
        goto LABEL_67;
      }

      if (*(*(*(a1 + 304) + 80) + 8))
      {
        if (!*(a1 + 72))
        {
          v57 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            v58 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"not using proxy locator");
            v59 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v68 = v58;
              _os_log_impl(&dword_2577D8000, v59, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
            }

            if (v58)
            {
              CFRelease(v58);
            }
          }

          send_request_uploadChunks(a1);
          goto LABEL_67;
        }

        v18 = *MEMORY[0x277CBECE8];
        Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, &kC3BaseArrayCallBacks);
        v20 = *(*(a1 + 304) + 80);
        if (*(v20 + 8))
        {
          v21 = 0;
          do
          {
            CFArrayAppendValue(Mutable, *(*(v20 + 64) + 8 * v21++));
            v20 = *(*(a1 + 304) + 80);
          }

          while (v21 < *(v20 + 8));
        }

        if (mmcs_request_setup_proxy_locator_for_containers(a1, Mutable))
        {
          mmcs_proxy_locator_locate(*(a1 + 192));
          if (!Mutable)
          {
            goto LABEL_67;
          }
        }

        else
        {
          v60 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            v61 = CFStringCreateWithFormat(v18, 0, @"couldn't create proxy locator");
            v62 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v68 = v61;
              _os_log_impl(&dword_2577D8000, v62, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
            }

            if (v61)
            {
              CFRelease(v61);
            }
          }

          send_request_uploadChunks(a1);
          if (!Mutable)
          {
            goto LABEL_67;
          }
        }
      }

      else
      {
        v49 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          v50 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"No work to do");
          v51 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v68 = v50;
            _os_log_impl(&dword_2577D8000, v51, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v50)
          {
            CFRelease(v50);
          }
        }

        if (!mmcs_put_request_has_items_not_done(a1))
        {
          mmcs_put_request_context_cleanup(a1, 0);
          goto LABEL_67;
        }

        Mutable = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Item not specifically handled by the server", v52, v53, v54, v55, v56, Length);
        mmcs_put_request_context_cleanup(a1, Mutable);
        if (!Mutable)
        {
          goto LABEL_67;
        }
      }

      CFRelease(Mutable);
LABEL_67:
      chunkserver__storage_container_chunk_lists__free_unpacked(v17, 0);
      goto LABEL_68;
    }

    v31 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v37 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Malformed put authorization");
      v38 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v68 = v37;
        _os_log_impl(&dword_2577D8000, v38, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v37)
      {
        CFRelease(v37);
      }
    }

    v30 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Malformed put authorization", v32, v33, v34, v35, v36, Length);
  }

  v39 = v30;
  mmcs_put_request_context_cleanup(a1, v30);
  if (v39)
  {
    CFRelease(v39);
  }

LABEL_68:
  v63 = *MEMORY[0x277D85DE8];
}

void send_request_uploadChunks(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  request_activity_marker = mmcs_request_get_request_activity_marker(a1);
  os_activity_scope_enter(request_activity_marker, &state);
  if (!*(a1 + 144))
  {
    mmcs_put_item_progress_make_state_progress(4, &buf, 0.0);
    mmcs_put_request_set_progress_and_notify_all_items_not_done(a1, &buf);
    if (!*(a1 + 144))
    {
      v4 = *(*(a1 + 304) + 88);
      if (v4)
      {
        CFAbsoluteTimeGetCurrent();
        mmcs_perform_timer_set_next_fire_date(v4);
      }

      mmcs_engine_poll_for_preferences_update(*(a1 + 32));
      v27.opaque[0] = 0;
      v27.opaque[1] = 0;
      v5 = mmcs_request_get_request_activity_marker(a1);
      os_activity_scope_enter(v5, &v27);
      v6 = *(*(a1 + 304) + 80);
      if (!*(v6 + 8))
      {
LABEL_19:
        mmcs_proxy_locator_finish(*(a1 + 192));
        os_activity_scope_leave(&v27);
        schedulePutComplete(*(*(a1 + 304) + 80));
        goto LABEL_4;
      }

      v7 = 0;
      alloc = *MEMORY[0x277CBECE8];
      while (1)
      {
        v8 = *(*(v6 + 64) + 8 * v7);
        v9 = (v8 + 24);
        if (!*(v8 + 24))
        {
          v9 = (v8 + 16);
          v11 = 3;
          goto LABEL_18;
        }

        if (gMMCS_DebugLevel < 4)
        {
          goto LABEL_16;
        }

        v10 = mmcs_logging_logger_default();
        v11 = 2;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          break;
        }

LABEL_18:
        v14 = *v9;
        *(v8 + 68) = v11;
        v15 = mmcs_http_request_options_network_behavior_type(*(*(v14 + 24) + 24));
        v16 = mmcs_request_type_for_behavior_and_activity(v15, 0);
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        mmcs_container_requirements(v8);
        *&buf = 0;
        *(&buf + 1) = v14;
        v17 = *(a1 + 88);
        v29 = v16;
        v30 = v17;
        v33 = v23;
        v34 = v24;
        v35 = v25;
        v36 = v26;
        v31 = v21;
        v32 = v22;
        v37 = mmcs_container_schedule_request_callback;
        v38 = mmcs_container_cancel_request_callback;
        v39 = C3BaseRetain;
        v40 = C3BaseRelease;
        *(v14 + 48) = 2;
        Current = CFAbsoluteTimeGetCurrent();
        *(v14 + 56) = Current;
        mmcs_request_queue_enqueue_request(*(*(a1 + 32) + 48), &buf, Current);
        if (++v7 >= *(v6 + 8))
        {
          goto LABEL_19;
        }
      }

      v12 = CFStringCreateWithFormat(alloc, 0, @"using proxy transaction for container %s", **(*(v8 + 88) + 8));
      v13 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v12;
        _os_log_impl(&dword_2577D8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
      }

      if (v12)
      {
        CFRelease(v12);
      }

LABEL_16:
      v11 = 2;
      goto LABEL_18;
    }
  }

  mmcs_proxy_locator_finish(*(a1 + 192));
  mmcs_metrics_request_set_error(*(a1 + 184), *(a1 + 152));
  mmcs_put_request_context_cleanup(a1, *(a1 + 152));
LABEL_4:
  os_activity_scope_leave(&state);
  v3 = *MEMORY[0x277D85DE8];
}

uint64_t send_request_authorizePut(uint64_t a1, void *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  request_activity_marker = mmcs_request_get_request_activity_marker(a1);
  v5 = _os_activity_create(&dword_2577D8000, "mmcs-authorize-put", request_activity_marker, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v11 = *(a1 + 32);
  if (a2)
  {
    *a2 = 0;
  }

  if (!*(a1 + 144))
  {
    v15 = *(a1 + 304);
    if (!*(v15 + 144))
    {
      error = mmcs_cferror_create_error(@"com.apple.mmcs", 30, @"There were no items in the put request.");
      v14 = 0;
      v13 = 0;
      goto LABEL_24;
    }

    if (*(a1 + 272))
    {
      v16 = *MEMORY[0x277CBECE8];
      v17 = *(a1 + 160);
      v18 = @"authorizeSimulcast";
    }

    else
    {
      v16 = *MEMORY[0x277CBECE8];
      v17 = *(a1 + 160);
      if (*(v15 + 120))
      {
        v18 = @"authorizeClone";
      }

      else
      {
        v18 = @"authorizePut";
      }
    }

    v13 = CFURLCreateCopyAppendingPathComponent(v16, v17, v18, 0);
    if (v13)
    {
      *(*(a1 + 304) + 104) = mmcs_put_request_create_AuthorizePutRequestBody(a1);
      if (*(*(a1 + 304) + 104))
      {
        mmcs_put_item_progress_make_state(3, buf);
        mmcs_put_request_set_progress_and_notify_all_items_not_done(a1, buf);
        if (*(a1 + 144))
        {
          error = *(a1 + 152);
          if (error)
          {
            CFRetain(error);
            goto LABEL_6;
          }

          goto LABEL_11;
        }

        v24 = v11[8];
        v25 = v11[10];
        dataclass = mmcs_request_get_dataclass(a1);
        http_protobuf_message = create_http_protobuf_message(v24, v25, dataclass, *(a1 + 168), *(a1 + 176), v13, 0);
        if (http_protobuf_message)
        {
          v14 = http_protobuf_message;
          v28 = *(a1 + 304);
          if (*(a1 + 272))
          {
            if (!mmcs_http_msg_add_items_token_header_simulcast(http_protobuf_message, v28 + 152, *(v28 + 144)))
            {
              v29 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                v30 = CFStringCreateWithFormat(v16, 0, @"unable to add token header for simulcast request");
                v31 = mmcs_logging_logger_default();
                if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_89;
                }

                *buf = 138543362;
                v64 = v30;
                goto LABEL_88;
              }

              goto LABEL_91;
            }
          }

          else if (!mmcs_http_msg_add_items_token_header(http_protobuf_message, *(v28 + 144), v28 + 152, 1, *(v28 + 120) == 0))
          {
            v56 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              v30 = CFStringCreateWithFormat(v16, 0, @"unable to add token header");
              v31 = mmcs_logging_logger_default();
              if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_89;
              }

              *buf = 138543362;
              v64 = v30;
LABEL_88:
              _os_log_impl(&dword_2577D8000, v31, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_89:
              if (v30)
              {
                CFRelease(v30);
              }
            }

LABEL_91:
            v51 = @"A token was missing from the put reqeust";
            v52 = 31;
            goto LABEL_92;
          }

          mmcs_request_insert_headers(a1, v14);
          v35 = *(a1 + 304);
          v36 = *(v35 + 40);
          if (v36)
          {
            CFHTTPMessageSetHeaderFieldValue(v14, @"x-apple-client-location", v36);
            v35 = *(a1 + 304);
          }

          v37 = *(v35 + 24);
          if (v37 || (v43 = CFPreferencesCopyAppValue(@"VendorHintValue", @"com.apple.mmcs")) != 0 && (v37 = v43, TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(v37)))
          {
            CFHTTPMessageSetHeaderFieldValue(v14, @"x-apple-mmcs-storage-bin", v37);
          }

          v38 = *(a1 + 304);
          v39 = *(v38 + 32);
          if (v39)
          {
            CFHTTPMessageSetHeaderFieldValue(v14, @"StorageContainerSizeHint", v39);
            v38 = *(a1 + 304);
          }

          Length = CFDataGetLength(*(v38 + 104));
          v41 = CFStringCreateWithFormat(v16, 0, @"%ld", Length);
          if (v41)
          {
            v42 = v41;
            CFHTTPMessageSetHeaderFieldValue(v14, @"Content-Length", v41);
          }

          else
          {
            v45 = mmcs_logging_logger_default();
            if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_66;
            }

            v42 = CFStringCreateWithFormat(v16, 0, @"unable to add Content-Length header");
            v46 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v64 = v42;
              _os_log_impl(&dword_2577D8000, v46, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (!v42)
            {
              goto LABEL_66;
            }
          }

          CFRelease(v42);
LABEL_66:
          v59 = 0;
          v58[0] = @"authPut";
          v58[1] = v14;
          v58[2] = *(a1 + 56);
          v58[3] = *(a1 + 96);
          if (mmcs_request_is_background(a1))
          {
            v47 = *(a1 + 104);
          }

          else
          {
            v47 = 0;
          }

          v58[4] = v47;
          v58[5] = Length;
          v58[6] = -1;
          v58[7] = mmcs_put_req_context_auth_put_data_callback;
          v58[8] = mmcs_put_req_will_reset_request_body_stream;
          v58[9] = mmcs_put_req_will_retry_auth_put_after_background_error;
          v58[10] = handle_response_authorizePut;
          memset(&v58[11], 0, 24);
          v58[14] = a1;
          v58[15] = mmcs_engine_get_sparse_block_size();
          v58[16] = mmcs_engine_owner(v11);
          LOBYTE(v59) = 0;
          v60 = 0;
          v61 = v5;
          memset(v57, 0, sizeof(v57));
          mmcs_read_stream_pool_parameters_make_pool_timeout_max(v11[4], 100, v57, 90.0);
          if (mmcs_http_context_create((*(a1 + 304) + 96), *(a1 + 140), v58))
          {
            mmcs_put_req_context_make_auth_metrics(a1, *(a1 + 56));
            if (mmcs_http_context_send(*(*(a1 + 304) + 96), v57, v11[7]))
            {
              error = 0;
              v20 = 1;
LABEL_29:
              CFRelease(v14);
              v21 = v20;
              goto LABEL_30;
            }

            v53 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              v54 = CFStringCreateWithFormat(v16, 0, @"unable to send http context");
              v55 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v64 = v54;
                _os_log_impl(&dword_2577D8000, v55, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
              }

              if (v54)
              {
                CFRelease(v54);
              }
            }

            if (!mmcs_http_context_get_error(*(*(a1 + 304) + 96)))
            {
              goto LABEL_25;
            }

            error = mmcs_http_context_get_error(*(*(a1 + 304) + 96));
            CFRetain(error);
LABEL_24:
            if (error)
            {
              goto LABEL_26;
            }

            goto LABEL_25;
          }

          v48 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            v49 = CFStringCreateWithFormat(v16, 0, @"unable to create http context");
            v50 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v64 = v49;
              _os_log_impl(&dword_2577D8000, v50, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v49)
            {
              CFRelease(v49);
            }
          }

          v51 = @"http context";
          v52 = 37;
LABEL_92:
          error = mmcs_cferror_create_error(@"com.apple.mmcs", v52, v51);
          goto LABEL_24;
        }

        v32 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = CFStringCreateWithFormat(v16, 0, @"unable to create auth put msg");
          v34 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v64 = v33;
            _os_log_impl(&dword_2577D8000, v34, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v33)
          {
            CFRelease(v33);
          }
        }

        v19 = @"auth put msg";
      }

      else
      {
        v19 = @"The auth put request could not be created.";
      }
    }

    else
    {
      v19 = @"authorizePut url";
    }

    error = mmcs_cferror_create_error(@"com.apple.mmcs", 37, v19);
    v14 = 0;
    goto LABEL_24;
  }

  error = *(a1 + 152);
  if (error)
  {
    CFRetain(error);
    v13 = 0;
LABEL_6:
    v14 = 0;
    goto LABEL_26;
  }

  v13 = 0;
LABEL_11:
  v14 = 0;
LABEL_25:
  error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Unknown error %s", v6, v7, v8, v9, v10, "send_request_authorizePut");
LABEL_26:
  if (a2)
  {
    CFRetain(error);
    *a2 = error;
  }

  v20 = 0;
  v21 = 0;
  if (v14)
  {
    goto LABEL_29;
  }

LABEL_30:
  if (v13)
  {
    CFRelease(v13);
  }

  if (error)
  {
    CFRelease(error);
  }

  if (v5)
  {
    os_release(v5);
  }

  os_activity_scope_leave(&state);
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

void mmcs_put_req_context_auth_put_data_callback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v11 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"NULL mrc");
      v10 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      *buf = 138543362;
      v25 = v9;
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  v4 = *(a2 + 304);
  v5 = *(v4 + 96);
  if (!v5)
  {
    v12 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"NULL hc");
      v10 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      *buf = 138543362;
      v25 = v9;
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (mmcs_http_context_is_complete(*(v4 + 96)))
  {
    v8 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"transactionComplete");
      v10 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      *buf = 138543362;
      v25 = v9;
      goto LABEL_13;
    }

LABEL_18:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  if (mmcs_http_context_is_cancelled(v5))
  {
    goto LABEL_18;
  }

  if (v5 != a1)
  {
    v16 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Callback for unknown context %p; Expected %p", a1, v5);
    v10 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v9;
LABEL_13:
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
LABEL_14:
      _os_log_impl(&dword_2577D8000, v13, v14, "%{public}@", buf, 0xCu);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v23 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"request data for context had an error");
      v10 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v25 = v9;
        goto LABEL_13;
      }

LABEL_15:
      if (v9)
      {
        CFRelease(v9);
      }

      goto LABEL_18;
    }

    if (a3 == 4)
    {
      goto LABEL_18;
    }

LABEL_31:
    v18 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"request data for context got unknown type %d", a3);
    v19 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = v9;
      v13 = v19;
      v14 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (a3 == 1)
  {
    if (gMMCS_DebugLevel >= 4)
    {
      v20 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"request data for context (%p) opened", v5);
        v22 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v25 = v21;
          _os_log_impl(&dword_2577D8000, v22, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v21)
        {
          CFRelease(v21);
        }
      }
    }

    *(*(a2 + 304) + 112) = 0;
    goto LABEL_18;
  }

  if (a3 != 2)
  {
    goto LABEL_31;
  }

  v17 = *MEMORY[0x277D85DE8];

  mmcs_put_req_context_write_put_auth_request_body(a2, v5);
}

void mmcs_put_req_will_retry_auth_put_after_background_error(uint64_t a1, uint64_t a2, __CFError *a3)
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
      v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ retry auth put after error %@", v6, v7);
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

void handle_response_authorizePut(uint64_t a1, CFTypeRef *a2, uint64_t a3)
{
  if (mmcs_http_context_status_succeeded(a1))
  {
    if (*(a3 + 272))
    {
      if (!*(a3 + 72))
      {
        v22 = mmcs_http_context_copy_blocked_application_header_value(a1);
        if (v22)
        {
          v23 = v22;
          if (a2)
          {
            if (*a2)
            {
              CFRelease(*a2);
            }

            *a2 = 0;
          }

          error = mmcs_cferror_create_error(@"com.apple.mmcs", 51, v23);
          goto LABEL_29;
        }
      }
    }

    if (a2)
    {
      if (*a2)
      {
        if (CFDataGetLength(*a2))
        {
          mmcs_http_context_validate_request_uuid_with_response(a1);
          *(a3 + 120) = mmcs_get_proto_version(a1);
          *(a3 + 128) = v11;
          http_clock_skew_metrics_with_http_context = mmcs_create_http_clock_skew_metrics_with_http_context(a1);
          if (http_clock_skew_metrics_with_http_context)
          {
            v13 = http_clock_skew_metrics_with_http_context;
            mmcs_request_set_http_clock_skew_metrics(a3, http_clock_skew_metrics_with_http_context);
            CFRelease(v13);
          }

          mmcs_http_context_cleanup_response(a1);
          if (*(a3 + 248))
          {
            authorization_error_with_format = mmcs_cferror_create_authorization_error_with_format(*a2, @"Successfully fetched put authorization", v14, v15, v16, v17, v18, v19, v26);
            mmcs_put_request_context_cleanup(a3, authorization_error_with_format);
            if (authorization_error_with_format)
            {
              CFRelease(authorization_error_with_format);
            }
          }

          else
          {
            mmcs_put_request_process_put_authorization_data(a3, a2);
          }

          if (*a2)
          {
            CFRelease(*a2);
          }

          *a2 = 0;
          return;
        }

        if (*a2)
        {
          CFRelease(*a2);
        }
      }

      *a2 = 0;
    }

    error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"The authorize put response had no body.", v6, v7, v8, v9, v10, v26);
LABEL_29:
    v25 = error;
    mmcs_put_request_context_cleanup(a3, error);
    if (v25)
    {

      CFRelease(v25);
    }

    return;
  }

  if (a2)
  {
    if (*a2)
    {
      CFRelease(*a2);
    }

    *a2 = 0;
  }

  v21 = mmcs_http_context_get_error(a1);

  mmcs_put_request_context_cleanup(a3, v21);
}

__CFArray *mmcs_put_req_context_make_auth_metrics(__CFArray *result, uint64_t a2)
{
  if (*(result + 23))
  {
    v2 = result;
    mmcs_http_context_make_metrics(*(*(result + 38) + 96), @"authPut", 0, a2, 0);
    v3 = *(v2 + 23);
    metrics = mmcs_http_context_get_metrics(*(*(v2 + 38) + 96));

    return mmcs_metrics_request_add_http_info_for_auth(v3, metrics);
  }

  return result;
}

const __CFSet *mmcs_put_request_has_outstanding_chunk_jobs(uint64_t a1)
{
  result = **(a1 + 304);
  if (result)
  {
    return (CFSetGetCount(result) > 0);
  }

  return result;
}

const __CFArray *mmcs_put_items(uint64_t a1, uint64_t a2, const __CFDictionary *a3, const void *a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, CFErrorRef *a11)
{
  v18 = a11;
  v50 = *MEMORY[0x277D85DE8];
  v19 = _os_activity_create(&dword_2577D8000, "mmcs-put-items", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v19, &state);
  v46 = 0;
  if (a11)
  {
    *a11 = 0;
  }

  values = 0;
  v20 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v26 = v19;
    v27 = a3;
    v28 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"baseurl: %@", a4);
    v29 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v49 = v28;
      _os_log_impl(&dword_2577D8000, v29, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    a3 = v27;
    v19 = v26;
    v18 = a11;
    if (v28)
    {
      CFRelease(v28);
    }
  }

  if (!a1 || !a4 || !a5 || !a7 || !a8 || !a9)
  {
    if (v18)
    {
      v34 = @"Missing required parameters.";
      goto LABEL_29;
    }

LABEL_52:
    v36 = 0;
    goto LABEL_53;
  }

  if (!a6)
  {
LABEL_35:
    v36 = 1;
    goto LABEL_53;
  }

  if (a6 >= 1)
  {
    v30 = 0;
    while (*(a9 + 8 * v30))
    {
      if ((a6 & 0x7FFFFFFF) == ++v30)
      {
        goto LABEL_19;
      }
    }

    if (v18)
    {
      error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 35, @"Missing auth token for item at index %d.", v21, v22, v23, v24, v25, v30);
      goto LABEL_30;
    }

    goto LABEL_52;
  }

LABEL_19:
  if (*(a1 + 120))
  {
    v31 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"engine is already closed.");
      v33 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v49 = v32;
        _os_log_impl(&dword_2577D8000, v33, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v32)
      {
        CFRelease(v32);
      }
    }

    if (v18)
    {
      v34 = @"engine is already closed.";
LABEL_29:
      error = mmcs_cferror_create_error(@"com.apple.mmcs", 35, v34);
LABEL_30:
      v36 = 0;
      *v18 = error;
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (mmcs_put_req_context_create(&v46, a1, a2, a3, a4, a5, 0, 0, a6, a7, a8, a9, a10, v19, &values) != -1)
  {
    mmcs_engine_add_request(a1, v46);
    mmcs_metrics_request_started(v46[23], *(v46[38] + 144));
    v37 = voucher_copy();
    v38 = v46;
    v46[28] = v37;
    mmcs_put_req_context_init_items(v38);
    goto LABEL_35;
  }

  v39 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    v40 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Failed to create authPut request");
    v41 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v49 = v40;
      _os_log_impl(&dword_2577D8000, v41, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v40)
    {
      CFRelease(v40);
    }
  }

  if (v18)
  {
    if (values)
    {
      v36 = CFArrayCreate(*MEMORY[0x277CBECE8], &values, 1, MEMORY[0x277CBF128]);
      if (values)
      {
        CFRelease(values);
      }

      values = 0;
    }

    else
    {
      v36 = 0;
    }

    *v18 = mmcs_cferror_create_error_with_underlying_errors(@"com.apple.mmcs", 35, @"Failed to create authPut request", v36, 0);
    if (v36)
    {
      CFRelease(v36);
      goto LABEL_52;
    }
  }

  else
  {
    if (values)
    {
      CFRelease(values);
    }

    v36 = 0;
    values = 0;
  }

LABEL_53:
  if (v46)
  {
    C3BaseRelease(v46);
  }

  if (v19)
  {
    os_release(v19);
  }

  os_activity_scope_leave(&state);
  v42 = *MEMORY[0x277D85DE8];
  return v36;
}

uint64_t mmcs_put_section_with_items(uint64_t a1, const void *a2, const char *a3, uint64_t a4, const __CFDictionary *a5, const void *a6, uint64_t a7, CFIndex a8, uint64_t a9, uint64_t a10, int a11, CFErrorRef *a12)
{
  v18 = a12;
  v79 = *MEMORY[0x277D85DE8];
  v19 = _os_activity_create(&dword_2577D8000, "mmcs-put-section-with-items", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v19, &state);
  v72 = 0;
  if (a12)
  {
    *a12 = 0;
  }

  values = 0;
  v20 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = v19;
    v22 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"baseurl: %@", a2);
    v23 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v78 = v22;
      _os_log_impl(&dword_2577D8000, v23, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    v19 = v21;
    v18 = a12;
    if (v22)
    {
      CFRelease(v22);
    }
  }

  if (!a10 || !a7 || !a1 || !a2 || !a3 || !a9)
  {
    if (v18)
    {
      v29 = @"Missing required parameters.";
      goto LABEL_25;
    }

    goto LABEL_65;
  }

  if (!a8)
  {
    v31 = 1;
    goto LABEL_66;
  }

  if (*(a1 + 120))
  {
    v24 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = v18;
      v26 = v19;
      v27 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"engine is already closed.");
      v28 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v78 = v27;
        _os_log_impl(&dword_2577D8000, v28, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      v19 = v26;
      v18 = v25;
      if (v27)
      {
        CFRelease(v27);
      }
    }

    if (v18)
    {
      v29 = @"engine is already closed.";
LABEL_25:
      error = mmcs_cferror_create_error(@"com.apple.mmcs", 35, v29);
LABEL_26:
      v31 = 0;
      *v18 = error;
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v76 = 666;
  v74 = a10;
  v75 = a7;
  v70 = a11;
  if (mmcs_put_req_context_create(&v72, a1, a4, a5, a2, a3, a6, 1, 1, &v76, &v75, &v74, &v70, v19, &values) == -1)
  {
    v43 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = v18;
      v45 = v19;
      v46 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Failed to create authPut request");
      v47 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v78 = v46;
        _os_log_impl(&dword_2577D8000, v47, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      v19 = v45;
      v18 = v44;
      if (v46)
      {
        CFRelease(v46);
      }
    }

    if (!v18)
    {
      if (values)
      {
        CFRelease(values);
      }

      v31 = 0;
      values = 0;
      goto LABEL_66;
    }

    if (values)
    {
      v31 = CFArrayCreate(*MEMORY[0x277CBECE8], &values, 1, MEMORY[0x277CBF128]);
      if (values)
      {
        CFRelease(values);
      }

      values = 0;
    }

    else
    {
      v31 = 0;
    }

    *v18 = mmcs_cferror_create_error_with_underlying_errors(@"com.apple.mmcs", 35, @"Failed to create authPut request", v31, 0);
    if (!v31)
    {
      goto LABEL_66;
    }

    CFRelease(v31);
LABEL_65:
    v31 = 0;
    goto LABEL_66;
  }

  v32 = *MEMORY[0x277CBECE8];
  Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], a8, MEMORY[0x277CBF158]);
  if (!Mutable)
  {
    v48 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v54 = v18;
      v55 = v19;
      v56 = CFStringCreateWithFormat(v32, 0, @"Failed to allocate itemIdSet for %llu itemds.", a8);
      v57 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v78 = v56;
        _os_log_impl(&dword_2577D8000, v57, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      v19 = v55;
      v18 = v54;
      if (v56)
      {
        CFRelease(v56);
      }
    }

    if (v18)
    {
      error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Failed to allocate itemIdSet for %llu itemds.", v49, v50, v51, v52, v53, a8);
      goto LABEL_26;
    }

    goto LABEL_65;
  }

  v34 = Mutable;
  v35 = v19;
  v36 = a8;
  v37 = a9;
  v38 = a9;
  v39 = v36;
  while (1)
  {
    v40 = CFNumberCreate(v32, kCFNumberSInt64Type, v37);
    if (!v40)
    {
      break;
    }

    CFSetAddValue(v34, v40);
    v38 += 8;
    v37 += 8;
    if (!--v36)
    {
      *(v72[38] + 72) = v34;
      v41 = voucher_copy();
      v42 = v72;
      v72[28] = v41;
      mmcs_engine_add_request(a1, v42);
      mmcs_metrics_request_started(v72[23], *(v72[38] + 144));
      if (mmcs_put_req_context_init_items_for_section(v72, v39, a9, v18))
      {
        v31 = 1;
        goto LABEL_73;
      }

      mmcs_engine_remove_request(a1, v72);
      goto LABEL_72;
    }
  }

  v58 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
  {
    v64 = CFStringCreateWithFormat(v32, 0, @"Failed to allocate itemIdWrapper for itemId %llu.", v38);
    v65 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v78 = v64;
      _os_log_impl(&dword_2577D8000, v65, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v64)
    {
      CFRelease(v64);
    }
  }

  if (v18)
  {
    v31 = 0;
    *v18 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Failed to allocate itemIdWrapper for itemId %llu.", v59, v60, v61, v62, v63, v38);
    goto LABEL_73;
  }

LABEL_72:
  v31 = 0;
LABEL_73:
  v19 = v35;
LABEL_66:
  if (v72)
  {
    C3BaseRelease(v72);
  }

  v72 = 0;
  if (v19)
  {
    os_release(v19);
  }

  os_activity_scope_leave(&state);
  v66 = *MEMORY[0x277D85DE8];
  return v31;
}

uint64_t mmcs_put_request_has_outstanding_put_completes(uint64_t result, _BYTE *a2)
{
  if (a2)
  {
    if (result)
    {
      if (!*a2)
      {
        result = *(result + 8);
        if (result)
        {
          result = mmcs_http_context_is_sending(result);
          if (result)
          {
            *a2 = 1;
          }
        }
      }
    }
  }

  return result;
}

void mmcs_put_req_will_retry_put_complete_after_error(uint64_t a1, uint64_t *a2, __CFError *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = mmcs_request_copy_description(v4);
    v7 = mmcs_cferror_copy_description(a3);
    v8 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ retry put complete after error %@", v6, v7);
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

void handle_response_putComplete(uint64_t a1, CFDataRef *a2, uint64_t a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  mmcs_http_context_cleanup_response(a1);
  if (mmcs_http_context_status_succeeded(a1))
  {
    if (a2)
    {
      if (*a2)
      {
        Length = CFDataGetLength(*a2);
        if (Length)
        {
          v8 = Length;
          v9 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v45 = v8;
            v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Got %ld bytes");
            v11 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(buf.opaque[0]) = 138543362;
              *(buf.opaque + 4) = v10;
              _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
            }

            if (v10)
            {
              CFRelease(v10);
            }
          }

          v12 = *(v6[38] + 120);
          BytePtr = CFDataGetBytePtr(*a2);
          if (v12)
          {
            v14 = chunkserver__clone_complete_response__unpack(0, v8, BytePtr);
            if (v14)
            {
              v15 = v14;
              mmcs_put_state_process_clone_complete(*(v6[38] + 80), v14);
              chunkserver__clone_complete_response__free_unpacked(v15, 0);
            }
          }

          else
          {
            v27 = chunkserver__storage_container_error_list__unpack(0, v8, BytePtr);
            if (v27)
            {
              v28 = v27;
              mmcs_put_state_process_storage_container_error_list(*(v6[38] + 80), v27);
              chunkserver__storage_container_error_list__free_unpacked(v28, 0);
            }

            else
            {
              v29 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                v35 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Error parsing response from server.");
                v36 = mmcs_logging_logger_default();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(buf.opaque[0]) = 138543362;
                  *(buf.opaque + 4) = v35;
                  _os_log_impl(&dword_2577D8000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@", &buf, 0xCu);
                }

                if (v35)
                {
                  CFRelease(v35);
                }
              }

              v37 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 5, @"Unable to unpack protobuf response from server", v30, v31, v32, v33, v34, v45);
              mmcs_put_complete_set_error_and_push_to_containers(a3, v37);
              if (v37)
              {
                CFRelease(v37);
              }
            }
          }

          if (*a2)
          {
            CFRelease(*a2);
          }

          *a2 = 0;
          goto LABEL_36;
        }
      }
    }

    v16 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    error_with_underlying_error = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"No body in putComplete response");
    v18 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.opaque[0]) = 138543362;
      *(buf.opaque + 4) = error_with_underlying_error;
      _os_log_impl(&dword_2577D8000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@", &buf, 0xCu);
    }
  }

  else
  {
    if (mmcs_http_context_has_http_status(a1))
    {
      if (mmcs_http_context_http_status(a1) == 330)
      {
        error = mmcs_http_context_get_error(a1);
        mmcs_put_request_put_complete_failed(v6, error);
        goto LABEL_36;
      }

      v26 = mmcs_http_context_get_error(a1);
      v45 = mmcs_http_context_http_status(a1);
      v25 = @"HTTP request failed with status: %d";
      v20 = v26;
    }

    else
    {
      v20 = mmcs_http_context_get_error(a1);
      v25 = @"HTTP request failed without status!";
    }

    error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 5, v20, v25, v21, v22, v23, v24, v45);
    mmcs_put_complete_set_error_and_push_to_containers(a3, error_with_underlying_error);
  }

  if (error_with_underlying_error)
  {
    CFRelease(error_with_underlying_error);
  }

LABEL_36:
  v38 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    Count = CFArrayGetCount(*(a3 + 24));
    LODWORD(buf.opaque[0]) = 134217984;
    *(buf.opaque + 4) = Count;
    _os_log_impl(&dword_2577D8000, v38, OS_LOG_TYPE_INFO, "PutComplete performed for %ld containers.", &buf, 0xCu);
  }

  mmcs_put_complete_cleanup_containers(a3);
  if (!mmcs_put_request_has_outstanding_async_transactions(v6))
  {
    buf.opaque[0] = 0;
    buf.opaque[1] = 0;
    request_activity_marker = mmcs_request_get_request_activity_marker(v6);
    os_activity_scope_enter(request_activity_marker, &buf);
    v41 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Uploads complete. All done! (Put request %p)", v6);
      v43 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *v46 = 138543362;
        v47 = v42;
        _os_log_impl(&dword_2577D8000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@", v46, 0xCu);
      }

      if (v42)
      {
        CFRelease(v42);
      }
    }

    mmcs_put_request_all_put_completes_done(v6);
    os_activity_scope_leave(&buf);
  }

  if (a2)
  {
    if (*a2)
    {
      CFRelease(*a2);
    }

    *a2 = 0;
  }

  v44 = *MEMORY[0x277D85DE8];
}

__CFArray *mmcs_put_req_context_make_put_complete_metrics(__CFArray *result, uint64_t a2, uint64_t a3)
{
  if (*(result + 23))
  {
    v4 = result;
    mmcs_http_context_make_metrics(*(a2 + 8), @"putComplete", 0, a3, 0);
    v5 = *(v4 + 23);
    metrics = mmcs_http_context_get_metrics(*(a2 + 8));

    return mmcs_metrics_request_add_http_info_for_completion(v5, metrics);
  }

  return result;
}

void failed_to_send_put_complete(void *a1, const void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1[11];
  *(v3 + 33) = 0;
  if (a2)
  {
    mmcs_container_set_complete_error_if_absent(a1, a2);
  }

  v4 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v6 = *v5;
    }

    else
    {
      v6 = "unknown";
    }

    v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"failed to create putComplete for container '%s', error: %@", v6, a2);
    v8 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v11 = v7;
      _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void notify_item_of_put_container_errors(uint64_t a1, uint64_t a2)
{
  values[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 184);
  if (v4 && CFArrayGetCount(v4) >= 1)
  {
    valuePtr = 0;
    Count = CFArrayGetCount(*(a1 + 184));
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      v8 = 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 184), v8 - 1);
        Domain = CFErrorGetDomain(ValueAtIndex);
        if (CFEqual(@"com.apple.mmcs", Domain) && CFErrorGetCode(ValueAtIndex) == 11)
        {
          v11 = CFErrorCopyUserInfo(ValueAtIndex);
          if (v11)
          {
            v12 = v11;
            Value = CFDictionaryGetValue(v11, @"kMMCSErrorItemIDKey");
            if (Value && (v14 = Value, v15 = CFGetTypeID(Value), v15 == CFNumberGetTypeID()) && CFNumberGetValue(v14, kCFNumberLongLongType, &valuePtr))
            {
              if (*(a1 + 40) != valuePtr)
              {
                ValueAtIndex = 0;
              }
            }

            else
            {
              ValueAtIndex = 0;
            }

            CFRelease(v12);
          }

          else
          {
            ValueAtIndex = 0;
          }

          v7 = 1;
        }

        else
        {
          ValueAtIndex = 0;
        }

        if (v8 >= v6)
        {
          break;
        }

        ++v8;
      }

      while (!ValueAtIndex);
      if (v7 && ValueAtIndex)
      {
        CFRetain(ValueAtIndex);
        goto LABEL_31;
      }

      if (v7 && !ValueAtIndex)
      {
        keys[0] = @"kMMCSErrorRetryClientInitiatedKey";
        values[0] = *MEMORY[0x277CBED28];
        v17 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        ValueAtIndex = mmcs_cferror_create_with_swiss_army_knife(@"com.apple.mmcs", 16, 0, v17, 0, 0, 0, @"Item %lld in this batch failed, so this item should be retried.", valuePtr);
        if (v17)
        {
          CFRelease(v17);
        }

        goto LABEL_31;
      }
    }

    ValueAtIndex = mmcs_cferror_create_error_with_underlying_errors(@"com.apple.mmcs", 7, @"Put container(s) failed.", *(a1 + 184), 0);
LABEL_31:
    mmcs_put_item_progress_make_done_error(ValueAtIndex, keys);
    mmcs_put_request_set_progress_and_notify_items_like_item(a2, a1, keys);
    if (ValueAtIndex)
    {
      CFRelease(ValueAtIndex);
    }

    goto LABEL_33;
  }

  v16 = *(a1 + 240);
  if (v16)
  {
    mmcs_put_item_progress_make_done_error(v16, keys);
    mmcs_put_request_set_progress_and_notify_items_like_item(a2, a1, keys);
  }

LABEL_33:
  v18 = *MEMORY[0x277D85DE8];
}

void mmcs_put_req_context_write_put_auth_request_body(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 304) + 104))
  {
    v4 = *MEMORY[0x277CBECE8];
    while (1)
    {
      if (!mmcs_http_request_body_can_accept_data(a2))
      {
        if (gMMCS_DebugLevel >= 5)
        {
          v23 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v24 = CFStringCreateWithFormat(v4, 0, @"Stream says it is full");
            v25 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v46 = v24;
              _os_log_impl(&dword_2577D8000, v25, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
            }

            if (v24)
            {
              CFRelease(v24);
            }
          }
        }

LABEL_27:
        if (CFDataGetLength(*(*(a1 + 304) + 104)) <= *(*(a1 + 304) + 112))
        {
          if (gMMCS_DebugLevel >= 4)
          {
            v26 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              v27 = CFStringCreateWithFormat(v4, 0, @"closing request body for context (%p): all done", a2);
              v28 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                v46 = v27;
                _os_log_impl(&dword_2577D8000, v28, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
              }

              if (v27)
              {
                CFRelease(v27);
              }
            }
          }

          mmcs_http_set_request_body_done(a2);
        }

        goto LABEL_51;
      }

      Length = CFDataGetLength(*(*(a1 + 304) + 104));
      v6 = *(a1 + 304);
      v7 = Length - *(v6 + 112);
      if (v7 < 1)
      {
        goto LABEL_27;
      }

      BytePtr = CFDataGetBytePtr(*(v6 + 104));
      v9 = mmcs_http_write_request_body(a2, &BytePtr[*(*(a1 + 304) + 112)], v7);
      if (gMMCS_DebugLevel >= 5)
      {
        v10 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v44 = a2;
          v11 = CFStringCreateWithFormat(v4, 0, @"context (%p) wrote %d bytes");
          v12 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v46 = v11;
            _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v11)
          {
            CFRelease(v11);
          }
        }
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        break;
      }

      *(*(a1 + 304) + 112) += v9;
      if (v9 != v7)
      {
        goto LABEL_27;
      }
    }

    v29 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v35 = CFStringCreateWithFormat(v4, 0, @"mmcs_http_write_request_body() failed ");
      v36 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v46 = v35;
        _os_log_impl(&dword_2577D8000, v36, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v35)
      {
        CFRelease(v35);
      }
    }

    v37 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 38, @"mmcs_http_write_request_body() failed", v30, v31, v32, v33, v34, v44);
    v38 = *(a1 + 304);
    v39 = *(v38 + 104);
    if (v39)
    {
      CFRelease(v39);
      v38 = *(a1 + 304);
    }

    *(v38 + 104) = 0;
    if (gMMCS_DebugLevel >= 4)
    {
      v40 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = CFStringCreateWithFormat(v4, 0, @"closing request body for context (%p) had an error %@.", a2, v37);
        v42 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v46 = v41;
          _os_log_impl(&dword_2577D8000, v42, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v41)
        {
          CFRelease(v41);
        }
      }
    }

    mmcs_http_context_should_stop_with_error(*(*(a1 + 304) + 96), v37);
    if (v37)
    {
      v22 = v37;
      goto LABEL_50;
    }
  }

  else
  {
    v13 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"There was no request body");
      v20 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v46 = v19;
        _os_log_impl(&dword_2577D8000, v20, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v19)
      {
        CFRelease(v19);
      }
    }

    v21 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"There was no request body.", v14, v15, v16, v17, v18, v44);
    mmcs_http_context_should_stop_with_error(*(*(a1 + 304) + 96), v21);
    if (v21)
    {
      v22 = v21;
LABEL_50:
      CFRelease(v22);
    }
  }

LABEL_51:
  v43 = *MEMORY[0x277D85DE8];
}

char *ub_dirname_alloced(const char *a1)
{
  v2 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  v3 = v2;
  if (v2)
  {
    if (a1 && *a1)
    {
      v4 = &a1[strlen(a1) - 1];
      while (v4 > a1)
      {
        v5 = *v4--;
        if (v5 != 47)
        {
          while (v4 > a1)
          {
            v6 = *v4--;
            if (v6 == 47)
            {
              ++v4;
              goto LABEL_13;
            }
          }

          goto LABEL_19;
        }
      }

LABEL_13:
      v7 = v4 - a1;
      if (v4 == a1)
      {
LABEL_19:
        if (*a1 == 47)
        {
          v11 = 47;
        }

        else
        {
          v11 = 46;
        }

        *v3 = v11;
        v3[1] = 0;
        return v3;
      }

      v8 = (v4 - 1);
      do
      {
        v9 = v7;
        if (v8 <= a1)
        {
          break;
        }

        v10 = *v8--;
        --v7;
      }

      while (v10 == 47);
      if (v9 < 0x400)
      {
        __memcpy_chk();
        v3[v9] = 0;
      }

      else
      {
        *__error() = 63;
        free(v3);
        return 0;
      }
    }

    else
    {
      *v2 = 46;
    }
  }

  return v3;
}

uint64_t IntFromCFObject(const __CFBoolean *a1, SInt32 *a2)
{
  if (IsValidCFBoolean(a1))
  {
    Value = CFBooleanGetValue(a1);
LABEL_3:
    *a2 = Value;
    return 1;
  }

  if (IsValidCFNumber(a1))
  {

    return CFNumberGetValue(a1, kCFNumberIntType, a2);
  }

  else
  {
    result = IsValidCFString(a1);
    if (result)
    {
      Value = CFStringGetIntValue(a1);
      goto LABEL_3;
    }
  }

  return result;
}

const void *IsValidCFArray(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFArrayGetTypeID());
  }

  return result;
}

const void *IsValidCFDictionary(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFDictionaryGetTypeID());
  }

  return result;
}

void initClientInfoHeaderTemplate()
{
  v19 = *MEMORY[0x277D85DE8];
  memset(v18, 0, sizeof(v18));
  v16 = 128;
  *v17 = 0x200000006;
  if (sysctl(v17, 2u, v18, &v16, 0, 0) == -1)
  {
    *&v18[0] = 0x4E574F4E4B4E55;
  }

  v0 = *MEMORY[0x277CBECE8];
  v1 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], @"/System/Library/CoreServices/SystemVersion.plist", kCFURLPOSIXPathStyle, 0);
  if (!v1)
  {
    v11 = 0;
    goto LABEL_16;
  }

  v2 = v1;
  v3 = CFReadStreamCreateWithFile(v0, v1);
  if (v3)
  {
    v4 = v3;
    if (!CFReadStreamOpen(v3))
    {
      v11 = 0;
LABEL_14:
      CFRelease(v4);
      goto LABEL_15;
    }

    format = 0;
    error = 0;
    v5 = CFPropertyListCreateWithStream(v0, v4, 0, 0, &format, &error);
    if (v5)
    {
      v6 = v5;
      Value = CFDictionaryGetValue(v5, @"ProductName");
      v8 = CFDictionaryGetValue(v6, @"ProductVersion");
      v9 = CFDictionaryGetValue(v6, @"ProductBuildVersion");
      v10 = CFStringCreateWithFormat(v0, 0, @"%@;%@;%@", Value, v8, v9);
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v6 = error;
      if (!error)
      {
LABEL_13:
        CFReadStreamClose(v4);
        goto LABEL_14;
      }
    }

    CFRelease(v6);
    v11 = v10;
    goto LABEL_13;
  }

  v11 = 0;
LABEL_15:
  CFRelease(v2);
LABEL_16:
  v12 = @"?;?;?";
  if (v11)
  {
    v12 = v11;
  }

  sClientInfoHeaderTemplate = CFStringCreateWithFormat(v0, 0, @"<%s> <%@>", v18, v12);
  if (v11)
  {
    CFRelease(v11);
  }

  v13 = *MEMORY[0x277D85DE8];
}

__CFString *mmcs_request_class_short_description(unsigned int a1)
{
  if (a1 > 5)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_2798456B8 + a1);
  }
}

uint64_t mmcs_request_allocate(uint64_t *a1, int a2, uint64_t a3)
{
  *a1 = 0;
  if (a3 < -312)
  {
    return 0;
  }

  v7 = C3TypeRegister(&mmcs_requestGetTypeID_typeID);
  result = C3TypeCreateInstance_(0, v7, a3 + 312);
  if (result)
  {
    v8 = result;
    *(result + 16) = a2;
    *(result + 208) = 0;
    *(result + 216) = 0;
    *(result + 200) = 0;
    os_unfair_lock_lock(&sMMCSRequestClassLock);
    v9 = sMMCSRequestIndex++;
    os_unfair_lock_unlock(&sMMCSRequestClassLock);
    *(v8 + 24) = v9;
    *(v8 + 304) = v8 + 312;
    *a1 = v8;
    return 1;
  }

  return result;
}

uint64_t mmcs_request_has_items_not_done(uint64_t a1)
{
  v2 = _requestCallbacks[5 * *(a1 + 16)];
  if (!v2)
  {
    mmcs_request_has_items_not_done_cold_1();
  }

  return v2();
}

CFStringRef _mmcs_request_copy_description(uint64_t a1)
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = mmcs_request_class_short_description(*(a1 + 16));
  v4 = *(a1 + 24);
  if (*(a1 + 88))
  {
    v5 = *(a1 + 88);
  }

  else
  {
    v5 = @"0(default)";
  }

  is_background = mmcs_http_request_options_is_background(*(a1 + 56));
  v7 = " Bg";
  if (!is_background)
  {
    v7 = "";
  }

  return CFStringCreateWithFormat(v2, 0, @"<%@ req%04ld %p pri%@%s>", v3, v4, a1, v5, v7);
}

CFStringRef mmcs_request_copy_description(uint64_t a1)
{
  if (!a1)
  {
    return @"(null)";
  }

  v1 = *(a1 + 16);
  if (v1)
  {
    return _requestCallbacks[5 * v1 + 1]();
  }

  else
  {
    return _mmcs_request_copy_description(a1);
  }
}

uint64_t mmcs_request_append_description(uint64_t result)
{
  if (*result)
  {
    v1 = *(*result + 16);
    if (v1)
    {
      return _requestCallbacks[5 * v1 + 4]();
    }
  }

  return result;
}

uint64_t _mmcs_request_init(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, const void *a5, const char *a6, void *a7, CFErrorRef *a8)
{
  v113 = *MEMORY[0x277D85DE8];
  if (a8)
  {
    *a8 = 0;
  }

  *(a1 + 32) = MMCSEngineRetain(a2);
  *(a1 + 40) = a3;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  if (a5)
  {
    CFRetain(a5);
  }

  *(a1 + 160) = a5;
  if (a6)
  {
    v15 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a6, 0x8000100u);
  }

  else
  {
    v15 = 0;
  }

  *(a1 + 104) = 0u;
  *(a1 + 168) = v15;
  *(a1 + 96) = 0x403E000000000000;
  *(a1 + 120) = 0u;
  *(a1 + 140) = mmcs_http_class_default_value(2);
  if (a7)
  {
    os_retain(a7);
  }

  *(a1 + 200) = a7;
  result = mmcs_http_request_options_create_with_dictionary((a1 + 56), 0);
  if (result)
  {
    *(a1 + 64) = 0;
    *(a1 + 68) = 2;
    *(a1 + 296) = 0;
    *(a1 + 298) = 0;
    *(a1 + 72) = 1;
    *(a1 + 248) = 0;
    *(a1 + 73) = 0;
    *(a1 + 232) = os_transaction_create();
    *(a1 + 72) = mmcs_get_BOOLean_from_cfpreferences_object_for_key(@"UseProxy", *(a1 + 72));
    cfBOOLean_from_cfpreferences_object_for_key = mmcs_get_cfBOOLean_from_cfpreferences_object_for_key(@"UseEdge", 0);
    *(a1 + 74) = mmcs_get_BOOLean_from_cfpreferences_object_for_key(@"UseLimp", *(a1 + 74));
    *(a1 + 75) = mmcs_get_BOOLean_from_cfpreferences_object_for_key(@"UseContainerInterrupting", *(a1 + 75));
    mmcs_report_tickle(*(a1 + 56));
    if (!a4)
    {
LABEL_67:
      if (cfBOOLean_from_cfpreferences_object_for_key)
      {
        v70 = *(a1 + 56);
        if (CFBooleanGetValue(cfBOOLean_from_cfpreferences_object_for_key))
        {
          v71 = @"true";
        }

        else
        {
          v71 = @"false";
        }

        mmcs_http_request_options_add_inserted_header_if_absent(v70, @"x-apple-use-edge", v71);
      }

      BOOLean_from_cfdictionary_object_for_key = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestOptionMetaserverCheckDisabled", 0);
      if (!a5 || BOOLean_from_cfdictionary_object_for_key)
      {
        goto LABEL_146;
      }

      if (a4)
      {
        Value = CFDictionaryGetValue(a4, @"kMMCSRequestOptionMetaserverAllowedHostnamesOverride");
        if (Value)
        {
          TypeID = CFArrayGetTypeID();
          if (TypeID != CFGetTypeID(Value))
          {
            Value = 0;
          }
        }

        v75 = CFDictionaryGetValue(a4, @"kMMCSRequestOptionMetaserverAllowedSchemesOverride");
        if (v75)
        {
          v76 = v75;
          v77 = CFArrayGetTypeID();
          v78 = v77 == CFGetTypeID(v76) ? v76 : 0;
        }

        else
        {
          v78 = 0;
        }
      }

      else
      {
        v78 = 0;
        Value = 0;
      }

      if (mmcs_report_is_valid_base_url_for_mobile_me(Value, v78, a5))
      {
LABEL_146:
        if (*(a1 + 72))
        {
          if (mmcs_proxy_locator_should_disable_for_request(a1))
          {
            v80 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
            {
              v81 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"LAN Asset Cache Disabled for this request");
              v82 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                *&buf[4] = v81;
                _os_log_impl(&dword_2577D8000, v82, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
              }

              if (v81)
              {
                CFRelease(v81);
              }
            }

            *(a1 + 72) = 0;
            goto LABEL_95;
          }

          if (*(a1 + 72))
          {
            v95 = mmcs_proxy_locator_exists();
            *(a1 + 72) = v95;
            if (v95)
            {
              if (*(a1 + 68) == 2)
              {
                *(a1 + 68) = 0;
                v96 = mmcs_logging_logger_default();
                if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
                {
                  v97 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Disabling inline put complete due to LAN Asset Cache.");
                  v98 = mmcs_logging_logger_default();
                  if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_142;
                  }

                  *buf = 138543362;
                  *&buf[4] = v97;
                  goto LABEL_141;
                }
              }
            }

            else
            {
              v109 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
              {
                v97 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to find LAN Asset Cache for eligable request.");
                v98 = mmcs_logging_logger_default();
                if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_142;
                }

                *buf = 138543362;
                *&buf[4] = v97;
LABEL_141:
                _os_log_impl(&dword_2577D8000, v98, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
LABEL_142:
                if (v97)
                {
                  CFRelease(v97);
                }
              }
            }
          }
        }

LABEL_95:
        if (*(a1 + 75))
        {
          v83 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            v84 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"********************* ENABLING TESTING MODE WHICH FAILS CONTAINER TRANSACTIONS *********************");
            v85 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v84;
              _os_log_impl(&dword_2577D8000, v85, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v84)
            {
              CFRelease(v84);
            }
          }
        }

        if (*(a1 + 296))
        {
          v86 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
          {
            v87 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"********************* ENABLING TESTING MODE WHICH FAILS NON-INLINE UPLOAD CHUNK RESPONSES *********************");
            v88 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v87;
              _os_log_impl(&dword_2577D8000, v88, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v87)
            {
              CFRelease(v87);
            }
          }
        }

        if (*(a1 + 297))
        {
          v89 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
          {
            v90 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"********************* ENABLING TESTING MODE WHICH FAILS COMPLETE TRANSACTIONS *********************");
            v91 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v90;
              _os_log_impl(&dword_2577D8000, v91, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v90)
            {
              CFRelease(v90);
            }
          }
        }

        if (*(a1 + 298))
        {
          v92 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
          {
            v93 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"********************* ENABLING TESTING MODE WHICH CANCELS REQUEST ON VERIFICATION QUEUE *********************");
            v94 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v93;
              _os_log_impl(&dword_2577D8000, v94, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v93)
            {
              CFRelease(v93);
            }
          }
        }

        result = 1;
        goto LABEL_137;
      }

      v99 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
      {
        v105 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Failed to provide valid base url %@ for mobileme request.", a5);
        v106 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v105;
          _os_log_impl(&dword_2577D8000, v106, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v105)
        {
          CFRelease(v105);
        }
      }

      if (a8)
      {
        v107 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 40, @"Failed to provide valid base url %@ for mobileme request.", v100, v101, v102, v103, v104, a5);
        result = 0;
        *a8 = v107;
        goto LABEL_137;
      }

LABEL_136:
      result = 0;
      goto LABEL_137;
    }

    v18 = mmcs_logging_logger_default();
    XCFPrint(v18, @"RequestOptions", a4);
    cfBOOLean_from_cfpreferences_object_for_key = mmcs_get_cfBOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestOptionUseEdge", cfBOOLean_from_cfpreferences_object_for_key);
    *(a1 + 64) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestDisableVendorTLS", *(a1 + 64));
    *(a1 + 68) = mmcs_get_cfindex_from_options(@"kMMCSRequestOptionSupportsInlinePutComplete", a4, *(a1 + 68));
    *(a1 + 296) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestOptionRequireInlineComplete", *(a1 + 296));
    *(a1 + 297) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestOptionInlineCompleteLogicInvertedMode", *(a1 + 297));
    *(a1 + 298) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestOptionCancelRequestOnVerificationQueue", *(a1 + 298));
    *(a1 + 72) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestOptionUseProxy", *(a1 + 72));
    *(a1 + 73) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestOptionProxyDown", *(a1 + 73));
    *(a1 + 74) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestOptionResumableContainerLimpMode", *(a1 + 74));
    *(a1 + 76) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSChunkingLibraryCorruptionMode", *(a1 + 76));
    *(a1 + 248) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestFetchAuthorizationOnly", *(a1 + 248));
    *(a1 + 249) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestReturnDownloadAuthorization", *(a1 + 249));
    v19 = mmcs_network_request_options_for_options(a4);
    v111 = 0;
    if (v19)
    {
      v20 = v19;
      if (mmcs_http_request_options_create_with_dictionary(&v111, v19))
      {
        v21 = *(a1 + 56);
        if (v21)
        {
          CFRelease(v21);
        }

        *(a1 + 56) = v111;
      }

      else
      {
        v22 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v110 = v20;
          v23 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"unable to initialize using network request options %@");
          v24 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v23;
            _os_log_impl(&dword_2577D8000, v24, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v23)
          {
            CFRelease(v23);
          }
        }
      }

      CFRelease(v20);
    }

    v25 = CFDictionaryGetValue(a4, @"kMMCSRequestOptionMmeDataClass");
    if (v25)
    {
      v26 = v25;
      v27 = CFStringGetTypeID();
      if (v27 == CFGetTypeID(v26))
      {
        *(a1 + 48) = CFStringCreateCopy(*MEMORY[0x277CBECE8], v26);
      }
    }

    v28 = CFDictionaryGetValue(a4, @"kMMCSRequestOptionServerProtocolVersion");
    if (v28)
    {
      v29 = v28;
      v30 = CFStringGetTypeID();
      if (v30 == CFGetTypeID(v29))
      {
        *(a1 + 120) = mmcs_server_version_make_from_CFString(v29);
        *(a1 + 128) = v31;
      }
    }

    v32 = CFDictionaryGetValue(a4, @"kMMCSRequestUrlExpiryDuration");
    if (v32)
    {
      v33 = v32;
      v34 = CFNumberGetTypeID();
      if (v34 == CFGetTypeID(v33))
      {
        CFNumberGetValue(v33, kCFNumberIntType, (a1 + 80));
      }
    }

    v35 = CFDictionaryGetValue(a4, @"kMMCSRequestOptionContainerIdentifier");
    if (v35)
    {
      v36 = v35;
      v37 = CFStringGetTypeID();
      if (v37 == CFGetTypeID(v36))
      {
        *(a1 + 240) = v36;
      }
    }

    v38 = CFDictionaryGetValue(a4, @"kMMCSRequestOptionPriority");
    if (v38)
    {
      v39 = v38;
      v40 = CFNumberGetTypeID();
      if (v40 == CFGetTypeID(v39))
      {
        mmcs_request_set_priority(a1, v39);
      }
    }

    v41 = CFDictionaryGetValue(a4, @"kMMCSRequestTimeoutPeriod");
    if (v41)
    {
      v42 = v41;
      v43 = CFNumberGetTypeID();
      if (v43 == CFGetTypeID(v42))
      {
        *buf = 0;
        if (CFNumberGetValue(v42, kCFNumberDoubleType, buf))
        {
          if (*buf > 0.0)
          {
            *(a1 + 96) = *buf;
          }
        }
      }
    }

    v44 = CFDictionaryGetValue(a4, @"kMMCSRequestOptionAuthTokenTimeout");
    if (v44)
    {
      v45 = v44;
      v46 = CFNumberGetTypeID();
      if (v46 == CFGetTypeID(v45))
      {
        *buf = 0;
        if (CFNumberGetValue(v45, kCFNumberDoubleType, buf))
        {
          if (*buf > 0.0)
          {
            *(a1 + 104) = *buf;
          }
        }
      }
    }

    v47 = CFDictionaryGetValue(a4, @"kMMCSRequestOptionCallerRequestUUID");
    if (v47)
    {
      v48 = v47;
      v49 = CFStringGetTypeID();
      if (v49 == CFGetTypeID(v48))
      {
        CFRetain(v48);
        *(a1 + 176) = v48;
      }
    }

    v50 = CFDictionaryGetValue(a4, @"kMMCSRequestOptionHTTPClass");
    if (v50)
    {
      v51 = v50;
      v52 = CFStringGetTypeID();
      if (v52 == CFGetTypeID(v51))
      {
        v53 = mmcs_http_class_for_string(v51);
        if (v53)
        {
          *(a1 + 140) = v53;
        }

        else
        {
          v54 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            v55 = *MEMORY[0x277CBECE8];
            v110 = v51;
            mmcs_http_class_description(*(a1 + 140));
            v56 = CFStringCreateWithFormat(v55, 0, @"Unknown http class %@: using %@");
            v57 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v56;
              _os_log_impl(&dword_2577D8000, v57, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v56)
            {
              CFRelease(v56);
            }
          }
        }
      }
    }

    v58 = CFDictionaryGetValue(a4, @"kMMCSRequestOptionPreauthorization");
    if (v58)
    {
      v59 = v58;
      v60 = CFDataGetTypeID();
      if (v60 == CFGetTypeID(v59))
      {
        v66 = CFDictionaryGetValue(a4, @"kMMCSRequestOptionPreauthorizationSignature");
        if (mmcs_request_validate_preauthorization_object(v59, v66))
        {
          mmcs_request_set_preauthorization_object(a1, v59);
          goto LABEL_64;
        }

        if (!a8)
        {
          goto LABEL_136;
        }

        v79 = @"preauthentication object is not authentic";
      }

      else
      {
        if (!a8)
        {
          goto LABEL_136;
        }

        v79 = @"preauthentication object must be type CFData";
      }

      *a8 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 40, v79, v61, v62, v63, v64, v65, v110);
      goto LABEL_136;
    }

LABEL_64:
    v67 = CFDictionaryGetValue(a4, @"kMMCSRequestOptionSimulcast");
    if (v67)
    {
      v68 = v67;
      v69 = CFBooleanGetTypeID();
      if (v69 == CFGetTypeID(v68))
      {
        *(a1 + 272) = CFBooleanGetValue(v68);
      }
    }

    goto LABEL_67;
  }

LABEL_137:
  v108 = *MEMORY[0x277D85DE8];
  return result;
}

void mmcs_request_set_priority(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 88);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 88) = cf;
    if (cf)
    {

      CFRetain(cf);
    }
  }
}

uint64_t mmcs_request_validate_preauthorization_object(const __CFData *a1, const __CFData *a2)
{
  if (!a2)
  {
    return 1;
  }

  v4 = mmcs_report_auth_simulcast_response_signing_key_public_current();
  v5 = mmcs_report_auth_simulcast_response_signing_key_public_prior();
  v6 = mmcs_request_validate_preauthorization_with_key(a1, a2, v4);
  if (!v6)
  {
    v6 = mmcs_request_validate_preauthorization_with_key(a1, a2, v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

void mmcs_request_set_preauthorization_object(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 264);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 264) = 0;
    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 264) = cf;
  }
}

uint64_t mmcs_request_get_dataclass(uint64_t a1)
{
  result = *(a1 + 48);
  if (!result)
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      mmcs_request_get_dataclass_cold_2();
    }

    result = *(v3 + 88);
    if (!result)
    {
      mmcs_request_get_dataclass_cold_1();
    }
  }

  return result;
}

CFTypeRef mmcs_request_set_http_clock_skew_metrics(uint64_t a1, CFTypeRef cf)
{
  result = *(a1 + 112);
  if (result != cf)
  {
    if (result)
    {
      C3BaseRelease(result);
    }

    *(a1 + 112) = cf;

    return C3BaseRetain(cf);
  }

  return result;
}

uint64_t mmcs_request_cancel(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 200), &state);
  v2 = *(a1 + 144);
  v3 = mmcs_logging_logger_default();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (!v2)
  {
    if (v4)
    {
      v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Cancelling request %p", a1);
      v10 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v21 = v9;
        _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }

    v11 = *(a1 + 16);
    if (v11 && (v12 = (_requestCallbacks[5 * v11 + 1])(a1)) != 0)
    {
      v13 = v12;
      v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ %@", @"Request was cancelled.", v12);
      CFRelease(v13);
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = @"Request was cancelled.";
    }

    error = mmcs_cferror_create_error(@"com.apple.mmcs", 4, v15);
    if (v14)
    {
      CFRelease(v14);
    }

    v16 = *(a1 + 16);
    if (v16)
    {
      v7 = (_requestCallbacks[5 * v16 + 2])(a1, error);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    if (!error)
    {
      goto LABEL_27;
    }

LABEL_26:
    CFRelease(error);
    v8 = v7;
    goto LABEL_27;
  }

  if (!v4)
  {
    v8 = 0;
    goto LABEL_27;
  }

  error = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Already cancelling. Ignoring cancel of request %p.", a1);
  v6 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v21 = error;
    _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
  }

  v7 = 0;
  v8 = 0;
  if (error)
  {
    goto LABEL_26;
  }

LABEL_27:
  os_activity_scope_leave(&state);
  v17 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t mmcs_request_cancel_with_requestor(uint64_t a1, uint64_t a2)
{
  if (!a2 || *(a1 + 40) == a2)
  {
    return mmcs_request_cancel(a1);
  }

  return a1;
}

uint64_t mmcs_request_setup_proxy_locator_for_containers(uint64_t a1, CFArrayRef theArray)
{
  if (!*(a1 + 72))
  {
    return 0;
  }

  v5 = (a1 + 192);
  v4 = *(a1 + 192);
  if (v4)
  {
    mmcs_proxy_locator_invalidate(v4);
    if (*v5)
    {
      C3BaseRelease(*v5);
    }

    *v5 = 0;
  }

  return mmcs_proxy_locator_create(v5, theArray, a1);
}

void mmcs_request_is_using_itemid(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      mmcs_put_section_req_is_using_itemid(result, a2);
    }

    else if (v2 == 5)
    {
      mmcs_register_request_is_using_itemid(result, a2);
    }
  }

  else if (v2 == 1)
  {
    mmcs_put_req_is_using_itemid(result, a2);
  }

  else if (v2 == 2)
  {
    mmcs_get_req_is_using_itemid(result, a2);
  }
}

void mmcs_request_insert_headers(uint64_t a1, void *context)
{
  v2 = *(*(a1 + 56) + 64);
  if (v2)
  {
    CFDictionaryApplyFunction(v2, _insert_header, context);
  }
}

void _insert_header(const __CFString *a1, const __CFString *a2, __CFHTTPMessage *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    goto LABEL_14;
  }

  v7 = CFStringGetTypeID();
  if (v7 != CFGetTypeID(a2))
  {
    goto LABEL_14;
  }

  if (!_case_insensitive_equals(a1, @"x-apple-mmcs-proto-version") && !_case_insensitive_equals(a1, @"x-apple-caller-request-uuid") && !_case_insensitive_equals(a1, @"x-mme-client-info") && !_case_insensitive_equals(a1, @"x-apple-mme-dsid") && !_case_insensitive_equals(a1, @"X-Apple-MMCS"))
  {
    if (_case_insensitive_equals(a1, @"X-"))
    {
      CFHTTPMessageSetHeaderFieldValue(a3, a1, a2);
      if (gMMCS_DebugLevel <= 3)
      {
        goto LABEL_14;
      }

      v14 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_14;
      }

      v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ inserting header %@: %@", a3, a1, a2);
      v15 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_12;
      }

      *buf = 138543362;
      v17 = v9;
      v11 = v15;
      v12 = OS_LOG_TYPE_DEBUG;
      goto LABEL_11;
    }

    _case_insensitive_equals(a1, @"x-apple-persistent-identifier");
  }

  v8 = mmcs_logging_logger_default();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_14;
  }

  v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ ignoring insertion of header %@: %@", a3, a1, a2);
  v10 = mmcs_logging_logger_default();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_12;
  }

  *buf = 138543362;
  v17 = v9;
  v11 = v10;
  v12 = OS_LOG_TYPE_ERROR;
LABEL_11:
  _os_log_impl(&dword_2577D8000, v11, v12, "%{public}@", buf, 0xCu);
LABEL_12:
  if (v9)
  {
    CFRelease(v9);
  }

LABEL_14:
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t mmcs_request_validate_preauthorization_with_key(const __CFData *a1, const __CFData *a2, const __CFData *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v16 = 256;
    error = 0;
    v6 = *MEMORY[0x277CBECE8];
    v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongType, &v16);
    Mutable = CFDictionaryCreateMutable(v6, 2, 0, 0);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CDC028], *MEMORY[0x277CDC040]);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CDBFE0], *MEMORY[0x277CDC000]);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CDC018], v7);
    v9 = SecKeyCreateWithData(a3, Mutable, &error);
    if (error)
    {
      v10 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = error;
        _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_ERROR, "public key can't be imported due to error: %@", buf, 0xCu);
      }
    }

    v11 = SecKeyVerifySignature(v9, *MEMORY[0x277CDC300], a1, a2, &error);
    if (error)
    {
      v12 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = error;
        _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_ERROR, "simulcast metadata failed integrity check due to error: %@", buf, 0xCu);
      }

      if (error)
      {
        CFRelease(error);
      }
    }

    error = 0;
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v9)
    {
      CFRelease(v9);
    }
  }

  else
  {
    v13 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2577D8000, v13, OS_LOG_TYPE_ERROR, "unable to verify integrity of preauthorization object due to missing public key", buf, 2u);
    }

    v11 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mmcs_request_get_request_activity_marker(uint64_t a1)
{
  result = *(a1 + 200);
  if (!result)
  {
    mmcs_request_get_request_activity_marker_cold_1();
  }

  return result;
}

os_activity_t mmcs_request_get_chunking_activity_marker(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (!v1)
  {
    mmcs_request_get_chunking_activity_marker_cold_1();
  }

  result = *(a1 + 208);
  if (!result)
  {
    result = _os_activity_create(&dword_2577D8000, "mmcs-chunking", v1, OS_ACTIVITY_FLAG_DEFAULT);
    *(a1 + 208) = result;
  }

  return result;
}

os_activity_t mmcs_request_get_timing_activity_marker(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (!v1)
  {
    mmcs_request_get_timing_activity_marker_cold_1();
  }

  result = *(a1 + 216);
  if (!result)
  {
    result = _os_activity_create(&dword_2577D8000, "mmcs-timing", v1, OS_ACTIVITY_FLAG_DEFAULT);
    *(a1 + 216) = result;
  }

  return result;
}

void _mmcs_requestCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (_requestCallbacks[5 * v2 + 3])(a1);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    MMCSEngineRelease(v3);
    *(a1 + 32) = 0;
  }

  *(a1 + 40) = 0;
  mmcs_proxy_locator_invalidate(*(a1 + 192));
  v4 = *(a1 + 112);
  if (v4)
  {
    C3BaseRelease(v4);
  }

  *(a1 + 112) = 0;
  v5 = *(a1 + 192);
  if (v5)
  {
    C3BaseRelease(v5);
  }

  *(a1 + 192) = 0;
  v6 = *(a1 + 56);
  if (v6)
  {
    C3BaseRelease(v6);
  }

  *(a1 + 56) = 0;
  v7 = *(a1 + 48);
  if (v7)
  {
    CFRelease(v7);
  }

  *(a1 + 48) = 0;
  v8 = *(a1 + 160);
  if (v8)
  {
    CFRelease(v8);
  }

  *(a1 + 160) = 0;
  v9 = *(a1 + 168);
  if (v9)
  {
    CFRelease(v9);
  }

  *(a1 + 168) = 0;
  v10 = *(a1 + 176);
  if (v10)
  {
    CFRelease(v10);
  }

  *(a1 + 176) = 0;
  v11 = *(a1 + 152);
  if (v11)
  {
    CFRelease(v11);
  }

  *(a1 + 152) = 0;
  v12 = *(a1 + 184);
  if (v12)
  {
    mmcs_metrics_request_release(v12);
    *(a1 + 184) = 0;
  }

  v13 = *(a1 + 264);
  if (v13)
  {
    CFRelease(v13);
  }

  *(a1 + 264) = 0;
  v14 = *(a1 + 256);
  if (v14)
  {
    CFRelease(v14);
  }

  *(a1 + 256) = 0;
  v15 = *(a1 + 88);
  if (v15)
  {
    CFRelease(v15);
  }

  *(a1 + 88) = 0;
  v16 = *(a1 + 200);
  if (v16)
  {
    os_release(v16);
  }

  *(a1 + 200) = 0;
  v17 = *(a1 + 208);
  if (v17)
  {
    os_release(v17);
  }

  *(a1 + 208) = 0;
  v18 = *(a1 + 216);
  if (v18)
  {
    os_release(v18);
  }

  *(a1 + 216) = 0;
  v19 = *(a1 + 224);
  if (v19)
  {
    os_release(v19);
  }

  *(a1 + 224) = 0;
  v20 = *(a1 + 232);
  if (v20)
  {
    os_release(v20);
  }

  *(a1 + 232) = 0;
}

BOOL _case_insensitive_equals(const __CFString *a1, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  if (CFStringGetLength(a1) < Length)
  {
    return 0;
  }

  v6.location = 0;
  v6.length = Length;
  return CFStringCompareWithOptions(a1, theString, v6, 1uLL) == kCFCompareEqualTo;
}

void mmcs_user_info_add_description(__CFDictionary *a1, void *value)
{
  if (value)
  {
    CFDictionarySetValue(a1, *MEMORY[0x277CBEE30], value);
    v4 = *MEMORY[0x277CBEE58];

    CFDictionarySetValue(a1, v4, value);
  }
}

void mmcs_user_info_add_description_with_format_and_arguments(__CFDictionary *a1, CFStringRef format, va_list arguments)
{
  v4 = CFStringCreateWithFormatAndArguments(*MEMORY[0x277CBECE8], 0, format, arguments);
  if (v4)
  {
    v5 = v4;
    CFDictionarySetValue(a1, *MEMORY[0x277CBEE30], v4);
    CFDictionarySetValue(a1, *MEMORY[0x277CBEE58], v5);

    CFRelease(v5);
  }
}

void mmcs_user_info_add_underlying_error(__CFDictionary *a1, void *value)
{
  if (value)
  {
    CFDictionarySetValue(a1, *MEMORY[0x277CBEE78], value);
  }
}

void mmcs_user_info_add_itemID(__CFDictionary *a1, uint64_t a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
  if (v3)
  {
    v4 = v3;
    CFDictionarySetValue(a1, @"kMMCSErrorItemIDKey", v3);
    CFRelease(v4);
  }
}

void mmcs_user_info_add_fileSignature(__CFDictionary *a1, const UInt8 *a2)
{
  if (mmcs_file_signature_is_valid(a2))
  {
    v4 = *MEMORY[0x277CBECE8];
    v5 = mmcs_file_signature_size_with_scheme(a2);
    v6 = CFDataCreate(v4, a2, v5);
    if (v6)
    {
      v7 = v6;
      CFDictionarySetValue(a1, @"kMMCSErrorFileSignatureKey", v6);

      CFRelease(v7);
    }
  }
}

void mmcs_user_info_add_chunkSignature(__CFDictionary *a1, const UInt8 *a2)
{
  if (mmcs_chunk_signature_is_valid(a2))
  {
    v4 = *MEMORY[0x277CBECE8];
    v5 = mmcs_chunk_signature_size_with_scheme(a2);
    v6 = CFDataCreate(v4, a2, v5);
    if (v6)
    {
      v7 = v6;
      CFDictionarySetValue(a1, @"kMMCSErrorChunkSignatureKey", v6);

      CFRelease(v7);
    }
  }
}

void mmcs_user_info_add_http_message_request(__CFDictionary *a1, __CFHTTPMessage *a2)
{
  if (a2)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v5 = Mutable;
      v6 = CFHTTPMessageCopyRequestURL(a2);
      if (v6)
      {
        v7 = v6;
        CFDictionarySetValue(v5, @"kMMCSErrorHTTPMessageURLKey", v6);
        CFRelease(v7);
      }

      v8 = CFHTTPMessageCopyAllHeaderFields(a2);
      if (v8)
      {
        v9 = v8;
        CFDictionarySetValue(v5, @"kMMCSErrorHTTPMessageHeaderFieldsKey", v8);
        CFRelease(v9);
      }

      CFDictionarySetValue(a1, @"kMMCSErrorHTTPMessageRequestKey", v5);

      CFRelease(v5);
    }
  }
}

void mmcs_user_info_add_http_message_response(__CFDictionary *a1, __CFHTTPMessage *a2)
{
  if (a2)
  {
    v4 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v6 = Mutable;
      valuePtr = CFHTTPMessageGetResponseStatusCode(a2);
      v7 = CFNumberCreate(v4, kCFNumberCFIndexType, &valuePtr);
      CFDictionarySetValue(a1, @"kMMCSErrorHTTPStatusKey", v7);
      if (v7)
      {
        CFRelease(v7);
      }

      v8 = CFHTTPMessageCopyAllHeaderFields(a2);
      if (v8)
      {
        v9 = v8;
        CFDictionarySetValue(v6, @"kMMCSErrorHTTPMessageHeaderFieldsKey", v8);
        CFRelease(v9);
      }

      CFDictionarySetValue(a1, @"kMMCSErrorHTTPMessageResponseKey", v6);
      CFRelease(v6);
    }
  }
}

uint64_t mmcs_put_container_create(void *a1, uint64_t *a2)
{
  v9 = 0;
  result = mmcs_container_create(&v9, 1, 64);
  if (result)
  {
    request_activity_marker = mmcs_request_get_request_activity_marker(*a2);
    v6 = _os_activity_create(&dword_2577D8000, "mmcs-put-container", request_activity_marker, OS_ACTIVITY_FLAG_DEFAULT);
    v7 = v9;
    v9[10] = v6;
    v8 = v7[11];
    if (v8)
    {
      *v8 = a2;
      *(v8 + 8) = 0;
      *(v8 + 16) = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &itemItemIDEqualitySetCallbacks);
      *(v8 + 24) = 0;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      C3BaseRetain(**v8);
      *a1 = v9;
      return 1;
    }

    else
    {
      C3BaseRelease(v7);
      return 0;
    }
  }

  return result;
}

uint64_t mmcs_put_container_get_request(uint64_t a1)
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

uint64_t mmcs_put_container_http_msg_add_token_header(uint64_t a1, __CFHTTPMessage *a2)
{
  result = 0;
  v19 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a2)
    {
      v5 = *(a1 + 88);
      result = *(v5 + 8);
      if (result)
      {
        if (*result)
        {
          if (!*(result + 16))
          {
            v10 = mmcs_logging_logger_default();
            if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_14;
            }

            v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Missing token for container %s", **(v5 + 8));
            v12 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v18 = v11;
              _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
            }

            if (!v11)
            {
              goto LABEL_14;
            }

            v9 = v11;
LABEL_13:
            CFRelease(v9);
LABEL_14:
            result = 1;
            goto LABEL_21;
          }

          v6 = mmcs_request_index(result);
          v7 = mmcs_item_copy_token_header_value(**(v5 + 8), 0, *(*(v5 + 8) + 16), v6, 1);
          if (v7)
          {
            v8 = v7;
            CFHTTPMessageSetHeaderFieldValue(a2, @"x-apple-mmcs-auth", v7);
            v9 = v8;
            goto LABEL_13;
          }

          v13 = mmcs_logging_logger_default();
          result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            goto LABEL_21;
          }

          v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to create token header for put container %s", **(v5 + 8));
          v15 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v18 = v14;
            _os_log_impl(&dword_2577D8000, v15, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v14)
          {
            CFRelease(v14);
          }
        }

        result = 0;
      }
    }
  }

LABEL_21:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void mmcs_put_container_invalidate(uint64_t a1)
{
  v2 = *(a1 + 88);
  v3 = *v2;
  if (*v2)
  {
    if (*v3)
    {
      C3BaseRelease(*v3);
      v2 = *(a1 + 88);
    }

    *v2 = 0;
  }

  mmcs_container_invalidate_transactions(a1);
}

void mmcs_put_container_set_storage_container(uint64_t a1, void **a2)
{
  v2 = *(a1 + 88);
  v3 = *(v2 + 8);
  if (v3 != a2)
  {
    if (v3)
    {
      mmcs_storage_container_dealloc(v3);
    }

    *(v2 + 8) = a2;
  }
}

void mmcs_put_container_set_storage_container_stream(uint64_t a1, void *a2)
{
  v2 = *(a1 + 88);
  v3 = *(v2 + 56);
  if (v3 != a2)
  {
    if (v3)
    {
      mmcs_storage_container_stream_dealloc(v3);
    }

    *(v2 + 56) = a2;
  }
}

void mmcs_put_container_finalize(uint64_t a1)
{
  v2 = *(a1 + 88);
  *v2 = 0;
  v3 = v2[1];
  if (v3)
  {
    mmcs_storage_container_dealloc(v3);
    v2[1] = 0;
  }

  v4 = v2[7];
  if (v4)
  {
    mmcs_storage_container_stream_dealloc(v4);
    v2[7] = 0;
  }

  mmcs_container_invalidate_transactions(a1);
  v5 = v2[5];
  if (v5)
  {
    CFRelease(v5);
  }

  v2[5] = 0;
  v6 = v2[2];
  if (v6)
  {
    CFRelease(v6);
  }

  v2[2] = 0;
  v7 = v2[3];
  if (v7)
  {
    CFRelease(v7);
  }

  v2[3] = 0;
}

void mmcs_put_container_cancel_transaction(void *a1, unsigned int *a2, void *cf)
{
  if (a2[12] == 2)
  {
    v6 = a1[11];
    if (*v6)
    {
      v7 = **v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = mmcs_chunk_instance_offset(v7);
    mmcs_transaction_cancel_enqueued(a2, *(v8 + 48), cf);
    if (!mmcs_put_state_has_outstanding_async_transactions(*v6))
    {
      v9 = *a1[11];
      if (v9)
      {
        v10 = *v9;
      }

      else
      {
        v10 = 0;
      }

      mmcs_put_request_context_cleanup(v10, cf);
    }
  }

  else
  {
    mmcs_container_set_error(a1, cf);

    mmcs_transaction_cancel_not_enqueued(a2, cf);
  }
}

void mmcs_put_container_should_stop_with_error(void *a1, void *a2)
{
  mmcs_container_set_error(a1, a2);
  mmcs_transaction_should_stop_with_error(a1[2], a2);
  v4 = a1[3];
  if (v4)
  {

    mmcs_transaction_should_stop_with_error(v4, a2);
  }
}

uint64_t mmcs_put_container_requirements@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = mmcs_http_request_options_network_behavior_type(*(*(a2 + 24) + 24));
  v7 = mmcs_request_type_for_behavior_and_activity(v6, 0);
  *a3 = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[1] = 0u;
  mmcs_http_request_make_request_requirements(*(a2 + 24), a3);
  result = mmcs_request_index(*(*(a1 + 88) + 8));
  *(a3 + v7 + 2) = result;
  return result;
}

void mmcs_put_container_vendor_put_done(uint64_t a1)
{
  v2 = *(a1 + 88);
  *(v2 + 32) = 1;
  v3 = *(a1 + 88);
  v4 = *(v3 + 56);
  if (v4)
  {
    mmcs_storage_container_stream_dealloc(v4);
    *(v3 + 56) = 0;
  }

  v5 = *(v2 + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  *(v2 + 40) = 0;
  mmcs_storage_container_cleanup_instances(*(v2 + 8));
  *(a1 + 68) = 4;
}

void mmcs_put_container_failed_to_schedule_transaction(uint64_t a1, uint64_t a2)
{
  if (mmcs_transaction_is_proxy(a2))
  {

    mmcs_put_container_vendor_put_retry(a1, a2);
  }

  else
  {
    mmcs_put_container_vendor_put_done(a1);
    v4 = **(a1 + 88);

    schedulePutComplete(v4);
  }
}

uint64_t mmcs_put_container_vendor_put_retry(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (mmcs_transaction_is_proxy(a2))
  {
    v4 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"caching server failed; retrying with vendor");
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
  }

  v7 = *(a1 + 88);
  v8 = *(a1 + 16);
  mmcs_container_remember_error(a1, a2);
  mmcs_container_reset_error_for_retry(a1);
  mmcs_put_state_container_will_be_retried(*v7, a1);
  v9 = *(a2 + 16);
  if (v9)
  {
    mmcs_http_context_invalidate(v9);
    v10 = *(a2 + 16);
    if (v10)
    {
      C3BaseRelease(v10);
    }

    *(a2 + 16) = 0;
  }

  *(a1 + 68) = 3;
  *(v8 + 48) = 2;
  *(v8 + 56) = CFAbsoluteTimeGetCurrent();
  v11 = mmcs_http_request_options_network_behavior_type(*(*(v8 + 24) + 24));
  v12 = mmcs_request_type_for_behavior_and_activity(v11, 0);
  mmcs_container_requirements(a1);
  *&buf = 0;
  *(&buf + 1) = v8;
  v17 = v12;
  priority = mmcs_request_get_priority(**v7);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v19 = 0u;
  v20 = 0u;
  v25 = mmcs_container_schedule_request_callback;
  v26 = mmcs_container_cancel_request_callback;
  v27 = C3BaseRetain;
  v28 = C3BaseRelease;
  v13 = mmcs_chunk_instance_offset(**v7);
  mmcs_request_queue_enqueue_request(*(v13 + 48), &buf, *(v8 + 56));
  v14 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t mmcs_put_container_schedule(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = _os_activity_create(&dword_2577D8000, "mmcs-put-schedule", *(a1 + 80), OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);
  v5 = *(a1 + 88);
  v6 = v5[1];
  v7 = 0;
  if (mmcs_container_check_expired(a1, a2, "put", *v6))
  {
    goto LABEL_43;
  }

  v8 = mmcs_chunk_instance_offset(**v5);
  v9 = **v5;
  copy = mmcs_http_request_options_create_copy(*(*(a2 + 24) + 24));
  v11 = copy;
  if (*(*(a2 + 24) + 56) && !(*v5)[7])
  {
    *(copy + 144) = 1;
  }

  if (*(a2 + 56) == 0.0)
  {
    v12 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"enqueueTime should be defined for put request");
      v14 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v13;
        _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }
  }

  v42 = 0;
  v15 = *(*(a2 + 24) + 16);
  v41[0] = @"putContainer";
  v41[1] = v15;
  v41[2] = v11;
  v41[3] = mmcs_request_get_network_timeout_period(v9);
  if (mmcs_request_is_background(v9))
  {
    v16 = *(*(a2 + 24) + 40);
  }

  else
  {
    v16 = 0;
  }

  v41[4] = v16;
  v41[5] = mmcs_request_index(v6);
  v41[6] = -1;
  v41[7] = mmcs_put_container_write_data_callback;
  v41[8] = mmcs_put_container_will_reset_request_body_stream;
  v41[9] = mmcs_put_container_will_retry_after_background_error;
  v41[11] = 0;
  v41[12] = 0;
  v41[10] = handle_response_uploadChunks;
  v41[13] = mmcs_container_xmitcallback;
  v41[14] = a2;
  v41[15] = mmcs_engine_get_sparse_block_size();
  v41[16] = mmcs_engine_owner(v8);
  LOBYTE(v42) = 1;
  v17 = *(a2 + 16);
  v43 = *(a2 + 56);
  v44 = v4;
  if (v17)
  {
    mmcs_put_container_schedule_cold_1();
  }

  *cf = 0u;
  v40 = 0u;
  mmcs_read_stream_pool_parameters_make_pool(*(v8 + 40), cf);
  http_class = mmcs_request_get_http_class(v9);
  v19 = mmcs_http_context_create((a2 + 16), http_class, v41);
  if (v19)
  {
    mmcs_http_context_set_to_mobileme(*(a2 + 16), 0);
    mmcs_http_context_set_is_container_upload(*(a2 + 16), 1);
    mmcs_http_context_extract_vendor_name_from_message_and_create_pool_parameters(*(a2 + 16), *(v8 + 40), buf);
    *cf = *buf;
    v40 = v47;
    v20 = *(*(a2 + 24) + 24);
    v21 = *(*(a2 + 64) + 88);
    v22 = *(v21 + 8);
    if (mmcs_get_req_context_get_current_request_metrics(**v21))
    {
      v23 = *v22 ? CFStringCreateWithCString(*MEMORY[0x277CBECE8], *v22, 0x8000100u) : 0;
      mmcs_transaction_make_req_context_metrics(a2, **v21, v20, @"putContainer", v23);
      if (v23)
      {
        CFRelease(v23);
      }
    }

    v24 = mmcs_http_context_send(*(a2 + 16), cf, *(v8 + 56)) == 0;
  }

  else
  {
    v24 = 1;
  }

  if (cf[1])
  {
    CFRelease(cf[1]);
  }

  if (v19)
  {
    if (!v24 || (v25 = mmcs_logging_logger_default(), !os_log_type_enabled(v25, OS_LOG_TYPE_ERROR)))
    {
      v7 = 1;
      goto LABEL_41;
    }

    v26 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"unable to send http msg");
    v27 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v26;
      _os_log_impl(&dword_2577D8000, v27, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    v28 = 1;
    v7 = 1;
    if (!v26)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v29 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v35 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"unable to create put transaction request");
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

    v26 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"unable to create put container request", v30, v31, v32, v33, v34, cf[0]);
    mmcs_container_set_error(a1, v26);
    v28 = 0;
    v7 = 0;
    if (!v26)
    {
      goto LABEL_41;
    }
  }

  CFRelease(v26);
  v7 = v28;
LABEL_41:
  if (v11)
  {
    CFRelease(v11);
  }

LABEL_43:
  if (v4)
  {
    os_release(v4);
  }

  os_activity_scope_leave(&state);
  v37 = *MEMORY[0x277D85DE8];
  return v7;
}

void mmcs_put_container_write_data_callback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 64);
  if (!v3)
  {
    v10 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"NULL putContainer");
    v12 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 138543362;
    v25 = v11;
    goto LABEL_24;
  }

  if (!a1)
  {
    v13 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"NULL hc");
    v12 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 138543362;
    v25 = v11;
    goto LABEL_24;
  }

  if (mmcs_http_context_is_complete(a1))
  {
    v7 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"transaction already completed for (%p); http stream event %d", a1, a3);
      v9 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v25 = v8;
        _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }

    mmcs_http_context_invalidate(a1);
    goto LABEL_28;
  }

  if (mmcs_http_context_is_cancelled(a1))
  {
    v14 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"transaction for (%p) cancelled; http stream event %d", a1, a3);
      v12 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      *buf = 138543362;
      v25 = v11;
      goto LABEL_24;
    }

LABEL_28:
    v18 = *MEMORY[0x277D85DE8];
    return;
  }

  if (*(a2 + 16) != a1)
  {
    v15 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Callback for unknown http context %p; Expected %p", a1, *(a2 + 16));
      v12 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      *buf = 138543362;
      v25 = v11;
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  if (a3 > 2)
  {
    if (a3 != 3)
    {
      if (a3 == 4)
      {
        goto LABEL_28;
      }

LABEL_37:
      v20 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"write stream got unknown type %d", a3);
      v21 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v25 = v11;
        v16 = v21;
        v17 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_25;
      }

LABEL_26:
      if (v11)
      {
        CFRelease(v11);
      }

      goto LABEL_28;
    }

    v23 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"http context (%p) for put container (%p) had an error", a1, v3);
    v12 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 138543362;
    v25 = v11;
LABEL_24:
    v16 = v12;
    v17 = OS_LOG_TYPE_ERROR;
LABEL_25:
    _os_log_impl(&dword_2577D8000, v16, v17, "%{public}@", buf, 0xCu);
    goto LABEL_26;
  }

  if (a3 != 1)
  {
    if (a3 == 2)
    {
      v19 = *MEMORY[0x277D85DE8];

      mmcs_put_container_write_container_data(v3, a1);
      return;
    }

    goto LABEL_37;
  }

  v22 = *MEMORY[0x277D85DE8];

  mmcs_put_container_will_begin_streaming(v3);
}

void mmcs_put_container_will_retry_after_background_error(uint64_t a1, uint64_t a2, const void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 64);
  v6 = v5[11];
  v7 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"putContainer %p remembering error %@ for container '%s'", v5, a3, **(v6 + 8));
    v9 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  mmcs_container_set_error(v5, a3);
  mmcs_container_remember_error(v5, a2);
  mmcs_container_reset_error_for_retry(v5);
  v10 = *MEMORY[0x277D85DE8];
}

void mmcs_put_container_put_complete_done(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 8);
  if (v1)
  {
    mmcs_storage_container_cleanup_instances(v1);
  }
}

BOOL mmcs_put_container_needs_put_complete(uint64_t a1, int a2)
{
  v2 = *(a1 + 88);
  if (!v2 || *(v2 + 33))
  {
    return 0;
  }

  if (a2)
  {
    return 1;
  }

  return *(v2 + 32) != 0;
}

CFIndex *mmcs_put_container_create_method_completion_info(void *a1, uint64_t a2, int a3)
{
  v3 = 0;
  v41 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    v6 = a1[11];
    if (v6)
    {
      v8 = a1[5];
      v9 = *(*(a1[2] + 24) + 16);
      v10 = *(a2 + 16);
      v11 = *(v6 + 8);
      if (v11)
      {
        v12 = *(v11 + 16);
      }

      else
      {
        v12 = 0;
      }

      reporting_level = mmcs_request_get_reporting_level(**v6);
      MethodCompletionInfo = Create_MethodCompletionInfo(v8, v9, v10, v12, reporting_level, 1, a3);
      v3 = MethodCompletionInfo;
      if (MethodCompletionInfo)
      {
        v15 = MEMORY[0x277CBECE8];
        if ((*(MethodCompletionInfo + 8) - 200) <= 0x63)
        {
          v16 = *(v6 + 8);
          if (!v16 || !*(v16 + 8))
          {
            v17 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = CFStringCreateWithFormat(*v15, 0, @"the put container received a successful http response status, but there is no md5 computed on the client");
              v19 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v40 = v18;
                _os_log_impl(&dword_2577D8000, v19, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
              }

              if (v18)
              {
                CFRelease(v18);
              }
            }
          }
        }

        v20 = *(v6 + 8);
        if (v20)
        {
          v21 = *(v20 + 8);
          if (v21)
          {
            *(v3 + 24) = 1;
            ProtobufCBinaryData_SetData(v3 + 13, v21);
          }
        }

        v22 = *(a2 + 16);
        v23 = mmcs_request_get_reporting_level(**v6);
        vendor_http_stats = mmcs_report_create_vendor_http_stats(v22, 1, v23);
        v25 = a1[11];
        v26 = *v15;
        Mutable = CFDictionaryCreateMutable(*v15, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v28 = mmcs_request_get_reporting_level(**v25);
        mmcs_put_req_copy_client_stats(**v25, Mutable, v28);
        if (Mutable && mmcs_report_property_for_config_key(@"client.kpis", @"cachingServer.bytes", 1, v28))
        {
          if (mmcs_transaction_is_proxy(a2))
          {
            CFDictionaryAddValue(Mutable, @"cachingServer.used", @"true");
            bytes_from_caching_server = mmcs_transaction_get_bytes_from_caching_server(a2);
            if (bytes_from_caching_server)
            {
              v30 = bytes_from_caching_server;
              v31 = CFStringCreateWithFormat(v26, 0, @"%llu", bytes_from_caching_server);
              CFDictionaryAddValue(Mutable, @"cachingServer.bytes", v31);
              if (v31)
              {
                CFRelease(v31);
              }

              if (gMMCS_DebugLevel >= 5)
              {
                v32 = mmcs_logging_logger_default();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                {
                  v33 = CFStringCreateWithFormat(v26, 0, @"proxy put got %llu from caching server", v30);
                  v34 = mmcs_logging_logger_default();
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543362;
                    v40 = v33;
                    _os_log_impl(&dword_2577D8000, v34, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
                  }

                  if (v33)
                  {
                    CFRelease(v33);
                  }
                }
              }
            }
          }

          else
          {
            CFDictionaryAddValue(Mutable, @"cachingServer.used", @"false");
          }
        }

        Count = CFDictionaryGetCount(Mutable);
        if (Count)
        {
          v36 = Mutable;
        }

        else
        {
          v36 = 0;
        }

        if (Mutable && !Count)
        {
          CFRelease(Mutable);
          v36 = 0;
        }

        MethodCompletionInfo_SetReportingProperties(v3, vendor_http_stats, v36);
        if (vendor_http_stats)
        {
          CFRelease(vendor_http_stats);
        }

        if (v36)
        {
          CFRelease(v36);
        }
      }
    }

    else
    {
      v3 = 0;
    }
  }

  v37 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t mmcs_put_container_add_method_completion_info(void *a1, uint64_t a2)
{
  method_completion_info = mmcs_put_container_create_method_completion_info(a1, a2, 1);

  return mmcs_transaction_add_method_completion_info(a2, method_completion_info);
}

void mmcs_put_container_chunk_reference_was_read(uint64_t **a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (mmcs_put_state_put_container_did_reserve_chunk_reference(*a1[11], a1, a3))
  {

    mmcs_chunk_reference_was_read(a3, a2, a4);
  }
}

int64x2_t mmcs_put_container_append_description(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 40);
  if (v3 >= 10 && *(v2[2] + 48) == 2 && ((v4 = v2[3]) == 0 || *(v4 + 48) == 2))
  {
    *(a1 + 40) = v3 + 1;
  }

  else if (mmcs_container_request_enqueued_or_inflight(*a1))
  {
    v6 = *(a1 + 16);
    v7 = *a1;
    v8 = v6;
    v9 = *(a1 + 32);
    *(&v8 + 1) = *(&v6 + 1) + 1;
    mmcs_op_requestor_context_indent(a1);
    CFStringAppendFormat(*(a1 + 16), 0, @"<container %p> %s\n", v2, **(v2[11] + 8), v7, v8);
    *&v7 = v2[2];
    mmcs_transaction_append_description(&v7);
    if (v2[3])
    {
      *&v7 = v2[3];
      mmcs_transaction_append_description(&v7);
    }

    result = vaddq_s64(*(a1 + 32), v9);
    *(a1 + 32) = result;
  }

  return result;
}

CFStringRef mmcs_put_container_copy_simple_description(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 88)) != 0 && (v2 = *(v1 + 8)) != 0 && (v3 = *v2) != 0)
  {
    return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"PutContainer '%s'", v3);
  }

  else
  {
    return @"PutContainerUnKnOwN";
  }
}

uint64_t mmcs_put_container_will_begin_streaming(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = v1[5];
  if (v2)
  {
    CFDataSetLength(v2, 0);
  }

  v1[6] = 0;
  v3 = v1[7];

  return mmcs_storage_container_stream_reset(v3);
}

void mmcs_put_container_write_container_data(void *a1, uint64_t a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a1[11];
  cf = 0;
  v50 = 0;
  if (*(v4 + 40) || (v5 = *MEMORY[0x277CBECE8], Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0x8000), (*(v4 + 40) = Mutable) != 0))
  {
    if (mmcs_http_request_body_can_accept_data(a2))
    {
      v5 = *MEMORY[0x277CBECE8];
      while (1)
      {
        Length = CFDataGetLength(*(v4 + 40));
        v8 = Length;
        if (Length > 0x8000)
        {
          v23 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v49 = v8;
            v29 = CFStringCreateWithFormat(v5, 0, @"write stream data buffer larger (%d) than fixed buffer size (%d) ");
            v30 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v53 = v29;
              _os_log_impl(&dword_2577D8000, v30, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
            }

            if (v29)
            {
              CFRelease(v29);
            }
          }

          v31 = @"data buffer larger than fixed buffer size";
          goto LABEL_37;
        }

        if (Length != 0x8000 && !mmcs_storage_container_stream_read(*(v4 + 56), *(v4 + 40), 0x8000 - Length, &cf, &v50))
        {
          if (!cf)
          {
            v40 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              v41 = CFStringCreateWithFormat(v5, 0, @"mmcs_storage_container_stream_read failed with NULL error ");
              v42 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                v53 = v41;
                _os_log_impl(&dword_2577D8000, v42, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
              }

              if (v41)
              {
                CFRelease(v41);
              }
            }

            v31 = @"mmcs_storage_container_stream_read failed with NULL error";
LABEL_37:
            v32 = 1;
LABEL_49:
            error = mmcs_cferror_create_with_format(@"com.apple.mmcs", v32, v31, v24, v25, v26, v27, v28, v49);
            goto LABEL_50;
          }

          goto LABEL_51;
        }

        v9 = CFDataGetLength(*(v4 + 40)) - *(v4 + 48);
        if (v9 < 1)
        {
          break;
        }

        MutableBytePtr = CFDataGetMutableBytePtr(*(v4 + 40));
        v11 = mmcs_http_write_request_body(a2, &MutableBytePtr[*(v4 + 48)], v9);
        if (gMMCS_DebugLevel >= 5)
        {
          v12 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v49 = a2;
            v13 = CFStringCreateWithFormat(v5, 0, @"context (%p) wrote %d bytes");
            v14 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v53 = v13;
              _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
            }

            if (v13)
            {
              CFRelease(v13);
            }
          }
        }

        if ((v11 & 0x8000000000000000) != 0)
        {
          v34 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            v35 = CFStringCreateWithFormat(v5, 0, @"mmcs_http_write_request_body() failed ");
            v36 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v53 = v35;
              _os_log_impl(&dword_2577D8000, v36, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
            }

            if (v35)
            {
              CFRelease(v35);
            }
          }

          v31 = @"mmcs_http_write_request_body failed";
          v32 = 38;
          goto LABEL_49;
        }

        v15 = *(v4 + 40);
        v16 = *(v4 + 48) + v11;
        *(v4 + 48) = v16;
        if (v16 >= CFDataGetLength(v15))
        {
          CFDataSetLength(*(v4 + 40), 0);
          *(v4 + 48) = 0;
        }

        if (v11 != v9)
        {
          goto LABEL_77;
        }

        if (!mmcs_http_request_body_can_accept_data(a2))
        {
          goto LABEL_22;
        }
      }

      if (!v50)
      {
        v43 = mmcs_logging_logger_default();
        if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_68;
        }

        v18 = CFStringCreateWithFormat(v5, 0, @"attempt to write but no data available");
        v44 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v53 = v18;
          v20 = v44;
          v21 = OS_LOG_TYPE_ERROR;
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      if (gMMCS_DebugLevel < 5)
      {
        goto LABEL_68;
      }

      v33 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_68;
      }

      v18 = CFStringCreateWithFormat(v5, 0, @"%p there is nothing left in the buffer and the container is empty", a2);
      v19 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_28;
      }

      *buf = 138543362;
      v53 = v18;
    }

    else
    {
      v9 = 0;
LABEL_22:
      if (gMMCS_DebugLevel < 5)
      {
        goto LABEL_68;
      }

      v17 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_68;
      }

      v18 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"HTTP request body says it is full");
      v19 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
LABEL_28:
        if (v18)
        {
          CFRelease(v18);
        }

LABEL_68:
        if (v9 <= 0 && v50)
        {
          if (gMMCS_DebugLevel >= 4)
          {
            v45 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
            {
              v46 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"closing http request body for context (%p): all done", a2);
              v47 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                v53 = v46;
                _os_log_impl(&dword_2577D8000, v47, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
              }

              if (v46)
              {
                CFRelease(v46);
              }
            }
          }

          mmcs_http_set_request_body_done(a2);
        }

        goto LABEL_77;
      }

      *buf = 138543362;
      v53 = v18;
    }

    v20 = v19;
    v21 = OS_LOG_TYPE_DEBUG;
LABEL_27:
    _os_log_impl(&dword_2577D8000, v20, v21, "%{public}@", buf, 0xCu);
    goto LABEL_28;
  }

  error = mmcs_cferror_create_error(@"com.apple.mmcs", 37, @"putContainer->chunkData malloc");
LABEL_50:
  cf = error;
LABEL_51:
  if (gMMCS_DebugLevel >= 4)
  {
    v37 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = CFStringCreateWithFormat(v5, 0, @"closing http request body for context (%p) had an error %@.", a2, cf);
      v39 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v53 = v38;
        _os_log_impl(&dword_2577D8000, v39, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v38)
      {
        CFRelease(v38);
      }
    }
  }

  mmcs_put_container_should_stop_with_error(a1, cf);
LABEL_77:
  if (cf)
  {
    CFRelease(cf);
  }

  v48 = *MEMORY[0x277D85DE8];
}

void mmcs_put_req_copy_client_stats(uint64_t a1, __CFDictionary *a2, unsigned int a3)
{
  v6 = mmcs_report_property_for_config_key(@"client.kpis", @"chunking.time.millis", 1, a3);
  v7 = mmcs_report_property_for_config_key(@"client.kpis", @"authorizePut.millis", 1, a3);
  if (a2 && v6 | v7)
  {
    v8 = v7;
    if (a1 && v6)
    {
      v9 = *(a1 + 304);
      if (*(v9 + 144))
      {
        v10 = 0;
        v11 = 0.0;
        v12 = 152;
        do
        {
          v11 = v11 + mmcs_item_chunking_elapsed_seconds(v9 + v12);
          ++v10;
          v9 = *(a1 + 304);
          v12 += 416;
        }

        while (v10 < *(v9 + 144));
      }

      else
      {
        v11 = 0.0;
      }

      MillisStringFromAbsoluteTime = createMillisStringFromAbsoluteTime(v11);
      if (MillisStringFromAbsoluteTime)
      {
        v14 = MillisStringFromAbsoluteTime;
        CFDictionaryAddValue(a2, @"chunking.time.millis", MillisStringFromAbsoluteTime);
        CFRelease(v14);
      }
    }

    else if (!a1)
    {
      return;
    }

    v15 = *(*(a1 + 304) + 96);
    if (v15)
    {
      v16 = v8 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      v17 = mmcs_http_context_elapsed_seconds(v15);
      v18 = createMillisStringFromAbsoluteTime(v17);
      if (v18)
      {
        v19 = v18;
        CFDictionaryAddValue(a2, @"authorizePut.millis", v18);

        CFRelease(v19);
      }
    }
  }
}

uint64_t mmcs_put_req_context_create(void *a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, const void *a5, const char *a6, CFTypeRef a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, CFErrorRef *a15)
{
  v22 = a15;
  v23 = a9;
  v158 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  if (a15)
  {
    *a15 = 0;
  }

  v129 = 0;
  v24 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v25 = a4;
    v26 = a8;
    v27 = a7;
    LOBYTE(v120) = a9;
    v28 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs_put_items called for %llu items");
    v29 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v28;
      _os_log_impl(&dword_2577D8000, v29, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    a7 = v27;
    a8 = v26;
    a4 = v25;
    v22 = a15;
    if (v28)
    {
      CFRelease(v28);
    }
  }

  if (!mmcs_put_request_alloc(&v129, a8, a9) || !v129)
  {
    if (!v22)
    {
      goto LABEL_94;
    }

    error_with_underlying_error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 36, @"Cannot allocate put request", v30, v31, v32, v33, v34, v120);
LABEL_27:
    *v22 = error_with_underlying_error;
    goto LABEL_94;
  }

  v128 = 0;
  if (!_mmcs_request_init(v129, a2, a3, a4, a5, a6, a14, &v128))
  {
    if (v129)
    {
      C3BaseRelease(v129);
    }

    if (!v22)
    {
      goto LABEL_94;
    }

    error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 36, v128, @"Cannot initialize underlying mmcs_request", v35, v36, v37, v38, v120);
    goto LABEL_27;
  }

  v39 = *(v129 + 3);
  kdebug_trace();
  v40 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, &itemsBySignatureReferenceDictionaryKeyCallbacks, MEMORY[0x277CBF150]);
  *(*(v129 + 38) + 48) = Mutable;
  v42 = CFSetCreateMutable(v40, 0, &itemSignatureReferenceEqualitySetCallbacks);
  v43 = v129;
  *(*(v129 + 38) + 56) = v42;
  *(v43[38] + 72) = 0;
  v44 = CFSetCreateMutable(v40, 0, &chunkReferenceSignatureEqualitySetCallbacks);
  *(*(v129 + 38) + 64) = v44;
  if (*(a2 + 175))
  {
    if (a8)
    {
      v45 = @"putSection";
    }

    else
    {
      v45 = @"put";
    }

    v46 = mmcs_metrics_request_create(v45);
    *(v129 + 23) = v46;
  }

  v47 = CFSetCreateMutable(v40, 0, 0);
  v48 = v129;
  *(*(v129 + 38) + 128) = v47;
  *(v48[38] + 80) = 0;
  *(v48[38] + 104) = 0;
  *(v48[38] + 112) = 0;
  if (a4)
  {
    v49 = a7;
    Value = CFDictionaryGetValue(a4, @"kMMCSRequestOptionItemOptions");
    if (Value)
    {
      TypeID = CFArrayGetTypeID();
      if (TypeID == CFGetTypeID(Value))
      {
        if (CFArrayGetCount(Value) != a9)
        {
          Count = CFArrayGetCount(Value);
          v57 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"Item options array had %d elements but request had %d elements", v52, v53, v54, v55, v56, Count);
LABEL_83:
          v85 = 0;
          goto LABEL_84;
        }
      }

      else
      {
        Value = 0;
      }
    }

    BOOLean_from_cfdictionary_object_for_key = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestOptionUseFORD", 0);
    v59 = CFDictionaryGetValue(a4, @"kMMCSRequestVendorHintValue");
    if (v59)
    {
      v60 = v59;
      v61 = CFStringGetTypeID();
      if (v61 == CFGetTypeID(v60))
      {
        CFRetain(v60);
        *(*(v129 + 38) + 24) = v60;
      }
    }

    v62 = CFDictionaryGetValue(a4, @"kMMCSRequestContainerSizeHintValue");
    if (v62)
    {
      v63 = v62;
      v64 = CFStringGetTypeID();
      if (v64 == CFGetTypeID(v63))
      {
        CFRetain(v63);
        *(*(v129 + 38) + 32) = v63;
      }
    }

    v65 = CFDictionaryGetValue(a4, @"kMMCSRequestOptionClientLocation");
    if (v65)
    {
      v66 = v65;
      v67 = CFStringGetTypeID();
      if (v67 == CFGetTypeID(v66))
      {
        CFRetain(v66);
        *(*(v129 + 38) + 40) = v66;
      }
    }

    v68 = CFDictionaryGetValue(a4, @"kMMCSRequestOptionReturnOpaqueCloneContext");
    if (v68)
    {
      v69 = v68;
      v70 = CFDataGetTypeID();
      if (v70 == CFGetTypeID(v69))
      {
        CFRetain(v69);
        *(*(v129 + 38) + 120) = v69;
      }
    }

    a7 = v49;
  }

  else
  {
    BOOLean_from_cfdictionary_object_for_key = 0;
    Value = 0;
  }

  callBacks = *byte_2868BF128;
  v71 = CFSetCreateMutable(v40, 0, &callBacks);
  **(v129 + 38) = v71;
  v77 = v129;
  *(*(v129 + 38) + 8) = 0;
  v78 = v77[38];
  if (!v78[6] || !v78[7] || !v78[8] || !v77[21] || !v78[16] || !*v78)
  {
    v57 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"Cannot allocate put request data structures", v72, v73, v74, v75, v76, v120);
    goto LABEL_83;
  }

  v79 = *(a2 + 56);
  *buf = v77;
  *&buf[8] = C3BaseRetain;
  *&v133 = C3BaseRelease;
  *(&v133 + 1) = _mmcs_put_req_context_progress_timer_fired;
  if (!mmcs_perform_target_create_timer(v79, (v78 + 11), buf, v72))
  {
    v85 = 0;
    goto LABEL_99;
  }

  v85 = CFSetCreateMutable(v40, 0, &itemItemIDEqualitySetCallbacks);
  if (!v85)
  {
    v114 = @"Cannot allocate itemSet";
    v115 = 37;
LABEL_103:
    v57 = mmcs_cferror_create_with_format(@"com.apple.mmcs", v115, v114, v80, v81, v82, v83, v84, v120);
LABEL_84:
    v128 = v57;
    if (!v57)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  if (!a9)
  {
LABEL_102:
    v114 = @"No items added to put request";
    v115 = 30;
    goto LABEL_103;
  }

  v86 = 0;
  v124 = 0;
  v87 = a10;
  cf = a7;
  while (1)
  {
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    *buf = 0u;
    v133 = 0u;
    *(&v134 + 1) = *(v87 + 8 * v86);
    if (!CFSetContainsValue(v85, buf))
    {
      break;
    }

    v89 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      v90 = a8;
      v91 = a7;
      v120 = *(v87 + 8 * v86);
      v92 = CFStringCreateWithFormat(v40, 0, @"put request contained duplicate item IDs. Ignoring extra references to itemID %lld");
      v93 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        *v130 = 138543362;
        v131 = v92;
        _os_log_impl(&dword_2577D8000, v93, OS_LOG_TYPE_DEFAULT, "%{public}@", v130, 0xCu);
      }

      a7 = v91;
      if (v92)
      {
        CFRelease(v92);
      }

      a8 = v90;
      v23 = a9;
LABEL_76:
      v87 = a10;
    }

    if (v23 == ++v86)
    {
      if (!v124)
      {
        goto LABEL_102;
      }

      v109 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v129;
        CFDictionaryApplyFunction(*(*(v129 + 38) + 48), mmcs_put_req_context_items_by_signature_description, buf);
      }

      *(*(v129 + 38) + 144) = v124;
      CFRelease(v85);
      result = 0;
      *a1 = v129;
      goto LABEL_95;
    }
  }

  if (a12)
  {
    v94 = *(a12 + 8 * v86);
  }

  else
  {
    v94 = 0;
  }

  v95 = *(v129 + 38) + 416 * v124;
  if (mmcs_item_init(v95 + 152, *(v87 + 8 * v86), *(a11 + 8 * v86), v94, *(a13 + 4 * v86), 1, &v128, v88))
  {
    *(v95 + 256) = BOOLean_from_cfdictionary_object_for_key;
    *(v95 + 248) = 0;
    if (a8)
    {
      if (v23 != 1)
      {
        mmcs_put_req_context_create_cold_1();
      }

      if (cf)
      {
        mmcs_item_set_section_identifier(v95 + 152, cf);
      }

      if (!a4)
      {
        if (v128)
        {
          goto LABEL_99;
        }

        v119 = @"Section Upload Missing Request Options";
        goto LABEL_118;
      }
    }

    if (Value)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Value, v86);
      v122 = CFDictionaryGetTypeID();
      if (v122 != CFGetTypeID(ValueAtIndex))
      {
        if (v22)
        {
          *v22 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"Invalid item option type: Expected dictionary, Got %@", v102, v103, v104, v105, v106, ValueAtIndex);
        }

        goto LABEL_99;
      }

      if (!mmcs_put_req_context_setup_item_with_options(v95 + 152, a8, ValueAtIndex, &v128))
      {
        if (v128)
        {
          goto LABEL_99;
        }

        v119 = @"Failed to set item options";
        goto LABEL_118;
      }
    }

    v107 = CFDictionaryGetValue(*(*(v129 + 38) + 48), (v95 + 152));
    if (!v107)
    {
      v108 = CFArrayCreateMutable(v40, 0, &itemArrayCallbacks);
      if (!v108)
      {
        v119 = @"Cannot allocate itemsWithSameSignature";
        goto LABEL_118;
      }

      v107 = v108;
      CFDictionarySetValue(*(*(v129 + 38) + 48), (v95 + 152), v108);
      CFSetAddValue(*(*(v129 + 38) + 56), (v95 + 152));
      CFRelease(v107);
    }

    CFArrayAppendValue(v107, (v95 + 152));
    ++v124;
    a7 = cf;
    goto LABEL_76;
  }

  v116 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
  {
    v120 = *(v87 + 8 * v86);
    v117 = CFStringCreateWithFormat(v40, 0, @"couldn't init item %lld. error: %@");
    v118 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
    {
      *v130 = 138543362;
      v131 = v117;
      _os_log_impl(&dword_2577D8000, v118, OS_LOG_TYPE_DEFAULT, "%{public}@", v130, 0xCu);
    }

    if (v117)
    {
      CFRelease(v117);
    }
  }

  if (!v128)
  {
    v119 = @"Cannot init item";
LABEL_118:
    v128 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, v119, v96, v97, v98, v99, v100, v120);
  }

LABEL_99:
  v57 = v128;
  if (!v128)
  {
LABEL_87:
    if (v85)
    {
      goto LABEL_88;
    }

    goto LABEL_89;
  }

LABEL_85:
  if (v22)
  {
    *v22 = v57;
    goto LABEL_87;
  }

  CFRelease(v57);
  v128 = 0;
  if (v85)
  {
LABEL_88:
    CFRelease(v85);
  }

LABEL_89:
  v111 = v129;
  if (*(*(v129 + 38) + 88))
  {
    mmcs_perform_timer_invalidate(*(*(v129 + 38) + 88));
    v111 = v129;
    v112 = *(v129 + 38);
    if (*(v112 + 88))
    {
      CFRelease(*(v112 + 88));
      v111 = v129;
      v112 = *(v129 + 38);
    }

    *(v112 + 88) = 0;
  }

  C3BaseRelease(v111);
LABEL_94:
  result = 0xFFFFFFFFLL;
LABEL_95:
  v113 = *MEMORY[0x277D85DE8];
  return result;
}

void _mmcs_put_req_context_progress_timer_fired(uint64_t a1, void *a2)
{
  mmcs_put_request_notify_all_items_with_pending_progress(a2);
  v3 = *(a2[38] + 88);
  if (v3)
  {
    CFAbsoluteTimeGetCurrent();

    mmcs_perform_timer_set_next_fire_date(v3);
  }
}

uint64_t mmcs_put_req_context_setup_item_with_options(uint64_t a1, int a2, CFDictionaryRef theDict, uint64_t a4)
{
  result = mmcs_wrapping_state_init_with_option_dict(a1 + 64, theDict, @"kMMCSWrappingState", a4);
  if (result)
  {
    Value = CFDictionaryGetValue(theDict, @"kMMCSMIMEType");
    if (Value)
    {
      v9 = Value;
      TypeID = CFStringGetTypeID();
      if (TypeID == CFGetTypeID(v9))
      {
        mmcs_item_set_MIME_type(a1, v9);
      }
    }

    if ((**a1 & 0x7F) == 4 || (**a1 & 8) != 0)
    {
      *(a1 + 104) = 1;
      *(a1 + 96) = mmcs_get_cfindex_from_options(@"kMMCSPaddingPolicy", theDict, 2);
      v12 = CFDictionaryGetValue(theDict, @"kMMCSBoundaryKey");
      if (v12)
      {
        v13 = v12;
        v14 = CFDataGetTypeID();
        if (v14 == CFGetTypeID(v13))
        {
          mmcs_item_set_boundary_key(a1, v13);
        }
      }

      if (a2)
      {
        v15 = CFDictionaryGetValue(theDict, @"kMMCSVerificationKey");
        if (v15)
        {
          v16 = v15;
          v17 = CFDataGetTypeID();
          if (v17 == CFGetTypeID(v16))
          {
            mmcs_item_set_file_verification_key(a1, v16);
          }
        }
      }
    }

    *(a1 + 216) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(theDict, @"kMMCSMetadataOnly", *(a1 + 216));
    return 1;
  }

  return result;
}

uint64_t mmcs_put_req_context_has_items_to_put(uint64_t a1)
{
  v1 = *(a1 + 304);
  if (!*(v1 + 144))
  {
    return 0;
  }

  v3 = 0;
  for (i = 152; !mmcs_item_needs_put(v1 + i); i += 416)
  {
    ++v3;
    v1 = *(a1 + 304);
    if (v3 >= *(v1 + 144))
    {
      return 0;
    }
  }

  return 1;
}

void mmcs_put_req_context_init_items(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 304);
  if (*(v2 + 144))
  {
    v3 = 0;
    v4 = 288;
    alloc = *MEMORY[0x277CBECE8];
    while (1)
    {
      v5 = v2 + v4;
      v6 = (v2 + v4 - 136);
      if (v6 == CFSetGetValue(*(v2 + 56), v6))
      {
        break;
      }

LABEL_40:
      ++v3;
      v2 = *(a1 + 304);
      v4 += 416;
      if (v3 >= *(v2 + 144))
      {
        goto LABEL_48;
      }
    }

    v51 = 0;
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    v9 = *(v5 - 96);
    if ((CKGetRegisteredFileMetadata() & 1) == 0)
    {
      v28 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v34 = CFStringCreateWithFormat(alloc, 0, @"no registered file signature for %lld", *(v5 - 96));
        v35 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v34;
          _os_log_impl(&dword_2577D8000, v35, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v34)
        {
          CFRelease(v34);
        }
      }

      error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 27, @"No file signature registered for item %lld", v29, v30, v31, v32, v33, *(v5 - 96));
      goto LABEL_35;
    }

    if (CKFileDigestResultsHasFileLength())
    {
      v10 = CKFileDigestResultsFileLength();
      mmcs_item_set_size(v2 + v4 - 136, v10);
    }

    if (mmcs_item_is_metadata_only(v2 + v4 - 136))
    {
      v11 = *(v7 + 16);
      v12 = *(v5 - 96);
      if ((CKGetRegisteredChunksForItemID() & 1) == 0)
      {
        v37 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v43 = CFStringCreateWithFormat(alloc, 0, @"get chunk list failed for item %lld", *(v5 - 96));
          v44 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v43;
            _os_log_impl(&dword_2577D8000, v44, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v43)
          {
            CFRelease(v43);
          }
        }

        error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 27, @"get chunk list failed for item %lld", v38, v39, v40, v41, v42, *(v5 - 96));
        goto LABEL_35;
      }

      v13 = (v2 + v4);
      *v13 = 20000;
      *(v13 - 1) = 0;
      if (!mmcs_put_req_context_init_item_with_chunks(a1, (v2 + v4 - 136), *(v2 + v4 - 120), 0x4E20uLL, &v51))
      {
        goto LABEL_36;
      }

      cached_ranged_items = mmcs_engine_get_cached_ranged_items(v7, *(v5 - 96));
      *(v13 - 2) = cached_ranged_items;
      if (cached_ranged_items)
      {
        CFRetain(cached_ranged_items);
      }
    }

    v15 = *v6;
    v16 = *(v2 + v4 - 120);
    v17 = *(v2 + v4 - 48);
    if (CKFileDigestResultsCreate())
    {
      if (CKFileDigestResultsEqual())
      {
LABEL_37:
        if (v51)
        {
          CFRelease(v51);
        }

        v51 = 0;
        goto LABEL_40;
      }

      v18 = CFCopyDescription(0);
      v19 = CFCopyDescription(0);
      v20 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v26 = CFStringCreateWithFormat(alloc, 0, @"file signature mismatch for %lld item has %@ != %@ for the chunk store", *(v5 - 96), v18, v19);
        v27 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v26;
          _os_log_impl(&dword_2577D8000, v27, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v26)
        {
          CFRelease(v26);
        }
      }

      v49 = *(v5 - 96);
      v51 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 28, @"The file signature changed: from %@ on the item to %@ registered in the chunk store for item %lld", v21, v22, v23, v24, v25, v18);
      if (v18)
      {
        CFRelease(v18);
      }

      if (v19)
      {
        CFRelease(v19);
      }

LABEL_36:
      mmcs_put_item_progress_make_done_error(v51, buf);
      mmcs_put_request_set_progress_and_notify_items_like_item(a1, v6, buf);
      goto LABEL_37;
    }

    v45 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = CFStringCreateWithFormat(alloc, 0, @"no expectedFileDigestResults for %lld", *(v5 - 96));
      v47 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v46;
        _os_log_impl(&dword_2577D8000, v47, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v46)
      {
        CFRelease(v46);
      }
    }

    error = mmcs_cferror_create_error(@"com.apple.mmcs", 37, @"no expectedFileDigestResults");
LABEL_35:
    v51 = error;
    goto LABEL_36;
  }

LABEL_48:
  mmcs_put_req_context_schedule_chunk_jobs(a1);
  if (!mmcs_put_request_has_outstanding_chunk_jobs(a1))
  {
    mmcs_put_req_context_chunking_complete(a1);
  }

  v48 = *MEMORY[0x277D85DE8];
}

void mmcs_put_req_context_schedule_chunk_jobs(uint64_t a1)
{
  v93 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  chunking_activity_marker = mmcs_request_get_chunking_activity_marker(a1);
  os_activity_scope_enter(chunking_activity_marker, &state);
  v3 = *(a1 + 304);
  if (*(v3 + 8) < *(v3 + 144))
  {
    v4 = &dword_2577D8000;
    alloc = *MEMORY[0x277CBECE8];
    while (1)
    {
      if (CFSetGetCount(*v3) > 0)
      {
        goto LABEL_80;
      }

      v5 = *(a1 + 304);
      v6 = (v5 + 416 * *(v5 + 8) + 152);
      if (CFSetGetValue(*(v5 + 56), v6) == v6)
      {
        break;
      }

      v7 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v6[5];
        v9 = *(a1 + 304);
        v10 = *(v9 + 8) + 1;
        v11 = *(v9 + 144);
        *buf = 134218496;
        *&buf[4] = v8;
        *&buf[12] = 2048;
        *&buf[14] = v10;
        *&buf[22] = 2048;
        *&v91 = v11;
        _os_log_impl(v4, v7, OS_LOG_TYPE_DEFAULT, "Skipping item (%llu) %ld of %ld, duplicate item signature", buf, 0x20u);
      }

LABEL_72:
      ++*(*(a1 + 304) + 8);
      v3 = *(a1 + 304);
      if (*(v3 + 8) >= *(v3 + 144))
      {
        goto LABEL_80;
      }
    }

    v12 = *(a1 + 32);
    v88 = 0;
    cf.opaque[0] = 0;
    v13 = *(v12 + 16);
    v14 = v6[5];
    if (CKGetRegisteredFileMetadata())
    {
      v15 = CKFileDigestResultsFileVerificationKey();
      mmcs_item_set_file_verification_key(v6, v15);
      v16 = *v6;
      v17 = v6[2];
      v18 = v6[11];
      if (CKFileDigestResultsCreate())
      {
        if (CKFileDigestResultsEqual())
        {
          goto LABEL_34;
        }

        v19 = v4;
        v20 = CFCopyDescription(cf.opaque[0]);
        v21 = CFCopyDescription(v88);
        v22 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v28 = CFStringCreateWithFormat(alloc, 0, @"file signature mismatch for %lld item has %@ != %@ for the chunk store", v6[5], v20, v21);
          v29 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v28;
            _os_log_impl(v19, v29, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v28)
          {
            CFRelease(v28);
          }
        }

        v84 = v6[5];
        v30 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 28, @"The file signature changed: from %@ on the item to %@ registered in the chunk store for item %lld", v23, v24, v25, v26, v27, v20);
        if (v20)
        {
          CFRelease(v20);
        }

        if (v21)
        {
          CFRelease(v21);
        }

        v4 = v19;
LABEL_33:
        mmcs_put_item_progress_make_done_error(v30, buf);
        mmcs_put_request_set_progress_and_notify_items_like_item(a1, v6, buf);
LABEL_34:
        if (cf.opaque[0])
        {
          C3BaseRelease(cf.opaque[0]);
        }

        cf.opaque[0] = 0;
        if (v88)
        {
          C3BaseRelease(v88);
        }

        if (mmcs_item_is_metadata_only(v6))
        {
          goto LABEL_72;
        }

        v43 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = v6[5];
          v45 = *(a1 + 304);
          v46 = *(v45 + 8) + 1;
          v47 = *(v45 + 144);
          *buf = 134218496;
          *&buf[4] = v44;
          *&buf[12] = 2048;
          *&buf[14] = v46;
          *&buf[22] = 2048;
          *&v91 = v47;
          _os_log_impl(v4, v43, OS_LOG_TYPE_DEFAULT, "Chunking item (%llu) %ld of %ld", buf, 0x20u);
        }

        v48 = mmcs_request_get_chunking_activity_marker(a1);
        v49 = v4;
        v50 = _os_activity_create(v4, "mmcs-chunk-job", v48, OS_ACTIVITY_FLAG_DEFAULT);
        cf.opaque[0] = 0;
        cf.opaque[1] = 0;
        os_activity_scope_enter(v50, &cf);
        v87 = 0;
        v88 = 0;
        v51 = *(a1 + 32);
        v52 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          v53 = mmcs_file_signature_to_hexstring(*v6);
          v54 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            v55 = v6[5];
            *buf = 134218242;
            *&buf[4] = v55;
            *&buf[12] = 2082;
            *&buf[14] = v53;
            _os_log_impl(v49, v54, OS_LOG_TYPE_INFO, "Chunking started for itemId %lld with signature %{public}s", buf, 0x16u);
          }

          if (v53)
          {
            free(v53);
          }
        }

        v56 = mmcs_engine_owner(v51);
        requestor = mmcs_request_get_requestor(a1);
        if (mmcs_engine_get_item_reader_writer_for_item_callback(v51, v56, requestor, v6[5], &v87, &v88) && MMCSItemReaderWriterOpen(v87, &v88))
        {
          v58 = *(v87[3] + 16);
          v59 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
          {
            v83 = v6[5];
            v60 = CFStringCreateWithFormat(alloc, 0, @"opened itemid %lld ");
            v61 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              *&buf[4] = v60;
              _os_log_impl(v49, v61, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
            }

            if (v60)
            {
              CFRelease(v60);
            }
          }

          is_encrypted = mmcs_item_is_encrypted(v6);
          *buf = 2;
          *&buf[8] = 0u;
          v91 = 0u;
          mmcs_put_request_set_progress_and_notify_items_like_item(a1, v6, buf);
          if (*(a1 + 144))
          {
            v63 = CFRetain(*(a1 + 152));
          }

          else
          {
            v72 = mmcs_fixed_chunk_size_for_item_type_hint(v58);
            *buf = 0;
            *&buf[8] = a1;
            *&buf[16] = C3BaseRetain;
            *&v91 = C3BaseRelease;
            *(&v91 + 1) = 0;
            v92 = mmcs_put_req_context_did_chunk_item;
            v73 = mmcs_chunk_job_create(buf, v51, v87, v6, v72, is_encrypted != 0, v50);
            if (v73)
            {
              v79 = v73;
              v80 = *(a1 + 184);
              if (v80)
              {
                v81 = v79[25];
                if (v81)
                {
                  mmcs_metrics_request_add_chunking_info(v80, v81);
                }
              }

              CFSetSetValue(**(a1 + 304), v79);
              mmcs_engine_chunk_job_dispatch_async(v79, *(v51 + 24));
              C3BaseRelease(v79);
              error_with_underlying_error = 0;
              v4 = v49;
              goto LABEL_65;
            }

            v63 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"NULL chunk job", v74, v75, v76, v77, v78, v83);
          }

          error_with_underlying_error = v63;
          v4 = v49;
        }

        else
        {
          v65 = mmcs_logging_logger_default();
          v4 = v49;
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            v70 = CFStringCreateWithFormat(alloc, 0, @"unable to open itemid %lld %@", v6[5], v88);
            v71 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v70;
              _os_log_impl(v49, v71, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v70)
            {
              CFRelease(v70);
            }
          }

          error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 39, v88, @"Unable to open file for item %lld", v66, v67, v68, v69, v6[5]);
          if (v88)
          {
            CFRelease(v88);
          }

          v88 = 0;
        }

        mmcs_put_item_progress_make_done_error(error_with_underlying_error, buf);
        mmcs_put_request_set_progress_and_notify_items_like_item(a1, v6, buf);
LABEL_65:
        if (v87)
        {
          C3BaseRelease(v87);
        }

        if (error_with_underlying_error)
        {
          CFRelease(error_with_underlying_error);
        }

        if (v50)
        {
          os_release(v50);
        }

        os_activity_scope_leave(&cf);
        goto LABEL_72;
      }

      v40 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v83 = v6[5];
        v41 = CFStringCreateWithFormat(alloc, 0, @"no expectedFileDigestResults for %lld");
        v42 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v41;
          _os_log_impl(v4, v42, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v41)
        {
          CFRelease(v41);
        }
      }

      error = mmcs_cferror_create_error(@"com.apple.mmcs", 37, @"no expectedFileDigestResults");
    }

    else
    {
      v31 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v37 = CFStringCreateWithFormat(alloc, 0, @"no registered file signature for %lld", v6[5]);
        v38 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v37;
          _os_log_impl(v4, v38, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v37)
        {
          CFRelease(v37);
        }
      }

      error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 27, @"No file signature registered for item %lld", v32, v33, v34, v35, v36, v6[5]);
    }

    v30 = error;
    goto LABEL_33;
  }

LABEL_80:
  os_activity_scope_leave(&state);
  v82 = *MEMORY[0x277D85DE8];
}

void mmcs_put_req_context_chunking_complete(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  cf = 0;
  if (!mmcs_put_req_context_has_items_to_put(a1))
  {
    if (*(a1 + 144))
    {
      error = CFRetain(*(a1 + 152));
    }

    else
    {
      v26 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"There were no items that could be put.");
        v28 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v27;
          _os_log_impl(&dword_2577D8000, v28, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v27)
        {
          CFRelease(v27);
        }
      }

      error = mmcs_cferror_create_error(@"com.apple.mmcs", 17, @"There was an undefined error with chunking the item.");
    }

LABEL_41:
    v22 = error;
    cf = error;
    mmcs_put_request_context_cleanup(a1, error);
    goto LABEL_42;
  }

  if (gMMCS_DebugLevel >= 5)
  {
    v2 = CFCopyDescription(*(*(a1 + 304) + 64));
    if (gMMCS_DebugLevel >= 5)
    {
      v3 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v33 = v2;
        v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"all chunk references for put %@");
        v5 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = v4;
          _os_log_impl(&dword_2577D8000, v5, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v4)
        {
          CFRelease(v4);
        }
      }
    }

    if (v2)
    {
      CFRelease(v2);
    }
  }

  if (*(a1 + 264))
  {
    if (mmcs_server_version_not_a_version(*(a1 + 120), *(a1 + 128)))
    {
      v6 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"client failed to provide server proto version for preauthorization data");
        v13 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v12;
          _os_log_impl(&dword_2577D8000, v13, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v12)
        {
          CFRelease(v12);
        }
      }

      v14 = @"client failed to provide server proto version for preauthorization data";
    }

    else
    {
      v24 = CFGetTypeID(*(a1 + 264));
      if (v24 == CFDataGetTypeID())
      {
        *buf = *(a1 + 264);
        CFRetain(*buf);
        mmcs_put_request_process_put_authorization_data(a1, buf);
        v25 = *buf;
        if (!*buf)
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }

      v29 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"put preauthorization data type not supported.");
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

      v14 = @"put preauthorization data type not supported.";
    }

    error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 40, v14, v7, v8, v9, v10, v11, v33);
    goto LABEL_41;
  }

  v16 = send_request_authorizePut(a1, &cf);
  v22 = cf;
  if (!v16)
  {
    if (!cf)
    {
      cf = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"An unknown error caused the put authorization to fail.", v17, v18, v19, v20, v21, v33);
    }

    mmcs_metrics_request_set_error(*(a1 + 184), *(a1 + 152));
    mmcs_put_request_context_cleanup(a1, cf);
    v23 = mmcs_logging_logger_default();
    XCFPrint(v23, @"AuthorizePutIssue", cf);
    v22 = cf;
  }

LABEL_42:
  if (v22)
  {
    v25 = v22;
LABEL_44:
    CFRelease(v25);
  }

LABEL_45:
  v32 = *MEMORY[0x277D85DE8];
}

uint64_t mmcs_put_req_context_init_items_for_section(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v102 = *MEMORY[0x277D85DE8];
  v91 = *(a1 + 304);
  if (*(v91 + 144) != 1)
  {
    mmcs_put_req_context_init_items_for_section_cold_1();
  }

  v5 = a1;
  v99 = 0;
  v100 = 0;
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, &kC3BaseArrayCallBacks);
  v89 = CFArrayCreateMutable(v6, 0, &kAssignArrayCallBacks);
  v7 = mmcs_logging_logger_default();
  v8 = 0;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = CFStringCreateMutable(v6, 0);
  }

  v87 = v5;
  if (!a2)
  {
    v32 = 0;
    v31 = 0;
    v29 = 0;
    goto LABEL_34;
  }

  v85 = v6;
  v86 = a4;
  v9 = 0;
  v94 = 0;
  ptr = 0;
  v10 = 0;
  v11 = 0;
  v93 = 0;
  v13 = Mutable;
  v12 = v89;
  do
  {
    v14 = *(a3 + 8 * v10);
    *buf = 0;
    v98 = 0;
    v99 = 0;
    value = 0;
    if (*(v91 + 256))
    {
      p_value = &value;
    }

    else
    {
      p_value = 0;
    }

    if (!mmcs_GetSortedRegisteredChunksForItemID(*(*(v5 + 32) + 16), v14, &v99, buf, p_value, &v98))
    {
      v52 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 2, @"Unable to get the chunklist for item %lld was it registered and chunked?", v16, v17, v18, v19, v20, v14);
LABEL_71:
      v100 = v52;
      v6 = v85;
      a4 = v86;
      v66 = ptr;
      goto LABEL_85;
    }

    v21 = *buf;
    v22 = CKRegisteredChunkSize();
    if (v8)
    {
      v23 = 0;
      if (v21)
      {
        v24 = v21;
        do
        {
          v23 += CKRegisteredChunkLength();
          CKRegisteredChunkSize();
          --v24;
        }

        while (v24);
      }

      CFStringAppendFormat(v8, 0, @"\t\t%lld sectionOffset:%llu itemSize:%llu\n", v14, v93, v23);
      v93 += v23;
      v5 = v87;
      v13 = Mutable;
      v12 = v89;
    }

    v25 = v98;
    if (!v98)
    {
      if (!mmcs_chunking_profile_create(&v98, v21, 0))
      {
        v57 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          *v96 = 0;
          _os_log_impl(&dword_2577D8000, v57, OS_LOG_TYPE_ERROR, "Unable to create chunking profile.", v96, 2u);
        }

        v58 = @"Unable to create chunking profile.";
        goto LABEL_70;
      }

      v25 = v98;
    }

    CFArrayAppendValue(v13, v25);
    CFArrayAppendValue(v12, value);
    value = 0;
    if (v98)
    {
      CFRelease(v98);
    }

    v98 = 0;
    v26 = v22 * v21;
    if (v10)
    {
      v27 = v26 + v11;
      if (v94 - v11 >= v26)
      {
        v28 = ptr;
      }

      else
      {
        v94 = 2 * v27;
        v28 = malloc_type_realloc(ptr, (2 * v27), 0x100004077774924uLL);
        if (!v28)
        {
          v59 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            *v96 = 0;
            _os_log_impl(&dword_2577D8000, v59, OS_LOG_TYPE_ERROR, "Failed to realloc when computing package section chunk list.", v96, 2u);
          }

          v58 = @"Failed to realloc when computing package section chunk list.";
LABEL_70:
          v52 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, v58, v61, v62, v63, v64, v65, v84);
          goto LABEL_71;
        }
      }

      ptr = v28;
      memcpy(&v28[v11], v99, v26);
      v9 += v21;
      if (v99)
      {
        free(v99);
      }
    }

    else
    {
      v94 = v26;
      ptr = v99;
      v27 = v26;
      v9 = v21;
    }

    v99 = 0;
    ++v10;
    v11 = v27;
  }

  while (v10 != a2);
  if (v9)
  {
    v29 = 0;
    v30 = v9;
    v31 = ptr;
    v6 = v85;
    a4 = v86;
    do
    {
      v29 += CKRegisteredChunkLength();
      CKRegisteredChunkSize();
      --v30;
    }

    while (v30);
    v32 = v9;
    v5 = v87;
  }

  else
  {
    v32 = 0;
    v29 = 0;
    v6 = v85;
    a4 = v86;
    v31 = ptr;
  }

LABEL_34:
  *(v91 + 264) = Mutable;
  *(v91 + 272) = v89;
  *(v91 + 280) = v31;
  if (!mmcs_put_req_context_init_item_with_chunks(v5, (v91 + 152), v29, v32, &v100))
  {
    goto LABEL_84;
  }

  if (!mmcs_put_req_context_has_items_to_put(v5))
  {
    v53 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = CFStringCreateWithFormat(v6, 0, @"There were no items that could be put.");
      v55 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v54;
        _os_log_impl(&dword_2577D8000, v55, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v54)
      {
        CFRelease(v54);
      }
    }

    goto LABEL_84;
  }

  if (gMMCS_DebugLevel >= 5)
  {
    v38 = CFCopyDescription(*(*(v87 + 304) + 64));
    if (gMMCS_DebugLevel >= 5)
    {
      v39 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        v40 = v8;
        v84 = v38;
        v41 = CFStringCreateWithFormat(v6, 0, @"all chunk references for put %@");
        v42 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = v41;
          _os_log_impl(&dword_2577D8000, v42, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        v8 = v40;
        if (v41)
        {
          CFRelease(v41);
        }
      }
    }

    if (v38)
    {
      CFRelease(v38);
    }
  }

  if (*(v87 + 264))
  {
    if (mmcs_server_version_not_a_version(*(v87 + 120), *(v87 + 128)))
    {
      v43 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v49 = CFStringCreateWithFormat(v6, 0, @"client failed to provide server proto version for preauthorization data for section");
        v50 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v49;
          _os_log_impl(&dword_2577D8000, v50, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v49)
        {
          CFRelease(v49);
        }
      }

      v51 = @"client failed to provide server proto version for preauthorization data for section";
      goto LABEL_83;
    }

    v67 = CFGetTypeID(*(v87 + 264));
    if (v67 == CFDataGetTypeID())
    {
      *buf = *(v87 + 264);
      CFRetain(*buf);
      mmcs_put_request_process_put_authorization_data(v87, buf);
      if (*buf)
      {
        CFRelease(*buf);
      }

      goto LABEL_75;
    }

    v70 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      v71 = CFStringCreateWithFormat(v6, 0, @"section-put preauthorization data type not supported.");
      v72 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v71;
        _os_log_impl(&dword_2577D8000, v72, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v71)
      {
        CFRelease(v71);
      }
    }

    v51 = @"section-put preauthorization data type not supported.";
LABEL_83:
    v100 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 40, v51, v44, v45, v46, v47, v48, v84);
    mmcs_put_request_context_cleanup(v87, v100);
LABEL_84:
    Mutable = 0;
    v89 = 0;
    v66 = 0;
LABEL_85:
    v69 = 0;
    v68 = 1;
    if (v8)
    {
LABEL_86:
      v73 = v8;
      v74 = *(v87 + 304);
      v75 = mmcs_file_signature_to_hexstring(*(v74 + 152));
      CStringDescription = XCFDataCreateCStringDescription(*(v74 + 216));
      v77 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        v78 = CFStringCreateWithFormat(v6, 0, @"PUT section %@ sig:%s ref:%s items:(%@\t)", *(v74 + 488), v75, CStringDescription, v73);
        v79 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v78;
          _os_log_impl(&dword_2577D8000, v79, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        if (v78)
        {
          CFRelease(v78);
        }
      }

      if (v75)
      {
        free(v75);
      }

      if (CStringDescription)
      {
        free(CStringDescription);
      }

      CFRelease(v73);
    }
  }

  else
  {
    if (!send_request_authorizePut(v87, &v100))
    {
      if (!v100)
      {
        v100 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"An unknown error caused the put authorization to fail.", v33, v34, v35, v36, v37, v84);
      }

      mmcs_metrics_request_set_error(*(v87 + 184), *(v87 + 152));
      mmcs_put_request_context_cleanup(v87, v100);
      v56 = mmcs_logging_logger_default();
      XCFPrint(v56, @"AuthorizePut Send Error", v100);
    }

LABEL_75:
    Mutable = 0;
    v89 = 0;
    v66 = 0;
    v68 = 0;
    v69 = 1;
    if (v8)
    {
      goto LABEL_86;
    }
  }

  if (v66)
  {
    free(v66);
  }

  if (v99)
  {
    free(v99);
  }

  v99 = 0;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v89)
  {
    CFRelease(v89);
  }

  v80 = v68 ^ 1;
  v81 = v100;
  if (!a4)
  {
    v80 = 1;
  }

  if ((v80 & 1) == 0)
  {
    if (!v100)
    {
      v81 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"missing local error %s %d", v33, v34, v35, v36, v37, "mmcs_put_req_context_init_items_for_section");
      v100 = v81;
    }

    CFRetain(v81);
    v81 = v100;
    *a4 = v100;
  }

  if (v81)
  {
    CFRelease(v81);
  }

  v82 = *MEMORY[0x277D85DE8];
  return v69;
}

uint64_t mmcs_put_req_context_init_item_with_chunks(uint64_t a1, char **a2, uint64_t a3, unint64_t a4, CFErrorRef *a5)
{
  v64 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    *a5 = 0;
  }

  if (a3 != -1)
  {
    mmcs_item_set_size(a2, a3);
  }

  if (!mmcs_item_set_chunk_instance_capacity(a2, a4))
  {
    v26 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v32 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs_item_set_chunk_instance_capacity");
      v33 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v55 = v32;
        _os_log_impl(&dword_2577D8000, v33, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v32)
      {
        CFRelease(v32);
      }
    }

    error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"Unable to set chunk instance capacity for item %lld", v27, v28, v29, v30, v31, a2[5]);
LABEL_51:
    v43 = error;
    if (!a5)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (!a2[17])
  {
LABEL_25:
    mmcs_item_setup_chunk_references(a2);
    result = 1;
    goto LABEL_56;
  }

  v9 = 0;
  v10 = a2[16];
  v11 = 16;
  v52 = a1;
  while (1)
  {
    if (gMMCS_DebugLevel >= 4)
    {
      v12 = CKRegisteredChunkSignatureCopyCString();
      v13 = mmcs_logging_logger_chunk();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = a2[17];
        v15 = CKRegisteredChunkOffset();
        v16 = CKRegisteredChunkLength();
        *buf = 134219010;
        v55 = (v9 + 1);
        a1 = v52;
        v56 = 2048;
        v57 = v14;
        v58 = 2048;
        v59 = v15;
        v60 = 1024;
        v61 = v16;
        v62 = 2082;
        v63 = v12;
        _os_log_impl(&dword_2577D8000, v13, OS_LOG_TYPE_DEFAULT, "Chunk %lu of %llu at itemOffset %llu with byteLength %u has signature %{public}s", buf, 0x30u);
      }

      if (v12)
      {
        free(v12);
      }
    }

    if (mmcs_item_is_encrypted(a2) && !CKRegisteredChunkIsEncrypted() || !mmcs_item_is_encrypted(a2) && CKRegisteredChunkIsEncrypted())
    {
      break;
    }

    v53 = 0;
    v17 = CKRegisteredChunkLength();
    v18 = CKRegisteredChunkSignature();
    v19 = CKRegisteredChunkKey();
    if (!mmcs_chunk_reference_create(&v53, v17, v18, v19, 0))
    {
      v44 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"nomem: mmcs_chunk_reference_create for item %lld", a2[5]);
        v46 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v55 = v45;
          _os_log_impl(&dword_2577D8000, v46, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        v47 = @"no memory to create chunk reference";
        if (v45)
        {
LABEL_47:
          CFRelease(v45);
        }
      }

      else
      {
        v47 = @"no memory to create chunk reference";
      }

LABEL_50:
      error = mmcs_cferror_create_error(@"com.apple.mmcs", 37, v47);
      goto LABEL_51;
    }

    v20 = mmcs_put_req_context_add_chunk_reference(a1, v53);
    if (v20 != v53)
    {
      mmcs_chunk_reference_dealloc(v53);
      v53 = v20;
    }

    v21 = CKRegisteredSubchunkDigest();
    v22 = v53;
    *(v53 + 4) = v21;
    v23 = a2[34];
    v24 = CKRegisteredChunkOffset();
    if (!mmcs_chunk_instance_init(&v23[v11 - 16], v22, v24, v9, a2))
    {
      v48 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v45 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs_chunk_instance_init for item %lld", a2[5]);
        v49 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v55 = v45;
          _os_log_impl(&dword_2577D8000, v49, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        v47 = @"no memory to init chunk instance";
        if (v45)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v47 = @"no memory to init chunk instance";
      }

      goto LABEL_50;
    }

    if (CKRegisteredChunkItemID() != a2[5])
    {
      if (!mmcs_put_request_is_section(a1))
      {
        mmcs_put_req_context_init_item_with_chunks_cold_1();
      }

      *&v23[v11] = CKRegisteredChunkItemID();
    }

    ++a2[18];
    mmcs_chunk_reference_add_instance(v53, &v23[v11 - 16]);
    CKRegisteredChunkSize();
    ++v9;
    v11 += 104;
    if (v9 >= a2[17])
    {
      goto LABEL_25;
    }
  }

  mmcs_item_set_does_not_need_put(a2);
  v35 = CKRegisteredChunkSignatureCopyCString();
  IsEncrypted = CKRegisteredChunkIsEncrypted();
  v42 = "En";
  if (!IsEncrypted)
  {
    v42 = "Unen";
  }

  v51 = a2[5];
  v43 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 17, @"%scrypted chunk %s was not expected for item %lld", v37, v38, v39, v40, v41, v42);
  if (v35)
  {
    free(v35);
  }

  if (a5)
  {
LABEL_52:
    CFRetain(v43);
    *a5 = v43;
  }

LABEL_53:
  if (v43)
  {
    CFRelease(v43);
  }

  result = 0;
LABEL_56:
  v50 = *MEMORY[0x277D85DE8];
  return result;
}

void mmcs_put_request_context_cleanup(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  request_activity_marker = mmcs_request_get_request_activity_marker(a1);
  os_activity_scope_enter(request_activity_marker, &state);
  v5 = *(a1 + 32);
  if (a2)
  {
    *buf = 7;
    *&buf[8] = 0xBFF0000000000000;
    *&buf[16] = 0;
    v31 = 0;
    v32 = a2;
    mmcs_put_request_set_progress_and_notify_all_items_not_done(a1, buf);
  }

  v6 = *(*(a1 + 304) + 88);
  if (v6)
  {
    mmcs_perform_timer_invalidate(v6);
    v7 = *(a1 + 304);
    v8 = *(v7 + 88);
    if (v8)
    {
      CFRelease(v8);
      v7 = *(a1 + 304);
    }

    *(v7 + 88) = 0;
  }

  if (mmcs_engine_contains_request(v5, a1))
  {
    v9 = *(a1 + 24);
    kdebug_trace();
    v29.opaque[0] = 0;
    v29.opaque[1] = 0;
    v10 = mmcs_request_get_request_activity_marker(a1);
    os_activity_scope_enter(v10, &v29);
    if (*(a1 + 184))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(*(a1 + 32) + 200) = C3BaseRetain(a1);
      v12 = *(a1 + 184);
      if (v12)
      {
        _mmcs_metrics_request_stopped(*(a1 + 184), 0, *(a1 + 152));
        *(v12 + 24) = mmcs_server_version_as_double(*(a1 + 120), *(a1 + 128));
        v13 = *(*(a1 + 304) + 80);
        if (v13)
        {
          v14 = *(v13 + 16);
          if (v14)
          {
            *(v12 + 128) = CFDictionaryGetCount(v14);
            v13 = *(*(a1 + 304) + 80);
          }

          *(v12 + 160) = *(v13 + 40);
          *(v12 + 152) = *(*(*(a1 + 304) + 80) + 32);
          *(v12 + 144) = *(*(*(a1 + 304) + 80) + 24);
        }
      }

      metric_object = mmcs_metrics_create_metric_object(*(a1 + 184));
      CFDictionaryAddValue(Mutable, @"metricObject", metric_object);
      if (metric_object)
      {
        CFRelease(metric_object);
      }
    }

    else
    {
      Mutable = 0;
    }

    v20 = *(*(a1 + 304) + 80);
    if (v20 && *(v20 + 56))
    {
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      }

      v21 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        Length = CFDataGetLength(*(*(*(a1 + 304) + 80) + 56));
        *buf = 134217984;
        *&buf[4] = Length;
        _os_log_impl(&dword_2577D8000, v21, OS_LOG_TYPE_INFO, "Appending warmContainerState of length %llu to result dict", buf, 0xCu);
      }

      CFDictionaryAddValue(Mutable, @"kMMCSWarmContainerState", *(*(*(a1 + 304) + 80) + 56));
    }

    v23 = mmcs_request_copy_description(a1);
    v24 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = *(a1 + 32);
      *buf = 134218242;
      *&buf[4] = v25;
      *&buf[12] = 2114;
      *&buf[14] = v23;
      _os_log_impl(&dword_2577D8000, v24, OS_LOG_TYPE_INFO, "Engine %p request will notify request %{public}@ done", buf, 0x16u);
    }

    if (v23)
    {
      CFRelease(v23);
    }

    MMCSEngineClientContextRequestCompleted(*(v5 + 152), *(a1 + 40), Mutable);
    if (*(a1 + 184))
    {
      C3BaseRelease(a1);
      *(*(a1 + 32) + 200) = 0;
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    os_activity_scope_leave(&v29);
    mmcs_put_req_context_log_timing(a1);
    v26 = *(*(a1 + 304) + 80);
    if (v26)
    {
      mmcs_put_state_invalidate(v26);
    }

    mmcs_engine_remove_request(v5, a1);
  }

  else
  {
    v16 = mmcs_request_copy_description(a1);
    v17 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"ignoring unknown put req %@", v16);
      v19 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v18;
        _os_log_impl(&dword_2577D8000, v19, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v18)
      {
        CFRelease(v18);
      }
    }

    if (v16)
    {
      CFRelease(v16);
    }
  }

  os_activity_scope_leave(&state);
  v27 = *MEMORY[0x277D85DE8];
}

const void *mmcs_put_request_get_distinct_item_with_signature_reference(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v31 = 0;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v8 = 0;
  v7 = 0u;
  v6 = 0u;
  v5 = 0u;
  v4 = a2;
  v9 = a3;
  return CFSetGetValue(*(*(a1 + 304) + 56), &v4);
}

void mmcs_put_req_context_log_timing(uint64_t a1)
{
  v99 = *MEMORY[0x277D85DE8];
  v2 = mmcs_logging_logger_summary();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    timing_activity_marker = mmcs_request_get_timing_activity_marker(a1);
    os_activity_scope_enter(timing_activity_marker, &state);
    v4 = mmcs_logging_logger_summary();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"PUT request timing==========================================");
      v6 = mmcs_logging_logger_summary();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v5;
        _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }

    v7 = mmcs_request_copy_description(a1);
    v8 = mmcs_logging_logger_summary();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"engine %p request %@", *(a1 + 32), v7);
      v10 = mmcs_logging_logger_summary();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v9;
        _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (*(a1 + 144))
    {
      v11 = mmcs_logging_logger_summary();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"\trequest was cancelled.");
        v13 = mmcs_logging_logger_summary();
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
    }

    if (*(a1 + 264))
    {
      v14 = mmcs_logging_logger_summary();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"\tmmcs was pre-authorized by client application");
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
    }

    if (*(*(a1 + 304) + 96))
    {
      v17 = mmcs_logging_logger_summary();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
      v19 = *MEMORY[0x277CBECE8];
      if (v18)
      {
        v20 = mmcs_http_context_elapsed_seconds(*(*(a1 + 304) + 96));
        v21 = CFStringCreateWithFormat(v19, 0, @"\tmmcs put auth:     \t%0.4lf sec.", *&v20);
        v22 = mmcs_logging_logger_summary();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = v21;
          _os_log_impl(&dword_2577D8000, v22, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v21)
        {
          CFRelease(v21);
        }
      }

      v23 = mmcs_logging_logger_summary();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = mmcs_http_context_enqueued_seconds(*(*(a1 + 304) + 96));
        v25 = CFStringCreateWithFormat(v19, 0, @"\tmmcs put auth(inQ):\t%0.4lf sec.", *&v24);
        v26 = mmcs_logging_logger_summary();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = v25;
          _os_log_impl(&dword_2577D8000, v26, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v25)
        {
          CFRelease(v25);
        }
      }
    }

    else
    {
      v19 = *MEMORY[0x277CBECE8];
    }

    Mutable = CFArrayCreateMutable(v19, 0, &itemArrayCallbacks);
    v28 = *(a1 + 304);
    if (*(v28 + 144))
    {
      v29 = 0;
      v30 = 152;
      do
      {
        CFArrayAppendValue(Mutable, (v28 + v30));
        ++v29;
        v28 = *(a1 + 304);
        v30 += 416;
      }

      while (v29 < *(v28 + 144));
    }

    if (CFArrayGetCount(Mutable) >= 1)
    {
      v94 = Mutable;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, 0);
        Value = CFDictionaryGetValue(*(*(a1 + 304) + 48), ValueAtIndex);
        v33 = mmcs_file_signature_to_hexstring(*ValueAtIndex);
        v34 = CFStringCreateMutable(v19, 0);
        v100.length = CFArrayGetCount(Value);
        theArray = Value;
        v100.location = 0;
        CFArrayApplyFunction(Value, v100, log_item_applier, v34);
        v35 = mmcs_logging_logger_summary();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          v36 = CFStringCreateWithFormat(v19, 0, @"\tsignature: %s", v33);
          v37 = mmcs_logging_logger_summary();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            *&buf[4] = v36;
            _os_log_impl(&dword_2577D8000, v37, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v36)
          {
            CFRelease(v36);
          }
        }

        CStringDescription = XCFDataCreateCStringDescription(ValueAtIndex[8]);
        v39 = mmcs_logging_logger_summary();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          v40 = CFStringCreateWithFormat(v19, 0, @"\treference: %s", CStringDescription);
          v41 = mmcs_logging_logger_summary();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            *&buf[4] = v40;
            _os_log_impl(&dword_2577D8000, v41, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v40)
          {
            CFRelease(v40);
          }
        }

        v42 = mmcs_logging_logger_summary();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          v43 = CFStringCreateWithFormat(v19, 0, @"\tsize: %lld bytes", ValueAtIndex[2]);
          v44 = mmcs_logging_logger_summary();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            *&buf[4] = v43;
            _os_log_impl(&dword_2577D8000, v44, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v43)
          {
            CFRelease(v43);
          }
        }

        v45 = *(a1 + 16);
        v46 = mmcs_logging_logger_summary();
        v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG);
        if (v45 == 3)
        {
          if (v47)
          {
            v48 = CFStringCreateWithFormat(v19, 0, @"\tsection ID: %@", *(*(a1 + 304) + 488));
            v49 = mmcs_logging_logger_summary();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
            {
LABEL_64:
              *buf = 138543362;
              *&buf[4] = v48;
              _os_log_impl(&dword_2577D8000, v49, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
            }

LABEL_65:
            if (v48)
            {
              CFRelease(v48);
            }
          }
        }

        else if (v47)
        {
          v48 = CFStringCreateWithFormat(v19, 0, @"\titem(s): %@", v34);
          v49 = mmcs_logging_logger_summary();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_64;
          }

          goto LABEL_65;
        }

        if (v34)
        {
          CFRelease(v34);
        }

        v95 = CStringDescription;
        v50 = mmcs_logging_logger_summary();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          v51 = mmcs_item_chunking_elapsed_seconds(ValueAtIndex);
          v52 = CFStringCreateWithFormat(v19, 0, @"\tmmcs item chunking:\t%0.4lf sec.", *&v51);
          v53 = mmcs_logging_logger_summary();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            *&buf[4] = v52;
            _os_log_impl(&dword_2577D8000, v53, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v52)
          {
            CFRelease(v52);
          }
        }

        v54 = a1;
        v55 = *(*(a1 + 304) + 80);
        if (v55 && v55[1])
        {
          v56 = 0;
          do
          {
            v57 = *(v55[8] + 8 * v56);
            v58 = v57[11];
            if (CFSetContainsValue(*(v58 + 16), ValueAtIndex))
            {
              v59 = mmcs_logging_logger_summary();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
              {
                v60 = CFStringCreateWithFormat(v19, 0, @"\tmmcs put container %lu:\t%s", v56 + 1, **(v58 + 8));
                v61 = mmcs_logging_logger_summary();
                if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543362;
                  *&buf[4] = v60;
                  _os_log_impl(&dword_2577D8000, v61, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
                }

                if (v60)
                {
                  CFRelease(v60);
                }
              }

              mmcs_transaction_log_timing(v57[2]);
              v62 = v57[3];
              if (v62)
              {
                mmcs_transaction_log_timing(v62);
              }

              v63 = v57[5];
              if (v63)
              {
                v64 = mmcs_cferror_copy_description(v63);
                v65 = mmcs_logging_logger_summary();
                if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
                {
                  v66 = CFStringCreateWithFormat(v19, 0, @"\terror:             \t%@", v64);
                  v67 = mmcs_logging_logger_summary();
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543362;
                    *&buf[4] = v66;
                    _os_log_impl(&dword_2577D8000, v67, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
                  }

                  if (v66)
                  {
                    CFRelease(v66);
                  }
                }

                if (v64)
                {
                  CFRelease(v64);
                }
              }

              v68 = v57[6];
              if (v68)
              {
                *buf = 1;
                v101.length = CFArrayGetCount(v68);
                v101.location = 0;
                CFArrayApplyFunction(v68, v101, _log_error_0, buf);
              }

              *buf = v57;
              CFSetApplyFunction(*(*(*v55 + 304) + 128), find_put_complete, buf);
              v69 = *&buf[8];
              if (*&buf[8] && *(*&buf[8] + 8))
              {
                v70 = mmcs_logging_logger_summary();
                if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
                {
                  v71 = mmcs_http_context_elapsed_seconds(*(v69 + 8));
                  v72 = CFStringCreateWithFormat(v19, 0, @"\tmmcs put complete: \t%0.4lf sec.", *&v71);
                  v73 = mmcs_logging_logger_summary();
                  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543362;
                    *&buf[4] = v72;
                    _os_log_impl(&dword_2577D8000, v73, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
                  }

                  if (v72)
                  {
                    CFRelease(v72);
                  }
                }

                v74 = mmcs_logging_logger_summary();
                if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
                {
                  v75 = mmcs_http_context_enqueued_seconds(*(v69 + 8));
                  v76 = CFStringCreateWithFormat(v19, 0, @"\tmmcs put complete(inQ):\t%0.4lf sec.", *&v75);
                  v77 = mmcs_logging_logger_summary();
                  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543362;
                    *&buf[4] = v76;
                    _os_log_impl(&dword_2577D8000, v77, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
                  }

                  if (v76)
                  {
                    CFRelease(v76);
                  }
                }
              }
            }

            ++v56;
          }

          while (v56 < v55[1]);
        }

        a1 = v54;
        Mutable = v94;
        if (ValueAtIndex[28])
        {
          v78 = mmcs_logging_logger_summary();
          if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
          {
            v79 = CFStringCreateWithFormat(v19, 0, @"\treceipt:           \t%@", ValueAtIndex[28]);
            v80 = mmcs_logging_logger_summary();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              *&buf[4] = v79;
              _os_log_impl(&dword_2577D8000, v80, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
            }

            if (v79)
            {
              CFRelease(v79);
            }
          }
        }

        v81 = ValueAtIndex[24];
        if (v81)
        {
          v82 = mmcs_cferror_copy_description(v81);
          v83 = mmcs_logging_logger_summary();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
          {
            v84 = CFStringCreateWithFormat(v19, 0, @"\terror uploading item %lld w/signature: %s reference: %s", ValueAtIndex[5], v33, v95);
            v85 = mmcs_logging_logger_summary();
            if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              *&buf[4] = v84;
              _os_log_impl(&dword_2577D8000, v85, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
            }

            if (v84)
            {
              CFRelease(v84);
            }
          }

          v86 = mmcs_logging_logger_summary();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
          {
            v87 = CFStringCreateWithFormat(v19, 0, @"\terror:             \t%@", v82);
            v88 = mmcs_logging_logger_summary();
            if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              *&buf[4] = v87;
              _os_log_impl(&dword_2577D8000, v88, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
            }

            if (v87)
            {
              CFRelease(v87);
            }
          }

          v89 = mmcs_logging_logger_summary();
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
          {
            v90 = MMCSPutItemStateCString(*(ValueAtIndex + 42));
            v91 = CFStringCreateWithFormat(v19, 0, @"\terror state:       \t%s", v90);
            v92 = mmcs_logging_logger_summary();
            if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              *&buf[4] = v91;
              _os_log_impl(&dword_2577D8000, v92, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
            }

            if (v91)
            {
              CFRelease(v91);
            }
          }

          if (v82)
          {
            CFRelease(v82);
          }
        }

        if (v95)
        {
          free(v95);
        }

        if (v33)
        {
          free(v33);
        }

        XCFArrayRemoveAllValuesWithArray(v94, theArray);
      }

      while (CFArrayGetCount(v94) > 0);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    os_activity_scope_leave(&state);
  }

  v93 = *MEMORY[0x277D85DE8];
}