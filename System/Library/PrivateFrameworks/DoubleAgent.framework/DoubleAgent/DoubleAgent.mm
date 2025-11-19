uint64_t sub_100000948(uint64_t a1, mach_port_name_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7)
{
  v13 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(qword_100008048, OS_LOG_TYPE_DEBUG))
  {
    sub_100001BC8();
  }

  v14 = fileport_makefd();
  mach_port_deallocate(mach_task_self_, a2);
  if ((v14 & 0x80000000) != 0)
  {
    *a5 = 9;
  }

  else
  {
    v15 = +[DoubleAgentManager defaultManager];
    v16 = [NSString stringWithUTF8String:a4];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100000ACC;
    v18[3] = &unk_1000041C0;
    v18[4] = a6;
    v18[5] = a7;
    v18[6] = a5;
    v19 = v14;
    [v15 lookupXattrIn:v14 fileSize:a3 named:v16 reply:v18];
  }

  objc_autoreleasePoolPop(v13);
  if (os_log_type_enabled(qword_100008048, OS_LOG_TYPE_DEBUG))
  {
    sub_100001C48(a5);
  }

  return 0;
}

uint64_t sub_100000ACC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    a3 = 0;
  }

  v5 = *(a1 + 40);
  **(a1 + 32) = a3;
  if (a2)
  {
    a4 = 0;
  }

  *v5 = a4;
  **(a1 + 48) = a2;
  return close(*(a1 + 56));
}

uint64_t sub_100000AF4(uint64_t a1, mach_port_name_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7, uint64_t a8)
{
  v15 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(qword_100008048, OS_LOG_TYPE_DEBUG))
  {
    sub_100001CC4();
  }

  v16 = fileport_makefd();
  mach_port_deallocate(mach_task_self_, a2);
  if ((v16 & 0x80000000) != 0)
  {
    *a7 = 9;
  }

  else
  {
    v17 = +[DoubleAgentManager defaultManager];
    v18 = [NSString stringWithUTF8String:a4];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100000C80;
    v20[3] = &unk_1000041E0;
    v20[4] = a8;
    v20[5] = a7;
    v21 = v16;
    [v17 allocateXattrIn:v16 fileSize:a3 named:v18 sized:a5 how:a6 reply:v20];
  }

  objc_autoreleasePoolPop(v15);
  if (os_log_type_enabled(qword_100008048, OS_LOG_TYPE_DEBUG))
  {
    sub_100001D44(a7);
  }

  return 0;
}

uint64_t sub_100000C80(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    a3 = 0;
  }

  v4 = *(a1 + 40);
  **(a1 + 32) = a3;
  *v4 = a2;
  return close(*(a1 + 48));
}

uint64_t sub_100000C9C(uint64_t a1, mach_port_name_t a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v9 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(qword_100008048, OS_LOG_TYPE_DEBUG))
  {
    sub_100001DC0();
  }

  v10 = fileport_makefd();
  mach_port_deallocate(mach_task_self_, a2);
  if ((v10 & 0x80000000) != 0)
  {
    *a4 = 9;
  }

  else
  {
    v11 = +[DoubleAgentManager defaultManager];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100000DE8;
    v13[3] = &unk_100004200;
    v13[4] = a4;
    v13[5] = a5;
    v14 = v10;
    [v11 listXattrsIn:v10 fileSize:a3 reply:v13];
  }

  objc_autoreleasePoolPop(v9);
  if (os_log_type_enabled(qword_100008048, OS_LOG_TYPE_DEBUG))
  {
    sub_100001E40(a4);
  }

  return 0;
}

uint64_t sub_100000DE8(uint64_t a1, int a2, id a3)
{
  **(a1 + 32) = a2;
  if (!a2)
  {
    memcpy(*(a1 + 40), [a3 bytes], 0x8868uLL);
  }

  v4 = *(a1 + 48);

  return close(v4);
}

uint64_t sub_100000E50(uint64_t a1, mach_port_name_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6)
{
  v11 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(qword_100008048, OS_LOG_TYPE_DEBUG))
  {
    sub_100001EBC();
  }

  v12 = fileport_makefd();
  mach_port_deallocate(mach_task_self_, a2);
  if ((v12 & 0x80000000) != 0)
  {
    *a5 = 9;
  }

  else
  {
    v13 = +[DoubleAgentManager defaultManager];
    v14 = [NSString stringWithUTF8String:a4];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100000FC4;
    v16[3] = &unk_100004220;
    v16[4] = a6;
    v16[5] = a5;
    v17 = v12;
    [v13 removeXattrOf:v12 fileSize:a3 named:v14 reply:v16];
  }

  objc_autoreleasePoolPop(v11);
  if (os_log_type_enabled(qword_100008048, OS_LOG_TYPE_DEBUG))
  {
    sub_100001F3C(a5);
  }

  return 0;
}

uint64_t sub_100000FC4(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = a3;
  }

  v4 = *(a1 + 40);
  **(a1 + 32) = v3;
  *v4 = a2;
  return close(*(a1 + 48));
}

void start()
{
  v0 = os_log_create("com.apple.DoubleAgent", "main");
  v1 = qword_100008048;
  qword_100008048 = v0;

  v2 = bootstrap_check_in(bootstrap_port, "com.apple.doubleagentd", &dword_100008050);
  if (v2)
  {
    v6 = v2;
    v7 = qword_100008048;
    if (os_log_type_enabled(qword_100008048, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      *buf = 136315650;
      v18 = "com.apple.doubleagentd";
      v19 = 2080;
      v20 = bootstrap_strerror(v6);
      v21 = 1024;
      v22 = v6;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Could not get receive right for %s: %s (%d)\n", buf, 0x1Cu);
    }

LABEL_12:
    exit(1);
  }

  v3 = dispatch_queue_create("com.apple.doubleagentd.kernel_upcall_queue", 0);
  if (v3)
  {
    v9 = v3;
    f = dispatch_mach_create_f();
    v11 = qword_100008058;
    qword_100008058 = f;

    dispatch_set_qos_class_fallback();
    v12 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v9);
    dispatch_source_set_event_handler_f(v12, sub_100001494);
    dispatch_activate(v12);
    qword_100008040 = malloc_type_calloc(0x10uLL, 8uLL, 0x80040B8603338uLL);
    if (qword_100008040)
    {
      for (i = 0; i != 16; ++i)
      {
        snprintf(buf, 0x1DuLL, "%s%d", "com.apple.doubleagentd.wq_", i);
        v14 = dispatch_queue_create(buf, 0);
        v15 = *(qword_100008040 + 8 * i);
        *(qword_100008040 + 8 * i) = v14;
      }

      dispatch_mach_connect();
      v16 = qword_100008048;
      if (os_log_type_enabled(qword_100008048, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v18) = 16;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "ready:%d", buf, 8u);
      }

      dispatch_main();
    }

    v4 = doubleagent_std_log();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 136315138;
    v18 = "main";
    v5 = "%s: Failed to allocate work queues array.";
  }

  else
  {
    v4 = doubleagent_std_log();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
LABEL_11:

      goto LABEL_12;
    }

    *buf = 136315138;
    v18 = "main";
    v5 = "%s: Failed to create main queue.";
  }

  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, v5, buf, 0xCu);
  goto LABEL_11;
}

void sub_1000012DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (os_log_type_enabled(qword_100008048, OS_LOG_TYPE_DEBUG))
  {
    sub_100001FB8();
  }

  if (a2 == 8)
  {
    v6 = mach_port_mod_refs(mach_task_self_, dword_100008050, 1u, -1);
    if (v6)
    {
      v7 = v6;
      v8 = qword_100008048;
      if (os_log_type_enabled(qword_100008048, OS_LOG_TYPE_ERROR))
      {
        sub_100002128(v7, v8);
      }
    }

    if (os_log_type_enabled(qword_100008048, OS_LOG_TYPE_DEBUG))
    {
      sub_1000021B4();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100008048, OS_LOG_TYPE_DEBUG))
    {
      sub_100002028();
    }

    v9 = *(qword_100008040 + 8 * dword_100008060);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000014A0;
    block[3] = &unk_100004248;
    v13 = a2;
    v14 = a1;
    v12 = v5;
    dispatch_async(v9, block);
    v10 = (dword_100008060 + 1) & 0xF;
    if (dword_100008060 + 1 <= 0)
    {
      v10 = -(-(dword_100008060 + 1) & 0xF);
    }

    dword_100008060 = v10;
    if (os_log_type_enabled(qword_100008048, OS_LOG_TYPE_DEBUG))
    {
      sub_1000020A8();
    }
  }
}

void sub_1000014A0(void *a1)
{
  label = dispatch_queue_get_label(0);
  if (os_log_type_enabled(qword_100008048, OS_LOG_TYPE_DEBUG))
  {
    sub_1000021F4(label, a1);
  }

  v3 = a1[5];
  if (v3 == 1)
  {
    goto LABEL_11;
  }

  if (v3 != 2)
  {
    if (os_log_type_enabled(qword_100008048, OS_LOG_TYPE_ERROR))
    {
      sub_1000022F0(label, a1 + 5);
    }

LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  v4 = os_transaction_create();
  v5 = a1[6];
  v6 = a1[4];
  if ((dispatch_mach_mig_demux() & 1) == 0)
  {
    if (os_log_type_enabled(qword_100008048, OS_LOG_TYPE_ERROR))
    {
      sub_10000227C();
    }

    v7 = a1[4];
    msg = dispatch_mach_msg_get_msg();
    mach_msg_destroy(msg);
  }

LABEL_12:
  if (os_log_type_enabled(qword_100008048, OS_LOG_TYPE_DEBUG))
  {
    sub_100002378();
  }
}

unsigned int *sub_100001604@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

uint64_t sub_100001610(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 6304) >= 0xFFFFFFFC)
  {
    return *(&off_100004268 + 5 * (v1 - 6300) + 5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000164C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v4 = result;
  v3 = -304;
  if (*(result + 24) != 1)
  {
    goto LABEL_3;
  }

  v5 = *(result + 4);
  if ((v5 - 193) < 0xFFFFFF7F)
  {
    goto LABEL_3;
  }

  if (*(result + 38) << 16 != 1114112)
  {
    v3 = -300;
    goto LABEL_3;
  }

  v6 = *(result + 60);
  v3 = -304;
  if (v6 > 0x80 || v5 - 64 < v6)
  {
    goto LABEL_3;
  }

  if (v5 != ((v6 + 3) & 0x1FC) + 64 || (result = memchr((result + 64), 0, v5 - 64)) == 0)
  {
LABEL_2:
    v3 = -304;
LABEL_3:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v7 = ((v5 + 3) & 0x1FC) + v4;
  if (*v7 || *(v7 + 4) <= 0x1Fu)
  {
    v3 = -309;
    goto LABEL_3;
  }

  v8 = *(v7 + 20);
  v9 = *(v7 + 36);
  result = sub_100000948(*(v4 + 12), *(v4 + 28), *(v4 + 48), v4 + 64, (a2 + 36), a2 + 40, a2 + 48);
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 56;
  }

  return result;
}

uint64_t sub_100001798(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v4 = result;
  v3 = -304;
  if (*(result + 24) != 1)
  {
    goto LABEL_3;
  }

  v5 = *(result + 4);
  if (v5 - 205 < 0xFFFFFF7F)
  {
    goto LABEL_3;
  }

  if (*(result + 38) << 16 != 1114112)
  {
    v3 = -300;
    goto LABEL_3;
  }

  v6 = *(result + 60);
  if (v6 > 0x80)
  {
    goto LABEL_2;
  }

  v3 = -304;
  if (v5 - 76 < v6)
  {
    goto LABEL_3;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v5 != v7 + 76)
  {
    goto LABEL_3;
  }

  v8 = v5 >= 0xC0 ? 192 : v5;
  result = memchr((result + 64), 0, v8 - 64);
  if (!result)
  {
LABEL_2:
    v3 = -304;
LABEL_3:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v9 = ((v5 + 3) & 0x1FC) + v4;
  if (*v9 || *(v9 + 4) <= 0x1Fu)
  {
    v3 = -309;
    goto LABEL_3;
  }

  v10 = *(v9 + 20);
  v11 = *(v9 + 36);
  result = sub_100000AF4(*(v4 + 12), *(v4 + 28), *(v4 + 48), v4 + 64, *(v4 + v7 + 64), *(v4 + v7 + 72), (a2 + 36), a2 + 40);
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 48;
  }

  return result;
}

uint64_t sub_100001900(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
  {
    v3 = -304;
    goto LABEL_9;
  }

  if (*(result + 38) << 16 != 1114112)
  {
    v3 = -300;
    goto LABEL_9;
  }

  if (*(result + 56) || *(result + 60) <= 0x1Fu)
  {
    v3 = -309;
LABEL_9:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 76);
  v5 = *(result + 92);
  result = sub_100000C9C(*(result + 12), *(result + 28), *(result + 48), (a2 + 36), a2 + 40);
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 34960;
  }

  return result;
}

uint64_t sub_1000019E8(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v4 = result;
  v3 = -304;
  if (*(result + 24) != 1)
  {
    goto LABEL_3;
  }

  v5 = *(result + 4);
  if ((v5 - 193) < 0xFFFFFF7F)
  {
    goto LABEL_3;
  }

  if (*(result + 38) << 16 != 1114112)
  {
    v3 = -300;
    goto LABEL_3;
  }

  v6 = *(result + 60);
  v3 = -304;
  if (v6 > 0x80 || v5 - 64 < v6)
  {
    goto LABEL_3;
  }

  if (v5 != ((v6 + 3) & 0x1FC) + 64 || (result = memchr((result + 64), 0, v5 - 64)) == 0)
  {
LABEL_2:
    v3 = -304;
LABEL_3:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v7 = ((v5 + 3) & 0x1FC) + v4;
  if (*v7 || *(v7 + 4) <= 0x1Fu)
  {
    v3 = -309;
    goto LABEL_3;
  }

  v8 = *(v7 + 20);
  v9 = *(v7 + 36);
  result = sub_100000E50(*(v4 + 12), *(v4 + 28), *(v4 + 48), v4 + 64, (a2 + 36), a2 + 40);
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 44;
  }

  return result;
}

uint64_t sub_100001B30(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 6304) >= 0xFFFFFFFC && (v5 = *(&off_100004268 + 5 * (v4 - 6300) + 5)) != 0)
  {
    v5(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

void sub_100001C48(unsigned int *a1)
{
  sub_100001604(a1, __stack_chk_guard);
  sub_1000015D8();
  sub_1000015EC();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100001D44(unsigned int *a1)
{
  sub_100001604(a1, __stack_chk_guard);
  sub_1000015D8();
  sub_1000015EC();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100001E40(unsigned int *a1)
{
  sub_100001604(a1, __stack_chk_guard);
  sub_1000015D8();
  sub_1000015EC();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100001F3C(unsigned int *a1)
{
  sub_100001604(a1, __stack_chk_guard);
  sub_1000015D8();
  sub_1000015EC();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100001FB8()
{
  sub_1000015F8();
  sub_1000015EC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100002128(int a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "mach_channel_handler";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: mach_port_mod_refs failed (%d)\n", &v2, 0x12u);
}

void sub_1000021F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  sub_1000015F8();
  v6 = 2048;
  v7 = v3;
  _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "worker:%s:message:%lu:start", v5, 0x16u);
}

void sub_1000022F0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1000015F8();
  v6 = 2048;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "worker:%s:unsupported:message:%lu.", v5, 0x16u);
}

void sub_100002378()
{
  sub_1000015F8();
  sub_1000015EC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}