uint64_t ___chunk_support_stream_block_invoke(uint64_t a1, _DWORD *a2)
{
  _chunk_support_context_update(*(a1 + 40), a2);
  v4 = 1;
  v5 = *a2 - 24577;
  v6 = v5 > 0xF;
  v7 = (1 << v5) & 0x880F;
  if (!v6 && v7 != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = _chunk_support_stream(a2, *(a1 + 40));
    v4 = *(*(*(a1 + 32) + 8) + 24);
  }

  return v4 & 1;
}

uint64_t _os_activity_stream_entry_decode(void *a1, int *a2)
{
  if (!a1 || MEMORY[0x2318E23F0]() != MEMORY[0x277D86468])
  {
    return 0xFFFFFFFFLL;
  }

  result = _os_activity_stream_entry_get_version(a1);
  if (result == 2)
  {
    value = xpc_dictionary_get_value(a1, "entryData");
    if (!value)
    {
      return 0xFFFFFFFFLL;
    }

    bytes_ptr = xpc_data_get_bytes_ptr(value);
    v14 = *(bytes_ptr + 1);
    v13 = *(bytes_ptr + 2);
    *a2 = *bytes_ptr;
    *(a2 + 1) = v14;
    *(a2 + 2) = v13;
    v15 = *(bytes_ptr + 6);
    v17 = *(bytes_ptr + 3);
    v16 = *(bytes_ptr + 4);
    *(a2 + 5) = *(bytes_ptr + 5);
    *(a2 + 6) = v15;
    *(a2 + 3) = v17;
    *(a2 + 4) = v16;
    v18 = *(bytes_ptr + 10);
    v20 = *(bytes_ptr + 7);
    v19 = *(bytes_ptr + 8);
    *(a2 + 9) = *(bytes_ptr + 9);
    *(a2 + 10) = v18;
    *(a2 + 7) = v20;
    *(a2 + 8) = v19;
    v22 = *(bytes_ptr + 12);
    v21 = *(bytes_ptr + 13);
    v23 = *(bytes_ptr + 11);
    *(a2 + 55) = *(bytes_ptr + 220);
    *(a2 + 12) = v22;
    *(a2 + 13) = v21;
    *(a2 + 11) = v23;
    if (xpc_dictionary_get_BOOL(a1, "32bits"))
    {
      a2[33] |= 1u;
    }

    v24 = *a2;
    result = 0xFFFFFFFFLL;
    if (*a2 > 767)
    {
      if (v24 != 1024 && v24 != 768)
      {
        return result;
      }
    }

    else if (v24 != 513 && v24 != 515)
    {
      return result;
    }

    v27 = bytes_ptr + 236;
    v28 = *(bytes_ptr + 140);
    v29 = &bytes_ptr[v28 + 236];
    if (!v28)
    {
      v29 = 0;
    }

    *(a2 + 35) = v29;
    v30 = *(bytes_ptr + 52);
    v31 = &v27[*(a2 + 7)];
    *(a2 + 5) += v27;
    *(a2 + 7) = v31;
    v32 = &v27[*(a2 + 19)];
    *(a2 + 19) = v32;
    *(a2 + 21) += v27;
    if (!v28)
    {
      if ((BYTE2(v30) & 6 | 8) == 0xC)
      {
        uuidpath_sharedcache_resolve_fd(0xFFFFFFFFLL, v32, *(a2 + 31), *(a2 + 29), 0, (a2 + 35), 0, a2 + 19, (a2 + 21), 0, 0);
      }

      else
      {
        uuidpath_resolve(0, v32, *(a2 + 31), 0, (a2 + 35), 0, a2 + 21, 0);
      }
    }

    if (*a2 != 1024)
    {
      if (*a2 == 768)
      {
        *(a2 + 41) = xpc_dictionary_get_value(a1, "payload");
        if (!*(bytes_ptr + 148))
        {
          result = 0;
          *(a2 + 37) = 0;
          return result;
        }

        result = 0;
        data = &v27[*(a2 + 37)];
LABEL_49:
        *(a2 + 37) = data;
        return result;
      }

      return 0;
    }

    *(a2 + 37) += v27;
    *(a2 + 41) += v27;
    v37 = *(bytes_ptr + 188);
    if (v37)
    {
      v37 = &v27[*(a2 + 47)];
    }

    *(a2 + 47) = v37;
    v38 = *(bytes_ptr + 180);
    if (v38)
    {
      v38 = &v27[*(a2 + 45)];
    }

    *(a2 + 45) = v38;
    result = 0;
    if (*(bytes_ptr + 228))
    {
      *(a2 + 57) += v27;
    }

    else
    {
      *(a2 + 57) = 0;
    }
  }

  else
  {
    if (result != 1)
    {
      qword_27DA52778 = "BUG IN LIBTRACE: Nope. Invalid version for stream object.";
      qword_27DA527A8 = -1;
      __break(1u);
      return result;
    }

    *(a2 + 55) = 0u;
    *(a2 + 12) = 0u;
    *(a2 + 13) = 0u;
    *(a2 + 10) = 0u;
    *(a2 + 11) = 0u;
    *(a2 + 8) = 0u;
    *(a2 + 9) = 0u;
    *(a2 + 6) = 0u;
    *(a2 + 7) = 0u;
    *(a2 + 4) = 0u;
    *(a2 + 5) = 0u;
    *(a2 + 2) = 0u;
    *(a2 + 3) = 0u;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    a2[1] = xpc_dictionary_get_uint64(a1, "pid");
    *(a2 + 1) = xpc_dictionary_get_uint64(a1, "procid");
    a2[4] = xpc_dictionary_get_uint64(a1, "uid");
    *(a2 + 5) = xpc_dictionary_get_uuid(a1, "procuuid");
    string = xpc_dictionary_get_string(a1, "procpath");
    *(a2 + 7) = string;
    if (!string)
    {
      v6 = *(a2 + 5);
      if (v6)
      {
        uuidpath_lookup_fd(-3, v6, a2 + 7);
      }
    }

    *(a2 + 9) = xpc_dictionary_get_uint64(a1, "aid");
    *(a2 + 11) = xpc_dictionary_get_uint64(a1, "paid");
    *a2 = xpc_dictionary_get_uint64(a1, "type");
    a2[28] = xpc_dictionary_get_int64(a1, "timezoneDSTflag");
    a2[27] = xpc_dictionary_get_int64(a1, "timezoneMinutesWest");
    *(a2 + 23) = xpc_dictionary_get_int64(a1, "timeGMTsec");
    a2[25] = xpc_dictionary_get_int64(a1, "timeGMTusec");
    if (xpc_dictionary_get_BOOL(a1, "32bits"))
    {
      a2[33] |= 1u;
    }

    uint64 = xpc_dictionary_get_uint64(a1, "traceid");
    v8 = BYTE2(uint64);
    *(a2 + 13) = uint64;
    *(a2 + 17) = xpc_dictionary_get_uint64(a1, "thread");
    *(a2 + 15) = xpc_dictionary_get_uint64(a1, "timestamp");
    *(a2 + 29) = xpc_dictionary_get_uint64(a1, "offset");
    *(a2 + 31) = xpc_dictionary_get_uint64(a1, "formatoffset");
    *(a2 + 19) = xpc_dictionary_get_uuid(a1, "imageuuid");
    v9 = (a2 + 19);
    *(a2 + 21) = xpc_dictionary_get_string(a1, "imagepath");
    v10 = *a2;
    result = 0xFFFFFFFFLL;
    if (*a2 <= 767)
    {
      if (v10 != 513 && v10 != 515)
      {
        return result;
      }

LABEL_25:
      v25 = xpc_dictionary_get_string(a1, "name");
      *(a2 + 35) = v25;
      if (!v25 || !*(a2 + 21))
      {
        v26 = *v9;
        if (*v9)
        {
          if ((v8 & 6 | 8) == 0xC)
          {
            uuidpath_sharedcache_resolve_fd(0xFFFFFFFFLL, v26, *(a2 + 31), *(a2 + 29), 0, (a2 + 35), 0, a2 + 19, (a2 + 21), 0, 0);
          }

          else
          {
            uuidpath_resolve(0, v26, *(a2 + 31), 0, (a2 + 35), 0, a2 + 21, 0);
          }
        }
      }

      v33 = *a2;
      if (*a2 == 515)
      {
        v36 = xpc_dictionary_get_BOOL(a1, "persisted");
        result = 0;
        *(a2 + 148) = v36;
        return result;
      }

      if (v33 == 1024)
      {
        *(a2 + 37) = xpc_dictionary_get_data(a1, "buffer", (a2 + 39));
        *(a2 + 41) = xpc_dictionary_get_data(a1, "privdata", (a2 + 43));
        *(a2 + 47) = xpc_dictionary_get_string(a1, "category");
        *(a2 + 45) = xpc_dictionary_get_string(a1, "subsystem");
        v35 = xpc_dictionary_get_BOOL(a1, "persisted");
        result = 0;
        *(a2 + 201) = v35;
        return result;
      }

      if (v33 == 768)
      {
        *(a2 + 41) = xpc_dictionary_get_value(a1, "payload");
        data = xpc_dictionary_get_data(a1, "buffer", (a2 + 39));
        result = 0;
        goto LABEL_49;
      }

      return 0;
    }

    if (v10 == 1024 || v10 == 768)
    {
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t os_activity_stream_for_simulator(const char *a1, int a2, const void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = _os_trace_calloc_typed();
  snprintf(__str, 0x40uLL, "com.apple.activity.stream.%s", a1);
  *(v6 + 24) = dispatch_queue_create(__str, 0);
  *v6 = _Block_copy(a3);
  *(v6 + 40) = xpc_array_create(0, 0);
  *(v6 + 48) = xpc_array_create(0, 0);
  *(v6 + 32) = a2;
  *(v6 + 64) = 0;
  *(v6 + 84) = 1;
  *(v6 + 72) = strdup(a1);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t os_activity_stream_for_pid(int a1, int a2, const void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = _os_trace_calloc_typed();
  snprintf(__str, 0x40uLL, "com.apple.activity.stream.%d", a1);
  *(v6 + 24) = dispatch_queue_create(__str, 0);
  *v6 = _Block_copy(a3);
  v7 = xpc_array_create(0, 0);
  *(v6 + 40) = v7;
  *(v6 + 32) = a2;
  *(v6 + 64) = 0;
  if (a1 == -1)
  {
    *(v6 + 84) = 1;
  }

  else if (a1 >= 1)
  {
    xpc_array_set_int64(v7, 0xFFFFFFFFFFFFFFFFLL, a1);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

void os_activity_stream_add_pid(uint64_t a1, int a2)
{
  if ((*(a1 + 84) & 1) == 0)
  {
    v5 = *(a1 + 40);
    if (!v5)
    {
      v5 = xpc_array_create(0, 0);
      *(a1 + 40) = v5;
    }

    xpc_array_set_int64(v5, 0xFFFFFFFFFFFFFFFFLL, a2);
  }
}

uint64_t os_activity_stream_for_uid(unsigned int a1, int a2, const void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = _os_trace_calloc_typed();
  snprintf(__str, 0x40uLL, "com.apple.activity.stream.%d", a1);
  *(v6 + 24) = dispatch_queue_create(__str, 0);
  *v6 = _Block_copy(a3);
  v7 = xpc_array_create(0, 0);
  *(v6 + 48) = v7;
  *(v6 + 32) = a2;
  *(v6 + 64) = 0;
  xpc_array_set_int64(v7, 0xFFFFFFFFFFFFFFFFLL, a1);
  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

void os_activity_stream_add_uid(uint64_t a1, int64_t value)
{
  v2 = value;
  v4 = *(a1 + 48);
  if (!v4)
  {
    v4 = xpc_array_create(0, 0);
    *(a1 + 48) = v4;
  }

  xpc_array_set_int64(v4, 0xFFFFFFFFFFFFFFFFLL, v2);
}

void *os_activity_stream_set_event_handler(uint64_t a1, void *aBlock)
{
  result = _Block_copy(aBlock);
  *(a1 + 8) = result;
  return result;
}

void _os_activity_stream_resume_with_filter(uint64_t a1, const void *a2, size_t a3)
{
  v41 = *MEMORY[0x277D85DE8];
  mach_service = xpc_connection_create_mach_service("com.apple.diagnosticd", *(a1 + 24), 2uLL);
  *(a1 + 16) = mach_service;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = ___os_activity_stream_resume_with_filter_block_invoke;
  handler[3] = &__block_descriptor_tmp_13;
  handler[4] = a1;
  xpc_connection_set_event_handler(mach_service, handler);
  xpc_retain(*(a1 + 16));
  xpc_connection_set_context(*(a1 + 16), a1);
  xpc_connection_set_finalizer_f(*(a1 + 16), _os_activity_stream_dealloc);
  xpc_connection_activate(*(a1 + 16));
  if (!*(a1 + 64))
  {
    *(a1 + 64) = 7;
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v7, "action", 3uLL);
  xpc_dictionary_set_uint64(v7, "flags", *(a1 + 32));
  xpc_dictionary_set_uint64(v7, "types", *(a1 + 64));
  v8 = *(a1 + 72);
  if (v8)
  {
    xpc_dictionary_set_string(v7, "simulator_device", v8);
  }

  if (xpc_array_get_count(*(a1 + 40)) && xpc_array_get_count(*(a1 + 48)))
  {
    if (a2)
    {
      v31 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      applier = 0u;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      LODWORD(v32) = 134217984;
      *(&v32 + 4) = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else if (*(a1 + 84) != 1)
    {
      a3 = *(a1 + 48);
      v9 = *(a1 + 40);
      v10 = a3;
      if (xpc_array_get_count(v9))
      {
        if (xpc_array_get_count(v10))
        {
          v11 = [[_OSLogStreamFilter alloc] initWithPredicate:0];
          *&applier = MEMORY[0x277D85DD0];
          *(&applier + 1) = 3221225472;
          *&v37 = ___OSLogStreamFilterBytesForPIDAndUIDArray_block_invoke;
          *(&v37 + 1) = &unk_2787AE688;
          v12 = v11;
          *&v38 = v12;
          xpc_array_apply(v9, &applier);
          *&v32 = MEMORY[0x277D85DD0];
          *(&v32 + 1) = 3221225472;
          v33 = ___OSLogStreamFilterBytesForPIDAndUIDArray_block_invoke_2;
          v34 = &unk_2787AE688;
          v35 = v12;
          v13 = v12;
          xpc_array_apply(v10, &v32);
          v14 = [(_OSLogStreamFilter *)v13 data];
          [v14 length];
          v15 = _os_trace_malloc_typed();
          [v14 getBytes:v15 length:{objc_msgSend(v14, "length")}];
          a3 = [v14 length];

          v16 = 0;
          v17 = 0;
          a2 = v15;
          if (!v15)
          {
            goto LABEL_26;
          }

LABEL_24:
          xpc_dictionary_set_data(v7, "stream_filter", a2, a3);
          goto LABEL_27;
        }

        goto LABEL_34;
      }

LABEL_33:
      v31 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      applier = 0u;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      LODWORD(v32) = 134217984;
      *(&v32 + 4) = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_34:
      v31 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      applier = 0u;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      LODWORD(v32) = 134217984;
      *(&v32 + 4) = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_35;
    }

    v31 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    applier = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    LODWORD(v32) = 134217984;
    *(&v32 + 4) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_33;
  }

  if (xpc_array_get_count(*(a1 + 40)))
  {
    if (a2)
    {
LABEL_35:
      v31 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      applier = 0u;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      LODWORD(v32) = 134217984;
      *(&v32 + 4) = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_36;
    }

    if (*(a1 + 84) == 1)
    {
LABEL_36:
      v31 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      applier = 0u;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      LODWORD(v32) = 134217984;
      *(&v32 + 4) = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_37;
    }

    v18 = *(a1 + 40);
    if (!xpc_array_get_count(v18))
    {
LABEL_37:
      v31 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      applier = 0u;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      LODWORD(v32) = 134217984;
      *(&v32 + 4) = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_38;
    }

    v19 = [[_OSLogStreamFilter alloc] initWithPredicate:0];
    *&applier = MEMORY[0x277D85DD0];
    *(&applier + 1) = 3221225472;
    *&v37 = ___OSLogStreamFilterBytesForPIDArray_block_invoke;
    *(&v37 + 1) = &unk_2787AE688;
    *&v38 = v19;
    v20 = v19;
    xpc_array_apply(v18, &applier);
    v21 = [(_OSLogStreamFilter *)v20 data];
    [v21 length];
    v17 = _os_trace_malloc_typed();
    [v21 getBytes:v17 length:{objc_msgSend(v21, "length")}];
    a3 = [v21 length];

    v15 = 0;
    v16 = 0;
    a2 = v17;
    if (v17)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (!xpc_array_get_count(*(a1 + 48)))
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      if (!a2)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    if (a2)
    {
LABEL_39:
      v31 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      applier = 0u;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      LODWORD(v32) = 134217984;
      *(&v32 + 4) = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_40;
    }

    if (*(a1 + 84) == 1)
    {
LABEL_40:
      v31 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      applier = 0u;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      LODWORD(v32) = 134217984;
      *(&v32 + 4) = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_41:
      v31 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      applier = 0u;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      LODWORD(v32) = 134217984;
      *(&v32 + 4) = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v22 = *(a1 + 48);
    if (!xpc_array_get_count(v22))
    {
      goto LABEL_41;
    }

    v23 = [[_OSLogStreamFilter alloc] initWithPredicate:0];
    *&applier = MEMORY[0x277D85DD0];
    *(&applier + 1) = 3221225472;
    *&v37 = ___OSLogStreamFilterBytesForUIDArray_block_invoke;
    *(&v37 + 1) = &unk_2787AE688;
    *&v38 = v23;
    v24 = v23;
    xpc_array_apply(v22, &applier);
    v25 = [(_OSLogStreamFilter *)v24 data];
    [v25 length];
    v16 = _os_trace_malloc_typed();
    [v25 getBytes:v16 length:{objc_msgSend(v25, "length")}];
    a3 = [v25 length];

    v15 = 0;
    v17 = 0;
    a2 = v16;
    if (v16)
    {
      goto LABEL_24;
    }
  }

LABEL_26:
  a3 = *(a1 + 84);
  if ((a3 & 1) == 0)
  {
LABEL_38:
    v31 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    applier = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    LODWORD(v32) = 134217984;
    *(&v32 + 4) = a3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_39;
  }

LABEL_27:
  free(v17);
  free(v16);
  free(v15);
  v26 = *(a1 + 16);
  if (*(a1 + 8))
  {
    global_queue = dispatch_get_global_queue(0, 0);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 0x40000000;
    v29[2] = ___os_activity_stream_resume_with_filter_block_invoke_18;
    v29[3] = &__block_descriptor_tmp_20_3164;
    v29[4] = a1;
    xpc_connection_send_message_with_reply(v26, v7, global_queue, v29);
  }

  else
  {
    xpc_connection_send_message(*(a1 + 16), v7);
  }

  xpc_release(v7);
  v28 = *MEMORY[0x277D85DE8];
}

void ___os_activity_stream_resume_with_filter_block_invoke(uint64_t a1, void *a2)
{
  memset(v11, 0, 236);
  v4 = MEMORY[0x2318E23F0](a2);
  if (v4 == MEMORY[0x277D86468])
  {
    if (xpc_dictionary_get_value(a2, "action") && !_os_activity_stream_entry_decode(a2, v11) && ((*(**(a1 + 32) + 16))() & 1) == 0)
    {
      v7 = *(a1 + 32);
      *(v7 + 80) = 89;
      xpc_connection_cancel(*(v7 + 16));
    }
  }

  else if (v4 == MEMORY[0x277D86480])
  {
    v5 = *(a1 + 32);
    if (a2 == MEMORY[0x277D863F8])
    {
      v8 = *(v5 + 8);
      if (v8)
      {
        *(v5 + 80);
        (*(v8 + 16))();
      }

      else
      {
        v9 = *(v5 + 80);
        (*(*v5 + 16))();
      }

      v10 = *(*(a1 + 32) + 16);

      xpc_release(v10);
    }

    else
    {
      *(v5 + 80) = 5;
      v6 = *(v5 + 16);

      xpc_connection_cancel(v6);
    }
  }
}

void ___os_activity_stream_resume_with_filter_block_invoke_18(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x2318E23F0](a2);
  if (v4 != MEMORY[0x277D86468])
  {
    if (v4 != MEMORY[0x277D86480])
    {
      return;
    }

    v8 = *(a1 + 32);
    *(v8 + 80) = 5;
    v7 = *(v8 + 16);
    goto LABEL_7;
  }

  value = xpc_dictionary_get_value(a2, "error");
  v6 = *(a1 + 32);
  if (value)
  {
    *(v6 + 80) = 1;
    v7 = *(v6 + 16);
LABEL_7:

    xpc_connection_cancel(v7);
    return;
  }

  v9 = *(*(v6 + 8) + 16);

  v9();
}

void _os_activity_stream_dealloc(const void **a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
    a1[3] = 0;
  }

  if (*a1)
  {
    _Block_release(*a1);
    *a1 = 0;
  }

  v3 = a1[1];
  if (v3)
  {
    _Block_release(v3);
    a1[1] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    xpc_release(v4);
    a1[5] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    xpc_release(v5);
  }

  free(a1);
}

void os_activity_stream_cancel(uint64_t a1)
{
  *(a1 + 80) = 89;
  xpc_connection_cancel(*(a1 + 16));
  v2 = *(a1 + 16);

  xpc_release(v2);
}

void _OSLogInstallPreferences(unsigned int a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCAC58];
  v6 = a2;
  v10 = [v5 dataWithPropertyList:a3 format:200 options:0 error:0];
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v7, "operation", 2uLL);
  xpc_dictionary_set_uint64(v7, "prefs_type", a1);
  v8 = [v6 UTF8String];

  xpc_dictionary_set_string(v7, "prefs_name", v8);
  v9 = v10;
  xpc_dictionary_set_data(v7, "prefs_data", [v10 bytes], objc_msgSend(v10, "length"));
  _OSLogPreferencesSendMessage(v7);
}

void _OSLogRemovePreferences(unsigned int a1, void *a2)
{
  v3 = a2;
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(xdict, "operation", 3uLL);
  xpc_dictionary_set_uint64(xdict, "prefs_type", a1);
  v4 = [v3 UTF8String];

  xpc_dictionary_set_string(xdict, "prefs_name", v4);
  _OSLogPreferencesSendMessage(xdict);
}

void _OSLogPreferencesSendMessage(void *a1)
{
  v1 = a1;
  connection = xpc_connection_create_mach_service("com.apple.logd.admin", 0, 2uLL);
  xpc_connection_set_event_handler(connection, &__block_literal_global_197);
  xpc_connection_activate(connection);
  v2 = xpc_connection_send_message_with_reply_sync(connection, v1);
}

uint64_t _LevelForKey(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKey:a2];
  v3 = v2;
  if (v2)
  {
    if (![v2 caseInsensitiveCompare:@"default"])
    {
      v4 = 2;
      goto LABEL_12;
    }

    if (![v3 caseInsensitiveCompare:@"info"])
    {
      v4 = 3;
      goto LABEL_12;
    }

    if (![v3 caseInsensitiveCompare:@"debug"])
    {
      v4 = 4;
      goto LABEL_12;
    }

    if (![v3 caseInsensitiveCompare:@"off"] || !objc_msgSend(v3, "caseInsensitiveCompare:", @"none"))
    {
      v4 = 0;
      goto LABEL_12;
    }
  }

  v4 = 1;
LABEL_12:

  return v4;
}

id OSLogPreferencesList(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:_os_trace_app_cryptex_sysprefsdir_path()];
  v4 = [v3 stringByAppendingPathComponent:v1];

  OSLogPreferencesListDirectory(v4, v2);
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:_os_trace_os_cryptex_sysprefsdir_path()];
  v6 = [v5 stringByAppendingPathComponent:v1];

  OSLogPreferencesListDirectory(v6, v2);
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:_os_trace_sysprefsdir_path()];
  v8 = [v7 stringByAppendingPathComponent:v1];

  OSLogPreferencesListDirectory(v8, v2);
  if (_os_trace_is_development_build())
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:_os_trace_intprefsdir_path()];
    v10 = [v9 stringByAppendingPathComponent:v1];

    OSLogPreferencesListDirectory(v10, v2);
  }

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:_os_trace_prefsdir_path()];
  v12 = [v11 stringByAppendingPathComponent:v1];

  OSLogPreferencesListDirectory(v12, v2);

  return v2;
}

void OSLogPreferencesListDirectory(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CCAA00];
  v5 = a1;
  v6 = [v4 defaultManager];
  v7 = [v6 contentsOfDirectoryAtPath:v5 error:0];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __OSLogPreferencesListDirectory_block_invoke;
  v9[3] = &unk_2787AEBA8;
  v10 = v3;
  v8 = v3;
  [v7 enumerateObjectsUsingBlock:v9];
}

uint64_t __OSLogPreferencesListDirectory_block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 hasSuffix:@".plist"];
  v4 = v7;
  if (v3)
  {
    v5 = [v7 stringByDeletingPathExtension];
    if (([*(a1 + 32) containsObject:v5] & 1) == 0)
    {
      [*(a1 + 32) addObject:v5];
    }

    v4 = v7;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

BOOL OSLogValidateProfilePayload(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKey:@"Processes"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    v3 = [v1 objectForKey:@"Subsystems"];
    if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v5 = 0;
    }

    else
    {
      v4 = [v1 objectForKey:@"System"];
      v5 = 1;
      if (v4)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v5 = 0;
        }
      }
    }
  }

  return v5;
}

uint64_t OSLogInstallProfilePayload(void *a1)
{
  v1 = a1;
  v2 = _prefsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E01A000, v2, OS_LOG_TYPE_DEFAULT, "Profile installation requested", buf, 2u);
  }

  *buf = 0;
  v13 = buf;
  v14 = 0x2020000000;
  v15 = 1;
  v3 = [v1 objectForKey:@"Processes"];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __OSLogInstallProfilePayload_block_invoke;
  v11[3] = &unk_2787AEAD8;
  v11[4] = buf;
  [v3 enumerateKeysAndObjectsUsingBlock:v11];
  if (v13[24] != 1)
  {
    goto LABEL_8;
  }

  v4 = [v1 objectForKey:@"Subsystems"];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __OSLogInstallProfilePayload_block_invoke_9;
  v10[3] = &unk_2787AEAD8;
  v10[4] = buf;
  [v4 enumerateKeysAndObjectsUsingBlock:v10];

  if (v13[24])
  {
    v5 = [v1 objectForKey:@"System"];
    v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v5];
    v7 = [v6 objectForKey:@"Enable-Logging"];

    if (!v7)
    {
      [v6 setObject:MEMORY[0x277CBEC38] forKey:@"Enable-Logging"];
    }

    [v6 setObject:MEMORY[0x277CBEC38] forKey:@"Locked"];
    _OSLogInstallPreferences(1u, @"com.apple.system.logging", v6);

    v8 = v13[24];
  }

  else
  {
LABEL_8:
    v8 = 0;
  }

  _Block_object_dispose(buf, 8);
  return v8 & 1;
}

void sub_22E05EEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _prefsLogHandle()
{
  if (_prefsLogHandle_onceToken != -1)
  {
    dispatch_once(&_prefsLogHandle_onceToken, &__block_literal_global_186);
  }

  v1 = _prefsLogHandle_handle;

  return v1;
}

void __OSLogInstallProfilePayload_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v4];
    [v5 setObject:MEMORY[0x277CBEC38] forKey:@"Locked"];
    _OSLogInstallPreferences(2u, v6, v5);
  }
}

void __OSLogInstallProfilePayload_block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v4];
    [v5 setObject:MEMORY[0x277CBEC38] forKey:@"Locked"];
    _OSLogInstallPreferences(3u, v6, v5);
  }
}

uint64_t ___prefsLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.loggingsupport", "os_log_preferences");
  v1 = _prefsLogHandle_handle;
  _prefsLogHandle_handle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t OSLogRemoveProfilePayload(void *a1)
{
  v1 = a1;
  v2 = _prefsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_22E01A000, v2, OS_LOG_TYPE_DEFAULT, "Profile removal requested", v7, 2u);
  }

  v3 = [v1 objectForKey:@"Processes"];
  [v3 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_3336];
  v4 = [v1 objectForKey:@"Subsystems"];
  [v4 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_17];
  v5 = [v1 objectForKey:@"System"];

  if (v5)
  {
    _OSLogRemovePreferences(1u, @"com.apple.system.logging");
  }

  return 1;
}

void observation_callback(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  strcpy(buffer, "0000000000000000000000000000000000000000");
  buffer[41] = 0;
  if (!a1 || (v3 = *a1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Invalid inputs", &v21, 2u);
    }

    v10 = 0;
    v3 = 0;
    v6 = 0;
LABEL_16:
    (*(mobdevtab + 64))(v3);
    if (v3)
    {
      CFRelease(v3);
    }

    if (v6)
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v5 = (*(mobdevtab + 128))(*a1);
  v6 = v5;
  if (v5)
  {
    CFStringGetCString(v5, buffer, 42, 0x8000100u);
  }

  v7 = (*(mobdevtab + 96))(v3, 0, @"DeviceName");
  v8 = v7;
  if (v7)
  {
    CFRelease(v7);
  }

  v9 = *(a1 + 8);
  if (v9 == 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315138;
      v22 = buffer;
      _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "device disconnected (%s)\n", &v21, 0xCu);
    }

    (*a2)(1, buffer, v3, *(a2 + 8));
  }

  else if (v9 == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315138;
      v22 = buffer;
      _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "device connected (%s)\n", &v21, 0xCu);
    }

    if (v8)
    {
      goto LABEL_12;
    }

    v12 = (*(mobdevtab + 32))(v3);
    if (v12)
    {
      v13 = v12;
      v10 = (*(mobdevtab + 136))();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136315650;
        v22 = buffer;
        v23 = 1024;
        v24 = v13;
        v25 = 2112;
        v26 = v10;
        _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "(%s) AMDeviceConnect failed with %08x (%@)\n", &v21, 0x1Cu);
      }

      goto LABEL_16;
    }

    v14 = (*(mobdevtab + 40))(v3);
    if (v14 != -402653155 && v14)
    {
      v15 = (*(mobdevtab + 120))(v3);
      if (v15)
      {
        v16 = v15;
        v10 = (*(mobdevtab + 136))();
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
LABEL_37:
          (*a2)(2, buffer, v3, *(a2 + 8));
          goto LABEL_16;
        }

        v21 = 136315650;
        v22 = buffer;
        v23 = 1024;
        v24 = v16;
        v25 = 2112;
        v26 = v10;
        v17 = MEMORY[0x277D86220];
        v18 = "(%s) AMDevicePair failed with %08x (%@)\n";
LABEL_36:
        _os_log_impl(&dword_22E01A000, v17, OS_LOG_TYPE_DEFAULT, v18, &v21, 0x1Cu);
        goto LABEL_37;
      }

      v19 = (*(mobdevtab + 40))(v3);
      if (v19 != -402653155)
      {
        v20 = v19;
        if (v19)
        {
          v10 = (*(mobdevtab + 136))(v19);
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_37;
          }

          v21 = 136315650;
          v22 = buffer;
          v23 = 1024;
          v24 = v20;
          v25 = 2112;
          v26 = v10;
          v17 = MEMORY[0x277D86220];
          v18 = "(%s) AMDeviceStartSession failed with %08x (%@)\n";
          goto LABEL_36;
        }
      }
    }

LABEL_12:
    (*a2)(0, buffer, v3, *(a2 + 8));
    v10 = 0;
    goto LABEL_16;
  }

  v10 = 0;
  if (v6)
  {
LABEL_19:
    CFRelease(v6);
  }

LABEL_20:
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void *___logdev_mobdev_vtable_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/MobileDevice.framework/MobileDevice", 1);
  _logdev_mobdev_vtable_vtab = result;
  if (result)
  {
    result = dlsym(result, "AMDServiceConnectionReceive");
    qword_27DA52A30 = result;
    if (result)
    {
      result = dlsym(_logdev_mobdev_vtable_vtab, "AMDServiceConnectionReceiveMessage");
      qword_27DA52A38 = result;
      if (result)
      {
        result = dlsym(_logdev_mobdev_vtable_vtab, "AMDeviceCreateCopy");
        qword_27DA52A40 = result;
        if (result)
        {
          result = dlsym(_logdev_mobdev_vtable_vtab, "AMDeviceConnect");
          qword_27DA52A48 = result;
          if (result)
          {
            result = dlsym(_logdev_mobdev_vtable_vtab, "AMDeviceStartSession");
            qword_27DA52A50 = result;
            if (result)
            {
              result = dlsym(_logdev_mobdev_vtable_vtab, "AMDeviceSecureStartService");
              qword_27DA52A58 = result;
              if (result)
              {
                result = dlsym(_logdev_mobdev_vtable_vtab, "AMDeviceStopSession");
                qword_27DA52A60 = result;
                if (result)
                {
                  result = dlsym(_logdev_mobdev_vtable_vtab, "AMDeviceDisconnect");
                  qword_27DA52A68 = result;
                  if (result)
                  {
                    result = dlsym(_logdev_mobdev_vtable_vtab, "AMDServiceConnectionSendMessage");
                    qword_27DA52A70 = result;
                    if (result)
                    {
                      result = dlsym(_logdev_mobdev_vtable_vtab, "AMDServiceConnectionGetSocket");
                      qword_27DA52A78 = result;
                      if (result)
                      {
                        result = dlsym(_logdev_mobdev_vtable_vtab, "AMDServiceConnectionInvalidate");
                        qword_27DA52A80 = result;
                        if (result)
                        {
                          result = dlsym(_logdev_mobdev_vtable_vtab, "AMDeviceCopyValue");
                          off_27DA52A88 = result;
                          if (result)
                          {
                            result = dlsym(_logdev_mobdev_vtable_vtab, "AMDeviceNotificationSubscribeWithOptions");
                            qword_27DA52A90 = result;
                            if (result)
                            {
                              result = dlsym(_logdev_mobdev_vtable_vtab, "AMDeviceNotificationUnsubscribe");
                              off_27DA52A98 = result;
                              if (result)
                              {
                                result = dlsym(_logdev_mobdev_vtable_vtab, "AMDevicePair");
                                qword_27DA52AA0 = result;
                                if (result)
                                {
                                  result = dlsym(_logdev_mobdev_vtable_vtab, "AMDeviceCopyDeviceIdentifier");
                                  qword_27DA52AA8 = result;
                                  if (result)
                                  {
                                    result = dlsym(_logdev_mobdev_vtable_vtab, "AMDCopyErrorText");
                                    qword_27DA52AB0 = result;
                                    if (result)
                                    {
                                      result = dlsym(_logdev_mobdev_vtable_vtab, "AMDeviceGetInterfaceType");
                                      qword_27DA52AB8 = result;
                                      if (result)
                                      {
                                        _logdev_mobdev_vtable_valid = 1;
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
            }
          }
        }
      }
    }
  }

  return result;
}

void __logdev_stream_events_block_invoke(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    memset(v26, 0, 108);
    v25 = 0u;
    memset(v24, 0, sizeof(v24));
    v4 = *(a2 + 1);
    if (v4 > 15)
    {
      switch(v4)
      {
        case 16:
          v5 = 515;
          goto LABEL_20;
        case 32:
          v5 = 514;
          goto LABEL_20;
        case 64:
          v5 = 1152;
          goto LABEL_20;
      }
    }

    else
    {
      switch(v4)
      {
        case 2:
          v5 = 513;
          goto LABEL_20;
        case 4:
          v5 = 768;
          goto LABEL_20;
        case 8:
          v5 = 1024;
          goto LABEL_20;
      }
    }

    v5 = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v28 = v4;
      _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unknown os_activity_stream_type %u\n", buf, 8u);
      v5 = 0;
    }

LABEL_20:
    v6 = *(a2 + 9);
    v22[0] = v5;
    v22[1] = v6;
    v23 = *(a2 + 13);
    *(&v24[1] + 4) = *(a2 + 39);
    *(v24 + 4) = a2 + 21;
    v7 = *(a2 + 37);
    if (*(a2 + 37))
    {
      v8 = (a2 + *(a2 + 5) + 8 * *(a2 + 125));
    }

    else
    {
      v8 = "<missing path>";
    }

    *(v24 + 12) = v8;
    *(&v24[2] + 4) = *(a2 + 67);
    *(&v24[3] + 4) = *(a2 + 83);
    *(&v24[3] + 12) = a2 + 91;
    v9 = *(a2 + 107);
    if (*(a2 + 107))
    {
      v10 = (a2 + *(a2 + 5) + 8 * *(a2 + 125) + v7);
    }

    else
    {
      v10 = "<missing path>";
    }

    *(&v24[4] + 4) = v10;
    v11 = *(a2 + 1);
    if (v11 > 7)
    {
      switch(v11)
      {
        case 8:
          goto LABEL_30;
        case 16:
          if (*(a2 + 109))
          {
            v15 = (a2 + *(a2 + 5) + 8 * *(a2 + 125) + v7 + v9);
          }

          else
          {
            v15 = "<missing name>";
          }

          *(v26 + 12) = v15;
          *(&v25 + 4) = *(a2 + 111);
          *(&v24[4] + 12) = *(a2 + 55);
          DWORD1(v24[5]) = *(a2 + 63);
          BYTE4(v26[1]) = 0;
          goto LABEL_60;
        case 64:
LABEL_30:
          v12 = *(a2 + 109);
          if (v12)
          {
            v13 = (a2 + *(a2 + 5) + 8 * *(a2 + 125) + v7 + v9);
          }

          else
          {
            v13 = "<missing format data>";
          }

          *(v26 + 12) = v13;
          memset(&v26[1] + 4, 0, 32);
          *(&v25 + 4) = *(a2 + 113);
          if (v11 == 8)
          {
            if (*(a2 + 121))
            {
              v17 = *(a2 + 117);
              v18 = a2 + *(a2 + 5) + 8 * *(a2 + 125) + v7 + v9 + v12 + v17;
            }

            else
            {
              v18 = 0;
              LODWORD(v17) = *(a2 + 117);
            }

            *(&v26[3] + 12) = v18;
            if (v17)
            {
              v19 = (a2 + *(a2 + 5) + 8 * *(a2 + 125) + v7 + v9 + v12);
            }

            else
            {
              v19 = 0;
            }
          }

          else
          {
            v19 = "<missing buffer data>";
            *(&v26[3] + 12) = "<missing buffer data>";
          }

          *(&v26[3] + 4) = v19;
          WORD4(v26[4]) = 0;
          goto LABEL_59;
      }

LABEL_40:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v28 = v11;
        _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unknown message type %x\n", buf, 8u);
      }

      goto LABEL_60;
    }

    if (v11 == 2)
    {
      if (*(a2 + 109))
      {
        v16 = (a2 + *(a2 + 5) + 8 * *(a2 + 125) + v7 + v9);
      }

      else
      {
        v16 = "<missing name>";
      }

      *(v26 + 12) = v16;
      *(&v26[1] + 4) = *(a2 + 111);
      v20 = *(a2 + 119);
    }

    else
    {
      if (v11 != 4)
      {
        goto LABEL_40;
      }

      if (*(a2 + 109))
      {
        v14 = (a2 + *(a2 + 5) + 8 * *(a2 + 125) + v7 + v9);
      }

      else
      {
        v14 = "<missing buffer data>";
      }

      *(v26 + 12) = v14;
      memset(&v26[1] + 4, 0, 24);
      v20 = *(a2 + 117);
    }

    *(&v25 + 4) = v20;
LABEL_59:
    *(&v24[4] + 12) = *(a2 + 55);
    DWORD1(v24[5]) = *(a2 + 63);
LABEL_60:
    if (v5 > 767 || v5 == 513 || v5 == 515)
    {
      (*(a1 + 32))(v22, *(a1 + 40));
    }

    goto LABEL_64;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v22[0]) = 0;
    _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Got NULL OTRCancelAndFreeActivityStream\n", v22, 2u);
  }

  (*(a1 + 32))(0, *(a1 + 40));
LABEL_64:
  v21 = *MEMORY[0x277D85DE8];
}

uint64_t _CopyOTRServiceConnectionForDevice(uint64_t a1, CFTypeRef *a2, const __CFString *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  cf = 0;
  *a2 = 0;
  v5 = (*(mobdevtab + 24))();
  if (v5)
  {
    v6 = v5;
    v7 = (*(mobdevtab + 32))();
    if (v7)
    {
      v8 = v7;
      v9 = (*(mobdevtab + 136))();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        *v19 = v8;
        *&v19[4] = 2112;
        *&v19[6] = v9;
        _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AMDeviceConnect failed: 0x%08x (%@)", buf, 0x12u);
      }
    }

    else
    {
      v10 = (*(mobdevtab + 40))(v6);
      if (v10 == -402653155 || v10 == 0)
      {
        v12 = (*(mobdevtab + 48))(v6, a3, 0, &cf);
        v8 = v12;
        if (v12)
        {
          v9 = (*(mobdevtab + 136))(v12);
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            CStringPtr = CFStringGetCStringPtr(a3, 0x8000100u);
            *buf = 136315650;
            *v19 = CStringPtr;
            *&v19[8] = 1024;
            *&v19[10] = v8;
            v20 = 2112;
            v21 = v9;
            _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to start service %s: 0x%08x (%@)", buf, 0x1Cu);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          cf = 0;
        }

        else
        {
          v9 = 0;
          *a2 = cf;
        }
      }

      else
      {
        v8 = v10;
        v9 = (*(mobdevtab + 136))();
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *v19 = v8;
          *&v19[4] = 2112;
          *&v19[6] = v9;
          _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AMDeviceStartSession failed: 0x%08x (%@)", buf, 0x12u);
        }
      }

      (*(mobdevtab + 64))(v6);
    }

    CFRelease(v6);
    if (v9)
    {
      CFRelease(v9);
    }
  }

  else
  {
    v8 = 3892314119;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AMDeviceCreateCopy failed", buf, 2u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

void __OTRCreateActivityStreamForPID_block_invoke(uint64_t a1)
{
  *&v48[5] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  cf = 0;
  size_7 = 0;
  v3 = (*(mobdevtab + 8))(*v2, &size_7, 1);
  if (!v3)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v7 = MEMORY[0x277D86220];
    v8 = "Failed to receive message type: remote side closed connection";
    goto LABEL_10;
  }

  if (v3 < 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    v10 = __error();
    v11 = strerror(*v10);
    *buf = 136315138;
    *v48 = v11;
    v7 = MEMORY[0x277D86220];
    v8 = "receive got -1 when getting message type: %s";
    goto LABEL_13;
  }

  v4 = size_7;
  if (size_7 != 2)
  {
    if (size_7 != 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v48[0] = v4;
        v7 = MEMORY[0x277D86220];
        v8 = "Unknown message type: %d";
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    v5 = (*(mobdevtab + 16))(*v2, &cf, 0, 0);
    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v48[0] = v6;
        v7 = MEMORY[0x277D86220];
        v8 = "Failed to receive response: %x";
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    TypeID = CFDictionaryGetTypeID();
    v21 = CFGetTypeID(cf);
    v22 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (TypeID == v21)
    {
      if (!v22)
      {
        goto LABEL_25;
      }

      *buf = 134217984;
      *v48 = cf;
      v7 = MEMORY[0x277D86220];
      v8 = "Got error: %p";
LABEL_13:
      v9 = 12;
      goto LABEL_24;
    }

    if (!v22)
    {
      goto LABEL_25;
    }

    *buf = 0;
    v7 = MEMORY[0x277D86220];
    v8 = "Incorrect response type";
LABEL_10:
    v9 = 2;
    goto LABEL_24;
  }

  v12 = 0;
  v13 = 0;
  size = 0;
  v14 = *v2;
  p_size = &size;
  do
  {
    v16 = (*(mobdevtab + 8))(v14, p_size, 4 - v12);
    if (!v16)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v7 = MEMORY[0x277D86220];
      v8 = "Failed to receive message size: remote side closed connection";
      goto LABEL_10;
    }

    if ((v16 & 0x80000000) != 0)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      v23 = __error();
      v24 = strerror(*v23);
      *buf = 136315138;
      *v48 = v24;
      v7 = MEMORY[0x277D86220];
      v8 = "receive got -1 when getting message size: %s";
      goto LABEL_13;
    }

    v12 = v16 + v13;
    p_size = (p_size + v16);
    v13 = v12;
  }

  while (v12 < 4);
  v17 = size;
  if (size > 0x80)
  {
    v25 = malloc_type_malloc(size, 0x42532366uLL);
    if (!v25)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      v32 = size;
      v33 = __error();
      v34 = strerror(*v33);
      *buf = 67109378;
      v48[0] = v32;
      LOWORD(v48[1]) = 2080;
      *(&v48[1] + 2) = v34;
      v7 = MEMORY[0x277D86220];
      v8 = "Failed to allocate message of size %d: %s";
      v9 = 18;
      goto LABEL_24;
    }

    v18 = v25;
    v26 = size;
    if (size)
    {
      v27 = 0;
      v28 = 0;
      v29 = *v2;
      v30 = v25;
      while (1)
      {
        v31 = (*(mobdevtab + 8))(v29, v30, v26 - v27);
        if (!v31)
        {
          LODWORD(v27) = v28;
LABEL_48:
          if (v27 >= size)
          {
            goto LABEL_51;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v35 = MEMORY[0x277D86220];
            v36 = "Failed to receive stream message: remote side closed connection";
            v37 = 2;
            goto LABEL_60;
          }

          goto LABEL_26;
        }

        if ((v31 & 0x80000000) != 0)
        {
          break;
        }

        v27 = v31 + v28;
        v30 += v31;
        v28 = v27;
        if (v27 >= v26)
        {
          goto LABEL_48;
        }
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v42 = __error();
      v43 = strerror(*v42);
      *buf = 136315138;
      *v48 = v43;
      v35 = MEMORY[0x277D86220];
      v36 = "receive got -1 when getting stream message: %s";
      v37 = 12;
    }

    else
    {
LABEL_51:
      v38 = size_for_stream_message(v18);
      v39 = size;
      if (v38 == size)
      {
        v40 = *v18;
        if (v40 == 2)
        {
          (*(v1 + 16))(v1, v18);
          free(v18);
          goto LABEL_28;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }

        *buf = 67109120;
        v48[0] = v40;
        v35 = MEMORY[0x277D86220];
        v36 = "Received unknown message version: %hhu";
        v37 = 8;
      }

      else
      {
        v41 = v38;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }

        *buf = 67109376;
        v48[0] = v39;
        LOWORD(v48[1]) = 2048;
        *(&v48[1] + 2) = v41;
        v35 = MEMORY[0x277D86220];
        v36 = "Got message of size %u but expected size %zu";
        v37 = 18;
      }
    }

LABEL_60:
    _os_log_impl(&dword_22E01A000, v35, OS_LOG_TYPE_DEFAULT, v36, buf, v37);
    goto LABEL_26;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_25;
  }

  *buf = 67109120;
  v48[0] = v17;
  v7 = MEMORY[0x277D86220];
  v8 = "Got a message size that's too small to be an OTRActivityStreamMessage: %u";
LABEL_23:
  v9 = 8;
LABEL_24:
  _os_log_impl(&dword_22E01A000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, v9);
LABEL_25:
  v18 = 0;
LABEL_26:
  dispatch_source_cancel(v2[1]);
  free(v18);
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_28:
  v19 = *MEMORY[0x277D85DE8];
}

intptr_t __OTRCreateActivityStreamForPID_block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 24);

  return dispatch_semaphore_signal(v2);
}

void __logdev_stream_events_block_invoke_2(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Canceling stream\n", v2, 2u);
  }

  OTRCancelAndFreeActivityStream(*(a1 + 32));
}

void OTRCancelAndFreeActivityStream(uint64_t a1)
{
  if (a1)
  {
    dispatch_source_cancel(*(a1 + 8));
    dispatch_source_cancel(*(a1 + 16));
    global_queue = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __OTRCancelAndFreeActivityStream_block_invoke;
    block[3] = &__block_descriptor_tmp_68;
    block[4] = a1;
    dispatch_async(global_queue, block);
  }
}

void __OTRCancelAndFreeActivityStream_block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 24), 0xFFFFFFFFFFFFFFFFLL);
  (*(mobdevtab + 88))(**(a1 + 32));
  v2 = *(a1 + 32);
  if (*v2)
  {
    CFRelease(*v2);
    v2 = *(a1 + 32);
  }

  *v2 = 0;
  dispatch_release(*(*(a1 + 32) + 8));
  dispatch_release(*(*(a1 + 32) + 16));
  dispatch_release(*(*(a1 + 32) + 24));
  v3 = *(a1 + 32);

  free(v3);
}

uint64_t size_for_stream_message(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 37) + *(a1 + 107) + 129;
  v2 = *(a1 + 1);
  HIDWORD(v4) = v2 - 2;
  LODWORD(v4) = v2 - 2;
  v3 = v4 >> 1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v1 += *(a1 + 109);
      v5 = *(a1 + 117) + *(a1 + 121);
      goto LABEL_12;
    }

    if (v3 != 7)
    {
      goto LABEL_8;
    }

LABEL_7:
    v5 = *(a1 + 109);
    goto LABEL_12;
  }

  if (!v3)
  {
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v1 += *(a1 + 109);
    v5 = *(a1 + 113);
LABEL_12:
    result = v1 + v5 + 8 * *(a1 + 125);
    goto LABEL_13;
  }

LABEL_8:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v2;
    _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unknown message type: %u", v8, 8u);
  }

  result = 0;
LABEL_13:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void __OTRStartLegacyStreaming_block_invoke(void *a1)
{
  v2 = a1[6];
  data = dispatch_source_get_data(v2);
  if (data <= 0)
  {

    dispatch_source_cancel(v2);
  }

  else
  {
    v4 = data;
    v5 = _os_trace_malloc_typed();
    (*(mobdevtab + 8))(a1[7], v5, v4);
    v6 = &v5[v4];
    v7 = *(a1[5] + 8);
    v8 = v5;
    if (*(v7 + 24) == 1)
    {
      v8 = &v5[strlen(v5) + 1];
      *(v7 + 24) = 0;
    }

    if (v8 < v6)
    {
      v9 = (v6 - 1);
      while (1)
      {
        v10 = strlen(v8);
        if (*v8)
        {
          break;
        }

LABEL_28:
        v8 += v10 + 1;
        if (v8 >= v6)
        {
          goto LABEL_33;
        }
      }

      v11 = v8 - 1;
      do
      {
        v12 = *++v11;
      }

      while (v12 == 10);
      if (v11 < v6)
      {
        memset(&v38, 0, sizeof(v38));
        v13 = strptime(v11, "%b %d %H:%M:%S ", &v38);
        v14 = mktime(&v38);
        v15 = 0;
        if (!v13)
        {
          goto LABEL_27;
        }

        if (v13 >= v9)
        {
          goto LABEL_27;
        }

        v16 = v14;
        v17 = strchr(v13, 32);
        v15 = 0;
        if (!v17)
        {
          goto LABEL_27;
        }

        if (v17 >= v9)
        {
          goto LABEL_27;
        }

        *v17 = 0;
        v18 = v17 + 1;
        v19 = strchr(v17 + 1, 91);
        v15 = 0;
        if (!v19)
        {
          goto LABEL_27;
        }

        v20 = v19;
        if (v19 >= v9)
        {
          goto LABEL_27;
        }

        __endptr = 0;
        *v19 = 0;
        v36 = strlen(v18);
        v35 = strtol(v20 + 1, &__endptr, 10);
        v21 = strchr(__endptr, 60);
        v15 = 0;
        if (!v21)
        {
          goto LABEL_27;
        }

        v22 = v21;
        if (v21 >= v9)
        {
          goto LABEL_27;
        }

        v23 = strchr(v21 + 1, 62);
        v15 = 0;
        if (!v23)
        {
          goto LABEL_27;
        }

        if (v23 >= v9)
        {
          goto LABEL_27;
        }

        *v23 = 0;
        v24 = strchr(v23 + 1, 58);
        v15 = 0;
        if (!v24 || v24 >= v9)
        {
          goto LABEL_27;
        }

        v25 = v24 + 1;
        v26 = &v24[strlen(v24 + 1) + 1];
        if (v26 < v6)
        {
          *v26 = 0;
          v34 = v25;
          v33 = strlen(v25) + 1;
          v15 = _os_trace_calloc_typed();
          *(v15 + 55) = v16;
          *(v15 + 63) = 0;
          *(v15 + 1) = 0x8100000040;
          *(v15 + 9) = v35;
          if (!strcmp(v22 + 1, "Info"))
          {
            v31 = OTRParseLegacyLogLine_trace_id_counter++;
            v30 = (v31 << 32) | 0x104;
          }

          else
          {
            v27 = strcmp(v22 + 1, "Debug");
            v28 = OTRParseLegacyLogLine_trace_id_counter++;
            v29 = v28 << 32;
            if (v27)
            {
              v30 = v29 | 4;
            }

            else
            {
              v30 = v29 | 0x204;
            }
          }

          *(v15 + 67) = v30;
          *(v15 + 37) = v36 + 1;
          v32 = strncpy((v15 + 129), v18, v36 + 1);
          *(v15 + 109) = v33;
          strncpy(&v32[v36 + 1], v34, v33);
          goto LABEL_27;
        }
      }

      v15 = 0;
LABEL_27:
      (*(a1[4] + 16))();
      free(v15);
      goto LABEL_28;
    }

LABEL_33:
    free(v5);
  }
}

intptr_t __OTRStartLegacyStreaming_block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 24);

  return dispatch_semaphore_signal(v2);
}

uint64_t enumerateAndDecompressSubchunk_3500(void *a1, _DWORD *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = v8;
  v10 = 1;
  v11 = *a2 - 24577;
  if (v11 <= 0xF)
  {
    if (((1 << v11) & 0x880F) != 0)
    {
      v10 = (*(v8 + 2))(v8, a2, a3);
    }

    else if (*a2 == 24589)
    {
      v13 = [v7 decompressedBufferForChunk:a2];
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 1;
      v14 = [v13 data];
      v15 = [v13 size];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v21 = __enumerateAndDecompressSubchunk_block_invoke_3501;
      v22 = &unk_2787AED88;
      v26 = &v27;
      v23 = v7;
      v16 = v13;
      v24 = v16;
      v25 = v9;
      v17 = v20;
      v18 = 0;
      do
      {
        if (v15 - v18 < 0x10)
        {
          break;
        }

        v19 = *(v14 + v18 + 8);
        if (v15 - v18 - 16 < v19)
        {
          break;
        }

        if (!(v21)(v17))
        {
          break;
        }

        v18 = (v18 + v19 + 23) & 0xFFFFFFFFFFFFFFF8;
      }

      while (v18 - 1 < v15);

      v10 = *(v28 + 24);
      _Block_object_dispose(&v27, 8);
    }
  }

  return v10 & 1;
}

void sub_22E0610C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22E061C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _dataForUUID(void *a1)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v4[1] = 0;
  [a1 getUUIDBytes:v4];
  v1 = [MEMORY[0x277CBEA90] dataWithBytes:v4 length:16];
  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

id _dictForTimeval(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"sec";
  v2 = [MEMORY[0x277CCABB0] numberWithLong:*a1];
  v7[1] = @"usec";
  v8[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 8)];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

id _dictForTimezone(unsigned int *a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"mw";
  v2 = [MEMORY[0x277CCABB0] numberWithInt:*a1];
  v7[1] = @"dt";
  v8[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithInt:a1[1]];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

id _dictArrayForBacktrace(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v14 = v1;
  obj = [v1 frames];
  v3 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v20[0] = @"iu";
        v8 = [v7 imageUUID];
        v9 = _dataForUUID(v8);
        v20[1] = @"io";
        v21[0] = v9;
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "imageOffset")}];
        v21[1] = v10;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

        [v2 addObject:v11];
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v4);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v2;
}

id _dictForLossCount(unint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"c";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1];
  v7[1] = @"s";
  v8[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithBool:HIDWORD(a1) & 1];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

void sub_22E064770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22E06AE4C(void *a1)
{
  objc_begin_catch(a1);
  [v1 invalidate];
  [v1 _runInvalidationHandler:8];
  objc_end_catch();
  JUMPOUT(0x22E06AE14);
}

uint64_t _repack_compact_add_iov(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 104);
  if (v4 == *(result + 108))
  {
    v5 = 2 * v4;
    if (v5 <= 0x10)
    {
      v5 = 16;
    }

    *(result + 108) = v5;
    v6 = *(result + 96);
    result = _os_trace_realloc_typed();
    *(v3 + 96) = result;
  }

  if (a2)
  {
    v7 = *(a2 + 8);
    v8 = (v7 & 0xFFFFFFFFFFFFFFF8) + 24;
    v9 = v7 + 16;
    if ((*(a2 + 8) & 7) != 0)
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v3 + 96);
  v11 = *(v3 + 104);
  *(v3 + 104) = v11 + 1;
  v12 = (v10 + 16 * v11);
  *v12 = a2;
  v12[1] = v9;
  *(v3 + 112) += v9;
  return result;
}

void _repack_context_cleanup(uint64_t a1)
{
  if (*(a1 + 104) >= 2u)
  {
    v2 = 1;
    v3 = 16;
    do
    {
      free(*(*(a1 + 96) + v3));
      ++v2;
      v3 += 16;
    }

    while (v2 < *(a1 + 104));
  }

  free(*(a1 + 96));
  v4 = *(a1 + 120);

  free(v4);
}

uint64_t _repack_ttl_compact_close_catalog(uint64_t a1, void *a2)
{
  v96 = *MEMORY[0x277D85DE8];
  if (*(a1 + 128))
  {
    _repack_ttl_compact_flush_chunkset();
  }

  v4 = *(a1 + 116);
  if (v4 + 1 == *(a1 + 104))
  {
    goto LABEL_86;
  }

  v5 = *(a1 + 80);
  if (*(v5 + 80))
  {
    v6 = **(*(v5 + 72) + 8);
  }

  else
  {
    v6 = _catalog_subchunk_entry_alloc(v5);
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 < *(a1 + 8))
  {
    *(a1 + 8) = v8;
  }

  if (v7 > *(a1 + 16))
  {
    *(a1 + 16) = v7;
  }

  v9 = *(a1 + 80);
  if (*(*(a1 + 192) + 24) == 1)
  {
    v10 = v9[2];
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v85 = ___repack_ttl_compact_close_catalog_block_invoke;
    v86 = &__block_descriptor_40_e16_v24__0_16C_8_v16l;
    v87 = a1;
    v11 = v10[2];
    if (v11)
    {
      do
      {
        (v85)(v84, v11 + 2, v11[4]);
        v11 = *v11;
      }

      while (v11);
      v9 = *(a1 + 80);
    }

    v12 = v9[5];
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v81 = ___repack_ttl_compact_close_catalog_block_invoke_2;
    v82 = &__block_descriptor_40_e9_v16__0_v8l;
    v83 = a1;
    if (v12)
    {
      v13 = v12[2];
      if (v13)
      {
        do
        {
          v81(v80, v13[4]);
          v13 = *v13;
        }

        while (v13);
        v9 = *(a1 + 80);
      }
    }
  }

  v14 = v9[2];
  if (v14)
  {
    v14 = *(v14 + 24);
  }

  v15 = 16 * v14 + 40;
  if (v14 >> 60 || 16 * v14 >= 0xFFFFFFFFFFFFFFD8)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_92;
  }

  v16 = v9[4];
  v17 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = __CFADD__(v15, v17);
  v19 = v15 + v17;
  if (v18)
  {
LABEL_92:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_93;
  }

  v20 = v9[6];
  if (v20 >> 60)
  {
LABEL_93:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_94;
  }

  v21 = v9[7];
  if (!is_mul_ok(v21, 6uLL))
  {
LABEL_94:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_95:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_96;
  }

  v22 = v9[5];
  if (v22)
  {
    v23 = *(v22 + 24);
  }

  else
  {
    v23 = 0;
  }

  if (!is_mul_ok(v23, 0x38uLL))
  {
    goto LABEL_95;
  }

  v24 = 16 * v20;
  v25 = 56 * v23;
  v18 = __CFADD__(v25, v24);
  v26 = v25 + v24;
  if (v18)
  {
LABEL_96:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_97;
  }

  v27 = 6 * v21;
  v18 = __CFADD__(v26, v27);
  v28 = v26 + v27;
  if (v18)
  {
LABEL_97:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_98:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_99:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_100;
  }

  if ((v28 & 6) != 0)
  {
    v28 = (v28 & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v18 = __CFADD__(v28, v19);
  v29 = v28 + v19;
  if (v18)
  {
    goto LABEL_98;
  }

  if (v22)
  {
    v22 = *(v22 + 24);
  }

  v30 = 2 * v22 + 32;
  if ((v22 & 0x8000000000000000) != 0 || 2 * v22 >= 0xFFFFFFFFFFFFFFE0)
  {
    goto LABEL_99;
  }

  v31 = 2 * v22 + 40;
  if (v30 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_100:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_101:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_102:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_103:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_104:
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  v18 = __CFADD__(v31, 2 * v16);
  v32 = v31 + 2 * v16;
  v33 = v18;
  if ((v16 & 0x8000000000000000) != 0 || v33)
  {
    goto LABEL_101;
  }

  v34 = (v32 & 0xFFFFFFFFFFFFFFF8) + 8;
  if ((v32 & 6) == 0)
  {
    v34 = v32;
  }

  v35 = v9[10];
  v36 = !is_mul_ok(v35, v34);
  v37 = v35 * v34;
  v38 = v29 + v37;
  v39 = __CFADD__(v29, v37);
  if (v36 || v39)
  {
    goto LABEL_102;
  }

  v40 = _os_trace_calloc_typed();
  v41 = v40;
  *v40 = 0x110000600BLL;
  v40[1] = 0;
  v40[4] = v9[1];
  v42 = (v40 + 5);
  v88 = v40 + 5;
  v43 = v9[2];
  if (v43)
  {
    v44 = 16 * v43[3];
  }

  else
  {
    v44 = 0;
  }

  if ((v38 - v44) <= 39)
  {
    goto LABEL_60;
  }

  v79 = (v40 + 2);
  v45 = v40 + v38;
  v89 = MEMORY[0x277D85DD0];
  v90 = 0x40000000;
  v91 = __catalog_chunk_unparse_uuid_block_invoke;
  v92 = &__block_descriptor_tmp_76;
  v93 = &v88;
  v46 = v43[2];
  v47 = (v40 + 5);
  if (v46)
  {
    do
    {
      (v91)(&v89, v46 + 2, v46[4]);
      v46 = *v46;
    }

    while (v46);
    v47 = v88;
  }

  v48 = &v47[v44];
  v88 = v48;
  *v79 = v48 - v42;
  if (v45 - v9[4] < v48)
  {
LABEL_60:
    free(v41);
    v41 = 0;
    v49 = MEMORY[8];
    v50 = MEMORY[8] + 16;
    goto LABEL_78;
  }

  v51 = v9[3];
  v89 = MEMORY[0x277D85DD0];
  v90 = 0x40000000;
  v91 = __catalog_chunk_unparse_subsystem_block_invoke;
  v92 = &__block_descriptor_tmp_78;
  v93 = v9;
  v94 = &v88;
  _os_trace_str_map_for_each(v51, &v89);
  v88 = v9[4] + v88;
  v52 = ((v88 + 7) & 0xFFFFFFFFFFFFFFF8) - v88;
  bzero(v88, v52);
  v53 = v88 + v52;
  v88 = v53;
  v54 = v53 - v42;
  *(v41 + 9) = v53 - v42;
  v55 = v9[5];
  if (v55)
  {
    v56 = v55[12];
  }

  else
  {
    v56 = 0;
  }

  *(v41 + 10) = v56;
  v89 = MEMORY[0x277D85DD0];
  v90 = 0x40000000;
  v91 = __catalog_chunk_unparse_procinfo_block_invoke;
  v92 = &__block_descriptor_tmp_79;
  v93 = v9;
  v94 = &v88;
  v95 = v41 + v38;
  if (v55)
  {
    v57 = *(v55 + 2);
    if (v57)
    {
      do
      {
        (v91)(&v89, v57[4]);
        v57 = *v57;
      }

      while (v57);
      v53 = v88;
      v54 = v88 - v42;
    }
  }

  *(v41 + 11) = v54;
  *(v41 + 12) = 0;
  v58 = v9[8];
  if (v58)
  {
    do
    {
      v59 = *(v58 + 8);
      if (v59)
      {
        *v53 = *(v58 + 1);
        *(v53 + 4) = v59;
        *(v53 + 5) = *(v58 + 9);
        v60 = v53 + 24;
        v88 = v53 + 24;
        if ((v45 - (v53 + 24)) > 3)
        {
          *(v53 + 6) = *(*(v58 + 6) + 4);
          v61 = *(v58 + 6);
          v88 = v53 + 28;
          v89 = MEMORY[0x277D85DD0];
          v90 = 0x40000000;
          v91 = __catalog_chunk_unparse_subchunk_procinfos_block_invoke;
          v92 = &__block_descriptor_tmp_82;
          v93 = &v88;
          hashtable_iterate(v61, &v89);
          v60 = v88;
          if ((v45 - v88) >= 4)
          {
            *v88 = *(*(v58 + 5) + 4);
            v88 = v60 + 4;
            v62 = *(v58 + 5);
            v89 = MEMORY[0x277D85DD0];
            v90 = 0x40000000;
            v91 = __catalog_chunk_unparse_subchunk_subcats_block_invoke;
            v92 = &__block_descriptor_tmp_83;
            v93 = &v88;
            hashtable_iterate(v62, &v89);
            v60 = v88;
          }
        }

        ++*(v41 + 12);
        v63 = ((v60 + 7) & 0xFFFFFFFFFFFFFFF8) - v60;
        bzero(v60, v63);
        v53 = v88 + v63;
        v88 = v88 + v63;
      }

      v58 = *v58;
    }

    while (v58);
    v54 = v53 - v42;
  }

  if (v54 >= 0x10000)
  {
    goto LABEL_103;
  }

  v49 = v53 - v79;
  v41[1] = v49;
  v50 = v49 + 16;
  if (v49 + 16 > v38)
  {
    goto LABEL_104;
  }

LABEL_78:
  if ((v49 & 7) != 0)
  {
    v64 = (v49 & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  else
  {
    v64 = v50;
  }

  v65 = (*(a1 + 96) + 16 * *(a1 + 116));
  *v65 = v41;
  v65[1] = v64;
  *(a1 + 112) += v64;
  v66 = *(a1 + 176);
  v67 = *(a1 + 96);
  v68 = *(a1 + 104);
  v69 = _os_trace_writev();
  if (v69 != -1)
  {
    *(a1 + 184) += v69;
    if (*(a1 + 104) >= 2u)
    {
      v70 = *(a1 + 96);
      v71 = 1;
      v72 = 16;
      do
      {
        free(*(v70 + v72));
        v70 = *(a1 + 96);
        v73 = (v70 + v72);
        ++v71;
        *v73 = 0;
        v73[1] = 0;
        v72 += 16;
      }

      while (v71 < *(a1 + 104));
    }

    *(a1 + 112) = 0;
    v4 = 1;
LABEL_86:
    *(a1 + 104) = v4;
    _catalog_destroy(*(a1 + 24));
    _catalog_destroy(*(a1 + 80));
    *(a1 + 80) = 0;
    *(a1 + 24) = 0;
    result = 1;
    *(a1 + 40) = 0;
    goto LABEL_87;
  }

  v76 = __error();
  if (a2)
  {
    v77 = create_repack_error(*v76, @"Failed to write file data to temp file");
    v78 = v77;
    result = 0;
    *a2 = v77;
  }

  else
  {
    result = 0;
  }

LABEL_87:
  v75 = *MEMORY[0x277D85DE8];
  return result;
}

void _repack_ttl_compact_flush_chunkset()
{
  v0 = MEMORY[0x28223BE20]();
  v12 = *MEMORY[0x277D85DE8];
  v1 = dst_buffer;
  bzero(dst_buffer, 0x10000uLL);
  v2 = 256;
  v3 = compression_encode_buffer(dst_buffer, 0x10000uLL, *(v0 + 120), *(v0 + 128), 0, COMPRESSION_LZ4);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v1 = *(v0 + 120);
    v4 = *(v0 + 128);
  }

  v5 = _os_trace_malloc_typed();
  v6 = v5;
  if ((v4 & 7) != 0)
  {
    *(v5 + ((v4 + 16) & 0xFFFFFFFFFFFFFFF8)) = 0;
  }

  *v5 = 0x110000600DLL;
  v5[1] = v4;
  memcpy(v5 + 2, v1, v4);
  _repack_compact_add_iov(v0, v6);
  v7 = *(v0 + 80);
  v8 = *(v0 + 128);
  if (*(v7 + 80))
  {
    v9 = **(*(v7 + 72) + 8);
  }

  else
  {
    v9 = _catalog_subchunk_entry_alloc(v7);
    v7 = *(v0 + 80);
  }

  *(v9 + 8) = v8;
  *(v9 + 9) = v2;
  _catalog_subchunk_entry_alloc(v7);
  bzero(*(v0 + 120), *(v0 + 132));
  *(v0 + 128) = 0;
  v10 = *MEMORY[0x277D85DE8];
}

void ___repack_ttl_compact_close_catalog_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a2];
  [*(*(*(a1 + 32) + 192) + 32) addObject:v3];
}

void ___repack_ttl_compact_close_catalog_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a2 + 40];
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a2 + 24];
  [*(*(*(a1 + 32) + 192) + 32) addObject:v4];
  [*(*(*(a1 + 32) + 192) + 32) addObject:v5];
  v6 = *(a2 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___repack_ttl_compact_close_catalog_block_invoke_3;
  v7[3] = &__block_descriptor_40_e13_v24__0_v8_v16l;
  v7[4] = *(a1 + 32);
  hashtable_iterate(v6, v7);
}

id create_repack_error(int a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = a2;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a2;
  v5 = [v3 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"LogRepackErrorDomain" code:a1 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

void ___repack_ttl_compact_close_catalog_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3 + 16];
  [*(*(*(a1 + 32) + 192) + 32) addObject:v4];
}

uint64_t _repack_ttl_compact_open_catalog(uint64_t a1, _DWORD *a2)
{
  result = _catalog_create_with_chunk(a2, 0);
  *(a1 + 24) = result;
  if (result)
  {
    *(a1 + 40) = *(result + 64);
    *(a1 + 116) = *(a1 + 104);
    _repack_compact_add_iov(a1, 0);
    _catalog_create();
  }

  return result;
}

uint64_t _compact_chunkset()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v143 = v3;
  v5 = v4;
  v6 = v0;
  v192 = *MEMORY[0x277D85DE8];
  v8 = v7;
  v9 = *v6;
  if (*v6 <= 24587)
  {
    if ((v9 - 24578) < 3)
    {
LABEL_3:
      v10 = *(v6 + 24);
      v11 = *(v6 + 16);
      *(v5 + 32) = 0;
      v12 = _os_procinfo_map_lookup(*(*(v5 + 24) + 40), v11, v10);
      *(v5 + 32) = v12;
      goto LABEL_4;
    }

    if (v9 == 24577)
    {
      v85 = *(v6 + 8);
      v86 = v85 - 16;
      if (v85 < 0x10)
      {
LABEL_118:
        *(v5 + 48) = 0;
        [MEMORY[0x277CCACA8] stringWithFormat:@"Warning: chunk with chunkset_start_addr and id: %p, %@ was unreadable!", v143, v8];
        v116 = LABEL_144:;
        fprintf(*MEMORY[0x277D85DF8], "%s\n", [v116 UTF8String]);
        goto LABEL_175;
      }

      v124 = v6 + 32;
      if (v85 - 4113 >= 0xFFFFFFFFFFFFF00FLL)
      {
        v125 = *(v6 + 32);
        if (v86 < v125)
        {
          goto LABEL_118;
        }

        v126 = *(v6 + 34);
        if (v126 <= 0xFFF)
        {
          if (*(v6 + 29))
          {
            if (v86 <= v125 + (4096 - v126))
            {
              *(v5 + 56) = v124 + v125;
              *(v5 + 64) = (4096 - v126);
              goto LABEL_162;
            }
          }

          else if (v86 == 4096)
          {
            *(v5 + 56) = v124 + v126;
            *(v5 + 64) = (4096 - v126);
            goto LABEL_162;
          }
        }
      }

      *(v5 + 56) = 0;
      *(v5 + 64) = 0;
LABEL_162:
      *(v5 + 48) = v124;
      goto LABEL_3;
    }

LABEL_143:
    [MEMORY[0x277CCACA8] stringWithFormat:@"Warning: chunk with chunkset_start_addr and id: %p, %@ had a bad preamble!", v143, v8];
    goto LABEL_144;
  }

  if (v9 == 24588)
  {
    v84 = *(v6 + 29);
  }

  else
  {
    if (v9 != 24592)
    {
      goto LABEL_143;
    }

    v84 = 0;
  }

  v117 = *(v6 + 16);
  *(v5 + 32) = 0;
  v118 = *(*(v5 + 24) + 40);
  if (!v118)
  {
    goto LABEL_157;
  }

  v119 = (v118 + 16);
  do
  {
    v119 = *v119;
    if (!v119)
    {
      goto LABEL_157;
    }
  }

  while (v119[2] != v117);
  v12 = v119[4];
  *(v5 + 32) = v12;
  if (v12)
  {
    v120 = v84 == 0;
  }

  else
  {
    v120 = 1;
  }

  if (v120)
  {
LABEL_4:
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_157:
    *(v5 + 48) = 0;
    v116 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: unpacking chunk with chunkset_start_addr and id: %p, %@ was unsuccessful", v143, v8];
    if (v2)
    {
      create_repack_error(65, v116);
      *v2 = v123 = 0;
    }

    else
    {
      v123 = 0;
    }

    goto LABEL_176;
  }

  v121 = *(v12 + 1);
  if (v121 < 0)
  {
    v122 = v121 & 0x7FFF;
    *(v12 + 1) = v122;
    if (v84 == 4)
    {
      *(v12 + 1) = v122 | 1;
    }
  }

LABEL_5:
  v13 = *(v6 + 8);
  if ((v13 & 7) != 0)
  {
    v14 = (v13 & 0xFFFFFFF8) + 24;
  }

  else
  {
    v14 = v13 + 16;
  }

  if (*(v5 + 128) + v14 > *(v5 + 132))
  {
    _repack_ttl_compact_flush_chunkset();
  }

  if (*v6 != 24577)
  {
    v87 = v8;
    v88 = v87;
    *&v162 = 0;
    v160 = 0u;
    memset(v161, 0, sizeof(v161));
    *__n = 0u;
    v159 = 0u;
    if ((*v6 - 24579) <= 1)
    {
      v89 = [v87 stringByAppendingFormat:@"-%llu", v6 - v143];
      v90 = 48;
      if (*v6 == 24580)
      {
        v90 = 56;
      }

      v91 = _os_trace_uuid_map_lookup(*(*(v5 + 192) + 16), (v6 + v90));
      v92 = *(v6 + 32);
      v145 = 0u;
      v146 = 0u;
      v147 = 0;
      _OSLogEventUnpackChunk_3949(v6, *(v5 + 24), &v145);
      v93 = *(v5 + 40);
      v95 = *(v93 + 16);
      v94 = *(v93 + 24);
      __n[0] = 3;
      *(v161 + 8) = v145;
      if (v95 <= v92)
      {
        v95 = v92;
      }

      if (v95 < v94)
      {
        v94 = v95;
      }

      *(&v159 + 2) = 0;
      WORD3(v159) = 0;
      v97 = *(v5 + 160);
      v96 = *(v5 + 168);
      v98 = *(v5 + 24);
      __n[1] = v94;
      LOWORD(v159) = 0;
      *(&v159 + 1) = v96;
      *&v160 = v6 - v143;
      *(&v160 + 1) = v97;
      *&v161[0] = v98;
      *(&v161[1] + 8) = v146;
      *(&v161[2] + 1) = v147;
      *&v162 = 0;
      if ([**(v5 + 192) _setLogEvent:__n rangeUUIDIndex:v91 machTimebase:*(v5 + 192) + 8 traceFilename:&stru_2841AD290])
      {
        if ((*(*(v5 + 136) + 16))())
        {

          goto LABEL_129;
        }

        ++*(v5 + 152);
      }

      goto LABEL_173;
    }

LABEL_129:
    memcpy((*(v5 + 120) + *(v5 + 128)), v6, v14);
    *(v5 + 128) += v14;
    _catalog_subchunk_update_times(*(v5 + 80), *(v6 + 32));
    v99 = _catalog_procinfo_create(*(v5 + 80), *(v5 + 32));
    *(v5 + 72) = v99;
    _catalog_subchunk_procinfo_add(*(v5 + 80), v99);
    *(v5 + 72) = 0;
    *(v5 + 32) = 0;
LABEL_173:

    goto LABEL_174;
  }

  v141 = v6;
  v134 = v8;
  v142 = v8;
  v186 = 0u;
  v187 = 0u;
  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  v178 = 0u;
  v179 = 0u;
  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  v172 = 0u;
  v173 = 0u;
  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  memset(v161, 0, sizeof(v161));
  v159 = 0u;
  v15 = *(v5 + 48);
  __n[1] = v15[1];
  v16 = *v15;
  LODWORD(v16) = 268435472;
  __n[0] = v16;
  *(v5 + 88) = __n;
  v17 = v15 + 2;
  v18 = *v15;
  v19 = v15 + v18;
  if (v18 > 0x1000)
  {
    v20 = v17;
  }

  else
  {
    v20 = v19;
  }

  while (1)
  {
    v21 = v17 + 3;
    if ((v17 + 3) >= v20)
    {
      break;
    }

    v22 = v17;
    v23 = v17[2];
    v24 = HIWORD(v23);
    if (!HIWORD(v23) || v24 > (v20 - v21))
    {
      break;
    }

    if ((v23 & 0x7000000000000) != 0)
    {
      v26 = (HIWORD(v23) & 0xFFF8) + 32;
    }

    else
    {
      v26 = v24 + 24;
    }

    v17 = (v17 + v26);
    if (*v22)
    {
      context = objc_autoreleasePoolPush();
      v27 = [v142 stringByAppendingFormat:@"-%llu", v22 - v143];
      v28 = *v22;
      v29 = (v22[2] & 0xFFFFFFFFFFFFLL) + *(*(v5 + 48) + 8);
      v154 = 0u;
      v155 = 0u;
      v156 = 0;
      _OSLogEventUnpackChunk_3949(v141, *(v5 + 24), &v154);
      v30 = *(v5 + 40);
      v32 = *(v30 + 16);
      v31 = *(v30 + 24);
      v150 = v154;
      if (v32 <= v29)
      {
        v32 = v29;
      }

      if (v32 < v31)
      {
        v31 = v32;
      }

      *(&v146 + 2) = 0;
      WORD3(v146) = 0;
      v34 = *(v5 + 160);
      v33 = *(v5 + 168);
      v35 = *(v5 + 24);
      *&v145 = 3;
      *(&v145 + 1) = v31;
      LOWORD(v146) = 0;
      *(&v146 + 1) = v33;
      v147 = v22 - v143;
      v148 = v34;
      v149 = v35;
      v151 = v155;
      v152 = v156;
      v153 = v22;
      if (![**(v5 + 192) _setLogEvent:&v145 rangeUUIDIndex:0 machTimebase:*(v5 + 192) + 8 traceFilename:&stru_2841AD290])
      {
        goto LABEL_111;
      }

      if (((*(*(v5 + 136) + 16))() & 1) == 0)
      {
        ++*(v5 + 152);
        goto LABEL_111;
      }

      v36 = *(v22 + 1);
      if (v36)
      {
        if (!(v22[2] >> 51))
        {
          goto LABEL_111;
        }

        v140 = 8;
        if ((v36 & 0x10) != 0)
        {
LABEL_36:
          v140 += 8;
          if (*(v22 + 11) < v140)
          {
            goto LABEL_111;
          }
        }
      }

      else
      {
        v140 = 0;
        if ((v36 & 0x10) != 0)
        {
          goto LABEL_36;
        }
      }

      if (v28 != 2)
      {
        if ((*(v22 + 1) & 0x100) == 0)
        {
          LODWORD(v138) = 0;
          v139 = 0;
          v37 = v140;
          goto LABEL_46;
        }

        v37 = v140 + 4;
        if (v140 + 4 > *(v22 + 11))
        {
          goto LABEL_111;
        }

        v138 = WORD1(v21[v140 / 8]);
        v139 = LOWORD(v21[v140 / 8]);
        if (v138 + v139 > 0x1000 || 4096 - *(v5 + 64) > v139)
        {
          goto LABEL_111;
        }

LABEL_47:
        v38 = *(v5 + 32);
        if (*(v38 + 2))
        {
          v39 = 4;
        }

        else
        {
          v39 = 6;
        }

        v40 = v36 & 0xE;
        if (v40 > 7)
        {
          if (v40 != 8)
          {
            if (v40 == 10)
            {
              v39 = 20;
            }

            else
            {
              if (v40 != 12)
              {
                goto LABEL_63;
              }

              v39 = 6;
            }
          }
        }

        else
        {
          if (v40 == 2 || v40 == 4 || v40 == 6)
          {
            v39 = 4;
            goto LABEL_65;
          }

LABEL_63:
          v39 = 0;
        }

LABEL_65:
        v41 = v37 + v39;
        v42 = v22[2];
        if (v41 > HIWORD(v42) || !v39)
        {
          goto LABEL_111;
        }

        v43 = (v21 + v37);
        if (v39 == 6)
        {
          v44 = 0;
          v45 = *(v43 + 2) << 32;
        }

        else
        {
          v45 = 0;
          v44 = v39 == 4 ? 0 : v43 + 1;
        }

        v46 = HIWORD(v42);
        v47 = *v43;
        if ((v36 & 0x20) != 0)
        {
          v41 += 2;
          if (v41 > v46)
          {
            goto LABEL_111;
          }
        }

        if (v28 == 2)
        {
          v48 = 0;
          v49 = 0;
LABEL_83:
          if (!*(v5 + 72))
          {
            v136 = v17;
            __sb = v49;
            v52 = v44;
            v53 = v47;
            v54 = _catalog_procinfo_create(*(v5 + 80), *(v5 + 32));
            *(v5 + 72) = v54;
            _catalog_subchunk_procinfo_add(*(v5 + 80), v54);
            v47 = v53;
            v44 = v52;
            v49 = __sb;
            v17 = v136;
            v36 = *(v22 + 1);
          }

          v55 = v36 & 0xE;
          if (v55 == 10)
          {
            v58 = *(*(v5 + 80) + 16);
            if (v58)
            {
              v59 = v58[3];
            }

            _os_trace_uuid_map_insert(v58, v44);
          }

          else if (v55 == 8)
          {
            v56 = _catalog_procinfo_lookup_pc(*(v5 + 32), v45 | v47);
            if (v56)
            {
              *&v191[10] = 0;
              v188 = *(v56 + 8);
              v57 = *v56;
              v189 = *v56;
              v190 = WORD2(v57);
              *v191 = *(v56 + 16);
              _catalog_procinfo_uuidinfo_add(*(v5 + 80), *(v5 + 72), &v188);
            }
          }

          if (v48)
          {
            v137 = v48;
            v60 = *(v5 + 72);
            v61 = *(v5 + 80);
            v157 = v49;
            v62 = v60;
            if (!hashtable_lookup(*(v60 + 64), &v157))
            {
              v63 = v157;
              v130 = v62;
              __sa = *(v137 + 8);
              v129 = *(v137 + 16);
              LOWORD(v188) = v157;
              v64 = v61;
              v65 = _os_trace_calloc_typed();
              *v65 = v63;
              v66 = _os_trace_str_map_entry(*(v64 + 24), __sa);
              *(v65 + 8) = v66;
              if (!v66)
              {
                v67 = *(v64 + 32);
                _os_trace_str_map_insert((v64 + 24), __sa);
                v68 = strlen(__sa);
                v69 = *(v64 + 24);
                *(v64 + 32) += v68 + 1;
                *(v65 + 8) = _os_trace_str_map_entry(v69, __sa);
              }

              v70 = _os_trace_str_map_entry(*(v64 + 24), v129);
              *(v65 + 16) = v70;
              if (!v70)
              {
                v71 = *(v64 + 32);
                _os_trace_str_map_insert((v64 + 24), v129);
                v72 = strlen(v129);
                v73 = *(v64 + 24);
                *(v64 + 32) += v72 + 1;
                *(v65 + 16) = _os_trace_str_map_entry(v73, v129);
              }

              hashtable_insert(*(v130 + 64), &v188, v65);
              ++*(v64 + 56);
            }

            v74 = *(v5 + 80);
            LOWORD(v188) = _os_trace_str_map_lookup(*(v74 + 24), *(v137 + 8));
            if (*(v74 + 80))
            {
              v75 = **(*(v74 + 72) + 8);
            }

            else
            {
              v75 = _catalog_subchunk_entry_alloc(v74);
            }

            hashtable_insert(v75[5], &v188, 0);
            LOWORD(v188) = _os_trace_str_map_lookup(*(v74 + 24), *(v137 + 16));
            if (*(v74 + 80))
            {
              v76 = **(*(v74 + 72) + 8);
            }

            else
            {
              v76 = _catalog_subchunk_entry_alloc(v74);
            }

            hashtable_insert(v76[5], &v188, 0);
          }

          _catalog_subchunk_update_times(*(v5 + 80), v29);
          v77 = *(v5 + 88);
          v78 = v77 + *v77;
          v79 = v22[2];
          if ((v79 & 0x7000000000000) != 0)
          {
            v80 = (HIWORD(v79) & 0xFFF8) + 32;
          }

          else
          {
            v80 = HIWORD(v79) + 24;
          }

          memcpy(v77 + *v77, v22, v80);
          *v77 += v80;
          if (*(v22 + 3))
          {
            v81 = *(v5 + 64);
            v82 = v77[1] - v138;
            v77[1] = v82;
            memcpy(v77 + v82, (*(v5 + 56) + v139 + v81 - 4096), v138);
            v83 = &v78[v140];
            *(v83 + 12) = v82;
            *(v83 + 13) = v138;
          }

          goto LABEL_111;
        }

        if ((*(v22 + 1) & 0x200) != 0)
        {
          __s = *v43;
          v135 = v44;
          v50 = v41 + 2;
          if (v41 + 2 > v46)
          {
            v48 = 0;
            v49 = 0;
            v41 = HIWORD(v42);
          }

          else
          {
            v49 = *(v21 + v41);
            LOWORD(v188) = v49;
            v51 = hashtable_lookup(*(v38 + 64), &v188);
            v36 = *(v22 + 1);
            v41 = v50;
            v48 = v51;
          }

          v44 = v135;
          v47 = __s;
          if ((v36 & 0x400) == 0)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v48 = 0;
          v49 = 0;
          if ((*(v22 + 1) & 0x400) == 0)
          {
            goto LABEL_83;
          }
        }

        if (v41 >= *(v22 + 11))
        {
          goto LABEL_111;
        }

        goto LABEL_83;
      }

      if ((*(v22 + 1) & 0x200) != 0)
      {
        v37 = v140 + 8;
        if (v140 + 8 > *(v22 + 11))
        {
          goto LABEL_111;
        }
      }

      else
      {
        v37 = v140;
      }

      if (*(v22 + 1) != 1 || (v37 += 8, v37 <= *(v22 + 11)))
      {
        LODWORD(v138) = 0;
        v139 = 0;
LABEL_46:
        v140 = 0;
        goto LABEL_47;
      }

LABEL_111:

      objc_autoreleasePoolPop(context);
    }
  }

  v8 = v134;
  if (*(v5 + 72))
  {
    v100 = LOWORD(__n[0]);
    v101 = WORD1(__n[0]);
    v102 = LOWORD(__n[0]) - WORD1(__n[0]) + 4096;
    v103 = v102 < 0xFF9;
    if (v102 >= 0xFF9)
    {
      v102 = 4096;
    }

    if (WORD1(__n[0]) == 4096)
    {
      v104 = LOWORD(__n[0]);
    }

    else
    {
      v104 = v102;
    }

    v105 = WORD1(__n[0]) != 4096 && v103;
    v106 = (*(v5 + 120) + *(v5 + 128));
    *v106 = 24577;
    v106[1] = v104 + 16;
    v107 = (*(v5 + 128) + 16);
    *(v5 + 128) = v107;
    LOWORD(v106) = *(v141 + 30);
    v108 = *(v5 + 120) + v107;
    v109 = *(v141 + 16);
    v110 = *(v141 + 24);
    *(v108 + 12) = *(v141 + 28);
    *(v108 + 8) = v110;
    *v108 = v109;
    *(v108 + 13) = v105;
    *(v108 + 14) = v106;
    v111 = (*(v5 + 128) + 16);
    *(v5 + 128) = v111;
    v112 = *(v5 + 120);
    if (v105)
    {
      memcpy((v112 + v111), __n, v100);
      v113 = (v100 & 0xFFF8) + 8;
      if ((v100 & 7) == 0)
      {
        v113 = v100;
      }

      v114 = (*(v5 + 128) + v113);
      *(v5 + 128) = v114;
      memcpy((*(v5 + 120) + v114), __n + v101, 4096 - v101);
      v115 = *(v5 + 128) + ((4103 - v101) & 0xFFFFFFF8);
    }

    else
    {
      memcpy((v112 + v111), __n, v104);
      v115 = *(v5 + 128) + v104;
    }

    *(v5 + 128) = v115;
  }

  *(v5 + 72) = 0;
  *(v5 + 32) = 0;
  *(v5 + 88) = 0;
  *(v5 + 48) = 0;

LABEL_174:
  v116 = 0;
LABEL_175:
  v123 = 1;
LABEL_176:

  v127 = *MEMORY[0x277D85DE8];
  return v123;
}

void *_OSLogEventUnpackChunk_3949(void *result, uint64_t a2, uint64_t a3)
{
  *a3 = result;
  v4 = (a3 + 16);
  v5 = *result;
  if (*result > 24579)
  {
    switch(v5)
    {
      case 24580:
        v12 = result[1];
        v7 = v12 - 72;
        if (v12 < 0x48)
        {
          goto LABEL_27;
        }

        v8 = 0;
        v9 = (result + 11);
        goto LABEL_21;
      case 24588:
        v14 = result[1];
        v7 = v14 - 16;
        if (v14 < 0x10)
        {
          goto LABEL_27;
        }

        v8 = 0;
        v9 = result + 15;
        goto LABEL_21;
      case 24592:
        v10 = result[1];
        v7 = v10 - 16;
        if (v10 < 0x10)
        {
          goto LABEL_27;
        }

        v8 = 0;
        v9 = (result + 4);
        goto LABEL_21;
    }

LABEL_16:
    *(a3 + 24) = 0u;
    *(a3 + 8) = 0u;
    return result;
  }

  if (v5 == 24577)
  {
    v11 = result[1];
    v7 = v11 - 16;
    if (v11 < 0x10)
    {
      goto LABEL_27;
    }

    v9 = (result + 4);
    v8 = *(result + 29) != 0;
    goto LABEL_21;
  }

  if (v5 == 24578)
  {
    v13 = result[1];
    v7 = v13 - 32;
    if (v13 < 0x20)
    {
      goto LABEL_27;
    }

    v8 = 0;
    v9 = (result + 6);
    goto LABEL_21;
  }

  if (v5 != 24579)
  {
    goto LABEL_16;
  }

  v6 = result[1];
  v7 = v6 - 48;
  if (v6 < 0x30)
  {
    goto LABEL_27;
  }

  v8 = 0;
  v9 = (result + 8);
LABEL_21:
  if (v7 - 4097 < 0xFFFFFFFFFFFFF00FLL)
  {
LABEL_22:
    *v4 = 0;
    *(a3 + 24) = 0;
    goto LABEL_23;
  }

  v15 = *v9;
  if (v7 < v15)
  {
LABEL_27:
    *(a3 + 8) = 0;
    *(a3 + 32) = 0;
    return result;
  }

  v17 = v9[1];
  if (v17 > 0xFFF)
  {
    goto LABEL_22;
  }

  if (v8)
  {
    if (v7 > v15 + (4096 - v17))
    {
      goto LABEL_22;
    }

    v18 = (4096 - v17);
    *v4 = v9 + v15;
  }

  else
  {
    if (v7 != 4096)
    {
      goto LABEL_22;
    }

    *v4 = v9 + v17;
    v18 = (4096 - v17);
  }

  *(a3 + 24) = v18;
LABEL_23:
  *(a3 + 8) = v9;
  *(a3 + 32) = 0;
  if ((v5 - 24577) >= 4)
  {
    if (v5 == 24592)
    {
      v16 = 0;
    }

    else
    {
      if (v5 != 24588)
      {
        return result;
      }

      v16 = *(result + 29);
    }

    if (a2)
    {
      v19 = *(a2 + 40);
      if (v19)
      {
        v20 = (v19 + 16);
        while (1)
        {
          v20 = *v20;
          if (!v20)
          {
            break;
          }

          if (v20[2] == result[2])
          {
            v21 = v20[4];
            *(a3 + 32) = v21;
            if (v21)
            {
              v22 = v16 == 0;
            }

            else
            {
              v22 = 1;
            }

            if (!v22)
            {
              v23 = *(v21 + 2);
              if (v23 < 0)
              {
                v24 = v23 & 0x7FFF;
                *(v21 + 2) = v24;
                if (v16 == 4)
                {
                  *(v21 + 2) = v24 | 1;
                }
              }
            }

            return result;
          }
        }
      }
    }
  }

  else if (a2)
  {
    result = _os_procinfo_map_lookup(*(a2 + 40), result[2], *(result + 6));
    *(a3 + 32) = result;
  }

  return result;
}

void _tracev3_chunk_decompress_and_enumerate_chunks_helper(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v17 = 0;
  v16 = 0;
  v6 = _tracev3_chunk_decompress(a1, a2, &v16, &v17);
  if (v6)
  {
    v7 = v17;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v12 = ___tracev3_chunk_decompress_and_enumerate_chunks_helper_block_invoke;
    v13 = &unk_2787AEEB0;
    v14 = v5;
    v15 = v6;
    v8 = v11;
    v9 = 0;
    do
    {
      if (v7 - v9 < 0x10)
      {
        break;
      }

      v10 = *&v6[v9 + 8];
      if (v7 - v9 - 16 < v10)
      {
        break;
      }

      if (!v12(v8))
      {
        break;
      }

      v9 = (v9 + v10 + 23) & 0xFFFFFFFFFFFFFFF8;
    }

    while (v9 - 1 < v7);
  }

  if (v16)
  {
    free(v6);
  }
}

uint64_t ___tracev3_chunk_decompress_and_enumerate_chunks_helper_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v2);
  return v4;
}

BOOL purge_unused_uuids(void *a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v45 = v6;
  if (![v6 count])
  {
    v27 = 0;
    v12 = 1;
    goto LABEL_46;
  }

  v9 = opendir([v5 UTF8String]);
  if (!v9)
  {
    v36 = *__error();
    v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unable to logarchive %@: %s (%d)", v5, strerror(v36), v36];
    v27 = create_repack_error(-1, v37);

    v12 = 0;
    if (!a3)
    {
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  v10 = v9;
  v44 = v7;
  v43 = a3;
  while (1)
  {
    v11 = readdir(v10);
    v12 = v11 == 0;
    if (!v11)
    {
      break;
    }

    if (v11->d_type == 4)
    {
      d_name = v11->d_name;
      if ((v11->d_name[0] != 46 || v11->d_name[1] != 46 || v11->d_name[2]) && (!strcmp(v11->d_name, "dsc") || strlen(d_name) == 2))
      {
        snprintf(__str, 0x400uLL, "%s/%s", [v5 UTF8String], d_name);
        v14 = opendir(__str);
        if (!v14)
        {
          v38 = *__error();
          v33 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unable to open %s: %s (%d)", __str, strerror(v38), v38];
          v27 = create_repack_error(-1, v33);
          a3 = v43;
          v7 = v44;
          goto LABEL_43;
        }

        v15 = v14;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v18 = readdir(v15);
          if (!v18)
          {
            break;
          }

          if (v18->d_name[0] != 46)
          {
            v19 = v18->d_name;
            v20 = strcmp(d_name, "dsc");
            v21 = objc_alloc(MEMORY[0x277CCAB68]);
            if (v20)
            {
              v22 = [v21 initWithFormat:@"%s%s", d_name, v19];
            }

            else
            {
              v22 = [v21 initWithFormat:@"%s", v19, v42];
            }

            v23 = v22;
            [v22 insertString:@"-" atIndex:8];
            [v23 insertString:@"-" atIndex:13];
            [v23 insertString:@"-" atIndex:18];
            [v23 insertString:@"-" atIndex:23];
            v24 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v23];
            if (([v45 containsObject:v24] & 1) == 0)
            {
              v42 = v19;
              v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s/%s", __str];
              [v44 addObject:v25];
              ++v17;
            }

            ++v16;
          }
        }

        if (v17 == v16)
        {
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:__str];
          [v8 addObject:v26];
        }

        closedir(v15);
      }
    }
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v7 = v44;
  v28 = v44;
  v29 = [v28 countByEnumeratingWithState:&v50 objects:v55 count:16];
  a3 = v43;
  if (v29)
  {
    v30 = v29;
    v31 = *v51;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v51 != v31)
        {
          objc_enumerationMutation(v28);
        }

        unlink([*(*(&v50 + 1) + 8 * i) fileSystemRepresentation]);
      }

      v30 = [v28 countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v30);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v33 = v8;
  v27 = [v33 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v27)
  {
    v34 = *v47;
    do
    {
      for (j = 0; j != v27; j = j + 1)
      {
        if (*v47 != v34)
        {
          objc_enumerationMutation(v33);
        }

        rmdir([*(*(&v46 + 1) + 8 * j) fileSystemRepresentation]);
      }

      v27 = [v33 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v27);
  }

LABEL_43:

  closedir(v10);
  if (a3)
  {
LABEL_44:
    if (!v12)
    {
      v39 = v27;
      v12 = 0;
      *a3 = v27;
    }
  }

LABEL_46:

  v40 = *MEMORY[0x277D85DE8];
  return v12;
}

int *execute_repack(uint64_t a1, void *a2)
{
  v91 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 40) || !*(a1 + 48) || !*(a1 + 56))
  {
    v22 = create_repack_error(64, @"Please provide a non NULL function for print_stats, print_warning, and print_verbose");
    goto LABEL_12;
  }

  print_verbose = *(a1 + 56);
  if ((*(a1 + 24) & 1) == 0)
  {
    v36 = *a1;
    v37 = MEMORY[0x277CBEBC0];
    v38 = MEMORY[0x277CCACA8];
    *v88 = v36;
    v89 = @"Info.plist";
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:2];
    v40 = [v38 pathWithComponents:v39];
    v41 = [v37 fileURLWithPath:v40 isDirectory:0];

    v42 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfURL:v41];
    v43 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    if (v42)
    {
      v44 = [v42 objectForKey:@"Repacked"];
      v45 = v44 == 0;

      if (v45)
      {
        v47 = [v43 description];
        *&v90.st_dev = v47;
        v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v90 count:1];
      }

      else
      {
        v46 = [v42 objectForKey:@"Repacked"];
        v47 = [v43 description];
        [v46 addObject:v47];
      }

      [v42 setObject:v46 forKey:@"Repacked"];
      v87[0] = 0;
      [v42 writeToURL:v41 error:v87];
      v49 = v87[0];
      if (!v49)
      {
        v56 = 1;
        goto LABEL_47;
      }

      v50 = v49;
      v51 = MEMORY[0x277CCACA8];
      v52 = [v49 localizedDescription];
      v53 = v52;
      v54 = [v51 stringWithFormat:@"Unable to finalize logarchive: %s", objc_msgSend(v52, "UTF8String")];

      v48 = create_repack_error(74, v54);
    }

    else
    {
      v48 = create_repack_error(74, @"Unable to open Info.plist");
    }

    if (v48)
    {
      v55 = v48;

      v56 = 0;
      goto LABEL_48;
    }

    v56 = 0;
LABEL_47:
    v48 = 0;
LABEL_48:

    v22 = v48;
    if (v56)
    {
      v23 = 0;
LABEL_15:

      v25 = *MEMORY[0x277D85DE8];
      return v23;
    }

LABEL_12:
    v23 = 0xFFFFFFFFLL;
    if (a2)
    {
      if (v22)
      {
        v24 = v22;
        *a2 = v22;
      }
    }

    goto LABEL_15;
  }

  v61 = objc_opt_new();
  v62 = objc_opt_new();
  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = __Block_byref_object_copy__3981;
  v84 = __Block_byref_object_dispose__3982;
  v85 = *(a1 + 64);
  v3 = +[OSLogEventProxy _make];
  [v3 _setIncludeSensitive:1];
  v63 = v3;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__3981;
  v78 = __Block_byref_object_dispose__3982;
  v79 = 0;
  v4 = [_OSLogPredicateMapper alloc];
  v68 = [(_OSLogPredicateMapper *)v4 initWithPredicate:v81[5]];
  v70 = *a1;
  v5 = v70;
  __snprintf_chk(v88, 0x400uLL, 0, 0x400uLL, "%s/timesync", [v70 fileSystemRepresentation]);
  v6 = open(v88, 0);
  v7 = v6;
  if (v6 == -1)
  {
    v27 = @"Unable to open timesync database inside archive";
    goto LABEL_19;
  }

  v8 = _timesync_db_openat(v6, ".");
  if (!v8)
  {
    v27 = @"Unable to create timesync database structure";
LABEL_19:
    v28 = create_repack_error(74, v27);
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
    if (!v28)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v9 = *(v8 + 80);
  v60 = v8;
  [v63 _setTimesyncDatabase:v8];
  v10 = v70;
  v11 = open([v70 fileSystemRepresentation], 0x100000);
  if (v11 == -1)
  {
    v28 = create_repack_error(74, @"Unable to open archive for UUIDs");
    if (close(v7) == -1)
    {
      if (*__error() == 9)
      {
        v57 = *__error();
        qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_27DA527A8 = v57;
        __break(1u);
        goto LABEL_51;
      }

      v29 = *__error();
      _os_assumes_log();
    }

LABEL_31:
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
    goto LABEL_33;
  }

  [v63 _setUUIDDBFileDescriptor:v11];
  v12 = v70;
  v69 = open([v70 fileSystemRepresentation], 0x100000);
  if ((v69 & 0x80000000) == 0)
  {
    v64 = [[_OSLogDirectoryReference alloc] initWithDescriptor:v69];
    v65 = [[_OSLogDirectoryReference alloc] initWithDescriptor:v7];
    v66 = [[_OSLogDirectoryReference alloc] initWithDescriptor:v11];
    v67 = [[_OSLogCollectionReference alloc] initWithDiagnosticsDirectory:v64 timesyncDirectory:v65 UUIDTextDirectory:v66];
    v13 = [_OSLogCatalogFilter alloc];
    v14 = [(_OSLogCatalogFilter *)v13 initWithPredicate:v81[5] collection:v67];
    v15 = v75[5];
    v75[5] = v14;

    v16 = [(_OSLogPredicateMapper *)v68 mappedPredicate];
    v17 = v16 == 0;

    if (!v17)
    {
      v18 = [(_OSLogPredicateMapper *)v68 mappedPredicate];
      v19 = v81[5];
      v81[5] = v18;

      [v81[5] allowEvaluation];
      v20 = *(a1 + 27);
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = __compact_logarchive_block_invoke;
      v73[3] = &unk_2787AEED8;
      v73[7] = a1;
      v73[4] = v61;
      v73[8] = v63;
      v73[5] = v62;
      v73[6] = &v80;
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = __compact_logarchive_block_invoke_2;
      v72[3] = &unk_2787AEF00;
      v72[4] = &v74;
      v70;
      v21 = v63;
      v73;
      v72;
      v86 = 0;
      operator new();
    }

    v32 = MEMORY[0x277CCACA8];
    v33 = [(_OSLogPredicateMapper *)v68 validationErrors];
    v34 = [v32 stringWithFormat:@"Unable to validate predicate: %@", v33];

    v28 = create_repack_error(64, v34);

    [(_OSLogCollectionReference *)v67 close];
LABEL_33:
    [v63 _unmake];
    _timesync_db_close(v60);
    if (!v28)
    {
LABEL_35:

      _Block_object_dispose(&v74, 8);
      _Block_object_dispose(&v80, 8);

      v22 = v28;
      goto LABEL_12;
    }

LABEL_34:
    v35 = v28;
    goto LABEL_35;
  }

  if (close(v11) != -1)
  {
    goto LABEL_27;
  }

  if (*__error() == 9)
  {
LABEL_51:
    v58 = *__error();
    qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
    qword_27DA527A8 = v58;
    __break(1u);
    goto LABEL_52;
  }

  v30 = *__error();
  _os_assumes_log();
LABEL_27:
  if (close(v7) != -1)
  {
LABEL_30:
    v28 = create_repack_error(74, @"Unable to open logarchive");
    goto LABEL_31;
  }

  if (*__error() != 9)
  {
    v31 = *__error();
    _os_assumes_log();
    goto LABEL_30;
  }

LABEL_52:
  result = __error();
  v59 = *result;
  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = v59;
  __break(1u);
  return result;
}

void sub_22E06E5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3981(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __compact_logarchive_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"nil";
  }

  if (([(__CFString *)v4 containsString:@"nonsparse"]& 1) != 0 || ([(__CFString *)v4 containsString:@"timesync"]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    if (*(*(a1 + 56) + 26) == 1)
    {
      incr_val_for_key(*(a1 + 32), v4);
      incr_val_for_key(*(a1 + 32), @"total");
      [*(a1 + 40) addObject:v4];
    }

    v6 = [*(a1 + 64) composedMessage];
    v5 = [*(*(*(a1 + 48) + 8) + 40) evaluateWithObject:*(a1 + 64)];
  }

  return v5;
}

int *_compact_tracev3(int a1, uint64_t a2, const char *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v82 = *MEMORY[0x277D85DE8];
  v12 = a6;
  v13 = a7;
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
  v50 = [v14 stringByAppendingPathComponent:v15];
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__3981;
  v76 = __Block_byref_object_dispose__3982;
  v77 = 0;
  v47 = *a4;
  v71[0] = 0;
  v71[1] = v71;
  v71[2] = 0x2020000000;
  v71[3] = 0;
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  memset(v63, 0, sizeof(v63));
  v62 = 0;
  v16 = _os_trace_mmap_at();
  if (!v16)
  {
    v28 = _delete_trace_file(a1, a3, v62);
LABEL_41:

    _Block_object_dispose(v71, 8);
    _Block_object_dispose(&v72, 8);

    v42 = *MEMORY[0x277D85DE8];
    return v28;
  }

  v48 = openat(a1, "tmp", 1538, 420);
  if (v48 != -1)
  {
    *(v63 + 8) = xmmword_22E081670;
    *(&v69 + 1) = 0;
    LODWORD(v69) = v48;
    DWORD1(v66) = 0x10000;
    *(&v65 + 1) = _os_trace_malloc_typed();
    v17 = _Block_copy(v12);
    v18 = *(&v66 + 1);
    *(&v66 + 1) = v17;

    v19 = _Block_copy(v13);
    v20 = v67;
    *&v67 = v19;

    v46 = v15;
    v21 = v12;
    *(&v67 + 1) = *a4;
    v70 = a5;
    v22 = v62;
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v55 = ___compact_tracev3_block_invoke;
    v56 = &unk_2787AEF48;
    v60 = v16;
    v57 = v50;
    v58 = v71;
    v61 = v63;
    v59 = &v72;
    v23 = v54;
    v24 = 0;
    do
    {
      if (v22 - v24 < 0x10)
      {
        break;
      }

      v25 = *&v16[v24 + 8];
      if (v22 - v24 - 16 < v25)
      {
        break;
      }

      if (!(v55)(v23))
      {
        break;
      }

      v24 = (v24 + v25 + 23) & 0xFFFFFFFFFFFFFFF8;
    }

    while (v24 - 1 < v22);

    v15 = v46;
    v12 = v21;

    v26 = (v73 + 5);
    if (v73[5] || (v33 = *(&v67 + 1), v34 = *(&v63[1] + 1), *a4 = *(&v67 + 1), v34) && (obj = *v26, v35 = _repack_ttl_compact_close_catalog(v63, &obj), objc_storeStrong(v26, obj), !v35))
    {
      v27 = 0;
      goto LABEL_14;
    }

    if ((*(&v69 + 1) + DWORD2(v64)) > 1)
    {
      if (v33 != v47)
      {
        print_verbose("Removed %lu tracepoints\n", v33 - v47);
        if (faccessat(a1, a3, 0, 0) == -1)
        {
          v44 = @"Tmp file no longer accessible";
        }

        else
        {
          if (lseek(v48, 0, 2) >= 1)
          {
            v36 = _os_trace_mmap();
            value = 0u;
            v79 = 0;
            LODWORD(value) = 1;
            v80 = -1;
            v81 = 0;
            _OSLogGenerateXattrs(v36, 0, &value);
            if (munmap(v36, 0) == -1)
            {
              v37 = *__error();
              _os_assumes_log();
            }

            if (fsetxattr(v48, "com.apple.logd.metadata", &value, 0x28uLL, 0, 0) == -1)
            {
              v38 = *__error();
              _os_assumes_log();
            }
          }

          fsync(v48);
          if (renameat(a1, "tmp", a1, a3) != -1)
          {
            goto LABEL_31;
          }

          v44 = @"Failed to rename tmp to trace file";
        }

        v31 = create_repack_error(-1, v44);
        v27 = 1;
        goto LABEL_13;
      }

      print_verbose("No tracepoints removed. Keeping file as is\n");
    }

    else if (!_delete_trace_file(a1, a3, v62))
    {
      v30 = @"Nothing kept, but error deleting trace file";
      goto LABEL_12;
    }

LABEL_31:
    v27 = 0;
    v28 = 1;
    goto LABEL_32;
  }

  v29 = *__error();
  _os_assumes_log();
  v30 = @"Failed to create tmp file";
LABEL_12:
  v31 = create_repack_error(-1, v30);
  v27 = 0;
LABEL_13:
  v32 = v73[5];
  v73[5] = v31;

LABEL_14:
  v28 = 0;
  if (a8)
  {
    *a8 = v73[5];
  }

LABEL_32:
  if (v48 < 1 || close(v48) != -1)
  {
    goto LABEL_36;
  }

  if (*__error() != 9)
  {
    v39 = *__error();
    _os_assumes_log();
LABEL_36:
    if (v27 && unlinkat(a1, "tmp", 0) == -1)
    {
      v40 = *__error();
      _os_assumes_log();
    }

    _repack_context_cleanup(v63);
    if (munmap(v16, v62) == -1)
    {
      v41 = *__error();
      _os_assumes_log();
    }

    goto LABEL_41;
  }

  result = __error();
  v45 = *result;
  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = v45;
  __break(1u);
  return result;
}

void sub_22E06ED7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, void *a47)
{
  _Block_object_dispose((v47 - 224), 8);
  _Block_object_dispose((v47 - 192), 8);
  _Unwind_Resume(a1);
}

BOOL _delete_trace_file(int a1, const char *a2, uint64_t a3)
{
  v5 = unlinkat(a1, a2, 0);
  if (v5 == -1)
  {
    v6 = *MEMORY[0x277D85DF8];
    v7 = __error();
    fprintf(v6, "Failed to unlink trace file %s: error: %d\n", a2, *v7);
  }

  else
  {
    print_verbose("Deleted trace file %s of size %lu\n", a2, a3);
  }

  return v5 != -1;
}

uint64_t ___compact_tracev3_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = a2 - *(a1 + 56);
  v5 = [*(a1 + 32) stringByAppendingFormat:@"-%llu", v4];
  ++*(*(*(a1 + 40) + 8) + 24);
  v6 = *(a1 + 64);
  v6[21] = v4;
  v7 = *(a1 + 56);
  v8 = *(*(a1 + 48) + 8);
  v11 = *(v8 + 40);
  v9 = (v8 + 40);
  v10 = v11;
  v12 = v5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__3981;
  v30 = __Block_byref_object_dispose__3982;
  v31 = 0;
  v13 = *a2;
  if (v7 == a2)
  {
    if (v13 == 4096 && *(a2 + 8) > 0x27uLL)
    {
      *v6 = a2 + 144;
      _repack_compact_add_iov(v6, a2);
      v6[20] = v7;
      goto LABEL_17;
    }

    v15 = create_repack_error(-1, @"Not a valid header");
    v16 = v27[5];
    v27[5] = v15;
  }

  else if (v13 == 24589)
  {
    if (!v6[3] || !v6[5])
    {
      goto LABEL_17;
    }

    if (!(*(v6[18] + 16))())
    {
      goto LABEL_16;
    }

    v19 = v6[5];
    obj[0] = MEMORY[0x277D85DD0];
    obj[1] = 3221225472;
    obj[2] = ___compact_chunk_block_invoke;
    obj[3] = &unk_2787AEF70;
    v25 = v6;
    v23 = v12;
    v24 = &v26;
    _tracev3_chunk_decompress_and_enumerate_chunks_helper(a2, v19, obj);
    v20 = v27[5];

    if (!v20)
    {
LABEL_16:
      v6[5] = *v6[5];
      goto LABEL_17;
    }
  }

  else
  {
    if (v13 != 24587)
    {
LABEL_17:
      v18 = 1;
      goto LABEL_18;
    }

    if (!v6[3] || (obj[0] = 0, v14 = _repack_ttl_compact_close_catalog(v6, obj), objc_storeStrong(&v31, obj[0]), v14))
    {
      _repack_ttl_compact_open_catalog(v6, a2);
      _OSLogUUIDMapAddFromCatalog(v6[3], *(v6[24] + 16));
      goto LABEL_17;
    }
  }

  v10 = v27[5];
  v17 = v10;
  v18 = 0;
LABEL_18:
  _Block_object_dispose(&v26, 8);

  objc_storeStrong(v9, v10);
  return v18;
}

void sub_22E06F0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___compact_chunk_block_invoke(void *a1)
{
  v1 = a1[6];
  v2 = a1[4];
  v3 = *(a1[5] + 8);
  obj = *(v3 + 40);
  v4 = _compact_chunkset();
  objc_storeStrong((v3 + 40), obj);
  return v4;
}

void incr_val_for_key(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 objectForKey:v3];
  v8 = v5;
  if (v5)
  {
    v6 = [v5 intValue] + 1;
  }

  else
  {
    v6 = 1;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithInt:v6];
  [v4 setObject:v7 forKeyedSubscript:v3];
}

void _progress(void *a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = a1;
  [v7 setCompletedUnitCount:{objc_msgSend(v7, "completedUnitCount") + a3}];
  v6 = v5[3];

  if (v6)
  {
    [v7 fractionCompleted];
    (*(v6 + 16))(v6, 0);
  }
}

void sub_22E071704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _Block_object_dispose(&a9, 8);
  _Block_object_dispose((v9 - 176), 8);
  _Block_object_dispose((v9 - 144), 8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22E071A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __TPChunkHelper_block_invoke_2(uint64_t result, void *a2)
{
  v2 = result;
  v3 = *a2;
  if ((v3 - 24579) >= 2)
  {
    if (v3 == 24578)
    {
      return 1;
    }

    if (v3 != 24577)
    {
      qword_27DA52778 = "BUG IN LIBTRACE: unsupported chunk found in TPChunkHelper";
      qword_27DA527A8 = v3;
      __break(1u);
      return result;
    }

    v4 = a2[1];
    v5 = v4 - 16;
    if (v4 < 0x10)
    {
      return 1;
    }

    v6 = (a2 + 4);
    if (v4 - 4113 <= 0xFFFFFFFFFFFFF00ELL)
    {
      v7 = *v6;
LABEL_17:
      v14 = a2 + 6;
      v15 = v6 + v7;
      if (v7 > 0x1000)
      {
        v15 = (a2 + 6);
      }

      while (1)
      {
        v16 = v14 + 3;
        if ((v14 + 3) >= v15)
        {
          return 1;
        }

        v17 = v14;
        v18 = v14[2];
        v19 = HIWORD(v18);
        v20 = v15 - v16;
        if (!HIWORD(v18) || v19 > v20)
        {
          return 1;
        }

        v22 = v19 + 24;
        v23 = (HIWORD(v18) & 0xFFF8) + 32;
        if ((v18 & 0x7000000000000) == 0)
        {
          v23 = v22;
        }

        v14 = (v17 + v23);
        if (*v17)
        {
          v24 = (v18 & 0xFFFFFFFFFFFFLL) + a2[5];
          v25 = *(result + 64);
          if (v24 == *(v25 + 18) && (v17 - *(result + 56)) == *(v25 + 2))
          {
            v26 = (result + 40);
            *(*(*(result + 40) + 8) + 24) = 1;
            v40 = 0;
            v38 = 0u;
            v39 = 0u;
            if (_OSLogEventUnpackChunk(a2, *(result + 72), &v38))
            {
              v27 = *(v2 + 64);
              v29 = *(v27 + 26);
              v31 = *(v27 + 9);
              v35 = vextq_s8(*(v27 + 1), *(v27 + 1), 8uLL);
              v37 = vextq_s8(*(v2 + 72), *(v2 + 72), 8uLL);
              v33 = *v27;
              v12 = (*(*(v2 + 32) + 16))();
              v26 = (v2 + 48);
            }

            else
            {
              v12 = 0;
            }

            result = 0;
            v13 = *v26;
            goto LABEL_13;
          }
        }
      }
    }

    v7 = *v6;
    if (v5 >= v7)
    {
      goto LABEL_17;
    }

    return 1;
  }

  v8 = *(result + 64);
  if (*(v8 + 18) != a2[4])
  {
    return 1;
  }

  v9 = a2 - *(result + 56);
  result = 1;
  if (*(v8 + 2) == v9)
  {
    v10 = (v2 + 40);
    *(*(*(v2 + 40) + 8) + 24) = 1;
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    if (_OSLogEventUnpackChunk(a2, *(v2 + 72), &v38))
    {
      v11 = *(v2 + 64);
      v28 = *(v11 + 26);
      v30 = *(v11 + 9);
      v34 = vextq_s8(*(v11 + 1), *(v11 + 1), 8uLL);
      v36 = vextq_s8(*(v2 + 72), *(v2 + 72), 8uLL);
      v32 = *v11;
      v12 = (*(*(v2 + 32) + 16))();
      v10 = (v2 + 48);
    }

    else
    {
      v12 = 0;
    }

    result = 0;
    v13 = *v10;
LABEL_13:
    *(*(v13 + 8) + 24) = v12;
  }

  return result;
}

void sub_22E0721A0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4372(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __findOversizeAndFill_block_invoke(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  if (*a2 == 24589)
  {
    if (*(*(*(a1 + 80) + 8) + 24) && *(*(*(a1 + 96) + 8) + 40))
    {
      if (a3 == [*(a1 + 32) chunk_offset])
      {
        v15 = *(a1 + 64);
        v16 = *(a1 + 96);
        v17 = *(*(*(a1 + 88) + 8) + 24);
        v18 = *(a1 + 32);
        v19 = *(*(a1 + 112) + 8);
        v21 = *(v19 + 40);
        v20 = (v19 + 40);
        obj = v21;
        v22 = *(*(v16 + 8) + 40);
        v38 = v15;
        v23 = v18;
        v24 = v22;
        v54 = 0;
        v50 = 0;
        v51 = &v50;
        v52 = 0x2020000000;
        v53 = 0;
        v25 = [v23 fileIndex];
        v26 = [v23 chunk_offset];
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __OversizeHelper_block_invoke;
        v49[3] = &__block_descriptor_48_e13__24__0_Q8_I16l;
        v49[4] = a2;
        v49[5] = v17;
        v27 = [v38 dataForCDHash:v25 identifier:v26 size:&v54 generator:v49];
        if (v27)
        {
          v28 = [[_OSLogEnumeratorCatalogSubchunk alloc] initWithCatalog:v24 subchunk:v17 range:a3, a4];
          v37 = v24;
          v29 = v54;
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v42 = __OversizeHelper_block_invoke_2;
          v43 = &unk_2787AF1D8;
          v47 = v27;
          v44 = v23;
          v46 = &v50;
          p_obj = &obj;
          v30 = v28;
          v45 = v30;
          v31 = v41;
          v32 = 0;
          do
          {
            if (v29 - v32 < 0x10)
            {
              break;
            }

            v33 = *(v27 + v32 + 8);
            if (v29 - v32 - 16 < v33)
            {
              break;
            }

            if (!v42(v31))
            {
              break;
            }

            v32 = (v32 + v33 + 23) & 0xFFFFFFFFFFFFFFF8;
          }

          while (v32 - 1 < v29);

          v34 = *(v51 + 24);
          v24 = v37;
        }

        else
        {
          v34 = *(v51 + 24);
        }

        _Block_object_dispose(&v50, 8);

        objc_storeStrong(v20, obj);
        *(*(*(a1 + 104) + 8) + 24) = v34 & 1;
        if (*(*(*(a1 + 104) + 8) + 24))
        {
          return 0;
        }
      }

      *(*(*(a1 + 88) + 8) + 24) = **(*(*(a1 + 88) + 8) + 24);
    }

    return 1;
  }

  if (v8 != 24587)
  {
    if (v8 == 4096)
    {
      *(*(*(a1 + 72) + 8) + 24) = a2;
    }

    return 1;
  }

  v9 = 1;
  if (a3 == [*(a1 + 32) catalog_offset])
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 120);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __findOversizeAndFill_block_invoke_2;
    v40[3] = &__block_descriptor_40_e164___catalog_s__catalog_hdr_s_SQ___os_trace_uuid_map_s___os_trace_str_map_s_Q__os_procinfo_map_s_QQ_subchunk_queue_t___catalog_subchunk_s____catalog_subchunk_s__Q_8__0l;
    v40[4] = a2;
    *(*(*(a1 + 80) + 8) + 24) = [v10 catalogForCDHash:v11 identifier:a3 generator:v40];
    *(*(*(a1 + 88) + 8) + 24) = *(*(*(*(a1 + 80) + 8) + 24) + 64);
    LOBYTE(v36) = 1;
    v12 = [[_OSLogEnumeratorCatalog alloc] initWithStore:*(a1 + 48) index:*(a1 + 56) fileHeader:*(*(*(a1 + 72) + 8) + 24) range:a3 chunk:a4 storeCatalogsAndSubchunks:a2, v36];
    v13 = *(*(a1 + 96) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  return v9;
}

uint64_t __OversizeHelper_block_invoke_2(uint64_t a1, _DWORD *a2)
{
  if (*a2 != 24578)
  {
    return 1;
  }

  v4 = a2 - *(a1 + 56);
  v5 = [*(a1 + 32) tp_offset];
  result = 1;
  if (v4 == v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v7 = [[_OSLogEnumeratorOversizeChunk alloc] initWithSubchunk:*(a1 + 40) chunk:a2];
    v8 = v7;
    result = 0;
    **(a1 + 64) = v7;
  }

  return result;
}

uint64_t ctf_create(int *a1)
{
  v2 = malloc_type_malloc(0x400uLL, 0x610CB5CCuLL);
  if (v2)
  {
    v7 = v2;
    v11 = ".SUNW_ctf";
    v12 = xmmword_22E081700;
    v13 = &ctf_create_hdr;
    v14 = xmmword_22E081710;
    v15 = 0;
    v8 = ctf_bufopen(&v11, 0, 0, a1, v3, v4, v5, v6);
    v9 = v8;
    if (v8)
    {
      *(v8 + 556) |= 4u;
      *(v8 + 576) = 128;
      bzero(v7, 0x400uLL);
      *(v9 + 568) = v7;
      *(v9 + 600) = 8;
      *(v9 + 608) = xmmword_22E081700;
    }

    else
    {
      free(v7);
    }
  }

  else
  {
    v9 = 0;
    if (a1)
    {
      *a1 = 35;
    }
  }

  return v9;
}

uint64_t ctf_update(void *a1)
{
  v2 = *(a1 + 139);
  if ((v2 & 4) == 0)
  {
    v3 = 1039;
LABEL_3:
    *(a1 + 140) = v3;
    return 0xFFFFFFFFLL;
  }

  if ((v2 & 8) != 0)
  {
    memset(__dst, 0, 512);
    v5 = a1[74];
    if (v5)
    {
      v6 = 0;
      while (1)
      {
        v7 = *(v5 + 44);
        v8 = *(v5 + 48);
        v9 = v7 >> 11;
        v10 = v7 & 0x3FF;
        v11 = v8 == (*(*a1 + 64))() ? 20 : 12;
        v6 += v11;
        if ((v7 >> 11) <= 5u)
        {
          break;
        }

        if ((v9 - 6) < 2)
        {
          if (*(v5 + 48) >> 13)
          {
            v6 += 16 * v10;
          }

          else
          {
            v6 += 12 * v10;
          }

          goto LABEL_25;
        }

        if (v9 == 8)
        {
          v6 += 8 * v10;
          goto LABEL_25;
        }

        if (v9 == 14)
        {
          goto LABEL_20;
        }

LABEL_25:
        v5 = *(v5 + 8);
        if (!v5)
        {
          goto LABEL_28;
        }
      }

      if ((v9 - 1) >= 2)
      {
        v12 = v6 + 4 * (v10 + (v7 & 1));
        if (v9 != 5)
        {
          v12 = v6;
        }

        if (v9 == 4)
        {
          v6 += 12;
        }

        else
        {
          v6 = v12;
        }

        goto LABEL_25;
      }

LABEL_20:
      v6 += 4;
      goto LABEL_25;
    }

    v6 = 0;
LABEL_28:
    v13 = *(a1 + 150);
    v14 = mmap(0, v13 + v6 + 36, 3, 4098, -1, 0);
    if (v14 == -1)
    {
      v3 = 35;
      goto LABEL_3;
    }

    v15 = v14;
    v70 = v13 + v6 + 36;
    v16 = v6;
    v71 = 0;
    *v14 = -12303;
    v14[2] = 4;
    v14[7] = 0;
    *(v14 + 3) = 0;
    *(v14 + 2) = (v2 >> 1) & 1;
    *(v14 + 20) = 0;
    *(v14 + 12) = 0;
    *(v14 + 7) = v6;
    *(v14 + 8) = v13;
    v17 = (v14 + 36);
    v18 = &v14[v16 + 36];
    *v18 = 0x544E4552415000;
    v19 = a1[74];
    if (v19)
    {
      v20 = v18 + 8;
      while (1)
      {
        v21 = v19[2].i32[3];
        v22 = v19[1].i64[1];
        if (v22)
        {
          v19[2].i32[2] = v20 - v18;
          v23 = strlen(v22) + 1;
          v14 = memmove(v20, v22, v23);
          v20 += v23;
        }

        else
        {
          v19[2].i32[2] = 0;
        }

        v24 = v21 >> 11;
        v25 = v19[3].i32[0];
        v26 = v25 == (*(*a1 + 64))(v14) ? 20 : 12;
        v14 = memmove(v17, &v19[2].u64[1], v26);
        v17 = (v17 + v26);
        if ((v21 >> 11) <= 5u)
        {
          break;
        }

        if ((v24 - 6) < 2)
        {
          v30 = v19[4].i64[1];
          if (v19[3].i32[0] >> 13)
          {
            if (v30)
            {
              v37 = (v20 - v18);
              do
              {
                v38 = v30[2];
                if (v38)
                {
                  v39 = v37 + strlen(v38) + 1;
                }

                else
                {
                  v39 = v37;
                  LODWORD(v37) = 0;
                }

                v41 = v30[3];
                v40 = v30[4];
                if (*(a1 + 141) == 4)
                {
                  v17[1] = v41;
                }

                else
                {
                  v17[1] = v41;
                }

                *v17 = v37;
                v17[2] = HIDWORD(v40);
                v17[3] = v40;
                v17 += 4;
                v30 = v30[1];
                v37 = v39;
              }

              while (v30);
            }
          }

          else if (v30)
          {
            v31 = (v20 - v18);
            do
            {
              v32 = v30[2];
              if (v32)
              {
                v33 = v31 + strlen(v32) + 1;
              }

              else
              {
                v33 = v31;
                LODWORD(v31) = 0;
              }

              v34 = v30[3];
              if (*(a1 + 141) == 4)
              {
                v35 = *(v30 + 16);
                *v17 = v31;
                v17[1] = v34;
                v17[2] = v35;
                v36 = 12;
              }

              else
              {
                *v17 = (v30[3] << 32) | (v30[4] << 48) | v31;
                v36 = 8;
              }

              v17 = (v17 + v36);
              v30 = v30[1];
              v31 = v33;
            }

            while (v30);
          }

LABEL_77:
          v47 = v19[4].i64[1];
          goto LABEL_78;
        }

        if (v24 == 8)
        {
          v43 = v19[4].i64[1];
          if (v43)
          {
            v44 = v20 - v18;
            do
            {
              v45 = strlen(*(v43 + 16));
              v46 = v44;
              v44 += v45 + 1;
              *v17 = v46 | (*(v43 + 40) << 32);
              v17 += 2;
              v43 = *(v43 + 8);
            }

            while (v43);
            goto LABEL_77;
          }

          v47 = 0;
LABEL_78:
          v14 = ctf_copy_membnames(v47, v20);
          v20 = v14;
          goto LABEL_79;
        }

        if (v24 == 14)
        {
          v28 = (v19[4].u8[4] << 24) | (v19[4].u8[0] << 16);
          v29 = v19[4].u16[1];
LABEL_51:
          *v17++ = v28 | v29;
        }

LABEL_79:
        v19 = v19->i64[1];
        if (!v19)
        {
          goto LABEL_82;
        }
      }

      if ((v24 - 1) >= 2)
      {
        if (v24 == 4)
        {
          v42 = v19[5].i32[0];
          *v17 = vmovn_s64(v19[4]);
          v17[2] = v42;
          v17 += 3;
        }

        else if (v24 == 5)
        {
          if ((v21 & 0x3FF) != 0)
          {
            v27 = 0;
            do
            {
              *v17++ = *(v19[4].i64[0] + v27);
              v27 += 8;
            }

            while (8 * (v21 & 0x3FF) != v27);
          }

          if (v21)
          {
            *v17++ = 0;
          }
        }

        goto LABEL_79;
      }

      v28 = (v19[4].i32[1] << 16) | (v19[4].i32[0] << 24);
      v29 = v19[4].i32[2];
      goto LABEL_51;
    }

LABEL_82:
    mprotect(v15, v70, 1);
    v72 = ".SUNW_ctf";
    v73 = xmmword_22E081700;
    v74 = v15;
    v75 = v70;
    v76 = xmmword_22E081700;
    v52 = ctf_bufopen(&v72, 0, 0, &v71, v48, v49, v50, v51);
    if (!v52)
    {
      munmap(v15, v70);
      v3 = v71;
      goto LABEL_3;
    }

    v59 = v52;
    v60 = &_libctf_models;
    while (*(v60 + 2) != *(a1[65] + 8))
    {
      v61 = v60[7];
      v60 += 7;
      if (!v61)
      {
        *(v52 + 560) = 22;
        goto LABEL_90;
      }
    }

    *(v52 + 520) = v60;
LABEL_90:
    ctf_import(v52, a1[66], v53, v54, v55, v56, v57, v58);
    *(v59 + 552) = *(a1 + 138);
    *(v59 + 556) |= *(a1 + 139) & 0xFFFFFFF7;
    *(v59 + 32) = 0;
    *(v59 + 568) = a1[71];
    *(v59 + 576) = a1[72];
    *(v59 + 584) = *(a1 + 73);
    *(v59 + 600) = a1[75];
    v62 = a1[76];
    *(v59 + 608) = v62;
    *(v59 + 616) = v62 - 1;
    *(v59 + 624) = a1[78];
    *(a1 + 71) = 0u;
    *(a1 + 73) = 0u;
    memcpy(__dst, a1, 0x278uLL);
    memmove(a1, v59, 0x278uLL);
    memcpy(v59, __dst, 0x278uLL);
    a1[40] = a1 + 22;
    a1[43] = a1 + 26;
    a1[46] = a1 + 30;
    a1[49] = a1 + 34;
    *(v59 + 552) = 1;
    ctf_close(v59, v63, v64, v65, v66, v67, v68, v69);
  }

  return 0;
}

char *ctf_copy_membnames(uint64_t a1, char *a2)
{
  if (a1)
  {
    v3 = a1;
    do
    {
      v4 = *(v3 + 16);
      if (v4)
      {
        v5 = strlen(*(v3 + 16)) + 1;
        memmove(a2, v4, v5);
        a2 += v5;
      }

      v3 = *(v3 + 8);
    }

    while (v3);
  }

  return a2;
}

void *ctf_dtd_insert(void *result, void *a2)
{
  v2 = (result[72] - 1) & a2[4];
  v3 = result[71];
  a2[2] = *(v3 + 8 * v2);
  *(v3 + 8 * v2) = a2;
  v4 = result + 73;
  v5 = result[73];
  result[73] = a2;
  *a2 = v5;
  a2[1] = 0;
  if (v5)
  {
    v4 = v5;
  }

  v4[1] = a2;
  return result;
}

void ctf_dtd_delete(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 576) - 1;
  v5 = (*(a1 + 568) + 8 * (v4 & *(a2 + 4)));
  do
  {
    v6 = v5;
    v7 = *v5;
    v5 = (*v5 + 16);
    if (v7)
    {
      v8 = v7 == a2;
    }

    else
    {
      v8 = 1;
    }
  }

  while (!v8);
  if (v7)
  {
    *v6 = *v5;
  }

  v9 = a2[11];
  v10 = v9 >> 11;
  if (v10 > 9)
  {
    if (v10 - 11 >= 4)
    {
      if (v10 != 10)
      {
        goto LABEL_72;
      }

      v24 = *(a1 + 568);
      if (!v24)
      {
        goto LABEL_72;
      }

      v25 = a2[12];
      v16 = *(v24 + 8 * (v4 & v25));
      if (!v16)
      {
        goto LABEL_72;
      }

      while (*(v16 + 32) != v25)
      {
        v16 = *(v16 + 16);
        if (!v16)
        {
          goto LABEL_72;
        }
      }

      goto LABEL_56;
    }

    goto LABEL_20;
  }

  if ((v9 >> 11) > 5u)
  {
    if (v10 - 6 < 3)
    {
      v17 = *(a2 + 9);
      if (v17)
      {
        do
        {
          v18 = *(v17 + 16);
          if (v18)
          {
            v19 = ~strlen(*(v17 + 16));
            free(v18);
            *(a1 + 600) += v19;
          }

          if (v10 != 8)
          {
            v20 = *(a1 + 568);
            if (v20)
            {
              v21 = *(v17 + 24);
              v22 = *(v20 + 8 * ((*(a1 + 576) - 1) & v21));
              if (v22)
              {
                while (*(v22 + 32) != v21)
                {
                  v22 = *(v22 + 16);
                  if (!v22)
                  {
                    goto LABEL_37;
                  }
                }

                if ((*(a1 + 556) & 4) != 0)
                {
                  --*(v22 + 60);
                }
              }
            }
          }

LABEL_37:
          v23 = *(v17 + 8);
          free(v17);
          v17 = v23;
        }

        while (v23);
      }
    }

    goto LABEL_72;
  }

  if (v10 == 3)
  {
LABEL_20:
    v14 = *(a1 + 568);
    if (!v14)
    {
      goto LABEL_72;
    }

    v15 = a2[12];
    v16 = *(v14 + 8 * (v4 & v15));
    if (!v16)
    {
      goto LABEL_72;
    }

    while (*(v16 + 32) != v15)
    {
      v16 = *(v16 + 16);
      if (!v16)
      {
        goto LABEL_72;
      }
    }

    goto LABEL_56;
  }

  if (v10 != 4)
  {
    if (v10 == 5)
    {
      v11 = *(a1 + 568);
      if (v11)
      {
        v12 = a2[12];
        v13 = *(v11 + 8 * (v4 & v12));
        if (v13)
        {
          while (*(v13 + 32) != v12)
          {
            v13 = *(v13 + 16);
            if (!v13)
            {
              goto LABEL_60;
            }
          }

          if ((*(a1 + 556) & 4) != 0)
          {
            --*(v13 + 60);
          }
        }
      }

LABEL_60:
      v30 = v9 & 0x3FF;
      if (v30)
      {
        for (i = 0; i != v30; ++i)
        {
          if (v11)
          {
            v32 = *(*(a2 + 8) + 8 * i);
            if (v32)
            {
              v33 = *(v11 + 8 * (v32 & v4));
              if (v33)
              {
                while (*(v33 + 32) != v32)
                {
                  v33 = *(v33 + 16);
                  if (!v33)
                  {
                    goto LABEL_70;
                  }
                }

                if ((*(a1 + 556) & 4) != 0)
                {
                  --*(v33 + 60);
                }
              }
            }
          }

LABEL_70:
          ;
        }
      }

      free(*(a2 + 8));
    }

    goto LABEL_72;
  }

  v26 = *(a1 + 568);
  if (v26)
  {
    v27 = *(a2 + 8);
    v28 = *(v26 + 8 * (v27 & v4));
    if (v28)
    {
      while (*(v28 + 32) != v27)
      {
        v28 = *(v28 + 16);
        if (!v28)
        {
          goto LABEL_52;
        }
      }

      if ((*(a1 + 556) & 4) != 0)
      {
        --*(v28 + 60);
      }
    }

LABEL_52:
    v29 = *(a2 + 9);
    v16 = *(v26 + 8 * (v29 & v4));
    if (v16)
    {
      while (*(v16 + 32) != v29)
      {
        v16 = *(v16 + 16);
        if (!v16)
        {
          goto LABEL_72;
        }
      }

LABEL_56:
      if ((*(a1 + 556) & 4) != 0)
      {
        --*(v16 + 60);
      }
    }
  }

LABEL_72:
  v34 = *(a2 + 3);
  if (v34)
  {
    v35 = ~strlen(*(a2 + 3));
    free(v34);
    *(a1 + 600) += v35;
  }

  v36 = (a1 + 584);
  v37 = *a2;
  v38 = *(a2 + 1);
  if (*a2)
  {
    v39 = *a2;
  }

  else
  {
    v39 = a1 + 584;
  }

  *(v39 + 8) = v38;
  if (v38)
  {
    v36 = v38;
  }

  *v36 = v37;

  free(a2);
}

uint64_t ctf_dtd_lookup(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 568);
  if (!v2)
  {
    return 0;
  }

  for (result = *(v2 + 8 * ((*(a1 + 576) - 1) & a2)); result; result = *(result + 16))
  {
    if (*(result + 32) == a2)
    {
      break;
    }
  }

  return result;
}

uint64_t ctf_discard(uint64_t a1)
{
  v2 = *(a1 + 556);
  if ((v2 & 4) != 0)
  {
    if ((v2 & 8) != 0)
    {
      v4 = *(a1 + 584);
      if (v4)
      {
        do
        {
          v5 = *v4;
          if (*(a1 + 616) < (*(*a1 + 40))(*(v4 + 4)))
          {
            ctf_dtd_delete(a1, v4);
          }

          v4 = v5;
        }

        while (v5);
        v2 = *(a1 + 556);
      }

      result = 0;
      *(a1 + 608) = *(a1 + 616) + 1;
      *(a1 + 556) = v2 & 0xFFFFFFF7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *(a1 + 560) = 1039;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t ctf_add_encoded(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, int a5)
{
  if (a4)
  {
    v14 = 0;
    result = ctf_add_generic(a1, a2, a3, &v14);
    if (result != -1)
    {
      v9 = (-(-*(a4 + 8) & 0xFFFFFFF8) >> 3) - 1;
      v10 = v9 | (v9 >> 1) | ((v9 | (v9 >> 1)) >> 2);
      v11 = v10 | (v10 >> 4) | ((v10 | (v10 >> 4)) >> 8);
      v12 = v14;
      *(v14 + 44) = ((a2 != 0) << 10) | (a5 << 11);
      *(v12 + 48) = ((v11 >> 16) | v11) + 1;
      v13 = *(a4 + 8);
      *(v12 + 64) = *a4;
      *(v12 + 72) = v13;
    }
  }

  else
  {
    *(a1 + 560) = 22;
    return -1;
  }

  return result;
}

uint64_t ctf_add_generic(uint64_t a1, unsigned int a2, const char *a3, void *a4)
{
  if (a2 >= 2)
  {
    v5 = 22;
LABEL_13:
    *(a1 + 560) = v5;
    return -1;
  }

  if ((*(a1 + 556) & 4) == 0)
  {
    v5 = 1039;
    goto LABEL_13;
  }

  if ((*(*a1 + 48))(*(a1 + 608), 1) >= 0xFFFFFFFFLL)
  {
    v5 = 1041;
    goto LABEL_13;
  }

  v8 = malloc_type_malloc(0x58uLL, 0x610CB5CCuLL);
  if (!v8)
  {
LABEL_12:
    v5 = 35;
    goto LABEL_13;
  }

  v9 = v8;
  if (a3 && *a3)
  {
    v10 = ctf_strdup(a3);
    if (!v10)
    {
      free(v9);
      goto LABEL_12;
    }
  }

  else
  {
    v10 = 0;
  }

  ++*(a1 + 608);
  v13 = (*(a1 + 556) >> 1) & 1;
  v11 = (*(*a1 + 48))();
  *v9 = 0u;
  v9[1] = 0u;
  v9[2] = 0u;
  v9[3] = 0u;
  v9[4] = 0u;
  *(v9 + 10) = 0;
  *(v9 + 3) = v10;
  *(v9 + 4) = v11;
  if (v10)
  {
    *(a1 + 600) += strlen(v10) + 1;
  }

  v14 = (*(a1 + 576) - 1) & v11;
  v15 = *(a1 + 568);
  *(v9 + 2) = *(v15 + 8 * v14);
  *(v15 + 8 * v14) = v9;
  v16 = a1 + 584;
  v17 = *(a1 + 584);
  *(a1 + 584) = v9;
  *v9 = v17;
  *(v9 + 1) = 0;
  if (v17)
  {
    v16 = v17;
  }

  *(v16 + 8) = v9;
  *(a1 + 556) |= 8u;
  *a4 = v9;
  return v11;
}

uint64_t ctf_add_reftype(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  if (a3 == -1 || a3 >= 0xFFFFFFFFLL)
  {
    *(a1 + 560) = 22;
    return -1;
  }

  else
  {
    v11 = 0;
    v8 = ctf_add_generic(a1, a2, 0, &v11);
    if (v8 != -1)
    {
      ctf_ref_inc(a1, a3);
      v9 = v11;
      *(v11 + 44) = ((a2 != 0) << 10) | (a4 << 11);
      *(v9 + 48) = a3;
    }
  }

  return v8;
}

uint64_t ctf_ref_inc(uint64_t result, uint64_t a2)
{
  v2 = *(result + 568);
  if (v2)
  {
    v3 = *(v2 + 8 * ((*(result + 576) - 1) & a2));
    if (v3)
    {
      while (*(v3 + 32) != a2)
      {
        v3 = *(v3 + 16);
        if (!v3)
        {
          return result;
        }
      }

      if ((*(result + 556) & 4) != 0)
      {
        ++*(v3 + 60);
      }
    }
  }

  return result;
}

uint64_t ctf_add_array(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  if (!a3)
  {
    v10 = 22;
LABEL_20:
    *(a1 + 560) = v10;
    return -1;
  }

  v17 = a1;
  if (!ctf_lookup_by_id(&v17, *a3))
  {
    v11 = *(a1 + 568);
    if (!v11 || (v12 = *(v11 + 8 * ((*(a1 + 576) - 1) & *a3))) == 0)
    {
LABEL_19:
      v10 = 1020;
      goto LABEL_20;
    }

    while (*(v12 + 32) != *a3)
    {
      v12 = *(v12 + 16);
      if (!v12)
      {
        goto LABEL_19;
      }
    }
  }

  v17 = a1;
  if (!ctf_lookup_by_id(&v17, a3[1]))
  {
    v13 = *(a1 + 568);
    if (v13)
    {
      v14 = a3[1];
      v15 = *(v13 + 8 * ((*(a1 + 576) - 1) & v14));
      if (v15)
      {
        while (*(v15 + 32) != v14)
        {
          v15 = *(v15 + 16);
          if (!v15)
          {
            goto LABEL_19;
          }
        }

        goto LABEL_4;
      }
    }

    goto LABEL_19;
  }

LABEL_4:
  v18 = 0;
  v6 = ctf_add_generic(a1, a2, 0, &v18);
  if (v6 != -1)
  {
    if (a2)
    {
      v7 = 9216;
    }

    else
    {
      v7 = 0x2000;
    }

    v8 = v18;
    *(v18 + 44) = v7;
    *(v8 + 48) = 0;
    v9 = a3[2];
    *(v8 + 64) = *a3;
    *(v8 + 80) = v9;
    ctf_ref_inc(a1, *a3);
    ctf_ref_inc(a1, a3[1]);
  }

  return v6;
}

uint64_t ctf_set_array(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 568);
  if (v5)
  {
    for (i = *(v5 + 8 * ((*(a1 + 576) - 1) & a2)); i; i = *(i + 16))
    {
      if (*(i + 32) == a2)
      {
        break;
      }
    }
  }

  else
  {
    i = 0;
  }

  if ((*(a1 + 556) & 4) == 0)
  {
    v7 = 1039;
LABEL_28:
    *(a1 + 560) = v7;
    return 0xFFFFFFFFLL;
  }

  if (!i || (*(i + 44) & 0xF800) != 0x2000)
  {
    goto LABEL_27;
  }

  v21 = a1;
  if (!ctf_lookup_by_id(&v21, *a3))
  {
    v13 = *(a1 + 568);
    if (!v13)
    {
      goto LABEL_27;
    }

    v14 = *(v13 + 8 * ((*(a1 + 576) - 1) & *a3));
    if (!v14)
    {
      goto LABEL_27;
    }

    while (*(v14 + 32) != *a3)
    {
      v14 = *(v14 + 16);
      if (!v14)
      {
        goto LABEL_27;
      }
    }
  }

  v21 = a1;
  v8 = ctf_lookup_by_id(&v21, a3[1]);
  v9 = *(a1 + 568);
  if (!v8)
  {
    if (v9)
    {
      v15 = a3[1];
      v16 = *(v9 + 8 * ((*(a1 + 576) - 1) & v15));
      if (v16)
      {
        while (*(v16 + 32) != v15)
        {
          v16 = *(v16 + 16);
          if (!v16)
          {
            goto LABEL_27;
          }
        }

        goto LABEL_13;
      }
    }

LABEL_27:
    v7 = 1020;
    goto LABEL_28;
  }

LABEL_13:
  v10 = *(i + 64);
  if (v9)
  {
    v11 = *(a1 + 576) - 1;
    v12 = *(v9 + 8 * (v11 & v10));
    if (v12)
    {
      while (*(v12 + 32) != v10)
      {
        v12 = *(v12 + 16);
        if (!v12)
        {
          goto LABEL_31;
        }
      }

      if ((*(a1 + 556) & 4) != 0)
      {
        --*(v12 + 60);
      }
    }

LABEL_31:
    v18 = *(i + 72);
    v19 = *(v9 + 8 * (v11 & v18));
    if (v19)
    {
      while (*(v19 + 32) != v18)
      {
        v19 = *(v19 + 16);
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      if ((*(a1 + 556) & 4) != 0)
      {
        --*(v19 + 60);
      }
    }
  }

LABEL_37:
  *(a1 + 556) |= 8u;
  v20 = *a3;
  *(i + 80) = a3[2];
  *(i + 64) = v20;
  ctf_ref_inc(a1, *a3);
  ctf_ref_inc(a1, a3[1]);
  return 0;
}

uint64_t ctf_add_function(uint64_t a1, unsigned int a2, uint64_t a3, void *a4)
{
  if (!a3 || (v6 = *(a3 + 12), v6 > 1) || (v9 = *(a3 + 8), !a4) && v9)
  {
    v10 = 22;
LABEL_6:
    *(a1 + 560) = v10;
    return -1;
  }

  v13 = v9 + v6;
  if (v9 + v6 >= 0x400)
  {
    v10 = 84;
    goto LABEL_6;
  }

  v27 = a1;
  if (!ctf_lookup_by_id(&v27, *a3))
  {
    v18 = *(a1 + 568);
    if (!v18 || (v19 = *(v18 + 8 * ((*(a1 + 576) - 1) & *a3))) == 0)
    {
LABEL_25:
      v10 = 1020;
      goto LABEL_6;
    }

    while (*(v19 + 32) != *a3)
    {
      v19 = *(v19 + 16);
      if (!v19)
      {
        goto LABEL_25;
      }
    }
  }

  if (*(a3 + 8))
  {
    for (i = 0; i < *(a3 + 8); ++i)
    {
      v27 = a1;
      if (!ctf_lookup_by_id(&v27, a4[i]))
      {
        v15 = *(a1 + 568);
        if (!v15)
        {
          goto LABEL_25;
        }

        v16 = a4[i];
        v17 = *(v15 + 8 * ((*(a1 + 576) - 1) & v16));
        if (!v17)
        {
          goto LABEL_25;
        }

        while (*(v17 + 32) != v16)
        {
          v17 = *(v17 + 16);
          if (!v17)
          {
            goto LABEL_25;
          }
        }
      }
    }
  }

  if (v13)
  {
    v20 = malloc_type_malloc((8 * v13), 0x610CB5CCuLL);
    if (!v20)
    {
      v10 = 35;
      goto LABEL_6;
    }
  }

  else
  {
    v20 = 0;
  }

  v28 = 0;
  v11 = ctf_add_generic(a1, a2, 0, &v28);
  if (v11 == -1)
  {
    free(v20);
  }

  else
  {
    if (a2)
    {
      v21 = 11264;
    }

    else
    {
      v21 = 10240;
    }

    v22 = v28;
    v23 = *a3;
    *(v28 + 44) = v13 | v21;
    *(v22 + 48) = v23;
    ctf_ref_inc(a1, *a3);
    if (*(a3 + 8))
    {
      v24 = 0;
      do
      {
        ctf_ref_inc(a1, a4[v24++]);
        v25 = *(a3 + 8);
      }

      while (v24 < v25);
      v26 = 8 * v25;
    }

    else
    {
      v26 = 0;
    }

    memmove(v20, a4, v26);
    if (*(a3 + 12))
    {
      *(v20 + (v13 - 1)) = 0;
    }

    *(v22 + 64) = v20;
  }

  return v11;
}

uint64_t ctf_add_struct(uint64_t a1, unsigned int a2, char *__s)
{
  if (__s && (v6 = strlen(__s), (v7 = ctf_hash_lookup(a1 + 176, a1, __s, v6)) != 0) && (v8 = v7, ctf_type_kind(a1, v7[1]) == 9))
  {
    result = v8[1];
    v10 = *(a1 + 568) + 8 * ((*(a1 + 576) - 1) & result);
    do
    {
      v11 = *v10;
      v12 = *(*v10 + 32);
      v10 = *v10 + 16;
    }

    while (v12 != result);
  }

  else
  {
    v14 = 0;
    result = ctf_add_generic(a1, a2, __s, &v14);
    if (result == -1)
    {
      return result;
    }

    v11 = v14;
  }

  if (a2)
  {
    v13 = 13312;
  }

  else
  {
    v13 = 12288;
  }

  *(v11 + 44) = v13;
  *(v11 + 48) = 0;
  return result;
}

uint64_t ctf_add_union(uint64_t a1, unsigned int a2, char *__s)
{
  if (__s && (v6 = strlen(__s), (v7 = ctf_hash_lookup(a1 + 208, a1, __s, v6)) != 0) && (v8 = v7, ctf_type_kind(a1, v7[1]) == 9))
  {
    result = v8[1];
    v10 = *(a1 + 568) + 8 * ((*(a1 + 576) - 1) & result);
    do
    {
      v11 = *v10;
      v12 = *(*v10 + 32);
      v10 = *v10 + 16;
    }

    while (v12 != result);
  }

  else
  {
    v14 = 0;
    result = ctf_add_generic(a1, a2, __s, &v14);
    if (result == -1)
    {
      return result;
    }

    v11 = v14;
  }

  if (a2)
  {
    v13 = 15360;
  }

  else
  {
    v13 = 14336;
  }

  *(v11 + 44) = v13;
  *(v11 + 48) = 0;
  return result;
}

uint64_t ctf_add_enum_sized(uint64_t a1, unsigned int a2, char *__s, int a4)
{
  if (__s && (v8 = strlen(__s), (v9 = ctf_hash_lookup(a1 + 240, a1, __s, v8)) != 0) && (v10 = v9, ctf_type_kind(a1, v9[1]) == 9))
  {
    result = v10[1];
    v12 = *(a1 + 568) + 8 * ((*(a1 + 576) - 1) & result);
    do
    {
      v13 = *v12;
      v14 = *(*v12 + 32);
      v12 = *v12 + 16;
    }

    while (v14 != result);
  }

  else
  {
    v16 = 0;
    result = ctf_add_generic(a1, a2, __s, &v16);
    if (result == -1)
    {
      return result;
    }

    v13 = v16;
  }

  if (a2)
  {
    v15 = 17408;
  }

  else
  {
    v15 = 0x4000;
  }

  *(v13 + 44) = v15;
  *(v13 + 48) = a4;
  return result;
}

uint64_t ctf_add_forward(uint64_t a1, unsigned int a2, char *__s, int a4)
{
  v4 = a1;
  if ((a4 - 6) >= 3)
  {
    *(a1 + 560) = 1023;
    return -1;
  }

  else
  {
    v7 = a2;
    if (__s)
    {
      v8 = a1 + (32 * (a4 - 6));
      v9 = strlen(__s);
      v10 = ctf_hash_lookup(v8 + 176, v4, __s, v9);
      if (v10)
      {
        return v10[1];
      }

      v15 = 0;
      a1 = v4;
      a2 = v7;
      v12 = __s;
    }

    else
    {
      v15 = 0;
      v12 = 0;
    }

    result = ctf_add_generic(a1, a2, v12, &v15);
    if (result != -1)
    {
      v13 = v15;
      if (v7)
      {
        v14 = 19456;
      }

      else
      {
        v14 = 18432;
      }

      *(v15 + 44) = v14;
      *(v13 + 48) = a4;
    }
  }

  return result;
}

uint64_t ctf_add_typedef(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4)
{
  v14 = a1;
  if (a4 == -1)
  {
    goto LABEL_12;
  }

  if (!ctf_lookup_by_id(&v14, a4))
  {
    v11 = *(a1 + 568);
    if (v11)
    {
      v12 = *(v11 + 8 * ((*(a1 + 576) - 1) & a4));
      if (v12)
      {
        while (*(v12 + 32) != a4)
        {
          v12 = *(v12 + 16);
          if (!v12)
          {
            goto LABEL_12;
          }
        }

        goto LABEL_3;
      }
    }

LABEL_12:
    *(a1 + 560) = 22;
    return -1;
  }

LABEL_3:
  v15 = 0;
  v8 = ctf_add_generic(a1, a2, a3, &v15);
  if (v8 != -1)
  {
    v9 = v15;
    if (a2)
    {
      v10 = 21504;
    }

    else
    {
      v10 = 20480;
    }

    *(v15 + 44) = v10;
    *(v9 + 48) = a4;
    ctf_ref_inc(a1, a4);
  }

  return v8;
}

uint64_t ctf_add_enumerator(uint64_t a1, uint64_t a2, char *__s2, int a4)
{
  v7 = *(a1 + 568);
  if (!v7)
  {
    i = 0;
    if (__s2)
    {
      goto LABEL_6;
    }

LABEL_9:
    v9 = 22;
    goto LABEL_16;
  }

  for (i = *(v7 + 8 * ((*(a1 + 576) - 1) & a2)); i; i = *(i + 16))
  {
    if (*(i + 32) == a2)
    {
      break;
    }
  }

  if (!__s2)
  {
    goto LABEL_9;
  }

LABEL_6:
  if ((*(a1 + 556) & 4) == 0)
  {
    v9 = 1039;
LABEL_16:
    *(a1 + 560) = v9;
    return 0xFFFFFFFFLL;
  }

  if (!i)
  {
    v9 = 1020;
    goto LABEL_16;
  }

  v10 = *(i + 44);
  if ((v10 & 0xF800) != 0x4000)
  {
    v9 = 1022;
    goto LABEL_16;
  }

  if ((~v10 & 0x3FF) == 0)
  {
    v9 = 1040;
    goto LABEL_16;
  }

  v12 = *(i + 72);
  if (v12)
  {
    while (strcmp(*(v12 + 16), __s2))
    {
      v12 = *(v12 + 8);
      if (!v12)
      {
        goto LABEL_20;
      }
    }

    v9 = 1042;
    goto LABEL_16;
  }

LABEL_20:
  v13 = malloc_type_malloc(0x30uLL, 0x610CB5CCuLL);
  if (!v13)
  {
LABEL_27:
    v9 = 35;
    goto LABEL_16;
  }

  v14 = v13;
  v15 = ctf_strdup(__s2);
  if (!v15)
  {
    free(v14);
    goto LABEL_27;
  }

  v16 = i + 64;
  v14[2] = v15;
  *(v14 + 3) = xmmword_22E081670;
  *(v14 + 10) = a4;
  *(i + 44) = v10 & 0x4400 | (v10 + 1) & 0x3FF;
  v17 = *(i + 64);
  *(i + 64) = v14;
  *v14 = v17;
  v14[1] = 0;
  if (v17)
  {
    v16 = v17;
  }

  *(v16 + 8) = v14;
  v18 = strlen(v15);
  result = 0;
  *(a1 + 600) += v18 + 1;
  *(a1 + 556) |= 8u;
  return result;
}

uint64_t ctf_add_member(uint64_t a1, uint64_t a2, char *__s2, uint64_t a4)
{
  v5 = __s2;
  v7 = *(a1 + 568);
  if (v7)
  {
    for (i = *(v7 + 8 * ((*(a1 + 576) - 1) & a2)); i; i = *(i + 16))
    {
      if (*(i + 32) == a2)
      {
        break;
      }
    }
  }

  else
  {
    i = 0;
  }

  if ((*(a1 + 556) & 4) == 0)
  {
    v9 = 1039;
LABEL_15:
    *(a1 + 560) = v9;
    return 0xFFFFFFFFLL;
  }

  if (!i)
  {
    v9 = 1020;
    goto LABEL_15;
  }

  v10 = *(i + 44);
  v11 = v10 >> 11;
  if ((v11 - 8) <= 0xFFFFFFFD)
  {
    v9 = 1021;
    goto LABEL_15;
  }

  if ((*(i + 44) & 0x3FF) == 0x3FF)
  {
    v9 = 1040;
    goto LABEL_15;
  }

  if (__s2)
  {
    v13 = *(i + 72);
    if (v13)
    {
      while (1)
      {
        v14 = *(v13 + 16);
        if (v14)
        {
          if (!strcmp(v14, v5))
          {
            break;
          }
        }

        v13 = *(v13 + 8);
        if (!v13)
        {
          goto LABEL_22;
        }
      }

      v9 = 1042;
      goto LABEL_15;
    }
  }

LABEL_22:
  v15 = ctf_type_size(a1, a4);
  if (v15 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v16 = v15;
  v17 = ctf_type_align(a1, a4);
  if (v17 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = v17;
  v19 = malloc_type_malloc(0x30uLL, 0x610CB5CCuLL);
  if (!v19)
  {
LABEL_29:
    v9 = 35;
    goto LABEL_15;
  }

  v20 = v19;
  if (v5)
  {
    if (*v5)
    {
      v5 = ctf_strdup(v5);
      if (!v5)
      {
        free(v20);
        goto LABEL_29;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v20[2] = v5;
  v20[3] = a4;
  *(v20 + 10) = -1;
  if ((v10 & 0x3FF) != 0 && v11 == 6)
  {
    v37 = v5;
    v21 = *(i + 64);
    v22 = ctf_type_resolve(a1, *(v21 + 24));
    v23 = *(v21 + 32);
    v39 = 0;
    v38 = 0;
    if (ctf_type_encoding(a1, v22, &v38) == -1)
    {
      v26 = ctf_type_size(a1, v22);
      v24 = v23 + 8 * v26;
      if (v26 == -1)
      {
        v24 = v23;
      }
    }

    else
    {
      v24 = v23 + v39;
    }

    v27 = v24 + 7;
    if (v18 <= 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = v18;
    }

    v29 = (v27 >> 3) % v28;
    v30 = v28 - v29;
    if (v29)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31 + (v27 >> 3);
    v20[4] = 8 * v32;
    v16 += v32;
    v5 = v37;
  }

  else
  {
    v20[4] = 0;
    ctt_size = ctf_get_ctt_size(a1, i + 40, 0, 0);
    if (ctt_size > v16)
    {
      v16 = ctt_size;
    }
  }

  if (v16 <= (*(*a1 + 56))())
  {
    v33 = v16;
  }

  else
  {
    v33 = (*(*a1 + 64))();
    *(i + 52) = __ROR8__(v16, 32);
  }

  v36 = *(i + 64);
  v35 = (i + 64);
  v34 = v36;
  *(v35 - 5) = v10 & 0x400 | (v11 << 11) | (v10 + 1) & 0x3FF;
  *(v35 - 4) = v33;
  *v35 = v20;
  *v20 = v36;
  v20[1] = 0;
  if (!v36)
  {
    v34 = v35;
  }

  v34[1] = v20;
  if (v5)
  {
    *(a1 + 600) += strlen(v5) + 1;
  }

  ctf_ref_inc(a1, a4);
  result = 0;
  *(a1 + 556) |= 8u;
  return result;
}

uint64_t ctf_delete_type(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 568);
  if (v4)
  {
    for (i = *(v4 + 8 * ((*(a1 + 576) - 1) & a2)); i; i = *(i + 16))
    {
      if (*(i + 32) == a2)
      {
        break;
      }
    }
  }

  else
  {
    i = 0;
  }

  if ((*(a1 + 556) & 4) == 0)
  {
    v6 = 1039;
LABEL_20:
    *(a1 + 560) = v6;
    return 0xFFFFFFFFLL;
  }

  v10 = a1;
  if (!ctf_lookup_by_id(&v10, a2))
  {
    v7 = *(a1 + 568);
    if (!v7)
    {
      return 0xFFFFFFFFLL;
    }

    v8 = *(v7 + 8 * ((*(a1 + 576) - 1) & a2));
    if (!v8)
    {
      return 0xFFFFFFFFLL;
    }

    while (*(v8 + 32) != a2)
    {
      v8 = *(v8 + 16);
      if (!v8)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  if (!i)
  {
    v6 = 1045;
    goto LABEL_20;
  }

  if (*(i + 60) || *(a1 + 552) >= 2u)
  {
    v6 = 1044;
    goto LABEL_20;
  }

  ctf_dtd_delete(a1, i);
  result = 0;
  *(a1 + 556) |= 8u;
  return result;
}

uint64_t ctf_add_type(uint64_t a1, uint64_t (***a2)(uint64_t), uint64_t a3)
{
  v3 = a3;
  v85 = a2;
  if (a2 == a1)
  {
    return v3;
  }

  if ((*(a1 + 556) & 4) == 0)
  {
    v5 = 1039;
LABEL_97:
    *(a1 + 560) = v5;
    return -1;
  }

  v82 = 0;
  v83 = 0;
  v84 = 0;
  v80 = 0;
  v81 = 0;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  v75 = 0;
  v76 = 0;
  v73 = 0;
  v74 = 0;
  v71 = 0;
  v72 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v62 = 0;
  v63 = 0;
  v6 = ctf_lookup_by_id(&v85, a3);
  v7 = v85;
  if (!v6)
  {
LABEL_96:
    v5 = *(v7 + 140);
    goto LABEL_97;
  }

  v8 = v6;
  v9 = *v6;
  v10 = v85 + ((v9 >> 27) & 0x10);
  v11 = *(v10 + 53);
  if (v11)
  {
    v12 = v9 & 0x7FFFFFFF;
    v13 = (v11 + v12);
    if (*(v10 + 54) <= v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }
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
    v15 = "(?)";
  }

  if (*(v85 + 141) > 3)
  {
    v16 = v6[1];
  }

  else
  {
    v16 = *(v6 + 2);
  }

  v17 = (**v85)(v16);
  if (*(v7 + 141) > 3)
  {
    v18 = v8[1];
  }

  else
  {
    v18 = *(v8 + 2);
  }

  v19 = (*v7)[1](v18);
  v20 = (*v7)[2];
  if (*(v7 + 141) > 3)
  {
    v21 = v8[1];
  }

  else
  {
    v21 = *(v8 + 2);
  }

  v64 = 0;
  v22 = v20(v21);
  if ((v17 - 6) >= 3)
  {
    v23 = 272;
  }

  else
  {
    v23 = 32 * (v17 - 6) + 176;
  }

  v24 = *v15;
  if ((v19 & 1) == 0)
  {
    v25 = 0;
    if (!*v15)
    {
      goto LABEL_52;
    }

LABEL_37:
    v31 = *(a1 + 584);
    if (v31)
    {
      v61 = v25;
      while (1)
      {
        if (*(a1 + 616) >= (*(*a1 + 40))(v31[4]))
        {
LABEL_50:
          v7 = v85;
          v25 = v61;
          goto LABEL_51;
        }

        if (*(v31 + 11) >> 11 == v17)
        {
          v32 = v31[3];
          if (v32)
          {
            if (!strcmp(v32, v15))
            {
              if ((v17 - 1) > 1u)
              {
                break;
              }

              if (!ctf_type_encoding(v85, v3, &v77) && v77 == v31[8] && v78 == *(v31 + 18))
              {
                break;
              }
            }
          }
        }

        v31 = *v31;
        if (!v31)
        {
          goto LABEL_50;
        }
      }

      return v31[4];
    }

LABEL_51:
    v64 = v31;
    goto LABEL_52;
  }

  if (*v15)
  {
    v26 = strlen(v15);
    v27 = ctf_hash_lookup(a1 + v23, a1, v15, v26);
    if (!v27)
    {
      v25 = 0;
      goto LABEL_37;
    }

    v28 = v27[1];
    v29 = ctf_type_kind(a1, v28);
    if (v29 == v17)
    {
      v30 = 0;
      v25 = v17;
      goto LABEL_53;
    }

    if (v29 != 9 || (v17 - 9) < 0xFFFDu)
    {
      goto LABEL_139;
    }

    v25 = 9;
    if (*v15)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v25 = 0;
  }

LABEL_52:
  v28 = -1;
  v30 = 1;
LABEL_53:
  v82 = v7;
  v83 = v3;
  v84 = 0;
  v79 = a1;
  v80 = v28;
  v81 = 0;
  if (v17 > 7)
  {
    if (v17 <= 10)
    {
      if (v17 == 8)
      {
        if (v28 == -1 || v25 == 9)
        {
          if (*(v7 + 141) > 3)
          {
            v52 = v8[2];
          }

          else
          {
            LOWORD(v52) = *(v8 + 3);
          }

          v57 = ctf_add_enum_sized(a1, v19, v15, v52);
          v80 = v57;
          if (v57 == -1)
          {
            return -1;
          }

          v28 = v57;
          if (ctf_enum_iter(v7, v3, enumadd, &v79))
          {
            return -1;
          }

          return v28;
        }

        if (!ctf_enum_iter(v7, v3, enumcmp, &v79) && !ctf_enum_iter(a1, v28, enumcmp, &v82))
        {
          return v28;
        }

        goto LABEL_139;
      }

      if (v17 == 9)
      {
        if (!v30)
        {
          return v28;
        }

        return ctf_add_forward(a1, v19, v15, 6);
      }

      v39 = ctf_type_reference(v7, v3);
      v40 = ctf_add_type(a1, v7, v39);
      if (v40 == -1)
      {
        return -1;
      }

      if (!v30)
      {
        return v28;
      }

      return ctf_add_typedef(a1, v19, v15, v40);
    }

    else
    {
      if ((v17 - 11) < 3)
      {
LABEL_84:
        v42 = ctf_type_reference(v7, v3);
        v43 = ctf_add_type(a1, v7, v42);
        if (v43 == -1)
        {
          return -1;
        }

        return ctf_add_reftype(a1, v19, v43, v17);
      }

      if (v17 != 14)
      {
        goto LABEL_107;
      }

      if (ctf_type_ptrauth(v7, v3, &v73))
      {
        goto LABEL_96;
      }

      if ((v30 & 1) == 0)
      {
        if (ctf_type_ptrauth(a1, v28, &v71))
        {
          return -1;
        }

        if (v73 != v71 || v74 != v72)
        {
          goto LABEL_139;
        }
      }

      v35 = ctf_type_reference(v7, v3);
      v36 = ctf_add_type(a1, v7, v35);
      if (v36 == -1)
      {
        return -1;
      }

      return ctf_add_ptrauth(a1, v19, v36, &v73);
    }
  }

  if (v17 <= 3)
  {
    if ((v17 - 1) < 2)
    {
      if (ctf_type_encoding(v7, v3, &v77))
      {
        goto LABEL_96;
      }

      if (!v30)
      {
        if (ctf_type_encoding(a1, v28, &v75))
        {
          return -1;
        }

        if (v77 == v75 && v78 == v76)
        {
          return v28;
        }

        goto LABEL_139;
      }

      if (ctf_add_intrinsic(a1, v7, v3, v15) != -1)
      {
        if (v17 == 1)
        {
          v38 = 1;
        }

        else
        {
          v38 = 2;
        }

        return ctf_add_encoded(a1, v19, v15, &v77, v38);
      }

      return -1;
    }

    if (v17 != 3)
    {
      goto LABEL_107;
    }

    goto LABEL_84;
  }

  if ((v17 - 6) < 2)
  {
    if (v28 == -1 || v25 == 9)
    {
      v44 = ctf_add_generic(a1, v19, v15, &v64);
      if (v44 == -1)
      {
        return -1;
      }

      v28 = v44;
      v45 = v64;
      v80 = v44;
      v81 = v64;
      v46 = ctf_member_iter(v7, v3, membadd, &v79) != 0;
      v47 = ctf_type_size(v7, v3);
      if (v47 <= (*(*a1 + 56))())
      {
        v48 = v47;
      }

      else
      {
        v48 = (*(*a1 + 64))();
        *(v45 + 52) = __ROR8__(v47, 32);
      }

      *(v45 + 11) = (v17 << 11) | ((v19 != 0) << 10) | v22 & 0x3FF;
      *(v45 + 12) = v48;
      for (i = v45[9]; i; i = *(i + 8))
      {
        v55 = ctf_add_type(a1, v7, *(i + 24));
        *(i + 24) = v55;
        if (v55 == -1)
        {
          ++v46;
        }
      }

      if (v46)
      {
        return -1;
      }

      for (j = v45[9]; j; j = *(j + 8))
      {
        ctf_ref_inc(a1, *(j + 24));
      }

      return v28;
    }

    v41 = ctf_type_size(v7, v3);
    if (v41 == ctf_type_size(a1, v28) && !ctf_member_iter(v7, v3, membcmp, &v79))
    {
      return v28;
    }

LABEL_139:
    v5 = 1043;
    goto LABEL_97;
  }

  if (v17 != 4)
  {
    if (v17 == 5)
    {
      if (*(v7 + 141) > 3)
      {
        v34 = v8[2];
      }

      else
      {
        v34 = *(v8 + 3);
      }

      v62 = ctf_add_type(a1, v7, v34);
      v63 = 0;
      if (v62 == -1)
      {
        return -1;
      }

      return ctf_add_function(a1, v19, &v62, 0);
    }

LABEL_107:
    v5 = 1007;
    goto LABEL_97;
  }

  if (ctf_array_info(v7, v3, &v68) == -1)
  {
    goto LABEL_96;
  }

  v49 = ctf_add_type(a1, v7, v68);
  v68 = v49;
  v50 = ctf_add_type(a1, v7, v69);
  v69 = v50;
  v3 = -1;
  if (v49 != -1 && v50 != -1)
  {
    if ((v30 & 1) == 0)
    {
      if (ctf_array_info(a1, v28, &v65))
      {
        return v3;
      }

      if (v68 != v65 || v69 != v66 || v70 != v67)
      {
        *(a1 + 560) = 1043;
        return v3;
      }

      return v28;
    }

    return ctf_add_array(a1, v19, &v68);
  }

  return v3;
}

uint64_t ctf_add_intrinsic(uint64_t a1, uint64_t a2, uint64_t a3, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  if (!*__s)
  {
    return 0;
  }

  v8 = strlen(__s);
  result = ctf_hash_lookup(a2 + 272, a2, __s, v8);
  if (result)
  {
    v15 = 0;
    v14 = 0;
    v12 = 0;
    v13 = 0;
    v10 = *(result + 4);
    if (v10 == a3)
    {
      return 0;
    }

    if (ctf_type_encoding(a2, v10, &v14) || ctf_type_encoding(a2, a3, &v12))
    {
      *(a1 + 560) = *(a2 + 560);
      return -1;
    }

    else
    {
      if (v12 == v14 && v13 == v15)
      {
        return 0;
      }

      result = ctf_add_type(a1, a2, v10);
      if (result != -1)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t ctf_add_ptrauth(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a3 < 0xFFFFFFFFLL)
  {
    v13 = 0;
    v5 = ctf_add_generic(a1, a2, 0, &v13);
    if (v5 != -1)
    {
      ctf_ref_inc(a1, a3);
      if (a2)
      {
        v9 = 29696;
      }

      else
      {
        v9 = 28672;
      }

      v10 = v13;
      *(v13 + 44) = v9;
      *(v10 + 48) = a3;
      v11 = *(a4 + 4);
      *(v10 + 64) = *a4;
      *(v10 + 68) = v11;
    }
  }

  else
  {
    *(a1 + 560) = 22;
    return -1;
  }

  return v5;
}

uint64_t membadd(const char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = malloc_type_malloc(0x30uLL, 0x610CB5CCuLL);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  if (a1 && *a1)
  {
    v10 = ctf_strdup(a1);
    if (!v10)
    {
      free(v9);
LABEL_6:
      *(*a4 + 560) = 35;
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v10 = 0;
  }

  v9[2] = v10;
  v9[3] = a2;
  v9[4] = a3;
  *(v9 + 10) = -1;
  v12 = a4[2];
  v15 = *(v12 + 64);
  v13 = (v12 + 64);
  v14 = v15;
  *v13 = v9;
  *v9 = v15;
  v9[1] = 0;
  if (v15)
  {
    v13 = v14;
  }

  v13[1] = v9;
  v16 = *a4;
  if (v10)
  {
    *(v16 + 600) += strlen(v10) + 1;
  }

  result = 0;
  *(v16 + 556) |= 8u;
  return result;
}

BOOL membcmp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a1;
  v5[1] = a3;
  return ctf_member_iter(*a4, *(a4 + 8), membmatch, v5) != 1;
}

double ctf_decl_init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = -1;
  *(a1 + 72) = -1;
  *(a1 + 88) = a2;
  *(a1 + 96) = a2;
  *(a1 + 104) = a2 + a3;
  return result;
}

void *ctf_decl_fini(uint64_t a1)
{
  for (i = 0; i != 4; ++i)
  {
    result = *(a1 + 16 * i + 8);
    if (result)
    {
      do
      {
        v4 = result[1];
        free(result);
        result = v4;
      }

      while (v4);
    }
  }

  return result;
}

uint64_t ctf_decl_push(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  while (1)
  {
    v3 = a3;
    v4 = a1;
    v34 = a2;
    result = ctf_lookup_by_id(&v34, a3);
    v6 = v34;
    if (!result)
    {
      v9 = v34[140];
LABEL_56:
      v4[30] = v9;
      return result;
    }

    v7 = result;
    if (v34[141] > 3)
    {
      v8 = *(result + 4);
    }

    else
    {
      v8 = *(result + 4);
    }

    v10 = (**v34)(v8);
    v11 = v10;
    v12 = 0;
    v13 = 1;
    if (v10 <= 9)
    {
      if (v10 == 3)
      {
        if (v6[141] > 3)
        {
          v18 = v7[2];
        }

        else
        {
          v18 = *(v7 + 3);
        }

        ctf_decl_push(v4, v6, v18);
        v14 = 0;
        v12 = 1;
      }

      else if (v10 == 4)
      {
        v32[0] = 0;
        v32[1] = 0;
        v33 = 0;
        ctf_array_info(v6, v3, v32);
        ctf_decl_push(v4, v6, v32[0]);
        v14 = 0;
        v12 = 2;
        v13 = v33;
      }

      else
      {
        v14 = 0;
        if (v10 == 5)
        {
          if (v6[141] > 3)
          {
            v15 = v7[2];
          }

          else
          {
            v15 = *(v7 + 3);
          }

          ctf_decl_push(v4, v6, v15);
          v14 = 0;
          v12 = 3;
        }
      }

      goto LABEL_39;
    }

    if ((v10 - 11) < 3)
    {
      if (v6[141] > 3)
      {
        v16 = v7[2];
      }

      else
      {
        v16 = *(v7 + 3);
      }

      ctf_decl_push(v4, v6, v16);
      v12 = v4[20];
      v14 = 1;
      goto LABEL_39;
    }

    if (v10 != 10)
    {
      break;
    }

    v19 = *v7;
    v20 = v6 + ((v19 >> 27) & 0x10);
    v21 = *(v20 + 53);
    if (v21)
    {
      v22 = v19 & 0x7FFFFFFF;
      v23 = (v21 + v22);
      if (*(v20 + 54) <= v22)
      {
        v24 = 0;
      }

      else
      {
        v24 = v23;
      }
    }

    else
    {
      v24 = 0;
    }

    if (!v24)
    {
      v24 = "(?)";
    }

    if (*v24)
    {
      v12 = 0;
      v14 = 0;
      goto LABEL_39;
    }

    if (v6[141] > 3)
    {
      v31 = v7[2];
    }

    else
    {
      v31 = *(v7 + 3);
    }

    a3 = v31;
    a1 = v4;
    a2 = v6;
  }

  v14 = 0;
  if (v10 == 14)
  {
    if (v6[141] > 3)
    {
      v17 = v7[2];
    }

    else
    {
      v17 = *(v7 + 3);
    }

    ctf_decl_push(v4, v6, v17);
    v14 = 0;
    v12 = v4[20];
  }

LABEL_39:
  result = malloc_type_malloc(0x20uLL, 0x610CB5CCuLL);
  if (!result)
  {
    v9 = 35;
    goto LABEL_56;
  }

  *(result + 16) = v3;
  *(result + 24) = v11;
  *(result + 28) = v13;
  v25 = &v4[4 * v12];
  v26 = v25[1];
  if (!v26)
  {
    v27 = v4[21];
    v4[21] = v27 + 1;
    v4[v12 + 16] = v27;
  }

  if (v12 <= 1 && v12 > v4[20])
  {
    v4[20] = v12;
  }

  if (v12)
  {
    v28 = 0;
  }

  else
  {
    v28 = v14;
  }

  if (v11 != 4 && v28 == 0)
  {
    v30 = *v25;
    *v25 = result;
    *result = v30;
    *(result + 8) = 0;
    if (v30)
    {
      v25 = v30;
    }

    v25[1] = result;
  }

  else
  {
    v25[1] = result;
    *result = 0;
    *(result + 8) = v26;
    if (v26)
    {
      v25 = v26;
    }

    *v25 = result;
  }

  return result;
}

uint64_t ctf_decl_sprintf(void *a1, char *__format, ...)
{
  va_start(va, __format);
  v3 = a1[13];
  v4 = a1[12];
  v5 = v3 - v4;
  result = vsnprintf(v4, v3 - v4, __format, va);
  v7 = result;
  if (v5 < result)
  {
    v7 = v5;
  }

  a1[12] += v7;
  a1[14] += result;
  return result;
}

char *ctf_errmsg(int a1)
{
  if ((a1 - 1000) > 0x2E)
  {
    result = strerror(a1);
  }

  else
  {
    result = _ctf_errlist[a1 - 1000];
  }

  if (!result)
  {
    return "Unknown error";
  }

  return result;
}

uint64_t ctf_hash_create(uint64_t a1, unint64_t a2)
{
  if (HIDWORD(a2))
  {
    return 84;
  }

  if (a2)
  {
    *(a1 + 16) = 211;
    *(a1 + 20) = a2 + 1;
    *(a1 + 24) = 1;
    *a1 = malloc_type_malloc(0x34CuLL, 0x610CB5CCuLL);
    v4 = malloc_type_malloc(12 * *(a1 + 20), 0x610CB5CCuLL);
    *(a1 + 8) = v4;
    if (*a1 && v4)
    {
      bzero(*a1, 4 * *(a1 + 16));
      bzero(*(a1 + 8), 12 * *(a1 + 20));
      return 0;
    }

    else
    {
      ctf_hash_destroy(a1);
      return 35;
    }
  }

  else
  {
    result = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *a1 = &_CTF_EMPTY;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
  }

  return result;
}

void ctf_hash_destroy(uint64_t a1)
{
  v2 = *a1;
  if (v2 && *(a1 + 16) != 1)
  {
    free(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    free(v3);
    *(a1 + 8) = 0;
  }
}

uint64_t ctf_hash_size(uint64_t a1)
{
  v1 = *(a1 + 20);
  v2 = v1 != 0;
  v3 = v1 - 1;
  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t ctf_hash_insert(uint64_t *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (!a3)
  {
    return 22;
  }

  v5 = *(a1 + 6);
  if (v5 >= *(a1 + 5))
  {
    return 84;
  }

  v6 = a2 + 16 * (a4 >> 31);
  v7 = *(v6 + 424);
  if (!v7)
  {
    return 1018;
  }

  v8 = a4 & 0x7FFFFFFF;
  if (*(v6 + 432) <= v8)
  {
    return 1019;
  }

  v9 = (v7 + v8);
  if (!*(v7 + v8))
  {
    return 0;
  }

  v10 = (a1[1] + 12 * v5);
  *v10 = a4;
  v10[1] = a3;
  v11 = strlen(v9);
  if (v11 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    v13 = &v9[v11];
    do
    {
      v14 = *v9++;
      v12 = ((v14 + 16 * v12) >> 24) & 0xF0 ^ (v14 + 16 * v12) & 0xFFFFFFFF0FFFFFFFLL;
    }

    while (v9 < v13);
  }

  result = 0;
  v16 = v12 % *(a1 + 4);
  v17 = *a1;
  v10[2] = *(*a1 + 4 * v16);
  *(a1 + 6) = v5 + 1;
  *(v17 + 4 * v16) = v5;
  return result;
}

uint64_t ctf_hash_define(uint64_t *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v8 = a2 + 16 * (a4 >> 31);
  v9 = *(v8 + 424);
  if (v9)
  {
    v10 = a4 & 0x7FFFFFFF;
    v11 = (v9 + v10);
    if (*(v8 + 432) <= v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = "(?)";
  }

  v14 = strlen(v13);
  v15 = ctf_hash_lookup(a1, a2, v13, v14);
  if (v15)
  {
    v15[1] = a3;
    return 0;
  }

  else
  {

    return ctf_hash_insert(a1, a2, a3, a4);
  }
}

unsigned int *ctf_hash_lookup(uint64_t a1, uint64_t a2, char *__s1, int64_t __n)
{
  if (__n < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = __s1;
    do
    {
      v8 = *v7++;
      v6 = ((v8 + 16 * v6) >> 24) & 0xF0 ^ (v8 + 16 * v6) & 0xFFFFFFFF0FFFFFFFLL;
    }

    while (v7 < &__s1[__n]);
  }

  v9 = *(*a1 + 4 * (v6 % *(a1 + 16)));
  if (!v9)
  {
    return 0;
  }

  v10 = *(a1 + 8);
  v11 = a2 + 424;
  while (1)
  {
    v12 = (v10 + 12 * v9);
    v13 = (*(v11 + ((*v12 >> 27) & 0x10)) + (*v12 & 0x7FFFFFFF));
    if (!strncmp(__s1, v13, __n) && !v13[__n])
    {
      break;
    }

    v9 = v12[2];
    if (!v9)
    {
      return 0;
    }
  }

  return v12;
}

uint64_t ctf_zopen(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ctf_dprintf("decompressing CTF data using %s\n", a2, a3, a4, a5, a6, a7, a8, "/usr/lib/libz.dylib");
  result = qword_27DA52AE8;
  if (!qword_27DA52AE8)
  {
    v10 = dlopen("/usr/lib/libz.dylib", 5);
    qword_27DA52AE8 = v10;
    if (!v10)
    {
      goto LABEL_6;
    }

    zlib = dlsym(v10, "uncompress");
    v11 = dlsym(qword_27DA52AE8, "zError");
    off_27DA52AE0 = v11;
    result = qword_27DA52AE8;
    if (!zlib || !v11)
    {
      dlclose(qword_27DA52AE8);
      off_27DA52AE0 = 0;
      qword_27DA52AE8 = 0;
      zlib = 0;
LABEL_6:
      result = 0;
      if (a1)
      {
        *a1 = 1015;
      }
    }
  }

  return result;
}

char *ctf_sect_mmap(void *a1, int a2)
{
  v4 = a1[6];
  v5 = getpagesize();
  v6 = v4 & (v5 - 1);
  result = mmap(0, v6 + a1[4], 1, 2, a2, v4 & -v5);
  if (result != -1)
  {
    a1[3] = &result[v6];
  }

  return result;
}

uint64_t ctf_sect_munmap(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = (getpagesize() - 1) & v2;
  v4 = v3 + *(a1 + 32);

  return munmap((v2 - v3), v4);
}

uint64_t ctf_fdopen(int a1, int *a2)
{
  v86 = *MEMORY[0x277D85DE8];
  memset(&v73, 0, sizeof(v73));
  memset(v82, 0, sizeof(v82));
  memset(v83, 0, 24);
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0;
  v77 = 0;
  v75 = 0u;
  v76 = 0u;
  v74 = 0u;
  memset(__buf, 0, sizeof(__buf));
  v85 = 0u;
  if (fstat(a1, &v73) == -1)
  {
    goto LABEL_62;
  }

  v4 = pread(a1, __buf, 0x40uLL, 0);
  if (v4 <= 0)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      v6 = *__error();
      if (!a2)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v6 = 1000;
      if (!a2)
      {
        goto LABEL_71;
      }
    }

    v5 = 0;
    goto LABEL_64;
  }

  if (v4 >= 4 && LOWORD(__buf[0]) == 53233)
  {
    if (BYTE2(__buf[0]) >= 5u)
    {
      if (a2)
      {
        v5 = 0;
        v6 = 1002;
LABEL_64:
        *a2 = v6;
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    *(&v82[1] + 1) = mmap(0, v73.st_size, 1, 2, a1, 0);
    if (*(&v82[1] + 1) != -1)
    {
      *(v82 + 8) = xmmword_22E0816F0;
      *&v82[0] = ".SUNW_ctf";
      *&v83[0] = v73.st_size;
      *(v83 + 8) = xmmword_22E081700;
      v5 = ctf_bufopen(v82, 0, 0, a2, v7, v8, v9, v10);
      if (!v5)
      {
        v11 = *(&v82[1] + 1);
        v12 = (getpagesize() - 1) & v11;
        v13 = (v11 - v12);
        v14 = v12 + *&v83[0];
        goto LABEL_18;
      }

      goto LABEL_72;
    }

LABEL_62:
    v65 = __error();
    if (a2)
    {
      v5 = 0;
      v6 = *v65;
      goto LABEL_64;
    }

    goto LABEL_71;
  }

  if (v4 < 0x34 || LODWORD(__buf[0]) != 1179403647)
  {
LABEL_13:
    if (a2)
    {
      v5 = 0;
      v6 = 1000;
      goto LABEL_64;
    }

LABEL_71:
    v5 = 0;
    goto LABEL_72;
  }

  if (BYTE5(__buf[0]) != 1)
  {
    if (a2)
    {
      v5 = 0;
      v6 = 1003;
      goto LABEL_64;
    }

    goto LABEL_71;
  }

  if (DWORD1(__buf[1]) != 1)
  {
    if (a2)
    {
      v5 = 0;
      v6 = 1001;
      goto LABEL_64;
    }

    goto LABEL_71;
  }

  if (BYTE4(__buf[0]) == 2)
  {
    if (v4 < 0x40)
    {
      goto LABEL_13;
    }

    v15 = HIWORD(v85);
    v16 = WORD6(v85);
  }

  else
  {
    v17 = LODWORD(__buf[2]);
    v18 = DWORD1(__buf[2]);
    v19 = *(&__buf[2] + 1);
    v16 = v85;
    v15 = WORD1(v85);
    DWORD1(__buf[1]) = 1;
    *&v20 = DWORD2(__buf[1]);
    *(&v20 + 1) = HIDWORD(__buf[1]);
    *(&__buf[1] + 8) = v20;
    *(&__buf[2] + 1) = v17;
    LODWORD(v85) = v18;
    *(&v85 + 4) = v19;
    WORD6(v85) = v16;
    HIWORD(v85) = v15;
  }

  if (v15 >= v16)
  {
    if (a2)
    {
      v5 = 0;
      v6 = 1007;
      goto LABEL_64;
    }

    goto LABEL_71;
  }

  v21 = malloc_type_malloc(v16 << 6, 0xE86E21CEuLL);
  if (!v21)
  {
    goto LABEL_62;
  }

  v22 = v21;
  v23 = v16;
  if (BYTE4(__buf[0]) == 1)
  {
    v24 = 40 * v16;
    v25 = malloc_type_malloc(40 * v23, 0x2F75771AuLL);
    if (v25)
    {
      v26 = v25;
      if (pread(a1, v25, 40 * v23, *(&__buf[2] + 1)) == v24)
      {
        v27 = v26 + 2;
        v28 = v22 + 24;
        v29 = v23;
        do
        {
          *(v28 - 3) = *(v27 - 2);
          v30 = *(v27 - 1);
          *&v31 = v30;
          *(&v31 + 1) = HIDWORD(v30);
          v32 = v31;
          *&v31 = *v27;
          *(&v31 + 1) = HIDWORD(*v27);
          *(v28 - 1) = v32;
          *v28 = v31;
          *(v28 + 2) = v27[1];
          *&v32 = v27[2];
          *&v31 = v32;
          *(&v31 + 1) = DWORD1(v32);
          *(v28 + 24) = v31;
          v27 += 5;
          v28 += 64;
          --v29;
        }

        while (v29);
        free(v26);
        goto LABEL_42;
      }
    }

LABEL_61:
    free(v22);
    goto LABEL_62;
  }

  if (pread(a1, v21, v16 << 6, *(&__buf[2] + 1)) != v16 << 6)
  {
    goto LABEL_61;
  }

LABEL_42:
  v33 = &v22[64 * HIWORD(v85)];
  v34 = *(v33 + 3);
  v35 = *(v33 + 4);
  v36 = getpagesize();
  v37 = v36 - 1;
  v38 = mmap(0, (v34 & v37) + v35, 1, 2, a1, v34 & -v36);
  if (v38 == -1)
  {
    free(v22);
    if (!a2)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  v70 = v34 & v37;
  v71 = v35;
  v39 = 0;
  v40 = &v22[64 * HIWORD(v85)];
  v41 = &v38[*(v40 + 3) & v37];
  v42 = WORD6(v85);
  v72 = 0;
  v69 = v38;
  v43 = v22;
  do
  {
    v44 = *(v43 + 10);
    if (v44 < v42)
    {
      v45 = *v43;
      v46 = *(v40 + 4);
      if (v46 > v45)
      {
        v47 = &v22[64 * v44];
        v48 = *v47;
        if (v46 > v48)
        {
          v49 = *(v43 + 1);
          if (v49 == 2)
          {
            *&v78 = &v41[v45];
            *(&v78 + 1) = 2;
            v56 = *(v43 + 3);
            v55 = *(v43 + 4);
            *&v79 = *(v43 + 1);
            *&v80 = v55;
            *(&v80 + 1) = *(v43 + 7);
            v81 = v56;
            v57 = &v41[v48];
            v39 = *(v47 + 1);
            v51 = &v76;
            v52 = &v75;
            v54 = &v77;
            v53 = &v76 + 8;
            v72 = 2;
            *&v74 = v57;
            *(&v74 + 1) = v39;
            goto LABEL_52;
          }

          if (v49 == 1)
          {
            v50 = &v41[v45];
            if (!strcmp(&v41[v45], ".SUNW_ctf"))
            {
              v47 = v43;
              *&v82[0] = v50;
              *(&v82[0] + 1) = 1;
              v51 = v83;
              v52 = &v82[1];
              v54 = &v83[1];
              v53 = v83 + 8;
LABEL_52:
              *v52 = *(v47 + 1);
              v58 = *(v47 + 3);
              *v51 = *(v47 + 4);
              *v53 = *(v47 + 7);
              *v54 = v58;
            }
          }
        }
      }
    }

    v43 += 64;
    --v23;
  }

  while (v23);
  free(v22);
  if (!*(&v82[0] + 1))
  {
    munmap(v69, v70 + v71);
    if (a2)
    {
      v5 = 0;
      v6 = 1008;
      goto LABEL_64;
    }

    goto LABEL_71;
  }

  if (ctf_sect_mmap(v82, a1) == -1)
  {
    munmap(v69, v70 + v71);
    if (!a2)
    {
      goto LABEL_71;
    }

LABEL_70:
    v5 = 0;
    v6 = 1013;
    goto LABEL_64;
  }

  if (v72 && v39)
  {
    if (ctf_sect_mmap(&v78, a1) != -1 && ctf_sect_mmap(&v74, a1) != -1)
    {
      v63 = &v78;
      v64 = &v74;
      goto LABEL_74;
    }

    if (a2)
    {
      *a2 = 1013;
    }

LABEL_78:
    ctf_sect_munmap(v82);
    ctf_sect_munmap(&v78);
    ctf_sect_munmap(&v74);
    v5 = 0;
  }

  else
  {
    v63 = 0;
    v64 = 0;
LABEL_74:
    v68 = ctf_bufopen(v82, v63, v64, a2, v59, v60, v61, v62);
    v5 = v68;
    if (!v68)
    {
      goto LABEL_78;
    }

    *(v68 + 556) |= 1u;
  }

  v14 = v70 + v71;
  v13 = v69;
LABEL_18:
  munmap(v13, v14);
LABEL_72:
  v66 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t ctf_open(const char *a1, int *a2)
{
  v3 = open(a1, 0);
  if (v3 == -1)
  {
    if (a2)
    {
      *a2 = *__error();
    }

    return 0;
  }

  else
  {
    v4 = v3;
    v5 = ctf_fdopen(v3, a2);
    close(v4);
    return v5;
  }
}

uint64_t ctf_write(uint64_t a1, int __fd)
{
  v2 = *(a1 + 472);
  v3 = v2 + 36;
  if (v2 == -36)
  {
    return 0;
  }

  v6 = *(a1 + 456);
  while (1)
  {
    v7 = write(__fd, v6, v3);
    if (v7 <= 0)
    {
      break;
    }

    v6 += v7;
    v3 -= v7;
    if (!v3)
    {
      return 0;
    }
  }

  *(a1 + 560) = *__error();
  return 0xFFFFFFFFLL;
}

uint64_t ctf_version(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1 & 0x80000000) != 0)
  {
    v9 = __error();
    v10 = 22;
  }

  else
  {
    v8 = a1;
    if (!a1)
    {
      return _libctf_version;
    }

    if (a1 < 5)
    {
      ctf_dprintf("ctf_version: client using version %d\n", a2, a3, a4, a5, a6, a7, a8, a1);
      _libctf_version = v8;
      return v8;
    }

    v9 = __error();
    v10 = 45;
  }

  *v9 = v10;
  return 0xFFFFFFFFLL;
}

uint64_t ctf_lookup_by_name(const char **a1, const char *a2)
{
  if (a2)
  {
    v4 = strlen(a2);
    if (*a2)
    {
      v5 = 0;
      v6 = &a2[v4];
      v7 = MEMORY[0x277D85DE0];
      v38 = a1 + 38;
      v8 = a2;
      while (1)
      {
        v9 = (v8 - 1);
        do
        {
          v10 = v8;
          v11 = v9;
          v12 = *v8;
          if ((v12 & 0x80000000) != 0)
          {
            v13 = __maskrune(v12, 0x4000uLL);
          }

          else
          {
            v13 = *(v7 + 4 * v12 + 60) & 0x4000;
          }

          ++v8;
          v9 = v11 + 1;
        }

        while (v13);
        if (v10 == v6)
        {
          v34 = *v10 != 0;
LABEL_52:
          if ((v34 & 1) == 0 && v5)
          {
            return v5;
          }

          break;
        }

        v14 = strpbrk(v10 + 1, ctf_lookup_by_name_delimiters);
        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = v6;
        }

        if (*v10 == 42)
        {
          v16 = a1[63];
          v17 = *&v16[4 * (*(*a1 + 5))(v5)];
          if (!v17)
          {
            if (ctf_type_resolve(a1, v5) == -1)
            {
              goto LABEL_48;
            }

            v18 = a1[63];
            v17 = *&v18[4 * (*(*a1 + 5))()];
            if (!v17)
            {
              goto LABEL_48;
            }
          }

          v5 = (*(*a1 + 6))(v17, (*(a1 + 139) >> 1) & 1);
        }

        else
        {
          v19 = v15 - v10;
          v20 = v15 - v10 + *(v15 - 1) - 105;
          if (v20 > 0x14 || (v21 = &(&isqualifier_qhash)[2 * v20], v21[1] != v19) || (v8 = v15, strncmp(*v21, v10, v15 - v10)))
          {
            v22 = *v38;
            if (!*v38)
            {
              goto LABEL_48;
            }

            v23 = a1 + 38;
            while (*v22)
            {
              if (!strncmp(v10, v22, v19))
              {
                v24 = v23[1];
                if (v19 >= v24)
                {
                  goto LABEL_29;
                }
              }

              v25 = v23[3];
              v23 += 3;
              v22 = v25;
              if (!v25)
              {
                goto LABEL_48;
              }
            }

            v24 = v23[1];
LABEL_29:
            v26 = &v11[v24];
            do
            {
              v27 = v26[1];
              if ((v27 & 0x80000000) != 0)
              {
                v28 = __maskrune(v27, 0x4000uLL);
              }

              else
              {
                v28 = *(v7 + 4 * v27 + 60) & 0x4000;
              }

              ++v26;
            }

            while (v28);
            v29 = strchr(v26, 42);
            v30 = v29 ? v29 : v6;
            v8 = v30 + 1;
            do
            {
              v31 = *(v8 - 2);
              if ((v31 & 0x80000000) != 0)
              {
                v32 = __maskrune(v31, 0x4000uLL);
              }

              else
              {
                v32 = *(v7 + 4 * v31 + 60) & 0x4000;
              }

              --v8;
            }

            while (v32);
            v33 = ctf_hash_lookup(v23[2], a1, v26, v8 - v26);
            if (!v33 || !*v23)
            {
LABEL_48:
              *(a1 + 140) = 1028;
              v36 = a1[66];
              if (v36)
              {
                v5 = ctf_lookup_by_name(v36, a2);
                if (v5 != -1)
                {
                  return v5;
                }
              }

              return -1;
            }

            v5 = v33[1];
          }
        }

        v34 = *v8;
        if (!*v8)
        {
          goto LABEL_52;
        }
      }
    }

    v35 = 1029;
  }

  else
  {
    v35 = 22;
  }

  *(a1 + 140) = v35;
  return -1;
}

uint64_t ctf_lookup_by_symbol(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 88);
  if (!v2)
  {
    v5 = 1010;
    goto LABEL_28;
  }

  if (*(a1 + 488) <= a2)
  {
    v5 = 22;
    goto LABEL_28;
  }

  v3 = *(a1 + 104);
  if (v3 == 20)
  {
    v9 = *(v2 + 20 * a2 + 12);
    goto LABEL_19;
  }

  if (v3 != 16)
  {
    if (v3 == 12)
    {
      v4 = v2 + 12 * a2;
      goto LABEL_10;
    }

    v9 = *(v2 + 40 * a2 + 8);
LABEL_19:
    v8 = v9 & 0xF;
    goto LABEL_20;
  }

  v4 = v2 + 16 * a2;
LABEL_10:
  v6 = *(v4 + 4) & 0xF;
  if (v6 == 1)
  {
    if (*(v4 + 5))
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (v6 == 15 || v6 == 3)
  {
LABEL_16:
    v8 = *(v4 + 6);
LABEL_20:
    if (v8 == 1)
    {
      goto LABEL_21;
    }

    v5 = 1032;
LABEL_28:
    *(a1 + 560) = v5;
    return -1;
  }

LABEL_21:
  v10 = *(*(a1 + 480) + 4 * a2);
  if (v10 == -1)
  {
    goto LABEL_27;
  }

  v11 = *(a1 + 464);
  if (*(a1 + 564) > 3)
  {
    v12 = *(v11 + v10);
    if (v12)
    {
      return v12;
    }

LABEL_27:
    v5 = 1033;
    goto LABEL_28;
  }

  v12 = *(v11 + v10);
  if (!v12)
  {
    goto LABEL_27;
  }

  return v12;
}