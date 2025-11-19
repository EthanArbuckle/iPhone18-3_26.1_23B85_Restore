uint64_t mmcs_http_request_copy(void *a1, void *a2)
{
  if (!a1)
  {
    mmcs_http_request_copy_cold_2();
  }

  if (!a2)
  {
    mmcs_http_request_copy_cold_1();
  }

  *a1 = 0;
  v4 = C3TypeRegister(&mmcs_http_requestGetTypeID_typeID);
  result = C3TypeCreateInstance_(0, v4, 0x30uLL);
  if (result)
  {
    v6 = result;
    v7 = a2[2];
    v6[2] = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    v8 = a2[3];
    v6[3] = v8;
    if (v8)
    {
      C3BaseRetain(v8);
    }

    v9 = a2[4];
    v6[4] = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    v6[5] = a2[5];
    v6[6] = a2[6];
    *a1 = v6;
    return 1;
  }

  return result;
}

CFStringRef mmcs_http_request_copy_description(uint64_t a1)
{
  v1 = CFHTTPMessageCopyRequestURL(*(a1 + 16));
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFURLGetString(v1);
  if (v3)
  {
    v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@", v3);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v2);
  return v4;
}

void mmcs_http_request_override_url_expiry(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = CFAbsoluteTimeGetCurrent() + a2;
  String = XCFAbsoluteTimeDateFormatterCreateString(v3);
  v5 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"overriding url expiry for http request %p with %@", a1, String);
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

  if (String)
  {
    CFRelease(String);
  }

  *(a1 + 40) = v3;
  v8 = *MEMORY[0x277D85DE8];
}

void mmcs_http_request_make_request_requirements(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  v4 = CFHTTPMessageCopyHeaderFieldValue(v3, @"com.apple.mmcs.datacenter.name");
  if (v4)
  {
    v5 = v4;
    v6 = mmcs_report_copy_vendor_configuration_with_name(v4);
    if (v6)
    {
      v7 = v6;
      Value = CFDictionaryGetValue(v6, @"throughput.min");
      if (Value)
      {
        v9 = Value;
        TypeID = CFDictionaryGetTypeID();
        if (TypeID == CFGetTypeID(v9))
        {
          v11 = CFDictionaryGetValue(v9, @"in.seconds");
          if (v11)
          {
            v12 = CFNumberGetTypeID();
            if (v12 != CFGetTypeID(v11))
            {
              v11 = 0;
            }
          }

          v13 = CFDictionaryGetValue(v9, @"num.bytes");
          if (v13)
          {
            v14 = v13;
            v15 = CFNumberGetTypeID();
            v16 = CFGetTypeID(v14);
            if (v15 != v16)
            {
              v14 = 0;
            }

            if (v11)
            {
              if (v15 == v16)
              {
                valuePtr = 0;
                if (CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr + 4))
                {
                  if (CFNumberGetValue(v14, kCFNumberSInt32Type, &valuePtr))
                  {
                    v17 = valuePtr;
                    *a2 = SHIDWORD(valuePtr);
                    *(a2 + 8) = v17;
                  }
                }
              }
            }
          }
        }
      }

      CFRelease(v7);
    }

    CFRelease(v5);
  }
}

void mmcs_http_request_set_options(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 24);
  if (v3 != cf)
  {
    if (cf)
    {
      CFRetain(cf);
      v3 = *(a1 + 24);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 24) = cf;
  }
}

void mmcs_http_request_set_msg(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 16);
  if (v3 != cf)
  {
    if (cf)
    {
      CFRetain(cf);
      v3 = *(a1 + 16);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 16) = cf;
  }
}

void _mmcs_http_requestCFFinalize(void *a1)
{
  a1[5] = 0;
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  a1[4] = 0;
  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  a1[2] = 0;
  v4 = a1[3];
  if (v4)
  {
    C3BaseRelease(v4);
  }

  a1[3] = 0;
}

BOOL _validate_string(char *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v10 = mmcs_logging_logger_default();
    result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_23;
    }

    v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"NULL %s", a2);
    v12 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 138543362;
    v16 = v11;
    goto LABEL_19;
  }

  v4 = strlen(a1);
  if (v4)
  {
    if (gMMCS_DebugLevel >= 5)
    {
      v5 = hextostrdup(a1, v4);
      if (gMMCS_DebugLevel >= 5)
      {
        v6 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s is %s 0x%s", a2, a1, v5);
          v8 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v16 = v7;
            _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v7)
          {
            CFRelease(v7);
          }
        }
      }

      if (v5)
      {
        free(v5);
      }
    }

    result = 1;
    goto LABEL_23;
  }

  v13 = mmcs_logging_logger_default();
  result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  if (!result)
  {
    goto LABEL_23;
  }

  v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s is empty string", a2);
  v12 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v16 = v11;
LABEL_19:
    _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

LABEL_20:
  if (v11)
  {
    CFRelease(v11);
  }

  result = 0;
LABEL_23:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mmcs_zcmp(int8x16_t *a1, unint64_t a2)
{
  if (a2 >= 0x40)
  {
    v2 = 0;
    v3 = a1 + 2;
    while (1)
    {
      v4 = vorrq_s8(vorrq_s8(v3[-1], v3[-2]), vorrq_s8(*v3, v3[1]));
      v4.i8[0] = vmaxvq_u8(v4);
      if (v4.i32[0])
      {
        return 0;
      }

      v5 = v2 + 64;
      v3 += 4;
      v6 = v2 + 127;
      v2 += 64;
      if (v6 >= a2)
      {
        goto LABEL_7;
      }
    }
  }

  v5 = 0;
LABEL_7:
  if ((v5 | 0x1F) < a2)
  {
    v7 = vorrq_s8(*(&a1[1] + v5), *(a1 + v5));
    v7.i8[0] = vmaxvq_u8(v7);
    if (v7.i32[0])
    {
      return 0;
    }

    v5 |= 0x20uLL;
  }

  if (v5 + 15 >= a2)
  {
    goto LABEL_13;
  }

  v8 = *(a1 + v5);
  v8.i8[0] = vmaxvq_u8(v8);
  if (v8.i32[0])
  {
    return 0;
  }

  v5 += 16;
LABEL_13:
  if (v5 + 7 < a2)
  {
    v9 = *&a1->i8[v5];
    v9.i8[0] = vmaxv_u8(v9);
    if (v9.i32[0])
    {
      return 0;
    }

    v5 += 8;
  }

  if (v5 >= a2)
  {
    return 1;
  }

  v11 = ~v5 + a2;
  v12 = &a1->u8[v5];
  do
  {
    v14 = *v12++;
    v13 = v14;
    result = v14 == 0;
    v15 = v11-- != 0;
  }

  while (v15 && !v13);
  return result;
}

uint64_t mmcs_request_queue_set_test_max_requests_inflight(uint64_t a1, uint64_t a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  *(a1 + 1480) = a2;
  return 1;
}

uint64_t mmcs_request_queue_set_test_max_consecutive_network_errors(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  *(a1 + 1296) = a2;
  return 1;
}

uint64_t mmcs_request_queue_set_test_requests_inflight(uint64_t a1, uint64_t a2, int a3)
{
  if (a2 < 1)
  {
    return 0;
  }

  v3 = a2;
  v4 = 0;
  v5 = a3 == 0;
  v6 = a1 + 144;
  v7 = a1 + 1484;
  do
  {
    v8 = mmcs_request_type_for_behavior_and_activity(v4, v5);
    *(v6 + 4 * v8) = v3;
    *(v7 + 4 * v8) = v3;
    ++v4;
  }

  while (v4 != 5);
  return 1;
}

uint64_t mmcs_request_queue_set_server_upper_bound_requests_inflight(uint64_t a1, uint64_t a2, int a3)
{
  if ((a2 - 1) > 0x13)
  {
    return 0;
  }

  v3 = a2;
  v4 = 0;
  v5 = a3 == 0;
  v6 = a1 + 1484;
  do
  {
    *(v6 + 4 * mmcs_request_type_for_behavior_and_activity(v4++, v5)) = v3;
  }

  while (v4 != 5);
  return 1;
}

uint64_t mmcs_request_queue_enqueue_request(uint64_t a1, uint64_t a2, double a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (CFDictionaryContainsKey(*(a1 + 96), *(a2 + 8)))
  {
    v6 = mmcs_logging_logger_default();
    result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"duplicate request object %p", *(a2 + 8));
      v9 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v8;
        _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v8)
      {
        CFRelease(v8);
      }

      result = 0;
    }
  }

  else
  {
    v10 = *(a2 + 16);
    if (gMMCS_DebugLevel >= 4)
    {
      v11 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = *MEMORY[0x277CBECE8];
        v13 = *(a2 + 8);
        v14 = mmcs_request_queue_requests_enqueued_count_for_behavior_type(a1, v10);
        v15 = CFStringCreateWithFormat(v12, 0, @"Enqueued request object %p. Queue depth %ld", v13, v14 + 1);
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
        v17 = *MEMORY[0x277CBECE8];
        Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
        mmcs_request_queue_context_append_description(a2, Mutable);
        if (Mutable)
        {
          if (gMMCS_DebugLevel >= 5)
          {
            v19 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v20 = CFStringCreateWithFormat(v17, 0, @"%@", Mutable);
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

          CFRelease(Mutable);
        }
      }
    }

    *buf = 0;
    result = mmcs_request_queue_entry_create(buf, a2);
    if (result)
    {
      mmcs_request_queue_entry_ensure_minimum_bytes_per_period_requirement(*buf, *(a1 + 1528), *(a1 + 1536));
      v22 = *buf;
      *(*buf + 24) = 1;
      CFBinaryHeapAddValue(*(a1 + 8 * v10 + 16), v22);
      CFDictionarySetValue(*(a1 + 96), *(a2 + 8), *buf);
      if (*buf)
      {
        C3BaseRelease(*buf);
      }

      mmcs_request_queue_schedule(a1, a3);
      result = 1;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mmcs_request_queue_requests_enqueued_count_for_behavior_type(uint64_t a1, uint64_t a2)
{
  behavior_type = mmcs_request_type_get_behavior_type(a2);
  v4 = 0;
  v5 = 0;
  v6 = a1 + 16;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = mmcs_request_type_for_behavior_and_activity(behavior_type, v4);
    Count = CFBinaryHeapGetCount(*(v6 + 8 * v9));
    v7 = 0;
    v5 += Count;
    v4 = 1;
  }

  while ((v8 & 1) != 0);
  return v5;
}

void mmcs_request_queue_schedule(uint64_t a1, double a2)
{
  v98 = *MEMORY[0x277D85DE8];
  v4 = a2 - *(a1 + 208);
  v5 = MEMORY[0x277CBECE8];
  if (v4 >= 0.05)
  {
    mmcs_request_queue_estimate_bandwidth_context_init((a1 + 200), a2);
    v9 = *(a1 + 184);
    if (v9)
    {
      v99.length = CFArrayGetCount(*(a1 + 184));
      v99.location = 0;
      CFArrayApplyFunction(v9, v99, mmcs_network_activity_estimate_bandwidth_network_activity_applier, (a1 + 200));
    }

    *&context = a1 + 200;
    *(&context + 1) = a2;
    CFDictionaryApplyFunction(*(a1 + 96), mmcs_request_queue_estimate_bandwidth_applier, &context);
    if (a2 - *(a1 + 192) >= 1.0)
    {
      v10 = 0;
      *(a1 + 192) = a2;
      alloc = *MEMORY[0x277CBECE8];
      v11 = 1;
      do
      {
        v12 = v11;
        v13 = (a1 + 216 + 40 * v10);
        if (*v13)
        {
          v90 = 0.0;
          v91 = 0;
          mmcs_request_queue_estimate_bandwidth_measurement_calculate_bps(v13, &v90, &v91);
          v14 = v90;
          v15 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = mmcs_network_activity_type_as_c_string(v10);
            *buf = 136315650;
            *&buf[4] = v16;
            *&buf[12] = 2048;
            *&buf[14] = v91;
            *&buf[22] = 2048;
            *&buf[24] = v14 * 8.0 / 1000.0 / 1000.0;
            _os_log_impl(&dword_2577D8000, v15, OS_LOG_TYPE_DEFAULT, "average bandwidth for %s estimated over %.0f secs, %.03f Mbps.", buf, 0x20u);
          }
        }

        else if (gMMCS_DebugLevel >= 5)
        {
          v17 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v18 = mmcs_network_activity_type_as_c_string(v10);
            v19 = CFStringCreateWithFormat(alloc, 0, @"average bandwidth for %s cannot be estimated", v18);
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
        }

        v11 = 0;
        v10 = 1;
      }

      while ((v12 & 1) != 0);
    }

    v5 = MEMORY[0x277CBECE8];
  }

  else if (gMMCS_DebugLevel >= 5)
  {
    v6 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = CFStringCreateWithFormat(*v5, 0, @"Perform bandwidth estimation at most every %.0f ms, it has only been %.3f ms", 0x4049000000000000, v4 * 1000.0);
      v8 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v7;
        _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }
  }

  v21 = 0;
  v22 = 0;
  v89 = *v5;
  v23 = a1 + 16;
  do
  {
    if (v21)
    {
      if (gMMCS_DebugLevel >= 5)
      {
        v24 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v25 = CFStringCreateWithFormat(v89, 0, @"Deferring start of background requests in favor of queued foreground requests");
          v26 = mmcs_logging_logger_default();
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

        v27 = mmcs_request_queue_copy_description(a1);
        if (gMMCS_DebugLevel >= 5)
        {
          v28 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            v29 = CFStringCreateWithFormat(v89, 0, @"%@", v27);
            v30 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              *&buf[4] = v29;
              _os_log_impl(&dword_2577D8000, v30, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
            }

            if (v29)
            {
              CFRelease(v29);
            }
          }
        }

        if (v27)
        {
          CFRelease(v27);
        }
      }

      v21 = 1;
      goto LABEL_110;
    }

    if (v22 < 3)
    {
      v31 = 0;
      v32 = 1;
      while (1)
      {
        v86 = v32;
        v33 = mmcs_request_type_for_behavior_and_activity(v22, v31);
        v34 = (a1 + 296 + 96 * v33);
        v35 = a1 + 216 + 40 * v31;
        alloca = (40 * v31 + 248);
        while (_is_request_done(a1, v33))
        {
          v36 = v34[3];
          v94 = v34[2];
          v95 = v36;
          v37 = v34[5];
          v96 = v34[4];
          v97 = v37;
          v38 = v34[1];
          *buf = *v34;
          *&buf[16] = v38;
          Minimum = CFBinaryHeapGetMinimum(*(v23 + 8 * v33));
          C3BaseRetain(Minimum);
          mmcs_request_requirements_add_requirement(buf, Minimum[4] + 32, v40, v41);
          if (*v35)
          {
            v43 = *(v35 + 16);
            v42 = *(v35 + 24);
            if (v42 <= v43)
            {
              v44 = 1.0;
            }

            else
            {
              v44 = v42 - v43;
            }

            v45 = (*(v35 + 8) / v44);
            v46 = 8 * *&buf[8];
            if (v46 <= v45)
            {
              behavior_type = mmcs_request_type_get_behavior_type(v33);
              if (behavior_type < 0)
              {
LABEL_63:
                if (gMMCS_DebugLevel < 5)
                {
                  goto LABEL_90;
                }

                v57 = mmcs_logging_logger_default();
                if (!os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_90;
                }

                v58 = mmcs_request_type_as_c_string(v33);
                v59 = CFStringCreateWithFormat(v89, 0, @"Planning to schedule %s. Bps needed %ld avail %ld", v58, v46, v45);
                v60 = mmcs_logging_logger_default();
                if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_88;
                }

                goto LABEL_87;
              }

              v55 = behavior_type + 1;
              v56 = alloca;
              while (!*(v56 + a1))
              {
                v56 = (v56 + 1);
                if (!--v55)
                {
                  goto LABEL_63;
                }
              }

              if (!mmcs_request_queue_total_requests_inflight_for_behavior_type(a1, v33))
              {
                mmcs_request_queue_schedule_cold_1();
              }

              if (gMMCS_DebugLevel >= 5)
              {
                v65 = mmcs_logging_logger_default();
                if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
                {
                  v66 = mmcs_request_type_as_c_string(v33);
                  v49 = CFStringCreateWithFormat(v89, 0, @"Not planning to schedule %s. Outstanding tasks below required throughput.", v66);
                  v50 = mmcs_logging_logger_default();
                  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_79;
                  }

                  goto LABEL_80;
                }
              }
            }

            else
            {
              if (!mmcs_request_queue_total_requests_inflight_for_behavior_type(a1, v33))
              {
                if (gMMCS_DebugLevel < 5)
                {
                  goto LABEL_90;
                }

                v63 = mmcs_logging_logger_default();
                if (!os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_90;
                }

                v64 = mmcs_request_type_as_c_string(v33);
                v59 = CFStringCreateWithFormat(v89, 0, @"Planning to schedule %s. Not enough bandwidth available but no other request is in-flight", v64);
                v60 = mmcs_logging_logger_default();
                if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_88;
                }

                goto LABEL_87;
              }

              if (gMMCS_DebugLevel >= 5)
              {
                v47 = mmcs_logging_logger_default();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                {
                  v48 = mmcs_request_type_as_c_string(v33);
                  v49 = CFStringCreateWithFormat(v89, 0, @"Not planning to schedule %s. Bps needed %ld avail %ld", v48, v46, v45);
                  v50 = mmcs_logging_logger_default();
                  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_79;
                  }

                  goto LABEL_80;
                }
              }
            }
          }

          else
          {
            if (!mmcs_request_queue_total_requests_inflight_for_behavior_type(a1, v33))
            {
              if (gMMCS_DebugLevel < 5)
              {
                goto LABEL_90;
              }

              v61 = mmcs_logging_logger_default();
              if (!os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_90;
              }

              v62 = mmcs_request_type_as_c_string(v33);
              v59 = CFStringCreateWithFormat(v89, 0, @"Planning to schedule %s. No bandwidth measurement available but no other request is in-flight", v62);
              v60 = mmcs_logging_logger_default();
              if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_88;
              }

LABEL_87:
              LODWORD(context) = 138543362;
              *(&context + 4) = v59;
              _os_log_impl(&dword_2577D8000, v60, OS_LOG_TYPE_DEBUG, "%{public}@", &context, 0xCu);
              goto LABEL_88;
            }

            if (gMMCS_DebugLevel >= 5)
            {
              v51 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
              {
                v52 = mmcs_request_type_as_c_string(v33);
                v53 = mmcs_request_queue_total_requests_inflight_for_behavior_type(a1, v33);
                v49 = CFStringCreateWithFormat(v89, 0, @"Not planning to schedule %s. No bandwidth measurement available and %d requests are in-flight", v52, v53);
                v50 = mmcs_logging_logger_default();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                {
LABEL_79:
                  LODWORD(context) = 138543362;
                  *(&context + 4) = v49;
                  _os_log_impl(&dword_2577D8000, v50, OS_LOG_TYPE_DEBUG, "%{public}@", &context, 0xCu);
                }

LABEL_80:
                if (v49)
                {
                  CFRelease(v49);
                }
              }
            }
          }

          if (*(a1 + 1304) && mmcs_request_queue_entry_is_small_request(Minimum))
          {
            if (gMMCS_DebugLevel >= 5)
            {
              v67 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
              {
                v68 = mmcs_request_type_as_c_string(v33);
                v59 = CFStringCreateWithFormat(v89, 0, @"Planning to schedule %s. This is a small request.", v68);
                v60 = mmcs_logging_logger_default();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_87;
                }

LABEL_88:
                if (v59)
                {
                  CFRelease(v59);
                }
              }
            }

LABEL_90:
            LOBYTE(context) = 0;
            _do_schedule(a1, Minimum, v33, &context);
            v69 = context == 0;
            if (context)
            {
              v70 = *&buf[16];
              *v34 = *buf;
              v34[1] = v70;
              v71 = v97;
              v34[4] = v96;
              v34[5] = v71;
              v72 = v95;
              v34[2] = v94;
              v34[3] = v72;
              v73 = Minimum[4];
              if (*(v73 + 32) > 0.0 && *(v73 + 8 * *(v73 + 16) + 48) > 0x10000uLL)
              {
                *(v35 + 32 + v22) = 1;
              }
            }

            goto LABEL_95;
          }

          v69 = 0;
LABEL_95:
          if (Minimum)
          {
            C3BaseRelease(Minimum);
          }

          if (!v69)
          {
            break;
          }
        }

        v32 = 0;
        v31 = 1;
        if ((v86 & 1) == 0)
        {
          goto LABEL_107;
        }
      }
    }

    v74 = 0;
    v75 = 1;
    do
    {
      v76 = v75;
      v77 = mmcs_request_type_for_behavior_and_activity(v22, v74);
      buf[0] = 0;
      do
      {
        if (!_is_request_done(a1, v77))
        {
          break;
        }

        v78 = CFBinaryHeapGetMinimum(*(v23 + 8 * v77));
        C3BaseRetain(v78);
        _do_schedule(a1, v78, v77, buf);
        if (v78)
        {
          C3BaseRelease(v78);
        }
      }

      while (!buf[0]);
      v75 = 0;
      v74 = 1;
    }

    while ((v76 & 1) != 0);
LABEL_107:
    v79 = 0;
    v80 = 0;
    v81 = 1;
    do
    {
      v82 = v81;
      v83 = mmcs_request_type_for_behavior_and_activity(v22, v79);
      Count = CFBinaryHeapGetCount(*(v23 + 8 * v83));
      v81 = 0;
      v80 += Count;
      v79 = 1;
    }

    while ((v82 & 1) != 0);
    v21 = v80 != 0;
LABEL_110:
    ++v22;
  }

  while (v22 != 5);
  v85 = *MEMORY[0x277D85DE8];
}

uint64_t mmcs_request_queue_cancel_request(uint64_t a1, const void *a2, uint64_t a3, double a4)
{
  v29 = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(*(a1 + 96), a2);
  if (!Value)
  {
    goto LABEL_5;
  }

  v8 = Value;
  if (Value[24])
  {
    if (Value[26] || Value[27])
    {
LABEL_5:
      v9 = 0;
      goto LABEL_20;
    }

    Value[26] = 1;
    C3BaseRetain(Value);
    if (gMMCS_DebugLevel >= 4)
    {
      v24 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v25 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Cancelling request for object %p", *(*(v8 + 4) + 8));
        v26 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v28 = v25;
          _os_log_impl(&dword_2577D8000, v26, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v25)
        {
          CFRelease(v25);
        }
      }
    }

    if (v8[24])
    {
      CFDictionaryRemoveValue(*(a1 + 96), *(*(v8 + 4) + 8));
    }

    C3BaseRelease(v8);
    v9 = 1;
  }

  else
  {
    v9 = mmcs_request_queue_callback_cancel_request_with_entry(Value, a3);
    v10 = *(*(v8 + 4) + 16);
    if (gMMCS_DebugLevel >= 4)
    {
      v11 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = *MEMORY[0x277CBECE8];
        v13 = *(*(v8 + 4) + 8);
        v14 = mmcs_request_queue_total_requests_inflight_for_behavior_type(a1, v10) - 1;
        v15 = mmcs_request_queue_requests_enqueued_count_for_behavior_type(a1, v10);
        v16 = CFStringCreateWithFormat(v12, 0, @"Request for object %p cancelled. %d requests now in-flight, %ld total requests enqueued", v13, v14, v15);
        v17 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v28 = v16;
          _os_log_impl(&dword_2577D8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v16)
        {
          CFRelease(v16);
        }
      }
    }

    CFDictionaryRemoveValue(*(a1 + 96), *(*(v8 + 4) + 8));
    v18 = *(a1 + 104 + 4 * v10);
    if (v18)
    {
      *(a1 + 104 + 4 * v10) = v18 - 1;
    }

    else
    {
      v19 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"requestsInflightCount underflow");
        v21 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v28 = v20;
          _os_log_impl(&dword_2577D8000, v21, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v20)
        {
          CFRelease(v20);
        }
      }
    }

    mmcs_request_queue_schedule(a1, a4);
  }

LABEL_20:
  v22 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t mmcs_request_queue_callback_cancel_request_with_entry(uint64_t cf, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (cf)
  {
    v2 = cf;
    if (*(cf + 25) || *(cf + 26) || *(cf + 27))
    {
      cf = 0;
    }

    else
    {
      *(cf + 25) = 1;
      C3BaseRetain(cf);
      if (gMMCS_DebugLevel >= 4)
      {
        v5 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Callback cancelling request for object %p", *(v2[4] + 8));
          v7 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v9 = v6;
            _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v6)
          {
            CFRelease(v6);
          }
        }
      }

      (*(v2[4] + 136))(*(v2[4] + 8), a2);
      C3BaseRelease(v2);
      cf = 1;
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return cf;
}

uint64_t mmcs_request_queue_total_requests_inflight_for_behavior_type(uint64_t a1, uint64_t a2)
{
  behavior_type = mmcs_request_type_get_behavior_type(a2);
  if (behavior_type < 0)
  {
    return 0;
  }

  v4 = behavior_type;
  v5 = 0;
  LODWORD(v6) = 0;
  v7 = a1 + 104;
  do
  {
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = v9;
      v11 = mmcs_request_type_for_behavior_and_activity(v5, v8);
      v9 = 0;
      v6 = (*(v7 + 4 * v11) + v6);
      v8 = 1;
    }

    while ((v10 & 1) != 0);
  }

  while (v5++ != v4);
  return v6;
}

uint64_t mmcs_request_queue_request_did_transmit(uint64_t a1, const void *a2, uint64_t a3, double a4)
{
  v23 = *MEMORY[0x277D85DE8];
  result = CFDictionaryGetValue(*(a1 + 96), a2);
  if (result)
  {
    v9 = result;
    if (gMMCS_DebugLevel >= 5)
    {
      v10 = mmcs_network_activity_copy_description(a3);
      if (v10)
      {
        v11 = v10;
        if (gMMCS_DebugLevel >= 5)
        {
          v12 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"object (%p) did %@", a2, v11);
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
        }

        CFRelease(v11);
      }
    }

    mmcs_request_queue_entry_did_transmit(v9, a3, a4 + -10.0);
    v15 = *(a1 + 184);
    if (v15)
    {
      Count = CFArrayGetCount(*(a1 + 184));
      if (Count >= 1)
      {
        v17 = Count + 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v15, v17 - 2);
          if (*(ValueAtIndex + 1) < a4 + -10.0)
          {
            v19 = ValueAtIndex;
            CFArrayRemoveValueAtIndex(v15, v17 - 2);
            free(v19);
          }

          --v17;
        }

        while (v17 > 1);
      }
    }

    mmcs_request_queue_schedule(a1, a4);
    result = 1;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mmcs_request_queue_request_did_complete(uint64_t a1, const void *a2, CFErrorRef err, int a4, BOOL *a5, double a6)
{
  v71 = *MEMORY[0x277D85DE8];
  if (!err)
  {
    goto LABEL_37;
  }

  Domain = CFErrorGetDomain(err);
  Code = CFErrorGetCode(err);
  if (!CFEqual(@"com.apple.mmcs", Domain))
  {
    if (CFEqual(*MEMORY[0x277CBEE40], Domain))
    {
      v17 = Code == -9810;
LABEL_27:
      v22 = v17;
      goto LABEL_38;
    }

    if (CFEqual(*MEMORY[0x277CBACE8], Domain))
    {
      if (a4)
      {
        v17 = 0;
      }

      else
      {
        v17 = Code == -1005;
      }

      goto LABEL_27;
    }

    if (CFEqual(*MEMORY[0x277CBEE48], Domain))
    {
      if (a4)
      {
        v23 = Code == 54;
      }

      else
      {
        v23 = 0;
      }

      v22 = !v23;
      goto LABEL_38;
    }

LABEL_37:
    v22 = 0;
    goto LABEL_38;
  }

  v14 = CFErrorCopyUserInfo(err);
  v15 = v14;
  if (v14)
  {
    Value = CFDictionaryGetValue(v14, *MEMORY[0x277CBEE78]);
  }

  else
  {
    Value = 0;
  }

  if (Code == 38)
  {
    if (!Value || (v20 = CFErrorGetDomain(Value), !CFEqual(@"NSURLErrorDomain", v20)) || (v21 = CFErrorGetCode(Value), !a4) || v21 != -1005)
    {
LABEL_21:
      v22 = 1;
      if (!v15)
      {
        goto LABEL_38;
      }

      goto LABEL_22;
    }
  }

  else if (Code == 3)
  {
    if (!Value)
    {
      goto LABEL_21;
    }

    v18 = CFErrorGetDomain(Value);
    if (!CFEqual(@"NSURLErrorDomain", v18))
    {
      goto LABEL_21;
    }

    v19 = CFErrorGetCode(Value);
    if (!a4 || v19 != -1001)
    {
      goto LABEL_21;
    }
  }

  v22 = 0;
  if (v15)
  {
LABEL_22:
    CFRelease(v15);
  }

LABEL_38:
  v24 = CFDictionaryGetValue(*(a1 + 96), a2);
  if (!v24)
  {
    v31 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    v27 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unknown request for object %p completed", a2);
    v32 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    LODWORD(buf) = 138543362;
    *(&buf + 4) = v27;
    v29 = v32;
    v30 = OS_LOG_TYPE_ERROR;
    goto LABEL_47;
  }

  v25 = v24;
  if (!*(v24 + 27))
  {
    v37 = *(v24 + 5);
    if (v37)
    {
      Count = CFArrayGetCount(v37);
      if (Count >= 1)
      {
        v39 = Count;
        Mutable = *(a1 + 184);
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
          *(a1 + 184) = Mutable;
        }

        v72.location = 0;
        v72.length = v39;
        CFArrayAppendArray(Mutable, *(v25 + 40), v72);
        CFArrayRemoveAllValues(*(v25 + 40));
      }
    }

    v41 = *(*(v25 + 32) + 16);
    if (gMMCS_DebugLevel >= 4)
    {
      v42 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        v43 = *MEMORY[0x277CBECE8];
        if (v22)
        {
          v44 = " with network error";
        }

        else
        {
          v44 = "";
        }

        v45 = mmcs_request_queue_total_requests_inflight_for_behavior_type(a1, v41) - 1;
        v46 = mmcs_request_queue_requests_enqueued_count_for_behavior_type(a1, v41);
        v47 = CFStringCreateWithFormat(v43, 0, @"Request for object %p completed%s. %d requests now in-flight, %ld total requests enqueued", a2, v44, v45, v46);
        v48 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v47;
          _os_log_impl(&dword_2577D8000, v48, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
        }

        if (v47)
        {
          CFRelease(v47);
        }
      }
    }

    C3BaseRetain(v25);
    CFDictionaryRemoveValue(*(a1 + 96), a2);
    v49 = a1 + 104;
    v50 = *(a1 + 104 + 4 * v41);
    if (v50)
    {
      v51 = v50 - 1;
      *(v49 + 4 * v41) = v51;
      if (v51)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v64 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        v65 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"requestsInflightCount underflow");
        v66 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v65;
          _os_log_impl(&dword_2577D8000, v66, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
        }

        if (v65)
        {
          CFRelease(v65);
        }
      }

      if (*(v49 + 4 * v41))
      {
LABEL_69:
        if (v22)
        {
          goto LABEL_70;
        }

        goto LABEL_98;
      }
    }

    activity_type = mmcs_request_type_get_activity_type(v41);
    *(a1 + 40 * activity_type + mmcs_request_type_get_behavior_type(v41) + 248) = 0;
    if (v22)
    {
LABEL_70:
      v34 = 0;
      *(a1 + 1304) = 0;
      if (!*(a1 + 1524))
      {
        v52 = *(a1 + 1300);
        if (v52 != -1)
        {
          *(a1 + 1300) = ++v52;
        }

        if (v52 <= *(a1 + 1296))
        {
          v34 = 1;
        }

        else
        {
          v53 = *(a1 + 1472);
          if (v53 >= 16.0)
          {
            v54 = v53 + v53;
          }

          else
          {
            v54 = 16.0;
          }

          if (v54 > 2048.0)
          {
            v54 = 2048.0;
          }

          *(a1 + 1472) = v54;
          v55 = mmcs_logging_logger_default();
          v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
          v57 = *MEMORY[0x277CBECE8];
          if (v56)
          {
            v58 = CFStringCreateWithFormat(v57, 0, @"There were %d failures in a row. Cancelling all requests and requesting retry in %d seconds", *(a1 + 1300), *(a1 + 1472));
            v59 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v58;
              _os_log_impl(&dword_2577D8000, v59, OS_LOG_TYPE_DEFAULT, "%{public}@", &buf, 0xCu);
            }

            if (v58)
            {
              CFRelease(v58);
            }
          }

          v60 = CFStringCreateWithFormat(v57, 0, @"%d", *(a1 + 1472));
          *&buf = @"Retry-After";
          *(&buf + 1) = @"kMMCSErrorRetryClientInitiatedKey";
          v61 = *MEMORY[0x277CBED28];
          values[0] = v60;
          values[1] = v61;
          v62 = CFDictionaryCreate(v57, &buf, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          v63 = mmcs_cferror_create_with_swiss_army_knife(@"com.apple.mmcs", 16, 0, v62, 0, 0, 0, @"Last %u requests failed with a network error. Retry after %@ seconds", *(a1 + 1300), v60);
          if (v62)
          {
            CFRelease(v62);
          }

          mmcs_request_queue_callback_cancel_request_with_entry(v25, v63);
          *(v25 + 27) = 1;
          mmcs_request_queue_request_cancel_all_queued_and_inflight_requests(a1, v63);
          if (v63)
          {
            CFRelease(v63);
          }

          if (v60)
          {
            CFRelease(v60);
          }

          v34 = 0;
        }
      }

      goto LABEL_101;
    }

LABEL_98:
    v68 = *(a1 + 1304);
    if (v68 != -1)
    {
      *(a1 + 1304) = v68 + 1;
    }

    *(a1 + 1300) = 0;
    *(a1 + 1472) = 0;
    v34 = *(a1 + 1524) == 0;
LABEL_101:
    v33 = 1;
    *(v25 + 27) = 1;
    C3BaseRelease(v25);
    mmcs_request_queue_schedule(a1, a6);
    if (!a5)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  if (gMMCS_DebugLevel < 4)
  {
    goto LABEL_50;
  }

  v26 = mmcs_logging_logger_default();
  if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_50;
  }

  v27 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Request for object %p already done", a2);
  v28 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v27;
    v29 = v28;
    v30 = OS_LOG_TYPE_DEBUG;
LABEL_47:
    _os_log_impl(&dword_2577D8000, v29, v30, "%{public}@", &buf, 0xCu);
  }

LABEL_48:
  if (v27)
  {
    CFRelease(v27);
  }

LABEL_50:
  v33 = 0;
  v34 = 1;
  if (a5)
  {
LABEL_51:
    *a5 = v34;
  }

LABEL_52:
  v35 = *MEMORY[0x277D85DE8];
  return v33;
}

void mmcs_request_queue_request_cancel_all_queued_and_inflight_requests(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 1524))
  {
    *(a1 + 1524) = 1;
    Count = CFDictionaryGetCount(*(a1 + 96));
    if (Count >= 1)
    {
      v5 = Count;
      v6 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
      if (v6)
      {
        v7 = v6;
        CFDictionaryGetKeysAndValues(*(a1 + 96), 0, v6);
        for (i = 0; i != v5; ++i)
        {
          C3BaseRetain(v7[i]);
        }

        for (j = 0; j != v5; ++j)
        {
          mmcs_request_queue_callback_cancel_request_with_entry(v7[j], a2);
        }

        for (k = 0; k != v5; ++k)
        {
          v11 = v7[k];
          if (v11)
          {
            C3BaseRelease(v11);
          }
        }

        free(v7);
      }
    }

    *(a1 + 1524) = 0;
  }
}

__CFString *mmcs_request_queue_copy_description(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<request_queue %p>", a1);
  v3 = 0;
  v4 = a1 + 16;
  do
  {
    if (CFBinaryHeapGetCount(*(v4 + 8 * v3)) >= 1)
    {
      v5 = CFCopyDescription(*(v4 + 8 * v3));
      v6 = mmcs_request_type_as_c_string(v3);
      CFStringAppendFormat(Mutable, 0, @"\n%s queue----\n%@\n", v6, v5);
      if (v5)
      {
        CFRelease(v5);
      }
    }

    ++v3;
  }

  while (v3 != 10);
  return Mutable;
}

void _CFArrayApplierFunction_Free(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

void mmcs_request_queue_estimate_bandwidth_applier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a2 + 24))
  {
    mmcs_request_queue_entry_estimate_bandwidth(a2, *a3, *(a3 + 8));
  }
}

BOOL _is_request_done(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 4 * a2);
  v3 = v2[26];
  if (v3 >= v2[36] || v3 >= v2[371])
  {
    return 0;
  }

  if (mmcs_request_queue_total_requests_inflight_for_behavior_type(a1, a2) >= *(a1 + 1480))
  {
    return 0;
  }

  return CFBinaryHeapGetCount(*(a1 + 8 * a2 + 16)) > 0;
}

void _do_schedule(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a1 + 16;
  CFBinaryHeapRemoveMinimumValue(*(a1 + 16 + 8 * a3));
  v9 = *(*(a2 + 32) + 128);
  v41 = 0;
  v10 = a1 + 104;
  ++*(a1 + 104 + 4 * a3);
  if (gMMCS_DebugLevel >= 5)
  {
    v11 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v39 = v9;
      v40 = a4;
      alloc = *MEMORY[0x277CBECE8];
      v12 = *(v10 + 4 * a3);
      v13 = mmcs_request_type_as_c_string(a3);
      v14 = *(*(a2 + 32) + 8);
      v15 = mmcs_request_type_as_c_string(a3);
      Count = CFBinaryHeapGetCount(*(v8 + 8 * a3));
      v17 = CFStringCreateWithFormat(alloc, 0, @"Planning to schedule in-flight request %d for %s request object %p, resulting request %s queue depth %ld", v12, v13, v14, v15, Count);
      v18 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v43 = v17;
        _os_log_impl(&dword_2577D8000, v18, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      v9 = v39;
      a4 = v40;
      if (v17)
      {
        CFRelease(v17);
      }
    }

    v19 = mmcs_request_queue_copy_description(a1);
    if (gMMCS_DebugLevel >= 5)
    {
      v20 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = v9;
        v22 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@", v19);
        v23 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v43 = v22;
          _os_log_impl(&dword_2577D8000, v23, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        v9 = v21;
        if (v22)
        {
          CFRelease(v22);
        }
      }
    }

    if (v19)
    {
      CFRelease(v19);
    }
  }

  v24 = a1 + 8 * a3;
  v25 = *(v24 + 1312);
  if (CFBinaryHeapGetCount(*(v8 + 8 * a3)) > 19)
  {
    v26 = 20;
  }

  else
  {
    v26 = CFBinaryHeapGetCount(*(v8 + 8 * a3));
  }

  ++*(v25 + 4 * v26);
  v27 = *(v10 + 4 * a3);
  if (v27 >= 0x14)
  {
    v27 = 20;
  }

  ++*(*(v24 + 1392) + 4 * v27);
  *(a2 + 24) = 0;
  v28 = v9(*(*(a2 + 32) + 8), &v41);
  if (v28 && v41)
  {
    *a4 = 1;
  }

  else
  {
    v29 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v30 = *MEMORY[0x277CBECE8];
      v31 = *(v10 + 4 * a3);
      v32 = mmcs_request_type_as_c_string(a3);
      v33 = *(*(a2 + 32) + 8);
      v34 = "failed";
      if (!v28)
      {
        v34 = "succeeded but nothing was scheduled";
      }

      v35 = CFStringCreateWithFormat(v30, 0, @"Scheduling of in-flight request %d for %s request object %p, %s. Attempting to schedule another.", v31, v32, *(*(a2 + 32) + 8), v34);
      v36 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v43 = v35;
        _os_log_impl(&dword_2577D8000, v36, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v35)
      {
        CFRelease(v35);
      }
    }

    CFDictionaryRemoveValue(*(a1 + 96), *(*(a2 + 32) + 8));
    --*(v10 + 4 * a3);
  }

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t mmcs_request_queue_entry_create(void *a1, uint64_t a2)
{
  *a1 = 0;
  v4 = C3TypeRegister(&mmcs_request_queue_entryGetTypeID_typeID);
  result = C3TypeCreateInstance_(0, v4, 0x20uLL);
  if (result)
  {
    v6 = result;
    if (mmcs_request_queue_entry_init(result, a2))
    {
      *a1 = v6;
      return 1;
    }

    else
    {
      C3BaseRelease(v6);
      return 0;
    }
  }

  return result;
}

uint64_t mmcs_request_queue_entry_init(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(&sMMCSRequestQueueEntryClassLock);
  v4 = sMMCSRequestQueueEntryIndex++;
  os_unfair_lock_unlock(&sMMCSRequestQueueEntryClassLock);
  *(a1 + 16) = v4;
  if (!a2 || *a2)
  {
    return 0;
  }

  result = malloc_type_malloc(0xA0uLL, 0x10E0040E9E181E1uLL);
  *(a1 + 32) = result;
  if (result)
  {
    v6 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v6;
    v7 = *(a2 + 32);
    v8 = *(a2 + 48);
    v9 = *(a2 + 80);
    *(result + 64) = *(a2 + 64);
    *(result + 80) = v9;
    *(result + 32) = v7;
    *(result + 48) = v8;
    v10 = *(a2 + 96);
    v11 = *(a2 + 112);
    v12 = *(a2 + 144);
    *(result + 128) = *(a2 + 128);
    *(result + 144) = v12;
    *(result + 96) = v10;
    *(result + 112) = v11;
    v13 = *(a1 + 32);
    v14 = v13[18];
    if (v14)
    {
      v14(v13[1]);
      v13 = *(a1 + 32);
    }

    v15 = v13[3];
    if (v15)
    {
      CFRetain(v15);
    }

    return 1;
  }

  return result;
}

uint64_t mmcs_request_queue_entry_compare_priority(uint64_t a1, uint64_t a2, void *context)
{
  zero_number = *(*(a1 + 32) + 24);
  if (!zero_number)
  {
    if (!*(*(a2 + 32) + 24))
    {
      goto LABEL_8;
    }

    zero_number = mmcs_request_get_zero_number();
  }

  v7 = *(*(a2 + 32) + 24);
  if (!v7)
  {
    v7 = mmcs_request_get_zero_number();
  }

  v8 = CFNumberCompare(zero_number, v7, context);
  if (v8 == kCFCompareLessThan)
  {
    return 1;
  }

  if (v8)
  {
    return -1;
  }

LABEL_8:
  v9 = *(a1 + 16);
  v10 = *(a2 + 16);
  v11 = v9 < v10;
  v12 = v9 > v10;
  if (v11)
  {
    return -1;
  }

  else
  {
    return v12;
  }
}

uint64_t mmcs_request_get_zero_number()
{
  os_unfair_lock_lock(&sMMCSRequestQueueEntryClassLock);
  if (!sMMCSZeroNumber)
  {
    valuePtr = 0;
    sMMCSZeroNumber = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  }

  os_unfair_lock_unlock(&sMMCSRequestQueueEntryClassLock);
  return sMMCSZeroNumber;
}

void mmcs_request_queue_context_append_description(uint64_t a1, __CFString *a2)
{
  v4 = *(a1 + 8);
  v5 = mmcs_request_type_as_c_string(*(a1 + 16));
  CFStringAppendFormat(a2, 0, @" object (%p) requires for %s %u bytes / %lf sec", v4, v5, *(a1 + 40), *(a1 + 32));
}

__CFString *mmcs_request_queue_entry_copy_description(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v3 = Mutable;
  v4 = *(*(a1 + 32) + 24);
  v5 = " done";
  if (!v4)
  {
    v4 = @"0 (default)";
  }

  if (!*(a1 + 27))
  {
    v5 = "";
  }

  if (*(a1 + 26))
  {
    v6 = " cancelled";
  }

  else
  {
    v6 = "";
  }

  if (*(a1 + 25))
  {
    v7 = " cancelling";
  }

  else
  {
    v7 = "";
  }

  if (*(a1 + 24))
  {
    v8 = " enqueued";
  }

  else
  {
    v8 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<request_queue_entry %p>%s%s%s%s priority [%@, %ld]", a1, v8, v7, v6, v5, v4, *(a1 + 16));
  mmcs_request_queue_context_append_description(*(a1 + 32), v3);
  return v3;
}

void mmcs_request_queue_estimate_bandwidth_measurement_calculate_bps(uint64_t a1, double *a2, double *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a1 || !a2 || !a3)
  {
    mmcs_request_queue_estimate_bandwidth_measurement_calculate_bps_cold_1();
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v6 <= v7)
  {
    if (v6 == v7)
    {
      v9 = mmcs_logging_logger_default();
      v8 = 0.001;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Instantaneous transfer");
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
      }
    }

    else
    {
      v8 = 1.0;
    }
  }

  else
  {
    v8 = v6 - v7;
  }

  *a2 = *(a1 + 8) / v8;
  *a3 = v8;
  v12 = *MEMORY[0x277D85DE8];
}

double mmcs_request_queue_estimate_bandwidth_context_init(double *a1, double a2)
{
  bzero(a1, 0x448uLL);
  result = a2 + -10.0;
  *a1 = a2 + -10.0;
  a1[1] = a2;
  a1[4] = 6.3113904e10;
  a1[5] = 0.0;
  *(a1 + 45) = 0.0;
  a1[9] = 6.3113904e10;
  a1[10] = 0.0;
  *(a1 + 85) = 0.0;
  return result;
}

void mmcs_network_activity_estimate_bandwidth_network_activity_applier(uint64_t a1, double *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24) <= 1uLL)
  {
    v18 = 6.3113904e10;
    v19 = 0;
    v17 = 0.0;
    if (mmcs_network_activity_bytes_for_start_end(a1, &v19, &v18, &v17, *a2, a2[1]))
    {
      if (gMMCS_DebugLevel >= 6 && v17 - v18 == 0.0)
      {
        v4 = mmcs_network_activity_copy_description(a1);
        if (v4)
        {
          v5 = v4;
          if (gMMCS_DebugLevel >= 5)
          {
            v6 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
            {
              v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"applied all of %@", v5);
              v8 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                v21 = v7;
                _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
              }

              if (v7)
              {
                CFRelease(v7);
              }
            }
          }

          CFRelease(v5);
        }
      }

      v9 = *(a1 + 24);
      v10 = &a2[5 * v9 + 2];
      *v10 = 1;
      *(v10 + 8) += v19;
      v12 = *(v10 + 16);
      v11 = (v10 + 16);
      if (v18 < v12)
      {
        *v11 = v18;
      }

      v13 = &a2[5 * v9 + 2];
      v15 = *(v13 + 24);
      v14 = (v13 + 24);
      if (v17 > v15)
      {
        *v14 = v17;
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

double mmcs_request_requirements_add_requirement(uint64_t a1, uint64_t a2, double a3, double a4)
{
  result = *a2;
  if (*a2 > 0.0)
  {
    LODWORD(a4) = *(a2 + 8);
    result = *&a4 / result;
    *(a1 + 8) += result;
  }

  return result;
}

void mmcs_request_queue_entry_estimate_bandwidth(uint64_t a1, uint64_t a2, double a3)
{
  bzero(v29, 0x438uLL);
  context[0] = a3 + -10.0;
  context[1] = a3;
  v29[2] = 0x422D63C37F000000;
  v30[0] = 0;
  *(v30 + 5) = 0;
  v30[4] = 0x422D63C37F000000;
  v31[0] = 0;
  *(v31 + 5) = 0;
  v6 = *(a1 + 40);
  if (v6)
  {
    v32.length = CFArrayGetCount(*(a1 + 40));
    v32.location = 0;
    CFArrayApplyFunction(v6, v32, mmcs_network_activity_estimate_bandwidth_network_activity_applier, context);
  }

  activity_type = mmcs_request_type_get_activity_type(*(*(a1 + 32) + 16));
  v8 = activity_type;
  v9 = *(a1 + 32);
  if (*(v9 + 32) > 0.0 && *(v9 + 8 * *(v9 + 16) + 48) > 0x10000uLL)
  {
    v26 = 0.0;
    v27 = 0;
    v10 = &v29[5 * activity_type];
    mmcs_request_queue_estimate_bandwidth_measurement_calculate_bps(v10, &v26, &v27);
    v11 = *(a1 + 32);
    LODWORD(v12) = *(v11 + 40);
    if (v26 < v12 / *(v11 + 32))
    {
      *(v10 + mmcs_request_type_get_behavior_type(*(v11 + 16)) + 32) = 1;
    }
  }

  v13 = a2 + 40 * v8;
  v15 = *(v13 + 16);
  v14 = v13 + 16;
  v16 = &v29[5 * v8];
  *v14 = v15 | *v16;
  *(v14 + 8) += *(v16 + 1);
  v17 = v16[2];
  if (v17 < *(v14 + 16))
  {
    *(v14 + 16) = v17;
  }

  v18 = v16[3];
  v19 = *(v14 + 24);
  if (v18 > v19)
  {
    *(v14 + 24) = v18;
  }

  v20 = 0;
  v21 = v16 + 4;
  v22 = v14 + 32;
  do
  {
    *(v22 + v20) |= *(v21 + v20);
    ++v20;
  }

  while (v20 != 5);
  v23 = *(a1 + 32);
  v24 = *(v23 + 16);
  v25 = *(v23 + 32);
  if (v25 > 0.0)
  {
    LODWORD(v19) = *(v23 + 40);
    *(a2 + 96 * v24 + 104) += (*&v19 / v25);
  }

  if (*(v23 + 8 * v24 + 48) <= 0x10000uLL)
  {
    ++*(a2 + 4 * v24 + 1056);
  }
}

uint64_t mmcs_request_queue_entry_ensure_minimum_bytes_per_period_requirement(uint64_t result, unsigned int a2, double a3)
{
  if (!result || (v3 = *(result + 32)) == 0)
  {
    mmcs_request_queue_entry_ensure_minimum_bytes_per_period_requirement_cold_1();
  }

  v4 = *(v3 + 32);
  v5 = 0.0;
  v6 = 0.0;
  if (v4 > 0.0)
  {
    LODWORD(v6) = *(v3 + 40);
    v6 = *&v6 / v4;
  }

  if (a3 > 0.0)
  {
    v5 = a2 / a3;
  }

  if (v6 < v5)
  {
    *(v3 + 40) = a2;
    *(v3 + 32) = a3;
  }

  return result;
}

uint64_t mmcs_request_queue_entry_did_transmit(uint64_t a1, uint64_t a2, double a3)
{
  Mutable = *(a1 + 40);
  if (Mutable || (Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, 0), (*(a1 + 40) = Mutable) != 0))
  {
    Count = CFArrayGetCount(Mutable);
    if (Count >= 1)
    {
      v8 = Count + 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), v8 - 2);
        if (*(ValueAtIndex + 1) < a3)
        {
          v10 = ValueAtIndex;
          CFArrayRemoveValueAtIndex(*(a1 + 40), v8 - 2);
          free(v10);
        }

        --v8;
      }

      while (v8 > 1);
    }

    v11 = CFArrayGetCount(*(a1 + 40));
    if (v11 < 1)
    {
      goto LABEL_17;
    }

    v12 = 0;
    v13 = v11 + 1;
    do
    {
      v14 = CFArrayGetValueAtIndex(*(a1 + 40), v13 - 2);
      v15 = v14[1];
      v16 = *(a2 + 8);
      if (floor(v15 / 0.1) < floor(v16 / 0.1))
      {
        break;
      }

      if (*(v14 + 3) == *(a2 + 24))
      {
        *(v14 + 2) += *(a2 + 16);
        if (v15 <= v16)
        {
          v15 = v16;
        }

        v14[1] = v15;
        v12 = 1;
      }

      --v13;
    }

    while (v13 > 1);
    if (!v12)
    {
LABEL_17:
      mmcs_network_activity_copy(a2);
      CFArrayAppendValue(*(a1 + 40), v17);
    }
  }

  else
  {
    v19 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_impl(&dword_2577D8000, v19, OS_LOG_TYPE_ERROR, "Network activities are not expected to be NULL and an allocation might have failed due to unknown reason.", v20, 2u);
    }
  }

  return 1;
}

void _mmcs_request_queue_entryCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(v2 + 24))
    {
      CFRelease(*(v2 + 24));
      v2 = *(a1 + 32);
    }

    *(v2 + 24) = 0;
    v3 = *(v2 + 152);
    if (!v3 || (v3(*(v2 + 8)), (v2 = *(a1 + 32)) != 0))
    {
      free(v2);
    }

    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v6.length = CFArrayGetCount(*(a1 + 40));
    v6.location = 0;
    CFArrayApplyFunction(v4, v6, _CFArrayApplierFunction_Free_0, 0);
    v5 = *(a1 + 40);
    if (v5)
    {
      CFRelease(v5);
    }

    *(a1 + 40) = 0;
  }
}

void _CFArrayApplierFunction_Free_0(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t mmcs_transaction_create(uint64_t *a1, const void *a2)
{
  *a1 = 0;
  v4 = C3TypeRegister(&mmcs_transactionGetTypeID_typeID);
  result = C3TypeCreateInstance_(0, v4, 0x38uLL);
  if (result)
  {
    v6 = result;
    *(result + 64) = a2;
    if (a2)
    {
      C3BaseRetain(a2);
    }

    result = 1;
    *(v6 + 48) = 1;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = 6;
    *(v6 + 40) = 0;
    *a1 = v6;
  }

  return result;
}

void mmcs_transaction_invalidate(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      C3BaseRelease(v2);
    }

    *(a1 + 64) = 0;
  }
}

uint64_t mmcs_transaction_add_method_completion_info(uint64_t a1, void *value)
{
  Mutable = *(a1 + 40);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
    *(a1 + 40) = Mutable;
  }

  v5 = 0;
  if (value && Mutable)
  {
    CFArrayAppendValue(Mutable, value);
    return 1;
  }

  return v5;
}

uint64_t mmcs_transaction_cancel_enqueued(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (gMMCS_DebugLevel >= 5)
  {
    v6 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"transaction (%p) cancel state %d", a1, a1[12]);
      v8 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v13 = v7;
        _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }
  }

  if (a1[12] != 2)
  {
    mmcs_transaction_cancel_enqueued_cold_1();
  }

  a1[12] = 4;
  Current = CFAbsoluteTimeGetCurrent();
  result = mmcs_request_queue_cancel_request(a2, a1, a3, Current);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void mmcs_transaction_cancel_not_enqueued(uint64_t a1, __CFError *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (gMMCS_DebugLevel >= 5)
  {
    v4 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"transaction (%p) cancel state %d", a1, *(a1 + 48));
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
  }

  if (*(a1 + 48) == 2)
  {
    mmcs_transaction_cancel_not_enqueued_cold_1();
  }

  *(a1 + 48) = 4;
  mmcs_http_context_should_cancel(*(a1 + 16), a2);
  v7 = *MEMORY[0x277D85DE8];
}

void mmcs_transaction_append_description(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (*a1)
  {
    v3 = *(a1 + 16);
    *buf = *a1;
    v17 = v3;
    v18 = *(a1 + 32);
    if ((*(v2 + 48) & 0xFFFFFFFE) == 2)
    {
      mmcs_op_requestor_context_indent(a1);
      v4 = *(v2 + 48);
      if (v4 == 3)
      {
        ++*(a1 + 32);
        ++*(&v17 + 1);
        v13 = *(v2 + 64);
        v14 = "cloud";
        if (v13 && *(v13 + 24) == v2)
        {
          v14 = "proxy";
        }

        CFStringAppendFormat(*(a1 + 16), 0, @"<%s transaction>", v14);
        CFStringAppendFormat(*(a1 + 16), 0, @" in-flight\n");
        if (*(v2 + 16))
        {
          *buf = *(v2 + 16);
          mmcs_http_context_append_description(buf);
        }
      }

      else
      {
        if (v4 != 2)
        {
LABEL_11:
          CFStringAppendFormat(*(a1 + 16), 0, @"\n");
          goto LABEL_22;
        }

        v5 = *(a1 + 40);
        *(a1 + 40) = v5 + 1;
        if (v5 <= 9)
        {
          v6 = *(v2 + 64);
          v7 = "cloud";
          if (v6 && *(v6 + 24) == v2)
          {
            v7 = "proxy";
          }

          CFStringAppendFormat(*(a1 + 16), 0, @"<%s transaction>", v7);
          CFStringAppendFormat(*(a1 + 16), 0, @" enqueued");
          v8 = mmcs_http_request_copy_description(*(v2 + 24));
          if (v8)
          {
            v9 = v8;
            CFStringAppendFormat(*(a1 + 16), 0, @" %@", v8);
            CFRelease(v9);
          }

          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    v10 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"null transaction in opContext %p payload!", a1);
      v12 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v11;
        _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }
  }

LABEL_22:
  v15 = *MEMORY[0x277D85DE8];
}

__CFArray *mmcs_transaction_make_req_context_metrics(__CFArray *result, uint64_t a2, uint64_t a3, const void *a4, const void *a5)
{
  if (result)
  {
    v5 = result;
    result = *(result + 2);
    if (result)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        LOBYTE(v7) = *(v7 + 24) == v5;
      }

      mmcs_http_context_make_metrics(result, a4, a5, a3, v7);
      current_request_metrics = mmcs_get_req_context_get_current_request_metrics(a2);
      metrics = mmcs_http_context_get_metrics(*(v5 + 2));

      return mmcs_metrics_request_add_http_info_for_transfer(current_request_metrics, metrics);
    }
  }

  return result;
}

void mmcs_transaction_log_timing(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = mmcs_logging_logger_summary();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG) && *(a1 + 16))
  {
    v3 = mmcs_logging_logger_summary();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = *MEMORY[0x277CBECE8];
      v5 = mmcs_http_context_class_description(*(a1 + 16));
      v6 = CFStringCreateWithFormat(v4, 0, @"\t        http class:\t%@", v5);
      v7 = mmcs_logging_logger_summary();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v38 = v6;
        _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    v8 = mmcs_logging_logger_summary();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *MEMORY[0x277CBECE8];
      v10 = mmcs_http_context_enqueued_seconds(*(a1 + 16));
      v11 = CFStringCreateWithFormat(v9, 0, @"\t        queue time:\t%0.4lf sec.", *&v10);
      v12 = mmcs_logging_logger_summary();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v38 = v11;
        _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }

    v13 = mmcs_logging_logger_summary();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = *MEMORY[0x277CBECE8];
      v15 = mmcs_http_context_elapsed_seconds(*(a1 + 16));
      v16 = CFStringCreateWithFormat(v14, 0, @"\t     transfer time:\t%0.4lf sec.", *&v15);
      v17 = mmcs_logging_logger_summary();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v38 = v16;
        _os_log_impl(&dword_2577D8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v16)
      {
        CFRelease(v16);
      }
    }

    v18 = mmcs_logging_logger_summary();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = *MEMORY[0x277CBECE8];
      v20 = mmcs_http_context_actual_bytes_read(*(a1 + 16));
      v21 = CFStringCreateWithFormat(v19, 0, @"\t     bytes read:\t%lld bytes", v20);
      v22 = mmcs_logging_logger_summary();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v38 = v21;
        _os_log_impl(&dword_2577D8000, v22, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v21)
      {
        CFRelease(v21);
      }
    }

    if (mmcs_http_context_elapsed_seconds(*(a1 + 16)) > 0.0)
    {
      v23 = mmcs_logging_logger_summary();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = *MEMORY[0x277CBECE8];
        v25 = mmcs_http_context_actual_bytes_read(*(a1 + 16));
        v26 = mmcs_http_context_elapsed_seconds(*(a1 + 16));
        v27 = CFStringCreateWithFormat(v24, 0, @"\t        throughput:\t%.3lf bytes/sec", v25 / v26);
        v28 = mmcs_logging_logger_summary();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v38 = v27;
          _os_log_impl(&dword_2577D8000, v28, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v27)
        {
          CFRelease(v27);
        }
      }
    }

    if (mmcs_http_context_elapsed_seconds(*(a1 + 16)) > 0.0)
    {
      v29 = mmcs_logging_logger_summary();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v30 = *MEMORY[0x277CBECE8];
        v31 = mmcs_http_context_actual_bytes_read(*(a1 + 16));
        v32 = mmcs_http_context_elapsed_seconds(*(a1 + 16));
        v33 = mmcs_http_context_enqueued_seconds(*(a1 + 16));
        v34 = CFStringCreateWithFormat(v30, 0, @"\t effective throughput:\t%.3lf bytes/sec", v31 / (v32 + v33));
        v35 = mmcs_logging_logger_summary();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v38 = v34;
          _os_log_impl(&dword_2577D8000, v35, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v34)
        {
          CFRelease(v34);
        }
      }
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

uint64_t mmcs_transaction_get_bytes_from_caching_server(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2 || !mmcs_http_context_has_bytes_read(v2))
  {
    return 0;
  }

  v3 = *(a1 + 16);

  return mmcs_http_context_bytes_read(v3);
}

void _mmcs_transactionCFFinalize(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 2)
  {
    v2 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Finalizing transaction %p while it is still enqueued", a1);
      v4 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v12 = v3;
        _os_log_impl(&dword_2577D8000, v4, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v3)
      {
        CFRelease(v3);
      }
    }
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    mmcs_http_context_invalidate(v5);
    v6 = *(a1 + 16);
    if (v6)
    {
      C3BaseRelease(v6);
    }
  }

  *(a1 + 16) = 0;
  v7 = *(a1 + 40);
  if (v7)
  {
    v14.length = CFArrayGetCount(*(a1 + 40));
    v14.location = 0;
    CFArrayApplyFunction(v7, v14, _free_methodCompletionInfo, 0);
    v8 = *(a1 + 40);
    if (v8)
    {
      CFRelease(v8);
    }

    *(a1 + 40) = 0;
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    C3BaseRelease(v9);
  }

  *(a1 + 24) = 0;
  v10 = *MEMORY[0x277D85DE8];
}

double metricsinfo__httpmetrics_info__init(_OWORD *a1)
{
  a1[12] = xmmword_279846270;
  a1[13] = unk_279846280;
  a1[14] = xmmword_279846290;
  a1[8] = xmmword_279846230;
  a1[9] = unk_279846240;
  a1[10] = xmmword_279846250;
  a1[11] = unk_279846260;
  a1[4] = xmmword_2798461F0;
  a1[5] = unk_279846200;
  a1[6] = xmmword_279846210;
  a1[7] = unk_279846220;
  *a1 = metricsinfo__httpmetrics_info__init_init_value;
  a1[1] = unk_2798461C0;
  result = dbl_2798461E0[0];
  a1[2] = xmmword_2798461D0;
  a1[3] = *dbl_2798461E0;
  return result;
}

void **metricsinfo__httpmetrics_info__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &metricsinfo__httpmetrics_info__descriptor)
    {
      metricsinfo__httpmetrics_info__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

double metricsinfo__socket_info__init(_OWORD *a1)
{
  *a1 = metricsinfo__socket_info__init_init_value;
  a1[1] = *algn_2798462B0;
  result = 0.0;
  a1[2] = xmmword_2798462C0;
  return result;
}

void **metricsinfo__socket_info__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &metricsinfo__socket_info__descriptor)
    {
      metricsinfo__socket_info__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

uint64_t mmcs_update_item_create(uint64_t *a1, const __CFData *a2, const __CFString *a3, CFTypeRef *a4, CFTypeRef *a5)
{
  *a1 = 0;
  v10 = C3TypeRegister(&mmcs_update_itemGetTypeID_typeID);
  result = C3TypeCreateInstance_(0, v10, 0x78uLL);
  if (result)
  {
    v12 = result;
    v13 = *MEMORY[0x277CBECE8];
    *(result + 16) = CFDataCreateCopy(*MEMORY[0x277CBECE8], a2);
    *(v12 + 24) = CFStringCreateCopy(v13, a3);
    if (a4)
    {
      mmcs_wrapping_state_set_reference_signature_and_object(v12 + 64, *a4, a4[1]);
    }

    if (a5)
    {
      mmcs_wrapping_state_set_reference_signature_and_object(v12 + 80, *a5, a5[1]);
    }

    *a1 = v12;
    return 1;
  }

  return result;
}

void mmcs_update_item_set_chunk_signatures_keys_and_lengths(void *a1, CFTypeRef cf, CFTypeRef a3, CFTypeRef a4)
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

  v8 = a1[12];
  if (v8)
  {
    CFRelease(v8);
  }

  a1[12] = 0;
  v9 = a1[13];
  if (v9)
  {
    CFRelease(v9);
  }

  a1[13] = 0;
  v10 = a1[14];
  if (v10)
  {
    CFRelease(v10);
  }

  a1[12] = cf;
  a1[13] = a3;
  a1[14] = a4;
}

CFStringRef mmcs_update_item_copy_description(const __CFData **a1)
{
  StringDescription = XCFDataCreateStringDescription(a1[2]);
  v3 = a1[8];
  if (v3)
  {
    v4 = XCFDataCreateStringDescription(v3);
  }

  else
  {
    v4 = @"(null reference)";
  }

  v5 = a1[10];
  if (v5)
  {
    v6 = XCFDataCreateStringDescription(v5);
  }

  else
  {
    v6 = @"(null reference)";
  }

  v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"<UpdateItem sig %@ unwrap %@ wrap %@>", StringDescription, v4, v6);
  if (StringDescription)
  {
    CFRelease(StringDescription);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

CFStringRef mmcs_update_item_copy_short_description(uint64_t a1)
{
  StringDescription = XCFDataCreateStringDescription(*(a1 + 16));
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = XCFDataCreateStringDescription(v3);
  }

  else
  {
    v4 = @"(null reference)";
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = XCFDataCreateStringDescription(v5);
  }

  else
  {
    v6 = @"(null reference)";
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = mmcs_cferror_copy_short_description(v7);
    v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"[%@(%@): %@ --> %@ ==> %@]", StringDescription, *(a1 + 24), v4, v6, v8);
    if (v8)
    {
      CFRelease(v8);
    }

    if (StringDescription)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = *(a1 + 48);
    v12 = *MEMORY[0x277CBECE8];
    v13 = *(a1 + 24);
    if (v11)
    {
      v14 = CFStringCreateWithFormat(v12, 0, @"[%@(%@): %@ --> %@ ==> '%@']", StringDescription, v13, v4, v6, v11);
    }

    else
    {
      v14 = CFStringCreateWithFormat(v12, 0, @"[%@(%@): %@ --> %@]", StringDescription, v13, v4, v6);
    }

    v9 = v14;
    if (StringDescription)
    {
LABEL_11:
      CFRelease(StringDescription);
    }
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v9;
}

uint64_t mmcs_update_item_equal_file_unwrapping_reference(uint64_t a1, uint64_t a2)
{
  result = CFEqual(*(a1 + 16), *(a2 + 16));
  if (result)
  {
    return mmcs_wrapping_state_is_equal((a1 + 64), (a2 + 64)) != 0;
  }

  return result;
}

uint64_t mmcs_update_item_equal_file_wrapping_reference(uint64_t a1, uint64_t a2)
{
  result = CFEqual(*(a1 + 16), *(a2 + 16));
  if (result)
  {
    return mmcs_wrapping_state_is_equal((a1 + 80), (a2 + 80)) != 0;
  }

  return result;
}

void mmcs_update_item_set_put_receipt(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 48);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 48) = cf;
    if (cf)
    {

      CFRetain(cf);
    }
  }
}

void mmcs_update_item_set_put_receipt_expiry(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 56);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 56) = cf;
    if (cf)
    {

      CFRetain(cf);
    }
  }
}

void mmcs_update_item_set_error(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 40);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 40) = cf;
    if (cf)
    {

      CFRetain(cf);
    }
  }
}

void mmcs_update_item_set_MIME_type(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 32);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 32) = cf;
    if (cf)
    {

      CFRetain(cf);
    }
  }
}

void mmcs_update_item_set_error_if_not_already_done(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    mmcs_update_item_set_error_if_not_already_done_cold_1();
  }

  if (!*(a1 + 40) && !*(a1 + 48))
  {

    mmcs_update_item_set_error(a1, a2);
  }
}

void mmcs_update_item_set_put_receipt_if_not_already_done(uint64_t a1, const void *a2, const void *a3)
{
  if (!a2)
  {
    mmcs_update_item_set_put_receipt_if_not_already_done_cold_1();
  }

  if (!*(a1 + 40) && !*(a1 + 48))
  {
    mmcs_update_item_set_put_receipt(a1, a2);

    mmcs_update_item_set_put_receipt_expiry(a1, a3);
  }
}

void _mmcs_update_itemCFFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  a1[2] = 0;
  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  a1[3] = 0;
  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  a1[5] = 0;
  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
  }

  a1[4] = 0;
  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
  }

  a1[6] = 0;
  v7 = a1[7];
  if (v7)
  {
    CFRelease(v7);
  }

  a1[7] = 0;
  v8 = a1[12];
  if (v8)
  {
    CFRelease(v8);
  }

  a1[12] = 0;
  v9 = a1[13];
  if (v9)
  {
    CFRelease(v9);
  }

  a1[13] = 0;
  v10 = a1[14];
  if (v10)
  {
    CFRelease(v10);
  }

  a1[14] = 0;
  mmcs_wrapping_state_set_reference_signature_and_object((a1 + 8), 0, 0);

  mmcs_wrapping_state_set_reference_signature_and_object((a1 + 10), 0, 0);
}

CFStringRef mmcs_network_activity_copy_description(uint64_t a1)
{
  v2 = *(a1 + 8) - *a1;
  v3 = *(a1 + 16) / v2;
  v4 = *MEMORY[0x277CBECE8];
  v5 = mmcs_network_activity_type_as_c_string(*(a1 + 24));
  return CFStringCreateWithFormat(v4, 0, @"%s %ld bytes in %lf (%.1lf Bps)", v5, *(a1 + 16), *&v2, *&v3);
}

__n128 mmcs_network_activity_copy(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x1000040E0EAB150uLL);
  if (v2)
  {
    result = *a1;
    v4 = *(a1 + 16);
    *v2 = *a1;
    v2[1] = v4;
  }

  return result;
}

uint64_t mmcs_network_activity_make@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = result;
  *(a3 + 24) = a2;
  return result;
}

uint64_t mmcs_network_activity_bytes_for_start_end(uint64_t a1, uint64_t *a2, double *a3, double *a4, double a5, double a6)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (*a1 <= 0.0)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  if (v6 <= 0.0)
  {
    return 0;
  }

  if (*a1 >= a5)
  {
    a5 = *a1;
  }

  if (v6 <= a6)
  {
    a6 = *(a1 + 8);
  }

  *a3 = a5;
  *a4 = a6;
  if (a5 < a6)
  {
    if (!a2)
    {
      return 1;
    }

    v7 = ((a6 - a5) / (*(a1 + 8) - *a1) * *(a1 + 16));
    v8 = 1;
    goto LABEL_17;
  }

  v8 = 0;
  if (a2 && a5 == a6)
  {
    v8 = 0;
    v7 = *(a1 + 16);
LABEL_17:
    *a2 = v7;
  }

  return v8;
}

uint64_t do_free(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(result + 8))(*(result + 16), a2);
  }

  return result;
}

uint64_t protobuf_c_message_get_packed_size(uint64_t a1)
{
  v5 = 0;
  if (**a1 != 682290937)
  {
    __assert_rtn("protobuf_c_message_get_packed_size", "protobuf-c.c", 715, "((message)->descriptor)->magic == PROTOBUF_C__MESSAGE_DESCRIPTOR_MAGIC");
  }

  for (i = 0; i < *(*a1 + 48); ++i)
  {
    v4 = (*(*a1 + 56) + 72 * i);
    v3 = (a1 + v4[6]);
    v2 = (a1 + v4[5]);
    if (v4[3])
    {
      if ((v4[3] == 1 || v4[3] == 3) && (v4[12] & 4) != 0)
      {
        v5 += oneof_field_get_packed_size(v4, *v2, v3);
      }

      else if (v4[3] == 1)
      {
        v5 += optional_field_get_packed_size(v4, *v2, v3);
      }

      else if (v4[3] == 3)
      {
        v5 += unlabeled_field_get_packed_size(v4, v3);
      }

      else
      {
        v5 += repeated_field_get_packed_size(v4, *v2, v3);
      }
    }

    else
    {
      v5 += required_field_get_packed_size(v4, v3);
    }
  }

  for (j = 0; j < *(a1 + 8); ++j)
  {
    v5 += unknown_field_get_packed_size(*(a1 + 16) + 24 * j);
  }

  return v5;
}

uint64_t required_field_get_packed_size(uint64_t a1, int *a2)
{
  tag_size = get_tag_size(*(a1 + 8));
  switch(*(a1 + 16))
  {
    case 0:
    case 0xD:
      v9 = tag_size + int32_size(*a2);
      break;
    case 1:
      v9 = tag_size + sint32_size(*a2);
      break;
    case 2:
    case 7:
      v9 = tag_size + 4;
      break;
    case 3:
    case 8:
      v9 = tag_size + uint64_size(*a2);
      break;
    case 4:
      v9 = tag_size + sint64_size(*a2);
      break;
    case 5:
    case 9:
      v9 = tag_size + 8;
      break;
    case 6:
      v9 = tag_size + uint32_size(*a2);
      break;
    case 0xA:
      v9 = tag_size + 4;
      break;
    case 0xB:
      v9 = tag_size + 8;
      break;
    case 0xC:
      v9 = tag_size + 1;
      break;
    case 0xE:
      if (*a2)
      {
        v4 = strlen(*a2);
      }

      else
      {
        v4 = 0;
      }

      v9 = tag_size + uint32_size(v4) + v4;
      break;
    case 0xF:
      v5 = *a2;
      v9 = tag_size + uint32_size(*a2) + v5;
      break;
    case 0x10:
      if (*a2)
      {
        packed_size = protobuf_c_message_get_packed_size(*a2);
      }

      else
      {
        packed_size = 0;
      }

      v9 = tag_size + uint32_size(packed_size) + packed_size;
      break;
    default:
      __assert_rtn("required_field_get_packed_size", "protobuf-c.c", 461, "0");
  }

  return v9;
}

uint64_t oneof_field_get_packed_size(uint64_t a1, int a2, int *a3)
{
  if (a2 != *(a1 + 8))
  {
    return 0;
  }

  if ((*(a1 + 16) == 16 || *(a1 + 16) == 14) && (!*a3 || *a3 == *(a1 + 40)))
  {
    return 0;
  }

  return required_field_get_packed_size(a1, a3);
}

uint64_t optional_field_get_packed_size(uint64_t a1, int a2, int *a3)
{
  if (*(a1 + 16) != 16 && *(a1 + 16) != 14)
  {
    if (!a2)
    {
      return 0;
    }

    return required_field_get_packed_size(a1, a3);
  }

  if (*a3 && *a3 != *(a1 + 40))
  {
    return required_field_get_packed_size(a1, a3);
  }

  return 0;
}

uint64_t unlabeled_field_get_packed_size(uint64_t a1, int *a2)
{
  if (field_is_zeroish(a1, a2))
  {
    return 0;
  }

  else
  {
    return required_field_get_packed_size(a1, a2);
  }
}

uint64_t repeated_field_get_packed_size(unsigned int *a1, unint64_t a2, uint64_t *a3)
{
  v16 = 0;
  v7 = *a3;
  if (!a2)
  {
    return 0;
  }

  tag_size = get_tag_size(a1[2]);
  if ((a1[12] & 1) == 0)
  {
    tag_size *= a2;
  }

  switch(a1[4])
  {
    case 0u:
    case 0xDu:
      for (i = 0; i < a2; ++i)
      {
        v16 += int32_size(*(v7 + 4 * i));
      }

      break;
    case 1u:
      for (j = 0; j < a2; ++j)
      {
        v16 += sint32_size(*(v7 + 4 * j));
      }

      break;
    case 2u:
    case 7u:
    case 0xAu:
      v16 = 4 * a2;
      break;
    case 3u:
    case 8u:
      for (k = 0; k < a2; ++k)
      {
        v16 += uint64_size(*(v7 + 8 * k));
      }

      break;
    case 4u:
      for (m = 0; m < a2; ++m)
      {
        v16 += sint64_size(*(v7 + 8 * m));
      }

      break;
    case 5u:
    case 9u:
    case 0xBu:
      v16 = 8 * a2;
      break;
    case 6u:
      for (n = 0; n < a2; ++n)
      {
        v16 += uint32_size(*(v7 + 4 * n));
      }

      break;
    case 0xCu:
      v16 = a2;
      break;
    case 0xEu:
      for (ii = 0; ii < a2; ++ii)
      {
        v6 = strlen(*(v7 + 8 * ii));
        v16 += uint32_size(v6) + v6;
      }

      break;
    case 0xFu:
      for (jj = 0; jj < a2; ++jj)
      {
        v5 = *(v7 + 16 * jj);
        v16 += uint32_size(v5) + v5;
      }

      break;
    case 0x10u:
      for (kk = 0; kk < a2; ++kk)
      {
        packed_size = protobuf_c_message_get_packed_size(*(v7 + 8 * kk));
        v16 += uint32_size(packed_size) + packed_size;
      }

      break;
    default:
      break;
  }

  if (a1[12])
  {
    tag_size += uint32_size(v16);
  }

  return tag_size + v16;
}

uint64_t protobuf_c_message_pack(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (**a1 != 682290937)
  {
    __assert_rtn("protobuf_c_message_pack", "protobuf-c.c", 1478, "((message)->descriptor)->magic == PROTOBUF_C__MESSAGE_DESCRIPTOR_MAGIC");
  }

  for (i = 0; i < *(*a1 + 48); ++i)
  {
    v5 = (*(*a1 + 56) + 72 * i);
    v4 = (a1 + v5[6]);
    v3 = (a1 + v5[5]);
    if (v5[3])
    {
      if ((v5[3] == 1 || v5[3] == 3) && (v5[12] & 4) != 0)
      {
        v6 += oneof_field_pack(v5, *v3, v4, (a2 + v6));
      }

      else if (v5[3] == 1)
      {
        v6 += optional_field_pack(v5, *v3, v4, (a2 + v6));
      }

      else if (v5[3] == 3)
      {
        v6 += unlabeled_field_pack(v5, v4, (a2 + v6));
      }

      else
      {
        v6 += repeated_field_pack(v5, *v3, v4, (a2 + v6));
      }
    }

    else
    {
      v6 += required_field_pack(v5, v4, (a2 + v6));
    }
  }

  for (j = 0; j < *(a1 + 8); ++j)
  {
    v6 += unknown_field_pack(*(a1 + 16) + 24 * j, (a2 + v6));
  }

  return v6;
}

uint64_t required_field_pack(uint64_t a1, signed int *a2, _BYTE *a3)
{
  v6 = tag_pack(*(a1 + 8), a3);
  switch(*(a1 + 16))
  {
    case 0:
    case 0xD:
      *a3 = *a3;
      v10 = v6 + int32_pack(*a2, &a3[v6]);
      break;
    case 1:
      *a3 = *a3;
      v10 = v6 + sint32_pack(*a2, &a3[v6]);
      break;
    case 2:
    case 7:
    case 0xA:
      *a3 |= 5u;
      v3 = *a2;
      v10 = v6 + fixed32_pack();
      break;
    case 3:
    case 8:
      *a3 = *a3;
      v10 = v6 + uint64_pack(*a2, &a3[v6]);
      break;
    case 4:
      *a3 = *a3;
      v10 = v6 + sint64_pack(*a2, &a3[v6]);
      break;
    case 5:
    case 9:
    case 0xB:
      *a3 |= 1u;
      v4 = *a2;
      v10 = v6 + fixed64_pack();
      break;
    case 6:
      *a3 = *a3;
      v10 = v6 + uint32_pack(*a2, &a3[v6]);
      break;
    case 0xC:
      *a3 = *a3;
      v10 = v6 + BOOLean_pack(*a2, &a3[v6]);
      break;
    case 0xE:
      *a3 |= 2u;
      v10 = v6 + string_pack(*a2, &a3[v6]);
      break;
    case 0xF:
      *a3 |= 2u;
      v10 = v6 + binary_data_pack(a2, &a3[v6]);
      break;
    case 0x10:
      *a3 |= 2u;
      v10 = v6 + prefixed_message_pack(*a2, &a3[v6]);
      break;
    default:
      __assert_rtn("required_field_pack", "protobuf-c.c", 1137, "0");
  }

  return v10;
}

uint64_t oneof_field_pack(uint64_t a1, int a2, signed int *a3, _BYTE *a4)
{
  if (a2 != *(a1 + 8))
  {
    return 0;
  }

  if ((*(a1 + 16) == 16 || *(a1 + 16) == 14) && (!*a3 || *a3 == *(a1 + 40)))
  {
    return 0;
  }

  return required_field_pack(a1, a3, a4);
}

uint64_t optional_field_pack(uint64_t a1, int a2, signed int *a3, _BYTE *a4)
{
  if (*(a1 + 16) != 16 && *(a1 + 16) != 14)
  {
    if (!a2)
    {
      return 0;
    }

    return required_field_pack(a1, a3, a4);
  }

  if (*a3 && *a3 != *(a1 + 40))
  {
    return required_field_pack(a1, a3, a4);
  }

  return 0;
}

uint64_t unlabeled_field_pack(uint64_t a1, signed int *a2, _BYTE *a3)
{
  if (field_is_zeroish(a1, a2))
  {
    return 0;
  }

  else
  {
    return required_field_pack(a1, a2, a3);
  }
}

uint64_t repeated_field_pack(_DWORD *a1, unint64_t a2, signed int **a3, _BYTE *a4)
{
  v21 = *a3;
  if (a1[12])
  {
    if (a2)
    {
      v12 = tag_pack(a1[2], a4);
      *a4 |= 2u;
      v11 = v12;
      v10 = get_type_min_size(a1[4]) * a2;
      v8 = uint32_size(v10);
      v13 = v12 + v8;
      v6 = &a4[v13];
      switch(a1[4])
      {
        case 0:
        case 0xD:
          for (i = 0; i < a2; ++i)
          {
            v6 += int32_pack(v21[i], v6);
          }

          break;
        case 1:
          for (j = 0; j < a2; ++j)
          {
            v6 += sint32_pack(v21[j], v6);
          }

          break;
        case 2:
        case 7:
        case 0xA:
          copy_to_little_endian_32();
          LODWORD(v6) = v6 + 4 * a2;
          break;
        case 3:
        case 8:
          for (k = 0; k < a2; ++k)
          {
            v6 += uint64_pack(*&v21[2 * k], v6);
          }

          break;
        case 4:
          for (m = 0; m < a2; ++m)
          {
            v6 += sint64_pack(*&v21[2 * m], v6);
          }

          break;
        case 5:
        case 9:
        case 0xB:
          copy_to_little_endian_64();
          LODWORD(v6) = v6 + 8 * a2;
          break;
        case 6:
          for (n = 0; n < a2; ++n)
          {
            v6 += uint32_pack(v21[n], v6);
          }

          break;
        case 0xC:
          for (ii = 0; ii < a2; ++ii)
          {
            v6 += BOOLean_pack(v21[ii], v6);
          }

          break;
        default:
          __assert_rtn("repeated_field_pack", "protobuf-c.c", 1434, "0");
      }

      v9 = v6 - (a4 + v13);
      v7 = uint32_size(v9);
      if (v8 != v7)
      {
        if (v7 != v8 + 1)
        {
          __assert_rtn("repeated_field_pack", "protobuf-c.c", 1440, "actual_length_size == length_size_min + 1");
        }

        __memmove_chk();
        ++v13;
      }

      uint32_pack(v9, &a4[v11]);
      return v13 + v9;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *&v5[8] = 0;
    *v5 = sizeof_elt_in_repeated_array(a1[4]);
    for (jj = 0; jj < a2; ++jj)
    {
      *&v5[4] += required_field_pack(a1, v21, &a4[*&v5[4]]);
      v21 = (v21 + *v5);
    }

    return *&v5[4];
  }
}

uint64_t unknown_field_pack(uint64_t a1, _BYTE *a2)
{
  v5 = tag_pack(*a1, a2);
  *a2 |= *(a1 + 4);
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  __memcpy_chk();
  return v5 + *(a1 + 8);
}

void *protobuf_c_message_unpack(uint64_t a1, uint64_t (**a2)(), unint64_t a3, _BYTE *a4)
{
  v55 = *MEMORY[0x277D85DE8];
  v50 = a1;
  v49 = a2;
  v48 = a3;
  v47 = a4;
  v46 = 0;
  v45 = a3;
  v44 = a4;
  v43 = *(a1 + 56);
  memset(__b, 0, sizeof(__b));
  v42 = 0;
  v41 = 0;
  v40 = 0;
  k = 0;
  j = 0;
  m = 0;
  v36 = 0;
  v35 = 0;
  v34 = &v52;
  v33 = 0;
  if (*v50 != 682290937)
  {
    __assert_rtn("protobuf_c_message_unpack", "protobuf-c.c", 3056, "(desc)->magic == PROTOBUF_C__MESSAGE_DESCRIPTOR_MAGIC");
  }

  if (!v49)
  {
    v49 = protobuf_c__allocator;
  }

  v46 = do_alloc(v49, *(v50 + 40));
  if (v46)
  {
    __b[0] = &v54;
    v35 = (*(v50 + 48) + 7) / 8u;
    if (v35 > 0x10uLL)
    {
      v34 = do_alloc(v49, v35);
      if (!v34)
      {
        do_free(v49, v46);
        v51 = 0;
        goto LABEL_112;
      }

      v33 = 1;
    }

    __memset_chk();
    if (*(v50 + 88))
    {
      protobuf_c_message_init(v50, v46);
    }

    else
    {
      message_init_generic(v50, v46);
    }

    while (v45)
    {
      v32 = 0;
      v31 = 0;
      v30 = parse_tag_and_wiretype(v45, v44, &v32, &v31);
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      if (!v30)
      {
        goto LABEL_106;
      }

      if (v43 && v43[2] == v32)
      {
        v29 = v43;
      }

      else
      {
        v26 = int_range_lookup(*(v50 + 72), *(v50 + 80), v32);
        if ((v26 & 0x80000000) != 0)
        {
          v29 = 0;
          ++v40;
        }

        else
        {
          v29 = (*(v50 + 56) + 72 * v26);
          v43 = v29;
          v36 = v26;
        }
      }

      if (v29 && !v29[3])
      {
        v34[v36 / 8] |= 1 << (v36 % 8);
      }

      v44 += v30;
      v45 -= v30;
      LODWORD(v27) = v32;
      WORD2(v27) = v31;
      *(&v27 + 1) = v29;
      *(&v28 + 1) = v44;
      if (v31)
      {
        if (v31 == 1)
        {
          if (v45 < 8)
          {
            goto LABEL_106;
          }

          *&v28 = 8;
        }

        else if (v31 == 2)
        {
          v23 = 0;
          *&v28 = scan_length_prefixed_data(v45, v44, &v23);
          if (!v28)
          {
            goto LABEL_106;
          }

          BYTE5(v27) = v23;
        }

        else
        {
          if (v31 != 5 || v45 < 4)
          {
            goto LABEL_106;
          }

          *&v28 = 4;
        }
      }

      else
      {
        if (v45 >= 0xA)
        {
          v11 = 10;
        }

        else
        {
          v11 = v45;
        }

        v25 = v11;
          ;
        }

        if (i == v25)
        {
LABEL_106:
          do_free(v49, v46);
          for (j = 1; j <= v42; ++j)
          {
            do_free(v49, __b[j]);
          }

          if (v33)
          {
            do_free(v49, v34);
          }

          v51 = 0;
          goto LABEL_112;
        }

        *&v28 = i + 1;
      }

      if (v41 == 1 << (v42 + 4))
      {
        v22 = 0;
        v41 = 0;
        if (v42 == 22)
        {
          goto LABEL_106;
        }

        v22 = 32 << (++v42 + 4);
        v4 = do_alloc(v49, v22);
        __b[v42] = v4;
        if (!__b[v42])
        {
          goto LABEL_106;
        }
      }

      v5 = __b[v42];
      v6 = v41++;
      v7 = (v5 + 32 * v6);
      *v7 = v27;
      v7[1] = v28;
      if (v29 && v29[3] == 2)
      {
        v21 = (v46 + v29[5]);
        if (v31 == 2 && ((v29[12] & 1) != 0 || is_packable_type(v29[4])))
        {
          v20 = 0;
          if (!count_packed_elements(v29[4], v28 - BYTE5(v27), (*(&v28 + 1) + BYTE5(v27)), &v20))
          {
            goto LABEL_106;
          }

          *v21 += v20;
        }

        else
        {
          ++*v21;
        }
      }

      v44 += v28;
      v45 -= v28;
    }

    for (k = 0; k < *(v50 + 48); ++k)
    {
      v17 = *(v50 + 56) + 72 * k;
      if (*(v17 + 12) == 2)
      {
        v16 = sizeof_elt_in_repeated_array(*(v17 + 16));
        v15 = (v46 + *(v17 + 20));
        if (*v15)
        {
          v14 = *v15;
          *v15 = 0;
          if (!*v46)
          {
            __assert_rtn("protobuf_c_message_unpack", "protobuf-c.c", 3242, "rv->descriptor != NULL");
          }

          v13 = do_alloc(v49, v16 * v14);
          if (!v13)
          {
            ++k;
            while (k < *(v50 + 48))
            {
              v18 = *(v50 + 56) + 72 * k;
              if (*(v18 + 12) == 2)
              {
                *(v46 + *(v18 + 20)) = 0;
              }

              ++k;
            }

            goto LABEL_100;
          }

          *(v46 + *(v17 + 24)) = v13;
        }
      }

      else if (!*(v17 + 12) && !*(v17 + 40) && (v34[k / 8] & (1 << (k % 8))) == 0)
      {
        ++k;
        while (k < *(v50 + 48))
        {
          v19 = *(v50 + 56) + 72 * k;
          if (*(v19 + 12) == 2)
          {
            *(v46 + *(v19 + 20)) = 0;
          }

          ++k;
        }

        goto LABEL_100;
      }
    }

    if (v40)
    {
      v8 = do_alloc(v49, 24 * v40);
      v46[2] = v8;
      if (!v46[2])
      {
LABEL_100:
        protobuf_c_message_free_unpacked(v46, v49);
        for (j = 1; j <= v42; ++j)
        {
          do_free(v49, __b[j]);
        }

        if (v33)
        {
          do_free(v49, v34);
        }

        v51 = 0;
        goto LABEL_112;
      }
    }

    for (m = 0; m <= v42; ++m)
    {
      if (m == v42)
      {
        LODWORD(v10) = v41;
      }

      else
      {
        v10 = 1 << (m + 4);
      }

      v12 = __b[m];
      for (j = 0; j < v10; ++j)
      {
        if (!parse_member(v12 + 32 * j, v46, v49))
        {
          goto LABEL_100;
        }
      }
    }

    for (j = 1; j <= v42; ++j)
    {
      do_free(v49, __b[j]);
    }

    if (v33)
    {
      do_free(v49, v34);
    }

    v51 = v46;
  }

  else
  {
    v51 = 0;
  }

LABEL_112:
  *MEMORY[0x277D85DE8];
  return v51;
}

uint64_t message_init_generic(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  result = __memset_chk();
  *a2 = a1;
  for (i = 0; i < *(a1 + 48); ++i)
  {
    if (*(*(a1 + 56) + 72 * i + 40) && *(*(a1 + 56) + 72 * i + 12) != 2)
    {
      v4 = *(*(a1 + 56) + 72 * i + 16);
      if (v4 <= 2 || v4 - 3 <= 2 || v4 == 7 || v4 == 6 || v4 == 9 || v4 == 8 || v4 == 10 || v4 == 11 || v4 == 12 || v4 == 13)
      {
LABEL_19:
        result = __memcpy_chk();
        continue;
      }

      switch(v4)
      {
        case 0xEu:
          goto LABEL_21;
        case 0xFu:
          goto LABEL_19;
        case 0x10u:
LABEL_21:
          *(a2 + *(*(a1 + 56) + 72 * i + 24)) = *(*(a1 + 56) + 72 * i + 40);
          break;
      }
    }
  }

  return result;
}

uint64_t parse_tag_and_wiretype(unint64_t a1, _BYTE *a2, int *a3, _BYTE *a4)
{
  if (a1 <= 5)
  {
    v5 = a1;
  }

  else
  {
    v5 = 5;
  }

  v8 = (*a2 & 0x7F) >> 3;
  v7 = 4;
  if ((*a2 & 0xF8) == 0)
  {
    return 0;
  }

  *a4 = *a2 & 7;
  if ((*a2 & 0x80) != 0)
  {
    for (i = 1; i < v5; ++i)
    {
      if ((a2[i] & 0x80) == 0)
      {
        *a3 = v8 | (a2[i] << v7);
        return i + 1;
      }

      v8 |= (a2[i] & 0x7F) << v7;
      v7 += 7;
    }

    return 0;
  }

  else
  {
    *a3 = v8;
    return 1;
  }
}

uint64_t int_range_lookup(unsigned int a1, uint64_t a2, int a3)
{
  if (a1)
  {
    v6 = 0;
    v7 = a1;
    while (v7 > 1)
    {
      v5 = v6 + v7 / 2;
      if (a3 >= *(a2 + 8 * v5))
      {
        if (a3 < *(a2 + 8 * v5) + *(a2 + 8 * (v5 + 1) + 4) - *(a2 + 8 * v5 + 4))
        {
          return (a3 - *(a2 + 8 * v5) + *(a2 + 8 * v5 + 4));
        }

        v7 -= v7 / 2 + 1;
        v6 = v5 + 1;
      }

      else
      {
        v7 /= 2u;
      }
    }

    if (v7 && (v4 = *(a2 + 8 * v6 + 4), *(a2 + 8 * v6) <= a3) && a3 < *(a2 + 8 * v6) + *(a2 + 8 * (v6 + 1) + 4) - v4)
    {
      return (a3 - *(a2 + 8 * v6) + v4);
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return -1;
  }
}

unint64_t scan_length_prefixed_data(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >= 5)
  {
    v4 = 5;
  }

  else
  {
    v4 = a1;
  }

  v7 = 0;
  v5 = 0;
  for (i = 0; i < v4; ++i)
  {
    v7 |= (*(a2 + i) & 0x7F) << v5;
    v5 += 7;
    if ((*(a2 + i) & 0x80) == 0)
    {
      break;
    }
  }

  if (i == v4)
  {
    return 0;
  }

  v8 = i + 1;
  *a3 = i + 1;
  if (v7 > 0x7FFFFFFF)
  {
    return 0;
  }

  if (v8 + v7 > a1)
  {
    return 0;
  }

  return v8 + v7;
}

BOOL is_packable_type(int a1)
{
  v2 = 0;
  if (a1 != 14)
  {
    v2 = 0;
    if (a1 != 15)
    {
      return a1 != 16;
    }
  }

  return v2;
}

uint64_t count_packed_elements(int a1, unint64_t a2, _BYTE *a3, void *a4)
{
  switch(a1)
  {
    case 0:
    case 1:
    case 3:
    case 4:
    case 6:
    case 8:
    case 13:
      *a4 = max_b128_numbers(a2, a3);
      v5 = 1;
      break;
    case 2:
    case 7:
    case 10:
      if (a2 % 4)
      {
        v5 = 0;
      }

      else
      {
        *a4 = a2 / 4;
        v5 = 1;
      }

      break;
    case 5:
    case 9:
    case 11:
      if (a2 % 8)
      {
        v5 = 0;
      }

      else
      {
        *a4 = a2 / 8;
        v5 = 1;
      }

      break;
    case 12:
      *a4 = a2;
      v5 = 1;
      break;
    default:
      v5 = 0;
      break;
  }

  return v5;
}

uint64_t sizeof_elt_in_repeated_array(unsigned int a1)
{
  if (a1 <= 2)
  {
    return 4;
  }

  if (a1 - 3 <= 2)
  {
    return 8;
  }

  switch(a1)
  {
    case 7u:
    case 6u:
      return 4;
    case 9u:
    case 8u:
      return 8;
    case 0xAu:
      return 4;
    case 0xBu:
      return 8;
    case 0xCu:
      return 4;
    case 0xDu:
      return 4;
  }

  if (a1 != 14)
  {
    if (a1 == 15)
    {
      return 16;
    }

    if (a1 != 16)
    {
      __assert_rtn("sizeof_elt_in_repeated_array", "protobuf-c.c", 1264, "0");
    }
  }

  return 8;
}

uint64_t parse_member(uint64_t a1, uint64_t a2, uint64_t (**a3)())
{
  v12 = *(a1 + 8);
  if (!v12)
  {
    v3 = *(a2 + 16);
    v4 = (*(a2 + 8))++;
    v10 = v3 + 24 * v4;
    *v10 = *a1;
    *(v10 + 4) = *(a1 + 4);
    *(v10 + 8) = *(a1 + 16);
    *(v10 + 16) = do_alloc(a3, *(a1 + 16));
    if (*(v10 + 16))
    {
      v5 = *(v10 + 16);
      v6 = *(a1 + 24);
      v7 = *(v10 + 8);
      __memcpy_chk();
      return 1;
    }

    else
    {
      return 0;
    }
  }

  v11 = (a2 + v12[6]);
  v9 = v12[3];
  if (!v9)
  {
    return parse_required_member(a1, v11, a3, 1);
  }

  if (v9 == 1)
  {
    goto LABEL_11;
  }

  if (v9 != 2)
  {
    if (v9 != 3)
    {
      __assert_rtn("parse_member", "protobuf-c.c", 2931, "0");
    }

LABEL_11:
    if ((v12[12] & 4) != 0)
    {
      return parse_oneof_member(a1, v11, a2, a3);
    }

    else
    {
      return parse_optional_member(a1, v11, a2, a3);
    }
  }

  if (*(a1 + 4) == 2 && ((v12[12] & 1) != 0 || is_packable_type(v12[4])))
  {
    return parse_packed_repeated_member(a1, v11, a2);
  }

  else
  {
    return parse_repeated_member(a1, v11, a2, a3);
  }
}

void *protobuf_c_message_free_unpacked(void *result, uint64_t (**a2)())
{
  v17 = result;
  v16 = a2;
  if (result)
  {
    v15 = *result;
    if (**result != 682290937)
    {
      __assert_rtn("protobuf_c_message_free_unpacked", "protobuf-c.c", 3330, "((message)->descriptor)->magic == PROTOBUF_C__MESSAGE_DESCRIPTOR_MAGIC");
    }

    if (!a2)
    {
      v16 = protobuf_c__allocator;
    }

    *result = 0;
    for (i = 0; i < v15[12]; ++i)
    {
      if ((*(*(v15 + 7) + 72 * i + 48) & 4) == 0 || *(*(v15 + 7) + 72 * i + 8) == *(v17 + *(*(v15 + 7) + 72 * i + 20)))
      {
        if (*(*(v15 + 7) + 72 * i + 12) == 2)
        {
          v12 = *(v17 + *(*(v15 + 7) + 72 * i + 20));
          v11 = *(v17 + *(*(v15 + 7) + 72 * i + 24));
          if (v11)
          {
            switch(*(*(v15 + 7) + 72 * i + 16))
            {
              case 0xE:
                for (j = 0; j < v12; ++j)
                {
                  do_free(v16, *(v11 + 8 * j));
                }

                break;
              case 0xF:
                for (k = 0; k < v12; ++k)
                {
                  do_free(v16, *(v11 + 16 * k + 8));
                }

                break;
              case 0x10:
                for (m = 0; m < v12; ++m)
                {
                  protobuf_c_message_free_unpacked(*(v11 + 8 * m), v16);
                }

                break;
            }

            do_free(v16, v11);
          }
        }

        else
        {
          switch(*(*(v15 + 7) + 72 * i + 16))
          {
            case 0xE:
              v7 = *(v17 + *(*(v15 + 7) + 72 * i + 24));
              if (v7 && v7 != *(*(v15 + 7) + 72 * i + 40))
              {
                do_free(v16, v7);
              }

              break;
            case 0xF:
              v6 = *(v17 + *(*(v15 + 7) + 72 * i + 24) + 8);
              v5 = *(*(v15 + 7) + 72 * i + 40);
              if (v6)
              {
                v2 = *(*(v15 + 7) + 72 * i + 40);
                if (!v5 || (v3 = *(v17 + *(*(v15 + 7) + 72 * i + 24) + 8), *(v5 + 8) != v6))
                {
                  do_free(v16, v6);
                }
              }

              break;
            case 0x10:
              v4 = *(v17 + *(*(v15 + 7) + 72 * i + 24));
              if (v4)
              {
                if (v4 != *(*(v15 + 7) + 72 * i + 40))
                {
                  protobuf_c_message_free_unpacked(v4, v16);
                }
              }

              break;
          }
        }
      }
    }

    for (n = 0; n < *(v17 + 8); ++n)
    {
      do_free(v16, *(*(v17 + 16) + 24 * n + 16));
    }

    if (*(v17 + 16))
    {
      do_free(v16, *(v17 + 16));
    }

    return do_free(v16, v17);
  }

  return result;
}

uint64_t get_tag_size(unsigned int a1)
{
  if (a1 < 0x10uLL)
  {
    return 1;
  }

  if (a1 < 0x800uLL)
  {
    return 2;
  }

  if (a1 < 0x40000uLL)
  {
    return 3;
  }

  if (a1 >= 0x2000000uLL)
  {
    return 5;
  }

  return 4;
}

uint64_t int32_size(int a1)
{
  if (a1 < 0)
  {
    return 10;
  }

  if (a1 < 128)
  {
    return 1;
  }

  if (a1 < 0x4000)
  {
    return 2;
  }

  if (a1 < 0x200000)
  {
    return 3;
  }

  if (a1 >= 0x10000000)
  {
    return 5;
  }

  return 4;
}

uint64_t uint32_size(unsigned int a1)
{
  if (a1 < 0x80uLL)
  {
    return 1;
  }

  if (a1 < 0x4000uLL)
  {
    return 2;
  }

  if (a1 < 0x200000uLL)
  {
    return 3;
  }

  if (a1 >= 0x10000000uLL)
  {
    return 5;
  }

  return 4;
}

uint64_t uint64_size(uint64_t a1)
{
  if (!HIDWORD(a1))
  {
    return uint32_size(a1);
  }

  if (HIDWORD(a1) < 8uLL)
  {
    return 5;
  }

  if (HIDWORD(a1) < 0x400uLL)
  {
    return 6;
  }

  if (HIDWORD(a1) < 0x20000uLL)
  {
    return 7;
  }

  if (HIDWORD(a1) < 0x1000000uLL)
  {
    return 8;
  }

  if (HIDWORD(a1) >= 0x80000000uLL)
  {
    return 10;
  }

  return 9;
}

BOOL field_is_zeroish(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 16);
  if (v4 <= 2)
  {
    return *a2 == 0;
  }

  if (v4 - 3 <= 2)
  {
    return *a2 == 0;
  }

  switch(v4)
  {
    case 7u:
    case 6u:
      return *a2 == 0;
    case 9u:
    case 8u:
      return *a2 == 0;
    case 0xAu:
      return *a2 == 0.0;
    case 0xBu:
      return *a2 == 0.0;
    case 0xCu:
      v5 = *a2 == 0;
      break;
    case 0xDu:
      return *a2 == 0;
    case 0xEu:
      v3 = 1;
      if (*a2)
      {
        v3 = **a2 == 0;
      }

      v5 = v3;
      break;
    default:
      v5 = v4 != 16 && v4 != 15 || *a2 == 0;
      break;
  }

  return v5;
}

uint64_t tag_pack(unsigned int a1, _BYTE *a2)
{
  if (a1 >= 0x20000000uLL)
  {
    return uint64_pack(8 * a1, a2);
  }

  else
  {
    return uint32_pack(8 * a1, a2);
  }
}

uint64_t int32_pack(signed int a1, _BYTE *a2)
{
  if ((a1 & 0x80000000) == 0)
  {
    return uint32_pack(a1, a2);
  }

  *a2 = a1 | 0x80;
  a2[1] = (a1 >> 7) | 0x80;
  a2[2] = (a1 >> 14) | 0x80;
  a2[3] = (a1 >> 21) | 0x80;
  a2[4] = (a1 >> 28) | 0x80;
  a2[8] = -1;
  a2[7] = -1;
  a2[6] = -1;
  a2[5] = -1;
  a2[9] = 1;
  return 10;
}

uint64_t uint32_pack(unsigned int a1, _BYTE *a2)
{
  LOBYTE(v4) = a1;
  v3 = 0;
  if (a1 >= 0x80)
  {
    v3 = 1;
    *a2 = a1 | 0x80;
    v4 = a1 >> 7;
    if (a1 >> 7 >= 0x80)
    {
      v3 = 2;
      a2[1] = v4 | 0x80;
      v4 = a1 >> 14;
      if (a1 >> 14 >= 0x80)
      {
        v3 = 3;
        a2[2] = v4 | 0x80;
        v4 = a1 >> 21;
        if (a1 >> 21 >= 0x80)
        {
          v3 = 4;
          a2[3] = v4 | 0x80;
          v4 = a1 >> 28;
        }
      }
    }
  }

  a2[v3] = v4;
  return v3 + 1;
}

uint64_t uint64_pack(uint64_t a1, _BYTE *a2)
{
  if (!HIDWORD(a1))
  {
    return uint32_pack(a1, a2);
  }

  *a2 = a1 | 0x80;
  a2[1] = (a1 >> 7) | 0x80;
  a2[2] = (a1 >> 14) | 0x80;
  a2[3] = (a1 >> 21) | 0x80;
  if (HIDWORD(a1) >= 8)
  {
    a2[4] = (a1 >> 28) | (16 * (BYTE4(a1) & 7)) | 0x80;
    v5 = HIDWORD(a1) >> 3;
    v4 = 5;
    while (v5 >= 0x80)
    {
      v2 = v4++;
      a2[v2] = v5 | 0x80;
      v5 >>= 7;
    }

    a2[v4] = v5;
    return v4 + 1;
  }

  else
  {
    a2[4] = (a1 >> 28) | (16 * BYTE4(a1));
    return 5;
  }
}

uint64_t string_pack(const char *a1, _BYTE *a2)
{
  if (a1)
  {
    v4 = strlen(a1);
    v3 = uint32_pack(v4, a2);
    __memcpy_chk();
    return v3 + v4;
  }

  else
  {
    *a2 = 0;
    return 1;
  }
}

uint64_t binary_data_pack(uint64_t *a1, _BYTE *a2)
{
  v5 = *a1;
  v4 = uint32_pack(*a1, a2);
  v2 = a1[1];
  __memcpy_chk();
  return v4 + v5;
}

uint64_t prefixed_message_pack(uint64_t a1, _BYTE *a2)
{
  if (a1)
  {
    v3 = protobuf_c_message_pack(a1, a2 + 1);
    if (uint32_size(v3) != 1)
    {
      __memmove_chk();
    }

    return uint32_pack(v3, a2) + v3;
  }

  else
  {
    *a2 = 0;
    return 1;
  }
}

uint64_t get_type_min_size(int a1)
{
  if (a1 == 2 || a1 == 7 || a1 == 10)
  {
    return 4;
  }

  else if (a1 == 5 || a1 == 9 || a1 == 11)
  {
    return 8;
  }

  else
  {
    return 1;
  }
}

uint64_t max_b128_numbers(uint64_t a1, _BYTE *a2)
{
  v5 = 0;
  while (a1--)
  {
    v3 = a2++;
    if ((*v3 & 0x80) == 0)
    {
      ++v5;
    }
  }

  return v5;
}

BOOL parse_required_member(uint64_t a1, uint64_t *a2, uint64_t (**a3)(), int a4)
{
  v17 = *(a1 + 16);
  v16 = *(a1 + 24);
  v15 = *(a1 + 4);
  switch(*(*(a1 + 8) + 16))
  {
    case 0:
    case 0xD:
      if (v15)
      {
        return 0;
      }

      else
      {
        *a2 = parse_int32(v17, v16);
        return 1;
      }

    case 1:
      if (v15)
      {
        return 0;
      }

      else
      {
        v4 = parse_uint32(v17, v16);
        *a2 = unzigzag32(v4);
        return 1;
      }

    case 2:
    case 7:
    case 0xA:
      if (v15 == 5)
      {
        *a2 = parse_fixed_uint32(v16);
        return 1;
      }

      else
      {
        return 0;
      }

    case 3:
    case 8:
      if (v15)
      {
        return 0;
      }

      else
      {
        *a2 = parse_uint64(v17, v16);
        return 1;
      }

    case 4:
      if (v15)
      {
        return 0;
      }

      else
      {
        v5 = parse_uint64(v17, v16);
        *a2 = unzigzag64(v5);
        return 1;
      }

    case 5:
    case 9:
    case 0xB:
      if (v15 == 1)
      {
        *a2 = parse_fixed_uint64(v16);
        return 1;
      }

      else
      {
        return 0;
      }

    case 6:
      if (v15)
      {
        return 0;
      }

      else
      {
        *a2 = parse_uint32(v17, v16);
        return 1;
      }

    case 0xC:
      *a2 = parse_BOOLean(v17, v16);
      return 1;
    case 0xE:
      v14 = *(a1 + 5);
      if (v15 == 2)
      {
        if (a4 && *a2 && *a2 != *(*(a1 + 8) + 40))
        {
          do_free(a3, *a2);
        }

        *a2 = do_alloc(a3, v17 - v14 + 1);
        if (*a2)
        {
          v6 = *a2;
          __memcpy_chk();
          *(*a2 + v17 - v14) = 0;
          return 1;
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

    case 0xF:
      v12 = *(a1 + 5);
      if (v15 != 2)
      {
        return 0;
      }

      v13 = *(*(a1 + 8) + 40);
      if (a4 && a2[1] && (!v13 || a2[1] != *(v13 + 8)))
      {
        do_free(a3, a2[1]);
      }

      if (v17 > v12)
      {
        a2[1] = do_alloc(a3, v17 - v12);
        if (!a2[1])
        {
          return 0;
        }

        v7 = a2[1];
        __memcpy_chk();
      }

      else
      {
        a2[1] = 0;
      }

      *a2 = v17 - v12;
      return 1;
    case 0x10:
      v9 = 1;
      if (v15 == 2)
      {
        v10 = *(*(a1 + 8) + 40);
        v11 = protobuf_c_message_unpack(*(*(a1 + 8) + 32), a3, v17 - *(a1 + 5), v16 + *(a1 + 5));
        if (a4 && *a2 && *a2 != v10)
        {
          if (v11)
          {
            v9 = merge_messages(*a2, v11, a3);
          }

          protobuf_c_message_free_unpacked(*a2, a3);
        }

        *a2 = v11;
        return v11 && v9;
      }

      else
      {
        return 0;
      }

    default:
      return 0;
  }
}

uint64_t parse_oneof_member(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (**a4)())
{
  v9 = (a3 + *(*(a1 + 8) + 20));
  if (*v9)
  {
    v7 = int_range_lookup(*(*a3 + 72), *(*a3 + 80), *v9);
    if ((v7 & 0x80000000) != 0)
    {
      return 0;
    }

    v8 = *(*a3 + 56) + 72 * v7;
    sizeof_elt_in_repeated_array(*(v8 + 16));
    v5 = *(v8 + 16);
    if (v5 == 14)
    {
      if (*a2 && *a2 != *(v8 + 40))
      {
        do_free(a4, *a2);
      }
    }

    else if (v5 == 15)
    {
      v6 = *(v8 + 40);
      if (a2[1] && (!v6 || a2[1] != *(v6 + 8)))
      {
        do_free(a4, a2[1]);
      }
    }

    else if (v5 == 16 && *a2 && *a2 != *(v8 + 40))
    {
      protobuf_c_message_free_unpacked(*a2, a4);
    }

    __memset_chk();
  }

  if (parse_required_member(a1, a2, a4, 1))
  {
    *v9 = *a1;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t parse_optional_member(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (**a4)())
{
  if (parse_required_member(a1, a2, a4, 1))
  {
    if (*(*(a1 + 8) + 20))
    {
      *(a3 + *(*(a1 + 8) + 20)) = 1;
    }

    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t parse_packed_repeated_member(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *(a1 + 8);
  v29 = (a3 + *(v30 + 20));
  v28 = *a2 + sizeof_elt_in_repeated_array(*(v30 + 16)) * *v29;
  v27 = (*(a1 + 24) + *(a1 + 5));
  v26 = *(a1 + 16) - *(a1 + 5);
  v24 = 0;
  switch(*(v30 + 16))
  {
    case 0:
    case 0xD:
      while (2)
      {
        if (!v26)
        {
          goto LABEL_35;
        }

        v23 = scan_varint(v26, v27);
        if (v23)
        {
          v3 = parse_int32(v23, v27);
          v4 = v24++;
          *(v28 + 4 * v4) = v3;
          v27 += v23;
          v26 -= v23;
          continue;
        }

        return 0;
      }

    case 1:
      while (2)
      {
        if (!v26)
        {
          goto LABEL_35;
        }

        v22 = scan_varint(v26, v27);
        if (v22)
        {
          v5 = parse_uint32(v22, v27);
          v6 = unzigzag32(v5);
          v7 = v24++;
          *(v28 + 4 * v7) = v6;
          v27 += v22;
          v26 -= v22;
          continue;
        }

        return 0;
      }

    case 2:
    case 7:
    case 0xA:
      v25 = (*(a1 + 16) - *(a1 + 5)) / 4;
      goto LABEL_36;
    case 3:
    case 8:
      while (2)
      {
        if (!v26)
        {
          goto LABEL_35;
        }

        v19 = scan_varint(v26, v27);
        if (v19)
        {
          v13 = parse_uint64(v19, v27);
          v14 = v24++;
          *(v28 + 8 * v14) = v13;
          v27 += v19;
          v26 -= v19;
          continue;
        }

        return 0;
      }

    case 4:
      while (2)
      {
        if (!v26)
        {
          goto LABEL_35;
        }

        v20 = scan_varint(v26, v27);
        if (v20)
        {
          v10 = parse_uint64(v20, v27);
          v11 = unzigzag64(v10);
          v12 = v24++;
          *(v28 + 8 * v12) = v11;
          v27 += v20;
          v26 -= v20;
          continue;
        }

        return 0;
      }

    case 5:
    case 9:
    case 0xB:
      v25 = (*(a1 + 16) - *(a1 + 5)) / 8;
LABEL_36:
      __memcpy_chk();
      *v29 += v25;
      return 1;
    case 6:
      while (2)
      {
        if (!v26)
        {
          goto LABEL_35;
        }

        v21 = scan_varint(v26, v27);
        if (v21)
        {
          v8 = parse_uint32(v21, v27);
          v9 = v24++;
          *(v28 + 4 * v9) = v8;
          v27 += v21;
          v26 -= v21;
          continue;
        }

        return 0;
      }

    case 0xC:
      break;
    default:
      __assert_rtn("parse_packed_repeated_member", "protobuf-c.c", 2860, "0");
  }

  while (v26)
  {
    v18 = scan_varint(v26, v27);
    if (!v18)
    {
      return 0;
    }

    v15 = parse_BOOLean(v18, v27);
    v16 = v24++;
    *(v28 + 4 * v16) = v15;
    v27 += v18;
    v26 -= v18;
  }

LABEL_35:
  *v29 += v24;
  return 1;
}

uint64_t parse_repeated_member(uint64_t a1, void *a2, uint64_t a3, uint64_t (**a4)())
{
  v7 = *(a1 + 8);
  v6 = (a3 + *(v7 + 20));
  v4 = sizeof_elt_in_repeated_array(*(v7 + 16));
  if (parse_required_member(a1, (*a2 + v4 * *v6), a4, 0))
  {
    ++*v6;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t parse_uint32(unsigned int a1, _BYTE *a2)
{
  v3 = *a2 & 0x7F;
  if (a1 > 1)
  {
    v3 |= (a2[1] & 0x7F) << 7;
    if (a1 > 2)
    {
      v3 |= (a2[2] & 0x7F) << 14;
      if (a1 > 3)
      {
        v3 |= (a2[3] & 0x7F) << 21;
        if (a1 > 4)
        {
          v3 |= a2[4] << 28;
        }
      }
    }
  }

  return v3;
}

unint64_t parse_uint64(unsigned int a1, _BYTE *a2)
{
  if (a1 < 5)
  {
    return parse_uint32(a1, a2);
  }

  v3 = *a2 & 0x7F | ((a2[1] & 0x7F) << 7) | ((a2[2] & 0x7F) << 14) | ((a2[3] & 0x7F) << 21);
  v5 = 28;
  for (i = 4; i < a1; ++i)
  {
    v3 |= (a2[i] & 0x7F) << v5;
    v5 += 7;
  }

  return v3;
}

uint64_t parse_BOOLean(unsigned int a1, uint64_t a2)
{
  for (i = 0; i < a1; ++i)
  {
    if ((*(a2 + i) & 0x7F) != 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t merge_messages(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = *(*a2 + 56);
  for (i = 0; i < *(*a2 + 48); ++i)
  {
    if (*(v32 + 72 * i + 12) == 2)
    {
      v31 = (a1 + *(v32 + 72 * i + 20));
      v30 = (a1 + *(v32 + 72 * i + 24));
      v29 = (a2 + *(v32 + 72 * i + 20));
      v28 = (a2 + *(v32 + 72 * i + 24));
      if (*v31)
      {
        if (*v29)
        {
          v27 = sizeof_elt_in_repeated_array(*(v32 + 72 * i + 16));
          v26 = do_alloc(a3, (*v31 + *v29) * v27);
          if (!v26)
          {
            return 0;
          }

          v3 = *v30;
          v4 = *v31;
          __memcpy_chk();
          v5 = v26 + *v31 * v27;
          v6 = *v28;
          v7 = *v29;
          __memcpy_chk();
          do_free(a3, *v28);
          do_free(a3, *v30);
          *v28 = v26;
          *v29 += *v31;
        }

        else
        {
          *v29 = *v31;
          *v28 = *v30;
        }

        *v31 = 0;
        *v30 = 0;
      }
    }

    else if (*(v32 + 72 * i + 12) == 1 || *(v32 + 72 * i + 12) == 3)
    {
      v24 = (a1 + *(v32 + 72 * i + 20));
      v23 = (a2 + *(v32 + 72 * i + 20));
      v22 = 0;
      if ((*(v32 + 72 * i + 48) & 4) != 0)
      {
        if (*v23)
        {
          continue;
        }

        v18 = int_range_lookup(*(*a2 + 72), *(*a2 + 80), *v24);
        if (v18 < 0)
        {
          return 0;
        }

        v25 = *(*a2 + 56) + 72 * v18;
      }

      else
      {
        v25 = v32 + 72 * i;
      }

      v21 = (a1 + *(v25 + 24));
      v20 = (a2 + *(v25 + 24));
      v19 = *(v25 + 40);
      v14 = *(v25 + 16);
      switch(v14)
      {
        case 14:
          v10 = 0;
          if (*v21 != v19)
          {
            v10 = *v20 == v19;
          }

          v22 = v10;
          break;
        case 15:
          v16 = v21[1];
          v15 = v20[1];
          v13 = 0;
          if (v16)
          {
            if (!v19 || (v13 = 0, v16 != *(v19 + 8)))
            {
              v12 = 1;
              if (v15)
              {
                v11 = 0;
                if (v19)
                {
                  v11 = v15 == *(v19 + 8);
                }

                v12 = v11;
              }

              v13 = v12;
            }
          }

          v22 = v13 & 1;
          break;
        case 16:
          v17 = *v20;
          if (*v21)
          {
            if (v17)
            {
              if (!merge_messages(*v21, v17, a3))
              {
                return 0;
              }

              v22 = 0;
            }

            else
            {
              v22 = 1;
            }
          }

          break;
        default:
          v9 = 0;
          if (*v24)
          {
            v9 = *v23 == 0;
          }

          v22 = v9;
          break;
      }

      if (v22)
      {
        sizeof_elt_in_repeated_array(*(v25 + 16));
        __memcpy_chk();
        __memset_chk();
        if (*(v25 + 20))
        {
          *v23 = *v24;
          *v24 = 0;
        }
      }
    }
  }

  return 1;
}

uint64_t scan_varint(unsigned int a1, uint64_t a2)
{
  v4 = a1;
  if (a1 > 0xA)
  {
    v4 = 10;
  }

    ;
  }

  if (i == v4)
  {
    return 0;
  }

  else
  {
    return i + 1;
  }
}

void mmcs_padded_chunk_length_with_policy_and_chunk_length_cold_5(uint64_t a1)
{
  v2 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unsupported MMCSPaddingPolicy %ld requested", a1);
    v4 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v6 = v3;
      _os_log_impl(&dword_2577D8000, v4, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  __assert_rtn("mmcs_padded_chunk_length_with_policy_and_chunk_length", "mmcs_chunk.c", 426, "false && Unsupported MMCSPaddingPolicy Requested");
}

void send_request_downloadChunks_cold_9(const __CFAllocator *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = CFStringCreateWithFormat(a1, 0, @"unable to find first item for authGetChunks");
    v4 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0(&dword_2577D8000, v5, v6, "%{public}@", v7, v8, v9, v10, 2u);
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void send_request_downloadChunks_cold_10(const __CFAllocator *a1)
{
  v2 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = CFStringCreateWithFormat(a1, 0, @"unable to add token header");
    v4 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0(&dword_2577D8000, v5, v6, "%{public}@", v7, v8, v9, v10, 2u);
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  __assert_rtn("send_request_authorizeGetForChunks", "mmcs_get.c", 1223, "addedAuthTokenHeader");
}

void HttpContextPerformBlockAsync_cold_1(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBECE8];
  [a1 isValid];
  [a1 isTaskDone];
  OUTLINED_FUNCTION_0_0();
  v3 = CFStringCreateWithFormat(v2, 0, @"HTTPContext %@ is %s and %s but is missing runloop or mode");
  v4 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1(&dword_2577D8000, v5, v6, "%{public}@", v7, v8, v9, v10, v12, v13, v14, v15, 2u);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void mmcs_get_file_candidate_completed_with_success_cold_2(uint64_t a1)
{
  v2 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"outstanding chunk references is not empty! %@", *(*a1 + 280));
    v4 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v6 = v3;
      _os_log_impl(&dword_2577D8000, v4, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  __assert_rtn("mmcs_get_file_candidate_completed_with_success", "mmcs_get_file.c", 462, "0 && get file completed successfully but still has outstanding chunk references");
}

void mmcs_get_state_decrement_outstanding_chunk_references_count_cold_1(uint64_t *a1, uint64_t a2)
{
  v4 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v13 = *a1;
    v14 = a2;
    v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk count %ld for %@ went out of whack");
    v6 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0_1(&dword_2577D8000, v7, v8, "%{public}@", v9, v10, v11, v12, v13, v14, 2u);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  __assert_rtn("mmcs_get_state_decrement_outstanding_chunk_references_count", "mmcs_get_state.c", 310, "0 && bad chunk count when decrementing");
}

void mmcs_get_state_decrement_outstanding_chunk_references_count_cold_4(uint64_t *a1, uint64_t a2)
{
  v4 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v13 = a2;
    v14 = *a1;
    v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"couldn't find %@ in %@");
    v6 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0_1(&dword_2577D8000, v7, v8, "%{public}@", v9, v10, v11, v12, v13, v14, 2u);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  __assert_rtn("mmcs_get_state_decrement_outstanding_chunk_references_count", "mmcs_get_state.c", 314, "0 && chunk accounting lost a chunk somewhere");
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}