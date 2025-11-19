void start()
{
  v0 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, 0);
  dispatch_source_set_event_handler(v0, &stru_100004120);
  dispatch_resume(v0);
  sub_100001238();
  v1 = 0;
  sub_100000F9C(&v1, 0);
  GTMTLReplayController_init();
  GTMTLReplayClient_createNewTransport();
  objc_claimAutoreleasedReturnValue();
  xpc_main(j__xpc_connection_cancel);
}

vm_address_t sub_100000A84(memory_object_size_t a1)
{
  address = 0;
  object_handle = 0;
  size = a1;
  memory_entry_64 = mach_make_memory_entry_64(mach_task_self_, &size, 0, 139267, &object_handle, 0);
  if (memory_entry_64)
  {
    v3 = memory_entry_64;
    v4 = sub_100000C1C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = mach_error_string(v3);
      *buf = 67109378;
      v15 = v3;
      v16 = 2080;
      v17 = v5;
      v6 = "warning: failed to create memory entry error 0x%x (%s)";
LABEL_10:
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, v6, buf, 0x12u);
    }
  }

  else
  {
    v7 = vm_map(mach_task_self_, &address, a1, 0, 1, object_handle, 0, 0, 3, 3, 1u);
    if (!v7)
    {
      mach_port_deallocate(mach_task_self_, object_handle);
      return address;
    }

    v8 = v7;
    v4 = sub_100000C1C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = mach_error_string(v8);
      *buf = 67109378;
      v15 = v8;
      v16 = 2080;
      v17 = v10;
      v6 = "warning: failed to map memory error 0x%x (%s)";
      goto LABEL_10;
    }
  }

  return 0;
}

id sub_100000C1C()
{
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_100000D14;
  v7 = &unk_1000042F8;
  LODWORD(v9) = 3;
  v8 = &qword_100008060;
  if (qword_100008060 != -1)
  {
    dispatch_once(&qword_100008060, &v4);
  }

  if (qword_100008068 && (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults", v4, v5, v6, v7, v8, v9), v0 = objc_claimAutoreleasedReturnValue(), v1 = [v0 BOOLForKey:qword_100008068], v0, !v1))
  {
    v2 = &_os_log_disabled;
  }

  else
  {
    v2 = off_100008070;
  }

  return v2;
}

uint64_t sub_100000D14(uint64_t a1)
{
  v2 = &(&off_100004160)[3 * *(a1 + 40)];
  v3 = *(v2 + 16);
  if (v3 == 1)
  {
    v4 = [NSString stringWithFormat:@"%s.%s.enableLog", *v2, v2[1]];
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong((*(a1 + 32) + 8), v4);
  if (v3)
  {
  }

  v5 = os_log_create(*v2, v2[1]);
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = v5;

  return _objc_release_x1();
}

uint64_t sub_100000DCC(uint64_t a1)
{
  if (qword_1000081B0 == a1)
  {
    qword_1000081B0 = 0;
  }

  return 0;
}

uint64_t **sub_100000DE8(unint64_t *a1, unint64_t a2)
{
  if (a2 >= 0xFD9)
  {
    v2 = (a2 + 4135) & 0xFFFFFFFFFFFFF000;
  }

  else
  {
    v2 = 0x2000;
  }

  if (((a2 + 4135) & 0xFFFFFFFFFFFFF000) < a2 || v2 == 0)
  {
    return 0;
  }

  v4 = v2 >> 12;
  v5 = (v2 >> 12) - 1;
  if (HIDWORD(v5))
  {
    return 0;
  }

  v8 = a1[3];
  if (v8)
  {
    pthread_mutex_lock((v8 + 8));
  }

  v10 = (a1 + 5);
  v9 = *a1;
  if (v5 <= *a1)
  {
    v13 = &v10[v5];
    v6 = *v13;
    v14 = *v13 == 0;
    v15 = v5 < v9;
    if (*v13)
    {
      v16 = 1;
    }

    else
    {
      v16 = v5 >= v9;
    }

    if (!v16)
    {
      do
      {
        v17 = v13[1];
        ++v13;
        v6 = v17;
        v14 = v17 == 0;
        v15 = v4 < v9;
        if (v17)
        {
          v18 = 1;
        }

        else
        {
          v18 = v4 >= v9;
        }

        ++v4;
      }

      while (!v18);
    }

    if (v14)
    {
      goto LABEL_28;
    }

    v21 = *v6;
    *v13 = *v6;
    if (v21 == 0 && !v15)
    {
      v22 = v13 - 1;
      do
      {
        if (*v22--)
        {
          v24 = 1;
        }

        else
        {
          v24 = v9 == 1;
        }

        --v9;
      }

      while (!v24);
      *a1 = v9;
    }

    v12 = (*(v6 + 4) + 1);
LABEL_41:
    v25 = a1[2] + v12;
    if (v25 >= a1[1])
    {
      v25 = a1[1];
    }

    a1[2] = v25;
    v26 = a1[3];
    if (v26)
    {
      pthread_mutex_unlock((v26 + 8));
    }

    goto LABEL_45;
  }

  v6 = *v10;
  if (!*v10)
  {
    goto LABEL_28;
  }

  v11 = *(v6 + 4);
  if (v5 <= v11)
  {
LABEL_17:
    *v10 = *v6;
    v12 = (v11 + 1);
    goto LABEL_41;
  }

  while (1)
  {
    v10 = v6;
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    v11 = *(v6 + 4);
    if (v5 <= v11)
    {
      goto LABEL_17;
    }
  }

LABEL_28:
  v19 = a1[3];
  if (v19)
  {
    pthread_mutex_unlock((v19 + 8));
  }

  v20 = sub_100000A84(v2);
  v6 = v20;
  if (v20)
  {
    *(v20 + 16) = v5;
    *(v20 + 32) = v20 + v2;
LABEL_45:
    *v6 = 0;
    v6[3] = (v6 + 5);
  }

  return v6;
}

uint64_t sub_100000F9C(uint64_t **a1, unint64_t *a2)
{
  v2 = a2;
  *a1 = 0;
  v4 = qword_1000081C8;
  if (qword_1000081C8)
  {
    v5 = *(qword_1000081C8 + 64);
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  if (!a2)
  {
LABEL_3:
    v2 = *(qword_1000081C8 + 48);
  }

LABEL_4:
  v6 = sub_100000DE8(v2, 0x1FD8uLL);
  if (v6)
  {
    *v6 = v6;
    v6[1] = v6;
    v7 = v6[3];
    v6[3] = v7 + 15;
    v7[12] = v6;
    v7[13] = (v7 + 15);
    v7[14] = 0;
    v7[6] = v2;
    v7[7] = 0;
    v7[4] = 0;
    v7[5] = 0;
    v7[10] = 0;
    v7[11] = v6;
    v7[8] = v5;
    v7[9] = 0;
    *v7 = v4;
    v7[1] = 0;
    if (v4)
    {
      v8 = *(*(v4 + 48) + 24);
      if (v8)
      {
        pthread_mutex_lock((v8 + 8));
      }

      v11 = *(v4 + 8);
      v10 = (v4 + 8);
      v9 = v11;
      v7[2] = v11;
      if (v11)
      {
        *(v9 + 24) = v7 + 2;
      }

      *v10 = v7;
      v7[3] = v10;
      if (v8)
      {
        pthread_mutex_unlock((v8 + 8));
      }
    }

    else
    {
      v7[2] = 0;
      v7[3] = 0;
    }

    v12 = 0;
    *a1 = v7;
  }

  else
  {
    v12 = 12;
    if (v5)
    {
      v5(12);
    }
  }

  return v12;
}

uint64_t *sub_10000109C(uint64_t a1, unint64_t a2)
{
  v3 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v3 < a2)
  {
LABEL_2:
    v4 = *(a1 + 64);
    if (v4)
    {
      v4(12);
    }

    return 0;
  }

  v6 = *(a1 + 88);
  result = v6[3];
  if (v3 <= v6[4] - result)
  {
    v6[3] = (result + v3);
    return result;
  }

  v7 = *v6;
  if (v3 <= (*v6)[4] - (*v6)[3])
  {
    v8 = *v7;
    *v7[1] = *v7;
    v8[1] = v7[1];
  }

  else
  {
    v7 = sub_100000DE8(*(a1 + 48), (a2 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (!v7)
    {
      goto LABEL_2;
    }
  }

  *(v7 + 5) = 0;
  result = v7[3];
  v7[3] = (result + v3);
  v9 = v6[1];
  v7[1] = v9;
  *v9 = v7;
  *v7 = v6;
  v6[1] = v7;
  *(a1 + 88) = v7;
  v10 = (v6[4] - v6[3]) >> 12;
  *(v6 + 5) = v10;
  if (v10 < *(*v6 + 5))
  {
    v11 = *v6;
    do
    {
      v11 = *v11;
    }

    while (*(v11 + 5) > v10);
    *v7 = *v6;
    (*v6)[1] = v6[1];
    v12 = v11[1];
    v6[1] = v12;
    *v12 = v6;
    *v6 = v11;
    v11[1] = v6;
  }

  return result;
}

uint64_t *sub_1000011C4(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v7 = result;
    result = result[5];
    if (result)
    {
      *(v7 + 40) = *result;
    }

    else
    {
      result = sub_10000109C(v7, 0x20uLL);
    }

    result[2] = a3;
    result[3] = a4;
    *result = *(v7 + 32);
    result[1] = a2;
    *(v7 + 32) = result;
  }

  return result;
}

void sub_100001238()
{
  if (!dword_1000081D0++)
  {
    v15[7] = v0;
    v15[8] = v1;
    if (byte_1000081B8++)
    {
LABEL_3:
      v15[0] = 0;
      if (!sub_100000F9C(v15, 0))
      {
        v15[0][10] = "apr_initialize";
      }

      return;
    }

    qword_1000081C0 = 0;
    v4 = sub_100000A84(0xC8uLL);
    if (!v4)
    {
LABEL_12:
      byte_1000081B8 = 0;
      return;
    }

    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 192) = 0;
    *(v4 + 160) = 0u;
    *(v4 + 176) = 0u;
    *(v4 + 128) = 0u;
    *(v4 + 144) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 80) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    qword_1000081C0 = v4;
    *(v4 + 8) = vdupq_n_s64(0x8000uLL);
    if (sub_100000F9C(&qword_1000081C8, v4))
    {
      v5 = 0;
      v6 = qword_1000081C0;
      v7 = qword_1000081C0 + 40;
      do
      {
        while (1)
        {
          v8 = *(v7 + 8 * v5);
          if (!v8)
          {
            break;
          }

          *(v7 + 8 * v5) = *v8;
          vm_deallocate(mach_task_self_, v8, ((*(v8 + 16) << 12) + 4096));
        }

        ++v5;
      }

      while (v5 != 20);
      vm_deallocate(mach_task_self_, v6, 0xC8uLL);
      qword_1000081C0 = 0;
      goto LABEL_12;
    }

    v9 = qword_1000081C8;
    *(qword_1000081C8 + 80) = "apr_global_pool";
    if (qword_1000081B0)
    {
LABEL_22:
      v15[0] = 0;
      if (sub_10000144C(v15, v9))
      {
        return;
      }

      v13 = qword_1000081C0;
      v14 = qword_1000081C8;
      *(qword_1000081C0 + 24) = v15[0];
      *(v13 + 32) = v14;
      goto LABEL_3;
    }

    v10 = sub_10000109C(v9, 0x38uLL);
    qword_1000081B0 = v10;
    v11 = *(v9 + 40);
    if (v11)
    {
      *(v9 + 40) = *v11;
    }

    else
    {
      v11 = sub_10000109C(v9, 0x20uLL);
    }

    v12 = 0;
    v11[1] = v10;
    v11[2] = sub_100000DCC;
    v11[3] = sub_100001230;
    *v11 = *(v9 + 32);
    *(v9 + 32) = v11;
    while (!sub_10000144C((qword_1000081B0 + v12), v9))
    {
      v12 += 8;
      if (v12 == 56)
      {
        v9 = qword_1000081C8;
        goto LABEL_22;
      }
    }
  }
}

uint64_t sub_10000144C(uint64_t ***a1, uint64_t a2)
{
  v4 = sub_10000109C(a2, 0x48uLL);
  v5 = v4;
  if (v4)
  {
    *(v4 + 7) = 0u;
    *(v4 + 5) = 0u;
    *(v4 + 3) = 0u;
    *(v4 + 1) = 0u;
  }

  *v4 = a2;
  result = pthread_mutex_init((v4 + 1), 0);
  if (!result)
  {
    sub_1000011C4(*v5, v5, sub_1000014E8, sub_100001230);
    result = 0;
    *a1 = v5;
  }

  return result;
}