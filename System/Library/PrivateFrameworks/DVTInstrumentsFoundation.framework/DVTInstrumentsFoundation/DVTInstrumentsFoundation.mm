uint64_t sub_908()
{
  result = __chkstk_darwin();
  if (__CFOASafe != 1)
  {
    return result;
  }

  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  v11 = v2;
  v12 = v1;
  v13 = result;
  result = _OAIsReEntrantCall();
  if (result)
  {
    return result;
  }

  result = pthread_getspecific(qword_10038);
  if (result)
  {
    return result;
  }

  v14 = 1 << v13;
  if ((dword_10004 & (1 << v13)) == 0)
  {
    return result;
  }

  if ((v14 & 0x10405008) != 0)
  {
    result = pthread_getspecific(qword_10040);
    if (result)
    {
      v15 = **result;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if ((v14 & 0x2000A000) != 0)
  {
    result = pthread_getspecific(qword_10040);
    if (result)
    {
      v15 = *(*result + 8);
      goto LABEL_13;
    }

LABEL_12:
    v15 = 0;
LABEL_13:
    if (v15 == v11)
    {
      return result;
    }

    goto LABEL_14;
  }

  if ((v14 & 0x10000) != 0)
  {
    result = pthread_getspecific(qword_10048);
    if (result == v11)
    {
      return result;
    }
  }

LABEL_14:
  v16 = dword_10050;
  result = getpid();
  if (v16 != result)
  {
    __CFOASafe = 0;
    return result;
  }

  v17 = v13 & 0xFFFFFF;
  v45 = 0;
  __chkstk_darwin();
  bzero(v38, 0x1030uLL);
  if (byte_10054 == 1 && v17 - 23 >= 5 && v17 != 30)
  {
    if (v17 == 18)
    {
      v23 = v9;
    }

    else
    {
      v23 = 0;
    }

    sub_245C(v11, v23, v13 & 0xFFFFFF);
  }

  result = pthread_self();
  v42 = result;
  v43 = 0;
  v40 = v11 ^ 0x5555;
  v41 = 0;
  v38[2] = v13;
  v39 = 0;
  if ((v13 & 0xFFFFEF) == 0xB || v17 == 10)
  {
    if (!v8 || !*v8)
    {
      return result;
    }

    v18 = strlen(v8);
    if (v18 >= 0xFF)
    {
      v19 = 255;
    }

    else
    {
      v19 = v18;
    }

    v43 = v19;
    v20 = v19 + 1;
    v21 = v20 >> 3;
    v39 = v20 >> 3;
    if ((v20 & 7) != 0)
    {
      v44[v21] = 0;
      v39 = v21 + 1;
    }

    result = __strlcpy_chk();
  }

  else
  {
    if (v17 == 20)
    {
LABEL_20:
      v41 = v9 ^ 0x5555;
      goto LABEL_89;
    }

    thread_stack_pcs();
    result = pthread_getspecific(qword_10058);
    if (result)
    {
      v22 = *result;
    }

    else
    {
      v22 = 0;
    }

    if (v7 + 1 >= v45)
    {
      v24 = 0;
      v45 = 0;
    }

    else
    {
      v24 = 0;
      v25 = byte_10000;
      v26 = qword_10008;
      v27 = byte_10060;
      v28 = &v46[v7 + 1];
      v29 = ~v7 + v45;
      do
      {
        v31 = *v28++;
        v30 = v31;
        if (v22)
        {
          v32 = v25;
        }

        else
        {
          v32 = 0;
        }

        if (v30 < v26)
        {
          v32 = 0;
        }

        result = v32 & v27;
        if (result == 1 && v30 < &qword_10008)
        {
          v30 = *v22 + 1;
          v22 = v22[2];
        }

        if (v30 >= 0x1000)
        {
          v44[v24++] = v30;
        }

        --v29;
      }

      while (v29);
      v45 = v24;
      if (v24 > 0)
      {
        v44[0] -= 4;
      }
    }

    v44[v24] = v24;
    v39 = v24;
  }

  if ((v13 & 0xFFFFFFu) > 0x12)
  {
    if (v17 > 0x1D)
    {
      goto LABEL_76;
    }

    if (((1 << v13) & 0x2400000) != 0)
    {
      goto LABEL_89;
    }

    if (((1 << v13) & 0x4800000) != 0)
    {
      v43 = v10;
      goto LABEL_89;
    }

    if (((1 << v13) & 0x30000000) == 0)
    {
LABEL_76:
      if (v17 == 19)
      {
        goto LABEL_89;
      }

      if (v17 == 20)
      {
        goto LABEL_20;
      }

      goto LABEL_81;
    }

    goto LABEL_71;
  }

  if ((v13 & 0xFFFFFFu) > 0xD)
  {
    if (v17 - 14 >= 2)
    {
      if (v17 == 16)
      {
        if (v12)
        {
          v35 = (*(v12 + 16))(v12, v11);
        }

        else
        {
          v35 = malloc_size(v11);
        }

        if (v35)
        {
          v36 = v35;
        }

        else
        {
          v36 = v10;
        }

        v43 = v36;
        goto LABEL_89;
      }

      if (v17 == 18)
      {
        if (v12)
        {
          v34 = (*(v12 + 16))(v12, v11);
        }

        else
        {
          v34 = malloc_size(v11);
        }

        if (v34)
        {
          v37 = v34;
        }

        else
        {
          v37 = v10;
        }

        v43 = v37;
        goto LABEL_20;
      }

      goto LABEL_81;
    }

LABEL_71:
    if (v9 > 0x100000 && v11 != v9)
    {
      return result;
    }

LABEL_81:
    v41 = v9;
    goto LABEL_89;
  }

  if (v17 - 12 < 2)
  {
    v41 = v9;
    v43 = v12;
    goto LABEL_89;
  }

  if (v17 != 3)
  {
    goto LABEL_81;
  }

LABEL_89:
  _OAGenerateDeltaEvent(v38);
  result = sub_10AC(v38);
  if (v17 == 21 && result)
  {
    exit(1);
  }

  if (result && v17 == 16)
  {
    if (byte_10054)
    {
      return pthread_setspecific(qword_10048, v11);
    }
  }

  return result;
}

uint64_t _OASetLastAllocationEventName(uint64_t a1, _BYTE *a2)
{
  if (a2)
  {
    if (*a2)
    {
      return sub_908();
    }
  }

  return result;
}

uint64_t sub_E68()
{
  result = sub_10AC(0);
  if ((result & 1) == 0)
  {
    result = getprogname();
    if (result)
    {
      result = strncmp(result, "sandbox-exec", 0xDuLL);
      if (result)
      {
        v1 = getenv("OAFixupStacktraces");
        if (v1)
        {
          v2 = *v1;
          v3 = 1;
          if (v2 != 49 && v2 != 89)
          {
            v3 = v2 == 121;
          }

          byte_10000 = v3;
        }

        v4 = getenv("OAAllocationStatisticsOutputMask");
        if (v4)
        {
          v5 = strtoul(v4, 0, 0);
          if ((v5 & 0xF17FFFFF) == 0)
          {
            v6 = 1;
            goto LABEL_18;
          }
        }

        else
        {
          v5 = 1334644480;
        }

        v7 = getenv("OAKeepAllocationStatistics");
        if (!v7)
        {
          v9 = getenv("OAWaitForSetupByPid");
          if (!v9)
          {
            goto LABEL_39;
          }

          LOBYTE(v6) = 0;
          goto LABEL_23;
        }

        v8 = *v7;
        v6 = 1;
        if (v8 != 49 && v8 != 89)
        {
          v6 = v8 == 121;
        }

        unsetenv("OAKeepAllocationStatistics");
LABEL_18:
        v9 = getenv("OAWaitForSetupByPid");
        if (!v9)
        {
          if (!v6)
          {
LABEL_39:
            result = _dyld_get_shared_cache_range();
            qword_10028 = result;
            qword_10030 = result;
            return result;
          }

LABEL_37:
          if (!sub_13A4(__OASharedMemoryAddress, v5, 0))
          {
            v15 = __stderrp;
            v16 = getprogname();
            v17 = getpid();
            fprintf(v15, "Allocations initialization failed for process %s (%d)\n", v16, v17);
          }

          goto LABEL_39;
        }

LABEL_23:
        v10 = strtoul(v9, 0, 10);
        v11 = __OASharedMemoryAddress;
        if (!__OASharedMemoryAddress)
        {
          v12 = v10;
          do
          {
            if (v11 <= 0x40)
            {
              v13 = 64;
            }

            else
            {
              v13 = v11;
            }

            usleep(v13);
            v11 = 2 * v13;
            if (2 * v13 <= 0x20000)
            {
              v14 = 1;
            }

            else
            {
              v11 = 0x20000;
              v14 = v12 == 0;
            }

            if (!v14)
            {
              if (kill(v12, 0) == -1 && *__error() == 3)
              {
                unsetenv("OAWaitForSetupByPid");
                goto LABEL_39;
              }

              v11 = 0x20000;
            }
          }

          while (!__OASharedMemoryAddress);
        }

        unsetenv("OAWaitForSetupByPid");
        if (!v6)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }
    }
  }

  return result;
}

vm_address_t sub_10AC(char *a1)
{
  os_unfair_lock_lock(&stru_10064);
  v2 = &byte_10000;
  if (!a1 || __CFOASafe != 1)
  {
    goto LABEL_45;
  }

  *a1 = mach_absolute_time();
  v3 = *(a1 + 3);
  if (a1[10] < 0)
  {
    v3 = HIWORD(*(a1 + 3));
  }

  v4 = qword_10068;
  if (!qword_10068)
  {
    goto LABEL_45;
  }

  v5 = 0;
  v6 = (8 * v3 + 56);
  v7 = *(qword_10068 + 36);
  v8 = (qword_10068 + *(qword_10068 + 32) + 80);
  v24 = v6;
  v9 = 64;
  while (!atomic_load_explicit((v4 + 48), memory_order_acquire))
  {
    v10 = atomic_load((v4 + 64));
    v11 = atomic_load((v4 + 60));
    if (v10 <= v11)
    {
      v12 = v7;
    }

    else
    {
      v12 = 0;
    }

    v13 = v10 + ~v11 + v12;
    if (v13)
    {
      v14 = v11;
      LODWORD(v15) = v7 - v11;
      if (v15 >= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v15;
      }

      if (v6 <= v15)
      {
        v16 = v6;
      }

      else
      {
        v16 = v15;
      }

      memcpy(&v8[v14], a1, v16);
      a1 += v16;
      v6 -= v16;
      v5 += v16;
      if (v13 == v16 || v6 == 0)
      {
        LODWORD(v16) = v16 + v14;
      }

      else
      {
        if (v6 >= v13 - v16)
        {
          v16 = v13 - v16;
        }

        else
        {
          v16 = v6;
        }

        memmove(v8, a1, v16);
        a1 += v16;
        v6 -= v16;
        v5 += v16;
      }

      v20 = v14;
      atomic_compare_exchange_strong((v4 + 60), &v20, v16);
      if (v20 != v14)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Inconsistent writer offset in shared memory! MT transmission suspected...\n", buf, 2u);
        }

        break;
      }

      v9 = 64;
    }

    else
    {
      v18 = atomic_load((v4 + 40));
      if (v9 <= 0x40)
      {
        v19 = 64;
      }

      else
      {
        v19 = v9;
      }

      usleep(v19);
      if (v9 <= 0x10000)
      {
        v9 = 2 * v19;
      }

      else
      {
        if (v18 && kill(v18, 0) == -1 && *__error() == 3)
        {
          break;
        }

        v9 = 0x20000;
      }
    }

    if (!v6)
    {
      break;
    }
  }

  v2 = &byte_10000;
  if (v5 == v24)
  {
    v21 = 1;
  }

  else
  {
LABEL_45:
    __CFOASafe = 0;
    if (malloc_logger == sub_2778)
    {
      malloc_logger = off_10070;
    }

    if (__syscall_logger == sub_2778)
    {
      __syscall_logger = qword_10078;
    }

    v21 = *(v2 + 13);
    if (v21)
    {
      atomic_store(1u, (v21 + 48));
      if (*(v21 + 16))
      {
        if (!atomic_load((v21 + 44)))
        {
          shm_unlink((v21 + *(v21 + 16)));
        }
      }

      vm_deallocate(mach_task_self_, v21, *v21);
      v21 = 0;
      *(v2 + 13) = 0;
    }
  }

  os_unfair_lock_unlock(&stru_10064);
  return v21;
}

BOOL sub_13A4(uint64_t a1, int a2, char a3)
{
  if (a1)
  {
    *&__keyFrameEventHorizon = mach_absolute_time();
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 0x40000000;
    v21 = sub_29F0;
    v22 = &unk_8360;
    v23 = a2;
    v24 = a3;
    os_unfair_lock_lock(&stru_10064);
    v6 = qword_10068;
    if (qword_10068 != a1)
    {
      if (qword_10068)
      {
        atomic_store(1u, (qword_10068 + 48));
        if (*(v6 + 16))
        {
          if (!atomic_load((v6 + 44)))
          {
            shm_unlink((v6 + *(v6 + 16)));
          }
        }

        vm_deallocate(mach_task_self_, v6, *v6);
      }

      v8 = atomic_load((a1 + 44));
      if (v8 && v8 != getpid())
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v8;
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to attach to shared memory - process %d already attached.\n", buf, 8u);
        }

        v10 = 0;
      }

      else
      {
        atomic_store(getpid(), (a1 + 44));
        v9 = *(a1 + 16);
        v10 = a1;
        if (v9)
        {
          shm_unlink((a1 + v9));
          v10 = a1;
        }
      }

      qword_10068 = v10;
      v21(v20);
    }

    os_unfair_lock_unlock(&stru_10064);
    sub_3098(&stru_83A0);
    if (qword_10048)
    {
      byte_10054 = 1;
    }

    if (!getenv("MallocStackLogging"))
    {
      *buf = 0;
      v25 = 0;
      if (sub_4F28(&thread_suspend))
      {
        malloc_get_all_zones();
        v11 = v25;
        if (v25)
        {
          v12 = 0;
          do
          {
            v13 = *(*buf + 8 * v12);
            v14 = *(v13 + 96);
            if (v14)
            {
              v15 = *(v13 + 96);
              v16 = *v14;
              if (*v14)
              {
                v17 = *v14;
                v18 = *(v13 + 72);
                if (!v18 || strnlen(*(v13 + 72), 0xFuLL) != 14 || strncmp(v18, "AttributeGraph", 0xEuLL))
                {
                  v16(mach_task_self_, v13, 1, v13, sub_4DA0, sub_4DB8);
                  v11 = v25;
                }
              }
            }

            ++v12;
          }

          while (v12 < v11);
        }

        sub_4F28(&_thread_resume);
      }
    }
  }

  else
  {
    fwrite("Error: unable to setup Allocations - no shared memory found\n", 0x3CuLL, 1uLL, __stderrp);
  }

  return a1 != 0;
}

uint64_t _OAAttachAndInitialize(int a1, const char **a2)
{
  if (a1 > 1)
  {
    v4 = strtoull(*a2, 0, 16);
    os_unfair_lock_lock(&stru_10064);
    v5 = qword_10068;
    os_unfair_lock_unlock(&stru_10064);
    if (v5 == v4)
    {
      return 0;
    }

    else if (sub_10AC(0))
    {
      v6 = __stderrp;
      v7 = getprogname();
      v8 = getpid();
      fprintf(v6, "Allocations attaching failed for process %s (%d) - already tracking allocations.\n", v7, v8);
      return 3;
    }

    else
    {
      v9 = strtoul(a2[1], 0, 0);
      return !sub_13A4(v4, v9, 1);
    }
  }

  else
  {
    fwrite("too few arguments to _OAAttachAndInitialize! abandoning...\n", 0x3BuLL, 1uLL, __stderrp);
    return 2;
  }
}

void sub_184C(id *location, id obj)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v10 = sub_5294;
  v11 = &unk_8588;
  v12 = location;
  v13 = obj;
  if (*location == obj)
  {
    objc_storeStrong(location, obj);
  }

  else
  {
    v21 = 0;
    v4 = pthread_getspecific(qword_10040);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v17 = 0;
    v5 = pthread_getspecific(qword_10058);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    if (v5)
    {
      v6 = v5;
      v7 = *v5;
      v14 = 0;
      v15 = 0;
      v16 = v7;
      *v5 = &v14;
    }

    else
    {
      v6 = &v17;
      pthread_setspecific(qword_10058, &v17);
      v16 = 0;
      v17 = &v14;
      v14 = 0;
      v15 = 0;
    }

    v8 = *location;
    if (*location)
    {
      sub_374C(*location, 13);
    }

    if (v4)
    {
      v20 = *v4;
      *v4 = &v18;
    }

    else
    {
      v4 = &v21;
      pthread_setspecific(qword_10040, &v21);
      v21 = &v18;
      v20 = 0;
    }

    v18 = obj;
    v19 = v8;
    v10(v9);
    if (v20)
    {
      *v4 = v20;
    }

    else
    {
      pthread_setspecific(qword_10040, 0);
    }

    if (*location == obj)
    {
      sub_374C(obj, 12);
    }

    if (v16)
    {
      *v6 = v16;
    }

    else
    {
      pthread_setspecific(qword_10058, 0);
    }
  }
}

void sub_1A14(char *self, const char *a2, ptrdiff_t offset, id newValue, BOOL a5, int a6)
{
  if (a6)
  {

    objc_setProperty(self, a2, offset, newValue, a5, a6);
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 0x40000000;
    v15 = sub_52A0;
    v16 = &unk_85A8;
    v17 = self;
    v18 = a2;
    v19 = offset;
    v20 = newValue;
    v21 = a5;
    v22 = 0;
    if (*&self[offset] == newValue)
    {
      objc_setProperty(self, a2, offset, newValue, a5, 0);
    }

    else
    {
      v30 = 0;
      v9 = pthread_getspecific(qword_10040);
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v26 = 0;
      v10 = pthread_getspecific(qword_10058);
      v23 = 0;
      v24 = 0;
      v25 = 0;
      if (v10)
      {
        v11 = v10;
        v12 = *v10;
        v23 = 0;
        v24 = 0;
        v25 = v12;
        *v10 = &v23;
      }

      else
      {
        v11 = &v26;
        pthread_setspecific(qword_10058, &v26);
        v25 = 0;
        v26 = &v23;
        v23 = 0;
        v24 = 0;
      }

      v13 = *&self[offset];
      if (v13)
      {
        sub_374C(*&self[offset], 13);
      }

      if (v9)
      {
        v29 = *v9;
        *v9 = &v27;
      }

      else
      {
        v9 = &v30;
        pthread_setspecific(qword_10040, &v30);
        v30 = &v27;
        v29 = 0;
      }

      v27 = newValue;
      v28 = v13;
      v15(v14);
      if (v29)
      {
        *v9 = v29;
      }

      else
      {
        pthread_setspecific(qword_10040, 0);
      }

      if (*&self[offset] == newValue)
      {
        sub_374C(newValue, 12);
      }

      if (v25)
      {
        *v11 = v25;
      }

      else
      {
        pthread_setspecific(qword_10058, 0);
      }
    }
  }
}

void sub_1C3C(char *self, const char *a2, id newValue, ptrdiff_t offset)
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 0x40000000;
  v13 = sub_52B8;
  v14 = &unk_85C8;
  v15 = self;
  v16 = a2;
  v17 = newValue;
  v18 = offset;
  if (*&self[offset] == newValue)
  {
    objc_setProperty_atomic(self, a2, newValue, offset);
  }

  else
  {
    v26 = 0;
    v7 = pthread_getspecific(qword_10040);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v22 = 0;
    v8 = pthread_getspecific(qword_10058);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    if (v8)
    {
      v9 = v8;
      v10 = *v8;
      v19 = 0;
      v20 = 0;
      v21 = v10;
      *v8 = &v19;
    }

    else
    {
      v9 = &v22;
      pthread_setspecific(qword_10058, &v22);
      v21 = 0;
      v22 = &v19;
      v19 = 0;
      v20 = 0;
    }

    v11 = *&self[offset];
    if (v11)
    {
      sub_374C(*&self[offset], 13);
    }

    if (v7)
    {
      v25 = *v7;
      *v7 = &v23;
    }

    else
    {
      v7 = &v26;
      pthread_setspecific(qword_10040, &v26);
      v26 = &v23;
      v25 = 0;
    }

    v23 = newValue;
    v24 = v11;
    v13(v12);
    if (v25)
    {
      *v7 = v25;
    }

    else
    {
      pthread_setspecific(qword_10040, 0);
    }

    if (*&self[offset] == newValue)
    {
      sub_374C(newValue, 12);
    }

    if (v21)
    {
      *v9 = v21;
    }

    else
    {
      pthread_setspecific(qword_10058, 0);
    }
  }
}

void sub_1E18(char *self, const char *a2, id newValue, ptrdiff_t offset)
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 0x40000000;
  v13 = sub_52C8;
  v14 = &unk_85E8;
  v15 = self;
  v16 = a2;
  v17 = newValue;
  v18 = offset;
  if (*&self[offset] == newValue)
  {
    objc_setProperty_nonatomic(self, a2, newValue, offset);
  }

  else
  {
    v26 = 0;
    v7 = pthread_getspecific(qword_10040);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v22 = 0;
    v8 = pthread_getspecific(qword_10058);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    if (v8)
    {
      v9 = v8;
      v10 = *v8;
      v19 = 0;
      v20 = 0;
      v21 = v10;
      *v8 = &v19;
    }

    else
    {
      v9 = &v22;
      pthread_setspecific(qword_10058, &v22);
      v21 = 0;
      v22 = &v19;
      v19 = 0;
      v20 = 0;
    }

    v11 = *&self[offset];
    if (v11)
    {
      sub_374C(*&self[offset], 13);
    }

    if (v7)
    {
      v25 = *v7;
      *v7 = &v23;
    }

    else
    {
      v7 = &v26;
      pthread_setspecific(qword_10040, &v26);
      v26 = &v23;
      v25 = 0;
    }

    v23 = newValue;
    v24 = v11;
    v13(v12);
    if (v25)
    {
      *v7 = v25;
    }

    else
    {
      pthread_setspecific(qword_10040, 0);
    }

    if (*&self[offset] == newValue)
    {
      sub_374C(newValue, 12);
    }

    if (v21)
    {
      *v9 = v21;
    }

    else
    {
      pthread_setspecific(qword_10058, 0);
    }
  }
}

void sub_1FF4(char *self, const char *a2, id newValue, ptrdiff_t offset)
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 0x40000000;
  v13 = sub_52D8;
  v14 = &unk_8608;
  v15 = self;
  v16 = a2;
  v17 = newValue;
  v18 = offset;
  if (*&self[offset] == newValue)
  {
    objc_setProperty_atomic_copy(self, a2, newValue, offset);
  }

  else
  {
    v26 = 0;
    v7 = pthread_getspecific(qword_10040);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v22 = 0;
    v8 = pthread_getspecific(qword_10058);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    if (v8)
    {
      v9 = v8;
      v10 = *v8;
      v19 = 0;
      v20 = 0;
      v21 = v10;
      *v8 = &v19;
    }

    else
    {
      v9 = &v22;
      pthread_setspecific(qword_10058, &v22);
      v21 = 0;
      v22 = &v19;
      v19 = 0;
      v20 = 0;
    }

    v11 = *&self[offset];
    if (v11)
    {
      sub_374C(*&self[offset], 13);
    }

    if (v7)
    {
      v25 = *v7;
      *v7 = &v23;
    }

    else
    {
      v7 = &v26;
      pthread_setspecific(qword_10040, &v26);
      v26 = &v23;
      v25 = 0;
    }

    v23 = newValue;
    v24 = v11;
    v13(v12);
    if (v25)
    {
      *v7 = v25;
    }

    else
    {
      pthread_setspecific(qword_10040, 0);
    }

    if (*&self[offset] == newValue)
    {
      sub_374C(newValue, 12);
    }

    if (v21)
    {
      *v9 = v21;
    }

    else
    {
      pthread_setspecific(qword_10058, 0);
    }
  }
}

void sub_21D0(char *self, const char *a2, id newValue, ptrdiff_t offset)
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 0x40000000;
  v13 = sub_52E8;
  v14 = &unk_8628;
  v15 = self;
  v16 = a2;
  v17 = newValue;
  v18 = offset;
  if (*&self[offset] == newValue)
  {
    objc_setProperty_nonatomic_copy(self, a2, newValue, offset);
  }

  else
  {
    v26 = 0;
    v7 = pthread_getspecific(qword_10040);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v22 = 0;
    v8 = pthread_getspecific(qword_10058);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    if (v8)
    {
      v9 = v8;
      v10 = *v8;
      v19 = 0;
      v20 = 0;
      v21 = v10;
      *v8 = &v19;
    }

    else
    {
      v9 = &v22;
      pthread_setspecific(qword_10058, &v22);
      v21 = 0;
      v22 = &v19;
      v19 = 0;
      v20 = 0;
    }

    v11 = *&self[offset];
    if (v11)
    {
      sub_374C(*&self[offset], 13);
    }

    if (v7)
    {
      v25 = *v7;
      *v7 = &v23;
    }

    else
    {
      v7 = &v26;
      pthread_setspecific(qword_10040, &v26);
      v26 = &v23;
      v25 = 0;
    }

    v23 = newValue;
    v24 = v11;
    v13(v12);
    if (v25)
    {
      *v7 = v25;
    }

    else
    {
      pthread_setspecific(qword_10040, 0);
    }

    if (*&self[offset] == newValue)
    {
      sub_374C(newValue, 12);
    }

    if (v21)
    {
      *v9 = v21;
    }

    else
    {
      pthread_setspecific(qword_10058, 0);
    }
  }
}

void sub_23AC(void *a1)
{
  v7 = 0;
  v2 = pthread_getspecific(qword_10058);
  v4 = 0;
  v5 = 0;
  v6 = 0;
  if (v2)
  {
    v3 = v2;
    v6 = *v2;
    *v2 = &v4;
  }

  else
  {
    v3 = &v7;
    pthread_setspecific(qword_10058, &v7);
    v6 = 0;
    v7 = &v4;
  }

  v4 = &objc_autoreleasePoolPop;
  v5 = &objc_autoreleasePoolPop;
  objc_autoreleasePoolPop(a1);
  if (v6)
  {
    *v3 = v6;
  }

  else
  {
    pthread_setspecific(qword_10058, 0);
  }
}

unint64_t sub_245C(void *a1, void *a2, int a3)
{
  result = pthread_getspecific(qword_10048);
  if (result)
  {
    v7 = result;
    result = pthread_setspecific(qword_10048, 0);
    if (v7 != a2)
    {
      a1 = v7;
    }

    if (a3 != 11)
    {
      if (a1)
      {
        result = malloc_size(a1);
        if (result)
        {
          result = sub_258C(a1, result);
          if (result)
          {
            v8 = result;
            v9 = 11;
            v10 = a1;
            v11 = 0;
LABEL_9:

            return sub_908(v9, 0, v10, 0, v11, v8, 0);
          }

          v12 = *a1;
          if ((*a1 - 0x100000000) >> 30 <= 0x3A)
          {
            v13 = (*a1 & 7) == 0;
            *a1;
          }

          else
          {
            v13 = 0;
          }

          if (v13)
          {
            v14 = qword_10028 > v12 || v12 >= qword_10030;
            if (!v14 || (result = malloc_size(*a1)) == 0)
            {
              v9 = 20;
              v10 = a1;
              v11 = v12;
              v8 = 0;
              goto LABEL_9;
            }
          }
        }
      }
    }
  }

  return result;
}

const char *sub_258C(uint64_t a1, unint64_t a2)
{
  v2 = *a1;
  if (a2 >= 0x100 && v2 == -1583242847)
  {
    if (!strncmp((a1 + 4), "AUTORELEASE!", 0xCuLL))
    {
      return "@autoreleasepool content";
    }

    else
    {
      return 0;
    }
  }

  else if (v2 <= 1330529092)
  {
    if (v2 <= 1297373248)
    {
      v17 = "pthread_condattr_t";
      if (a2 != 16)
      {
        v17 = 0;
      }

      v18 = "pthread_cond_t";
      if (a2 != 48)
      {
        v18 = 0;
      }

      if (v2 == 1129270852)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      if (v2 == 1129202753)
      {
        return v17;
      }

      else
      {
        return v19;
      }
    }

    else
    {
      if (v2 == 1297373249)
      {
        v15 = "pthread_mutexattr_t";
        v16 = a2 == 16;
      }

      else
      {
        if (v2 != 1297437784 && v2 != 1297437786)
        {
          return 0;
        }

        v15 = "pthread_mutex_t";
        v16 = a2 == 64;
      }

      if (v16)
      {
        return v15;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v4 = "pthread_attr_t";
    if (a2 != 64)
    {
      v4 = 0;
    }

    v5 = "pthread_thread_t";
    if (a2 != 16)
    {
      v5 = 0;
    }

    v6 = "pthread_override_s";
    if (a2 != 48)
    {
      v6 = 0;
    }

    if (v2 == 1870030194)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v2 == 1414025796)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    if (v2 != 1414022209)
    {
      v4 = v8;
    }

    v9 = "pthread_once_t";
    if (a2 != 16)
    {
      v9 = 0;
    }

    v10 = "pthread_rwlockattr_t";
    if (a2 != 32)
    {
      v10 = 0;
    }

    v11 = "pthread_rwlock_t";
    if (a2 != 208)
    {
      v11 = 0;
    }

    if (v2 == 1381452875)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v2 == 1381452865)
    {
      v13 = v10;
    }

    else
    {
      v13 = v12;
    }

    if (v2 == 1330529093)
    {
      v14 = v9;
    }

    else
    {
      v14 = v13;
    }

    if (v2 <= 1414022208)
    {
      return v14;
    }

    else
    {
      return v4;
    }
  }
}

uint64_t sub_2778(uint64_t result, uint64_t a2, vm_size_t a3, vm_size_t a4, uint64_t a5, int a6)
{
  v10 = result;
  if (off_10070)
  {
    result = off_10070(result, a2, a3, a4, a5, (a6 + 1));
  }

  if ((~v10 & 6) == 0)
  {
    if (!a5)
    {
      return result;
    }

    v11 = 18;
    v12 = a2;
    v13 = a5;
    v14 = a4;
    v15 = a3;
    goto LABEL_18;
  }

  if ((v10 & 2) != 0)
  {
    if (!a5)
    {
      return result;
    }

    v11 = 16;
    v12 = a2;
    v13 = a5;
    v14 = a3;
LABEL_17:
    v15 = 0;
LABEL_18:

    return sub_908(v11, v12, v13, v14, v15, 0, 2);
  }

  if ((v10 & 4) != 0)
  {
    if (!a3)
    {
      return result;
    }

    v11 = 19;
    v12 = a2;
    v13 = a3;
    v14 = 0;
    goto LABEL_17;
  }

  if ((v10 & 0x10) == 0)
  {
    if ((v10 & 0x20) == 0 || !a3 || mach_task_self_ != a2)
    {
      return result;
    }

    v14 = ~vm_page_mask & (vm_page_mask + a4);
    v11 = 26;
    v12 = 0;
    v13 = a3;
    goto LABEL_17;
  }

  if (a5)
  {
    if (mach_task_self_ == a2)
    {
      result = sub_908(v10 & 0xFF000000 | 0x17, 0, a5, ~vm_page_mask & (vm_page_mask + a3), 0, 0, 2);
      if ((v10 & 0x80) != 0)
      {
        v16 = getpid();
        result = proc_regionfilename(v16, a5, buffer, 0x400u);
        if (result >= 1)
        {
          buffer[result] = 0;
          return sub_908(27, 0, a5, 0, 0, buffer, 0);
        }
      }
    }
  }

  return result;
}

void sub_29F0(uint64_t a1)
{
  __OASharedMemoryAddress = 0;
  dword_10004 = *(a1 + 32);
  dword_10050 = getpid();
  setvbuf(__stdoutp, 0, 1, 0);
  setvbuf(__stderrp, 0, 1, 0);
  if (qword_10080 != -1)
  {
    sub_5578();
  }

  v2 = *(a1 + 36);
  v3 = __syscall_logger;
  if (!*(a1 + 36))
  {
    v3 = 0;
  }

  qword_10078 = v3;
  __syscall_logger = sub_2778;
  if ((*(a1 + 32) & 0xF17FFFFF) != 0)
  {
    if (v2)
    {
      v4 = malloc_logger;
    }

    else
    {
      v4 = 0;
    }

    off_10070 = v4;
    malloc_logger = sub_2778;
    if (&__CFObjectAllocRecordAllocationFunction)
    {
      __CFObjectAllocRecordAllocationFunction = _OARecordAllocationEvent;
    }

    if (&__CFObjectAllocSetLastAllocEventNameFunction)
    {
      __CFObjectAllocSetLastAllocEventNameFunction = _OASetLastAllocationEventName;
    }
  }

  __CFOASafe = 1;
}

void sub_2B34(id a1)
{
  pthread_key_create(&qword_10048, 0);
  pthread_key_create(&qword_10040, 0);
  pthread_key_create(&qword_10058, 0);
  pthread_key_create(&qword_10038, 0);
  pthread_key_create(&__keyframe_key, _OAFreeKeyFrame);
  memset(&v15, 0, sizeof(v15));
  if (dladdr(sub_13A4, &v15))
  {
    qword_10008 = v15.dli_fbase;
    byte_10060 = 1;
  }

  imp_implementationWithBlock(&stru_8340);
  sub_3098(&stru_83E0);
  qword_100B0 = sub_3DD0;
  v1 = dlopen("libswiftCore.dylib", 1);
  if (v1)
  {
    v2 = v1;
    v3 = dlsym(v1, "_swift_zone_init");
    if (v3)
    {
      v3();
    }

    off_10168 = dlsym(v2, "_swift_indexToSize");
    off_10170 = dlsym(v2, "swift_retainCount");
    v4 = dlsym(v2, "_swift_allocObject");
    if (v4)
    {
      off_10178 = *v4;
      *v4 = sub_3DD8;
    }

    v5 = dlsym(v2, "_swift_alloc");
    if (v5)
    {
      off_10180 = *v5;
      *v5 = sub_3F20;
    }

    v6 = dlsym(v2, "_swift_tryAlloc");
    if (v6)
    {
      off_10188 = *v6;
      *v6 = sub_400C;
    }

    v7 = dlsym(v2, "_swift_slowAlloc");
    if (v7)
    {
      off_10190 = *v7;
      *v7 = sub_40F8;
    }

    v8 = dlsym(v2, "_swift_dealloc");
    if (v8)
    {
      off_10198 = *v8;
      *v8 = sub_41E0;
    }

    v9 = dlsym(v2, "_swift_slowDealloc");
    if (v9)
    {
      off_101A0 = *v9;
      *v9 = sub_42CC;
    }

    if ((dword_10004 & 0x3040F008) != 0)
    {
      v10 = dlsym(v2, "_swift_retain");
      if (v10)
      {
        off_101A8 = *v10;
        *v10 = sub_43C0;
      }

      v11 = dlsym(v2, "_swift_tryRetain");
      if (v11)
      {
        off_101B0 = *v11;
        *v11 = sub_455C;
      }

      v12 = dlsym(v2, "_swift_release");
      if (v12)
      {
        off_101B8 = *v12;
        *v12 = sub_46F8;
      }

      v13 = dlsym(v2, "_swift_retain_n");
      if (v13)
      {
        off_101C0 = *v13;
        *v13 = sub_4890;
      }

      v14 = dlsym(v2, "_swift_release_n");
      if (v14)
      {
        off_101C8 = *v14;
        *v14 = sub_4A64;
      }
    }

    dlclose(v2);
  }
}

void sub_3098(uint64_t a1)
{
  if (qword_101D0 != -1)
  {
    sub_558C();
  }

  if ((byte_101D8 & 1) == 0)
  {
    outCount = 0;
    v2 = objc_copyClassList(&outCount);
    v3 = v2;
    if (outCount)
    {
        ;
      }
    }

    else if (!v2)
    {
      return;
    }

    free(v3);
  }
}

void sub_313C(id a1, Class a2)
{
  Name = class_getName(a2);
  v3 = Name;
  if (__PAIR64__(*(Name + 1), *Name) == 0x530000004FLL && Name[2] == 95 || !strncmp(Name, "__NS", 4uLL) && strstr(v3, "Block") || sub_31FC(v3))
  {

    sub_908();
  }
}

char *sub_31FC(char *a1)
{
  if (*a1 == 95)
  {
    if (a1[1] == 95 && a1[2] == 84)
    {
      return (&dword_0 + 1);
    }

    v1 = a1[1];
    if (v1 == 84 || v1 == 36 && a1[2] == 83)
    {
      return (&dword_0 + 1);
    }
  }

  result = strchr(a1, 46);
  if (result)
  {
    return (&dword_0 + 1);
  }

  return result;
}

void sub_3268(id a1, Class a2)
{
  sub_32A8(a2);
  Class = object_getClass(a2);

  sub_32A8(Class);
}

void sub_32A8(Class cls)
{
  if (qword_10088 != -1)
  {
    sub_55A0();
  }

  outCount[0] = 0;
  v2 = class_copyMethodList(cls, outCount);
  isMetaClass = class_isMetaClass(cls);
  if (outCount[0])
  {
    v4 = isMetaClass;
    v5 = 0;
    while (1)
    {
      Name = method_getName(v2[v5]);
      v7 = sel_getName(Name);
      v8 = v7;
      if (v4)
      {
        if (!strcmp(v7, "allocWithZone:"))
        {
          Implementation = method_getImplementation(v2[v5]);
          v10 = v25;
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 0x40000000;
          v25[2] = sub_3634;
          v25[3] = &unk_8440;
          v25[4] = Implementation;
          v11 = &v26;
LABEL_17:
          *v11 = Name;
          v16 = imp_implementationWithBlock(v10);
          method_setImplementation(v2[v5], v16);
        }
      }

      else if ((dword_10004 & 0x3040F008) != 0)
      {
        if (!strcmp(v7, "retain"))
        {
          v13 = method_getImplementation(v2[v5]);
          v10 = v23;
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 0x40000000;
          v23[2] = sub_37E8;
          v23[3] = &unk_8460;
          v23[4] = v13;
          v23[5] = v13;
          v11 = &v24;
          goto LABEL_17;
        }

        if (!strcmp(v8, "release"))
        {
          v14 = method_getImplementation(v2[v5]);
          v10 = v21;
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 0x40000000;
          v21[2] = sub_3950;
          v21[3] = &unk_8480;
          v21[4] = v14;
          v21[5] = v14;
          v11 = &v22;
          goto LABEL_17;
        }

        if (!strcmp(v8, "autorelease"))
        {
          v15 = method_getImplementation(v2[v5]);
          v10 = block;
          block[0] = _NSConcreteStackBlock;
          block[1] = 0x40000000;
          block[2] = sub_3AC0;
          block[3] = &unk_84A0;
          block[4] = v15;
          block[5] = v15;
          v11 = &v20;
          goto LABEL_17;
        }

        if (!strcmp(v8, "_tryRetain"))
        {
          v12 = method_getImplementation(v2[v5]);
          v10 = v17;
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 0x40000000;
          v17[2] = sub_3C44;
          v17[3] = &unk_84C0;
          v17[4] = v12;
          v17[5] = v12;
          v11 = &v18;
          goto LABEL_17;
        }
      }

      if (++v5 >= outCount[0])
      {
        goto LABEL_21;
      }
    }
  }

  if (v2)
  {
LABEL_21:
    free(v2);
  }
}

void *sub_3634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  v6 = pthread_getspecific(qword_10058);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (v6)
  {
    v7 = v6;
    v8 = *v6;
    v14 = 0;
    v15 = 0;
    v16 = v8;
    *v6 = &v14;
  }

  else
  {
    v7 = &v17;
    pthread_setspecific(qword_10058, &v17);
    v16 = 0;
    v17 = &v14;
    v14 = 0;
    v15 = 0;
  }

  v9 = (*(a1 + 32))(a2, *(a1 + 40), a3);
  v10 = v9;
  if (v9)
  {
    Class = object_getClass(v9);
    if (Class != qword_10090 && Class != qword_10098)
    {
      object_getClassName(v10);
      sub_908();
    }
  }

  if (v16)
  {
    *v7 = v16;
  }

  else
  {
    pthread_setspecific(qword_10058, 0);
  }

  return v10;
}

CFIndex sub_374C(CFIndex result, int a2)
{
  if (result)
  {
    if (a2 == 11)
    {
      object_getClassName(result);
      return sub_908();
    }

    if ((a2 & 0xFFFFFFFE) != 0xC)
    {
      return sub_908();
    }

    result = CFGetRetainCount(result);
    if ((~result & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      return sub_908();
    }
  }

  return result;
}

uint64_t sub_37E8(uint64_t a1, CFIndex a2)
{
  v19 = 0;
  v4 = pthread_getspecific(qword_10058);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 32);
    v18 = *v4;
    *v4 = &v16;
  }

  else
  {
    v5 = &v19;
    pthread_setspecific(qword_10058, &v19);
    v18 = 0;
    v19 = &v16;
    v6 = *(a1 + 32);
  }

  v16 = v6;
  v17 = v6;
  v15 = 0;
  v7 = pthread_getspecific(qword_10040);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (!v7)
  {
    if (a2)
    {
      v8 = &v15;
      pthread_setspecific(qword_10040, &v15);
      v14 = 0;
      v15 = &v12;
      v12 = a2;
      v13 = 0;
      goto LABEL_9;
    }

LABEL_11:
    v10 = (*(a1 + 40))(a2, *(a1 + 48));
    goto LABEL_14;
  }

  v8 = v7;
  v9 = *v7;
  if (**v7 == a2)
  {
    goto LABEL_11;
  }

  v12 = a2;
  v13 = 0;
  v14 = v9;
  *v7 = &v12;
LABEL_9:
  v10 = (*(a1 + 40))(a2, *(a1 + 48));
  if (v14)
  {
    *v8 = v14;
  }

  else
  {
    pthread_setspecific(qword_10040, 0);
  }

  sub_374C(a2, 12);
LABEL_14:
  if (v18)
  {
    *v5 = v18;
  }

  else
  {
    pthread_setspecific(qword_10058, 0);
  }

  return v10;
}

uint64_t sub_3950(uint64_t a1, CFIndex a2)
{
  v18 = 0;
  v4 = pthread_getspecific(qword_10058);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 32);
    v17 = *v4;
    *v4 = &v15;
  }

  else
  {
    v5 = &v18;
    pthread_setspecific(qword_10058, &v18);
    v17 = 0;
    v18 = &v15;
    v6 = *(a1 + 32);
  }

  v15 = v6;
  v16 = v6;
  v14 = 0;
  v7 = pthread_getspecific(qword_10040);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (v7)
  {
    v8 = v7;
    if (*(*v7 + 8) != a2)
    {
      sub_374C(a2, 13);
      v9 = *v8;
      v11 = 0;
      v12 = a2;
      v13 = v9;
      *v8 = &v11;
      goto LABEL_9;
    }
  }

  else if (a2)
  {
    sub_374C(a2, 13);
    v8 = &v14;
    pthread_setspecific(qword_10040, &v14);
    v13 = 0;
    v14 = &v11;
    v11 = 0;
    v12 = a2;
LABEL_9:
    result = (*(a1 + 40))(a2, *(a1 + 48));
    if (v13)
    {
      *v8 = v13;
    }

    else
    {
      result = pthread_setspecific(qword_10040, 0);
    }

    goto LABEL_13;
  }

  result = (*(a1 + 40))(a2, *(a1 + 48));
LABEL_13:
  if (!v17)
  {
    return pthread_setspecific(qword_10058, 0);
  }

  *v5 = v17;
  return result;
}

uint64_t sub_3AC0(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  v4 = pthread_getspecific(qword_10058);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 32);
    v18 = *v4;
    *v4 = &v16;
  }

  else
  {
    v5 = &v19;
    pthread_setspecific(qword_10058, &v19);
    v18 = 0;
    v19 = &v16;
    v6 = *(a1 + 32);
  }

  v16 = v6;
  v17 = v6;
  v15 = 0;
  v7 = pthread_getspecific(qword_10040);
  v8 = v7;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (v7)
  {
    v9 = **v7;
  }

  else
  {
    v9 = 0;
  }

  if (v9 == a2)
  {
    v10 = (*(a1 + 40))(a2, *(a1 + 48));
  }

  else
  {
    if (a2)
    {
      sub_908();
    }

    if (v8)
    {
      v14 = *v8;
      *v8 = &v12;
    }

    else
    {
      v8 = &v15;
      pthread_setspecific(qword_10040, &v15);
      v14 = 0;
      v15 = &v12;
    }

    v12 = a2;
    v13 = 0;
    v10 = (*(a1 + 40))(a2, *(a1 + 48));
    if (v14)
    {
      *v8 = v14;
    }

    else
    {
      pthread_setspecific(qword_10040, 0);
    }
  }

  if (v18)
  {
    *v5 = v18;
  }

  else
  {
    pthread_setspecific(qword_10058, 0);
  }

  return v10;
}

uint64_t sub_3C44(uint64_t a1, uint64_t a2)
{
  v21 = 0;
  v4 = pthread_getspecific(qword_10058);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 32);
    v20 = *v4;
    *v4 = &v18;
  }

  else
  {
    v5 = &v21;
    pthread_setspecific(qword_10058, &v21);
    v20 = 0;
    v21 = &v18;
    v6 = *(a1 + 32);
  }

  v18 = v6;
  v19 = v6;
  v17 = 0;
  v7 = pthread_getspecific(qword_10040);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (v7)
  {
    v8 = v7;
    v9 = *v7;
    if (**v7 != a2)
    {
      v14 = a2;
      v15 = 0;
      v16 = v9;
      *v7 = &v14;
      goto LABEL_9;
    }

LABEL_14:
    v12 = (*(a1 + 40))(a2, *(a1 + 48));
    goto LABEL_17;
  }

  if (!a2)
  {
    goto LABEL_14;
  }

  v8 = &v17;
  pthread_setspecific(qword_10040, &v17);
  v16 = 0;
  v17 = &v14;
  v14 = a2;
  v15 = 0;
LABEL_9:
  v10 = (*(a1 + 40))(a2, *(a1 + 48));
  v11 = v10;
  if (!v16)
  {
    pthread_setspecific(qword_10040, 0);
    if (v11)
    {
      goto LABEL_11;
    }

LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  *v8 = v16;
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_11:
  if (a2)
  {
    sub_908();
  }

  v12 = 1;
LABEL_17:
  if (v20)
  {
    *v5 = v20;
  }

  else
  {
    pthread_setspecific(qword_10058, 0);
  }

  return v12;
}

uint64_t sub_3DD8(objc_class *a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  v6 = pthread_getspecific(qword_10058);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (v6)
  {
    v7 = v6;
    v8 = off_10178;
    v14 = *v6;
    *v6 = &v12;
  }

  else
  {
    v7 = &v15;
    pthread_setspecific(qword_10058, &v15);
    v14 = 0;
    v15 = &v12;
    v8 = off_10178;
  }

  v12 = v8;
  v13 = v8;
  v9 = (v8)(a1, a2, a3);
  v10 = v9;
  if (a1 && v9 && (*a1 <= 0x1000uLL || class_getName(a1)))
  {
    sub_908();
  }

  if (v14)
  {
    *v7 = v14;
  }

  else
  {
    pthread_setspecific(qword_10058, 0);
  }

  return v10;
}

uint64_t sub_3F20(uint64_t a1)
{
  v2 = off_10180;
  v10 = 0;
  v3 = pthread_getspecific(qword_10058);
  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (v3)
  {
    v4 = v3;
    v9 = *v3;
    *v3 = &v7;
  }

  else
  {
    v4 = &v10;
    pthread_setspecific(qword_10058, &v10);
    v9 = 0;
    v10 = &v7;
  }

  v7 = v2;
  v8 = v2;
  v5 = v2(a1);
  if (v5)
  {
    off_10168(a1);
    sub_908();
  }

  if (v9)
  {
    *v4 = v9;
  }

  else
  {
    pthread_setspecific(qword_10058, 0);
  }

  return v5;
}

uint64_t sub_400C(uint64_t a1)
{
  v2 = off_10188;
  v10 = 0;
  v3 = pthread_getspecific(qword_10058);
  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (v3)
  {
    v4 = v3;
    v9 = *v3;
    *v3 = &v7;
  }

  else
  {
    v4 = &v10;
    pthread_setspecific(qword_10058, &v10);
    v9 = 0;
    v10 = &v7;
  }

  v7 = v2;
  v8 = v2;
  v5 = v2(a1);
  if (v5)
  {
    off_10168(a1);
    sub_908();
  }

  if (v9)
  {
    *v4 = v9;
  }

  else
  {
    pthread_setspecific(qword_10058, 0);
  }

  return v5;
}

uint64_t sub_40F8(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v4 = pthread_getspecific(qword_10058);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = off_10190;
    v11 = *v4;
    *v4 = &v9;
  }

  else
  {
    v5 = &v12;
    pthread_setspecific(qword_10058, &v12);
    v11 = 0;
    v12 = &v9;
    v6 = off_10190;
  }

  v9 = v6;
  v10 = v6;
  v7 = (v6)(a1, a2);
  if (v7)
  {
    sub_908();
  }

  if (v11)
  {
    *v5 = v11;
  }

  else
  {
    pthread_setspecific(qword_10058, 0);
  }

  return v7;
}

uint64_t sub_41E0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v10 = 0;
    v4 = pthread_getspecific(qword_10058);
    v7 = 0;
    v8 = 0;
    v9 = 0;
    if (v4)
    {
      v5 = v4;
      v6 = off_10198;
      v9 = *v4;
      *v4 = &v7;
    }

    else
    {
      v5 = &v10;
      pthread_setspecific(qword_10058, &v10);
      v9 = 0;
      v10 = &v7;
      v6 = off_10198;
    }

    v7 = v6;
    v8 = v6;
    sub_908();
    result = off_10198(v3, a2);
    if (v9)
    {
      *v5 = v9;
    }

    else
    {
      return pthread_setspecific(qword_10058, 0);
    }
  }

  return result;
}

uint64_t sub_42CC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v12 = 0;
    v6 = pthread_getspecific(qword_10058);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    if (v6)
    {
      v7 = v6;
      v8 = off_101A0;
      v11 = *v6;
      *v6 = &v9;
    }

    else
    {
      v7 = &v12;
      pthread_setspecific(qword_10058, &v12);
      v11 = 0;
      v12 = &v9;
      v8 = off_101A0;
    }

    v9 = v8;
    v10 = v8;
    sub_908();
    result = off_101A0(v5, a2, a3);
    if (v11)
    {
      *v7 = v11;
    }

    else
    {
      return pthread_setspecific(qword_10058, 0);
    }
  }

  return result;
}

uint64_t sub_43C0(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v17 = 0;
  v2 = pthread_getspecific(qword_10058);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (v2)
  {
    v3 = v2;
    v4 = off_101A8;
    v16 = *v2;
    *v2 = &v14;
  }

  else
  {
    v3 = &v17;
    pthread_setspecific(qword_10058, &v17);
    v16 = 0;
    v17 = &v14;
    v4 = off_101A8;
  }

  v14 = v4;
  v15 = v4;
  v13 = 0;
  v6 = pthread_getspecific(qword_10040);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (!v6)
  {
    v7 = &v13;
    pthread_setspecific(qword_10040, &v13);
    v12 = 0;
    v13 = &v10;
    v10 = a1;
    v11 = 0;
LABEL_11:
    v5 = off_101A8(a1);
    if (v12)
    {
      *v7 = v12;
    }

    else
    {
      pthread_setspecific(qword_10040, 0);
    }

    if (off_10170)
    {
      off_10170(a1);
    }

    sub_908();
    goto LABEL_17;
  }

  v7 = v6;
  v8 = *v6;
  if (**v6 != a1)
  {
    v10 = a1;
    v11 = 0;
    v12 = v8;
    *v6 = &v10;
    goto LABEL_11;
  }

  v5 = off_101A8(a1);
LABEL_17:
  if (v16)
  {
    *v3 = v16;
  }

  else
  {
    pthread_setspecific(qword_10058, 0);
  }

  return v5;
}

uint64_t sub_455C(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v17 = 0;
    v2 = pthread_getspecific(qword_10058);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    if (v2)
    {
      v3 = v2;
      v4 = off_101B0;
      v16 = *v2;
      *v2 = &v14;
    }

    else
    {
      v3 = &v17;
      pthread_setspecific(qword_10058, &v17);
      v16 = 0;
      v17 = &v14;
      v4 = off_101B0;
    }

    v14 = v4;
    v15 = v4;
    v13 = 0;
    v5 = pthread_getspecific(qword_10040);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    if (v5)
    {
      v6 = v5;
      v7 = *v5;
      if (**v5 == v1)
      {
        v1 = off_101B0(v1);
        goto LABEL_17;
      }

      v10 = v1;
      v11 = 0;
      v12 = v7;
      *v5 = &v10;
    }

    else
    {
      v6 = &v13;
      pthread_setspecific(qword_10040, &v13);
      v12 = 0;
      v13 = &v10;
      v10 = v1;
      v11 = 0;
    }

    v8 = off_101B0(v1);
    v1 = v8;
    if (v12)
    {
      *v6 = v12;
      if (!v8)
      {
LABEL_17:
        if (v16)
        {
          *v3 = v16;
        }

        else
        {
          pthread_setspecific(qword_10058, 0);
        }

        return v1;
      }
    }

    else
    {
      pthread_setspecific(qword_10040, 0);
      if (!v1)
      {
        goto LABEL_17;
      }
    }

    if (off_10170)
    {
      off_10170(v1);
    }

    sub_908();
    goto LABEL_17;
  }

  return v1;
}

uint64_t sub_46F8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v15 = 0;
    v2 = pthread_getspecific(qword_10058);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    if (v2)
    {
      v3 = v2;
      v4 = off_101B8;
      v14 = *v2;
      *v2 = &v12;
    }

    else
    {
      v3 = &v15;
      pthread_setspecific(qword_10058, &v15);
      v14 = 0;
      v15 = &v12;
      v4 = off_101B8;
    }

    v12 = v4;
    v13 = v4;
    v11 = 0;
    v5 = pthread_getspecific(qword_10040);
    v6 = v5;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    if (v5)
    {
      v7 = *(*v5 + 8);
    }

    else
    {
      v7 = 0;
    }

    if (v7 == v1)
    {
      result = off_101B8(v1);
    }

    else
    {
      if (off_10170)
      {
        off_10170(v1);
      }

      sub_908();
      if (v6)
      {
        v10 = *v6;
        *v6 = &v8;
      }

      else
      {
        v6 = &v11;
        pthread_setspecific(qword_10040, &v11);
        v10 = 0;
        v11 = &v8;
      }

      v8 = 0;
      v9 = v1;
      result = off_101B8(v1);
      if (v10)
      {
        *v6 = v10;
      }

      else
      {
        result = pthread_setspecific(qword_10040, 0);
      }
    }

    if (v14)
    {
      *v3 = v14;
    }

    else
    {
      return pthread_setspecific(qword_10058, 0);
    }
  }

  return result;
}

uint64_t sub_4890(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      v21 = 0;
      v5 = pthread_getspecific(qword_10058);
      v18 = 0;
      v19 = 0;
      v20 = 0;
      if (v5)
      {
        v6 = v5;
        v7 = off_101C0;
        v20 = *v5;
        *v5 = &v18;
      }

      else
      {
        v6 = &v21;
        pthread_setspecific(qword_10058, &v21);
        v20 = 0;
        v21 = &v18;
        v7 = off_101C0;
      }

      v18 = v7;
      v19 = v7;
      v17 = 0;
      v8 = pthread_getspecific(qword_10040);
      v14 = 0;
      v15 = 0;
      v16 = 0;
      if (v8)
      {
        v9 = v8;
        v10 = *v8;
        if (**v8 == a1)
        {
          v2 = off_101C0(a1, v3);
LABEL_21:
          if (v20)
          {
            *v6 = v20;
          }

          else
          {
            pthread_setspecific(qword_10058, 0);
          }

          return v2;
        }

        v14 = a1;
        v15 = 0;
        v16 = v10;
        *v8 = &v14;
      }

      else
      {
        v9 = &v17;
        pthread_setspecific(qword_10040, &v17);
        v16 = 0;
        v17 = &v14;
        v14 = a1;
        v15 = 0;
      }

      if (off_10170)
      {
        v11 = off_10170(a1);
      }

      else
      {
        v11 = 0;
      }

      v2 = off_101C0(a1, v3);
      if (v16)
      {
        *v9 = v16;
      }

      else
      {
        pthread_setspecific(qword_10040, 0);
      }

      do
      {
        if (off_10170)
        {
          v12 = v11 + 1;
        }

        else
        {
          v12 = v11;
        }

        sub_908();
        v11 = v12;
        LODWORD(v3) = v3 - 1;
      }

      while (v3);
      goto LABEL_21;
    }
  }

  return v2;
}

uint64_t sub_4A64(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v19 = 0;
    v4 = pthread_getspecific(qword_10058);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    if (v4)
    {
      v5 = v4;
      v6 = off_101C8;
      v18 = *v4;
      *v4 = &v16;
    }

    else
    {
      v5 = &v19;
      pthread_setspecific(qword_10058, &v19);
      v18 = 0;
      v19 = &v16;
      v6 = off_101C8;
    }

    v16 = v6;
    v17 = v6;
    v15 = 0;
    v7 = pthread_getspecific(qword_10040);
    v8 = v7;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    if (v7)
    {
      v9 = *(*v7 + 8);
    }

    else
    {
      v9 = 0;
    }

    if (v9 == v3)
    {
      result = off_101C8(v3, a2);
LABEL_22:
      if (!v18)
      {
        return pthread_setspecific(qword_10058, 0);
      }

      *v5 = v18;
      return result;
    }

    if (off_10170)
    {
      v10 = off_10170(v3);
      if (!a2)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v10 = 0;
      if (!a2)
      {
        goto LABEL_16;
      }
    }

    v11 = a2;
    do
    {
      v10 -= off_10170 != 0;
      sub_908();
      --v11;
    }

    while (v11);
LABEL_16:
    if (v8)
    {
      v14 = *v8;
      *v8 = &v12;
    }

    else
    {
      v8 = &v15;
      pthread_setspecific(qword_10040, &v15);
      v14 = 0;
      v15 = &v12;
    }

    v12 = 0;
    v13 = v3;
    result = off_101C8(v3, a2);
    if (v14)
    {
      *v8 = v14;
    }

    else
    {
      result = pthread_setspecific(qword_10040, 0);
    }

    goto LABEL_22;
  }

  return result;
}

void sub_4C40(id a1)
{
  v1 = dlopen("/usr/lib/libobjc.A.dylib", 16);
  if (v1)
  {
    v2 = v1;
    v3 = dlsym(v1, "_objc_addWillInitializeClassFunc");
    if (v3)
    {
      v3(sub_4CCC, 0);
      byte_101D8 = 1;
    }

    dlclose(v2);
  }
}

char *sub_4CCC(int a1, Class cls)
{
  sub_32A8(cls);
  Class = object_getClass(cls);
  sub_32A8(Class);
  Name = class_getName(cls);
  v5 = Name;
  if (__PAIR64__(*(Name + 1), *Name) == 0x530000004FLL && Name[2] == 95 || !strncmp(Name, "__NS", 4uLL) && strstr(v5, "Block") || (result = sub_31FC(v5), result))
  {

    return sub_908();
  }

  return result;
}

uint64_t sub_4DA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a4)
  {
    return 5;
  }

  result = 0;
  *a4 = a2;
  return result;
}

uint64_t sub_4DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int a5)
{
  dword_101E1 = 16;
  result = pthread_self();
  qword_101F9 = result;
  dword_101E5 = 1;
  qword_10209 = 2;
  if (a5)
  {
    v8 = a5;
    do
    {
      _X21 = *a4;
      if (qword_11210 != -1)
      {
        sub_55B4();
      }

      if (byte_11209 == 1)
      {
        __asm { LDG             X8, [X21] }
      }

      else
      {
        _X8 = 0;
      }

      v14 = _X8 | _X21;
      *a4 = v14;
      qword_101E9 = v14 ^ 0x5555;
      qword_10201 = a4[1];
      sub_10AC(byte_101D9);
      v15 = *a4;
      v16 = a4[1];
      result = sub_258C(*a4, v16);
      if (result || (v16 < 8 ? (v17 = 0) : (v17 = *v15), qword_10028 <= v17 ? (_CF = v17 >= qword_10030) : (_CF = 1), _CF ? (v19 = 0) : (v19 = 1), v17 || v19))
      {
        result = sub_908();
      }

      a4 += 2;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_4F28(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_4FFC;
  v5[3] = &unk_8528;
  v5[4] = &v6;
  v5[5] = a1;
  v1 = qword_10038;
  v2 = pthread_self();
  pthread_setspecific(v1, v2);
  sub_4FFC(v5);
  pthread_setspecific(qword_10038, 0);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t sub_4FFC(uint64_t a1)
{
  v2 = 0;
  do
  {
    act_list = 0;
    act_listCnt = 0;
    result = task_threads(mach_task_self_, &act_list, &act_listCnt);
    if (result)
    {
      v4 = 0;
      v5 = 0;
      LODWORD(v6) = 0;
      act_listCnt = 0;
      goto LABEL_17;
    }

    result = act_listCnt;
    if (!act_listCnt)
    {
      v4 = 0;
      v5 = 0;
LABEL_13:
      LODWORD(v6) = 0;
LABEL_17:
      *(*(*(a1 + 32) + 8) + 24) = 1;
      v8 = v6 == 0;
      goto LABEL_18;
    }

    result = malloc_type_malloc(act_listCnt, 0x100004077774924uLL);
    v4 = result;
    v5 = act_listCnt;
    if (!act_listCnt)
    {
      goto LABEL_13;
    }

    v6 = 0;
    while (1)
    {
      v7 = act_list[v6];
      result = mach_thread_self();
      v4[v6] = v7 != result;
      if (v7 != result)
      {
        result = (*(a1 + 40))(act_list[v6]);
        if (result)
        {
          if (*(a1 + 40) == &thread_suspend)
          {
            break;
          }
        }
      }

      ++v6;
      v5 = act_listCnt;
      if (v6 >= act_listCnt)
      {
        goto LABEL_15;
      }
    }

    v5 = act_listCnt;
LABEL_15:
    if (v5 < v6)
    {
      sub_55F4();
    }

    if (v5 == v6)
    {
      goto LABEL_17;
    }

    if (*(a1 + 40) != &thread_suspend)
    {
      sub_55C8();
    }

    if (v6)
    {
      v14 = 0;
      do
      {
        if (v4[v14] == 1)
        {
          result = thread_resume(act_list[v14]);
        }

        ++v14;
      }

      while (v6 != v14);
      v8 = 0;
      v5 = act_listCnt;
    }

    else
    {
      v8 = 1;
    }

LABEL_18:
    if (v5)
    {
      free(v4);
      if (act_listCnt)
      {
        for (i = 0; i < act_listCnt; mach_port_deallocate(v10, act_list[i++]))
        {
          v10 = mach_thread_self();
        }

        v11 = 4 * act_listCnt;
      }

      else
      {
        v11 = 0;
      }

      result = vm_deallocate(mach_task_self_, act_list, v11);
    }
  }

  while (v2++ < 9 && v8);
  return result;
}

void sub_5200(id a1)
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  v1 = getpid();
  if (proc_pidinfo(v1, 3, 0, v2, 136) == 136 && (BYTE3(v2[0]) & 4) != 0)
  {
    byte_11209 = 1;
  }
}

mach_vm_address_t _OAFreeKeyFrame(mach_vm_address_t address)
{
  if (address != 1)
  {
    return mach_vm_deallocate(mach_task_self_, address, 0x17170uLL);
  }

  return address;
}

_DWORD *_OAGenerateDeltaEvent(_DWORD *result)
{
  if (!result[3])
  {
    return result;
  }

  v1 = result;
  result = pthread_getspecific(__keyframe_key);
  v2 = result;
  v3 = v1[2];
  if ((v3 - 3) <= 0x1Bu)
  {
    v4 = qword_5B60[(v3 - 3)];
    if (result)
    {
      goto LABEL_4;
    }

LABEL_14:
    pthread_setspecific(__keyframe_key, &dword_0 + 1);
    address = 0;
    mach_vm_allocate(mach_task_self_, &address, 0x17170uLL, 167772161);
    v2 = address;
    pthread_setspecific(__keyframe_key, address);
    goto LABEL_15;
  }

  v4 = 0;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_4:
  v5 = &result[1028 * v4];
  if (*v5 <= *&__keyFrameEventHorizon)
  {
LABEL_15:
    v17 = mach_absolute_time();
    v18 = v2 + 4112 * v4;
    *v18 = v17;
    v19 = 512 - v1[3];
    *(v18 + 8) = v19;
    result = memcpy((v18 + 8 * v19 + 16), v1 + 12, 8 * v1[3]);
    v1[2] |= 0x400000u;
    return result;
  }

  v6 = v1[3];
  v7 = *(v5 + 2);
  v8 = v6 - 1;
  if (v7 > 511 || (v8 & 0x80000000) != 0)
  {
    v1[2] = v3 | 0x800000;
    if ((v8 & 0x80000000) == 0)
    {
      v11 = 511;
LABEL_22:
      v20 = v11 - v8;
LABEL_23:
      *(v5 + 2) = v20;
      v1[3] = v20 | (v6 << 16);
      return result;
    }
  }

  else
  {
    v9 = v1 + 12;
    if (*(v5 + 513) != *&v1[2 * v8 + 12])
    {
      v15 = 511;
LABEL_19:
      v20 = v15 - v8;
      result = memcpy(&v5[8 * (v15 - v8) + 16], v9, 8 * v6);
      v1[2] |= 0x800000u;
      goto LABEL_23;
    }

    v10 = &result[1028 * v4 + 1024];
    v11 = 510;
    v12 = 511;
    while (1)
    {
      v13 = v6 + v11 - 511;
      v8 = v6 + v11 - 512;
      if (v12 <= v7 || v13 <= 0)
      {
        break;
      }

      v14 = *v10--;
      --v11;
      --v12;
      if (v14 != *(v9 + v8))
      {
        v15 = v11 + 1;
        v16 = v6 + v11;
        v8 = v16 - 511;
        v6 = v16 - 510;
        goto LABEL_19;
      }
    }

    v1[2] = v3 | 0x800000;
    if (v13 > 0)
    {
      LOWORD(v6) = v6 + v11 - 511;
      goto LABEL_22;
    }
  }

  *(v5 + 2) = 512 - v6;
  v1[3] = (512 - v6);
  return result;
}