uint64_t sub_1B5DA1380()
{
  qword_1ED833850 = 0;
  *algn_1ED833858 = "LXVulgarWordUsageDatabase";
  qword_1ED833860 = 0;
  unk_1ED833868 = 0;
  qword_1ED833870 = sub_1B5DA13D4;
  unk_1ED833878 = 0u;
  unk_1ED833888 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1ED833840 = result;
  return result;
}

void sub_1B5DA13D4(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = sqlite3_close(*(a1 + 16));
  v3 = v2;
  if (v2)
  {
    v4 = atomic_load(byte_1EB90C7D0);
    if (v4)
    {
      v5 = atomic_load(byte_1EB90CC20);
      if (v5)
      {
        printf("VulgarWordUsageDatabase: Error closing database: %d", v2);
        putchar(10);
      }

      else
      {
        v6 = sub_1B5D32914();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v9 = v3;
          _os_log_impl(&dword_1B5CDB000, v6, OS_LOG_TYPE_ERROR, "VulgarWordUsageDatabase: Error closing database: %d", buf, 8u);
        }
      }
    }
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B5DA14D4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1B5CE56B8(a1);
}

uint64_t LXVulgarWordUsageDatabaseIncrementUsageCount(uint64_t a1, const __CFString *a2, const __CFString *a3, const __CFString *a4, CFDictionaryRef theDict, CFErrorRef *a6)
{
  v30[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"wordLocale");
    }

    else
    {
      Value = 0;
    }

    sub_1B5DA1918(v21, a2, Value);
    if (v22 >= 0)
    {
      v14 = v21;
    }

    else
    {
      v14 = v21[0];
    }

    sub_1B5CDC4B4(v28, a3);
    v15 = v29;
    sub_1B5CDC4B4(v25, a4);
    if (!v15)
    {
      v15 = v30;
    }

    if (v26)
    {
      v16 = v26;
    }

    else
    {
      v16 = &v27;
    }

    v17 = qword_1ED8338C8;
    std::mutex::lock(qword_1ED8338C8);
    sub_1B5CE410C(__p, "usage_count + 1");
    *&v18 = CFAbsoluteTimeGetCurrent();
    v13 = sub_1B5D5E2C4((a1 + 16), __p, v14, v15, v16, v18, 1, theDict, a6);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    std::mutex::unlock(v17);
    if (v26 && v25[6] == 1)
    {
      free(v26);
    }

    if (v29 && v28[6] == 1)
    {
      free(v29);
    }

    if (v22 < 0)
    {
      operator delete(v21[0]);
    }
  }

  else
  {
    sub_1B5DA1734(@"VulgarWordUsageDatabase: Error incrementing the usage count -- provided database reference is NULL", a6);
    v13 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_1B5DA16A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, void *a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, void *a31)
{
  std::mutex::unlock(v31);
  if (a25 && a24 == 1)
  {
    free(a25);
  }

  if (a31 && a30 == 1)
  {
    free(a31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B5DA1734(CFStringRef theString, CFErrorRef *a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = atomic_load(byte_1EB90C7D0);
  if (v4)
  {
    v5 = atomic_load(byte_1EB90CC20);
    if (v5)
    {
      sub_1B5CDC4B4(&v13, theString);
      v6 = v14;
      if (!v14)
      {
        v6 = v15;
      }

      printf("%s", v6);
      if (v14 && BYTE6(v13) == 1)
      {
        free(v14);
      }

      putchar(10);
    }

    else
    {
      v7 = sub_1B5D32914();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1B5CDC4B4(&v13, theString);
        v8 = v14;
        if (!v14)
        {
          v8 = v15;
        }

        *buf = 136315138;
        v12 = v8;
        _os_log_impl(&dword_1B5CDB000, v7, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
        if (v14 && BYTE6(v13) == 1)
        {
          free(v14);
        }
      }
    }
  }

  if (a2)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    v13 = Mutable;
    CFDictionarySetValue(Mutable, @"errorMessageKey", theString);
    *a2 = CFErrorCreate(0, @"com.apple.LXVulgarWordUsageDatabase", 1, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1B5DA18E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_1B5CE56B8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5DA1918(uint64_t a1, CFStringRef theString, const __CFLocale *a3)
{
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
  CFStringTransform(MutableCopy, 0, *MEMORY[0x1E695E9A0], 0);
  CFStringLowercase(MutableCopy, a3);
  sub_1B5CE4DD0(MutableCopy, a1);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }
}

void sub_1B5DA19AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D7FAA4(va);
  _Unwind_Resume(a1);
}

uint64_t LXVulgarWordUsageDatabaseDecrementUsageCount(uint64_t a1, const __CFString *a2, const __CFString *a3, const __CFString *a4, CFDictionaryRef theDict, CFErrorRef *a6)
{
  v29[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"wordLocale");
    }

    else
    {
      Value = 0;
    }

    sub_1B5DA1918(v20, a2, Value);
    if (v21 >= 0)
    {
      v14 = v20;
    }

    else
    {
      v14 = v20[0];
    }

    sub_1B5CDC4B4(v27, a3);
    v15 = v28;
    sub_1B5CDC4B4(v24, a4);
    if (!v15)
    {
      v15 = v29;
    }

    if (v25)
    {
      v16 = v25;
    }

    else
    {
      v16 = &v26;
    }

    v17 = qword_1ED8338C8;
    std::mutex::lock(qword_1ED8338C8);
    sub_1B5CE410C(__p, "CASE WHEN usage_count > 0 THEN usage_count - 1 ELSE 0 END");
    v13 = sub_1B5D5E2C4((a1 + 16), __p, v14, v15, v16, 0, 0, theDict, a6);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    std::mutex::unlock(v17);
    if (v25 && v24[6] == 1)
    {
      free(v25);
    }

    if (v28 && v27[6] == 1)
    {
      free(v28);
    }

    if (v21 < 0)
    {
      operator delete(v20[0]);
    }
  }

  else
  {
    sub_1B5DA1734(@"VulgarWordUsageDatabase: Error decrementing the usage count -- provided database reference is NULL", a6);
    v13 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_1B5DA1B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, void *a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, void *a31)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v31);
  if (a25 && a24 == 1)
  {
    free(a25);
  }

  if (a31 && a30 == 1)
  {
    free(a31);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

BOOL LXVulgarWordUsageDatabaseCanAutocorrect(uint64_t a1, const __CFString *a2, const __CFString *a3, const __CFString *a4, CFDictionaryRef theDict, CFErrorRef *a6)
{
  v46[2] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    sub_1B5DA1734(@"VulgarWordUsageDatabase: Error checking whether can autocorrect -- provided database reference is NULL", a6);
    v13 = 0;
    goto LABEL_40;
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"wordLocale");
  }

  else
  {
    Value = 0;
  }

  sub_1B5DA1918(__p, a2, Value);
  if (v35 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  sub_1B5CDC4B4(v41, a3);
  v15 = v42;
  sub_1B5CDC4B4(v38, a4);
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = &v43;
  }

  if (v39)
  {
    v17 = v39;
  }

  else
  {
    v17 = &v40;
  }

  v18 = qword_1ED8338C8;
  std::mutex::lock(qword_1ED8338C8);
  sub_1B5D5E004(v44, theDict);
  ppStmt = 0;
  v19 = sqlite3_prepare_v2(*(a1 + 16), "SELECT usage_count FROM vword_usage WHERE app = :app AND recipient = :recipient AND vword = :vword AND word_reading = :word_reading", -1, &ppStmt, 0);
  v20 = v19;
  if (v19)
  {
    v21 = CFStringCreateWithFormat(0, 0, @"VulgarWordUsageDatabase: Error compiling a SELECT statement: %d", v19);
    v36 = v21;
    sub_1B5D5E078(v20, v21, a6);
    if (v21)
    {
      CFRelease(v21);
    }

    goto LABEL_18;
  }

  v22 = ppStmt;
  v23 = sqlite3_bind_parameter_index(ppStmt, ":app");
  sqlite3_bind_text(v22, v23, v16, -1, 0);
  v24 = ppStmt;
  v25 = sqlite3_bind_parameter_index(ppStmt, ":recipient");
  sqlite3_bind_text(v24, v25, v17, -1, 0);
  v26 = ppStmt;
  v27 = sqlite3_bind_parameter_index(ppStmt, ":vword");
  sqlite3_bind_text(v26, v27, v14, -1, 0);
  v28 = ppStmt;
  v29 = sqlite3_bind_parameter_index(ppStmt, ":word_reading");
  if (v45)
  {
    v30 = v45;
  }

  else
  {
    v30 = v46;
  }

  sqlite3_bind_text(v28, v29, v30, -1, 0);
  if (sqlite3_step(ppStmt) == 100)
  {
    v31 = sqlite3_column_int(ppStmt, 0);
  }

  else
  {
    v31 = 0;
  }

  sqlite3_finalize(ppStmt);
  if (v31 <= 2)
  {
    if (v31 < 1)
    {
LABEL_18:
      v13 = 0;
      goto LABEL_29;
    }

    v13 = sub_1B5D5EA2C(*(a1 + 16), v14, theDict, a6);
  }

  else
  {
    v13 = 1;
  }

LABEL_29:
  if (v45 && v44[6] == 1)
  {
    free(v45);
  }

  std::mutex::unlock(v18);
  if (v39 && v38[6] == 1)
  {
    free(v39);
  }

  if (v42 && v41[6] == 1)
  {
    free(v42);
  }

  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_40:
  v32 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_1B5DA1F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, int a19, __int16 a20, char a21, void *a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, void *a28)
{
  if (a2)
  {
    sub_1B5CE56B8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL LXVulgarWordUsageDatabaseCanAutocorrectSomewhere(uint64_t a1, const __CFString *a2, CFDictionaryRef theDict, CFErrorRef *a4)
{
  if (a1)
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"wordLocale");
    }

    else
    {
      Value = 0;
    }

    sub_1B5DA1918(__p, a2, Value);
    v10 = v16;
    v11 = __p[0];
    v12 = qword_1ED8338C8;
    std::mutex::lock(qword_1ED8338C8);
    if (v10 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = v11;
    }

    v9 = sub_1B5D5EA2C(*(a1 + 16), v13, theDict, a4);
    std::mutex::unlock(v12);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    sub_1B5DA1734(@"VulgarWordUsageDatabase: Error checking whether can autocorrect somewhere -- provided database reference is NULL", a4);
    return 0;
  }

  return v9;
}

void sub_1B5DA20DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::mutex::unlock(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t LXVulgarWordUsageDatabasePerformMaintenance(uint64_t a1, CFErrorRef *a2)
{
  if (a1)
  {
    v4 = qword_1ED8338C8;
    std::mutex::lock(qword_1ED8338C8);
    ppStmt = 0;
    v5 = sqlite3_prepare_v2(*(a1 + 16), "DELETE FROM vword_usage WHERE last_use_timestamp < :threshold", -1, &ppStmt, 0);
    v6 = v5;
    if (v5)
    {
      v7 = CFStringCreateWithFormat(0, 0, @"VulgarWordUsageDatabase: Error compiling a DELETE WHERE statement: %d", v5);
      sub_1B5D5E078(v6, v7, a2);
      if (v7)
      {
LABEL_9:
        CFRelease(v7);
      }
    }

    else
    {
      Current = CFAbsoluteTimeGetCurrent();
      v10 = ppStmt;
      v11 = sqlite3_bind_parameter_index(ppStmt, ":threshold");
      sqlite3_bind_double(v10, v11, Current + -15552000.0);
      v12 = sqlite3_step(ppStmt);
      sqlite3_finalize(ppStmt);
      if (v12 == 101)
      {
        v8 = 1;
LABEL_11:
        std::mutex::unlock(v4);
        return v8;
      }

      v7 = CFStringCreateWithFormat(0, 0, @"VulgarWordUsageDatabase: Error evaluating a DELETE WHERE statement: %d", v12);
      sub_1B5D5E078(v12, v7, a2);
      if (v7)
      {
        goto LABEL_9;
      }
    }

    v8 = 0;
    goto LABEL_11;
  }

  sub_1B5DA1734(@"VulgarWordUsageDatabase: Error performing database maintenance -- provided database reference is NULL", a2);
  return 0;
}

void sub_1B5DA2280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1B5CE5794(va, 0);
  std::mutex::unlock(v3);
  _Unwind_Resume(a1);
}

BOOL LXVulgarWordUsageDatabaseReset(uint64_t a1, CFErrorRef *a2)
{
  if (a1)
  {
    v4 = qword_1ED8338C8;
    std::mutex::lock(qword_1ED8338C8);
    v5 = sqlite3_exec(*(a1 + 16), "DELETE FROM vword_usage", 0, 0, 0);
    v6 = v5;
    if (v5)
    {
      v7 = CFStringCreateWithFormat(0, 0, @"VulgarWordUsageDatabase: Error resetting the database: %d", v5);
      sub_1B5D5E078(v6, v7, a2);
      if (v7)
      {
        CFRelease(v7);
      }
    }

    v8 = v6 == 0;
    std::mutex::unlock(v4);
  }

  else
  {
    sub_1B5DA1734(@"VulgarWordUsageDatabase: Error resetting the database -- provided database reference is NULL", a2);
    return 0;
  }

  return v8;
}

void sub_1B5DA2394(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5CE5794(va, 0);
  std::mutex::unlock(v2);
  _Unwind_Resume(a1);
}

void sub_1B5DA23C0(uint64_t a1)
{
  sub_1B5DA23F8(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5DA23F8(uint64_t a1)
{
  *a1 = &unk_1F2D5AFD0;
  v2 = (a1 + 8);
  sub_1B5DA2460((a1 + 24), 0);
  sub_1B5CE57CC((a1 + 16), 0);
  sub_1B5CE5794(v2, 0);
  return a1;
}

uint64_t **sub_1B5DA2460(uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[185];
    v2[185] = 0;
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = v2[184];
    v2[184] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v2[183];
    v2[183] = 0;
    if (v5)
    {
      v11 = (v5 + 32);
      sub_1B5D326B4(&v11);
      v11 = (v5 + 8);
      sub_1B5D32740(&v11);
      MEMORY[0x1B8C880F0](v5, 0x1020C404D15F4B2);
    }

    v2[11] = &unk_1F2D559C0;
    v6 = v2[180];
    if (v6 && *(v2 + 1438) == 1)
    {
      free(v6);
    }

    sub_1B5D1BBBC((v2 + 173));
    v7 = v2[8];
    v2[8] = 0;
    if (v7)
    {
      if (*v7)
      {
        munmap(*v7, *(v7 + 8));
      }

      *(v7 + 8) = 0;
      MEMORY[0x1B8C880F0](v7, 0x1080C40FC6463CFLL);
    }

    v8 = v2[4];
    if (v8)
    {
      sub_1B5CDD904(v8);
    }

    v9 = v2[1];
    v2[1] = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = *v2;
    *v2 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    JUMPOUT(0x1B8C880F0);
  }

  return result;
}

void sub_1B5DA2654(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        if (*(v4 - 25) < 0)
        {
          operator delete(*(v4 - 6));
        }

        if (*(v4 - 49) < 0)
        {
          operator delete(*(v4 - 9));
        }

        v6 = v4 - 12;
        if (*(v4 - 73) < 0)
        {
          operator delete(*v6);
        }

        v4 -= 12;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1B5DA2710(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
}

uint64_t sub_1B5DA2744(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 88);
  if (*(a2 + 47) < 0)
  {
    sub_1B5CE4AC4((a1 + 8), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v4 = *(a2 + 24);
    *(a1 + 24) = *(a2 + 40);
    *(a1 + 8) = v4;
  }

  if (*(a2 + 71) < 0)
  {
    sub_1B5CE4AC4((a1 + 32), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v5 = *(a2 + 48);
    *(a1 + 48) = *(a2 + 64);
    *(a1 + 32) = v5;
  }

  *(a1 + 56) = *(a2 + 72);
  return a1;
}

void sub_1B5DA27D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5DA27F4()
{
  qword_1EB90CB80 = 0;
  *algn_1EB90CB88 = "LXTransliterationEntry";
  qword_1EB90CB90 = 0;
  unk_1EB90CB98 = 0;
  qword_1EB90CBA0 = sub_1B5DA2848;
  unk_1EB90CBA8 = 0u;
  unk_1EB90CBB8 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1EB90CBE0 = result;
  return result;
}

void sub_1B5DA2848(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

uint64_t sub_1B5DA28A0(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t sub_1B5DA2900(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1B5D4890C(result, a4);
  }

  return result;
}

void sub_1B5DA2964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1B5D1BF88(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DA2984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      sub_1B5D5CABC(a3 + v6, (a1 + v6));
      v6 += 32;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

void sub_1B5DA2A30(uint64_t *a1, unsigned __int16 *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = a1[2];
  v9 = *a1;
  if (a4 > (v8 - *a1) >> 5)
  {
    if (v9)
    {
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v9)
      {
        do
        {
          v12 = *(v10 - 24);
          if (v12 && *(v10 - 26) == 1)
          {
            free(v12);
          }

          v10 -= 32;
        }

        while (v10 != v9);
        v11 = *a1;
      }

      a1[1] = v9;
      operator delete(v11);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 59))
    {
      v13 = v8 >> 4;
      if (v8 >> 4 <= a4)
      {
        v13 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFE0)
      {
        v14 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      sub_1B5D4890C(a1, v14);
    }

    sub_1B5D04FA0();
  }

  v15 = a1[1];
  v16 = v15 - v9;
  if (a4 <= (v15 - v9) >> 5)
  {
    if (a2 != a3)
    {
      do
      {
        sub_1B5CDF770(v9, v6);
        v6 += 16;
        v9 += 32;
      }

      while (v6 != a3);
      v15 = a1[1];
    }

    while (v15 != v9)
    {
      v19 = *(v15 - 24);
      if (v19 && *(v15 - 26) == 1)
      {
        free(v19);
      }

      v15 -= 32;
    }

    a1[1] = v9;
  }

  else
  {
    if (v15 != v9)
    {
      v17 = v15 - v9;
      v18 = a2;
      do
      {
        sub_1B5CDF770(v9, v18);
        v18 += 16;
        v9 += 32;
        v17 -= 32;
      }

      while (v17);
      v15 = a1[1];
    }

    a1[1] = sub_1B5DA2984(v6 + v16, a3, v15);
  }
}

uint64_t sub_1B5DA2BDC(unsigned __int16 *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  *buf = 0x100000;
  *&buf[4] = 0;
  buf[6] = 1;
  *&buf[8] = 0;
  sub_1B5CDCAAC(buf, "|", 0, 1u);
  sub_1B5D8BE00(&v30, a1, buf);
  if (*&buf[8])
  {
    v2 = buf[6] == 1;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    free(*&buf[8]);
  }

  v3 = v30;
  v4 = v31;
  if (v30 == v31)
  {
    v5 = 0;
    goto LABEL_52;
  }

  v5 = 0;
  do
  {
    if (*(v3 + 8))
    {
      v6 = *(v3 + 8);
    }

    else
    {
      v6 = (v3 + 16);
    }

    sub_1B5CE410C(buf, v6);
    v7 = 0;
    v8 = v33;
    v9 = *buf;
    while (1)
    {
      v10 = strlen((&off_1E7C21988)[v7]);
      v11 = v10;
      if ((v8 & 0x80) != 0)
      {
        break;
      }

      if (v10 == v8)
      {
        v12 = buf;
        goto LABEL_18;
      }

LABEL_19:
      v7 += 2;
      if (v7 == 22)
      {
        v13 = 0;
        if ((v8 & 0x80) == 0)
        {
          goto LABEL_21;
        }

LABEL_37:
        operator delete(v9);
        if ((v13 & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_22;
      }
    }

    if (v10 != *(&v9 + 1))
    {
      goto LABEL_19;
    }

    v12 = v9;
    if (*(&v9 + 1) == -1)
    {
      sub_1B5D15224();
    }

LABEL_18:
    if (memcmp(v12, (&off_1E7C21988)[v7], v11))
    {
      goto LABEL_19;
    }

    v13 = 1;
    if ((v8 & 0x80) != 0)
    {
      goto LABEL_37;
    }

LABEL_21:
    if ((v13 & 1) == 0)
    {
LABEL_38:
      v23 = atomic_load(byte_1EB90C7D0);
      if (v23)
      {
        v24 = atomic_load(byte_1EB90CC20);
        if (v24)
        {
          v25 = *(v3 + 8);
          if (!v25)
          {
            v25 = (v3 + 16);
          }

          printf("WARNING: skipping invalid category=%s", v25);
          putchar(10);
        }

        else
        {
          v26 = sub_1B5D32914();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = *(v3 + 8);
            if (!v27)
            {
              v27 = v3 + 16;
            }

            *buf = 136315138;
            *&buf[4] = v27;
            _os_log_impl(&dword_1B5CDB000, v26, OS_LOG_TYPE_DEFAULT, "WARNING: skipping invalid category=%s", buf, 0xCu);
          }
        }
      }

      goto LABEL_49;
    }

LABEL_22:
    if (*(v3 + 8))
    {
      v14 = *(v3 + 8);
    }

    else
    {
      v14 = (v3 + 16);
    }

    sub_1B5CE410C(buf, v14);
    v15 = v33;
    v16 = &off_1E7C21988;
    v17 = 11;
    v18 = *buf;
    while (2)
    {
      v19 = strlen(*v16);
      v20 = v19;
      if ((v15 & 0x80) == 0)
      {
        if (v19 == v15)
        {
          v21 = buf;
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (v19 != *(&v18 + 1))
      {
        goto LABEL_32;
      }

      v21 = v18;
      if (*(&v18 + 1) == -1)
      {
        sub_1B5D15224();
      }

LABEL_31:
      if (memcmp(v21, *v16, v20))
      {
LABEL_32:
        v16 += 2;
        if (!--v17)
        {
          v22 = 0;
          if ((v15 & 0x80) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        continue;
      }

      break;
    }

    v22 = *(v16 + 2);
    if ((v15 & 0x80) != 0)
    {
LABEL_34:
      operator delete(v18);
    }

LABEL_35:
    v5 = v5 | v22;
LABEL_49:
    v3 += 32;
  }

  while (v3 != v4);
LABEL_52:
  *buf = &v30;
  sub_1B5D1BF88(buf);
  v28 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1B5DA2EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
    v19 = BYTE6(a17) == 1;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    free(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5DA2F2C(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = (v2 - *a1) >> 3;
  v5 = v4 + 1;
  if ((v4 + 1) >> 61)
  {
    sub_1B5D04FA0();
  }

  v7 = *(a1 + 16) - v3;
  if (v7 >> 2 > v5)
  {
    v5 = v7 >> 2;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    v8 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  v21 = a1;
  if (v8)
  {
    if (!(v8 >> 61))
    {
      operator new();
    }

    sub_1B5CE5968();
  }

  v18 = 0;
  v19 = 8 * v4;
  v9 = *a2;
  *a2 = 0;
  *(8 * v4) = v9;
  v20 = (8 * v4 + 8);
  if (v3 != v2)
  {
    v10 = 0;
    v11 = v3;
    v12 = 0;
    do
    {
      v13 = *v11;
      *v12 = *v11;
      if (v13 && atomic_fetch_add((v13 + 84), 1u) <= 0)
      {
        __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
      }

      ++v11;
      ++v12;
      v10 -= 8;
    }

    while (v11 != v2);
    do
    {
      if (*v3)
      {
        sub_1B5D1BE14(*v3 + 84);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  v14 = *a1;
  *a1 = 0;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_1B5DA3100(&v18);
  return v17;
}

uint64_t sub_1B5DA3100(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *(v2 - 8);
    v2 -= 8;
    v4 = v5;
    *(a1 + 16) = v2;
    if (v5)
    {
      sub_1B5D1BE14(v4 + 84);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unsigned __int16 *sub_1B5DA3158(uint64_t a1, unsigned __int16 *a2)
{
  result = *a2;
  if (*a2)
  {
    if (result == 1)
    {
      return *(a1 + 4 * *(a2 + 2) + 12);
    }

    else
    {
      result = sub_1B5CE3018((a1 + 1296), a2);
      if (result)
      {
        return *(result + 8);
      }
    }
  }

  return result;
}

uint64_t sub_1B5DA31A4(uint64_t a1, uint64_t a2, uint64_t *a3, _DWORD *a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v8 = *a3;
  for (i = a3[1]; i != v8; i -= 40)
  {
    v10 = *(i - 32);
    if (v10)
    {
      if (*(i - 34) == 1)
      {
        free(v10);
      }
    }
  }

  a3[1] = v8;
  *a4 = 0;
  if (*(a1 + 200) == *(a1 + 208) || !*(a2 + 1320))
  {
    v26 = 0;
    goto LABEL_88;
  }

  v46 = 0x100000;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  sub_1B5D5CABC(v41, a1);
  v11 = 0;
  v45 = 0;
  while (1)
  {
    v12 = HIWORD(v45);
    v13 = v42;
    if (!v42)
    {
      sub_1B5CDF8F4(v41);
      v13 = v42;
    }

    if (v12 >= v13)
    {
      break;
    }

    v14 = sub_1B5D8EBAC(v41);
    sub_1B5CDD970(v38, v14);
    if (v46)
    {
      sub_1B5D5D820(&v46, v38);
      v11 += v38[0];
    }

    (*(**(a2 + 1376) + 16))(&v32);
    if (v32 >= 3u)
    {
      ++*(a2 + 8);
    }

    v15 = HIWORD(v45) + ~*a4;
    if (sub_1B5CE2F44(a2, &v32))
    {
      if (v15 >= 0x20)
      {
        v16 = *a3;
        for (j = a3[1]; j != v16; j -= 40)
        {
          v18 = *(j - 32);
          if (v18 && *(j - 34) == 1)
          {
            free(v18);
          }
        }

LABEL_50:
        v25 = 0;
        a3[1] = v16;
        *a4 = 0;
        goto LABEL_65;
      }

      sub_1B5D5CABC(v34, v38);
      v37 = v15 | 0x20;
      sub_1B5DA36F0(a3, v34);
      if (v36 && v35 == 1)
      {
        free(v36);
      }

      --*a4;
      if (v49 && v48 == 1)
      {
        free(v49);
      }

      goto LABEL_58;
    }

    if (v14 != sub_1B5DA3158(a2, &v32))
    {
      if (!v32)
      {
        if (v15 >= 0x20)
        {
          v16 = *a3;
          for (k = a3[1]; k != v16; k -= 40)
          {
            v22 = *(k - 32);
            if (v22 && *(k - 34) == 1)
            {
              free(v22);
            }
          }

          goto LABEL_50;
        }

        sub_1B5D5CABC(v34, v38);
        v37 = v15 | 0x40;
        sub_1B5DA36F0(a3, v34);
        if (v36 && v35 == 1)
        {
          free(v36);
        }

        ++*a4;
        if (v49 && v48 == 1)
        {
          free(v49);
        }

        v11 = 0;
LABEL_58:
        v49 = 0;
        v25 = 1;
        v48 = 1;
        v50 = 0;
        v46 = 0x100000;
        v47 = 0;
        goto LABEL_65;
      }

      if (v46 && v11 < 3)
      {
        v19 = (a3[1] - 40);
        v20 = &v46;
      }

      else
      {
        if (v15 >= 0x20)
        {
          v16 = *a3;
          for (m = a3[1]; m != v16; m -= 40)
          {
            v24 = *(m - 32);
            if (v24 && *(m - 34) == 1)
            {
              free(v24);
            }
          }

          goto LABEL_50;
        }

        sub_1B5D5CABC(v34, v38);
        v37 = v15;
        sub_1B5DA36F0(a3, v34);
        if (v36 && v35 == 1)
        {
          free(v36);
        }

        v20 = v38;
        v19 = &v46;
      }

      sub_1B5CDF770(v19, v20);
      v11 = 0;
    }

    v25 = 1;
LABEL_65:
    if (v32 >= 0xFu && v33)
    {
      MEMORY[0x1B8C880C0](v33, 0x1000C8077774924);
    }

    if (v40 && v39 == 1)
    {
      free(v40);
    }

    if ((v25 & 1) == 0)
    {
      v26 = 0;
      goto LABEL_82;
    }
  }

  if ((*(a1 + 328) & 0x80) != 0 || (v28 = *a3, v27 = a3[1], v27 == *a3))
  {
    v26 = 1;
  }

  else
  {
    do
    {
      v29 = *(v27 - 32);
      if (v29 && *(v27 - 34) == 1)
      {
        free(v29);
      }

      v27 -= 40;
    }

    while (v27 != v28);
    v26 = 0;
    a3[1] = v28;
    *a4 = 0;
  }

LABEL_82:
  if (v44 && v43 == 1)
  {
    free(v44);
  }

  if (v49 && v48 == 1)
  {
    free(v49);
  }

LABEL_88:
  v30 = *MEMORY[0x1E69E9840];
  return v26;
}

void sub_1B5DA3638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned __int16 a9, uint64_t a10, int a11, __int16 a12, char a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, void *a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, void *a34)
{
  if (a14 && a13 == 1)
  {
    free(a14);
  }

  if (a9 >= 0xFu && a10)
  {
    MEMORY[0x1B8C880C0](a10, v34);
  }

  if (a21 && a20 == 1)
  {
    free(a21);
  }

  if (a27 && a26 == 1)
  {
    free(a27);
  }

  if (a34)
  {
    if (a33 == 1)
    {
      free(a34);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5DA36F0(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (v8 + 1 > 0x666666666666666)
    {
      sub_1B5D04FA0();
    }

    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v10;
    }

    v26 = a1;
    if (v11)
    {
      if (v11 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1B5CE5968();
    }

    v12 = 40 * v8;
    v23 = 0;
    v24 = v12;
    *(&v25 + 1) = 0;
    *v12 = 0x100000;
    *(v12 + 4) = 0;
    *(v12 + 6) = 0;
    *(v12 + 8) = 0;
    v13 = sub_1B5D5CBBC(40 * v8, a2);
    v15 = *a1;
    v14 = a1[1];
    v16 = v13 - (v14 - *a1);
    *(v13 + 32) = *(a2 + 32);
    *&v25 = v13 + 40;
    if (v14 != v15)
    {
      v17 = 0;
      v18 = 40 * v8 - 8 * ((v14 - v15) >> 3);
      do
      {
        sub_1B5D5CABC(v18 + v17, (v15 + v17));
        *(v18 + v17 + 32) = *(v15 + v17 + 32);
        v17 += 40;
      }

      while (v15 + v17 != v14);
      do
      {
        v19 = *(v15 + 8);
        if (v19 && *(v15 + 6) == 1)
        {
          free(v19);
        }

        v15 += 40;
      }

      while (v15 != v14);
    }

    v20 = *a1;
    *a1 = v16;
    v21 = a1[2];
    v22 = v25;
    *(a1 + 1) = v25;
    *&v25 = v20;
    *(&v25 + 1) = v21;
    v23 = v20;
    v24 = v20;
    result = sub_1B5DA396C(&v23);
    v7 = v22;
  }

  else
  {
    *v4 = 0x100000;
    *(v4 + 4) = 0;
    *(v4 + 6) = 0;
    *(v4 + 8) = 0;
    result = sub_1B5D5CBBC(v4, a2);
    *(result + 32) = *(a2 + 32);
    v7 = result + 40;
    a1[1] = result + 40;
  }

  a1[1] = v7;
  return result;
}

uint64_t sub_1B5DA396C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      v5 = *(v2 - 32);
      if (v5 && *(v2 - 34) == 1)
      {
        free(v5);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1B5DA39D8(const void *a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = sub_1B5D5CABC(a1, (a2 + 104));
  sub_1B5D5DAB8(v4, " : f=%.0f", v5, v6, v7, v8, v9, v10, *(a2 + 88));
  v17 = *(a2 + 36);
  if (v17)
  {
    v43 = 0x100000;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47[0] = 0;
    if (v17)
    {
      sub_1B5D5CC40(&v43, 0x74u);
    }

    if ((v17 & 2) != 0)
    {
      sub_1B5D5CC40(&v43, 0x6Fu);
    }

    if ((v17 & 0x20) != 0)
    {
      sub_1B5D5CC40(&v43, 0x6Cu);
    }

    if ((v17 & 0x40) != 0)
    {
      sub_1B5D5CC40(&v43, 0x70u);
    }

    if (v43)
    {
      v18 = v47;
      if (v46)
      {
        LOBYTE(v18) = v46;
      }

      sub_1B5D5DAB8(a1, " : r=%s", v11, v12, v13, v14, v15, v16, v18);
    }

    v19 = *(a2 + 36);
    LODWORD(v40) = 0x100000;
    WORD2(v40) = 0;
    BYTE6(v40) = 0;
    v41 = 0;
    v42 = 0;
    if ((v19 & 0x1000000) != 0)
    {
      sub_1B5D5CC40(&v40, 0x6Fu);
    }

    if ((v19 & 0x800000) != 0)
    {
      sub_1B5D5CC40(&v40, 0x76u);
    }

    if ((v19 & 0x2000000) != 0)
    {
      sub_1B5D5CC40(&v40, 0x73u);
    }

    v20 = v41;
    if (v40)
    {
      v21 = &v42;
      if (v41)
      {
        LOBYTE(v21) = v41;
      }

      sub_1B5D5DAB8(a1, " : ovs=%s", v11, v12, v13, v14, v15, v16, v21);
      v20 = v41;
    }

    if (v20 && BYTE6(v40) == 1)
    {
      free(v20);
    }

    if (v46 && v45 == 1)
    {
      free(v46);
    }
  }

  if (*(a2 + 40))
  {
    sub_1B5D5DAB8(a1, " : c=%#x", v11, v12, v13, v14, v15, v16, *(a2 + 40));
  }

  if (*a2 && !sub_1B5D5DD60(a2, (a2 + 104)))
  {
    v22 = *(a2 + 8);
    if (!v22)
    {
      LOBYTE(v22) = a2 + 16;
    }

    sub_1B5D5DAB8(a1, " : s=%s", v11, v12, v13, v14, v15, v16, v22);
  }

  if (*(a2 + 256) != *(a2 + 264))
  {
    LODWORD(v40) = 0x100000;
    WORD2(v40) = 0;
    BYTE6(v40) = 1;
    v41 = 0;
    sub_1B5CDCAAC(&v40, ",", 0, 1u);
    sub_1B5D8BFCC(&v43, *(a2 + 256), *(a2 + 264), &v40);
    LOBYTE(v29) = v46;
    if (!v46)
    {
      v29 = v47;
    }

    sub_1B5D5DAB8(a1, " : pre=%s", v23, v24, v25, v26, v27, v28, v29);
    if (v46 && v45 == 1)
    {
      free(v46);
    }

    if (v41 && BYTE6(v40) == 1)
    {
      free(v41);
    }
  }

  if ((*(a2 + 59) & 0x10) != 0)
  {
    sub_1B5D5DAB8(a1, " : needs_prefix", v11, v12, v13, v14, v15, v16, v39);
  }

  if (*(a2 + 280) != *(a2 + 288))
  {
    LODWORD(v40) = 0x100000;
    WORD2(v40) = 0;
    BYTE6(v40) = 1;
    v41 = 0;
    sub_1B5CDCAAC(&v40, ",", 0, 1u);
    sub_1B5D8BFCC(&v43, *(a2 + 280), *(a2 + 288), &v40);
    LOBYTE(v36) = v46;
    if (!v46)
    {
      v36 = v47;
    }

    sub_1B5D5DAB8(a1, " : post=%s", v30, v31, v32, v33, v34, v35, v36);
    if (v46 && v45 == 1)
    {
      free(v46);
    }

    if (v41 && BYTE6(v40) == 1)
    {
      free(v41);
    }
  }

  if ((*(a2 + 59) & 0x20) != 0)
  {
    sub_1B5D5DAB8(a1, " : needs_suffix", v11, v12, v13, v14, v15, v16, v39);
  }

  v37 = *(a2 + 76);
  if (v37)
  {
    sub_1B5D5DAB8(a1, " : head_pos=%d", v11, v12, v13, v14, v15, v16, *(a2 + 76));
    v37 = *(a2 + 76);
  }

  if (v37 >= 0x10000)
  {
    sub_1B5D5DAB8(a1, " : tail_pos=%d", v11, v12, v13, v14, v15, v16, SBYTE2(v37));
  }

  v38 = *MEMORY[0x1E69E9840];
}

void sub_1B5DA3DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, void *a19)
{
  if (a13 && a12 == 1)
  {
    free(a13);
  }

  if (a19 && a18 == 1)
  {
    free(a19);
  }

  v21 = *(v19 + 8);
  if (v21)
  {
    if (*(v19 + 6) == 1)
    {
      free(v21);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5DA3E54(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40[2] = *MEMORY[0x1E69E9840];
  *a1 = 0x100000;
  a1[2] = 0;
  *(a1 + 6) = 0;
  *(a1 + 1) = 0;
  *(a1 + 16) = 0;
  v11 = (a2 + 136);
  v10 = *(a2 + 136);
  v12 = *(a2 + 144);
  if (v10 <= 0xE)
  {
    v13 = (a2 + 138);
  }

  else
  {
    v13 = *(a2 + 144);
  }

  sub_1B5D8C1E4(v37, v13, v10, a4, a5, a6, a7, a8);
  LOBYTE(v20) = v39;
  if (!v39)
  {
    v20 = v40;
  }

  sub_1B5D5DAB8(a1, "<Word: k=0x%s> ", v14, v15, v16, v17, v18, v19, v20);
  if (v39 && v38 == 1)
  {
    free(v39);
  }

  sub_1B5DA39D8(v37, a2);
  sub_1B5D5D820(a1, v37);
  if (v39 && v38 == 1)
  {
    free(v39);
  }

  v21 = *(a2 + 152);
  if (*(a2 + 152) && !sub_1B5CE401C((a2 + 152), v11))
  {
    v27 = *(a2 + 160);
    if (v21 <= 0xE)
    {
      v28 = (a2 + 154);
    }

    else
    {
      v28 = *(a2 + 160);
    }

    sub_1B5D8C1E4(v37, v28, v21, v22, v23, v24, v25, v26);
    LOBYTE(v35) = v39;
    if (!v39)
    {
      v35 = v40;
    }

    sub_1B5D5DAB8(a1, " (s=0x%s)", v29, v30, v31, v32, v33, v34, v35);
    if (v39 && v38 == 1)
    {
      free(v39);
    }
  }

  v36 = *MEMORY[0x1E69E9840];
}

void sub_1B5DA3FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13)
{
  if (a13 && a12 == 1)
  {
    free(a13);
  }

  v15 = *(v13 + 8);
  if (v15)
  {
    if (*(v13 + 6) == 1)
    {
      free(v15);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5DA402C(uint64_t a1)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v25[0] = vrev64_s32(*(a1 + 8));
  if (!*(a1 + 32))
  {
LABEL_16:
    v13 = (a1 + 24);
    v14 = v25;
    do
    {
      v15 = *v13;
      if (!*v13)
      {
LABEL_24:
        operator new();
      }

      v16 = *v14;
      while (1)
      {
        while (1)
        {
          v17 = v15;
          v18 = *(v15 + 28);
          if (v16 >= v18)
          {
            break;
          }

          v15 = *v17;
          if (!*v17)
          {
            goto LABEL_24;
          }
        }

        if (v18 >= v16)
        {
          break;
        }

        v15 = v17[1];
        if (!v15)
        {
          goto LABEL_24;
        }
      }

      v19 = v14 == v25;
      v14 += 2;
    }

    while (!v19);
    goto LABEL_35;
  }

  v3 = (a1 + 24);
  v2 = *(a1 + 24);
  v4 = *(a1 + 16);
  *(a1 + 16) = a1 + 24;
  *(v2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (*(v4 + 8))
  {
    v5 = *(v4 + 8);
  }

  else
  {
    v5 = v4;
  }

  if (!v5)
  {
    sub_1B5D46FF0(0);
    goto LABEL_16;
  }

  v6 = sub_1B5DA4244(v5);
  v7 = v6;
  v8 = *v3;
  v9 = (a1 + 24);
  if (*v3)
  {
    while (1)
    {
      while (1)
      {
        v9 = v8;
        v10 = *(v8 + 7);
        if (LODWORD(v25[0]) >= v10)
        {
          break;
        }

        v8 = *v9;
        v3 = v9;
        if (!*v9)
        {
          goto LABEL_13;
        }
      }

      if (v10 >= LODWORD(v25[0]))
      {
        break;
      }

      v8 = v9[1];
      if (!v8)
      {
        v3 = v9 + 1;
        goto LABEL_13;
      }
    }

    v12 = v6;
    v7 = v5;
  }

  else
  {
LABEL_13:
    v11 = HIDWORD(v25[0]);
    *(v5 + 28) = v25[0];
    *(v5 + 32) = v11;
    sub_1B5D7AB64((a1 + 16), v9, v3, v5);
    if (!v7)
    {
      v20 = 0;
LABEL_34:
      sub_1B5D46FF0(v20);
      goto LABEL_35;
    }

    v12 = sub_1B5DA4244(v7);
  }

  sub_1B5D46FF0(v7);
  if (v12)
  {
    for (i = v12[2]; i; i = i[2])
    {
      v12 = i;
    }

    v20 = v12;
    goto LABEL_34;
  }

LABEL_35:
  v23 = *(a1 + 48);
  v22 = (a1 + 48);
  sub_1B5D46FF0(v23);
  *v22 = 0;
  v22[1] = 0;
  *(v22 - 1) = v22;
  v24 = *MEMORY[0x1E69E9840];
}

void *sub_1B5DA4244(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t sub_1B5DA4298(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 8) >= a2)
  {
    return sub_1B5DA42B4((a1 + 40), a2);
  }

  else
  {
    return sub_1B5DA43DC((a1 + 16), a2);
  }
}

uint64_t sub_1B5DA42B4(uint64_t **a1, unsigned int a2)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v5 = a1 + 1;
  do
  {
    v6 = *(v2 + 7);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v2;
    }

    v2 = v2[v8];
  }

  while (v2);
  if (v5 == v3)
  {
    return 0;
  }

  v9 = *(v5 + 8);
  if (v9 >= a2)
  {
    return 0;
  }

  *(v5 + 8) = a2;
  if (*(v5 + 7) <= a2)
  {
    sub_1B5DA45B8(a1, v5);
    operator delete(v5);
  }

  v10 = a2 - 1;
  if (v9 < a2 - 1)
  {
    v11 = *v3;
    if (!*v3)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v12 = v11;
        v13 = *(v11 + 7);
        if (v10 >= v13)
        {
          break;
        }

        v11 = *v12;
        if (!*v12)
        {
          goto LABEL_18;
        }
      }

      if (v13 >= v10)
      {
        break;
      }

      v11 = v12[1];
      if (!v11)
      {
        goto LABEL_18;
      }
    }

    *(v12 + 8) = v9;
  }

  return 1;
}

uint64_t sub_1B5DA43DC(void *a1, unsigned int a2)
{
  v4 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    v6 = (a1 + 1);
    do
    {
      v7 = *(v5 + 28);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v5;
      }

      v5 = *(v5 + 8 * v9);
    }

    while (v5);
    if (v6 == v4)
    {
      v4 = v6;
    }

    else
    {
      v10 = *(v6 + 32);
      if (v10 < a2)
      {
        return 0;
      }

      if (v10 == a2)
      {
        *(v6 + 32) = a2 - 1;
        goto LABEL_12;
      }

      v4 = v6;
    }
  }

  v6 = sub_1B5DA452C(a1, v4, a2);
LABEL_12:
  if (v6 != *a1)
  {
    v12 = *v6;
    if (*v6)
    {
      do
      {
        v13 = v12;
        v12 = *(v12 + 8);
      }

      while (v12);
    }

    else
    {
      v14 = v6;
      do
      {
        v13 = *(v14 + 16);
        v15 = *v13 == v14;
        v14 = v13;
      }

      while (v15);
    }

    if (v13 == v6)
    {
      __assert_rtn("insert", "LXRangedTokenIDGenerator.cpp", 52, "left_iter != iter");
    }

    if (*(v13 + 28) == a2 - 1)
    {
      *(v6 + 32) = *(v13 + 32);
      sub_1B5DA45B8(a1, v13);
      operator delete(v13);
    }
  }

  return 1;
}

uint64_t sub_1B5DA452C(void *a1, uint64_t *a2, unsigned int a3)
{
  v3 = *sub_1B5DA460C(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_1B5DA45B8(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  return sub_1B5D0BC10(v6, a2);
}

uint64_t *sub_1B5DA460C(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *(a2 + 7), v6 > a5))
  {
    v7 = *a2;
    if (*a1 == a2)
    {
      v9 = a2;
LABEL_17:
      if (v7)
      {
        *a3 = v9;
        return v9 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v7)
    {
      v8 = *a2;
      do
      {
        v9 = v8;
        v8 = v8[1];
      }

      while (v8);
    }

    else
    {
      v12 = a2;
      do
      {
        v9 = v12[2];
        v13 = *v9 == v12;
        v12 = v9;
      }

      while (v13);
    }

    if (*(v9 + 7) < a5)
    {
      goto LABEL_17;
    }

    v14 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v15 = v14;
          v16 = *(v14 + 28);
          if (v16 <= a5)
          {
            break;
          }

          v14 = *v15;
          v5 = v15;
          if (!*v15)
          {
            goto LABEL_43;
          }
        }

        if (v16 >= a5)
        {
          break;
        }

        v5 = v15 + 1;
        v14 = v15[1];
      }

      while (v14);
      goto LABEL_43;
    }

LABEL_42:
    v15 = a1 + 1;
LABEL_43:
    *a3 = v15;
    return v5;
  }

  if (v6 >= a5)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v10 = a2[1];
  if (v10)
  {
    v11 = a2[1];
    do
    {
      a4 = v11;
      v11 = *v11;
    }

    while (v11);
  }

  else
  {
    v17 = a2;
    do
    {
      a4 = v17[2];
      v13 = *a4 == v17;
      v17 = a4;
    }

    while (!v13);
  }

  if (a4 != v5 && *(a4 + 7) <= a5)
  {
    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v15 = v18;
          v19 = *(v18 + 28);
          if (v19 <= a5)
          {
            break;
          }

          v18 = *v15;
          v5 = v15;
          if (!*v15)
          {
            goto LABEL_43;
          }
        }

        if (v19 >= a5)
        {
          break;
        }

        v5 = v15 + 1;
        v18 = v15[1];
      }

      while (v18);
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v10)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t sub_1B5DA4794(uint64_t a1, unsigned int a2)
{
  if (!a2 || *(a1 + 12) < a2)
  {
    return 0;
  }

  if (*(a1 + 8) >= a2)
  {
    return sub_1B5DA43DC((a1 + 40), a2);
  }

  return sub_1B5DA42B4((a1 + 16), a2);
}

uint64_t sub_1B5DA47C8(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = *(a1 + 16);
    v3 = *(v2 + 28);
    v4 = (*(v2 + 32) + 1);
    *(v2 + 32) = v4;
    if (v4 >= v3)
    {
      sub_1B5DA45B8((a1 + 16), v2);
      operator delete(v2);
    }
  }

  else
  {
    if (qword_1EB90CBF0 != -1)
    {
      dispatch_once(&qword_1EB90CBF0, &unk_1F2D5B010);
    }

    v5 = qword_1EB90CBE8;
    if (os_log_type_enabled(qword_1EB90CBE8, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      v10[0] = 67109376;
      v10[1] = v6;
      v11 = 1024;
      v12 = v7;
      _os_log_impl(&dword_1B5CDB000, v5, OS_LOG_TYPE_INFO, "exhausted tokenID range: (%d, %d]", v10, 0xEu);
    }

    v4 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

os_log_t sub_1B5DA48E8()
{
  result = os_log_create("com.apple.Lexicon", "RangedTokenIDGenerator");
  qword_1EB90CBE8 = result;
  return result;
}

void sub_1B5DA4918(uint64_t a1)
{
  *a1 = &unk_1F2D55870;
  sub_1B5D46FF0(*(a1 + 48));
  sub_1B5D46FF0(*(a1 + 24));

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5DA4988(uint64_t a1)
{
  *a1 = &unk_1F2D55870;
  sub_1B5D46FF0(*(a1 + 48));
  sub_1B5D46FF0(*(a1 + 24));
  return a1;
}

void *sub_1B5DA49D8(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D55870;
  a1[1] = a2;
  a1[3] = 0;
  a1[2] = a1 + 3;
  a1[4] = 0;
  if (!*sub_1B5DA460C(a1 + 2, a1 + 3, &v5, &v4, HIDWORD(a2)))
  {
    operator new();
  }

  a1[7] = 0;
  a1[6] = 0;
  a1[5] = a1 + 6;
  return a1;
}

uint64_t sub_1B5DA4AC8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2000000000;
    v3 = off_1EB90C808;
    v9 = off_1EB90C808;
    if (!off_1EB90C808)
    {
      v4 = sub_1B5D8DF90();
      v7[3] = dlsym(v4, "mecab_destroy");
      off_1EB90C808 = v7[3];
      v3 = v7[3];
    }

    _Block_object_dispose(&v6, 8);
    if (!v3)
    {
      dlerror();
      result = abort_report_np();
      __break(1u);
      return result;
    }

    v3(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1B5DA4BE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  sub_1B5CE56B8(a1);
}

uint64_t sub_1B5DA4C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 24);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v6 = off_1EB90CB50;
  v13 = off_1EB90CB50;
  if (!off_1EB90CB50)
  {
    v7 = sub_1B5D8DF90();
    v11[3] = dlsym(v7, "mecab_sparse_tonode2");
    off_1EB90CB50 = v11[3];
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v6)
  {
    dlerror();
    v9 = abort_report_np();
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v9);
  }

  return v6(v5, a2, 2 * a3);
}

void sub_1B5DA4D30(uint64_t a1)
{
  sub_1B5DA4D68(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5DA4D68(uint64_t a1)
{
  *a1 = &unk_1F2D55740;
  v2 = *(a1 + 32);
  if (v2 != -1)
  {
    close(v2);
  }

  *(a1 + 24) = 0;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  return a1;
}

void sub_1B5DA4DD4(uint64_t a1)
{
  sub_1B5DA4E0C(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5DA4E0C(uint64_t a1)
{
  *a1 = &unk_1F2D55D20;
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 84) == 1 && (*(a1 + 80) & 2) != 0)
    {
      msync(*(a1 + 96), *(a1 + 72), 16);
      *(a1 + 84) = 0;
    }

    munmap(*(a1 + 96), *(a1 + 72));
  }

  return sub_1B5DA4D68(a1);
}

void sub_1B5DA4EA4(uint64_t a1)
{
  sub_1B5DA4D68(a1);

  JUMPOUT(0x1B8C880F0);
}

void sub_1B5DA4EE0(uint64_t a1)
{
  sub_1B5DA4E0C(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5DA4F1C(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  if (v4)
  {
    v7 = strnlen((v5 + v6), v4 - v6);
  }

  else
  {
    v7 = strlen((v5 + v6));
  }

  v8 = v7;
  v9 = v7 + v6 + 1;
  if (v9 > v4)
  {
    return 0;
  }

  a1[2] = v9;
  if (!v5)
  {
    return 0;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1B5D114C8();
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v7;
  if (v7)
  {
    memmove(&__dst, (v5 + v6), v7);
  }

  *(&__dst + v8) = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = __dst;
  v11 = v14;
  *(a2 + 16) = v14;
  v12 = HIBYTE(v11);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 8);
  }

  if (v12 != v8)
  {
    __assert_rtn("read_null_terminated_string", "TIDataFile.cpp", 336, "result.size() == len");
  }

  return 1;
}

uint64_t sub_1B5DA5074(uint64_t *a1, int *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = v2 + 3;
  if (v3)
  {
    v5 = v4 > v3;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    return 0;
  }

  v6 = *a1;
  a1[2] = v4;
  if (!v6)
  {
    return 0;
  }

  *a2 = (*(v6 + v2) << 16) | (*(v6 + v2 + 1) << 8) | *(v6 + v2 + 2);
  return 1;
}

uint64_t sub_1B5DA50C4(uint64_t *a1, _DWORD *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = v3 + 1;
  if (v2)
  {
    v5 = v4 > v2;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v6 = *a1;
    a1[2] = v4;
    if (v6)
    {
      v7 = *(v6 + v3);
      v8 = *(v6 + v3);
      *a2 = v8;
      if ((v7 & 0x80000000) == 0)
      {
        return 1;
      }

      v10 = (v8 & 0x7F) << 8;
      *a2 = v10;
      v11 = v3 + 2;
      if (!v2 || v11 <= v2)
      {
        a1[2] = v11;
        v12 = v10 | *(v6 + v4);
        *a2 = v12;
        if ((v8 & 0x40) == 0)
        {
          return 1;
        }

        v13 = (v12 & 0x3FFF) << 16;
        *a2 = v13;
        v14 = v3 + 4;
        if (!v2 || v14 <= v2)
        {
          a1[2] = v14;
          *a2 = v13 | (bswap32(*(v6 + v11)) >> 16);
          return 1;
        }
      }
    }
  }

  return 0;
}

void *sub_1B5DA5160(void *a1, char *a2)
{
  sub_1B5CE410C(__p, a2);
  sub_1B5CE4B68(a1, __p, 1573, 384);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F2D55BD0;
  return a1;
}

void sub_1B5DA51D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

ssize_t sub_1B5DA51F0(ssize_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 24) == 1)
  {
    v5 = result;
    v6 = 0;
    while (1)
    {
      result = write(*(v5 + 32), (a2 + v6), a3 - v6);
      if (!result)
      {
        break;
      }

      v6 += result;
      if (result < 0)
      {
        *(v5 + 24) = 0;
        return result;
      }
    }
  }

  return result;
}

ssize_t sub_1B5DA5258(ssize_t a1, char *__s)
{
  v4 = strlen(__s);
  sub_1B5DA51F0(a1, __s, v4);
  v6 = 0;
  return sub_1B5DA51F0(a1, &v6, 1);
}

ssize_t sub_1B5DA52B0(ssize_t a1, unsigned int a2)
{
  v3 = a1;
  if (a2 <= 0x7E)
  {
    v7 = a2;
    v4 = &v7;
LABEL_5:
    a1 = v3;
    v5 = 1;
    return sub_1B5DA51F0(a1, v4, v5);
  }

  if (a2 <= 0x3FFE)
  {
    v8 = BYTE1(a2) | 0x80;
    sub_1B5DA51F0(a1, &v8, 1);
    v9 = a2;
    v4 = &v9;
    goto LABEL_5;
  }

  if (a2 > 0x3FFFFFFE)
  {
    v13 = -1;
    v4 = &v13;
    v5 = 4;
  }

  else
  {
    v10 = HIBYTE(a2) | 0xC0;
    sub_1B5DA51F0(a1, &v10, 1);
    v11 = BYTE2(a2);
    sub_1B5DA51F0(v3, &v11, 1);
    v12 = bswap32(a2) >> 16;
    v4 = &v12;
    a1 = v3;
    v5 = 2;
  }

  return sub_1B5DA51F0(a1, v4, v5);
}

off_t sub_1B5DA53A0(int a1)
{
  result = lseek(a1, 0, 1);
  if (result == -1)
  {
    __assert_rtn("tell", "TIDataFile.cpp", 548, "result != -1");
  }

  return result;
}

off_t sub_1B5DA53E8(int a1, off_t a2)
{
  result = lseek(a1, a2, 0);
  if (result == -1)
  {
    __assert_rtn("seek", "TIDataFile.cpp", 556, "false");
  }

  return result;
}

off_t sub_1B5DA542C(int a1)
{
  result = lseek(a1, 0, 2);
  if (result == -1)
  {
    __assert_rtn("seek_to_end", "TIDataFile.cpp", 565, "false");
  }

  return result;
}

void sub_1B5DA5474()
{
  if ((atomic_load_explicit(&qword_1EB90CC18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB90CC18))
  {
    qword_1EB90CC00 = 0;
    qword_1EB90CC08 = 0;
    qword_1EB90CC10 = 0;

    __cxa_guard_release(&qword_1EB90CC18);
  }
}

uint64_t sub_1B5DA54D4(uint64_t a1, char a2, atomic_uint **a3)
{
  *a1 = 1;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 34) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = -1;
  v5 = *a3;
  if (*a3)
  {
    v6 = (a1 + 72);
    if (atomic_fetch_add(v5, 1u) <= 0)
    {
      __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
    }

    v8 = *(a1 + 80);
    v7 = *(a1 + 88);
    if (v8 >= v7)
    {
      v10 = (v8 - *v6) >> 3;
      if ((v10 + 1) >> 61)
      {
        sub_1B5D04FA0();
      }

      v11 = v7 - *v6;
      v12 = v11 >> 2;
      if (v11 >> 2 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      v25 = a1 + 72;
      if (v13)
      {
        sub_1B5D051D8(v13);
      }

      v22 = 0;
      v23 = 8 * v10;
      v24 = (8 * v10);
      *(8 * v10) = v5;
      if (atomic_fetch_add(v5, 1u) < 1)
      {
        __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
      }

      *&v24 = v24 + 8;
      v14 = *(a1 + 72);
      v15 = *(a1 + 80);
      v16 = (v23 + v14 - v15);
      sub_1B5DA57C4(a1 + 72, v14, v15, v16);
      v17 = *(a1 + 72);
      *(a1 + 72) = v16;
      v18 = *(a1 + 88);
      v21 = v24;
      *(a1 + 80) = v24;
      *&v24 = v17;
      *(&v24 + 1) = v18;
      v22 = v17;
      v23 = v17;
      sub_1B5DA58B8(&v22);
      v9 = v21;
    }

    else
    {
      sub_1B5DA5754(a1 + 72, v5);
      v9 = v8 + 8;
    }

    *(a1 + 80) = v9;
    sub_1B5D1BCD4(v5);
  }

  if (*(a1 + 48) >= 0xFu)
  {
    v19 = *(a1 + 56);
    if (v19)
    {
      MEMORY[0x1B8C880C0](v19, 0x1000C8077774924);
    }
  }

  *(a1 + 48) = 1;
  *(a1 + 50) = a2;
  ++dword_1EB90CBF8;
  return a1;
}

void sub_1B5DA56D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1B5D1BCD4(v4);
  sub_1B5D1BD90(va);
  if (*(v3 + 48) >= 0xFu)
  {
    v6 = *(v3 + 56);
    if (v6)
    {
      MEMORY[0x1B8C880C0](v6, 0x1000C8077774924);
    }
  }

  v7 = *(v3 + 32);
  if (v7)
  {
    sub_1B5D1BC34((v7 + 24));
  }

  sub_1B5D1BD90(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DA5754(uint64_t result, atomic_uint *a2)
{
  v2 = *(result + 8);
  *v2 = a2;
  if (a2 && atomic_fetch_add(a2, 1u) <= 0)
  {
    __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
  }

  *(result + 8) = v2 + 1;
  return result;
}

uint64_t sub_1B5DA57C4(uint64_t a1, uint64_t *a2, atomic_uint **a3, atomic_uint **a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *a4 = *v6;
      if (v7)
      {
        if (atomic_fetch_add(v7, 1u) < 1)
        {
          __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
        }

        a4 = v12;
      }

      ++v6;
      v12 = ++a4;
    }

    while (v6 != a3);
    v10 = 1;
    do
    {
      if (*v5)
      {
        sub_1B5D1BCD4(*v5);
      }

      ++v5;
    }

    while (v5 != a3);
  }

  return sub_1B5DA590C(v9);
}

uint64_t sub_1B5DA58B8(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    v4 = *(v3 - 8);
    *(a1 + 16) = v3 - 8;
    if (v4)
    {
      sub_1B5D1BCD4(v4);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1B5DA590C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v6 = *(v3 - 8);
      v3 -= 8;
      v5 = v6;
      if (v6)
      {
        sub_1B5D1BCD4(v5);
      }
    }
  }

  return a1;
}

uint64_t sub_1B5DA5964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v10 = a1;
  v49 = *MEMORY[0x1E69E9840];
  *(a1 + 40) = *(a2 + 88) + *(a1 + 40);
  v11 = (a3 - 1);
  v12 = *(a2 + 200);
  if (*(a2 + 208) - v12 <= v11)
  {
    v14 = (a1 + 96);
    v13 = *(a1 + 96);
  }

  else
  {
    v13 = *(v12 + v11);
    v14 = (a1 + 96);
    if (*(a1 + 96) < v13)
    {
      v13 = *(a1 + 96);
    }
  }

  *v14 = v13;
  v15 = *(a2 + 136);
  if (v15 <= a3)
  {
    if (!a3)
    {
      v29 = a1;
      goto LABEL_70;
    }

    if (*(a1 + 32))
    {
      v24 = *(a2 + 232);
      if (!v24)
      {
        goto LABEL_27;
      }

      if (atomic_fetch_add((v24 + 24), 1u) <= 0)
      {
        goto LABEL_71;
      }

      v25 = *(a1 + 32);
      sub_1B5D1BC34((v24 + 24));
      if (v25 != v24)
      {
LABEL_27:
        v26 = atomic_load(byte_1EB90C7D0);
        if (v26)
        {
          v27 = atomic_load(byte_1EB90CC20);
          if (v27)
          {
            sub_1B5DA3E54(&v47, a2, a3, a4, a5, a6, a7, a8);
            v28 = v48[0];
            if (!v48[0])
            {
              v28 = &v48[1];
            }

            printf("WARNING! Changing surface form list for trie node on recursive insertion of: %s", v28);
            if (v48[0] && BYTE6(v47) == 1)
            {
              free(v48[0]);
            }

            putchar(10);
          }

          else
          {
            v30 = sub_1B5D32914();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              sub_1B5DA3E54(&v47, a2, a3, a4, a5, a6, a7, a8);
              v31 = v48[0];
              if (!v48[0])
              {
                v31 = &v48[1];
              }

              buf = 136315138;
              *buf_4 = v31;
              _os_log_impl(&dword_1B5CDB000, v30, OS_LOG_TYPE_DEFAULT, "WARNING! Changing surface form list for trie node on recursive insertion of: %s", &buf, 0xCu);
              if (v48[0] && BYTE6(v47) == 1)
              {
                free(v48[0]);
              }
            }
          }
        }

        v32 = **(v10 + 32);
        if (*(*(v10 + 32) + 8) != v32)
        {
          v33 = 0;
          v34 = 1;
          do
          {
            v35 = *(v32 + 8 * v33);
            v36 = atomic_load(byte_1EB90C7D0);
            if (v36)
            {
              v37 = atomic_load(byte_1EB90CC20);
              if (v37)
              {
                sub_1B5DA3E54(&v47, v35, a3, a4, a5, a6, a7, a8);
                v38 = v48[0];
                if (!v48[0])
                {
                  v38 = &v48[1];
                }

                printf("\tExisting form: %s", v38);
                if (v48[0] && BYTE6(v47) == 1)
                {
                  free(v48[0]);
                }

                putchar(10);
              }

              else
              {
                v39 = sub_1B5D32914();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                {
                  sub_1B5DA3E54(&v47, v35, a3, a4, a5, a6, a7, a8);
                  v40 = v48[0];
                  if (!v48[0])
                  {
                    v40 = &v48[1];
                  }

                  buf = 136315138;
                  *buf_4 = v40;
                  _os_log_impl(&dword_1B5CDB000, v39, OS_LOG_TYPE_DEFAULT, "\tExisting form: %s", &buf, 0xCu);
                  if (v48[0] && BYTE6(v47) == 1)
                  {
                    free(v48[0]);
                  }
                }
              }
            }

            v33 = v34;
            v32 = **(v10 + 32);
            ++v34;
          }

          while (v33 < (*(*(v10 + 32) + 8) - v32) >> 3);
        }
      }
    }

    v41 = *(a2 + 232);
    if (v41 && atomic_fetch_add((v41 + 24), 1u) <= 0)
    {
      __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
    }

    v42 = *(v10 + 32);
    *(v10 + 32) = v41;
    if (v42)
    {
      sub_1B5D1BC34((v42 + 24));
    }

    if (atomic_fetch_add(v10, 1u) <= 0)
    {
      __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
    }

    sub_1B5DA61E4(a2, v10);
    v29 = v10;
    goto LABEL_69;
  }

  if (v15 <= 0xE)
  {
    v16 = a2 + 138;
  }

  else
  {
    v16 = *(a2 + 144);
  }

  v17 = *(v16 + a3);
  v18 = (a1 + 8);
  v19 = (*(a1 + 16) - *(a1 + 8)) >> 3;
  if (v19 < 1)
  {
LABEL_35:
    if (atomic_fetch_add(v10, 1u) > 0)
    {
      operator new();
    }

LABEL_71:
    __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
  }

  v20 = -1;
  while (1)
  {
    v21 = *(*v18 + 8 * ((v20 + v19) >> 1));
    if (v21 && atomic_fetch_add(v21, 1u) <= 0)
    {
      goto LABEL_71;
    }

    v22 = *(v21 + 48) < 0xFu ? (v21 + 50) : *(v21 + 56);
    v23 = *v22;
    if (v23 <= v17)
    {
      break;
    }

    LODWORD(v19) = (v20 + v19) >> 1;
LABEL_20:
    sub_1B5D1BCD4(v21);
    if ((v19 - v20) <= 1)
    {
      goto LABEL_35;
    }
  }

  v20 = (v20 + v19) >> 1;
  if (v23 < v17)
  {
    goto LABEL_20;
  }

  v10 = v21;
  v29 = sub_1B5DA5964(v21, a2, (v8 + 1));
  if (!v10)
  {
    goto LABEL_70;
  }

LABEL_69:
  sub_1B5D1BCD4(v10);
LABEL_70:
  v43 = *MEMORY[0x1E69E9840];
  return v29;
}

uint64_t sub_1B5DA61E4(uint64_t result, atomic_uint *a2)
{
  if (a2 && atomic_fetch_add(a2, 1u) <= 0)
  {
    __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
  }

  v3 = *(result + 224);
  *(result + 224) = a2;
  if (v3)
  {

    return sub_1B5D1BCD4(v3);
  }

  return result;
}

uint64_t sub_1B5DA6260(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4)
  {
    LODWORD(v4) = ((v4[1] - *v4) & 0x7FFFFFFF8) != 0;
  }

  if (v4 + ((*(result + 16) - *(result + 8)) >> 3) <= 1)
  {
    if (atomic_fetch_add(result, 1u) <= 0)
    {
      __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
    }

    if (*(result + 48) < 0xFu)
    {
      v5 = (result + 50);
    }

    else
    {
      v5 = *(result + 56);
    }

    v6 = *v5;
    v7 = *(a2 + 48);
    v8 = *(a2 + 56);
    if (v7 <= 0xE)
    {
      v9 = (a2 + 50);
    }

    else
    {
      v9 = *(a2 + 56);
    }

    *sub_1B5CDD214(&v47, v7 + 1, v9, v7) = v6;
    if (*(a2 + 48) >= 0xFu)
    {
      v10 = *(a2 + 56);
      if (v10)
      {
        MEMORY[0x1B8C880C0](v10, 0x1000C8077774924);
      }
    }

    *(a2 + 48) = v47;
    if (a2 != v3)
    {
      v11 = (a2 + 8);
      v12 = *(a2 + 8);
      v14 = *(v3 + 8);
      v13 = *(v3 + 16);
      v15 = v13 - v14;
      v16 = *(a2 + 24);
      if (v16 - v12 < v13 - v14)
      {
        v17 = v15 >> 3;
        if (v12)
        {
          v18 = *(a2 + 16);
          v19 = *(a2 + 8);
          if (v18 != v12)
          {
            do
            {
              v21 = *(v18 - 8);
              v18 -= 8;
              v20 = v21;
              if (v21)
              {
                sub_1B5D1BCD4(v20);
              }
            }

            while (v18 != v12);
            v19 = *v11;
          }

          *(a2 + 16) = v12;
          operator delete(v19);
          v16 = 0;
          *v11 = 0;
          *(a2 + 16) = 0;
          *(a2 + 24) = 0;
        }

        if (!(v17 >> 61))
        {
          v22 = v16 >> 2;
          if (v16 >> 2 <= v17)
          {
            v22 = v17;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF8)
          {
            v23 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v22;
          }

          if (!(v23 >> 61))
          {
            sub_1B5D051D8(v23);
          }
        }

        sub_1B5D04FA0();
      }

      v24 = *(a2 + 16) - v12;
      if (v24 >= v15)
      {
        v25 = sub_1B5DA6660(*(v3 + 8), *(v3 + 16), *(a2 + 8));
        for (i = *(a2 + 16); i != v25; --i)
        {
          v28 = *(i - 1);
          v27 = v28;
          if (v28)
          {
            sub_1B5D1BCD4(v27);
          }
        }

        *(a2 + 16) = v25;
      }

      else
      {
        sub_1B5DA6660(*(v3 + 8), (v14 + v24), *(a2 + 8));
        *(a2 + 16) = sub_1B5DA66F4(a2 + 8, (v14 + v24), v13, *(a2 + 16));
      }
    }

    v29 = *(v3 + 8);
    if (((*(v3 + 16) - v29) & 0x7FFFFFFF8) == 8)
    {
      v30 = *v29;
      if (atomic_fetch_add(a2, 1u) <= 0)
      {
        __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
      }

      v31 = *(v30 + 72);
      v32 = *v31;
      *v31 = a2;
      if (v32)
      {
        sub_1B5D1BCD4(v32);
      }

      v33 = *(v3 + 8);
      for (j = *(v3 + 16); j != v33; j -= 8)
      {
        v36 = *(j - 8);
        v35 = v36;
        if (v36)
        {
          sub_1B5D1BCD4(v35);
        }
      }

      *(v3 + 16) = v33;
      if (*(a2 + 48) <= 3u)
      {
        sub_1B5DA6260(v30, a2);
      }
    }

    else
    {
      v37 = *(v3 + 32);
      if (v37)
      {
        v38 = *v37;
        if (v37[1] != *v37)
        {
          v39 = 0;
          v40 = 1;
          do
          {
            v41 = *(v38 + 8 * v39);
            if (atomic_fetch_add(a2, 1u) <= 0)
            {
              __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
            }

            sub_1B5DA61E4(v41, a2);
            sub_1B5D1BCD4(a2);
            v39 = v40;
            v37 = *(v3 + 32);
            v38 = *v37;
            ++v40;
          }

          while (v39 < (v37[1] - *v37) >> 3);
        }

        *(v3 + 32) = 0;
        v42 = *(a2 + 32);
        *(a2 + 32) = v37;
        if (v42)
        {
          sub_1B5D1BC34((v42 + 24));
        }
      }
    }

    v43 = *(v3 + 72);
    for (k = *(v3 + 80); k != v43; k -= 8)
    {
      v46 = *(k - 8);
      v45 = v46;
      if (v46)
      {
        sub_1B5D1BCD4(v45);
      }
    }

    *(v3 + 80) = v43;
    return sub_1B5D1BCD4(v3);
  }

  return result;
}

void sub_1B5DA6610(_Unwind_Exception *a1)
{
  *(v2 + 16) = v3;
  sub_1B5D1BCD4(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_1B5DA6660(atomic_uint **a1, atomic_uint **a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      if (*v5 && atomic_fetch_add(v6, 1u) <= 0)
      {
        __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
      }

      v7 = *a3;
      *a3 = v6;
      if (v7)
      {
        sub_1B5D1BCD4(v7);
      }

      ++v5;
      ++a3;
    }

    while (v5 != a2);
  }

  return a3;
}

atomic_uint **sub_1B5DA66F4(uint64_t a1, atomic_uint **a2, atomic_uint **a3, atomic_uint **a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  for (i = 0; a2 != a3; v10 = v4)
  {
    v5 = *a2;
    *v4 = *a2;
    if (v5)
    {
      if (atomic_fetch_add(v5, 1u) < 1)
      {
        __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
      }

      v4 = v10;
    }

    ++a2;
    ++v4;
  }

  i = 1;
  sub_1B5DA590C(v7);
  return v4;
}

uint64_t sub_1B5DA67C0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  if (((v1 - v2) & 0x7FFFFFFF8) == 0)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0x1EB90C000;
  do
  {
    v7 = *(v2 + 8 * v4);
    if (*(v7 + 48))
    {
      v8 = *(v7 + 96);
      v10 = v8 != -1 && v8 <= *(a1 + 96);
      v11 = *(v7 + 8);
      if (((*(v7 + 16) - v11) & 0x7FFFFFFF8) == 8)
      {
        v12 = *(v7 + 32);
        if (v12)
        {
          v10 |= ((v12[1] - *v12) & 0x7FFFFFFF8) != 0;
        }

        if ((v10 & 1) == 0)
        {
          sub_1B5DA6260(*v11, v7);
          v13 = *(v7 + 48);
          sub_1B5DA5474();
          v14 = v13 + 1;
          if (v13 + 1 > ((qword_1EB90CC08 - qword_1EB90CC00) >> 2))
          {
            sub_1B5DA5474();
            v15 = qword_1EB90CC08;
            v16 = (qword_1EB90CC08 - qword_1EB90CC00) >> 2;
            if (v14 <= v16)
            {
              if (v14 < v16)
              {
                qword_1EB90CC08 = qword_1EB90CC00 + 4 * v14;
              }
            }

            else
            {
              v17 = v14 - v16;
              if (v14 - v16 > (qword_1EB90CC10 - qword_1EB90CC08) >> 2)
              {
                v18 = (qword_1EB90CC10 - qword_1EB90CC00) >> 1;
                if (v18 <= v14)
                {
                  v18 = v13 + 1;
                }

                if ((qword_1EB90CC10 - qword_1EB90CC00) >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v19 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v19 = v18;
                }

                sub_1B5D0DF30(v19);
              }

              v20 = (v17 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
              v21 = vdupq_n_s64(v20);
              v22 = v20 - ((v17 + 0x3FFFFFFFFFFFFFFFLL) & 3);
              v23 = (qword_1EB90CC08 + 8);
              v24 = -4;
              do
              {
                v25 = vdupq_n_s64(v24 + 4);
                v26 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(v25, xmmword_1B5DC2630)));
                if (vuzp1_s16(v26, *v21.i8).u8[0])
                {
                  *(v23 - 2) = 0;
                }

                if (vuzp1_s16(v26, *&v21).i8[2])
                {
                  *(v23 - 1) = 0;
                }

                if (vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, vorrq_s8(v25, xmmword_1B5DC2640)))).i32[1])
                {
                  *v23 = 0;
                  v23[1] = 0;
                }

                v24 += 4;
                v23 += 4;
              }

              while (v22 != v24);
              qword_1EB90CC08 = v15 + 4 * v17;
              v6 = 0x1EB90C000uLL;
            }
          }

          LODWORD(v5) = v5 + v13 - 1;
          sub_1B5DA5474();
          ++*(*(v6 + 3072) + 4 * v13);
        }
      }

      v5 = sub_1B5DA67C0(v7) + v5;
      v2 = *(a1 + 8);
      v1 = *(a1 + 16);
    }

    ++v4;
  }

  while (v4 < ((v1 - v2) >> 3));
  return v5;
}

uint64_t sub_1B5DA6AF0(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  if (((v1 - v2) & 0x7FFFFFFF8) != 0)
  {
    v3 = result;
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4);
      if (*(v5 + 48))
      {
        v6 = *(v5 + 8);
        if (((*(v5 + 16) - v6) & 0x7FFFFFFF8) != 0 && (v7 = *(*v6 + 64)) != 0)
        {
          v8 = v7 - *(v5 + 64);
          if (v8 > 0xFF)
          {
            if (v8 == v8)
            {
              *(v5 + 68) = 2;
            }

            else
            {
              *(v5 + 68) = 3;
            }
          }

          else
          {
            *(v5 + 68) = 1;
          }
        }

        else
        {
          *(v5 + 68) = 0;
        }

        result = sub_1B5DA6AF0(v5);
        *(v5 + 64) = 0;
        v2 = *(v3 + 8);
        v1 = *(v3 + 16);
      }

      ++v4;
    }

    while (v4 < ((v1 - v2) >> 3));
  }

  dword_1EB90CBFC = 0;
  return result;
}

uint64_t sub_1B5DA6BD0(void *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v74 = *MEMORY[0x1E69E9840];
  v7 = a1[1];
  v8 = a1[4];
  if (v8)
  {
    v8 = ((v8[1] - *v8) >> 3);
  }

  v9 = a1[2] - v7;
  if ((v9 & 0x7FFFFFFF8) != 0)
  {
    v10 = 0;
    v11 = v8 + (v9 >> 3) > 1;
    if (a3)
    {
      v12 = 4;
    }

    else
    {
      v12 = 3;
    }

    v13 = a4 ^ 1;
    while (1)
    {
      v14 = *(v7 + 8 * v10);
      v15 = *(v14 + 48);
      if (!*(v14 + 48))
      {
        goto LABEL_56;
      }

      ++dword_1EB90CBFC;
      *(v14 + 64) = a2;
      v16 = a2 + v15 + 1;
      v17 = (*(v14 + 16) - *(v14 + 8)) & 0x7FFFFFFF8;
      if (v17)
      {
        v18 = *(v14 + 68);
        v19 = v16 + 2;
        if (v18 == 1)
        {
          ++v16;
        }

        else
        {
          v16 += 3;
        }

        if (v18 == 2)
        {
          v16 = v19;
        }
      }

      v20 = v16 + v11;
      v21 = *(v14 + 32);
      if (!v21)
      {
        v31 = 0;
        LODWORD(v37) = 0;
        v36 = *(v14 + 8);
        v35 = *(v14 + 16);
        goto LABEL_36;
      }

      v22 = *v21;
      v23 = v21[1];
      v24 = v23 - *v21;
      if (v23 != *v21)
      {
        v25 = 0;
        v26 = v24 >> 3;
        v27 = 1;
        do
        {
          v28 = *v22;
          v22 += 8;
          v29 = *(v28 + 248);
          if (v25 - 1 >= v29)
          {
            v25 = v29;
          }
        }

        while (v26 > v27++);
        if (v25)
        {
          a2 = (v20 + v12);
          goto LABEL_56;
        }
      }

      v31 = 0;
      if (v17)
      {
        v32 = *v21;
        v33 = *(*(v14 + 32) + 8);
        if (((v33 - v32) & 0x7FFFFFFF8) == 8)
        {
          if (v33 == v32)
          {
            sub_1B5DA6248();
          }

          v34 = *v32;
          if (v34 && atomic_fetch_add((v34 + 84), 1u) <= 0)
          {
            __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
          }

          if (!*(v34 + 248) && (*(v34 + 304) & 1) == 0)
          {
            v68 = v12;
            v46 = *(v34 + 88);
            v47 = 0.0;
            if (v46 != 0.0)
            {
              v48 = *(v34 + 224);
              if (v48)
              {
                v49 = *(v48 + 40);
                goto LABEL_63;
              }

              v50 = *(v34 + 336);
              if (v50)
              {
                v49 = v50;
LABEL_63:
                v47 = v46 / v49;
              }

              else
              {
                v47 = 1.0;
              }
            }

            v51 = (sqrt(v47) * 255.0);
            sub_1B5D1BE14(v34 + 84);
            v31 = v47 > 0.0 || v51 != 0;
            v12 = v68;
            goto LABEL_32;
          }

          sub_1B5D1BE14(v34 + 84);
        }

        v31 = 0;
      }

LABEL_32:
      v21 = *(v14 + 32);
      v36 = *(v14 + 8);
      v35 = *(v14 + 16);
      if (v21)
      {
        v37 = (v21[1] - *v21) >> 3;
      }

      else
      {
        LODWORD(v37) = 0;
      }

LABEL_36:
      v38 = (v35 - v36) >> 3;
      if (v37 + v38)
      {
        v39 = v31;
      }

      else
      {
        v39 = 1;
      }

      a2 = (v20 + v39);
      if (!v31)
      {
        if (v17)
        {
          v40 = 1;
        }

        else
        {
          v40 = v37 == -v38;
        }

        if (v40)
        {
          v41 = 1;
        }

        else
        {
          v41 = v13;
        }

        if (v41)
        {
          goto LABEL_56;
        }

LABEL_49:
        v42 = *(**v21 + 60);
        if (v42 >= 0x3FFF)
        {
          v43 = 4;
        }

        else
        {
          v43 = 2;
        }

        if (v42 < 0x7F)
        {
          v44 = 1;
        }

        else
        {
          v44 = v43;
        }

        a2 = (v44 + a2);
        goto LABEL_56;
      }

      if (a4)
      {
        goto LABEL_49;
      }

LABEL_56:
      ++v10;
      v7 = a1[1];
      v45 = a1[2] - v7;
      if (v10 >= (v45 >> 3))
      {
        if ((v45 & 0x7FFFFFFF8) != 0)
        {
          v53 = 0;
          do
          {
            v54 = *(v7 + 8 * v53);
            if (*(v54 + 48))
            {
              v55 = *(v54 + 8);
              v56 = *(v54 + 16) - v55;
              v57 = v56 >> 3;
              if ((v56 >> 3))
              {
                v58 = 0;
                v59 = 0;
                v60 = (v56 >> 3);
                do
                {
                  if (*(*v55 + 48))
                  {
                    if (*(*v55 + 64))
                    {
                      ++v58;
                    }

                    else
                    {
                      ++v59;
                    }
                  }

                  v55 += 8;
                  --v60;
                }

                while (v60);
              }

              else
              {
                v59 = 0;
                v58 = 0;
              }

              if (v58 != v57 && v59 != v57)
              {
                v62 = atomic_load(byte_1EB90C7D0);
                if (v62)
                {
                  v63 = atomic_load(byte_1EB90CC20);
                  if (v63)
                  {
                    printf("YIKES:  %d grandchildren already have trie offsets but %d don't!", v58, v59);
                    putchar(10);
                  }

                  else
                  {
                    v64 = sub_1B5D32914();
                    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 67109376;
                      v71 = v58;
                      v72 = 1024;
                      v73 = v59;
                      _os_log_impl(&dword_1B5CDB000, v64, OS_LOG_TYPE_DEFAULT, "YIKES:  %d grandchildren already have trie offsets but %d don't!", buf, 0xEu);
                    }
                  }
                }
              }

              if (*(v54 + 48))
              {
                v65 = *(v54 + 8);
                if (((*(v54 + 16) - v65) & 0x7FFFFFFF8) == 0 || !*(*v65 + 64))
                {
                  a2 = sub_1B5DA6BD0(v54, a2, a3, a4);
                }
              }
            }

            ++v53;
            v7 = a1[1];
          }

          while (v53 < ((a1[2] - v7) >> 3));
        }

        break;
      }
    }
  }

  v66 = *MEMORY[0x1E69E9840];
  return a2;
}

void LXTransliterationCreate(const void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  if (qword_1EB90CC28 != -1)
  {
    dispatch_once(&qword_1EB90CC28, &unk_1F2D5B030);
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = &unk_1F2D5AFD0;
  *(Instance + 24) = 0;
  *(Instance + 40) = 0;
  *(Instance + 32) = 0;
  v4 = (Instance + 32);
  sub_1B5D1609C((Instance + 32), a1);
  v7 = sub_1B5CDFCFC(*v4);
  MutableCopy = CFDictionaryCreateMutableCopy(v2, 0, *v4);
  CFDictionaryAddValue(MutableCopy, @"type", @"unified_transliteration");
  v5 = sub_1B5D4E6B8(MutableCopy, v7);
  sub_1B5CDC4B4(v8, v5);
  operator new();
}

void sub_1B5DA7290(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, const void *a17, uint64_t a18, int a19, __int16 a20, char a21, void *a22)
{
  if (a2)
  {
    if (a15 < 0)
    {
      operator delete(__p);
    }

    MEMORY[0x1B8C880F0](v23, 0x10F0C40DD53230DLL);
    if (a22 && a21 == 1)
    {
      free(a22);
    }

    sub_1B5CE5794(&a16, 0);
    sub_1B5CE5680(&a17, 0);
    __cxa_begin_catch(a1);
    if (v22)
    {
      *v22 = sub_1B5D4E9A0(@"error while loading transliteration Dictionary", 0);
    }

    __cxa_end_catch();
    if (!a18)
    {
      JUMPOUT(0x1B5DA7208);
    }

    JUMPOUT(0x1B5DA7200);
  }

  JUMPOUT(0x1B5DA7280);
}

void sub_1B5DA7358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __cxa_end_catch();
  sub_1B5D1E6E0(va, 0);
  JUMPOUT(0x1B5DA7280);
}

void sub_1B5DA737C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1B5DA7280);
  }

  JUMPOUT(0x1B5DA7324);
}

uint64_t sub_1B5DA7388()
{
  qword_1EB90CC30 = 0;
  *algn_1EB90CC38 = "LXTransliteration";
  qword_1EB90CC40 = 0;
  unk_1EB90CC48 = 0;
  qword_1EB90CC50 = sub_1B5DA73DC;
  unk_1EB90CC58 = 0u;
  unk_1EB90CC68 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1EB90CC90 = result;
  return result;
}

CFStringRef LXTransliterationCopyNativeForTransliterated(uint64_t a1, const __CFString *a2)
{
  v14[2] = *MEMORY[0x1E69E9840];
  sub_1B5CDC4B4(v12, a2);
  v3 = *(a1 + 40);
  if (v13)
  {
    v4 = v13;
  }

  else
  {
    v4 = v14;
  }

  sub_1B5CE410C(__p, v4);
  sub_1B5DABAB8(v11, v3, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11[0] == v11[1])
  {
    v6 = 0;
  }

  else
  {
    v5 = (v11[0] + 24);
    if (*(v11[0] + 47) < 0)
    {
      v5 = *v5;
    }

    v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v5, 0x8000100u);
  }

  __p[0] = v11;
  sub_1B5DA2654(__p);
  if (v13 && v12[6] == 1)
  {
    free(v13);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1B5DA7508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, void *a22)
{
  __p = &a16;
  sub_1B5DA2654(&__p);
  if (a22)
  {
    if (a21 == 1)
    {
      free(a22);
    }
  }

  _Unwind_Resume(a1);
}

void LXTransliterationEnumerateForTransliterated(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v22[2] = *MEMORY[0x1E69E9840];
  sub_1B5CDC4B4(v20, a2);
  v5 = *(a1 + 40);
  if (v21)
  {
    v6 = v21;
  }

  else
  {
    v6 = v22;
  }

  sub_1B5CE410C(__p, v6);
  sub_1B5DABAB8(&v18, v5, __p);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = v18;
  v8 = v19;
  if (v18 != v19)
  {
    v9 = *MEMORY[0x1E695E480];
    do
    {
      v10 = v7;
      if (*(v7 + 23) < 0)
      {
        v10 = *v7;
      }

      if (v21)
      {
        v11 = v21;
      }

      else
      {
        v11 = v22;
      }

      if (!strcmp(v11, v10))
      {
        if (qword_1EB90CB78 != -1)
        {
          dispatch_once(&qword_1EB90CB78, &unk_1F2D5AFF0);
        }

        Instance = _CFRuntimeCreateInstance();
        sub_1B5DA2744(Instance + 16, v7);
        __p[0] = Instance;
        v15 = 0;
        (*(a3 + 16))(a3, Instance, &v15);
        v13 = v15;
        if (Instance)
        {
          CFRelease(Instance);
        }

        if (v13)
        {
          break;
        }
      }

      v7 += 96;
    }

    while (v7 != v8);
  }

  __p[0] = &v18;
  sub_1B5DA2654(__p);
  if (v21 && v20[6] == 1)
  {
    free(v21);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1B5DA771C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, void *a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    if (a21 == 1)
    {
      free(a22);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t LXTransliterationHasNativeWord(uint64_t a1, const __CFString *a2)
{
  v16[2] = *MEMORY[0x1E69E9840];
  sub_1B5CDC4B4(v14, a2);
  v3 = *(a1 + 40);
  if (v15)
  {
    v4 = v15;
  }

  else
  {
    v4 = v16;
  }

  sub_1B5CE410C(&__p, v4);
  v13 = 0;
  (**v3[185])(&v11);
  if (v11 <= 0xEuLL)
  {
    v5 = &v11 + 2;
  }

  else
  {
    v5 = v12;
  }

  v6 = (*(**v3 + 80))(*v3, v5);
  if (v11 >= 0xFu && v12)
  {
    MEMORY[0x1B8C880C0](v12, 0x1000C8077774924);
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v15 && v14[6] == 1)
  {
    free(v15);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1B5DA78FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, unsigned __int16 a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, void *a22)
{
  if (a16 >= 0xFu && a17)
  {
    MEMORY[0x1B8C880C0](a17, 0x1000C8077774924);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    if (a21 == 1)
    {
      free(a22);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t LXTransliterationCopyEntryForNative(uint64_t a1, const __CFString *a2)
{
  v71 = *MEMORY[0x1E69E9840];
  sub_1B5CDC4B4(v47, a2);
  v3 = *(a1 + 40);
  if (v48)
  {
    v4 = v48;
  }

  else
  {
    v4 = &v49;
  }

  sub_1B5CE410C(v25, v4);
  v46 = 0;
  (**v3[185])(&v44);
  if (v44 <= 0xEuLL)
  {
    v5 = &v44 + 2;
  }

  else
  {
    v5 = v45;
  }

  if (!(*(**v3 + 80))(*v3, v5))
  {
LABEL_20:
    v13 = 0;
    LOBYTE(v27[0]) = 0;
    v35 = 0;
    goto LABEL_59;
  }

  v43 = 0;
  sub_1B5DAB1C0(v65, v3, *(v3 + 4) + v46, &v43, &v44);
  if (v43)
  {
    v6 = *(v3 + 4);
    v7 = v43 - v6;
    if (v43 < v6)
    {
      v7 = 0;
    }

    v43 = v7;
  }

  v8 = v70;
  if (v70 == -1)
  {
    if (v67 && v66 == 1)
    {
      free(v67);
    }

    goto LABEL_20;
  }

  memset(&v42, 0, sizeof(v42));
  v9 = v3[1];
  *&__dst = v70 & 0x7FFFFF;
  sub_1B5DAC198(v9 + 8, &__dst, &v42);
  v10 = v3[1];
  if (*(v10 + 40) <= (*&v8 & 0x7FFFFFuLL))
  {
    v12 = 0;
  }

  else
  {
    v11 = sub_1B5D5FFC4(v10 + 8, *&v8 & 0x7FFFFFLL) & 0xFFFFFF;
    if (v11 == 0xFFFFFF)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }
  }

  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v42;
  }

  else
  {
    v14 = v42.__r_.__value_.__r.__words[0];
  }

  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v42.__r_.__value_.__l.__size_;
  }

  sub_1B5CDD214(&v40, size, v14, size);
  v16 = HIBYTE(v8);
  v56 = 0x100000;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  *&v61 = 0;
  *(&v61 + 5) = 0;
  v62 = 0u;
  *&v63 = 0xFFFFFFFFLL;
  BYTE8(v63) = 0;
  HIDWORD(v63) = 0;
  v64 = 0;
  do
  {
    v17 = v16;
    sub_1B5DAB1C0(&__dst, v3, *(v3 + 5) + v12, &v43, &v40);
    if (v43)
    {
      v18 = *(v3 + 5);
      if (v43 >= v18)
      {
        v12 = v43 - v18;
      }

      else
      {
        v12 = 0;
      }

      v43 = v12;
    }

    else
    {
      v12 = 0;
    }

    sub_1B5D5CBBC(&v56, &__dst);
    v61 = *&v52[8];
    v62 = v53;
    v63 = *v54;
    v64 = *&v54[16];
    if (*(&__dst + 1) && BYTE6(__dst) == 1)
    {
      free(*(&__dst + 1));
    }

    if (!v12)
    {
      break;
    }

    v16 = v17 - 1;
  }

  while (v17);
  sub_1B5CE410C(v38, "");
  if (v59)
  {
    v19 = v59;
  }

  else
  {
    v19 = &v60;
  }

  sub_1B5CE410C(__p, v19);
  sub_1B5DAC3EC(&__dst, v38, v25, __p, v69, v68, 0.0);
  v28 = v51;
  *v27 = __dst;
  __dst = 0uLL;
  v20 = *v52;
  v51 = 0;
  memset(v52, 0, sizeof(v52));
  *v29 = v20;
  v30 = *&v52[16];
  v32 = *v54;
  *v31 = v53;
  *v54 = 0;
  v53 = 0uLL;
  v34 = v55;
  v33 = *&v54[8];
  v35 = 1;
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  if (v59 && v58 == 1)
  {
    free(v59);
  }

  if (v40 >= 0xFu && v41)
  {
    MEMORY[0x1B8C880C0](v41, 0x1000C8077774924);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (v67 && v66 == 1)
  {
    free(v67);
  }

  v13 = 1;
LABEL_59:
  if (v44 >= 0xFu && v45)
  {
    MEMORY[0x1B8C880C0](v45, 0x1000C8077774924);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
    if (v13)
    {
      goto LABEL_64;
    }

LABEL_73:
    Instance = 0;
    goto LABEL_74;
  }

  if (!v13)
  {
    goto LABEL_73;
  }

LABEL_64:
  v21 = *MEMORY[0x1E695E480];
  if (qword_1EB90CB78 != -1)
  {
    dispatch_once(&qword_1EB90CB78, &unk_1F2D5AFF0);
  }

  Instance = _CFRuntimeCreateInstance();
  sub_1B5DA2744(Instance + 16, v27);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
  }

LABEL_74:
  if (v48 && v47[6] == 1)
  {
    free(v48);
  }

  v23 = *MEMORY[0x1E69E9840];
  return Instance;
}

void sub_1B5DA7E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, __int16 a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, unsigned __int16 a51, uint64_t a52, uint64_t a53, int a54, __int16 a55, char a56, void *a57)
{
  if (a49 < 0)
  {
    operator delete(__p);
  }

  v59 = *(v57 - 152);
  if (v59 && *(v57 - 154) == 1)
  {
    free(v59);
  }

  if (a51 >= 0xFu && a52)
  {
    MEMORY[0x1B8C880C0](a52, 0x1000C8077774924);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a57)
  {
    if (a56 == 1)
    {
      free(a57);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5DA7FC8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *a1 = ubrk_open();
  return a1;
}

uint64_t sub_1B5DA802C(void **a1, uint64_t *a2, CFStringRef theString)
{
  ut[0] = 0;
  ut[1] = 0;
  Length = CFStringGetLength(theString);
  if (!Length)
  {
    goto LABEL_60;
  }

  v7 = Length;
  status = U_ZERO_ERROR;
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  if (CStringPtr)
  {
    v9 = utext_openUTF8(0, CStringPtr, -1, &status);
    ut[0] = v9;
    if (status >= U_ILLEGAL_ARGUMENT_ERROR)
    {
      __assert_rtn("ScopedUText", "RuleBasedTokenizer.cpp", 23, "false && Failed to create UText from UTF-8 string");
    }
  }

  else
  {
    CharactersPtr = CFStringGetCharactersPtr(theString);
    if (!CharactersPtr)
    {
      operator new[]();
    }

    v9 = utext_openUChars(0, CharactersPtr, v7, &status);
    ut[0] = v9;
    if (status >= U_ILLEGAL_ARGUMENT_ERROR)
    {
      __assert_rtn("ScopedUText", "RuleBasedTokenizer.cpp", 36, "false && Failed to create UText from UTF-8 string");
    }
  }

  if (v9)
  {
    status = U_ZERO_ERROR;
    v11 = *a2;
    ubrk_setUText();
    v12 = status;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    if (v12 < U_ILLEGAL_ARGUMENT_ERROR)
    {
      v13 = 0;
      for (i = 0; ; i = v16)
      {
        v15 = *a2;
        v16 = ubrk_next();
        if (v16 == -1)
        {
          return sub_1B5DA8520(ut);
        }

        v17 = *a2;
        RuleStatus = ubrk_getRuleStatus();
        v19 = i;
        v20 = v16 - i;
        if (RuleStatus >= 0x64)
        {
          if (RuleStatus - 100 < 0x64)
          {
            LOBYTE(v21) = 0;
            goto LABEL_38;
          }

          if (RuleStatus - 200 < 0x64)
          {
            LOBYTE(v21) = 1;
            goto LABEL_38;
          }

          if (RuleStatus - 300 < 0x64)
          {
            LOBYTE(v21) = 2;
            goto LABEL_38;
          }

          if (RuleStatus - 400 >= 0x64)
          {
            v21 = 6;
          }

          else
          {
            v21 = 3;
          }
        }

        else
        {
          v21 = 6;
        }

        if (v21 == 6 && v20 >= 1)
        {
          v22 = utext_char32At(ut[0], i);
          if (u_hasBinaryProperty(v22, UCHAR_EMOJI) || u_hasBinaryProperty(v22, UCHAR_EMOJI_PRESENTATION) || u_hasBinaryProperty(v22, UCHAR_EMOJI_MODIFIER) || u_hasBinaryProperty(v22, UCHAR_EMOJI_MODIFIER_BASE) || u_hasBinaryProperty(v22, UCHAR_EMOJI_COMPONENT) || u_hasBinaryProperty(v22, UCHAR_EXTENDED_PICTOGRAPHIC) || u_hasBinaryProperty(v22, UCHAR_BASIC_EMOJI) || u_hasBinaryProperty(v22, UCHAR_EMOJI_KEYCAP_SEQUENCE) || u_hasBinaryProperty(v22, UCHAR_RGI_EMOJI_MODIFIER_SEQUENCE) || u_hasBinaryProperty(v22, UCHAR_RGI_EMOJI_FLAG_SEQUENCE) || u_hasBinaryProperty(v22, UCHAR_RGI_EMOJI_TAG_SEQUENCE))
          {
            v23 = 5;
          }

          else if (u_hasBinaryProperty(v22, UCHAR_RGI_EMOJI_ZWJ_SEQUENCE))
          {
            v23 = 5;
          }

          else if (u_hasBinaryProperty(v22, UCHAR_RGI_EMOJI))
          {
            v23 = 5;
          }

          else
          {
            v23 = 6;
          }

          if (u_isWhitespace(v22))
          {
            LOBYTE(v21) = 4;
          }

          else
          {
            LOBYTE(v21) = v23;
          }

          goto LABEL_39;
        }

LABEL_38:
        if (v20 <= 0)
        {
          __assert_rtn("tokenize", "RuleBasedTokenizer.cpp", 126, "length > 0");
        }

LABEL_39:
        v24 = a1[2];
        if (v13 >= v24)
        {
          v25 = *a1;
          v26 = v13 - *a1;
          v27 = 0xAAAAAAAAAAAAAAABLL * (v26 >> 3) + 1;
          if (v27 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1B5D04FA0();
          }

          v28 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v25) >> 3);
          if (2 * v28 > v27)
          {
            v27 = 2 * v28;
          }

          if (v28 >= 0x555555555555555)
          {
            v29 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v29 = v27;
          }

          if (v29)
          {
            sub_1B5D825B4(v29);
          }

          v30 = 8 * (v26 >> 3);
          *v30 = v19;
          *(v30 + 8) = v20;
          *(v30 + 16) = v21;
          v13 = v30 + 24;
          v31 = v30 - v26;
          memcpy((v30 - v26), v25, v26);
          *a1 = v31;
          a1[1] = v13;
          a1[2] = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v13 = v19;
          *(v13 + 8) = v20;
          *(v13 + 16) = v21;
          v13 += 24;
        }

        a1[1] = v13;
      }
    }
  }

  else
  {
LABEL_60:
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  return sub_1B5DA8520(ut);
}

void sub_1B5DA84B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x1B8C880C0](a11, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5DA8520(uint64_t a1)
{
  utext_close(*a1);
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    MEMORY[0x1B8C880C0](v2, 0x1000C80BDFB0063);
  }

  return a1;
}

uint64_t sub_1B5DA8570(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1B5DA85F0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t sub_1B5DA8618(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5B0C0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DA86EC(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5B140))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B5DA872C(uint64_t a1, const __CFURL **a2, CFStringRef *a3)
{
  v3 = *a2;
  if (CFStringCompare(*a3, *MEMORY[0x1E69AC068], 0))
  {
    return 0;
  }

  return sub_1B5CE015C(v3, @"Phrases");
}

uint64_t sub_1B5DA881C(const __CFDictionary *a1, const __CFLocale *a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F2D5B160;
  v5[3] = v5;
  v2 = sub_1B5CDFEBC(a1, a2);
  sub_1B5DA8570(v5);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_1B5DA88A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5DA8570(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DA88C8(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5B1C0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B5DA8908(uint64_t a1, const __CFURL **a2, CFStringRef *a3)
{
  v3 = *a2;
  if (CFStringCompare(*a3, *MEMORY[0x1E69AC050], 0))
  {
    return 0;
  }

  return sub_1B5CE015C(v3, @"Delta");
}

CFStringRef sub_1B5DA89F8(const __CFDictionary *a1, const __CFLocale *a2)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v9[0] = &unk_1F2D5B1E0;
  v9[3] = v9;
  v2 = sub_1B5CDFEBC(a1, a2);
  sub_1B5DA8570(v9);
  if (v2)
  {
    v3 = *MEMORY[0x1E695E480];
    v4 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], v2, kCFURLPOSIXPathStyle, 1u);
    v9[0] = v4;
    v5 = CFURLCreateCopyAppendingPathComponent(v3, v4, @"morpheme.dat", 0);
    v6 = CFURLCopyFileSystemPath(v5, kCFURLPOSIXPathStyle);
    if (v5)
    {
      CFRelease(v5);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    CFRelease(v2);
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1B5DA8B10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_1B5CE56B8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5DA8B84(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5B240))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B5DA8BC4(uint64_t a1, const __CFURL **a2, CFStringRef *a3)
{
  v3 = *a2;
  if (CFStringCompare(*a3, *MEMORY[0x1E69AC070], 0))
  {
    return 0;
  }

  v5 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x1E695E480], v3, @"morpheme.dat", 0);
  cf[0] = 0;
  cf[1] = v5;
  IsReachable = CFURLResourceIsReachable(v5, cf);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return IsReachable != 0;
}

void sub_1B5DA8C68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D23F18(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DA8D14(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5B2C0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B5DA8D54(uint64_t a1, const __CFURL **a2, CFStringRef *a3)
{
  v3 = *a2;
  if (CFStringCompare(*a3, *MEMORY[0x1E69AC0B8], 0))
  {
    return 0;
  }

  return sub_1B5CE015C(v3, @"UnifiedTransliteration");
}

uint64_t sub_1B5DA8E50(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5B340))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B5DA8E90(uint64_t a1, const __CFURL **a2, CFStringRef *a3)
{
  v3 = *a2;
  if (CFStringCompare(*a3, *MEMORY[0x1E69AC060], 0))
  {
    return 0;
  }

  return sub_1B5CE015C(v3, @"Lemmatizer");
}

uint64_t sub_1B5DA8F8C(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5B3C0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B5DA8FCC(uint64_t a1, const __CFURL **a2, CFStringRef *a3)
{
  v3 = *a2;
  if (CFStringCompare(*a3, *MEMORY[0x1E69AC068], 0))
  {
    return 0;
  }

  return sub_1B5CE015C(v3, @"WordModeration");
}

void sub_1B5DA90BC(uint64_t a1, UChar *a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0x100000;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  sub_1B5D5D888(&v8, a2, a3);
  sub_1B5DA9180(a1, &v8, a4);
  if (v11)
  {
    v6 = v10 == 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    free(v11);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B5DA915C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13)
{
  if (a13)
  {
    v14 = a12 == 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    free(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5DA9180(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  sub_1B5D4DEF4(v21, a1 + 30264, a2);
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3002000000;
  v19[3] = sub_1B5DA94EC;
  v19[4] = sub_1B5DA94FC;
  cf = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  v5 = sub_1B5D4F320(a1);
  v18 = v5;
  v6 = (*(v5[2] + 16))();
  v17 = v6;
  if (v6)
  {
    v16[6] = MEMORY[0x1E69E9820];
    v16[7] = 0x40000000;
    v16[8] = sub_1B5DA9504;
    v16[9] = &unk_1E7C21D68;
    v16[11] = v19;
    v16[12] = a1;
    v16[10] = a3;
    (*(v6[2] + 48))();
    CFRelease(v6);
  }

  CFRelease(v5);
  v7 = *(a1 + 30280);
  if (v7)
  {
    v8 = (*(*(v7 + 16) + 72))();
    v18 = v8;
    v9 = (*(v8[2] + 16))();
    v14 = v9;
    v17 = v9;
    if (v9)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 0x40000000;
      v16[2] = sub_1B5DA9748;
      v16[3] = &unk_1E7C21D90;
      v16[4] = a3;
      v16[5] = v19;
      (*(*(v9 + 16) + 48))(v9 + 16, v16, v10, v11, v12, v13);
      CFRelease(v14);
    }

    CFRelease(v8);
  }

  _Block_object_dispose(v19, 8);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v22 && v21[6] == 1)
  {
    free(v22);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1B5DA9450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, int a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    sub_1B5CE56B8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5DA94EC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

void sub_1B5DA9504(void *a1, uint64_t a2)
{
  v3 = a1[6];
  v4 = LXEntryCopyString(a2);
  v5 = *(v3 + 30280);
  if (v5)
  {
    v6 = (*(*(v5 + 16) + 72))();
  }

  else
  {
    v6 = 0;
  }

  v17 = v6;
  v7 = LXCursorCreateByAdvancing(v6, v4);
  v8 = v7;
  v16 = v7;
  if (v7)
  {
    v9 = v7 + 16;
    if ((*(*(v7 + 16) + 40))(v7 + 16))
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2000000000;
      v15 = 1;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 0x40000000;
      v11[2] = sub_1B5DA981C;
      v11[3] = &unk_1E7C21DB8;
      v11[4] = &v12;
      v11[5] = v4;
      (*(*v9 + 48))(v8 + 16, v11);
      v10 = *(v13 + 24);
      _Block_object_dispose(&v12, 8);
    }

    else
    {
      v10 = 0;
    }

    CFRelease(v8);
  }

  else
  {
    v10 = 0;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if ((v10 & 1) == 0)
  {
    CFSetAddValue(*(*(a1[5] + 8) + 40), v4);
    (*(a1[4] + 16))();
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_1B5DA96E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  sub_1B5D066D0((v2 - 80), 0);
  sub_1B5D066D0((v2 - 72), 0);
  sub_1B5CE5794(va, 0);
  _Unwind_Resume(a1);
}

void sub_1B5DA9748(uint64_t a1, uint64_t a2)
{
  v3 = LXEntryCopyString(a2);
  if (!CFSetContainsValue(*(*(*(a1 + 40) + 8) + 40), v3))
  {
    (*(*(a1 + 32) + 16))();
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_1B5DA97D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5CE5794(va, 0);
  _Unwind_Resume(a1);
}

void sub_1B5DA97E8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
}

void sub_1B5DA981C(uint64_t a1, uint64_t a2)
{
  v4 = LXEntryCopyString(a2);
  if (!a2)
  {
    __assert_rtn("LXEntryGetMetaFlags", "LXEntry.cpp", 45, "entry");
  }

  v5 = v4;
  if ((*(a2 + 54) & 0x180) == 0 || CFStringCompare(*(a1 + 40), v4, 0))
  {
    if (!v5)
    {
      return;
    }

    goto LABEL_5;
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  if (v5)
  {
LABEL_5:
    CFRelease(v5);
  }
}

void sub_1B5DA98CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5CE5794(va, 0);
  _Unwind_Resume(a1);
}

void sub_1B5DA98E4(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  sub_1B5CDC4B4(v7, a2);
  sub_1B5DA9180(a1, v7, a3);
  if (v9)
  {
    v5 = v8 == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    free(v9);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B5DA996C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13)
{
  if (a13)
  {
    v14 = a12 == 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    free(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5DA9998(uint64_t a1, const __CFString *a2, const __CFString *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  sub_1B5CDC4B4(v12, a2);
  sub_1B5D4DEF4(v15, a1 + 30264, v12);
  if (v14)
  {
    v5 = v13 == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    free(v14);
  }

  sub_1B5CDC4B4(&v10, a3);
  sub_1B5D4DEF4(v12, a1 + 30264, &v10);
  if (v11 && BYTE6(v10) == 1)
  {
    free(v11);
  }

  sub_1B5CDC2F8(&v10, a1 + 8);
  v6 = (*(*v10 + 24))(v10, v15, v12);
  if (v11)
  {
    sub_1B5CDD904(v11);
  }

  if (v14 && v13 == 1)
  {
    free(v14);
  }

  if (v16 && v15[6] == 1)
  {
    free(v16);
  }

  v7 = -1;
  if (v6 >= 0)
  {
    v7 = 1;
  }

  if (v6)
  {
    result = v7;
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5DA9AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, void *a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, void *a25)
{
  if (a13)
  {
    sub_1B5CDD904(a13);
  }

  if (a19 && a18 == 1)
  {
    free(a19);
  }

  if (a25)
  {
    if (a24 == 1)
    {
      free(a25);
    }
  }

  _Unwind_Resume(exception_object);
}

CFStringRef sub_1B5DA9BA8(uint64_t a1)
{
  *(&v6.__r_.__value_.__s + 23) = 15;
  strcpy(&v6, "WordModeration-");
  if (*(a1 + 30144))
  {
    v1 = *(a1 + 30144);
  }

  else
  {
    v1 = (a1 + 30152);
  }

  std::string::append(&v6, v1, *(a1 + 30136));
  if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v2 = &v6;
  }

  else
  {
    v2 = v6.__r_.__value_.__r.__words[0];
  }

  if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v6.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v6.__r_.__value_.__l.__size_;
  }

  v4 = sub_1B5CDFA10(v2, size);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_1B5DA9C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5DA9C6C(uint64_t a1)
{
  v2 = (a1 + 28672);
  *a1 = &unk_1F2D5B3E0;
  sub_1B5D1E6A8((a1 + 30280), 0);
  sub_1B5D4DEA0((a1 + 30264));
  *a1 = &unk_1F2D56968;
  v3 = *(a1 + 30240);
  if (v3 && v2[1566] == 1)
  {
    free(v3);
  }

  v4 = *(a1 + 30208);
  if (v4 && v2[1534] == 1)
  {
    free(v4);
  }

  v5 = *(a1 + 30176);
  if (v5 && v2[1502] == 1)
  {
    free(v5);
  }

  v6 = *(a1 + 30144);
  if (v6 && v2[1470] == 1)
  {
    free(v6);
  }

  sub_1B5D240C0(a1 + 8);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5DA9D70(uint64_t a1)
{
  v2 = (a1 + 28672);
  *a1 = &unk_1F2D5B3E0;
  sub_1B5D1E6A8((a1 + 30280), 0);
  sub_1B5D4DEA0((a1 + 30264));
  *a1 = &unk_1F2D56968;
  v3 = *(a1 + 30240);
  if (v3 && v2[1566] == 1)
  {
    free(v3);
  }

  v4 = *(a1 + 30208);
  if (v4 && v2[1534] == 1)
  {
    free(v4);
  }

  v5 = *(a1 + 30176);
  if (v5 && v2[1502] == 1)
  {
    free(v5);
  }

  v6 = *(a1 + 30144);
  if (v6 && v2[1470] == 1)
  {
    free(v6);
  }

  sub_1B5D240C0(a1 + 8);
  return a1;
}

CFIndex sub_1B5DA9E54(const __CFArray *a1, uint64_t a2)
{
  result = CFArrayGetCount(a1);
  if (result)
  {
    v5 = 0;
    while (1)
    {
      Count = CFArrayGetCount(a1);
      v7 = v5 < Count;
      result = v5 >= Count;
      if (!v7)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(a1, v5++);
      if (CFGetTypeID(ValueAtIndex) != a2)
      {
        return 0;
      }
    }
  }

  return result;
}

std::string *sub_1B5DA9EC0(std::string *a1)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  sub_1B5CE5F0C(a1, "zh", "");
  return a1;
}

void sub_1B5DA9EFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5DA9F40(uint64_t a1, uint64_t a2)
{
  sub_1B5D8024C(&v8, *(a1 + 8) + 88);
  v3 = v8;
  if (v8 != v9)
  {
    do
    {
      if (*(v3 + 20) < 0xFu)
      {
        v4 = v3 + 42;
      }

      else
      {
        v4 = v3[6];
      }

      (*(a2 + 16))(a2, *(v3 + 8), v4);
      v5 = v3[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v9);
  }

  sub_1B5D32B78(v9[0]);
}

uint64_t sub_1B5DAA014(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  if (qword_1ED833B58[0] != -1)
  {
    dispatch_once(qword_1ED833B58, &unk_1F2D5B5E0);
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = &unk_1F2D58758;
  *(Instance + 24) = a1;
  (*(***(a1 + 8) + 104))(&v5);
  *(Instance + 32) = v5;
  if (SHIBYTE(v7) < 0)
  {
    sub_1B5CE4AC4((Instance + 40), __p[0], __p[1]);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(Instance + 40) = *__p;
    *(Instance + 56) = v7;
  }

  *(Instance + 64) = 0x100000;
  *(Instance + 68) = 0;
  *(Instance + 70) = 0;
  *(Instance + 72) = 0;
  *(Instance + 80) = 0;
  *(Instance + 96) = 0u;
  *(Instance + 112) = 0u;
  *(Instance + 128) = 0u;
  *(Instance + 144) = 0u;
  return Instance;
}

void sub_1B5DAA148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5DAA164()
{
  qword_1ED833AF0 = 0;
  *algn_1ED833AF8 = "LXCursor";
  qword_1ED833B00 = 0;
  unk_1ED833B08 = 0;
  qword_1ED833B10 = sub_1B5D2D8E0;
  unk_1ED833B18 = 0u;
  unk_1ED833B28 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1ED833AE0 = result;
  return result;
}

CFStringRef sub_1B5DAA1B8(uint64_t a1)
{
  sub_1B5CE410C(&v10, "UnifiedTransliteration-");
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
  }

  else
  {
    v2 = (a1 + 32);
  }

  v3 = strlen(v2);
  v4 = std::string::append(&v10, v2, v3);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v12 = v4->__r_.__value_.__r.__words[2];
  *__p = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (v12 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (v12 >= 0)
  {
    v7 = HIBYTE(v12);
  }

  else
  {
    v7 = __p[1];
  }

  v8 = sub_1B5CDFA10(v6, v7);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void sub_1B5DAA278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5DAA2E8(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 56);
  if (*(a1 + 152))
  {
    v2 = *(a1 + 152);
  }

  else
  {
    v2 = (a1 + 160);
  }

  strcmp(v2, "Latn");
  operator new();
}

void sub_1B5DAA72C(_Unwind_Exception *a1, std::string *a2, uint64_t a3, uint64_t a4, void *__p, uint64_t a6, int a7, __int16 a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__pa, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1B5CFBC44(&__pa, MEMORY[0x1E69E54D8]);
  MEMORY[0x1B8C88080](&a32);
  _Unwind_Resume(a1);
}

os_log_t sub_1B5DAA9A8()
{
  result = os_log_create("com.apple.Lexicon", "TranslitLexicon");
  qword_1EB90CC98 = result;
  return result;
}

void sub_1B5DAA9D8(uint64_t a1)
{
  *a1 = &unk_1F2D5B4D8;
  v2 = *(a1 + 152);
  if (v2 && *(a1 + 150) == 1)
  {
    free(v2);
  }

  v3 = *(a1 + 120);
  if (v3 && *(a1 + 118) == 1)
  {
    free(v3);
  }

  v4 = *(a1 + 88);
  if (v4 && *(a1 + 86) == 1)
  {
    free(v4);
  }

  v5 = *(a1 + 56);
  if (v5 && *(a1 + 54) == 1)
  {
    free(v5);
  }

  v6 = *(a1 + 24);
  if (v6 && *(a1 + 22) == 1)
  {
    free(v6);
  }

  sub_1B5DA2460((a1 + 8), 0);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5DAAABC(uint64_t a1)
{
  *a1 = &unk_1F2D5B4D8;
  v2 = *(a1 + 152);
  if (v2 && *(a1 + 150) == 1)
  {
    free(v2);
  }

  v3 = *(a1 + 120);
  if (v3 && *(a1 + 118) == 1)
  {
    free(v3);
  }

  v4 = *(a1 + 88);
  if (v4 && *(a1 + 86) == 1)
  {
    free(v4);
  }

  v5 = *(a1 + 56);
  if (v5 && *(a1 + 54) == 1)
  {
    free(v5);
  }

  v6 = *(a1 + 24);
  if (v6 && *(a1 + 22) == 1)
  {
    free(v6);
  }

  sub_1B5DA2460((a1 + 8), 0);
  return a1;
}

__n64 sub_1B5DAAB80(uint64_t *a1, uint64_t a2)
{
  v4 = (*(*a1 + 112))(a1);
  result.n64_f64[0] = 0.0;
  if (v4)
  {
    v7 = 0;
    v6 = sub_1B5D600EC(a1 + 1, a2, &v7);
    result.n64_f64[0] = 1.0;
    if (v6)
    {
      result.n64_u8[0] = HIBYTE(v7);
      result.n64_f64[0] = result.n64_u64[0] / 255.0 * (result.n64_u64[0] / 255.0);
    }
  }

  return result;
}

uint64_t sub_1B5DAAC18(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5B670))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DAAC58(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 1;
  **(result + 8) = 1;
  return result;
}

uint64_t sub_1B5DAAC74(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5B610;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5DAAD14(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5B6F0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1B5DAAD54(uint64_t a1, char *a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v24 = *a2;
  v25 = *a3;
  if (*(a3 + 31) < 0)
  {
    sub_1B5CE4AC4(&__p, a3[1], a3[2]);
  }

  else
  {
    __p = *(a3 + 1);
    v27 = a3[3];
  }

  v5 = v3[1];
  v4 = v3[2];
  if (v5 >= v4)
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *v3) >> 3);
    if (v7 + 1 > 0x666666666666666)
    {
      sub_1B5D04FA0();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *v3) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x333333333333333)
    {
      v10 = 0x666666666666666;
    }

    else
    {
      v10 = v9;
    }

    v31 = v3;
    if (v10)
    {
      if (v10 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1B5CE5968();
    }

    v12 = 40 * v7;
    v28 = 0;
    v29 = v12;
    v30 = 40 * v7;
    *v12 = v24;
    *(v12 + 8) = v25;
    if (SHIBYTE(v27) < 0)
    {
      sub_1B5CE4AC4((v12 + 16), __p, *(&__p + 1));
      v12 = v29;
      v13 = v30;
    }

    else
    {
      *(40 * v7 + 0x10) = __p;
      *(40 * v7 + 0x20) = v27;
      v13 = 40 * v7;
    }

    *&v30 = v13 + 40;
    v15 = *v3;
    v14 = v3[1];
    v32[0] = v3;
    v32[1] = &v34;
    v32[2] = &v35;
    v33 = 0;
    v16 = v12 + v15 - v14;
    v34 = v16;
    v35 = v16;
    if (v15 == v14)
    {
      v33 = 1;
    }

    else
    {
      v17 = (v15 + 16);
      v18 = v12 + v15 - v14;
      do
      {
        v19 = v17 - 1;
        *v18 = *(v17 - 16);
        *(v18 + 8) = *(v17 - 1);
        if (*(v17 + 23) < 0)
        {
          sub_1B5CE4AC4((v18 + 16), *v17, *(v17 + 1));
          v18 = v35;
        }

        else
        {
          v20 = *v17;
          *(v18 + 32) = *(v17 + 2);
          *(v18 + 16) = v20;
        }

        v18 += 40;
        v35 = v18;
        v17 = (v17 + 40);
      }

      while ((v19 + 40) != v14);
      v33 = 1;
      do
      {
        if (*(v15 + 39) < 0)
        {
          operator delete(*(v15 + 16));
        }

        v15 += 40;
      }

      while (v15 != v14);
    }

    sub_1B5DAB0C4(v32);
    v21 = *v3;
    *v3 = v16;
    v22 = v3[2];
    v23 = v30;
    v29 = v21;
    *&v30 = v21;
    *(v3 + 1) = v23;
    *(&v30 + 1) = v22;
    v28 = v21;
    sub_1B5DAB060(&v28);
    v11 = v23;
  }

  else
  {
    *v5 = v24;
    *(v5 + 8) = v25;
    if (SHIBYTE(v27) < 0)
    {
      sub_1B5CE4AC4((v5 + 16), __p, *(&__p + 1));
    }

    else
    {
      v6 = __p;
      *(v5 + 32) = v27;
      *(v5 + 16) = v6;
    }

    v11 = v5 + 40;
    v3[1] = v5 + 40;
  }

  v3[1] = v11;
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }
}

void sub_1B5DAB014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_1B5DAB060(&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5DAB060(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1B5DAB0C4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
      }

      v3 -= 40;
    }
  }

  return a1;
}

uint64_t sub_1B5DAB12C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5B690;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5DAB1C0(uint64_t result, uint64_t a2, unsigned int a3, int *a4, unsigned __int16 *a5)
{
  v5 = *(a2 + 64);
  v6 = v5[1];
  if (v6 < a3)
  {
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  v8 = *v5;
  if (v6 - 1 < a3 || v8 == 0)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0;
    *(result + 2) = 16;
    *(result + 6) = 0;
    *(result + 16) = 0;
    *(result + 32) = 0;
    *(result + 37) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0xFFFFFFFFLL;
    *(result + 76) = 0;
  }

  else
  {
    v11 = *(v8 + a3);
    v12[0] = v8;
    v12[1] = v6;
    v12[2] = a3;
    result = sub_1B5D330BC(result, v12, a5, a2 + 88, *(a2 + 1464), *(a2 + 1472), *(a2 + 80));
    *a4 = (v11 + a3) & (*(result + 44) >> 31);
  }

  return result;
}

uint64_t sub_1B5DAB2BC(uint64_t a1)
{
  v3 = (a1 + 32);
  sub_1B5D326B4(&v3);
  v3 = (a1 + 8);
  sub_1B5D32740(&v3);
  return a1;
}

void sub_1B5DAB308(uint64_t a1)
{
  *a1 = &unk_1F2D5D658;
  sub_1B5D0C050(*(a1 + 80));
  sub_1B5D5FA24((a1 + 8));

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5DAB378(uint64_t a1)
{
  *a1 = &unk_1F2D5D658;
  sub_1B5D0C050(*(a1 + 80));
  sub_1B5D5FA24((a1 + 8));
  return a1;
}

void sub_1B5DAB3C8(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 64) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 80) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 84) = a3;
  sub_1B5CDDEAC(a1 + 88);
  *(a1 + 1480) = 0;
  *(a1 + 1464) = 0u;
  operator new();
}

void sub_1B5DAB918(_Unwind_Exception *a1)
{
  __cxa_free_exception(v4);
  v7 = v1[185];
  v1[185] = 0;
  if (v7)
  {
    (*(*v7 + 40))(v7);
  }

  v8 = v1[184];
  v1[184] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *v5;
  *v5 = 0;
  if (v9)
  {
    v10 = sub_1B5DAB2BC(v9);
    MEMORY[0x1B8C880F0](v10, 0x1020C404D15F4B2);
  }

  sub_1B5D36ACC(v3);
  sub_1B5CE10F4(v2, 0);
  v11 = v1[4];
  if (v11)
  {
    sub_1B5CDD904(v11);
  }

  v12 = v1[1];
  v1[1] = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *v1;
  *v1 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  _Unwind_Resume(a1);
}

void sub_1B5DABAB8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v77 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v54 = 0;
  v5 = *(a2 + 1480);
  if (*(a3 + 23) >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v6 = *a3;
    v7 = a3[1];
  }

  (**v5)(&v52);
  if (v52 <= 0xEuLL)
  {
    v8 = &v52 + 2;
  }

  else
  {
    v8 = v53;
  }

  if ((*(**(a2 + 8) + 80))(*(a2 + 8), v8))
  {
    v9 = v54;
    do
    {
      v51 = 0;
      sub_1B5DAB1C0(v73, a2, *(a2 + 20) + v9, &v51, &v52);
      if (v51)
      {
        v10 = *(a2 + 20);
        if (v51 >= v10)
        {
          v9 = v51 - v10;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      v11 = v76;
      if (*(*a2 + 40) > (v76 & 0x7FFFFFuLL))
      {
        v12 = sub_1B5D5FFC4(*a2 + 8, v76 & 0x7FFFFF) & 0xFFFFFF;
        if (v12 != 0xFFFFFF)
        {
          memset(&v50, 0, sizeof(v50));
          v13 = *a2;
          v66 = *&v11 & 0x7FFFFFLL;
          if (sub_1B5DAC198(v13 + 8, &v66, &v50))
          {
            v49 = 0;
            if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v14 = &v50;
            }

            else
            {
              v14 = v50.__r_.__value_.__r.__words[0];
            }

            if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v50.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v50.__r_.__value_.__l.__size_;
            }

            sub_1B5CDD214(&v47, size, v14, size);
            v16 = 0;
            LODWORD(v66) = 0x100000;
            v17 = HIBYTE(v11);
            WORD2(v66) = 0;
            BYTE6(v66) = 0;
            v67 = 0;
            v68 = 0;
            *&v69 = 0;
            *(&v69 + 5) = 0;
            v70 = 0uLL;
            *&v71 = 0xFFFFFFFFLL;
            BYTE8(v71) = 0;
            HIDWORD(v71) = 0;
            v72 = 0;
            do
            {
              sub_1B5DAB1C0(&v59, a2, *(a2 + 16) + v12, &v49, &v47);
              if (v49)
              {
                v18 = *(a2 + 16);
                if (v49 >= v18)
                {
                  v12 = v49 - v18;
                }

                else
                {
                  v12 = 0;
                }

                v49 = v12;
              }

              else
              {
                v12 = 0;
              }

              sub_1B5D5CBBC(&v66, &v59);
              v69 = v62;
              v70 = v63;
              v71 = v64;
              v72 = v65;
              if (v60 && BYTE6(v59) == 1)
              {
                free(v60);
              }

              if (!v12)
              {
                break;
              }
            }

            while (v16++ < v17);
            sub_1B5D5CABC(&__len, &v66);
            if (v57)
            {
              v20 = v57;
            }

            else
            {
              v20 = &v58;
            }

            sub_1B5D5EC18(__p, v20, __len);
            if (v74)
            {
              v21 = v74;
            }

            else
            {
              v21 = &v75;
            }

            v44 = 0xFFF0000000000000;
            v42 = DWORD1(v69);
            v43 = 0;
            v23 = *(a1 + 8);
            v22 = *(a1 + 16);
            if (v23 >= v22)
            {
              v25 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 5);
              v26 = v25 + 1;
              if (v25 + 1 > 0x2AAAAAAAAAAAAAALL)
              {
                sub_1B5D04FA0();
              }

              v27 = 0xAAAAAAAAAAAAAAABLL * ((v22 - *a1) >> 5);
              if (2 * v27 > v26)
              {
                v26 = 2 * v27;
              }

              if (v27 >= 0x155555555555555)
              {
                v28 = 0x2AAAAAAAAAAAAAALL;
              }

              else
              {
                v28 = v26;
              }

              *&v62 = a1;
              if (v28)
              {
                if (v28 <= 0x2AAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                sub_1B5CE5968();
              }

              v59 = 0;
              v60 = (96 * v25);
              v61 = 96 * v25;
              sub_1B5DAC258((96 * v25), v21, __p, &v44, &v43, &v42);
              *&v61 = v61 + 96;
              v29 = *a1;
              v30 = *(a1 + 8);
              v31 = v60 + *a1 - v30;
              if (*a1 != v30)
              {
                v32 = *a1;
                v33 = v60 + *a1 - v30;
                do
                {
                  v34 = *v32;
                  *(v33 + 2) = *(v32 + 16);
                  *v33 = v34;
                  *(v32 + 8) = 0;
                  *(v32 + 16) = 0;
                  *v32 = 0;
                  v35 = *(v32 + 24);
                  *(v33 + 5) = *(v32 + 40);
                  *(v33 + 24) = v35;
                  *(v32 + 32) = 0;
                  *(v32 + 40) = 0;
                  *(v32 + 24) = 0;
                  v36 = *(v32 + 48);
                  *(v33 + 8) = *(v32 + 64);
                  *(v33 + 3) = v36;
                  *(v32 + 56) = 0;
                  *(v32 + 64) = 0;
                  *(v32 + 48) = 0;
                  v37 = *(v32 + 72);
                  *(v33 + 22) = *(v32 + 88);
                  *(v33 + 72) = v37;
                  v32 += 96;
                  v33 += 96;
                }

                while (v32 != v30);
                do
                {
                  sub_1B5DAC384(v29);
                  v29 += 96;
                }

                while (v29 != v30);
              }

              v38 = *a1;
              *a1 = v31;
              v39 = *(a1 + 16);
              v41 = v61;
              *(a1 + 8) = v61;
              *&v61 = v38;
              *(&v61 + 1) = v39;
              v59 = v38;
              v60 = v38;
              sub_1B5DAC334(&v59);
              v24 = v41;
            }

            else
            {
              sub_1B5DAC258(*(a1 + 8), v21, __p, &v44, &v43, &v42);
              v24 = v23 + 96;
            }

            *(a1 + 8) = v24;
            if (v46 < 0)
            {
              operator delete(__p[0]);
            }

            if (v57 && __len_6 == 1)
            {
              free(v57);
            }

            if (v67 && BYTE6(v66) == 1)
            {
              free(v67);
            }

            if (v47 >= 0xFu && v48)
            {
              MEMORY[0x1B8C880C0](v48, 0x1000C8077774924);
            }
          }

          if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v50.__r_.__value_.__l.__data_);
          }
        }
      }

      v54 = v9;
      if (v74 && v73[6] == 1)
      {
        free(v74);
        v9 = v54;
      }
    }

    while (v9);
  }

  if (v52 >= 0xFu && v53)
  {
    MEMORY[0x1B8C880C0](v53, 0x1000C8077774924);
  }

  v40 = *MEMORY[0x1E69E9840];
}

void sub_1B5DAC06C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, unsigned __int16 a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, unsigned __int16 a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, void *a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, void *a54)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a37 && a36 == 1)
  {
    free(a37);
  }

  if (a54)
  {
    v57 = a53 == 1;
  }

  else
  {
    v57 = 0;
  }

  if (v57)
  {
    free(a54);
  }

  if (a21 >= 0xFu && a22)
  {
    MEMORY[0x1B8C880C0](a22, 0x1000C8077774924);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  v58 = *(v55 - 192);
  if (v58 && *(v55 - 194) == 1)
  {
    free(v58);
  }

  if (a31 >= 0xFu)
  {
    if (a32)
    {
      MEMORY[0x1B8C880C0](a32, 0x1000C8077774924);
    }
  }

  *(v55 - 200) = v54;
  sub_1B5DA2654((v55 - 200));
  _Unwind_Resume(a1);
}

BOOL sub_1B5DAC198(uint64_t a1, unint64_t *a2, std::string *a3)
{
  v6 = *a2;
  v7 = sub_1B5CE6994(a1 + 16);
  if (v6 < v7)
  {
    sub_1B5CE667C((a1 + 16), *a2, __p);
    if ((v12 & 0x80u) == 0)
    {
      v8 = v12;
    }

    else
    {
      v8 = __p[1];
    }

    if ((v12 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    sub_1B5D0E3EC(a3, v9, v8);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v6 < v7;
}

void sub_1B5DAC23C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1B5DAC258(char *a1, char *a2, __int128 *a3, double *a4, float *a5, int *a6)
{
  sub_1B5CE410C(v14, a2);
  sub_1B5CE410C(__p, "");
  sub_1B5DAC3EC(a1, v14, a3, __p, *a6, *a4, *a5);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  return a1;
}

void sub_1B5DAC300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5DAC334(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 96;
    sub_1B5DAC384(v3 - 96);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1B5DAC384(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

char *sub_1B5DAC3EC(char *__dst, __int128 *a2, __int128 *a3, __int128 *a4, int a5, double a6, double a7)
{
  if (*(a2 + 23) < 0)
  {
    sub_1B5CE4AC4(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v13 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v13;
  }

  if (*(a3 + 23) < 0)
  {
    sub_1B5CE4AC4(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v14 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v14;
  }

  if (*(a4 + 23) < 0)
  {
    sub_1B5CE4AC4(__dst + 48, *a4, *(a4 + 1));
  }

  else
  {
    v15 = *a4;
    *(__dst + 8) = *(a4 + 2);
    *(__dst + 3) = v15;
  }

  *(__dst + 9) = a6;
  *(__dst + 10) = a7;
  *(__dst + 22) = a5;
  return __dst;
}

void sub_1B5DAC4B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_1B5DAC4EC(void *a1, unsigned int *a2)
{
  v4 = (*(*a1 + 112))(a1);
  result = 0.0;
  if (v4)
  {
    v8 = 0;
    v6 = sub_1B5D6EE88(a1 + 1, a2, &v8);
    result = 1.0;
    if (v6)
    {
      v7 = (v8 >> 23) / 255.0;
      return v7 * v7;
    }
  }

  return result;
}

uint64_t sub_1B5DAC57C(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v4 = 0;
  v5[0] = &unk_1F2D5B930;
  v5[1] = &v4;
  v5[3] = v5;
  (*(*a1 + 144))(a1, a2, v5);
  sub_1B5D6ECA0(v5);
  result = v4;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5DAC62C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D6ECA0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DAC64C(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5B990))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DAC68C(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 1;
  **(result + 8) = 1;
  return result;
}

uint64_t sub_1B5DAC6A8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5B930;
  a2[1] = v2;
  return result;
}

void sub_1B5DAC73C(unsigned int *a1, uint64_t a2, unsigned int a3)
{
  if (*a1 != -1)
  {
    v3 = *(a2 + 72);
    v4 = (*(v3 + 4 * *a1) >> 10 << ((*(v3 + 4 * *a1) >> 6) & 8)) ^ *a1;
    v5 = v4 ^ a3;
    if ((*(v3 + 4 * v5) & 0x800000FF) == a3)
    {
      *a1 = v5;
      if (v4 == a3)
      {
        __assert_rtn("advance", "LXWordTrie.cpp", 62, "!is_root()");
      }

      sub_1B5DAC4EC((a2 + 40), a1);
    }

    else
    {
      *a1 = -1;
    }
  }
}

uint64_t sub_1B5DAC7E8(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5C000))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DAC828(uint64_t a1, char *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = *a3;
  v7 = v4[1];
  v6 = v4[2];
  if (v7 >= v6)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *v4) >> 4);
    if (v10 + 1 > 0x555555555555555)
    {
      sub_1B5D04FA0();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v4) >> 4);
    v12 = 2 * v11;
    if (2 * v11 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v13 = 0x555555555555555;
    }

    else
    {
      v13 = v12;
    }

    v22 = v4;
    if (v13)
    {
      sub_1B5D935C8(v13);
    }

    v19 = 0;
    v20 = 48 * v10;
    sub_1B5DAC990((48 * v10), v3, v5);
    v21 = 48 * v10 + 48;
    v14 = v4[1];
    v15 = 48 * v10 + *v4 - v14;
    sub_1B5D93620(*v4, v14, v15);
    v16 = *v4;
    *v4 = v15;
    v17 = v4[2];
    v18 = v21;
    v20 = v16;
    *&v21 = v16;
    *(v4 + 1) = v18;
    *(&v21 + 1) = v17;
    v19 = v16;
    result = sub_1B5D936D0(&v19);
    v9 = v18;
  }

  else
  {
    result = sub_1B5DAC990(v4[1], *a2, *a3);
    v9 = v7 + 48;
    v4[1] = v7 + 48;
  }

  v4[1] = v9;
  return result;
}

_BYTE *sub_1B5DAC990(_BYTE *a1, char a2, uint64_t a3)
{
  *a1 = a2;
  v5[0] = a3;
  v6 = 1;
  sub_1B5DB9C6C((a1 + 8), v5);
  sub_1B5D264A0(v5);
  return a1;
}

void sub_1B5DAC9DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DAC9F8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5BFA0;
  a2[1] = v2;
  return result;
}

double sub_1B5DACA8C(uint64_t a1, uint64_t a2, unsigned int a3, int *a4, unsigned __int16 *a5)
{
  if ((*a2 & 1) != 0 && (v5 = *(a2 + 24), v6 = v5[1], v6 > a3) && (v7 = *v5) != 0)
  {
    v8 = *(v7 + a3);
    v10[0] = v7;
    v10[1] = v6;
    v10[2] = a3;
    *a4 = (v8 + a3) & (*(sub_1B5D330BC(a1, v10, a5, a2 + 112, *(a2 + 1488), *(a2 + 1496), *(a2 + 4)) + 44) >> 31);
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0;
    *(a1 + 2) = 16;
    *(a1 + 6) = 0;
    *(a1 + 16) = 0;
    *(a1 + 32) = 0;
    *(a1 + 37) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a1 + 64) = 0xFFFFFFFFLL;
    *(a1 + 76) = 0;
  }

  return result;
}

uint64_t sub_1B5DACBA8(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_1B5D2C828(a1, a2);
  }

  else
  {
    sub_1B5D5CABC(a1[1], a2);
    v5 = *(a2 + 32);
    v6 = *(a2 + 48);
    v7 = *(a2 + 64);
    *(v4 + 80) = *(a2 + 80);
    *(v4 + 48) = v6;
    *(v4 + 64) = v7;
    *(v4 + 32) = v5;
    result = v4 + 88;
    a1[1] = v4 + 88;
  }

  a1[1] = result;
  return result;
}

double sub_1B5DACC28(uint64_t *a1, uint64_t *a2)
{
  v4 = (*(*a1 + 112))(a1);
  result = 0.0;
  if (v4)
  {
    v8 = 0;
    v6 = sub_1B5D7601C(a1 + 1, a2, &v8);
    result = 1.0;
    if (v6)
    {
      v7 = (v8 >> 23) / 255.0;
      return v7 * v7;
    }
  }

  return result;
}

uint64_t sub_1B5DACCB8(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v4 = 0;
  v5[0] = &unk_1F2D5B9B0;
  v5[1] = &v4;
  v5[3] = v5;
  (*(*a1 + 144))(a1, a2, v5);
  sub_1B5D75CCC(v5);
  result = v4;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5DACD68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D75CCC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DACD88(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5BA10))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DACDC8(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 1;
  **(result + 8) = 1;
  return result;
}

uint64_t sub_1B5DACDE4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5B9B0;
  a2[1] = v2;
  return result;
}

float sub_1B5DACE78(uint64_t *a1, uint64_t a2, char a3)
{
  v3 = *a1;
  v4 = 0.0;
  if (*a1 != -1)
  {
    __s = a3;
    v11 = 0;
    v12 = v3;
    v7 = sub_1B5D753DC((a2 + 56), &__s, &v12, &v11, 1uLL);
    v8 = v12;
    if (v7 == -2)
    {
      v8 = -1;
    }

    *a1 = v8;
    if (v8 != -1)
    {
      if (!v8)
      {
        __assert_rtn("advance", "LXWordTrie.cpp", 62, "!is_root()");
      }

      return sub_1B5DACC28((a2 + 40), a1);
    }
  }

  return v4;
}

uint64_t sub_1B5DACF38(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5C080))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DACF78(uint64_t a1, char *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = *a3;
  v7 = v4[1];
  v6 = v4[2];
  if (v7 >= v6)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *v4) >> 4);
    if (v10 + 1 > 0x555555555555555)
    {
      sub_1B5D04FA0();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v4) >> 4);
    v12 = 2 * v11;
    if (2 * v11 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v13 = 0x555555555555555;
    }

    else
    {
      v13 = v12;
    }

    v22 = v4;
    if (v13)
    {
      sub_1B5D935C8(v13);
    }

    v19 = 0;
    v20 = 48 * v10;
    sub_1B5DAD0E0((48 * v10), v3, v5);
    v21 = 48 * v10 + 48;
    v14 = v4[1];
    v15 = 48 * v10 + *v4 - v14;
    sub_1B5D93620(*v4, v14, v15);
    v16 = *v4;
    *v4 = v15;
    v17 = v4[2];
    v18 = v21;
    v20 = v16;
    *&v21 = v16;
    *(v4 + 1) = v18;
    *(&v21 + 1) = v17;
    v19 = v16;
    result = sub_1B5D936D0(&v19);
    v9 = v18;
  }

  else
  {
    result = sub_1B5DAD0E0(v4[1], *a2, *a3);
    v9 = v7 + 48;
    v4[1] = v7 + 48;
  }

  v4[1] = v9;
  return result;
}

_BYTE *sub_1B5DAD0E0(_BYTE *a1, char a2, uint64_t a3)
{
  *a1 = a2;
  v5[0] = a3;
  v6 = 2;
  sub_1B5DB9C6C((a1 + 8), v5);
  sub_1B5D264A0(v5);
  return a1;
}

void sub_1B5DAD12C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DAD148(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5C020;
  a2[1] = v2;
  return result;
}

double sub_1B5DAD1DC(uint64_t a1, uint64_t a2, unsigned int a3, int *a4, unsigned __int16 *a5)
{
  if ((*a2 & 1) != 0 && (v5 = *(a2 + 24), v6 = v5[1], v6 > a3) && (v7 = *v5) != 0)
  {
    v8 = *(v7 + a3);
    v10[0] = v7;
    v10[1] = v6;
    v10[2] = a3;
    *a4 = (v8 + a3) & (*(sub_1B5D330BC(a1, v10, a5, a2 + 176, *(a2 + 1552), *(a2 + 1560), *(a2 + 4)) + 44) >> 31);
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0;
    *(a1 + 2) = 16;
    *(a1 + 6) = 0;
    *(a1 + 16) = 0;
    *(a1 + 32) = 0;
    *(a1 + 37) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a1 + 64) = 0xFFFFFFFFLL;
    *(a1 + 76) = 0;
  }

  return result;
}

double sub_1B5DAD2F8(uint64_t a1, unint64_t *a2)
{
  v4 = (*(*a1 + 112))(a1);
  result = 0.0;
  if (v4)
  {
    v8 = 0;
    v6 = sub_1B5D64DE0(a1 + 8, a2, &v8);
    result = 1.0;
    if (v6)
    {
      v7 = (v8 >> 23) / 255.0;
      return v7 * v7;
    }
  }

  return result;
}

uint64_t sub_1B5DAD388(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v4 = 0;
  v5[0] = &unk_1F2D5BA30;
  v5[1] = &v4;
  v5[3] = v5;
  (*(*a1 + 144))(a1, a2, v5);
  sub_1B5DAD44C(v5);
  result = v4;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5DAD438(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5DAD44C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DAD44C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1B5DAD4D8(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5BAA0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DAD518(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 1;
  **(result + 8) = 1;
  return result;
}

uint64_t sub_1B5DAD534(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5BA30;
  a2[1] = v2;
  return result;
}

float sub_1B5DAD5C8(unint64_t *a1, uint64_t a2, char a3)
{
  v3 = *a1;
  v4 = 0.0;
  if (*a1 != -1)
  {
    v10 = a3;
    v11 = 0;
    v12 = v3;
    v7 = sub_1B5D64E70(a2 + 56, &v10, &v12, &v11, 1uLL);
    v8 = v12;
    if (v7 == -2)
    {
      v8 = -1;
    }

    *a1 = v8;
    if (v8 != -1)
    {
      if (!v8)
      {
        __assert_rtn("advance", "LXWordTrie.cpp", 62, "!is_root()");
      }

      return sub_1B5DAD2F8(a2 + 40, a1);
    }
  }

  return v4;
}

uint64_t sub_1B5DAD688(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5C100))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DAD6C8(uint64_t a1, char *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = *a3;
  v7 = v4[1];
  v6 = v4[2];
  if (v7 >= v6)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *v4) >> 4);
    if (v10 + 1 > 0x555555555555555)
    {
      sub_1B5D04FA0();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v4) >> 4);
    v12 = 2 * v11;
    if (2 * v11 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v13 = 0x555555555555555;
    }

    else
    {
      v13 = v12;
    }

    v22 = v4;
    if (v13)
    {
      sub_1B5D935C8(v13);
    }

    v19 = 0;
    v20 = 48 * v10;
    sub_1B5DAD830((48 * v10), v3, v5);
    v21 = 48 * v10 + 48;
    v14 = v4[1];
    v15 = 48 * v10 + *v4 - v14;
    sub_1B5D93620(*v4, v14, v15);
    v16 = *v4;
    *v4 = v15;
    v17 = v4[2];
    v18 = v21;
    v20 = v16;
    *&v21 = v16;
    *(v4 + 1) = v18;
    *(&v21 + 1) = v17;
    v19 = v16;
    result = sub_1B5D936D0(&v19);
    v9 = v18;
  }

  else
  {
    result = sub_1B5DAD830(v4[1], *a2, *a3);
    v9 = v7 + 48;
    v4[1] = v7 + 48;
  }

  v4[1] = v9;
  return result;
}

_BYTE *sub_1B5DAD830(_BYTE *a1, char a2, uint64_t a3)
{
  *a1 = a2;
  v5[0] = a3;
  v6 = 3;
  sub_1B5DB9C6C((a1 + 8), v5);
  sub_1B5D264A0(v5);
  return a1;
}

void sub_1B5DAD87C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DAD898(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5C0A0;
  a2[1] = v2;
  return result;
}

double sub_1B5DAD92C(uint64_t a1, uint64_t a2, unsigned int a3, int *a4, unsigned __int16 *a5)
{
  if ((*a2 & 1) != 0 && (v5 = *(a2 + 24), v6 = v5[1], v6 > a3) && (v7 = *v5) != 0)
  {
    v8 = *(v7 + a3);
    v10[0] = v7;
    v10[1] = v6;
    v10[2] = a3;
    *a4 = (v8 + a3) & (*(sub_1B5D330BC(a1, v10, a5, a2 + 680, *(a2 + 2056), *(a2 + 2064), *(a2 + 4)) + 44) >> 31);
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0;
    *(a1 + 2) = 16;
    *(a1 + 6) = 0;
    *(a1 + 16) = 0;
    *(a1 + 32) = 0;
    *(a1 + 37) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a1 + 64) = 0xFFFFFFFFLL;
    *(a1 + 76) = 0;
  }

  return result;
}

uint64_t sub_1B5DADA48(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v4 = 0;
  v5[0] = &unk_1F2D5BAC0;
  v5[1] = &v4;
  v5[3] = v5;
  (*(*a1 + 144))(a1, a2, v5);
  sub_1B5D5FC3C(v5);
  result = v4;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5DADAF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D5FC3C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DADB18(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5BB20))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DADB58(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 1;
  **(result + 8) = 1;
  return result;
}

uint64_t sub_1B5DADB74(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5BAC0;
  a2[1] = v2;
  return result;
}

float sub_1B5DADC08(uint64_t a1, uint64_t a2, char a3)
{
  v3 = 0.0;
  if (*a1 != 0xFFFFFFFFLL)
  {
    v9 = *a1;
    if (*(a1 + 31) < 0)
    {
      sub_1B5CE4AC4(&v10, *(a1 + 8), *(a1 + 16));
    }

    else
    {
      v10 = *(a1 + 8);
      v11 = *(a1 + 24);
    }

    v16 = a3;
    sub_1B5CE6808((a2 + 64), &v16, 1uLL, &v9, &v12);
    v7 = v12;
    v14 = v12;
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1B5CE4AC4(&__p, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
      v7 = v14;
    }

    else
    {
      __p = v13;
    }

    *a1 = v7;
    std::string::operator=((a1 + 8), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(v10);
    }

    if (*a1 != 0xFFFFFFFFLL)
    {
      if (!*a1)
      {
        __assert_rtn("advance", "LXWordTrie.cpp", 62, "!is_root()");
      }

      return sub_1B5DAAB80((a2 + 40), a1).n64_f64[0];
    }
  }

  return v3;
}

void sub_1B5DADD6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5DADDC4(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5C180))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1B5DADE04(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v17 = *a3;
  if (*(a3 + 31) < 0)
  {
    sub_1B5CE4AC4(&__p, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    __p = *(a3 + 8);
    v19 = *(a3 + 24);
  }

  v6 = v4[1];
  v5 = v4[2];
  if (v6 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v4) >> 4);
    if (v8 + 1 > 0x555555555555555)
    {
      sub_1B5D04FA0();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *v4) >> 4);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v10;
    }

    v23 = v4;
    if (v11)
    {
      sub_1B5D935C8(v11);
    }

    v20 = 0;
    v21 = 48 * v8;
    v22 = 48 * v8;
    sub_1B5DADFC8((48 * v8), v3, &v17);
    *&v22 = v22 + 48;
    v12 = v4[1];
    v13 = v21 + *v4 - v12;
    sub_1B5D93620(*v4, v12, v13);
    v14 = *v4;
    *v4 = v13;
    v15 = v4[2];
    v16 = v22;
    v21 = v14;
    *&v22 = v14;
    *(v4 + 1) = v16;
    *(&v22 + 1) = v15;
    v20 = v14;
    sub_1B5D936D0(&v20);
    v7 = v16;
  }

  else
  {
    sub_1B5DADFC8(v4[1], v3, &v17);
    v7 = v6 + 48;
    v4[1] = v6 + 48;
  }

  v4[1] = v7;
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }
}

void sub_1B5DADF90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  *(v20 + 8) = v19;
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1B5DADFC8(_BYTE *a1, char a2, uint64_t *a3)
{
  *a1 = a2;
  v4 = (a1 + 8);
  v6 = *a3;
  if (*(a3 + 31) < 0)
  {
    sub_1B5CE4AC4(&v7, a3[1], a3[2]);
  }

  else
  {
    v7 = *(a3 + 1);
    v8 = a3[3];
  }

  v9 = 4;
  sub_1B5DB9C6C(v4, &v6);
  sub_1B5D264A0(&v6);
  return a1;
}

void sub_1B5DAE04C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DAE068(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5C120;
  a2[1] = v2;
  return result;
}

double sub_1B5DAE0FC(uint64_t a1, uint64_t a2, unsigned int a3, int *a4, unsigned __int16 *a5)
{
  if ((*a2 & 1) != 0 && (v5 = *(a2 + 24), v6 = v5[1], v6 > a3) && (v7 = *v5) != 0)
  {
    v8 = *(v7 + a3);
    v10[0] = v7;
    v10[1] = v6;
    v10[2] = a3;
    *a4 = (v8 + a3) & (*(sub_1B5D330BC(a1, v10, a5, a2 + 136, *(a2 + 1512), *(a2 + 1520), *(a2 + 4)) + 44) >> 31);
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0;
    *(a1 + 2) = 16;
    *(a1 + 6) = 0;
    *(a1 + 16) = 0;
    *(a1 + 32) = 0;
    *(a1 + 37) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a1 + 64) = 0xFFFFFFFFLL;
    *(a1 + 76) = 0;
  }

  return result;
}

uint64_t sub_1B5DAE218(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v4 = 0;
  v5[0] = &unk_1F2D5BB40;
  v5[1] = &v4;
  v5[3] = v5;
  (*(*a1 + 144))(a1, a2, v5);
  sub_1B5D6ECA0(v5);
  result = v4;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5DAE2C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D6ECA0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DAE2E8(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5BBA0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DAE328(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 1;
  **(result + 8) = 1;
  return result;
}

uint64_t sub_1B5DAE344(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5BB40;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5DAE3E4(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5C200))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DAE424(uint64_t a1, char *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = *a3;
  v7 = v4[1];
  v6 = v4[2];
  if (v7 >= v6)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *v4) >> 4);
    if (v10 + 1 > 0x555555555555555)
    {
      sub_1B5D04FA0();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v4) >> 4);
    v12 = 2 * v11;
    if (2 * v11 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v13 = 0x555555555555555;
    }

    else
    {
      v13 = v12;
    }

    v22 = v4;
    if (v13)
    {
      sub_1B5D935C8(v13);
    }

    v19 = 0;
    v20 = 48 * v10;
    sub_1B5DAE58C((48 * v10), v3, v5);
    v21 = 48 * v10 + 48;
    v14 = v4[1];
    v15 = 48 * v10 + *v4 - v14;
    sub_1B5D93620(*v4, v14, v15);
    v16 = *v4;
    *v4 = v15;
    v17 = v4[2];
    v18 = v21;
    v20 = v16;
    *&v21 = v16;
    *(v4 + 1) = v18;
    *(&v21 + 1) = v17;
    v19 = v16;
    result = sub_1B5D936D0(&v19);
    v9 = v18;
  }

  else
  {
    result = sub_1B5DAE58C(v4[1], *a2, *a3);
    v9 = v7 + 48;
    v4[1] = v7 + 48;
  }

  v4[1] = v9;
  return result;
}

_BYTE *sub_1B5DAE58C(_BYTE *a1, char a2, uint64_t a3)
{
  *a1 = a2;
  v5[0] = a3;
  v6 = 5;
  sub_1B5DB9C6C((a1 + 8), v5);
  sub_1B5D264A0(v5);
  return a1;
}

void sub_1B5DAE5D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DAE5F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5C1A0;
  a2[1] = v2;
  return result;
}

double sub_1B5DAE688(uint64_t *a1, uint64_t a2)
{
  v4 = (*(*a1 + 112))(a1);
  result = 0.0;
  if (v4)
  {
    v8 = 0;
    v6 = sub_1B5D137A8(a1 + 1, a2, &v8);
    result = 1.0;
    if (v6)
    {
      v7 = (v8 >> 23) / 255.0;
      return v7 * v7;
    }
  }

  return result;
}

uint64_t sub_1B5DAE718(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v4 = 0;
  v5[0] = &unk_1F2D5BBC0;
  v5[1] = &v4;
  v5[3] = v5;
  (*(*a1 + 144))(a1, a2, v5);
  sub_1B5DAE7DC(v5);
  result = v4;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5DAE7C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5DAE7DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DAE7DC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1B5DAE868(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5BC30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DAE8A8(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 1;
  **(result + 8) = 1;
  return result;
}

uint64_t sub_1B5DAE8C4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5BBC0;
  a2[1] = v2;
  return result;
}

float sub_1B5DAE958(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = 0.0;
  if (*(a1 + 12) != -1)
  {
    v8 = *a1;
    v9 = a3;
    *a1 = sub_1B5D1381C(a2 + 48, &v8, &v9, 1);
    *(a1 + 8) = v6;
    if (v6 <= 0xFFFFFFFEFFFFFFFFLL)
    {
      if ((v6 & 0x100) != 0)
      {
        __assert_rtn("advance", "LXWordTrie.cpp", 62, "!is_root()");
      }

      return sub_1B5DAE688((a2 + 40), a1);
    }
  }

  return v3;
}

uint64_t sub_1B5DAEA10(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5C280))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DAEA50(uint64_t a1, char *a2, __int128 *a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v18 = *a3;
  v6 = v4[1];
  v5 = v4[2];
  if (v6 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v4) >> 4);
    if (v9 + 1 > 0x555555555555555)
    {
      sub_1B5D04FA0();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *v4) >> 4);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v11;
    }

    v22 = v4;
    if (v12)
    {
      sub_1B5D935C8(v12);
    }

    v19 = 0;
    v20 = 48 * v9;
    v21 = 48 * v9;
    sub_1B5DAEBBC((48 * v9), v3, &v18);
    *&v21 = v21 + 48;
    v13 = v4[1];
    v14 = v20 + *v4 - v13;
    sub_1B5D93620(*v4, v13, v14);
    v15 = *v4;
    *v4 = v14;
    v16 = v4[2];
    v17 = v21;
    v20 = v15;
    *&v21 = v15;
    *(v4 + 1) = v17;
    *(&v21 + 1) = v16;
    v19 = v15;
    result = sub_1B5D936D0(&v19);
    v8 = v17;
  }

  else
  {
    result = sub_1B5DAEBBC(v4[1], v3, &v18);
    v8 = v6 + 48;
    v4[1] = v6 + 48;
  }

  v4[1] = v8;
  return result;
}

_BYTE *sub_1B5DAEBBC(_BYTE *a1, char a2, _OWORD *a3)
{
  *a1 = a2;
  v5[0] = *a3;
  v6 = 6;
  sub_1B5DB9C6C((a1 + 8), v5);
  sub_1B5D264A0(v5);
  return a1;
}

uint64_t sub_1B5DAEC28(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5C220;
  a2[1] = v2;
  return result;
}

double sub_1B5DAECBC(uint64_t a1, uint64_t a2, unsigned int a3, int *a4, unsigned __int16 *a5)
{
  if ((*a2 & 1) != 0 && (v5 = *(a2 + 24), v6 = v5[1], v6 > a3) && (v7 = *v5) != 0)
  {
    v8 = *(v7 + a3);
    v10[0] = v7;
    v10[1] = v6;
    v10[2] = a3;
    *a4 = (v8 + a3) & (*(sub_1B5D330BC(a1, v10, a5, a2 + 120, *(a2 + 1496), *(a2 + 1504), *(a2 + 4)) + 44) >> 31);
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0;
    *(a1 + 2) = 16;
    *(a1 + 6) = 0;
    *(a1 + 16) = 0;
    *(a1 + 32) = 0;
    *(a1 + 37) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a1 + 64) = 0xFFFFFFFFLL;
    *(a1 + 76) = 0;
  }

  return result;
}

uint64_t sub_1B5DAEDD8(uint64_t *a1, uint64_t *a2, _DWORD *a3)
{
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v7 = *a2;
    v9 = 0;
    v10 = v7;
    v8 = sub_1B5D753DC(a1 + 1, "", &v10, &v9, 0);
    *a3 = v8;
    return v8 != -1;
  }

  return result;
}

uint64_t sub_1B5DAEE68(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v4 = 0;
  v5[0] = &unk_1F2D5BC50;
  v5[1] = &v4;
  v5[3] = v5;
  (*(*a1 + 144))(a1, a2, v5);
  sub_1B5D75CCC(v5);
  result = v4;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5DAEF18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D75CCC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DAEF38(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5BCB0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DAEF78(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 1;
  **(result + 8) = 1;
  return result;
}

uint64_t sub_1B5DAEF94(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5BC50;
  a2[1] = v2;
  return result;
}

uint64_t *sub_1B5DAF028(uint64_t *result, uint64_t a2, char a3)
{
  v3 = *result;
  if (*result != -1)
  {
    v4 = result;
    __s = a3;
    v7 = 0;
    v8 = v3;
    result = sub_1B5D753DC((a2 + 48), &__s, &v8, &v7, 1uLL);
    v5 = v8;
    if (result == -2)
    {
      v5 = -1;
    }

    *v4 = v5;
    if (!v5)
    {
      __assert_rtn("advance", "LXWordTrie.cpp", 62, "!is_root()");
    }
  }

  return result;
}

uint64_t sub_1B5DAF0B0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = 0;
  v7 = 0;
  v13 = 0;
  do
  {
    __s = v7;
    v8 = *a2;
    v14 = 0;
    v15 = v8;
    result = sub_1B5D753DC((a1 + 8), &__s, &v15, &v14, 1uLL);
    v10 = v15;
    if (result == -2)
    {
      v10 = -1;
    }

    v15 = v10;
    if (v10 != -1)
    {
      result = sub_1B5D75494(*(a3 + 24), v7);
      v6 = v13;
    }

    if (v6)
    {
      break;
    }

    v11 = v7++;
  }

  while (v11 < 0xFF);
  return result;
}

uint64_t sub_1B5DAF170(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5C300))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DAF1B0(uint64_t a1, char *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = *a3;
  v7 = v4[1];
  v6 = v4[2];
  if (v7 >= v6)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *v4) >> 4);
    if (v10 + 1 > 0x555555555555555)
    {
      sub_1B5D04FA0();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v4) >> 4);
    v12 = 2 * v11;
    if (2 * v11 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v13 = 0x555555555555555;
    }

    else
    {
      v13 = v12;
    }

    v22 = v4;
    if (v13)
    {
      sub_1B5D935C8(v13);
    }

    v19 = 0;
    v20 = 48 * v10;
    sub_1B5DAF318((48 * v10), v3, v5);
    v21 = 48 * v10 + 48;
    v14 = v4[1];
    v15 = 48 * v10 + *v4 - v14;
    sub_1B5D93620(*v4, v14, v15);
    v16 = *v4;
    *v4 = v15;
    v17 = v4[2];
    v18 = v21;
    v20 = v16;
    *&v21 = v16;
    *(v4 + 1) = v18;
    *(&v21 + 1) = v17;
    v19 = v16;
    result = sub_1B5D936D0(&v19);
    v9 = v18;
  }

  else
  {
    result = sub_1B5DAF318(v4[1], *a2, *a3);
    v9 = v7 + 48;
    v4[1] = v7 + 48;
  }

  v4[1] = v9;
  return result;
}

_BYTE *sub_1B5DAF318(_BYTE *a1, char a2, uint64_t a3)
{
  *a1 = a2;
  v5[0] = a3;
  v6 = 7;
  sub_1B5DB9C6C((a1 + 8), v5);
  sub_1B5D264A0(v5);
  return a1;
}

void sub_1B5DAF364(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DAF380(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5C2A0;
  a2[1] = v2;
  return result;
}

double sub_1B5DAF414(uint64_t a1, uint64_t a2, unsigned int a3, int *a4, unsigned __int16 *a5)
{
  if ((*a2 & 1) != 0 && (v5 = *(a2 + 24), v6 = v5[1], v6 > a3) && (v7 = *v5) != 0)
  {
    v8 = *(v7 + a3);
    v10[0] = v7;
    v10[1] = v6;
    v10[2] = a3;
    *a4 = (v8 + a3) & (*(sub_1B5D330BC(a1, v10, a5, a2 + 144, *(a2 + 1520), *(a2 + 1528), *(a2 + 4)) + 44) >> 31);
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0;
    *(a1 + 2) = 16;
    *(a1 + 6) = 0;
    *(a1 + 16) = 0;
    *(a1 + 32) = 0;
    *(a1 + 37) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a1 + 64) = 0xFFFFFFFFLL;
    *(a1 + 76) = 0;
  }

  return result;
}

uint64_t sub_1B5DAF530(void *a1, unsigned int *a2, int *a3)
{
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v7 = *a2;
    v8 = a1[3];
    v9 = *(v8 + 4 * v7);
    if ((v9 & 0x100) != 0)
    {
      v10 = *(v8 + 4 * ((v9 >> 10 << ((v9 >> 6) & 8)) ^ v7)) & 0x7FFFFFFF;
    }

    else
    {
      v10 = -1;
    }

    *a3 = v10;
    return v10 != -1;
  }

  return result;
}

uint64_t sub_1B5DAF5C8(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v4 = 0;
  v5[0] = &unk_1F2D5BCD0;
  v5[1] = &v4;
  v5[3] = v5;
  (*(*a1 + 144))(a1, a2, v5);
  sub_1B5D6ECA0(v5);
  result = v4;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5DAF678(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D6ECA0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DAF698(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5BD30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DAF6D8(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 1;
  **(result + 8) = 1;
  return result;
}

uint64_t sub_1B5DAF6F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5BCD0;
  a2[1] = v2;
  return result;
}

void *sub_1B5DAF788(void *result, uint64_t a2, unsigned int a3)
{
  if (*result != -1)
  {
    v3 = (*(a2 + 4 * *result) >> 10 << ((*(a2 + 4 * *result) >> 6) & 8)) ^ *result;
    v4 = v3 ^ a3;
    if ((*(a2 + 4 * v4) & 0x800000FF) == a3)
    {
      *result = v4;
      if (v3 == a3)
      {
        __assert_rtn("advance", "LXWordTrie.cpp", 62, "!is_root()");
      }
    }

    else
    {
      *result = -1;
    }
  }

  return result;
}

uint64_t sub_1B5DAF808(uint64_t result, void *a2, uint64_t a3)
{
  v5 = result;
  for (i = 1; ; ++i)
  {
    v7 = *(v5 + 24);
    v8 = *(v7 + 4 * *a2);
    if (i != (*(v7 + 4 * ((v8 >> 10 << ((v8 >> 6) & 8)) ^ *a2 ^ i)) & 0x800000FF))
    {
      break;
    }

    v9 = (v8 >> 10 << ((v8 >> 6) & 8)) ^ *a2 ^ i;
    result = sub_1B5D6E468(*(a3 + 24), i);
    if (i > 0xFE)
    {
      return result;
    }

LABEL_6:
    ;
  }

  if (i <= 0xFE)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1B5DAF8C4(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5C380))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DAF904(uint64_t a1, char *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = *a3;
  v7 = v4[1];
  v6 = v4[2];
  if (v7 >= v6)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *v4) >> 4);
    if (v10 + 1 > 0x555555555555555)
    {
      sub_1B5D04FA0();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v4) >> 4);
    v12 = 2 * v11;
    if (2 * v11 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v13 = 0x555555555555555;
    }

    else
    {
      v13 = v12;
    }

    v22 = v4;
    if (v13)
    {
      sub_1B5D935C8(v13);
    }

    v19 = 0;
    v20 = 48 * v10;
    sub_1B5DAFA6C((48 * v10), v3, v5);
    v21 = 48 * v10 + 48;
    v14 = v4[1];
    v15 = 48 * v10 + *v4 - v14;
    sub_1B5D93620(*v4, v14, v15);
    v16 = *v4;
    *v4 = v15;
    v17 = v4[2];
    v18 = v21;
    v20 = v16;
    *&v21 = v16;
    *(v4 + 1) = v18;
    *(&v21 + 1) = v17;
    v19 = v16;
    result = sub_1B5D936D0(&v19);
    v9 = v18;
  }

  else
  {
    result = sub_1B5DAFA6C(v4[1], *a2, *a3);
    v9 = v7 + 48;
    v4[1] = v7 + 48;
  }

  v4[1] = v9;
  return result;
}

_BYTE *sub_1B5DAFA6C(_BYTE *a1, char a2, uint64_t a3)
{
  *a1 = a2;
  v5[0] = a3;
  v6 = 8;
  sub_1B5DB9C6C((a1 + 8), v5);
  sub_1B5D264A0(v5);
  return a1;
}

void sub_1B5DAFAB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DAFAD4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5C320;
  a2[1] = v2;
  return result;
}

double sub_1B5DAFB68(uint64_t a1, uint64_t a2, unsigned int a3, int *a4, unsigned __int16 *a5)
{
  if ((*a2 & 1) != 0 && (v5 = *(a2 + 24), v6 = v5[1], v6 > a3) && (v7 = *v5) != 0)
  {
    v8 = *(v7 + a3);
    v10[0] = v7;
    v10[1] = v6;
    v10[2] = a3;
    *a4 = (v8 + a3) & (*(sub_1B5D330BC(a1, v10, a5, a2 + 80, *(a2 + 1456), *(a2 + 1464), *(a2 + 4)) + 44) >> 31);
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0;
    *(a1 + 2) = 16;
    *(a1 + 6) = 0;
    *(a1 + 16) = 0;
    *(a1 + 32) = 0;
    *(a1 + 37) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a1 + 64) = 0xFFFFFFFFLL;
    *(a1 + 76) = 0;
  }

  return result;
}

uint64_t sub_1B5DAFC84(uint64_t a1, unint64_t *a2, _DWORD *a3)
{
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v7 = *a2;
    v9 = 0;
    v10 = v7;
    v8 = sub_1B5D64E70(a1 + 8, "", &v10, &v9, 0);
    *a3 = v8;
    return v8 != -1;
  }

  return result;
}

uint64_t sub_1B5DAFD14(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v4 = 0;
  v5[0] = &unk_1F2D5BD50;
  v5[1] = &v4;
  v5[3] = v5;
  (*(*a1 + 144))(a1, a2, v5);
  sub_1B5DAD44C(v5);
  result = v4;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5DAFDC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5DAD44C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DAFDE4(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5BDB0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DAFE24(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 1;
  **(result + 8) = 1;
  return result;
}

uint64_t sub_1B5DAFE40(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5BD50;
  a2[1] = v2;
  return result;
}

unint64_t *sub_1B5DAFED4(unint64_t *result, uint64_t a2, char a3)
{
  v3 = *result;
  if (*result != -1)
  {
    v4 = result;
    v6 = a3;
    v7 = 0;
    v8 = v3;
    result = sub_1B5D64E70(a2 + 48, &v6, &v8, &v7, 1uLL);
    v5 = v8;
    if (result == -2)
    {
      v5 = -1;
    }

    *v4 = v5;
    if (!v5)
    {
      __assert_rtn("advance", "LXWordTrie.cpp", 62, "!is_root()");
    }
  }

  return result;
}

uint64_t sub_1B5DAFF5C(void *a1, uint64_t *a2, uint64_t a3)
{
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v7 = a1[5];
    if (!v7)
    {
      __assert_rtn("enumerateChildren", "cedarpp.h", 261, "_ninfo");
    }

    v8 = *a2;
    v9 = HIDWORD(*a2);
    if (v9)
    {
      v10 = -v9;
      if ((v10 & 0x80000000) != 0)
      {
LABEL_5:
        v11 = *(a1[3] + -v10);
        if (v11)
        {
          return sub_1B5D649C0(*(a3 + 24), v11);
        }

        return result;
      }
    }

    else
    {
      v10 = *(a1[2] + 8 * v8);
      if ((v10 & 0x80000000) != 0)
      {
        goto LABEL_5;
      }
    }

    v12 = v10;
    if (v8 && ((v13 = (a1[2] + 8 * v10), *v13 < 1) || v13[1] != v8))
    {
      v14 = (v7 + 2 * v8 + 1);
    }

    else
    {
      v14 = (v7 + 2 * v12);
    }

    v15 = *v14;
    if (v15)
    {
      do
      {
        v16 = v15 ^ v12;
        result = sub_1B5D649C0(*(a3 + 24), v15);
        LOBYTE(v15) = *(a1[5] + 2 * v16);
      }

      while (v15);
    }
  }

  return result;
}