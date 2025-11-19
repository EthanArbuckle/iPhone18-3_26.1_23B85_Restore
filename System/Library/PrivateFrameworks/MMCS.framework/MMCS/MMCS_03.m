uint64_t _mmcs_get_req_context_progress_timer_fired(uint64_t a1, uint64_t a2)
{
  result = mmcs_get_request_notify_all_items_with_pending_progress(a2);
  v4 = *(*(a2 + 304) + 120);
  if (v4)
  {
    CFAbsoluteTimeGetCurrent();

    return mmcs_perform_timer_set_next_fire_date(v4);
  }

  return result;
}

void mmcs_get_request_finalize(uint64_t a1)
{
  if (*(*(a1 + 304) + 120))
  {
    v2 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      *v34 = 0;
      _os_log_impl(&dword_2577D8000, v2, OS_LOG_TYPE_FAULT, "progressTimer must always be invalidated/freed first to break retain cycle, invariant violation.", v34, 2u);
    }
  }

  v3 = *(a1 + 304);
  v4 = v3[16];
  if (v4)
  {
    mmcs_http_context_clear_user_data(v4);
    mmcs_http_context_invalidate(*(*(a1 + 304) + 128));
    v5 = *(a1 + 304);
    v6 = *(v5 + 128);
    if (v6)
    {
      C3BaseRelease(v6);
      v5 = *(a1 + 304);
    }

    *(v5 + 128) = 0;
    v3 = *(a1 + 304);
  }

  v7 = v3[17];
  if (v7)
  {
    mmcs_http_context_clear_user_data(v7);
    mmcs_http_context_invalidate(*(*(a1 + 304) + 136));
    v8 = *(a1 + 304);
    v9 = *(v8 + 136);
    if (v9)
    {
      C3BaseRelease(v9);
      v8 = *(a1 + 304);
    }

    *(v8 + 136) = 0;
    v3 = *(a1 + 304);
  }

  v10 = v3[18];
  if (v10)
  {
    mmcs_http_context_invalidate(v10);
    v11 = *(a1 + 304);
    v12 = *(v11 + 144);
    if (v12)
    {
      C3BaseRelease(v12);
      v11 = *(a1 + 304);
    }

    *(v11 + 144) = 0;
    v3 = *(a1 + 304);
  }

  v13 = v3[8];
  if (v13)
  {
    CFRelease(v13);
    v3 = *(a1 + 304);
  }

  v3[8] = 0;
  v14 = *(a1 + 304);
  v15 = *(v14 + 80);
  if (v15)
  {
    CFRelease(v15);
    v14 = *(a1 + 304);
  }

  *(v14 + 80) = 0;
  v16 = *(a1 + 304);
  v17 = *(v16 + 72);
  if (v17)
  {
    CFRelease(v17);
    v16 = *(a1 + 304);
  }

  *(v16 + 72) = 0;
  v18 = *(a1 + 304);
  v19 = *(v18 + 88);
  if (v19)
  {
    CFRelease(v19);
    v18 = *(a1 + 304);
  }

  *(v18 + 88) = 0;
  v20 = *(a1 + 304);
  v21 = *(v20 + 96);
  if (v21)
  {
    CFRelease(v21);
    v20 = *(a1 + 304);
  }

  *(v20 + 96) = 0;
  v22 = *(a1 + 304);
  v23 = *(v22 + 104);
  if (v23)
  {
    CFSetApplyFunction(v23, dealloc_chunk_references, 0);
    v24 = *(a1 + 304);
    v25 = *(v24 + 104);
    if (v25)
    {
      CFRelease(v25);
      v24 = *(a1 + 304);
    }

    *(v24 + 104) = 0;
    v22 = *(a1 + 304);
  }

  v26 = *(v22 + 16);
  if (v26)
  {
    CFRelease(v26);
    v22 = *(a1 + 304);
  }

  *(v22 + 16) = 0;
  v27 = *(a1 + 304);
  if (*v27)
  {
    CFRelease(*v27);
    v27 = *(a1 + 304);
  }

  *v27 = 0;
  v28 = *(a1 + 304);
  v29 = *(v28 + 160);
  if (v29)
  {
    CFRelease(v29);
    v28 = *(a1 + 304);
  }

  *(v28 + 160) = 0;
  v30 = *(a1 + 304);
  v31 = *(v30 + 112);
  if (v31)
  {
    mmcs_get_state_dealloc(v31);
    *(*(a1 + 304) + 112) = 0;
    v30 = *(a1 + 304);
  }

  if (*(v30 + 168))
  {
    v32 = 0;
    v33 = 176;
    do
    {
      mmcs_item_finalize(v30 + v33);
      ++v32;
      v30 = *(a1 + 304);
      v33 += 416;
    }

    while (v32 < *(v30 + 168));
  }

  *(v30 + 168) = 0;
}

BOOL mmcs_get_request_has_items_not_done(uint64_t a1)
{
  v1 = *(a1 + 304);
  v2 = *(v1 + 168);
  if (!v2)
  {
    return 0;
  }

  v3 = (v1 + 348);
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

  while (v5 == 5);
  return v5 != 5;
}

BOOL mmcs_get_request_stop_with_error(uint64_t a1, CFErrorRef a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 144);
  v5 = mmcs_logging_logger_default();
  result = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (result)
    {
      v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Already cancelling. Ignoring stop of get request %p.", a1);
      v8 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v26 = v7;
        _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v7)
      {
        CFRelease(v7);
      }

      result = 0;
    }

    goto LABEL_36;
  }

  if (result)
  {
    v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Stopping get request %p", a1);
    v10 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v26 = v9;
      _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v9)
    {
      CFRelease(v9);
    }
  }

  C3BaseRetain(a1);
  *(a1 + 144) = 1;
  if (a2)
  {
    error = 0;
  }

  else
  {
    error = mmcs_cferror_create_error(@"com.apple.mmcs", 4, @"Get was cancelled.");
    a2 = error;
  }

  CFRetain(a2);
  *(a1 + 152) = a2;
  mmcs_http_context_should_cancel(*(*(a1 + 304) + 128), a2);
  mmcs_http_context_should_cancel(*(*(a1 + 304) + 136), *(a1 + 152));
  mmcs_http_context_should_cancel(*(*(a1 + 304) + 144), *(a1 + 152));
  v12 = *(*(a1 + 304) + 112);
  if (v12)
  {
    Count = CFArrayGetCount(*(v12 + 40));
    if (Count >= 1)
    {
      v14 = Count;
      for (i = 0; i != v14; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v12 + 40), i);
        mmcs_container_cancel(ValueAtIndex, *(a1 + 152));
      }
    }
  }

  while (1)
  {
    v18 = *(a1 + 304);
    v21 = v18[2];
    if (!v21)
    {
      break;
    }

    v17 = CFArrayGetCount(v21);
    v18 = *(a1 + 304);
    if (v17 < 1)
    {
      break;
    }

    v19 = CFArrayGetValueAtIndex(v18[2], 0);
    CFArrayRemoveValueAtIndex(*(*(a1 + 304) + 16), 0);
    mmcs_get_file_abort_writing_file(v19);
    v20 = v19[1];
    mmcs_get_item_progress_make_done_error(*(a1 + 152), buf);
    mmcs_get_request_set_progress_and_notify_item(a1, v20, buf);
  }

  if (*v18 && CFSetGetCount(*v18) >= 1)
  {
    CFSetApplyFunction(**(a1 + 304), cancel_file_jobs, *(a1 + 152));
    CFSetRemoveAllValues(**(a1 + 304));
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = *(a1 + 192);
  if (v23 && mmcs_proxy_locator_is_locating(v23))
  {
    mmcs_proxy_locator_cancel(*(a1 + 192));
LABEL_32:
    mmcs_metrics_request_set_error(*(a1 + 184), *(a1 + 152));
    mmcs_get_req_context_cleanup(a1, *(a1 + 152));
    goto LABEL_33;
  }

  if ((v22 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_33:
  if (error)
  {
    CFRelease(error);
  }

  C3BaseRelease(a1);
  result = 1;
LABEL_36:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void mmcs_get_req_context_cleanup(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *(*(a1 + 304) + 120);
  if (v4)
  {
    mmcs_perform_timer_invalidate(v4);
    v5 = *(a1 + 304);
    v6 = *(v5 + 120);
    if (v6)
    {
      CFRelease(v6);
      v5 = *(a1 + 304);
    }

    *(v5 + 120) = 0;
  }

  if (a2)
  {
    *&buf = 5;
    *(&buf + 1) = 0xBFF0000000000000;
    v19 = a2;
  }

  else
  {
    if (!*(a1 + 144))
    {
      goto LABEL_10;
    }

    mmcs_get_item_progress_make_done_error(*(a1 + 152), &buf);
  }

  mmcs_get_request_set_progress_and_notify_all_items_not_done(a1, &buf);
LABEL_10:
  if (mmcs_engine_contains_request(*(a1 + 32), a1))
  {
    if (*(*(a1 + 304) + 41))
    {
      if (gMMCS_DebugLevel >= 4)
      {
        v7 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Deferring client request completed callback.");
          v9 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v8;
            _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
          }

          if (v8)
          {
            CFRelease(v8);
          }
        }
      }
    }

    else
    {
      if (gMMCS_DebugLevel >= 4)
      {
        v14 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Performing client request completed callback.");
          v16 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v15;
            _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
          }

          if (v15)
          {
            CFRelease(v15);
          }
        }
      }

      mmcs_get_req_call_client_request_completed(a1);
    }

    if (!*(*(a1 + 304) + 41) || !mmcs_perform_getComplete(a1))
    {
      mmcs_get_req_done_phase2(a1);
    }
  }

  else
  {
    v10 = mmcs_request_copy_description(a1);
    v11 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"ignoring unknown get req %@", v10);
      v13 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v12;
        _os_log_impl(&dword_2577D8000, v13, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
      }

      if (v12)
      {
        CFRelease(v12);
      }
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void mmcs_get_request_append_description(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 16);
  context = *a1;
  *theString = v2;
  v22 = *(a1 + 32);
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
      v7 = v6[16];
      if (v7)
      {
        is_sending = mmcs_http_context_is_sending(v7);
        v6 = *(v1 + 304);
        if (is_sending)
        {
          *&context = v6[16];
          mmcs_http_context_append_description(&context);
          v6 = *(v1 + 304);
        }
      }

      v9 = v6[17];
      if (v9)
      {
        v10 = mmcs_http_context_is_sending(v9);
        v6 = *(v1 + 304);
        if (v10)
        {
          *&context = v6[17];
          mmcs_http_context_append_description(&context);
          v6 = *(v1 + 304);
        }
      }

      v11 = v6[14];
      if (v11)
      {
        Count = CFArrayGetCount(*(v11 + 40));
        if (Count >= 1)
        {
          v13 = Count;
          for (i = 0; i != v13; ++i)
          {
            *&context = CFArrayGetValueAtIndex(*(v11 + 40), i);
            mmcs_container_append_description(&context);
          }
        }

        v15 = vaddq_s64(*(a1 + 32), v22);
        *(a1 + 32) = v15;
        if (v15.i64[1] >= 11)
        {
          mmcs_op_requestor_context_indent(&context);
          CFStringAppendFormat(theString[0], 0, @"<%ld more container(s)> enqueued\n", *(a1 + 40) - 10);
        }
      }

      v16 = **(v1 + 304);
      if (v16)
      {
        if (CFSetGetCount(v16) >= 1)
        {
          Copy = CFSetCreateCopy(*MEMORY[0x277CBECE8], **(v1 + 304));
          if (Copy)
          {
            v18 = Copy;
            CFSetApplyFunction(Copy, _mmcs_get_request_append_description_file_job, &context);
            CFRelease(v18);
          }
        }
      }

      v19 = *(*(v1 + 304) + 144);
      if (v19)
      {
        if (mmcs_http_context_is_sending(v19))
        {
          *&context = *(*(v1 + 304) + 144);
          mmcs_http_context_append_description(&context);
        }
      }
    }
  }
}

void mmcs_get_req_add_item_for_get_chunks(uint64_t a1, void *value)
{
  v4 = *(*(a1 + 304) + 88);
  if (!v4)
  {
    *(*(a1 + 304) + 88) = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &itemSignatureReferenceEqualitySetCallbacks);
    v4 = *(*(a1 + 304) + 88);
  }

  CFSetAddValue(v4, value);
  v5 = *(*(a1 + 304) + 96);
  if (!v5)
  {
    *(*(a1 + 304) + 96) = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &itemItemIDEqualitySetCallbacks);
    v5 = *(*(a1 + 304) + 96);
  }

  CFSetAddValue(v5, value);
}

uint64_t mmcs_get_req_context_wants_getComplete(uint64_t a1)
{
  v2 = *(a1 + 304);
  if (*(v2 + 59))
  {
    return *(v2 + 60);
  }

  reporting_level = mmcs_request_get_reporting_level(a1);

  return mmcs_report_want_report(0, reporting_level);
}

BOOL mmcs_get_req_done_phase2(uint64_t *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1[38] + 41))
  {
    if (gMMCS_DebugLevel >= 4)
    {
      v2 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Performing deferred client file failures callback.");
        v4 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          v12 = 138543362;
          v13 = v3;
          _os_log_impl(&dword_2577D8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@", &v12, 0xCu);
        }

        if (v3)
        {
          CFRelease(v3);
        }
      }
    }

    v5 = *(a1[38] + 112);
    if (v5)
    {
      mmcs_get_state_container_fail_deferred_files(v5);
    }

    if (gMMCS_DebugLevel >= 4)
    {
      v6 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Performing deferred client request completed callback.");
        v8 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v12 = 138543362;
          v13 = v7;
          _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@", &v12, 0xCu);
        }

        if (v7)
        {
          CFRelease(v7);
        }
      }
    }

    mmcs_get_req_call_client_request_completed(a1);
  }

  mmcs_get_req_context_log_timing(a1);
  v9 = *(a1[38] + 112);
  if (v9)
  {
    mmcs_get_state_invalidate(v9);
  }

  result = mmcs_engine_remove_request(a1[4], a1);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void mmcs_get_req_call_client_request_completed(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  request_activity_marker = mmcs_request_get_request_activity_marker(a1);
  os_activity_scope_enter(request_activity_marker, &state);
  v3 = *(a1 + 24);
  kdebug_trace();
  v9 = *(a1 + 304);
  v10 = MEMORY[0x277CBECE8];
  if (*(v9 + 168))
  {
    v11 = 0;
    v12 = 0;
    v13 = *MEMORY[0x277CBECE8];
    v14 = 348;
    do
    {
      if (*(v9 + v14) != 5)
      {
        v15 = mmcs_item_copy_description(v9 + v14 - 172);
        v16 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v40 = v15;
          v17 = CFStringCreateWithFormat(v13, 0, @"Expected item %@ to be done by now.");
          v18 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v43 = v17;
            _os_log_impl(&dword_2577D8000, v18, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v17)
          {
            CFRelease(v17);
          }
        }

        if (v15)
        {
          CFRelease(v15);
        }

        v11 = 1;
      }

      ++v12;
      v9 = *(a1 + 304);
      v14 += 416;
    }

    while (v12 < *(v9 + 168));
    v10 = MEMORY[0x277CBECE8];
    if (v11)
    {
      v19 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"The item should have already completed.", v4, v5, v6, v7, v8, v40);
      mmcs_get_item_progress_make_done_error(v19, buf);
      mmcs_get_request_set_progress_and_notify_all_items_not_done(a1, buf);
      if (v19)
      {
        CFRelease(v19);
      }
    }
  }

  *(*(a1 + 304) + 40) = 1;
  Mutable = CFDictionaryCreateMutable(*v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (*(a1 + 184) && *(a1 + 32))
  {
    *(*(a1 + 32) + 192) = C3BaseRetain(a1);
    v21 = *(a1 + 184);
    if (v21)
    {
      _mmcs_metrics_request_stopped(*(a1 + 184), 0, *(a1 + 152));
      Count = *(*(a1 + 304) + 64);
      if (Count)
      {
        Count = CFDictionaryGetCount(Count);
      }

      *(v21 + 96) = Count;
      *(v21 + 24) = mmcs_server_version_as_double(*(a1 + 120), *(a1 + 128));
      v23 = *(*(a1 + 304) + 112);
      if (v23 && *(v23 + 16))
      {
        v24 = 0;
        v25 = 0;
        v26 = *(v21 + 104);
        v27 = *(v21 + 120);
        do
        {
          v28 = (*(v23 + 32) + v24);
          v26 = vaddq_s64(vextq_s8(v28[6], v28[6], 8uLL), v26);
          *(v21 + 104) = v26;
          v27 += v28[5].i64[1];
          *(v21 + 120) = v27;
          ++v25;
          v23 = *(*(a1 + 304) + 112);
          v24 += 128;
        }

        while (v25 < *(v23 + 16));
      }
    }

    metric_object = mmcs_metrics_create_metric_object(*(a1 + 184));
    CFDictionarySetValue(Mutable, @"metricObject", metric_object);
    if (metric_object)
    {
      CFRelease(metric_object);
    }
  }

  if (*(a1 + 249))
  {
    v30 = *(a1 + 256);
    if (v30)
    {
      CFDictionarySetValue(Mutable, @"kMMCSResultDownloadAuthorization", v30);
    }
  }

  v31 = mmcs_request_copy_description(a1);
  v32 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = *(a1 + 32);
    *buf = 134218242;
    v43 = v33;
    v44 = 2112;
    v45 = v31;
    _os_log_impl(&dword_2577D8000, v32, OS_LOG_TYPE_INFO, "Engine %p request will notify request %@ done", buf, 0x16u);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  v34 = *(a1 + 304);
  if (*(v34 + 152))
  {
    v35 = *(v34 + 160);
    if (v35)
    {
      CFDictionarySetValue(Mutable, @"kMMCSRequestOptionReturnOpaqueCloneContext", v35);
    }
  }

  v36 = *(a1 + 32);
  if (v36)
  {
    MMCSEngineClientContextRequestCompleted(*(v36 + 152), *(a1 + 40), Mutable);
  }

  if (*(a1 + 184))
  {
    v37 = *(a1 + 32);
    if (v37)
    {
      v38 = *(v37 + 192);
      if (v38)
      {
        C3BaseRelease(v38);
        v37 = *(a1 + 32);
      }

      *(v37 + 192) = 0;
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  os_activity_scope_leave(&state);
  v39 = *MEMORY[0x277D85DE8];
}

void mmcs_get_req_context_log_timing(uint64_t a1)
{
  v163 = *MEMORY[0x277D85DE8];
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
      v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"GET request timing=========================================");
      v6 = mmcs_logging_logger_summary();
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

    v7 = mmcs_request_copy_description(a1);
    v8 = mmcs_logging_logger_summary();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"engine %p request %@", *(a1 + 32), v7);
      v10 = mmcs_logging_logger_summary();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v9;
        _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
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
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v12;
          _os_log_impl(&dword_2577D8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
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
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v15;
          _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
        }

        if (v15)
        {
          CFRelease(v15);
        }
      }
    }

    if (*(*(a1 + 304) + 128))
    {
      v17 = mmcs_logging_logger_summary();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = *MEMORY[0x277CBECE8];
        v19 = mmcs_http_context_elapsed_seconds(*(*(a1 + 304) + 128));
        v20 = CFStringCreateWithFormat(v18, 0, @"\tmmcs get auth:     \t%0.4lf sec.", *&v19);
        v21 = mmcs_logging_logger_summary();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v20;
          _os_log_impl(&dword_2577D8000, v21, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
        }

        if (v20)
        {
          CFRelease(v20);
        }
      }

      v22 = mmcs_logging_logger_summary();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = *MEMORY[0x277CBECE8];
        v24 = mmcs_http_context_enqueued_seconds(*(*(a1 + 304) + 128));
        v25 = CFStringCreateWithFormat(v23, 0, @"\tmmcs get auth(inQ):  \t%0.4lf sec.", *&v24);
        v26 = mmcs_logging_logger_summary();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v25;
          _os_log_impl(&dword_2577D8000, v26, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
        }

        if (v25)
        {
          CFRelease(v25);
        }
      }
    }

    if (*(*(a1 + 304) + 136))
    {
      v27 = mmcs_logging_logger_summary();
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);
      v29 = *MEMORY[0x277CBECE8];
      if (v28)
      {
        v30 = mmcs_http_context_elapsed_seconds(*(*(a1 + 304) + 136));
        v31 = CFStringCreateWithFormat(v29, 0, @"\tmmcs get chunks auth:\t%0.4lf sec.", *&v30);
        v32 = mmcs_logging_logger_summary();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v31;
          _os_log_impl(&dword_2577D8000, v32, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
        }

        if (v31)
        {
          CFRelease(v31);
        }
      }

      v33 = mmcs_logging_logger_summary();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v34 = mmcs_http_context_enqueued_seconds(*(*(a1 + 304) + 136));
        v35 = CFStringCreateWithFormat(v29, 0, @"\tmmcs get chunks auth(inQ):\t%0.4lf sec.", *&v34);
        v36 = mmcs_logging_logger_summary();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v35;
          _os_log_impl(&dword_2577D8000, v36, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
        }

        if (v35)
        {
          CFRelease(v35);
        }
      }
    }

    else
    {
      v29 = *MEMORY[0x277CBECE8];
    }

    Mutable = CFArrayCreateMutable(v29, 0, &itemArrayCallbacks);
    v38 = *(a1 + 304);
    if (*(v38 + 168))
    {
      v39 = 0;
      v40 = 176;
      do
      {
        CFArrayAppendValue(Mutable, (v38 + v40));
        ++v39;
        v38 = *(a1 + 304);
        v40 += 416;
      }

      while (v39 < *(v38 + 168));
    }

    if (CFArrayGetCount(Mutable) >= 1)
    {
      theArray = Mutable;
      v157 = a1;
      alloc = v29;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, 0);
        v42 = mmcs_file_signature_to_hexstring(*ValueAtIndex);
        v43 = mmcs_logging_logger_summary();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          v44 = CFStringCreateWithFormat(v29, 0, @"\tsignature: %s", v42);
          v45 = mmcs_logging_logger_summary();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v44;
            _os_log_impl(&dword_2577D8000, v45, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
          }

          if (v44)
          {
            CFRelease(v44);
          }
        }

        CStringDescription = XCFDataCreateCStringDescription(*(ValueAtIndex + 6));
        v47 = mmcs_logging_logger_summary();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          v48 = CFStringCreateWithFormat(v29, 0, @"\treference: %s", CStringDescription);
          v49 = mmcs_logging_logger_summary();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v48;
            _os_log_impl(&dword_2577D8000, v49, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
          }

          if (v48)
          {
            CFRelease(v48);
          }
        }

        v50 = mmcs_logging_logger_summary();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          v51 = CFStringCreateWithFormat(v29, 0, @"\tsize: %lld bytes (not valid if no authGet response)", *(ValueAtIndex + 2));
          v52 = mmcs_logging_logger_summary();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v51;
            _os_log_impl(&dword_2577D8000, v52, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
          }

          if (v51)
          {
            CFRelease(v51);
          }
        }

        v53 = mmcs_logging_logger_summary();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          v54 = CFStringCreateWithFormat(v29, 0, @"\tunique size: %lld bytes", *(ValueAtIndex + 37));
          v55 = mmcs_logging_logger_summary();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v54;
            _os_log_impl(&dword_2577D8000, v55, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
          }

          if (v54)
          {
            CFRelease(v54);
          }
        }

        v56 = mmcs_logging_logger_summary();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          v57 = CFStringCreateWithFormat(v29, 0, @"\titem: %llu", *(ValueAtIndex + 5));
          v58 = mmcs_logging_logger_summary();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v57;
            _os_log_impl(&dword_2577D8000, v58, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
          }

          if (v57)
          {
            CFRelease(v57);
          }
        }

        if (v42)
        {
          free(v42);
        }

        if (CStringDescription)
        {
          free(CStringDescription);
        }

        v59 = *(*(a1 + 304) + 112);
        if (v59)
        {
          if (!mmcs_item_is_derivative(ValueAtIndex) && *(v59 + 16))
          {
            v60 = 0;
            v61 = 0;
            do
            {
              v62 = *(v59 + 32);
              if (*(v62 + v60 + 8) == ValueAtIndex)
              {
                v63 = mmcs_logging_logger_summary();
                if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
                {
                  v64 = *(*(v62 + v60 + 8) + 40);
                  file_local_fulfillment_elapsed_seconds = mmcs_get_file_local_fulfillment_elapsed_seconds(v62 + v60);
                  v66 = CFStringCreateWithFormat(alloc, 0, @"\tlocal fulfillment of item %llu: %0.4lf sec, %llu bytes", v64, *&file_local_fulfillment_elapsed_seconds, *(v62 + v60 + 96) + *(v62 + v60 + 88));
                  v67 = mmcs_logging_logger_summary();
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
                  {
                    LODWORD(buf) = 138543362;
                    *(&buf + 4) = v66;
                    _os_log_impl(&dword_2577D8000, v67, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
                  }

                  if (v66)
                  {
                    CFRelease(v66);
                  }
                }

                v68 = mmcs_logging_logger_summary();
                if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
                {
                  v69 = CFStringCreateWithFormat(alloc, 0, @"\t                                   %llu bytes validated for resume", *(v62 + v60 + 80));
                  v70 = mmcs_logging_logger_summary();
                  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
                  {
                    LODWORD(buf) = 138543362;
                    *(&buf + 4) = v69;
                    _os_log_impl(&dword_2577D8000, v70, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
                  }

                  if (v69)
                  {
                    CFRelease(v69);
                  }
                }

                v71 = mmcs_logging_logger_summary();
                if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
                {
                  v72 = CFStringCreateWithFormat(alloc, 0, @"\t                                   %llu bytes resumed", *(v62 + v60 + 88));
                  v73 = mmcs_logging_logger_summary();
                  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
                  {
                    LODWORD(buf) = 138543362;
                    *(&buf + 4) = v72;
                    _os_log_impl(&dword_2577D8000, v73, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
                  }

                  if (v72)
                  {
                    CFRelease(v72);
                  }
                }

                v74 = mmcs_logging_logger_summary();
                if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
                {
                  v75 = CFStringCreateWithFormat(alloc, 0, @"\t                                   %llu bytes fulfilled locally", *(v62 + v60 + 96));
                  v76 = mmcs_logging_logger_summary();
                  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
                  {
                    LODWORD(buf) = 138543362;
                    *(&buf + 4) = v75;
                    _os_log_impl(&dword_2577D8000, v76, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
                  }

                  if (v75)
                  {
                    CFRelease(v75);
                  }
                }

                v77 = mmcs_logging_logger_summary();
                if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
                {
                  v78 = CFStringCreateWithFormat(alloc, 0, @"\t                                   %llu bytes fulfilled by peers", *(v62 + v60 + 104));
                  v79 = mmcs_logging_logger_summary();
                  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
                  {
                    LODWORD(buf) = 138543362;
                    *(&buf + 4) = v78;
                    _os_log_impl(&dword_2577D8000, v79, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
                  }

                  if (v78)
                  {
                    CFRelease(v78);
                  }
                }
              }

              ++v61;
              v60 += 128;
            }

            while (v61 < *(v59 + 16));
          }

          Count = CFArrayGetCount(*(v59 + 40));
          if (Count >= 1)
          {
            v81 = Count;
            for (i = 0; i != v81; ++i)
            {
              v83 = CFArrayGetValueAtIndex(*(v59 + 40), i);
              state_copy_file_states_for_container = mmcs_get_state_copy_file_states_for_container(v59, v83);
              *&buf = 0;
              *(&buf + 1) = ValueAtIndex;
              if (state_copy_file_states_for_container)
              {
                v85 = state_copy_file_states_for_container;
                CFSetApplyFunction(state_copy_file_states_for_container, item_match_applier, &buf);
                CFRelease(v85);
                if (buf)
                {
                  v86 = *(*(*(v83 + 2) + 24) + 16);
                  if (v86)
                  {
                    v87 = CFHTTPMessageCopyHeaderFieldValue(v86, @"Range");
                  }

                  else
                  {
                    v87 = 0;
                  }

                  v88 = mmcs_logging_logger_summary();
                  if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
                  {
                    v89 = CFStringCreateWithFormat(alloc, 0, @"\t req container idx:\t%lu", i);
                    v90 = mmcs_logging_logger_summary();
                    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
                    {
                      *context = 138543362;
                      v161 = v89;
                      _os_log_impl(&dword_2577D8000, v90, OS_LOG_TYPE_DEBUG, "%{public}@", context, 0xCu);
                    }

                    if (v89)
                    {
                      CFRelease(v89);
                    }
                  }

                  v91 = mmcs_container_copy_simple_description(v83);
                  if (v91)
                  {
                    v92 = v91;
                    CStringWithCFString = createCStringWithCFString(v91);
                    v94 = mmcs_logging_logger_summary();
                    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
                    {
                      v95 = "(no container description)";
                      if (CStringWithCFString)
                      {
                        v95 = CStringWithCFString;
                      }

                      v96 = CFStringCreateWithFormat(alloc, 0, @"\t     container:\t%s", v95);
                      v97 = mmcs_logging_logger_summary();
                      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
                      {
                        *context = 138543362;
                        v161 = v96;
                        _os_log_impl(&dword_2577D8000, v97, OS_LOG_TYPE_DEBUG, "%{public}@", context, 0xCu);
                      }

                      if (v96)
                      {
                        CFRelease(v96);
                      }
                    }

                    if (CStringWithCFString)
                    {
                      free(CStringWithCFString);
                    }

                    CFRelease(v92);
                  }

                  if (*(v83 + 16) == 2)
                  {
                    v98 = *(v83 + 11);
                    v99 = mmcs_logging_logger_summary();
                    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
                    {
                      v100 = *(v98 + 16);
                      if (!v100)
                      {
                        v100 = "(no key)";
                      }

                      v101 = CFStringCreateWithFormat(alloc, 0, @"\t     container key:\t%s", v100);
                      v102 = mmcs_logging_logger_summary();
                      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
                      {
                        *context = 138543362;
                        v161 = v101;
                        _os_log_impl(&dword_2577D8000, v102, OS_LOG_TYPE_DEBUG, "%{public}@", context, 0xCu);
                      }

                      if (v101)
                      {
                        CFRelease(v101);
                      }
                    }

                    v103 = *(v98 + 16);
                    if (v103)
                    {
                      v104 = strlen(*(v98 + 16));
                      v105 = CFStringCreateWithBytes(alloc, v103, v104, 0x8000100u, 0);
                      if (v105)
                      {
                        v106 = v105;
                        v107 = COERCE_DOUBLE(mmcs_container_id_info_parse_container_id(v105));
                        CFRelease(v106);
                        if (v107 != 0.0)
                        {
                          String = XCFAbsoluteTimeDateFormatterCreateString(v107);
                          if (String)
                          {
                            v109 = String;
                            v110 = mmcs_logging_logger_summary();
                            if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
                            {
                              v111 = CFStringCreateWithFormat(alloc, 0, @"\t  upload auth date:\t%@", v109);
                              v112 = mmcs_logging_logger_summary();
                              if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
                              {
                                *context = 138543362;
                                v161 = v111;
                                _os_log_impl(&dword_2577D8000, v112, OS_LOG_TYPE_DEBUG, "%{public}@", context, 0xCu);
                              }

                              if (v111)
                              {
                                CFRelease(v111);
                              }
                            }

                            CFRelease(v109);
                          }

                          v113 = mmcs_logging_logger_summary();
                          if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
                          {
                            Current = CFAbsoluteTimeGetCurrent();
                            v115 = CFStringCreateWithFormat(alloc, 0, @"\t time since upload:\t%f", Current - v107);
                            v116 = mmcs_logging_logger_summary();
                            if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
                            {
                              *context = 138543362;
                              v161 = v115;
                              _os_log_impl(&dword_2577D8000, v116, OS_LOG_TYPE_DEBUG, "%{public}@", context, 0xCu);
                            }

                            if (v115)
                            {
                              CFRelease(v115);
                            }
                          }
                        }
                      }
                    }

                    v117 = mmcs_logging_logger_summary();
                    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
                    {
                      v118 = @"unknown range";
                      if (v87)
                      {
                        v118 = v87;
                      }

                      v119 = CFStringCreateWithFormat(alloc, 0, @"\t             range:\t%@", v118);
                      v120 = mmcs_logging_logger_summary();
                      if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
                      {
                        *context = 138543362;
                        v161 = v119;
                        _os_log_impl(&dword_2577D8000, v120, OS_LOG_TYPE_DEBUG, "%{public}@", context, 0xCu);
                      }

                      if (v119)
                      {
                        CFRelease(v119);
                      }
                    }

                    if (v87)
                    {
                      CFRelease(v87);
                    }

                    v121 = mmcs_logging_logger_summary();
                    if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
                    {
                      body_size = mmcs_get_container_get_body_size(v83);
                      v123 = CFStringCreateWithFormat(alloc, 0, @"\t     expected size:\t%lu bytes", body_size);
                      v124 = mmcs_logging_logger_summary();
                      if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
                      {
                        *context = 138543362;
                        v161 = v123;
                        _os_log_impl(&dword_2577D8000, v124, OS_LOG_TYPE_DEBUG, "%{public}@", context, 0xCu);
                      }

                      if (v123)
                      {
                        CFRelease(v123);
                      }
                    }

                    v125 = mmcs_logging_logger_summary();
                    if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
                    {
                      v126 = CFStringCreateWithFormat(alloc, 0, @"\t     total bytes not decrypted:\t%lu bytes", *(v98 + 136));
                      v127 = mmcs_logging_logger_summary();
                      if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
                      {
                        *context = 138543362;
                        v161 = v126;
                        _os_log_impl(&dword_2577D8000, v127, OS_LOG_TYPE_DEBUG, "%{public}@", context, 0xCu);
                      }

                      if (v126)
                      {
                        CFRelease(v126);
                      }
                    }

                    if (!*(v98 + 180))
                    {
                      v128 = mmcs_logging_logger_summary();
                      if (os_log_type_enabled(v128, OS_LOG_TYPE_DEBUG))
                      {
                        v129 = CFStringCreateWithFormat(alloc, 0, @"\t    container %lu was not needed", i);
                        v130 = mmcs_logging_logger_summary();
                        if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
                        {
                          *context = 138543362;
                          v161 = v129;
                          _os_log_impl(&dword_2577D8000, v130, OS_LOG_TYPE_DEBUG, "%{public}@", context, 0xCu);
                        }

                        if (v129)
                        {
                          CFRelease(v129);
                        }
                      }
                    }
                  }

                  mmcs_transaction_log_timing(*(v83 + 2));
                  v131 = *(v83 + 3);
                  if (v131)
                  {
                    mmcs_transaction_log_timing(v131);
                  }

                  v132 = *(v83 + 5);
                  if (v132)
                  {
                    v133 = mmcs_cferror_copy_description(v132);
                    v134 = mmcs_logging_logger_summary();
                    if (os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG))
                    {
                      v135 = CFStringCreateWithFormat(alloc, 0, @"\terror :           \t%@", v133);
                      v136 = mmcs_logging_logger_summary();
                      if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
                      {
                        *context = 138543362;
                        v161 = v135;
                        _os_log_impl(&dword_2577D8000, v136, OS_LOG_TYPE_DEBUG, "%{public}@", context, 0xCu);
                      }

                      if (v135)
                      {
                        CFRelease(v135);
                      }
                    }

                    if (v133)
                    {
                      CFRelease(v133);
                    }
                  }

                  v137 = *(v83 + 6);
                  if (v137)
                  {
                    *context = 1;
                    v164.length = CFArrayGetCount(v137);
                    v164.location = 0;
                    CFArrayApplyFunction(v137, v164, _log_error, context);
                  }
                }
              }
            }
          }
        }

        v138 = *(ValueAtIndex + 24);
        v29 = alloc;
        if (v138)
        {
          v139 = mmcs_cferror_copy_description(v138);
          v140 = mmcs_logging_logger_summary();
          if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
          {
            v141 = CFStringCreateWithFormat(alloc, 0, @"\terror:             \t%@", v139);
            v142 = mmcs_logging_logger_summary();
            if (os_log_type_enabled(v142, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v141;
              _os_log_impl(&dword_2577D8000, v142, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
            }

            if (v141)
            {
              CFRelease(v141);
            }
          }

          v143 = mmcs_logging_logger_summary();
          if (os_log_type_enabled(v143, OS_LOG_TYPE_DEBUG))
          {
            v144 = MMCSGetItemStateCString(*(ValueAtIndex + 44));
            v145 = CFStringCreateWithFormat(alloc, 0, @"\terror state:       \t%s", v144);
            v146 = mmcs_logging_logger_summary();
            if (os_log_type_enabled(v146, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v145;
              _os_log_impl(&dword_2577D8000, v146, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
            }

            if (v145)
            {
              CFRelease(v145);
            }
          }

          if (v139)
          {
            CFRelease(v139);
          }
        }

        Mutable = theArray;
        CFArrayRemoveValueAtIndex(theArray, 0);
        a1 = v157;
      }

      while (CFArrayGetCount(theArray) > 0);
    }

    if (*(*(a1 + 304) + 144))
    {
      v147 = mmcs_logging_logger_summary();
      if (os_log_type_enabled(v147, OS_LOG_TYPE_DEBUG))
      {
        v148 = mmcs_http_context_elapsed_seconds(*(*(a1 + 304) + 144));
        v149 = CFStringCreateWithFormat(v29, 0, @"\tmmcs get complete:     \t%0.4lf sec.", *&v148);
        v150 = mmcs_logging_logger_summary();
        if (os_log_type_enabled(v150, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v149;
          _os_log_impl(&dword_2577D8000, v150, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
        }

        if (v149)
        {
          CFRelease(v149);
        }
      }

      v151 = mmcs_logging_logger_summary();
      if (os_log_type_enabled(v151, OS_LOG_TYPE_DEBUG))
      {
        v152 = mmcs_http_context_enqueued_seconds(*(*(a1 + 304) + 144));
        v153 = CFStringCreateWithFormat(v29, 0, @"\tmmcs get complete(inQ):\t%0.4lf sec.", *&v152);
        v154 = mmcs_logging_logger_summary();
        if (os_log_type_enabled(v154, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v153;
          _os_log_impl(&dword_2577D8000, v154, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
        }

        if (v153)
        {
          CFRelease(v153);
        }
      }
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    os_activity_scope_leave(&state);
  }

  v155 = *MEMORY[0x277D85DE8];
}

uint64_t mmcs_get_req_has_outstanding_asynchronous_work(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 304);
  v3 = *(v2 + 112);
  if (v3)
  {
    if (mmcs_get_state_has_outstanding_async_transactions(v3))
    {
      goto LABEL_8;
    }

    v2 = *(a1 + 304);
  }

  if ((!*v2 || CFSetGetCount(*v2) <= 0) && mmcs_proxy_locator_is_done(*(a1 + 192)))
  {
    result = 0;
    goto LABEL_15;
  }

LABEL_8:
  if (!mmcs_proxy_locator_is_done(*(a1 + 192)))
  {
    v5 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"waiting to hear back from ACS");
      v7 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138543362;
        v10 = v6;
        _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@", &v9, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  result = 1;
LABEL_15:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void mmcs_get_req_add_file_job(uint64_t a1, void *value)
{
  v4 = **(a1 + 304);
  if (!v4)
  {
    v5 = *byte_2868BF038;
    **(a1 + 304) = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &v5);
    v4 = **(a1 + 304);
  }

  CFSetSetValue(v4, value);
}

CFIndex mmcs_get_req_validate_get_file(uint64_t a1, void *value)
{
  v4 = *(*(a1 + 304) + 16);
  if (!v4)
  {
    *(*(a1 + 304) + 16) = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
    v4 = *(*(a1 + 304) + 16);
  }

  CFArrayAppendValue(v4, value);

  return mmcs_get_req_context_schedule_file_jobs(a1);
}

CFIndex mmcs_get_req_context_schedule_file_jobs(uint64_t a1)
{
  for (i = *(a1 + 304); ; i = *(a1 + 304))
  {
    result = *(i + 16);
    if (!result)
    {
      break;
    }

    result = CFArrayGetCount(result);
    if (result < 1)
    {
      break;
    }

    v4 = *(a1 + 304);
    if (*v4)
    {
      result = CFSetGetCount(*v4);
      if (result > 0)
      {
        return result;
      }

      v4 = *(a1 + 304);
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v4[2], 0);
    CFArrayRemoveValueAtIndex(*(*(a1 + 304) + 16), 0);
    v6 = *(a1 + 32);
    v15 = 0;
    *&v10 = 0;
    *(&v10 + 1) = a1;
    v11 = C3BaseRetain;
    v12 = C3BaseRelease;
    v13 = 0;
    v14 = mmcs_get_req_context_did_validate_item;
    v7 = mmcs_file_job_create(&v10, v6, ValueAtIndex, &v15);
    if (v7)
    {
      v8 = v7;
      mmcs_get_req_add_file_job(a1, v7);
      mmcs_engine_file_job_dispatch_async(v8, *(v6 + 24));
      C3BaseRelease(v8);
    }

    else
    {
      mmcs_get_file_abort_writing_file(ValueAtIndex);
      v9 = ValueAtIndex[1];
      mmcs_get_item_progress_make_done_error(v15, &v10);
      mmcs_get_request_set_progress_and_notify_item(a1, v9, &v10);
      if (v15)
      {
        CFRelease(v15);
      }
    }
  }

  return result;
}

void mmcs_get_req_set_opaque_clone_context(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 304);
  v4 = *(v3 + 160);
  if (v4 != cf)
  {
    if (v4)
    {
      CFRelease(v4);
      v3 = *(a1 + 304);
    }

    *(v3 + 160) = 0;
    if (cf)
    {
      CFRetain(cf);
    }

    *(*(a1 + 304) + 160) = cf;
  }
}

uint64_t item_match_applier(uint64_t result, uint64_t a2)
{
  if (*(a2 + 8) == *(result + 8))
  {
    *a2 = 1;
  }

  return result;
}

void _log_error(__CFError *a1, unsigned int *a2)
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

void mmcs_get_req_context_did_validate_item(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"completed file job %p", a2);
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
    v7 = *(a1 + 304);
    if (!*(v7 + 40))
    {
      if (*v7 && CFSetContainsValue(*v7, a2))
      {
        if (a2)
        {
          C3BaseRetain(a2);
          CFSetRemoveValue(**(a1 + 304), a2);
          mmcs_get_req_context_schedule_file_jobs(a1);
          v9 = *(a2 + 136);
          v10 = *(v9 + 8);
          if (*(a2 + 216))
          {
            v12 = *(a2 + 200);
            v11 = *(a2 + 208);
            v13 = *(a2 + 152);
            v14 = CKFileDigestResultsFileLength();
            v15 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              v16 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Validated the contents of file %s (%llu bytes) for item %llu in %lf sec. (%.3lf MB/sec)", *(v9 + 16), v14, v10[5], v11 - v12, vcvtd_n_f64_u64(v14, 0xAuLL) * 0.0009765625 / (v11 - v12));
              v17 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                LODWORD(buf) = 138543362;
                *(&buf + 4) = v16;
                _os_log_impl(&dword_2577D8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
              }

              if (v16)
              {
                CFRelease(v16);
              }
            }
          }

          else
          {
            v22 = *(a2 + 232);
            v23 = mmcs_logging_logger_default();
            v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
            if (v22)
            {
              if (v24)
              {
                v30 = v10[5];
                v31 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Could not validate contents of file %s for item %llu: %@", *(v9 + 16), v30, *(a2 + 232));
                v32 = mmcs_logging_logger_default();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(buf) = 138543362;
                  *(&buf + 4) = v31;
                  _os_log_impl(&dword_2577D8000, v32, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
                }

                if (v31)
                {
                  CFRelease(v31);
                }
              }

              CFRetain(*(a2 + 232));
              v19 = *(a2 + 232);
            }

            else
            {
              if (v24)
              {
                v33 = *(v9 + 16);
                v34 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Could not validate contents of file %s for item %llu with unspecified error", v33, v10[5]);
                v35 = mmcs_logging_logger_default();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(buf) = 138543362;
                  *(&buf + 4) = v34;
                  _os_log_impl(&dword_2577D8000, v35, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
                }

                if (v34)
                {
                  CFRelease(v34);
                }
              }

              v19 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 12, @"There was an unspecified error while trying to validate the contents of item %llu", v25, v26, v27, v28, v29, v10[5]);
            }

            if (v19)
            {
              mmcs_get_file_abort_writing_file(v9);
              *&buf = 5;
              *(&buf + 1) = 0xBFF0000000000000;
              v46 = v19;
              mmcs_get_request_set_progress_and_notify_item(a1, v10, &buf);
              v36 = 0;
              goto LABEL_43;
            }
          }

          mmcs_get_file_finalize_file_after_validation(v9);
          v19 = 0;
          v36 = 1;
LABEL_43:
          if (*(a1 + 144))
          {
LABEL_44:
            v37 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              v38 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Clean up put request as last step of cancel");
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

            mmcs_metrics_request_set_error(*(a1 + 184), *(a1 + 152));
            v40 = *(a1 + 152);
LABEL_50:
            mmcs_get_req_context_cleanup(a1, v40);
            goto LABEL_51;
          }

          v41 = **(a1 + 304);
          if (v41)
          {
            Count = CFSetGetCount(v41);
            v43 = *(a1 + 144);
            if (Count <= 0)
            {
              if (!*(a1 + 144) && !mmcs_get_req_has_outstanding_asynchronous_work(a1))
              {
                v44 = mmcs_logging_logger_default();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                {
                  LODWORD(buf) = 134217984;
                  *(&buf + 4) = a1;
                  _os_log_impl(&dword_2577D8000, v44, OS_LOG_TYPE_INFO, "Downloads complete. All done! (Get request %p)", &buf, 0xCu);
                }

                v40 = 0;
                goto LABEL_50;
              }
            }

            else if (*(a1 + 144))
            {
              goto LABEL_44;
            }
          }

LABEL_51:
          C3BaseRelease(a2);
          if (v36)
          {
            goto LABEL_8;
          }

LABEL_52:
          CFRelease(v19);
          goto LABEL_8;
        }

        v21 = mmcs_logging_logger_default();
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_8;
        }

        v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"NULL job. Ignoring");
        v20 = mmcs_logging_logger_default();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
LABEL_22:
          if (!v19)
          {
            goto LABEL_8;
          }

          goto LABEL_52;
        }

        LODWORD(buf) = 138543362;
        *(&buf + 4) = v19;
      }

      else
      {
        v18 = mmcs_logging_logger_default();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_8;
        }

        v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unrecogized chunk job. Ignoring");
        v20 = mmcs_logging_logger_default();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }

        LODWORD(buf) = 138543362;
        *(&buf + 4) = v19;
      }

      _os_log_impl(&dword_2577D8000, v20, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
      goto LABEL_22;
    }
  }

LABEL_8:
  v8 = *MEMORY[0x277D85DE8];
}

__CFString *mmcs_key_description_create_with_bytes(char *a1, unint64_t a2, int a3)
{
  v4 = a2;
  v5 = a1;
  v27 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBECE8];
  if (a2 && a3)
  {
    v7 = hextostrdup(a1, 1uLL);
    --v4;
    v5 = (v5 + 1);
  }

  else
  {
    v7 = 0;
    if (!a1)
    {
      v9 = @"NULL keyData";
      goto LABEL_21;
    }
  }

  if (!v4)
  {
    v9 = @"0-length keyData";
    goto LABEL_21;
  }

  if (mmcs_zcmp(v5, v4))
  {
    v8 = CFStringCreateWithFormat(*v6, 0, @"zero-filled %llu bytes", v4);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = @"zero-filled";
    }

    goto LABEL_21;
  }

  *md = 0u;
  v26 = 0u;
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  CC_SHA256_Update(&c, v5, v4);
  CC_SHA256_Final(md, &c);
  v10 = *v6;
  v11 = XCFDataCreateWithBytesNoCopy(*v6, md, 6, *MEMORY[0x277CBED00]);
  if (v11)
  {
    v12 = v11;
    v13 = mmcs_base64_encode_cfdata_to_cstring(v11);
    if (v13)
    {
      v14 = v13;
      v15 = strlen(v13);
      v16 = XCFStringCreateWithBytesNoCopy(v10, v14, v15, 0x600u, 0, *MEMORY[0x277CBECF0]);
      if (!v16)
      {
        CFRelease(v12);
        free(v14);
        v16 = @"Error-Wrapping-Serialized-Hash";
        goto LABEL_19;
      }
    }

    else
    {
      v16 = @"Error-Serializing-Hash";
    }

    CFRelease(v12);
  }

  else
  {
    v16 = @"Error-Wrapping-Hash";
  }

LABEL_19:
  v9 = CFStringCreateWithFormat(v10, 0, @"%llu bytes with hash %@", v4, v16);
  CFRelease(v16);
  if (!v9)
  {
    v9 = @"non-zero-filled";
  }

LABEL_21:
  v17 = *v6;
  if (a3)
  {
    v18 = "error";
    if (v7)
    {
      v18 = v7;
    }

    v19 = CFStringCreateWithFormat(v17, 0, @"KeyWithScheme<%s,%@>", v18, v9);
  }

  else
  {
    v19 = CFStringCreateWithFormat(v17, 0, @"Key<%@>", v9, v23);
  }

  v20 = v19;
  CFRelease(v9);
  if (v7)
  {
    free(v7);
  }

  if (v20)
  {
    result = v20;
  }

  else
  {
    result = @"Key<Error>";
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

__CFString *mmcs_key_description_create_with_cfdata(const __CFData *a1, int a2)
{
  if (!a1)
  {
    return @"Key<NULL key>";
  }

  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);

  return mmcs_key_description_create_with_bytes(BytePtr, Length, a2);
}

uint64_t mmcs_proxy_locator_should_disable_for_request(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  dataclass = mmcs_request_get_dataclass(a1);
  v3 = mmcs_logging_logger_default();
  if (!dataclass)
  {
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"request does not have a dataclass");
    v12 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v11;
LABEL_26:
      _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

LABEL_27:
    if (v11)
    {
      CFRelease(v11);
    }

    goto LABEL_29;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"engine dataclass: %@", dataclass);
    v5 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v16 = v4;
      _os_log_impl(&dword_2577D8000, v5, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  v6 = 1;
  if (CFStringCompare(dataclass, @"com.apple.Dataclass.Messenger", 1uLL))
  {
    v6 = 1;
    if (CFStringCompare(dataclass, @"com.apple.Dataclass.Backup", 1uLL))
    {
      v6 = 1;
      if (CFStringCompare(dataclass, @"com.apple.Dataclass.MediaStream", 1uLL))
      {
        v6 = 1;
        if (CFStringCompare(dataclass, @"com.apple.Dataclass.FaceTime", 1uLL))
        {
          v6 = 1;
          if (CFStringCompare(dataclass, @"com.apple.Dataclass.SharePlay", 1uLL))
          {
            if (!mmcs_request_is_cloudkit_dataclass(a1))
            {
              goto LABEL_29;
            }

            container_identifier = mmcs_request_get_container_identifier(a1);
            v8 = mmcs_logging_logger_default();
            if (container_identifier)
            {
              if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
              {
                v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"container id is %@", container_identifier);
                v10 = mmcs_logging_logger_default();
                if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543362;
                  v16 = v9;
                  _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
                }

                if (v9)
                {
                  CFRelease(v9);
                }
              }

              v6 = 1;
              if (CFStringCompare(container_identifier, @"com.apple.backup.ios", 1uLL) == kCFCompareEqualTo)
              {
                goto LABEL_30;
              }

              v6 = 1;
              if (CFStringCompare(container_identifier, @"iCloud.com.apple.Feldspar", 1uLL) == kCFCompareEqualTo)
              {
                goto LABEL_30;
              }

              v6 = 1;
              if (CFStringCompare(container_identifier, @"com.apple.freeform", 1uLL) == kCFCompareEqualTo)
              {
                goto LABEL_30;
              }

LABEL_29:
              v6 = 0;
              goto LABEL_30;
            }

            if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_29;
            }

            v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"request via cloudkit does not have a container identifier");
            v12 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v16 = v11;
              goto LABEL_26;
            }

            goto LABEL_27;
          }
        }
      }
    }
  }

LABEL_30:
  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t mmcs_proxy_locator_create(uint64_t *a1, CFArrayRef theArray, const void *a3)
{
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  result = 0;
  if (a3)
  {
    if (Count)
    {
      *a1 = 0;
      v8 = C3TypeRegister(&mmcs_proxy_locatorGetTypeID_typeID);
      result = C3TypeCreateInstance_(0, v8, 0x20uLL);
      if (result)
      {
        v9 = result;
        *(result + 20) = 0;
        Copy = CFArrayCreateCopy(*MEMORY[0x277CBECE8], theArray);
        *(v9 + 32) = Copy;
        *(v9 + 40) = 0;
        *(v9 + 42) = 0;
        if (Copy)
        {
          *(v9 + 24) = a3;
          C3BaseRetain(a3);
          *a1 = v9;
          return 1;
        }

        else
        {
          C3BaseRelease(v9);
          return 0;
        }
      }
    }
  }

  return result;
}

void mmcs_proxy_locator_invalidate(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v2)
    {
      C3BaseRelease(v2);
    }
  }
}

CFIndex mmcs_proxy_locator_locate(uint64_t a1)
{
  C3BaseRetain(a1);
  *(a1 + 40) = 1;
  result = CFArrayGetCount(*(a1 + 32));
  if (result >= 1)
  {
    v3 = 0;
    v4 = *MEMORY[0x277CBECE8];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), v3);
      v6 = mmcs_container_copy_vendor_url(ValueAtIndex);
      Options = getLocateOptions();
      MutableCopy = CFDictionaryCreateMutableCopy(v4, 0, Options);
      v9 = mmcs_request_copy_persistent_identifier(*(a1 + 24));
      CFDictionaryAddValue(MutableCopy, @"x-apple-persistent-identifier", v9);
      ACSLocateCachingServer();
      if (v6)
      {
        CFRelease(v6);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      ++v3;
      result = CFArrayGetCount(*(a1 + 32));
    }

    while (v3 < result);
  }

  return result;
}

void __mmcs_proxy_locator_locate_block_invoke(uint64_t a1, CFTypeRef cf, CFTypeRef a3, CFTypeRef a4)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  if (a4)
  {
    CFRetain(a4);
  }

  v8 = mmcs_chunk_instance_offset(*(*(a1 + 40) + 24));
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = __mmcs_proxy_locator_locate_block_invoke_2;
  v12[3] = &unk_279845578;
  v14 = cf;
  v15 = a3;
  v9 = *(a1 + 48);
  v16 = a4;
  v17 = v9;
  v13 = *(a1 + 32);
  v10 = *(v8 + 56);
  C3BaseRetain(v10);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __runOnMainRunLoop_block_invoke;
  block[3] = &unk_2798455C8;
  block[4] = v12;
  v11 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  mmcs_perform_target_async(*(v8 + 56), v11);
  if (v10)
  {
    C3BaseRelease(v10);
  }

  _Block_release(v11);
}

void __mmcs_proxy_locator_locate_block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  ++*(v2 + 20);
  Count = CFArrayGetCount(*(v2 + 32));
  v4 = *(a1 + 40);
  v5 = *(v4 + 20);
  if (!*(v4 + 41))
  {
    v10 = *(a1 + 64);
    if (*(a1 + 48))
    {
      if (!v10)
      {
        CFDictionaryGetValue(*(a1 + 56), *MEMORY[0x277CEEEF0]);
        ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 40) + 32), *(a1 + 72));
        v12 = *(a1 + 48);
        mmcs_container_create_proxy_transaction(ValueAtIndex);
        goto LABEL_28;
      }
    }

    else if (!v10)
    {
      v21 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"couldn't get proxy url with no error");
      v20 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      *buf = 138543362;
      v29 = v15;
      goto LABEL_24;
    }

    Domain = CFErrorGetDomain(v10);
    if (CFEqual(Domain, *MEMORY[0x277CBEE48]) && CFErrorGetCode(*(a1 + 64)) == 60)
    {
      v14 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_28;
      }

      v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"couldn't get proxy url with error: %@", *(a1 + 64));
      v16 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_26;
      }

      *buf = 138543362;
      v29 = v15;
      v17 = v16;
      v18 = OS_LOG_TYPE_DEBUG;
      goto LABEL_25;
    }

    v19 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"couldn't get proxy url with error: %@", *(a1 + 64));
    v20 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 138543362;
    v29 = v15;
LABEL_24:
    v17 = v20;
    v18 = OS_LOG_TYPE_ERROR;
LABEL_25:
    _os_log_impl(&dword_2577D8000, v17, v18, "%{public}@", buf, 0xCu);
LABEL_26:
    if (v15)
    {
      CFRelease(v15);
    }

LABEL_28:
    if (Count != v5)
    {
      goto LABEL_34;
    }

    *(*(a1 + 40) + 40) = 0;
    (*(*(a1 + 32) + 16))();
    v9 = *(a1 + 40);
    if (!v9)
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  v6 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"proxy locator was cancelled. bailing.");
    v8 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = v7;
      _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  if (Count == v5)
  {
    v9 = *(a1 + 40);
    *(v9 + 40) = 0;
LABEL_30:
    v22 = *(v9 + 24);
    *(v9 + 24) = 0;
    if (v22)
    {
      C3BaseRelease(v22);
    }

    v23 = *(a1 + 40);
    if (v23)
    {
      C3BaseRelease(v23);
    }
  }

LABEL_34:
  v24 = *(a1 + 48);
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = *(a1 + 56);
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = *(a1 + 64);
  if (v26)
  {
    CFRelease(v26);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void mmcs_proxy_locator_cancel(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"cancelling ACS locator. disregarding any callbacks.");
      v4 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 138543362;
        v7 = v3;
        _os_log_impl(&dword_2577D8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@", &v6, 0xCu);
      }

      if (v3)
      {
        CFRelease(v3);
      }
    }

    os_unfair_lock_lock((a1 + 16));
    *(a1 + 41) = 257;
    os_unfair_lock_unlock((a1 + 16));
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t mmcs_proxy_locator_is_locating(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t mmcs_proxy_locator_is_done(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 42);
  }

  else
  {
    return 1;
  }
}

uint64_t mmcs_proxy_locator_finish(uint64_t result)
{
  if (result)
  {
    *(result + 42) = 1;
  }

  return result;
}

void _mmcs_proxy_locatorCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 32) = 0;
  v3 = *(a1 + 24);
  if (v3)
  {
    C3BaseRelease(v3);
  }

  *(a1 + 24) = 0;
}

CFURLRef _LocatorVars_init_once()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = MEMORY[0x277CBF138];
  v2 = MEMORY[0x277CBF150];
  sLocateOptions = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  Mutable = CFDictionaryCreateMutable(v0, 0, v1, v2);
  v4 = *MEMORY[0x277CBED28];
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CEEF00], *MEMORY[0x277CBED28]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CEEF08], v4);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CEEF10], v4);
  CFDictionaryAddValue(sLocateOptions, *MEMORY[0x277CEEEF8], Mutable);
  CFDictionaryAddValue(sLocateOptions, *MEMORY[0x277CEEF18], v4);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  result = XCFURLCreateWithCString("https://www.apple.com");
  sDummyURL = result;
  return result;
}

void mmcs_get_state_invalidate(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2.length = CFArrayGetCount(*(a1 + 40));
    v2.location = 0;

    CFArrayApplyFunction(v1, v2, mmcs_container_invalidate_applier, 0);
  }
}

void mmcs_get_state_dealloc(void *a1)
{
  *a1 = 0;
  v2 = a1[4];
  if (v2)
  {
    if (!a1[1])
    {
      goto LABEL_6;
    }

    v3 = 0;
    v4 = 0;
    do
    {
      mmcs_get_file_finalize((a1[4] + v3));
      ++v4;
      v3 += 128;
    }

    while (v4 < a1[1]);
    v2 = a1[4];
    if (v2)
    {
LABEL_6:
      free(v2);
    }

    a1[4] = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  v5 = a1[10];
  if (v5)
  {
    CFRelease(v5);
  }

  a1[10] = 0;
  v6 = a1[9];
  if (v6)
  {
    CFRelease(v6);
  }

  a1[9] = 0;
  v7 = a1[5];
  if (v7)
  {
    CFRelease(v7);
  }

  a1[5] = 0;
  v8 = a1[6];
  if (v8)
  {
    CFRelease(v8);
  }

  a1[6] = 0;
  v9 = a1[7];
  if (v9)
  {
    CFRelease(v9);
  }

  a1[7] = 0;
  v10 = a1[8];
  if (v10)
  {
    CFRelease(v10);
  }

  a1[8] = 0;
  v11 = a1[11];
  if (v11)
  {
    CFRelease(v11);
  }

  a1[11] = 0;
  v12 = a1[12];
  if (v12)
  {
    CFRelease(v12);
  }

  a1[12] = 0;
  v13 = a1[13];
  if (v13)
  {
    CFRelease(v13);
  }

  free(a1);
}

BOOL mmcs_get_state_init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (!(a3 >> 57))
  {
    v8 = a3 << 7;
    v9 = malloc_type_malloc(a3 << 7, 0x10300402E4D67E1uLL);
    *(a1 + 32) = v9;
    if (v9)
    {
      bzero(v9, v8);
      v10 = *MEMORY[0x277CBECE8];
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, &containerArrayCallbacks);
      *(a1 + 40) = Mutable;
      if (Mutable)
      {
        v12 = CFArrayCreateMutable(v10, 0, &containerArrayCallbacks);
        *(a1 + 48) = v12;
        if (v12)
        {
          v13 = CFArrayCreateMutable(v10, 0, &containerArrayCallbacks);
          *(a1 + 56) = v13;
          if (v13)
          {
            v14 = CFArrayCreateMutable(v10, 0, &containerArrayCallbacks);
            *(a1 + 64) = v14;
            if (v14)
            {
              v15 = CFDictionaryCreateMutable(v10, 0, 0, 0);
              *(a1 + 104) = v15;
              if (v15)
              {
                keyCallBacks = *byte_2868BF068;
                v16 = MEMORY[0x277CBF150];
                *(a1 + 80) = CFDictionaryCreateMutable(v10, 0, &keyCallBacks, MEMORY[0x277CBF150]);
                v24 = *byte_2868BF098;
                *(a1 + 72) = CFDictionaryCreateMutable(v10, 0, &v24, v16);
                *(a1 + 88) = CFDictionaryCreateMutable(v10, 0, &chunkReferenceSignatureEqualityDictionaryKeyCallbacks, 0);
                *(a1 + 96) = CFSetCreateMutable(v10, 0, &chunkReferenceSignatureEqualitySetCallbacks);
                result = 1;
                goto LABEL_34;
              }

              v22 = mmcs_logging_logger_default();
              result = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
              if (!result)
              {
                goto LABEL_34;
              }

              v5 = CFStringCreateWithFormat(v10, 0, @"malloc");
              v6 = mmcs_logging_logger_default();
              if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_31;
              }

              LODWORD(keyCallBacks.version) = 138543362;
              *(&keyCallBacks.version + 4) = v5;
            }

            else
            {
              v21 = mmcs_logging_logger_default();
              result = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
              if (!result)
              {
                goto LABEL_34;
              }

              v5 = CFStringCreateWithFormat(v10, 0, @"malloc");
              v6 = mmcs_logging_logger_default();
              if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_31;
              }

              LODWORD(keyCallBacks.version) = 138543362;
              *(&keyCallBacks.version + 4) = v5;
            }
          }

          else
          {
            v20 = mmcs_logging_logger_default();
            result = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              goto LABEL_34;
            }

            v5 = CFStringCreateWithFormat(v10, 0, @"malloc");
            v6 = mmcs_logging_logger_default();
            if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_31;
            }

            LODWORD(keyCallBacks.version) = 138543362;
            *(&keyCallBacks.version + 4) = v5;
          }
        }

        else
        {
          v19 = mmcs_logging_logger_default();
          result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            goto LABEL_34;
          }

          v5 = CFStringCreateWithFormat(v10, 0, @"malloc");
          v6 = mmcs_logging_logger_default();
          if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_31;
          }

          LODWORD(keyCallBacks.version) = 138543362;
          *(&keyCallBacks.version + 4) = v5;
        }
      }

      else
      {
        v18 = mmcs_logging_logger_default();
        result = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_34;
        }

        v5 = CFStringCreateWithFormat(v10, 0, @"malloc");
        v6 = mmcs_logging_logger_default();
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }

        LODWORD(keyCallBacks.version) = 138543362;
        *(&keyCallBacks.version + 4) = v5;
      }
    }

    else
    {
      v17 = mmcs_logging_logger_default();
      result = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_34;
      }

      v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"malloc");
      v6 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      LODWORD(keyCallBacks.version) = 138543362;
      *(&keyCallBacks.version + 4) = v5;
    }

    goto LABEL_30;
  }

  v3 = mmcs_logging_logger_default();
  result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  if (!result)
  {
    goto LABEL_34;
  }

  v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Multiplication overflow detected in computing the memory size to be allocated");
  v6 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LODWORD(keyCallBacks.version) = 138543362;
    *(&keyCallBacks.version + 4) = v5;
LABEL_30:
    _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_ERROR, "%{public}@", &keyCallBacks, 0xCu);
  }

LABEL_31:
  if (v5)
  {
    CFRelease(v5);
  }

  result = 0;
LABEL_34:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mmcs_get_state_create(void *a1, uint64_t a2, unint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v6 = malloc_type_malloc(0x70uLL, 0x10200409DBB4D49uLL);
  if (!v6)
  {
    v9 = mmcs_logging_logger_default();
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_11;
    }

    v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"malloc");
    v11 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_ERROR, "%{public}@", &v13, 0xCu);
    }

    if (v10)
    {
      CFRelease(v10);
    }

LABEL_10:
    result = 0;
    goto LABEL_11;
  }

  v7 = v6;
  if (!mmcs_get_state_init(v6, a2, a3))
  {
    mmcs_get_state_dealloc(v7);
    goto LABEL_10;
  }

  *a1 = v7;
  result = 1;
LABEL_11:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mmcs_get_file_omit_containers_not_needed(uint64_t a1, char *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

  v4 = 0;
  v5 = 1;
  v6 = 1;
  do
  {
    v7 = *(a1 + 32) + v4;
    if (!*(v7 + 115) && !mmcs_item_is_derivative(*(v7 + 8)) && !mmcs_item_is_metadata_only(*(v7 + 8)))
    {
      v6 = 0;
    }

    v8 = v5++ >= *(a1 + 16);
    v4 += 128;
  }

  while (!v8 && v6 != 0);
  if (v6)
  {
LABEL_13:
    v10 = *(a1 + 48);
    v43.length = CFArrayGetCount(v10);
    v43.location = 0;
    CFArrayApplyFunction(v10, v43, mmcs_get_container_set_needed_applier, 0);
LABEL_14:
    v37 = 0;
    goto LABEL_15;
  }

  Count = CFArrayGetCount(*(a1 + 48));
  if (!Count)
  {
    goto LABEL_14;
  }

  v14 = Count;
  v37 = 0;
  v15 = 0;
  v16 = *MEMORY[0x277CBECE8];
  v35 = a2;
  v36 = Count;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 48), v15);
    container_copy_chunk_reference_set = mmcs_get_container_copy_chunk_reference_set(ValueAtIndex);
    context = 0;
    CFSetApplyFunction(container_copy_chunk_reference_set, count_bytes_applier, &context);
    v19 = mmcs_logging_logger_default();
    container_copy_simple_description = 0;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      container_copy_simple_description = mmcs_get_container_copy_simple_description(ValueAtIndex);
    }

    v21 = CFSetGetCount(container_copy_chunk_reference_set);
    XCFSetRemoveValuesFromSet(container_copy_chunk_reference_set, *(a1 + 96));
    if (v21 == CFSetGetCount(container_copy_chunk_reference_set))
    {
      v22 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = CFStringCreateWithFormat(v16, 0, @"Omitting the download of container %@ which not needed.", container_copy_simple_description);
        v24 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v41 = v23;
          _os_log_impl(&dword_2577D8000, v24, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v23)
        {
          CFRelease(v23);
        }
      }

      mmcs_get_container_set_needed(ValueAtIndex, 0);
    }

    else
    {
      v38 = 0;
      CFSetApplyFunction(container_copy_chunk_reference_set, count_bytes_applier, &v38);
      v25 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = context;
        v27 = v16;
        v28 = v21 - CFSetGetCount(container_copy_chunk_reference_set);
        v29 = context - v38;
        v30 = CFSetGetCount(container_copy_chunk_reference_set);
        v34 = v28;
        v16 = v27;
        v31 = CFStringCreateWithFormat(v27, 0, @"Container %@ has %ld chunks %llu bytes (%ld chunks %llu bytes needed, %ld chunks %llu bytes not needed).", container_copy_simple_description, v21, v26, v34, v29, v30, v38);
        v32 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v41 = v31;
          _os_log_impl(&dword_2577D8000, v32, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        a2 = v35;
        v14 = v36;
        if (v31)
        {
          CFRelease(v31);
        }
      }

      if (a2 && *a2 && (mmcs_get_req_context_force_get_chunks(*a1) || v38 > 0x7D000))
      {
        Value = CFDictionaryGetValue(*(a1 + 72), ValueAtIndex);
        CFSetApplyFunction(Value, file_skip_container_and_get_chunks, ValueAtIndex);
        mmcs_get_container_set_needed(ValueAtIndex, 0);
        v37 = 1;
      }
    }

    if (container_copy_simple_description)
    {
      CFRelease(container_copy_simple_description);
    }

    if (container_copy_chunk_reference_set)
    {
      CFRelease(container_copy_chunk_reference_set);
    }

    ++v15;
  }

  while (v14 != v15);
LABEL_15:
  if (a2)
  {
    *a2 = v37;
  }

  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

void mmcs_get_state_decrement_outstanding_chunk_references_count(CFMutableDictionaryRef *a1, const void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  value = -1;
  v5 = mmcs_chunk_reference_copy_description(a2);
  if (!CFSetContainsValue(*(*(*a1 + 38) + 104), a2))
  {
    mmcs_get_state_decrement_outstanding_chunk_references_count_cold_5();
  }

  v6 = a1 + 11;
  if (!CFDictionaryGetValueIfPresent(a1[11], a2, &value))
  {
    mmcs_get_state_decrement_outstanding_chunk_references_count_cold_4(a1 + 11, v5);
  }

  if (gMMCS_DebugLevel >= 5)
  {
    v7 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"trying to remove chunk %@ with count %ld", v5, value);
      v9 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v24 = v8;
        _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }
  }

  if (value < 2)
  {
    if (value != 1)
    {
      if (CFSetContainsValue(*(*(*a1 + 38) + 104), a2))
      {
        mmcs_get_state_decrement_outstanding_chunk_references_count_cold_1(&value, v5);
      }

      mmcs_get_state_decrement_outstanding_chunk_references_count_cold_2();
    }

    CFDictionaryRemoveValue(a1[11], a2);
    CFSetRemoveValue(a1[12], a2);
  }

  else
  {
    value = value - 1;
    if (!CFSetContainsValue(a1[12], a2))
    {
      mmcs_get_state_decrement_outstanding_chunk_references_count_cold_3();
    }

    v10 = CFSetGetValue(a1[12], a2);
    v11 = v10;
    if (gMMCS_DebugLevel >= 5)
    {
      v12 = mmcs_chunk_reference_copy_description(v10);
      if (gMMCS_DebugLevel >= 5)
      {
        v13 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"found heap chunk reference %@", v12);
          v15 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v24 = v14;
            _os_log_impl(&dword_2577D8000, v15, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v14)
          {
            CFRelease(v14);
          }
        }
      }

      if (v12)
      {
        CFRelease(v12);
      }
    }

    CFDictionaryReplaceValue(*v6, v11, value);
  }

  if (gMMCS_DebugLevel >= 5)
  {
    v16 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = *MEMORY[0x277CBECE8];
      v18 = CFAbsoluteTimeGetCurrent();
      v19 = CFStringCreateWithFormat(v17, 0, @"removing chunk from maintained structure took %.6fus", (v18 - Current) * 1000000.0);
      v20 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v24 = v19;
        _os_log_impl(&dword_2577D8000, v20, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v19)
      {
        CFRelease(v19);
      }
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t mmcs_get_state_all_outstanding_chunk_references_contains_chunk(CFSetRef *a1, const void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  if (!CFSetContainsValue(*(*(*a1 + 38) + 104), a2))
  {
    mmcs_get_state_all_outstanding_chunk_references_contains_chunk_cold_1();
  }

  v5 = CFSetContainsValue(a1[12], a2);
  if (gMMCS_DebugLevel >= 5)
  {
    v6 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *MEMORY[0x277CBECE8];
      v8 = CFAbsoluteTimeGetCurrent();
      v9 = CFStringCreateWithFormat(v7, 0, @"consulting maintained structure took %.6fus", (v8 - Current) * 1000000.0);
      v10 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v14 = v9;
        _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mmcs_get_state_process_file_list(uint64_t a1, void *a2, int a3, int a4, CFTypeRef *a5)
{
  v6 = a1;
  v353 = *MEMORY[0x277D85DE8];
  v350[0] = 0;
  v350[1] = 0;
  value = 0;
  v349 = 0;
  if (a5)
  {
    *a5 = 0;
  }

  Count = CFArrayGetCount(*(a1 + 40));
  v326 = *(v6 + 16);
  v8 = *v6;
  v9 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
  v337 = CFDictionaryCreateMutable(v9, 0, 0, 0);
  v340 = CFDictionaryCreateMutable(v9, 0, 0, 0);
  v10 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], 0);
  v11 = a2[5];
  if (v11)
  {
    for (i = 0; i < v11; ++i)
    {
      v13 = *(a2[6] + 8 * i);
      v14 = v13[12];
      if (v14)
      {
        *valuePtr = *(v14 + 32) | (*(v14 + 24) << 32);
        v15 = CFNumberCreate(v9, kCFNumberSInt64Type, valuePtr);
        if (!v15)
        {
          goto LABEL_307;
        }

        v16 = v15;
        CFDictionaryAddValue(v10, v15, v13);
        CFRelease(v16);
        v11 = a2[5];
      }
    }
  }

  theDict = v10;
  alloc = v9;
  v342 = v6;
  v338 = v8;
  if (a2[3])
  {
    v17 = 0;
    v18 = &valuePtr[8];
    while (1)
    {
      v330 = v17;
      v19 = *(a2[4] + 8 * v17);
      if (value)
      {
        C3BaseRelease(value);
      }

      value = 0;
      if (!mmcs_get_container_create(&value, v6, v19))
      {
        v232 = mmcs_logging_logger_default();
        v208 = Mutable;
        v209 = v337;
        if (os_log_type_enabled(v232, OS_LOG_TYPE_ERROR))
        {
          v233 = CFStringCreateWithFormat(v9, 0, @"mmcs_get_container_create");
          v234 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v234, OS_LOG_TYPE_ERROR))
          {
            *valuePtr = 138543362;
            *&valuePtr[4] = v233;
            _os_log_impl(&dword_2577D8000, v234, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
          }

          if (v233)
          {
            CFRelease(v233);
          }
        }

        error = mmcs_cferror_create_error(@"com.apple.mmcs", 36, @"mmcs_get_container_create failed");
LABEL_376:
        LOBYTE(v18) = 0;
        v349 = error;
        goto LABEL_377;
      }

      state.opaque[0] = 0;
      state.opaque[1] = 0;
      os_activity_scope_enter(*(value + 10), &state);
      v20 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = strlen(*(v19 + 48));
        v22 = CFStringCreateWithBytes(v9, *(v19 + 48), v21, 0x8000100u, 0);
        v23 = COERCE_DOUBLE(mmcs_container_id_info_parse_container_id(v22));
        v24 = v23;
        if (v23 == 0.0)
        {
          String = 0;
        }

        else
        {
          String = XCFAbsoluteTimeDateFormatterCreateString(v23);
        }

        v26 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = -1.0;
          if (v24 != 0.0)
          {
            v27 = CFAbsoluteTimeGetCurrent() - v24;
          }

          *valuePtr = 138543874;
          *&valuePtr[4] = v22;
          *&valuePtr[12] = 2048;
          *&valuePtr[14] = v27;
          *&valuePtr[22] = 2114;
          *&valuePtr[24] = String;
          _os_log_impl(&dword_2577D8000, v26, OS_LOG_TYPE_INFO, "Container %{public}@ upload authorized %0.4lf seconds ago at %{public}@", valuePtr, 0x20u);
        }

        if (v22)
        {
          CFRelease(v22);
        }

        v6 = v342;
        if (String)
        {
          CFRelease(String);
        }
      }

      v28 = *(v8 + 112);
      if (v28)
      {
        mmcs_container_set_http_clock_skew_metrics(value, v28);
      }

      v29 = *(v19 + 64);
      if (*(v19 + 32))
      {
        break;
      }

      if (!v29)
      {
LABEL_306:
        os_activity_scope_leave(&state);
        goto LABEL_307;
      }

      v30 = 0;
      v31 = 0;
      v32 = *(v19 + 72);
      do
      {
        if (*(*v32 + 24))
        {
          v30 = 1;
        }

        else
        {
          if (!*(*v32 + 32))
          {
            goto LABEL_306;
          }

          v31 = 1;
        }

        v32 += 8;
        --v29;
      }

      while (v29);
      if (v30 && v31)
      {
        v272 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v272, OS_LOG_TYPE_ERROR))
        {
          *valuePtr = 0;
          _os_log_impl(&dword_2577D8000, v272, OS_LOG_TYPE_ERROR, "Container contains both ford and chunks.", valuePtr, 2u);
        }

        v349 = mmcs_cferror_create_error(@"com.apple.mmcs", 6, @"Container contains both ford and chunks.");
        goto LABEL_306;
      }

      if (v30)
      {
        goto LABEL_41;
      }

      if (!v31)
      {
        mmcs_get_state_process_file_list_cold_1();
      }

      CFArrayAppendValue(*(v6 + 56), value);
      *(*(value + 11) + 176) = 2;
      v34 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *valuePtr = 0;
        _os_log_impl(&dword_2577D8000, v34, OS_LOG_TYPE_INFO, "ContainerType: MMCSGetContainerTypeFORD", valuePtr, 2u);
      }

      mmcs_get_container_set_needed(value, 0);
LABEL_47:
      CFArrayAppendValue(*(v6 + 40), value);
      v35 = *(value + 2);
      v36 = *(v19 + 24);
      http_request_options = mmcs_request_get_http_request_options(*v6);
      should_disable_vendor_tls = mmcs_request_should_disable_vendor_tls(*v6);
      if (!mmcs_http_request_create_with_host_info((v35 + 24), v36, http_request_options, should_disable_vendor_tls, &v349))
      {
        v240 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v240, OS_LOG_TYPE_ERROR))
        {
          v314 = *(*(value + 11) + 16);
          v241 = CFStringCreateWithFormat(v9, 0, @"Unable to create message for container %s");
          v242 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v242, OS_LOG_TYPE_ERROR))
          {
            *valuePtr = 138543362;
            *&valuePtr[4] = v241;
            _os_log_impl(&dword_2577D8000, v242, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
          }

          if (v241)
          {
            CFRelease(v241);
          }
        }

        goto LABEL_306;
      }

      if (mmcs_request_get_url_expiry_override(v338))
      {
        v39 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          v314 = *(*(v19 + 24) + 120);
          v40 = CFStringCreateWithFormat(v9, 0, @"overriding url expiry %llu from content server");
          v41 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            *valuePtr = 138543362;
            *&valuePtr[4] = v40;
            _os_log_impl(&dword_2577D8000, v41, OS_LOG_TYPE_DEBUG, "%{public}@", valuePtr, 0xCu);
          }

          if (v40)
          {
            CFRelease(v40);
          }
        }

        v42 = *(*(value + 2) + 24);
        url_expiry_override = mmcs_request_get_url_expiry_override(v338);
        mmcs_http_request_override_url_expiry(v42, url_expiry_override);
      }

      v44 = *(*(v19 + 24) + 128);
      if (v44)
      {
        v45 = strlen(*(v44 + 24));
        v46 = CFStringCreateWithBytes(v9, *(v44 + 24), v45, 0x8000100u, 0);
        v47 = strlen(*(v44 + 32));
        v48 = CFStringCreateWithBytes(v9, *(v44 + 32), v47, 0x8000100u, 0);
        v49 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        *(value + 4) = v49;
        CFDictionaryAddValue(v49, v46, v48);
        v50 = mmcs_logging_logger_default();
        v51 = mmcs_logging_log_header_level(v46);
        if (os_log_type_enabled(v50, v51))
        {
          *valuePtr = 138543618;
          *&valuePtr[4] = v46;
          *&valuePtr[12] = 2114;
          *&valuePtr[14] = v48;
          _os_log_impl(&dword_2577D8000, v50, v51, "AcceleratorRequestHeader (%{public}@:%{public}@)", valuePtr, 0x16u);
        }

        if (v46)
        {
          CFRelease(v46);
        }

        if (v48)
        {
          CFRelease(v48);
        }
      }

      v52 = *(v19 + 64) + *(v19 + 32);
      if (v52)
      {
        v53 = 0;
        while (1)
        {
          if (*(v19 + 32))
          {
            v54 = *(*(v19 + 40) + 8 * v53);
            goto LABEL_66;
          }

          v64 = *(*(v19 + 72) + 8 * v53);
          if (!*(v64 + 32))
          {
            v54 = *(v64 + 24);
            if (!v54)
            {
              v219 = mmcs_logging_logger_default();
              v220 = os_log_type_enabled(v219, OS_LOG_TYPE_ERROR);
              v6 = v342;
              v208 = Mutable;
              v209 = v337;
              if (v220)
              {
                v221 = CFStringCreateWithFormat(alloc, 0, @"Unknown element type.");
                v222 = mmcs_logging_logger_default();
                if (os_log_type_enabled(v222, OS_LOG_TYPE_ERROR))
                {
                  *valuePtr = 138543362;
                  *&valuePtr[4] = v221;
                  _os_log_impl(&dword_2577D8000, v222, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
                }

                if (v221)
                {
                  CFRelease(v221);
                }
              }

              goto LABEL_325;
            }

LABEL_66:
            if (v53 && ProtobufCBinaryData_Equals(v350, v54 + 24))
            {
              goto LABEL_114;
            }

            ProtobufCBinaryData_SetCopyBufferLen(v350, *(v54 + 32), *(v54 + 24));
            v55 = *(v54 + 32);
            v56 = CKChunkSchemeAndSignatureSize();
            v57 = *(v54 + 24);
            if (v56 != v57)
            {
              v196 = hextostrdup(*(v54 + 32), v57);
              v197 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v197, OS_LOG_TYPE_ERROR))
              {
                v198 = *(v54 + 32);
                v199 = CKChunkSchemeAndSignatureSize();
                v200 = CFStringCreateWithFormat(alloc, 0, @"Chunk rejected (%s): unexpected signature size. Expected: %lu, got: %lu.", v196, v199, *(v54 + 24));
                v201 = mmcs_logging_logger_default();
                if (os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
                {
                  *valuePtr = 138543362;
                  *&valuePtr[4] = v200;
                  _os_log_impl(&dword_2577D8000, v201, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
                }

                if (v200)
                {
                  CFRelease(v200);
                }
              }

              v202 = *(v54 + 32);
              CKChunkSchemeAndSignatureSize();
              v321 = *(v54 + 24);
              v349 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Chunk rejected (%s): unexpected signature size. Expected: %lu, got: %lu.", v203, v204, v205, v206, v207, v196);
              v6 = v342;
              if (v196)
              {
                free(v196);
              }

              goto LABEL_306;
            }

            if (!a3 && !mmcs_get_req_get_chunk_reference(*v342, *(v54 + 64), *(v54 + 32), 0))
            {
              v58 = hextostrdup(*(v54 + 32), *(v54 + 24));
              v59 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
              {
                LOBYTE(v314) = v58;
                v60 = CFStringCreateWithFormat(alloc, 0, @"Unknown chunk %s received");
                v61 = mmcs_logging_logger_default();
                if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                {
                  *valuePtr = 138543362;
                  *&valuePtr[4] = v60;
                  _os_log_impl(&dword_2577D8000, v61, OS_LOG_TYPE_DEFAULT, "%{public}@", valuePtr, 0xCu);
                }

                if (v60)
                {
                  CFRelease(v60);
                }
              }

              if (v58)
              {
                free(v58);
              }
            }

            buf[0] = 0;
            v345 = 0;
            if (*(v54 + 68))
            {
              v62 = *(v54 + 72);
              v63 = &v346;
            }

            else
            {
              v63 = 0;
              v62 = 0;
            }

            v346 = v62;
            if (mmcs_get_container_add_chunk_instance(value, *(v54 + 64), v63, *(v54 + 32), buf, &v345, &v349))
            {
              if (gMMCS_DebugLevel >= 4)
              {
                v69 = hextostrdup(*(v54 + 32), *(v54 + 24));
                v70 = mmcs_logging_logger_chunk();
                if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                {
                  v71 = *(v19 + 64) + *(v19 + 32);
                  v72 = *(v54 + 64);
                  v73 = "true";
                  if (!*(v54 + 68))
                  {
                    v73 = "false";
                  }

                  *valuePtr = 134219266;
                  *&valuePtr[4] = v53 + 1;
                  *&valuePtr[12] = 2048;
                  *&valuePtr[14] = v71;
                  *&valuePtr[22] = 1024;
                  *&valuePtr[24] = v72;
                  *&valuePtr[28] = 2080;
                  *&valuePtr[30] = v73;
                  *&valuePtr[38] = 2048;
                  *&valuePtr[40] = v346;
                  *&valuePtr[48] = 2082;
                  *&valuePtr[50] = v69;
                  _os_log_impl(&dword_2577D8000, v70, OS_LOG_TYPE_DEFAULT, "Chunk %lu of %zu with byteLength %u and offset %s:%llu has signature %{public}s", valuePtr, 0x3Au);
                }

                if (v69)
                {
                  free(v69);
                }
              }

              if (!v345)
              {
                *(v54 + 32) = 0;
              }

              if (buf[0])
              {
                v74 = 0;
                goto LABEL_113;
              }

              v75 = hextostrdup(*(v54 + 32), *(v54 + 24));
              v76 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
              {
                *valuePtr = 136446210;
                *&valuePtr[4] = v75;
                _os_log_impl(&dword_2577D8000, v76, OS_LOG_TYPE_ERROR, "Chunk with signature %{public}s couldn't find associated chunk reference.", valuePtr, 0xCu);
              }

              if (v75)
              {
                free(v75);
              }
            }

            goto LABEL_112;
          }

          ProtobufCBinaryData_SetCopyBufferLen(v350, 0, 0);
          if (!*(*(v64 + 32) + 24))
          {
            v210 = mmcs_logging_logger_default();
            v6 = v342;
            if (os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
            {
              *valuePtr = 0;
              _os_log_impl(&dword_2577D8000, v210, OS_LOG_TYPE_ERROR, "FORD Info must have non-zero length.", valuePtr, 2u);
            }

            v349 = mmcs_cferror_create_error(@"com.apple.mmcs", 6, @"FORD Info must have non-zero length.");
            v208 = Mutable;
            v209 = v337;
LABEL_325:
            os_activity_scope_leave(&state);
            goto LABEL_326;
          }

          v346 = v53 | (v330 << 32);
          v65 = CFNumberCreate(alloc, kCFNumberSInt64Type, &v346);
          if (!v65)
          {
            v77 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              *valuePtr = 0;
              _os_log_impl(&dword_2577D8000, v77, OS_LOG_TYPE_ERROR, "Failed to generate CFNumberRef for storageContainerIndex", valuePtr, 2u);
            }

            v78 = 36;
            v79 = @"Failed to generate CFNumberRef for storageContainerIndex";
LABEL_111:
            v349 = mmcs_cferror_create_error(@"com.apple.mmcs", v78, v79);
LABEL_112:
            v74 = 5;
            goto LABEL_113;
          }

          v66 = v65;
          v67 = CFDictionaryGetValue(theDict, v65);
          CFRelease(v66);
          if (!v67)
          {
            v80 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
            {
              *valuePtr = 0;
              _os_log_impl(&dword_2577D8000, v80, OS_LOG_TYPE_ERROR, "Failed to find fileChecksumChunkReferences for storageContainerIndex", valuePtr, 2u);
            }

            v78 = 1;
            v79 = @"Failed to find fileChecksumChunkReferences for storageContainerIndex";
            goto LABEL_111;
          }

          v68 = v67[14] ? ProtobufCBinaryData_CreateData((v67 + 16)) : 0;
          v81 = *(v67 + 4);
          v82 = *(v338 + 304);
          if (a3)
          {
            break;
          }

          v83 = *(v82 + 88);
          if (v83)
          {
            goto LABEL_120;
          }

          v94 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
          {
            cfa = CFStringCreateWithFormat(alloc, 0, @"itemsForGetChunks is NULL");
            v95 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf[0]) = 138543362;
              *(buf + 4) = cfa;
              _os_log_impl(&dword_2577D8000, v95, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (cfa)
            {
              CFRelease(cfa);
            }
          }

          v84 = 0;
          if (v68)
          {
            goto LABEL_121;
          }

LABEL_122:
          v85 = *(v64 + 32);
          if (v85[8])
          {
            v86 = v85[9];
            v87 = buf;
          }

          else
          {
            v87 = 0;
            v86 = 0;
          }

          buf[0] = v86;
          if (!mmcs_get_container_add_ford_instance(value, v85[7], v87, v84, &v349))
          {
            if (!v349)
            {
              v93 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
              {
                *valuePtr = 0;
                _os_log_impl(&dword_2577D8000, v93, OS_LOG_TYPE_ERROR, "Unspecified error performing mmcs_get_container_add_ford_instance", valuePtr, 2u);
              }

              v78 = 1;
              v79 = @"Unspecified error performing mmcs_get_container_add_ford_instance";
              goto LABEL_111;
            }

            goto LABEL_112;
          }

          if (v84)
          {
            CFDictionaryAddValue(Mutable, v84, v67);
            mmcs_get_container_set_needed(value, 1);
            v88 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
            {
              cf = mmcs_file_signature_to_hexstring(*v84);
              CStringDescription = XCFDataCreateCStringDescription(v84[6]);
              v90 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
              {
                v91 = *(*(v64 + 32) + 28);
                v92 = v84[5];
                *valuePtr = 134219010;
                *&valuePtr[4] = buf[0];
                *&valuePtr[12] = 2048;
                *&valuePtr[14] = v91;
                *&valuePtr[22] = 2048;
                *&valuePtr[24] = v92;
                *&valuePtr[32] = 2082;
                *&valuePtr[34] = cf;
                *&valuePtr[42] = 2082;
                *&valuePtr[44] = CStringDescription;
                _os_log_impl(&dword_2577D8000, v90, OS_LOG_TYPE_INFO, "FORD container instance at offset %llu with length %llu for itemId:%llu sig:%{public}s ref:%{public}s", valuePtr, 0x34u);
              }

              if (cf)
              {
                free(cf);
              }

              if (CStringDescription)
              {
                free(CStringDescription);
              }
            }
          }

          v74 = 32;
LABEL_113:
          if ((v74 | 0x20) != 0x20)
          {
            os_activity_scope_leave(&state);
            if (v74 != 5)
            {
              goto LABEL_398;
            }

LABEL_310:
            LOBYTE(v18) = 0;
            v195 = 1;
            v6 = v342;
LABEL_308:
            v208 = Mutable;
            v209 = v337;
            goto LABEL_378;
          }

LABEL_114:
          if (v52 == ++v53)
          {
            goto LABEL_146;
          }
        }

        v83 = *(v82 + 80);
LABEL_120:
        memset(&valuePtr[56], 0, 360);
        memset(&valuePtr[8], 0, 40);
        *valuePtr = v81;
        *&valuePtr[48] = v68;
        v84 = CFSetGetValue(v83, valuePtr);
        if (!v68)
        {
          goto LABEL_122;
        }

LABEL_121:
        CFRelease(v68);
        goto LABEL_122;
      }

LABEL_146:
      os_activity_scope_leave(&state);
      v17 = v330 + 1;
      v9 = alloc;
      v6 = v342;
      v8 = v338;
      if ((v330 + 1) >= a2[3])
      {
        goto LABEL_147;
      }
    }

    if (v29)
    {
      goto LABEL_306;
    }

LABEL_41:
    CFArrayAppendValue(*(v6 + 48), value);
    *(*(value + 11) + 176) = 1;
    v33 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *valuePtr = 0;
      _os_log_impl(&dword_2577D8000, v33, OS_LOG_TYPE_INFO, "ContainerType: MMCSGetContainerTypeChunks", valuePtr, 2u);
    }

    goto LABEL_47;
  }

LABEL_147:
  if (theDict)
  {
    CFRelease(theDict);
  }

  v96 = *(v8 + 304);
  if (a3)
  {
    v97 = *(v96 + 80);
  }

  else
  {
    v97 = *(v96 + 88);
    if (!v97)
    {
      v211 = mmcs_logging_logger_default();
      v208 = Mutable;
      v209 = v337;
      if (os_log_type_enabled(v211, OS_LOG_TYPE_ERROR))
      {
        v217 = CFStringCreateWithFormat(v9, 0, @"itemsForGetChunks is NULL");
        v218 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v218, OS_LOG_TYPE_ERROR))
        {
          *valuePtr = 138543362;
          *&valuePtr[4] = v217;
          _os_log_impl(&dword_2577D8000, v218, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
        }

        if (v217)
        {
          CFRelease(v217);
        }
      }

      v195 = 1;
      LOBYTE(v18) = 0;
      v349 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"itemsForGetChunks is NULL.", v212, v213, v214, v215, v216, v314);
      goto LABEL_378;
    }
  }

  if (!a2[5])
  {
LABEL_220:
    if (a3)
    {
      v344 = CFArrayGetCount(*(v6 + 40));
      if (Count < v344)
      {
        v139 = Count;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v342 + 40), v139);
          v140 = ValueAtIndex[11];
          if (*(v140 + 48) >= 1)
          {
            break;
          }

LABEL_291:
          if (++v139 == v344)
          {
            goto LABEL_292;
          }
        }

        v141 = 0;
        v142 = 56;
        while (1)
        {
          v143 = *(v140 + 120);
          if (!mmcs_chunk_instance_is_ford((v143 + v142 - 56)))
          {
            if (!mmcs_chunk_instance_is_chunk_reference((v143 + v142 - 56)))
            {
              mmcs_get_state_process_file_list_cold_6();
            }

            first_chunk_instance = mmcs_chunk_reference_get_first_chunk_instance(*(v143 + v142));
            if (!first_chunk_instance || (v145 = first_chunk_instance, !mmcs_chunk_instance_is_chunk_reference((v143 + v142 - 56))))
            {
              v161 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v161, OS_LOG_TYPE_DEBUG))
              {
                *valuePtr = 0;
                _os_log_impl(&dword_2577D8000, v161, OS_LOG_TYPE_DEBUG, "Container chunk instance not referenced by file.", valuePtr, 2u);
              }

              goto LABEL_226;
            }

            v146 = CFDictionaryGetValue(v340, v145);
            if (!v146)
            {
              mmcs_get_state_process_file_list_cold_5();
            }

            v147 = v146;
            v148 = *(v143 + v142);
            v149 = *(v148 + 16);
            if (v146[10])
            {
              if (v149)
              {
                goto LABEL_248;
              }

              v150 = CFDictionaryGetValue(v337, v145);
              if (!v150)
              {
                v273 = mmcs_chunk_signature_to_hexstring(*(*(v143 + v142) + 8));
                v274 = mmcs_logging_logger_default();
                v6 = v342;
                if (os_log_type_enabled(v274, OS_LOG_TYPE_ERROR))
                {
                  v280 = *(v140 + 48);
                  v281 = CFStringCreateWithFormat(alloc, 0, @"File state not found for chunk with signature %s in container %s at index %llu of %llu. Chunk reference %p", v273, *(ValueAtIndex[11] + 16), v141, v280, *(v143 + v142));
                  v282 = mmcs_logging_logger_default();
                  if (os_log_type_enabled(v282, OS_LOG_TYPE_ERROR))
                  {
                    *valuePtr = 138543362;
                    *&valuePtr[4] = v281;
                    _os_log_impl(&dword_2577D8000, v282, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
                  }

                  if (v281)
                  {
                    CFRelease(v281);
                  }
                }

                v322 = *(v140 + 48);
                v323 = *(v143 + v142);
                v320 = *(ValueAtIndex[11] + 16);
                v349 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"File state not found for chunk with signature %s in container %s at index %llu of %llu. Chunk reference %p", v275, v276, v277, v278, v279, v273);
                if (v273)
                {
                  free(v273);
                }

                goto LABEL_307;
              }

              v151 = v150;
              v152 = CFDataCreate(alloc, *(v147 + 7), *(v147 + 6));
              if (v152)
              {
                v153 = v151[1];
                keya = v152;
                if (*(v153 + 48))
                {
                  v154 = *(v153 + 56);
                  if (!v154)
                  {
                    mmcs_get_state_process_file_list_cold_3();
                  }

                  state.opaque[0] = 0;
                  Copy = mmcs_chunk_key_copy_wraptured_scheme_and_key(v152, v154, 0, &state);
                  if (Copy)
                  {
                    if (gMMCS_DebugLevel >= 4)
                    {
                      v156 = mmcs_item_copy_description(v153);
                      v157 = mmcs_logging_logger_default();
                      if (os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG))
                      {
                        LOBYTE(v314) = v156;
                        v315 = *(v153 + 48);
                        v158 = CFStringCreateWithFormat(alloc, 0, @"Unwrapped using item %@ ref %@");
                        v159 = mmcs_logging_logger_default();
                        if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
                        {
                          *valuePtr = 138543362;
                          *&valuePtr[4] = v158;
                          _os_log_impl(&dword_2577D8000, v159, OS_LOG_TYPE_DEBUG, "%{public}@", valuePtr, 0xCu);
                        }

                        if (v158)
                        {
                          v160 = v158;
                          goto LABEL_270;
                        }
                      }

                      goto LABEL_271;
                    }
                  }

                  else if (gMMCS_DebugLevel >= 4)
                  {
                    v156 = mmcs_item_copy_description(v153);
                    v177 = mmcs_logging_logger_default();
                    if (os_log_type_enabled(v177, OS_LOG_TYPE_DEBUG))
                    {
                      v316 = *(v153 + 48);
                      LOBYTE(v314) = v156;
                      v178 = CFStringCreateWithFormat(alloc, 0, @"Unable to unwrap using item %@ ref %@: %@");
                      v179 = mmcs_logging_logger_default();
                      if (os_log_type_enabled(v179, OS_LOG_TYPE_DEBUG))
                      {
                        *valuePtr = 138543362;
                        *&valuePtr[4] = v178;
                        _os_log_impl(&dword_2577D8000, v179, OS_LOG_TYPE_DEBUG, "%{public}@", valuePtr, 0xCu);
                      }

                      if (v178)
                      {
                        v160 = v178;
LABEL_270:
                        CFRelease(v160);
                      }
                    }

LABEL_271:
                    if (v156)
                    {
                      CFRelease(v156);
                    }
                  }

                  if (state.opaque[0])
                  {
                    CFRelease(state.opaque[0]);
                  }
                }

                else
                {
                  Copy = CFDataCreateCopy(alloc, v152);
                }

                if (Copy)
                {
                  Length = CFDataGetLength(Copy);
                  if (Length < 1 || (v181 = Length, v182 = malloc_type_malloc(Length, 0x100004077774924uLL), v354.location = 0, v354.length = v181, CFDataGetBytes(Copy, v354, v182), *v182 < 0) || CKChunkSchemeAndEncryptionKeySize() != v181)
                  {
                    v251 = mmcs_key_description_create_with_cfdata(Copy, 1);
                    CFRelease(Copy);
                    v349 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"wrapped encryption key %@ once unwrapped is not valid: %@", v252, v253, v254, v255, v256, keya);
                    v6 = v342;
                    if (v251)
                    {
                      CFRelease(v251);
                    }

                    goto LABEL_307;
                  }

                  CFRelease(Copy);
                  v183 = *(v143 + v142);
                  *(v183 + 16) = v182;
                  if (gMMCS_DebugLevel >= 4)
                  {
                    v184 = mmcs_chunk_signature_to_hexstring(*(v183 + 8));
                    v185 = *(*(v143 + v142) + 16);
                    v186 = CKChunkSchemeAndEncryptionKeySize();
                    v187 = mmcs_key_description_create_with_bytes(v185, v186, 1);
                    v188 = mmcs_logging_logger_default();
                    if (os_log_type_enabled(v188, OS_LOG_TYPE_DEBUG))
                    {
                      LOBYTE(v314) = v187;
                      v189 = CFStringCreateWithFormat(alloc, 0, @"Unwrapped key %@ for chunk %s");
                      v190 = mmcs_logging_logger_default();
                      if (os_log_type_enabled(v190, OS_LOG_TYPE_DEBUG))
                      {
                        *valuePtr = 138543362;
                        *&valuePtr[4] = v189;
                        _os_log_impl(&dword_2577D8000, v190, OS_LOG_TYPE_DEBUG, "%{public}@", valuePtr, 0xCu);
                      }

                      if (v189)
                      {
                        CFRelease(v189);
                      }
                    }

                    if (v184)
                    {
                      free(v184);
                    }

                    if (v187)
                    {
                      CFRelease(v187);
                    }
                  }
                }

                v169 = keya;
LABEL_290:
                CFRelease(v169);
              }
            }

            else
            {
              if (v149)
              {
LABEL_248:
                if (gMMCS_DebugLevel < 4)
                {
                  goto LABEL_226;
                }

                v162 = mmcs_chunk_signature_to_hexstring(*(v148 + 8));
                v163 = *(*(v143 + v142) + 16);
                v164 = CKChunkSchemeAndEncryptionKeySize();
                v165 = mmcs_key_description_create_with_bytes(v163, v164, 1);
                v166 = mmcs_logging_logger_default();
                if (os_log_type_enabled(v166, OS_LOG_TYPE_DEBUG))
                {
                  LOBYTE(v314) = v165;
                  v167 = CFStringCreateWithFormat(alloc, 0, @"Re-using existing key %@ for chunk %s");
                  v168 = mmcs_logging_logger_default();
                  if (os_log_type_enabled(v168, OS_LOG_TYPE_DEBUG))
                  {
                    *valuePtr = 138543362;
                    *&valuePtr[4] = v167;
                    _os_log_impl(&dword_2577D8000, v168, OS_LOG_TYPE_DEBUG, "%{public}@", valuePtr, 0xCu);
                  }

                  if (v167)
                  {
                    CFRelease(v167);
                  }
                }

                if (v162)
                {
                  free(v162);
                }

                if (!v165)
                {
                  goto LABEL_226;
                }

                v169 = v165;
                goto LABEL_290;
              }

              if (**(v148 + 8) < 0)
              {
                v170 = CFDictionaryGetValue(v337, v145);
                if (!v170)
                {
                  mmcs_get_state_process_file_list_cold_4();
                }

                v171 = CFDictionaryGetValue(Mutable, v170[1]);
                if (!v171 || !v171[12])
                {
                  v349 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Encrypted chunk is not referenced by FORD or chunk encryption keys.", v172, v173, v174, v175, v176, v314);
                  v6 = v342;
                  goto LABEL_307;
                }
              }
            }
          }

LABEL_226:
          ++v141;
          v142 += 104;
          if (v141 >= *(v140 + 48))
          {
            goto LABEL_291;
          }
        }
      }

LABEL_292:
      v6 = v342;
      v191 = *(v342 + 16);
      v192 = v191 - v326;
      if (v191 > v326)
      {
        v193 = v326 << 7;
        while (1)
        {
          v194 = (*(v342 + 32) + v193);
          if (!*(v194[1] + 104))
          {
            mmcs_get_state_initialize_duplicate_file_states(v342, v194, &v349);
            if (v349)
            {
              break;
            }
          }

          v193 += 128;
          if (!--v192)
          {
            goto LABEL_297;
          }
        }

LABEL_307:
        LOBYTE(v18) = 0;
        v195 = 1;
        goto LABEL_308;
      }

LABEL_297:
      if (!mmcs_get_state_setup_derivative_files_and_containers(v342, &v349))
      {
        goto LABEL_307;
      }
    }

    v195 = 0;
    LOBYTE(v18) = 1;
    goto LABEL_308;
  }

  v98 = 0;
  if (v337)
  {
    v99 = v340 == 0;
  }

  else
  {
    v99 = 1;
  }

  v100 = v99;
  theDicta = v100;
  v329 = v97;
  while (1)
  {
    v101 = *(a2[6] + 8 * v98);
    if (*(v101 + 24) != 21)
    {
      v248 = mmcs_logging_logger_default();
      v208 = Mutable;
      v209 = v337;
      if (os_log_type_enabled(v248, OS_LOG_TYPE_ERROR))
      {
        v249 = CFStringCreateWithFormat(alloc, 0, @"Bad length for file checksum length");
        v250 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v250, OS_LOG_TYPE_ERROR))
        {
          *valuePtr = 138543362;
          *&valuePtr[4] = v249;
          _os_log_impl(&dword_2577D8000, v250, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
        }

        if (v249)
        {
          CFRelease(v249);
        }
      }

      LOBYTE(v314) = 21;
      v318 = *(v101 + 24);
      v231 = @"Bad length for file checksum, expected size: %d, got: %lu.";
      goto LABEL_374;
    }

    if (*(v101 + 56))
    {
      if (*(v101 + 64) == 21)
      {
        Data = ProtobufCBinaryData_CreateData((v101 + 64));
        goto LABEL_165;
      }

      v257 = mmcs_logging_logger_default();
      v208 = Mutable;
      v209 = v337;
      if (os_log_type_enabled(v257, OS_LOG_TYPE_ERROR))
      {
        v258 = CFStringCreateWithFormat(alloc, 0, @"Bad length for reference signature length");
        v259 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v259, OS_LOG_TYPE_ERROR))
        {
          *valuePtr = 138543362;
          *&valuePtr[4] = v258;
          _os_log_impl(&dword_2577D8000, v259, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
        }

        if (v258)
        {
          CFRelease(v258);
        }
      }

      LOBYTE(v314) = 21;
      v319 = *(v101 + 64);
      v231 = @"Bad length for reference signature, expected size: %d, got: %lu.";
LABEL_374:
      v260 = 6;
      goto LABEL_375;
    }

    Data = 0;
LABEL_165:
    memset(&valuePtr[48], 0, 368);
    memset(valuePtr, 0, 48);
    *valuePtr = *(v101 + 32);
    *&valuePtr[48] = Data;
    key = CFSetGetValue(v97, valuePtr);
    if (Data)
    {
      CFRelease(Data);
    }

    v103 = key;
    if (!key)
    {
      v113 = hextostrdup(*(v101 + 32), *(v101 + 24));
      if (*(v101 + 56))
      {
        v114 = hextostrdup(*(v101 + 72), *(v101 + 64));
      }

      else
      {
        v114 = 0;
      }

      v121 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 136315394;
        *&valuePtr[4] = v113;
        *&valuePtr[12] = 2080;
        *&valuePtr[14] = v114;
        _os_log_impl(&dword_2577D8000, v121, OS_LOG_TYPE_DEFAULT, "could not find item for signature %s reference %s", valuePtr, 0x16u);
      }

      if (v113)
      {
        free(v113);
      }

      if (v114)
      {
        free(v114);
      }

      goto LABEL_219;
    }

    v104 = *(v101 + 80);
    if (v104)
    {
      v105 = strlen(*(v101 + 80));
      v106 = CFStringCreateWithBytes(alloc, v104, v105, 0x8000100u, 0);
      if (v106)
      {
        v107 = v106;
        mmcs_item_set_MIME_type(key, v106);
        CFRelease(v107);
      }
    }

    v331 = v98;
    if (!a3)
    {
      break;
    }

    if (mmcs_item_set_chunk_instance_capacity(key, *(v101 + 40)))
    {
      v108 = *(v6 + 16);
      if (v108 >= *(v6 + 8))
      {
        v286 = mmcs_logging_logger_default();
        v208 = Mutable;
        v209 = v337;
        if (os_log_type_enabled(v286, OS_LOG_TYPE_ERROR))
        {
          v292 = CFStringCreateWithFormat(alloc, 0, @"mmcs_get_file overflow");
          v293 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v293, OS_LOG_TYPE_ERROR))
          {
            *valuePtr = 138543362;
            *&valuePtr[4] = v292;
            _os_log_impl(&dword_2577D8000, v293, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
          }

          if (v292)
          {
            CFRelease(v292);
          }
        }

        v195 = 1;
        LOBYTE(v18) = 0;
        v349 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"mmcs_get_file overflow", v287, v288, v289, v290, v291, v314);
        goto LABEL_378;
      }

      v109 = v8;
      v110 = *(v6 + 32);
      req_context_use_registry = mmcs_get_req_context_use_registry(v109);
      if ((**key & 0x7F) == 4)
      {
        should_validate_file_content_for_v2 = mmcs_get_req_context_should_validate_file_content_for_v2(v109);
      }

      else
      {
        should_validate_file_content_for_v2 = mmcs_get_req_context_should_validate_file_content_for_v1(v109);
      }

      v122 = should_validate_file_content_for_v2;
      v119 = (v110 + (v108 << 7));
      if (mmcs_item_is_derivative(key))
      {
        v123 = 0;
      }

      else
      {
        v123 = req_context_use_registry;
      }

      if (!mmcs_get_file_init(v119, v6, key, v123, v122))
      {
        v294 = mmcs_logging_logger_default();
        v208 = Mutable;
        v209 = v337;
        if (os_log_type_enabled(v294, OS_LOG_TYPE_DEBUG))
        {
          v284 = CFStringCreateWithFormat(alloc, 0, @"mmcs_get_file_init");
          v285 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v285, OS_LOG_TYPE_DEBUG))
          {
            *valuePtr = 138543362;
            *&valuePtr[4] = v284;
LABEL_422:
            _os_log_impl(&dword_2577D8000, v285, OS_LOG_TYPE_DEBUG, "%{public}@", valuePtr, 0xCu);
          }

          goto LABEL_423;
        }

        goto LABEL_425;
      }

      CFDictionarySetValue(*(v6 + 104), key, v119);
      v120 = 0;
      goto LABEL_202;
    }

    if (!a4 || !key[34])
    {
      v283 = mmcs_logging_logger_default();
      v208 = Mutable;
      v209 = v337;
      if (os_log_type_enabled(v283, OS_LOG_TYPE_DEBUG))
      {
        v284 = CFStringCreateWithFormat(alloc, 0, @"could not initialize chunk instance capacity");
        v285 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v285, OS_LOG_TYPE_DEBUG))
        {
          *valuePtr = 138543362;
          *&valuePtr[4] = v284;
          goto LABEL_422;
        }

LABEL_423:
        if (v284)
        {
          CFRelease(v284);
        }
      }

LABEL_425:
      v231 = @"mmcs_get_file_init";
      v260 = 37;
LABEL_375:
      error = mmcs_cferror_create_with_format(@"com.apple.mmcs", v260, v231, v226, v227, v228, v229, v230, v314);
      goto LABEL_376;
    }

    v116 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
    {
      v117 = CFStringCreateWithFormat(alloc, 0, @"could not initialize chunk instance capacity because it already was");
      v118 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
      {
        *valuePtr = 138543362;
        *&valuePtr[4] = v117;
        _os_log_impl(&dword_2577D8000, v118, OS_LOG_TYPE_DEBUG, "%{public}@", valuePtr, 0xCu);
      }

      v103 = key;
      if (v117)
      {
        CFRelease(v117);
      }
    }

    v115 = CFDictionaryGetValue(*(v6 + 104), v103);
    if (!v115)
    {
      v295 = mmcs_item_copy_description(key);
      v306 = mmcs_logging_logger_default();
      v208 = Mutable;
      v209 = v337;
      if (os_log_type_enabled(v306, OS_LOG_TYPE_ERROR))
      {
        v312 = CFStringCreateWithFormat(alloc, 0, @"B unable to find file state for item %@", v295);
        v313 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v313, OS_LOG_TYPE_ERROR))
        {
          *valuePtr = 138543362;
          *&valuePtr[4] = v312;
          _os_log_impl(&dword_2577D8000, v313, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
        }

        if (v312)
        {
          CFRelease(v312);
        }
      }

      v305 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"B unable to find file state for item %@", v307, v308, v309, v310, v311, v295);
      goto LABEL_438;
    }

LABEL_188:
    v119 = v115;
    v120 = 1;
LABEL_202:
    if (*(v101 + 40))
    {
      v124 = 0;
      while (1)
      {
        v125 = *(*(v101 + 48) + 8 * v124);
        v126 = *(v125 + 24);
        if (v126 >= CFArrayGetCount(*(v6 + 40)))
        {
          break;
        }

        v127 = CFArrayGetValueAtIndex(*(v6 + 40), *(v125 + 24) + Count);
        v128 = v127[11];
        v129 = *(v125 + 32);
        if (v129 >= v128[7])
        {
          v236 = mmcs_logging_logger_default();
          v6 = v342;
          v208 = Mutable;
          v209 = v337;
          if (os_log_type_enabled(v236, OS_LOG_TYPE_DEBUG))
          {
            v237 = CFStringCreateWithFormat(alloc, 0, @"chunk index out of range");
            v238 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v238, OS_LOG_TYPE_DEBUG))
            {
              *valuePtr = 138543362;
              *&valuePtr[4] = v237;
              _os_log_impl(&dword_2577D8000, v238, OS_LOG_TYPE_DEBUG, "%{public}@", valuePtr, 0xCu);
            }

            if (v237)
            {
              CFRelease(v237);
            }
          }

          v239 = *(v125 + 32);
          LOBYTE(v314) = v239;
          v317 = v128[6];
          v231 = @"chunk index %llu out of range %lu.";
          goto LABEL_374;
        }

        v130 = v127;
        v131 = v128[15];
        v132 = v131 + 104 * mmcs_get_container_container_index_for_message_index(v127, v129);
        if ((v120 & 1) == 0)
        {
          appended = mmcs_item_append_chunk_instance(key, *(v132 + 56), &v349);
          if (!appended)
          {
            goto LABEL_310;
          }

          if (theDicta)
          {
            mmcs_get_state_process_file_list_cold_2();
          }

          v134 = appended;
          CFDictionarySetValue(v337, appended, v119);
          v135 = *(v125 + 24);
          if (v135 >= a2[3])
          {
            v243 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v243, OS_LOG_TYPE_ERROR))
            {
              *valuePtr = 0;
              _os_log_impl(&dword_2577D8000, v243, OS_LOG_TYPE_ERROR, "Processing file chunk references yielded container index beyond limit.", valuePtr, 2u);
            }

            v244 = @"Processing file chunk references yielded container index beyond limit.";
            goto LABEL_359;
          }

          v136 = *(v125 + 32);
          v137 = *(a2[4] + 8 * v135);
          if (v136 >= *(v137 + 64))
          {
            v245 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v245, OS_LOG_TYPE_ERROR))
            {
              *valuePtr = 0;
              _os_log_impl(&dword_2577D8000, v245, OS_LOG_TYPE_ERROR, "Processing file chunk references yielded chunk index beyond limit.", valuePtr, 2u);
            }

            v244 = @"Processing file chunk references yielded chunk index beyond limit.";
            goto LABEL_359;
          }

          v138 = *(*(*(v137 + 72) + 8 * v136) + 24);
          if (!v138)
          {
            v246 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v246, OS_LOG_TYPE_ERROR))
            {
              *valuePtr = 0;
              _os_log_impl(&dword_2577D8000, v246, OS_LOG_TYPE_ERROR, "Processing file chunk references failed to discover chunk_info.", valuePtr, 2u);
            }

            v244 = @"Processing file chunk references failed to discover chunk_info";
LABEL_359:
            LOBYTE(v18) = 0;
            v349 = mmcs_cferror_create_error(@"com.apple.mmcs", 6, v244);
            v195 = 1;
            v6 = v342;
            v208 = Mutable;
            v209 = v337;
            v247 = v340;
            goto LABEL_379;
          }

          CFDictionarySetValue(v340, v134, v138);
        }

        if (a3)
        {
          mmcs_get_state_associate_file_and_container(v342, v119, v130);
        }

        else
        {
          *valuePtr = v342;
          *&valuePtr[8] = v130;
          mmcs_chunk_reference_apply_function_to_instances(*(v132 + 56), _associate_files_and_containers_for_items, valuePtr);
        }

        ++v124;
        v6 = v342;
        if (v124 >= *(v101 + 40))
        {
          goto LABEL_217;
        }
      }

      v223 = mmcs_logging_logger_default();
      v208 = Mutable;
      v209 = v337;
      if (os_log_type_enabled(v223, OS_LOG_TYPE_DEBUG))
      {
        v224 = CFStringCreateWithFormat(alloc, 0, @"container index out of range");
        v225 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v225, OS_LOG_TYPE_DEBUG))
        {
          *valuePtr = 138543362;
          *&valuePtr[4] = v224;
          _os_log_impl(&dword_2577D8000, v225, OS_LOG_TYPE_DEBUG, "%{public}@", valuePtr, 0xCu);
        }

        if (v224)
        {
          CFRelease(v224);
        }
      }

      v314 = *(v125 + 24);
      CFArrayGetCount(*(v6 + 40));
      v231 = @"container index %llu out of range %llu.";
      goto LABEL_374;
    }

LABEL_217:
    v97 = v329;
    v98 = v331;
    if ((v120 & 1) == 0)
    {
      ++*(v6 + 16);
    }

LABEL_219:
    ++v98;
    v8 = v338;
    if (v98 >= a2[5])
    {
      goto LABEL_220;
    }
  }

  v115 = CFDictionaryGetValue(*(v6 + 104), key);
  if (v115)
  {
    goto LABEL_188;
  }

  v295 = mmcs_item_copy_description(key);
  v296 = mmcs_logging_logger_default();
  v297 = os_log_type_enabled(v296, OS_LOG_TYPE_ERROR);
  v208 = Mutable;
  v209 = v337;
  if (v297)
  {
    v303 = CFStringCreateWithFormat(alloc, 0, @"C unable to find file state for item %@", v295);
    v304 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v304, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 138543362;
      *&valuePtr[4] = v303;
      _os_log_impl(&dword_2577D8000, v304, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
    }

    if (v303)
    {
      CFRelease(v303);
    }
  }

  v305 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"C unable to find file state for item %@", v298, v299, v300, v301, v302, v295);
LABEL_438:
  v349 = v305;
  if (v295)
  {
    CFRelease(v295);
LABEL_326:
    LOBYTE(v18) = 0;
LABEL_377:
    v195 = 1;
  }

  else
  {
    LOBYTE(v18) = 0;
    v195 = 1;
  }

LABEL_378:
  v247 = v340;
  if (v340)
  {
LABEL_379:
    CFRelease(v247);
  }

  if (v209)
  {
    CFRelease(v209);
  }

  if (v208)
  {
    CFRelease(v208);
  }

  if (value)
  {
    C3BaseRelease(value);
  }

  value = 0;
  ProtobufCBinaryData_SetCopyBufferLen(v350, 0, 0);
  if (v195)
  {
    v266 = v349;
    if (!v349)
    {
      v266 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Unspecified error in mmcs_get_state_process_file_list", v261, v262, v263, v264, v265, v314);
      v349 = v266;
    }

    if (a5)
    {
      CFRetain(v266);
      *a5 = v349;
    }

    v267 = CFArrayGetCount(*(v6 + 40));
    if (Count < v267)
    {
      v268 = v267;
      do
      {
        v269 = CFArrayGetValueAtIndex(*(v6 + 40), Count);
        if (!v269[5])
        {
          mmcs_container_set_error(v269, v349);
        }

        ++Count;
      }

      while (v268 != Count);
    }
  }

  if (v349)
  {
    CFRelease(v349);
  }

LABEL_398:
  v270 = *MEMORY[0x277D85DE8];
  return v18;
}

void mmcs_get_state_associate_file_and_container(uint64_t a1, const void *a2, void *key)
{
  Value = CFDictionaryGetValue(*(a1 + 72), key);
  if (!Value)
  {
    v8 = *byte_2868BF0C8;
    Value = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &v8);
    CFDictionarySetValue(*(a1 + 72), key, Value);
    if (Value)
    {
      CFRelease(Value);
    }
  }

  CFSetAddValue(Value, a2);
  v7 = CFDictionaryGetValue(*(a1 + 80), a2);
  if (!v7)
  {
    v8 = *byte_2868BF0F8;
    v7 = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &v8);
    CFDictionarySetValue(*(a1 + 80), a2, v7);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  CFSetAddValue(v7, key);
}

void _associate_files_and_containers_for_items(uint64_t a1, uint64_t **a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = **a2;
  if (!v3)
  {
    _associate_files_and_containers_for_items_cold_4();
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    _associate_files_and_containers_for_items_cold_3();
  }

  v5 = *(v3 + 304);
  if (!*(v5 + 88))
  {
    _associate_files_and_containers_for_items_cold_2();
  }

  v6 = *(v5 + 96);
  if (!v6)
  {
    _associate_files_and_containers_for_items_cold_1();
  }

  if (!CFSetContainsValue(v6, v4))
  {
    v11 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"this item not participating in getChunks");
      v13 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v16 = 138543362;
      v17 = v12;
      goto LABEL_16;
    }

LABEL_19:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  Value = CFDictionaryGetValue(v2[13], v4);
  if (!Value)
  {
    v14 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"expected to find a file for the item");
      v13 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v16 = 138543362;
      v17 = v12;
LABEL_16:
      _os_log_impl(&dword_2577D8000, v13, OS_LOG_TYPE_ERROR, "%{public}@", &v16, 0xCu);
LABEL_17:
      if (v12)
      {
        CFRelease(v12);
      }

      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v9 = a2[1];
  v10 = *MEMORY[0x277D85DE8];

  mmcs_get_state_associate_file_and_container(v2, Value, v9);
}

uint64_t mmcs_get_state_initialize_duplicate_file_states(uint64_t a1, void *a2, uint64_t *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = a2[1];
  Value = CFDictionaryGetValue(*(*(*a1 + 304) + 64), v5);
  if (CFArrayGetCount(Value) < 1)
  {
LABEL_14:
    result = CFArrayGetCount(*(a1 + 40));
    if (result >= 1)
    {
      for (i = 0; i < result; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), i);
        v20 = *(ValueAtIndex[11] + 184);
        if (v20)
        {
          CFRelease(v20);
          *(ValueAtIndex[11] + 184) = 0;
        }

        result = CFArrayGetCount(*(a1 + 40));
      }
    }

    goto LABEL_33;
  }

  v7 = 0;
  while (1)
  {
    v8 = CFArrayGetValueAtIndex(Value, v7);
    if (v8 == v5)
    {
      goto LABEL_13;
    }

    v9 = *(a1 + 16);
    if (v9 >= *(a1 + 8))
    {
      break;
    }

    v10 = v8;
    v11 = *(a1 + 32);
    *(a1 + 16) = v9 + 1;
    req_context_use_registry = mmcs_get_req_context_use_registry(v4);
    if ((**v10 & 0x7F) == 4)
    {
      should_validate_file_content_for_v2 = mmcs_get_req_context_should_validate_file_content_for_v2(v4);
    }

    else
    {
      should_validate_file_content_for_v2 = mmcs_get_req_context_should_validate_file_content_for_v1(v4);
    }

    v14 = should_validate_file_content_for_v2;
    v15 = (v11 + (v9 << 7));
    if (mmcs_item_is_derivative(v10))
    {
      v16 = 0;
    }

    else
    {
      v16 = req_context_use_registry;
    }

    mmcs_get_file_init(v15, *(*(v4 + 304) + 112), v10, v16, v14);
    CFDictionarySetValue(*(a1 + 104), v10, v15);
    if (!mmcs_item_copy_chunk_instances_from_item(v10, v5))
    {
      v30 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v36 = v10[5];
        v37 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"unable to copy chunk instances from item %lld to %lld", v36, v5[5]);
        v38 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v45 = v37;
          _os_log_impl(&dword_2577D8000, v38, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v37)
        {
          CFRelease(v37);
        }
      }

      v41 = v5[5];
      result = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"unable to copy chunk instances from item %lld to %lld", v31, v32, v33, v34, v35, v10[5]);
      v27 = a3;
      goto LABEL_32;
    }

    mmcs_get_state_associate_duplicate_file_and_containers_for_file(a1, v15, a2);
LABEL_13:
    if (++v7 >= CFArrayGetCount(Value))
    {
      goto LABEL_14;
    }
  }

  v21 = mmcs_logging_logger_default();
  v27 = a3;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v28 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"duplicate mmcs_get_file overflow");
    v29 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v45 = v28;
      _os_log_impl(&dword_2577D8000, v29, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v28)
    {
      CFRelease(v28);
    }
  }

  result = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"duplicate mmcs_get_file overflow", v22, v23, v24, v25, v26, v40);
LABEL_32:
  *v27 = result;
LABEL_33:
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mmcs_get_state_setup_derivative_files_and_containers(CFMutableArrayRef *a1, CFTypeRef *a2)
{
  v2 = *a1;
  cf = 0;
  if (!a1[2])
  {
    return 1;
  }

  v5 = 0;
  v6 = 0;
  v7 = *MEMORY[0x277CBECE8];
  while (1)
  {
    v8 = (a1[4] + v5);
    v9 = v8[1];
    if (mmcs_item_is_derivative(v9))
    {
      break;
    }

LABEL_13:
    ++v6;
    v5 += 128;
    if (v6 >= a1[2])
    {
      v24 = 1;
      error = cf;
      if (!cf)
      {
        return v24;
      }

      goto LABEL_25;
    }
  }

  Value = CFDictionaryGetValue(a1[10], v8);
  if (Value)
  {
    Copy = CFSetCreateCopy(v7, Value);
    if (!Copy)
    {
      mmcs_get_state_setup_derivative_files_and_containers_cold_1();
    }

    v12 = Copy;
    context[0] = a1;
    context[1] = v8;
    CFSetApplyFunction(Copy, _disassociate_chunk_container_applier, context);
    CFRelease(v12);
  }

  if (mmcs_get_req_context_use_reader_writer_callback(v2) || mmcs_get_file_init_temp_file(v8, &cf))
  {
    context[0] = 0;
    if (mmcs_get_derivative_container_create(context, v9, 1, a1))
    {
      http_request_options = mmcs_request_get_http_request_options(v2);
      if (mmcs_http_request_create_with_url((*(context[0] + 2) + 24), *(v9 + 360), http_request_options, &cf))
      {
        CFArrayAppendValue(a1[5], context[0]);
        CFArrayAppendValue(a1[8], context[0]);
        mmcs_get_state_associate_file_and_container(a1, v8, context[0]);
        if (context[0])
        {
          C3BaseRelease(context[0]);
        }

        goto LABEL_13;
      }

      error = cf;
      if (cf)
      {
        goto LABEL_23;
      }

LABEL_21:
      error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Unspecified error in mmcs_get_state_setup_derivative_files_and_containers", v19, v20, v21, v22, v23, v27);
      cf = error;
      goto LABEL_23;
    }

    error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"mmcs_get_derivative_container_create", v13, v14, v15, v16, v17, v27);
LABEL_18:
    cf = error;
    if (error)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  error = cf;
  if (!cf)
  {
    error = mmcs_cferror_create_error(@"com.apple.mmcs", 1, @"An unknown error creating temp file.");
    goto LABEL_18;
  }

LABEL_23:
  if (a2)
  {
    CFRetain(error);
    v24 = 0;
    error = cf;
    *a2 = cf;
    if (!error)
    {
      return v24;
    }

    goto LABEL_25;
  }

  v24 = 0;
  if (error)
  {
LABEL_25:
    CFRelease(error);
  }

  return v24;
}

void mmcs_get_state_associate_duplicate_file_and_containers_for_file(uint64_t a1, uint64_t a2, void *key)
{
  Value = CFDictionaryGetValue(*(a1 + 80), key);
  if (Value)
  {
    v6[0] = a1;
    v6[1] = a2;
    CFSetApplyFunction(Value, _associate_container_applier, v6);
  }
}

void _associate_container_applier(void *key, uint64_t *a2)
{
  v4 = a2[1];
  v5 = v4[1];
  if (!v5[50])
  {
LABEL_13:
    v12 = *a2;

    mmcs_get_state_associate_file_and_container(v12, v4, key);
    return;
  }

  Mutable = *(*(key + 11) + 184);
  if (!Mutable)
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &chunkReferenceSignatureEqualitySetCallbacks);
    v7 = *(key + 11);
    if (v7[6])
    {
      v8 = 0;
      v9 = 56;
      do
      {
        CFSetAddValue(Mutable, *(v7[15] + v9));
        ++v8;
        v7 = *(key + 11);
        v9 += 104;
      }

      while (v8 < v7[6]);
    }

    v7[23] = Mutable;
  }

  if (v5[19])
  {
    v10 = 0;
    for (i = 56; !CFSetContainsValue(Mutable, *(v5[34] + i)); i += 104)
    {
      if (++v10 >= v5[19])
      {
        return;
      }
    }

    v4 = a2[1];
    goto LABEL_13;
  }
}

void mmcs_get_state_process_derivative_data(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, uint64_t a7)
{
  v23 = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(*(a1 + 72), a2);
  if (Value)
  {
    *&v18 = a2;
    *(&v18 + 1) = a3;
    v19 = a4;
    v20 = a5;
    v22 = a7;
    v21 = a6;
    CFSetApplyFunction(Value, mmcs_get_state_process_derivative_container_data_for_file_state, &v18);
  }

  else
  {
    v14 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"processing container data with no file states");
      v16 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v18) = 138543362;
        *(&v18 + 4) = v15;
        _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_ERROR, "%{public}@", &v18, 0xCu);
      }

      if (v15)
      {
        CFRelease(v15);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void mmcs_get_state_process_derivative_container_data_for_file_state(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 115))
  {
    cf[3] = v2;
    cf[4] = v3;
    cf[0] = 0;
    if (!mmcs_get_file_process_derivative_buffer(a1, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40), cf))
    {
      v10 = cf[0];
      if (!cf[0])
      {
        v10 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 33, @"The item failed for an unspecified reason.", v5, v6, v7, v8, v9, v11);
        cf[0] = v10;
      }

      mmcs_get_file_completed_with_error(a1, v10);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }
  }
}

void mmcs_get_state_process_chunk_with_padding(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(*(a1 + 72), a2);
  if (Value)
  {
    *&v16 = a2;
    *(&v16 + 1) = a3;
    v17 = a4;
    v18 = a5;
    v19 = a6;
    CFSetApplyFunction(Value, mmcs_get_state_process_container_data_for_file_state, &v16);
  }

  else
  {
    v12 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"processing container data with no file states");
      v14 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v16) = 138543362;
        *(&v16 + 4) = v13;
        _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_ERROR, "%{public}@", &v16, 0xCu);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void mmcs_get_state_process_container_data_for_file_state(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 115))
  {
    cf[5] = v2;
    cf[6] = v3;
    v6 = *(a1 + 8);
    if (!mmcs_item_is_derivative(v6) && !mmcs_item_is_metadata_only(v6))
    {
      cf[0] = 0;
      if (mmcs_get_file_process_chunk_reference_with_padding(a1, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32), cf))
      {
        if (!mmcs_item_has_outstanding_chunk_references(v6))
        {
          mmcs_get_file_candidate_completed_with_success(a1);
        }
      }

      else
      {
        v12 = cf[0];
        if (!cf[0])
        {
          v12 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 33, @"The item failed for an unspecified reason.", v7, v8, v9, v10, v11, v13);
          cf[0] = v12;
        }

        mmcs_get_file_completed_with_error(a1, v12);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }
      }
    }
  }
}

void mmcs_get_state_unprocess_chunk_data(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(*(a1 + 72), a2);
  if (Value)
  {
    *&v12 = a2;
    *(&v12 + 1) = a3;
    v13 = a4;
    CFSetApplyFunction(Value, mmcs_get_state_unprocess_container_data_for_file_state, &v12);
  }

  else
  {
    v8 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"unprocessing container data with no file states");
      v10 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v12) = 138543362;
        *(&v12 + 4) = v9;
        _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_ERROR, "%{public}@", &v12, 0xCu);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void mmcs_get_state_unprocess_container_data_for_file_state(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 115) && !mmcs_item_is_derivative(*(a1 + 8)))
  {
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);

    mmcs_get_file_unprocess_chunk_reference(a1, v4, v5);
  }
}

const __CFSet *mmcs_get_state_has_files_which_still_needs_container(uint64_t a1, const void *a2)
{
  result = CFDictionaryGetValue(*(a1 + 72), a2);
  context = 0;
  if (result)
  {
    CFSetApplyFunction(result, mmcs_get_file_which_still_needs_container, &context);
    return context;
  }

  return result;
}

uint64_t mmcs_get_file_which_still_needs_container(uint64_t result, _BYTE *a2)
{
  if (*(result + 115))
  {
    v3 = 0;
  }

  else
  {
    result = mmcs_item_is_derivative(*(result + 8));
    v3 = result == 0;
  }

  *a2 |= v3;
  return result;
}

CFSetRef mmcs_get_state_copy_file_states_for_container(uint64_t a1, const void *a2)
{
  result = CFDictionaryGetValue(*(a1 + 72), a2);
  if (result)
  {
    v3 = result;
    v4 = *MEMORY[0x277CBECE8];

    return CFSetCreateCopy(v4, v3);
  }

  return result;
}

void mmcs_get_state_fail_file_state(uint64_t a1, uint64_t a2)
{
  buf[3] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 40);
  if (v4)
  {
    Domain = CFErrorGetDomain(v4);
    if (CFEqual(@"com.apple.mmcs", Domain))
    {
      if (CFErrorGetCode(*(a2 + 40)) == 16)
      {
        v6 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"get file failed, returning container error");
          v8 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf[0]) = 138543362;
            *(buf + 4) = v7;
            _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v7)
          {
            CFRelease(v7);
          }
        }

        mmcs_get_file_completed_with_error(a1, *(a2 + 40));
        goto LABEL_60;
      }
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = CFErrorGetDomain(v9);
    if (CFEqual(@"com.apple.mmcs", v10) && CFErrorGetCode(*(a2 + 56)) == 7 && (v11 = CFErrorCopyUserInfo(*(a2 + 56))) != 0)
    {
      v12 = v11;
      Value = CFDictionaryGetValue(v11, *MEMORY[0x277CBEE78]);
      if (Value && (v14 = Value, v15 = CFGetTypeID(Value), v15 == CFErrorGetTypeID()) && (v16 = CFErrorGetDomain(v14), CFEqual(@"apple.mme", v16)))
      {
        if (CFErrorGetCode(v14) == 13)
        {
          v17 = 8;
        }

        else
        {
          v17 = 23;
        }
      }

      else
      {
        v17 = 23;
      }

      CFRelease(v12);
    }

    else
    {
      v17 = 23;
    }

    v18 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"get file failed, vendor request failed.");
      v20 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0]) = 138543362;
        *(buf + 4) = v19;
        _os_log_impl(&dword_2577D8000, v20, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v19)
      {
        CFRelease(v19);
      }
    }

    *buf = 0uLL;
    v21 = *(a2 + 40);
    if (v21)
    {
      buf[0] = *(a2 + 40);
      LODWORD(v21) = 1;
    }

    buf[v21] = *(a2 + 56);
    v22 = CFArrayCreate(*MEMORY[0x277CBECE8], buf, (v21 + 1), MEMORY[0x277CBF128]);
    error_with_underlying_errors = mmcs_cferror_create_error_with_underlying_errors(@"com.apple.mmcs", v17, @"Vendor request failed", v22, 0);
    if (v22)
    {
      CFRelease(v22);
    }

LABEL_40:
    mmcs_get_file_completed_with_error(a1, error_with_underlying_errors);
    if (!error_with_underlying_errors)
    {
      goto LABEL_60;
    }

    v40 = error_with_underlying_errors;
LABEL_59:
    CFRelease(v40);
    goto LABEL_60;
  }

  v24 = *(a2 + 40);
  if (!v24)
  {
    v32 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v53 = a2;
      v38 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"get file failed: container %p has no error");
      v39 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0]) = 138543362;
        *(buf + 4) = v38;
        _os_log_impl(&dword_2577D8000, v39, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v38)
      {
        CFRelease(v38);
      }
    }

    error_with_underlying_errors = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Get failed", v33, v34, v35, v36, v37, v53);
    goto LABEL_40;
  }

  v25 = CFErrorGetDomain(*(a2 + 40));
  if (!CFEqual(@"com.apple.mmcs", v25))
  {
    goto LABEL_51;
  }

  Code = CFErrorGetCode(*(a2 + 40));
  if ((Code - 42) < 5)
  {
    error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 11, *(a2 + 40), @"FORD data malformed.", v27, v28, v29, v30, v53);
    v24 = error_with_underlying_error;
    goto LABEL_52;
  }

  if (Code == 6 && (v41 = CFErrorCopyUserInfo(*(a2 + 40))) != 0)
  {
    v42 = v41;
    error_with_underlying_error = CFDictionaryGetValue(v41, @"kMMCSErrorHTTPStatusKey");
    if (error_with_underlying_error)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(error_with_underlying_error))
      {
        buf[0] = 0;
        v44 = CFNumberGetValue(error_with_underlying_error, kCFNumberCFIndexType, buf);
        error_with_underlying_error = 0;
        if (v44 && buf[0] == 404)
        {
          error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 8, *(a2 + 40), @"Vendor request failed", v45, v46, v47, v48, v53);
          v24 = error_with_underlying_error;
        }
      }

      else
      {
        error_with_underlying_error = 0;
      }
    }

    CFRelease(v42);
  }

  else
  {
LABEL_51:
    error_with_underlying_error = 0;
  }

LABEL_52:
  v49 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    v50 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"get file failed, returning container error");
    v51 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf[0]) = 138543362;
      *(buf + 4) = v50;
      _os_log_impl(&dword_2577D8000, v51, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v50)
    {
      CFRelease(v50);
    }
  }

  mmcs_get_file_completed_with_error(a1, v24);
  if (error_with_underlying_error)
  {
    v40 = error_with_underlying_error;
    goto LABEL_59;
  }

LABEL_60:
  v52 = *MEMORY[0x277D85DE8];
}

void mmcs_get_state_fail_container(CFDictionaryRef *a1, void *a2)
{
  if (!*(*(*a1 + 38) + 41))
  {
    Value = CFDictionaryGetValue(a1[9], a2);
    if (Value)
    {
      CFSetApplyFunction(Value, mmcs_get_state_fail_file_state, a2);
    }

    *(a2[11] + 80) = 1;
  }
}

void mmcs_get_state_container_fail_deferred_files(CFArrayRef *a1)
{
  if (*(*(*a1 + 38) + 41))
  {
    Count = CFArrayGetCount(a1[5]);
    if (Count >= 1)
    {
      v3 = Count;
      v4 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1[5], v4);
        v6 = ValueAtIndex;
        v7 = *(ValueAtIndex + 16);
        if (v7 == 3)
        {
          break;
        }

        if (v7 == 2)
        {
          v8 = *(ValueAtIndex + 11);
          if ((*(ValueAtIndex + 5) || *(ValueAtIndex + 7)) && !*(v8 + 80))
          {
            Value = CFDictionaryGetValue(a1[9], ValueAtIndex);
            if (Value)
            {
              CFSetApplyFunction(Value, mmcs_get_state_fail_file_state, v6);
            }
          }

          v10 = (v8 + 80);
LABEL_18:
          *v10 = 1;
        }

        if (v3 == ++v4)
        {
          return;
        }
      }

      v11 = *(ValueAtIndex + 11);
      if ((*(ValueAtIndex + 5) || *(ValueAtIndex + 7)) && !*(v11 + 16))
      {
        v12 = CFDictionaryGetValue(a1[9], ValueAtIndex);
        if (v12)
        {
          CFSetApplyFunction(v12, mmcs_get_state_fail_file_state, v6);
        }
      }

      v10 = (v11 + 16);
      goto LABEL_18;
    }
  }
}

void mmcs_get_state_fail_deriviative_container(uint64_t a1, void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 72), a2);
  if (Value)
  {

    CFSetApplyFunction(Value, mmcs_get_state_fail_derivative_file_state, a2);
  }
}

void mmcs_get_state_fail_derivative_file_state(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 40);
  v5 = mmcs_logging_logger_default();
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"get file failed, returning container error");
      v7 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = v6;
        _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    mmcs_get_file_completed_with_error(a1, *(a2 + 40));
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v17 = a2;
      v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"get file failed: container %p has no error");
      v14 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v19 = v13;
        _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }

    v15 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Get failed", v8, v9, v10, v11, v12, v17);
    mmcs_get_file_completed_with_error(a1, v15);
    if (v15)
    {
      CFRelease(v15);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void mmcs_get_state_process_storage_container_error_list(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v39 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Malformed getComplete response body");
      v41 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v47 = v40;
        _os_log_impl(&dword_2577D8000, v41, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v40)
      {
        CFRelease(v40);
      }
    }

    goto LABEL_65;
  }

  v2 = a2;
  if (!*(a2 + 24))
  {
    goto LABEL_65;
  }

  v4 = 0;
  alloc = *MEMORY[0x277CBECE8];
  do
  {
    v5 = *(*(v2 + 32) + 8 * v4);
    v6 = v5[3];
    v7 = v5[5];
    Count = CFArrayGetCount(*(a1 + 40));
    if (Count < 1)
    {
      goto LABEL_42;
    }

    v9 = Count;
    v44 = v5;
    v10 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), v10 - 1);
      v15 = 0;
      if (!v6)
      {
        goto LABEL_10;
      }

      v16 = ValueAtIndex;
      if (LODWORD(ValueAtIndex[2].isa) == 3)
      {
        goto LABEL_10;
      }

      if (strcmp(*(ValueAtIndex[2].length + 16), v6))
      {
        goto LABEL_9;
      }

      if (!v7)
      {
        v23 = mmcs_logging_logger_default();
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_9;
        }

        v19 = CFStringCreateWithFormat(alloc, 0, @"Expected byte-range field in protobuf message");
        v24 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_28;
        }

        goto LABEL_34;
      }

      v17 = strncmp("bytes=", v7, 6uLL);
      v18 = CFHTTPMessageCopyHeaderFieldValue(*(*(v16->data + 3) + 16), @"Range");
      if (!v18)
      {
        v25 = mmcs_logging_logger_default();
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
LABEL_9:
          v15 = 0;
          goto LABEL_10;
        }

        v19 = CFStringCreateWithFormat(alloc, 0, @"Get container http message missing byte-range header");
        v24 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
LABEL_28:
          *buf = 138543362;
          v47 = v19;
          _os_log_impl(&dword_2577D8000, v24, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

LABEL_34:
        v15 = 0;
        goto LABEL_35;
      }

      v19 = v18;
      if (v17 && CFStringHasPrefix(v18, @"bytes="))
      {
        v49.length = CFStringGetLength(v19) - 6;
        v49.location = 6;
        v20 = CFStringCreateWithSubstring(alloc, v19, v49);
        CFRelease(v19);
        v19 = v20;
      }

      CStringWithCFString = createCStringWithCFString(v19);
      if (!CStringWithCFString)
      {
        v26 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v15 = CFStringCreateWithFormat(alloc, 0, @"Couldn't create string");
          v27 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v47 = v15;
            _os_log_impl(&dword_2577D8000, v27, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (!v15)
          {
            goto LABEL_35;
          }

          CFRelease(v15);
        }

        goto LABEL_34;
      }

      v22 = CStringWithCFString;
      if (!strcmp(CStringWithCFString, v7))
      {
        v15 = v16;
      }

      else
      {
        v15 = 0;
      }

      free(v22);
LABEL_35:
      if (v19)
      {
        CFRelease(v19);
      }

LABEL_10:
      if (v10 >= v9)
      {
        break;
      }

      ++v10;
    }

    while (!v15);
    v2 = a2;
    v5 = v44;
    if (v15)
    {
      v28 = v44[4];
      if (v28)
      {
        v29 = v44[3];
        if (!v29)
        {
          v29 = "(null)";
        }

        v44[5];
        error_with_error_response_and_format = mmcs_cferror_create_error_with_error_response_and_format(1, 0, 7, v28, @"The server returned a container error for container %s byte range %s", v12, v13, v14, v29);
        mmcs_container_set_complete_error(v15, error_with_error_response_and_format);
        v31 = mmcs_logging_logger_default();
        XCFPrint(v31, @"ContainerCompleteIssue", error_with_error_response_and_format);
        goto LABEL_49;
      }

      v36 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = v44[3];
        if (!v37)
        {
          v37 = "(null)";
        }

        v38 = v44[5];
        if (!v38)
        {
          v38 = "(null)";
        }

        error_with_error_response_and_format = CFStringCreateWithFormat(alloc, 0, @"no error for storage container with key %s byte range %s", v37, v38);
        v35 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
LABEL_48:
          *buf = 138543362;
          v47 = error_with_error_response_and_format;
          _os_log_impl(&dword_2577D8000, v35, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

LABEL_49:
        if (error_with_error_response_and_format)
        {
          CFRelease(error_with_error_response_and_format);
        }
      }

      goto LABEL_51;
    }

LABEL_42:
    v32 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = v5[3];
      if (!v33)
      {
        v33 = "(null)";
      }

      v34 = v5[5];
      if (!v34)
      {
        v34 = "(null)";
      }

      error_with_error_response_and_format = CFStringCreateWithFormat(alloc, 0, @"no storage container matching key %s byte range %s", v33, v34);
      v35 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      goto LABEL_49;
    }

LABEL_51:
    ++v4;
  }

  while (v4 < *(v2 + 24));
LABEL_65:
  v42 = *MEMORY[0x277D85DE8];
}

uint64_t mmcs_get_state_has_outstanding_async_transactions(CFArrayRef *a1)
{
  Count = CFArrayGetCount(a1[5]);
  if (Count < 1)
  {
    goto LABEL_6;
  }

  v3 = Count;
  v4 = 1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1[5], v4 - 1);
    result = mmcs_container_request_enqueued_or_inflight(ValueAtIndex);
    if (v4 >= v3)
    {
      break;
    }

    ++v4;
  }

  while (!result);
  if (!result)
  {
LABEL_6:

    return mmcs_get_state_has_outstanding_http_transactions(a1);
  }

  return result;
}

uint64_t mmcs_get_state_has_outstanding_http_transactions(CFArrayRef *a1)
{
  Count = CFArrayGetCount(a1[5]);
  if (Count >= 1)
  {
    v3 = Count;
    v4 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1[5], v4 - 1);
      v6 = *(ValueAtIndex[2] + 16);
      if (v6)
      {
        is_sending = mmcs_http_context_is_sending(v6);
      }

      else
      {
        is_sending = 0;
      }

      v8 = ValueAtIndex[3];
      if (v8)
      {
        v9 = *(v8 + 16);
        if (v9)
        {
          LODWORD(v8) = mmcs_http_context_is_sending(v9);
        }

        else
        {
          LODWORD(v8) = 0;
        }
      }

      v10 = v8 | is_sending;
      if (v4 >= v3)
      {
        break;
      }

      ++v4;
    }

    while (!v10);
    if (v10)
    {
      return 1;
    }
  }

  result = *(*(*a1 + 38) + 136);
  if (result)
  {
    return mmcs_http_context_is_sending(result);
  }

  return result;
}

void file_skip_container_and_get_chunks(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 88);
  Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &chunkReferenceSignatureEqualitySetCallbacks);
  if (*(v3 + 48))
  {
    v5 = 0;
    v6 = 56;
    do
    {
      v7 = *(v3 + 120);
      if (!mmcs_chunk_instance_is_chunk_reference((v7 + v6 - 56)))
      {
        file_skip_container_and_get_chunks_cold_1();
      }

      if (CFSetContainsValue(*(*(a1 + 8) + 280), *(v7 + v6)))
      {
        CFSetSetValue(Mutable, *(v7 + v6));
      }

      ++v5;
      v6 += 104;
    }

    while (v5 < *(v3 + 48));
  }

  if (CFSetGetCount(Mutable) >= 1)
  {
    mmcs_get_req_add_item_for_get_chunks(**a1, *(a1 + 8));
    v8 = *(a1 + 8);
    if (!*(v8 + 288))
    {
      mmcs_item_set_get_chunk_references(v8, Mutable);
      if (!Mutable)
      {
        return;
      }

      goto LABEL_11;
    }

    mmcs_item_add_get_chunk_references(v8, Mutable);
  }

  if (!Mutable)
  {
    return;
  }

LABEL_11:

  CFRelease(Mutable);
}

void _disassociate_chunk_container_applier(void *key, void *a2)
{
  if (key && *(key + 16) == 2 && *(*(key + 11) + 176) == 1)
  {
    v4 = *a2;
    v3 = a2[1];
    Value = CFDictionaryGetValue(*(*a2 + 72), key);
    if (Value)
    {
      v6 = Value;
      if (!CFSetContainsValue(Value, v3))
      {
        v7 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_ERROR, "odd missing fileState", buf, 2u);
        }
      }

      CFSetRemoveValue(v6, v3);
    }

    else
    {
      v8 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_ERROR, "odd missing files", v15, 2u);
      }
    }

    v9 = CFDictionaryGetValue(*(v4 + 80), v3);
    if (v9)
    {
      v10 = v9;
      if (!CFSetContainsValue(v9, key))
      {
        v11 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *v14 = 0;
          _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_ERROR, "odd missing container", v14, 2u);
        }
      }

      CFSetRemoveValue(v10, key);
    }

    else
    {
      v12 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_ERROR, "odd missing containers", v13, 2u);
      }
    }
  }
}

void OUTLINED_FUNCTION_0_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0xCu);
}

BOOL mmcs_http_clock_skew_metrics_create(uint64_t *a1, double a2, double a3)
{
  *a1 = 0;
  v6 = C3TypeRegister(&mmcs_http_clock_skew_metricsGetTypeID_typeID);
  Instance = C3TypeCreateInstance_(0, v6, 0x10uLL);
  if (Instance)
  {
    *(Instance + 16) = a3;
    *(Instance + 24) = a2;
    *a1 = Instance;
  }

  return Instance != 0;
}

uint64_t mmcs_put_request_alloc(void *a1, int a2, uint64_t a3)
{
  *a1 = 0;
  v7 = 0;
  if (!a3)
  {
    return 0;
  }

  if (!is_mul_ok(a3 - 1, 0x1A0uLL))
  {
    return 0;
  }

  v3 = 416 * (a3 - 1);
  if (v3 >= 0xFFFFFFFFFFFFFDC8)
  {
    return 0;
  }

  if (a2)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  result = mmcs_request_allocate(&v7, v6, v3 + 568);
  if (result)
  {
    *a1 = v7;
  }

  return result;
}

CFErrorRef mmcs_no_memory_error_init(CFDictionaryRef userInfo)
{
  result = CFErrorCreate(*MEMORY[0x277CBECE8], @"com.apple.mmcs", 37, userInfo);
  sNoMemoryError = result;
  return result;
}

uint64_t mmcs_no_memory_error_create()
{
  if (!sNoMemoryError)
  {
    abort();
  }

  CFRetain(sNoMemoryError);
  return sNoMemoryError;
}

CFErrorRef mmcs_cferror_create_error_with_userInfo(const __CFString *cf2, CFIndex a2, CFDictionaryRef theDict)
{
  v3 = theDict;
  if (theDict && !CFDictionaryGetCount(theDict))
  {
    v3 = 0;
  }

  CFEqual(@"com.apple.mmcs", cf2);
  result = CFErrorCreate(*MEMORY[0x277CBECE8], cf2, a2, v3);
  if (!result)
  {

    return mmcs_no_memory_error_create();
  }

  return result;
}

CFErrorRef mmcs_cferror_create_error_with_underlying_errors(const __CFString *a1, CFIndex a2, void *a3, const __CFArray *a4, const void *a5)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v11 = Mutable;
    mmcs_user_info_add_description(Mutable, a3);
    if (a4)
    {
      if (CFArrayGetCount(a4) == 1)
      {
        v12 = *MEMORY[0x277CBEE78];
        ValueAtIndex = CFArrayGetValueAtIndex(a4, 0);
        v14 = v11;
        v15 = v12;
      }

      else
      {
        v15 = @"kMMCSErrorUnderlyingErrorArrayKey";
        v14 = v11;
        ValueAtIndex = a4;
      }

      CFDictionarySetValue(v14, v15, ValueAtIndex);
    }

    if (a5)
    {
      if (CFDictionaryGetCount(a5) >= 1)
      {
        CFDictionarySetValue(v11, @"kMMCSErrorSupplementalDictionaryKey", a5);
      }
    }

    error_with_userInfo = mmcs_cferror_create_error_with_userInfo(a1, a2, v11);
    CFRelease(v11);
    return error_with_userInfo;
  }

  else
  {

    return mmcs_cferror_create_error_with_userInfo(a1, a2, 0);
  }
}

CFErrorRef mmcs_cferror_create_error(const __CFString *a1, CFIndex a2, void *a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  mmcs_user_info_add_description(Mutable, a3);
  error_with_userInfo = mmcs_cferror_create_error_with_userInfo(a1, a2, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return error_with_userInfo;
}

CFErrorRef mmcs_cferror_create_with_format(const __CFString *a1, CFIndex a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = CFStringCreateWithFormatAndArguments(*MEMORY[0x277CBECE8], 0, a3, &a9);
  error = mmcs_cferror_create_error(a1, a2, v11);
  if (v11)
  {
    CFRelease(v11);
  }

  return error;
}

CFErrorRef mmcs_cferror_create_file_error_with_format(CFIndex a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *MEMORY[0x277CBEE48];
  v12 = strerror(a1);
  v18 = mmcs_cferror_create_with_format(v11, a1, @"%s(%d)", v13, v14, v15, v16, v17, v12);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  mmcs_user_info_add_description_with_format_and_arguments(Mutable, a2, &a9);
  if (v18)
  {
    mmcs_user_info_add_underlying_error(Mutable, v18);
    CFRelease(v18);
  }

  error_with_userInfo = mmcs_cferror_create_error_with_userInfo(@"com.apple.mmcs", 39, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return error_with_userInfo;
}

CFErrorRef mmcs_cferror_create_authorization_error_with_format(const void *a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  mmcs_user_info_add_description_with_format_and_arguments(Mutable, a2, &a9);
  if (a1)
  {
    CFDictionarySetValue(Mutable, @"kMMCSErrorAuthorizationBodyDictionaryKey", a1);
  }

  error_with_userInfo = mmcs_cferror_create_error_with_userInfo(@"com.apple.mmcs", 0, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return error_with_userInfo;
}

CFErrorRef mmcs_cferror_create_error_with_error_response_and_format(int a1, int a2, CFIndex a3, __CFError *a4, const __CFString *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  mmcs_user_info_add_description_with_format_and_arguments(Mutable, a5, &a9);
  if (a4)
  {
    cferror_with_error_response = create_cferror_with_error_response(a4);
    if (cferror_with_error_response)
    {
      v16 = cferror_with_error_response;
      Domain = CFErrorGetDomain(cferror_with_error_response);
      v18 = CFEqual(@"apple.mme", Domain);
      v19 = v18;
      if (a1 && v18 && CFErrorGetCode(v16) == 7)
      {
        a3 = 13;
      }

      else if (a2 && v19 && CFErrorGetCode(v16) == 20)
      {
        a3 = 13;
      }

      mmcs_user_info_add_underlying_error(Mutable, v16);
      CFRelease(v16);
    }
  }

  error_with_userInfo = mmcs_cferror_create_error_with_userInfo(@"com.apple.mmcs", a3, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return error_with_userInfo;
}

CFErrorRef mmcs_cferror_create_error_with_underlying_error(const __CFString *a1, CFIndex a2, void *a3, const __CFString *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  mmcs_user_info_add_description_with_format_and_arguments(Mutable, a4, &a9);
  if (a3)
  {
    mmcs_user_info_add_underlying_error(Mutable, a3);
  }

  error_with_userInfo = mmcs_cferror_create_error_with_userInfo(a1, a2, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return error_with_userInfo;
}

CFErrorRef mmcs_cferror_create_with_request_response_and_format(const __CFString *a1, CFIndex a2, __CFHTTPMessage *a3, __CFHTTPMessage *a4, void *a5, const __CFString *a6, uint64_t a7, uint64_t a8, char a9)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  mmcs_user_info_add_description_with_format_and_arguments(Mutable, a6, &a9);
  if (a3)
  {
    mmcs_user_info_add_http_message_request(Mutable, a3);
  }

  if (a4)
  {
    mmcs_user_info_add_http_message_response(Mutable, a4);
  }

  if (a5)
  {
    mmcs_user_info_add_underlying_error(Mutable, a5);
  }

  error_with_userInfo = mmcs_cferror_create_error_with_userInfo(a1, a2, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return error_with_userInfo;
}

CFErrorRef mmcs_cferror_create_item_signature_chunk_signature_error_with_format(const __CFString *a1, CFIndex a2, uint64_t a3, const UInt8 *a4, const UInt8 *a5, void *a6, const __CFString *a7, uint64_t a8, char a9)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  mmcs_user_info_add_description_with_format_and_arguments(Mutable, a7, &a9);
  mmcs_user_info_add_itemID(Mutable, a3);
  if (a4)
  {
    mmcs_user_info_add_fileSignature(Mutable, a4);
  }

  if (a5)
  {
    mmcs_user_info_add_chunkSignature(Mutable, a5);
  }

  if (a6)
  {
    mmcs_user_info_add_underlying_error(Mutable, a6);
  }

  error_with_userInfo = mmcs_cferror_create_error_with_userInfo(a1, a2, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return error_with_userInfo;
}

CFErrorRef mmcs_cferror_create_with_swiss_army_knife(const __CFString *a1, CFIndex a2, const __CFArray *a3, const void *a4, const void **a5, const void **a6, uint64_t a7, CFStringRef format, ...)
{
  va_start(va, format);
  v15 = *MEMORY[0x277CBECE8];
  v16 = CFStringCreateWithFormatAndArguments(*MEMORY[0x277CBECE8], 0, format, va);
  Mutable = CFDictionaryCreateMutable(v15, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    error_with_userInfo = mmcs_cferror_create_error_with_userInfo(a1, a2, 0);
    if (!v16)
    {
      return error_with_userInfo;
    }

    goto LABEL_15;
  }

  v18 = Mutable;
  mmcs_user_info_add_description(Mutable, v16);
  if (a3)
  {
    if (CFArrayGetCount(a3) == 1)
    {
      v19 = *MEMORY[0x277CBEE78];
      ValueAtIndex = CFArrayGetValueAtIndex(a3, 0);
      v21 = v18;
      v22 = v19;
    }

    else
    {
      v22 = @"kMMCSErrorUnderlyingErrorArrayKey";
      v21 = v18;
      ValueAtIndex = a3;
    }

    CFDictionarySetValue(v21, v22, ValueAtIndex);
  }

  if (a4 && CFDictionaryGetCount(a4) >= 1)
  {
    CFDictionarySetValue(v18, @"kMMCSErrorSupplementalDictionaryKey", a4);
  }

  if (a7 >= 1)
  {
    do
    {
      v25 = *a5++;
      v24 = v25;
      v26 = *a6++;
      CFDictionaryAddValue(v18, v24, v26);
      --a7;
    }

    while (a7);
  }

  error_with_userInfo = mmcs_cferror_create_error_with_userInfo(a1, a2, v18);
  CFRelease(v18);
  if (v16)
  {
LABEL_15:
    CFRelease(v16);
  }

  return error_with_userInfo;
}

CFErrorRef mmcs_cferror_create_retry_requested(uint64_t a1, const __CFArray *a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  keys[2] = *MEMORY[0x277D85DE8];
  v11 = *MEMORY[0x277CBECE8];
  v12 = CFStringCreateWithFormatAndArguments(*MEMORY[0x277CBECE8], 0, a3, &a9);
  if (a1)
  {
    v13 = CFStringCreateWithFormat(v11, 0, @"%u", a1);
    keys[0] = @"Retry-After";
    keys[1] = @"kMMCSErrorRetryClientInitiatedKey";
    v14 = *MEMORY[0x277CBED28];
    values[0] = v13;
    values[1] = v14;
    v15 = CFDictionaryCreate(v11, keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v16 = mmcs_cferror_create_with_swiss_army_knife(@"com.apple.mmcs", 16, a2, v15, 0, 0, 0, @"%@. Retry after %@ seconds", v12, v13, &a9);
  }

  else
  {
    keys[0] = @"kMMCSErrorRetryClientInitiatedKey";
    values[0] = *MEMORY[0x277CBED28];
    v15 = CFDictionaryCreate(v11, keys, values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v16 = mmcs_cferror_create_with_swiss_army_knife(@"com.apple.mmcs", 16, a2, v15, 0, 0, 0, @"%@. Retry immediately", v12, v20, &a9);
  }

  v17 = v16;
  if (v15)
  {
    CFRelease(v15);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

CFErrorRef mmcs_cferror_copy_transformed_cannot_find_host_error(uint64_t a1)
{
  error = mmcs_http_context_get_error(a1);
  Domain = CFErrorGetDomain(error);
  Code = CFErrorGetCode(error);
  v5 = CFEqual(@"NSURLErrorDomain", Domain);
  retry_requested = 0;
  if (v5 && Code == -1003)
  {
    v7 = XCFArrayCreateWithObject(error);
    v8 = mmcs_http_context_copy_request_url(a1);
    if (!v8)
    {
      retry_requested = mmcs_cferror_create_retry_requested(60, v7, @"Unable to find host %@", v9, v10, v11, v12, v13, 0);
      if (!v7)
      {
        return retry_requested;
      }

      goto LABEL_7;
    }

    v14 = v8;
    v15 = CFURLCopyHostName(v8);
    retry_requested = mmcs_cferror_create_retry_requested(60, v7, @"Unable to find host %@", v16, v17, v18, v19, v20, v15);
    CFRelease(v14);
    if (v15)
    {
      CFRelease(v15);
    }

    if (v7)
    {
LABEL_7:
      CFRelease(v7);
    }
  }

  return retry_requested;
}

CFErrorRef mmcs_cferror_create_file_error_wrapping_error_to_release(__CFError *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = a1;
    v10 = mmcs_cferror_copy_short_description(a1);
    error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 39, v9, @"%@%@", v11, v12, v13, v14, a2);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    v9 = @"The reason was not specified";
    error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 39, 0, @"%@%@", a5, a6, a7, a8, a2);
  }

  CFRelease(v9);
  return error_with_underlying_error;
}

double mmcs_perform_timer_get_next_fire_date(uint64_t a1)
{
  v1 = _performTimerCallbacks[4 * *(a1 + 16)];
  if (!v1)
  {
    return -1.0;
  }

  v1();
  return result;
}

uint64_t mmcs_read_stream_pool_parameters_make_pool@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  a2[2] = 0xBFF0000000000000;
  a2[3] = 0;
  return result;
}

uint64_t mmcs_read_stream_pool_parameters_make_pool_timeout_max@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *(a3 + 24) = 0;
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = a4;
  *(a3 + 24) = a2;
  return result;
}

__CFDictionary *mmcs_network_request_options_for_options(const __CFDictionary *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(a1, @"kMMCSRequestOptionStreamOptions");
  if (!Value)
  {
    goto LABEL_53;
  }

  v2 = Value;
  v3 = *MEMORY[0x277CBECE8];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, Value);
  v5 = *MEMORY[0x277CBADD8];
  if (CFDictionaryGetValue(v2, *MEMORY[0x277CBADD8]))
  {
    v6 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = CFStringCreateWithFormat(v3, 0, @"Stream option kCFStreamPropertyDataContextOnDemand ignored.");
      v8 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v31 = v7;
        _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }

    CFDictionaryRemoveValue(MutableCopy, v5);
  }

  v9 = *MEMORY[0x277CBADA8];
  v10 = CFDictionaryGetValue(v2, *MEMORY[0x277CBADA8]);
  if (v10)
  {
    CFDictionarySetValue(MutableCopy, @"kMMCSRequestOptionBoundInterfaceIdentifier", v10);
    CFDictionaryRemoveValue(MutableCopy, v9);
  }

  v11 = *MEMORY[0x277CBAE40];
  cfBOOLean_from_cfdictionary_object_for_key = mmcs_get_cfBOOLean_from_cfdictionary_object_for_key(v2, *MEMORY[0x277CBAE40], 0);
  v13 = MEMORY[0x277CBED10];
  v14 = MEMORY[0x277CBED28];
  if (cfBOOLean_from_cfdictionary_object_for_key)
  {
    if (CFBooleanGetValue(cfBOOLean_from_cfdictionary_object_for_key))
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    CFDictionarySetValue(MutableCopy, @"kMMCSRequestOptionAllowsCellularAccess", *v15);
    CFDictionaryRemoveValue(MutableCopy, v11);
  }

  v16 = mmcs_get_cfBOOLean_from_cfdictionary_object_for_key(v2, @"kMMCSRequestOptionUseNWLoaderOverride", 0);
  if (v16)
  {
    if (CFBooleanGetValue(v16))
    {
      v17 = v13;
    }

    else
    {
      v17 = v14;
    }

    CFDictionarySetValue(MutableCopy, @"kMMCSRequestOptionUseNWLoaderOverride", *v17);
  }

  v18 = *MEMORY[0x277CBAD50];
  v19 = CFDictionaryGetValue(v2, *MEMORY[0x277CBAD50]);
  if (!v19)
  {
    goto LABEL_50;
  }

  v20 = v19;
  v21 = CFGetTypeID(v19);
  if (v21 == CFStringGetTypeID())
  {
    if (CFEqual(v20, *MEMORY[0x277CBAD90]))
    {
      v22 = 2;
LABEL_47:
      *buf = v22;
      v26 = CFNumberCreate(v3, kCFNumberSInt32Type, buf);
      if (!v26)
      {
        mmcs_network_request_options_for_options_cold_1();
      }

      CFDictionarySetValue(MutableCopy, @"kMMCSRequestOptionNetworkServiceType", v26);
      goto LABEL_49;
    }

    if (CFEqual(v20, *MEMORY[0x277CBAD60]))
    {
      v22 = 3;
      goto LABEL_47;
    }

    if (CFEqual(v20, *MEMORY[0x277CBAD98]))
    {
      v22 = 4;
      goto LABEL_47;
    }

    if (CFEqual(v20, *MEMORY[0x277CBAD68]))
    {
      v22 = 5;
      goto LABEL_47;
    }

    if (CFEqual(v20, *MEMORY[0x277CBAD88]))
    {
      v22 = 6;
      goto LABEL_47;
    }

    if (CFEqual(v20, *MEMORY[0x277CBAD78]))
    {
      v22 = 7;
      goto LABEL_47;
    }

    if (CFEqual(v20, *MEMORY[0x277CBAD58]))
    {
      v22 = 8;
      goto LABEL_47;
    }

    if (CFEqual(v20, *MEMORY[0x277CBAD80]))
    {
      v22 = 9;
      goto LABEL_47;
    }

    if (CFEqual(v20, *MEMORY[0x277CBAD70]))
    {
      v22 = 10;
      goto LABEL_47;
    }

    v29 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v24 = CFStringCreateWithFormat(v3, 0, @"Stream option kCFStreamNetworkServiceType ignored. Unknown type %@", v20);
      v25 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
LABEL_29:
        if (v24)
        {
          CFRelease(v24);
        }

        goto LABEL_49;
      }

      *buf = 138543362;
      v31 = v24;
LABEL_28:
      _os_log_impl(&dword_2577D8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      goto LABEL_29;
    }
  }

  else
  {
    v23 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = CFStringCreateWithFormat(v3, 0, @"Stream option kCFStreamPropertyNoCellular ignored. Expected string. Got %@", v20);
      v25 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      *buf = 138543362;
      v31 = v24;
      goto LABEL_28;
    }
  }

LABEL_49:
  CFDictionaryRemoveValue(MutableCopy, v18);
LABEL_50:
  if (MutableCopy && !CFDictionaryGetCount(MutableCopy))
  {
    CFRelease(MutableCopy);
LABEL_53:
    MutableCopy = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return MutableCopy;
}

void mmcs_http_context_extract_vendor_name_from_message_and_create_pool_parameters(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = mmcs_http_context_copy_vendor_name(a1);
  v6 = v5;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if (v5)
  {
    CFRetain(v5);
  }

  v7 = mmcs_report_copy_vendor_configuration_with_name(v6);
  if (!v7)
  {
    *(a3 + 16) = 0xBFF0000000000000;
    *(a3 + 24) = 0;
    *a3 = a2;
    *(a3 + 8) = v6;
    if (!v6)
    {
      return;
    }

    goto LABEL_15;
  }

  v8 = v7;
  valuePtr = 0;
  Value = CFDictionaryGetValue(v7, @"connection.max.requests");
  if (Value)
  {
    v10 = Value;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v10) && (!CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr) || valuePtr < 0))
    {
      valuePtr = 0;
    }
  }

  v12 = CFDictionaryGetValue(v8, @"connection.max.idle.millis");
  v13 = -1.0;
  if (v12)
  {
    v14 = v12;
    v15 = CFNumberGetTypeID();
    if (v15 == CFGetTypeID(v14))
    {
      v16 = 0;
      if (CFNumberGetValue(v14, kCFNumberSInt64Type, &v16))
      {
        if ((v16 & 0x8000000000000000) == 0)
        {
          v13 = v16 / 1000.0;
        }
      }
    }
  }

  CFRelease(v8);
  *(a3 + 24) = 0;
  *a3 = a2;
  *(a3 + 8) = v6;
  *(a3 + 16) = v13;
  *(a3 + 24) = valuePtr;
  if (v6)
  {
LABEL_15:
    CFRelease(v6);
  }
}

const void *mmcs_http_context_copy_vendor_name(uint64_t a1)
{
  v1 = *(a1 + 576);
  v2 = *(v1 + 24);
  if (!v2)
  {
    mmcs_http_context_copy_vendor_name_cold_1();
  }

  result = *(v2 + 32);
  if (result)
  {
    CFRetain(result);
    return *(*(v1 + 24) + 32);
  }

  return result;
}

BOOL debug_begin_writing_http_message_to_file(uint64_t a1, __CFHTTPMessage *a2, FILE **a3, const __CFString *a4, int a5)
{
  v84 = *MEMORY[0x277D85DE8];
  v10 = debug_begin_writing_http_message_to_file_dumpdir;
  if ((debug_begin_writing_http_message_to_file_didCheck & 1) == 0 && !debug_begin_writing_http_message_to_file_dumpdir)
  {
    v10 = getenv("MMCS_HTTP_DEBUG_DIR");
    debug_begin_writing_http_message_to_file_dumpdir = v10;
    debug_begin_writing_http_message_to_file_didCheck = 1;
  }

  if (!v10)
  {
    goto LABEL_52;
  }

  v11 = CFHTTPMessageCopyRequestURL(*(a1 + 336));
  PathComponent = CFURLCopyLastPathComponent(v11);
  if (v11)
  {
    CFRelease(v11);
  }

  bzero(__str, 0x400uLL);
  bzero(__filename, 0x400uLL);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  *buffer = 0u;
  v58 = 0u;
  *v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0;
  CFStringGetCString(PathComponent, buffer, 100, 0x8000100u);
  if (PathComponent)
  {
    CFRelease(PathComponent);
  }

  if (a4)
  {
    v13 = v50;
    CFStringGetCString(a4, v50, 100, 0x8000100u);
  }

  else
  {
    v13 = buffer;
  }

  os_unfair_lock_lock(&sMMCSHTTPClassLock);
  v14 = sMMCSHTTPMessageSequenceNumber++;
  os_unfair_lock_unlock(&sMMCSHTTPClassLock);
  v15 = debug_begin_writing_http_message_to_file_dumpdir;
  v16 = getpid();
  if (a5)
  {
    v17 = "response";
  }

  else
  {
    v17 = "request";
  }

  v49 = v14;
  snprintf(__str, 0x400uLL, "%s/httpdebug.pid%d.tx%04ld.seq%08ld.%p.%s.%s.headers.txt", v15, v16, *(a1 + 272), v14, a1, v13, v17);
  v18 = fopen(__str, "w");
  v19 = mmcs_logging_logger_default();
  if (v18)
  {
    v47 = v13;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Writing message headers to %s", __str);
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

    memset(v83, 0, sizeof(v83));
    v82 = 0u;
    v81 = 0u;
    v80 = 0u;
    v79 = 0u;
    v78 = 0u;
    v77 = 0u;
    v76 = 0u;
    v75 = 0u;
    v74 = 0u;
    v73 = 0u;
    v72 = 0u;
    v71 = 0u;
    v70 = 0u;
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    *buf = 0u;
    if (a5)
    {
      v22 = CFHTTPMessageCopyVersion(a2);
      if (v22)
      {
        v23 = v22;
        CFStringGetCString(v22, buf, 300, 0x8000100u);
        CFRelease(v23);
      }

      else
      {
        buf[0] = 0;
      }

      if (*(a1 + 68))
      {
        http_status = metricsinfo__get_http_status(a1 + 24);
        fprintf(v18, "%s %ld ", buf, http_status);
      }

      v30 = CFHTTPMessageCopyResponseStatusLine(a2);
    }

    else
    {
      v27 = CFHTTPMessageCopyRequestMethod(a2);
      CFStringGetCString(v27, buf, 300, 0x8000100u);
      if (v27)
      {
        CFRelease(v27);
      }

      fprintf(v18, "%s ", buf);
      v28 = CFHTTPMessageCopyRequestURL(a2);
      v29 = CFURLCopyPath(v28);
      if (v28)
      {
        CFRelease(v28);
      }

      CFStringGetCString(v29, buf, 300, 0x8000100u);
      if (v29)
      {
        CFRelease(v29);
      }

      fprintf(v18, "%s ", buf);
      v30 = CFHTTPMessageCopyVersion(a2);
    }

    v32 = v30;
    CFStringGetCString(v30, buf, 300, 0x8000100u);
    if (v32)
    {
      CFRelease(v32);
    }

    v46 = v17;
    v48 = a3;
    fprintf(v18, "%s\n", buf);
    v33 = CFHTTPMessageCopyAllHeaderFields(a2);
    Count = CFDictionaryGetCount(v33);
    v35 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
    v36 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
    CFDictionaryGetKeysAndValues(v33, v35, v36);
    if (Count < 1)
    {
      if (!v35)
      {
LABEL_46:
        if (v36)
        {
          free(v36);
        }

        if (v33)
        {
          CFRelease(v33);
        }

        fputs("\nWARNING: this is not an exact copy of the headers on the wire\n", v18);
        fclose(v18);
        v41 = debug_begin_writing_http_message_to_file_dumpdir;
        v42 = getpid();
        snprintf(__filename, 0x400uLL, "%s/httpdebug.pid%d.tx%04ld.seq%08ld.%p.%s.%s.body.bin", v41, v42, *(a1 + 272), v49, a1, v47, v46);
        v43 = fopen(__filename, "w");
        if (v43)
        {
          *v48 = v43;
LABEL_52:
          result = 1;
          goto LABEL_60;
        }

        v44 = mmcs_logging_logger_default();
        result = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_60;
        }

        v25 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to open %s", __filename);
        v26 = mmcs_logging_logger_default();
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_57;
        }

        *buf = 138543362;
        *&buf[4] = v25;
        goto LABEL_56;
      }
    }

    else
    {
      v37 = v35;
      v38 = v36;
      do
      {
        v39 = *v37++;
        CFStringGetCString(v39, buf, 300, 0x8000100u);
        fprintf(v18, "%s: ", buf);
        v40 = *v38++;
        CFStringGetCString(v40, buf, 300, 0x8000100u);
        fprintf(v18, "%s\n", buf);
        --Count;
      }

      while (Count);
    }

    free(v35);
    goto LABEL_46;
  }

  result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
  if (!result)
  {
    goto LABEL_60;
  }

  v25 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to open %s", __str);
  v26 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    *&buf[4] = v25;
LABEL_56:
    _os_log_impl(&dword_2577D8000, v26, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

LABEL_57:
  if (v25)
  {
    CFRelease(v25);
  }

  result = 0;
LABEL_60:
  v45 = *MEMORY[0x277D85DE8];
  return result;
}

CFErrorRef mmcs_http_context_copy_cferror_for_http_status_not_ok(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 408);
  if (v2)
  {
    CFRetain(v2);
    v3 = *(a1 + 408);
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    if (*(a1 + 68))
    {
      http_status = metricsinfo__get_http_status(a1 + 24);
      v7 = CFStringCreateWithFormat(v4, 0, @"The server returned HTTP status code: %ld", http_status);
    }

    else
    {
      v7 = @"The server did not return an HTTP status code";
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x277CBEE30], v7);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CBEE58], v7);
    if (v7)
    {
      CFRelease(v7);
    }

    if (*(a1 + 68))
    {
      v8 = metricsinfo__get_http_status(a1 + 24);
    }

    else
    {
      v8 = -1;
    }

    *valuePtr = v8;
    v9 = CFNumberCreate(v4, kCFNumberCFIndexType, valuePtr);
    CFDictionarySetValue(Mutable, @"kMMCSErrorHTTPStatusKey", v9);
    if (v9)
    {
      CFRelease(v9);
    }

    if (v3)
    {
      CFDictionarySetValue(Mutable, @"kMMCSErrorHTTPBodyKey", v3);
      BytePtr = CFDataGetBytePtr(v3);
      Length = CFDataGetLength(v3);
      v12 = CFStringCreateWithBytes(v4, BytePtr, Length, 0x8000100u, 0);
      if (v12)
      {
        v13 = v12;
        CFDictionarySetValue(Mutable, @"kMMCSErrorHTTPBodyStringKey", v12);
        CFRelease(v13);
      }
    }

    v14 = *(a1 + 328);
    if (v14)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CBEE78], v14);
    }

    v15 = *(a1 + 336);
    if (v15)
    {
      mmcs_user_info_add_http_message_request(Mutable, v15);
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }

  v16 = *(a1 + 292);
  v17 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v18 = *(a1 + 68);
  if (!v16)
  {
    if (!v18)
    {
      v31 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 6;
        if (!v17)
        {
          goto LABEL_57;
        }

        goto LABEL_81;
      }

      v32 = CFStringCreateWithFormat(v4, 0, @"mmcs http context <%p> does not have http status", a1);
      v33 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 138543362;
        *&valuePtr[4] = v32;
        _os_log_impl(&dword_2577D8000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@", valuePtr, 0xCu);
      }

      v22 = 6;
      if (v32)
      {
        goto LABEL_79;
      }

LABEL_80:
      if (!v17)
      {
        goto LABEL_57;
      }

      goto LABEL_81;
    }

    v23 = mmcs_http_context_copy_vendor_name(a1);
    if (v23)
    {
      v24 = v23;
      v25 = CFHTTPMessageCopyRequestMethod(*(a1 + 336));
      if (v25)
      {
        v26 = v25;
        v27 = mmcs_report_copy_vendor_retryable_http_errors(v24, v25);
        CFRelease(v24);
        v24 = v26;
      }

      else
      {
        v27 = 0;
      }

      CFRelease(v24);
      v39 = metricsinfo__get_http_status(a1 + 24);
      if (v27)
      {
        if (mmcs_index_set_contains_index(v27, v39))
        {
          v22 = 16;
        }

        else
        {
          v22 = 6;
        }

        C3BaseRelease(v27);
        goto LABEL_75;
      }
    }

    else
    {
      v39 = metricsinfo__get_http_status(a1 + 24);
    }

    if (v39 == 503 || v39 == 500)
    {
      v22 = 16;
    }

    else
    {
      v22 = 6;
    }

LABEL_75:
    if (v22 == 16 && v39 == 503)
    {
      v41 = CFHTTPMessageCopyHeaderFieldValue(*(a1 + 392), @"Retry-After");
      if (v41)
      {
        v32 = v41;
        CFDictionarySetValue(v17, @"Retry-After", v41);
        CFDictionarySetValue(v17, @"kMMCSErrorRetryClientInitiatedKey", *MEMORY[0x277CBED10]);
        v22 = 16;
LABEL_79:
        CFRelease(v32);
        goto LABEL_80;
      }

      v22 = 16;
      if (!v17)
      {
        goto LABEL_57;
      }

LABEL_81:
      if (CFDictionaryGetCount(v17) < 1)
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    }

    goto LABEL_80;
  }

  if (!v18)
  {
    v28 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = CFStringCreateWithFormat(v4, 0, @"mmcs http context <%p> does not have http status", a1);
      v30 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 138543362;
        *&valuePtr[4] = v29;
        _os_log_impl(&dword_2577D8000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@", valuePtr, 0xCu);
      }

      if (v29)
      {
        CFRelease(v29);
      }
    }

    goto LABEL_42;
  }

  v19 = metricsinfo__get_http_status(a1 + 24);
  if (v19 != 503)
  {
    if (v19 == 401)
    {
      v22 = 14;
      if (!v17)
      {
        goto LABEL_57;
      }

      goto LABEL_54;
    }

    if (v19 == 330)
    {
      v20 = CFHTTPMessageCopyHeaderFieldValue(*(a1 + 392), @"X-Apple-MMe-Host");
      if (v20)
      {
        v21 = v20;
        CFDictionarySetValue(v17, @"X-Apple-MMe-Host", v20);
        CFRelease(v21);
      }

      v22 = 15;
      if (!v17)
      {
        goto LABEL_57;
      }

LABEL_54:
      if (CFDictionaryGetCount(v17) <= 0)
      {
LABEL_56:
        CFRelease(v17);
        goto LABEL_57;
      }

LABEL_55:
      CFDictionarySetValue(Mutable, @"kMMCSErrorSupplementalDictionaryKey", v17);
      goto LABEL_56;
    }

LABEL_42:
    v22 = 6;
    if (!v17)
    {
      goto LABEL_57;
    }

    goto LABEL_54;
  }

  v34 = CFHTTPMessageCopyHeaderFieldValue(*(a1 + 392), @"Retry-After");
  if (v34)
  {
    v35 = v34;
    CFDictionarySetValue(v17, @"Retry-After", v34);
    CFDictionarySetValue(v17, @"kMMCSErrorRetryClientInitiatedKey", *MEMORY[0x277CBED10]);
    CFRelease(v35);
  }

  v22 = 16;
  if (v17)
  {
    goto LABEL_54;
  }

LABEL_57:
  error_with_userInfo = mmcs_cferror_create_error_with_userInfo(@"com.apple.mmcs", v22, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v37 = *MEMORY[0x277D85DE8];
  return error_with_userInfo;
}

const void *mmcs_http_context_copy_response_body(uint64_t a1)
{
  result = *(a1 + 408);
  if (result)
  {
    CFRetain(result);
    return *(a1 + 408);
  }

  return result;
}

CFStringRef mmcs_item_copy_token_header_value(char *cStr, const char *a2, const char *a3, uint64_t a4, int a5)
{
  if (!cStr)
  {
    return 0;
  }

  v9 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v10 = CFStringCreateWithCString(0, a3, 0x8000100u);
  if (a2)
  {
    v11 = CFStringCreateWithCString(0, a2, 0x8000100u);
    if (v11)
    {
      v12 = v11;
      a2 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @" %@", v11);
      CFRelease(v12);
    }

    else
    {
      a2 = 0;
    }
  }

  v14 = &stru_2868BF3F0;
  if (a2)
  {
    v14 = a2;
  }

  if (a5)
  {
    if (a4 < 1)
    {
      v13 = 0;
      if (!v9)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@%@ %lld %@", v9, v14, a4, v10);
  }

  else
  {
    v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@%@ %@", v9, v14, v10);
  }

  v13 = v15;
  if (v9)
  {
LABEL_14:
    CFRelease(v9);
  }

LABEL_15:
  if (v10)
  {
    CFRelease(v10);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  return v13;
}

double mmcs_http_context_enqueued_time(uint64_t a1)
{
  if (!*(a1 + 248))
  {
    mmcs_http_context_enqueued_time_cold_1();
  }

  return *(a1 + 256);
}

uint64_t mmcs_http_context_copy_uuid(uint64_t a1)
{
  v1 = *(a1 + 304);
  if (v1)
  {
    CFRetain(*(a1 + 304));
  }

  return v1;
}

__CFHTTPMessage *mmcs_http_context_copy_request_url(uint64_t a1)
{
  result = *(a1 + 336);
  if (result)
  {
    return CFHTTPMessageCopyRequestURL(result);
  }

  return result;
}

CFHashCode mmcs_http_context_uuid_hash_code(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 304)) != 0)
  {
    return CFHash(v1);
  }

  else
  {
    return 0;
  }
}

const void *mmcs_http_context_copy_error(uint64_t a1)
{
  result = *(a1 + 328);
  if (result)
  {
    CFRetain(result);
    return *(a1 + 328);
  }

  return result;
}

__CFHTTPMessage *mmcs_http_context_copy_header_field_value(uint64_t a1, const __CFString *a2)
{
  result = *(a1 + 392);
  if (result)
  {
    return CFHTTPMessageCopyHeaderFieldValue(result, a2);
  }

  return result;
}

uint64_t mmcs_http_msg_add_items_token_header(__CFHTTPMessage *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (!a1 || !a2 || !a3)
  {
    return 0;
  }

  v10 = 0;
  v11 = a3;
  while (a4)
  {
    if (mmcs_item_needs_put(v11))
    {
      goto LABEL_11;
    }

    ++v10;
    v11 += 416;
    if (a2 == v10)
    {
      v12 = 0;
      goto LABEL_12;
    }
  }

  v10 = 0;
LABEL_11:
  v12 = (a3 + 416 * v10);
LABEL_12:

  return mmcs_http_msg_add_item_token_header(a1, v12, a4, a5);
}

uint64_t mmcs_http_msg_add_item_token_header(__CFHTTPMessage *a1, uint64_t *a2, int a3, int a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v7 = 8;
  if (!a3)
  {
    v7 = 6;
  }

  v8 = a2[v7];
  v9 = a2[1];
  v10 = mmcs_item_padded_length(a2);

  return mmcs_http_msg_add_auth_header(a1, v4, v8, v9, v10, a4);
}

uint64_t mmcs_http_msg_add_items_token_header_simulcast(__CFHTTPMessage *a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a2)
  {
    if (a1)
    {
      v5 = a3;
      if (a3)
      {
        for (i = a2; !mmcs_item_needs_put(i); i += 416)
        {
          if (!--v5)
          {
            return 0;
          }
        }

        v7 = CFStringCreateWithCString(0, *(i + 8), 0x8000100u);
        CFHTTPMessageSetHeaderFieldValue(a1, @"x-apple-mmcs-auth", v7);
        return 1;
      }
    }
  }

  return result;
}

uint64_t mmcs_http_msg_add_auth_header(__CFHTTPMessage *a1, char *a2, char *CStringDescription, const char *a4, uint64_t a5, int a6)
{
  v6 = 0;
  v22 = *MEMORY[0x277D85DE8];
  if (!a2 || !a4)
  {
    goto LABEL_10;
  }

  v12 = mmcs_file_signature_to_hexstring(a2);
  if (CStringDescription)
  {
    CStringDescription = XCFDataCreateCStringDescription(CStringDescription);
  }

  v13 = mmcs_item_copy_token_header_value(v12, CStringDescription, a4, a5, a6);
  if (v13)
  {
    v14 = v13;
    CFHTTPMessageSetHeaderFieldValue(a1, @"x-apple-mmcs-auth", v13);
    CFRelease(v14);
    v6 = 1;
    if (!v12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v17 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to create token header for item %s", v12);
      v19 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v21 = v18;
        _os_log_impl(&dword_2577D8000, v19, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v18)
      {
        CFRelease(v18);
      }
    }

    v6 = 0;
    if (!v12)
    {
      goto LABEL_8;
    }
  }

  free(v12);
LABEL_8:
  if (CStringDescription)
  {
    free(CStringDescription);
  }

LABEL_10:
  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

void mmcs_http_context_set_perform_target(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 608);
  if (v3 != cf)
  {
    if (v3)
    {
      C3BaseRelease(v3);
    }

    *(a1 + 608) = 0;
    if (cf)
    {
      *(a1 + 608) = cf;

      C3BaseRetain(cf);
    }
  }
}

__CFString *mmcs_http_class_description(unsigned int a1)
{
  if (a1 > 3)
  {
    return @"unknown mmcs_http_class";
  }

  else
  {
    return off_279845628[a1];
  }
}

const void *mmcs_http_class_for_string(const void *result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(v1) && !CFEqual(v1, @"mmcs_http_class_none"))
    {
      return (2 * (CFEqual(v1, @"mmcs_http_class_nsurlsession") != 0));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *mmcs_http_class_default_value(const void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = CFPreferencesCopyAppValue(@"http_class", @"com.apple.mmcs");
  if (v2)
  {
    v3 = v2;
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(v3))
    {
      v5 = mmcs_http_class_for_string(v3);
      if (v5)
      {
        v6 = v5;
        CFRelease(v3);
        a1 = v6;
        goto LABEL_15;
      }

      v10 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Ignoring user default for http_class. Unknown http class %@", v3);
        v9 = mmcs_logging_logger_default();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_12;
        }

        *buf = 138543362;
        v14 = v8;
LABEL_11:
        _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_12:
        if (v8)
        {
          CFRelease(v8);
        }
      }
    }

    else
    {
      v7 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Ignoring user default for http_class. Expect string value, got %@", v3);
        v9 = mmcs_logging_logger_default();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_12;
        }

        *buf = 138543362;
        v14 = v8;
        goto LABEL_11;
      }
    }

    CFRelease(v3);
  }

LABEL_15:
  v11 = *MEMORY[0x277D85DE8];
  return a1;
}

double mmcs_http_total_timeout(double DoubleValue)
{
  v2 = CFPreferencesCopyAppValue(@"http.totalTimeout", @"com.apple.mmcs");
  if (v2)
  {
    v3 = v2;
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(v3))
    {
      DoubleValue = CFStringGetDoubleValue(v3);
    }

    else
    {
      v5 = CFNumberGetTypeID();
      if (v5 == CFGetTypeID(v3))
      {
        valuePtr = 0.0;
        if (CFNumberGetValue(v3, kCFNumberDoubleType, &valuePtr))
        {
          DoubleValue = valuePtr;
        }
      }
    }

    CFRelease(v3);
  }

  return DoubleValue;
}

uint64_t mmcs_http_context_allocate(uint64_t *a1, int a2, uint64_t a3)
{
  *a1 = 0;
  switch(a2)
  {
    case 3:
      v6 = &mmcs_http_class_curlGetTypeID_typeID;
      break;
    case 2:
      v6 = &mmcs_http_class_nsurlsessionGetTypeID_typeID;
      break;
    case 1:
      v6 = &mmcs_http_class_cfhttpGetTypeID_typeID;
      break;
    default:
      goto LABEL_11;
  }

  v7 = C3TypeRegister(v6);
  if (!v7)
  {
LABEL_11:
    mmcs_http_context_allocate_cold_1();
  }

  result = C3TypeCreateInstance_(0, v7, a3 + 632);
  if (result)
  {
    *(result + 16) = a2;
    *(result + 624) = result + 632;
    *a1 = result;
    return 1;
  }

  return result;
}

CFStringRef _mmcs_http_context_init(uint64_t a1, uint64_t a2)
{
  if (!a2 || !*(a2 + 8))
  {
    return 0;
  }

  v4 = _mmcs_http_transactionIndex++;
  *(a1 + 272) = v4;
  v5 = *(a2 + 144);
  v6 = a1 + 24;
  if (v5 == 0.0)
  {
    metricsinfo__clear_enqueued_time(v6);
  }

  else
  {
    metricsinfo__set_enqueued_time(v6, v5);
  }

  *(a1 + 80) = 0;
  *(a1 + 280) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  metricsinfo__clear_start_name_resolution(a1 + 24);
  metricsinfo__clear_stop_name_resolution(a1 + 24);
  *(a1 + 336) = CFRetain(*(a2 + 8));
  v8 = *(a2 + 16);
  if (!v8)
  {
    _mmcs_http_context_init_cold_1();
  }

  *(a1 + 368) = C3BaseRetain(v8);
  v9 = *a2;
  *(a1 + 264) = *a2;
  if (v9)
  {
    CFRetain(v9);
  }

  *(a1 + 376) = *(a2 + 24);
  *(a1 + 288) = 0;
  *(a1 + 290) = 0;
  *(a1 + 56) = 0;
  *(a1 + 292) = 1;
  *(a1 + 294) = 0;
  metricsinfo__clear_http_status(a1 + 24);
  v10 = *MEMORY[0x277CBECE8];
  *(a1 + 304) = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  *(a1 + 520) = *(a2 + 80);
  v11 = *(a2 + 104);
  *(a1 + 536) = *(a2 + 96);
  *(a1 + 552) = v11;
  *(a1 + 560) = 0;
  v12 = *(a2 + 112);
  *(a1 + 544) = *(a2 + 120);
  *(a1 + 568) = *(a2 + 128);
  *(a1 + 576) = v12;
  *(a1 + 352) = *(a2 + 40);
  *(a1 + 496) = *(a2 + 56);
  *(a1 + 512) = *(a2 + 72);
  *(a1 + 296) = 0;
  *(a1 + 416) = 0;
  *(a1 + 488) = 0;
  *(a1 + 136) = -1;
  v13 = *(a2 + 152);
  if (v13)
  {
    os_retain(v13);
    v14 = *(a2 + 152);
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 584) = v14;
  *(a1 + 592) = voucher_copy();
  *(a1 + 616) = 0;
  metricsinfo__clear_response_size(a1 + 24);
  metricsinfo__clear_timed_out(a1 + 24);
  metricsinfo__clear_bytes_written(a1 + 24);
  metricsinfo__clear_last_send_time(a1 + 24);
  metricsinfo__clear_bytes_read(a1 + 24);
  metricsinfo__clear_bytes_write_buffered(a1 + 24);
  metricsinfo__clear_actual_bytes_written(a1 + 24);
  v15 = *(a1 + 304);
  if (v15)
  {
    result = CFUUIDCreateString(v10, v15);
    if (!result)
    {
      return result;
    }

    v16 = result;
    CFHTTPMessageSetHeaderFieldValue(*(a2 + 8), @"x-apple-request-uuid", result);
    CFRelease(v16);
  }

  *(a1 + 408) = CFDataCreateMutable(v10, 0);
  return 1;
}

uint64_t mmcs_http_context_create(void *a1, unsigned int a2, uint64_t a3)
{
  v8 = 0;
  if (!a1)
  {
    mmcs_http_context_create_cold_4();
  }

  if (a2 - 4 <= 0xFFFFFFFC)
  {
    mmcs_http_context_create_cold_3();
  }

  v3 = &callbacks[15 * a2];
  if (!*v3)
  {
    mmcs_http_context_create_cold_2();
  }

  if (!v3[1])
  {
    mmcs_http_context_create_cold_1();
  }

  result = (*v3)(&v8);
  if (result)
  {
    v7 = (v3[1])(v8, a3);
    result = v8;
    if (v7)
    {
      *a1 = v8;
      return 1;
    }

    else if (v8)
    {
      C3BaseRelease(v8);
      return 0;
    }
  }

  return result;
}

void mmcs_http_context_finalize(uint64_t a1)
{
  v2 = callbacks[15 * *(a1 + 16) + 14];
  if (v2)
  {
    v2(a1);
  }

  v3 = *(a1 + 608);
  if (v3)
  {
    C3BaseRelease(v3);
    *(a1 + 608) = 0;
  }

  v4 = *(a1 + 600);
  if (v4)
  {
    C3BaseRelease(v4);
    *(a1 + 600) = 0;
  }

  v5 = *(a1 + 264);
  if (v5)
  {
    CFRelease(v5);
  }

  *(a1 + 264) = 0;
  v6 = *(a1 + 336);
  if (v6)
  {
    CFRelease(v6);
  }

  *(a1 + 336) = 0;
  v7 = *(a1 + 368);
  if (v7)
  {
    C3BaseRelease(v7);
  }

  *(a1 + 368) = 0;
  v8 = *(a1 + 392);
  if (v8)
  {
    CFRelease(v8);
  }

  *(a1 + 392) = 0;
  v9 = *(a1 + 328);
  if (v9)
  {
    CFRelease(v9);
  }

  *(a1 + 328) = 0;
  v10 = *(a1 + 304);
  if (v10)
  {
    CFRelease(v10);
  }

  *(a1 + 304) = 0;
  v11 = *(a1 + 488);
  if (v11)
  {
    mmcs_metrics_http_info_release(v11);
    *(a1 + 488) = 0;
  }

  v12 = *(a1 + 408);
  if (v12)
  {
    CFRelease(v12);
  }

  *(a1 + 408) = 0;
  v13 = *(a1 + 424);
  if (v13)
  {
    fclose(v13);
    *(a1 + 424) = 0;
  }

  v14 = *(a1 + 432);
  if (v14)
  {
    fclose(v14);
    *(a1 + 432) = 0;
  }

  metricsinfo__set_request_url_with_cfstring(a1 + 24, 0);
  metricsinfo__set_http_error_with_cferror(a1 + 24, 0);
  socketinfo__set_interface_identifier_with_c_string(a1 + 440, 0);
  socketinfo__set_peer_address_with_c_string(a1 + 440, 0);
  *(a1 + 520) = 0;
  *(a1 + 576) = 0;
  v15 = *(a1 + 584);
  if (v15)
  {
    os_release(v15);
  }

  *(a1 + 584) = 0;
  v16 = *(a1 + 592);
  if (v16)
  {
    os_release(v16);
  }

  *(a1 + 592) = 0;
  v17 = *(a1 + 616);
  if (v17)
  {
    CFRelease(v17);
  }

  *(a1 + 616) = 0;
}

void mmcs_http_context_invalidate(uint64_t a1)
{
  v3.opaque[0] = 0;
  v3.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 584), &v3);
  v2 = callbacks[15 * *(a1 + 16) + 13];
  if (v2)
  {
    v2(a1);
  }

  mmcs_http_context_cleanup_response(a1);
  os_activity_scope_leave(&v3);
}

void mmcs_http_context_cleanup_response(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 584), &v9);
  if (*(a1 + 56))
  {
    v2 = callbacks[15 * *(a1 + 16) + 12];
    if (v2)
    {
      v2(a1);
    }

    v3 = *(a1 + 392);
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 392) = 0;
    v4 = *(a1 + 408);
    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 408) = 0;
  }

  else
  {
    v5 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"called before http transactionComplete");
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

  os_activity_scope_leave(&v9);
  v8 = *MEMORY[0x277D85DE8];
}

void mmcs_http_context_set_error(uint64_t a1, __CFError *cf)
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 328);
  if (v3 != cf)
  {
    if (v3)
    {
      v5 = mmcs_cferror_copy_description(v3);
      v6 = mmcs_cferror_copy_description(cf);
      v7 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"stomping error %@ with %@", v5, v6);
        v9 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v55 = v8;
          _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v8)
        {
          CFRelease(v8);
        }
      }

      v10 = *(a1 + 328);
      if (v10)
      {
        CFRelease(v10);
      }

      *(a1 + 328) = 0;
      if (v5)
      {
        CFRelease(v5);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    if (!cf)
    {
      goto LABEL_89;
    }

    v11 = gMMCS_DebugLevel;
    if (gMMCS_DebugLevel < 3)
    {
LABEL_88:
      CFRetain(cf);
LABEL_89:
      v52 = cf;
LABEL_90:
      *(a1 + 328) = v52;
      goto LABEL_91;
    }

    v12 = CFLocaleCreate(0, @"en_US");
    v13 = *MEMORY[0x277CBECE8];
    DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(*MEMORY[0x277CBECE8], @"yyyy/MM/dd kk:mm:ss.SSSS", 0, v12);
    v15 = DateFormatFromTemplate;
    if (v12 && DateFormatFromTemplate)
    {
      v16 = CFDateFormatterCreate(v13, v12, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
      v17 = v16;
      if (v16)
      {
        CFDateFormatterSetFormat(v16, v15);
      }
    }

    else
    {
      v17 = 0;
      v18 = 0;
      if (!v12)
      {
        goto LABEL_22;
      }
    }

    CFRelease(v12);
    v18 = v17;
LABEL_22:
    if (v15)
    {
      CFRelease(v15);
    }

    Mutable = CFStringCreateMutable(v13, 0);
    v20 = Mutable;
    if (!Mutable)
    {
LABEL_76:
      v46 = CFErrorCopyUserInfo(cf);
      MutableCopy = CFDictionaryCreateMutableCopy(v13, 0, v46);
      v48 = MutableCopy;
      if (v20 && MutableCopy)
      {
        CFDictionarySetValue(MutableCopy, @"debug description:mmcs_http", v20);
        Domain = CFErrorGetDomain(cf);
        Code = CFErrorGetCode(cf);
        v51 = CFErrorCreate(v13, Domain, Code, v48);
      }

      else
      {
        v51 = 0;
        v52 = 0;
        if (!MutableCopy)
        {
          goto LABEL_81;
        }
      }

      CFRelease(v48);
      v52 = v51;
LABEL_81:
      if (v46)
      {
        CFRelease(v46);
      }

      if (v20)
      {
        CFRelease(v20);
      }

      if (v18)
      {
        CFRelease(v18);
      }

      if (v52)
      {
        goto LABEL_90;
      }

      goto LABEL_88;
    }

    v21 = *(a1 + 16);
    if (v21 > 3)
    {
      v22 = @"unknown mmcs_http_class";
    }

    else
    {
      v22 = off_279845628[v21];
    }

    CFStringAppendFormat(Mutable, 0, @" class:%@", v22);
    v23 = *(a1 + 336);
    if (v23)
    {
      v24 = CFHTTPMessageCopyRequestURL(v23);
      if (v24)
      {
        v25 = v24;
        v26 = CFURLGetString(v24);
        CFStringAppendFormat(v20, 0, @" url:%@", v26);
        CFRelease(v25);
      }

      if (v11 != 3)
      {
        v27 = CFHTTPMessageCopyHeaderFieldValue(*(a1 + 336), @"x-apple-mme-dsid");
        if (v27)
        {
          v28 = v27;
          CFStringAppendFormat(v20, 0, @" x-apple-mme-dsid:%@", v27);
          CFRelease(v28);
        }

        v29 = CFHTTPMessageCopyHeaderFieldValue(*(a1 + 336), @"x-apple-mmcs-auth");
        if (v29)
        {
          v30 = v29;
          CFStringAppendFormat(v20, 0, @" x-apple-mmcs-auth:%@", v29);
          CFRelease(v30);
        }

LABEL_38:
        v32 = *(a1 + 80);
        if (v32 == 0.0)
        {
          CFStringAppend(v20, @" start: (none)");
        }

        else
        {
          if (!v18)
          {
            if (*(a1 + 128) != 0.0)
            {
LABEL_49:
              v31 = 1;
              goto LABEL_50;
            }

LABEL_48:
            CFStringAppend(v20, @" stop: (none)");
            goto LABEL_49;
          }

          StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(v13, v18, v32);
          if (StringWithAbsoluteTime)
          {
            v34 = StringWithAbsoluteTime;
            CFStringAppend(v20, @" start:");
            CFStringAppend(v20, v34);
            CFRelease(v34);
          }
        }

        v35 = *(a1 + 128);
        if (v35 != 0.0)
        {
          if (v18)
          {
            v36 = CFDateFormatterCreateStringWithAbsoluteTime(v13, v18, v35);
            if (v36)
            {
              v37 = v36;
              CFStringAppend(v20, @" stop:");
              CFStringAppend(v20, v37);
              CFRelease(v37);
            }
          }

          goto LABEL_49;
        }

        goto LABEL_48;
      }
    }

    else if (v11 != 3)
    {
      goto LABEL_38;
    }

    v31 = 0;
LABEL_50:
    if (*(a1 + 68))
    {
      http_status = metricsinfo__get_http_status(a1 + 24);
      CFStringAppendFormat(v20, 0, @" httpStatus:%d", http_status);
    }

    if (*(a1 + 152))
    {
      bytes_written = metricsinfo__get_bytes_written(a1 + 24);
      CFStringAppendFormat(v20, 0, @" bytesWritten:%lld", bytes_written);
    }

    if (*(a1 + 208))
    {
      v40 = metricsinfo__get_bytes_read(a1 + 24);
      CFStringAppendFormat(v20, 0, @" bytesRead:%lld", v40);
    }

    if (v31)
    {
      v41 = *(a1 + 304);
      if (v41)
      {
        v42 = CFUUIDCreateString(v13, v41);
        if (v42)
        {
          v43 = v42;
          CFStringAppend(v20, @" uuid:");
          CFStringAppend(v20, v43);
          CFRelease(v43);
        }
      }
    }

    v44 = *(a1 + 296);
    if (v44 > 3)
    {
      v45 = @"meandering";
    }

    else
    {
      v45 = streamStatusString[v44];
    }

    CFStringAppendFormat(v20, 0, @" streamState:%@", v45);
    if (*(a1 + 464))
    {
      CFStringAppendFormat(v20, 0, @" interfaceIdentifier:%s", *(a1 + 464));
    }

    if (*(a1 + 472))
    {
      CFStringAppendFormat(v20, 0, @" destination:%s:%u", *(a1 + 472), *(a1 + 480));
    }

    if (*(a1 + 208))
    {
      CFStringAppend(v20, @" c_finished");
    }

    if (*(a1 + 56))
    {
      CFStringAppend(v20, @" transactionComplete");
    }

    if (*(a1 + 60) && metricsinfo__get_timed_out(a1 + 24))
    {
      CFStringAppend(v20, @" timedOut");
    }

    if (*(a1 + 290))
    {
      CFStringAppend(v20, @" cancelled");
    }

    goto LABEL_76;
  }

LABEL_91:
  v53 = *MEMORY[0x277D85DE8];
}

uint64_t mmcs_http_context_update_voucher(uint64_t a1)
{
  v2 = *(a1 + 592);
  if (v2)
  {
    os_release(v2);
  }

  *(a1 + 592) = 0;
  result = voucher_copy();
  *(a1 + 592) = result;
  return result;
}

uint64_t mmcs_http_context_validate_request_uuid_with_response(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 292))
  {
    v2 = *(a1 + 304);
    if (v2)
    {
      CFRetain(*(a1 + 304));
      v3 = *MEMORY[0x277CBECE8];
      v4 = CFUUIDCreateString(*MEMORY[0x277CBECE8], v2);
      if (v4)
      {
        v5 = v4;
        v6 = *(a1 + 392);
        if (v6 && (v7 = CFHTTPMessageCopyHeaderFieldValue(v6, @"x-apple-request-uuid")) != 0)
        {
          v8 = v7;
          result.location = 0;
          result.length = 0;
          v9 = CFLocaleCreate(0, @"en_US");
          v27.length = CFStringGetLength(v8);
          v10 = 1;
          v27.location = 0;
          if (!CFStringFindWithOptionsAndLocale(v8, v5, v27, 1uLL, v9, &result))
          {
            v11 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              v12 = CFStringCreateWithFormat(v3, 0, @"Context %p expected header x-apple-request-uuid: %@ got %@", a1, v5, v8);
              v13 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v24 = v12;
                _os_log_impl(&dword_2577D8000, v13, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
              }

              if (v12)
              {
                CFRelease(v12);
              }
            }

            v10 = 0;
          }

          if (v9)
          {
            CFRelease(v9);
          }

          CFRelease(v8);
        }

        else
        {
          v16 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = CFStringCreateWithFormat(v3, 0, @"Context %p expected header x-apple-request-uuid: %@", a1, v5);
            v18 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              LODWORD(result.location) = 138543362;
              *(&result.location + 4) = v17;
              _os_log_impl(&dword_2577D8000, v18, OS_LOG_TYPE_ERROR, "%{public}@", &result, 0xCu);
            }

            if (v17)
            {
              CFRelease(v17);
            }
          }

          v10 = 0;
        }
      }

      else
      {
        v19 = mmcs_logging_logger_default();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v10 = 0;
          goto LABEL_35;
        }

        v5 = CFStringCreateWithFormat(v3, 0, @"Context %p could not create string of request uuid", a1);
        v20 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          LODWORD(result.location) = 138543362;
          *(&result.location + 4) = v5;
          _os_log_impl(&dword_2577D8000, v20, OS_LOG_TYPE_ERROR, "%{public}@", &result, 0xCu);
        }

        v10 = 0;
        if (!v5)
        {
          goto LABEL_35;
        }
      }

      CFRelease(v5);
LABEL_35:
      CFRelease(v2);
      goto LABEL_36;
    }

    v14 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v2 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Context %p has no request uuid", a1);
      v15 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        LODWORD(result.location) = 138543362;
        *(&result.location + 4) = v2;
        _os_log_impl(&dword_2577D8000, v15, OS_LOG_TYPE_ERROR, "%{public}@", &result, 0xCu);
      }

      v10 = 0;
      if (v2)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

LABEL_36:
  v21 = *MEMORY[0x277D85DE8];
  return v10;
}

char *mmcs_http_context_make_metrics(char *result, const void *a2, const void *a3, uint64_t a4, char a5)
{
  if (result)
  {
    v5 = result;
    result = mmcs_metrics_http_info_create(a2, a3, a4, a5);
    *(v5 + 61) = result;
  }

  return result;
}

void mmcs_http_context_mark_as_writing(uint64_t a1)
{
  v3.opaque[0] = 0;
  v3.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 584), &v3);
  v2 = callbacks[15 * *(a1 + 16) + 5];
  if (v2)
  {
    v2(a1);
  }

  *(a1 + 296) = 2;
  os_activity_scope_leave(&v3);
}

void mmcs_http_context_did_stop_with_error(uint64_t a1, uint64_t a2)
{
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 584), &v5);
  v4 = callbacks[15 * *(a1 + 16) + 10];
  if (v4)
  {
    v4(a1, a2);
  }

  os_activity_scope_leave(&v5);
}

void mmcs_http_context_should_cancel(_BYTE *a1, __CFError *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1 && !a1[288] && !a1[289] && !a1[290])
  {
    v4 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"http context %p should cancel", a1);
      v6 = mmcs_logging_logger_default();
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

    a1[290] = 1;
    if (a2)
    {
      mmcs_http_context_set_error(a1, a2);
    }

    mmcs_http_context_did_stop_with_error(a1, a2);
    mmcs_http_context_transaction_complete(a1);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void mmcs_http_context_transaction_complete(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56))
  {
    v2 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"http context %p already complete", a1);
      v4 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.opaque[0]) = 138543362;
        *(buf.opaque + 4) = v3;
        _os_log_impl(&dword_2577D8000, v4, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
      }

      if (v3)
      {
        CFRelease(v3);
      }
    }
  }

  else
  {
    *(a1 + 128) = CFAbsoluteTimeGetCurrent();
    *(a1 + 56) = 1;
    v5 = *(a1 + 432);
    if (v5)
    {
      fclose(v5);
      *(a1 + 432) = 0;
    }

    buf.opaque[0] = 0;
    buf.opaque[1] = 0;
    os_activity_scope_enter(*(a1 + 584), &buf);
    v6 = callbacks[15 * *(a1 + 16) + 11];
    if (v6)
    {
      v6(a1);
    }

    os_activity_scope_leave(&buf);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void mmcs_http_context_should_stop_with_error(uint64_t a1, __CFError *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1 && !*(a1 + 288) && !*(a1 + 289))
  {
    v4 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"http context %p should stop", a1);
      v6 = mmcs_logging_logger_default();
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

    if (a2)
    {
      mmcs_http_context_set_error(a1, a2);
    }

    mmcs_http_context_did_stop_with_error(a1, a2);
    mmcs_http_context_transaction_complete(a1);
  }

  v7 = *MEMORY[0x277D85DE8];
}