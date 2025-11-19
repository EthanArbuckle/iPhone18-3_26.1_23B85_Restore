void __handle_response_authorizeGetForChunks_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  cf = 0;
  if (mmcs_get_req_schedule_new_containers(*(a1 + 32), &cf) == -1)
  {
    v2 = mmcs_logging_logger_default();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
    v4 = MEMORY[0x277CBECE8];
    if (v3)
    {
      v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Failed to schedule new containers");
      v6 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v20 = v5;
        _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }

    mmcs_proxy_locator_finish(*(*(a1 + 32) + 192));
    v12 = cf;
    if (!cf)
    {
      v12 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Failed handle_response_authorizeGetForChunks", v7, v8, v9, v10, v11, v17);
      cf = v12;
    }

    mmcs_get_req_context_cleanup(*(a1 + 32), v12);
    v13 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = CFStringCreateWithFormat(*v4, 0, @"cleaned up get request because containers failed to schedule. mrc: %p", *(a1 + 32));
      v15 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v20 = v14;
        _os_log_impl(&dword_2577D8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t mmcs_get_req_schedule_new_containers(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = 0;
    if (*(a1 + 144))
    {
      v3 = *(a1 + 152);
      *a2 = v3;
      CFRetain(v3);
      return 0xFFFFFFFFLL;
    }
  }

  else if (*(a1 + 144))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(*(a1 + 304) + 112);
  if (v5)
  {
    mmcs_get_file_omit_containers_not_needed(v5, 0);
  }

  scheduleGetChunkAndDerivativeContainers(a1);
  return 0;
}

uint64_t file_groups_message_file_count(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    v2 = 0;
    v3 = 0;
    v4 = *MEMORY[0x277CBECE8];
    do
    {
      v5 = *(*(a1 + 32) + 8 * v2);
      if (!*(v5 + 40))
      {
        v6 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v7 = CFStringCreateWithFormat(v4, 0, @"No files to download");
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

      if (!*(v5 + 24))
      {
        v9 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = CFStringCreateWithFormat(v4, 0, @"No containers to download");
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
      }

      v3 += *(v5 + 40);
      ++v2;
    }

    while (v2 < *(a1 + 24));
  }

  else
  {
    v3 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t mmcs_get_req_process_another_file_groups_message(uint64_t a1, __CFSet *a2, uint64_t a3, int a4, CFTypeRef *a5)
{
  v5 = a3;
  v124 = *MEMORY[0x277D85DE8];
  cf = 0;
  if (*(a3 + 24))
  {
    v9 = 0;
    do
    {
      v10 = 1;
      if (!mmcs_get_state_process_file_list(*(*(a1 + 304) + 112), *(*(v5 + 32) + 8 * v9), a4, 1, &cf))
      {
        v69 = 0;
        goto LABEL_114;
      }

      ++v9;
    }

    while (v9 < *(v5 + 24));
  }

  if (*(v5 + 80))
  {
    if (mmcs_get_req_get_opaque_clone_context(a1))
    {
      mmcs_get_req_process_another_file_groups_message_cold_1();
    }

    Data = ProtobufCBinaryData_CreateData((v5 + 88));
    mmcs_get_req_set_opaque_clone_context(a1, Data);
    CFRelease(Data);
  }

  v95 = a1;
  theSet = a2;
  v93 = v5;
  cf = 0;
  if (*(v5 + 40))
  {
    v12 = 0;
    v13 = *MEMORY[0x277CBECE8];
    v14 = @"apple.mme";
    while (1)
    {
      v15 = *(*(v5 + 48) + 8 * v12);
      if (!mmcs_file_signature_is_valid_n(*(v15 + 32), *(v15 + 24)))
      {
        v70 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          v76 = CFStringCreateWithFormat(v13, 0, @"Invalid file signature in FileGroup FileError file_checksum");
          v77 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
          {
            LODWORD(value) = 138543362;
            *(&value + 4) = v76;
            _os_log_impl(&dword_2577D8000, v77, OS_LOG_TYPE_ERROR, "%{public}@", &value, 0xCu);
          }

          if (v76)
          {
            CFRelease(v76);
          }
        }

        v69 = 0;
        cf = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Invalid file signature in FileGroup FileError file_checksum", v71, v72, v73, v74, v75, v89);
        v10 = 1;
        goto LABEL_114;
      }

      v16 = mmcs_file_signature_to_hexstring(*(v15 + 32));
      v17 = *(v15 + 40);
      v18 = CFStringCreateWithCString(v13, *(v17 + 24), 0x8000100u);
      v19 = *(v17 + 32);
      v20 = CFEqual(v18, v14);
      v24 = v19 == 1 || v19 == 6;
      v25 = 16;
      if (!v24)
      {
        v25 = 8;
      }

      if (v20)
      {
        v26 = v25;
      }

      else
      {
        v26 = 8;
      }

      error_with_error_response_and_format = mmcs_cferror_create_error_with_error_response_and_format(1, 0, v26, v17, @"The server returned an error for signature %s", v21, v22, v23, v16);
      if (*(v15 + 48))
      {
        v28 = ProtobufCBinaryData_CreateData((v15 + 56));
      }

      else
      {
        v28 = 0;
      }

      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      value = 0u;
      v99 = 0u;
      *&value = *(v15 + 32);
      *&v101 = v28;
      v29 = CFSetGetValue(*(*(v95 + 304) + 80), &value);
      if (v28)
      {
        CFRelease(v28);
      }

      if (v29)
      {
        break;
      }

      v35 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v89 = v16;
        v30 = CFStringCreateWithFormat(v13, 0, @"Server referenced an item in FileGroup FileError with signature %s which is not in itemsWithDistinctSignatures. This FileError will be ignored.");
        v36 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v30;
          _os_log_impl(&dword_2577D8000, v36, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        goto LABEL_40;
      }

LABEL_42:
      if (v16)
      {
        free(v16);
      }

      if (error_with_error_response_and_format)
      {
        CFRelease(error_with_error_response_and_format);
      }

      if (++v12 >= *(v5 + 40))
      {
        goto LABEL_47;
      }
    }

    if (CFSetContainsValue(theSet, v29))
    {
      CFSetRemoveValue(theSet, v29);
      v30 = mmcs_item_copy_description(v29);
      v31 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = v14;
        v89 = v30;
        v33 = CFStringCreateWithFormat(v13, 0, @"Server returned error for item %@ %@");
        v34 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = v33;
          _os_log_impl(&dword_2577D8000, v34, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        v14 = v32;
        if (v33)
        {
          CFRelease(v33);
        }
      }

      mmcs_get_item_progress_make_done_error(error_with_error_response_and_format, buf);
      mmcs_get_request_set_progress_and_notify_items_like_item(v95, v29, buf);
      v5 = v93;
    }

    else
    {
      v30 = mmcs_item_copy_description(v29);
      v37 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v89 = error_with_error_response_and_format;
        v38 = CFStringCreateWithFormat(v13, 0, @"Server returned file error %@ for item %@ which has already been handled. The error wil be ignored and no additional notification will be sent to client.");
        v39 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v38;
          _os_log_impl(&dword_2577D8000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        v5 = v93;
        if (v38)
        {
          CFRelease(v38);
        }
      }
    }

LABEL_40:
    if (v30)
    {
      CFRelease(v30);
    }

    goto LABEL_42;
  }

LABEL_47:
  cf = 0;
  if (!*(v5 + 56))
  {
LABEL_99:
    v10 = 0;
    goto LABEL_113;
  }

  v40 = 0;
  v41 = *MEMORY[0x277CBECE8];
  while (1)
  {
    v42 = *(*(v5 + 64) + 8 * v40);
    if (!mmcs_file_signature_is_valid_n(*(v42 + 32), *(v42 + 24)))
    {
      break;
    }

    v94 = v40;
    v43 = mmcs_file_signature_to_hexstring(*(v42 + 32));
    Mutable = CFArrayCreateMutable(v41, 0, MEMORY[0x277CBF128]);
    if (*(v42 + 40))
    {
      v45 = 0;
      do
      {
        v46 = *(*(v42 + 48) + 8 * v45);
        if (mmcs_chunk_signature_is_valid_n(*(v46 + 32), *(v46 + 24)))
        {
          v47 = mmcs_chunk_signature_to_hexstring(*(v46 + 32));
        }

        else
        {
          v47 = strdup("(invalid chunk signature)");
        }

        v51 = v47;
        v52 = mmcs_cferror_create_error_with_error_response_and_format(1, 0, 8, *(v46 + 40), @"The server returned an error for chunk %s file signature %s", v48, v49, v50, v47);
        v53 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          v89 = v51;
          v90 = *(v46 + 48);
          v54 = CFStringCreateWithFormat(v41, 0, @"The server returned an error for chunk %s at index %u for an item with signature %s:%@");
          v55 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(value) = 138543362;
            *(&value + 4) = v54;
            _os_log_impl(&dword_2577D8000, v55, OS_LOG_TYPE_DEBUG, "%{public}@", &value, 0xCu);
          }

          if (v54)
          {
            CFRelease(v54);
          }
        }

        CFArrayAppendValue(Mutable, v52);
        if (v52)
        {
          CFRelease(v52);
        }

        if (v51)
        {
          free(v51);
        }

        ++v45;
      }

      while (v45 < *(v42 + 40));
    }

    if (CFArrayGetCount(Mutable) == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, 0);
      CFRetain(ValueAtIndex);
    }

    else
    {
      ValueAtIndex = mmcs_cferror_create_error_with_underlying_errors(@"com.apple.mmcs", 8, @"There were errors with the chunks in the file", Mutable, 0);
    }

    if (*(v42 + 56))
    {
      v57 = ProtobufCBinaryData_CreateData((v42 + 64));
    }

    else
    {
      v57 = 0;
    }

    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    value = 0u;
    v99 = 0u;
    *&value = *(v42 + 32);
    *&v101 = v57;
    v58 = CFSetGetValue(*(*(v95 + 304) + 80), &value);
    if (v58)
    {
      v59 = v58;
      if (CFSetContainsValue(theSet, v58))
      {
        CFSetRemoveValue(theSet, v59);
        v60 = mmcs_item_copy_description(v59);
        v61 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
        {
          v89 = v60;
          v62 = CFStringCreateWithFormat(v41, 0, @"Server returned error for item %@ %@");
          v63 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            *&buf[4] = v62;
            _os_log_impl(&dword_2577D8000, v63, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v62)
          {
            CFRelease(v62);
          }
        }

        mmcs_get_item_progress_make_done_error(ValueAtIndex, buf);
        mmcs_get_request_set_progress_and_notify_items_like_item(v95, v59, buf);
      }

      else
      {
        v60 = mmcs_item_copy_description(v59);
        v66 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          v89 = ValueAtIndex;
          v67 = CFStringCreateWithFormat(v41, 0, @"Server returned file chunk error %@ for item %@ which has already been handled. Suppressing notification to client since it is likely already sent.");
          v68 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v67;
            _os_log_impl(&dword_2577D8000, v68, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }

          if (v67)
          {
            CFRelease(v67);
          }
        }
      }

      v5 = v93;
LABEL_88:
      if (v60)
      {
        CFRelease(v60);
      }

      goto LABEL_90;
    }

    v64 = mmcs_logging_logger_default();
    v5 = v93;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      v89 = v43;
      v60 = CFStringCreateWithFormat(v41, 0, @"Server referenced an item in FileGroup FileChunkError with signature %s which is not in itemsWithDistinctSignatures. This FileChunkError will be ignored.");
      v65 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v60;
        _os_log_impl(&dword_2577D8000, v65, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      goto LABEL_88;
    }

LABEL_90:
    if (v57)
    {
      CFRelease(v57);
    }

    if (v43)
    {
      free(v43);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (ValueAtIndex)
    {
      CFRelease(ValueAtIndex);
    }

    v40 = v94 + 1;
    if ((v94 + 1) >= *(v5 + 56))
    {
      goto LABEL_99;
    }
  }

  v78 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
  {
    v84 = CFStringCreateWithFormat(v41, 0, @"Invalid file signature in FileGroup FileChunkError file_checksum");
    v85 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      LODWORD(value) = 138543362;
      *(&value + 4) = v84;
      _os_log_impl(&dword_2577D8000, v85, OS_LOG_TYPE_ERROR, "%{public}@", &value, 0xCu);
    }

    if (v84)
    {
      CFRelease(v84);
    }
  }

  cf = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Invalid file signature in FileGroup FileChunkError file_checksum", v79, v80, v81, v82, v83, v89);
  v10 = 1;
LABEL_113:
  v69 = v10 ^ 1u;
LABEL_114:
  v86 = cf;
  if (a5 && v10 && cf)
  {
    CFRetain(cf);
    v86 = cf;
    *a5 = cf;
  }

  if (v86)
  {
    CFRelease(v86);
  }

  v87 = *MEMORY[0x277D85DE8];
  return v69;
}

void scheduleGetContainers(void *a1, const __CFArray *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  request_activity_marker = mmcs_request_get_request_activity_marker(a1);
  os_activity_scope_enter(request_activity_marker, &state);
  ++*(a1[38] + 32);
  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    v6 = Count;
    v7 = 0;
    alloc = *MEMORY[0x277CBECE8];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v7);
      v9 = ValueAtIndex;
      v10 = ValueAtIndex + 3;
      if (ValueAtIndex[3])
      {
        if (gMMCS_DebugLevel >= 4)
        {
          v11 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = CFStringCreateWithFormat(alloc, 0, @"using proxy transaction for container %s", *(*(v9 + 88) + 16));
            v13 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v12;
              _os_log_impl(&dword_2577D8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@", &buf, 0xCu);
            }

            if (v12)
            {
              CFRelease(v12);
            }
          }
        }

        v14 = 2;
      }

      else
      {
        v10 = ValueAtIndex + 2;
        v14 = 3;
      }

      v15 = *v10;
      *(v9 + 68) = v14;
      if (*(v15 + 48) == 1)
      {
        if (*(v9 + 64) == 2 && !mmcs_get_container_is_needed(v9))
        {
          *(v15 + 48) = 4;
          *(*(v9 + 16) + 48) = 4;
          *(v9 + 68) = 4;
        }

        else
        {
          v16 = mmcs_http_request_options_network_behavior_type(*(*(v15 + 24) + 24));
          v17 = mmcs_request_type_for_behavior_and_activity(v16, 1);
          mmcs_container_requirements(v9);
          *&buf = 0;
          *(&buf + 1) = v15;
          v18 = a1[11];
          v24 = v17;
          v25 = v18;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v26 = 0u;
          v27 = 0u;
          v32 = mmcs_container_schedule_request_callback;
          v33 = mmcs_container_cancel_request_callback;
          v34 = C3BaseRetain;
          v35 = C3BaseRelease;
          *(v15 + 48) = 2;
          Current = CFAbsoluteTimeGetCurrent();
          *(v15 + 56) = Current;
          mmcs_request_queue_enqueue_request(*(a1[4] + 48), &buf, Current);
        }
      }

      ++v7;
    }

    while (v6 != v7);
  }

  mmcs_proxy_locator_finish(a1[24]);
  --*(a1[38] + 32);
  os_activity_scope_leave(&state);
  v20 = *MEMORY[0x277D85DE8];
}

void _mmcs_item_setup_metadata_only(void *a1)
{
  if (mmcs_item_is_metadata_only(a1))
  {
    mmcs_item_setup_chunk_references(a1);
    mmcs_item_setup_item_size(a1);

    mmcs_item_setup_item_padded_size(a1);
  }
}

void __send_request_downloadFord_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    scheduleGetContainers(v2, *(v3 + 56));
  }

  else
  {
    mmcs_proxy_locator_finish(v2[24]);
  }

  if (!mmcs_get_req_has_outstanding_asynchronous_work(*(a1 + 40)))
  {
    v4 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2577D8000, v4, OS_LOG_TYPE_INFO, "Downloads complete. All done!", buf, 2u);
    }

    mmcs_get_req_context_cleanup(*(a1 + 40), 0);
    v5 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"cleaned up get request because no outstanding work left. mrc: %p", *(a1 + 40));
      v7 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v10 = v6;
        _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void mmcs_get_req_context_will_retry_auth_get_file_after_error(uint64_t a1, uint64_t a2, __CFError *a3)
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
      v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ retry auth get file after error %@", v6, v7);
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

void handle_response_authorizeGetForFiles(uint64_t a1, CFDataRef *a2, uint64_t a3)
{
  v47 = *MEMORY[0x277D85DE8];
  mmcs_http_context_uuid_hash_code(a1);
  kdebug_trace();
  if (!mmcs_http_context_is_connection_reused(a1))
  {
    kdebug_trace();
  }

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  request_activity_marker = mmcs_request_get_request_activity_marker(a3);
  os_activity_scope_enter(request_activity_marker, &state);
  v7 = mmcs_http_context_status_succeeded(a1);
  if (!a2 || !v7 || !*a2)
  {
    error = mmcs_http_context_get_error(a1);
    mmcs_get_req_context_cleanup(a3, error);
    if (!a2)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  mmcs_http_context_validate_request_uuid_with_response(a1);
  *(a3 + 120) = mmcs_get_proto_version(a1);
  *(a3 + 128) = v8;
  http_clock_skew_metrics_with_http_context = mmcs_create_http_clock_skew_metrics_with_http_context(a1);
  if (http_clock_skew_metrics_with_http_context)
  {
    v10 = http_clock_skew_metrics_with_http_context;
    mmcs_request_set_http_clock_skew_metrics(a3, http_clock_skew_metrics_with_http_context);
    CFRelease(v10);
  }

  mmcs_http_context_cleanup_response(a1);
  v11 = mmcs_server_version_compare(*(a3 + 120), *(a3 + 128), 5, 0);
  v12 = mmcs_logging_logger_default();
  if (v11 == -1)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v32 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Server version %ld.%ld not supported. Must be at least %ld.%ld", *(a3 + 120), *(a3 + 128), 5, 0, state.opaque[0], state.opaque[1]);
      v33 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v32;
        _os_log_impl(&dword_2577D8000, v33, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v32)
      {
        CFRelease(v32);
      }
    }

    v44 = *(a3 + 128);
    v34 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Server version %ld.%ld not supported. Must be at least %ld.%ld", v27, v28, v29, v30, v31, *(a3 + 120));
    mmcs_get_req_context_cleanup(a3, v34);
    if (!v34)
    {
      goto LABEL_27;
    }

    v35 = v34;
LABEL_35:
    CFRelease(v35);
    goto LABEL_27;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v19 = *MEMORY[0x277CBECE8];
    Length = CFDataGetLength(*a2);
    v20 = CFStringCreateWithFormat(v19, 0, @"Got %ld bytes");
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

  if (*(a3 + 249))
  {
    v22 = *a2;
    if (*a2)
    {
      v23 = *(a3 + 256);
      if (v23 != v22)
      {
        if (v23)
        {
          CFRelease(v23);
        }

        *(a3 + 256) = 0;
        CFRetain(v22);
        *(a3 + 256) = v22;
      }
    }
  }

  if (*(a3 + 248))
  {
    authorization_error_with_format = mmcs_cferror_create_authorization_error_with_format(*a2, @"Successfully get fetched authorization", v13, v14, v15, v16, v17, v18, Length);
    mmcs_get_req_context_cleanup(a3, authorization_error_with_format);
    if (authorization_error_with_format)
    {
      CFRelease(authorization_error_with_format);
    }

LABEL_24:
    if (*a2)
    {
      CFRelease(*a2);
    }

    *a2 = 0;
    goto LABEL_27;
  }

  *buf = 0;
  v41 = process_authorization_data(a3, *a2, buf);
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a2 = 0;
  if (!v41)
  {
    v42 = *buf;
    if (!*buf)
    {
      v42 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Failed to download chunks", v36, v37, v38, v39, v40, Length);
      *buf = v42;
    }

    mmcs_get_req_context_cleanup(a3, v42);
    v35 = *buf;
    if (*buf)
    {
      goto LABEL_35;
    }
  }

LABEL_27:
  os_activity_scope_leave(&state);
  v26 = *MEMORY[0x277D85DE8];
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void XCFRunLoopAddTimerToModes(uint64_t a1, uint64_t a2, CFArrayRef theArray)
{
  v4[0] = a1;
  v4[1] = a2;
  v5.length = CFArrayGetCount(theArray);
  v5.location = 0;
  CFArrayApplyFunction(theArray, v5, _XCFRunLoopAddTimerToModesApplier, v4);
}

void XCFRunLoopAddSourceToModes(uint64_t a1, uint64_t a2, CFArrayRef theArray)
{
  v4[0] = a1;
  v4[1] = a2;
  v5.length = CFArrayGetCount(theArray);
  v5.location = 0;
  CFArrayApplyFunction(theArray, v5, _XCFRunLoopAddSourceToModesApplier, v4);
}

void *mmcs_get_complete_create_method_completion_info(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v29 = *MEMORY[0x277D85DE8];
  request = mmcs_get_container_get_request(a1);
  MethodCompletionInfo = Create_MethodCompletionInfo(*(a1 + 40), *(*(*(a1 + 16) + 24) + 16), *(a2 + 16), *(*(a1 + 88) + 24), a3, 0, a4);
  if (MethodCompletionInfo)
  {
    vendor_http_stats = mmcs_report_create_vendor_http_stats(*(a2 + 16), 0, a3);
    reporting_level = mmcs_request_get_reporting_level(request);
    if (mmcs_report_want_report(0, reporting_level))
    {
      v12 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        if (request)
        {
          v14 = *(*(request + 304) + 128);
          if (v14)
          {
            v15 = mmcs_http_context_elapsed_seconds(v14);
            MillisStringFromAbsoluteTime = createMillisStringFromAbsoluteTime(v15);
            if (MillisStringFromAbsoluteTime)
            {
              v17 = MillisStringFromAbsoluteTime;
              CFDictionaryAddValue(Mutable, @"authorizeGetForFiles.millis", MillisStringFromAbsoluteTime);
              CFRelease(v17);
            }
          }
        }

        if (mmcs_transaction_is_proxy(a2))
        {
          CFDictionaryAddValue(Mutable, @"cachingServer.used", @"true");
          bytes_from_caching_server = mmcs_transaction_get_bytes_from_caching_server(a2);
          if (bytes_from_caching_server)
          {
            v19 = bytes_from_caching_server;
            v20 = CFStringCreateWithFormat(v12, 0, @"%llu", bytes_from_caching_server);
            if (v20)
            {
              v21 = v20;
              CFDictionaryAddValue(Mutable, @"cachingServer.bytes", v20);
              CFRelease(v21);
            }

            if (gMMCS_DebugLevel >= 5)
            {
              v22 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                v23 = CFStringCreateWithFormat(v12, 0, @"proxy get got %llu from caching server", v19);
                v24 = mmcs_logging_logger_default();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v28 = v23;
                  _os_log_impl(&dword_2577D8000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
                }

                if (v23)
                {
                  CFRelease(v23);
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
    }

    else
    {
      Mutable = 0;
    }

    MethodCompletionInfo_SetReportingProperties(MethodCompletionInfo, vendor_http_stats, Mutable);
    if (vendor_http_stats)
    {
      CFRelease(vendor_http_stats);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return MethodCompletionInfo;
}

uint64_t mmcs_perform_getComplete(uint64_t a1)
{
  v104 = *MEMORY[0x277D85DE8];
  request_activity_marker = mmcs_request_get_request_activity_marker(a1);
  v3 = _os_activity_create(&dword_2577D8000, "mmcs-get-complete", request_activity_marker, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  if (*(a1 + 144) || (v7 = *(a1 + 32), CFSetGetCount(*(*(a1 + 304) + 80)) < 1) || (v8 = *MEMORY[0x277CBECE8], (v9 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x277CBECE8], *(a1 + 160), @"getComplete", 0)) == 0))
  {
    v4 = 0;
    if (!v3)
    {
      goto LABEL_4;
    }

LABEL_3:
    os_release(v3);
    goto LABEL_4;
  }

  v10 = v9;
  v11 = malloc_type_malloc(0x40uLL, 0x10F0040790CF86CuLL);
  if (!v11)
  {
LABEL_50:
    v4 = 0;
    goto LABEL_51;
  }

  v12 = v11;
  chunkserver__method_completion_info_list__init(v11);
  *(v12 + 3) = 0;
  v13 = mmcs_get_req_context_get_get_state(a1);
  if (!v13)
  {
    goto LABEL_48;
  }

  v14 = v13;
  v79 = v7;
  Count = CFArrayGetCount(*(v13 + 40));
  if (Count < 1)
  {
    goto LABEL_48;
  }

  v16 = Count;
  v80 = v10;
  v17 = 0;
  for (i = 0; i != v16; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v14 + 40), i);
    v20 = ValueAtIndex[16];
    if (v20 != 3)
    {
      v21 = ValueAtIndex;
      if (v20 != 2 || !*(*(ValueAtIndex + 11) + 32))
      {
        v22 = *(ValueAtIndex + 3);
        if (v22)
        {
          if (*(v22 + 16))
          {
            mmcs_perform_getComplete_cold_1();
          }

          v23 = *(v22 + 40);
          if (v23)
          {
            v17 += CFArrayGetCount(v23);
          }
        }

        v24 = *(v21 + 2);
        if (v24)
        {
          if (*(v24 + 16))
          {
            mmcs_perform_getComplete_cold_2();
          }

          v25 = *(v24 + 40);
          if (v25)
          {
            v17 += CFArrayGetCount(v25);
          }
        }

        if (*(v21 + 5))
        {
          ++v17;
        }
      }
    }
  }

  if (v17 <= 0)
  {
LABEL_48:
    *(v12 + 4) = 0;
    goto LABEL_49;
  }

  v26 = malloc_type_calloc(1uLL, 8 * v17, 0x2004093837F09uLL);
  *(v12 + 4) = v26;
  if (!v26)
  {
LABEL_49:
    chunkserver__method_completion_info_list__free_unpacked(v12, 0);
    goto LABEL_50;
  }

  v27 = CFArrayGetCount(*(v14 + 40));
  if (v27 < 1)
  {
    goto LABEL_54;
  }

  v28 = v27;
  v78 = 0;
  v29 = 0;
  v77 = v27 - 1;
  do
  {
    while (1)
    {
      v30 = CFArrayGetValueAtIndex(*(v14 + 40), v29);
      v31 = v30[16];
      if (v31 == 3)
      {
        break;
      }

      v32 = v30;
      if (v31 == 2)
      {
        if (*(*(v30 + 11) + 32))
        {
          break;
        }
      }

      v33 = *(v30 + 3);
      if (v33)
      {
        if (*(v33 + 16))
        {
          mmcs_perform_getComplete_cold_3();
        }

        v34 = *(v33 + 40);
        if (v34)
        {
          v105.length = CFArrayGetCount(*(v33 + 40));
          v105.location = 0;
          CFArrayApplyFunction(v34, v105, _copy_methodCompletionInfoToList, v12);
        }
      }

      v35 = *(v32 + 16);
      if (v35)
      {
        if (*(v35 + 16))
        {
          mmcs_perform_getComplete_cold_4();
        }

        v36 = *(v35 + 40);
        if (v36)
        {
          v106.length = CFArrayGetCount(*(v35 + 40));
          v106.location = 0;
          CFArrayApplyFunction(v36, v106, _copy_methodCompletionInfoToList, v12);
        }
      }

      if (!*(v32 + 40))
      {
        break;
      }

      v37 = *(v32 + 16);
      reporting_level = mmcs_request_get_reporting_level(a1);
      method_completion_info = mmcs_get_complete_create_method_completion_info(v32, v37, reporting_level, 0);
      if (method_completion_info)
      {
        v41 = *(v12 + 3);
        v40 = *(v12 + 4);
        *(v12 + 3) = v41 + 1;
        *(v40 + 8 * v41) = method_completion_info;
        break;
      }

      v78 = 1;
      v42 = v77 == v29++;
      v10 = v80;
      if (v42)
      {
        goto LABEL_49;
      }
    }

    ++v29;
  }

  while (v28 != v29);
  v10 = v80;
  if (v78)
  {
    goto LABEL_49;
  }

LABEL_54:
  if (*(v12 + 3) != v17)
  {
    v56 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v57 = CFStringCreateWithFormat(v8, 0, @"error MethodCompletionInfoList (getComplete) creating response list");
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

    goto LABEL_49;
  }

  packed_size = chunkserver__method_completion_info_list__get_packed_size(v12);
  v44 = malloc_type_malloc(packed_size, 0x100004077774924uLL);
  chunkserver__method_completion_info_list__pack(v12, v44);
  v45 = XCFDataCreateWithBytesNoCopy(v8, v44, packed_size, *MEMORY[0x277CBECF0]);
  chunkserver__method_completion_info_list__free_unpacked(v12, 0);
  if (!v45)
  {
    goto LABEL_73;
  }

  v46 = v79[8];
  v47 = v79[10];
  dataclass = mmcs_request_get_dataclass(a1);
  http_protobuf_message = create_http_protobuf_message(v46, v47, dataclass, *(a1 + 168), *(a1 + 176), v80, v45);
  CFRelease(v45);
  if (!http_protobuf_message)
  {
    v59 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v4 = CFStringCreateWithFormat(v8, 0, @"unable to create getComplete msg");
      v60 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v4;
        _os_log_impl(&dword_2577D8000, v60, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
      }

      v10 = v80;
      if (!v4)
      {
        goto LABEL_51;
      }

      CFRelease(v4);
      goto LABEL_50;
    }

LABEL_73:
    v4 = 0;
    v10 = v80;
    goto LABEL_51;
  }

  mmcs_request_insert_headers(a1, http_protobuf_message);
  v50 = mmcs_request_get_dataclass(a1);
  if (CFStringCompare(v50, @"com.apple.Dataclass.Messenger", 1uLL) == kCFCompareEqualTo)
  {
    v51 = CFURLCopyHostName(*(a1 + 160));
    if (v51)
    {
      v52 = v51;
      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v51, @"-");
      if (ArrayBySeparatingStrings)
      {
        v54 = ArrayBySeparatingStrings;
        if (CFArrayGetCount(ArrayBySeparatingStrings) >= 2)
        {
          v55 = CFArrayGetValueAtIndex(v54, 0);
          CFHTTPMessageSetHeaderFieldValue(http_protobuf_message, @"x-apple-content-partition", v55);
        }

        CFRelease(v52);
      }

      else
      {
        v54 = v52;
      }

      CFRelease(v54);
    }
  }

  v61 = *(*(a1 + 56) + 56);
  if (v61)
  {
    v62 = CFLocaleCreate(v8, @"en_US");
    v63 = CFNumberFormatterCreate(v8, v62, kCFNumberFormatterDecimalStyle);
    StringWithNumber = CFNumberFormatterCreateStringWithNumber(v8, v63, v61);
    if (v63)
    {
      CFRelease(v63);
    }

    if (v62)
    {
      CFRelease(v62);
    }

    if (StringWithNumber)
    {
      v65 = StringWithNumber;
    }

    else
    {
      v65 = @"NULL";
    }

    CFHTTPMessageSetHeaderFieldValue(http_protobuf_message, @"mmcs_network_service_type", v65);
    if (StringWithNumber)
    {
      CFRelease(StringWithNumber);
    }
  }

  else
  {
    CFHTTPMessageSetHeaderFieldValue(http_protobuf_message, @"mmcs_network_service_type", @"NULL");
  }

  v66 = *(*(a1 + 304) + 112);
  if (!v66 || !CFArrayGetCount(*(v66 + 40)))
  {
    v69 = mmcs_logging_logger_default();
    v10 = v80;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      v4 = CFStringCreateWithFormat(v8, 0, @"no containers for get request");
      v70 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
LABEL_99:
        if (!v4)
        {
          goto LABEL_105;
        }

        CFRelease(v4);
        goto LABEL_104;
      }

      LODWORD(buf) = 138543362;
      *(&buf + 4) = v4;
LABEL_98:
      _os_log_impl(&dword_2577D8000, v70, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
      goto LABEL_99;
    }

LABEL_104:
    v4 = 0;
    goto LABEL_105;
  }

  v67 = CFArrayGetValueAtIndex(*(*(*(a1 + 304) + 112) + 40), 0);
  v10 = v80;
  if (!mmcs_get_container_http_msg_add_token_header(v67, http_protobuf_message))
  {
    v71 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      v72 = CFArrayGetValueAtIndex(*(*(*(a1 + 304) + 112) + 40), 0);
      v4 = CFStringCreateWithFormat(v8, 0, @"unable to add get container token header for container %s", *(v72[11] + 16));
      v70 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_99;
      }

      LODWORD(buf) = 138543362;
      *(&buf + 4) = v4;
      goto LABEL_98;
    }

    goto LABEL_104;
  }

  promoted_to_foreground_copy = mmcs_http_request_options_create_promoted_to_foreground_copy(*(a1 + 56));
  *&buf = @"getComplete";
  *(&buf + 1) = http_protobuf_message;
  v86 = promoted_to_foreground_copy;
  v87 = *(a1 + 96);
  v88 = 0;
  v89 = -1;
  v101 = 0;
  v91 = 0;
  v92 = 0;
  v90 = -1;
  v93 = mmcs_get_complete_will_retry_after_error;
  v94 = handle_response_getComplete;
  v95 = 0;
  v96 = 0;
  v97 = 0;
  v98 = a1;
  sparse_block_size = mmcs_engine_get_sparse_block_size();
  v100 = mmcs_engine_owner(v79);
  v102 = 0;
  v103 = v3;
  memset(v81, 0, sizeof(v81));
  mmcs_read_stream_pool_parameters_make_pool_timeout_max(v79[4], 100, v81, 90.0);
  if (!mmcs_http_context_create((*(a1 + 304) + 144), *(a1 + 140), &buf))
  {
    v73 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_115;
    }

    v4 = CFStringCreateWithFormat(v8, 0, @"unable to create getComplete http context");
    v74 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      *v83 = 138543362;
      v84 = v4;
      _os_log_impl(&dword_2577D8000, v74, OS_LOG_TYPE_ERROR, "%{public}@", v83, 0xCu);
    }

LABEL_113:
    if (!v4)
    {
      goto LABEL_116;
    }

    CFRelease(v4);
LABEL_115:
    v4 = 0;
    goto LABEL_116;
  }

  mmcs_get_req_context_setup_complete_metrics(a1, promoted_to_foreground_copy);
  mmcs_http_context_update_voucher(*(*(a1 + 304) + 144));
  mmcs_http_context_uuid_hash_code(*(*(a1 + 304) + 144));
  kdebug_trace();
  if (!mmcs_http_context_send(*(*(a1 + 304) + 144), v81, v79[7]))
  {
    v75 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_115;
    }

    v4 = CFStringCreateWithFormat(v8, 0, @"unable to send getComplete http msg");
    v76 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      *v83 = 138543362;
      v84 = v4;
      _os_log_impl(&dword_2577D8000, v76, OS_LOG_TYPE_ERROR, "%{public}@", v83, 0xCu);
    }

    v10 = v80;
    goto LABEL_113;
  }

  v4 = 1;
LABEL_116:
  if (promoted_to_foreground_copy)
  {
    C3BaseRelease(promoted_to_foreground_copy);
  }

LABEL_105:
  CFRelease(http_protobuf_message);
LABEL_51:
  CFRelease(v10);
  if (v3)
  {
    goto LABEL_3;
  }

LABEL_4:
  os_activity_scope_leave(&state);
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void mmcs_get_complete_will_retry_after_error(uint64_t a1, uint64_t a2, __CFError *a3)
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
      v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ retry get complete after error %@", v6, v7);
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

BOOL handle_response_getComplete(uint64_t a1, CFDataRef *a2, uint64_t *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  mmcs_http_context_uuid_hash_code(a1);
  kdebug_trace();
  if (!mmcs_http_context_is_connection_reused(a1))
  {
    kdebug_trace();
  }

  v6 = mmcs_http_context_status_succeeded(a1);
  if (!a2 || !v6 || !*a2)
  {
    has_http_status = mmcs_http_context_has_http_status(a1);
    v13 = mmcs_logging_logger_default();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (has_http_status)
    {
      if (!v14)
      {
        goto LABEL_22;
      }

      v15 = *MEMORY[0x277CBECE8];
      v16 = mmcs_http_context_http_status(a1);
      v17 = CFStringCreateWithFormat(v15, 0, @"GetComplete (%p) HTTP status: %d", a1, v16);
      v18 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      *buf = 138543362;
      v26 = v17;
    }

    else
    {
      if (!v14)
      {
        goto LABEL_22;
      }

      v17 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"GetComplete (%p) has no http status!", a1);
      v18 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
LABEL_20:
        if (v17)
        {
          CFRelease(v17);
        }

LABEL_22:
        if (!a2)
        {
          goto LABEL_37;
        }

        goto LABEL_34;
      }

      *buf = 138543362;
      v26 = v17;
    }

    _os_log_impl(&dword_2577D8000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    goto LABEL_20;
  }

  Length = CFDataGetLength(*a2);
  BytePtr = CFDataGetBytePtr(*a2);
  v9 = chunkserver__storage_container_error_list__unpack(0, Length, BytePtr);
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a2 = 0;
  if (!v9)
  {
    goto LABEL_36;
  }

  state = mmcs_get_req_context_get_get_state(a3);
  if (!state)
  {
    v19 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"NULL getState for hc %p get request %p", a1, a3);
    v21 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v20;
LABEL_30:
      _os_log_impl(&dword_2577D8000, v21, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

LABEL_31:
    if (v20)
    {
      CFRelease(v20);
    }

    goto LABEL_33;
  }

  v11 = state;
  if (!*(state + 40))
  {
    v22 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"NULL getState->containers for hc %p get request %p getState %p", a1, a3, v11);
    v21 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v20;
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  mmcs_get_state_process_storage_container_error_list(state, v9);
LABEL_33:
  chunkserver__storage_container_error_list__free_unpacked(v9, 0);
LABEL_34:
  if (*a2)
  {
    CFRelease(*a2);
  }

LABEL_36:
  *a2 = 0;
LABEL_37:
  result = mmcs_get_req_done_phase2(a3);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *_copy_methodCompletionInfoToList(void **a1, uint64_t a2)
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

uint64_t mmcs_get_container_create(void *a1, uint64_t *a2, uint64_t a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v43 = 0;
  result = mmcs_container_create(&v43, 2, 192);
  if (result)
  {
    request_activity_marker = mmcs_request_get_request_activity_marker(*a2);
    v8 = _os_activity_create(&dword_2577D8000, "mmcs-get-container", request_activity_marker, OS_ACTIVITY_FLAG_DEFAULT);
    v9 = v43;
    v43[10] = v8;
    v10 = v9[11];
    *v10 = a2;
    v11 = *(a3 + 32);
    v12 = *(a3 + 64);
    v13 = v11 + v12;
    if (__CFADD__(v11, v12))
    {
      v14 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Sum of the number of chunk infos and the number of container elements will overflow");
        v16 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v45 = v15;
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      goto LABEL_31;
    }

    if (v11 && v12)
    {
      v17 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Cannot have both chunk infos and container elements");
        v16 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v45 = v15;
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      goto LABEL_31;
    }

    if (v11)
    {
      if (v13)
      {
        v18 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2577D8000, v18, OS_LOG_TYPE_FAULT, "Cannot have chunk infos in MMCS Protocol version 5 download.", buf, 2u);
        }

        goto LABEL_31;
      }

      goto LABEL_22;
    }

    if (!v12)
    {
      v21 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Cannot have neither chunk infos or container elements");
        v16 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v45 = v15;
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      goto LABEL_31;
    }

    if (!v13)
    {
LABEL_22:
      v20 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Cannot have zero container chunk instances");
        v16 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v45 = v15;
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      goto LABEL_31;
    }

    *(v10 + 56) = v13;
    if (v13 >> 62)
    {
      v19 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Overflow detected in computing the size of memory to be allocated for containerIndexForMessageIndex.");
        v16 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v45 = v15;
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      goto LABEL_31;
    }

    v23 = malloc_type_calloc(1uLL, 4 * v13, 0x100004052888210uLL);
    *(v10 + 72) = v23;
    if (!v23)
    {
      v25 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Allocation failure");
        v16 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v45 = v15;
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      goto LABEL_31;
    }

    if (*(a3 + 32))
    {
      v24 = **(a3 + 40) + 24;
    }

    else
    {
      v26 = **(a3 + 72);
      if (!v26)
      {
        v40 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Missing container element.");
          v16 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v45 = v15;
            goto LABEL_28;
          }

          goto LABEL_29;
        }

        goto LABEL_31;
      }

      v27 = *(v26 + 24);
      if (v27)
      {
        v24 = v27 + 24;
      }

      else
      {
        v24 = 0;
      }
    }

    *v23 = 0;
    ++*(v10 + 40);
    if (v13 != 1)
    {
      v28 = 0;
      for (i = 1; v13 != i; ++i)
      {
        if (*(a3 + 32))
        {
          v30 = *(*(a3 + 40) + 8 * i) + 24;
          if (!v24)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v31 = *(*(a3 + 72) + 8 * i);
          if (!v31)
          {
            v42 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Missing container element.");
              v16 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v45 = v15;
LABEL_28:
                _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
              }

              goto LABEL_29;
            }

            goto LABEL_31;
          }

          v32 = *(v31 + 24);
          if (v32)
          {
            v30 = v32 + 24;
          }

          else
          {
            v30 = 0;
          }

          if (!v24)
          {
LABEL_57:
            v23[i] = ++v28;
            ++*(v10 + 40);
            v24 = v30;
            continue;
          }
        }

        if (!v30)
        {
          goto LABEL_57;
        }

        v33 = ProtobufCBinaryData_Equals(v24, v30);
        v23 = *(v10 + 72);
        if (!v33)
        {
          goto LABEL_57;
        }

        v23[i] = v28;
      }
    }

    *(v10 + 48) = 0;
    *(v10 + 8) = 0;
    v34 = *(a3 + 48);
    if (v34)
    {
      *(v10 + 16) = strdup(v34);
    }

    v35 = *(a3 + 56);
    if (v35)
    {
      *(v10 + 24) = strdup(v35);
    }

    *(v10 + 32) = 0;
    if (*(a3 + 80) && (*(a3 + 88) & 1) != 0)
    {
      *(v10 + 32) = 1;
    }

    *(v10 + 80) = 0;
    *(v10 + 96) = 0;
    *(v10 + 104) = 0;
    *(v10 + 88) = 0;
    *(v10 + 180) = 1;
    *(v10 + 144) = 0u;
    *(v10 + 160) = 0u;
    v36 = *(v10 + 40);
    if (!is_mul_ok(v36, 0x68uLL))
    {
      v37 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Overflow detected in computing the size of container instances to be allocated");
        v16 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v45 = v15;
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      goto LABEL_31;
    }

    v38 = 104 * v36;
    v39 = malloc_type_malloc(104 * v36, 0x1060040917B5EB5uLL);
    *(v10 + 120) = v39;
    if (v39)
    {
      bzero(v39, v38);
      C3BaseRetain(**v10);
      *a1 = v43;
      result = 1;
    }

    else
    {
      v41 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"malloc");
        v16 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v45 = v15;
          goto LABEL_28;
        }

LABEL_29:
        if (v15)
        {
          CFRelease(v15);
        }
      }

LABEL_31:
      result = v43;
      if (v43)
      {
        C3BaseRelease(v43);
        result = 0;
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void mmcs_get_container_create_proxy_transaction(uint64_t a1, const __CFURL *a2, const __CFBoolean *a3)
{
  if (*(*(a1 + 88) + 180))
  {
    _mmcs_container_create_proxy_transaction_impl(a1, a2, a3);
  }
}

uint64_t mmcs_get_container_get_request(uint64_t a1)
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

void mmcs_get_container_invalidate(uint64_t a1)
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

  v4 = *(v2 + 152);
  if (v4)
  {
    C3BaseRelease(v4);
  }

  *(v2 + 152) = 0;
  v5 = *(v2 + 160);
  if (v5)
  {
    C3BaseRelease(v5);
  }

  *(v2 + 160) = 0;
  v6 = *(v2 + 144);
  if (v6)
  {
    C3BaseRelease(v6);
  }

  *(v2 + 144) = 0;

  mmcs_container_invalidate_transactions(a1);
}

uint64_t mmcs_get_container_container_index_for_message_index(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 88);
  if (*(v2 + 56) <= a2)
  {
    mmcs_get_container_container_index_for_message_index_cold_1();
  }

  return *(*(v2 + 72) + 4 * a2);
}

uint64_t mmcs_get_container_http_msg_add_token_header(uint64_t a1, __CFHTTPMessage *a2)
{
  result = 0;
  v19 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    v5 = *(a1 + 88);
    if (!v5)
    {
      goto LABEL_20;
    }

    result = *(v5 + 16);
    if (result)
    {
      v6 = *(v5 + 24);
      if (!v6)
      {
        v10 = mmcs_logging_logger_default();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_14;
        }

        v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Missing token for container %s", *(v5 + 16));
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

      v7 = mmcs_item_copy_token_header_value(result, 0, v6, 0, 0);
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

      v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to create token header for get container %s", *(v5 + 16));
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

LABEL_20:
      result = 0;
    }
  }

LABEL_21:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mmcs_get_container_add_ford_instance(uint64_t a1, int a2, unint64_t *a3, uint64_t a4, CFErrorRef *a5)
{
  v50 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    *a5 = 0;
  }

  v9 = *(a1 + 88);
  v10 = v9[6];
  if (v10 > v9[5])
  {
    v11 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"instance count overflow");
      v13 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v49 = v12;
        _os_log_impl(&dword_2577D8000, v13, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v12)
      {
        CFRelease(v12);
      }
    }

    if (a5)
    {
      v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"<get_container %p>", a1);
      v47 = v9[5];
      *a5 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Chunk instance overflow in container %@ with capacity %ld", v15, v16, v17, v18, v19, v14);
      if (v14)
      {
        CFRelease(v14);
      }
    }

    goto LABEL_12;
  }

  if (!a3)
  {
    if (!v10)
    {
      v21 = 0;
      goto LABEL_46;
    }

    v37 = v9[15] + 104 * v10;
    v38 = *(v37 - 72);
    v21 = v38 + mmcs_chunk_instance_get_length((v37 - 104));
    if (gMMCS_DebugLevel < 5)
    {
      goto LABEL_46;
    }

    v39 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_46;
    }

    container_copy_simple_description = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Inferring chunk instance offset %lld", v21);
    v41 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v49 = container_copy_simple_description;
      _os_log_impl(&dword_2577D8000, v41, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    goto LABEL_42;
  }

  v21 = *a3;
  if (gMMCS_DebugLevel >= 5)
  {
    v22 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v46 = v21;
      v23 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Setting explicit chunk instance offset %lld");
      v24 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v49 = v23;
        _os_log_impl(&dword_2577D8000, v24, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v23)
      {
        CFRelease(v23);
      }
    }
  }

  v25 = v9[6];
  if (!v25)
  {
    if (!v21)
    {
      v9[16] = 0;
      goto LABEL_46;
    }

    v9[16] = v21;
    if (gMMCS_DebugLevel < 5)
    {
LABEL_46:
      mmcs_chunk_instance_init_with_file_opaque_reference_length(v9[15] + 104 * v9[6], v21, v9[6], a2, a4);
      ++v9[6];
      result = 1;
      goto LABEL_47;
    }

    container_copy_simple_description = mmcs_get_container_copy_simple_description(a1);
    if (gMMCS_DebugLevel >= 5)
    {
      v42 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        v43 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Preparing for %ld bytes to ignore in container %@", v9[16], container_copy_simple_description);
        v44 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v49 = v43;
          _os_log_impl(&dword_2577D8000, v44, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v43)
        {
          CFRelease(v43);
        }
      }
    }

LABEL_42:
    if (container_copy_simple_description)
    {
      CFRelease(container_copy_simple_description);
    }

    goto LABEL_46;
  }

  v26 = v9[15] + 104 * v25;
  v27 = *(v26 - 72);
  if (v21 >= v27 + mmcs_chunk_instance_get_length((v26 - 104)))
  {
    goto LABEL_46;
  }

  v28 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v34 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Chunk cannot go backward!");
    v35 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v49 = v34;
      _os_log_impl(&dword_2577D8000, v35, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v34)
    {
      CFRelease(v34);
    }
  }

  if (a5)
  {
    v36 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"Chunk cannot go backward!", v29, v30, v31, v32, v33, v46);
    result = 0;
    *a5 = v36;
    goto LABEL_47;
  }

LABEL_12:
  result = 0;
LABEL_47:
  v45 = *MEMORY[0x277D85DE8];
  return result;
}

CFStringRef mmcs_get_container_copy_simple_description(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(*(*(a1 + 16) + 24) + 16);
  if (!v2)
  {
    return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s", *(v1 + 16));
  }

  v3 = CFHTTPMessageCopyHeaderFieldValue(v2, @"Range");
  if (!v3)
  {
    return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s", *(v1 + 16));
  }

  v4 = v3;
  v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s(%@)", *(v1 + 16), v3);
  CFRelease(v4);
  return v5;
}

uint64_t mmcs_get_container_add_chunk_instance(uint64_t a1, int a2, unint64_t *a3, _BYTE *a4, uint64_t *a5, _BYTE *a6, CFErrorRef *a7)
{
  v63 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    *a7 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v12 = *(a1 + 88);
  if (*(v12 + 48) > *(v12 + 40))
  {
    v13 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"instance count overflow");
      v15 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v62 = v14;
        _os_log_impl(&dword_2577D8000, v15, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }

    if (a7)
    {
      v16 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"<get_container %p>", a1);
      v60 = *(v12 + 40);
      *a7 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Chunk instance overflow in container %@ with capacity %ld", v17, v18, v19, v20, v21, v16);
      if (v16)
      {
        CFRelease(v16);
      }
    }

LABEL_67:
    result = 0;
    goto LABEL_68;
  }

  chunk_reference = mmcs_get_req_get_or_create_chunk_reference(**v12, a2, a4, 0, a6);
  if (!chunk_reference)
  {
    v40 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"create chunk reference");
      v42 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v62 = v41;
        _os_log_impl(&dword_2577D8000, v42, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v41)
      {
        CFRelease(v41);
      }
    }

    if (!a7)
    {
      goto LABEL_67;
    }

    v39 = @"Unable to create chunk reference";
LABEL_66:
    v57 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, v39, v32, v33, v34, v35, v36, v59);
    result = 0;
    *a7 = v57;
    goto LABEL_68;
  }

  v23 = chunk_reference;
  if (a3)
  {
    v24 = *a3;
    if (gMMCS_DebugLevel >= 5)
    {
      v25 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        LOBYTE(v59) = v24;
        v26 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Setting explicit chunk instance offset %lld");
        v27 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v62 = v26;
          _os_log_impl(&dword_2577D8000, v27, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v26)
        {
          CFRelease(v26);
        }
      }
    }

    v28 = *(v12 + 48);
    if (v28)
    {
      v29 = *(v12 + 120) + 104 * v28;
      v30 = *(v29 - 72);
      if (v24 < v30 + mmcs_chunk_instance_get_length((v29 - 104)))
      {
        v31 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v37 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Chunk cannot go backward!");
          v38 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v62 = v37;
            _os_log_impl(&dword_2577D8000, v38, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v37)
          {
            CFRelease(v37);
          }
        }

        if (!a7)
        {
          goto LABEL_67;
        }

        v39 = @"Chunk cannot go backward!";
        goto LABEL_66;
      }

      goto LABEL_55;
    }

    if (!v24)
    {
      *(v12 + 128) = 0;
      goto LABEL_55;
    }

    *(v12 + 128) = v24;
    if (gMMCS_DebugLevel < 5)
    {
      goto LABEL_55;
    }

    container_copy_simple_description = mmcs_get_container_copy_simple_description(a1);
    if (gMMCS_DebugLevel >= 5)
    {
      v49 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        v59 = *(v12 + 128);
        v50 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Preparing for %ld bytes to ignore in container %@");
        v51 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v62 = v50;
          _os_log_impl(&dword_2577D8000, v51, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v50)
        {
          CFRelease(v50);
        }
      }
    }

LABEL_51:
    if (container_copy_simple_description)
    {
      CFRelease(container_copy_simple_description);
    }

    goto LABEL_55;
  }

  v43 = *(v12 + 48);
  if (!v43)
  {
    v24 = 0;
    goto LABEL_55;
  }

  v44 = *(v12 + 120) + 104 * v43;
  v45 = *(v44 - 72);
  v24 = v45 + mmcs_chunk_instance_get_length((v44 - 104));
  if (gMMCS_DebugLevel >= 5)
  {
    v46 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      LOBYTE(v59) = v24;
      container_copy_simple_description = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Inferring chunk instance offset %lld");
      v48 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v62 = container_copy_simple_description;
        _os_log_impl(&dword_2577D8000, v48, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      goto LABEL_51;
    }
  }

LABEL_55:
  if (!mmcs_chunk_instance_init(*(v12 + 120) + 104 * *(v12 + 48), v23, v24, *(v12 + 48), 0))
  {
    v54 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs_chunk_instance_init");
      v56 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v62 = v55;
        _os_log_impl(&dword_2577D8000, v56, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v55)
      {
        CFRelease(v55);
      }
    }

    if (!a7)
    {
      goto LABEL_67;
    }

    v39 = @"Unable to init chunk instance";
    goto LABEL_66;
  }

  v52 = *(v12 + 48);
  *(*(v12 + 120) + 104 * v52 + 64) = a2;
  if (a5)
  {
    *a5 = v23;
  }

  *(v12 + 48) = v52 + 1;
  result = 1;
LABEL_68:
  v58 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mmcs_get_container_requirements@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = mmcs_http_request_options_network_behavior_type(*(*(a2 + 24) + 24));
  v7 = mmcs_request_type_for_behavior_and_activity(v6, 1);
  *a3 = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[1] = 0u;
  mmcs_http_request_make_request_requirements(*(a2 + 24), a3);
  result = mmcs_get_container_get_body_size(a1);
  *(a3 + v7 + 2) = result;
  return result;
}

uint64_t mmcs_get_container_get_body_size(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = v1[8];
  if (!v2)
  {
    if (v1[6])
    {
      v3 = 0;
      v4 = 0;
      v2 = 0;
      do
      {
        v5 = v1[15];
        if (v4)
        {
          v6 = v5 + v3;
          v7 = *(v6 + 32);
          v8 = *(v6 - 72);
          v9 = v7 - (v8 + mmcs_chunk_instance_get_length((v6 - 104)));
          v5 = v1[15];
        }

        else
        {
          v9 = *(v5 + 32);
        }

        v2 += v9 + mmcs_chunk_instance_get_length((v5 + v3));
        ++v4;
        v3 += 104;
      }

      while (v4 < v1[6]);
    }

    else
    {
      v2 = 0;
    }

    v1[8] = v2;
  }

  return v2;
}

__CFSet *mmcs_get_container_copy_chunk_reference_set(uint64_t a1)
{
  Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &chunkReferenceSignatureEqualitySetCallbacks);
  v3 = *(a1 + 88);
  if (*(v3 + 48))
  {
    v4 = 0;
    v5 = 56;
    do
    {
      v6 = *(v3 + 120);
      if (mmcs_chunk_instance_is_chunk_reference((v6 + v5 - 56)))
      {
        CFSetSetValue(Mutable, *(v6 + v5));
      }

      ++v4;
      v5 += 104;
    }

    while (v4 < *(v3 + 48));
  }

  return Mutable;
}

BOOL mmcs_get_container_is_body_complete(uint64_t a1, CFErrorRef *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 88);
  if (a2)
  {
    *a2 = 0;
  }

  body_size = mmcs_get_container_get_body_size(a1);
  v6 = *(v4 + 104);
  if (body_size != v6)
  {
    v7 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *MEMORY[0x277CBECE8];
      v9 = mmcs_get_container_get_body_size(a1);
      v10 = CFStringCreateWithFormat(v8, 0, @"Expected body of %lu; got %lu", v9, *(v4 + 104));
      v11 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v22 = v10;
        _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }

    if (a2)
    {
      v12 = mmcs_get_container_get_body_size(a1);
      v20 = *(v4 + 104);
      *a2 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 38, @"The expected size of the container get (%lu) didn't match the number of bytes received (%lu).", v13, v14, v15, v16, v17, v12);
    }
  }

  result = body_size == v6;
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mmcs_get_container_process_data(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, CFErrorRef *a6)
{
  v10 = a1;
  v382 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 88);
  v12 = *(v11 + 128);
  if (v12)
  {
    if (v12 >= a4)
    {
      v13 = a4;
    }

    else
    {
      v13 = *(v11 + 128);
    }

    if (gMMCS_DebugLevel >= 4)
    {
      container_copy_simple_description = mmcs_get_container_copy_simple_description(a1);
      v15 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        LOBYTE(v298) = v13;
        v16 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Ignored next %ld bytes in container %@");
        v17 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = v16;
          _os_log_impl(&dword_2577D8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        v10 = a1;
        if (v16)
        {
          CFRelease(v16);
        }
      }

      if (container_copy_simple_description)
      {
        CFRelease(container_copy_simple_description);
      }
    }

    *(v11 + 128) -= v13;
    *(v11 + 104) += v13;
  }

  else
  {
    v13 = 0;
  }

  v18 = (a4 - v13);
  if (a4 <= v13)
  {
    v30 = 1;
    goto LABEL_408;
  }

  v321 = a6;
  if (gMMCS_DebugLevel >= 5)
  {
    v19 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      LOBYTE(v298) = a4 - v13;
      v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Processing %ld bytes of container");
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
  }

  error = 0;
  v22 = v10[11];
  if (mmcs_request_is_container_interrupted_mode(**v22))
  {
    v23 = v18 + *(v22 + 104);
    if (v23 > (mmcs_get_container_get_body_size(v10) * 0.1))
    {
      v320 = v18;
      v29 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Simulate a container failure after making around 10 percent progress.", v24, v25, v26, v27, v28, v298);
      v351 = 0;
LABEL_25:
      v323 = 0;
      error = v29;
      goto LABEL_26;
    }
  }

  if (!v18 || (v32 = *(v22 + 88), v32 >= *(v22 + 48)))
  {
    *(v22 + 104) += v18;
    v30 = 1;
LABEL_406:
    v31 = error;
    if (error)
    {
      goto LABEL_407;
    }

    goto LABEL_408;
  }

  v33 = 0;
  v351 = 0;
  v352 = a3 + v13;
  allocator = *MEMORY[0x277CBECE8];
  v315 = *MEMORY[0x277CBECF0];
  v323 = 1;
  v319 = a2;
  v320 = v18;
  v34 = v18;
  while (1)
  {
    v35 = *(v22 + 120) + 104 * v32;
    length = mmcs_chunk_instance_get_length(v35);
    v37 = length;
    v38 = *(v22 + 96);
    v39 = length - v38;
    v40 = v39 >= v34 ? v34 : length - v38;
    v41 = (v352 + v33);
    if (*v35 != 1)
    {
      break;
    }

    v355 = (v352 + v33);
    state_all_outstanding_chunk_references_contains_chunk = mmcs_get_state_all_outstanding_chunk_references_contains_chunk(*v22, *(v35 + 56));
    v330 = state_all_outstanding_chunk_references_contains_chunk == 0;
    v348 = state_all_outstanding_chunk_references_contains_chunk;
    if (state_all_outstanding_chunk_references_contains_chunk)
    {
      if (!*(v22 + 112))
      {
        v76 = mmcs_chunk_instance_chunk_coder_create(v35, 2);
        *(v22 + 112) = v76;
        if (!v76)
        {
          v92 = @"no chunk coder";
          goto LABEL_146;
        }
      }

      if (gMMCS_DebugLevel >= 5)
      {
        v77 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
        {
          v336 = v33;
          v78 = v39;
          v79 = v40;
          v80 = v34;
          v81 = v35;
          v82 = v79;
          LOBYTE(v298) = v355;
          v83 = CFStringCreateWithFormat(allocator, 0, @"decrypting %p len %lu (of buffer %p)");
          v84 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            *&buf[4] = v83;
            _os_log_impl(&dword_2577D8000, v84, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          v35 = v81;
          v34 = v80;
          v40 = v82;
          v39 = v78;
          v33 = v336;
          if (v83)
          {
            CFRelease(v83);
          }
        }

        v85 = v37 == v38 || gMMCS_DebugLevel < 5;
        if (!v85)
        {
          v86 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
          {
            v342 = v39;
            v87 = v34;
            v88 = v35;
            LOBYTE(v298) = *v355;
            v299 = v355[v40 - 1];
            v89 = CFStringCreateWithFormat(allocator, 0, @"%u %u");
            v90 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              *&buf[4] = v89;
              _os_log_impl(&dword_2577D8000, v90, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
            }

            v35 = v88;
            v34 = v87;
            v39 = v342;
            if (v89)
            {
              CFRelease(v89);
            }
          }
        }
      }

      v91 = *(v22 + 112);
      if (!CKChunkCoderUpdate())
      {
        v92 = @"CKChunkCoderUpdate";
LABEL_146:
        v323 = 0;
        error = mmcs_cferror_create_error(@"com.apple.mmcs", 22, v92);
        goto LABEL_307;
      }
    }

    else
    {
      *(v22 + 136) += v40;
    }

    v95 = *(*(v35 + 56) + 32);
    if (v95)
    {
      v343 = v39;
      v327 = v40;
      theDicta = v34;
      v359 = v35;
      v337 = v33;
      v96 = v10[11];
      v97 = *(v96[15] + 104 * v96[11] + 56);
      keya = *(v97 + 32);
      if (keya)
      {
        if (v37 == v38)
        {
          mmcs_get_container_process_data_cold_2();
        }

        v98 = *(v97 + 4);
        v99 = v96[21];
        v85 = v98 > v99;
        v100 = v98 - v99;
        if (!v85)
        {
          mmcs_get_container_process_data_cold_1();
        }

        v101 = *v95 << 10;
        v102 = v100 < v327 || v343 <= theDicta;
        if (v100 >= v327)
        {
          v103 = v327;
        }

        else
        {
          v103 = v100;
        }

        v104 = v355;
        while (1)
        {
          if (!v96[18])
          {
            if (!v96[19])
            {
              CKChunkDigestArgumentsV1Create();
              v105 = v96[21];
            }

            *(v97 + 4);
            CKSchemeAndSignatureSize();
            v10 = a1;
            if (!CKChunkDigestResultsCreate())
            {
              goto LABEL_161;
            }

            v106 = v96[19];
            if (!CKChunkSignatureGeneratorCreate() || !v96[18])
            {
              goto LABEL_161;
            }

            v99 = v96[21];
          }

          v107 = v99 % v101;
          v108 = v107 + v103 >= v101 || v102;
          if ((v108 & 1) == 0)
          {
            CKChunkSignatureGeneratorUpdate();
            v96[21] += v103;
            goto LABEL_161;
          }

          v109 = (v101 - v107);
          v110 = v103 >= v109 ? v109 : v103;
          v364 = 0;
          CKChunkSignatureGeneratorUpdate();
          v111 = v96[18];
          v112 = v96[20];
          if (!CKChunkSignatureGeneratorFinish())
          {
            break;
          }

          if (v364)
          {
            C3BaseRelease(v364);
          }

          v364 = 0;
          v113 = v96[18];
          if (v113)
          {
            C3BaseRelease(v113);
          }

          v96[18] = 0;
          v114 = v96[20];
          if (v114)
          {
            C3BaseRelease(v114);
          }

          v99 = v96[21] + v110;
          if (v102)
          {
            v99 = 0;
          }

          v96[20] = 0;
          v96[21] = v99;
          v104 += v110;
          v103 -= v110;
          if (!v103)
          {
            goto LABEL_161;
          }
        }

        v119 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
        {
          v120 = CFStringCreateWithFormat(allocator, 0, @"CKChunkSignatureGeneratorFinish failed\n");
          v121 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v120;
            _os_log_impl(&dword_2577D8000, v121, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v120)
          {
            CFRelease(v120);
          }
        }

        if (v364)
        {
          C3BaseRelease(v364);
        }

        v364 = 0;
        v122 = v96[18];
        if (v122)
        {
          C3BaseRelease(v122);
        }

        v96[18] = 0;
        v123 = v96[20];
        if (v123)
        {
          C3BaseRelease(v123);
        }

        v96[20] = 0;
      }

LABEL_161:
      v40 = v327;
      v115 = keya != 0;
      v34 = theDicta;
      v33 = v337;
      v35 = v359;
      v39 = v343;
    }

    else
    {
      v115 = 1;
    }

    v124 = v39 <= v34;
    if (!v348)
    {
      v124 = 0;
    }

    v351 |= v124;
    if (v39 <= v34 || !v115)
    {
      v125 = *(v22 + 112) && CKChunkCoderFinish() || v330;
      v126 = v115 & v125;
      if ((v115 & v125) == 1 && error)
      {
        CFRelease(error);
        error = 0;
      }

      v127 = *(v22 + 112);
      if (v127)
      {
        C3BaseRelease(v127);
      }

      *(v22 + 112) = 0;
      if ((v126 & 1) == 0)
      {
        v360 = v35;
        v286 = mmcs_chunk_signature_to_hexstring(*(*(v35 + 56) + 8));
        v289 = mmcs_get_container_copy_simple_description(v10);
        v290 = *(v319 + 16);
        if (v290)
        {
          request_message = mmcs_http_context_get_request_message(v290);
          v292 = *(v319 + 16);
          if (v292)
          {
            response_message = mmcs_http_context_get_response_message(v292);
LABEL_416:
            v294 = error;
            v295 = *(v22 + 88);
            v296 = *(v360 + 32);
            if (v115)
            {
              v297 = @"Chunk data verification failed for chunk %s in container %@ at chunk index %lu at offset %llu length %u (relative to the container's range)";
            }

            else
            {
              v297 = @"Subchunk data verification failed for chunk %s in container %@ at chunk index %lu at offset %llu length %u (relative to the container's range)";
            }

            v300 = *(*(v360 + 56) + 4);
            error = mmcs_cferror_create_with_request_response_and_format(@"com.apple.mmcs", 11, request_message, response_message, error, v297, v287, v288, v286);
            if (v286)
            {
              free(v286);
            }

            if (v289)
            {
              CFRelease(v289);
            }

            if (v294)
            {
              CFRelease(v294);
            }

            goto LABEL_425;
          }
        }

        else
        {
          request_message = 0;
        }

        response_message = 0;
        goto LABEL_416;
      }
    }

    v128 = mmcs_chunk_instance_get_length(v35);
    v129 = *(v22 + 96);
    if (v129 < v128)
    {
      mmcs_get_state_process_chunk_with_padding(*v22, v10, *(v35 + 56), v129, v355, v40);
    }

LABEL_307:
    v93 = (v34 - v40);
    v33 += v40;
    *(v22 + 96) += v40;
    if (v39 <= v34)
    {
      if (*(mmcs_chunk_instance_offset(**v22) + 170))
      {
        v229 = mmcs_chunk_instance_offset(**v22);
        v230 = mmcs_chunk_instance_get_length(v35);
        mmcs_engine_add_bytes_got(v229, v230);
        v231 = mmcs_chunk_instance_offset(**v22);
        mmcs_engine_commit_if_over_threshold(v231);
      }

      v232 = *(v22 + 88) + 1;
      if (v232 < *(v22 + 48))
      {
        v233 = *(v22 + 120);
        v234 = v33;
        v235 = *(v35 + 32);
        v236 = v235 + mmcs_chunk_instance_get_length(v35);
        v33 = v234;
        v237 = *(v233 + 104 * v232 + 32);
        if (v236 < v237)
        {
          v238 = *(v35 + 32);
          v239 = (v237 - (v238 + mmcs_chunk_instance_get_length(v35)));
          *(v22 + 128) = v239;
          v240 = gMMCS_DebugLevel;
          if (gMMCS_DebugLevel > 4)
          {
            v241 = mmcs_get_container_copy_simple_description(v10);
            if (gMMCS_DebugLevel >= 5)
            {
              v242 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v242, OS_LOG_TYPE_DEBUG))
              {
                v298 = *(v22 + 128);
                v243 = CFStringCreateWithFormat(allocator, 0, @"Ignoring next %ld bytes in container %@");
                v244 = mmcs_logging_logger_default();
                if (os_log_type_enabled(v244, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543362;
                  *&buf[4] = v243;
                  _os_log_impl(&dword_2577D8000, v244, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
                }

                v33 = v234;
                if (v243)
                {
                  CFRelease(v243);
                }
              }
            }

            if (v241)
            {
              CFRelease(v241);
            }

            v240 = gMMCS_DebugLevel;
            v239 = *(v22 + 128);
          }

          if (v239 >= v93)
          {
            v245 = v93;
          }

          else
          {
            v245 = v239;
          }

          if (v240 >= 4)
          {
            v246 = mmcs_get_container_copy_simple_description(a1);
            v247 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v247, OS_LOG_TYPE_DEBUG))
            {
              LOBYTE(v298) = v245;
              v248 = CFStringCreateWithFormat(allocator, 0, @"Ignored next %ld bytes in container %@");
              v249 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v249, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                *&buf[4] = v248;
                _os_log_impl(&dword_2577D8000, v249, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
              }

              v33 = v234;
              if (v248)
              {
                CFRelease(v248);
              }
            }

            if (v246)
            {
              CFRelease(v246);
            }
          }

          *(v22 + 128) -= v245;
          v93 = (v93 - v245);
          v33 += v245;
          v10 = a1;
        }
      }

      v94 = 0;
      ++*(v22 + 88);
      goto LABEL_335;
    }

LABEL_336:
    v34 = v93;
    v32 = *(v22 + 88);
    v250 = *(v22 + 48);
    if (v32 == v250)
    {
      goto LABEL_26;
    }

    if (*(v10[11] + 176) != 2)
    {
      if (!mmcs_get_state_has_files_which_still_needs_container(*v22, v10))
      {
        v29 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 34, @"Container %s is no longer needed.", v251, v252, v253, v254, v255, *(v22 + 16));
        goto LABEL_25;
      }

      v32 = *(v22 + 88);
      v250 = *(v22 + 48);
    }

    if (v32 >= v250 || !v93)
    {
      goto LABEL_26;
    }
  }

  if (*v35 != 3)
  {
    mmcs_get_container_process_data_cold_6();
  }

  Mutable = *(v35 + 88);
  if (!Mutable)
  {
    Mutable = CFDataCreateMutable(allocator, *(v35 + 96));
    v41 = (v352 + v33);
    *(v35 + 88) = Mutable;
  }

  CFDataAppendBytes(Mutable, v41, v40);
  if (v39 > v34)
  {
    v93 = (v34 - v40);
    v33 += v40;
    v94 = *(v22 + 96) + v40;
LABEL_335:
    *(v22 + 96) = v94;
    goto LABEL_336;
  }

  v43 = v10[11];
  v44 = *(v35 + 8);
  v363 = 0;
  v358 = v35;
  if (!v44)
  {
    v116 = mmcs_logging_logger_default();
    v117 = 1;
    if (os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2577D8000, v116, OS_LOG_TYPE_INFO, "Unneeded FORD downloaded.", buf, 2u);
      v118 = v363;
      if (v363)
      {
        goto LABEL_281;
      }

      error = 0;
      v10 = a1;
      goto LABEL_305;
    }

    goto LABEL_285;
  }

  v45 = v44[7];
  v46 = *(v35 + 88);
  v47 = PCSMMCSCopyDecryptedData();
  v48 = *(v35 + 88);
  if (v48)
  {
    CFRelease(v48);
  }

  *(v35 + 88) = 0;
  if (!v47)
  {
    v354 = "Unable to Decrypt FORD";
    v347 = 42;
    goto LABEL_283;
  }

  key = v44;
  v49 = CFDataGetLength(v47);
  BytePtr = CFDataGetBytePtr(v47);
  v51 = opaque__file_reference_data__unpack(0, v49, BytePtr);
  if (!v51)
  {
    v117 = 0;
    v354 = "Unable to Decode Protobuf";
    v347 = 43;
    goto LABEL_279;
  }

  v329 = v51;
  theDict = v34;
  v52 = v51[3];
  if (!v52)
  {
    v130 = v51[4];
    if (v130)
    {
      v34 = theDict;
      if (*(v130 + 5))
      {
        v131 = v10[11];
        v132 = XCFDataCreateWithBytesNoCopy(allocator, *(v130 + 4), *(v130 + 3), v315);
        v133 = v130;
        v134 = v132;
        v133[3] = 0;
        v133[4] = 0;
        v302 = v133;
        v135 = *(v358 + 8);
        if (!*(v135 + 400))
        {
          mmcs_item_set_file_verification_key(v135, v134);
        }

        if (v134)
        {
          CFRelease(v134);
        }

        Value = CFDictionaryGetValue(*(*v131 + 104), *(v358 + 8));
        if (!Value)
        {
          mmcs_get_container_process_data_cold_4();
        }

        v136 = v302;
        v137 = v302[5];
        if (!v137)
        {
          v354 = 0;
          v347 = 0;
          v51 = v329;
          goto LABEL_351;
        }

        v138 = 0;
        v139 = 0;
        v140 = 0;
        v338 = v33;
        v341 = v39;
        v326 = v40;
        v316 = v43;
        v305 = v47;
        while (1)
        {
          v141 = *(v136[6] + 8 * v140);
          if (*(v141 + 24) != 4)
          {
            break;
          }

          v142 = **(v141 + 32);
          if (!v142)
          {
            v347 = 45;
            v354 = "Chunk Length Cannot Have Zero Bytes";
            v34 = theDict;
            goto LABEL_277;
          }

          if (*(v141 + 40))
          {
            v143 = 0;
            v303 = (&v140->isa + 1);
            v144 = 104 * v139;
            v356 = *(v136[6] + 8 * v140);
            do
            {
              v145 = *(*(v358 + 8) + 272);
              v146 = *(*(v141 + 48) + 8 * v143);
              v147 = v145 + v144;
              v148 = *(v145 + v144 + 56);
              if (!*(v148 + 16))
              {
                *(v148 + 16) = *(v146 + 32);
                *(v146 + 32) = 0;
              }

              if (gMMCS_DebugLevel >= 4 && (v142 != *(v148 + 4) || v138 != *(v145 + v144 + 32)))
              {
                v349 = mmcs_file_signature_to_hexstring(*Value[1]);
                v312 = mmcs_chunk_signature_to_hexstring(*(*(v147 + 56) + 8));
                v149 = mmcs_logging_logger_chunk();
                if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
                {
                  v150 = Value[1];
                  v151 = v150[5];
                  v152 = v150[18];
                  v153 = *(*(v147 + 56) + 4);
                  v154 = *(v145 + v144 + 32);
                  *buf = 134220034;
                  *&buf[4] = v151;
                  v366 = 2082;
                  v367 = v349;
                  v368 = 2048;
                  v369 = v303;
                  v370 = 2048;
                  v371 = v152;
                  v372 = 2082;
                  v373 = v312;
                  v374 = 2048;
                  v375 = v153;
                  v376 = 2048;
                  v377 = v142;
                  v378 = 2048;
                  v379 = v154;
                  v380 = 2048;
                  v381 = v138;
                  _os_log_impl(&dword_2577D8000, v149, OS_LOG_TYPE_DEFAULT, "Item %lld with file signature %{public}s updated chunk %llu of %llu with chunk signature %{public}s updated instance length from %llu to %llu and offset from %llu to %llu", buf, 0x5Cu);
                }

                if (v349)
                {
                  free(v349);
                }

                v33 = v338;
                if (v312)
                {
                  free(v312);
                }
              }

              v155 = *(v147 + 56);
              *(v155 + 4) = v142;
              *(v155 + 64) = 1;
              *(v145 + v144 + 32) = v138;
              v156 = v142;
              if (*(v146 + 40))
              {
                *(v155 + 40) = *(v146 + 48);
                v157 = *(v146 + 56);
                *(v155 + 32) = v157;
                *(v155 + 24) = 1;
                *(v146 + 48) = 0;
                *(v146 + 56) = 0;
                if (!v157 || !*v157)
                {
                  v347 = 45;
                  v206 = "Unexpected value for Max Subchunk length in Subchunk Digest, V2";
                  goto LABEL_276;
                }

                v158 = CKSubchunkBlobSize();
                v159 = *(v147 + 56);
                if (v158 != *(v159 + 40))
                {
                  v347 = 45;
                  v206 = "Unexpected Number of Bytes for Subchunk Digest, V2";
                  goto LABEL_276;
                }

                v156 = *(v159 + 4);
              }

              v138 += v156;
              ++v143;
              v141 = v356;
              v144 += 104;
              ++v139;
            }

            while (v143 < *(v356 + 40));
            v136 = v302;
            v140 = v303;
            v137 = v302[5];
            v40 = v326;
            v39 = v341;
            v43 = v316;
          }

          else
          {
            v140 = (v140 + 1);
          }

          v47 = v305;
          if (v140 >= v137)
          {
            goto LABEL_211;
          }
        }

        v347 = 45;
        v160 = "Unexpected Number of Bytes for Chunk Length";
LABEL_214:
        v354 = v160;
        v51 = v329;
        v34 = theDict;
        goto LABEL_278;
      }

      v347 = 45;
      v205 = "Unexpected Number of Chunk Groups";
LABEL_268:
      v354 = v205;
      goto LABEL_278;
    }

    v161 = v51[5];
    v34 = theDict;
    if (!v161)
    {
      v347 = 44;
      v205 = "Unsupported Version";
      goto LABEL_268;
    }

    v364 = 0;
    v162 = *(v161 + 5);
    if (!v162)
    {
      v347 = 45;
      v205 = "Unexpected Number of Chunks";
      goto LABEL_268;
    }

    if (v162 == *(*(v35 + 8) + 144))
    {
      v306 = v47;
      v317 = v43;
      v163 = v35;
      v164 = v10[11];
      v350 = v161;
      v165 = XCFDataCreateWithBytesNoCopy(allocator, *(v161 + 4), *(v161 + 3), v315);
      v350[3] = 0;
      v350[4] = 0;
      v166 = v163;
      v167 = *(v163 + 8);
      if (!*(v167 + 400))
      {
        mmcs_item_set_file_verification_key(v167, v165);
      }

      if (v165)
      {
        CFRelease(v165);
      }

      v168 = *(*v164 + 104);
      v169 = v163;
      v170 = CFDictionaryGetValue(v168, *(v163 + 8));
      v47 = v306;
      v357 = v170;
      if (!v170)
      {
        mmcs_get_container_process_data_cold_5();
      }

      v171 = v350[5];
      if (v171)
      {
        v172 = v350[6];
        v173 = *(*(v166 + 8) + 272) + 56;
        while (1)
        {
          v174 = *v172;
          v175 = *v173;
          if (!*(*v173 + 16))
          {
            *(v175 + 16) = *(v174 + 32);
            *(v174 + 32) = 0;
          }

          if (*(v174 + 40))
          {
            *(v175 + 40) = *(v174 + 48);
            v176 = *(v174 + 56);
            *(v175 + 32) = v176;
            v177 = 1;
            *(v175 + 24) = 1;
            *(v174 + 48) = 0;
            *(v174 + 56) = 0;
            if (!v176 || !*v176)
            {
              break;
            }
          }

          v173 += 104;
          ++v172;
          if (!--v171)
          {
            goto LABEL_231;
          }
        }

        v354 = "Unexpected value for Max Subchunk length in Subchunk Digest, V3";
        v203 = 45;
        goto LABEL_345;
      }

LABEL_231:
      if (!mmcs_index_set_create(&v364))
      {
        v177 = 1;
        v354 = "mmcs_index_set_create";
        v203 = 37;
LABEL_345:
        v43 = v317;
        goto LABEL_348;
      }

      v178 = v350;
      v179 = v350[7];
      if (v179)
      {
        v180 = 0;
        while (1)
        {
          v181 = *(v178[8] + 8 * v180);
          v182 = **(v181 + 32);
          if (!v182)
          {
            v177 = 1;
            v354 = "Chunk Length Cannot Have Zero Bytes";
            v203 = 45;
            goto LABEL_347;
          }

          v183 = *(v181 + 40);
          if (v183)
          {
            break;
          }

LABEL_256:
          if (++v180 >= v179)
          {
            goto LABEL_257;
          }
        }

        v304 = v180;
        v328 = v40;
        v184 = 0;
        v339 = v33;
        v344 = v39;
        v309 = *(v178[8] + 8 * v180);
        while (1)
        {
          v185 = *(*(v181 + 48) + 8 * v184);
          if (!v185[7])
          {
            break;
          }

          v186 = v185[8];
          if (v186 >= 1)
          {
            goto LABEL_241;
          }

LABEL_254:
          if (++v184 >= v183)
          {
            v179 = v178[7];
            v40 = v328;
            v180 = v304;
            goto LABEL_256;
          }
        }

        v186 = 1;
LABEL_241:
        v313 = v184;
        v187 = v185[6];
        v188 = v187 + v186;
        v189 = 104 * v187 + 56;
        while (1)
        {
          v190 = *(*(v169 + 8) + 272);
          mmcs_index_set_add_index(v364, v187);
          if (gMMCS_DebugLevel >= 4 && v182 != *(*(v190 + v189) + 4))
          {
            v191 = mmcs_file_signature_to_hexstring(*v357[1]);
            v192 = mmcs_chunk_signature_to_hexstring(*(*(v190 + v189) + 8));
            v193 = mmcs_logging_logger_chunk();
            if (os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
            {
              v194 = v357[1];
              v195 = v194[5];
              v196 = v194[18];
              v197 = *(*(v190 + v189) + 4);
              *buf = 134219522;
              *&buf[4] = v195;
              v366 = 2082;
              v367 = v191;
              v368 = 2048;
              v369 = (v187 + 1);
              v370 = 2048;
              v371 = v196;
              v372 = 2082;
              v373 = v192;
              v374 = 2048;
              v375 = v197;
              v376 = 2048;
              v377 = v182;
              _os_log_impl(&dword_2577D8000, v193, OS_LOG_TYPE_DEFAULT, "Item %lld with file signature %{public}s updated chunk %llu of %llu with chunk signature %{public}s updated instance length from %llu to %llu", buf, 0x48u);
            }

            if (v191)
            {
              free(v191);
            }

            if (v192)
            {
              free(v192);
            }
          }

          v198 = *(v190 + v189);
          *(v198 + 4) = v182;
          *(v198 + 64) = 1;
          if (*(v198 + 32))
          {
            if (CKSubchunkBlobSize() != *(*(v190 + v189) + 40))
            {
              break;
            }
          }

          ++v187;
          v189 += 104;
          v169 = v166;
          if (v187 >= v188)
          {
            v181 = v309;
            v184 = v313;
            v183 = *(v309 + 40);
            v34 = theDict;
            v33 = v339;
            v39 = v344;
            v178 = v350;
            goto LABEL_254;
          }
        }

        v177 = 1;
        v354 = "Unexpected Number of Bytes for Subchunk Digest, V3";
        v203 = 45;
        v34 = theDict;
        v33 = v339;
        v40 = v328;
        v39 = v344;
LABEL_347:
        v43 = v317;
        v47 = v306;
LABEL_348:
        v347 = v203;
        if (v364)
        {
          C3BaseRelease(v364);
        }

        v51 = v329;
        if (v177)
        {
          goto LABEL_278;
        }

        goto LABEL_351;
      }

LABEL_257:
      v199 = mmcs_index_set_count(v364);
      v43 = v317;
      v47 = v306;
      if (v199 == v357[1][18] && mmcs_index_set_contains_range(v364, 0, v199 - 1))
      {
        v200 = v357[1][18];
        if (v200)
        {
          v201 = 0;
          v202 = (*(*(v169 + 8) + 272) + 56);
          do
          {
            v354 = 0;
            v203 = 0;
            v177 = 0;
            *(v202 - 3) = v201;
            v204 = *v202;
            v202 += 13;
            v201 += *(v204 + 4);
            --v200;
          }

          while (v200);
        }

        else
        {
          v354 = 0;
          v203 = 0;
          v177 = 0;
        }

        goto LABEL_348;
      }

      v177 = 1;
      v207 = "Check Set Failure";
    }

    else
    {
      v177 = 1;
      v207 = "Unexpected Number of Chunks";
    }

    v354 = v207;
    v203 = 45;
    goto LABEL_348;
  }

  v53 = *(v35 + 8);
  if ((**v53 & 0x7F) != 4 && (**v53 & 8) == 0)
  {
    v347 = 45;
    v160 = "File Key State Unexpected";
    goto LABEL_214;
  }

  if (*(v53 + 144) != *(v52 + 3))
  {
    v347 = 45;
    v160 = "Unexpected Number of Chunks";
    goto LABEL_214;
  }

  v55 = v10[11];
  if (*(v52 + 10))
  {
    v56 = XCFDataCreateWithBytesNoCopy(allocator, *(v52 + 7), *(v52 + 6), v315);
    *(v52 + 6) = 0;
    *(v52 + 7) = 0;
    v57 = *(v358 + 8);
    if (!*(v57 + 400))
    {
      mmcs_item_set_file_verification_key(v57, v56);
    }

    if (v56)
    {
      CFRelease(v56);
    }
  }

  v311 = CFDictionaryGetValue(*(*v55 + 104), *(v358 + 8));
  if (!v311)
  {
    mmcs_get_container_process_data_cold_3();
  }

  if (*(v52 + 3))
  {
    v305 = v47;
    v316 = v43;
    v335 = v33;
    v341 = v39;
    v326 = v40;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    while (1)
    {
      v61 = *(*(v358 + 8) + 272);
      v62 = *(*(v52 + 4) + 8 * v60);
      v63 = v61 + v58;
      v64 = *(v61 + v58 + 56);
      if (!*(v64 + 16))
      {
        *(v64 + 16) = *(v62 + 32);
        *(v62 + 32) = 0;
      }

      v65 = *(v64 + 4);
      v66 = v65;
      if (*(v62 + 40))
      {
        if (*(v62 + 48) != 4)
        {
          v347 = 45;
          v206 = "Unexpected Number of Bytes for Chunk Length";
          goto LABEL_276;
        }

        v66 = **(v62 + 56);
        if (!v66)
        {
          v347 = 45;
          v206 = "Chunk Length Cannot Have Zero Bytes";
          goto LABEL_276;
        }
      }

      if (gMMCS_DebugLevel >= 4 && (v66 != v65 || v59 != *(v61 + v58 + 32)))
      {
        v353 = mmcs_file_signature_to_hexstring(*v311[1]);
        v346 = mmcs_chunk_signature_to_hexstring(*(*(v63 + 56) + 8));
        v67 = mmcs_logging_logger_chunk();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          v68 = v311[1];
          v69 = v68[5];
          v70 = v68[18];
          v71 = *(*(v63 + 56) + 4);
          v72 = *(v61 + v58 + 32);
          *buf = 134220034;
          *&buf[4] = v69;
          v366 = 2082;
          v367 = v353;
          v368 = 2048;
          v369 = (v60 + 1);
          v370 = 2048;
          v371 = v70;
          v372 = 2082;
          v373 = v346;
          v374 = 2048;
          v375 = v71;
          v376 = 2048;
          v377 = v66;
          v378 = 2048;
          v379 = v72;
          v380 = 2048;
          v381 = v59;
          _os_log_impl(&dword_2577D8000, v67, OS_LOG_TYPE_DEFAULT, "Item %lld with file signature %{public}s updated chunk %llu of %llu with chunk signature %{public}s updated instance length from %llu to %llu and offset from %llu to %llu", buf, 0x5Cu);
        }

        if (v353)
        {
          free(v353);
        }

        v33 = v335;
        if (v346)
        {
          free(v346);
        }
      }

      v73 = *(v63 + 56);
      *(v73 + 4) = v66;
      *(v73 + 64) = 1;
      *(v61 + v58 + 32) = v59;
      if (*(v62 + 64))
      {
        *(v73 + 40) = *(v62 + 72);
        v74 = *(v62 + 80);
        *(v73 + 32) = v74;
        *(v73 + 24) = 1;
        *(v62 + 72) = 0;
        *(v62 + 80) = 0;
        if (!v74 || !*v74)
        {
          v347 = 45;
          v206 = "Unexpected value for Max Subchunk length in Subchunk Digest, V1";
          goto LABEL_276;
        }

        if (CKSubchunkBlobSize() != *(*(v63 + 56) + 40))
        {
          break;
        }
      }

      v59 += v66;
      ++v60;
      v58 += 104;
      if (v60 >= *(v52 + 3))
      {
        v354 = 0;
        v347 = 0;
        v51 = v329;
        v34 = theDict;
        v40 = v326;
        v39 = v341;
        v43 = v316;
        v47 = v305;
        goto LABEL_351;
      }
    }

    v347 = 45;
    v206 = "Unexpected Number of Bytes for Subchunk Digest, V1";
LABEL_276:
    v354 = v206;
    v34 = theDict;
    v40 = v326;
    v39 = v341;
    v43 = v316;
LABEL_277:
    v47 = v305;
    v51 = v329;
LABEL_278:
    opaque__file_reference_data__free_unpacked(v51, 0);
    v117 = 0;
LABEL_279:
    CFRelease(v47);
    goto LABEL_280;
  }

LABEL_211:
  v354 = 0;
  v347 = 0;
  v51 = v329;
  v34 = theDict;
LABEL_351:
  v256 = CFDictionaryCreateMutable(allocator, v51[6], 0, MEMORY[0x277CBF150]);
  v257 = v329;
  v258 = key;
  v259 = *(key + 216);
  v260 = v329[6];
  theDictc = v256;
  if (!*(key + 216))
  {
    v262 = 0;
    goto LABEL_355;
  }

  if (v260)
  {
    v261 = CFArrayCreateMutable(0, v260, &kAssignArrayCallBacks);
    v257 = v329;
    v262 = v261;
    v260 = v329[6];
LABEL_355:
    if (v260)
    {
      v307 = v47;
      v263 = v33;
      v264 = 0;
      v265 = 0;
      do
      {
        v364 = 0;
        *buf = 0;
        if (!mmcs_RangedItem_copyFileVerificationKey_copyItemLength(*(v257[7] + v265), buf, &v364))
        {
          v117 = 0;
          v347 = 45;
          v354 = "Ranged Item Missing Required Fields";
          v33 = v263;
          goto LABEL_391;
        }

        v264 += v364;
        CFDictionarySetValue(theDictc, v264, *buf);
        if (v262)
        {
          RangedItem = mmcs_create_RangedItem(*buf, v364);
          CFArrayAppendValue(v262, RangedItem);
        }

        if (*buf)
        {
          CFRelease(*buf);
        }

        ++v265;
        v257 = v329;
      }

      while (v265 < v329[6]);
      v33 = v263;
      v47 = v307;
      v258 = key;
    }
  }

  else
  {
    v262 = 0;
  }

  if (v258[50])
  {
    v267 = CFDictionaryGetValue(theDictc, (v258[48] + v258[47]));
    if (!v267)
    {
      v117 = 0;
      v347 = 40;
      v354 = "Ranged Item Not Found with Requested Offset and Length";
      goto LABEL_392;
    }

    mmcs_item_set_file_verification_key(v258, v267);
  }

  v268 = CFDictionaryGetValue(*(*v43 + 104), v258);
  v269 = v268;
  if (v259)
  {
    if (v262)
    {
      key[15] = v262;
    }

    mmcs_get_file_complete_metadata_only_file(v268);
    v262 = 0;
  }

  mmcs_get_state_initialize_duplicate_file_states(*v43, v269, &v363);
  if (v363)
  {
    v117 = 0;
    goto LABEL_392;
  }

  v270 = CFDictionaryGetValue(*(*(**v43 + 304) + 64), key);
  if (!v270 || (v271 = v270, Count = CFArrayGetCount(v270), Count < 1))
  {
    v117 = 1;
    goto LABEL_392;
  }

  v307 = v47;
  v310 = v271;
  v272 = 0;
  while (2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v271, v272);
    if (ValueAtIndex == key)
    {
LABEL_384:
      if (Count == ++v272)
      {
        v117 = 1;
        goto LABEL_391;
      }

      continue;
    }

    break;
  }

  v274 = ValueAtIndex;
  mmcs_item_copy_ford_state_from_item(ValueAtIndex, key);
  if (!key[50])
  {
LABEL_382:
    v271 = v310;
    if (*(v274 + 216))
    {
      v276 = CFDictionaryGetValue(*(*v43 + 104), v274);
      mmcs_get_file_complete_metadata_only_file(v276);
    }

    goto LABEL_384;
  }

  v275 = CFDictionaryGetValue(theDictc, (*(v274 + 384) + *(v274 + 376)));
  if (v275)
  {
    mmcs_item_set_file_verification_key(v274, v275);
    goto LABEL_382;
  }

  v117 = 0;
  v347 = 40;
  v354 = "Duplicate Ranged Item Not Found with Requested Offset and Length";
LABEL_391:
  v47 = v307;
LABEL_392:
  opaque__file_reference_data__free_unpacked(v329, 0);
  if (theDictc)
  {
    CFRelease(theDictc);
  }

  CFRelease(v47);
  v47 = v262;
  if (v262)
  {
    goto LABEL_279;
  }

LABEL_280:
  v118 = v363;
  if (v363)
  {
LABEL_281:
    CFRetain(v118);
    v208 = 1;
    v209 = v363;
    v210 = v363;
    goto LABEL_302;
  }

  v10 = a1;
  if (!v354)
  {
LABEL_285:
    v210 = 0;
    goto LABEL_301;
  }

LABEL_283:
  v211 = mmcs_file_signature_to_hexstring(**(v358 + 8));
  v212 = *(*(v358 + 8) + 48);
  if (v212)
  {
    StringDescription = XCFDataCreateStringDescription(v212);
  }

  else
  {
    StringDescription = @"(null reference)";
  }

  v214 = mmcs_get_container_copy_simple_description(v10);
  v215 = *(v319 + 16);
  v340 = v33;
  if (v215)
  {
    v216 = mmcs_http_context_get_request_message(v215);
    v217 = *(v319 + 16);
    if (v217)
    {
      theDictb = mmcs_http_context_get_response_message(v217);
      goto LABEL_292;
    }
  }

  else
  {
    v216 = 0;
  }

  theDictb = 0;
LABEL_292:
  v345 = v39;
  v218 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v218, OS_LOG_TYPE_FAULT))
  {
    v219 = v43[11];
    v318 = v43;
    v220 = v34;
    v221 = v216;
    v222 = *(v358 + 32);
    v223 = mmcs_chunk_instance_get_length(v358);
    *buf = 136447746;
    *&buf[4] = v354;
    v366 = 2082;
    v367 = v211;
    v368 = 2114;
    v369 = StringDescription;
    v370 = 2114;
    v371 = v214;
    v372 = 2048;
    v373 = v219;
    v374 = 2048;
    v375 = v222;
    v216 = v221;
    v34 = v220;
    v43 = v318;
    v376 = 1024;
    LODWORD(v377) = v223;
    _os_log_impl(&dword_2577D8000, v218, OS_LOG_TYPE_FAULT, "FORD failed (%{public}s) for file %{public}s with reference %{public}@ in container %{public}@ at element index %lu at offset %llu length %u (relative to the container's range)", buf, 0x44u);
  }

  v224 = v43[11];
  v301 = *(v358 + 32);
  mmcs_chunk_instance_get_length(v358);
  v210 = mmcs_cferror_create_with_request_response_and_format(@"com.apple.mmcs", v347, v216, theDictb, 0, @"FORD failed (%s) for file %s with reference %@ in container %@ at element index %lu at offset %llu length %u (relative to the container's range)", v225, v226, v354);
  if (v211)
  {
    free(v211);
  }

  v33 = v340;
  v39 = v345;
  if (StringDescription)
  {
    CFRelease(StringDescription);
  }

  if (v214)
  {
    CFRelease(v214);
  }

  v117 = 0;
LABEL_301:
  v209 = v363;
  v208 = v117 == 0;
LABEL_302:
  error = v210;
  if (v209)
  {
    CFRelease(v209);
  }

  v10 = a1;
  if (!v208)
  {
LABEL_305:
    v35 = v358;
    v227 = *(v358 + 8);
    v228 = *(v227 + 120);
    if (v228)
    {
      mmcs_engine_cache_ranged_items(*(**v22 + 32), *(v227 + 40), v228);
    }

    goto LABEL_307;
  }

LABEL_425:
  v323 = 0;
LABEL_26:
  v30 = v323;
  if (!v321 || v323)
  {
    if (v323)
    {
      v277 = *(v22 + 88);
      v278 = *(v22 + 48);
      *(v22 + 104) += v320;
      if (v277 < v278 && v351 && mmcs_request_is_container_resumable_limp_mode(**v22))
      {
        v30 = 0;
        if (v321)
        {
          *v321 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Simulate a container failure after making some resumable progress.", v279, v280, v281, v282, v283, v298);
        }

        goto LABEL_408;
      }
    }

    goto LABEL_406;
  }

  CFRetain(error);
  v31 = error;
  *v321 = error;
  if (!error)
  {
    goto LABEL_408;
  }

LABEL_407:
  CFRelease(v31);
LABEL_408:
  v284 = *MEMORY[0x277D85DE8];
  return v30;
}

uint64_t mmcs_get_container_schedule(uint64_t a1, uint64_t a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = _os_activity_create(&dword_2577D8000, "mmcs-get-schedule", *(a1 + 80), OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);
  v5 = *(a1 + 88);
  if (mmcs_container_check_expired(a1, a2, "get", *(v5 + 16)))
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

LABEL_54:
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
  v45 = @"getContainer";
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
  v51 = 0;
  v52 = 0;
  body_size = mmcs_get_container_get_body_size(a1);
  v53 = handle_container_request_will_retry_after_error;
  v54 = handle_response_downloadChunks;
  v55 = handle_callback_downloadContainer;
  v56 = 0;
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
    mmcs_http_context_set_to_mobileme(*(a2 + 16), 0);
    mmcs_http_context_extract_vendor_name_from_message_and_create_pool_parameters(*(a2 + 16), *(v12 + 40), buf);
    *cf = *buf;
    v44 = v66;
    v25 = *(*(a2 + 24) + 24);
    if (mmcs_get_req_context_get_current_request_metrics(v10))
    {
      v26 = *(*(a2 + 64) + 88);
      v27 = *(v26 + 16);
      v28 = v27 ? CFStringCreateWithCString(*MEMORY[0x277CBECE8], v27, 0x8000100u) : 0;
      mmcs_transaction_make_req_context_metrics(a2, **v26, v25, @"getContainer", v28);
      if (v28)
      {
        CFRelease(v28);
      }
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
  setErrorAndFailContainer(a1, v18);
  if (v18)
  {
    goto LABEL_54;
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

void setErrorAndFailContainer(uint64_t a1, const void *a2)
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

  mmcs_get_state_fail_container(**(a1 + 88), a1);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t mmcs_get_container_add_method_completion_info(uint64_t a1, uint64_t a2)
{
  reporting_level = mmcs_request_get_reporting_level(***(a1 + 88));
  method_completion_info = mmcs_get_complete_create_method_completion_info(a1, a2, reporting_level, 1);

  return mmcs_transaction_add_method_completion_info(a2, method_completion_info);
}

void mmcs_get_container_failed_to_schedule_transaction(uint64_t a1)
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

uint64_t mmcs_get_container_retry(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
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

  v7 = **(a1 + 88);
  if (v7)
  {
    v8 = *v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 16);
  v10 = *(a2 + 16);
  if (v10)
  {
    mmcs_http_context_invalidate(v10);
  }

  _mmcs_get_container_reset_for_retry(a1, a2);
  v11 = *(a2 + 16);
  if (v11)
  {
    C3BaseRelease(v11);
  }

  *(a2 + 16) = 0;
  *(a1 + 68) = 3;
  *(v9 + 48) = 2;
  *(v9 + 56) = CFAbsoluteTimeGetCurrent();
  v12 = mmcs_http_request_options_network_behavior_type(*(*(v9 + 24) + 24));
  v13 = mmcs_request_type_for_behavior_and_activity(v12, 1);
  mmcs_container_requirements(a1);
  *&buf = 0;
  *(&buf + 1) = v9;
  v18 = v13;
  priority = mmcs_request_get_priority(v8);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v20 = 0u;
  v21 = 0u;
  v26 = mmcs_container_schedule_request_callback;
  v27 = mmcs_container_cancel_request_callback;
  v28 = C3BaseRetain;
  v29 = C3BaseRelease;
  v14 = mmcs_chunk_instance_offset(v8);
  mmcs_request_queue_enqueue_request(*(v14 + 48), &buf, *(v9 + 56));
  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

double _mmcs_get_container_reset_for_retry(void *a1, uint64_t a2)
{
  v3 = a1[11];
  mmcs_container_remember_error(a1, a2);
  mmcs_container_reset_error_for_retry(a1);
  v4 = *(a1[11] + 176);
  if (v4 == 1)
  {
    v10 = *(v3 + 88);
    if (v10 < *(v3 + 48))
    {
      v11 = *(v3 + 96);
      if (v11 >= 1)
      {
        v12 = *(*(v3 + 120) + 104 * v10 + 56);
        if (v11 >= *(v12 + 4))
        {
          v13 = *(v12 + 4);
        }

        else
        {
          v13 = *(v3 + 96);
        }

        mmcs_get_state_unprocess_chunk_data(*v3, a1, v12, v13);
      }
    }
  }

  else if (v4 == 2)
  {
    v5 = *(v3 + 48);
    if (v5)
    {
      v6 = 0;
      v7 = 88;
      do
      {
        v8 = *(v3 + 120);
        v9 = *(v8 + v7);
        if (v9)
        {
          CFRelease(v9);
          v5 = *(v3 + 48);
        }

        *(v8 + v7) = 0;
        ++v6;
        v7 += 104;
      }

      while (v6 < v5);
    }
  }

  v14 = *(v3 + 112);
  if (v14)
  {
    C3BaseRelease(v14);
  }

  result = 0.0;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 128) = *(*(v3 + 120) + 32);
  *(v3 + 136) = 0;
  return result;
}

void mmcs_get_container_finalize(uint64_t a1)
{
  v1 = *(a1 + 88);
  *v1 = 0;
  v2 = v1[2];
  if (v2)
  {
    free(v2);
  }

  v1[2] = 0;
  v3 = v1[3];
  if (v3)
  {
    free(v3);
  }

  v1[3] = 0;
  v4 = v1[1];
  if (v4)
  {
    CFRelease(v4);
  }

  v1[1] = 0;
  v5 = v1[14];
  if (v5)
  {
    C3BaseRelease(v5);
  }

  v1[14] = 0;
  v6 = v1[18];
  if (v6)
  {
    C3BaseRelease(v6);
  }

  v1[18] = 0;
  v7 = v1[19];
  if (v7)
  {
    C3BaseRelease(v7);
  }

  v1[19] = 0;
  v8 = v1[20];
  if (v8)
  {
    C3BaseRelease(v8);
  }

  v1[20] = 0;
  v9 = v1[15];
  if (v9)
  {
    if (!v1[5])
    {
      goto LABEL_20;
    }

    v10 = 0;
    v11 = 0;
    do
    {
      mmcs_chunk_instance_finalize((v1[15] + v10));
      ++v11;
      v10 += 104;
    }

    while (v11 < v1[5]);
    v9 = v1[15];
    if (v9)
    {
LABEL_20:
      free(v9);
    }

    v1[15] = 0;
  }

  v1[5] = 0;
  v1[6] = 0;
  v12 = v1[9];
  if (v12)
  {
    free(v12);
  }

  v1[9] = 0;
  v13 = v1[23];
  if (v13)
  {
    C3BaseRelease(v13);
    v1[23] = 0;
  }
}

void mmcs_get_container_cancel_transaction(void *a1, unsigned int *a2, __CFError *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2[12] == 2)
  {
    v6 = a1[11];
    v7 = mmcs_chunk_instance_offset(**v6);
    mmcs_transaction_cancel_enqueued(a2, *(v7 + 48), a3);
    if (a1[5])
    {
      v8 = a1[5];
    }

    else
    {
      v8 = a3;
    }

    setErrorAndFailContainer(a1, v8);
    if (!mmcs_get_req_has_outstanding_asynchronous_work(**v6))
    {
      v9 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = **v6;
        v13 = 134217984;
        v14 = v10;
        _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_INFO, "Downloads complete. All done! (Get request %p)", &v13, 0xCu);
      }

      mmcs_get_req_context_cleanup(**v6, 0);
    }

    v11 = *MEMORY[0x277D85DE8];
  }

  else
  {
    mmcs_transaction_cancel_not_enqueued(a2, a3);
    v12 = *MEMORY[0x277D85DE8];

    mmcs_container_set_error(a1, a3);
  }
}

CFAbsoluteTime mmcs_time_convert_date_header_to_cfabsolutetime(const __CFString *a1)
{
  if (!a1)
  {
    return 0.0;
  }

  atp = 0.0;
  v2 = *MEMORY[0x277CBECE8];
  v3 = CFLocaleCreate(*MEMORY[0x277CBECE8], @"en_US");
  if (!v3)
  {
    return 0.0;
  }

  v4 = v3;
  v5 = CFDateFormatterCreate(v2, v3, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  if (v5)
  {
    v6 = v5;
    v7 = CFTimeZoneCreateWithTimeIntervalFromGMT(v2, 0.0);
    if (v7)
    {
      v8 = v7;
      CFDateFormatterSetProperty(v6, *MEMORY[0x277CBEDF8], v7);
      v9 = 0;
      while (1)
      {
        CFDateFormatterSetFormat(v6, off_279844F48[v9]);
        if (CFDateFormatterGetAbsoluteTimeFromString(v6, a1, 0, &atp))
        {
          break;
        }

        if (++v9 == 3)
        {
          atp = 0.0;
          break;
        }
      }

      CFRelease(v8);
    }

    CFRelease(v6);
  }

  CFRelease(v4);
  return atp;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void HttpContextPerformBlockAsync(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = mmcs_nshttp_copy_perform_target([v3 hc]);
  if (!v5)
  {
    v9 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      HttpContextPerformBlockAsync_cold_1(v3);
    }

    __assert_rtn("HttpContextPerformBlockAsync", "MMCSHTTPContext.m", 54, "performTarget");
  }

  v6 = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __HttpContextPerformBlockAsync_block_invoke;
  v10[3] = &unk_279845008;
  v11 = v3;
  v12 = v4;
  v7 = v4;
  v8 = v3;
  mmcs_perform_target_async(v6, v10);
  C3BaseRelease(v6);
}

void appendTrailers(uint64_t a1, uint64_t a2)
{
  v4 = mmcs_nshttp_get_http_context(a1);
  v3 = [v4 inputStream];
  [v3 setProperty:a2 forKey:*MEMORY[0x277CBEC68]];
}

void HttpContextPerformBlockSync(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = dispatch_semaphore_create(0);
  v6 = mmcs_nshttp_copy_perform_target([v3 hc]);
  if (!v6)
  {
    v10 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      HttpContextPerformBlockAsync_cold_1(v3);
    }

    __assert_rtn("HttpContextPerformBlockSync", "MMCSHTTPContext.m", 72, "performTarget");
  }

  v7 = v6;
  dispatch_retain(v5);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __HttpContextPerformBlockSync_block_invoke;
  v11[3] = &unk_279845058;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v8 = v4;
  v9 = v3;
  mmcs_perform_target_async(v7, v11);
  C3BaseRelease(v7);
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v5);
}

void sub_257801E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, os_activity_scope_state_s state)
{
  objc_sync_exit(v21);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void __HttpContextPerformBlockAsync_block_invoke(uint64_t a1)
{
  if (*([*(a1 + 32) hc] + 592))
  {
    os_retain(*([*(a1 + 32) hc] + 592));
  }

  v2 = *([*(a1 + 32) hc] + 592);
  voucher_adopt();
  v3 = objc_autoreleasePoolPush();
  [MEMORY[0x277CF36A0] annotateCallstackForContainerType:objc_msgSend(*(a1 + 32) block:{"containerType"), *(a1 + 40)}];
  objc_autoreleasePoolPop(v3);
  v4 = voucher_adopt();
  if (v4)
  {

    os_release(v4);
  }
}

void __HttpContextPerformBlockSync_block_invoke(uint64_t a1)
{
  if (*([*(a1 + 32) hc] + 592))
  {
    os_retain(*([*(a1 + 32) hc] + 592));
  }

  v2 = *([*(a1 + 32) hc] + 592);
  voucher_adopt();
  v3 = objc_autoreleasePoolPush();
  [MEMORY[0x277CF36A0] annotateCallstackForContainerType:objc_msgSend(*(a1 + 32) block:{"containerType"), *(a1 + 40)}];
  objc_autoreleasePoolPop(v3);
  v4 = voucher_adopt();
  if (v4)
  {
    os_release(v4);
  }

  dispatch_semaphore_signal(*(a1 + 48));
  v5 = *(a1 + 48);

  dispatch_release(v5);
}

void OUTLINED_FUNCTION_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_ERROR, a4, &buf, 0xCu);
}

void mmcs_perform_dispatch_target_stream_schedule(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 24);
  v3 = CFGetTypeID(cf);
  if (v3 == CFReadStreamGetTypeID())
  {
    v4 = *v2;

    JUMPOUT(0x259C66210);
  }

  if (v3 == CFWriteStreamGetTypeID())
  {
    v5 = *v2;

    JUMPOUT(0x259C66740);
  }

  v6 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_ERROR, "Unknown stream type. Failed to schedule request", v7, 2u);
  }
}

void mmcs_perform_dispatch_target_stream_unschedule(int a1, CFTypeRef cf)
{
  v2 = CFGetTypeID(cf);
  if (v2 == CFReadStreamGetTypeID())
  {

    JUMPOUT(0x259C66210);
  }

  if (v2 == CFWriteStreamGetTypeID())
  {

    JUMPOUT(0x259C66740);
  }

  v3 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_2577D8000, v3, OS_LOG_TYPE_ERROR, "Unknown stream type. Failed to unschedule request", v4, 2u);
  }
}

void mmcs_get_file_close_temp_reader_writer(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 24);
  if (v3)
  {
    MMCSItemReaderWriterEnsureClosed(v3);
    v4 = *(a1 + 24);
    if (v4)
    {
      C3BaseRelease(v4);
    }

    *(a1 + 24) = 0;
  }

  v5 = CFAbsoluteTimeGetCurrent() - Current;
  if (v5 > 0.25)
  {
    v6 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 134217984;
      v9 = v5;
      _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_ERROR, "Close of item took %.3f seconds", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void mmcs_get_file_finalize(void *a1)
{
  if (*a1)
  {
    *a1 = 0;
    a1[1] = 0;
  }

  v3 = a1 + 4;
  v2 = a1[4];
  if (v2)
  {
    free(v2);
  }

  *v3 = 0;
  a1[5] = 0;
  mmcs_get_file_close_temp_reader_writer(a1);
  v4 = a1[2];
  if (v4)
  {
    free(v4);
  }

  a1[2] = 0;
  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
  }

  a1[6] = 0;
  v6 = a1[7];
  if (v6)
  {
    CFRelease(v6);
  }

  a1[7] = 0;
  v7 = a1[15];
  if (v7)
  {
    C3BaseRelease(v7);
  }

  a1[15] = 0;
}

uint64_t mmcs_get_file_init(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 24) = 0;
  *(a1 + 115) = 0;
  *(a1 + 113) = a4;
  *(a1 + 114) = a5;
  return 1;
}

uint64_t mmcs_get_file_process_chunk_reference_with_padding(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, CFTypeRef *a6)
{
  is_outstanding_chunk_reference = mmcs_item_is_outstanding_chunk_reference(*(a1 + 8), a2);
  result = 1;
  if (is_outstanding_chunk_reference)
  {
    context[0] = a1;
    context[1] = a3;
    context[2] = a4;
    context[3] = a5;
    v18 = 1;
    p_cf = &cf;
    cf = 0;
    v14 = *(a2 + 48);
    if (v14)
    {
      mmcs_get_file_process_chunk_instance_with_padding(v14, context);
    }

    v15 = *(a2 + 56);
    if (v15)
    {
      CFSetApplyFunction(v15, mmcs_get_file_process_chunk_instance_with_padding, context);
    }

    mmcs_item_update_get_progress(*(a1 + 8), a5);
    if (mmcs_chunk_instance_get_length(*(a2 + 48)) == a5 + a3)
    {
      mmcs_item_remove_outstanding_chunk_reference(*(a1 + 8), a2);
      mmcs_get_state_decrement_outstanding_chunk_references_count(*a1, a2);
    }

    v16 = cf;
    if (a6 && !v18 && cf)
    {
      CFRetain(cf);
      v16 = cf;
      *a6 = cf;
    }

    if (v16)
    {
      CFRelease(v16);
    }

    return v18;
  }

  return result;
}

void mmcs_get_file_process_chunk_instance_with_padding(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x277D85DE8];
  if (!mmcs_chunk_instance_is_chunk_reference(a1))
  {
    mmcs_get_file_process_chunk_instance_with_padding_cold_1();
  }

  v4 = *(a1 + 8);
  if (*(*a2 + 8) == v4 && CFBooleanGetValue(*(a1 + 72)) && *(a2 + 32) && mmcs_item_is_outstanding_chunk_reference(v4, *(a1 + 56)))
  {
    v45 = 0;
    cf = 0;
    v6 = mmcs_chunk_instance_offset(***a2);
    v7 = *(*(a1 + 56) + 4) - *(a2 + 8);
    v8 = v7 & ~(v7 >> 63);
    if (v8 >= *(a2 + 24))
    {
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = v8;
    }

    if (mmcs_get_file_ensure_temp_file_is_open_with_length_check(*a2, &cf, -1))
    {
      if (v9 < 1)
      {
        v13 = 0;
        v45 = 0;
      }

      else
      {
        v10 = *a2;
        v11 = *(*a2 + 24);
        v12 = mmcs_chunk_instance_offset(a1);
        if (!MMCSItemReaderWriterWrite(v11, v10 + 15, *(a2 + 8) + v12, *(a2 + 16), v9, &v45, &cf))
        {
          if (cf)
          {
LABEL_25:
            v26 = mmcs_cferror_copy_description(cf);
            v27 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v28 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@", v26);
              v29 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v48 = v28;
                _os_log_impl(&dword_2577D8000, v29, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
              }

              if (v28)
              {
                CFRelease(v28);
              }
            }

            if (v26)
            {
              CFRelease(v26);
            }

            v30 = *(a2 + 40);
            if (v30 && !*v30)
            {
              CFRetain(cf);
              **(a2 + 40) = cf;
            }

            *(a2 + 32) = 0;
LABEL_36:
            if (cf)
            {
              CFRelease(cf);
            }

            goto LABEL_3;
          }

          v19 = mmcs_chunk_instance_copy_description(a1);
          v25 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 39, @"Unknown error occurred for %@", v31, v32, v33, v34, v35, v19);
LABEL_23:
          cf = v25;
          if (v19)
          {
            CFRelease(v19);
          }

          goto LABEL_25;
        }

        v13 = v45;
      }

      if (v13 == v9)
      {
        if (mmcs_chunk_instance_get_length(a1) != *(a2 + 24) + *(a2 + 8))
        {
          goto LABEL_36;
        }

        RegisteredChunk = mmcs_chunk_instance_create_RegisteredChunk(a1);
        v22 = *(a1 + 40);
        CKRegisteredChunkSetRowID();
        if (*(*a2 + 113) && (v23 = *(v6 + 16), (CKRelocateTemporaryChunk() & 1) == 0))
        {
          v36 = mmcs_chunk_instance_copy_description(a1);
          cf = mmcs_cferror_create_with_format(@"com.apple.mmcs", 20, @"Unable to register chunk instance %@", v37, v38, v39, v40, v41, v36);
          if (v36)
          {
            CFRelease(v36);
          }

          v24 = 1;
        }

        else
        {
          v24 = 0;
        }

        v42 = *(*a2 + 24);
        v43 = mmcs_chunk_instance_offset(a1);
        MMCSItemReaderWriterValidated(v42, 2, v43, *(*(a1 + 56) + 4), 0);
        if (RegisteredChunk)
        {
          free(RegisteredChunk);
        }

        if ((v24 & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      v19 = mmcs_chunk_instance_copy_description(a1);
      LOBYTE(v44) = v19;
      v20 = @"Unable to write all chunk data for %@: %lu read %lu written";
    }

    else
    {
      v19 = mmcs_chunk_instance_copy_description(a1);
      v44 = *(*a2 + 24);
      v20 = @"TempReaderWriter (%p) not open for %@";
    }

    v25 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 11, v20, v14, v15, v16, v17, v18, v44);
    goto LABEL_23;
  }

LABEL_3:
  v5 = *MEMORY[0x277D85DE8];
}

void mmcs_get_file_unprocess_chunk_reference(uint64_t a1, void *a2, uint64_t a3)
{
  if (mmcs_item_is_outstanding_chunk_reference(*(a1 + 8), a2))
  {
    v8[0] = a1;
    v8[1] = a3;
    v6 = a2[6];
    if (v6)
    {
      mmcs_get_file_unprocess_chunk_instance(v6, v8);
    }

    v7 = a2[7];
    if (v7)
    {
      CFSetApplyFunction(v7, mmcs_get_file_unprocess_chunk_instance, v8);
    }
  }
}

void mmcs_get_file_unprocess_chunk_instance(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!mmcs_chunk_instance_is_chunk_reference(a1))
  {
    mmcs_get_file_unprocess_chunk_instance_cold_1();
  }

  v4 = *(a1 + 8);
  if (*(*a2 + 8) != v4)
  {
    v5 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"skipping chunk instance for now");
      v7 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v11 = 138543362;
        v12 = v6;
        _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@", &v11, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    goto LABEL_12;
  }

  if (!mmcs_item_is_outstanding_chunk_reference(*(a1 + 8), *(a1 + 56)))
  {
LABEL_12:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  v8 = a2[1];
  v9 = *MEMORY[0x277D85DE8];

  mmcs_item_update_get_unprogress(v4, v8);
}

uint64_t mmcs_get_file_process_derivative_buffer(uint64_t a1, unint64_t a2, int8x16_t *a3, unint64_t a4, int a5, const void *a6, CFTypeRef *a7)
{
  v37 = *MEMORY[0x277D85DE8];
  v33 = 0;
  cf = 0;
  if (!mmcs_get_file_ensure_temp_file_is_open_with_length_check(a1, &cf, -1))
  {
    v32 = *(a1 + 24);
    v21 = @"TempReaderWriter (%p) not open";
LABEL_6:
    v22 = 11;
LABEL_7:
    v23 = mmcs_cferror_create_with_format(@"com.apple.mmcs", v22, v21, v14, v15, v16, v17, v18, v32);
    cf = v23;
    goto LABEL_8;
  }

  v19 = MMCSItemReaderWriterWrite(*(a1 + 24), (a1 + 120), a2, a3, a4, &v33, &cf);
  if (v19)
  {
    v20 = v19;
    if (v33 == a4)
    {
      goto LABEL_18;
    }

    LOBYTE(v32) = a4;
    v21 = @"Unable to write all deriviative data: %lu read %lu written";
    goto LABEL_6;
  }

  v23 = cf;
  if (!cf)
  {
    v21 = @"Unknown error occurred";
    v22 = 39;
    goto LABEL_7;
  }

LABEL_8:
  v24 = mmcs_cferror_copy_description(v23);
  v25 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@", v24);
    v27 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v36 = v26;
      _os_log_impl(&dword_2577D8000, v27, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v26)
    {
      CFRelease(v26);
    }
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (!a7 || *a7)
  {
    v20 = 0;
LABEL_18:
    v28 = cf;
    if (!cf)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  CFRetain(cf);
  v20 = 0;
  v28 = cf;
  *a7 = cf;
  if (v28)
  {
LABEL_19:
    CFRelease(v28);
  }

LABEL_20:
  if (v20)
  {
    mmcs_item_update_get_derivative_progress(*(a1 + 8), a4);
  }

  if (a5 && !*(a1 + 115))
  {
    mmcs_get_request_notify_item_with_pending_progress(**a1, *(a1 + 8));
    v29 = *(a1 + 8);
    *(v29 + 16) = a4 + a2;
    *(v29 + 24) = a4 + a2;
    mmcs_item_set_derivative_digest_results_for_file_validation(v29, a6);
    mmcs_get_file_candidate_completed_with_success(a1);
  }

  v30 = *MEMORY[0x277D85DE8];
  return v20;
}

void mmcs_get_file_candidate_completed_with_success(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = **a1;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  request_activity_marker = mmcs_request_get_request_activity_marker(v2);
  os_activity_scope_enter(request_activity_marker, &state);
  if (*(a1 + 115))
  {
    goto LABEL_41;
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    v5 = *(*(a1 + 8) + 16);
    if (v5 <= 0)
    {
      mmcs_get_file_candidate_completed_with_success_cold_1();
    }

    if (*(v4 + 32) < v5)
    {
      *buf = 0;
      if (!mmcs_get_file_ensure_temp_file_is_open_with_length_check(a1, buf, -1))
      {
LABEL_32:
        error = *buf;
        if (*buf)
        {
          goto LABEL_37;
        }

        v11 = @"An unknown error occurred while opening the item reader writer.";
        goto LABEL_36;
      }

      if (!MMCSItemReaderWriterSeek(*(a1 + 24), *(a1 + 120), *(*(a1 + 8) + 16), buf))
      {
        error = *buf;
        if (*buf)
        {
          goto LABEL_37;
        }

        v11 = @"An unknown error occurred while seeking the item reader writer.";
        goto LABEL_36;
      }
    }

    v6 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      file_sparse_context_contains_zero_filled_block = mmcs_get_file_sparse_context_contains_zero_filled_block(*(a1 + 120));
      v8 = "Sparse";
      if (!file_sparse_context_contains_zero_filled_block)
      {
        v8 = "Dense";
      }

      *buf = 136315138;
      *&buf[4] = v8;
      _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_DEFAULT, "Sparse Aware Output Produced %s File.", buf, 0xCu);
    }
  }

  v9 = (a1 + 8);
  if (mmcs_item_is_metadata_only(*(a1 + 8)))
  {
    goto LABEL_12;
  }

  if (CFSetGetCount(*(*v9 + 280)) >= 1)
  {
    mmcs_get_file_candidate_completed_with_success_cold_2(a1 + 8);
  }

  *buf = 0;
  if (!mmcs_get_file_ensure_temp_file_is_open_with_length_check(a1, buf, -1))
  {
    goto LABEL_32;
  }

  if (MMCSItemReaderWriterSync(*(a1 + 24), buf))
  {
LABEL_12:
    *(a1 + 115) = 1;
    ++*(*a1 + 24);
    if (mmcs_item_is_metadata_only(*(a1 + 8)) || mmcs_item_has_requested_length_at_file_offset(*v9) && !*(*v9 + 400) || !*(a1 + 114))
    {
      mmcs_get_file_finalize_file_after_validation(a1);
    }

    else
    {
      v12 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(*v9 + 40);
        *buf = 134217984;
        *&buf[4] = v13;
        _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_INFO, "item %llu being validated", buf, 0xCu);
      }

      if (mmcs_get_request_is_validation_queue_empty(v2))
      {
        if (*(a1 + 24))
        {
          if (gMMCS_DebugLevel >= 5)
          {
            v14 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"leaving temp file for item %llu open for reuse", *(*v9 + 40));
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
          }
        }
      }

      else
      {
        mmcs_get_file_close_temp_reader_writer(a1);
      }

      mmcs_get_req_validate_get_file(v2, a1);
    }

    goto LABEL_41;
  }

  error = *buf;
  if (!*buf)
  {
    v11 = @"An unknown error occurred while syncing the item reader writer.";
LABEL_36:
    error = mmcs_cferror_create_error(@"com.apple.mmcs", 39, v11);
    *buf = error;
  }

LABEL_37:
  mmcs_get_file_completed_with_error(a1, error);
  if (*buf)
  {
    CFRelease(*buf);
  }

LABEL_41:
  os_activity_scope_leave(&state);
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t mmcs_get_file_abort_writing_file(uint64_t **a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = **a1;
  v3 = mmcs_chunk_instance_offset(v2);
  if (!mmcs_get_req_context_use_reader_writer_callback(**a1))
  {
    if (!*(v3 + 170) || mmcs_get_request_get_failed_to_preallocate(v2) && *(a1 + 112))
    {
      v6 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = a1[2];
        *buf = 136315138;
        v22 = v7;
        _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_INFO, "Unlinking %s due to abort", buf, 0xCu);
      }

      mmcs_get_file_close_temp_reader_writer(a1);
      v8 = a1[2];
      if (v8)
      {
        unlink(v8);
        v9 = a1[2];
        if (v9)
        {
          free(v9);
        }
      }

      a1[2] = 0;
      v10 = *(v3 + 16);
      v11 = a1[1][5];
      CKUnregisterTemporaryChunks();
      v12 = *(v3 + 16);
      v13 = a1[1][5];
      CKUnregisterFile();
      mmcs_engine_force_commit(v3);
      v14 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = a1[1][5];
        *buf = 134217984;
        v22 = v15;
        _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_INFO, "Committed unregister of partially downloaded item %lld and its temporary chunks", buf, 0xCu);
      }
    }

    else
    {
      v16 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = a1[1][5];
        v18 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Leaving partial results for item %lld in chunk store and file %s", v17, a1[2]);
        v19 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v22 = v18;
          _os_log_impl(&dword_2577D8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v18)
        {
          CFRelease(v18);
        }
      }

      mmcs_get_file_close_temp_reader_writer(a1);
      v20 = a1[2];
      if (v20)
      {
        free(v20);
      }

      a1[2] = 0;
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 1;
}

void mmcs_get_file_completed_with_error(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 115))
  {
    v4 = **a1;
    if (CFSetGetCount(*(*(a1 + 8) + 280)) >= 1)
    {
      v5 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Decrementing outstanding chunk references due to item %lld completing.", *(*(a1 + 8) + 40));
        v7 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v14 = v6;
          _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        if (v6)
        {
          CFRelease(v6);
        }
      }

      CFSetApplyFunction(*(*(a1 + 8) + 280), mmcs_get_file_decrement_outstanding_chunk_references_count, *a1);
      mmcs_item_remove_all_outstanding_chunk_reference(*(a1 + 8));
    }

    *(a1 + 115) = 1;
    ++*(*a1 + 24);
    v8 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Completed download of file for item %lld", *(*(a1 + 8) + 40));
      v10 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v14 = v9;
        _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }

    v11 = *(a1 + 8);
    mmcs_get_file_abort_writing_file(a1);
    mmcs_get_item_progress_make_done_error(a2, buf);
    mmcs_get_request_set_progress_and_notify_item(v4, v11, buf);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void mmcs_get_file_metadata_completed_with_error(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 115))
  {
    v4 = **a1;
    if (CFSetGetCount(*(*(a1 + 8) + 280)) >= 1 && gMMCS_DebugLevel >= 5)
    {
      v6 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"outstanding chunk references is not empty! %@", *(*(a1 + 8) + 280));
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

    *(a1 + 115) = 1;
    ++*(*a1 + 24);
    v9 = *(a1 + 8);
    v10 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Completed download of metadata for item %lld with error %@", v9[5], a2);
      v12 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v15 = v11;
        _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }

    mmcs_get_item_progress_make_done_error(a2, buf);
    mmcs_get_request_set_progress_and_notify_item(v4, v9, buf);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void mmcs_get_file_finalize_file_after_validation(uint64_t **a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = **a1;
  v3 = mmcs_chunk_instance_offset(v2);
  v4 = a1[1];
  mmcs_get_file_close_temp_reader_writer(a1);
  bzero(__str, 0x400uLL);
  if (mmcs_get_req_context_use_reader_writer_callback(v2) || mmcs_item_is_metadata_only(a1[1]))
  {
LABEL_19:
    if (*(a1 + 113))
    {
      v23 = *(v3 + 16);
      v24 = v4[5];
      if ((CKConvertTemporaryChunks() & 1) == 0)
      {
        v25 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to convert temporary chunks for item %lld", v4[5]);
          v27 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v52 = v26;
            _os_log_impl(&dword_2577D8000, v27, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v26)
          {
            CFRelease(v26);
          }
        }
      }
    }

    v28 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v4[5];
      *buf = 134217984;
      v52 = v29;
      _os_log_impl(&dword_2577D8000, v28, OS_LOG_TYPE_DEFAULT, "itemId %llu completed", buf, 0xCu);
    }

    if (mmcs_get_req_context_use_reader_writer_callback(v2))
    {
      v30 = 0;
    }

    else
    {
      v30 = __str;
    }

    mmcs_get_req_item_set_done_success_and_notify_item(v2, v4, v30);
    goto LABEL_32;
  }

  v5 = a1[2];
  if (!v5)
  {
    mmcs_get_file_finalize_file_after_validation_cold_1();
  }

  if (gMMCS_DebugLevel >= 4)
  {
    is_apple_file_system = mmcs_engine_is_apple_file_system(v3);
    v5 = a1[2];
    if (is_apple_file_system)
    {
      v49 = 0;
      v50 = 0;
      v47 = 0;
      v48 = 0;
      v7 = mmcs_file_extents(v5, &v50, &v49, &v48, &v47);
      v8 = mmcs_logging_logger_default();
      v9 = v8;
      if (v7)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v10 = "Error retrieving file extent information.";
          v11 = v9;
          v12 = OS_LOG_TYPE_ERROR;
          v13 = 2;
LABEL_11:
          _os_log_impl(&dword_2577D8000, v11, v12, v10, buf, v13);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = a1[1][5];
        *buf = 134219008;
        v52 = v14;
        v53 = 2048;
        v54 = v50;
        v55 = 2048;
        v56 = v49;
        v57 = 2048;
        v58 = v48;
        v59 = 2048;
        v60 = v47;
        v10 = "itemId %llu had %llu bytes in %llu blocks represented by blocks of width %llu bytes and %llu extents.";
        v11 = v9;
        v12 = OS_LOG_TYPE_DEFAULT;
        v13 = 52;
        goto LABEL_11;
      }

      v5 = a1[2];
    }
  }

  v15 = ub_dirname_alloced(v5);
  if (v15)
  {
    v16 = v15;
    snprintf(__str, 0x400uLL, "%s/new-0x%016llx", v15, v4[5]);
    free(v16);
  }

  else
  {
    v17 = a1[2];
    __strlcpy_chk();
    __strlcat_chk();
  }

  v18 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v20 = a1[2];
    v21 = v4[5];
    *buf = 136315650;
    v52 = v20;
    v53 = 2080;
    v54 = __str;
    v55 = 2048;
    v56 = v21;
    _os_log_impl(&dword_2577D8000, v18, OS_LOG_TYPE_DEFAULT, "Renaming %s to %s for item %lld", buf, 0x20u);
  }

  rename(a1[2], __str, v19);
  if (v22 != -1)
  {
    goto LABEL_19;
  }

  v32 = *__error();
  v33 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v34 = *MEMORY[0x277CBECE8];
    v35 = a1[2];
    v36 = strerror(v32);
    v37 = CFStringCreateWithFormat(v34, 0, @"Failed to rename %s to %s: %s", v35, __str, v36);
    v38 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v52 = v37;
      _os_log_impl(&dword_2577D8000, v38, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v37)
    {
      CFRelease(v37);
    }
  }

  v39 = a1[2];
  strerror(v32);
  file_error_with_format = mmcs_cferror_create_file_error_with_format(v32, @"Failed to rename %s to %s: %s(%d)", v40, v41, v42, v43, v44, v45, v39);
  mmcs_get_file_abort_writing_file(a1);
  mmcs_get_item_progress_make_done_error(file_error_with_format, buf);
  mmcs_get_request_set_progress_and_notify_item(v2, v4, buf);
  if (file_error_with_format)
  {
    CFRelease(file_error_with_format);
  }

LABEL_32:
  v31 = *MEMORY[0x277D85DE8];
}

uint64_t mmcs_get_file_ensure_temp_file_is_open_with_length_check(uint64_t a1, void *a2, off_t a3)
{
  v139 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *a2 = 0;
  }

  v6 = (a1 + 24);
  if (*(a1 + 24))
  {
    goto LABEL_4;
  }

  v8 = **a1;
  v9 = mmcs_chunk_instance_offset(v8);
  if ((mmcs_get_req_context_use_reader_writer_callback(**a1) == 0) != (*(a1 + 16) != 0))
  {
    mmcs_get_file_ensure_temp_file_is_open_with_length_check_cold_1();
  }

  if (mmcs_get_req_context_use_reader_writer_callback(**a1))
  {
    *&cf.st_dev = 0;
    v10 = mmcs_engine_owner(v9);
    requestor = mmcs_request_get_requestor(**a1);
    if (mmcs_engine_get_item_reader_writer_for_item_callback(v9, v10, requestor, *(*(a1 + 8) + 40), (a1 + 24), &cf))
    {
      v12 = *v6;
      if (*v6)
      {
        goto LABEL_9;
      }
    }

    error = *&cf.st_dev;
    if (!*&cf.st_dev)
    {
      error = mmcs_cferror_create_error(@"com.apple.mmcs", 39, @"An unknown error occurred retrieving item reader writer from callback for download.");
      *&cf.st_dev = error;
    }

    if (a2)
    {
      *a2 = CFRetain(error);
      error = *&cf.st_dev;
    }

    if (!error)
    {
      goto LABEL_90;
    }

LABEL_22:
    CFRelease(error);
LABEL_90:
    result = 0;
    goto LABEL_91;
  }

  v15 = access(*(a1 + 16), 0);
  memset(&cf, 0, sizeof(cf));
  v16 = open(*(a1 + 16), 514, 384);
  v136 = 0;
  if ((v16 & 0x80000000) != 0)
  {
    v34 = *__error();
    v35 = mmcs_logging_logger_default();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
    v37 = MEMORY[0x277CBECE8];
    if (v36)
    {
      v38 = *(a1 + 16);
      v39 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to open/create file path %s for item %lld", v38, *(*(a1 + 8) + 40));
      v40 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        buf.st_dev = 138543362;
        *&buf.st_mode = v39;
        _os_log_impl(&dword_2577D8000, v40, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
      }

      if (v39)
      {
        CFRelease(v39);
      }
    }

    if (!a2)
    {
      goto LABEL_90;
    }

    Mutable = CFStringCreateMutable(*v37, 0);
    v42 = ub_dirname_alloced(*(a1 + 16));
    if (v42)
    {
      v43 = v42;
      while (1)
      {
        if (CFStringGetLength(Mutable) >= 1)
        {
          CFStringAppend(Mutable, @"\n");
        }

        memset(&buf, 0, sizeof(buf));
        if (stat(v43, &buf) == -1)
        {
          v45 = __error();
          v46 = *v45;
          v126 = strerror(*v45);
          CFStringAppendFormat(Mutable, 0, @"stat (%s) failed: %s (%d)", v43, v126, v46);
        }

        else
        {
          v44 = (buf.st_mode & 0xF000) == 0x4000 ? "isDir" : "isNotDir";
          CFStringAppendFormat(Mutable, 0, @"stat (%s) %s", v43, v44, v127);
        }

        v47 = *v43;
        if (!(v47 == 47 ? -v43[1] : 47 - v47))
        {
          break;
        }

        v49 = ub_dirname_alloced(v43);
        free(v43);
        v43 = v49;
        if (!v49)
        {
          goto LABEL_93;
        }
      }

      free(v43);
    }

LABEL_93:
    v69 = *(a1 + 16);
    v70 = *(*(a1 + 8) + 40);
    strerror(v34);
    *a2 = mmcs_cferror_create_file_error_with_format(v34, @"Unable to open file path %s for item %lld: %s\n%@\n", v71, v72, v73, v74, v75, v76, v69);
    if (!Mutable)
    {
      goto LABEL_90;
    }

    error = Mutable;
    goto LABEL_22;
  }

  v17 = v16;
  if (fstat(v16, &cf))
  {
    v18 = *__error();
    v19 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 16);
      v21 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to get stat file path %s for item %lld", v20, *(*(a1 + 8) + 40));
      v22 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        buf.st_dev = 138543362;
        *&buf.st_mode = v21;
        _os_log_impl(&dword_2577D8000, v22, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
      }

      if (v21)
      {
        CFRelease(v21);
      }
    }

    v23 = *(a1 + 16);
    v125 = *(*(a1 + 8) + 40);
    strerror(v18);
    file_error_with_format = mmcs_cferror_create_file_error_with_format(v18, @"Unable to stat file path %s for item %lld: %s", v24, v25, v26, v27, v28, v29, v23);
    v31 = *a1;
    v32 = *(a1 + 8);
    v33 = *v31;
    mmcs_get_item_progress_make_done_error(file_error_with_format, &buf);
    mmcs_get_request_set_progress_and_notify_item(v33, v32, &buf);
    if (a2)
    {
      *a2 = CFRetain(file_error_with_format);
    }

    if (file_error_with_format)
    {
      CFRelease(file_error_with_format);
    }

    close(v17);
    goto LABEL_90;
  }

  is_derivative = mmcs_item_is_derivative(*(a1 + 8));
  if ((a3 & 0x8000000000000000) == 0 || !is_derivative)
  {
    if (a3 < 0)
    {
      a3 = *(*(a1 + 8) + 16);
    }

    if (cf.st_size > a3)
    {
      v51 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = *(a1 + 8);
        v53 = *(v52 + 40);
        v54 = *(v52 + 16);
        buf.st_dev = 134218496;
        *&buf.st_mode = v53;
        WORD2(buf.st_ino) = 2048;
        *(&buf.st_ino + 6) = cf.st_size;
        HIWORD(buf.st_gid) = 2048;
        *&buf.st_rdev = v54;
        _os_log_impl(&dword_2577D8000, v51, OS_LOG_TYPE_ERROR, "Truncating oversized temp file %llu of %llu bytes to %llu bytes", &buf, 0x20u);
      }

      if (ftruncate(v17, *(*(a1 + 8) + 16)) == -1)
      {
        v55 = *__error();
        v56 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v57 = strerror(v55);
          buf.st_dev = 136315138;
          *&buf.st_mode = v57;
          _os_log_impl(&dword_2577D8000, v56, OS_LOG_TYPE_ERROR, "Failed to truncate temp file with error %s", &buf, 0xCu);
        }
      }
    }
  }

  if (mmcs_item_get_default_reader_writer_sparse_aware(*(a1 + 8)))
  {
    sparse_block_size = mmcs_engine_get_sparse_block_size();
  }

  else
  {
    sparse_block_size = 0;
  }

  if (v15 && !sparse_block_size && mmcs_engine_is_apple_file_system(v9) && !mmcs_item_is_derivative(*(a1 + 8)) && !mmcs_item_has_requested_length_at_file_offset(*(a1 + 8)))
  {
    BOOLean_from_cfpreferences_object_for_key = mmcs_get_BOOLean_from_cfpreferences_object_for_key(@"UsePreallocate", 1);
    v78 = mmcs_logging_logger_default();
    v79 = os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT);
    if (BOOLean_from_cfpreferences_object_for_key)
    {
      if (v79)
      {
        v80 = *(a1 + 8);
        v81 = *(v80 + 16);
        v82 = *(v80 + 40);
        buf.st_dev = 134218240;
        *&buf.st_mode = v81;
        WORD2(buf.st_ino) = 2048;
        *(&buf.st_ino + 6) = v82;
        _os_log_impl(&dword_2577D8000, v78, OS_LOG_TYPE_DEFAULT, "Preallocating %llu bytes for itemId %llu,", &buf, 0x16u);
      }

      *(a1 + 112) = 1;
      Current = CFAbsoluteTimeGetCurrent();
      v84 = *(a1 + 8);
      v86 = *(v84 + 16);
      v85 = (v84 + 16);
      if (v86 < 1)
      {
        v87 = 0;
        v89 = 0;
      }

      else
      {
        v87 = 0;
        v88 = 1;
        while (1)
        {
          v89 = v88;
          v134 = 0;
          v135 = 0;
          v133[0] = 0x30000000ALL;
          v90 = *v85 - v87;
          v133[1] = 0;
          v134 = v90;
          if (fcntl(v17, 42, v133) == -1)
          {
            v96 = *__error();
            __errnum = mmcs_logging_logger_default();
            if (!os_log_type_enabled(__errnum, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_112;
            }

            v97 = *(a1 + 8);
            v128 = *(v97 + 40);
            v129 = *(v97 + 16);
            v130 = v134;
            v98 = strerror(v96);
            buf.st_dev = 134219010;
            *&buf.st_mode = v128;
            WORD2(buf.st_ino) = 2048;
            *(&buf.st_ino + 6) = v129;
            HIWORD(buf.st_gid) = 2048;
            v99 = __errnum;
            *&buf.st_rdev = v130;
            LOWORD(buf.st_atimespec.tv_sec) = 1024;
            *(&buf.st_atimespec.tv_sec + 2) = v96;
            HIWORD(buf.st_atimespec.tv_sec) = 2080;
            buf.st_atimespec.tv_nsec = v98;
            v100 = "Preallocation for itemId %llu of %llu bytes failed to allocate %llu bytes with posix error %d (%s).";
            v101 = 48;
            goto LABEL_111;
          }

          if (v135 <= 0)
          {
            break;
          }

          v87 += v135;
          v91 = *(a1 + 8);
          v92 = *(v91 + 16);
          v85 = (v91 + 16);
          v88 = v89 + 1;
          if (v87 >= v92)
          {
            goto LABEL_112;
          }
        }

        v102 = mmcs_logging_logger_default();
        if (!os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_112;
        }

        v103 = *(a1 + 8);
        v104 = *(v103 + 40);
        v105 = *(v103 + 16);
        buf.st_dev = 134218496;
        *&buf.st_mode = v104;
        WORD2(buf.st_ino) = 2048;
        *(&buf.st_ino + 6) = v105;
        HIWORD(buf.st_gid) = 2048;
        *&buf.st_rdev = v134;
        v100 = "Preallocation for itemId %llu of %llu bytes failed to allocate %llu bytes.";
        v99 = v102;
        v101 = 32;
LABEL_111:
        _os_log_impl(&dword_2577D8000, v99, OS_LOG_TYPE_ERROR, v100, &buf, v101);
      }

LABEL_112:
      v106 = CFAbsoluteTimeGetCurrent() - Current;
      if (v106 > 0.25 || v87 < *(*(a1 + 8) + 16))
      {
        v108 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        v108 = OS_LOG_TYPE_DEFAULT;
      }

      v109 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v109, v108))
      {
        v110 = *(a1 + 8);
        v111 = *(v110 + 40);
        v112 = *(v110 + 16);
        v113 = "successful";
        if (v87 < v112)
        {
          v113 = "failed";
        }

        __errnuma = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Preallocated %llu bytes for itemId %llu of %llu bytes %s after %.3f seconds over %llu preallocation calls.", v87, v111, v112, v113, *&v106, v89);
        v114 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v114, v108))
        {
          buf.st_dev = 138543362;
          *&buf.st_mode = __errnuma;
          _os_log_impl(&dword_2577D8000, v114, v108, "%{public}@", &buf, 0xCu);
        }

        if (__errnuma)
        {
          CFRelease(__errnuma);
        }
      }

      if (mmcs_get_request_should_error_on_preallocation_failure(v8))
      {
        v115 = *(a1 + 8);
        if (v87 < *(v115 + 16) || *(v115 + 408))
        {
          v116 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
          {
            v117 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Failed to preallocate item %lld", *(*(a1 + 8) + 40));
            v118 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
            {
              buf.st_dev = 138543362;
              *&buf.st_mode = v117;
              _os_log_impl(&dword_2577D8000, v118, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
            }

            if (v117)
            {
              CFRelease(v117);
            }
          }

          mmcs_get_request_set_failed_to_preallocate(v8, 1);
          error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 48, 0, @"Failed to preallocate item %lld", v119, v120, v121, v122, *(*(a1 + 8) + 40));
          v124 = error_with_underlying_error;
          if (a2)
          {
            *a2 = CFRetain(error_with_underlying_error);
          }

          if (v124)
          {
            CFRelease(v124);
          }

          goto LABEL_89;
        }
      }
    }

    else if (v79)
    {
      v93 = *(a1 + 8);
      v94 = *(v93 + 40);
      v95 = *(v93 + 16);
      buf.st_dev = 134218240;
      *&buf.st_mode = v94;
      WORD2(buf.st_ino) = 2048;
      *(&buf.st_ino + 6) = v95;
      _os_log_impl(&dword_2577D8000, v78, OS_LOG_TYPE_DEFAULT, "Preallocation skipped for itemId %llu of %llu bytes", &buf, 0x16u);
    }
  }

  v12 = MMCSItemReaderWriterCreateWithFileDescriptor(v17, 0, 0, sparse_block_size, &v136);
  *v6 = v12;
  if (!v12 || v136)
  {
    v59 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v65 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"An error occurred creating temp reader writer for item %lld", *(*(a1 + 8) + 40));
      v66 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        buf.st_dev = 138543362;
        *&buf.st_mode = v65;
        _os_log_impl(&dword_2577D8000, v66, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
      }

      if (v65)
      {
        CFRelease(v65);
      }
    }

    v67 = v136;
    if (!v136)
    {
      v67 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 39, @"An unknown error occurred creating temp fd reader writer for item %lld", v60, v61, v62, v63, v64, *(*(a1 + 8) + 40));
      v136 = v67;
    }

    if (a2)
    {
      *a2 = CFRetain(v67);
      v67 = v136;
    }

    if (v67)
    {
      CFRelease(v67);
    }

    v136 = 0;
    goto LABEL_89;
  }

LABEL_9:
  *&cf.st_dev = 0;
  if (!MMCSItemReaderWriterOpen(v12, &cf))
  {
    v13 = *&cf.st_dev;
    if (!*&cf.st_dev)
    {
      v13 = mmcs_cferror_create_error(@"com.apple.mmcs", 39, @"An unknown error occurred while opening the item reader writer.");
      *&cf.st_dev = v13;
    }

    if (a2)
    {
      *a2 = CFRetain(v13);
      v13 = *&cf.st_dev;
    }

    if (v13)
    {
      CFRelease(v13);
    }

    *&cf.st_dev = 0;
LABEL_89:
    mmcs_get_file_close_temp_reader_writer(a1);
    goto LABEL_90;
  }

LABEL_4:
  result = 1;
LABEL_91:
  v68 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mmcs_get_file_init_temp_file(uint64_t a1, CFTypeRef *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *a2 = 0;
  }

  v4 = **a1;
  v5 = mmcs_chunk_instance_offset(v4);
  cf = 0;
  if (mmcs_item_is_metadata_only(*(a1 + 8)))
  {
    mmcs_get_file_init_temp_file_cold_1();
  }

  if (*(a1 + 24))
  {
    mmcs_get_file_init_temp_file_cold_2();
  }

  v6 = (a1 + 16);
  if (*(a1 + 16))
  {
    mmcs_get_file_init_temp_file_cold_3();
  }

  if (!mmcs_engine_file_path(v5, "tmpm", *(*(a1 + 8) + 40), (a1 + 16), &cf))
  {
    if (*v6)
    {
      free(*v6);
    }

    *v6 = 0;
    v14 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to get file path for item %lld", *(*(a1 + 8) + 40));
      v16 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v23 = v15;
        _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v15)
      {
        CFRelease(v15);
      }
    }

    error = cf;
    if (!cf)
    {
      v18 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to get work path for item %lld", *(*(a1 + 8) + 40));
      error = mmcs_cferror_create_error(@"com.apple.mmcs", 10, v18);
      cf = error;
      if (v18)
      {
        CFRelease(v18);
        error = cf;
      }
    }

    v19 = *(a1 + 8);
    mmcs_get_item_progress_make_done_error(error, buf);
    mmcs_get_request_set_progress_and_notify_item(v4, v19, buf);
    if (a2)
    {
      *a2 = CFRetain(cf);
    }

    v12 = 0;
    result = 0;
    v10 = cf;
    if (!cf)
    {
      goto LABEL_29;
    }

LABEL_27:
    CFRelease(v10);
    result = v12;
    goto LABEL_29;
  }

  if (!*(v5 + 170))
  {
    v7 = *(v5 + 16);
    v8 = *(*(a1 + 8) + 40);
    CKUnregisterFile();
    unlink(*(a1 + 16));
  }

  v9 = mmcs_logging_logger_default();
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    result = 1;
    goto LABEL_29;
  }

  v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Opened file %s", *v6);
  v11 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v23 = v10;
    _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
  }

  v12 = 1;
  result = 1;
  if (v10)
  {
    goto LABEL_27;
  }

LABEL_29:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

double mmcs_get_file_local_fulfillment_elapsed_seconds(uint64_t a1)
{
  v1 = *(a1 + 64);
  result = 0.0;
  if (v1 != 0.0)
  {
    v3 = *(a1 + 72);
    v4 = v3 < v1 || v3 == 0.0;
    result = v3 - v1;
    if (v4)
    {
      return 0.0;
    }
  }

  return result;
}

uint64_t mmcs_get_file_compute_remaining_work(uint64_t **a1)
{
  v192 = *MEMORY[0x277D85DE8];
  v2 = mmcs_chunk_instance_offset(**a1);
  error = 0;
  if (*(a1 + 115))
  {
    goto LABEL_3;
  }

  v3 = v2;
  if (mmcs_item_is_derivative(a1[1]))
  {
    goto LABEL_3;
  }

  if (!mmcs_item_is_metadata_only(a1[1]))
  {
    if (!mmcs_get_req_context_use_reader_writer_callback(**a1) && !mmcs_get_file_init_temp_file(a1, &error))
    {
      if (!error)
      {
        error = mmcs_cferror_create_error(@"com.apple.mmcs", 1, @"An unknown error creating temp file.");
      }

      goto LABEL_170;
    }

    if (!mmcs_get_file_ensure_temp_file_is_open_with_length_check(a1, &error, -1))
    {
LABEL_170:
      mmcs_get_file_completed_with_error(a1, error);
      if (error)
      {
        CFRelease(error);
      }

      error = 0;
      mmcs_get_file_close_temp_reader_writer(a1);
      result = 0;
      goto LABEL_4;
    }
  }

  if (!*(a1 + 113))
  {
    goto LABEL_156;
  }

  v6 = **a1;
  v7 = mmcs_chunk_instance_offset(v6);
  v177 = 0;
  cf = 0;
  error = 0;
  v8 = a1[1];
  v9 = v8[50];
  if (v9)
  {
    CFDataGetBytePtr(v9);
    v8 = a1[1];
  }

  else
  {
    v10 = *v8;
  }

  v11 = v8[2];
  v12 = v8[11];
  if (CKFileDigestResultsCreate())
  {
    v13 = *(v7 + 16);
    v14 = a1[1][5];
    if (CKGetRegisteredFileMetadata())
    {
      if (!CKFileDigestResultsEqual())
      {
        v21 = CFCopyDescription(cf);
        v22 = CFCopyDescription(v177);
        v23 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v29 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"file signature mismatch for %lld item has %@ != %@ for the chunk store", a1[1][5], v21, v22);
          v30 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v29;
            _os_log_impl(&dword_2577D8000, v30, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v29)
          {
            CFRelease(v29);
          }
        }

        v166 = a1[1][5];
        v16 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 28, @"The file signature changed: from %@ on the item to %@ registered in the chunk store for item %lld. Perhaps the item should be unregistered.", v24, v25, v26, v27, v28, v21);
        v31 = a1[1];
        mmcs_get_item_progress_make_done_error(v16, buf);
        mmcs_get_request_set_progress_and_notify_item(v6, v31, buf);
        if (v21)
        {
          CFRelease(v21);
        }

        if (v22)
        {
          CFRelease(v22);
        }

        goto LABEL_49;
      }

      if (!*(v7 + 170))
      {
        v164 = a1[1][5];
        v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Item %lld was already registered. Perhaps the item should be unregistered.");
        v16 = mmcs_cferror_create_error(@"com.apple.mmcs", 32, v15);
        if (v15)
        {
          CFRelease(v15);
        }

        v17 = a1[1];
        v18 = v16;
LABEL_48:
        mmcs_get_item_progress_make_done_error(v18, buf);
        mmcs_get_request_set_progress_and_notify_item(v6, v17, buf);
LABEL_49:
        if (v16)
        {
          CFRetain(v16);
          error = v16;
          v37 = 1;
        }

        else
        {
          v37 = 0;
        }

        goto LABEL_52;
      }

      goto LABEL_36;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    v19 = a1[1];
    v20 = v19[50];
    if (v20)
    {
      CFDataGetBytePtr(v20);
      v19 = a1[1];
    }

    else
    {
      v32 = *v19;
    }

    v33 = v19[2];
    v34 = v19[11];
    if (CKFileDigestResultsCreate())
    {
      v35 = *(v7 + 16);
      v36 = a1[1][5];
      if ((CKRegisterFile() & 1) == 0)
      {
        v39 = mmcs_item_copy_description(a1[1]);
        v40 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          LOBYTE(v164) = v39;
          v41 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to register item %@");
          v42 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v41;
            _os_log_impl(&dword_2577D8000, v42, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v41)
          {
            CFRelease(v41);
          }
        }

        if (v39)
        {
          CFRelease(v39);
        }

        v18 = mmcs_cferror_create_error(@"com.apple.mmcs", 19, @"Unable to register item");
        v16 = v18;
        v17 = a1[1];
        goto LABEL_48;
      }

LABEL_36:
      v37 = 0;
      v38 = 0;
      v16 = 0;
      goto LABEL_53;
    }
  }

  v37 = 0;
  v16 = 0;
LABEL_52:
  v38 = 1;
LABEL_53:
  if (cf)
  {
    C3BaseRelease(cf);
  }

  cf = 0;
  if (v177)
  {
    C3BaseRelease(v177);
  }

  v177 = 0;
  if (v37)
  {
    C3BaseRelease(v16);
  }

  if (v38)
  {
    goto LABEL_170;
  }

  error = 0;
  v176 = 0;
  v43 = **a1;
  v44 = mmcs_chunk_instance_offset(v43);
  v45 = v44;
  v46 = a1[1];
  v175 = 0;
  if (!*(v44 + 170))
  {
    v47 = *(v44 + 16);
    v48 = *(v46 + 40);
    if ((CKUnregisterChunksForItem() & 1) == 0)
    {
      goto LABEL_92;
    }
  }

  v174 = 0;
  if (!mmcs_GetSortedRegisteredChunksForItemID(*(v45 + 16), *(v46 + 40), &v175, &v174, 0, 0) || !v175 || !v174)
  {
    v70 = *(v45 + 16);
    v71 = *(v46 + 40);
    if (CKUnregisterChunksForItem())
    {
      v72 = a1[1];
      if (v72[19])
      {
        v169 = v43;
        v73 = 0;
        v74 = 0;
        while (1)
        {
          v75 = 104 * v73;
          do
          {
            v76 = v72[34];
            v77 = *(v76 + v75 + 72);
            if (!v77)
            {
              mmcs_get_file_compute_remaining_work_cold_1();
            }

            v78 = v73;
            v79 = v75;
            if (CFBooleanGetValue(v77))
            {
              break;
            }

            ++v73;
            v72 = a1[1];
            v75 = v79 + 104;
          }

          while (v78 + 1 < v72[18]);
          if (!CFBooleanGetValue(*(v76 + v79 + 72)))
          {
            v151 = @"chunksPartOfItemInstanceCount/partOfItem mismatch";
            goto LABEL_221;
          }

          v85 = *(v76 + v79 + 56);
          if (!*(v85 + 16) && **(v85 + 8) < 0)
          {
            break;
          }

          RegisteredChunk = mmcs_chunk_instance_create_RegisteredChunk((v76 + v79));
          if (!RegisteredChunk)
          {
            v151 = @"No memory to create a registered chunk";
            goto LABEL_219;
          }

          v87 = RegisteredChunk;
          if (!v74 && CKRegisteredChunkOffset())
          {
            v151 = @"Registered offset of first chunk non-zero.";
LABEL_221:
            v157 = 1;
LABEL_222:
            v90 = mmcs_cferror_create_with_format(@"com.apple.mmcs", v157, v151, v80, v81, v82, v83, v84, v164);
            goto LABEL_223;
          }

          v88 = *(v45 + 16);
          if ((CKRegisterChunk() & 1) == 0)
          {
            free(v87);
            v90 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 29, @"chunk for item %lld could not be registered.", v152, v153, v154, v155, v156, *(v46 + 40));
            goto LABEL_223;
          }

          v73 = v78 + 1;
          *(v76 + v79 + 40) = CKRegisteredChunkRowID();
          free(v87);
          v89 = 0;
          ++v74;
          v72 = a1[1];
          if (v74 >= v72[19])
          {
            goto LABEL_151;
          }
        }

        v151 = @"Cannot register encrypted chunk without encryption key.";
LABEL_219:
        v157 = 36;
        goto LABEL_222;
      }

      goto LABEL_150;
    }

LABEL_92:
    v90 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 29, @"chunks for item %lld could not be unregistered.", v49, v50, v51, v52, v53, *(v46 + 40));
    goto LABEL_94;
  }

  if (v174 != *(v46 + 152))
  {
    v165 = *(v46 + 152);
    v90 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 29, @"chunklists length mismatch for item %lld. Expected %llu got %llu from the chunk store. Perhaps the item should be unregistered.", v54, v55, v56, v57, v58, *(v46 + 40));
    goto LABEL_94;
  }

  if (mmcs_item_is_metadata_only(v46))
  {
    goto LABEL_150;
  }

  if (v174)
  {
    v59 = 0;
    v60 = 0;
    while (1)
    {
      v61 = *(v46 + 272);
      v67 = v61 + v59;
      if (CKRegisteredChunkOffset() != *(v61 + v59 + 32))
      {
        break;
      }

      if (CKRegisteredChunkLength() != *(*(v67 + 56) + 4))
      {
        break;
      }

      CKRegisteredChunkSignature();
      v68 = *(*(v67 + 56) + 8);
      if ((CKChunkSignaturesEqual() & 1) == 0)
      {
        break;
      }

      if (CKRegisteredChunkLocation() != 116 && CKRegisteredChunkLocation() != 110)
      {
        v158 = *(v46 + 40);
        CKRegisteredChunkLocation();
        v90 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 29, @"chunk for item %lld at chunk index %llu has location %c. Perhaps the item should be unregistered.", v159, v160, v161, v162, v163, v158);
        goto LABEL_94;
      }

      *(v61 + v59 + 40) = CKRegisteredChunkRowID();
      CKRegisteredChunkSize();
      ++v60;
      v69 = v174;
      v59 += 104;
      if (v60 >= v174)
      {
        goto LABEL_105;
      }
    }

    v90 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 29, @"chunk mismatch for item %lld at chunk index %llu. Perhaps the item should be unregistered.", v62, v63, v64, v65, v66, *(v46 + 40));
LABEL_94:
    v176 = v90;
    goto LABEL_95;
  }

  v69 = 0;
LABEL_105:
  if (!mmcs_get_file_create_buffer(a1, &v176))
  {
    v90 = v176;
    goto LABEL_95;
  }

  if (!v69)
  {
LABEL_150:
    v89 = 0;
    goto LABEL_151;
  }

  v169 = v43;
  v99 = 0;
  alloc = *MEMORY[0x277CBECE8];
  v168 = v69;
  while (1)
  {
    v100 = a1[1][34];
    if (CKRegisteredChunkLocation() == 116)
    {
      break;
    }

LABEL_148:
    v89 = 0;
    CKRegisteredChunkSize();
    if (++v99 == v69)
    {
      goto LABEL_151;
    }
  }

  v102 = a1[4];
  v101 = a1[5];
  v170 = mmcs_chunk_instance_offset(**a1);
  v171 = v100 + 104 * v99;
  v103 = mmcs_chunk_instance_chunk_coder_create(v171, 3);
  v104 = CKRegisteredChunkLength();
  v105 = CKRegisteredChunkOffset();
  while (1)
  {
    v106 = (v104 >= v101 ? v101 : v104);
    v177 = 0;
    cf = 0;
    v107 = MMCSItemReaderWriterRead(a1[3], v105, v102, v106, &v177, &cf);
    v108 = cf;
    if (!v107 || cf != 0)
    {
      break;
    }

    if (!v177)
    {
      goto LABEL_133;
    }

    CKChunkCoderUpdate();
    v105 += v177;
    v104 = (v104 - v177);
    if (!v104)
    {
      goto LABEL_135;
    }
  }

  if (cf)
  {
    v108 = mmcs_cferror_copy_description(cf);
  }

  if (v108)
  {
    v110 = v108;
  }

  else
  {
    v110 = @"unknown";
  }

  v111 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
  {
    LOBYTE(v164) = v110;
    v112 = CFStringCreateWithFormat(alloc, 0, @"reading from readerWriter failed with error: %@");
    v113 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v112;
      _os_log_impl(&dword_2577D8000, v113, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v112)
    {
      CFRelease(v112);
    }
  }

  CFRelease(v110);
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_133:
  if (v104)
  {
    v114 = 0;
    goto LABEL_136;
  }

LABEL_135:
  v114 = CKChunkCoderFinish() != 0;
LABEL_136:
  if (v103)
  {
    C3BaseRelease(v103);
  }

  v115 = CKRegisteredChunkSignatureCopyCString();
  v116 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
  {
    v164 = a1[1][5];
    v117 = CFStringCreateWithFormat(alloc, 0, @"Temporary file for item %lld %s chunk %s");
    v118 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v117;
      _os_log_impl(&dword_2577D8000, v118, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v117)
    {
      CFRelease(v117);
    }
  }

  if (v115)
  {
    free(v115);
  }

  a1[10] = (a1[10] + CKRegisteredChunkLength());
  if (v114)
  {
    a1[11] = (a1[11] + CKRegisteredChunkLength());
    *(v171 + 48) = 1;
    v69 = v168;
    goto LABEL_148;
  }

  *(v171 + 48) = 0;
  v119 = *(v170 + 16);
  v69 = v168;
  if (CKRelocateTemporaryChunk())
  {
    goto LABEL_148;
  }

  v90 = mmcs_cferror_create_error(@"com.apple.mmcs", 29, @"A temporary chunk could not be registered as needed.");
LABEL_223:
  v176 = v90;
  v43 = v169;
LABEL_95:
  if (!v90)
  {
    v176 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"No local error was specified", v91, v92, v93, v94, v95, v164);
  }

  v96 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
  {
    v97 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to register chunks for item %lld: %@", *(v46 + 40), v176);
    v98 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v97;
      _os_log_impl(&dword_2577D8000, v98, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v97)
    {
      CFRelease(v97);
    }
  }

  mmcs_get_item_progress_make_done_error(v176, buf);
  mmcs_get_request_set_progress_and_notify_item(v43, v46, buf);
  error = CFRetain(v176);
  v89 = 1;
LABEL_151:
  if (v176)
  {
    CFRelease(v176);
  }

  v176 = 0;
  if (v175)
  {
    free(v175);
  }

  if (v89)
  {
    goto LABEL_170;
  }

LABEL_156:
  if (mmcs_item_is_metadata_only(a1[1]))
  {
    goto LABEL_202;
  }

  if (*(v3 + 171) && !mmcs_get_file_fulfill_locally(a1, &error))
  {
    goto LABEL_170;
  }

  error = 0;
  v120 = **a1;
  v121 = mmcs_chunk_instance_offset(v120);
  cf = 0;
  *buf = 0;
  if (!*(a1 + 113) || (mmcs_GetSortedRegisteredChunksForItemID(*(v121 + 16), a1[1][5], buf, &cf, 0, 0) ? (v122 = *buf == 0) : (v122 = 1), !v122 ? (v123 = cf == 0) : (v123 = 1), !v123))
  {
    v124 = *MEMORY[0x277CBECE8];
    Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &chunkReferenceSignatureEqualitySetCallbacks);
    v126 = CFSetCreateMutable(v124, 0, &chunkReferenceSignatureEqualitySetCallbacks);
    v127 = *buf;
    v172 = v120;
    if (*buf)
    {
      v128 = cf;
      v129 = a1[1];
      if (cf != v129[19])
      {
        mmcs_get_file_compute_remaining_work_cold_2();
      }
    }

    else
    {
      v129 = a1[1];
      v128 = v129[19];
    }

    if (v128)
    {
      v130 = 0;
      v131 = 0;
      do
      {
        v132 = 104 * v130;
        do
        {
          v133 = v129[34];
          v134 = *(v133 + v132 + 72);
          if (!v134)
          {
            mmcs_get_file_compute_remaining_work_cold_6();
          }

          v135 = v130;
          v136 = v132;
          if (CFBooleanGetValue(v134))
          {
            break;
          }

          v130 = v135 + 1;
          v129 = a1[1];
          v132 = v136 + 104;
        }

        while (v135 + 1 < v129[18]);
        if (!CFBooleanGetValue(*(v133 + v136 + 72)))
        {
          mmcs_get_file_compute_remaining_work_cold_5();
        }

        if (!mmcs_chunk_instance_is_chunk_reference((v133 + v136)))
        {
          mmcs_get_file_compute_remaining_work_cold_4();
        }

        v137 = v133 + v136;
        if (v127)
        {
          v138 = *(v133 + v136 + 48);
          if (v138 == (CKRegisteredChunkLocation() != 116))
          {
            mmcs_get_file_compute_remaining_work_cold_3();
          }

          if (*(v137 + 48))
          {
            v139 = Mutable;
          }

          else
          {
            v139 = v126;
          }

          CFSetAddValue(v139, *(v133 + v136 + 56));
          v127 += CKRegisteredChunkSize();
        }

        else
        {
          if (*(v133 + v136 + 48))
          {
            v140 = Mutable;
          }

          else
          {
            v140 = v126;
          }

          CFSetAddValue(v140, *(v137 + 56));
        }

        v130 = v135 + 1;
        ++v131;
        v129 = a1[1];
      }

      while (v131 < v129[19]);
    }

    XCFSetRemoveValuesFromSet(Mutable, v126);
    CFSetApplyFunction(Mutable, mmcs_get_file_notify_locally_fulfilled_chunk_reference, a1);
    mmcs_get_request_notify_item_with_pending_progress(v172, a1[1]);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v126)
    {
      CFRelease(v126);
    }

    if (*buf)
    {
      free(*buf);
    }
  }

  v141 = a1[4];
  if (v141)
  {
    free(v141);
  }

  a1[4] = 0;
  a1[5] = 0;
  mmcs_get_file_close_temp_reader_writer(a1);
LABEL_202:
  v142 = *(a1 + 8);
  v143 = 0.0;
  if (v142 != 0.0 && (v144 = *(a1 + 9), v144 != 0.0) && v144 >= v142 && (v143 = v144 - v142, v144 - v142 != 0.0) || a1[11] || a1[12] || a1[10] || a1[13])
  {
    v145 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
    {
      v146 = a1[1][5];
      v147 = a1[12];
      v148 = a1[13];
      v150 = a1[10];
      v149 = a1[11];
      *buf = 134219520;
      *&buf[4] = v146;
      v180 = 2048;
      v181 = v143;
      v182 = 2048;
      v183 = v149 + v147 + v148;
      v184 = 2048;
      v185 = v150;
      v186 = 2048;
      v187 = v149;
      v188 = 2048;
      v189 = v147;
      v190 = 2048;
      v191 = v148;
      _os_log_impl(&dword_2577D8000, v145, OS_LOG_TYPE_DEFAULT, "itemId:%llu local fulfillment took %0.4lf seconds for %llu bytes. Validated for Resume (%llu bytes), Resumed (%llu bytes), Fullfilled Locally (%llu bytes), Fullfilled By Peers (%llu bytes)", buf, 0x48u);
    }
  }

LABEL_3:
  result = 1;
LABEL_4:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mmcs_get_file_fulfill_locally(uint64_t a1, CFErrorRef *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *a2 = 0;
  }

  *(a1 + 64) = CFAbsoluteTimeGetCurrent();
  if (!mmcs_get_file_create_buffer(a1, a2))
  {
    LOBYTE(v16) = 0;
    goto LABEL_64;
  }

  v4 = **a1;
  v5 = mmcs_chunk_instance_offset(v4);
  v58 = 0;
  requestor = mmcs_request_get_requestor(v4);
  if (!mmcs_local_chunk_satisfyer_create(&v58, v5, requestor, *(a1 + 24), a1 + 120, *(a1 + 113)))
  {
    LOBYTE(v16) = 0;
    *a2 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Failed to initialize mmcs_local_chunk_satisfyer", v7, v8, v9, v10, v11, v53);
    goto LABEL_64;
  }

  if (!*(a1 + 113))
  {
    v16 = 1;
    v17 = -1;
    v18 = 48;
    do
    {
      v19 = *(a1 + 8);
      if (++v17 >= *(v19 + 144))
      {
        break;
      }

      v20 = *(v19 + 272);
      RegisteredChunk = mmcs_chunk_instance_create_RegisteredChunk((v20 + v18 - 48));
      v22 = mmcs_local_chunk_satisfyer_perform(v58, v20 + v18 - 48, RegisteredChunk, 3, *(a1 + 32), *(a1 + 40), a2);
      v23 = v58;
      *(a1 + 96) += v58[9];
      v23[9] = 0;
      if (v22)
      {
        if (*(v20 + v18))
        {
          v24 = 0;
        }

        else
        {
          if (!mmcs_external_chunk_satisfyer_perform(v23, v20 + v18 - 48, RegisteredChunk, *(a1 + 32), *(a1 + 40), a2))
          {
            v16 = 0;
          }

          v23 = v58;
          v24 = v58[9];
        }
      }

      else
      {
        v24 = 0;
        v16 = 0;
      }

      *(a1 + 104) += v24;
      v23[9] = 0;
      if (RegisteredChunk)
      {
        free(RegisteredChunk);
      }

      v18 += 104;
    }

    while (v16);
    goto LABEL_61;
  }

  v56 = 0;
  v57 = 0;
  SortedRegisteredChunksForItemID = mmcs_GetSortedRegisteredChunksForItemID(*(v5 + 16), *(*(a1 + 8) + 40), &v57, &v56, 0, 0);
  v13 = v57;
  if (SortedRegisteredChunksForItemID)
  {
    v14 = v57 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14 || v56 == 0)
  {
    LOBYTE(v16) = 1;
    if (v57)
    {
      goto LABEL_60;
    }

    goto LABEL_61;
  }

  v55 = v5;
  if (v56 != *(*(a1 + 8) + 152))
  {
    mmcs_get_file_fulfill_locally_cold_1();
  }

  v25 = 0;
  v26 = 0;
  v16 = 1;
  do
  {
    v27 = *(a1 + 8);
    v28 = 104 * v26;
    do
    {
      v29 = v26;
      v30 = *(v27 + 272);
      v31 = *(v30 + v28 + 72);
      if (!v31)
      {
        mmcs_get_file_fulfill_locally_cold_4();
      }

      v32 = v28;
      if (CFBooleanGetValue(v31))
      {
        break;
      }

      v26 = v29 + 1;
      v27 = *(a1 + 8);
      v28 = v32 + 104;
    }

    while ((v29 + 1) < *(v27 + 144));
    v33 = v30 + v32;
    if (!CFBooleanGetValue(*(v30 + v32 + 72)))
    {
      mmcs_get_file_fulfill_locally_cold_3();
    }

    CKRegisteredChunkSignature();
    v34 = *(*(v33 + 56) + 8);
    if ((CKChunkSignaturesEqual() & 1) == 0)
    {
      mmcs_get_file_fulfill_locally_cold_2();
    }

    if (mmcs_item_is_outstanding_chunk_reference(*(a1 + 8), *(v33 + 56)))
    {
      if (CKRegisteredChunkLocation() == 110)
      {
        v35 = mmcs_local_chunk_satisfyer_perform(v58, v30 + v32, v13, 3, *(a1 + 32), *(a1 + 40), a2);
        v36 = v58;
        *(a1 + 96) += v58[9];
        v36[9] = 0;
        if (!v35)
        {
          v38 = 0;
LABEL_50:
          v16 = 0;
          *(a1 + 104) += v38;
          v36[9] = 0;
          goto LABEL_54;
        }

        v37 = v30 + v32;
        if (*(v37 + 48))
        {
          v38 = 0;
        }

        else
        {
          v45 = mmcs_external_chunk_satisfyer_perform(v36, v33, v13, *(a1 + 32), *(a1 + 40), a2);
          v36 = v58;
          v38 = v58[9];
          if (!v45)
          {
            goto LABEL_50;
          }
        }

        *(a1 + 104) += v38;
        v36[9] = 0;
        if (*(v37 + 48))
        {
          v46 = *(v55 + 16);
          if ((CKRelocateTemporaryChunk() & 1) == 0)
          {
            *a2 = mmcs_cferror_create_error(@"com.apple.mmcs", 29, @"A temporary chunk could not be relocated as needed.");
            v48 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              v49 = CKRegisteredChunkItemID();
              v50 = *a2;
              *buf = 134218242;
              v60 = v49;
              v61 = 2114;
              v62 = v50;
              _os_log_impl(&dword_2577D8000, v48, OS_LOG_TYPE_ERROR, "Failed to write chunk to item %lld with error: %{public}@", buf, 0x16u);
            }

LABEL_48:
            v16 = 0;
          }
        }
      }

      else
      {
        if (CKRegisteredChunkLocation() != 116)
        {
          if (a2)
          {
            v39 = CKRegisteredChunkSignatureCopyCString();
            v54 = *(*(a1 + 8) + 40);
            CKRegisteredChunkLocation();
            *a2 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 39, @"Chunk %s for item %lld had unexpected location %d", v40, v41, v42, v43, v44, v39);
            free(v39);
          }

          goto LABEL_48;
        }

        *(v30 + v32 + 48) = 1;
      }
    }

LABEL_54:
    v47 = CKRegisteredChunkSize();
    if (!v16)
    {
      break;
    }

    v26 = v29 + 1;
    v13 += v47;
    ++v25;
  }

  while (v25 < v56);
  v13 = v57;
  if (v57)
  {
LABEL_60:
    free(v13);
  }

LABEL_61:
  if (v58)
  {
    C3BaseRelease(v58);
  }

  v58 = 0;
  *(a1 + 72) = CFAbsoluteTimeGetCurrent();
LABEL_64:
  v51 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t mmcs_get_file_complete_metadata_only_file(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = **a1;
  v3 = mmcs_chunk_instance_offset(v2);
  v4 = *(a1 + 8);
  v5 = v4[50];
  if (v5)
  {
    CFDataGetBytePtr(v5);
    v4 = *(a1 + 8);
  }

  else
  {
    v6 = *v4;
  }

  v7 = v4[2];
  v8 = v4[11];
  if (CKFileDigestResultsCreate())
  {
    v9 = *(v3 + 16);
    v10 = *(*(a1 + 8) + 40);
    if (CKRegisterFile())
    {
      error = 0;
      v12 = 0;
      goto LABEL_18;
    }

    v13 = mmcs_item_copy_description(*(a1 + 8));
    v14 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOBYTE(v48) = v13;
      v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to register item %@");
      v16 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v51 = v15;
        _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
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

    error = mmcs_cferror_create_error(@"com.apple.mmcs", 19, @"Unable to register item");
    v17 = *(a1 + 8);
    mmcs_get_item_progress_make_done_error(error, buf);
    mmcs_get_request_set_progress_and_notify_item(v2, v17, buf);
    if (error)
    {
      CFRetain(error);
      C3BaseRelease(error);
    }
  }

  else
  {
    error = 0;
  }

  v12 = 1;
LABEL_18:
  if (!v12)
  {
    v18 = **a1;
    v19 = mmcs_chunk_instance_offset(v18);
    v20 = *(a1 + 8);
    v21 = *(v19 + 16);
    v22 = v20[5];
    if (CKUnregisterChunksForItem())
    {
      if (!v20[18])
      {
LABEL_26:
        mmcs_get_req_item_set_done_success_and_notify_item(v18, v20, 0);
        v34 = 1;
        result = 1;
        if (!error)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      v28 = 0;
      v29 = 0;
      while (1)
      {
        v30 = v20[34];
        if (!*(v30 + v28 + 72))
        {
          mmcs_get_file_complete_metadata_only_file_cold_1();
        }

        RegisteredChunk = mmcs_chunk_instance_create_RegisteredChunk((v30 + v28));
        if (!RegisteredChunk)
        {
          v36 = @"No memory to create a registered chunk";
          v37 = 36;
          goto LABEL_30;
        }

        v32 = RegisteredChunk;
        CKRegisteredChunkSetLocation();
        v33 = *(v19 + 16);
        if ((CKRegisterChunk() & 1) == 0)
        {
          break;
        }

        *(v30 + v28 + 40) = CKRegisteredChunkRowID();
        free(v32);
        ++v29;
        v28 += 104;
        if (v29 >= v20[18])
        {
          goto LABEL_26;
        }
      }

      free(v32);
      v48 = v20[5];
      v36 = @"chunk for item %lld could not be registered.";
    }

    else
    {
      v48 = v20[5];
      v36 = @"chunks for item %lld could not be unregistered.";
    }

    v37 = 29;
LABEL_30:
    v43 = mmcs_cferror_create_with_format(@"com.apple.mmcs", v37, v36, v23, v24, v25, v26, v27, v48);
    if (!v43)
    {
      v43 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"No local error was specified", v38, v39, v40, v41, v42, v49);
    }

    v44 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to register chunks for item %lld: %@", v20[5], v43);
      v46 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v51 = v45;
        _os_log_impl(&dword_2577D8000, v46, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v45)
      {
        CFRelease(v45);
      }
    }

    mmcs_get_item_progress_make_done_error(v43, buf);
    mmcs_get_request_set_progress_and_notify_item(v18, v20, buf);
    error = CFRetain(v43);
    if (v43)
    {
      CFRelease(v43);
    }
  }

  mmcs_get_file_metadata_completed_with_error(a1, error);
  v34 = 0;
  result = 0;
  if (error)
  {
LABEL_40:
    CFRelease(error);
    result = v34;
  }

LABEL_41:
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mmcs_get_file_create_buffer(uint64_t a1, CFErrorRef *a2)
{
  if (*(a1 + 32))
  {
    return 1;
  }

  v13 = v2;
  *(a1 + 40) = 0x8000;
  v6 = malloc_type_malloc(0x8000uLL, 0x100004077774924uLL);
  *(a1 + 32) = v6;
  if (v6)
  {
    return 1;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 36, @"No memory to create buffer for get_file", v7, v8, v9, v10, v11, v13);
  result = 0;
  *a2 = v12;
  return result;
}

void mmcs_get_file_notify_locally_fulfilled_chunk_reference(unsigned int *a1, uint64_t a2)
{
  if (!mmcs_item_remove_outstanding_chunk_reference(*(a2 + 8), a1))
  {
    mmcs_get_file_notify_locally_fulfilled_chunk_reference_cold_1();
  }

  mmcs_get_state_decrement_outstanding_chunk_references_count(*a2, a1);
  v4 = *(a2 + 8);
  v5 = a1[1];

  mmcs_item_update_get_progress(v4, v5);
}

BOOL mmcs_index_set_create(uint64_t *a1)
{
  *a1 = 0;
  v2 = C3TypeRegister(&mmcs_index_setGetTypeID_typeID);
  Instance = C3TypeCreateInstance_(0, v2, 8uLL);
  if (Instance)
  {
    *(Instance + 16) = objc_alloc_init(MEMORY[0x277CCAB58]);
    *a1 = Instance;
  }

  return Instance != 0;
}

uint64_t mmcs_index_set_add_index(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    mmcs_index_set_add_index_cold_1();
  }

  return [v3 addIndex:a2];
}

void *mmcs_index_set_add_range(uint64_t a1, int a2, int a3)
{
  result = *(a1 + 16);
  if (!result)
  {
    mmcs_index_set_add_range_cold_1();
  }

  if (a3 - a2 != -1)
  {

    return [result addIndexesInRange:{a2, a3 - a2 + 1}];
  }

  return result;
}

uint64_t mmcs_index_set_contains_index(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    mmcs_index_set_contains_index_cold_1();
  }

  return [v2 containsIndex:a2];
}

uint64_t mmcs_index_set_contains_range(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    mmcs_index_set_contains_range_cold_1();
  }

  v4 = 1;
  if (a3 - a2 != -1)
  {
    return [v3 containsIndexesInRange:{a2, a3 - a2 + 1}];
  }

  return v4;
}

uint64_t mmcs_index_set_count(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    mmcs_index_set_count_cold_1();
  }

  return [v2 count];
}

uint64_t mmcs_index_set_apply_function(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __mmcs_index_set_apply_function_block_invoke;
  v5[3] = &__block_descriptor_48_e24_v32__0__NSRange_QQ_8_B24l;
  v5[4] = a2;
  v5[5] = a3;
  return [v3 enumerateRangesUsingBlock:v5];
}

uint64_t __mmcs_index_set_apply_function_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = *(result + 32);
  if (v5)
  {
    result = v5(a2, a3, *(result + 40));
  }

  *a4 = 0;
  return result;
}

void _mmcs_index_setCFFinalize(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
  }
}

uint64_t mmcs_working_directory_file_path(const __CFURL *a1, const char *a2, uint64_t a3, char **a4, CFErrorRef *a5)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    mmcs_working_directory_file_path_cold_2();
  }

  result = malloc_type_calloc(1uLL, 0x401uLL, 0x100004077774924uLL);
  if (result)
  {
    v11 = result;
    if (CFURLGetFileSystemRepresentation(a1, 1u, result, 1025))
    {
      v12 = strnlen(v11, 0x400uLL);
      if (v12 - 1025 <= 0xFFFFFFFFFFFFFBFFLL)
      {
        mmcs_working_directory_file_path_cold_1();
      }

      if (snprintf(&v11[v12], 1025 - v12, "/%s-0x%016llx", a2, a3) > 0)
      {
        v13 = strlen(v11);
        v14 = malloc_type_calloc(1uLL, v13 + 1, 0x100004077774924uLL);
        *a4 = v14;
        if (v14)
        {
          strncpy(v14, v11, v13 + 1);
          free(v11);
          result = 1;
          goto LABEL_19;
        }

LABEL_18:
        free(v11);
        result = 0;
        goto LABEL_19;
      }

      if (!a5)
      {
        goto LABEL_18;
      }

      v19 = __error();
      strerror(*v19);
      v26 = *__error();
      error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Unable to get file path for item %lld: snprintf returned %d. %s(%d)", v20, v21, v22, v23, v24, a3);
    }

    else
    {
      v15 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Bad working directory passed to MMCSEngineRef.");
        v17 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v28 = v16;
          _os_log_impl(&dword_2577D8000, v17, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v16)
        {
          CFRelease(v16);
        }
      }

      if (!a5)
      {
        goto LABEL_18;
      }

      error = mmcs_cferror_create_error(@"com.apple.mmcs", 10, @"Bad working directory passed to MMCSEngineRef.");
    }

    *a5 = error;
    goto LABEL_18;
  }

LABEL_19:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mmcs_get_item_progress_make_state@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xBFF0000000000000;
  *a2 = result;
  a2[2] = 0;
  return result;
}

uint64_t mmcs_get_item_progress_make_state_progress@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = 0;
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = 0;
  return result;
}

void mmcs_get_item_progress_make_done_error(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  a2[1] = 0xBFF0000000000000;
  *a2 = 5;
  if (!a1)
  {
    v4 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"non-NULL error expected");
      v6 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = 138543362;
        v9 = v5;
        _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_ERROR, "%{public}@", &v8, 0xCu);
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }
  }

  a2[2] = a1;
  v7 = *MEMORY[0x277D85DE8];
}

void mmcs_get_request_set_progress_and_notify_item(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v36 = 0;
  *buf = *a3;
  v38 = *(a3 + 2);
  mmcs_item_set_get_progress(a2, buf, &v36 + 1, &v36);
  v6 = *(a3 + 2);
  if (*a3 != 5)
  {
    if (v6)
    {
      v6 = mmcs_cferror_copy_description(*(a3 + 2));
      v16 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Notifying a get item state change %d with error %@.", *a3, v6);
        v18 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v17;
          _os_log_impl(&dword_2577D8000, v18, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v17)
        {
          CFRelease(v17);
        }
      }

      if (v6)
      {
        CFRelease(v6);
        v6 = 0;
      }
    }

    goto LABEL_17;
  }

  if (v6)
  {
LABEL_17:
    v15 = 0;
    goto LABEL_18;
  }

  v7 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Notifying that get item is done without an error specified. Creating an internal error instead.");
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

  v6 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Notifying get item state done without an error specified.", v8, v9, v10, v11, v12, v35);
  v15 = v6;
LABEL_18:
  v19 = *(a1 + 32);
  if (mmcs_engine_get_sparse_block_size())
  {
    v20 = *(a1 + 32);
    mmcs_engine_get_sparse_block_size();
  }

  if (HIBYTE(v36))
  {
    v21 = *(a1 + 40);
    v22 = *(*(a1 + 32) + 152);
    v23 = a2[5];
    v24 = a2[50];
    if (v24)
    {
      BytePtr = CFDataGetBytePtr(v24);
    }

    else
    {
      BytePtr = *a2;
    }

    v26 = *(a3 + 1);
    MMCSEngineClientContextGetItemProgress(v22, v21, v23, BytePtr, *a3, v6);
  }

  if (v36)
  {
    results_dictionary_for_item = mmcs_item_create_results_dictionary_for_item(a2);
    v28 = *(a1 + 32);
    v29 = *(a1 + 40);
    v30 = *(v28 + 152);
    v31 = a2[5];
    v32 = a2[50];
    v33 = v32 ? CFDataGetBytePtr(v32) : *a2;
    MMCSEngineClientContextGetItemDone(v30, v29, v31, v33, 0, v6, results_dictionary_for_item);
    if (results_dictionary_for_item)
    {
      CFRelease(results_dictionary_for_item);
    }
  }

  if (v15)
  {
    CFRelease(v15);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void mmcs_get_request_set_progress_and_notify_items_like_item(uint64_t a1, const void *a2, __int128 *a3)
{
  Value = CFDictionaryGetValue(*(*(a1 + 304) + 64), a2);
  if (Value)
  {
    v6 = Value;
    v7 = a1;
    v8 = *a3;
    v9 = *(a3 + 2);
    v10.length = CFArrayGetCount(Value);
    v10.location = 0;
    CFArrayApplyFunction(v6, v10, _mmcs_item_set_progress_and_notify, &v7);
  }
}

void _mmcs_item_set_progress_and_notify(uint64_t *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  mmcs_get_request_set_progress_and_notify_item(v3, a1, &v4);
}

void mmcs_get_request_set_progress_and_notify_items_like_items_in_set(uint64_t a1, CFSetRef theSet, __int128 *a3)
{
  if (theSet)
  {
    v3 = a1;
    v4 = *a3;
    v5 = *(a3 + 2);
    CFSetApplyFunction(theSet, _mmcs_get_request_set_progress_and_notify_items_like_items_in_set_applier, &v3);
  }
}

void _mmcs_get_request_set_progress_and_notify_items_like_items_in_set_applier(const void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  mmcs_get_request_set_progress_and_notify_items_like_item(v3, a1, &v4);
}

void mmcs_get_req_item_set_done_success_and_notify_item(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v25 = 0;
  *&buf = 5;
  *(&buf + 1) = 0xBFF0000000000000;
  v27 = 0;
  mmcs_item_set_get_progress(a2, &buf, &v25 + 1, &v25);
  v6 = *(a1 + 32);
  if (mmcs_engine_get_sparse_block_size())
  {
    v7 = *(a1 + 32);
    mmcs_engine_get_sparse_block_size();
  }

  if (HIBYTE(v25))
  {
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 32) + 152);
    v10 = a2[5];
    v11 = a2[50];
    if (v11)
    {
      BytePtr = CFDataGetBytePtr(v11);
    }

    else
    {
      BytePtr = *a2;
    }

    MMCSEngineClientContextGetItemProgress(v9, v8, v10, BytePtr, 5, 0);
  }

  v13 = v25;
  if (a3 && !v25)
  {
    v14 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Ignoring successful get of %s", a3);
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

    v13 = v25;
  }

  if (v13)
  {
    results_dictionary_for_item = mmcs_item_create_results_dictionary_for_item(a2);
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v20 = *(v18 + 152);
    v21 = a2[5];
    v22 = a2[50];
    if (v22)
    {
      v23 = CFDataGetBytePtr(v22);
    }

    else
    {
      v23 = *a2;
    }

    MMCSEngineClientContextGetItemDone(v20, v19, v21, v23, a3, 0, results_dictionary_for_item);
    if (results_dictionary_for_item)
    {
      CFRelease(results_dictionary_for_item);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void mmcs_get_request_set_progress_and_notify_all_items_not_done(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 304);
  if (*(v2 + 168))
  {
    v5 = 0;
    v6 = 348;
    do
    {
      if (*(v2 + v6) != 5)
      {
        v7 = *a2;
        v8 = *(a2 + 2);
        mmcs_get_request_set_progress_and_notify_item(a1, (v2 + v6 - 172), &v7);
        v2 = *(a1 + 304);
      }

      ++v5;
      v6 += 416;
    }

    while (v5 < *(v2 + 168));
  }
}

uint64_t mmcs_get_request_notify_all_items_with_pending_progress(uint64_t result)
{
  v1 = *(result + 304);
  if (*(v1 + 168))
  {
    v2 = result;
    v3 = 0;
    v4 = 348;
    do
    {
      if (*(v1 + v4) != 5)
      {
        result = mmcs_get_request_notify_item_with_pending_progress(v2, v1 + v4 - 172);
        v1 = *(v2 + 304);
      }

      ++v3;
      v4 += 416;
    }

    while (v3 < *(v1 + 168));
  }

  return result;
}

uint64_t mmcs_get_request_notify_item_with_pending_progress(uint64_t result, uint64_t a2)
{
  if (*(a2 + 328))
  {
    v3 = result;
    *(a2 + 328) = 0;
    v4 = *(result + 32);
    if (mmcs_engine_get_sparse_block_size())
    {
      v5 = *(v3 + 32);
      mmcs_engine_get_sparse_block_size();
    }

    v6 = *(v3 + 40);
    v7 = *(*(v3 + 32) + 152);
    v8 = *(a2 + 40);
    v9 = *a2;
    v10 = *(a2 + 172);
    v11 = *(a2 + 248);
    v12 = *(a2 + 192);

    return MMCSEngineClientContextGetItemProgress(v7, v6, v8, v9, v10, v12);
  }

  return result;
}

const void *mmcs_get_req_get_chunk_reference(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v5[0] = 0;
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v5[1] = a2;
  v6 = a3;
  v7 = a4;
  return CFSetGetValue(*(*(a1 + 304) + 104), v5);
}

void *mmcs_get_req_get_or_create_chunk_reference(uint64_t a1, int a2, _BYTE *a3, uint64_t a4, _BYTE *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  LODWORD(value[0]) = 0;
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  HIDWORD(value[0]) = a2;
  value[1] = a3;
  v12 = a4;
  result = CFSetGetValue(*(*(a1 + 304) + 104), value);
  value[0] = result;
  if (result)
  {
    if (a5)
    {
      *a5 = 1;
    }
  }

  else if (mmcs_chunk_reference_create(value, a2, a3, a4, 1))
  {
    CFSetSetValue(*(*(a1 + 304) + 104), value[0]);
    return value[0];
  }

  else
  {
    return 0;
  }

  return result;
}

__CFDictionary *mmcs_wrapping_state_create_wrapping_state_dictionary(uint64_t a1)
{
  if (!*a1 && !*(a1 + 8))
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = Mutable;
  if (*a1)
  {
    CFDictionarySetValue(Mutable, @"kMMCSReferenceSignature", *a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    CFDictionarySetValue(v3, @"kMMCSReferenceObject", v4);
  }

  return v3;
}

uint64_t mmcs_wrapping_state_init_with_dictionary(uint64_t a1, CFDictionaryRef theDict, CFErrorRef *a3)
{
  Value = CFDictionaryGetValue(theDict, @"kMMCSReferenceSignature");
  if (Value && (v7 = CFDataGetTypeID(), v7 != CFGetTypeID(Value)))
  {
    v26 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"Invalid item option kMMCSReferenceSignature type: Expected data, Got %@", v8, v9, v10, v11, v12, Value);
  }

  else
  {
    v13 = CFDictionaryGetValue(theDict, @"kMMCSReferenceObject");
    if (!v13)
    {
LABEL_7:
      mmcs_wrapping_state_set_reference_signature_and_object(a1, Value, v13);
      return 1;
    }

    TypeID = CFDataGetTypeID();
    if (TypeID == CFGetTypeID(v13))
    {
      if (CFDataGetLength(v13) == 16 || CFDataGetLength(v13) == 32)
      {
        goto LABEL_7;
      }

      v26 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"Invalid item option kMMCSReferenceObject type: Expected data 16 bytes long, Got %@", v20, v21, v22, v23, v24, v13);
    }

    else
    {
      v26 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"Invalid item option kMMCSReferenceObject type: Expected data, Got %@", v15, v16, v17, v18, v19, v13);
    }
  }

  v27 = v26;
  if (a3)
  {
    *a3 = v26;
    CFRetain(v26);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  return 0;
}

uint64_t mmcs_wrapping_state_init_with_option_dict(uint64_t a1, CFDictionaryRef theDict, void *key, uint64_t a4)
{
  v5 = key;
  cf = 0;
  Value = CFDictionaryGetValue(theDict, key);
  if (!Value)
  {
    return 1;
  }

  v8 = Value;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v8))
  {
    cf = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"Invalid item option %@ type: Expected dictionary, Got %@", v10, v11, v12, v13, v14, v5);
LABEL_7:
    if (a4)
    {
      v15 = cf;
      *a4 = cf;
      CFRetain(v15);
      a4 = 0;
    }

    goto LABEL_9;
  }

  if (!mmcs_wrapping_state_init_with_dictionary(a1, v8, &cf))
  {
    goto LABEL_7;
  }

  a4 = 1;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return a4;
}

__CFArray *mmcs_get_req_context_setup_complete_metrics(__CFArray *result, uint64_t a2)
{
  if (*(result + 23))
  {
    v2 = result;
    mmcs_http_context_make_metrics(*(*(result + 38) + 144), @"getComplete", 0, a2, 0);
    v3 = *(v2 + 23);
    metrics = mmcs_http_context_get_metrics(*(*(v2 + 38) + 144));

    return mmcs_metrics_request_add_http_info_for_completion(v3, metrics);
  }

  return result;
}

uint64_t mmcs_get_req_create(void *a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, const void *a5, const char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, CFErrorRef *a16)
{
  v128 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    mmcs_get_req_create_cold_1();
  }

  v23 = a16;
  *a1 = 0;
  v125 = 0;
  if (!mmcs_get_request_alloc(&v125, a9) || !v125)
  {
    if (!a16)
    {
LABEL_107:
      v117 = v125;
      if (*(v125[38] + 120))
      {
        mmcs_perform_timer_invalidate(*(v125[38] + 120));
        v117 = v125;
        v118 = v125[38];
        if (*(v118 + 120))
        {
          CFRelease(*(v118 + 120));
          v117 = v125;
          v118 = v125[38];
        }

        *(v118 + 120) = 0;
      }

      C3BaseRelease(v117);
      result = 0;
      goto LABEL_112;
    }

    v41 = @"Cannot allocate get request";
    v42 = 36;
LABEL_13:
    *v23 = mmcs_cferror_create_with_format(@"com.apple.mmcs", v42, v41, v24, v25, v26, v27, v28, Count);
    goto LABEL_107;
  }

  v29 = v125[3];
  kdebug_trace();
  v124 = 0;
  if (!_mmcs_request_init(v125, a2, a3, a4, a5, a6, a15, &v124))
  {
    if (a16)
    {
      *a16 = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 37, v124, @"Cannot initialize underlying mmcs_request", v30, v31, v32, v33, Count);
    }

    if (v124)
    {
      CFRelease(v124);
    }

    v124 = 0;
    goto LABEL_107;
  }

  v34 = v125;
  *(v125[38] + 59) = 0;
  *(v34[38] + 60) = 1;
  *(v34[38] + 41) = 0;
  v35 = 1;
  if (!a7)
  {
    dataclass = mmcs_request_get_dataclass(v34);
    if (dataclass)
    {
      v37 = "enabled";
      if (mmcs_request_is_cloudkit_dataclass(v34))
      {
        container_identifier = mmcs_request_get_container_identifier(v34);
        v39 = container_identifier;
        if (container_identifier)
        {
          v40 = CFStringCompare(container_identifier, @"com.apple.clouddocs", 1uLL);
          v35 = v40 != kCFCompareEqualTo;
          if (v40 == kCFCompareEqualTo)
          {
            v37 = "disabled";
          }
        }

        else
        {
          v35 = 0;
          v37 = "disabled";
        }
      }

      else
      {
        v39 = 0;
      }
    }

    else
    {
      v39 = 0;
      v35 = 0;
      v37 = "disabled";
    }

    v43 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      *&buf[4] = v37;
      *&buf[12] = 2114;
      *&buf[14] = dataclass;
      *&buf[22] = 2114;
      v127 = v39;
      _os_log_impl(&dword_2577D8000, v43, OS_LOG_TYPE_DEFAULT, "file content validation %{public}s by default for dataclass %{public}@ with container %{public}@. Does not impact chunk validation.", buf, 0x20u);
    }

    v23 = a16;
  }

  v44 = v125;
  *(v125[38] + 11) = v35;
  *(v44[38] + 12) = 1;
  *(v44[38] + 8) = 1;
  *(v44[38] + 57) = 0;
  *(v44[38] + 56) = 0;
  *(v44[38] + 48) = 0;
  *(v44[38] + 13) = 0;
  *(v44[38] + 58) = 0;
  *v44[38] = 0;
  *(v125[38] + 10) = 0;
  BOOLean_from_cfdictionary_object_for_key = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestOptionReturnOpaqueCloneContext", 0);
  *(v125[38] + 152) = BOOLean_from_cfdictionary_object_for_key;
  cfBOOLean_from_cfpreferences_object_for_key = mmcs_get_cfBOOLean_from_cfpreferences_object_for_key(@"kMMCSDefaultReaderWriterSparseAware", 0);
  if (a4)
  {
    v47 = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestOptionReaderWriterCallbackForDownloads", *(v125[38] + 9));
    v48 = v125;
    *(v125[38] + 9) = v47;
    v49 = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestValidateFileContents", *(v48[38] + 11));
    v50 = v125;
    *(v125[38] + 11) = v49;
    v51 = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestValidateFileContents", *(v50[38] + 12));
    v52 = v125;
    *(v125[38] + 12) = v51;
    v53 = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestOptionUseRegistryForDownloads", *(v52[38] + 8));
    v54 = v125;
    *(v125[38] + 8) = v53;
    v55 = mmcs_copy_cfnumber_from_cfdictionary_object_for_key(a4, @"kMMCSRequestOptionCacheDeleteAvailableSpaceClass", *(v54[38] + 48));
    v56 = v125;
    *(v125[38] + 48) = v55;
    v57 = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestOptionErrorOnPreallocationFailure", *(v56[38] + 56));
    v58 = v125;
    *(v125[38] + 56) = v57;
    v59 = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestOptionForceGetChunks", *(v58[38] + 13));
    v60 = v125;
    *(v125[38] + 13) = v59;
    v61 = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestOptionInsufficientDiskSpaceMode", *(v60[38] + 58));
    *(v125[38] + 58) = v61;
    Value = CFDictionaryGetValue(a4, @"kMMCSRequestOptionItemOptions");
    if (Value)
    {
      TypeID = CFArrayGetTypeID();
      if (TypeID == CFGetTypeID(Value))
      {
        if (CFArrayGetCount(Value) != a9)
        {
          if (!v23)
          {
            goto LABEL_107;
          }

          Count = CFArrayGetCount(Value);
          v41 = @"Item options array had %d elements but request had %d elements";
LABEL_31:
          v42 = 37;
          goto LABEL_13;
        }
      }

      else
      {
        Value = 0;
      }
    }

    cfBOOLean_from_cfdictionary_object_for_key = mmcs_get_cfBOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSRequestForceGetCompleteRequest", 0);
    if (cfBOOLean_from_cfdictionary_object_for_key)
    {
      v65 = cfBOOLean_from_cfdictionary_object_for_key;
      *(v125[38] + 59) = 1;
      v66 = CFBooleanGetValue(cfBOOLean_from_cfdictionary_object_for_key);
      *(v125[38] + 60) = v66;
      CFRelease(v65);
    }

    cfBOOLean_from_cfpreferences_object_for_key = mmcs_get_cfBOOLean_from_cfdictionary_object_for_key(a4, @"kMMCSDefaultReaderWriterSparseAware", cfBOOLean_from_cfpreferences_object_for_key);
  }

  else
  {
    Value = 0;
  }

  v67 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, &itemsBySignatureReferenceDictionaryKeyCallbacks, MEMORY[0x277CBF150]);
  *(v125[38] + 64) = Mutable;
  v69 = CFSetCreateMutable(v67, 0, &itemSignatureReferenceEqualitySetCallbacks);
  *(v125[38] + 80) = v69;
  v70 = CFSetCreateMutable(v67, 0, &itemItemIDEqualitySetCallbacks);
  *(v125[38] + 72) = v70;
  v71 = CFSetCreateMutable(v67, 0, &chunkReferenceSignatureEqualitySetCallbacks);
  v73 = v125;
  *(v125[38] + 104) = v71;
  v122 = cfBOOLean_from_cfpreferences_object_for_key;
  v123 = Value;
  if (*(a2 + 175))
  {
    v74 = mmcs_metrics_request_create(@"get");
    v73 = v125;
    v125[23] = v74;
  }

  *(v73[38] + 168) = a9;
  v75 = v73[38];
  if (!v75[8])
  {
    goto LABEL_107;
  }

  if (!v75[10])
  {
    goto LABEL_107;
  }

  if (!v75[9])
  {
    goto LABEL_107;
  }

  if (!v75[13])
  {
    goto LABEL_107;
  }

  if (!v73[21])
  {
    goto LABEL_107;
  }

  v76 = *(a2 + 56);
  *buf = v73;
  *&buf[8] = C3BaseRetain;
  *&buf[16] = C3BaseRelease;
  v127 = _mmcs_get_req_context_progress_timer_fired;
  if (!mmcs_perform_target_create_timer(v76, (v75 + 15), buf, v72))
  {
    goto LABEL_107;
  }

  v78 = v125[38];
  if (*(v78 + 168))
  {
    v79 = 0;
    v80 = a12;
    v81 = 584;
    v121 = v23;
    do
    {
      v82 = v80 ? *(v80 + 8 * v79) : 0;
      v83 = (v78 + v81 - 408);
      if (!mmcs_item_init(v83, *(a10 + 8 * v79), *(a11 + 8 * v79), v82, 0, 2, 0, v77))
      {
        goto LABEL_107;
      }

      if (a13)
      {
        *(v78 + v81 - 64) = *(a13 + 8 * v79);
      }

      if (a14)
      {
        *(v78 + v81 - 392) = *(a14 + 8 * v79);
      }

      if (v123)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v123, v79);
        v85 = CFDictionaryGetTypeID();
        if (v85 != CFGetTypeID(ValueAtIndex))
        {
          if (!v23)
          {
            goto LABEL_107;
          }

          Count = ValueAtIndex;
          v41 = @"Invalid item option type: Expected dictionary, Got %@";
          goto LABEL_31;
        }

        if (!mmcs_wrapping_state_init_with_option_dict(v78 + v81 - 360, ValueAtIndex, @"kMMCSUnwrappingState", v23))
        {
          goto LABEL_107;
        }

        v86 = CFDictionaryGetValue(ValueAtIndex, @"kMMCSFileSize");
        if (v86)
        {
          if (a14)
          {
            v87 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
            {
              v88 = CFStringCreateWithFormat(v67, 0, @"Ignoring kMMCSFileSize because lengths are set");
              v89 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                *&buf[4] = v88;
                _os_log_impl(&dword_2577D8000, v89, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
              }

              if (v88)
              {
                CFRelease(v88);
              }
            }
          }

          else
          {
            v90 = v86;
            v91 = CFGetTypeID(v86);
            if (v91 == CFNumberGetTypeID())
            {
              *buf = 0;
              if (CFNumberGetValue(v90, kCFNumberSInt64Type, buf))
              {
                *(v78 + v81 - 384) = *buf;
              }
            }
          }
        }

        v92 = CFDictionaryGetValue(ValueAtIndex, @"kMMCSRequestedFileOffset");
        if (v92)
        {
          v93 = v92;
          v94 = CFGetTypeID(v92);
          if (v94 == CFNumberGetTypeID())
          {
            *buf = 0;
            if (CFNumberGetValue(v93, kCFNumberSInt64Type, buf))
            {
              *(v78 + v81 - 32) = *buf;
            }
          }
        }

        v95 = CFDictionaryGetValue(ValueAtIndex, @"kMMCSRequestedLengthAtFileOffset");
        if (v95)
        {
          v96 = v95;
          v97 = CFGetTypeID(v95);
          if (v97 == CFNumberGetTypeID())
          {
            *buf = 0;
            if (CFNumberGetValue(v96, kCFNumberSInt64Type, buf))
            {
              *(v78 + v81 - 24) = *buf;
              *(v125[38] + 10) = 0;
            }
          }
        }

        v98 = CFDictionaryGetValue(ValueAtIndex, @"kMMCSRequestedRangeSignature");
        if (v98)
        {
          v99 = v98;
          v100 = CFGetTypeID(v98);
          if (v100 == CFDataGetTypeID())
          {
            CFRetain(v99);
            *(v78 + v81 - 8) = v99;
          }
        }

        v101 = CFDictionaryGetValue(ValueAtIndex, @"kMMCSDerivativeAssetDownloadURL");
        if (v101)
        {
          v102 = v101;
          v103 = CFGetTypeID(v101);
          if (v103 == CFURLGetTypeID())
          {
            *(v78 + v81 - 48) = v102;
            CFRetain(v102);
          }
        }

        v104 = CFDictionaryGetValue(ValueAtIndex, @"kMMCSDerivativeAssetEstimatedSize");
        if (v104)
        {
          v105 = v104;
          v106 = CFGetTypeID(v104);
          if (v106 == CFNumberGetTypeID())
          {
            *buf = 0;
            if (CFNumberGetValue(v105, kCFNumberSInt64Type, buf))
            {
              v107 = *buf;
              *(v78 + v81 - 96) = *buf;
              *(v78 + v81 - 392) = v107;
            }
          }
        }

        v108 = mmcs_get_cfBOOLean_from_cfdictionary_object_for_key(ValueAtIndex, @"kMMCSDefaultReaderWriterSparseAware", v122);
        mmcs_item_set_default_reader_writer_sparse_aware(v78 + v81 - 408, v108);
        v109 = (v78 + v81);
        *(v109 - 192) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(ValueAtIndex, @"kMMCSMetadataOnly", *(v78 + v81 - 192));
        *v109 = mmcs_get_BOOLean_from_cfdictionary_object_for_key(ValueAtIndex, @"kMMCSFailPreallocationMode", *(v78 + v81));
        v23 = v121;
      }

      if ((**v83 & 0x7F) == 4 || (**v83 & 8) != 0)
      {
        *(v78 + v81 - 304) = 1;
      }

      CFSetAddValue(*(v125[38] + 72), (v78 + v81 - 408));
      v111 = CFDictionaryGetValue(*(v125[38] + 64), (v78 + v81 - 408));
      if (!v111)
      {
        v112 = CFArrayCreateMutable(v67, 0, &itemArrayCallbacks);
        if (!v112)
        {
          goto LABEL_107;
        }

        v111 = v112;
        CFDictionarySetValue(*(v125[38] + 64), (v78 + v81 - 408), v112);
        CFRelease(v111);
        CFSetAddValue(*(v125[38] + 80), (v78 + v81 - 408));
      }

      CFArrayAppendValue(v111, (v78 + v81 - 408));
      if (*(v78 + v81))
      {
        v113 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_2577D8000, v113, OS_LOG_TYPE_ERROR, "********************* ENABLING TESTING MODE WHICH PRETENDS PREALLOCATION FAILS *********************", buf, 2u);
        }
      }

      ++v79;
      v78 = v125[38];
      v81 += 416;
      v80 = a12;
    }

    while (v79 < *(v78 + 168));
  }

  v114 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
  {
    *buf = v125;
    CFDictionaryApplyFunction(*(v125[38] + 64), mmcs_get_req_context_items_by_signature_description, buf);
  }

  if (*(v125[38] + 58))
  {
    v115 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2577D8000, v115, OS_LOG_TYPE_ERROR, "********************* ENABLING TESTING MODE WHICH PRETENDS THERE IS INSUFFICIENT DISK SPACE *********************", buf, 2u);
    }
  }

  *a1 = v125;
  result = 1;
LABEL_112:
  v119 = *MEMORY[0x277D85DE8];
  return result;
}