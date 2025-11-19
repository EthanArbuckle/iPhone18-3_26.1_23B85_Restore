__CFString *mmcs_http_get_stream_status_string(unsigned int a1)
{
  if (a1 > 3)
  {
    return @"meandering";
  }

  else
  {
    return streamStatusString[a1];
  }
}

uint64_t mmcs_http_context_actual_bytes_written(uint64_t a1)
{
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 584), &v5);
  v2 = callbacks[15 * *(a1 + 16) + 6];
  if (v2)
  {
    v3 = v2(a1);
  }

  else
  {
    v3 = 0;
  }

  os_activity_scope_leave(&v5);
  return v3;
}

BOOL mmcs_http_context_is_sending(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*(a1 + 56))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 296) == 0;
  }

  return !v2;
}

uint64_t mmcs_http_context_send(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 584), &state);
  mmcs_http_context_will_reset_request(a1);
  Current = CFAbsoluteTimeGetCurrent();
  *(a1 + 80) = Current;
  *(a1 + 280) = Current;
  *(a1 + 312) = Current;
  *(a1 + 320) = Current;
  v7 = callbacks[15 * *(a1 + 16) + 3];
  if (!v7)
  {
    mmcs_http_context_send_cold_2();
  }

  v8 = v7(a1, a2, a3);
  v9 = *(a1 + 336);
  if (*(a1 + 400))
  {
    v10 = CFHTTPMessageCopyHeaderFieldValue(v9, @"Content-Length");
    if (!v10)
    {
      IntValue = -1;
      goto LABEL_10;
    }

    v11 = v10;
    IntValue = CFStringGetIntValue(v10);
  }

  else
  {
    v13 = CFHTTPMessageCopyBody(v9);
    if (!v13)
    {
      IntValue = 0;
      goto LABEL_10;
    }

    v11 = v13;
    IntValue = CFDataGetLength(v13);
  }

  CFRelease(v11);
LABEL_10:
  *(a1 + 136) = IntValue;
  if (!*(a1 + 488) && gMMCS_DebugLevel < 3)
  {
    goto LABEL_22;
  }

  v14 = mmcs_logging_logger_default();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
  if (IntValue == -1)
  {
    if (!v15)
    {
      goto LABEL_22;
    }

    v16 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"context (%p) sending request with unknown length body", a1);
    v17 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_20;
    }

    *buf = 138543362;
    v22 = v16;
  }

  else
  {
    if (!v15)
    {
      goto LABEL_22;
    }

    v16 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"context (%p) sending %lld body bytes", a1, *(a1 + 136));
    v17 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_20;
    }

    *buf = 138543362;
    v22 = v16;
  }

  _os_log_impl(&dword_2577D8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
LABEL_20:
  if (v16)
  {
    CFRelease(v16);
  }

LABEL_22:
  if (!v8)
  {
    if (!*(a1 + 328))
    {
      mmcs_http_context_send_cold_1();
    }

    mmcs_http_context_transaction_complete(a1);
  }

  os_activity_scope_leave(&state);
  v18 = *MEMORY[0x277D85DE8];
  return v8;
}

void mmcs_http_context_will_reset_request(uint64_t a1)
{
  v3.opaque[0] = 0;
  v3.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 584), &v3);
  *(a1 + 296) = 0;
  *(a1 + 416) = 0;
  v2 = callbacks[15 * *(a1 + 16) + 4];
  if (v2)
  {
    v2(a1);
  }

  os_activity_scope_leave(&v3);
}

uint64_t mmcs_http_reset_context_for_new_stream(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"context (%p) resetting for new stream", a1);
    v4 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v14 = v3;
      _os_log_impl(&dword_2577D8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  *(a1 + 296) = 0;
  *(a1 + 136) = xmmword_25785F970;
  metricsinfo__clear_bytes_written(a1 + 24);
  *(a1 + 312) = 0;
  metricsinfo__clear_last_send_time(a1 + 24);
  metricsinfo__clear_timed_out(a1 + 24);
  metricsinfo__clear_http_status(a1 + 24);
  metricsinfo__clear_start_name_resolution(a1 + 24);
  metricsinfo__clear_stop_name_resolution(a1 + 24);
  metricsinfo__clear_response_size(a1 + 24);
  metricsinfo__clear_bytes_read(a1 + 24);
  mmcs_http_context_will_reset_request(a1);
  *(a1 + 484) = 0;
  v5 = *(a1 + 424);
  if (v5)
  {
    fclose(v5);
    *(a1 + 424) = 0;
  }

  result = debug_begin_writing_http_message_to_file(a1, *(a1 + 336), (a1 + 424), *(a1 + 264), 0);
  if (result && !*(a1 + 400) && *(a1 + 424))
  {
    v7 = CFHTTPMessageCopyBody(*(a1 + 336));
    if (v7)
    {
      v8 = v7;
      BytePtr = CFDataGetBytePtr(v7);
      Length = CFDataGetLength(v8);
      fwrite(BytePtr, Length, 1uLL, *(a1 + 424));
      CFRelease(v8);
    }

    result = fclose(*(a1 + 424));
    *(a1 + 424) = 0;
  }

  v11 = *(a1 + 504);
  if (v11)
  {
    result = v11(a1, *(a1 + 576));
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void mmcs_http_reset_response_state_for_background_retry(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"http context %p", a1);
    v4 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v16 = v3;
      _os_log_impl(&dword_2577D8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  v5 = *(a1 + 432);
  if (v5)
  {
    fclose(v5);
    *(a1 + 432) = 0;
  }

  *(a1 + 120) = 0;
  metricsinfo__clear_start_name_resolution(a1 + 24);
  metricsinfo__clear_stop_name_resolution(a1 + 24);
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  metricsinfo__clear_timed_out(a1 + 24);
  *(a1 + 56) = 0;
  metricsinfo__clear_http_status(a1 + 24);
  v6 = *(a1 + 488);
  if (v6)
  {
    mmcs_metrics_http_info_release(v6);
    *(a1 + 488) = 0;
  }

  metricsinfo__clear_response_size(a1 + 24);
  *(a1 + 144) = 0;
  metricsinfo__clear_bytes_written(a1 + 24);
  *(a1 + 312) = 0;
  metricsinfo__clear_last_send_time(a1 + 24);
  metricsinfo__clear_bytes_read(a1 + 24);
  v7 = *(a1 + 408);
  if (v7)
  {
    CFDataSetLength(v7, 0);
  }

  v8 = *(a1 + 432);
  if (v8)
  {
    fclose(v8);
    *(a1 + 432) = 0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  *(a1 + 80) = Current;
  *(a1 + 312) = Current;
  *(a1 + 320) = Current;
  *(a1 + 280) = Current;
  v10 = *(a1 + 328);
  if (v10)
  {
    CFRelease(v10);
  }

  *(a1 + 328) = 0;
  v11 = *(a1 + 392);
  if (v11)
  {
    CFRelease(v11);
  }

  *(a1 + 392) = 0;
  v12 = *(a1 + 464);
  if (v12)
  {
    free(v12);
  }

  *(a1 + 464) = 0;
  v13 = *(a1 + 472);
  if (v13)
  {
    free(v13);
  }

  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  v14 = *MEMORY[0x277D85DE8];
}

size_t mmcs_http_write_request_body(uint64_t a1, const void *a2, uint64_t a3)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 584), &state);
  v6 = callbacks[15 * *(a1 + 16) + 7];
  if (v6)
  {
    v7 = v6(a1, a2, a3);
    v8 = v7;
    if (v7 >= 1)
    {
      *(a1 + 144) += v7;
      Current = CFAbsoluteTimeGetCurrent();
      if (*(a1 + 552))
      {
        memset(v12, 0, sizeof(v12));
        mmcs_network_activity_make(v8, 0, v12, *(a1 + 312), Current);
        (*(a1 + 552))(a1, v12, *(a1 + 576));
      }

      *(a1 + 312) = Current;
      v10 = *(a1 + 424);
      if (v10)
      {
        fwrite(a2, v8, 1uLL, v10);
      }
    }
  }

  else
  {
    v8 = -1;
  }

  os_activity_scope_leave(&state);
  return v8;
}

void mmcs_http_set_request_body_done(uint64_t a1)
{
  v4.opaque[0] = 0;
  v4.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 584), &v4);
  v2 = *(a1 + 424);
  if (v2)
  {
    fclose(v2);
    *(a1 + 424) = 0;
  }

  *(a1 + 416) = 1;
  v3 = callbacks[15 * *(a1 + 16) + 8];
  if (v3)
  {
    v3(a1);
  }

  os_activity_scope_leave(&v4);
}

uint64_t mmcs_http_request_body_can_accept_data(uint64_t a1)
{
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 584), &v5);
  v2 = callbacks[15 * *(a1 + 16) + 9];
  if (v2)
  {
    v3 = v2(a1);
  }

  else
  {
    v3 = 0;
  }

  os_activity_scope_leave(&v5);
  return v3;
}

__CFHTTPMessage *create_http_protobuf_message(const __CFString *a1, const __CFString *a2, const __CFString *a3, const __CFString *a4, const __CFString *a5, const __CFURL *a6, const __CFData *a7)
{
  v28 = *MEMORY[0x277D85DE8];
  if (gMMCS_DebugLevel <= 4)
  {
    v16 = *MEMORY[0x277CBECE8];
  }

  else
  {
    v14 = mmcs_logging_logger_default();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
    v16 = *MEMORY[0x277CBECE8];
    if (v15)
    {
      v17 = CFStringCreateWithFormat(v16, 0, @"url: %@", a6);
      v18 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v17;
        _os_log_impl(&dword_2577D8000, v18, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v17)
      {
        CFRelease(v17);
      }
    }
  }

  Request = CFHTTPMessageCreateRequest(v16, @"POST", a6, *MEMORY[0x277CBAD00]);
  v20 = Request;
  if (Request)
  {
    CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Type", @"application/vnd.com.apple.me.ubchunk+protobuf");
    CFHTTPMessageSetHeaderFieldValue(v20, @"Accept", @"application/vnd.com.apple.me.ubchunk+protobuf");
    CFHTTPMessageSetHeaderFieldValue(v20, @"x-apple-mmcs-proto-version", a1);
    CFHTTPMessageSetHeaderFieldValue(v20, @"x-mme-client-info", a2);
    CFHTTPMessageSetHeaderFieldValue(v20, @"x-apple-mmcs-dataclass", a3);
    value = 0;
    *buf = 0;
    mmcs_report_copy_plist_header_values(buf, &value);
    if (*buf)
    {
      CFHTTPMessageSetHeaderFieldValue(v20, @"x-apple-mmcs-plist-version", *buf);
      if (*buf)
      {
        CFRelease(*buf);
      }

      *buf = 0;
    }

    if (value)
    {
      CFHTTPMessageSetHeaderFieldValue(v20, @"x-apple-mmcs-plist-sha256", value);
      if (value)
      {
        CFRelease(value);
      }

      value = 0;
    }

    if (a4)
    {
      CFHTTPMessageSetHeaderFieldValue(v20, @"x-apple-mme-dsid", a4);
    }

    if (a5)
    {
      CFHTTPMessageSetHeaderFieldValue(v20, @"x-apple-caller-request-uuid", a5);
    }

    CFHTTPMessageSetBody(v20, a7);
  }

  else
  {
    v21 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = CFStringCreateWithFormat(v16, 0, @"Failed creating request to %@", a6);
      v23 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v22;
        _os_log_impl(&dword_2577D8000, v23, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v22)
      {
        CFRelease(v22);
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v20;
}

double mmcs_http_context_elapsed_seconds(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 128);
  v4 = v2 < v1 || v2 == 0.0 || v1 == 0.0;
  result = v2 - v1;
  if (v4)
  {
    return 0.0;
  }

  return result;
}

double mmcs_http_context_enqueued_seconds(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 232);
  if (*(a1 + 248))
  {
    if (v1)
    {
      v2 = *(a1 + 240);
    }

    else
    {
      v2 = *(a1 + 80);
      if (v2 == 0.0)
      {
        v3 = 0.0;
        goto LABEL_16;
      }
    }

    v3 = v2 - *(a1 + 256);
  }

  else
  {
    v3 = 0.0;
    if (!v1)
    {
      goto LABEL_16;
    }

    v4 = *(a1 + 80);
    if (v4 == 0.0)
    {
      goto LABEL_16;
    }

    v3 = *(a1 + 240) - v4;
  }

  if (v3 < 0.0)
  {
    v5 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"ignoring enqueued duration of %lf", *&v3);
      v7 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v11 = v6;
        _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

LABEL_16:
  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

void mmcs_http_context_name_resolution_seconds(uint64_t a1)
{
  if (*(a1 + 88))
  {
    if (*(a1 + 104))
    {
      metricsinfo__get_start_name_resolution(a1 + 24);
      metricsinfo__get_stop_name_resolution(a1 + 24);
    }
  }
}

__CFString *mmcs_http_context_class_description(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 3)
  {
    return @"unknown mmcs_http_class";
  }

  else
  {
    return off_279845628[v1];
  }
}

void mmcs_http_context_append_description(uint64_t a1)
{
  v2 = *a1;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(v2 + 584), &state);
  v3 = *(a1 + 16);
  v15 = *a1;
  v16 = v3;
  v17 = *(a1 + 32);
  *(&v16 + 1) = *(&v3 + 1) + 1;
  if (!*(v2 + 56))
  {
    mmcs_op_requestor_context_indent(a1);
    v4 = *(v2 + 16);
    if (v4 > 3)
    {
      v5 = @"unknown mmcs_http_class";
    }

    else
    {
      v5 = off_279845628[v4];
    }

    CFStringAppendFormat(*(a1 + 16), 0, @"<%@ %p>", v5, v2, v15, v16, v17);
    v6 = *(a1 + 16);
    v7 = *(v2 + 336);
    if (v7)
    {
      v8 = CFHTTPMessageCopyRequestURL(v7);
      if (v8)
      {
        v9 = v8;
        v10 = CFURLGetString(v8);
        if (v10)
        {
          CFStringAppend(v6, v10);
        }

        CFRelease(v9);
      }
    }

    mmcs_http_request_options_append_description(*(v2 + 368), v6);
    v11 = *(v2 + 368);
    if (v11 && mmcs_http_request_options_is_background(v11))
    {
      CFStringAppendFormat(v6, 0, @" sendSize=%llu, receiveSize=%llu", *(v2 + 352), *(v2 + 360));
    }

    v12 = *(v2 + 296);
    if (v12 > 3)
    {
      v13 = @"meandering";
    }

    else
    {
      v13 = streamStatusString[v12];
    }

    CFStringAppendFormat(v6, 0, @" streamState=%@", v13);
    CFStringAppend(*(a1 + 16), @"\n");
    v14 = callbacks[15 * *(v2 + 16) + 2];
    if (v14)
    {
      v14(&v15);
    }
  }

  os_activity_scope_leave(&state);
}

CFStringRef mmcs_http_context_copy_blocked_application_header_value(uint64_t a1)
{
  v1 = *(a1 + 392);
  if (!v1)
  {
    return 0;
  }

  v2 = CFHTTPMessageCopyAllHeaderFields(v1);
  Value = CFDictionaryGetValue(v2, @"x-apple-mmcs-blocked-apps");
  if (Value)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x277CBECE8], Value);
    if (!v2)
    {
      return Copy;
    }

    goto LABEL_7;
  }

  Copy = 0;
  if (v2)
  {
LABEL_7:
    CFRelease(v2);
  }

  return Copy;
}

const void *mmcs_index_set_create_with_string(const __CFString *a1)
{
  v10 = 0;
  if (!mmcs_index_set_create(&v10))
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  if (Length < 1)
  {
    v4 = 0;
    v7 = -1;
LABEL_14:
    v8 = token(v10, a1, v4, v7, Length);
    result = v10;
    if (v8 || !v10)
    {
      return result;
    }

LABEL_18:
    C3BaseRelease(result);
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = -1;
  while (1)
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(a1, v3);
    if (CharacterAtIndex == 45)
    {
      break;
    }

    if (CharacterAtIndex == 44)
    {
      if (!token(v10, a1, v4, v5, v3))
      {
        goto LABEL_17;
      }

      v4 = v3 + 1;
      v7 = -1;
    }

    else
    {
      v7 = v5;
    }

LABEL_11:
    ++v3;
    v5 = v7;
    if (Length == v3)
    {
      goto LABEL_14;
    }
  }

  v7 = v3;
  if (v5 < 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  result = v10;
  if (v10)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t token(uint64_t a1, const __CFString *a2, CFIndex a3, uint64_t a4, uint64_t a5)
{
  v5 = a5 - a3;
  if (a5 - a3 >= 3)
  {
    v11 = CFLocaleCreate(0, @"en_US");
    if (v11)
    {
      v12 = v11;
      v13 = *MEMORY[0x277CBECE8];
      v14 = CFNumberFormatterCreate(*MEMORY[0x277CBECE8], v11, kCFNumberFormatterNoStyle);
      if (!v14)
      {
        v20 = 0;
LABEL_31:
        CFRelease(v12);
        return v20;
      }

      v15 = v14;
      if (a4 < 0)
      {
        rangep.location = a3;
        rangep.length = v5;
        v21 = CFNumberFormatterCreateNumberFromString(v13, v14, a2, &rangep, 1uLL);
        LODWORD(valuePtr.location) = -1;
        if (v21)
        {
          v22 = v21;
          CFNumberGetValue(v21, kCFNumberSInt32Type, &valuePtr);
          if ((LODWORD(valuePtr.location) - 100) > 0x383)
          {
            v20 = 0;
          }

          else
          {
            mmcs_index_set_add_index(a1, valuePtr.location);
            v20 = 1;
          }

          v24 = v22;
          goto LABEL_29;
        }

        v20 = 0;
LABEL_30:
        CFRelease(v15);
        goto LABEL_31;
      }

      rangep.location = a3;
      rangep.length = a4 - a3;
      valuePtr.location = a4 + 1;
      valuePtr.length = a5 - (a4 + 1);
      v26 = -1;
      v27 = -1;
      v16 = CFNumberFormatterCreateNumberFromString(v13, v14, a2, &rangep, 1uLL);
      v17 = CFNumberFormatterCreateNumberFromString(v13, v15, a2, &valuePtr, 1uLL);
      v18 = v17;
      if (v16)
      {
        v19 = v17 == 0;
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
        v20 = 0;
        if (!v16)
        {
LABEL_24:
          if (v18)
          {
            v24 = v18;
LABEL_29:
            CFRelease(v24);
            goto LABEL_30;
          }

          goto LABEL_30;
        }
      }

      else
      {
        Value = CFNumberGetValue(v16, kCFNumberSInt32Type, &v27);
        if (Value && CFNumberGetValue(v18, kCFNumberSInt32Type, &v26))
        {
          v20 = 0;
          if (v27 >= 100 && v26 <= 999)
          {
            mmcs_index_set_add_range(a1, v27, v26);
            v20 = 1;
          }
        }

        else
        {
          v20 = 0;
        }
      }

      CFRelease(v16);
      goto LABEL_24;
    }
  }

  return 0;
}

uint64_t mmcs_file_extents(const char *a1, off_t *a2, void *a3, void *a4, void *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = open(a1, 0, 0);
  if (v9 < 0)
  {
    v11 = 0xFFFFFFFFLL;
  }

  else
  {
    v10 = v9;
    memset(v20, 0, 20);
    bzero(&v21, 0x878uLL);
    memset(&v19, 0, sizeof(v19));
    if (!fstatfs(v10, &v21) && !fstat(v10, &v19))
    {
      st_size = v19.st_size;
      if (v19.st_size)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          *(v20 + 4) = st_size;
          *(&v20[1] + 4) = v17;
          if (fcntl(v10, 65, v20) == -1)
          {
            break;
          }

          f_bsize = v21.f_bsize;
          v17 += *(v20 + 4);
          v16 += (*(v20 + 4) + (v21.f_bsize - 1)) / v21.f_bsize;
          ++v15;
          st_size -= *(v20 + 4);
          if (!st_size)
          {
            if (a2)
            {
              *a2 = v19.st_size;
            }

            if (a4)
            {
              *a4 = f_bsize;
            }

            if (a3)
            {
              *a3 = v16;
            }

            v11 = 0;
            if (a5)
            {
              *a5 = v15;
            }

            goto LABEL_5;
          }
        }
      }
    }

    v11 = 0xFFFFFFFFLL;
LABEL_5:
    close(v10);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mmcs_item_init(uint64_t a1, uint64_t a2, unsigned __int8 *a3, const char *a4, uint64_t a5, uint64_t a6, CFErrorRef *a7, uint64_t a8)
{
  v34 = *MEMORY[0x277D85DE8];
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = a2;
  if (!a3)
  {
    if (a7)
    {
      LOBYTE(v30) = a2;
      v13 = @"NULL signature for item %lld";
      goto LABEL_8;
    }

    goto LABEL_31;
  }

  v10 = a5;
  if ((a5 & 1) == 0 || *a3 != 129)
  {
    v18 = mmcs_file_signature_copy(a3);
    *a1 = v18;
    if (v18)
    {
      if (!a4 || (v19 = strdup(a4), (*(a1 + 8) = v19) != 0))
      {
        *(a1 + 16) = -1;
        *(a1 + 32) = v10;
        *(a1 + 272) = 0;
        *(a1 + 392) = 0;
        v20 = *MEMORY[0x277CBECE8];
        *(a1 + 280) = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &chunkReferenceSignatureEqualitySetCallbacks);
        *(a1 + 232) = 0;
        *(a1 + 256) = 0;
        *(a1 + 264) = 0;
        *(a1 + 296) = 0;
        *(a1 + 304) = 0;
        *(a1 + 160) = a6;
        if (a6 == 2)
        {
          *(a1 + 172) = 1;
          goto LABEL_20;
        }

        if (a6 == 1)
        {
          *(a1 + 164) = 1;
LABEL_20:
          result = 1;
          goto LABEL_32;
        }

        v21 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v27 = CFStringCreateWithFormat(v20, 0, @"Invalid operation type %d", a6);
          v28 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v33 = v27;
            _os_log_impl(&dword_2577D8000, v28, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v27)
          {
            CFRelease(v27);
          }
        }

        if (a7)
        {
          v31 = *(a1 + 40);
          v15 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Invalid operation type (%d) for item %lld", v22, v23, v24, v25, v26, *(a1 + 160));
          goto LABEL_10;
        }

LABEL_31:
        result = 0;
        goto LABEL_32;
      }

      if (!a7)
      {
        goto LABEL_31;
      }

      v30 = *(a1 + 40);
      v13 = @"Unable to allocate token for item %lld";
    }

    else
    {
      if (!a7)
      {
        goto LABEL_31;
      }

      v30 = *(a1 + 40);
      v13 = @"Unable to allocate signature for item %lld";
    }

    v14 = 37;
    goto LABEL_9;
  }

  if (!a7)
  {
    goto LABEL_31;
  }

  LOBYTE(v30) = a2;
  v13 = @"signature for item %lld requires the item to be put unencrypted";
LABEL_8:
  v14 = 40;
LABEL_9:
  v15 = mmcs_cferror_create_with_format(@"com.apple.mmcs", v14, v13, a4, a5, a6, a7, a8, v30);
LABEL_10:
  v16 = v15;
  result = 0;
  *a7 = v16;
LABEL_32:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mmcs_item_set_chunk_instance_capacity(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 272))
  {
    return 0;
  }

  *(a1 + 136) = a2;
  if (!is_mul_ok(a2, 0x68uLL))
  {
    return 0;
  }

  v4 = malloc_type_calloc(1uLL, 104 * a2, 0x1060040917B5EB5uLL);
  *(a1 + 272) = v4;
  return v4 != 0;
}

void mmcs_item_set_section_identifier(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 336);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 336) = 0;
    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 336) = cf;
  }
}

void mmcs_item_finalize(uint64_t a1)
{
  mmcs_wrapping_state_set_reference_signature_and_object(a1 + 48, 0, 0);
  mmcs_wrapping_state_set_reference_signature_and_object(a1 + 64, 0, 0);
  v2 = *(a1 + 200);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 200) = 0;
  }

  *(a1 + 352) = 0;
  v3 = *(a1 + 80);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 80) = 0;
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 88) = 0;
  }

  v5 = *(a1 + 112);
  if (v5)
  {
    CFRelease(v5);
  }

  *(a1 + 112) = 0;
  v6 = *(a1 + 120);
  if (v6)
  {
    CFRelease(v6);
  }

  *(a1 + 120) = 0;
  v7 = *(a1 + 208);
  if (v7)
  {
    CFRelease(v7);
  }

  *(a1 + 208) = 0;
  v8 = *(a1 + 280);
  if (v8)
  {
    CFRelease(v8);
  }

  *(a1 + 280) = 0;
  v9 = *(a1 + 288);
  if (v9)
  {
    CFRelease(v9);
  }

  *(a1 + 288) = 0;
  v10 = *(a1 + 184);
  if (v10)
  {
    CFRelease(v10);
  }

  *(a1 + 184) = 0;
  v11 = *(a1 + 224);
  if (v11)
  {
    CFRelease(v11);
  }

  *(a1 + 224) = 0;
  v12 = *(a1 + 336);
  if (v12)
  {
    CFRelease(v12);
  }

  *(a1 + 336) = 0;
  v13 = *(a1 + 240);
  if (v13)
  {
    CFRelease(v13);
  }

  *(a1 + 240) = 0;
  v14 = *(a1 + 192);
  if (v14)
  {
    CFRelease(v14);
  }

  *(a1 + 192) = 0;
  v15 = *(a1 + 360);
  if (v15)
  {
    CFRelease(v15);
  }

  *(a1 + 360) = 0;
  v16 = *(a1 + 368);
  if (v16)
  {
    C3BaseRelease(v16);
  }

  *(a1 + 368) = 0;
  v17 = *(a1 + 400);
  if (v17)
  {
    CFRelease(v17);
  }

  *(a1 + 400) = 0;
  v18 = *(a1 + 272);
  if (v18)
  {
    free(v18);
  }

  *(a1 + 272) = 0;
  if (*a1)
  {
    free(*a1);
  }

  *a1 = 0;
  v19 = *(a1 + 8);
  if (v19)
  {
    free(v19);
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 128);
  if (v20)
  {
    free(v20);
  }

  *(a1 + 128) = 0;
}

void mmcs_item_set_MIME_type(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 200);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 200) = cf;
    if (cf)
    {

      CFRetain(cf);
    }
  }
}

void mmcs_item_set_boundary_key(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 80);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 80) = 0;
    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 80) = cf;
  }
}

void mmcs_item_set_file_verification_key(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 88);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 88) = 0;
    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 88) = cf;
  }
}

CFStringRef mmcs_item_copy_description(uint64_t a1)
{
  v2 = mmcs_file_signature_to_hexstring(*a1);
  v3 = *(a1 + 400);
  if (v3)
  {
    BytePtr = CFDataGetBytePtr(v3);
    v5 = mmcs_file_signature_to_hexstring(BytePtr);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 48);
  v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"<req_item %p> id:%lld sig:%s rsig:%s roff:%lld rlen:%lld wrap ref:%@ unwrap ref:%@ chunks:%lld", a1, *(a1 + 40), v2, v5, *(a1 + 376), *(a1 + 384), *(a1 + 64), v6, *(a1 + 144));
  if (v2)
  {
    free(v2);
  }

  if (v5)
  {
    free(v5);
  }

  return v7;
}

void mmcs_item_items_by_signature_description(uint64_t a1, CFArrayRef theArray, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a3 == 2)
  {
    v4 = mmcs_file_signature_to_hexstring(*a1);
    CStringDescription = XCFDataCreateCStringDescription(*(a1 + 64));
    v6 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 336);
      *v10 = 138543874;
      *&v10[4] = v7;
      v11 = 2082;
      v12 = v4;
      v13 = 2082;
      v14 = CStringDescription;
      _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_INFO, "sectionId:%{public}@ sig:%{public}s ref:%{public}s", v10, 0x20u);
    }

    if (v4)
    {
      free(v4);
    }

    if (CStringDescription)
    {
      free(CStringDescription);
    }
  }

  else
  {
    *v10 = a3;
    v16.length = CFArrayGetCount(theArray);
    v16.location = 0;
    CFArrayApplyFunction(theArray, v16, _item_by_signature_description, v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void _item_by_signature_description(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(a1 + 384))
  {
    v3 = *(a1 + 400);
    if (v3)
    {
      BytePtr = CFDataGetBytePtr(v3);
      CStringDescription = mmcs_file_signature_to_hexstring(BytePtr);
    }

    else
    {
      CStringDescription = 0;
    }

    v11 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 40);
      v13 = *(a1 + 376);
      v14 = *(a1 + 384);
      v16 = 134218754;
      v17 = v12;
      v18 = 2080;
      v19 = CStringDescription;
      v20 = 2048;
      v21 = v13;
      v22 = 2048;
      v23 = v14;
      _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_INFO, "itemId:%llu rsig:%s itemOffset:%lld itemLength:%lld", &v16, 0x2Au);
    }
  }

  else
  {
    v7 = mmcs_file_signature_to_hexstring(*a1);
    v8 = 64;
    if (*a2 == 3)
    {
      v8 = 48;
    }

    CStringDescription = XCFDataCreateCStringDescription(*(a1 + v8));
    v9 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 40);
      v16 = 134218498;
      v17 = v10;
      v18 = 2082;
      v19 = v7;
      v20 = 2082;
      v21 = CStringDescription;
      _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_INFO, "itemId:%llu sig:%{public}s ref:%{public}s", &v16, 0x20u);
    }

    if (v7)
    {
      free(v7);
    }
  }

  if (CStringDescription)
  {
    free(CStringDescription);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t mmcs_item_signature_reference_equals(uint64_t *a1, uint64_t *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1)
  {
    if (a2)
    {
      v5 = *a1;
      v6 = *a2;
      result = CKFileSignaturesEqual();
      if (result)
      {
        result = XCFSafelyEquals(a1[8], a2[8]);
        if (result)
        {
          return XCFSafelyEquals(a1[6], a2[6]);
        }
      }
    }
  }

  return result;
}

unint64_t mmcs_item_signature_reference_hash(uint64_t **a1)
{
  v2 = **a1;
  v3 = XCFSafelyHash(a1[8]);
  return v3 ^ XCFSafelyHash(a1[6]) ^ v2;
}

void mmcs_item_set_size(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a2 < 0)
    {
      v4 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Item size must not be negative (itemid: %lld size: %lld)!\n", *(a1 + 40), a2);
        v6 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v9 = v5;
          _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v5)
        {
          CFRelease(v5);
        }
      }
    }

    else
    {
      *(a1 + 16) = a2;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void mmcs_item_set_padded_size(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a2 < 0)
    {
      v4 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Item padded size must not be negative (itemid: %lld size: %lld)!\n", *(a1 + 40), a2);
        v6 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v9 = v5;
          _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v5)
        {
          CFRelease(v5);
        }
      }
    }

    else
    {
      *(a1 + 24) = a2;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t mmcs_item_is_encrypted(char **a1)
{
  if (**a1 < 0)
  {
    return 0;
  }

  else
  {
    return a1[4] & 1;
  }
}

void mmcs_item_set_put_receipt_with_expiry_time(uint64_t a1, CFTypeRef cf, double a3)
{
  v5 = *(a1 + 224);
  if (v5 != cf)
  {
    if (v5)
    {
      CFRelease(v5);
    }

    *(a1 + 224) = 0;
    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 224) = cf;
  }

  *(a1 + 232) = a3;
}

void mmcs_wrapping_state_set_reference_signature_and_object(uint64_t a1, CFTypeRef cf, CFTypeRef a3)
{
  v5 = *a1;
  if (v5 != cf)
  {
    if (v5)
    {
      CFRelease(v5);
    }

    *a1 = 0;
    if (cf)
    {
      CFRetain(cf);
    }

    *a1 = cf;
  }

  v7 = *(a1 + 8);
  if (v7 != a3)
  {
    if (v7)
    {
      CFRelease(v7);
    }

    *(a1 + 8) = 0;
    if (a3)
    {
      CFRetain(a3);
    }

    *(a1 + 8) = a3;
  }
}

uint64_t mmcs_wrapping_state_is_equal(const void **a1, const void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == v3)
  {
    return 1;
  }

  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return CFEqual(v2, v3);
  }
}

const void *mmcs_wrapping_state_hash(const void **a1)
{
  result = *a1;
  if (result)
  {
    return CFHash(result);
  }

  return result;
}

void mmcs_item_set_server_error(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 240);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 240) = 0;
    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 240) = cf;
  }
}

uint64_t mmcs_item_add_outstanding_chunk_reference(uint64_t a1, void *a2)
{
  if (CFSetContainsValue(*(a1 + 280), a2))
  {
    return 0;
  }

  v5 = *(a1 + 296) + *(a2[6] + 64);
  *(a1 + 296) = v5;
  *(a1 + 304) = v5;
  CFSetSetValue(*(a1 + 280), a2);
  return 1;
}

void mmcs_item_append_put_container_error(uint64_t a1, void *value)
{
  Mutable = *(a1 + 184);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    *(a1 + 184) = Mutable;
  }

  CFArrayAppendValue(Mutable, value);
}

void mmcs_item_update_get_progress(uint64_t a1, unint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (gMMCS_DebugLevel >= 5)
  {
    v4 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Item %p received %llu bytes\n", a1, a2);
      v6 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v18 = v5;
        _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }
  }

  v7 = *(a1 + 304);
  v8 = v7 >= a2;
  v9 = v7 - a2;
  if (!v8)
  {
    v10 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"outstandingChunkReferencesPlaintextSizeRequested underflow averted\n");
      v12 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v18 = v11;
        _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }

    v9 = 0;
  }

  *(a1 + 304) = v9;
  v13 = *(a1 + 296);
  v14 = v13 - v9;
  if (v14 < 0.0)
  {
    v14 = 0.0;
  }

  v15 = v14 / v13;
  if (v15 > 1.0)
  {
    v15 = 1.0;
  }

  mmcs_get_item_progress_make_state_progress(3, buf, v15);
  mmcs_item_set_get_progress(a1, buf, 0, 0);
  v16 = *MEMORY[0x277D85DE8];
}

void mmcs_item_set_get_progress(uint64_t a1, double *a2, BOOL *a3, char *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v8 = *(a1 + 172);
  v9 = *a2;
  if (*a2 >= v8)
  {
    if (v8 != 5)
    {
      if (v8 == v9)
      {
        v13 = *(a1 + 248) != a2[1] || !*(a1 + 192) && *(a2 + 2);
        v14 = 0;
        *(a1 + 328) = MMCSGetItemStateIsDeterminant(v8);
      }

      else
      {
        if (v9 == 5)
        {
          *(a1 + 176) = v8;
          v14 = 1;
        }

        else
        {
          v14 = 0;
        }

        *(a1 + 172) = v9;
        *(a1 + 328) = 0;
        v13 = 1;
      }

      *(a1 + 248) = a2[1];
      if (!*(a1 + 192))
      {
        v16 = *(a2 + 2);
        if (v16)
        {
          *(a1 + 192) = CFRetain(v16);
          v17 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = *(a1 + 40);
            v19 = MMCSPutItemStateCString(*(a1 + 168));
            *buf = 134218242;
            v23 = v18;
            v24 = 2082;
            v25 = v19;
            _os_log_impl(&dword_2577D8000, v17, OS_LOG_TYPE_INFO, "Item issue. itemId:%llu state:%{public}s", buf, 0x16u);
          }

          v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"itemId:%llu issue", *(a1 + 40));
          v21 = mmcs_logging_logger_default();
          XCFPrint(v21, v20, *(a1 + 192));
          if (v20)
          {
            CFRelease(v20);
          }
        }
      }

      if (a3)
      {
        *a3 = v13;
      }

      if (a4)
      {
        *a4 = v14;
      }
    }
  }

  else
  {
    v10 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid item state transition %d to %d\n", *(a1 + 172), *a2);
      v12 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v23 = v11;
        _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void mmcs_item_update_get_unprogress(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (gMMCS_DebugLevel >= 5)
  {
    v4 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Item %p unhandling %llu bytes\n", a1, a2);
      v6 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v13 = v5;
        _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }
  }

  v7 = *(a1 + 304) + a2;
  *(a1 + 304) = v7;
  v8 = *(a1 + 296);
  v9 = v8 - v7;
  if (v9 < 0.0)
  {
    v9 = 0.0;
  }

  v10 = v9 / v8;
  if (v10 > 1.0)
  {
    v10 = 1.0;
  }

  mmcs_get_item_progress_make_state_progress(3, buf, v10);
  mmcs_item_set_get_progress(a1, buf, 0, 0);
  v11 = *MEMORY[0x277D85DE8];
}

void mmcs_item_update_get_derivative_progress(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 312);
  v4 = *(a1 + 320) + a2;
  *(a1 + 320) = v4;
  if (v4 >= v3)
  {
    v5 = 0.9;
  }

  else
  {
    v5 = v4 / v3 * 0.9;
  }

  mmcs_get_item_progress_make_state_progress(3, v6, v5);
  mmcs_item_set_get_progress(a1, v6, 0, 0);
}

void mmcs_item_update_unget_derivative_progress(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 312);
  v4 = *(a1 + 320);
  v5 = v4 >= a2;
  v6 = v4 - a2;
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 320) = v7;
  if (v7 >= v3)
  {
    v8 = 0.9;
  }

  else
  {
    v8 = v7 / v3 * 0.9;
  }

  mmcs_get_item_progress_make_state_progress(3, v9, v8);
  mmcs_item_set_get_progress(a1, v9, 0, 0);
}

uint64_t mmcs_item_remove_outstanding_chunk_reference(uint64_t a1, const void *a2)
{
  result = CFSetContainsValue(*(a1 + 280), a2);
  if (result)
  {
    CFSetRemoveValue(*(a1 + 280), a2);
    return 1;
  }

  return result;
}

void mmcs_item_chunk_instance_was_read(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 160) == 1 && (*(a1 + 164) - 3) <= 1)
  {
    v5 = *(a1 + 304);
    v6 = v5 >= a3;
    v7 = v5 - a3;
    if (!v6)
    {
      v8 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"outstandingChunkReferencesPlaintextSizeRequested underflow averted\n");
        v10 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v17 = 138543362;
          v18 = v9;
          _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_ERROR, "%{public}@", &v17, 0xCu);
        }

        if (v9)
        {
          CFRelease(v9);
        }
      }

      v7 = 0;
    }

    *(a1 + 304) = v7;
    v11 = *(a1 + 296);
    v12 = v11 - v7;
    if (v12 < 0.0)
    {
      v12 = 0.0;
    }

    v13 = v12 / v11;
    if (v13 > 1.0)
    {
      v13 = 1.0;
    }

    v14 = *a1;
    v15 = *(a1 + 64);
    mmcs_put_item_progress_make_state_progress(4, &v17, v13);
    mmcs_put_request_set_progress_for_items_with_signature_reference(a2, v14, v15, &v17);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void mmcs_item_chunk_instance_was_unread(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 160) == 1 && *(a1 + 164) == 4)
  {
    v5 = *(a1 + 296);
    v6 = *(a1 + 304) + a3;
    *(a1 + 304) = v6;
    if (v5 < v6)
    {
      v7 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"outstandingChunkReferencesPlaintextSizeRequested overflow averted\n");
        v9 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v15 = 138543362;
          v16 = v8;
          _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_ERROR, "%{public}@", &v15, 0xCu);
        }

        if (v8)
        {
          CFRelease(v8);
        }
      }

      v6 = *(a1 + 296);
      *(a1 + 304) = v6;
      v5 = v6;
    }

    v10 = v5 - v6;
    if (v10 < 0.0)
    {
      v10 = 0.0;
    }

    v11 = v10 / v5;
    if (v11 > 1.0)
    {
      v11 = 1.0;
    }

    v12 = *a1;
    v13 = *(a1 + 64);
    mmcs_put_item_progress_make_state_progress(4, &v15, v11);
    mmcs_put_request_set_progress_for_items_with_signature_reference(a2, v12, v13, &v15);
  }

  v14 = *MEMORY[0x277D85DE8];
}

BOOL mmcs_item_copy_chunk_instances_from_item(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a1 + 400))
  {
    *(a1 + 392) = 1;
    v4 = mmcs_item_calculate_chunks_in_requested_range(a2, a1);
    start_chunk_index_for_inner_item = mmcs_item_get_start_chunk_index_for_inner_item(a2, a1);
  }

  else
  {
    start_chunk_index_for_inner_item = 0;
    v4 = *(a2 + 144);
  }

  if (mmcs_item_set_chunk_instance_capacity(a1, v4))
  {
    if (*(a1 + 144))
    {
      mmcs_item_copy_chunk_instances_from_item_cold_1();
    }

    if (v4)
    {
      v6 = 0;
      v7 = *MEMORY[0x277CBED28];
      v8 = 104 * start_chunk_index_for_inner_item;
      do
      {
        v9 = *(a2 + 272);
        if (*(v9 + v8 + 8) != a2)
        {
          mmcs_item_copy_chunk_instances_from_item_cold_2();
        }

        v10 = *(a1 + 144);
        v11 = *(a1 + 272) + 104 * v10;
        if (*(v11 + 72))
        {
          mmcs_item_copy_chunk_instances_from_item_cold_3();
        }

        if (!*(a1 + 400) && v6 != *(v9 + v8 + 32))
        {
          mmcs_item_copy_chunk_instances_from_item_cold_4();
        }

        v12 = v9 + v8;
        mmcs_chunk_instance_init_with_source_instance(*(a1 + 272) + 104 * v10, v9 + v8, *(v9 + v8 + 56), v6, *(v9 + v8 + 24), a1);
        mmcs_chunk_reference_add_instance(*(v12 + 56), v11);
        ++*(a1 + 144);
        mmcs_item_add_outstanding_chunk_reference(a1, *(v11 + 56));
        *(v11 + 72) = v7;
        ++*(a1 + 152);
        v6 += *(*(v12 + 56) + 4);
        v8 += 104;
        --v4;
      }

      while (v4);
    }

    result = 1;
  }

  else
  {
    v14 = mmcs_logging_logger_default();
    result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Failed to set chunk instance capacity for item %lld\n", *(a1 + 40));
      v16 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = v15;
        _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v15)
      {
        CFRelease(v15);
      }

      result = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mmcs_item_calculate_chunks_in_requested_range(uint64_t a1, void *a2)
{
  v2 = a2[48];
  if (!v2)
  {
    mmcs_item_calculate_chunks_in_requested_range_cold_3();
  }

  if (!a2[50])
  {
    mmcs_item_calculate_chunks_in_requested_range_cold_2();
  }

  if (!*(a1 + 144))
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = a2[47] + v2;
  v10 = 56;
  do
  {
    v11 = *(a1 + 272);
    if (!mmcs_chunk_instance_is_chunk_reference((v11 + v10 - 56)))
    {
      mmcs_item_calculate_chunks_in_requested_range_cold_1();
    }

    v12 = v5 + *(*(v11 + v10) + 4);
    if (v12 <= a2[47] || v5 >= v9)
    {
      if (v8)
      {
        return v6;
      }
    }

    else
    {
      ++v6;
    }

    if (v12 >= v9)
    {
      v8 = 1;
    }

    ++v7;
    v10 += 104;
    v5 = v12;
  }

  while (v7 < *(a1 + 144));
  return v6;
}

uint64_t mmcs_item_get_start_chunk_index_for_inner_item(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 392))
  {
    mmcs_item_get_start_chunk_index_for_inner_item_cold_1();
  }

  if (!*(a2 + 392))
  {
    mmcs_item_get_start_chunk_index_for_inner_item_cold_5();
  }

  v2 = *(a1 + 136);
  if (!v2)
  {
LABEL_13:
    mmcs_item_get_start_chunk_index_for_inner_item_cold_4();
  }

  v3 = 0;
  v4 = 0;
  v5 = *(a2 + 376);
  v6 = *(a1 + 272) + 56;
  while (1)
  {
    if (*(v6 - 48) != a1)
    {
      mmcs_item_get_start_chunk_index_for_inner_item_cold_2();
    }

    if (!*(*v6 + 64))
    {
      mmcs_item_get_start_chunk_index_for_inner_item_cold_3();
    }

    v7 = v3 + *(*v6 + 4);
    if (v7 > v5 && v3 < *(a2 + 384) + v5)
    {
      return v4;
    }

    ++v4;
    v6 += 104;
    v3 = v7;
    if (v2 == v4)
    {
      goto LABEL_13;
    }
  }
}

uint64_t mmcs_item_copy_ford_state_from_item(void *a1, uint64_t a2)
{
  if (*(a2 + 392))
  {
    mmcs_item_copy_ford_state_from_item_cold_1();
  }

  if (!a1[50])
  {
    mmcs_item_set_file_verification_key(a1, *(a2 + 88));
  }

  v4 = *(a2 + 144);
  v5 = a1[50];
  if (v4 != a1[18])
  {
    if (!v5)
    {
      mmcs_item_copy_ford_state_from_item_cold_2();
    }

LABEL_9:
    result = mmcs_item_get_start_chunk_index_for_inner_item(a2, a1);
    v4 = a1[18];
    if (!v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v5)
  {
    goto LABEL_9;
  }

  result = 0;
  if (!v4)
  {
    return result;
  }

LABEL_10:
  v7 = 0;
  v8 = 0;
  v9 = *(a2 + 272) + 104 * result;
  do
  {
    if (*(v9 + v7 + 8) != a2)
    {
      mmcs_item_copy_ford_state_from_item_cold_3();
    }

    v10 = a1[34] + v7;
    if (*(v10 + 8) != a1)
    {
      mmcs_item_copy_ford_state_from_item_cold_4();
    }

    *(v10 + 32) = v8;
    v8 += *(*(v9 + v7 + 56) + 4);
    v7 += 104;
    --v4;
  }

  while (v4);
  return result;
}

char *mmcs_item_append_chunk_instance(char **a1, uint64_t a2, CFErrorRef *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *a3 = 0;
  }

  v6 = a1[18];
  if (v6 < a1[17])
  {
    v7 = *a1;
    v9 = (**a1 & 8) == 0 && (**a1 & 0x7F) != 4;
    if ((((**(a2 + 8) & 0x7F) == 4) ^ v9))
    {
      v10 = &a1[34][104 * v6];
      if (v6)
      {
        v11 = *(v10 - 9) + *(*(v10 - 6) + 4);
      }

      else
      {
        v11 = 0;
      }

      if (mmcs_chunk_instance_init(v10, a2, v11, v6, a1))
      {
        mmcs_chunk_reference_add_instance(a2, v10);
        ++a1[18];
        goto LABEL_32;
      }

      if (a3)
      {
        v20 = @"mmcs_chunk_instance_init";
        v21 = 37;
        goto LABEL_20;
      }
    }

    else if (a3)
    {
      v22 = mmcs_file_signature_to_hexstring(v7);
      v23 = mmcs_chunk_signature_to_hexstring(*(a2 + 8));
      *a3 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Observed inconsistent encryption type between item signature %s and chunk signature %s.", v24, v25, v26, v27, v28, v22);
      if (v22)
      {
        free(v22);
      }

      if (v23)
      {
        free(v23);
      }
    }

LABEL_31:
    v10 = 0;
    goto LABEL_32;
  }

  v12 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v18 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk instance overflow\n");
    v19 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v33 = v18;
      _os_log_impl(&dword_2577D8000, v19, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v18)
    {
      CFRelease(v18);
    }
  }

  if (!a3)
  {
    goto LABEL_31;
  }

  v31 = a1[17];
  v20 = @"Unable to append chunk instance; capacity %llu exceeded.";
  v21 = 6;
LABEL_20:
  v10 = 0;
  *a3 = mmcs_cferror_create_with_format(@"com.apple.mmcs", v21, v20, v13, v14, v15, v16, v17, v31);
LABEL_32:
  v29 = *MEMORY[0x277D85DE8];
  return v10;
}

void mmcs_item_setup_chunk_references(void *a1)
{
  if (!a1[19])
  {
    if (a1[18])
    {
      v2 = 0;
      v3 = 0;
      v17 = 0;
      v4 = 0;
      v5 = 0;
      v14 = a1[48] + a1[47];
      v15 = 0;
      v16 = *MEMORY[0x277CBED10];
      v6 = *MEMORY[0x277CBED28];
      do
      {
        v7 = a1[34];
        if (!mmcs_chunk_instance_is_chunk_reference((v7 + v2)))
        {
          mmcs_item_setup_chunk_references_cold_1();
        }

        v8 = *(v7 + v2 + 56);
        v9 = *(v8 + 4);
        if (a1[48])
        {
          if (a1[50])
          {
            *(v7 + v2 + 32) = 0;
            v10 = v16;
          }

          else
          {
            ++a1[19];
            v10 = v6;
          }

          *(v7 + v2 + 72) = v10;
          if (v5 + v9 > a1[47])
          {
            v11 = v17;
            if (!v3)
            {
              v11 = v5;
            }

            v17 = v11;
            if (v5 < v14)
            {
              mmcs_item_add_outstanding_chunk_reference(a1, v8);
              if (a1[50])
              {
                *(v7 + v2 + 72) = v6;
                ++a1[19];
                *(v7 + v2 + 32) = v15;
              }

              v15 += v9;
            }

            v3 = 1;
          }
        }

        else
        {
          mmcs_item_add_outstanding_chunk_reference(a1, v8);
          *(v7 + v2 + 72) = v6;
          ++a1[19];
        }

        ++v4;
        v2 += 104;
        v5 += v9;
      }

      while (v4 < a1[18]);
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    if (a1[50])
    {
      if (a1[47] != v17)
      {
        error = mmcs_cferror_create_error(@"com.apple.mmcs", 45, @"requestedFileOffset is expected to align with chunks when a signature is validated");
        mmcs_get_item_progress_make_done_error(error, v18);
      }

      if (a1[48] != v15)
      {
        v13 = mmcs_cferror_create_error(@"com.apple.mmcs", 45, @"requestedLengthAtFileOffset is expected to align with chunks when a signature is validated");
        mmcs_get_item_progress_make_done_error(v13, v18);
      }
    }

    else
    {
      a1[47] = v17;
      a1[48] = v15;
    }
  }
}

void mmcs_item_setup_item_size(uint64_t a1)
{
  if (*(a1 + 144))
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1 + 272);
      v6 = *(v5 + v2 + 72);
      if (!v6)
      {
        mmcs_item_setup_item_size_cold_1();
      }

      if (CFBooleanGetValue(v6))
      {
        v4 += *(*(v5 + v2 + 56) + 4);
      }

      ++v3;
      v2 += 104;
    }

    while (v3 < *(a1 + 144));
  }

  else
  {
    v4 = 0;
  }

  mmcs_item_set_size(a1, v4);
}

void mmcs_item_setup_item_padded_size(uint64_t a1)
{
  if (*(a1 + 144))
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1 + 272);
      v6 = *(v5 + v2 + 72);
      if (!v6)
      {
        mmcs_item_setup_item_padded_size_cold_1();
      }

      if (CFBooleanGetValue(v6))
      {
        v4 += *(v5 + v2 + 64);
      }

      ++v3;
      v2 += 104;
    }

    while (v3 < *(a1 + 144));
  }

  else
  {
    v4 = 0;
  }

  mmcs_item_set_padded_size(a1, v4);
}

const __CFBoolean *mmcs_item_get_default_reader_writer_sparse_aware(uint64_t a1)
{
  result = *(a1 + 352);
  if (result)
  {
    return (CFBooleanGetValue(result) != 0);
  }

  return result;
}

CFIndex mmcs_item_has_outstanding_chunk_references(uint64_t a1)
{
  result = CFSetGetCount(*(a1 + 280));
  if (result)
  {
    return *(a1 + 360) == 0;
  }

  return result;
}

void mmcs_item_set_get_chunk_references(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 288);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 288) = 0;
    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 288) = cf;
  }
}

void mmcs_item_add_get_chunk_references(uint64_t a1, CFSetRef theSet)
{
  if (theSet && CFSetGetCount(theSet) >= 1)
  {
    Mutable = *(a1 + 288);
    if (!Mutable)
    {
      Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &chunkReferenceSignatureEqualitySetCallbacks);
      *(a1 + 288) = Mutable;
    }

    XCFSetAddValuesFromSet(Mutable, theSet);
  }
}

const __CFSet *mmcs_item_needs_auth_get_chunks(uint64_t a1)
{
  result = *(a1 + 288);
  if (result)
  {
    return (CFSetGetCount(result) > 0);
  }

  return result;
}

void mmcs_item_set_put_progress(uint64_t a1, double *a2, BOOL *a3, char *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v8 = *(a1 + 164);
  v9 = *a2;
  if (*a2 >= v8)
  {
    if (v8 != 7)
    {
      if (v8 == v9)
      {
        v13 = *(a1 + 248) != a2[1] || !*(a1 + 192) && *(a2 + 4);
        v14 = 0;
        *(a1 + 328) = MMCSPutItemStateIsDeterminant(v8);
      }

      else
      {
        if (v9 == 7)
        {
          *(a1 + 168) = v8;
          v14 = 1;
        }

        else
        {
          v14 = 0;
        }

        *(a1 + 164) = v9;
        *(a1 + 328) = 0;
        v13 = 1;
      }

      *(a1 + 248) = a2[1];
      if (!*(a1 + 192))
      {
        v16 = *(a2 + 4);
        if (v16)
        {
          *(a1 + 192) = CFRetain(v16);
          v17 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = *(a1 + 40);
            v19 = MMCSPutItemStateCString(*(a1 + 168));
            *buf = 134218242;
            v23 = v18;
            v24 = 2082;
            v25 = v19;
            _os_log_impl(&dword_2577D8000, v17, OS_LOG_TYPE_INFO, "Item issue. itemId:%llu state:%{public}s", buf, 0x16u);
          }

          v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"itemId:%llu issue", *(a1 + 40));
          v21 = mmcs_logging_logger_default();
          XCFPrint(v21, v20, *(a1 + 192));
          if (v20)
          {
            CFRelease(v20);
          }
        }
      }

      if (a3)
      {
        *a3 = v13;
      }

      if (a4)
      {
        *a4 = v14;
      }
    }
  }

  else
  {
    v10 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid item state transition %d to %d\n", *(a1 + 164), *a2);
      v12 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v23 = v11;
        _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

double mmcs_item_chunking_elapsed_seconds(uint64_t a1)
{
  v1 = *(a1 + 256);
  result = 0.0;
  if (v1 != 0.0)
  {
    v3 = *(a1 + 264);
    v4 = v3 < v1 || v3 == 0.0;
    result = v3 - v1;
    if (v4)
    {
      return 0.0;
    }
  }

  return result;
}

uint64_t mmcs_item_padded_length(uint64_t *a1)
{
  if (!a1)
  {
    mmcs_item_padded_length_cold_1();
  }

  if (!a1[18])
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 56;
  do
  {
    v3 += mmcs_padded_chunk_length_with_policy_and_chunk_length(a1[12], *(*(a1[34] + v4) + 4));
    ++v2;
    v4 += 104;
  }

  while (v2 < a1[18]);
  return v3;
}

__CFDictionary *mmcs_item_create_results_dictionary_for_item(uint64_t *a1)
{
  if (a1[18])
  {
    v2 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v4 = a1[19];
    if (!v4)
    {
      v4 = a1[18];
    }

    valuePtr = v4;
    v5 = CFNumberCreate(v2, kCFNumberSInt64Type, &valuePtr);
    CFDictionarySetValue(Mutable, @"kMMCSChunkCount", v5);
    if (v5)
    {
      CFRelease(v5);
    }

    v7 = a1 + 2;
    v6 = a1[2];
    if (v6 <= 0)
    {
LABEL_14:
      v10 = a1 + 3;
      v9 = a1[3];
      if (v9 <= 0)
      {
        goto LABEL_22;
      }

      if (Mutable)
      {
LABEL_20:
        valuePtr = v9;
        v11 = CFNumberCreate(v2, kCFNumberSInt64Type, &valuePtr);
        CFDictionarySetValue(Mutable, @"kMMCSPaddedFileSize", v11);
        if (v11)
        {
          CFRelease(v11);
        }

LABEL_22:
        if (!a1[48])
        {
          goto LABEL_29;
        }

        v12 = a1 + 48;
        if (Mutable)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_19:
      Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v9 = *v10;
      goto LABEL_20;
    }

    if (Mutable)
    {
LABEL_12:
      valuePtr = v6;
      v8 = CFNumberCreate(v2, kCFNumberSInt64Type, &valuePtr);
      CFDictionarySetValue(Mutable, @"kMMCSFileSize", v8);
      if (v8)
      {
        CFRelease(v8);
      }

      goto LABEL_14;
    }

LABEL_11:
    Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v6 = *v7;
    goto LABEL_12;
  }

  v7 = a1 + 2;
  if (a1[2] >= 1)
  {
    v2 = *MEMORY[0x277CBECE8];
    goto LABEL_11;
  }

  v10 = a1 + 3;
  if (a1[3] >= 1)
  {
    v2 = *MEMORY[0x277CBECE8];
    goto LABEL_19;
  }

  if (!a1[48])
  {
    Mutable = 0;
    goto LABEL_29;
  }

  v12 = a1 + 48;
  v2 = *MEMORY[0x277CBECE8];
LABEL_24:
  Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
LABEL_25:
  valuePtr = a1[47];
  v13 = CFNumberCreate(v2, kCFNumberSInt64Type, &valuePtr);
  CFDictionarySetValue(Mutable, @"kMMCSResultFileOffset", v13);
  if (v13)
  {
    CFRelease(v13);
  }

  valuePtr = *v12;
  v14 = CFNumberCreate(v2, kCFNumberSInt64Type, &valuePtr);
  CFDictionarySetValue(Mutable, @"kMMCSResultLengthAtFileOffset", v14);
  if (v14)
  {
    CFRelease(v14);
  }

LABEL_29:
  v15 = a1[11];
  if (v15)
  {
    CFDictionarySetValue(Mutable, @"kMMCSVerificationKey", v15);
  }

  return Mutable;
}

__CFData *mmcs_item_create_chunk_key_concatenation(uint64_t a1)
{
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (*(a1 + 144))
  {
    v3 = 0;
    v4 = 56;
    do
    {
      v5 = *(*(*(a1 + 272) + v4) + 16);
      v6 = CKChunkSchemeAndEncryptionKeySize();
      CFDataAppendBytes(Mutable, v5, v6);
      ++v3;
      v4 += 104;
    }

    while (v3 < *(a1 + 144));
  }

  return Mutable;
}

CFTypeRef mmcs_item_set_derivative_digest_results_for_file_validation(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 368);
  if (v4)
  {
    C3BaseRelease(v4);
  }

  *(a1 + 368) = 0;
  result = C3BaseRetain(cf);
  *(a1 + 368) = cf;
  return result;
}

void *mmcs_report_tickle(void *result)
{
  v16 = *MEMORY[0x277D85DE8];
  if (gMMCS_MobileMeReporting)
  {
    v1 = result;
    Current = CFAbsoluteTimeGetCurrent();
    pthread_mutex_lock(&sReportingInfoAccessLock);
    if (gMMCS_MobileMeReporting)
    {
      v3 = *(gMMCS_MobileMeReporting + 48);
      if (v3 == 0.0)
      {
        v4 = Current - *(gMMCS_MobileMeReporting + 56);
        v5 = *(gMMCS_MobileMeReporting + 40);
      }

      else
      {
        v4 = Current - v3;
        v5 = *(gMMCS_MobileMeReporting + 32);
      }

      if (v4 > v5)
      {
        if (*(gMMCS_MobileMeReporting + 64))
        {
          v6 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
          {
            v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Background fetch for MobileMe configs is already underway.");
            v8 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v15 = v7;
              _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
            }

            if (v7)
            {
              CFRelease(v7);
            }
          }
        }

        else
        {
          v13 = 0;
          v9 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Scheduling fetch for MobileMe configs.");
            v11 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v15 = v10;
              _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
            }

            if (v10)
            {
              CFRelease(v10);
            }
          }

          *(gMMCS_MobileMeReporting + 64) = 1;
          C3BaseRetain(v1);
          pthread_create(&v13, 0, _mmcs_report_fetchFromMobileMe, v1);
        }
      }
    }

    result = pthread_mutex_unlock(&sReportingInfoAccessLock);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _mmcs_report_fetchFromMobileMe(const void *a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = _os_activity_create(&dword_2577D8000, "mmcs-fetch-plist", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);
  v3 = mmcs_logging_logger_default();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  v5 = *MEMORY[0x277CBECE8];
  if (v4)
  {
    v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs_config_fetcher started.");
    v7 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  v8 = CFURLCreateWithString(v5, @"https://gateway.icloud.com/configuration/configurations/internetservices/mobileme/content/content-1.0.plist", 0);
  if (v8)
  {
    v9 = v8;
    Request = CFHTTPMessageCreateRequest(v5, @"GET", v8, *MEMORY[0x277CBAD00]);
    CFRelease(v9);
    if (!Request)
    {
      goto LABEL_31;
    }

    client_header_value = mmcs_engine_create_client_header_value(0);
    if (client_header_value)
    {
      v12 = client_header_value;
      CFHTTPMessageSetHeaderFieldValue(Request, @"x-mme-client-info", client_header_value);
      CFRelease(v12);
    }

    Current = CFRunLoopGetCurrent();
    CFRetain(Current);
    *&buf = @"content_plist";
    *(&buf + 1) = Request;
    v30 = a1;
    v31 = xmmword_25785F9B0;
    v32 = -1;
    v33 = -1;
    v35 = 0;
    v36 = 0;
    v34 = 0;
    v37 = mmcs_reporting_fetch_operation_http_callback;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v43 = 0;
    v41 = Current;
    v42 = 0;
    v44 = 1;
    v45 = 0;
    v46 = v2;
    cf = 0;
    v14 = mmcs_http_class_default_value(2);
    if (!mmcs_http_context_create(&cf, v14, &buf))
    {
      goto LABEL_30;
    }

    C3BaseRetain(cf);
    mmcs_http_context_set_to_configuration(cf, 1);
    mmcs_http_context_set_to_mobileme(cf, 1);
    pthread_mutex_lock(&sReportingInfoAccessLock);
    if (gMMCS_MobileMeReporting && !*(gMMCS_MobileMeReporting + 16))
    {
      *(gMMCS_MobileMeReporting + 16) = cf;
      pthread_mutex_unlock(&sReportingInfoAccessLock);
      v18 = CFArrayCreate(v5, MEMORY[0x277CBF048], 1, MEMORY[0x277CBF128]);
      v26 = 0;
      mmcs_perform_run_loop_target_create(&v26, Current, v18);
      if (mmcs_http_context_send(cf, 0, v26))
      {
        memset(&v25, 0, sizeof(v25));
        v19 = CFRunLoopSourceCreate(v5, 0, &v25);
        CFRunLoopAddSource(Current, v19, *MEMORY[0x277CBF058]);
        CFRunLoopRun();
        if (v19)
        {
          CFRelease(v19);
        }
      }

      else
      {
        _mmcs_report_clearFetchContext(cf);
      }

      if (v18)
      {
        CFRelease(v18);
      }

      v15 = v26;
      if (!v26)
      {
        goto LABEL_28;
      }
    }

    else
    {
      pthread_mutex_unlock(&sReportingInfoAccessLock);
      mmcs_http_context_invalidate(cf);
      v15 = cf;
      if (!cf)
      {
LABEL_30:
        CFRelease(Request);
        goto LABEL_31;
      }
    }

    C3BaseRelease(v15);
LABEL_28:
    if (cf)
    {
      C3BaseRelease(cf);
    }

    goto LABEL_30;
  }

  v16 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    Request = CFStringCreateWithFormat(v5, 0, @"Failed to create URL for MobileMe reporting levels.");
    v17 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = Request;
      _os_log_impl(&dword_2577D8000, v17, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
    }

    if (Request)
    {
      goto LABEL_30;
    }
  }

LABEL_31:
  if (a1)
  {
    C3BaseRelease(a1);
  }

  if (v2)
  {
    os_release(v2);
  }

  pthread_mutex_lock(&sReportingInfoAccessLock);
  if (gMMCS_MobileMeReporting)
  {
    *(gMMCS_MobileMeReporting + 64) = 0;
  }

  pthread_mutex_unlock(&sReportingInfoAccessLock);
  v20 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = CFStringCreateWithFormat(v5, 0, @"mmcs_config_fetcher completed.");
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

  os_activity_scope_leave(&state);
  v23 = *MEMORY[0x277D85DE8];
  return 0;
}

const void *mmcs_report_copy_vendor_configuration_with_name(CFStringRef a1)
{
  theDict = 0;
  _mmcs_report_copyConfiguration(&theDict, 0);
  if (!theDict)
  {
    return 0;
  }

  if (a1)
  {
    a1 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@.%@", @"vendor.dc.configuration", a1);
  }

  v2 = 1;
  v3 = a1;
  while (1)
  {
    v4 = v2;
    if (v3)
    {
      Value = CFDictionaryGetValue(theDict, v3);
      if (Value)
      {
        v6 = Value;
        TypeID = CFDictionaryGetTypeID();
        if (TypeID == CFGetTypeID(v6))
        {
          break;
        }
      }
    }

    v2 = 0;
    v3 = @"vendor.dc.configuration";
    if ((v4 & 1) == 0)
    {
      v6 = 0;
      if (!a1)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  CFRetain(v6);
  if (a1)
  {
LABEL_10:
    CFRelease(a1);
  }

LABEL_11:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v6;
}

const void *mmcs_report_copy_vendor_retryable_http_errors(const __CFString *a1, const __CFString *a2)
{
  v3 = mmcs_report_copy_vendor_configuration_with_name(a1);
  if (v3)
  {
    v4 = v3;
    v5 = *MEMORY[0x277CBECE8];
    v6 = CFLocaleCreate(*MEMORY[0x277CBECE8], @"en_US");
    if (v6)
    {
      v7 = v6;
      Length = CFStringGetLength(a2);
      MutableCopy = CFStringCreateMutableCopy(v5, Length, a2);
      v10 = MutableCopy;
      if (!MutableCopy)
      {
LABEL_12:
        CFRelease(v7);
        goto LABEL_13;
      }

      CFStringLowercase(MutableCopy, v7);
      v11 = CFStringCreateWithFormat(v5, 0, @"retry.%@.http_response_code", v10);
      CFRelease(v7);
      CFRelease(v10);
      if (v11)
      {
        Value = CFDictionaryGetValue(v4, v11);
        if (Value && (v13 = Value, TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(v13)))
        {
          v10 = mmcs_index_set_create_with_string(v13);
        }

        else
        {
          v10 = 0;
        }

        v7 = v11;
        goto LABEL_12;
      }
    }

    v10 = 0;
LABEL_13:
    CFRelease(v4);
    return v10;
  }

  return 0;
}

void mmcs_report_copy_vendor_request_queue_config(void *a1, void *a2)
{
  theDict = 0;
  _mmcs_report_copyConfiguration(&theDict, 0);
  if (theDict)
  {
    if (a1)
    {
      Value = CFDictionaryGetValue(theDict, @"max.vendor.upload.connections.override");
      if (Value)
      {
        v5 = Value;
        TypeID = CFNumberGetTypeID();
        if (TypeID == CFGetTypeID(v5))
        {
          CFRetain(v5);
          *a1 = v5;
        }
      }
    }

    if (a2)
    {
      v7 = CFDictionaryGetValue(theDict, @"max.vendor.download.connections.override");
      if (v7)
      {
        v8 = v7;
        v9 = CFNumberGetTypeID();
        if (v9 == CFGetTypeID(v8))
        {
          CFRetain(v8);
          *a2 = v8;
        }
      }
    }

    if (theDict)
    {
      CFRelease(theDict);
    }
  }
}

uint64_t mmcs_report_want_report(int a1, unsigned int a2)
{
  theDict = 0;
  _mmcs_report_copyConfiguration(&theDict, 0);
  if (!theDict)
  {
    return 0;
  }

  v4 = a2;
  v5 = *MEMORY[0x277CBECE8];
  if (a1)
  {
    v6 = @"putcomplete.verbosity.%ld";
    goto LABEL_5;
  }

  v6 = @"getcomplete.verbosity.%ld";
  for (i = CFStringCreateWithFormat(v5, 0, @"getcomplete.verbosity.%ld", v4); ; i = CFStringCreateWithFormat(v5, 0, v6, v4))
  {
    v8 = i;
    Value = CFDictionaryGetValue(theDict, i);
    if (v8)
    {
      CFRelease(v8);
    }

    if (Value && CFDictionaryGetCount(Value) >= 1)
    {
      break;
    }

    if (v4-- <= 0)
    {
      v11 = 0;
      v12 = theDict;
      if (!theDict)
      {
        return v11;
      }

      goto LABEL_16;
    }

LABEL_5:
    ;
  }

  v12 = theDict;
  v11 = 1;
  if (!theDict)
  {
    return v11;
  }

LABEL_16:
  CFRelease(v12);
  return v11;
}

const void *mmcs_report_value_for_config_key(const void *a1, int a2, unsigned int a3)
{
  theDict = 0;
  _mmcs_report_copyConfiguration(&theDict, 0);
  v6 = theDict;
  if (!a1 || !theDict)
  {
LABEL_14:
    v15 = 0;
    v16 = 0;
    if (!v6)
    {
      return v16;
    }

LABEL_15:
    CFRelease(v6);
    return v15;
  }

  v7 = a3;
  v8 = *MEMORY[0x277CBECE8];
  if (a2)
  {
    v9 = @"putcomplete.verbosity.%ld";
    goto LABEL_6;
  }

  v9 = @"getcomplete.verbosity.%ld";
  for (i = CFStringCreateWithFormat(v8, 0, @"getcomplete.verbosity.%ld", v7); ; i = CFStringCreateWithFormat(v8, 0, v9, v7))
  {
    v11 = i;
    Value = CFDictionaryGetValue(theDict, i);
    if (v11)
    {
      CFRelease(v11);
    }

    if (Value)
    {
      v13 = CFDictionaryGetValue(Value, a1);
      if (v13)
      {
        break;
      }
    }

    if (v7-- < 1)
    {
      v6 = theDict;
      goto LABEL_14;
    }

LABEL_6:
    ;
  }

  v15 = v13;
  v6 = theDict;
  v16 = v15;
  if (theDict)
  {
    goto LABEL_15;
  }

  return v16;
}

uint64_t mmcs_report_is_valid_base_url_for_configs(const __CFArray *a1, const __CFArray *a2, CFURLRef anURL)
{
  v3 = 0;
  v48 = *MEMORY[0x277D85DE8];
  if (a2 && a1)
  {
    v6 = 0;
    if (anURL)
    {
      v8 = CFURLCopyHostName(anURL);
      if (v8)
      {
        v9 = v8;
        if (CFArrayGetCount(a1) >= 1)
        {
          v10 = 0;
          v11 = *MEMORY[0x277CBECE8];
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
            if (ValueAtIndex)
            {
              v13 = ValueAtIndex;
              v14 = CFGetTypeID(ValueAtIndex);
              if (v14 == CFStringGetTypeID())
              {
                v6 = 1;
                if (CFStringCompare(v13, v9, 1uLL) == kCFCompareEqualTo)
                {
                  goto LABEL_28;
                }

                if (CFStringHasPrefix(v13, @".") && CFStringHasSuffix(v9, v13))
                {
                  v6 = 1;
                  goto LABEL_28;
                }

                v15 = mmcs_logging_logger_default();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
                {
                  v16 = CFStringCreateWithFormat(v11, 0, @"Did not match %@ from config as suffix of hostname %@.", v13, v9);
                  v17 = mmcs_logging_logger_default();
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543362;
                    v47 = v16;
                    v18 = v17;
                    v19 = OS_LOG_TYPE_DEBUG;
                    goto LABEL_18;
                  }

                  goto LABEL_19;
                }
              }

              else
              {
                v20 = mmcs_logging_logger_default();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  v21 = CFGetTypeID(v13);
                  v16 = CFStringCreateWithFormat(v11, 0, @"Invalid typeId %llu provided for %@ element.", v21, @"metaserver.allowed.hostname.suffix");
                  v22 = mmcs_logging_logger_default();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v47 = v16;
                    v18 = v22;
                    v19 = OS_LOG_TYPE_ERROR;
LABEL_18:
                    _os_log_impl(&dword_2577D8000, v18, v19, "%{public}@", buf, 0xCu);
                  }

LABEL_19:
                  if (v16)
                  {
                    CFRelease(v16);
                  }
                }
              }
            }

            ++v10;
          }

          while (v10 < CFArrayGetCount(a1));
        }

        v23 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Metaserver Hostname %@ Not Allowed", v9);
          v25 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v47 = v24;
            _os_log_impl(&dword_2577D8000, v25, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v24)
          {
            CFRelease(v24);
          }
        }

        v6 = 0;
LABEL_28:
        CFRelease(v9);
        v26 = CFURLCopyScheme(anURL);
        if (v26)
        {
          v27 = v26;
          if (CFArrayGetCount(a2) >= 1)
          {
            v28 = 0;
            v29 = *MEMORY[0x277CBECE8];
            do
            {
              v30 = CFArrayGetValueAtIndex(a2, v28);
              if (v30)
              {
                v31 = v30;
                v32 = CFGetTypeID(v30);
                if (v32 == CFStringGetTypeID())
                {
                  v3 = 1;
                  if (CFStringCompare(v27, v31, 1uLL) == kCFCompareEqualTo)
                  {
                    goto LABEL_50;
                  }

                  v33 = mmcs_logging_logger_default();
                  if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_43;
                  }

                  v34 = CFStringCreateWithFormat(v29, 0, @"Did not match %@ from config as suffix of scheme %@.", v31, v27);
                  v35 = mmcs_logging_logger_default();
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543362;
                    v47 = v34;
                    v36 = v35;
                    v37 = OS_LOG_TYPE_DEBUG;
                    goto LABEL_40;
                  }

                  goto LABEL_41;
                }

                v38 = mmcs_logging_logger_default();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  v39 = CFGetTypeID(v31);
                  v34 = CFStringCreateWithFormat(v29, 0, @"Invalid typeId %llu provided for %@ element.", v39, @"metaserver.allowed.schemes");
                  v40 = mmcs_logging_logger_default();
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v47 = v34;
                    v36 = v40;
                    v37 = OS_LOG_TYPE_ERROR;
LABEL_40:
                    _os_log_impl(&dword_2577D8000, v36, v37, "%{public}@", buf, 0xCu);
                  }

LABEL_41:
                  if (v34)
                  {
                    CFRelease(v34);
                  }
                }
              }

LABEL_43:
              ++v28;
            }

            while (v28 < CFArrayGetCount(a2));
          }

          v41 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Metaserver Scheme %@ Not Allowed", v27);
            v43 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v47 = v42;
              _os_log_impl(&dword_2577D8000, v43, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v42)
            {
              CFRelease(v42);
            }
          }

          v3 = 0;
LABEL_50:
          CFRelease(v27);
        }

        else
        {
          v3 = 0;
        }
      }

      else
      {
        v3 = 0;
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v44 = *MEMORY[0x277D85DE8];
  return v3 & v6;
}

uint64_t mmcs_report_is_valid_base_url_for_mobile_me(const __CFArray *a1, CFStringRef a2, const __CFURL *a3)
{
  cf = 0;
  _mmcs_report_copyConfiguration(&cf, 0);
  v6 = cf;
  if (!cf)
  {
    return 0;
  }

  v7 = MEMORY[0x277CBECE8];
  if (!a1)
  {
LABEL_7:
    Mutable = CFArrayCreateMutable(*v7, 0, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v10 = Mutable;
      CFArrayAppendValue(Mutable, @".icloud.com");
      CFArrayAppendValue(v10, @".icloud.com.cn");
      a1 = mmcs_report_copy_cfarray_with_key(v6, @"metaserver.allowed.hostname.suffix", v10);
      CFRelease(v10);
      if (a1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      a1 = mmcs_report_copy_cfarray_with_key(v6, @"metaserver.allowed.hostname.suffix", 0);
      if (a1)
      {
        goto LABEL_9;
      }
    }

    mmcs_report_is_valid_base_url_for_mobile_me_cold_2();
  }

  if (!CFArrayGetCount(a1))
  {
    v6 = cf;
    goto LABEL_7;
  }

  CFRetain(a1);
LABEL_9:
  if (a2 && CFArrayGetCount(a2))
  {
    CFRetain(a2);
    goto LABEL_14;
  }

  v11 = cf;
  v12 = CFArrayCreateMutable(*v7, 0, MEMORY[0x277CBF128]);
  if (v12)
  {
    v13 = v12;
    CFArrayAppendValue(v12, @"https");
    a2 = mmcs_report_copy_cfarray_with_key(v11, @"metaserver.allowed.schemes", v13);
    CFRelease(v13);
    if (a2)
    {
      goto LABEL_14;
    }

LABEL_20:
    mmcs_report_is_valid_base_url_for_mobile_me_cold_1();
  }

  a2 = mmcs_report_copy_cfarray_with_key(v11, @"metaserver.allowed.schemes", 0);
  if (!a2)
  {
    goto LABEL_20;
  }

LABEL_14:
  is_valid_base_url_for_configs = mmcs_report_is_valid_base_url_for_configs(a1, a2, a3);
  CFRelease(a1);
  CFRelease(a2);
  if (cf)
  {
    CFRelease(cf);
  }

  return is_valid_base_url_for_configs;
}

uint64_t mmcs_report_is_enabled_for_config_key(const void *a1, int a2, unsigned int a3)
{
  v3 = mmcs_report_value_for_config_key(a1, a2, a3);

  return mmcs_get_BOOLean_from_cftype_using_description(@"mmcsReportConfigKey", v3, 0);
}

uint64_t mmcs_report_property_for_config_key(const void *a1, const void *a2, int a3, unsigned int a4)
{
  theDict = 0;
  _mmcs_report_copyConfiguration(&theDict, 0);
  v8 = theDict;
  if (!a2 || !a1 || !theDict)
  {
LABEL_16:
    v17 = 0;
    v18 = 0;
    if (!v8)
    {
      return v18;
    }

LABEL_17:
    CFRelease(v8);
    return v17;
  }

  v9 = a4;
  v10 = *MEMORY[0x277CBECE8];
  if (a3)
  {
    v11 = @"putcomplete.verbosity.%ld";
    goto LABEL_7;
  }

  v11 = @"getcomplete.verbosity.%ld";
  for (i = CFStringCreateWithFormat(v10, 0, @"getcomplete.verbosity.%ld", v9); ; i = CFStringCreateWithFormat(v10, 0, v11, v9))
  {
    v13 = i;
    Value = CFDictionaryGetValue(theDict, i);
    if (v13)
    {
      CFRelease(v13);
    }

    if (Value)
    {
      v15 = CFDictionaryGetValue(Value, a1);
      if (IsValidCFArray(v15))
      {
        v21.length = CFArrayGetCount(v15);
        v21.location = 0;
        if (CFArrayContainsValue(v15, v21, a2))
        {
          break;
        }
      }
    }

    if (v9-- <= 0)
    {
      v8 = theDict;
      goto LABEL_16;
    }

LABEL_7:
    ;
  }

  v8 = theDict;
  v17 = 1;
  v18 = 1;
  if (theDict)
  {
    goto LABEL_17;
  }

  return v18;
}

__CFDictionary *mmcs_report_create_vendor_http_stats(uint64_t a1, int a2, unsigned int a3)
{
  v6 = mmcs_report_property_for_config_key(@"vendor.kpis", @"vendor.roundtrip.millis", a2, a3);
  v7 = mmcs_report_property_for_config_key(@"vendor.kpis", @"contentlength.bytes", a2, a3);
  v8 = mmcs_report_property_for_config_key(@"vendor.kpis", @"vendor.nameresolution.millis", a2, a3);
  v9 = mmcs_report_property_for_config_key(@"vendor.kpis", @"vendor.nameresolution.serverAddress", a2, a3);
  v10 = mmcs_report_property_for_config_key(@"vendor.kpis", @"vendor.request.qos", a2, a3);
  v11 = mmcs_report_property_for_config_key(@"vendor.kpis", @"vendor.network.interface", a2, a3);
  if (!a1)
  {
    return 0;
  }

  v12 = v11;
  if (!(v7 | v6 | v8 | v10 | v11))
  {
    return 0;
  }

  v13 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    if (v6)
    {
      v15 = mmcs_http_context_elapsed_seconds(a1);
      MillisStringFromAbsoluteTime = createMillisStringFromAbsoluteTime(v15);
      if (MillisStringFromAbsoluteTime)
      {
        v17 = MillisStringFromAbsoluteTime;
        CFDictionaryAddValue(Mutable, @"vendor.roundtrip.millis", MillisStringFromAbsoluteTime);
        CFRelease(v17);
      }
    }

    if (v7)
    {
      v18 = a2 ? mmcs_http_context_actual_bytes_written(a1) : mmcs_http_context_actual_bytes_read(a1);
      v20 = CFStringCreateWithFormat(v13, 0, @"%lld", v18);
      if (v20)
      {
        v21 = v20;
        CFDictionaryAddValue(Mutable, @"contentlength.bytes", v20);
        CFRelease(v21);
      }
    }

    if (v8)
    {
      mmcs_http_context_name_resolution_seconds(a1);
      v23 = createMillisStringFromAbsoluteTime(v22);
      if (v23)
      {
        v24 = v23;
        CFDictionaryAddValue(Mutable, @"vendor.nameresolution.millis", v23);
        CFRelease(v24);
      }
    }

    if (v9)
    {
      v25 = mmcs_http_context_copy_destination_address(a1);
      if (v25)
      {
        v26 = v25;
        CFDictionaryAddValue(Mutable, @"vendor.nameresolution.serverAddress", v25);
        CFRelease(v26);
      }
    }

    if (v10)
    {
      request_options = mmcs_http_context_get_request_options(a1);
      discretionary_network_behavior = mmcs_http_request_options_get_discretionary_network_behavior(request_options);
      String = MMCSRequestOptionsDiscretionaryNetworkBehaviorGetString(discretionary_network_behavior);
      if (String)
      {
        v30 = String;
        CFDictionaryAddValue(Mutable, @"vendor.request.qos", String);
        CFRelease(v30);
      }
    }

    if (v12)
    {
      v31 = mmcs_http_context_copy_interface_identifier(a1);
      if (v31)
      {
        v32 = v31;
        CFDictionaryAddValue(Mutable, @"vendor.network.interface", v31);
        CFRelease(v32);
      }
    }
  }

  return Mutable;
}

CFTypeRef mmcs_report_copy_headers_from_vendor_response(__CFHTTPMessage *a1, int a2, int a3, unsigned int a4)
{
  v7 = CFHTTPMessageCopyAllHeaderFields(a1);
  theDict = 0;
  _mmcs_report_copyConfiguration(&theDict, 0);
  v8 = 0;
  v9 = theDict;
  if (v7 && theDict)
  {
    v10 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v12 = Mutable;
      v13 = 0;
      v14 = 0;
      if (a2)
      {
        v15 = @"vendor.headers.on.success";
      }

      else
      {
        v15 = @"vendor.headers.on.failure";
      }

      v26 = 0u;
      *cf = 0u;
      context = Mutable;
      if (a3)
      {
        v16 = @"putcomplete.verbosity.%u";
        goto LABEL_10;
      }

      v16 = @"getcomplete.verbosity.%u";
      for (i = CFStringCreateWithFormat(v10, 0, @"getcomplete.verbosity.%u", 0); ; i = CFStringCreateWithFormat(v10, 0, v16, v13))
      {
        if (i)
        {
          v18 = i;
          if (CFDictionaryContainsKey(theDict, i))
          {
            Value = CFDictionaryGetValue(theDict, v18);
            if (Value)
            {
              cf[0] = CFDictionaryGetValue(Value, v15);
              if (cf[0])
              {
                TypeID = CFArrayGetTypeID();
                if (TypeID == CFGetTypeID(cf[0]))
                {
                  v21 = cf[0];
                  v28.length = CFArrayGetCount(cf[0]);
                  v28.location = 0;
                  if (CFArrayContainsValue(v21, v28, @"*"))
                  {
                    CFRelease(v18);
                    v22 = v7;
                    goto LABEL_22;
                  }

                  CFDictionaryApplyFunction(v7, _collect_response_headers, &context);
                  v14 = 1;
                }
              }
            }

            else
            {
              cf[0] = 0;
            }
          }

          CFRelease(v18);
        }

        v13 = (v13 + 1);
        if (v13 > a4)
        {
          break;
        }

LABEL_10:
        ;
      }

      v22 = v12;
      if (v14)
      {
LABEL_22:
        v8 = CFRetain(v22);
        goto LABEL_25;
      }

      v8 = 0;
LABEL_25:
      CFRelease(v12);
    }

    else
    {
      v8 = 0;
    }

    v9 = theDict;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  theDict = 0;
  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

void _collect_response_headers(uint64_t a1, uint64_t a2, void *a3)
{
  a3[3] = a1;
  a3[4] = a2;
  v4 = a3[1];
  v5.length = CFArrayGetCount(v4);
  v5.location = 0;
  CFArrayApplyFunction(v4, v5, _collectHeadersWhichMatch, a3);
  a3[3] = 0;
  a3[4] = 0;
}

uint64_t mmcs_report_get_chunker_max_fixed_length(_DWORD *a1)
{
  valuePtr = 0;
  theDict = 0;
  _mmcs_report_copyConfiguration(&theDict, 0);
  if (!theDict)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"chunker.max.fixed.length");
  v3 = Value;
  if (Value)
  {
    v4 = CFGetTypeID(Value);
    if (v4 == CFNumberGetTypeID())
    {
      v3 = (CFNumberGetValue(v3, kCFNumberSInt32Type, &valuePtr) != 0);
    }

    else
    {
      v3 = 0;
    }
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (a1 && v3)
  {
    *a1 = valuePtr;
    return 1;
  }

  return v3;
}

uint64_t mmcs_report_chunker_allow_item_chunk_length_28455742()
{
  cf = 0;
  _mmcs_report_copyConfiguration(&cf, 0);
  if (!cf)
  {
    return 0;
  }

  BOOLean_from_cfdictionary_object_for_key = mmcs_get_BOOLean_from_cfdictionary_object_for_key(cf, @"chunker.allow.item.chunk.length.28455742", 0);
  if (cf)
  {
    CFRelease(cf);
  }

  return BOOLean_from_cfdictionary_object_for_key;
}

__CFString *mmcs_report_auth_simulcast_response_signing_key_public_current()
{
  theDict = 0;
  _mmcs_report_copyConfiguration(&theDict, 0);
  if (!theDict)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"auth.simulcast.response.signing.key.public.current");
  MutableCopy = Value;
  if (Value)
  {
    v2 = CFGetTypeID(Value);
    if (v2 == CFStringGetTypeID())
    {
      CStringPtr = CFStringGetCStringPtr(MutableCopy, 0x8000100u);
      v4 = mmcs_base64_encoded_cstring_to_cfdata(CStringPtr);
      v5 = *MEMORY[0x277CBECE8];
      Length = CFDataGetLength(v4);
      MutableCopy = CFDataCreateMutableCopy(v5, Length, v4);
      v9.location = 0;
      v9.length = 26;
      CFDataDeleteBytes(MutableCopy, v9);
      if (v4)
      {
        CFRelease(v4);
      }
    }

    else
    {
      MutableCopy = 0;
    }
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  return MutableCopy;
}

const __CFString *mmcs_report_auth_simulcast_response_signing_key_public_prior()
{
  theDict = 0;
  _mmcs_report_copyConfiguration(&theDict, 0);
  if (!theDict)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"auth.simulcast.response.signing.key.public.prior");
  v1 = Value;
  if (Value)
  {
    v2 = CFGetTypeID(Value);
    if (v2 == CFStringGetTypeID())
    {
      CStringPtr = CFStringGetCStringPtr(v1, 0x8000100u);
      v1 = mmcs_base64_encoded_cstring_to_cfdata(CStringPtr);
    }

    else
    {
      v1 = 0;
    }
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  return v1;
}

void mmcs_reporting_fetch_operation_http_callback(const void *a1, CFDataRef *a2, __CFRunLoop *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = mmcs_http_context_status_succeeded(a1);
  v7 = MEMORY[0x277CBECE8];
  if (!a2 || !v6 || !*a2)
  {
    if (mmcs_http_context_is_cancelled(a1))
    {
      v15 = "was cancelled";
    }

    else if (mmcs_http_context_has_timedout(a1) && mmcs_http_context_is_timedout(a1))
    {
      v15 = "timed out";
    }

    else if (a2 && *a2)
    {
      v15 = "failed";
    }

    else
    {
      v15 = "had no response body";
    }

    has_http_status = mmcs_http_context_has_http_status(a1);
    v17 = mmcs_logging_logger_default();
    if (has_http_status)
    {
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_20;
      }

      v18 = *v7;
      v19 = mmcs_http_context_http_status(a1);
      v20 = CFStringCreateWithFormat(v18, 0, @"Request to MobileMe config server %s with status: %d.", v15, v19);
      v21 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_18;
      }

      c.count[0] = 138543362;
      *&c.count[1] = v20;
      v22 = v21;
      v23 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v20 = CFStringCreateWithFormat(*v7, 0, @"Request to MobileMe config server %s has no status!", v15);
      v24 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
LABEL_18:
        if (v20)
        {
          CFRelease(v20);
        }

LABEL_20:
        v25 = 0;
        v12 = 0;
        v26 = 0;
        if (!a2)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      c.count[0] = 138543362;
      *&c.count[1] = v20;
      v22 = v24;
      v23 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&dword_2577D8000, v22, v23, "%{public}@", &c, 0xCu);
    goto LABEL_18;
  }

  *md = 0u;
  v43 = 0u;
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  BytePtr = CFDataGetBytePtr(*a2);
  Length = CFDataGetLength(*a2);
  CC_SHA256_Update(&c, BytePtr, Length);
  CC_SHA256_Final(md, &c);
  v10 = *v7;
  v11 = XCFDataCreateWithBytesNoCopy(*v7, md, 32, *MEMORY[0x277CBED00]);
  v12 = v11;
  if (v11)
  {
    v13 = mmcs_base64_encode_cfdata_to_cstring(v11);
    CFRelease(v12);
    if (v13)
    {
      v14 = strlen(v13);
      v12 = XCFStringCreateWithBytesNoCopy(v10, v13, v14, 0x600u, 0, *MEMORY[0x277CBECF0]);
      if (!v12)
      {
        free(v13);
      }
    }

    else
    {
      v12 = 0;
    }
  }

  error = 0;
  format = 0;
  v25 = CFPropertyListCreateWithData(v10, *a2, 0, &format, &error);
  if (error)
  {
    v27 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = CFStringCreateWithFormat(v10, 0, @"Failed to create configuration plist (%@) ", error);
      v29 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v40 = v28;
        _os_log_impl(&dword_2577D8000, v29, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v28)
      {
        CFRelease(v28);
      }
    }

    if (error)
    {
      CFRelease(error);
    }
  }

  v26 = v25 != 0;
LABEL_39:
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a2 = 0;
LABEL_42:
  *c.count = CFAbsoluteTimeGetCurrent();
  v30 = *v7;
  v31 = CFNumberCreate(*v7, kCFNumberDoubleType, &c);
  v32 = *c.count;
  if (v26)
  {
    _mmcs_report_setReportingInfo(a1, v12, v25, 1, v31, *c.count, 0.0);
    if (!v31)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  pthread_mutex_lock(&sReportingInfoAccessLock);
  if (!gMMCS_MobileMeReporting || a1 && *(gMMCS_MobileMeReporting + 16) != a1)
  {
    pthread_mutex_unlock(&sReportingInfoAccessLock);
    if (!v31)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  *(gMMCS_MobileMeReporting + 48) = v32;
  pthread_mutex_unlock(&sReportingInfoAccessLock);
  CFPreferencesSetAppValue(@"report.LastFailedCheckTime", v31, @"com.apple.mmcs");
  CFPreferencesAppSynchronize(@"com.apple.mmcs");
  if (v31)
  {
LABEL_49:
    CFRelease(v31);
  }

LABEL_50:
  if (v25)
  {
    CFRelease(v25);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  v33 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    v34 = CFStringCreateWithFormat(v30, 0, @"Remote fetch completed (%d)", v26);
    v35 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      c.count[0] = 138543362;
      *&c.count[1] = v34;
      _os_log_impl(&dword_2577D8000, v35, OS_LOG_TYPE_DEBUG, "%{public}@", &c, 0xCu);
    }

    if (v34)
    {
      CFRelease(v34);
    }
  }

  _mmcs_report_clearFetchContext(a1);
  CFRunLoopStop(a3);
  if (a3)
  {
    CFRelease(a3);
  }

  v36 = *MEMORY[0x277D85DE8];
}

uint64_t _mmcs_report_clearFetchContext(const void *a1)
{
  pthread_mutex_lock(&sReportingInfoAccessLock);
  if (gMMCS_MobileMeReporting)
  {
    if (*(gMMCS_MobileMeReporting + 16) == a1)
    {
      *(gMMCS_MobileMeReporting + 16) = 0;
      mmcs_http_context_invalidate(a1);
      if (a1)
      {
        C3BaseRelease(a1);
      }
    }
  }

  return pthread_mutex_unlock(&sReportingInfoAccessLock);
}

CFStringRef mmcs_report_copy_cfarray_with_key(const __CFDictionary *a1, const void *a2, const __CFString *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  Value = CFDictionaryGetValue(a1, a2);
  v6 = Value;
  if (!Value)
  {
    goto LABEL_12;
  }

  v7 = CFGetTypeID(Value);
  if (v7 != CFArrayGetTypeID())
  {
    v8 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *MEMORY[0x277CBECE8];
      v10 = CFGetTypeID(v6);
      v6 = CFStringCreateWithFormat(v9, 0, @"Invalid typeId %llu provided for %@.", v10, a2);
      v11 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v15 = v6;
        _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (!v6)
      {
        goto LABEL_12;
      }

      CFRelease(v6);
    }

    goto LABEL_11;
  }

  if (CFArrayGetCount(v6))
  {
    CFRetain(v6);
    goto LABEL_14;
  }

LABEL_12:
  if (a3)
  {
    CFRetain(a3);
    v6 = a3;
  }

LABEL_14:
  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

void _collectHeadersWhichMatch(const __CFString *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3 && *a2 && CFStringCompare(a1, v3, 1uLL) == kCFCompareEqualTo)
  {
    v4 = *a2;
    v5 = *(a2 + 24);
    v6 = *(a2 + 32);

    CFDictionarySetValue(v4, v5, v6);
  }
}

void ProtobufCBinaryData_SetCopyBufferLen(void *a1, const void *a2, size_t size)
{
  if (a2 && size)
  {
    v6 = malloc_type_malloc(size, 0x100004077774924uLL);
    *a1 = size;
    memcpy(v6, a2, size);
    v7 = a1[1];
    if (v7)
    {
      free(v7);
    }

    a1[1] = v6;
  }

  else
  {
    v8 = a1[1];
    if (v8)
    {
      free(v8);
    }

    *a1 = 0;
    a1[1] = 0;
  }
}

CFDataRef ProtobufCBinaryData_CreateData(CFDataRef result)
{
  if (result)
  {
    return CFDataCreate(*MEMORY[0x277CBECE8], *(result + 1), *result);
  }

  return result;
}

BOOL ProtobufCBinaryData_Equals(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    return *a1 == *a2 && memcmp(*(a1 + 8), *(a2 + 8), *a1) == 0;
  }

  return result;
}

void ProtobufCBinaryData_SetData(CFIndex *a1, CFDataRef theData)
{
  v4 = a1[1];
  if (v4)
  {
    free(v4);
  }

  *a1 = 0;
  a1[1] = 0;
  if (theData)
  {
    Length = CFDataGetLength(theData);
    v6 = malloc_type_malloc(Length, 0x100004077774924uLL);
    v7.location = 0;
    v7.length = Length;
    CFDataGetBytes(theData, v7, v6);
    *a1 = Length;
    a1[1] = v6;
  }
}

__CFString *ProtobufCString_SetString(__CFString **a1, const __CFString *a2)
{
  if (a2)
  {
    result = createCStringWithCFString(a2);
  }

  else
  {
    result = *a1;
    if (*a1)
    {
      free(result);
      result = 0;
    }
  }

  *a1 = result;
  return result;
}

void *chunkserver__get_file_chunk_keys__create()
{
  v0 = malloc_type_malloc(0x48uLL, 0x10700404B5FC448uLL);
  chunkserver__get_file_chunk_keys__init(v0);
  return v0;
}

_OWORD *chunkserver__get_chunk_keys_request__create(uint64_t a1)
{
  v2 = malloc_type_malloc(0x30uLL, 0x10E00407CC324CDuLL);
  v3 = v2;
  if (v2)
  {
    chunkserver__get_chunk_keys_request__init(v2);
    if (a1)
    {
      v4 = malloc_type_malloc(8 * a1, 0x2004093837F09uLL);
      *(v3 + 4) = v4;
      if (!v4)
      {
        chunkserver__get_chunk_keys_request__free_unpacked(v3, 0);
        return 0;
      }
    }
  }

  return v3;
}

CFDataRef chunkserver__get_chunk_keys_request__create_data(void **a1)
{
  packed_size = chunkserver__get_chunk_keys_request__get_packed_size(a1);
  v3 = malloc_type_malloc(packed_size, 0x100004077774924uLL);
  chunkserver__get_chunk_keys_request__pack(a1, v3);
  v4 = *MEMORY[0x277CBECE8];
  v5 = *MEMORY[0x277CBECF0];

  return XCFDataCreateWithBytesNoCopy(v4, v3, packed_size, v5);
}

void **chunkserver__put_chunk_keys_request__create(uint64_t a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x10E00409A86192AuLL);
  v3 = v2;
  if (v2)
  {
    chunkserver__put_chunk_keys_request__init(v2);
    if (a1)
    {
      v4 = malloc_type_malloc(8 * a1, 0x2004093837F09uLL);
      v3[4] = v4;
      if (!v4)
      {
        chunkserver__put_chunk_keys_request__free_unpacked(v3, 0);
        return 0;
      }
    }
  }

  return v3;
}

CFDataRef chunkserver__put_chunk_keys_request__create_data(void **a1)
{
  packed_size = chunkserver__put_chunk_keys_request__get_packed_size(a1);
  v3 = malloc_type_malloc(packed_size, 0x100004077774924uLL);
  chunkserver__put_chunk_keys_request__pack(a1, v3);
  v4 = *MEMORY[0x277CBECE8];
  v5 = *MEMORY[0x277CBECF0];

  return XCFDataCreateWithBytesNoCopy(v4, v3, packed_size, v5);
}

_OWORD *chunkserver__put_file_chunk_keys__create(uint64_t a1)
{
  v2 = malloc_type_malloc(0x60uLL, 0x10F0040B8968E1DuLL);
  v3 = v2;
  if (v2)
  {
    chunkserver__put_file_chunk_keys__init(v2);
    if (a1)
    {
      v4 = malloc_type_malloc(8 * a1, 0x2004093837F09uLL);
      *(v3 + 6) = v4;
      if (!v4)
      {
        chunkserver__put_file_chunk_keys__free_unpacked(v3, 0);
        return 0;
      }
    }
  }

  return v3;
}

_OWORD *chunkserver__chunk_key__create()
{
  v0 = malloc_type_malloc(0x50uLL, 0x1070040FC70CDAEuLL);
  chunkserver__chunk_key__init(v0);
  return v0;
}

void *mmcs_create_RangedItem(const __CFData *a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v10 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "mmcs_create_FileReferenceDataV1Chunk fileVerificationKey required.";
      v12 = v10;
      v13 = 2;
LABEL_11:
      _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    }

LABEL_20:
    v5 = 0;
    goto LABEL_21;
  }

  v4 = malloc_type_malloc(0x38uLL, 0x1070040B7852850uLL);
  if (!v4)
  {
    v14 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "mmcs_create_RangedItem";
      v11 = "%s failed to allocate rangedItem.";
      v12 = v14;
      v13 = 12;
      goto LABEL_11;
    }

    goto LABEL_20;
  }

  v5 = v4;
  opaque__file_reference_data__ranged_item__init(v4);
  *buf = a2;
  ProtobufCBinaryData_SetCopyBufferLen(v5 + 5, buf, 8uLL);
  if (!v5[6])
  {
    v15 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *v19 = 0;
    v16 = "mmcs_create_FileReferenceDataV1Chunk failed to allocate chunk_length.";
LABEL_18:
    _os_log_impl(&dword_2577D8000, v15, OS_LOG_TYPE_ERROR, v16, v19, 2u);
    goto LABEL_19;
  }

  if (CFDataGetLength(a1) != 32)
  {
    v15 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *v19 = 0;
    v16 = "mmcs_create_FileReferenceDataV1Chunk unexpected fileVerificationKey length.";
    goto LABEL_18;
  }

  v6 = malloc_type_malloc(0x20uLL, 0x100004077774924uLL);
  v5[4] = v6;
  if (!v6)
  {
    v15 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      v16 = "mmcs_create_FileReferenceDataV1Chunk failed to allocate file verification key.";
      goto LABEL_18;
    }

LABEL_19:
    free(v5);
    goto LABEL_20;
  }

  v7 = v6;
  v5[3] = 32;
  BytePtr = CFDataGetBytePtr(a1);
  v9 = *(BytePtr + 1);
  *v7 = *BytePtr;
  v7[1] = v9;
LABEL_21:
  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

CFDataRef mmcs_RangedItem_copyFileVerificationKey_copyItemLength(CFDataRef result, void *a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = *(result + 4);
    if (v5 && *(result + 5) == 8)
    {
      result = XCFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v5, *(result + 3), *MEMORY[0x277CBECF0]);
      if (result)
      {
        if (a2)
        {
          *(v4 + 3) = 0;
          *(v4 + 4) = 0;
          *a2 = result;
          result = 0;
        }

        if (a3)
        {
          *a3 = **(v4 + 6);
        }

        if (result)
        {
          CFRelease(result);
        }

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mmcs_item_create_FileOpaqueReferenceData(uint64_t a1)
{
  if (a1)
  {
    FileReferenceData = mmcs_generic_item_create_FileReferenceData(a1, mmcs_item_generic_item_callbacks);
    if (FileReferenceData)
    {
      v3 = FileReferenceData;
      v4 = *(a1 + 72);
      if (v4)
      {
        v5 = CFGetTypeID(v4);
        if (v5 == CFDataGetTypeID())
        {
          v6 = *(a1 + 72);
          file_reference_data_with_cfdata = mmcs_create_file_reference_data_with_cfdata(v3);
          if (file_reference_data_with_cfdata)
          {
LABEL_20:
            mmcs_free_FileReferenceData(v3);
            return file_reference_data_with_cfdata;
          }

          v8 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v15 = 0;
            v9 = "mmcs_item_create_FileOpaqueReferenceData failed to create cfdata from fileReferenceData.";
            v10 = &v15;
LABEL_18:
            _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_ERROR, v9, v10, 2u);
          }
        }

        else
        {
          v8 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *v16 = 0;
            v9 = "mmcs_item_create_FileOpaqueReferenceData must have CFDataRef referenceObject.";
            v10 = v16;
            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v17 = 0;
          v9 = "mmcs_item_create_FileOpaqueReferenceData cannot have NULL referenceObject.";
          v10 = &v17;
          goto LABEL_18;
        }
      }

      file_reference_data_with_cfdata = 0;
      goto LABEL_20;
    }

    v11 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v12 = "mmcs_item_create_FileOpaquedReferenceData failed to create fileReferenceData.";
      v13 = buf;
      goto LABEL_12;
    }
  }

  else
  {
    v11 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 = 0;
      v12 = "mmcs_item_create_FileOpaquedReferenceData cannot have NULL item.";
      v13 = &v19;
LABEL_12:
      _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_ERROR, v12, v13, 2u);
    }
  }

  return 0;
}

void **mmcs_generic_item_create_FileReferenceData(uint64_t a1, uint64_t a2)
{
  v141 = *MEMORY[0x277D85DE8];
  v4 = (*a2)();
  if (!v4)
  {
    v45 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_86;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceData";
    v46 = "%s failed, cannot have no signature";
    goto LABEL_85;
  }

  v5 = v4;
  if ((*v4 & 0x7F) != 4 && (*v4 & 8) == 0)
  {
    v45 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_86;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceData";
    v46 = "%s failed, FORD unexpected for non-MMCSv2 file";
    goto LABEL_85;
  }

  if (*v4 < 0)
  {
    v45 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_86;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceData";
    v46 = "%s failed, FORD unexpected for unencrypted file";
    goto LABEL_85;
  }

  if (!(*(a2 + 8))(a1))
  {
    v45 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_86;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceData";
    v46 = "%s failed, Sha2HMAC signature cannot have NULL fileVerificationKey.";
    goto LABEL_85;
  }

  if (*v5 < 0)
  {
    v45 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_86;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceData";
    v46 = "%s failed, Sha2HMAC signature cannot be unencrypted.";
    goto LABEL_85;
  }

  v7 = (*(a2 + 64))(a1);
  v8 = v7;
  if ((*v5 & 8) != 0)
  {
    if (!v7)
    {
      v45 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_86;
      }

      *buf = 136315138;
      *&buf[4] = "mmcs_generic_item_create_FileReferenceData";
      v46 = "%s failed, Sha2HMAC package must have ranged items.";
      goto LABEL_85;
    }

    if (!CFArrayGetCount(v7))
    {
      v45 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_86;
      }

      *buf = 136315138;
      *&buf[4] = "mmcs_generic_item_create_FileReferenceData";
      v46 = "%s failed, Sha2HMAC package must have non-zero ranged items.";
      goto LABEL_85;
    }
  }

  v9 = (*(a2 + 24))(a1);
  if (!v9)
  {
    v47 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_78;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV1";
    v48 = "%s failed, cannot have no-chunks";
LABEL_77:
    _os_log_impl(&dword_2577D8000, v47, OS_LOG_TYPE_ERROR, v48, buf, 0xCu);
    goto LABEL_78;
  }

  v10 = v9;
  v11 = (*a2)(a1);
  if (!v11)
  {
    v47 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_78;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV1";
    v48 = "%s failed, cannot have no signature";
    goto LABEL_77;
  }

  if ((*v11 & 0x7F) != 4 && (*v11 & 8) == 0)
  {
    v47 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_78;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV1";
    v48 = "%s failed, FORD unexpected for non-MMCSv2 file";
    goto LABEL_77;
  }

  if (*v11 < 0)
  {
    v47 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_78;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV1";
    v48 = "%s failed, FORD unexpected for unencrypted file";
    goto LABEL_77;
  }

  v13 = (*(a2 + 8))(a1);
  if (!v13)
  {
    v47 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_78;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV1";
    v48 = "%s failed, cannot have NULL fileVerificationKey";
    goto LABEL_77;
  }

  v14 = v13;
  FileReferenceData = mmcs_create_FileReferenceData(v8);
  if (!FileReferenceData)
  {
    v47 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV1";
      v48 = "%s failed to invoke mmcs_create_FileReferenceData";
      goto LABEL_77;
    }

LABEL_78:
    v16 = 0;
    goto LABEL_79;
  }

  v16 = FileReferenceData;
  v17 = malloc_type_malloc(8 * v10, 0x2004093837F09uLL);
  if (!v17)
  {
    v52 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_79;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV1";
    v53 = "%s failed to allocate chunk list";
    goto LABEL_94;
  }

  v18 = v17;
  v19 = malloc_type_malloc(0x40uLL, 0x10F0040790CF86CuLL);
  if (!v19)
  {
    v54 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2577D8000, v54, OS_LOG_TYPE_ERROR, "mmcs_create_FileReferenceDataV1 failed to allocate fileReferenceData.", buf, 2u);
    }

    free(v18);
    v52 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_79;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV1";
    v53 = "%s failed to invoke mmcs_create_FileReferenceDataV1";
LABEL_94:
    v55 = v52;
    v56 = 12;
    goto LABEL_112;
  }

  v20 = v19;
  opaque__file_reference_data__v1__init(v19);
  *(v20 + 3) = 0;
  *(v20 + 4) = v18;
  *(v20 + 10) = 1;
  BytePtr = CFDataGetBytePtr(v14);
  Length = CFDataGetLength(v14);
  v23 = 0;
  if (BytePtr)
  {
    v24 = Length;
  }

  else
  {
    v24 = 0;
  }

  if (Length)
  {
    v25 = BytePtr;
  }

  else
  {
    v25 = 0;
  }

  *(v20 + 6) = v24;
  *(v20 + 7) = v25;
  v16[3] = v20;
  v134 = v20;
  do
  {
    v26 = *(*(a2 + 40))(a1, v23);
    if ((v26 & 0x7F) != 4)
    {
      v57 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV1";
        *&buf[12] = 2048;
        *&buf[14] = v23;
        v53 = "%s observed inconsistent signature type between registerItem->signature and registerItem->chunks[%llu]->signature.";
        goto LABEL_111;
      }

      goto LABEL_79;
    }

    if ((v26 & 0x80) == 0)
    {
      v57 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV1";
        *&buf[12] = 2048;
        *&buf[14] = v23;
        v53 = "%s observed inconsistent encryption between registerItem->signature and registerItem->chunks[%llu]->signature.";
        goto LABEL_111;
      }

      goto LABEL_79;
    }

    v27 = (*(a2 + 56))(a1, v23);
    v28 = (*(a2 + 32))(a1, v23);
    v29 = (*(a2 + 48))(a1, v23);
    if (!v29)
    {
      v58 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_109;
      }

      *buf = 0;
      v59 = "mmcs_create_FileReferenceDataV1Chunk cannot have NULL chunkEncryptionKey.";
LABEL_105:
      _os_log_impl(&dword_2577D8000, v58, OS_LOG_TYPE_ERROR, v59, buf, 2u);
      goto LABEL_109;
    }

    v30 = v29;
    v31 = CKChunkSchemeAndEncryptionKeySize();
    if (!v31)
    {
      v58 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_109;
      }

      *buf = 0;
      v59 = "mmcs_create_FileReferenceDataV1Chunk cannot have zero length chunkEncryptionSignature.";
      goto LABEL_105;
    }

    v32 = v31;
    v136 = v23;
    v33 = malloc_type_malloc(0x58uLL, 0x10700408B6EF5B1uLL);
    if (!v33)
    {
      v58 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_109;
      }

      *buf = 0;
      v59 = "mmcs_create_FileReferenceDataV1Chunk failed to allocate fileReferenceDataChunk.";
      goto LABEL_105;
    }

    v34 = v33;
    opaque__file_reference_data__v1__chunk__init(v33);
    if (!v28)
    {
      goto LABEL_38;
    }

    *buf = v28;
    ProtobufCBinaryData_SetCopyBufferLen(v34 + 6, buf, 4uLL);
    if (!v34[7])
    {
      v60 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        *v139 = 0;
        _os_log_impl(&dword_2577D8000, v60, OS_LOG_TYPE_ERROR, "mmcs_create_FileReferenceDataV1Chunk failed to allocate chunk_length.", v139, 2u);
      }

      free(v34);
      v23 = v136;
LABEL_109:
      v57 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV1";
        *&buf[12] = 2048;
        *&buf[14] = v23;
        v53 = "%s observed error processing registerItem->chunks[%llu]";
LABEL_111:
        v55 = v57;
        v56 = 22;
LABEL_112:
        _os_log_impl(&dword_2577D8000, v55, OS_LOG_TYPE_ERROR, v53, buf, v56);
      }

LABEL_79:
      v49 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV1";
        _os_log_impl(&dword_2577D8000, v49, OS_LOG_TYPE_ERROR, "%s failed to create fileReferenceData", buf, 0xCu);
      }

      if (v16)
      {
        mmcs_free_FileReferenceData(v16);
      }

      v45 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_86;
      }

      *buf = 136315138;
      *&buf[4] = "mmcs_generic_item_create_FileReferenceData";
      v46 = "%s failed, cannot have NULL fileReferenceData";
LABEL_85:
      _os_log_impl(&dword_2577D8000, v45, OS_LOG_TYPE_ERROR, v46, buf, 0xCu);
      goto LABEL_86;
    }

    *(v34 + 10) = 1;
LABEL_38:
    v34[3] = v32;
    v34[4] = v30;
    if (v27)
    {
      v35 = CKSubchunkBlobSize();
      if (v35)
      {
        v36 = v27;
      }

      else
      {
        v36 = 0;
      }

      v34[9] = v35;
      v34[10] = v36;
      v37 = 1;
    }

    else
    {
      v37 = 0;
    }

    *(v34 + 16) = v37;
    v39 = *(v134 + 3);
    v38 = *(v134 + 4);
    *(v134 + 3) = v39 + 1;
    *(v38 + 8 * v39) = v34;
    v23 = v136 + 1;
  }

  while (v10 != v136 + 1);
  v40 = (*(a2 + 24))(a1);
  if (!v40)
  {
    v43 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_152;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV2";
    v44 = "%s failed, cannot have no-chunks";
LABEL_151:
    _os_log_impl(&dword_2577D8000, v43, OS_LOG_TYPE_ERROR, v44, buf, 0xCu);
    goto LABEL_152;
  }

  v41 = v40;
  v42 = (*a2)(a1);
  if (!v42)
  {
    v43 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_152;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV2";
    v44 = "%s failed, cannot have no signature";
    goto LABEL_151;
  }

  if ((*v42 & 0x7F) != 4 && (*v42 & 8) == 0)
  {
    v43 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV2";
      v44 = "%s failed, FORD unexpected for non-MMCSv2 file";
      goto LABEL_151;
    }

LABEL_152:
    v63 = 0;
LABEL_153:
    v88 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2577D8000, v88, OS_LOG_TYPE_ERROR, "mmcs_item_create_FileReferenceData failed to create fileReferenceData", buf, 2u);
    }

    if (v63)
    {
      mmcs_free_FileReferenceData(v63);
    }

    v89 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "mmcs_generic_item_create_FileReferenceData";
      goto LABEL_159;
    }

    goto LABEL_160;
  }

  if (*v42 < 0)
  {
    v43 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_152;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV2";
    v44 = "%s failed, FORD unexpected for unencrypted file";
    goto LABEL_151;
  }

  v61 = (*(a2 + 8))(a1);
  if (!v61)
  {
    v43 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_152;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV2";
    v44 = "%s failed, cannot have NULL fileVerificationKey";
    goto LABEL_151;
  }

  v62 = v61;
  v63 = mmcs_create_FileReferenceData(v8);
  if (!v63)
  {
    goto LABEL_153;
  }

  v133 = malloc_type_malloc(0x38uLL, 0x10F0040167B91E7uLL);
  if (!v133)
  {
    goto LABEL_153;
  }

  opaque__file_reference_data__v2__init(v133);
  v63[4] = v133;
  v64 = CFDataGetBytePtr(v62);
  v65 = CFDataGetLength(v62);
  v132 = 0;
  v135 = 0;
  v137 = 0;
  if (v64)
  {
    v66 = v65;
  }

  else
  {
    v66 = 0;
  }

  if (v65)
  {
    v67 = v64;
  }

  else
  {
    v67 = 0;
  }

  v133[3] = v66;
  v133[4] = v67;
  while (2)
  {
    v68 = (*(a2 + 40))(a1, v137);
    v69 = (*(a2 + 32))(a1, v137);
    v70 = (*(a2 + 48))(a1, v137);
    if ((*v68 & 0x7F) != 4)
    {
      v90 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_153;
      }

      *buf = 136315394;
      *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV2";
      *&buf[12] = 2048;
      *&buf[14] = v137;
      v91 = "%s observed inconsistent signature type between registerItem->signature and registerItem->chunks[%llu]->signature.";
      v92 = v90;
      v93 = 22;
LABEL_165:
      _os_log_impl(&dword_2577D8000, v92, OS_LOG_TYPE_ERROR, v91, buf, v93);
      goto LABEL_153;
    }

    if ((*v68 & 0x80) == 0)
    {
      v94 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_153;
      }

      *buf = 134217984;
      *&buf[4] = v137;
      v91 = "mmcs_item_create_FileReferenceData observed inconsistent encryption between registerItem->signature and registerItem->ri_chunkInstances[%llu].chunkReference->signature.";
      v92 = v94;
      v93 = 12;
      goto LABEL_165;
    }

    v71 = v70;
    if (v132 != v69)
    {
      v72 = malloc_type_realloc(v133[6], 8 * v133[5] + 8, 0x2004093837F09uLL);
      if (!v72)
      {
        goto LABEL_153;
      }

      v133[6] = v72;
      v135 = malloc_type_malloc(0x38uLL, 0x10F0040167B91E7uLL);
      if (!v135)
      {
        goto LABEL_153;
      }

      opaque__file_reference_data__v2__chunk_group__init(v135);
      v74 = v133[5];
      v73 = v133[6];
      v133[5] = v74 + 1;
      v73[v74] = v135;
      *buf = v69;
      ProtobufCBinaryData_SetCopyBufferLen(v135 + 3, buf, 4uLL);
      v132 = v69;
      if (!*(v135 + 4))
      {
        goto LABEL_153;
      }
    }

    if (!v71)
    {
      goto LABEL_153;
    }

    v75 = CKChunkSchemeAndEncryptionKeySize();
    if (!v75)
    {
      goto LABEL_153;
    }

    v76 = v75;
    v77 = malloc_type_malloc(0x40uLL, 0x10700407A2CD8F7uLL);
    v78 = opaque__file_reference_data__v2__chunk_group__chunk__init(v77);
    v77[3] = v76;
    v77[4] = v71;
    v79 = (*(a2 + 56))(a1, v137, v78);
    if (v79)
    {
      v80 = v79;
      v81 = CKSubchunkBlobSize();
      v82 = v81 ? v80 : 0;
      v77[6] = v81;
      v77[7] = v82;
      v83 = 1;
    }

    else
    {
      v83 = 0;
    }

    *(v77 + 10) = v83;
    v84 = malloc_type_realloc(*(v135 + 6), 8 * *(v135 + 5) + 8, 0x2004093837F09uLL);
    if (!v84)
    {
      goto LABEL_153;
    }

    v85 = *(v135 + 5);
    *(v135 + 5) = v85 + 1;
    *(v135 + 6) = v84;
    v84[v85] = v77;
    if (v41 != ++v137)
    {
      continue;
    }

    break;
  }

  packed_size = opaque__file_reference_data__get_packed_size(v63);
  if (packed_size && opaque__file_reference_data__get_packed_size(v16) > packed_size)
  {
    v87 = v16;
    v16 = v63;
  }

  else
  {
    v87 = v63;
  }

  mmcs_free_FileReferenceData(v87);
  v95 = (*(a2 + 24))(a1);
  if (!v95)
  {
    v98 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_216;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV3";
    v99 = "%s failed, cannot have no-chunks";
LABEL_215:
    _os_log_impl(&dword_2577D8000, v98, OS_LOG_TYPE_ERROR, v99, buf, 0xCu);
    goto LABEL_216;
  }

  v96 = v95;
  v97 = (*a2)(a1);
  if (!v97)
  {
    v98 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_216;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV3";
    v99 = "%s failed, cannot have no signature";
    goto LABEL_215;
  }

  if ((*v97 & 0x7F) != 4 && (*v97 & 8) == 0)
  {
    v98 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV3";
      v99 = "%s failed, FORD unexpected for non-MMCSv2 file";
      goto LABEL_215;
    }

LABEL_216:
    Mutable = 0;
LABEL_217:
    v108 = 0;
    goto LABEL_218;
  }

  if (*v97 < 0)
  {
    v98 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_216;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV3";
    v99 = "%s failed, FORD unexpected for unencrypted file";
    goto LABEL_215;
  }

  v100 = (*(a2 + 8))(a1);
  if (!v100)
  {
    v98 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_216;
    }

    *buf = 136315138;
    *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV3";
    v99 = "%s failed, cannot have NULL fileVerificationKey";
    goto LABEL_215;
  }

  v101 = v100;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    goto LABEL_217;
  }

  for (i = 0; i != v96; ++i)
  {
    v104 = (*(a2 + 32))(a1, i);
    Value = CFDictionaryGetValue(Mutable, v104);
    *buf = Value;
    if (!Value)
    {
      if (!mmcs_index_set_create(buf))
      {
        goto LABEL_217;
      }

      CFDictionarySetValue(Mutable, v104, *buf);
      Value = *buf;
      if (*buf)
      {
        C3BaseRelease(*buf);
        Value = *buf;
      }
    }

    mmcs_index_set_add_index(Value, i);
  }

  *buf = 0;
  mmcs_index_set_create(buf);
  CFDictionaryApplyFunction(Mutable, _chunkLengthIndexSetChecker, *buf);
  if (!mmcs_index_set_contains_range(*buf, 0, v96 - 1))
  {
    v106 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
    {
      *v139 = 0;
      _os_log_impl(&dword_2577D8000, v106, OS_LOG_TYPE_ERROR, "index set missing indexes", v139, 2u);
    }
  }

  if (mmcs_index_set_count(*buf) != v96)
  {
    v107 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      *v139 = 0;
      _os_log_impl(&dword_2577D8000, v107, OS_LOG_TYPE_ERROR, "index set wrong number of indexes", v139, 2u);
    }
  }

  if (*buf)
  {
    C3BaseRelease(*buf);
  }

  v108 = mmcs_create_FileReferenceData(v8);
  if (!v108 || (v138 = malloc_type_malloc(0x48uLL, 0x10F00406B62C39FuLL)) == 0)
  {
LABEL_218:
    v124 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
    {
      *v139 = 0;
      _os_log_impl(&dword_2577D8000, v124, OS_LOG_TYPE_ERROR, "mmcs_item_create_FileReferenceData failed to create fileReferenceData", v139, 2u);
    }

    if (v108)
    {
      mmcs_free_FileReferenceData(v108);
      v108 = 0;
    }

    goto LABEL_222;
  }

  opaque__file_reference_data__v3__init(v138);
  v108[5] = v138;
  v109 = CFDataGetBytePtr(v101);
  v110 = CFDataGetLength(v101);
  if (v109)
  {
    v111 = v110;
  }

  else
  {
    v111 = 0;
  }

  if (v110)
  {
    v112 = v109;
  }

  else
  {
    v112 = 0;
  }

  v138[3] = v111;
  v138[4] = v112;
  v113 = malloc_type_malloc(8 * v96, 0x2004093837F09uLL);
  if (!v113)
  {
    v126 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_218;
    }

    *buf = 0;
    v127 = "mmcs_item_create_FileReferenceData failed to allocate chunk list";
    v128 = v126;
    v129 = 2;
    goto LABEL_240;
  }

  v114 = 0;
  v138[6] = v113;
  do
  {
    v115 = (*(a2 + 40))(a1, v114);
    v116 = (*(a2 + 48))(a1, v114);
    v117 = (*(a2 + 32))(a1, v114);
    v118 = (*(a2 + 56))(a1, v114);
    if ((*v115 & 0x7F) != 4)
    {
      v130 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_218;
      }

      *buf = 136315394;
      *&buf[4] = "mmcs_generic_item_create_FileReferenceDataUsingV3";
      *&buf[12] = 2048;
      *&buf[14] = v114;
      v127 = "%s observed inconsistent signature type between registerItem->signature and registerItem->chunks[%llu]->signature.";
      v128 = v130;
      v129 = 22;
LABEL_240:
      _os_log_impl(&dword_2577D8000, v128, OS_LOG_TYPE_ERROR, v127, buf, v129);
      goto LABEL_218;
    }

    if ((*v115 & 0x80) == 0)
    {
      v131 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_218;
      }

      *buf = 134217984;
      *&buf[4] = v114;
      v127 = "mmcs_item_create_FileReferenceData observed inconsistent encryption between registerItem->signature and registerItem->ri_chunkInstances[%llu].chunkReference->signature.";
LABEL_239:
      v128 = v131;
      v129 = 12;
      goto LABEL_240;
    }

    FileReferenceDataV3Chunk = mmcs_create_FileReferenceDataV3Chunk(v116, v117, v118);
    if (!FileReferenceDataV3Chunk)
    {
      v131 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_218;
      }

      *buf = 134217984;
      *&buf[4] = v114;
      v127 = "mmcs_item_create_FileReferenceData observed error processing registerItem->ri_chunkInstances[%llu].chunkReference";
      goto LABEL_239;
    }

    v121 = v138[5];
    v120 = v138[6];
    v138[5] = v121 + 1;
    *(v120 + 8 * v121) = FileReferenceDataV3Chunk;
    ++v114;
  }

  while (v96 != v114);
  Count = CFDictionaryGetCount(Mutable);
  v123 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
  v138[8] = v123;
  if (!v123)
  {
    goto LABEL_218;
  }

  *&buf[8] = 0;
  *&buf[16] = 1;
  *buf = v138;
  CFDictionaryApplyFunction(Mutable, _add_index_set, buf);
  if (!buf[16])
  {
    goto LABEL_218;
  }

LABEL_222:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!v108)
  {
    v89 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "mmcs_generic_item_create_FileReferenceData";
LABEL_159:
      _os_log_impl(&dword_2577D8000, v89, OS_LOG_TYPE_ERROR, "%s failed, cannot have NULL fileReferenceData", buf, 0xCu);
    }

LABEL_160:
    mmcs_free_FileReferenceData(v16);
LABEL_86:
    v16 = 0;
    goto LABEL_87;
  }

  v125 = opaque__file_reference_data__get_packed_size(v108);
  if (v125 && opaque__file_reference_data__get_packed_size(v16) > v125)
  {
    mmcs_free_FileReferenceData(v16);
    v16 = v108;
  }

  else
  {
    mmcs_free_FileReferenceData(v108);
  }

LABEL_87:
  v50 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t mmcs_create_file_reference_data_with_cfdata(void **a1)
{
  packed_size = opaque__file_reference_data__get_packed_size(a1);
  if (packed_size)
  {
    v3 = packed_size;
    v4 = malloc_type_malloc(packed_size, 0x100004077774924uLL);
    if (v4)
    {
      v5 = v4;
      if (v3 == opaque__file_reference_data__pack(a1, v4))
      {
        v6 = XCFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v5, v3, *MEMORY[0x277CBECF0]);
        if (v6)
        {
          v7 = v6;
          v8 = PCSMMCSCopyEncryptedData();
          CFRelease(v7);
          return v8;
        }

        v13 = mmcs_logging_logger_default();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        v16 = 0;
        v14 = "mmcs_create_file_reference_data_with_cfdata failed to allocate CFData wrapping body buffer";
        v15 = &v16;
      }

      else
      {
        v13 = mmcs_logging_logger_default();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
LABEL_16:
          free(v5);
          return 0;
        }

        v17 = 0;
        v14 = "mmcs_create_file_reference_data_with_cfdata failed to serialize fileReferenceData to expected size";
        v15 = &v17;
      }

      _os_log_impl(&dword_2577D8000, v13, OS_LOG_TYPE_ERROR, v14, v15, 2u);
      goto LABEL_16;
    }

    v10 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "mmcs_create_file_reference_data_with_cfdata failed to allocate buffer for serialized fileReferenceData";
      v12 = buf;
      goto LABEL_10;
    }
  }

  else
  {
    v10 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v19 = 0;
      v11 = "mmcs_create_file_reference_data_with_cfdata invalid size for serialized fileReferenceData";
      v12 = &v19;
LABEL_10:
      _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_ERROR, v11, v12, 2u);
    }
  }

  return 0;
}

void **mmcs_free_FileReferenceData(void **result)
{
  if (result)
  {
    v1 = result;
    result[6] = 0;
    v2 = result[7];
    if (v2)
    {
      free(v2);
    }

    v1[7] = 0;
    v3 = v1[3];
    if (v3)
    {
      v4 = v3[3];
      if (v4)
      {
        for (i = 0; i < v4; ++i)
        {
          v6 = *(v3[4] + 8 * i);
          if (v6)
          {
            *(v6 + 64) = 0;
            *(v6 + 24) = 0;
            *(v6 + 32) = 0;
            *(v6 + 72) = 0;
            *(v6 + 80) = 0;
            v4 = v3[3];
          }
        }
      }

      v3[6] = 0;
      v3[7] = 0;
    }

    v7 = v1[4];
    if (v7)
    {
      v8 = v7[5];
      if (v8)
      {
        for (j = 0; j < v8; ++j)
        {
          v10 = *(v7[6] + 8 * j);
          if (v10)
          {
            v11 = *(v10 + 40);
            if (v11)
            {
              v12 = *(v10 + 48);
              do
              {
                v13 = *v12;
                *(v13 + 24) = 0;
                *(v13 + 32) = 0;
                v14 = *v12;
                *(v14 + 48) = 0;
                *(v14 + 56) = 0;
                v15 = *v12++;
                *(v15 + 40) = 0;
                --v11;
              }

              while (v11);
              v8 = v7[5];
            }
          }
        }
      }

      v7[3] = 0;
      v7[4] = 0;
    }

    v16 = v1[5];
    if (v16)
    {
      v17 = v16[5];
      if (v17)
      {
        for (k = 0; k < v17; ++k)
        {
          v19 = *(v16[6] + 8 * k);
          if (v19)
          {
            *(v19 + 24) = 0;
            *(v19 + 32) = 0;
            *(v19 + 40) = 0;
            *(v19 + 48) = 0;
            *(v19 + 56) = 0;
            v17 = v16[5];
          }
        }
      }

      v16[3] = 0;
      v16[4] = 0;
    }

    return opaque__file_reference_data__free_unpacked(v1, 0);
  }

  return result;
}

uint64_t mmcs_register_item_create_FileOpaqueReferenceData(uint64_t a1)
{
  if (a1)
  {
    FileReferenceData = mmcs_generic_item_create_FileReferenceData(a1, mmcs_register_item_generic_item_callbacks);
    if (FileReferenceData)
    {
      v3 = FileReferenceData;
      v4 = *(a1 + 32);
      if (v4)
      {
        v5 = CFGetTypeID(v4);
        if (v5 == CFDataGetTypeID())
        {
          v6 = *(a1 + 32);
          file_reference_data_with_cfdata = mmcs_create_file_reference_data_with_cfdata(v3);
          if (file_reference_data_with_cfdata)
          {
LABEL_20:
            mmcs_free_FileReferenceData(v3);
            return file_reference_data_with_cfdata;
          }

          v8 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v15 = 0;
            v9 = "mmcs_register_item_create_FileOpaquedReferenceData failed to create cfdata from fileReferenceData.";
            v10 = &v15;
LABEL_18:
            _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_ERROR, v9, v10, 2u);
          }
        }

        else
        {
          v8 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *v16 = 0;
            v9 = "mmcs_register_item_create_FileOpaquedReferenceData must have CFDataRef referenceObject.";
            v10 = v16;
            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v17 = 0;
          v9 = "mmcs_register_item_create_FileOpaquedReferenceData cannot have NULL referenceObject.";
          v10 = &v17;
          goto LABEL_18;
        }
      }

      file_reference_data_with_cfdata = 0;
      goto LABEL_20;
    }

    v11 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v12 = "mmcs_register_item_create_FileOpaquedReferenceData failed to create fileReferenceData.";
      v13 = buf;
      goto LABEL_12;
    }
  }

  else
  {
    v11 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 = 0;
      v12 = "mmcs_register_item_create_FileOpaquedReferenceData cannot have NULL registerItem.";
      v13 = &v19;
LABEL_12:
      _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_ERROR, v12, v13, 2u);
    }
  }

  return 0;
}

void mmcs_free_ChunkInfo(void *a1)
{
  if (a1)
  {
    a1[3] = 0;
    a1[4] = 0;
    v2 = a1[7];
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

CFIndex *mmcs_create_ChunkInfo(int a1, char *a2, const UInt8 *a3, __CFData *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v11 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *cf = 0;
      v12 = "ChunkInfo cannot have NULL chunkSignature.";
      goto LABEL_35;
    }

LABEL_36:
    v14 = 0;
    goto LABEL_37;
  }

  if (!a1)
  {
    v11 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *cf = 0;
      v12 = "ChunkInfo cannot have zero length chunk.";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v8 = CKChunkSchemeAndSignatureSize();
  if (!v8)
  {
    v11 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *cf = 0;
      v12 = "ChunkInfo cannot have zero length chunkSignature.";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v9 = v8;
  if (a3)
  {
    v10 = CKChunkSchemeAndEncryptionKeySize();
    if (!v10)
    {
      v11 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *cf = 0;
        v12 = "ChunkInfo cannot have zero length chunkEncryptionSignature.";
LABEL_35:
        _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_ERROR, v12, cf, 2u);
        goto LABEL_36;
      }

      goto LABEL_36;
    }
  }

  else
  {
    v10 = 0;
  }

  if (a4)
  {
    if ((*a4 == 0) != (*(a4 + 1) == 0))
    {
      v11 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *cf = 0;
        v12 = "ChunkInfo cannot have partial complete pcs info.";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (!a3 && *a4)
    {
      v11 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *cf = 0;
        v12 = "ChunkInfo cannot have reference signature without encryption signature.";
        goto LABEL_35;
      }

      goto LABEL_36;
    }
  }

  v13 = malloc_type_malloc(0x50uLL, 0x10700403FCE3692uLL);
  if (!v13)
  {
    v11 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *cf = 0;
      v12 = "ChunkInfo failed to allocate Chunkserver__ChunkInfo";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v14 = v13;
  if (a3)
  {
    v15 = CFDataCreate(*MEMORY[0x277CBECE8], a3, v10);
    v16 = v15;
    if (!v15)
    {
      v18 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *cf = 0;
        v19 = "ChunkInfo failed to create schemeAndKey for chunkEncryptionSignature";
        v20 = cf;
        goto LABEL_56;
      }

LABEL_57:
      free(v14);
      a4 = 0;
      v14 = 0;
      goto LABEL_63;
    }

    if (a4)
    {
      v17 = *(a4 + 1);
      if (v17)
      {
        *cf = 0;
        a4 = mmcs_chunk_key_copy_wraptured_scheme_and_key(v15, v17, 1, cf);
        if (*cf)
        {
          CFRelease(*cf);
        }

        *cf = 0;
        if (!a4)
        {
          v18 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v30 = 0;
            v19 = "ChunkInfo failed to create wrappedKey for chunkEncryptionSignature";
            v20 = &v30;
LABEL_56:
            _os_log_impl(&dword_2577D8000, v18, OS_LOG_TYPE_ERROR, v19, v20, 2u);
            goto LABEL_57;
          }

          goto LABEL_57;
        }
      }

      else
      {
        a4 = 0;
      }
    }
  }

  else
  {
    a4 = 0;
    v16 = 0;
  }

  if (gMMCS_DebugLevel < 4)
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  }

  chunkserver__chunk_info__init(v14);
  *(v14 + 16) = a1;
  v14[3] = v9;
  v14[4] = a2;
  if (Mutable)
  {
    v24 = hextostrdup(a2, v9);
    CFStringAppendFormat(Mutable, 0, @"chunk sig %s", v24);
    if (v24)
    {
      free(v24);
    }

    if (!a3)
    {
      goto LABEL_60;
    }

    *(v14 + 10) = 1;
    v25 = mmcs_key_description_create_with_cfdata(v16, 1);
    CFStringAppendFormat(Mutable, 0, @" key %@", v25);
    if (v25)
    {
      CFRelease(v25);
    }

    if (a4)
    {
      StringDescription = XCFDataCreateStringDescription(a4);
      CFStringAppendFormat(Mutable, 0, @" encrypted key %@", StringDescription);
      if (StringDescription)
      {
        CFRelease(StringDescription);
      }

      goto LABEL_53;
    }

    goto LABEL_58;
  }

  if (a3)
  {
    *(v14 + 10) = 1;
    if (a4)
    {
LABEL_53:
      v27 = v14 + 6;
      v28 = a4;
      goto LABEL_59;
    }

LABEL_58:
    v27 = v14 + 6;
    v28 = v16;
LABEL_59:
    ProtobufCBinaryData_SetData(v27, v28);
    if (!Mutable)
    {
      goto LABEL_63;
    }

LABEL_60:
    v29 = mmcs_logging_logger_chunk();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *cf = 138543362;
      *&cf[4] = Mutable;
      _os_log_impl(&dword_2577D8000, v29, OS_LOG_TYPE_DEFAULT, "ChunkInfo %{public}@", cf, 0xCu);
    }

    CFRelease(Mutable);
  }

LABEL_63:
  if (v16)
  {
    CFRelease(v16);
  }

  if (a4)
  {
    CFRelease(a4);
  }

LABEL_37:
  v21 = *MEMORY[0x277D85DE8];
  return v14;
}

_DWORD *mmcs_create_FordInfo(int a1)
{
  if (a1)
  {
    v2 = malloc_type_malloc(0x28uLL, 0x10600401BE82CDFuLL);
    v3 = v2;
    if (v2)
    {
      chunkserver__ford_info__init(v2);
      v3[6] = 1;
      v3[7] = a1;
      v3[8] = 0;
    }
  }

  else
  {
    v4 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_2577D8000, v4, OS_LOG_TYPE_ERROR, "FordInfo cannot have zero length fileOpaqueReferenceDataLength.", v6, 2u);
    }

    return 0;
  }

  return v3;
}

void mmcs_free_ChunkingProfile(void *a1)
{
  if (a1)
  {
    v2 = a1[5];
    if (v2)
    {
      free(v2);
    }

    a1[5] = 0;
    v3 = a1[6];
    if (v3)
    {
      free(v3);
    }

    a1[6] = 0;
    v4 = a1[8];
    if (v4)
    {
      free(v4);
    }

    free(a1);
  }
}

_DWORD *mmcs_create_ChunkingProfile(uint64_t a1)
{
  if (a1)
  {
    v2 = malloc_type_malloc(0x48uLL, 0x10700402FA450D5uLL);
    v3 = v2;
    if (v2)
    {
      chunkserver__file_chunk_list__chunking_profile__init(v2);
      v3[6] = 1;
      v4 = *(a1 + 24);
      *(v3 + 4) = *(a1 + 16);
      v5 = CKProfileResultsConfigurationVersion();
      if (v5)
      {
        *(v3 + 6) = createCStringWithCFString(v5);
      }

      v6 = *(a1 + 24);
      v7 = CKProfileResultsResolvedFileExtension();
      if (v7)
      {
        *(v3 + 8) = createCStringWithCFString(v7);
      }

      v8 = *(a1 + 24);
      if (CKProfileResultsType())
      {
        v9 = *MEMORY[0x277CBECE8];
        v10 = CKProfileTypeDescription();
        v11 = CFStringCreateWithCString(v9, v10, 0x8000100u);
        *(v3 + 5) = createCStringWithCFString(v11);
        if (v11)
        {
          CFRelease(v11);
        }
      }

      v12 = *(a1 + 24);
      IsDefault = CKProfileResultsIsDefault();
      v3[14] = IsDefault != 0;
      if (IsDefault)
      {
        v3[15] = CFBooleanGetValue(IsDefault) != 0;
      }
    }
  }

  else
  {
    v14 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16[0] = 0;
      _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_ERROR, "chunkingProfile cannot be NULL.", v16, 2u);
    }

    return 0;
  }

  return v3;
}

void mmcs_free_FileChunkList(void *a1)
{
  if (a1)
  {
    a1[3] = 0;
    a1[4] = 0;
    a1[5] = 0;
    a1[9] = 0;
    a1[10] = 0;
    if (a1[6])
    {
      v2 = 0;
      do
      {
        mmcs_free_ChunkInfo(*(a1[7] + 8 * v2++));
      }

      while (v2 < a1[6]);
    }

    if (a1[14])
    {
      v3 = 0;
      do
      {
        mmcs_free_ChunkingProfile(*(a1[15] + 8 * v3++));
      }

      while (v3 < a1[14]);
    }

    v4 = a1[12];
    if (v4)
    {
      free(v4);
    }

    v5 = a1[7];
    if (v5)
    {
      free(v5);
    }

    a1[7] = 0;
    v6 = a1[15];
    if (v6)
    {
      free(v6);
    }

    a1[15] = 0;
    v7 = a1[11];
    if (v7)
    {
      free(v7);
    }

    free(a1);
  }
}

_OWORD *mmcs_create_FileChunkList(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a1)
  {
    v19 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v34 = 0;
      v20 = "FileChunkList cannot have NULL fileSignature.";
      v21 = &v34;
      goto LABEL_27;
    }

    return 0;
  }

  if (!a5)
  {
    v19 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v33 = 0;
      v20 = "FileChunkList cannot have zero length chunk.";
      v21 = &v33;
      goto LABEL_27;
    }

    return 0;
  }

  if (!a6)
  {
    v19 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v32 = 0;
      v20 = "FileChunkList cannot have NULL chunkList.";
      v21 = &v32;
      goto LABEL_27;
    }

    return 0;
  }

  v17 = CKFileSchemeAndSignatureSize();
  if (!v17)
  {
    v19 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v20 = "FileChunkList cannot have zero length fileSignature.";
      v21 = buf;
      goto LABEL_27;
    }

    return 0;
  }

  v18 = v17;
  if (a4 && (*a4 == 0) != (*(a4 + 8) == 0))
  {
    v19 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v30 = 0;
      v20 = "FileChunkList cannot have partial complete pcs info.";
      v21 = &v30;
LABEL_27:
      _os_log_impl(&dword_2577D8000, v19, OS_LOG_TYPE_ERROR, v20, v21, 2u);
      return 0;
    }

    return 0;
  }

  v22 = malloc_type_malloc(0x80uLL, 0x10F00400DC2D0DAuLL);
  v23 = v22;
  if (v22)
  {
    chunkserver__file_chunk_list__init(v22);
    *(v23 + 3) = v18;
    *(v23 + 4) = a1;
    if (a4 && (v24 = *a4) != 0)
    {
      *(v23 + 16) = 1;
      BytePtr = CFDataGetBytePtr(v24);
      Length = CFDataGetLength(*a4);
      if (BytePtr)
      {
        v27 = Length;
      }

      else
      {
        v27 = 0;
      }

      if (Length)
      {
        v28 = BytePtr;
      }

      else
      {
        v28 = 0;
      }

      *(v23 + 9) = v27;
      *(v23 + 10) = v28;
    }

    else
    {
      *(v23 + 16) = 0;
      *(v23 + 9) = 0;
      *(v23 + 10) = 0;
    }

    *(v23 + 5) = a2;
    if (a3)
    {
      *(v23 + 11) = createCStringWithCFString(a3);
    }

    *(v23 + 6) = a5;
    *(v23 + 7) = a6;
    if (a7)
    {
      *(v23 + 12) = a7;
    }

    if (a8 && a9)
    {
      *(v23 + 14) = a8;
      *(v23 + 15) = a9;
    }
  }

  return v23;
}

void mmcs_free_FileChunkLists(void *a1)
{
  if (a1)
  {
    if (a1[3])
    {
      v2 = 0;
      do
      {
        mmcs_free_FileChunkList(*(a1[4] + 8 * v2++));
      }

      while (v2 < a1[3]);
    }

    v3 = a1[4];
    if (v3)
    {
      free(v3);
    }

    a1[4] = 0;
    v4 = a1[10];
    if (v4)
    {
      free(v4);
    }

    free(a1);
  }
}

void *mmcs_create_FileChunkLists(int a1, int a2, uint64_t a3, const __CFData *a4, uint64_t a5)
{
  if (!a3)
  {
    v13 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v20 = 0;
      v14 = "FileChunkLists cannot have zero length chunk count.";
      v15 = &v20;
LABEL_18:
      _os_log_impl(&dword_2577D8000, v13, OS_LOG_TYPE_ERROR, v14, v15, 2u);
    }

    return 0;
  }

  if (!a5)
  {
    v13 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      v14 = "FileChunkLists cannot have NULL fileChunkLists.";
      v15 = v19;
      goto LABEL_18;
    }

    return 0;
  }

  v10 = malloc_type_malloc(0x58uLL, 0x10F00405CAB4923uLL);
  chunkserver__file_chunk_lists__init(v10);
  v10[3] = a3;
  v10[4] = a5;
  *(v10 + 12) = 1;
  v10[7] = 65;
  if (a1 && a2)
  {
    mmcs_create_FileChunkLists_cold_1();
  }

  if (a1 == 2 && !a4)
  {
    v10[7] = 81;
    v11 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_INFO, "Asking for Inline Put Complete Request Version 2", buf, 2u);
    }
  }

  if (a2)
  {
    v10[7] |= 2uLL;
    v12 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_INFO, "Request LAN Asset Cache Headers", v17, 2u);
    }
  }

  if (a4)
  {
    ProtobufCBinaryData_SetData(v10 + 9, a4);
    *(v10 + 16) = 1;
  }

  return v10;
}

void *mmcs_put_request_create_FileChunkLists(uint64_t a1)
{
  v76 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v49 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_56;
    }

    *buf = 0;
    v50 = "PutRequest cannot be NULL.";
LABEL_55:
    _os_log_impl(&dword_2577D8000, v49, OS_LOG_TYPE_ERROR, v50, buf, 2u);
    goto LABEL_56;
  }

  v2 = *(a1 + 304);
  if (!v2)
  {
    v49 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_56;
    }

    *buf = 0;
    v50 = "PutRequest cannot have NULL putState.";
    goto LABEL_55;
  }

  if (!*(v2 + 144))
  {
    v49 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_56;
    }

    *buf = 0;
    v50 = "PutRequest cannot have zero state item count.";
    goto LABEL_55;
  }

  Count = CFSetGetCount(*(v2 + 56));
  v4 = 8 * Count;
  MEMORY[0x28223BE20](Count);
  v5 = &v69 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(&v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  bzero(&v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v6 = *(a1 + 304);
  if (!*(v6 + 144))
  {
    goto LABEL_51;
  }

  v7 = 0;
  v8 = 0;
  v9 = 152;
  do
  {
    v10 = v6 + v9;
    Value = CFSetGetValue(*(v6 + 56), (v6 + v9));
    if (!Value)
    {
      v49 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v50 = "PutRequest putState distinct item list corrupt";
        goto LABEL_55;
      }

      goto LABEL_56;
    }

    if (v10 == Value && mmcs_item_needs_put(v10))
    {
      if (v7 >= Count)
      {
        v49 = mmcs_logging_logger_default();
        if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_56;
        }

        *buf = 0;
        v50 = "PutRequest too many distinct items!";
        goto LABEL_55;
      }

      *&v5[8 * v7++] = v10;
    }

    ++v8;
    v6 = *(a1 + 304);
    v9 += 416;
  }

  while (v8 < *(v6 + 144));
  if (!v7)
  {
LABEL_51:
    v49 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v50 = "PutRequest no items in the put request available";
      goto LABEL_55;
    }

LABEL_56:
    v51 = *MEMORY[0x277D85DE8];
    return 0;
  }

  v12 = malloc_type_malloc(8 * v7, 0x2004093837F09uLL);
  v13 = 0;
  v72 = v12;
  do
  {
    v14 = *&v5[8 * v13];
    if (!v14)
    {
      mmcs_put_request_create_FileChunkLists_cold_1();
    }

    if (!*(v14 + 104))
    {
      FordInfo = 0;
      goto LABEL_21;
    }

    FileOpaqueReferenceData = mmcs_item_create_FileOpaqueReferenceData(*&v5[8 * v13]);
    *(v14 + 208) = FileOpaqueReferenceData;
    if (!FileOpaqueReferenceData)
    {
      v64 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v63 = "mmcs_item_create_FileChunkList failed to create fileOpaqueMetadataReference.";
LABEL_94:
        _os_log_impl(&dword_2577D8000, v64, OS_LOG_TYPE_ERROR, v63, buf, 2u);
      }

LABEL_79:
      v12[v13] = 0;
      v60 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_2577D8000, v60, OS_LOG_TYPE_ERROR, "Unable to create file chunk list for item.", buf, 2u);
      }

      if (v13)
      {
        for (i = 0; i != v13; ++i)
        {
          mmcs_free_FileChunkList(v12[i]);
        }
      }

      free(v12);
      goto LABEL_56;
    }

    Length = CFDataGetLength(FileOpaqueReferenceData);
    if (!Length)
    {
      v64 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v63 = "mmcs_item_create_FileChunkList cannot have 0 length fileOpaqueMetadataReference.";
        goto LABEL_94;
      }

      goto LABEL_79;
    }

    FordInfo = mmcs_create_FordInfo(Length);
    if (!FordInfo)
    {
      v64 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_79;
      }

      *buf = 0;
      v63 = "mmcs_item_create_FileChunkList failed to create fordInfo.";
      goto LABEL_94;
    }

LABEL_21:
    v18 = *(v14 + 112);
    if (v18)
    {
      v19 = CFArrayGetCount(v18);
      v20 = v19;
      if (v19 >= 1)
      {
        v21 = malloc_type_malloc(8 * v19, 0x2004093837F09uLL);
        if (v21)
        {
          v22 = v21;
          v23 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v14 + 112), v23);
            ChunkingProfile = mmcs_create_ChunkingProfile(ValueAtIndex);
            v22[v23] = ChunkingProfile;
            if (!ChunkingProfile)
            {
              break;
            }

            if (v20 == ++v23)
            {
              v26 = FordInfo;
              goto LABEL_30;
            }
          }

          v73 = v22;
          v56 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_2577D8000, v56, OS_LOG_TYPE_ERROR, "chunkProfiles[i] undefined.", buf, 2u);
          }

          v30 = 0;
          v42 = 0;
          v20 = v23;
        }

        else
        {
          v68 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_2577D8000, v68, OS_LOG_TYPE_ERROR, "mmcs_item_create_FileChunkList failed to allocate chunkProfiles.", buf, 2u);
          }

          v30 = 0;
          v42 = 0;
          v73 = 0;
        }

        goto LABEL_65;
      }

      v26 = FordInfo;
      v22 = 0;
    }

    else
    {
      v26 = FordInfo;
      v22 = 0;
      v20 = 0;
    }

LABEL_30:
    v27 = malloc_type_malloc(8 * *(v14 + 144), 0x2004093837F09uLL);
    if (!v27)
    {
      v73 = v22;
      v62 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_2577D8000, v62, OS_LOG_TYPE_ERROR, "mmcs_item_create_FileChunkList failed to allocate chunks.", buf, 2u);
      }

      v30 = 0;
      v42 = 0;
      FordInfo = v26;
      v12 = v72;
LABEL_65:
      if (FordInfo)
      {
        free(FordInfo);
      }

      if (v73)
      {
        if (v20 >= 1)
        {
          v57 = v73;
          do
          {
            v58 = *v57++;
            mmcs_free_ChunkingProfile(v58);
            --v20;
          }

          while (v20);
        }

        free(v73);
      }

      if (v42)
      {
        if (v30)
        {
          v59 = v42;
          do
          {
            mmcs_free_ChunkInfo(*v59);
            if (*v59)
            {
              free(*v59);
            }

            *v59++ = 0;
            --v30;
          }

          while (v30);
        }

        free(v42);
      }

      goto LABEL_79;
    }

    v28 = v27;
    v29 = *(v14 + 144);
    if (v29)
    {
      v73 = v22;
      v70 = v26;
      v71 = v13;
      v30 = 0;
      v74 = (v14 + 64);
      v31 = 56;
      while (1)
      {
        v32 = *(*(v14 + 272) + v31);
        v33 = mmcs_item_padded_chunk_length(v14, *(v32 + 4));
        if (*(v14 + 104))
        {
          v34 = 0;
          v35 = 0;
        }

        else
        {
          v35 = *(v32 + 16);
          v34 = v74;
        }

        ChunkInfo = mmcs_create_ChunkInfo(v33, *(v32 + 8), v35, v34);
        *(v28 + 8 * v30) = ChunkInfo;
        if (!ChunkInfo)
        {
          break;
        }

        ++v30;
        v31 += 104;
        if (v29 == v30)
        {
          v37 = *(v14 + 144);
          v26 = v70;
          v13 = v71;
          v22 = v73;
          goto LABEL_40;
        }
      }

      v52 = mmcs_logging_logger_default();
      v53 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
      v13 = v71;
      v54 = v72;
      v55 = v70;
      if (v53)
      {
        *buf = 0;
        _os_log_impl(&dword_2577D8000, v52, OS_LOG_TYPE_ERROR, "chunks[i] undefined.", buf, 2u);
      }

      v42 = v28;
      FordInfo = v55;
      v12 = v54;
      goto LABEL_65;
    }

    v37 = 0;
LABEL_40:
    v38 = *v14;
    v39 = *(v14 + 8);
    v40 = *(v14 + 200);
    v41 = v14 + 64;
    v42 = v28;
    FileChunkList = mmcs_create_FileChunkList(v38, v39, v40, v41, v37, v28, v26, v20, v22);
    if (!FileChunkList)
    {
      FordInfo = v26;
      v73 = v22;
      v66 = mmcs_logging_logger_default();
      v67 = os_log_type_enabled(v66, OS_LOG_TYPE_ERROR);
      v12 = v72;
      if (v67)
      {
        *buf = 0;
        _os_log_impl(&dword_2577D8000, v66, OS_LOG_TYPE_ERROR, "mmcs_register_item_create_FileReferenceData failed to create fileReferenceData", buf, 2u);
      }

      v30 = v29;
      goto LABEL_65;
    }

    v12 = v72;
    v72[v13++] = FileChunkList;
  }

  while (v13 != v7);
  v44 = *(a1 + 68);
  v45 = *(a1 + 72);
  v46 = *(*(a1 + 304) + 120);
  v47 = *MEMORY[0x277D85DE8];

  return mmcs_create_FileChunkLists(v44, v45, v7, v46, v12);
}

CFDataRef mmcs_put_request_create_AuthorizePutRequestBody(uint64_t a1)
{
  FileChunkLists = mmcs_put_request_create_FileChunkLists(a1);

  return mmcs_create_AuthorizePutRequestBody(FileChunkLists);
}

CFDataRef mmcs_create_AuthorizePutRequestBody(void **a1)
{
  if (a1)
  {
    packed_size = chunkserver__file_chunk_lists__get_packed_size(a1);
    if (packed_size)
    {
      v3 = packed_size;
      v4 = malloc_type_malloc(packed_size, 0x100004077774924uLL);
      if (v4)
      {
        v5 = v4;
        if (v3 == chunkserver__file_chunk_lists__pack(a1, v4))
        {
          v6 = XCFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v5, v3, *MEMORY[0x277CBECF0]);
          if (v6)
          {
LABEL_21:
            mmcs_free_FileChunkLists(a1);
            return v6;
          }

          v7 = mmcs_logging_logger_default();
          if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_19;
          }

          v15 = 0;
          v8 = "AuthorizePutRequestBody failed to allocate CFData wrapping body buffer";
          v9 = &v15;
        }

        else
        {
          v7 = mmcs_logging_logger_default();
          if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
LABEL_19:
            free(v5);
            goto LABEL_20;
          }

          *v16 = 0;
          v8 = "AuthorizePutRequestBody failed to create request body of expected size";
          v9 = v16;
        }

        _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
        goto LABEL_19;
      }

      v11 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        v12 = "AuthorizePutRequestBody failed to allocate request body buffer";
        v13 = v17;
        goto LABEL_15;
      }
    }

    else
    {
      v11 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v18 = 0;
        v12 = "AuthorizePutRequestBody invalid request size";
        v13 = &v18;
LABEL_15:
        _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_ERROR, v12, v13, 2u);
      }
    }

LABEL_20:
    v6 = 0;
    goto LABEL_21;
  }

  v10 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_ERROR, "AuthorizePutRequestBody cannot have NULL fileChunkLists.", buf, 2u);
  }

  return 0;
}

CFDataRef mmcs_register_request_create_AuthorizePutRequestBody(uint64_t a1)
{
  FileChunkLists = mmcs_register_request_create_FileChunkLists(a1);

  return mmcs_create_AuthorizePutRequestBody(FileChunkLists);
}

void *mmcs_register_request_create_FileChunkLists(uint64_t a1)
{
  v93 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v21 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 0;
    v22 = "RegisterRequest cannot be NULL.";
    goto LABEL_39;
  }

  v2 = *(a1 + 304);
  if (!v2)
  {
    v21 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 0;
    v22 = "RegisterRequest cannot have NULL registerState.";
    goto LABEL_39;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    v21 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 0;
    v22 = "RegisterRequest cannot have NULL registerItems.";
    goto LABEL_39;
  }

  if (CFArrayGetCount(v3) < 1)
  {
    v21 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 0;
    v22 = "RegisterRequest cannot have zero registerItems.";
    goto LABEL_39;
  }

  if (CFArrayGetCount(*(*(a1 + 304) + 8)) < 1)
  {
    goto LABEL_35;
  }

  v5 = 0;
  v6 = 0;
  *&v4 = 138412290;
  v87 = v4;
  do
  {
    v7 = *(CFArrayGetValueAtIndex(*(*(a1 + 304) + 8), v6) + 16);
    if (v7)
    {
      v8 = mmcs_cferror_copy_description(v7);
      v9 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = v87;
        v90 = v8;
        _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_ERROR, "RegisterItem exited registration with error: %@", buf, 0xCu);
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }

    else
    {
      ++v5;
    }

    ++v6;
  }

  while (v6 < CFArrayGetCount(*(*(a1 + 304) + 8)));
  if (!v5)
  {
LABEL_35:
    v21 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 0;
    v22 = "RegisterRequest had no items available after registration.";
    goto LABEL_39;
  }

  Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &registerItemSignatureEqualitySetCallbacks);
  if (CFArrayGetCount(*(*(a1 + 304) + 8)) >= 1)
  {
    v11 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 304) + 8), v11);
      if (!ValueAtIndex[16])
      {
        v13 = ValueAtIndex;
        if (!CFSetContainsValue(Mutable, ValueAtIndex))
        {
          CFSetAddValue(Mutable, v13);
        }
      }

      ++v11;
    }

    while (v11 < CFArrayGetCount(*(*(a1 + 304) + 8)));
  }

  Count = CFSetGetCount(Mutable);
  v15 = 8 * Count;
  MEMORY[0x28223BE20]();
  v16 = &v81 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(&v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  if (CFArrayGetCount(*(*(a1 + 304) + 8)) < 1)
  {
    v18 = 0;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = CFArrayGetValueAtIndex(*(*(a1 + 304) + 8), v17);
      if (!v19[16])
      {
        v20 = v19;
        if (CFSetContainsValue(Mutable, v19))
        {
          if (v18 >= Count)
          {
            mmcs_register_request_create_FileChunkLists_cold_1();
          }

          *&v16[8 * v18] = v20;
          CFSetRemoveValue(Mutable, v20);
          ++v18;
        }
      }

      ++v17;
    }

    while (v17 < CFArrayGetCount(*(*(a1 + 304) + 8)));
  }

  if (v18 != Count)
  {
    mmcs_register_request_create_FileChunkLists_cold_2();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!Count)
  {
    v21 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 0;
    v22 = "RegisterRequest no items in the put request available";
LABEL_39:
    _os_log_impl(&dword_2577D8000, v21, OS_LOG_TYPE_ERROR, v22, buf, 2u);
    goto LABEL_40;
  }

  v25 = malloc_type_malloc(v15, 0x2004093837F09uLL);
  v26 = v25;
  if (Count < 1)
  {
LABEL_82:
    result = mmcs_create_FileChunkLists(*(a1 + 68), *(a1 + 72), Count, *(*(a1 + 304) + 56), v26);
    goto LABEL_41;
  }

  v27 = 0;
  v84 = v25;
  v82 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    v28 = *&v16[8 * v27];
    if (!v28)
    {
      mmcs_register_request_create_FileChunkLists_cold_3();
    }

    valuePtr = 0;
    if (!*(v28 + 80))
    {
      v76 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_111;
      }

      *buf = 0;
      v69 = "RegisterItem cannot have NULL chunks.";
      goto LABEL_134;
    }

    if (*(v28 + 64))
    {
      FileOpaqueReferenceData = mmcs_register_item_create_FileOpaqueReferenceData(v28);
      if (!FileOpaqueReferenceData)
      {
        v76 = mmcs_logging_logger_default();
        if (!os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_111;
        }

        *buf = 0;
        v69 = "mmcs_register_item_create_FileChunkList failed to create fileOpaqueMetadataReference.";
        goto LABEL_134;
      }

      v30 = FileOpaqueReferenceData;
      Length = CFDataGetLength(FileOpaqueReferenceData);
      CFRelease(v30);
      if (!Length)
      {
        v76 = mmcs_logging_logger_default();
        if (!os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_111;
        }

        *buf = 0;
        v69 = "mmcs_register_item_create_FileChunkList cannot have 0 length fileOpaqueMetadataReference.";
        goto LABEL_134;
      }

      FordInfo = mmcs_create_FordInfo(Length);
      if (!FordInfo)
      {
        v76 = mmcs_logging_logger_default();
        if (!os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_111;
        }

        *buf = 0;
        v69 = "mmcs_register_item_create_FileChunkList failed to create fordInfo";
LABEL_134:
        _os_log_impl(&dword_2577D8000, v76, OS_LOG_TYPE_ERROR, v69, buf, 2u);
        goto LABEL_111;
      }
    }

    else
    {
      FordInfo = 0;
    }

    v33 = *(v28 + 72);
    if (!v33)
    {
      v37 = 0;
      v35 = 0;
      goto LABEL_66;
    }

    v34 = CFArrayGetCount(v33);
    v35 = v34;
    if (v34 >= 1)
    {
      break;
    }

    v37 = 0;
LABEL_66:
    Value = CFNumberGetValue(*(v28 + 120), kCFNumberSInt64Type, &valuePtr);
    *&v87 = v37;
    if (!Value)
    {
      v70 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v71 = "RegisterItem cannot parse registerItem->chunkCount value.";
        v72 = v70;
        v73 = 2;
        goto LABEL_123;
      }

LABEL_124:
      v44 = 0;
      goto LABEL_97;
    }

    if (!valuePtr)
    {
      v74 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v90 = valuePtr;
        v71 = "RegisterItem cannot registerItem->chunkCount has invalid value %llu.";
        v72 = v74;
        v73 = 12;
LABEL_123:
        _os_log_impl(&dword_2577D8000, v72, OS_LOG_TYPE_ERROR, v71, buf, v73);
      }

      goto LABEL_124;
    }

    v85 = v27;
    v42 = *CFDataGetBytePtr(*(v28 + 96));
    v43 = malloc_type_malloc(8 * valuePtr, 0x2004093837F09uLL);
    if (!v43)
    {
      v75 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_2577D8000, v75, OS_LOG_TYPE_ERROR, "RegisterItem failed to allocate request chunk list.", buf, 2u);
      }

      v44 = 0;
      v26 = v84;
      v27 = v85;
      goto LABEL_97;
    }

    v44 = v43;
    v83 = FordInfo;
    if (valuePtr)
    {
      v45 = 0;
      v46 = *(v28 + 80);
      v86 = (v28 + 24);
      while (1)
      {
        if (!v46)
        {
          v57 = mmcs_logging_logger_default();
          if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_93;
          }

          *buf = 134218240;
          v90 = v45 + 1;
          v91 = 2048;
          v92 = valuePtr;
          v58 = "RegisterItem chunk %llu of %llu not returned.";
          v59 = v57;
          v60 = 22;
          goto LABEL_92;
        }

        if (v42 >= 0 != (CKRegisteredChunkKey() != 0))
        {
          break;
        }

        v47 = CKRegisteredChunkLength();
        v48 = mmcs_register_item_padded_chunk_length(v28, v47);
        v49 = CKRegisteredChunkSignature();
        if (*(v28 + 64))
        {
          v50 = 0;
          v51 = 0;
        }

        else
        {
          v51 = CKRegisteredChunkKey();
          if (*(v28 + 64))
          {
            v50 = 0;
          }

          else
          {
            v50 = v86;
          }
        }

        ChunkInfo = mmcs_create_ChunkInfo(v48, v49, v51, v50);
        v44[v45] = ChunkInfo;
        if (!ChunkInfo)
        {
          goto LABEL_94;
        }

        v46 += CKRegisteredChunkSize();
        if (++v45 >= valuePtr)
        {
          goto LABEL_80;
        }
      }

      v61 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_93;
      }

      *buf = 0;
      v58 = "RegisterItem inconsistent Encryption between File and Chunks.";
      v59 = v61;
      v60 = 2;
LABEL_92:
      _os_log_impl(&dword_2577D8000, v59, OS_LOG_TYPE_ERROR, v58, buf, v60);
LABEL_93:
      v44[v45] = 0;
LABEL_94:
      v62 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_2577D8000, v62, OS_LOG_TYPE_ERROR, "chunkList[i] undefined.", buf, 2u);
      }

      valuePtr = v45;
      v26 = v84;
      v27 = v85;
      FordInfo = v83;
      goto LABEL_97;
    }

LABEL_80:
    BytePtr = CFDataGetBytePtr(*(v28 + 96));
    FordInfo = v83;
    FileChunkList = mmcs_create_FileChunkList(BytePtr, 0, 0, v28 + 24, valuePtr, v44, v83, v35, v87);
    if (!FileChunkList)
    {
      v79 = mmcs_logging_logger_default();
      v80 = os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
      v26 = v84;
      v27 = v85;
      if (v80)
      {
        *buf = 0;
        _os_log_impl(&dword_2577D8000, v79, OS_LOG_TYPE_ERROR, "mmcs_register_item_create_FileReferenceData failed to create fileReferenceData", buf, 2u);
      }

      goto LABEL_97;
    }

    v26 = v84;
    v55 = v85;
    v84[v85] = FileChunkList;
    v27 = v55 + 1;
    v16 = v82;
    if (v27 == Count)
    {
      goto LABEL_82;
    }
  }

  v36 = malloc_type_malloc(8 * v34, 0x2004093837F09uLL);
  if (v36)
  {
    v37 = v36;
    v38 = 0;
    while (1)
    {
      v39 = CFArrayGetValueAtIndex(*(v28 + 72), v38);
      ChunkingProfile = mmcs_create_ChunkingProfile(v39);
      v37[v38] = ChunkingProfile;
      if (!ChunkingProfile)
      {
        break;
      }

      if (v35 == ++v38)
      {
        goto LABEL_66;
      }
    }

    *&v87 = v37;
    v56 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2577D8000, v56, OS_LOG_TYPE_ERROR, "chunkProfiles[i] undefined.", buf, 2u);
    }

    v44 = 0;
    v35 = v38;
  }

  else
  {
    v78 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2577D8000, v78, OS_LOG_TYPE_ERROR, "mmcs_item_create_FileChunkList failed to allocate chunkProfiles.", buf, 2u);
    }

    v44 = 0;
    *&v87 = 0;
  }

LABEL_97:
  if (FordInfo)
  {
    free(FordInfo);
  }

  if (v87)
  {
    if (v35 >= 1)
    {
      v63 = v87;
      do
      {
        v64 = *v63++;
        mmcs_free_ChunkingProfile(v64);
        --v35;
      }

      while (v35);
    }

    free(v87);
  }

  if (v44)
  {
    if (valuePtr)
    {
      for (i = 0; i < valuePtr; ++i)
      {
        mmcs_free_ChunkInfo(v44[i]);
        v66 = v44[i];
        if (v66)
        {
          free(v66);
        }

        v44[i] = 0;
      }
    }

    free(v44);
  }

LABEL_111:
  v26[v27] = 0;
  v67 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_2577D8000, v67, OS_LOG_TYPE_ERROR, "Unable to create file chunk list for item.", buf, 2u);
  }

  if (v27)
  {
    for (j = 0; j != v27; ++j)
    {
      mmcs_free_FileChunkList(v26[j]);
    }
  }

  free(v26);
LABEL_40:
  result = 0;
LABEL_41:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

CFDataRef mmcs_update_request_create_AuthorizePutRequestBody(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v19 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 0;
    v20 = "updateRequest cannot be NULL.";
LABEL_39:
    _os_log_impl(&dword_2577D8000, v19, OS_LOG_TYPE_ERROR, v20, buf, 2u);
    goto LABEL_40;
  }

  v2 = *(a1 + 304);
  if (!v2)
  {
    v19 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 0;
    v20 = "updateRequest cannot have NULL updateState.";
    goto LABEL_39;
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
    v19 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 0;
    v20 = "updateRequest cannot have NULL updateItems.";
    goto LABEL_39;
  }

  if (CFArrayGetCount(v3) < 1)
  {
    v19 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 0;
    v20 = "updateRequest cannot have zero updateItems.";
    goto LABEL_39;
  }

  if (CFArrayGetCount(*(*(a1 + 304) + 16)) < 1)
  {
    goto LABEL_35;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(CFArrayGetValueAtIndex(*(*(a1 + 304) + 16), v5) + 5);
    if (v6)
    {
      v7 = mmcs_cferror_copy_description(v6);
      v8 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v55 = v7;
        _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_ERROR, "updateItem exited registration with error: %@", buf, 0xCu);
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }

    else
    {
      ++v4;
    }

    ++v5;
  }

  while (v5 < CFArrayGetCount(*(*(a1 + 304) + 16)));
  if (!v4)
  {
LABEL_35:
    v19 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 0;
    v20 = "updateRequest had no items available after registration.";
    goto LABEL_39;
  }

  Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &_update_items_wrap_set_callbacks);
  if (CFArrayGetCount(*(*(a1 + 304) + 16)) >= 1)
  {
    v10 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 304) + 16), v10);
      if (!ValueAtIndex[5])
      {
        v12 = ValueAtIndex;
        if (!CFSetContainsValue(Mutable, ValueAtIndex))
        {
          CFSetAddValue(Mutable, v12);
        }
      }

      ++v10;
    }

    while (v10 < CFArrayGetCount(*(*(a1 + 304) + 16)));
  }

  Count = CFSetGetCount(Mutable);
  v14 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
  if (CFArrayGetCount(*(*(a1 + 304) + 16)) < 1)
  {
    v16 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = CFArrayGetValueAtIndex(*(*(a1 + 304) + 16), v15);
      if (!v17[5])
      {
        v18 = v17;
        if (CFSetContainsValue(Mutable, v17))
        {
          if (v16 >= Count)
          {
            mmcs_update_request_create_AuthorizePutRequestBody_cold_1();
          }

          v14[v16] = v18;
          CFSetRemoveValue(Mutable, v18);
          ++v16;
        }
      }

      ++v15;
    }

    while (v15 < CFArrayGetCount(*(*(a1 + 304) + 16)));
  }

  if (v16 != Count)
  {
    mmcs_update_request_create_AuthorizePutRequestBody_cold_2();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!Count)
  {
    v44 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2577D8000, v44, OS_LOG_TYPE_ERROR, "updateRequest no items in the put request available", buf, 2u);
    }

    goto LABEL_88;
  }

  v24 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
  v25 = v24;
  if (Count < 1)
  {
LABEL_60:
    free(v14);
    FileChunkLists = mmcs_create_FileChunkLists(0, 0, Count, *(*(a1 + 304) + 88), v25);
    goto LABEL_41;
  }

  v26 = 0;
  v52 = v24;
  v53 = v14;
  v51 = Count;
  while (1)
  {
    v27 = v14[v26];
    if (!v27)
    {
      mmcs_update_request_create_AuthorizePutRequestBody_cold_3();
    }

    v28 = v27[12];
    if (!v28)
    {
      v45 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_82;
      }

      *buf = 0;
      v46 = "updateItem cannot have NULL chunkSignatures.";
LABEL_73:
      _os_log_impl(&dword_2577D8000, v45, OS_LOG_TYPE_ERROR, v46, buf, 2u);
      goto LABEL_82;
    }

    if (!v27[13])
    {
      v45 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_82;
      }

      *buf = 0;
      v46 = "updateItem cannot have NULL chunkKeys.";
      goto LABEL_73;
    }

    if (!CFArrayGetCount(v28))
    {
      v45 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_82;
      }

      *buf = 0;
      v46 = "updateItem cannot have 0 chunkSignatures.";
      goto LABEL_73;
    }

    v29 = CFArrayGetCount(v27[12]);
    if (v29 != CFArrayGetCount(v27[13]))
    {
      v45 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_82;
      }

      *buf = 0;
      v46 = "updateItem cannot have a different number of signatures and keys.";
      goto LABEL_73;
    }

    v30 = CFArrayGetCount(v27[12]);
    v31 = malloc_type_malloc(8 * v30, 0x2004093837F09uLL);
    if (!v31)
    {
      v45 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_82;
      }

      *buf = 0;
      v46 = "updateItem failed to allocate request chunk list.";
      goto LABEL_73;
    }

    v32 = v31;
    v33 = CFArrayGetCount(v27[12]);
    if (v33 >= 1)
    {
      v34 = v33;
      for (i = 0; i != v34; ++i)
      {
        v36 = CFArrayGetValueAtIndex(v27[12], i);
        v37 = CFArrayGetValueAtIndex(v27[13], i);
        v38 = CFArrayGetValueAtIndex(v27[14], i);
        *buf = 0;
        CFNumberGetValue(v38, kCFNumberSInt32Type, buf);
        v39 = *buf;
        BytePtr = CFDataGetBytePtr(v36);
        v41 = CFDataGetBytePtr(v37);
        v32[i] = mmcs_create_ChunkInfo(v39, BytePtr, v41, (v27 + 10));
      }
    }

    v42 = CFDataGetBytePtr(v27[2]);
    FileChunkList = mmcs_create_FileChunkList(v42, 0, 0, (v27 + 10), v30, v32, 0, 0, 0);
    if (!FileChunkList)
    {
      break;
    }

    Count = v51;
    v25 = v52;
    v52[v26++] = FileChunkList;
    v14 = v53;
    if (v26 == v51)
    {
      goto LABEL_60;
    }
  }

  v47 = mmcs_logging_logger_default();
  v25 = v52;
  v14 = v53;
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_2577D8000, v47, OS_LOG_TYPE_ERROR, "mmcs_update_item_create_FileChunkList failed to create fileReferenceData", buf, 2u);
  }

  if (v30)
  {
    v48 = v32;
    do
    {
      mmcs_free_ChunkInfo(*v48);
      if (*v48)
      {
        free(*v48);
      }

      *v48++ = 0;
      --v30;
    }

    while (v30);
  }

  free(v32);
LABEL_82:
  v25[v26] = 0;
  v49 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_2577D8000, v49, OS_LOG_TYPE_ERROR, "Unable to create file chunk list for item.", buf, 2u);
  }

  if (v26)
  {
    for (j = 0; j != v26; ++j)
    {
      mmcs_free_FileChunkList(v25[j]);
    }
  }

  free(v25);
LABEL_88:
  free(v14);
LABEL_40:
  FileChunkLists = 0;
LABEL_41:
  result = mmcs_create_AuthorizePutRequestBody(FileChunkLists);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

CFDataRef mmcs_create_put_complete_at_edge_payload_trailer(const __CFData *a1, const __CFData *a2)
{
  v4 = malloc_type_malloc(0x40uLL, 0x10700407A2CD8F7uLL);
  v5 = v4;
  if (!v4)
  {
    v15 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v23 = 0;
    v16 = "mmcs_create_put_complete_at_edge_payload_trailer failed to create protobuf object.";
    v17 = &v23;
LABEL_17:
    _os_log_impl(&dword_2577D8000, v15, OS_LOG_TYPE_ERROR, v16, v17, 2u);
    goto LABEL_22;
  }

  chunkserver__put_complete_at_edge_payload_trailer__init(v4);
  ProtobufCBinaryData_SetData(v5 + 3, a1);
  if (a2)
  {
    *(v5 + 10) = 1;
    ProtobufCBinaryData_SetData(v5 + 6, a2);
  }

  packed_size = chunkserver__put_complete_at_edge_payload_trailer__get_packed_size(v5);
  if (!packed_size)
  {
    v15 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v22 = 0;
    v16 = "mmcs_create_put_complete_at_edge_payload_trailer invalid request size";
    v17 = &v22;
    goto LABEL_17;
  }

  v7 = packed_size;
  v8 = packed_size + 4;
  if (packed_size + 4 <= 0)
  {
    mmcs_create_put_complete_at_edge_payload_trailer_cold_1();
  }

  v9 = malloc_type_malloc(packed_size + 4, 0x100004077774924uLL);
  if (!v9)
  {
    v15 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v16 = "mmcs_create_put_complete_at_edge_payload_trailer failed to allocate request body buffer";
      v17 = buf;
      goto LABEL_17;
    }

LABEL_22:
    v11 = 0;
    goto LABEL_23;
  }

  v10 = v9;
  *v9 = bswap32(v7);
  if (v7 != chunkserver__put_complete_at_edge_payload_trailer__pack(v5, (v9 + 1)))
  {
    v12 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      v13 = "mmcs_create_put_complete_at_edge_payload_trailer failed to create request body of expected size";
      v14 = v20;
      goto LABEL_20;
    }

LABEL_21:
    free(v10);
    goto LABEL_22;
  }

  v11 = XCFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v10, v8, *MEMORY[0x277CBECF0]);
  if (!v11)
  {
    v12 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v19 = 0;
      v13 = "mmcs_create_put_complete_at_edge_payload_trailer failed to allocate CFData wrapping body buffer";
      v14 = &v19;
LABEL_20:
      _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_ERROR, v13, v14, 2u);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

LABEL_23:
  chunkserver__put_complete_at_edge_payload_trailer__free_unpacked(v5, 0);
  return v11;
}

CFDataRef AuthorizeGetBodyCreate(uint64_t a1, int a2)
{
  v2 = *(a1 + 304);
  v3 = 80;
  if (!a2)
  {
    v3 = 88;
  }

  if (*(v2 + 168))
  {
    v6 = 0;
    v7 = 0;
    v8 = *(v2 + v3);
    v9 = 176;
    do
    {
      v10 = v2 + v9;
      if ((v2 + v9) == CFSetGetValue(v8, (v2 + v9)) && (a2 || mmcs_item_needs_auth_get_chunks(v10)))
      {
        ++v6;
      }

      ++v7;
      v2 = *(a1 + 304);
      v9 += 416;
    }

    while (v7 < *(v2 + 168));
    if (v6 >= 1)
    {
      v11 = malloc_type_malloc(0x38uLL, 0x10E004083CC9259uLL);
      if (v11)
      {
        v12 = v11;
        chunkserver__file_checksum_authorization_list__init(v11);
        v12[3] = 0;
        v12[4] = malloc_type_malloc(8 * v6, 0x2004093837F09uLL);
        v13 = *(a1 + 304);
        if (*(v13 + 168))
        {
          v14 = 0;
          allocator = *MEMORY[0x277CBECE8];
          do
          {
            v15 = (v13 + 416 * v14 + 176);
            if (v15 == CFSetGetValue(v8, v15))
            {
              if (a2)
              {
                MutableCopy = 0;
              }

              else
              {
                if (!mmcs_item_needs_auth_get_chunks(v15))
                {
                  goto LABEL_35;
                }

                MutableCopy = CFSetCreateMutableCopy(allocator, 0, v15[36]);
                Value = CFDictionaryGetValue(*(*(a1 + 304) + 64), v15);
                if (CFArrayGetCount(Value) >= 1)
                {
                  v24 = 0;
                  do
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(Value, v24);
                    if (v15 != ValueAtIndex)
                    {
                      v26 = ValueAtIndex;
                      if (mmcs_item_needs_auth_get_chunks(ValueAtIndex))
                      {
                        XCFSetAddValuesFromSet(MutableCopy, v26[36]);
                      }
                    }

                    ++v24;
                  }

                  while (v24 < CFArrayGetCount(Value));
                }
              }

              v17 = v15[6];
              v18 = *v15;
              v19 = v15[1];
              v20 = malloc_type_malloc(0x60uLL, 0x1070040B2EF5D3EuLL);
              if (!v20)
              {
                chunkserver__file_checksum_authorization_list__free_unpacked(v12, 0);
                if (MutableCopy)
                {
                  CFRelease(MutableCopy);
                }

                goto LABEL_59;
              }

              v21 = v20;
              chunkserver__file_checksum_authorization__init(v20);
              *(v21 + 3) = CKFileSchemeAndSignatureSize();
              *(v21 + 4) = mmcs_file_signature_copy(v18);
              if (v17)
              {
                *(v21 + 16) = 1;
                ProtobufCBinaryData_SetData(v21 + 9, v17);
              }

              if (v19)
              {
                v22 = strdup(v19);
              }

              else
              {
                v22 = 0;
              }

              *(v21 + 5) = v22;
              if (!a2)
              {
                Count = CFSetGetCount(MutableCopy);
                *(v21 + 6) = Count;
                *(v21 + 7) = malloc_type_calloc(1uLL, 16 * Count, 0x1010040466105CCuLL);
                context[0] = v21;
                context[1] = 0;
                CFSetApplyFunction(MutableCopy, add_checksum_applier, context);
              }

              v29 = v12[3];
              v28 = v12[4];
              v12[3] = v29 + 1;
              v28[v29] = v21;
              if (MutableCopy)
              {
                CFRelease(MutableCopy);
              }
            }

LABEL_35:
            ++v14;
            v13 = *(a1 + 304);
          }

          while (v14 < *(v13 + 168));
        }

        if (*(a1 + 72))
        {
          *(v12 + 10) = 1;
          v12[6] = (v12[6] | 2);
          v13 = *(a1 + 304);
        }

        if (*(v13 + 152))
        {
          *(v12 + 10) = 1;
          v12[6] = (v12[6] | 0x10);
        }

        packed_size = chunkserver__file_checksum_authorization_list__get_packed_size(v12);
        if (packed_size)
        {
          v31 = packed_size;
          v32 = malloc_type_malloc(packed_size, 0x100004077774924uLL);
          if (v32)
          {
            v33 = v32;
            if (v31 == chunkserver__file_checksum_authorization_list__pack(v12, v32))
            {
              v34 = XCFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v33, v31, *MEMORY[0x277CBECF0]);
              if (v34)
              {
LABEL_56:
                chunkserver__file_checksum_authorization_list__free_unpacked(v12, 0);
                return v34;
              }

              v35 = mmcs_logging_logger_default();
              if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_54;
              }

              LOWORD(context[0]) = 0;
              v36 = "AuthorizeGetBodyCreate failed to allocate CFData wrapping body buffer";
            }

            else
            {
              v35 = mmcs_logging_logger_default();
              if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
LABEL_54:
                free(v33);
                goto LABEL_55;
              }

              LOWORD(context[0]) = 0;
              v36 = "AuthorizeGetBodyCreate failed to create request body of expected size";
            }

            _os_log_impl(&dword_2577D8000, v35, OS_LOG_TYPE_ERROR, v36, context, 2u);
            goto LABEL_54;
          }

          v37 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            LOWORD(context[0]) = 0;
            v38 = "AuthorizeGetBodyCreate failed to allocate request body buffer";
            goto LABEL_50;
          }
        }

        else
        {
          v37 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            LOWORD(context[0]) = 0;
            v38 = "AuthorizeGetBodyCreate invalid request size";
LABEL_50:
            _os_log_impl(&dword_2577D8000, v37, OS_LOG_TYPE_ERROR, v38, context, 2u);
          }
        }

LABEL_55:
        v34 = 0;
        goto LABEL_56;
      }
    }
  }

LABEL_59:
  v39 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    LOWORD(context[0]) = 0;
    _os_log_impl(&dword_2577D8000, v39, OS_LOG_TYPE_ERROR, "AuthorizeGetBodyCreate cannot have NULL fileCheksumAuthList.", context, 2u);
  }

  return 0;
}

__CFHTTPMessage *mmcs_get_proto_version(uint64_t a1)
{
  result = mmcs_http_context_copy_header_field_value(a1, @"x-apple-mmcs-proto-version");
  if (result)
  {
    v2 = result;
    v3 = mmcs_server_version_make_from_CFString(result);
    CFRelease(v2);
    return v3;
  }

  return result;
}

__CFHTTPMessage *mmcs_create_http_clock_skew_metrics_with_http_context(uint64_t a1)
{
  result = mmcs_http_context_copy_header_field_value(a1, @"Date");
  if (result)
  {
    v3 = result;
    v4 = mmcs_time_convert_date_header_to_cfabsolutetime(result);
    CFRelease(v3);
    if (v4 == 0.0)
    {
      return 0;
    }

    else
    {
      v6 = 0;
      v5 = mmcs_http_context_response_received_time(a1);
      if (mmcs_http_clock_skew_metrics_create(&v6, v4, v5))
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t chunkserver__file_success__parse_and_validate(uint64_t a1, CFDataRef *a2, CFDataRef *a3, CFStringRef *a4, CFNumberRef *a5, CFErrorRef *a6)
{
  if (a2)
  {
    *a2 = 0;
  }

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
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (mmcs_file_signature_is_valid_n(*(a1 + 32), *(a1 + 24)))
  {
    v17 = *MEMORY[0x277CBECE8];
    v18 = CFDataCreate(*MEMORY[0x277CBECE8], *(a1 + 32), *(a1 + 24));
    if (v18)
    {
      v19 = v18;
      if (*(a1 + 56))
      {
        v20 = CFDataCreate(v17, *(a1 + 72), *(a1 + 64));
        if (!v20)
        {
          v21 = @"Invalid signature";
          goto LABEL_26;
        }
      }

      else
      {
        v20 = 0;
      }

      v25 = *(a1 + 48);
      if (v25)
      {
        v26 = strlen(*(a1 + 48));
        if (v26)
        {
          v27 = CFStringCreateWithBytes(v17, v25, v26, 0x8000100u, 0);
          if (v27)
          {
            v28 = v27;
            if (*(a1 + 80))
            {
              v29 = CFNumberCreate(v17, kCFNumberSInt64Type, (a1 + 88));
            }

            else
            {
              v29 = 0;
            }

            if ((*(a1 + 40) - 3) < 3)
            {
              if (a2)
              {
                CFRetain(v19);
                *a2 = v19;
              }

              if (a3 && v20)
              {
                CFRetain(v20);
                *a3 = v20;
              }

              if (a4)
              {
                CFRetain(v28);
                *a4 = v28;
              }

              v23 = 0;
              v24 = 1;
              if (a5 && v29)
              {
                CFRetain(v29);
                v23 = 0;
                *a5 = v29;
              }

              goto LABEL_30;
            }

            v23 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Invalid succes code %d when put receipt is present", v12, v13, v14, v15, v16, *(a1 + 40));
LABEL_27:
            v24 = 0;
            if (a6 && v23)
            {
              CFRetain(v23);
              v24 = 0;
              *a6 = v23;
            }

LABEL_30:
            CFRelease(v19);
            if (v20)
            {
              CFRelease(v20);
            }

            if (v28)
            {
              CFRelease(v28);
            }

            if (v29)
            {
              CFRelease(v29);
            }

            goto LABEL_36;
          }
        }
      }

      v21 = @"Invalid return receipt";
LABEL_26:
      v23 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, v21, v12, v13, v14, v15, v16, v31);
      v28 = 0;
      v29 = 0;
      goto LABEL_27;
    }
  }

  v22 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Invalid signature", v12, v13, v14, v15, v16, v31);
  v23 = v22;
  v24 = 0;
  if (a6 && v22)
  {
    CFRetain(v22);
    v24 = 0;
    *a6 = v23;
LABEL_37:
    CFRelease(v23);
    return v24;
  }

LABEL_36:
  if (v23)
  {
    goto LABEL_37;
  }

  return v24;
}

uint64_t chunkserver__file_error__parse_and_validate(uint64_t a1, CFDataRef *a2, CFDataRef *a3, CFErrorRef *a4, CFErrorRef *a5, CFIndex a6, CFStringRef format, ...)
{
  va_start(va, format);
  v13 = *MEMORY[0x277CBECE8];
  v14 = CFStringCreateWithFormatAndArguments(*MEMORY[0x277CBECE8], 0, format, va);
  if (a2)
  {
    *a2 = 0;
  }

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
  }

  if (mmcs_file_signature_is_valid_n(*(a1 + 32), *(a1 + 24)))
  {
    v20 = CFDataCreate(v13, *(a1 + 32), *(a1 + 24));
    if (v20)
    {
      v21 = v20;
      if (*(a1 + 48))
      {
        v24 = CFDataCreate(v13, *(a1 + 64), *(a1 + 56));
        if (!v24)
        {
          v25 = @"Invalid signature";
          v26 = 6;
LABEL_25:
          v27 = mmcs_cferror_create_with_format(@"com.apple.mmcs", v26, v25, v22, v23, v17, v18, v19, v33);
          v28 = 0;
          goto LABEL_26;
        }
      }

      else
      {
        v24 = 0;
      }

      error_with_error_response_and_format = mmcs_cferror_create_error_with_error_response_and_format(1, 0, a6, *(a1 + 40), @"%@", v17, v18, v19, v14);
      if (error_with_error_response_and_format)
      {
        v30 = error_with_error_response_and_format;
        if (a2)
        {
          CFRetain(v21);
          *a2 = v21;
        }

        if (a3 && v24)
        {
          CFRetain(v24);
          *a3 = v24;
        }

        if (a4)
        {
          CFRetain(v30);
          v27 = 0;
          v28 = 0;
          *a4 = v30;
        }

        else
        {
          v27 = 0;
          v28 = 0;
        }

        v31 = 1;
        if (v14)
        {
          goto LABEL_30;
        }

        goto LABEL_31;
      }

      v25 = @"Unable to create CFError from Chunkserver__FileError";
      v26 = 37;
      goto LABEL_25;
    }
  }

  v27 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Invalid signature", v15, v16, v17, v18, v19, v33);
  v21 = 0;
  v24 = 0;
  v28 = 1;
LABEL_26:
  v31 = 0;
  v30 = 0;
  if (a5 && v27)
  {
    CFRetain(v27);
    v30 = 0;
    v31 = 0;
    *a5 = v27;
  }

  if (v14)
  {
LABEL_30:
    CFRelease(v14);
  }

LABEL_31:
  if ((v28 & 1) == 0)
  {
    CFRelease(v21);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  return v31;
}

CFErrorRef create_cferror_with_error_response(__CFError *a1)
{
  error_with_underlying_errors = a1;
  if (a1)
  {
    v2 = *MEMORY[0x277CBECE8];
    if (*(a1 + 6))
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      if (*(error_with_underlying_errors + 6))
      {
        v4 = 0;
        do
        {
          cferror_with_error_response = create_cferror_with_error_response(*(*(error_with_underlying_errors + 7) + 8 * v4));
          if (cferror_with_error_response)
          {
            v6 = cferror_with_error_response;
            CFArrayAppendValue(Mutable, cferror_with_error_response);
            CFRelease(v6);
          }

          ++v4;
        }

        while (v4 < *(error_with_underlying_errors + 6));
      }
    }

    else
    {
      Mutable = 0;
    }

    if (*(error_with_underlying_errors + 8))
    {
      v7 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (*(error_with_underlying_errors + 8))
      {
        for (i = 0; i < *(error_with_underlying_errors + 8); ++i)
        {
          v9 = *(*(error_with_underlying_errors + 9) + 8 * i);
          if (v9)
          {
            v10 = strlen(*(v9 + 24));
            v11 = CFStringCreateWithBytes(v2, *(v9 + 24), v10, 0x8000100u, 0);
            v12 = *(v9 + 32);
            v13 = strlen(v12);
            v14 = CFStringCreateWithBytes(v2, v12, v13, 0x8000100u, 0);
            v15 = v14;
            if (v11)
            {
              v16 = v14 == 0;
            }

            else
            {
              v16 = 1;
            }

            if (!v16)
            {
              CFDictionarySetValue(v7, v11, v14);
LABEL_24:
              CFRelease(v11);
              if (!v15)
              {
                continue;
              }

LABEL_21:
              CFRelease(v15);
              continue;
            }

            if (v11)
            {
              goto LABEL_24;
            }

            if (v14)
            {
              goto LABEL_21;
            }
          }
        }
      }
    }

    else
    {
      v7 = 0;
    }

    v17 = *(error_with_underlying_errors + 5);
    if (v17)
    {
      v18 = strlen(*(error_with_underlying_errors + 5));
      v17 = CFStringCreateWithBytes(v2, v17, v18, 0x8000100u, 0);
    }

    if (*(error_with_underlying_errors + 3))
    {
      v19 = *(error_with_underlying_errors + 3);
    }

    else
    {
      v19 = "";
    }

    v20 = strlen(v19);
    v21 = CFStringCreateWithBytes(v2, v19, v20, 0x8000100u, 0);
    v22 = v21;
    if (!v21)
    {
      v21 = @"Unknown Error Domain";
    }

    error_with_underlying_errors = mmcs_cferror_create_error_with_underlying_errors(v21, *(error_with_underlying_errors + 8), v17, Mutable, v7);
    if (v22)
    {
      CFRelease(v22);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  return error_with_underlying_errors;
}

_OWORD *create_error_response_for_Error(__CFError *a1)
{
  v2 = malloc_type_malloc(0x50uLL, 0x10F00405BFF1630uLL);
  v3 = v2;
  if (v2)
  {
    chunkserver__error_response__init(v2);
    Domain = CFErrorGetDomain(a1);
    *(v3 + 3) = createCStringWithCFString(Domain);
    *(v3 + 8) = CFErrorGetCode(a1);
    *(v3 + 8) = 0;
    v5 = CFErrorCopyDescription(a1);
    if (v5)
    {
      v6 = v5;
      *(v3 + 5) = createCStringWithCFString(v5);
      CFRelease(v6);
    }

    v7 = CFErrorCopyUserInfo(a1);
    if (v7)
    {
      v8 = v7;
      if (CFDictionaryGetValue(v7, *MEMORY[0x277CBEE78]))
      {
        v9 = 0;
      }

      else
      {
        v9 = mmcs_cfnetwork_copy_underlying_stream_error(v8);
        if (!v9)
        {
LABEL_15:
          Value = CFDictionaryGetValue(v8, @"kMMCSErrorSupplementalDictionaryKey");
          if (IsValidCFDictionary(Value))
          {
            Count = CFDictionaryGetCount(Value);
            *(v3 + 9) = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
            CFDictionaryApplyFunction(Value, copy_error_response_nv_pairs, v3);
          }

          if (v9)
          {
            CFRelease(v9);
          }

          CFRelease(v8);
          return v3;
        }
      }

      error_response_for_Error = create_error_response_for_Error();
      v12 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
      *(v3 + 7) = v12;
      if (v12)
      {
        v13 = *(v3 + 6);
        *(v3 + 6) = v13 + 1;
        v12[v13] = error_response_for_Error;
      }

      else
      {
        v14 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v18[0] = 0;
          _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_ERROR, "malloc", v18, 2u);
        }

        chunkserver__error_response__free_unpacked(error_response_for_Error, 0);
      }

      goto LABEL_15;
    }
  }

  else
  {
    v10 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_ERROR, "malloc", buf, 2u);
    }
  }

  return v3;
}

void *copy_error_response_nv_pairs(const __CFString *a1, __CFString *a2, uint64_t a3)
{
  result = createNameValuePair(a1, a2);
  v6 = *(a3 + 64);
  v5 = *(a3 + 72);
  *(a3 + 64) = v6 + 1;
  *(v5 + 8 * v6) = result;
  return result;
}

_BYTE *Copy_MethodCompletionInfo(void **a1)
{
  packed_size = chunkserver__method_completion_info__get_packed_size(a1);
  result = malloc_type_malloc(packed_size, 0x100004077774924uLL);
  if (result)
  {
    v4 = result;
    v5 = chunkserver__method_completion_info__pack(a1, result);
    v6 = chunkserver__method_completion_info__unpack(0, v5, v4);
    free(v4);
    return v6;
  }

  return result;
}