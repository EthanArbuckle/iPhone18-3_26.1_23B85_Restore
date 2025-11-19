void sub_10003A258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (*(v39 - 57) < 0)
  {
    operator delete(*(v39 - 80));
  }

  *(v39 - 80) = v39 - 56;
  sub_100002260((v39 - 80));
  _Unwind_Resume(a1);
}

uint64_t sub_10003A378(uint64_t a1, int a2)
{
  if ((atomic_load_explicit(&qword_100078720, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100078720))
  {
    sub_10000143C(&qword_100078708, "================================================================================");
    __cxa_atexit(&std::string::~string, &qword_100078708, &_mh_execute_header);
    __cxa_guard_release(&qword_100078720);
  }

  if (a2)
  {
    if (byte_10007871F >= 0)
    {
      v4 = &qword_100078708;
    }

    else
    {
      v4 = qword_100078708;
    }

    if (byte_10007871F >= 0)
    {
      v5 = byte_10007871F;
    }

    else
    {
      v5 = unk_100078710;
    }

    v6 = sub_1000027F4(&std::cout, v4, v5);
    v24 = 10;
    v7 = sub_1000027F4(v6, &v24, 1);
    v8 = sub_1000027F4(v7, "BEGIN: ", 7);
    v9 = *(a1 + 23);
    if (v9 >= 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = *a1;
    }

    if (v9 >= 0)
    {
      v11 = *(a1 + 23);
    }

    else
    {
      v11 = *(a1 + 8);
    }

    v12 = sub_1000027F4(v8, v10, v11);
    v25 = 10;
    v13 = &v25;
    v14 = 1;
  }

  else
  {
    v26 = 10;
    v15 = sub_1000027F4(&std::cout, &v26, 1);
    v16 = sub_1000027F4(v15, "END: ", 5);
    v17 = *(a1 + 23);
    if (v17 >= 0)
    {
      v18 = a1;
    }

    else
    {
      v18 = *a1;
    }

    if (v17 >= 0)
    {
      v19 = *(a1 + 23);
    }

    else
    {
      v19 = *(a1 + 8);
    }

    v20 = sub_1000027F4(v16, v18, v19);
    v27 = 10;
    v12 = sub_1000027F4(v20, &v27, 1);
    if (byte_10007871F >= 0)
    {
      v13 = &qword_100078708;
    }

    else
    {
      v13 = qword_100078708;
    }

    if (byte_10007871F >= 0)
    {
      v14 = byte_10007871F;
    }

    else
    {
      v14 = unk_100078710;
    }
  }

  v21 = sub_1000027F4(v12, v13, v14);
  std::ios_base::getloc((v21 + *(*v21 - 24)));
  v22 = std::locale::use_facet(&v28, &std::ctype<char>::id);
  (v22->__vftable[2].~facet_0)(v22, 10);
  std::locale::~locale(&v28);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t sub_10003A5AC(uint64_t *a1, uint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) < 3 || sub_100039B20())
  {
    sub_100039B10(a2);
    v4 = 0;
    return v4 & 1;
  }

  sub_10000143C(__p, "--debug");
  v6 = siri::dialogengine::OptionExists();
  v8 = v6;
  if (SHIBYTE(v101) < 0)
  {
    operator delete(__p[0]);
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v6)
  {
LABEL_9:
    siri::dialogengine::Log::SetLogDebugMessages(1, v7);
    siri::dialogengine::Log::SetOutputToStdout(1, v9);
    siri::dialogengine::Log::Debug("Activate debug mode", v10);
  }

LABEL_10:
  sub_10003A378(*a1, 1);
  LOBYTE(v92) = 0;
  sub_10000143C(&v104, "--templateDir");
  siri::dialogengine::GetOption();
  siri::dialogengine::ExpandPath();
  *v90 = *__p;
  v91 = v101;
  HIBYTE(v101) = 0;
  LOBYTE(__p[0]) = 0;
  if (v108 < 0)
  {
    operator delete(v106.__locale_);
  }

  if (v105 < 0)
  {
    operator delete(v104);
  }

  v11 = HIBYTE(v91);
  if (SHIBYTE(v91) < 0)
  {
    v11 = v90[1];
  }

  if (!v11)
  {
    v36 = sub_1000027F4(&std::cout, "Error: No template directory specified.", 39);
LABEL_59:
    std::ios_base::getloc((v36 + *(*v36 - 24)));
    v40 = std::locale::use_facet(__p, &std::ctype<char>::id);
    (v40->__vftable[2].~facet_0)(v40, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v4 = 0;
    goto LABEL_151;
  }

  if ((siri::dialogengine::DirExists() & 1) == 0)
  {
    v37 = sub_1000027F4(&std::cout, "Error: The specified template directory does not exist or is not a directory: ", 78);
    if (SHIBYTE(v91) >= 0)
    {
      v38 = v90;
    }

    else
    {
      v38 = v90[0];
    }

    if (SHIBYTE(v91) >= 0)
    {
      v39 = HIBYTE(v91);
    }

    else
    {
      v39 = v90[1];
    }

    v36 = sub_1000027F4(v37, v38, v39);
    goto LABEL_59;
  }

  sub_10000143C(__p, "--delete");
  LOBYTE(v92) = siri::dialogengine::OptionExists();
  if (SHIBYTE(v101) < 0)
  {
    operator delete(__p[0]);
  }

  v12 = sub_1000027F4(&std::cout, "Template directory: ", 20);
  if (SHIBYTE(v91) >= 0)
  {
    v13 = v90;
  }

  else
  {
    v13 = v90[0];
  }

  if (SHIBYTE(v91) >= 0)
  {
    v14 = HIBYTE(v91);
  }

  else
  {
    v14 = v90[1];
  }

  v15 = sub_1000027F4(v12, v13, v14);
  LOBYTE(__p[0]) = 10;
  v16 = sub_1000027F4(v15, __p, 1);
  LOBYTE(__p[0]) = 10;
  v17 = sub_1000027F4(v16, __p, 1);
  v18 = sub_1000027F4(v17, "Delete? ", 8);
  siri::dialogengine::StringFromBool(__p, v92, v19);
  if (SHIBYTE(v101) >= 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  if (SHIBYTE(v101) >= 0)
  {
    v21 = HIBYTE(v101);
  }

  else
  {
    v21 = __p[1];
  }

  v22 = sub_1000027F4(v18, v20, v21);
  LOBYTE(v106.__locale_) = 10;
  v23 = sub_1000027F4(v22, &v106, 1);
  std::ios_base::getloc((v23 + *(*v23 - 24)));
  v24 = std::locale::use_facet(&v106, &std::ctype<char>::id);
  (v24->__vftable[2].~facet_0)(v24, 10);
  std::locale::~locale(&v106);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v101) < 0)
  {
    operator delete(__p[0]);
  }

  siri::dialogengine::Log::Debug("BEGIN ExcludeCats", v25);
  v27 = v90;
  if (SHIBYTE(v91) < 0)
  {
    v27 = v90[0];
  }

  siri::dialogengine::Log::Debug("templateDir: [%s]", v26, v27);
  siri::dialogengine::StringFromBool(__p, v92, v28);
  if (SHIBYTE(v101) >= 0)
  {
    v30 = __p;
  }

  else
  {
    v30 = __p[0];
  }

  siri::dialogengine::Log::Debug("delete: %s", v29, v30);
  if (SHIBYTE(v101) < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000143C(__p, "dialog");
  siri::dialogengine::JoinPath();
  if (SHIBYTE(v101) < 0)
  {
    operator delete(__p[0]);
  }

  siri::dialogengine::ListDirRecursively();
  v31 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v103 - v102));
  if (v103 == v102)
  {
    v32 = 0;
  }

  else
  {
    v32 = v31;
  }

  sub_1000377EC(v102, v103, __p, v32, 1);
  v33 = v102;
  v34 = v103;
  while (v33 != v34)
  {
    siri::dialogengine::JoinPath();
    if (*(v33 + 23) < 0)
    {
      operator delete(*v33);
    }

    v35 = *__p;
    v33[2] = v101;
    *v33 = v35;
    v33 += 3;
  }

  siri::dialogengine::Context::Context(__p);
  v42 = v102;
  v43 = v103;
  if (v102 != v103)
  {
    v4 = 1;
    while (1)
    {
      sub_10000143C(&v106, "cat");
      if (siri::dialogengine::HasExtension())
      {
        v44 = siri::dialogengine::DirExists();
        v45 = v44;
        if ((v108 & 0x80000000) == 0)
        {
          if ((v44 & 1) == 0)
          {
            goto LABEL_146;
          }

LABEL_69:
          v47 = *(v42 + 23);
          if (v47 >= 0)
          {
            v48 = v42;
          }

          else
          {
            v48 = *v42;
          }

          if (v47 >= 0)
          {
            v49 = *(v42 + 23);
          }

          else
          {
            v49 = v42[1];
          }

          v50 = sub_1000027F4(&std::cout, v48, v49);
          std::ios_base::getloc((v50 + *(*v50 - 24)));
          v51 = std::locale::use_facet(&v106, &std::ctype<char>::id);
          (v51->__vftable[2].~facet_0)(v51, 10);
          std::locale::~locale(&v106);
          std::ostream::put();
          std::ostream::flush();
          siri::dialogengine::GetCatLocales();
          if (v106.__locale_ == v107)
          {
            sub_10000143C(__dst, &unk_10006B9FB);
          }

          else if (*(v106.__locale_ + 23) < 0)
          {
            sub_100001C60(__dst, *v106.__locale_, *(v106.__locale_ + 1));
          }

          else
          {
            v52 = *v106.__locale_;
            v99 = *(v106.__locale_ + 2);
            *__dst = v52;
          }

          v96.__locale_ = &v106;
          sub_100002260(&v96);
          siri::dialogengine::FindParamsFile();
          if (SHIBYTE(v99) < 0)
          {
            sub_100001C60(&v110, __dst[0], __dst[1]);
          }

          else
          {
            v110 = *__dst;
            v111 = v99;
          }

          v93 = 0;
          v94 = 0;
          v95 = 0;
          sub_10000954C(&v93, &v110, &v112, 1uLL);
          siri::dialogengine::FindLocaleFile();
          siri::dialogengine::Context::LoadFiles();
          if (v97 < 0)
          {
            operator delete(v96.__locale_);
          }

          v109 = &v93;
          sub_100002260(&v109);
          if (SHIBYTE(v111) < 0)
          {
            operator delete(v110);
          }

          if (v108 < 0)
          {
            operator delete(v106.__locale_);
          }

          siri::dialogengine::Context::GetFile(&v93, __p);
          if (v93)
          {
            sub_10000143C(&v96, "excludeIfSet");
            siri::dialogengine::File::GetMetadata();
            if (v97 < 0)
            {
              operator delete(v96.__locale_);
            }

            locale = v106.__locale_;
            if (v106.__locale_ != &v107)
            {
              do
              {
                if (*(locale + 55) < 0)
                {
                  v54 = *(locale + 4);
                }

                else
                {
                  v54 = locale + 32;
                }

                if (getenv(v54))
                {
                  if (v92 == 1)
                  {
                    v77 = sub_1000027F4(&std::cout, "\t*** The environment variable '", 31);
                    v78 = *(locale + 55);
                    if (v78 >= 0)
                    {
                      v79 = locale + 32;
                    }

                    else
                    {
                      v79 = *(locale + 4);
                    }

                    if (v78 >= 0)
                    {
                      v80 = *(locale + 55);
                    }

                    else
                    {
                      v80 = *(locale + 5);
                    }

                    v81 = sub_1000027F4(v77, v79, v80);
                    v82 = sub_1000027F4(v81, "' is defined.  DELETING this CAT. ***", 37);
                    std::ios_base::getloc((v82 + *(*v82 - 24)));
                    v83 = std::locale::use_facet(&v96, &std::ctype<char>::id);
                    (v83->__vftable[2].~facet_0)(v83, 10);
                    std::locale::~locale(&v96);
                    std::ostream::put();
                    std::ostream::flush();
                    if ((siri::dialogengine::DeleteDirTree() & 1) == 0)
                    {
                      v84 = sub_1000027F4(&std::cout, "\tError: Failed to delete CAT: ", 30);
                      v85 = *(v42 + 23);
                      if (v85 >= 0)
                      {
                        v86 = v42;
                      }

                      else
                      {
                        v86 = *v42;
                      }

                      if (v85 >= 0)
                      {
                        v87 = *(v42 + 23);
                      }

                      else
                      {
                        v87 = v42[1];
                      }

                      v88 = sub_1000027F4(v84, v86, v87);
                      std::ios_base::getloc((v88 + *(*v88 - 24)));
                      v89 = std::locale::use_facet(&v96, &std::ctype<char>::id);
                      (v89->__vftable[2].~facet_0)(v89, 10);
                      std::locale::~locale(&v96);
                      std::ostream::put();
                      std::ostream::flush();
                      v4 = 0;
                    }

                    break;
                  }

                  v55 = sub_1000027F4(&std::cout, "\t*** The environment variable '", 31);
                  v56 = *(locale + 55);
                  if (v56 >= 0)
                  {
                    v57 = locale + 32;
                  }

                  else
                  {
                    v57 = *(locale + 4);
                  }

                  if (v56 >= 0)
                  {
                    v58 = *(locale + 55);
                  }

                  else
                  {
                    v58 = *(locale + 5);
                  }

                  v59 = sub_1000027F4(v55, v57, v58);
                  v60 = "' is defined.  This CAT will be EXCLUDED. ***";
                  v61 = 45;
                }

                else
                {
                  v62 = sub_1000027F4(&std::cout, "\t*** The environment variable '", 31);
                  v63 = *(locale + 55);
                  if (v63 >= 0)
                  {
                    v64 = locale + 32;
                  }

                  else
                  {
                    v64 = *(locale + 4);
                  }

                  if (v63 >= 0)
                  {
                    v65 = *(locale + 55);
                  }

                  else
                  {
                    v65 = *(locale + 5);
                  }

                  v59 = sub_1000027F4(v62, v64, v65);
                  v60 = "' is not defined.  Leaving this CAT in place. ***";
                  v61 = 49;
                }

                v66 = sub_1000027F4(v59, v60, v61);
                std::ios_base::getloc((v66 + *(*v66 - 24)));
                v67 = std::locale::use_facet(&v96, &std::ctype<char>::id);
                (v67->__vftable[2].~facet_0)(v67, 10);
                std::locale::~locale(&v96);
                std::ostream::put();
                std::ostream::flush();
                v68 = *(locale + 1);
                if (v68)
                {
                  do
                  {
                    v69 = v68;
                    v68 = *v68;
                  }

                  while (v68);
                }

                else
                {
                  do
                  {
                    v69 = *(locale + 2);
                    v70 = *v69 == locale;
                    locale = v69;
                  }

                  while (!v70);
                }

                locale = v69;
              }

              while (v69 != &v107);
            }

            sub_10000623C(&v106, v107);
          }

          else
          {
            v71 = sub_1000027F4(&std::cout, "\tError: Failed to load CAT: ", 28);
            v72 = *(v42 + 23);
            if (v72 >= 0)
            {
              v73 = v42;
            }

            else
            {
              v73 = *v42;
            }

            if (v72 >= 0)
            {
              v74 = *(v42 + 23);
            }

            else
            {
              v74 = v42[1];
            }

            v75 = sub_1000027F4(v71, v73, v74);
            std::ios_base::getloc((v75 + *(*v75 - 24)));
            v76 = std::locale::use_facet(&v106, &std::ctype<char>::id);
            (v76->__vftable[2].~facet_0)(v76, 10);
            std::locale::~locale(&v106);
            std::ostream::put();
            std::ostream::flush();
            v4 = 0;
          }

          if (v94)
          {
            sub_100005EB4(v94);
          }

          if ((SHIBYTE(v99) & 0x80000000) == 0)
          {
            goto LABEL_146;
          }

          v46 = __dst[0];
LABEL_145:
          operator delete(v46);
          goto LABEL_146;
        }

        operator delete(v106.__locale_);
        if (v45)
        {
          goto LABEL_69;
        }
      }

      else if (v108 < 0)
      {
        v46 = v106.__locale_;
        goto LABEL_145;
      }

LABEL_146:
      v42 += 3;
      if (v42 == v43)
      {
        goto LABEL_149;
      }
    }
  }

  v4 = 1;
LABEL_149:
  siri::dialogengine::Log::Debug("END ExcludeCats", v41);
  siri::dialogengine::Context::~Context(__p);
  __p[0] = &v102;
  sub_100002260(__p);
  if (v105 < 0)
  {
    operator delete(v104);
  }

LABEL_151:
  sub_10003A378(*a1, 0);
  if (SHIBYTE(v91) < 0)
  {
    operator delete(v90[0]);
  }

  return v4 & 1;
}

void sub_10003B168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, std::__shared_weak_count *a19, uint64_t a20, std::locale a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, std::locale a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  std::locale::~locale(&a21);
  sub_10000623C(v38 - 160, *(v38 - 152));
  if (a19)
  {
    sub_100005EB4(a19);
  }

  if (a32 < 0)
  {
    operator delete(__p);
  }

  siri::dialogengine::Context::~Context(&a33);
  __p = (v38 - 208);
  sub_100002260(&__p);
  if (*(v38 - 161) < 0)
  {
    operator delete(*(v38 - 184));
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t start(int a1, uint64_t a2)
{
  memset(v4, 0, sizeof(v4));
  sub_10003B3F8(v4, a2, a2 + 8 * a1, a1);
  v2 = sub_100032CE0(v4);
  v5 = v4;
  sub_100002260(&v5);
  return v2 ^ 1u;
}

void sub_10003B3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100002260(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10003B3F8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100002064(result, a4);
  }

  return result;
}

void sub_10003B460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100002260(&a9);
  _Unwind_Resume(a1);
}

_BYTE *sub_10003B480(uint64_t a1, const char **a2, const char **a3, _BYTE *a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = strlen(*v6);
      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100001AA8();
      }

      v9 = v8;
      if (v8 >= 0x17)
      {
        operator new();
      }

      v4[23] = v8;
      if (v8)
      {
        memmove(v4, v7, v8);
      }

      v4[v9] = 0;
      ++v6;
      v4 = v14 + 24;
      v14 += 24;
    }

    while (v6 != a3);
  }

  v12 = 1;
  sub_1000021E0(v11);
  return v4;
}

uint64_t sub_10003B5BC(uint64_t a1)
{
  if ((*(a1 + 119) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 104))
    {
      return 1;
    }
  }

  else if (*(a1 + 119))
  {
    return 1;
  }

  if ((*(a1 + 95) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 80))
    {
      return 2;
    }
  }

  else if (*(a1 + 95))
  {
    return 2;
  }

  v2 = *(a1 + 71);
  if (v2 < 0)
  {
    v2 = *(a1 + 56);
  }

  if (v2)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

void *sub_10003B610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10003B5BC(a1);
  if (result > 1)
  {
    if (result == 2)
    {
      if ((*(a1 + 95) & 0x80000000) == 0)
      {
        *a2 = *(a1 + 72);
        v5 = *(a1 + 88);
LABEL_11:
        *(a2 + 16) = v5;
        return result;
      }

      v6 = *(a1 + 72);
      v7 = *(a1 + 80);
    }

    else
    {
      if ((*(a1 + 71) & 0x80000000) == 0)
      {
        *a2 = *(a1 + 48);
        v5 = *(a1 + 64);
        goto LABEL_11;
      }

      v6 = *(a1 + 48);
      v7 = *(a1 + 56);
    }
  }

  else
  {
    if (!result)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      return result;
    }

    if ((*(a1 + 119) & 0x80000000) == 0)
    {
      *a2 = *(a1 + 96);
      v5 = *(a1 + 112);
      goto LABEL_11;
    }

    v6 = *(a1 + 96);
    v7 = *(a1 + 104);
  }

  return sub_100001C60(a2, v6, v7);
}

void sub_10003B6D4(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (sub_10003B5BC(a1) == 3)
  {
    siri::dialogengine::ListDir();
    v4 = v16[0];
    v5 = v16[1];
    while (v4 != v5)
    {
      if (v4[23] < 0)
      {
        sub_100001C60(__dst, *v4, *(v4 + 1));
      }

      else
      {
        v6 = *v4;
        *&v15 = *(v4 + 2);
        *__dst = v6;
      }

      siri::dialogengine::JoinPath();
      v7 = siri::dialogengine::DirExists();
      v8 = v7;
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
        if (v8)
        {
LABEL_10:
          if (SBYTE7(v15) < 0)
          {
            sub_100001C60(__p, __dst[0], __dst[1]);
          }

          else
          {
            *__p = *__dst;
            v18 = v15;
          }

          v19 = 1;
          v9 = a2[1];
          if (v9 >= a2[2])
          {
            v11 = sub_1000446C4(a2, __p);
            v12 = SHIBYTE(v18);
            a2[1] = v11;
            if (v12 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            v10 = *__p;
            *(v9 + 16) = v18;
            *v9 = v10;
            v18 = 0;
            __p[1] = 0;
            __p[0] = 0;
            *(v9 + 24) = v19;
            a2[1] = v9 + 32;
          }
        }
      }

      else if (v7)
      {
        goto LABEL_10;
      }

      if (SBYTE7(v15) < 0)
      {
        operator delete(__dst[0]);
      }

      v4 += 24;
    }

    __p[0] = v16;
    sub_100002260(__p);
  }

  else
  {
    v22 = 1;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = *(a1 + 192) == *(a1 + 200);
    sub_10000143C(__p, "metadata/dialog-metadata.yaml");
    siri::dialogengine::JoinPath();
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    if (siri::dialogengine::FileExists())
    {
      YAML::LoadFile(&v20);
    }

    std::operator+<char>();
    siri::dialogengine::Log::Error();
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    if (v21 < 0)
    {
      operator delete(v20);
    }

    if (v25)
    {
      sub_100005EB4(v25);
    }

    if (SBYTE7(v24) < 0)
    {
      operator delete(v23);
    }
  }
}

void sub_10003CC80(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (STACK[0x398])
  {
    sub_100005EB4(STACK[0x398]);
  }

  sub_10003D6C8(&STACK[0x3A0]);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    std::operator+<char>();
    siri::dialogengine::ExceptionDetails();
    siri::dialogengine::Log::Error();
    if (SLOBYTE(STACK[0x3B7]) < 0)
    {
      operator delete(STACK[0x3A0]);
    }

    if (SHIBYTE(a72) < 0)
    {
      operator delete(a71);
    }
  }

  else
  {
    if (a2 != 2)
    {
      if (*(v73 - 185) < 0)
      {
        operator delete(*(v73 - 208));
      }

      sub_10003D6C8(v73 - 184);
      *(v73 - 184) = v72;
      sub_100044620((v73 - 184));
      _Unwind_Resume(a1);
    }

    v76 = __cxa_begin_catch(a1);
    std::operator+<char>();
    v77 = std::string::append(&a34, " ");
    v78 = *&v77->__r_.__value_.__l.__data_;
    a69 = v77->__r_.__value_.__r.__words[2];
    a68 = v78;
    v77->__r_.__value_.__l.__size_ = 0;
    v77->__r_.__value_.__r.__words[2] = 0;
    v77->__r_.__value_.__r.__words[0] = 0;
    v79 = (*(*v76 + 16))(v76);
    v80 = std::string::append(&a68, v79);
    v81 = *&v80->__r_.__value_.__l.__data_;
    a72 = v80->__r_.__value_.__r.__words[2];
    a71 = v81;
    v80->__r_.__value_.__l.__size_ = 0;
    v80->__r_.__value_.__r.__words[2] = 0;
    v80->__r_.__value_.__r.__words[0] = 0;
    v82 = std::string::append(&a71, "");
    v83 = *&v82->__r_.__value_.__l.__data_;
    STACK[0x3B0] = v82->__r_.__value_.__r.__words[2];
    *&STACK[0x3A0] = v83;
    v82->__r_.__value_.__l.__size_ = 0;
    v82->__r_.__value_.__r.__words[2] = 0;
    v82->__r_.__value_.__r.__words[0] = 0;
    siri::dialogengine::Log::Error();
    if (SLOBYTE(STACK[0x3B7]) < 0)
    {
      operator delete(STACK[0x3A0]);
    }

    if (SHIBYTE(a72) < 0)
    {
      operator delete(a71);
    }

    if (SHIBYTE(a69) < 0)
    {
      operator delete(a68);
    }

    if (a39 < 0)
    {
      operator delete(a34);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x10003C61CLL);
}

void sub_10003D504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x3B7]) < 0)
  {
    operator delete(STACK[0x3A0]);
  }

  if (a75 < 0)
  {
    operator delete(a74);
  }

  if (a73 < 0)
  {
    operator delete(a68);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  __cxa_end_catch();
  JUMPOUT(0x10003CEFCLL);
}

void sub_10003D574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x3B7]) < 0)
  {
    operator delete(STACK[0x3A0]);
  }

  if (a73 < 0)
  {
    operator delete(a69);
  }

  __cxa_end_catch();
  JUMPOUT(0x10003CEFCLL);
}

_BYTE *sub_10003D5B4(_BYTE *a1, _BYTE *a2)
{
  if (*a1 != 1 || (*a2 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v6 = a1;
    v7 = exception;
    if (v6[31] < 0)
    {
      sub_100001C60(&v8, *(v6 + 1), *(v6 + 2));
    }

    else
    {
      v8 = *(v6 + 8);
      v9 = *(v6 + 3);
    }

    sub_1000415A8(v7, &v8);
  }

  if (!sub_100041330(a1, a2))
  {
    sub_100041440(a1, a2);
  }

  return a1;
}

uint64_t sub_10003D6C8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100005EB4(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_10003D708(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if ((*a1 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if (*(a1 + 31) < 0)
    {
      sub_100001C60(&__dst, *(a1 + 8), *(a1 + 16));
    }

    else
    {
      __dst = *(a1 + 8);
      v15 = *(a1 + 24);
    }

    sub_1000415A8(exception, &__dst);
  }

  sub_100041BB0(a1);
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v12 = *(a1 + 32);
  v13 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = sub_1000449FC(v6, a2, &v12);
  if (v13)
  {
    sub_100005EB4(v13);
  }

  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100005EB4(v9);
  }

  else
  {
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
  }

  *a3 = 1;
  *(a3 + 32) = v10;
  *(a3 + 40) = v9;
  *(a3 + 48) = v8;
}

void sub_10003D884(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 == 2)
  {
    v5 = *(a1 + 16);
    v7 = *v5;
    v6 = v5[1];
    if (v7)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      goto LABEL_11;
    }

    v9 = *(a1 + 32);
    v4 = *(a1 + 40);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = v9;
      v24 = v4;
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v19[0] = 1;
      v25 = v7;
      if (v10)
      {
        v11 = 0;
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        __p = 0;
        v14 = 0;
        v15 = 0;
        v16 = v9;
        v17 = v10;
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_19:
        v12[0] = 1;
        v18 = v6;
        sub_100045824(a2, v19, v12);
        if (v17)
        {
          sub_100005EB4(v17);
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(__p);
        }

        if ((v11 & 1) == 0)
        {
          sub_100005EB4(v10);
        }

        goto LABEL_25;
      }
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = v9;
      v19[0] = 1;
      v24 = 0;
      v25 = v7;
    }

    v10 = 0;
    __p = 0;
    v14 = 0;
    v15 = 0;
    v16 = v9;
    v11 = 1;
    v17 = 0;
    goto LABEL_19;
  }

  if (*a1 != 1 || (v2 = **(a1 + 8)) == 0)
  {
LABEL_11:
    *a2 = 1;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 1;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 1;
    *(a2 + 120) = 0u;
    *(a2 + 136) = 0u;
    *(a2 + 152) = 0u;
    return;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = v3;
    v24 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = v3;
    v24 = 0;
  }

  v19[0] = 1;
  v25 = v2;
  sub_100045638(a2, v19);
LABEL_25:
  if (v24)
  {
    sub_100005EB4(v24);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v20);
  }

  if (v4)
  {
    sub_100005EB4(v4);
  }
}

void sub_10003DA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v19 = v18;
  sub_10003D6C8(&a9);
  if ((v19 & 1) == 0)
  {
    sub_100005EB4(v17);
  }

  sub_10003D6C8(&a16);
  if (v16)
  {
    sub_100005EB4(v16);
  }

  _Unwind_Resume(a1);
}

void sub_10003DA98(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 == 2)
  {
    v5 = *(a1 + 16);
    v7 = *v5;
    v6 = v5[1];
    if (v7)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      goto LABEL_11;
    }

    v9 = *(a1 + 32);
    v4 = *(a1 + 40);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = v9;
      v24 = v4;
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v19[0] = 1;
      v25 = v7;
      if (v10)
      {
        v11 = 0;
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        __p = 0;
        v14 = 0;
        v15 = 0;
        v16 = v9;
        v17 = v10;
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_19:
        v12[0] = 1;
        v18 = v6;
        sub_100045824(a2, v19, v12);
        if (v17)
        {
          sub_100005EB4(v17);
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(__p);
        }

        if ((v11 & 1) == 0)
        {
          sub_100005EB4(v10);
        }

        goto LABEL_25;
      }
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = v9;
      v19[0] = 1;
      v24 = 0;
      v25 = v7;
    }

    v10 = 0;
    __p = 0;
    v14 = 0;
    v15 = 0;
    v16 = v9;
    v11 = 1;
    v17 = 0;
    goto LABEL_19;
  }

  if (*a1 != 1 || (v2 = **(a1 + 8)) == 0)
  {
LABEL_11:
    *a2 = 1;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 1;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 1;
    *(a2 + 120) = 0u;
    *(a2 + 136) = 0u;
    *(a2 + 152) = 0u;
    return;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = v3;
    v24 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = v3;
    v24 = 0;
  }

  v19[0] = 1;
  v25 = v2;
  sub_100045638(a2, v19);
LABEL_25:
  if (v24)
  {
    sub_100005EB4(v24);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v20);
  }

  if (v4)
  {
    sub_100005EB4(v4);
  }
}

void sub_10003DC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v19 = v18;
  sub_10003D6C8(&a9);
  if ((v19 & 1) == 0)
  {
    sub_100005EB4(v17);
  }

  sub_10003D6C8(&a16);
  if (v16)
  {
    sub_100005EB4(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10003DCAC(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    sub_100005EB4(v2);
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    sub_100005EB4(v3);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    sub_100005EB4(v4);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_10003DD24(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100045CB8(a1, a2);
  }

  else
  {
    sub_100045C48(a1, a2);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

void sub_10003DD64(siri::dialogengine::DialogMetadataReader *a1, FILE *a2)
{
  sub_10000143C(&v42, &unk_10006B9FB);
  for (i = siri::dialogengine::DialogMetadataReader::GetNextSemanticValue(a1); i; i = siri::dialogengine::DialogMetadataReader::GetNextSemanticValue(a1))
  {
    v5 = (i + 24);
    v6 = *(i + 47);
    if (v6 >= 0)
    {
      v7 = *(i + 47);
    }

    else
    {
      v7 = *(i + 32);
    }

    size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v42.__r_.__value_.__l.__size_;
    }

    if (v7 != size || (v6 >= 0 ? (v9 = (i + 24)) : (v9 = *v5), (v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v10 = &v42) : (v10 = v42.__r_.__value_.__r.__words[0]), memcmp(v9, v10, v7)))
    {
      v11 = (i + 24);
      if (v6 < 0)
      {
        v11 = *v5;
      }

      fprintf(a2, "\n%s\n", v11);
    }

    v12 = *(i + 48);
    v13 = *(i + 56);
    while (v12 != v13)
    {
      v14 = v12;
      if (*(v12 + 23) < 0)
      {
        v14 = *v12;
      }

      fprintf(a2, "    %s", v14);
      if (*(v12 + 40))
      {
        fwrite(" [d; ", 5uLL, 1uLL, a2);
        memset(v41, 0, sizeof(v41));
        v15 = *(v12 + 24);
        if (v15 != (v12 + 32))
        {
          do
          {
            v16 = v15[7];
            v17 = *(v15 + 79);
            if (v17 >= 0)
            {
              v18 = (v15 + 7);
            }

            else
            {
              v18 = v15[7];
            }

            if (v17 >= 0)
            {
              v19 = *(v15 + 79);
            }

            else
            {
              v19 = v15[8];
            }

            if (v19)
            {
              while (1)
              {
                v20 = *v18;
                if (v20 < 0 ? __maskrune(v20, 0x4000uLL) : _DefaultRuneLocale.__runetype[v20] & 0x4000)
                {
                  break;
                }

                ++v18;
                if (!--v19)
                {
                  goto LABEL_37;
                }
              }

              sub_10003E248(v15 + 4, 61, &v37);
              std::string::push_back(&v37, 34);
              v38 = v37;
              memset(&v37, 0, sizeof(v37));
              v28 = *(v15 + 79);
              if (v28 >= 0)
              {
                v29 = (v15 + 7);
              }

              else
              {
                v29 = v15[7];
              }

              if (v28 >= 0)
              {
                v30 = *(v15 + 79);
              }

              else
              {
                v30 = v15[8];
              }

              v31 = std::string::append(&v38, v29, v30);
              v32 = *&v31->__r_.__value_.__l.__data_;
              v39.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
              *&v39.__r_.__value_.__l.__data_ = v32;
              v31->__r_.__value_.__l.__size_ = 0;
              v31->__r_.__value_.__r.__words[2] = 0;
              v31->__r_.__value_.__r.__words[0] = 0;
              std::string::push_back(&v39, 34);
              __p = v39;
              memset(&v39, 0, sizeof(v39));
              sub_100013BA0(v41, &__p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v39.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v38.__r_.__value_.__l.__data_);
              }

              if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_62;
              }

              v27 = v37.__r_.__value_.__r.__words[0];
            }

            else
            {
LABEL_37:
              sub_10003E248(v15 + 4, 61, &v39);
              v22 = *(v15 + 79);
              if (v22 >= 0)
              {
                v23 = (v15 + 7);
              }

              else
              {
                v23 = v15[7];
              }

              if (v22 >= 0)
              {
                v24 = *(v15 + 79);
              }

              else
              {
                v24 = v15[8];
              }

              v25 = std::string::append(&v39, v23, v24);
              v26 = *&v25->__r_.__value_.__l.__data_;
              __p.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
              *&__p.__r_.__value_.__l.__data_ = v26;
              v25->__r_.__value_.__l.__size_ = 0;
              v25->__r_.__value_.__r.__words[2] = 0;
              v25->__r_.__value_.__r.__words[0] = 0;
              sub_100013BA0(v41, &__p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_62;
              }

              v27 = v39.__r_.__value_.__r.__words[0];
            }

            operator delete(v27);
LABEL_62:
            v33 = v15[1];
            if (v33)
            {
              do
              {
                v34 = v33;
                v33 = *v33;
              }

              while (v33);
            }

            else
            {
              do
              {
                v34 = v15[2];
                v35 = *v34 == v15;
                v15 = v34;
              }

              while (!v35);
            }

            v15 = v34;
          }

          while (v34 != (v12 + 32));
        }

        sub_10000143C(&v39, ", ");
        siri::dialogengine::StringJoin();
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        fputs(p_p, a2);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }

        fputc(93, a2);
        __p.__r_.__value_.__r.__words[0] = v41;
        sub_100002260(&__p);
      }

      else
      {
        fwrite(" [d]", 4uLL, 1uLL, a2);
      }

      v12 += 48;
    }

    fputc(10, a2);
    std::string::operator=(&v42, (i + 24));
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }
}

void sub_10003E174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38)
{
  if (*(v38 - 89) < 0)
  {
    operator delete(*(v38 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10003E248@<X0>(const void **a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  result = sub_1000094C0(a3, v5 + 1);
  if (*(result + 23) >= 0)
  {
    v7 = result;
  }

  else
  {
    v7 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    result = memmove(v7, v8, v5);
  }

  v9 = &v7[v5];
  *v9 = a2;
  v9[1] = 0;
  return result;
}

uint64_t sub_10003E2DC(void *a1, uint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) < 3 || sub_100039B20())
  {
    sub_100039B10(a2);
    return 0;
  }

  sub_10000143C(__p, "--debug");
  v5 = siri::dialogengine::OptionExists();
  v7 = v5;
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    if (!v7)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v5)
  {
LABEL_8:
    siri::dialogengine::Log::SetLogDebugMessages(1, v6);
    siri::dialogengine::Log::SetOutputToStdout(1, v8);
    siri::dialogengine::Log::Debug("Activate debug mode", v9);
  }

LABEL_9:
  memset(v105, 0, 27);
  v103 = 0u;
  memset(v104, 0, sizeof(v104));
  memset(v102, 0, sizeof(v102));
  v101 = 0u;
  v99 = 0u;
  memset(v100, 0, sizeof(v100));
  memset(__p, 0, sizeof(__p));
  v106 = 0u;
  memset(v107, 0, sizeof(v107));
  v10 = *a1;
  if ((*(*a1 + 71) & 0x8000000000000000) != 0)
  {
    v11 = *(v10 + 48);
    v12 = *(v10 + 56);
  }

  siri::dialogengine::StringToLower();
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  *__p = v135;
  __p[2] = v136;
  sub_10000143C(&v135, "codegen");
  sub_10000143C(v137, "copy");
  sub_10000143C(v138, "read");
  sub_10000143C(v139, "write");
  sub_10000143C(v140, "grammarfeatures");
  sub_100032C58(&v96, &v135, 5);
  for (i = 0; i != -120; i -= 24)
  {
    if (v140[i + 23] < 0)
    {
      operator delete(*&v140[i]);
    }
  }

  if (&v97 == sub_10000A9C0(&v96, __p))
  {
    v15 = sub_1000027F4(&std::cout, "Please specify one of the following metadata sub-commands: ", 59);
    sub_10000143C(&v133, ", ");
    siri::dialogengine::StringJoin();
    if (SHIBYTE(v136) >= 0)
    {
      v16 = &v135;
    }

    else
    {
      v16 = v135;
    }

    if (SHIBYTE(v136) >= 0)
    {
      v17 = HIBYTE(v136);
    }

    else
    {
      v17 = *(&v135 + 1);
    }

    v18 = sub_1000027F4(v15, v16, v17);
    std::ios_base::getloc((v18 + *(*v18 - 24)));
    v19 = std::locale::use_facet(&__dst, &std::ctype<char>::id);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&__dst);
    std::ostream::put();
    std::ostream::flush();
    if (SHIBYTE(v136) < 0)
    {
      operator delete(v135);
    }

    if (SHIBYTE(v134) < 0)
    {
      operator delete(v133);
    }

    goto LABEL_250;
  }

  sub_10000143C(&v135, "--verbose");
  BYTE8(v105[1]) = siri::dialogengine::OptionExists();
  if (SHIBYTE(v136) < 0)
  {
    operator delete(v135);
  }

  sub_10000143C(&v135, "--ignoreIncludes");
  BYTE9(v105[1]) = siri::dialogengine::OptionExists();
  if (SHIBYTE(v136) < 0)
  {
    operator delete(v135);
  }

  sub_10000143C(&v135, "--allLocales");
  BYTE10(v105[1]) = siri::dialogengine::OptionExists();
  if (SHIBYTE(v136) < 0)
  {
    operator delete(v135);
  }

  sub_10000143C(&__dst, "--templateDir");
  siri::dialogengine::GetOption();
  siri::dialogengine::ExpandPath();
  if (SHIBYTE(__p[5]) < 0)
  {
    operator delete(__p[3]);
  }

  *&__p[3] = v135;
  __p[5] = v136;
  HIBYTE(v136) = 0;
  LOBYTE(v135) = 0;
  if (SHIBYTE(v134) < 0)
  {
    operator delete(v133);
  }

  if (SHIBYTE(v132) < 0)
  {
    operator delete(__dst);
  }

  sub_10000143C(&v133, "--sourceDir");
  siri::dialogengine::GetOption();
  if (SHIBYTE(v100[0]) < 0)
  {
    operator delete(v99);
  }

  v99 = v135;
  v100[0] = v136;
  HIBYTE(v136) = 0;
  LOBYTE(v135) = 0;
  if (SHIBYTE(v134) < 0)
  {
    operator delete(v133);
  }

  sub_10000143C(&v133, "--assistantDir");
  siri::dialogengine::GetOption();
  if (SHIBYTE(v100[3]) < 0)
  {
    operator delete(v100[1]);
  }

  *&v100[1] = v135;
  v100[3] = v136;
  HIBYTE(v136) = 0;
  LOBYTE(v135) = 0;
  if (SHIBYTE(v134) < 0)
  {
    operator delete(v133);
  }

  sub_10000143C(&v133, "--metadataDir");
  siri::dialogengine::GetOption();
  if (SHIBYTE(v102[0]) < 0)
  {
    operator delete(v101);
  }

  v101 = v135;
  v102[0] = v136;
  HIBYTE(v136) = 0;
  LOBYTE(v135) = 0;
  if (SHIBYTE(v134) < 0)
  {
    operator delete(v133);
  }

  sub_10000143C(&v133, "--category");
  siri::dialogengine::GetOption();
  if (SHIBYTE(v102[3]) < 0)
  {
    operator delete(v102[1]);
  }

  *&v102[1] = v135;
  v102[3] = v136;
  HIBYTE(v136) = 0;
  LOBYTE(v135) = 0;
  if (SHIBYTE(v134) < 0)
  {
    operator delete(v133);
  }

  sub_10000143C(&v133, "--locale");
  siri::dialogengine::GetMultipleOptions();
  sub_100005FE0(v105);
  v105[0] = v135;
  *&v105[1] = v136;
  v136 = 0;
  v135 = 0uLL;
  *&__dst = &v135;
  sub_100002260(&__dst);
  if (SHIBYTE(v134) < 0)
  {
    operator delete(v133);
  }

  sub_10000143C(&v133, "--filename");
  siri::dialogengine::GetOption();
  if (SHIBYTE(v104[0]) < 0)
  {
    operator delete(v103);
  }

  v103 = v135;
  v104[0] = v136;
  HIBYTE(v136) = 0;
  LOBYTE(v135) = 0;
  if (SHIBYTE(v134) < 0)
  {
    operator delete(v133);
  }

  sub_10000143C(&v133, "--outputDir");
  siri::dialogengine::GetOption();
  if (SHIBYTE(v104[3]) < 0)
  {
    operator delete(v104[1]);
  }

  *&v104[1] = v135;
  v104[3] = v136;
  HIBYTE(v136) = 0;
  LOBYTE(v135) = 0;
  if (SHIBYTE(v134) < 0)
  {
    operator delete(v133);
  }

  sub_10000143C(&v133, "--config");
  siri::dialogengine::GetOption();
  if (SHIBYTE(v107[0]) < 0)
  {
    operator delete(v106);
  }

  v106 = v135;
  v107[0] = v136;
  HIBYTE(v136) = 0;
  LOBYTE(v135) = 0;
  if (SHIBYTE(v134) < 0)
  {
    operator delete(v133);
  }

  sub_10000143C(&v133, "--swiftCaseStyle");
  siri::dialogengine::GetOption();
  if (SHIBYTE(v107[3]) < 0)
  {
    operator delete(v107[1]);
  }

  *&v107[1] = v135;
  v107[3] = v136;
  HIBYTE(v136) = 0;
  LOBYTE(v135) = 0;
  if (SHIBYTE(v134) < 0)
  {
    operator delete(v133);
  }

  if ((HIBYTE(__p[2]) & 0x80) == 0)
  {
    if (HIBYTE(__p[2]) != 4)
    {
      if (HIBYTE(__p[2]) != 5)
      {
        if (HIBYTE(__p[2]) == 15)
        {
          v14 = __p;
          goto LABEL_101;
        }

        goto LABEL_105;
      }

      if (LODWORD(__p[0]) != 1953067639 || BYTE4(__p[0]) != 101)
      {
        goto LABEL_105;
      }

LABEL_92:
      v4 = sub_10003FDE4(__p);
      goto LABEL_251;
    }

    if (LODWORD(__p[0]) != 2037411683)
    {
      if (LODWORD(__p[0]) != 1684104562)
      {
        goto LABEL_105;
      }

LABEL_106:
      if (SHIBYTE(v104[0]) < 0)
      {
        sub_100001C60(&v135, v103, *(&v103 + 1));
      }

      else
      {
        v135 = v103;
        v136 = v104[0];
      }

      v68 = HIBYTE(v136);
      v69 = HIBYTE(v136);
      v70 = *(&v135 + 1);
      if (SHIBYTE(v136) >= 0)
      {
        v71 = HIBYTE(v136);
      }

      else
      {
        v71 = *(&v135 + 1);
      }

      if (!v71)
      {
        if (*&v105[0] == *(&v105[0] + 1))
        {
          sub_10000143C(&v133, &unk_10006B9FB);
        }

        else if (*(*&v105[0] + 23) < 0)
        {
          sub_100001C60(&v133, **&v105[0], *(*&v105[0] + 8));
        }

        else
        {
          v72 = **&v105[0];
          v134 = *(*&v105[0] + 16);
          v133 = v72;
        }

        siri::dialogengine::GetDialogMetadataFilename();
        siri::dialogengine::JoinPath();
        if (SHIBYTE(v136) < 0)
        {
          operator delete(v135);
        }

        v135 = __dst;
        v136 = v132;
        HIBYTE(v132) = 0;
        LOBYTE(__dst) = 0;
        if (SHIBYTE(v130) < 0)
        {
          operator delete(v129);
        }

        if (SHIBYTE(v134) < 0)
        {
          operator delete(v133);
        }

        v68 = HIBYTE(v136);
        v70 = *(&v135 + 1);
        v69 = HIBYTE(v136);
      }

      if (v69 < 0)
      {
        v68 = v70;
      }

      if (v68)
      {
        if (siri::dialogengine::FileExists())
        {
          siri::dialogengine::DialogMetadataReader::DialogMetadataReader(&v129);
          v4 = siri::dialogengine::DialogMetadataReader::Load();
          if (v4)
          {
            siri::dialogengine::BaseName();
            AllowUnbounded = siri::dialogengine::DialogMetadataReader::GetAllowUnbounded(&v129);
            siri::dialogengine::StringFromBool(&__dst, AllowUnbounded, v81);
            v82 = &v133;
            if (v134 < 0)
            {
              v82 = v133;
            }

            if (SHIBYTE(v132) >= 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst;
            }

            printf("; %s (allowUnbounded = %s)\n", v82, p_dst);
            sub_10003DD64(&v129, __stdoutp);
            if (SHIBYTE(v132) < 0)
            {
              operator delete(__dst);
            }

            if (SHIBYTE(v134) < 0)
            {
              operator delete(v133);
            }
          }

          else
          {
            v89 = sub_1000027F4(&std::cout, "Failed to read file: ", 21);
            if (SHIBYTE(v136) >= 0)
            {
              v90 = &v135;
            }

            else
            {
              v90 = v135;
            }

            if (SHIBYTE(v136) >= 0)
            {
              v91 = HIBYTE(v136);
            }

            else
            {
              v91 = *(&v135 + 1);
            }

            v92 = sub_1000027F4(v89, v90, v91);
            std::ios_base::getloc((v92 + *(*v92 - 24)));
            v93 = std::locale::use_facet(&v133, &std::ctype<char>::id);
            (v93->__vftable[2].~facet_0)(v93, 10);
            std::locale::~locale(&v133);
            std::ostream::put();
            std::ostream::flush();
          }

          siri::dialogengine::DialogMetadataReader::~DialogMetadataReader(&v129);
          goto LABEL_298;
        }

        v85 = sub_1000027F4(&std::cout, "The metadata file does not exist: ", 34);
        if (SHIBYTE(v136) >= 0)
        {
          v86 = &v135;
        }

        else
        {
          v86 = v135;
        }

        if (SHIBYTE(v136) >= 0)
        {
          v87 = HIBYTE(v136);
        }

        else
        {
          v87 = *(&v135 + 1);
        }

        v84 = sub_1000027F4(v85, v86, v87);
      }

      else
      {
        v84 = sub_1000027F4(&std::cout, "No metdata file specified. Try --filename.", 42);
      }

      std::ios_base::getloc((v84 + *(*v84 - 24)));
      v88 = std::locale::use_facet(&v133, &std::ctype<char>::id);
      (v88->__vftable[2].~facet_0)(v88, 10);
      std::locale::~locale(&v133);
      std::ostream::put();
      std::ostream::flush();
      v4 = 0;
LABEL_298:
      if (SHIBYTE(v136) < 0)
      {
        operator delete(v135);
      }

      goto LABEL_251;
    }

    goto LABEL_108;
  }

  v20 = __p[1];
  if (__p[1] != 4)
  {
    if (__p[1] == 5)
    {
      if (*__p[0] == 1953067639 && *(__p[0] + 4) == 101)
      {
        goto LABEL_92;
      }

LABEL_99:
      if (v20 == 15)
      {
        v14 = __p[0];
LABEL_101:
        v23 = *v14;
        v24 = *(v14 + 7);
        if (v23 != 0x6672616D6D617267 || v24 != 0x7365727574616566)
        {
          goto LABEL_105;
        }

LABEL_250:
        v4 = 0;
        goto LABEL_251;
      }

LABEL_105:
      sub_100044250(v95, __p);
      v4 = sub_10004C980(v95, v26);
      sub_100044544(v95);
      goto LABEL_251;
    }

LABEL_98:
    v20 = __p[1];
    goto LABEL_99;
  }

  if (*__p[0] == 1684104562)
  {
    goto LABEL_106;
  }

  if (*__p[0] != 2037411683)
  {
    goto LABEL_98;
  }

LABEL_108:
  v27 = HIBYTE(__p[5]);
  if (SHIBYTE(__p[5]) < 0)
  {
    v27 = __p[4];
  }

  if (!v27)
  {
    v73 = sub_1000027F4(&std::cout, "No template directory specified. Try --templateDir.", 51);
    std::ios_base::getloc((v73 + *(*v73 - 24)));
    v74 = std::locale::use_facet(&v135, &std::ctype<char>::id);
    (v74->__vftable[2].~facet_0)(v74, 10);
    std::locale::~locale(&v135);
    std::ostream::put();
LABEL_249:
    std::ostream::flush();
    goto LABEL_250;
  }

  v28 = HIBYTE(v104[3]);
  if (v104[3] < 0)
  {
    v28 = v104[2];
  }

  if (!v28)
  {
    v75 = sub_1000027F4(&std::cout, "No output directory specified. Try --outputDir.", 47);
    std::ios_base::getloc((v75 + *(*v75 - 24)));
    v76 = std::locale::use_facet(&v135, &std::ctype<char>::id);
    (v76->__vftable[2].~facet_0)(v76, 10);
    std::locale::~locale(&v135);
    std::ostream::put();
    goto LABEL_249;
  }

  sub_10000143C(&v133, "metadata");
  siri::dialogengine::JoinPath();
  if (SHIBYTE(v134) < 0)
  {
    operator delete(v133);
  }

  siri::dialogengine::ListDir();
  v30 = *(&v133 + 1);
  v29 = v133;
  if (v133 == *(&v133 + 1))
  {
    *&__dst = &v133;
    sub_100002260(&__dst);
    goto LABEL_255;
  }

  v31 = 0;
  v94 = *(&v133 + 1);
  do
  {
    if (*(v29 + 23) < 0)
    {
      sub_100001C60(&__dst, *v29, *(v29 + 1));
    }

    else
    {
      v32 = *v29;
      v132 = *(v29 + 2);
      __dst = v32;
    }

    sub_10000143C(&v129, ".dtag");
    v33 = siri::dialogengine::StringContains();
    v34 = v33;
    if (SHIBYTE(v130) < 0)
    {
      operator delete(v129);
      if ((v34 & 1) == 0)
      {
        goto LABEL_234;
      }
    }

    else if ((v33 & 1) == 0)
    {
      goto LABEL_234;
    }

    siri::dialogengine::RemoveExtension();
    siri::dialogengine::BaseName();
    if (SHIBYTE(v132) < 0)
    {
      operator delete(__dst);
    }

    __dst = v129;
    v132 = v130;
    HIBYTE(v130) = 0;
    LOBYTE(v129) = 0;
    if (v128 < 0)
    {
      operator delete(v126.__locale_);
    }

    if (v102[3] >= 0)
    {
      v35 = HIBYTE(v102[3]);
    }

    else
    {
      v35 = v102[2];
    }

    if (!v35)
    {
      goto LABEL_143;
    }

    v36 = HIBYTE(v132);
    if (SHIBYTE(v132) < 0)
    {
      v36 = *(&__dst + 1);
    }

    if (v35 == v36)
    {
      v37 = v102[3] >= 0 ? &v102[1] : v102[1];
      v38 = SHIBYTE(v132) >= 0 ? &__dst : __dst;
      if (!memcmp(v37, v38, v35))
      {
LABEL_143:
        sub_10000143C(v122, "en");
        siri::dialogengine::GetDialogMetadataFilename();
        siri::dialogengine::JoinPath();
        siri::dialogengine::DirName();
        if (v128 < 0)
        {
          operator delete(v126.__locale_);
        }

        if (SHIBYTE(v125) < 0)
        {
          operator delete(v124);
        }

        if (v123 < 0)
        {
          operator delete(v122[0]);
        }

        if ((siri::dialogengine::PathExists() & 1) == 0)
        {
          v63 = sub_1000027F4(&std::cout, "ERROR: no such category: ", 25);
          if (SHIBYTE(v132) >= 0)
          {
            v64 = &__dst;
          }

          else
          {
            v64 = __dst;
          }

          if (SHIBYTE(v132) >= 0)
          {
            v65 = HIBYTE(v132);
          }

          else
          {
            v65 = *(&__dst + 1);
          }

          v66 = sub_1000027F4(v63, v64, v65);
          std::ios_base::getloc((v66 + *(*v66 - 24)));
          v67 = std::locale::use_facet(&v126, &std::ctype<char>::id);
          (v67->__vftable[2].~facet_0)(v67, 10);
          std::locale::~locale(&v126);
          std::ostream::put();
          std::ostream::flush();
          goto LABEL_232;
        }

        siri::dialogengine::ListDir();
        locale = v126.__locale_;
        v40 = v127;
        while (1)
        {
          if (locale == v40)
          {
            *&v124 = &v126;
            sub_100002260(&v124);
            v30 = v94;
LABEL_232:
            if (SHIBYTE(v130) < 0)
            {
              operator delete(v129);
            }

            break;
          }

          if (*(locale + 23) < 0)
          {
            sub_100001C60(&v124, *locale, *(locale + 1));
          }

          else
          {
            v41 = *locale;
            v125 = *(locale + 2);
            v124 = v41;
          }

          siri::dialogengine::JoinPath();
          siri::dialogengine::DialogMetadataReader::DialogMetadataReader(v121);
          if ((siri::dialogengine::DialogMetadataReader::Load() & 1) == 0)
          {
            v43 = sub_1000027F4(&std::cout, "Failed to read file: ", 21);
            if ((v123 & 0x80u) == 0)
            {
              v44 = v122;
            }

            else
            {
              v44 = v122[0];
            }

            if ((v123 & 0x80u) == 0)
            {
              v45 = v123;
            }

            else
            {
              v45 = v122[1];
            }

            v46 = sub_1000027F4(v43, v44, v45);
            std::ios_base::getloc((v46 + *(*v46 - 24)));
            v47 = std::locale::use_facet(&v119, &std::ctype<char>::id);
            (v47->__vftable[2].~facet_0)(v47, 10);
            std::locale::~locale(&v119);
            std::ostream::put();
            std::ostream::flush();
            goto LABEL_219;
          }

          siri::dialogengine::BaseName();
          siri::dialogengine::StringSplit();
          if (*(v117 + 23) < 0)
          {
            sub_100001C60(&v119, *v117, *(v117 + 1));
          }

          else
          {
            v42 = *v117;
            v120 = *(v117 + 2);
            v119 = v42;
          }

          *&v112 = &v117;
          sub_100002260(&v112);
          if (v116 < 0)
          {
            operator delete(v114);
          }

          siri::dialogengine::GetLocaleLanguage();
          siri::dialogengine::GetLocaleCountry();
          siri::dialogengine::JoinPath();
          siri::dialogengine::JoinPath();
          if (SHIBYTE(v111) < 0)
          {
            operator delete(v110);
          }

          if ((v116 & 0x8000000000000000) != 0)
          {
            if (v115)
            {
LABEL_174:
              siri::dialogengine::StringToLower();
              siri::dialogengine::JoinPath();
              if (SHIBYTE(v113) < 0)
              {
                operator delete(v112);
              }

              v112 = v110;
              v113 = v111;
              HIBYTE(v111) = 0;
              LOBYTE(v110) = 0;
              if (v109 < 0)
              {
                operator delete(v108.__locale_);
              }
            }
          }

          else if (v116)
          {
            goto LABEL_174;
          }

          if (SHIBYTE(v132) >= 0)
          {
            v48 = HIBYTE(v132);
          }

          else
          {
            v48 = *(&__dst + 1);
          }

          sub_1000094C0(&v108, v48 + 4);
          if (v109 >= 0)
          {
            v49 = &v108;
          }

          else
          {
            v49 = v108.__locale_;
          }

          if (v48)
          {
            if (SHIBYTE(v132) >= 0)
            {
              v50 = &__dst;
            }

            else
            {
              v50 = __dst;
            }

            memmove(v49, v50, v48);
          }

          strcpy(v49 + v48, ".voc");
          siri::dialogengine::JoinPath();
          if (v109 < 0)
          {
            operator delete(v108.__locale_);
          }

          siri::dialogengine::CreateDir();
          if (v111 >= 0)
          {
            v51 = &v110;
          }

          else
          {
            v51 = v110;
          }

          v52 = fopen(v51, "w");
          if (v52)
          {
            sub_10003DD64(v121, v52);
            v53 = sub_1000027F4(&std::cout, "Wrote ", 6);
            if (v111 >= 0)
            {
              v54 = &v110;
            }

            else
            {
              v54 = v110;
            }

            if (v111 >= 0)
            {
              v55 = HIBYTE(v111);
            }

            else
            {
              v55 = *(&v110 + 1);
            }

            v56 = sub_1000027F4(v53, v54, v55);
            std::ios_base::getloc((v56 + *(*v56 - 24)));
            v57 = std::locale::use_facet(&v108, &std::ctype<char>::id);
            (v57->__vftable[2].~facet_0)(v57, 10);
            std::locale::~locale(&v108);
            std::ostream::put();
            std::ostream::flush();
            fclose(v52);
            v31 = 1;
          }

          else
          {
            v58 = sub_1000027F4(&std::cout, "Failed to write to file: ", 25);
            if (v111 >= 0)
            {
              v59 = &v110;
            }

            else
            {
              v59 = v110;
            }

            if (v111 >= 0)
            {
              v60 = HIBYTE(v111);
            }

            else
            {
              v60 = *(&v110 + 1);
            }

            v61 = sub_1000027F4(v58, v59, v60);
            std::ios_base::getloc((v61 + *(*v61 - 24)));
            v62 = std::locale::use_facet(&v108, &std::ctype<char>::id);
            (v62->__vftable[2].~facet_0)(v62, 10);
            std::locale::~locale(&v108);
            std::ostream::put();
            std::ostream::flush();
          }

          if (SHIBYTE(v111) < 0)
          {
            operator delete(v110);
          }

          if (SHIBYTE(v113) < 0)
          {
            operator delete(v112);
          }

          if (v116 < 0)
          {
            operator delete(v114);
          }

          if (v118 < 0)
          {
            operator delete(v117);
          }

          if (SHIBYTE(v120) < 0)
          {
            operator delete(v119);
          }

LABEL_219:
          siri::dialogengine::DialogMetadataReader::~DialogMetadataReader(v121);
          if (v123 < 0)
          {
            operator delete(v122[0]);
          }

          if (SHIBYTE(v125) < 0)
          {
            operator delete(v124);
          }

          locale = (locale + 24);
        }
      }
    }

LABEL_234:
    if (SHIBYTE(v132) < 0)
    {
      operator delete(__dst);
    }

    v29 = (v29 + 24);
  }

  while (v29 != v30);
  *&__dst = &v133;
  sub_100002260(&__dst);
  if ((v31 & 1) == 0)
  {
LABEL_255:
    v78 = sub_1000027F4(&std::cout, "No dialog metadata found to copy.", 33);
    std::ios_base::getloc((v78 + *(*v78 - 24)));
    v79 = std::locale::use_facet(&v133, &std::ctype<char>::id);
    (v79->__vftable[2].~facet_0)(v79, 10);
    std::locale::~locale(&v133);
    std::ostream::put();
    std::ostream::flush();
  }

  if (SHIBYTE(v136) < 0)
  {
    operator delete(v135);
  }

  v4 = 1;
LABEL_251:
  sub_10000623C(&v96, v97);
  sub_100044544(__p);
  return v4;
}

void sub_10003F96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, void *a49)
{
  if (SLOBYTE(STACK[0x377]) < 0)
  {
    operator delete(STACK[0x360]);
  }

  if (*(v49 - 233) < 0)
  {
    operator delete(*(v49 - 256));
  }

  siri::dialogengine::DialogMetadataReader::~DialogMetadataReader(&STACK[0x348]);
  if (*(v49 - 201) < 0)
  {
    operator delete(*(v49 - 224));
  }

  sub_10000623C(&a46, a47);
  sub_100044544(&a49);
  _Unwind_Resume(a1);
}

void sub_10003FDBC()
{
  while (1)
  {
    v2 = *(v0 - 1);
    v0 -= 3;
    if (v2 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == (v1 - 224))
    {
      JUMPOUT(0x10003FDACLL);
    }
  }
}

uint64_t sub_10003FDE4(uint64_t a1)
{
  v1 = *(a1 + 47);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 32);
  }

  if (!v1)
  {
    v28 = sub_1000027F4(&std::cout, "No --templateDir specified", 26);
    std::ios_base::getloc((v28 + *(*v28 - 24)));
    v29 = std::locale::use_facet(__dst, &std::ctype<char>::id);
    (v29->__vftable[2].~facet_0)(v29, 10);
    std::locale::~locale(__dst);
    std::ostream::put();
    std::ostream::flush();
    return 0;
  }

  v3 = a1 + 24;
  if ((siri::dialogengine::DirExists() & 1) == 0)
  {
    v30 = sub_1000027F4(&std::cout, "The --templateDir directory does not exist: ", 44);
    v31 = *(a1 + 47);
    if (v31 >= 0)
    {
      v32 = v3;
    }

    else
    {
      v32 = *(a1 + 24);
    }

    if (v31 >= 0)
    {
      v33 = *(a1 + 47);
    }

    else
    {
      v33 = *(a1 + 32);
    }

    v34 = sub_1000027F4(v30, v32, v33);
    std::ios_base::getloc((v34 + *(*v34 - 24)));
    v35 = std::locale::use_facet(__dst, &std::ctype<char>::id);
    (v35->__vftable[2].~facet_0)(v35, 10);
    std::locale::~locale(__dst);
    std::ostream::put();
    std::ostream::flush();
    return 0;
  }

  v136 = a1;
  v6 = *(a1 + 96);
  v5 = a1 + 96;
  v4 = v6;
  v7 = *(v5 + 23);
  if (v7 < 0)
  {
    v7 = *(v5 + 8);
  }

  else
  {
    v4 = v5;
  }

  __dst[0].__locale_ = v4;
  __dst[1].__locale_ = v7;
  v8 = *(v5 - 1);
  v9 = *(v5 - 16);
  v10 = *(v5 - 25);
  v11 = v5;
  v12 = *(v5 - 40);
  v15 = *(v5 - 24);
  v14 = v5 - 24;
  v13 = v15;
  if ((v8 & 0x80u) == 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = v13;
  }

  if ((v8 & 0x80u) != 0)
  {
    v8 = v9;
  }

  v160 = v16;
  v161 = v8;
  v19 = *(v11 - 48);
  v18 = v11 - 48;
  v17 = v19;
  if ((v10 & 0x80u) == 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = v17;
  }

  if ((v10 & 0x80u) == 0)
  {
    v21 = v10;
  }

  else
  {
    v21 = v12;
  }

  v162 = v20;
  v163 = v21;
  v157[1].__locale_ = 0;
  v158 = 0;
  v157[0].__locale_ = 0;
  sub_10004243C(v157, __dst, &v164, 3uLL);
  if (v157[0].__locale_ == v157[1].__locale_)
  {
    v22 = 0;
    if (v157[0].__locale_)
    {
LABEL_25:
      v157[1] = v157[0];
      operator delete(v157[0].__locale_);
    }
  }

  else
  {
    v22 = 0;
    locale = v157[0].__locale_;
    do
    {
      if (*(locale + 1))
      {
        ++v22;
      }

      locale = (locale + 16);
    }

    while (locale != v157[1].__locale_);
    if (v157[0].__locale_)
    {
      goto LABEL_25;
    }
  }

  if (!v22)
  {
    v36 = sub_1000027F4(&std::cout, "No source dir specified. One of the following is required: --metadataDir / --assistantDir / --sourceDir", 103);
LABEL_45:
    std::ios_base::getloc((v36 + *(*v36 - 24)));
    v37 = std::locale::use_facet(__dst, &std::ctype<char>::id);
    (v37->__vftable[2].~facet_0)(v37, 10);
    std::locale::~locale(__dst);
    std::ostream::put();
    std::ostream::flush();
    return 0;
  }

  if (v22 != 1)
  {
    v36 = sub_1000027F4(&std::cout, "Multiple source dirs specified. Use only one of the following: --metadataDir / --assistantDir / --sourceDir", 107);
    goto LABEL_45;
  }

  sub_10003B610(v136, __dst);
  v24 = siri::dialogengine::DirExists();
  v25 = v24;
  if (SHIBYTE(v160) < 0)
  {
    operator delete(__dst[0].__locale_);
    if (v25)
    {
LABEL_30:
      v26 = sub_1000027F4(&std::cout, "Source type: ", 13);
      v27 = sub_10003B5BC(v136);
      if (v27 > 1)
      {
        if (v27 == 2)
        {
          sub_10000143C(__dst, "assistant repository");
        }

        else
        {
          sub_10000143C(__dst, "source files");
        }
      }

      else if (v27)
      {
        sub_10000143C(__dst, "dialog-metadata repository");
      }

      else
      {
        __dst[0].__locale_ = 0;
        __dst[1].__locale_ = 0;
        v160 = 0;
      }

      if (v160 >= 0)
      {
        v45 = __dst;
      }

      else
      {
        v45 = __dst[0].__locale_;
      }

      if (v160 >= 0)
      {
        v46 = HIBYTE(v160);
      }

      else
      {
        v46 = __dst[1].__locale_;
      }

      v47 = sub_1000027F4(v26, v45, v46);
      std::ios_base::getloc((v47 + *(*v47 - 24)));
      v48 = std::locale::use_facet(v157, &std::ctype<char>::id);
      (v48->__vftable[2].~facet_0)(v48, 10);
      std::locale::~locale(v157);
      std::ostream::put();
      std::ostream::flush();
      if (SHIBYTE(v160) < 0)
      {
        operator delete(__dst[0].__locale_);
      }

      v49 = sub_1000027F4(&std::cout, "Source path: ", 13);
      sub_10003B610(v136, __dst);
      if (v160 >= 0)
      {
        v50 = __dst;
      }

      else
      {
        v50 = __dst[0].__locale_;
      }

      if (v160 >= 0)
      {
        v51 = HIBYTE(v160);
      }

      else
      {
        v51 = __dst[1].__locale_;
      }

      v52 = sub_1000027F4(v49, v50, v51);
      std::ios_base::getloc((v52 + *(*v52 - 24)));
      v53 = std::locale::use_facet(v157, &std::ctype<char>::id);
      (v53->__vftable[2].~facet_0)(v53, 10);
      std::locale::~locale(v157);
      std::ostream::put();
      std::ostream::flush();
      if (SHIBYTE(v160) < 0)
      {
        operator delete(__dst[0].__locale_);
      }

      sub_10003B6D4(v136, &v140);
      v55 = v140;
      v54 = v141;
      if (v140 == v141)
      {
        if (sub_10003B5BC(v136) - 1 <= 1)
        {
          v65 = sub_10000FD6C(&std::cout);
          v66 = sub_1000027F4(v65, "No categories defined in config file", 36);
          sub_10000FD6C(v66);
          goto LABEL_286;
        }

        v56 = (v136 + 143);
        v76 = *(v136 + 143);
        v58 = (v136 + 128);
        if (*(v136 + 143) < 0)
        {
          v76 = *(v136 + 128);
        }

        if (!v76)
        {
          goto LABEL_129;
        }

        v60 = (v136 + 120);
      }

      else
      {
        v56 = (v136 + 143);
        v57 = *(v136 + 143);
        v58 = (v136 + 128);
        if (v57 >= 0)
        {
          v59 = *(v136 + 143);
        }

        else
        {
          v59 = *(v136 + 128);
        }

        if (!v59)
        {
          goto LABEL_129;
        }

        v60 = (v136 + 120);
        if (v57 >= 0)
        {
          v61 = (v136 + 120);
        }

        else
        {
          v61 = *(v136 + 120);
        }

        while (1)
        {
          v62 = *(v55 + 23);
          v63 = v62;
          if ((v62 & 0x80u) != 0)
          {
            v62 = *(v55 + 8);
          }

          if (v62 != v59)
          {
            break;
          }

          v64 = v63 >= 0 ? v55 : *v55;
          if (memcmp(v64, v61, v59))
          {
            break;
          }

          v55 += 32;
          if (v55 == v54)
          {
            v55 = v54;
            goto LABEL_121;
          }
        }

        if (v55 != v54)
        {
          v67 = v55 + 32;
          if ((v55 + 32) != v54)
          {
            do
            {
              v68 = *(v67 + 23);
              if (v68 >= 0)
              {
                v69 = *(v67 + 23);
              }

              else
              {
                v69 = *(v67 + 8);
              }

              v70 = *v56;
              v71 = v70;
              if ((v70 & 0x80u) != 0)
              {
                v70 = *v58;
              }

              if (v69 == v70)
              {
                v72 = v68 >= 0 ? v67 : *v67;
                v73 = *v60;
                v74 = (v71 >= 0 ? v136 + 120 : *v60);
                if (!memcmp(v72, v74, v69))
                {
                  if (*(v55 + 23) < 0)
                  {
                    operator delete(*v55);
                  }

                  v75 = *v67;
                  *(v55 + 16) = *(v67 + 16);
                  *v55 = v75;
                  *(v67 + 23) = 0;
                  *v67 = 0;
                  *(v55 + 24) = *(v67 + 24);
                  v55 += 32;
                }
              }

              v67 += 32;
            }

            while (v67 != v54);
            v54 = v141;
          }
        }
      }

LABEL_121:
      sub_1000423B4(&v140, v55, v54);
      if (v140 != v141)
      {
        v77 = sub_10000FD6C(&std::cout);
        v78 = sub_1000027F4(v77, "Processing only the specified category: ", 40);
        v79 = *v56;
        if (v79 >= 0)
        {
          v80 = v60;
        }

        else
        {
          v80 = *v60;
        }

        if (v79 >= 0)
        {
          v81 = *v56;
        }

        else
        {
          v81 = *v58;
        }

        v82 = sub_1000027F4(v78, v80, v81);
        sub_10000FD6C(v82);
LABEL_129:
        v83 = v136;
        if ((*(v136 + 218) & 1) != 0 || (v84 = *(v136 + 192), v85 = *(v136 + 200), v84 == v85))
        {
          v139[0] = 0;
          v139[1] = 0;
          v138 = v139;
          v86 = v140;
          v134 = v141;
          if (v140 != v141)
          {
            do
            {
              if (*(v86 + 23) < 0)
              {
                sub_100001C60(__dst, *v86, *(v86 + 8));
              }

              else
              {
                v87 = *v86;
                v160 = *(v86 + 16);
                *&__dst[0].__locale_ = v87;
              }

              LOBYTE(v161) = *(v86 + 24);
              sub_1000425B8(v83, v157);
              v135 = v86;
              siri::dialogengine::ListDir();
              size = v156.__r_.__value_.__l.__size_;
              v137 = v156.__r_.__value_.__l.__size_;
              for (i = v156.__r_.__value_.__r.__words[0]; i != size; i += 24)
              {
                if (*(i + 23) < 0)
                {
                  sub_100001C60(&v155, *i, *(i + 8));
                }

                else
                {
                  v90 = *i;
                  v155.__r_.__value_.__r.__words[2] = *(i + 16);
                  *&v155.__r_.__value_.__l.__data_ = v90;
                }

                siri::dialogengine::JoinPath();
                if (siri::dialogengine::DirExists())
                {
                  sub_10000AA50(&v138, &v155.__r_.__value_.__l.__data_);
                  siri::dialogengine::ListDir();
                  v92 = v151[0];
                  v91 = v151[1];
                  while (v92 != v91)
                  {
                    if (v92[23] < 0)
                    {
                      sub_100001C60(v149, *v92, *(v92 + 1));
                    }

                    else
                    {
                      v93 = *v92;
                      v150 = *(v92 + 2);
                      *v149 = v93;
                    }

                    siri::dialogengine::JoinPath();
                    if (siri::dialogengine::DirExists())
                    {
                      if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v94 = HIBYTE(v155.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v94 = v155.__r_.__value_.__l.__size_;
                      }

                      sub_1000094C0(&v144, v94 + 1);
                      if ((v144.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v95 = &v144;
                      }

                      else
                      {
                        v95 = v144.__r_.__value_.__r.__words[0];
                      }

                      if (v94)
                      {
                        if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v96 = &v155;
                        }

                        else
                        {
                          v96 = v155.__r_.__value_.__r.__words[0];
                        }

                        memmove(v95, v96, v94);
                      }

                      *(&v95->__r_.__value_.__l.__data_ + v94) = 95;
                      siri::dialogengine::StringToUpper();
                      if ((v143 & 0x80u) == 0)
                      {
                        v97 = v142;
                      }

                      else
                      {
                        v97 = v142[0];
                      }

                      if ((v143 & 0x80u) == 0)
                      {
                        v98 = v143;
                      }

                      else
                      {
                        v98 = v142[1];
                      }

                      v99 = std::string::append(&v144, v97, v98);
                      v100 = *&v99->__r_.__value_.__l.__data_;
                      v146 = v99->__r_.__value_.__r.__words[2];
                      *__p = v100;
                      v99->__r_.__value_.__l.__size_ = 0;
                      v99->__r_.__value_.__r.__words[2] = 0;
                      v99->__r_.__value_.__r.__words[0] = 0;
                      sub_100007B40(&v138, __p);
                      if (SHIBYTE(v146) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      if (v143 < 0)
                      {
                        operator delete(v142[0]);
                      }

                      if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v144.__r_.__value_.__l.__data_);
                      }
                    }

                    if (SHIBYTE(v148) < 0)
                    {
                      operator delete(v147[0]);
                    }

                    if (SHIBYTE(v150) < 0)
                    {
                      operator delete(v149[0]);
                    }

                    v92 += 24;
                  }

                  v149[0] = v151;
                  sub_100002260(v149);
                  v83 = v136;
                }

                if (SHIBYTE(v154) < 0)
                {
                  operator delete(v153);
                }

                if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v155.__r_.__value_.__l.__data_);
                }

                size = v137;
              }

              v155.__r_.__value_.__r.__words[0] = &v156;
              sub_100002260(&v155);
              if (SHIBYTE(v158) < 0)
              {
                operator delete(v157[0].__locale_);
              }

              if (SHIBYTE(v160) < 0)
              {
                operator delete(__dst[0].__locale_);
              }

              v86 = v135 + 32;
            }

            while ((v135 + 32) != v134);
          }
        }

        else
        {
          sub_10000943C(&v138, v84, v85);
        }

        v101 = v138;
        if (v138 != v139)
        {
          do
          {
            if (*(v101 + 55) < 0)
            {
              sub_100001C60(__p, v101[4], v101[5]);
            }

            else
            {
              *__p = *(v101 + 2);
              v146 = v101[6];
            }

            v149[1] = 0;
            v150 = 0;
            v149[0] = &v149[1];
            v103 = v140;
            v102 = v141;
            if (v140 == v141)
            {
              v123 = 0;
            }

            else
            {
              do
              {
                if (*(v103 + 23) < 0)
                {
                  sub_100001C60(__dst, *v103, *(v103 + 8));
                }

                else
                {
                  v104 = *v103;
                  v160 = *(v103 + 16);
                  *&__dst[0].__locale_ = v104;
                }

                LOBYTE(v161) = *(v103 + 24);
                siri::dialogengine::DialogMetadataWriter::DialogMetadataWriter(&v144);
                siri::dialogengine::DialogMetadataWriter::SetAllowUnbounded(&v144, v161);
                std::ios_base::getloc((&std::cout + std::cout.__vftable[-2].~basic_ostream_0));
                v105 = std::locale::use_facet(v157, &std::ctype<char>::id);
                (v105->__vftable[2].~facet_0)(v105, 10);
                std::locale::~locale(v157);
                std::ostream::put();
                std::ostream::flush();
                std::operator+<char>();
                v106 = std::string::append(&v155, " for locale ");
                v107 = *&v106->__r_.__value_.__l.__data_;
                v156.__r_.__value_.__r.__words[2] = v106->__r_.__value_.__r.__words[2];
                *&v156.__r_.__value_.__l.__data_ = v107;
                v106->__r_.__value_.__l.__size_ = 0;
                v106->__r_.__value_.__r.__words[2] = 0;
                v106->__r_.__value_.__r.__words[0] = 0;
                if (SHIBYTE(v146) >= 0)
                {
                  v108 = __p;
                }

                else
                {
                  v108 = __p[0];
                }

                if (SHIBYTE(v146) >= 0)
                {
                  v109 = HIBYTE(v146);
                }

                else
                {
                  v109 = __p[1];
                }

                v110 = std::string::append(&v156, v108, v109);
                v111 = *&v110->__r_.__value_.__l.__data_;
                v158 = v110->__r_.__value_.__r.__words[2];
                *&v157[0].__locale_ = v111;
                v110->__r_.__value_.__l.__size_ = 0;
                v110->__r_.__value_.__r.__words[2] = 0;
                v110->__r_.__value_.__r.__words[0] = 0;
                if (v158 >= 0)
                {
                  v112 = v157;
                }

                else
                {
                  v112 = v157[0].__locale_;
                }

                if (v158 >= 0)
                {
                  v113 = HIBYTE(v158);
                }

                else
                {
                  v113 = v157[1].__locale_;
                }

                v114 = sub_1000027F4(&std::cout, v112, v113);
                std::ios_base::getloc((v114 + *(*v114 - 24)));
                v115 = std::locale::use_facet(&v153, &std::ctype<char>::id);
                (v115->__vftable[2].~facet_0)(v115, 10);
                std::locale::~locale(&v153);
                std::ostream::put();
                std::ostream::flush();
                if (SHIBYTE(v158) < 0)
                {
                  operator delete(v157[0].__locale_);
                }

                if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v156.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v155.__r_.__value_.__l.__data_);
                }

                sub_1000425B8(v83, v157);
                siri::dialogengine::GetLocaleLanguage();
                siri::dialogengine::StringToLower();
                if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v155.__r_.__value_.__l.__data_);
                }

                siri::dialogengine::GetLocaleCountry();
                siri::dialogengine::StringToLower();
                if (SHIBYTE(v154) < 0)
                {
                  operator delete(v153);
                }

                siri::dialogengine::JoinPath();
                v116 = HIBYTE(v155.__r_.__value_.__r.__words[2]);
                if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v116 = v155.__r_.__value_.__l.__size_;
                }

                if (v116)
                {
                  siri::dialogengine::JoinPath();
                  if (SHIBYTE(v148) < 0)
                  {
                    operator delete(v147[0]);
                  }

                  *v147 = v153;
                  v148 = v154;
                  if (v160 >= 0)
                  {
                    v117 = HIBYTE(v160);
                  }

                  else
                  {
                    v117 = __dst[1].__locale_;
                  }

                  sub_1000094C0(v151, v117 + 4);
                  if (v152 >= 0)
                  {
                    v118 = v151;
                  }

                  else
                  {
                    v118 = v151[0];
                  }

                  if (v117)
                  {
                    if (v160 >= 0)
                    {
                      v119 = __dst;
                    }

                    else
                    {
                      v119 = __dst[0].__locale_;
                    }

                    memmove(v118, v119, v117);
                  }
                }

                else
                {
                  if (v160 >= 0)
                  {
                    v117 = HIBYTE(v160);
                  }

                  else
                  {
                    v117 = __dst[1].__locale_;
                  }

                  sub_1000094C0(v151, v117 + 4);
                  if (v152 >= 0)
                  {
                    v118 = v151;
                  }

                  else
                  {
                    v118 = v151[0];
                  }

                  if (v117)
                  {
                    if (v160 >= 0)
                    {
                      v120 = __dst;
                    }

                    else
                    {
                      v120 = __dst[0].__locale_;
                    }

                    memmove(v118, v120, v117);
                  }
                }

                strcpy(v118 + v117, ".voc");
                siri::dialogengine::JoinPath();
                if (SHIBYTE(v148) < 0)
                {
                  operator delete(v147[0]);
                }

                *v147 = v153;
                v148 = v154;
                HIBYTE(v154) = 0;
                LOBYTE(v153) = 0;
                if (v152 < 0)
                {
                  operator delete(v151[0]);
                }

                if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v155.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v156.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v158) < 0)
                {
                  operator delete(v157[0].__locale_);
                }

                v121 = HIBYTE(v148);
                v122 = HIBYTE(v148);
                if (v148 < 0)
                {
                  v121 = v147[1];
                }

                if (v121)
                {
                  sub_100042804(v147, &v144, v149, __p, v83);
                  siri::dialogengine::GetDialogMetadataFilename();
                  siri::dialogengine::JoinPath();
                  if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v156.__r_.__value_.__l.__data_);
                  }

                  siri::dialogengine::DialogMetadataWriter::Save();
                  if (SHIBYTE(v158) < 0)
                  {
                    operator delete(v157[0].__locale_);
                  }

                  v122 = HIBYTE(v148);
                }

                if (v122 < 0)
                {
                  operator delete(v147[0]);
                }

                siri::dialogengine::DialogMetadataWriter::~DialogMetadataWriter(&v144);
                if (SHIBYTE(v160) < 0)
                {
                  operator delete(__dst[0].__locale_);
                }

                v103 += 32;
              }

              while (v103 != v102);
              v123 = v149[1];
            }

            sub_10000623C(v149, v123);
            if (SHIBYTE(v146) < 0)
            {
              operator delete(__p[0]);
            }

            v124 = v101[1];
            if (v124)
            {
              do
              {
                v125 = v124;
                v124 = *v124;
              }

              while (v124);
            }

            else
            {
              do
              {
                v125 = v101[2];
                v126 = *v125 == v101;
                v101 = v125;
              }

              while (!v126);
            }

            v101 = v125;
          }

          while (v125 != v139);
        }

        sub_10000623C(&v138, v139[0]);
        v38 = 1;
        goto LABEL_287;
      }

      v127 = sub_10000FD6C(&std::cout);
      v128 = sub_1000027F4(v127, "Error: Specified category '", 27);
      v129 = *v56;
      if (v129 >= 0)
      {
        v130 = v60;
      }

      else
      {
        v130 = *v60;
      }

      if (v129 >= 0)
      {
        v131 = *v56;
      }

      else
      {
        v131 = *v58;
      }

      v132 = sub_1000027F4(v128, v130, v131);
      v133 = sub_1000027F4(v132, "' not found in config file.", 27);
      sub_10000FD6C(v133);
LABEL_286:
      v38 = 0;
LABEL_287:
      __dst[0].__locale_ = &v140;
      sub_100044620(__dst);
      return v38;
    }
  }

  else if (v24)
  {
    goto LABEL_30;
  }

  v40 = sub_1000027F4(&std::cout, "The source directory does not exist: ", 37);
  sub_10003B610(v136, __dst);
  if (v160 >= 0)
  {
    v41 = __dst;
  }

  else
  {
    v41 = __dst[0].__locale_;
  }

  if (v160 >= 0)
  {
    v42 = HIBYTE(v160);
  }

  else
  {
    v42 = __dst[1].__locale_;
  }

  v43 = sub_1000027F4(v40, v41, v42);
  std::ios_base::getloc((v43 + *(*v43 - 24)));
  v44 = std::locale::use_facet(v157, &std::ctype<char>::id);
  (v44->__vftable[2].~facet_0)(v44, 10);
  std::locale::~locale(v157);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v160) < 0)
  {
    operator delete(__dst[0].__locale_);
  }

  return 0;
}

void sub_100040FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v18 - 160) = &a18;
  sub_100044620((v18 - 160));
  _Unwind_Resume(a1);
}

BOOL sub_100041330(uint64_t a1, uint64_t a2)
{
  if (*a1 != 1 || (*a2 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if (*(a1 + 31) < 0)
    {
      sub_100001C60(&v7, *(a1 + 8), *(a1 + 16));
    }

    else
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 24);
    }

    sub_1000415A8(exception, &v7);
  }

  v3 = *(a1 + 48);
  return v3 && (v4 = *(a2 + 48)) != 0 && *v3 == *v4;
}

void sub_100041440(uint64_t a1, uint64_t a2)
{
  if (*a1 != 1 || (*a2 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v10 = a1;
    v11 = exception;
    if (*(v10 + 31) < 0)
    {
      sub_100001C60(&v12, *(v10 + 8), *(v10 + 16));
    }

    else
    {
      v12 = *(v10 + 8);
      v13 = *(v10 + 24);
    }

    sub_1000415A8(v11, &v12);
  }

  sub_100041BB0(a2);
  v4 = *(a1 + 48);
  v5 = *(a2 + 48);
  if (v4)
  {
    sub_100041D58(v4, v5);
    YAML::detail::memory_holder::merge(*(a1 + 32), *(a2 + 32));
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    *(a1 + 48) = v5;
    v7 = *(a2 + 32);
    v6 = *(a2 + 40);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = *(a1 + 40);
    *(a1 + 32) = v7;
    *(a1 + 40) = v6;
    if (v8)
    {

      sub_100005EB4(v8);
    }
  }
}

void *sub_1000415A8(void *a1, uint64_t a2)
{
  v6 = -1;
  v7 = -1;
  sub_100041664(a2, __p);
  sub_100041860(a1, &v6, __p);
  *a1 = off_1000753A8;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_1000753E8;
  return a1;
}

void sub_100041648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100041664@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_100024C08(v12);
  v4 = *(a1 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 8);
  }

  if (v4)
  {
    v5 = sub_1000027F4(&v13, "invalid node; first invalid key: ", 34);
    v6 = *(a1 + 23);
    if (v6 >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    if (v6 >= 0)
    {
      v8 = *(a1 + 23);
    }

    else
    {
      v8 = *(a1 + 8);
    }

    v9 = sub_1000027F4(v5, v7, v8);
    sub_1000027F4(v9, "", 1);
    std::stringbuf::str();
  }

  else
  {
    sub_10000143C(a2, "invalid node; this may result from using a map iterator as a sequence iterator, or vice-versa");
  }

  v13 = v10;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10004184C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000012E8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100041860(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  sub_100041948(a2, a3, &v9);
  std::runtime_error::runtime_error(a1, &v9);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  *a1 = off_100075328;
  v6 = *a2;
  *(a1 + 24) = a2[2];
  *(a1 + 16) = v6;
  if (*(a3 + 23) < 0)
  {
    sub_100001C60((a1 + 32), *a3, *(a3 + 8));
  }

  else
  {
    v7 = *a3;
    *(a1 + 48) = *(a3 + 16);
    *(a1 + 32) = v7;
  }

  return a1;
}

_DWORD *sub_100041948@<X0>(_DWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*result == -1 && result[1] == -1 && result[2] == -1)
  {
    if (*(a2 + 23) < 0)
    {
      v16 = *a2;
      v17 = *(a2 + 8);

      return sub_100001C60(a3, v16, v17);
    }

    else
    {
      *a3 = *a2;
      *(a3 + 16) = *(a2 + 16);
    }
  }

  else
  {
    v6 = result;
    sub_100024C08(v18);
    sub_1000027F4(&v19, "yaml-cpp: error at line ", 24);
    v7 = v6[1];
    v8 = std::ostream::operator<<();
    sub_1000027F4(v8, ", column ", 9);
    v9 = v6[2];
    v10 = std::ostream::operator<<();
    v11 = sub_1000027F4(v10, ": ", 2);
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (v12 >= 0)
    {
      v14 = *(a2 + 23);
    }

    else
    {
      v14 = *(a2 + 8);
    }

    sub_1000027F4(v11, v13, v14);
    std::stringbuf::str();
    v19 = v15;
    if (v22 < 0)
    {
      operator delete(v21[7].__locale_);
    }

    std::locale::~locale(v21);
    std::iostream::~basic_iostream();
    return std::ios::~ios();
  }

  return result;
}

void sub_100041B9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000012E8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100041BB0(uint64_t result)
{
  v1 = result;
  if ((*result & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v3 = v1;
    v4 = exception;
    if (*(v3 + 31) < 0)
    {
      sub_100001C60(&v5, *(v3 + 8), *(v3 + 16));
    }

    else
    {
      v5 = *(v3 + 8);
      v6 = *(v3 + 24);
    }

    sub_1000415A8(v4, &v5);
  }

  if (!*(result + 48))
  {
    operator new();
  }

  return result;
}

void sub_100041D58(void *a1, void *a2)
{
  v4 = *a2;
  if (***a2 == 1)
  {
    sub_1000421B0(a1);
    v4 = *a2;
  }

  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[1];
  *a1 = v4;
  a1[1] = v5;
  if (v6)
  {

    sub_100005EB4(v6);
  }
}

void sub_100041E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_100041F34(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100041EB4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100041EF4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100041F34(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      sub_100005EB4(v2);
    }

    operator delete();
  }
}

void sub_100041F8C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_10004200C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100042020(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100042020(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100042150(v1, *(v1 + 8));
    operator delete();
  }

  return result;
}

void sub_100042078(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000420B8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1000420F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100042150(a2, *(a2 + 8));

    operator delete();
  }
}

void sub_100042150(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100042150(a1, *a2);
    sub_100042150(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      sub_100005EB4(v4);
    }

    operator delete(a2);
  }
}

void sub_1000421B0(uint64_t a1)
{
  v2 = **a1;
  if ((*v2 & 1) == 0)
  {
    YAML::detail::node_data::mark_defined(v2);
    v3 = *(a1 + 16);
    v4 = (a1 + 24);
    if (v3 != (a1 + 24))
    {
      do
      {
        sub_1000421B0(v3[4]);
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

      while (v6 != v4);
    }

    sub_100042254(a1 + 16, *(a1 + 24));
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = v4;
  }
}

void sub_100042254(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100042254(a1, *a2);
    sub_100042254(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_1000422A8(uint64_t a1)
{
  if ((*a1 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if (*(a1 + 31) < 0)
    {
      sub_100001C60(&v6, *(a1 + 8), *(a1 + 16));
    }

    else
    {
      v6 = *(a1 + 8);
      v7 = *(a1 + 24);
    }

    sub_1000415A8(exception, &v6);
  }

  v2 = *(a1 + 48);
  if (!v2)
  {
    return 1;
  }

  v3 = **v2;
  if (*v3 == 1)
  {
    return *(v3 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000423B4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    sub_100042534(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 9);
        v7 -= 4;
        if (v8 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

uint64_t sub_10004243C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000424B0(result, a4);
  }

  return result;
}

void sub_100042494(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000424B0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1000424EC(a1, a2);
  }

  sub_1000020B0();
}

void sub_1000424EC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100001B50();
}

__int128 *sub_100042534(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      *(v5 + 23) = 0;
      *v5 = 0;
      *(a4 + 24) = *(v5 + 24);
      v5 += 2;
      a4 += 32;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_1000425B8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_10003B5BC(a1);
  if (v4)
  {
    v5 = v4;
    sub_10003B610(a1, &v11);
    memset(v10, 0, sizeof(v10));
    if (v5 == 3)
    {
      sub_1000012A8(v10, &v11);
    }

    else
    {
      if (v5 == 2)
      {
        sub_10000143C(v6, "product/assistant/nl/src/main/filesystem/data/nl/siri/voc");
        siri::dialogengine::JoinPath();
        sub_100013BA0(v10, __p);
        if (v9 < 0)
        {
          operator delete(__p[0]);
        }

        if (v7 < 0)
        {
          operator delete(v6[0]);
        }

        sub_10000143C(v6, "product/assistant/nl/src/main/filesystem/data/nl/siri/override-voc");
        siri::dialogengine::JoinPath();
        sub_100013BA0(v10, __p);
        if (v9 < 0)
        {
          operator delete(__p[0]);
        }

        if (v7 < 0)
        {
          operator delete(v6[0]);
        }

        sub_10000143C(v6, "product/assistant/ontology/src/main/filesystem/data/nl/siri/voc");
        siri::dialogengine::JoinPath();
        sub_100013BA0(v10, __p);
      }

      else
      {
        sub_10000143C(v6, "dialog-metadata/voc");
        siri::dialogengine::JoinPath();
        sub_100013BA0(v10, __p);
      }

      if (v9 < 0)
      {
        operator delete(__p[0]);
      }

      if (v7 < 0)
      {
        operator delete(v6[0]);
      }
    }

    siri::dialogengine::FindFileInPaths();
    __p[0] = v10;
    sub_100002260(__p);
    if (v12 < 0)
    {
      operator delete(v11);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_100042780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  __p = &a21;
  sub_100002260(&__p);
  if (*(v21 - 33) < 0)
  {
    operator delete(*(v21 - 56));
  }

  _Unwind_Resume(a1);
}

void sub_100042804(const void **a1, siri::dialogengine::DialogMetadataWriter *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    if (a3 + 8 != sub_10000A9C0(a3, a1))
    {
      return;
    }

    sub_10000AA50(a3, a1);
  }

  siri::dialogengine::BaseName();
  siri::dialogengine::RemoveExtension();
  if (SHIBYTE(v91) < 0)
  {
    operator delete(__p[0]);
  }

  std::operator+<char>();
  siri::dialogengine::Log::Info();
  if (SHIBYTE(v91) < 0)
  {
    operator delete(__p[0]);
  }

  if (siri::dialogengine::FileExists())
  {
    sub_10000143C(&v88, &unk_10006B9FB);
    sub_10000143C(&v87, &unk_10006B9FB);
    sub_100000C2C(__p, a1);
    while (1)
    {
      std::ios_base::getloc((__p + *(__p[0] - 3)));
      v9 = std::locale::use_facet(&v79, &std::ctype<char>::id);
      v10 = (v9->__vftable[2].~facet_0)(v9, 10);
      std::locale::~locale(&v79);
      v11 = sub_1000010B4(__p, &v88, v10);
      if ((*(v11 + *(*v11 - 24) + 32) & 5) != 0)
      {
        std::filebuf::~filebuf();
        std::istream::~istream();
        std::ios::~ios();
        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          v63 = v87.__r_.__value_.__r.__words[0];
LABEL_178:
          operator delete(v63);
        }

        goto LABEL_179;
      }

      siri::dialogengine::StringTrim();
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        sub_10000143C(&v79, ";");
        v13 = siri::dialogengine::StringStartsWith();
        v14 = v13;
        if (SBYTE7(v80) < 0)
        {
          operator delete(v79);
          if (v14)
          {
            goto LABEL_68;
          }
        }

        else if (v13)
        {
          goto LABEL_68;
        }

        sub_10000143C(&v79, "#INCLUDE");
        if (siri::dialogengine::StringStartsWith())
        {
          v15 = *(a5 + 217);
          if (SBYTE7(v80) < 0)
          {
            operator delete(v79);
            if ((v15 & 1) == 0)
            {
LABEL_47:
              sub_10000143C(&v85, "#INCLUDE");
              sub_10000143C(&v84, &unk_10006B9FB);
              siri::dialogengine::StringReplace();
              siri::dialogengine::StringTrim();
              if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v75.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v84.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v85.__r_.__value_.__l.__data_);
              }

              siri::dialogengine::StringSplit();
              siri::dialogengine::StringTrim();
              if (SBYTE7(v80) < 0)
              {
                operator delete(v79);
              }

              v79 = *&v75.__r_.__value_.__l.__data_;
              *&v80 = *(&v75.__r_.__value_.__l + 2);
              *(&v75.__r_.__value_.__s + 23) = 0;
              v75.__r_.__value_.__s.__data_[0] = 0;
              v84.__r_.__value_.__r.__words[0] = &v85;
              sub_100002260(&v84);
              siri::dialogengine::DirName();
              siri::dialogengine::JoinPath();
              if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v85.__r_.__value_.__l.__data_);
              }

              if (siri::dialogengine::FileExists())
              {
                sub_100042804(&v75, a2, a3, a4, a5);
              }

              else
              {
                std::operator+<char>();
                siri::dialogengine::Log::Error();
                if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v85.__r_.__value_.__l.__data_);
                }
              }

              if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
              {
                v26 = v75.__r_.__value_.__r.__words[0];
LABEL_63:
                operator delete(v26);
              }

LABEL_64:
              if (SBYTE7(v80) < 0)
              {
                operator delete(v79);
              }

              goto LABEL_68;
            }
          }

          else if ((*(a5 + 217) & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        else if (SBYTE7(v80) < 0)
        {
          operator delete(v79);
        }

        v16 = &v88;
        if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v16 = v88.__r_.__value_.__r.__words[0];
        }

        v17 = v16->__r_.__value_.__s.__data_[0];
        if (v17 < 0)
        {
          v18 = __maskrune(v17, 0x4000uLL);
        }

        else
        {
          v18 = _DefaultRuneLocale.__runetype[v17] & 0x4000;
        }

        if (v18)
        {
          v19 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_str = &__str;
          }

          else
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v19 = __str.__r_.__value_.__l.__size_;
          }

          if (v19 >= 2)
          {
            v21 = p_str + v19;
            v22 = p_str;
            do
            {
              v23 = memchr(v22, 91, v19 - 1);
              if (!v23)
              {
                break;
              }

              if (*v23 == 25691)
              {
                if (v23 == v21 || v23 - p_str == -1)
                {
                  break;
                }

                v83 = 0;
                v81 = 0u;
                v82 = 0u;
                v79 = 0u;
                v80 = 0u;
                std::string::operator=(&v79, &v89);
                std::string::operator=((&v80 + 8), &v87);
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v27 = &__str;
                }

                else
                {
                  v27 = __str.__r_.__value_.__r.__words[0];
                }

                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v28 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v28 = __str.__r_.__value_.__l.__size_;
                }

                v29 = v27 + v28;
                v66 = a4;
                if (v28 >= 1)
                {
                  v30 = v27;
                  do
                  {
                    v31 = memchr(v30, 91, v28);
                    if (!v31)
                    {
                      break;
                    }

                    if (*v31 == 91)
                    {
                      goto LABEL_84;
                    }

                    v30 = (v31 + 1);
                    v28 = v29 - v30;
                  }

                  while (v29 - v30 > 0);
                }

                v31 = v29;
LABEL_84:
                v32 = v31 - v27;
                if (v31 == v29)
                {
                  v33 = -1;
                }

                else
                {
                  v33 = v31 - v27;
                }

                std::string::basic_string(&v75, &__str, 0, v33, &v84);
                siri::dialogengine::StringTrim();
                if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v75.__r_.__value_.__l.__data_);
                }

                siri::dialogengine::StringSplit();
                std::string::operator=(&v85, v75.__r_.__value_.__l.__data_);
                v84.__r_.__value_.__r.__words[0] = &v75;
                sub_100002260(&v84);
                siri::dialogengine::StringSplit();
                std::string::operator=(&v85, v75.__r_.__value_.__l.__data_);
                v84.__r_.__value_.__r.__words[0] = &v75;
                sub_100002260(&v84);
                sub_10000143C(&v84, "\");
                sub_10000143C(&v78, &unk_10006B9FB);
                siri::dialogengine::StringReplace();
                if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v85.__r_.__value_.__l.__data_);
                }

                v85 = v75;
                *(&v75.__r_.__value_.__s + 23) = 0;
                v75.__r_.__value_.__s.__data_[0] = 0;
                if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v78.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v84.__r_.__value_.__l.__data_);
                }

                if (v33 != -1)
                {
LABEL_96:
                  v34 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v35 = &__str;
                  }

                  else
                  {
                    v35 = __str.__r_.__value_.__r.__words[0];
                  }

                  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v34 = __str.__r_.__value_.__l.__size_;
                  }

                  v36 = v34 - v32;
                  if (v34 >= v32 && v36 >= 1)
                  {
                    v37 = v35 + v34;
                    v38 = v35 + v32;
                    do
                    {
                      v39 = memchr(v38, 93, v36);
                      if (!v39)
                      {
                        break;
                      }

                      if (*v39 == 93)
                      {
                        if (v39 != v37 && v39 - v35 != -1)
                        {
                          v64 = v39 - v35;
                          std::string::basic_string(&v84, &__str, v32 + 1, v39 - v35 + ~v32, &v75);
                          sub_10000143C(&v75, "d");
                          v40 = siri::dialogengine::StringStartsWith();
                          if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v75.__r_.__value_.__l.__data_);
                          }

                          if (v40)
                          {
                            memset(&v75, 0, sizeof(v75));
                            v77[0] = 0;
                            v77[1] = 0;
                            v76 = v77;
                            std::string::operator=(&v75, &v85);
                            v41 = HIBYTE(v84.__r_.__value_.__r.__words[2]);
                            if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                            {
                              v41 = v84.__r_.__value_.__l.__size_;
                            }

                            if (v41 >= 3)
                            {
                              std::string::basic_string(&v78, &v84, 2uLL, 0xFFFFFFFFFFFFFFFFLL, v74);
                              if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(v84.__r_.__value_.__l.__data_);
                              }

                              v84 = v78;
                              siri::dialogengine::StringSplit();
                              v42 = v78.__r_.__value_.__l.__size_;
                              v65 = v78.__r_.__value_.__l.__size_;
                              for (i = v78.__r_.__value_.__r.__words[0]; i != v42; i += 24)
                              {
                                siri::dialogengine::StringSplit();
                                v45 = v74[0];
                                v44 = v74[1];
                                while (v45 != v44)
                                {
                                  siri::dialogengine::StringSplit();
                                  if ((v73[1] - v73[0]) == 48)
                                  {
                                    siri::dialogengine::StringTrim();
                                    siri::dialogengine::StringTrim();
                                    siri::dialogengine::StringTrim();
                                    if (v69 < 0)
                                    {
                                      operator delete(v68);
                                    }

                                    v68 = v71;
                                    v46 = sub_100030BB8(&v76, v71);
                                    std::string::operator=((v46 + 56), &v70);
                                    if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
                                    {
                                      operator delete(v70.__r_.__value_.__l.__data_);
                                    }

                                    if (v72 < 0)
                                    {
                                      operator delete(v71[0]);
                                    }
                                  }

                                  v71[0] = v73;
                                  sub_100002260(v71);
                                  v45 += 3;
                                }

                                v73[0] = v74;
                                sub_100002260(v73);
                                v42 = v65;
                              }

                              v74[0] = &v78;
                              sub_100002260(v74);
                            }

                            sub_1000438A8(&v82, &v75);
                            sub_10002A374(&v76, v77[0]);
                            if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v75.__r_.__value_.__l.__data_);
                            }
                          }

                          v47 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
                          v48 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__str.__r_.__value_.__r.__words[2]) : __str.__r_.__value_.__l.__size_;
                          if (v48 <= v64)
                          {
                            v32 = -1;
                          }

                          else
                          {
                            v49 = v47 + v48;
                            v50 = v48 - (v64 + 1);
                            if (v50 >= 1)
                            {
                              v51 = &v47->__r_.__value_.__s.__data_[v64 + 1];
                              do
                              {
                                v52 = memchr(v51, 91, v50);
                                if (!v52)
                                {
                                  break;
                                }

                                if (*v52 == 91)
                                {
                                  goto LABEL_147;
                                }

                                v51 = v52 + 1;
                                v50 = v49 - v51;
                              }

                              while (v49 - v51 > 0);
                            }

                            v52 = v49;
LABEL_147:
                            v32 = v52 == v49 ? -1 : v52 - v47;
                          }

                          if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v84.__r_.__value_.__l.__data_);
                          }

                          if (v32 != -1)
                          {
                            goto LABEL_96;
                          }
                        }

                        break;
                      }

                      v38 = v39 + 1;
                      v36 = v37 - v38;
                    }

                    while (v37 - v38 >= 1);
                  }
                }

                a4 = v66;
                if (*(a5 + 216) == 1)
                {
                  siri::dialogengine::DialogMetadataSemanticValue::ToString(&v75, &v79);
                  v53 = (v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v75 : v75.__r_.__value_.__r.__words[0];
                  puts(v53);
                  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v75.__r_.__value_.__l.__data_);
                  }
                }

                siri::dialogengine::DialogMetadataWriter::AddSemanticValue(a2, &v79);
                if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v85.__r_.__value_.__l.__data_);
                }

                v75.__r_.__value_.__r.__words[0] = &v82;
                sub_1000441C8(&v75);
                if (SHIBYTE(v81) < 0)
                {
                  v26 = *(&v80 + 1);
                  goto LABEL_63;
                }

                goto LABEL_64;
              }

              v22 = (v23 + 1);
              v19 = v21 - v22;
            }

            while (v21 - v22 >= 2);
          }
        }

        else
        {
          std::string::operator=(&v87, &__str);
          siri::dialogengine::StringSplit();
          std::string::operator=(&v87, v79);
          v75.__r_.__value_.__r.__words[0] = &v79;
          sub_100002260(&v75);
          siri::dialogengine::StringSplit();
          std::string::operator=(&v87, v79);
          v75.__r_.__value_.__r.__words[0] = &v79;
          sub_100002260(&v75);
          siri::dialogengine::StringTrim();
          if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v87.__r_.__value_.__l.__data_);
          }

          *&v87.__r_.__value_.__l.__data_ = v79;
          v87.__r_.__value_.__r.__words[2] = v80;
          sub_10000143C(&v79, "#");
          v24 = siri::dialogengine::StringStartsWith();
          v25 = v24;
          if ((SBYTE7(v80) & 0x80000000) == 0)
          {
            if (!v24)
            {
              goto LABEL_68;
            }

LABEL_67:
            std::string::assign(&v87, &unk_10006B9FB);
            goto LABEL_68;
          }

          operator delete(v79);
          if (v25)
          {
            goto LABEL_67;
          }
        }
      }

LABEL_68:
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }
  }

  std::operator+<char>();
  v54 = std::string::append(&v88, "' in locale '");
  v55 = *&v54->__r_.__value_.__l.__data_;
  v75.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
  *&v75.__r_.__value_.__l.__data_ = v55;
  v54->__r_.__value_.__l.__size_ = 0;
  v54->__r_.__value_.__r.__words[2] = 0;
  v54->__r_.__value_.__r.__words[0] = 0;
  v56 = *(a4 + 23);
  if (v56 >= 0)
  {
    v57 = a4;
  }

  else
  {
    v57 = *a4;
  }

  if (v56 >= 0)
  {
    v58 = *(a4 + 23);
  }

  else
  {
    v58 = *(a4 + 8);
  }

  v59 = std::string::append(&v75, v57, v58);
  v60 = *&v59->__r_.__value_.__l.__data_;
  *&v80 = *(&v59->__r_.__value_.__l + 2);
  v79 = v60;
  v59->__r_.__value_.__l.__size_ = 0;
  v59->__r_.__value_.__r.__words[2] = 0;
  v59->__r_.__value_.__r.__words[0] = 0;
  v61 = std::string::append(&v79, "'");
  v62 = *&v61->__r_.__value_.__l.__data_;
  v91 = v61->__r_.__value_.__r.__words[2];
  *__p = v62;
  v61->__r_.__value_.__l.__size_ = 0;
  v61->__r_.__value_.__r.__words[2] = 0;
  v61->__r_.__value_.__r.__words[0] = 0;
  siri::dialogengine::Log::Error();
  if (SHIBYTE(v91) < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v80) < 0)
  {
    operator delete(v79);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    v63 = v75.__r_.__value_.__r.__words[0];
    goto LABEL_178;
  }

LABEL_179:
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }
}

void sub_100043528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, std::locale a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  sub_10004412C(&a33);
  if (a58 < 0)
  {
    operator delete(__p);
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  sub_10004416C(&a43);
  if (a71 < 0)
  {
    operator delete(a66);
  }

  std::ios::~ios();
  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (a75 < 0)
  {
    operator delete(a74);
  }

  if (a77 < 0)
  {
    operator delete(a76);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000438A8(uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10004397C(a1, a2);
  }

  else
  {
    sub_1000438E8(a1, a2);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

void *sub_1000438E8(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_100001C60(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  result = sub_100043AEC((v4 + 24), a2 + 3);
  *(a1 + 8) = v4 + 48;
  return result;
}

uint64_t sub_10004397C(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1000020B0();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_100043E7C(a1, v6);
  }

  v7 = 48 * v2;
  v15 = 0;
  v16 = v7;
  v17 = v7;
  if (*(a2 + 23) < 0)
  {
    sub_100001C60(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  sub_100043AEC((v7 + 24), a2 + 3);
  *&v17 = v17 + 48;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  sub_100043ED4(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1000440B0(&v15);
  return v14;
}

void sub_100043AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  sub_1000440B0(va);
  _Unwind_Resume(a1);
}

void *sub_100043AEC(void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100043B44(a1, *a2, a2 + 1);
  return a1;
}

void *sub_100043B44(void *result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100043BCC(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

const void *sub_100043BCC(void *a1, uint64_t *a2, const void **a3)
{
  v3 = *sub_100043C60(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    sub_100043E04();
  }

  return v3;
}

const void **sub_100043C60(void *a1, uint64_t *a2, const void ***a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !sub_100005B94(a1, a5, a2 + 4))
  {
    if (!sub_100005B94(a1, a2 + 4, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_100005B94(a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_100005B94(a1, v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_1000229D8(a1, a3, a5);
}

void sub_100043E7C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_100001B50();
}

uint64_t sub_100043ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v19 = a4;
  v16[0] = a1;
  v16[1] = &v18;
  v16[2] = &v19;
  if (a2 == a3)
  {
    v17 = 1;
  }

  else
  {
    v5 = a2;
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a2 + v7);
      v10 = *(a2 + v7);
      *(v8 + 16) = *(a2 + v7 + 16);
      *v8 = v10;
      v9[1] = 0;
      v9[2] = 0;
      *v9 = 0;
      *(v8 + 24) = *(a2 + v7 + 24);
      v11 = (a2 + v7 + 32);
      v12 = *v11;
      *(a4 + v7 + 32) = *v11;
      v13 = a4 + v7 + 32;
      v14 = *(a2 + v7 + 40);
      *(v8 + 40) = v14;
      if (v14)
      {
        *(v12 + 16) = v13;
        v9[3] = v11;
        *v11 = 0;
        *(a2 + v7 + 40) = 0;
      }

      else
      {
        *(v8 + 24) = v13;
      }

      v7 += 48;
    }

    while (a2 + v7 != a3);
    v19 = a4 + v7;
    v17 = 1;
    while (v5 != a3)
    {
      sub_100043FD0(a1, v5);
      v5 += 48;
    }
  }

  return sub_100044024(v16);
}

void sub_100043FD0(uint64_t a1, uint64_t a2)
{
  sub_10002A374(a2 + 24, *(a2 + 32));
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_100044024(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10004405C(a1);
  }

  return a1;
}

void sub_10004405C(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 48;
      sub_100043FD0(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_1000440B0(void **a1)
{
  sub_1000440E4(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000440E4(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    sub_100043FD0(v4, i - 48);
  }
}

uint64_t sub_10004412C(uint64_t a1)
{
  sub_10002A374(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10004416C(uint64_t a1)
{
  v3 = (a1 + 48);
  sub_1000441C8(&v3);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000441C8(void ***a1)
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
        v4 -= 48;
        sub_100043FD0(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

char *sub_100044250(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100001C60(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100001C60(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100001C60(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_100001C60(__dst + 72, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(__dst + 11) = *(a2 + 11);
    *(__dst + 72) = v7;
  }

  if (*(a2 + 119) < 0)
  {
    sub_100001C60(__dst + 96, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    *(__dst + 14) = *(a2 + 14);
    *(__dst + 6) = v8;
  }

  if (*(a2 + 143) < 0)
  {
    sub_100001C60(__dst + 120, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 120);
    *(__dst + 17) = *(a2 + 17);
    *(__dst + 120) = v9;
  }

  if (*(a2 + 167) < 0)
  {
    sub_100001C60(__dst + 144, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v10 = a2[9];
    *(__dst + 20) = *(a2 + 20);
    *(__dst + 9) = v10;
  }

  if (*(a2 + 191) < 0)
  {
    sub_100001C60(__dst + 168, *(a2 + 21), *(a2 + 22));
  }

  else
  {
    v11 = *(a2 + 168);
    *(__dst + 23) = *(a2 + 23);
    *(__dst + 168) = v11;
  }

  *(__dst + 24) = 0;
  *(__dst + 25) = 0;
  *(__dst + 26) = 0;
  sub_100001FDC((__dst + 192), *(a2 + 24), *(a2 + 25), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 25) - *(a2 + 24)) >> 3));
  v12 = *(a2 + 108);
  __dst[218] = *(a2 + 218);
  *(__dst + 108) = v12;
  if (*(a2 + 247) < 0)
  {
    sub_100001C60(__dst + 224, *(a2 + 28), *(a2 + 29));
  }

  else
  {
    v13 = a2[14];
    *(__dst + 30) = *(a2 + 30);
    *(__dst + 14) = v13;
  }

  if (*(a2 + 271) < 0)
  {
    sub_100001C60(__dst + 248, *(a2 + 31), *(a2 + 32));
  }

  else
  {
    v14 = *(a2 + 248);
    *(__dst + 33) = *(a2 + 33);
    *(__dst + 248) = v14;
  }

  return __dst;
}

void sub_100044454(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 247) < 0)
  {
    operator delete(*(v2 + 224));
  }

  sub_100002260(va);
  if (*(v2 + 191) < 0)
  {
    operator delete(*(v2 + 168));
  }

  if (*(v2 + 167) < 0)
  {
    operator delete(*(v2 + 144));
  }

  if (*(v2 + 143) < 0)
  {
    operator delete(*(v2 + 120));
  }

  if (*(v2 + 119) < 0)
  {
    operator delete(*(v2 + 96));
  }

  if (*(v2 + 95) < 0)
  {
    operator delete(*(v2 + 72));
  }

  if (*(v2 + 71) < 0)
  {
    operator delete(*(v2 + 48));
  }

  if (*(v2 + 47) < 0)
  {
    operator delete(*(v2 + 24));
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100044544(uint64_t a1)
{
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  v3 = (a1 + 192);
  sub_100002260(&v3);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

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

  return a1;
}

void sub_100044620(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100044674(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100044674(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t sub_1000446C4(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1000020B0();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_1000447E4(a1, v7);
  }

  v8 = 32 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  v9 = *a2;
  *(v8 + 16) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v8 + 24) = *(a2 + 24);
  *&v18 = 32 * v2 + 32;
  v10 = *(a1 + 8);
  v11 = 32 * v2 + *a1 - v10;
  sub_10004482C(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_100044968(&v16);
  return v15;
}

void sub_1000447D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100044968(va);
  _Unwind_Resume(a1);
}

void sub_1000447E4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100001B50();
}

uint64_t sub_10004482C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
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
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 24);
      v6 += 2;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 2;
    }
  }

  return sub_1000448E8(v9);
}

uint64_t sub_1000448E8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100044920(a1);
  }

  return a1;
}

void sub_100044920(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 9);
    v1 -= 4;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t sub_100044968(uint64_t a1)
{
  sub_1000449A0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000449A0(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

_BYTE ***sub_1000449FC(uint64_t **a1, const void **a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = a3[1];
  v8 = *a3;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = sub_100044A80(v4, a2, &v8);
  if (v9)
  {
    sub_100005EB4(v9);
  }

  sub_100044AF4(v6, a1);
  return v6;
}

void sub_100044A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100005EB4(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100044A80(uint64_t *a1, const void **a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = a3[1];
  v7 = *a3;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = sub_100044B4C(v3, a2, &v7);
  if (v8)
  {
    sub_100005EB4(v8);
  }

  return v5;
}

void sub_100044ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100005EB4(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100044AF4(_BYTE ***a1, uint64_t a2)
{
  if (***a1 == 1)
  {

    sub_1000421B0(a2);
  }

  else
  {
    v4[1] = v2;
    v4[2] = v3;
    v4[0] = a2;
    sub_1000454F4((a1 + 2), v4);
  }
}

uint64_t sub_100044B4C(uint64_t a1, const void **a2, uint64_t *a3)
{
  v6 = *(a1 + 16);
  if (v6 < 2 || v6 == 3)
  {
    v8 = a3[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100005EB4(v8);
      v9 = a3[1];
      v20 = *a3;
      v21 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v20 = *a3;
      v21 = 0;
    }

    YAML::detail::node_data::convert_to_map(a1, &v20);
    if (v21)
    {
      sub_100005EB4(v21);
    }
  }

  else if (v6 == 2)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    sub_100044D68(exception, a2);
  }

  v10 = *(a1 + 112);
  if (v10 == *(a1 + 120))
  {
LABEL_20:
    v15 = *a3;
    v14 = a3[1];
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    sub_1000452D8(v22);
  }

  while (1)
  {
    v11 = *v10;
    v12 = a3[1];
    v18 = *a3;
    v19 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = sub_100044D6C(v11, a2, &v18);
    if (v19)
    {
      sub_100005EB4(v19);
    }

    if (v13)
    {
      return v10[1];
    }

    v10 += 2;
    if (v10 == *(a1 + 120))
    {
      goto LABEL_20;
    }
  }
}

BOOL sub_100044D6C(uint64_t a1, const void **a2, uint64_t *a3)
{
  memset(&v22, 0, sizeof(v22));
  v4 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    __p = 0;
    v17 = 0;
    v18 = 0;
    v19 = v4;
    v20 = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    __p = 0;
    v17 = 0;
    v18 = 0;
    v19 = v4;
    v20 = 0;
  }

  v15[0] = 1;
  v21 = a1;
  v6 = sub_10004516C(v15, &v22);
  if (v20)
  {
    sub_100005EB4(v20);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  if (v5)
  {
    sub_100005EB4(v5);
  }

  v7 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  if (!v6)
  {
    goto LABEL_25;
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v22.__r_.__value_.__l.__size_;
  }

  v9 = *(a2 + 23);
  v10 = v9;
  if (v9 < 0)
  {
    v9 = a2[1];
  }

  if (size == v9)
  {
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v22;
    }

    else
    {
      v11 = v22.__r_.__value_.__r.__words[0];
    }

    if (v10 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    v13 = memcmp(v11, v12, size) == 0;
    if (v7 < 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_25:
    v13 = 0;
    if ((*(&v22.__r_.__value_.__s + 23) & 0x80) != 0)
    {
LABEL_26:
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }

  return v13;
}

void sub_100044E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_10003D6C8(&a9);
  if (v21)
  {
    sub_100005EB4(v21);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_100044EC8(void *a1, uint64_t a2)
{
  v6 = -1;
  v7 = -1;
  sub_100044F84(a2);
  sub_100041860(a1, &v6, &__p);
  *a1 = off_1000753A8;
  if (v5 < 0)
  {
    operator delete(__p);
  }

  *a1 = off_1000754E8;
  return a1;
}

void sub_100044F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100044F84(uint64_t a1)
{
  sub_100024C08(v10);
  v2 = sub_1000027F4(&v11, "operator[] call on a scalar", 27);
  v3 = sub_1000027F4(v2, " (key: ", 8);
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  v7 = sub_1000027F4(v3, v5, v6);
  sub_1000027F4(v7, ")", 2);
  std::stringbuf::str();
  v11 = v8;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100045158(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000012E8(va);
  _Unwind_Resume(a1);
}

BOOL sub_10004516C(uint64_t a1, std::string *a2)
{
  v4 = sub_1000422A8(a1);
  if (v4 == 2)
  {
    v5 = sub_1000451C4(a1);
    std::string::operator=(a2, v5);
  }

  return v4 == 2;
}

uint64_t *sub_1000451C4(uint64_t a1)
{
  if ((*a1 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if (*(a1 + 31) < 0)
    {
      sub_100001C60(&v5, *(a1 + 8), *(a1 + 16));
    }

    else
    {
      v5 = *(a1 + 8);
      v6 = *(a1 + 24);
    }

    sub_1000415A8(exception, &v5);
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    return (**v2 + 56);
  }

  return YAML::detail::node_data::empty_scalar(a1);
}

void sub_1000452D8(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_100045394(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 40);
  if (v4)
  {
    sub_100005EB4(v4);
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1000453E4(uint64_t a1, const std::string *a2)
{
  if ((*a1 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if (*(a1 + 31) < 0)
    {
      sub_100001C60(&v8, *(a1 + 8), *(a1 + 16));
    }

    else
    {
      v8 = *(a1 + 8);
      v9 = *(a1 + 24);
    }

    sub_1000415A8(exception, &v8);
  }

  sub_100041BB0(a1);
  v4 = *(a1 + 48);
  sub_1000421B0(v4);
  v5 = **v4;

  return YAML::detail::node_data::set_scalar(v5, a2);
}

void *sub_1000454F4(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1000455C0(uint64_t result)
{
  if (*result == 2)
  {
    v1 = *(result + 24);
    v2 = (*(result + 16) + 16);
    if (v1 != v2)
    {
      while (****v2 != 1 || (***v2[1] & 1) == 0)
      {
        v2 += 2;
        if (v2 == v1)
        {
          v2 = *(result + 24);
          break;
        }
      }
    }

    *(result + 16) = v2;
  }

  else if (*result == 1)
  {
    *(result + 8) += 8;
  }

  return result;
}

uint64_t sub_100045638(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 8;
  if (*(a2 + 31) < 0)
  {
    sub_100001C60(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    *(v4 + 16) = *(a2 + 24);
    *v4 = v5;
  }

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *(a2 + 48);
  v12[0] = 0;
  *v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8[0] = 0;
  *__p = 0u;
  v10 = 0u;
  v11 = 0u;
  sub_100045740(a1 + 56, v12, v8);
  if (v11)
  {
    sub_100005EB4(v11);
  }

  if (SBYTE7(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (v15)
  {
    sub_100005EB4(v15);
  }

  if (SBYTE7(v14) < 0)
  {
    operator delete(v13[0]);
  }

  return a1;
}

void sub_10004571C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_10003D6C8(&a9);
  sub_10003D6C8(&a16);
  sub_10003D6C8(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_100045740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = a1 + 8;
  if (*(a2 + 31) < 0)
  {
    sub_100001C60(v6, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v7 = *(a2 + 8);
    *(v6 + 16) = *(a2 + 24);
    *v6 = v7;
  }

  v8 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *a3;
  if (*(a3 + 31) < 0)
  {
    sub_100001C60((a1 + 64), *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v9 = *(a3 + 8);
    *(a1 + 80) = *(a3 + 24);
    *(a1 + 64) = v9;
  }

  v10 = *(a3 + 40);
  *(a1 + 88) = *(a3 + 32);
  *(a1 + 96) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 104) = *(a3 + 48);
  return a1;
}

uint64_t sub_100045824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  sub_100045878(a1 + 56, a2, a3);
  return a1;
}

uint64_t sub_100045878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = a1 + 8;
  if (*(a2 + 31) < 0)
  {
    sub_100001C60(v6, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v7 = *(a2 + 8);
    *(v6 + 16) = *(a2 + 24);
    *v6 = v7;
  }

  v8 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *a3;
  if (*(a3 + 31) < 0)
  {
    sub_100001C60((a1 + 64), *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v9 = *(a3 + 8);
    *(a1 + 80) = *(a3 + 24);
    *(a1 + 64) = v9;
  }

  v10 = *(a3 + 40);
  *(a1 + 88) = *(a3 + 32);
  *(a1 + 96) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 104) = *(a3 + 48);
  return a1;
}

uint64_t *sub_10004595C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_1000422A8(*a1) != 2)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v10 = sub_100045A58(*a1);
    v11 = v9;
    sub_100045B5C(exception, &v10);
    *exception = &off_100075300;
  }

  result = sub_1000451C4(*a1);
  if (*(result + 23) < 0)
  {
    v6 = *result;
    v7 = result[1];

    return sub_100001C60(a2, v6, v7);
  }

  else
  {
    v5 = *result;
    *(a2 + 16) = result[2];
    *a2 = v5;
  }

  return result;
}

uint64_t sub_100045A58(uint64_t a1)
{
  if ((*a1 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if (*(a1 + 31) < 0)
    {
      sub_100001C60(&v7, *(a1 + 8), *(a1 + 16));
    }

    else
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 24);
    }

    sub_1000415A8(exception, &v7);
  }

  v2 = *(a1 + 48);
  if (!v2)
  {
    return -1;
  }

  v3 = **v2;
  result = *(v3 + 4);
  v5 = *(v3 + 12);
  return result;
}

void *sub_100045B5C(void *a1, _DWORD *a2)
{
  sub_10000143C(__p, "bad conversion");
  sub_100041860(a1, a2, __p);
  *a1 = off_1000753A8;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_100075428;
  return a1;
}

void sub_100045BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100045C10(YAML::BadConversion *a1)
{
  YAML::BadConversion::~BadConversion(a1);

  operator delete();
}

void *sub_100045C48(void *result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_100001C60(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  *(v4 + 24) = *(a2 + 24);
  v3[1] = v4 + 32;
  return result;
}

uint64_t sub_100045CB8(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1000020B0();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v21 = a1;
  if (v7)
  {
    sub_1000447E4(a1, v7);
  }

  v8 = 32 * v2;
  v18 = 0;
  v19 = v8;
  v20 = v8;
  if (*(a2 + 23) < 0)
  {
    sub_100001C60(v8, *a2, *(a2 + 1));
    v10 = v19;
    v11 = v20;
  }

  else
  {
    v9 = *a2;
    *(v8 + 16) = *(a2 + 2);
    *v8 = v9;
    v10 = v8;
    v11 = v8;
  }

  *(v8 + 24) = *(a2 + 24);
  *&v20 = v11 + 32;
  v12 = *(a1 + 8);
  v13 = v10 + *a1 - v12;
  sub_10004482C(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_100044968(&v18);
  return v17;
}

void sub_100045DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100044968(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100045DF4()
{
  sub_10000143C(byte_100078728, "categories");
  __cxa_atexit(&std::string::~string, byte_100078728, &_mh_execute_header);
  sub_10000143C(&qword_100078740, "allowUnbounded");
  __cxa_atexit(&std::string::~string, &qword_100078740, &_mh_execute_header);
  sub_10000143C(byte_100078758, "locales");

  return __cxa_atexit(&std::string::~string, byte_100078758, &_mh_execute_header);
}

BOOL sub_100045EB4(uint64_t *a1, uint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) < 3 || sub_100039B20())
  {
    sub_100039B10(a2);
    return 0;
  }

  v61 = 0;
  v62 = 256;
  v63[0] = 0;
  v65 = 0;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > 3)
  {
    sub_10000143C(__p, "--templateDir");
    siri::dialogengine::GetOption();
    siri::dialogengine::ExpandPath();
    if (v58 < 0)
    {
      operator delete(v57[0]);
    }

    if (v56 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10000143C(__p, "--schema");
    siri::dialogengine::GetOption();
    if (v56 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10000143C(v53, "--catId");
    siri::dialogengine::GetOption();
    if (v54 < 0)
    {
      operator delete(v53[0]);
    }

    sub_10000143C(v51, "--visualCatId");
    siri::dialogengine::GetOption();
    if (v52 < 0)
    {
      operator delete(v51[0]);
    }

    sub_10000143C(v49, "--locale");
    siri::dialogengine::GetOption();
    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49[0]);
    }

    sub_10000143C(v49, "--noCheckSnippetDialogIds");
    v6 = siri::dialogengine::OptionExists();
    sub_100049858(&v61, (v6 ^ 1u));
    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49[0]);
    }

    v49[0] = 0;
    v49[1] = 0;
    v50 = 0;
    sub_100001FDC(v49, *a1, a1[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
    sub_10000143C(&v43, "--sourceLocaleDialogIds");
    siri::dialogengine::PopStringSetOption();
    sub_1000498B8(&v61, v46);
    if (v48 == 1)
    {
      sub_10000623C(v46, v47);
    }

    if (v45 < 0)
    {
      operator delete(v43);
    }

    sub_10000143C(&v43, "--xcode");
    v7 = siri::dialogengine::OptionExists();
    sub_100049784(&v61, v7);
    if (v45 < 0)
    {
      operator delete(v43);
    }

    sub_10000143C(&v43, "--attrs");
    v8 = siri::dialogengine::OptionExists();
    sub_1000497E4(&v61, v8);
    if (v45 < 0)
    {
      operator delete(v43);
    }

    sub_10000143C(&v43, "--quiet");
    v9 = siri::dialogengine::OptionExists();
    sub_10004972C(&v61, v9);
    if (v45 < 0)
    {
      operator delete(v43);
    }

    sub_10000143C(&v43, "--errors");
    v10 = siri::dialogengine::OptionExists();
    sub_100049658(&v61, v10);
    if (v45 < 0)
    {
      operator delete(v43);
    }

    sub_10000143C(&v43, "--pedantic");
    v11 = siri::dialogengine::OptionExists();
    sub_1000496B8(&v61, v11);
    if (v45 < 0)
    {
      operator delete(v43);
    }

    v12 = v60;
    if ((v60 & 0x80u) != 0)
    {
      v12 = v59[1];
    }

    if (!v12)
    {
      sub_10000143C(&v43, "--templateDir required for catutil validate");
      sub_10000143C(&v40, &unk_10006B9FB);
      v4 = sub_1000498E0(&v61, &v43, &v40, 0);
      if (v42 < 0)
      {
        operator delete(v40);
      }

      if (v45 < 0)
      {
        operator delete(v43);
      }

      goto LABEL_55;
    }

    v13 = v58;
    if ((v58 & 0x80u) != 0)
    {
      v13 = v57[1];
    }

    if (v13)
    {
      v14 = sub_100046D74(&v61);
LABEL_54:
      v4 = v14;
LABEL_55:
      v43 = v49;
      sub_100002260(&v43);
      if (v52 < 0)
      {
        operator delete(v51[0]);
      }

      if (v54 < 0)
      {
        operator delete(v53[0]);
      }

      if (v56 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_61;
    }

    v15 = v56;
    if ((v56 & 0x80u) != 0)
    {
      v15 = __p[1];
    }

    if (v15)
    {
      v14 = sub_1000471E0(&v61, v59, __p, v51);
      goto LABEL_54;
    }

    v16 = v54;
    if ((v54 & 0x80u) != 0)
    {
      v16 = v53[1];
    }

    if (v16)
    {
      v14 = sub_10004740C();
      goto LABEL_54;
    }

    sub_10000143C(v38, "schema");
    siri::dialogengine::JoinPath();
    siri::dialogengine::ListDir();
    if (v42 < 0)
    {
      operator delete(v40);
    }

    if (v39 < 0)
    {
      operator delete(v38[0]);
    }

    v17 = v43;
    v18 = v44;
    if (v43 != v44)
    {
      do
      {
        sub_10000143C(&v40, "catschema");
        HasExtension = siri::dialogengine::HasExtension();
        v20 = HasExtension;
        if (v42 < 0)
        {
          operator delete(v40);
          if (v20)
          {
LABEL_76:
            std::operator+<char>();
            sub_100049CDC(&v61, &v40);
            if (v42 < 0)
            {
              operator delete(v40);
            }

            siri::dialogengine::BaseName();
            sub_100046D74(&v61);
            if (v42 < 0)
            {
              operator delete(v40);
            }
          }
        }

        else if (HasExtension)
        {
          goto LABEL_76;
        }

        v17 += 24;
      }

      while (v17 != v18);
    }

    v40 = &v43;
    sub_100002260(&v40);
    sub_10000143C(v38, "dialog");
    siri::dialogengine::JoinPath();
    siri::dialogengine::ListDirRecursively();
    if (v42 < 0)
    {
      operator delete(v40);
    }

    if (v39 < 0)
    {
      operator delete(v38[0]);
    }

    v21 = v43;
    v22 = v44;
    if (v43 == v44)
    {
LABEL_127:
      sub_10000143C(v36, "visual");
      siri::dialogengine::JoinPath();
      siri::dialogengine::ListDirRecursively();
      if (v39 < 0)
      {
        operator delete(v38[0]);
      }

      if (v37 < 0)
      {
        operator delete(v36[0]);
      }

      v30 = v40;
      v31 = v41;
      if (v40 != v41)
      {
        do
        {
          if (siri::dialogengine::HasVisualCATExtension())
          {
            std::operator+<char>();
            sub_100049CDC(&v61, v38);
            if (v39 < 0)
            {
              operator delete(v38[0]);
            }

            siri::dialogengine::CatPathToId();
            sub_10004740C();
            if (v39 < 0)
            {
              operator delete(v38[0]);
            }
          }

          if ((*(v30 + 23) & 0x8000000000000000) != 0)
          {
            v32 = *v30;
            v33 = v30[1];
          }

          siri::dialogengine::StringToLower();
          if (siri::dialogengine::HasVisualCATExtension() && (siri::dialogengine::HasVisualCATExtension() & 1) == 0)
          {
            sub_10000143C(v36, "Visual CAT xml or binary file extension is not lower case");
            siri::dialogengine::JoinPath();
            sub_1000498E0(&v61, v36, v34, 0);
            if (v35 < 0)
            {
              operator delete(v34[0]);
            }

            if (v37 < 0)
            {
              operator delete(v36[0]);
            }
          }

          if (v39 < 0)
          {
            operator delete(v38[0]);
          }

          v30 += 3;
        }

        while (v30 != v31);
      }

      v4 = sub_100049D14(&v61);
      v38[0] = &v40;
      sub_100002260(v38);
      v40 = &v43;
      sub_100002260(&v40);
      goto LABEL_55;
    }

    while (1)
    {
      sub_10000143C(&v40, "cat");
      v23 = siri::dialogengine::HasExtension();
      v24 = v23;
      if (v42 < 0)
      {
        operator delete(v40);
        if (!v24)
        {
          goto LABEL_94;
        }
      }

      else if (!v23)
      {
        goto LABEL_94;
      }

      std::operator+<char>();
      sub_100049CDC(&v61, &v40);
      if (v42 < 0)
      {
        operator delete(v40);
      }

      siri::dialogengine::CatPathToId();
      sub_1000471E0(&v61, v59, &v40, v51);
      if (v42 < 0)
      {
        operator delete(v40);
      }

LABEL_94:
      if ((*(v21 + 23) & 0x8000000000000000) != 0)
      {
        v25 = *v21;
        v26 = v21[1];
      }

      siri::dialogengine::StringToLower();
      sub_10000143C(v38, ".cat.xml");
      if (siri::dialogengine::StringEndsWith())
      {
        v27 = 1;
      }

      else
      {
        sub_10000143C(v36, ".cat.bin");
        v27 = siri::dialogengine::StringEndsWith();
        if (v37 < 0)
        {
          operator delete(v36[0]);
        }
      }

      if (v39 < 0)
      {
        operator delete(v38[0]);
        if (v27)
        {
LABEL_104:
          siri::dialogengine::DirName();
          sub_10000143C(v36, "cat");
          v28 = siri::dialogengine::HasExtension();
          if (v37 < 0)
          {
            operator delete(v36[0]);
          }

          if ((v28 & 1) == 0)
          {
            sub_10000143C(v36, "CAT xml or binary found outside of .cat file directory");
            siri::dialogengine::JoinPath();
            sub_1000498E0(&v61, v36, v34, 0);
            if (v35 < 0)
            {
              operator delete(v34[0]);
            }

            if (v37 < 0)
            {
              operator delete(v36[0]);
            }
          }

          sub_10000143C(v36, ".cat.xml");
          if (siri::dialogengine::StringEndsWith())
          {
            v29 = 1;
          }

          else
          {
            sub_10000143C(v34, ".cat.bin");
            v29 = siri::dialogengine::StringEndsWith();
            if (v35 < 0)
            {
              operator delete(v34[0]);
            }
          }

          if (v37 < 0)
          {
            operator delete(v36[0]);
          }

          if ((v29 & 1) == 0)
          {
            sub_10000143C(v36, "CAT xml or binary file extension is not lower case");
            siri::dialogengine::JoinPath();
            sub_1000498E0(&v61, v36, v34, 0);
            if (v35 < 0)
            {
              operator delete(v34[0]);
            }

            if (v37 < 0)
            {
              operator delete(v36[0]);
            }
          }

          if (v39 < 0)
          {
            operator delete(v38[0]);
          }
        }
      }

      else if (v27)
      {
        goto LABEL_104;
      }

      if (v42 < 0)
      {
        operator delete(v40);
      }

      v21 += 3;
      if (v21 == v22)
      {
        goto LABEL_127;
      }
    }
  }

  sub_10000143C(v59, "Insufficient arguments specified for catutil validate");
  sub_10000143C(v57, &unk_10006B9FB);
  v4 = sub_1000498E0(&v61, v59, v57, 0);
LABEL_61:
  if (v58 < 0)
  {
    operator delete(v57[0]);
  }

  if (v60 < 0)
  {
    operator delete(v59[0]);
  }

  if (v65 == 1)
  {
    sub_10000623C(v63, v64);
  }

  return v4;
}

void sub_1000469D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  a15 = &a18;
  sub_100002260(&a15);
  a18 = &a21;
  sub_100002260(&a18);
  a18 = &a28;
  sub_100002260(&a18);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (*(v49 - 177) < 0)
  {
    operator delete(*(v49 - 200));
  }

  if (*(v49 - 153) < 0)
  {
    operator delete(*(v49 - 176));
  }

  if (*(v49 - 120) == 1)
  {
    sub_10000623C(v48 + 8, *(v49 - 136));
  }

  _Unwind_Resume(a1);
}

void sub_100046D5C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x100046CECLL);
}

BOOL sub_100046D74(uint64_t a1)
{
  siri::dialogengine::GetTemplateDirs();
  siri::dialogengine::Context::Context();
  v19[0] = v21;
  sub_10000C88C(v19);
  siri::dialogengine::BaseName();
  sub_10000143C(v19, "yaml");
  if (siri::dialogengine::HasExtension())
  {
    HasExtension = 1;
  }

  else
  {
    sub_10000143C(__p, "catschema");
    HasExtension = siri::dialogengine::HasExtension();
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
    if (!HasExtension)
    {
      goto LABEL_12;
    }
  }

  else if (!HasExtension)
  {
    goto LABEL_12;
  }

  siri::dialogengine::RemoveExtension();
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  *v21 = *v19;
  v22 = v20;
LABEL_12:
  siri::dialogengine::ObjectRegistry::GetObject();
  if (v15)
  {
    siri::dialogengine::ObjectSchema::Validate(v15, v23);
    siri::dialogengine::Context::GetSchemaErrors(v19, v23);
    if (v19[0] == v19[1])
    {
      std::operator+<char>();
      v11 = sub_100049CDC(a1, __p);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      std::to_string(&v13, 0xAAAAAAAAAAAAAAABLL * ((v19[1] - v19[0]) >> 3));
      v3 = std::string::append(&v13, " error(s) for ");
      v4 = *&v3->__r_.__value_.__l.__data_;
      v14.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
      *&v14.__r_.__value_.__l.__data_ = v4;
      v3->__r_.__value_.__l.__size_ = 0;
      v3->__r_.__value_.__r.__words[2] = 0;
      v3->__r_.__value_.__r.__words[0] = 0;
      if (v22 >= 0)
      {
        v5 = v21;
      }

      else
      {
        v5 = v21[0];
      }

      if (v22 >= 0)
      {
        v6 = HIBYTE(v22);
      }

      else
      {
        v6 = v21[1];
      }

      v7 = std::string::append(&v14, v5, v6);
      v8 = *&v7->__r_.__value_.__l.__data_;
      v18 = v7->__r_.__value_.__r.__words[2];
      *__p = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      sub_100049CDC(a1, __p);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }

      v9 = v19[0];
      v10 = v19[1];
      while (v9 != v10)
      {
        siri::dialogengine::ObjectSchema::GetFilename(__p, v15);
        sub_1000498E0(a1, v9, __p, 0);
        if (SHIBYTE(v18) < 0)
        {
          operator delete(__p[0]);
        }

        v9 += 24;
      }

      v11 = sub_100049D14(a1);
    }

    __p[0] = v19;
    sub_100002260(__p);
  }

  else
  {
    std::operator+<char>();
    sub_10000143C(__p, &unk_10006B9FB);
    v11 = sub_1000498E0(a1, v19, __p, 0);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[0]);
    }
  }

  if (v16)
  {
    sub_100005EB4(v16);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  siri::dialogengine::Context::~Context(v23);
  return v11;
}

void sub_100047094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, void **__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  __p = &a31;
  sub_100002260(&__p);
  if (a24)
  {
    sub_100005EB4(a24);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  siri::dialogengine::Context::~Context(&a43);
  _Unwind_Resume(a1);
}

BOOL sub_1000471E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a4 + 8);
  }

  if (v5)
  {

    return sub_10004762C();
  }

  else
  {
    siri::dialogengine::CatIdToPath();
    siri::dialogengine::JoinPath();
    if (v13 < 0)
    {
      operator delete(__p);
    }

    if (siri::dialogengine::DirExists())
    {
      siri::dialogengine::GetCatLocales();
      v7 = __p;
      if (__p == v12)
      {
        sub_10000143C(v9, "Cannot find any locale files in CAT directory");
        v8 = sub_100049CB4(a1, v9, v14, 0);
        if (v10 < 0)
        {
          operator delete(v9[0]);
        }
      }

      else
      {
        do
        {
          sub_10004762C();
          v7 += 24;
        }

        while (v7 != v12);
        v8 = sub_100049D14(a1);
      }

      v9[0] = &__p;
      sub_100002260(v9);
    }

    else
    {
      sub_10000143C(&__p, "CAT does not exist");
      v8 = sub_1000498E0(a1, &__p, v14, 0);
      if (v13 < 0)
      {
        operator delete(__p);
      }
    }

    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    return v8;
  }
}

void sub_100047384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __p = &a16;
  sub_100002260(&__p);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

BOOL sub_10004740C()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  siri::dialogengine::GetTemplateDirs();
  if (*(v2 + 23) < 0)
  {
    sub_100001C60(&__dst, *v2, *(v2 + 1));
  }

  else
  {
    __dst = *v2;
    v13 = *(v2 + 2);
  }

  siri::dialogengine::FindVisualFile();
  v4 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v4 = v10[1];
  }

  if (v4)
  {
    siri::dialogengine::Context::Context(v8);
    siri::dialogengine::RequestInfo::RequestInfo(v7);
    siri::dialogengine::RequestInfo::SetTemplateDirs();
    siri::dialogengine::RequestInfo::SetVisualPath();
    siri::dialogengine::RequestInfo::SetRequestType();
    siri::dialogengine::Context::SetRequestInfo();
    v5 = sub_100047A70(v3, v8, &__dst);
    sub_10002A140(v7);
    siri::dialogengine::Context::~Context(v8);
  }

  else
  {
    std::operator+<char>();
    v5 = sub_1000498E0(v3, v8, v10, 0);
    if (v9 < 0)
    {
      operator delete(v8[0]);
    }
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__dst);
  }

  v8[0] = &v14;
  sub_10000C88C(v8);
  return v5;
}

void sub_1000475A0(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(*v1);
  }

  if (*(v1 + 3615) < 0)
  {
    operator delete(*(v1 + 3592));
  }

  if (*(v1 + 3639) < 0)
  {
    operator delete(*(v1 + 3616));
  }

  *v1 = v2 - 56;
  sub_10000C88C(&STACK[0x200]);
  _Unwind_Resume(a1);
}

BOOL sub_10004762C()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  siri::dialogengine::GetTemplateDirs();
  if (*(v4 + 23) >= 0)
  {
    v6 = *(v4 + 23);
  }

  else
  {
    v6 = v4[1];
  }

  p_dst = &__dst;
  sub_1000094C0(&__dst, v6 + 2);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(v4 + 23) >= 0)
    {
      v8 = v4;
    }

    else
    {
      v8 = *v4;
    }

    memmove(p_dst, v8, v6);
  }

  strcpy(p_dst + v6, " (");
  v9 = *(v2 + 23);
  if (v9 >= 0)
  {
    v10 = v2;
  }

  else
  {
    v10 = *v2;
  }

  if (v9 >= 0)
  {
    v11 = *(v2 + 23);
  }

  else
  {
    v11 = *(v2 + 8);
  }

  v12 = std::string::append(&__dst, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  __p[0].__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&__p[0].__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(__p, ")");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v26 = v14->__r_.__value_.__r.__words[2];
  *v25 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  siri::dialogengine::FindParamsFile();
  if (*(v2 + 23) < 0)
  {
    sub_100001C60(&__dst, *v2, *(v2 + 8));
  }

  else
  {
    __dst = *v2;
  }

  memset(__p, 0, 24);
  sub_10000954C(__p, &__dst, &v30, 1uLL);
  siri::dialogengine::FindLocaleFile();
  v28 = __p;
  sub_100002260(&v28);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v16 = v22;
  if ((v22 & 0x80u) != 0)
  {
    v16 = v21[1];
  }

  if (v16)
  {
    siri::dialogengine::Context::Context(__p);
    siri::dialogengine::RequestInfo::RequestInfo(&__dst);
    siri::dialogengine::RequestInfo::SetTemplateDirs();
    siri::dialogengine::RequestInfo::SetParamsPath();
    siri::dialogengine::RequestInfo::SetLocalePath();
    LODWORD(v28) = 0;
    siri::dialogengine::RequestInfo::SetRequestType();
    v17 = sub_10004983C(v5);
    if ((v17 & 1) != 0 || siri::dialogengine::ShouldValidateAttrs(v17))
    {
      siri::dialogengine::RequestInfo::AddOption(&__dst, siri::dialogengine::OPTION_VALIDATE_ATTRS);
    }

    siri::dialogengine::Context::SetRequestInfo();
    v18 = sub_100047A70(v5, __p, v25);
    sub_10002A140(&__dst);
    siri::dialogengine::Context::~Context(__p);
  }

  else
  {
    std::operator+<char>();
    v18 = sub_1000498E0(v5, __p, v21, 0);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  __p[0].__r_.__value_.__r.__words[0] = &v27;
  sub_10000C88C(__p);
  return v18;
}

void sub_100047970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0xE27]) < 0)
  {
    operator delete(STACK[0xE10]);
  }

  if (SLOBYTE(STACK[0xE3F]) < 0)
  {
    operator delete(STACK[0xE28]);
  }

  if (SLOBYTE(STACK[0xE57]) < 0)
  {
    operator delete(STACK[0xE40]);
  }

  __p = &STACK[0xE60];
  sub_10000C88C(&__p);
  _Unwind_Resume(a1);
}

BOOL sub_100047A70(unsigned __int8 *a1, siri::dialogengine::Context *this, uint64_t a3)
{
  if (siri::dialogengine::Context::Load(this))
  {
    siri::dialogengine::Context::GetFile(&v69, this);
    v6 = v69;
    v7 = sub_1000498B0(a1);
    siri::dialogengine::File::SetCheckSnippetDialogIds(v6, v7);
    sub_1000498D8(a1);
    siri::dialogengine::File::SetSourceLocaleDialogIds();
    (*(*v69 + 16))(v69, this);
    siri::dialogengine::File::GetValidationErrors(&v71, v69);
    if (v71.__r_.__value_.__r.__words[0] == v71.__r_.__value_.__l.__size_)
    {
      std::operator+<char>();
      sub_100049CDC(a1, __p);
      if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_60:
        if ((sub_1000496B0(a1) & 1) == 0)
        {
          siri::dialogengine::File::GetValidationWarnings(&v66, v69);
          if (v66 != v67)
          {
            std::to_string(&v72, 0x2E8BA2E8BA2E8BA3 * ((v67 - v66) >> 3));
            v29 = std::string::append(&v72, " validation warning(s) for ");
            v30 = *&v29->__r_.__value_.__l.__data_;
            v73.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
            *&v73.__r_.__value_.__l.__data_ = v30;
            v29->__r_.__value_.__l.__size_ = 0;
            v29->__r_.__value_.__r.__words[2] = 0;
            v29->__r_.__value_.__r.__words[0] = 0;
            v31 = *(a3 + 23);
            if (v31 >= 0)
            {
              v32 = a3;
            }

            else
            {
              v32 = *a3;
            }

            if (v31 >= 0)
            {
              v33 = *(a3 + 23);
            }

            else
            {
              v33 = *(a3 + 8);
            }

            v34 = std::string::append(&v73, v32, v33);
            v35 = *&v34->__r_.__value_.__l.__data_;
            __p[0].__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
            *&__p[0].__r_.__value_.__l.__data_ = v35;
            v34->__r_.__value_.__l.__size_ = 0;
            v34->__r_.__value_.__r.__words[2] = 0;
            v34->__r_.__value_.__r.__words[0] = 0;
            sub_100049CDC(a1, __p);
            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p[0].__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v73.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v72.__r_.__value_.__l.__data_);
            }

            siri::dialogengine::Context::GetRequestInfo(__p, this);
            siri::dialogengine::RequestInfo::GetParamsPath(&v62, __p);
            sub_10002A140(__p);
            sub_1000486D8(this, a1, v60);
            v36 = v66;
            for (i = v67; v36 != i; v36 = (v36 + 88))
            {
              siri::dialogengine::LineNumberBase::GetFilename(&v73, v36);
              sub_10000143C(&v72, "_params.cat");
              v38 = siri::dialogengine::StringContains();
              if (v38)
              {
                v39 = &v62;
              }

              else
              {
                v39 = v60;
              }

              if (*(v39 + 23) < 0)
              {
                v40 = *v39;
                if (v38)
                {
                  v41 = &v62;
                }

                else
                {
                  v41 = v60;
                }

                sub_100001C60(__p, v40, v41[1]);
              }

              else
              {
                __p[0] = *v39;
              }

              if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v72.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v73.__r_.__value_.__l.__data_);
              }

              siri::dialogengine::ValidationEntry::GetText(&v73, v36);
              LineNumber = siri::dialogengine::LineNumberBase::GetLineNumber(v36);
              sub_100049CB4(a1, &v73, &__p[0].__r_.__value_.__l.__data_, LineNumber);
              if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v73.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p[0].__r_.__value_.__l.__data_);
              }
            }

            if (v61 < 0)
            {
              operator delete(v60[0]);
            }

            if (v64 < 0)
            {
              operator delete(v62);
            }
          }

          if (sub_100049710(a1))
          {
            siri::dialogengine::File::GetValidationNits(&v62, v69);
            if (v62 != v63)
            {
              std::to_string(&v72, 0x2E8BA2E8BA2E8BA3 * ((v63 - v62) >> 3));
              v43 = std::string::append(&v72, " validation nit(s) for ");
              v44 = *&v43->__r_.__value_.__l.__data_;
              v73.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
              *&v73.__r_.__value_.__l.__data_ = v44;
              v43->__r_.__value_.__l.__size_ = 0;
              v43->__r_.__value_.__r.__words[2] = 0;
              v43->__r_.__value_.__r.__words[0] = 0;
              v45 = *(a3 + 23);
              if (v45 >= 0)
              {
                v46 = a3;
              }

              else
              {
                v46 = *a3;
              }

              if (v45 >= 0)
              {
                v47 = *(a3 + 23);
              }

              else
              {
                v47 = *(a3 + 8);
              }

              v48 = std::string::append(&v73, v46, v47);
              v49 = *&v48->__r_.__value_.__l.__data_;
              __p[0].__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
              *&__p[0].__r_.__value_.__l.__data_ = v49;
              v48->__r_.__value_.__l.__size_ = 0;
              v48->__r_.__value_.__r.__words[2] = 0;
              v48->__r_.__value_.__r.__words[0] = 0;
              sub_100049CDC(a1, __p);
              if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p[0].__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v73.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v72.__r_.__value_.__l.__data_);
              }

              siri::dialogengine::Context::GetRequestInfo(__p, this);
              siri::dialogengine::RequestInfo::GetParamsPath(v60, __p);
              sub_10002A140(__p);
              sub_1000486D8(this, a1, v58);
              v50 = v62;
              v51 = v63;
              if (v62 != v63)
              {
                do
                {
                  siri::dialogengine::LineNumberBase::GetFilename(&v73, v50);
                  sub_10000143C(&v72, "_params.cat");
                  v52 = siri::dialogengine::StringContains();
                  if (v52)
                  {
                    v53 = v60;
                  }

                  else
                  {
                    v53 = v58;
                  }

                  if (*(v53 + 23) < 0)
                  {
                    v54 = *v53;
                    if (v52)
                    {
                      v55 = v60;
                    }

                    else
                    {
                      v55 = v58;
                    }

                    sub_100001C60(__p, v54, v55[1]);
                  }

                  else
                  {
                    __p[0] = *v53;
                  }

                  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v72.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v73.__r_.__value_.__l.__data_);
                  }

                  siri::dialogengine::ValidationEntry::GetText(&v73, v50);
                  v56 = siri::dialogengine::LineNumberBase::GetLineNumber(v50);
                  sub_100049CC8(a1, &v73, &__p[0].__r_.__value_.__l.__data_, v56);
                  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v73.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p[0].__r_.__value_.__l.__data_);
                  }

                  v50 = (v50 + 88);
                }

                while (v50 != v51);
              }

              if (v59 < 0)
              {
                operator delete(v58[0]);
              }

              if (v61 < 0)
              {
                operator delete(v60[0]);
              }
            }

            __p[0].__r_.__value_.__r.__words[0] = &v62;
            sub_1000225AC(__p);
          }

          __p[0].__r_.__value_.__r.__words[0] = &v66;
          sub_1000225AC(__p);
        }

        v28 = sub_100049D14(a1);
        __p[0].__r_.__value_.__r.__words[0] = &v71;
        sub_1000225AC(__p);
        if (v70)
        {
          sub_100005EB4(v70);
        }

        return v28;
      }

      v22 = __p[0].__r_.__value_.__r.__words[0];
    }

    else
    {
      std::to_string(&v72, 0x2E8BA2E8BA2E8BA3 * ((v71.__r_.__value_.__l.__size_ - v71.__r_.__value_.__r.__words[0]) >> 3));
      v8 = std::string::append(&v72, " validation error(s) for ");
      v9 = *&v8->__r_.__value_.__l.__data_;
      v73.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
      *&v73.__r_.__value_.__l.__data_ = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      v10 = *(a3 + 23);
      if (v10 >= 0)
      {
        v11 = a3;
      }

      else
      {
        v11 = *a3;
      }

      if (v10 >= 0)
      {
        v12 = *(a3 + 23);
      }

      else
      {
        v12 = *(a3 + 8);
      }

      v13 = std::string::append(&v73, v11, v12);
      v14 = *&v13->__r_.__value_.__l.__data_;
      __p[0].__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&__p[0].__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      sub_100049CDC(a1, __p);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }

      siri::dialogengine::Context::GetRequestInfo(__p, this);
      siri::dialogengine::RequestInfo::GetParamsPath(&v66, __p);
      sub_10002A140(__p);
      sub_1000486D8(this, a1, &v62);
      size = v71.__r_.__value_.__l.__size_;
      for (j = v71.__r_.__value_.__r.__words[0]; j != size; j = (j + 88))
      {
        siri::dialogengine::LineNumberBase::GetFilename(&v73, j);
        sub_10000143C(&v72, "_params.cat");
        v17 = siri::dialogengine::StringContains();
        if (v17)
        {
          v18 = &v66;
        }

        else
        {
          v18 = &v62;
        }

        if (*(v18 + 23) < 0)
        {
          v19 = *v18;
          if (v17)
          {
            v20 = &v66;
          }

          else
          {
            v20 = &v62;
          }

          sub_100001C60(__p, v19, v20[1]);
        }

        else
        {
          __p[0] = *v18;
        }

        if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v72.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v73.__r_.__value_.__l.__data_);
        }

        siri::dialogengine::ValidationEntry::GetText(&v73, j);
        v21 = siri::dialogengine::LineNumberBase::GetLineNumber(j);
        sub_1000498E0(a1, &v73, &__p[0].__r_.__value_.__l.__data_, v21);
        if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v73.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      if (v64 < 0)
      {
        operator delete(v62);
      }

      if ((v68 & 0x80000000) == 0)
      {
        goto LABEL_60;
      }

      v22 = v66;
    }

    operator delete(v22);
    goto LABEL_60;
  }

  std::operator+<char>();
  siri::dialogengine::Context::GetError(&v73, this);
  v23 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
  if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v23 = v73.__r_.__value_.__l.__size_;
  }

  if (v23)
  {
    std::operator+<char>();
    v24 = std::string::append(&v71, "]");
    v25 = *&v24->__r_.__value_.__l.__data_;
    v72.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v72.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v72;
    }

    else
    {
      v26 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v27 = v72.__r_.__value_.__l.__size_;
    }

    std::string::append(__p, v26, v27);
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v71.__r_.__value_.__l.__data_);
    }
  }

  sub_1000486D8(this, a1, &v72);
  v28 = sub_1000498E0(a1, __p, &v72.__r_.__value_.__l.__data_, 0);
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  return v28;
}

void sub_100048328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  *(v33 - 144) = &a22;
  sub_1000225AC((v33 - 144));
  *(v33 - 144) = v33 - 208;
  sub_1000225AC((v33 - 144));
  *(v33 - 144) = v33 - 168;
  sub_1000225AC((v33 - 144));
  v35 = *(v33 - 176);
  if (v35)
  {
    sub_100005EB4(v35);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000486D8@<X0>(siri::dialogengine::Context *this@<X1>, uint64_t a2@<X0>, uint64_t *a3@<X8>)
{
  siri::dialogengine::Context::GetRequestInfo(v14, this);
  RequestType = siri::dialogengine::RequestInfo::GetRequestType(v14);
  if (RequestType == 1)
  {
    siri::dialogengine::RequestInfo::GetVisualPath(v14);
  }

  else if (RequestType)
  {
    siri::dialogengine::RequestInfo::GetRequestTypeString(&v11, v14);
    v6 = std::string::insert(&v11, 0, "Unknown request type: ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v13 = v6->__r_.__value_.__r.__words[2];
    *v12 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    sub_10000143C(__p, &unk_10006B9FB);
    sub_1000498E0(a2, v12, __p, 0);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12[0]);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }

    sub_10000143C(a3, &unk_10006B9FB);
  }

  else
  {
    siri::dialogengine::RequestInfo::GetLocalePath(a3, v14);
  }

  return sub_10002A140(v14);
}

void sub_1000487F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_10002A140(&a28);
  _Unwind_Resume(a1);
}

uint64_t sub_100048850(void *a1, uint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) < 6 || sub_100039B20())
  {
    sub_100039B10(a2);
    return 0;
  }

  sub_10000143C(__p, "--debug");
  v6 = siri::dialogengine::OptionExists();
  if (SHIBYTE(v72) < 0)
  {
    operator delete(__p[0]);
  }

  if (v6)
  {
    siri::dialogengine::Log::SetLogDebugMessages(1, v5);
    siri::dialogengine::Log::SetOutputToStdout(1, v7);
    siri::dialogengine::Log::Debug("Activate debug mode", v8);
  }

  sub_10000143C(v84, "--templateDir");
  siri::dialogengine::GetOption();
  siri::dialogengine::ExpandPath();
  if (SHIBYTE(v72) < 0)
  {
    operator delete(__p[0]);
  }

  if (v85 < 0)
  {
    operator delete(v84[0]);
  }

  sub_10000143C(__p, "--catId");
  siri::dialogengine::GetOption();
  if (SHIBYTE(v72) < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000143C(__p, "--version");
  siri::dialogengine::GetOption();
  if (SHIBYTE(v72) < 0)
  {
    operator delete(__p[0]);
  }

  v10 = v70;
  if ((v70 & 0x80u) != 0)
  {
    v10 = v69;
  }

  if (!v10)
  {
    v56 = "--templateDir required for catutil validate";
LABEL_162:
    siri::dialogengine::Log::Error(v56, v9);
    v3 = 0;
    goto LABEL_164;
  }

  if ((siri::dialogengine::DirExists() & 1) == 0)
  {
    v56 = "--templateDir directory does note exist";
    goto LABEL_162;
  }

  siri::dialogengine::GetValidVersion();
  if (SHIBYTE(v64) < 0)
  {
    operator delete(v63[0]);
  }

  *v63 = *__p;
  v64 = v72;
  sub_10000143C(v84, "dialog");
  siri::dialogengine::JoinPath();
  siri::dialogengine::ListDirRecursively();
  if (SHIBYTE(v72) < 0)
  {
    operator delete(__p[0]);
  }

  if (v85 < 0)
  {
    operator delete(v84[0]);
  }

  v11 = v61;
  v12 = v62;
  while (v11 != v12)
  {
    if (*(v11 + 23) < 0)
    {
      sub_100001C60(__dst, *v11, *(v11 + 1));
    }

    else
    {
      v13 = *v11;
      v60 = *(v11 + 2);
      *__dst = v13;
    }

    v14 = v67;
    if ((v67 & 0x80u) != 0)
    {
      v14 = v66;
    }

    if (v14)
    {
      siri::dialogengine::CatPathToId();
      v15 = SHIBYTE(v72);
      if (v72 >= 0)
      {
        v16 = HIBYTE(v72);
      }

      else
      {
        v16 = __p[1];
      }

      v17 = v67;
      if ((v67 & 0x80u) != 0)
      {
        v17 = v66;
      }

      if (v16 == v17)
      {
        if (v72 >= 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        if ((v67 & 0x80u) == 0)
        {
          v19 = &v65;
        }

        else
        {
          v19 = v65;
        }

        v20 = memcmp(v18, v19, v16) != 0;
        if ((v15 & 0x80000000) == 0)
        {
LABEL_47:
          if (v20)
          {
            goto LABEL_149;
          }

          goto LABEL_51;
        }
      }

      else
      {
        v20 = 1;
        if ((SHIBYTE(v72) & 0x80000000) == 0)
        {
          goto LABEL_47;
        }
      }

      operator delete(__p[0]);
      if (v20)
      {
        goto LABEL_149;
      }
    }

LABEL_51:
    siri::dialogengine::BaseName();
    sub_10000143C(v84, "_params");
    v21 = siri::dialogengine::StringStartsWith();
    if (v85 < 0)
    {
      operator delete(v84[0]);
    }

    if (SHIBYTE(v72) < 0)
    {
      operator delete(__p[0]);
      if (v21)
      {
        goto LABEL_149;
      }
    }

    else if (v21)
    {
      goto LABEL_149;
    }

    sub_10000143C(__p, "xml");
    if (siri::dialogengine::HasExtension())
    {
      HasExtension = 1;
    }

    else
    {
      sub_10000143C(v84, "bin");
      HasExtension = siri::dialogengine::HasExtension();
      if (v85 < 0)
      {
        operator delete(v84[0]);
      }
    }

    if (SHIBYTE(v72) < 0)
    {
      operator delete(__p[0]);
      if (HasExtension)
      {
LABEL_65:
        if (SHIBYTE(v64) < 0)
        {
          sub_100001C60(v57, v63[0], v63[1]);
        }

        else
        {
          *v57 = *v63;
          v58 = v64;
        }

        siri::dialogengine::StringToLower();
        sub_10000143C(v84, ".cat.bin");
        v23 = siri::dialogengine::StringEndsWith();
        if (v85 < 0)
        {
          operator delete(v84[0]);
        }

        if (SHIBYTE(v72) < 0)
        {
          operator delete(__p[0]);
        }

        sub_10000143C(&v82, "dialog");
        siri::dialogengine::JoinPath();
        siri::dialogengine::JoinPath();
        if (SHIBYTE(v72) < 0)
        {
          operator delete(__p[0]);
        }

        if (v83 < 0)
        {
          operator delete(v82);
        }

        siri::dialogengine::DirName();
        siri::dialogengine::CatPathToId();
        siri::dialogengine::BaseName();
        siri::dialogengine::StringSplit();
        if (*(__p[0] + 23) < 0)
        {
          sub_100001C60(&v78, *__p[0], *(__p[0] + 1));
        }

        else
        {
          v24 = *__p[0];
          v79 = *(__p[0] + 2);
          v78 = v24;
        }

        v74[0].__locale_ = __p;
        sub_100002260(v74);
        if (SHIBYTE(v77) < 0)
        {
          operator delete(v76);
        }

        v76 = 0uLL;
        v77 = 0;
        sub_10000143C(&v73, "_params");
        if (v23)
        {
          v25 = std::string::append(&v73, ".cat.bin");
        }

        else
        {
          v25 = std::string::append(&v73, ".cat.xml");
        }

        v26 = *&v25->__r_.__value_.__l.__data_;
        v75 = v25->__r_.__value_.__r.__words[2];
        *&v74[0].__locale_ = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        siri::dialogengine::JoinPath();
        if (SHIBYTE(v77) < 0)
        {
          operator delete(v76);
        }

        v76 = *__p;
        v77 = v72;
        HIBYTE(v72) = 0;
        LOBYTE(__p[0]) = 0;
        if (SHIBYTE(v75) < 0)
        {
          operator delete(v74[0].__locale_);
        }

        if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v73.__r_.__value_.__l.__data_);
        }

        siri::dialogengine::Context::Context(__p);
        if (siri::dialogengine::Context::LoadFiles())
        {
          siri::dialogengine::Context::GetFile(&v73, __p);
          siri::dialogengine::File::GetFormatVersion(v74, v73.__r_.__value_.__l.__data_);
          if (v73.__r_.__value_.__l.__size_)
          {
            sub_100005EB4(v73.__r_.__value_.__l.__size_);
          }

          if (siri::dialogengine::Context::UpgradeAndSave())
          {
            if (v75 >= 0)
            {
              locale = HIBYTE(v75);
            }

            else
            {
              locale = v74[1].__locale_;
            }

            v28 = HIBYTE(v58);
            if (v58 < 0)
            {
              v28 = v57[1];
            }

            if (locale == v28 && (v75 >= 0 ? (v29 = v74) : (v29 = v74[0].__locale_), v58 >= 0 ? (v30 = v57) : (v30 = v57[0]), !memcmp(v29, v30, locale)))
            {
              v53 = sub_1000027F4(&std::cout, "Skipping ", 9);
              if (v60 >= 0)
              {
                v54 = __dst;
              }

              else
              {
                v54 = __dst[0];
              }

              if (v60 >= 0)
              {
                v55 = HIBYTE(v60);
              }

              else
              {
                v55 = __dst[1];
              }

              v38 = sub_1000027F4(v53, v54, v55);
              v39 = " - already version ";
              v40 = 19;
            }

            else
            {
              v31 = sub_1000027F4(&std::cout, "Upgraded ", 9);
              if (v60 >= 0)
              {
                v32 = __dst;
              }

              else
              {
                v32 = __dst[0];
              }

              if (v60 >= 0)
              {
                v33 = HIBYTE(v60);
              }

              else
              {
                v33 = __dst[1];
              }

              v34 = sub_1000027F4(v31, v32, v33);
              v35 = sub_1000027F4(v34, " from version ", 14);
              if (v75 >= 0)
              {
                v36 = v74;
              }

              else
              {
                v36 = v74[0].__locale_;
              }

              if (v75 >= 0)
              {
                v37 = HIBYTE(v75);
              }

              else
              {
                v37 = v74[1].__locale_;
              }

              v38 = sub_1000027F4(v35, v36, v37);
              v39 = " to version ";
              v40 = 12;
            }

            v41 = sub_1000027F4(v38, v39, v40);
            v42 = v57;
          }

          else
          {
            v41 = sub_1000027F4(&std::cout, "Failed to upgrade the CAT file: ", 32);
            v42 = __dst;
          }

          v48 = *(v42 + 23);
          if (v48 >= 0)
          {
            v49 = v42;
          }

          else
          {
            v49 = *v42;
          }

          if (v48 >= 0)
          {
            v50 = *(v42 + 23);
          }

          else
          {
            v50 = v42[1];
          }

          v51 = sub_1000027F4(v41, v49, v50);
          std::ios_base::getloc((v51 + *(*v51 - 24)));
          v52 = std::locale::use_facet(&v73, &std::ctype<char>::id);
          (v52->__vftable[2].~facet_0)(v52, 10);
          std::locale::~locale(&v73);
          std::ostream::put();
          std::ostream::flush();
          if (SHIBYTE(v75) < 0)
          {
            operator delete(v74[0].__locale_);
          }
        }

        else
        {
          v43 = sub_1000027F4(&std::cout, "Unable to read CAT file from: ", 30);
          if (v60 >= 0)
          {
            v44 = __dst;
          }

          else
          {
            v44 = __dst[0];
          }

          if (v60 >= 0)
          {
            v45 = HIBYTE(v60);
          }

          else
          {
            v45 = __dst[1];
          }

          v46 = sub_1000027F4(v43, v44, v45);
          std::ios_base::getloc((v46 + *(*v46 - 24)));
          v47 = std::locale::use_facet(v74, &std::ctype<char>::id);
          (v47->__vftable[2].~facet_0)(v47, 10);
          std::locale::~locale(v74);
          std::ostream::put();
          std::ostream::flush();
        }

        siri::dialogengine::Context::~Context(__p);
        if (SHIBYTE(v77) < 0)
        {
          operator delete(v76);
        }

        if (SHIBYTE(v79) < 0)
        {
          operator delete(v78);
        }

        if (v81 < 0)
        {
          operator delete(v80);
        }

        if (v83 < 0)
        {
          operator delete(v82);
        }

        if (v85 < 0)
        {
          operator delete(v84[0]);
        }

        if (SHIBYTE(v58) < 0)
        {
          operator delete(v57[0]);
        }
      }
    }

    else if (HasExtension)
    {
      goto LABEL_65;
    }

LABEL_149:
    if (SHIBYTE(v60) < 0)
    {
      operator delete(__dst[0]);
    }

    v11 = (v11 + 24);
  }

  __p[0] = &v61;
  sub_100002260(__p);
  v3 = 1;
LABEL_164:
  if (SHIBYTE(v64) < 0)
  {
    operator delete(v63[0]);
  }

  if (v67 < 0)
  {
    operator delete(v65);
  }

  if (v70 < 0)
  {
    operator delete(v68);
  }

  return v3;
}